@interface CRLZipReadChannel
- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6;
- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4 error:(id *)a5;
- (CRLZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5;
- (void)addBarrier:(id)a3;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)a3 error:(id)a4;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4;
- (void)readWithHandler:(id)a3;
- (void)setLowWater:(unint64_t)a3;
@end

@implementation CRLZipReadChannel

- (CRLZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = CRLZipReadChannel;
  v11 = [(CRLZipReadChannel *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, a3);
    objc_storeStrong(&v12->_archive, a4);
    v12->_validateCRC = a5;
    v13 = [v10 newArchiveReadChannel];
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = v13;

    if (!v12->_archiveReadChannel)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137ACA0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137ACC8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137AD50();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLZipReadChannel initWithEntry:archive:validateCRC:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:35 isFatal:0 description:"Archive is closed"];

      v12 = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(CRLZipReadChannel *)self close];
  v3.receiver = self;
  v3.super_class = CRLZipReadChannel;
  [(CRLZipReadChannel *)&v3 dealloc];
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRLZipEntry *)self->_entry compressedSize];
  v6 = [(CRLZipEntry *)self->_entry fileHeaderLength];
  if (v6)
  {
    [(CRLZipReadChannel *)self readWithFileHeaderLength:v6 handler:v4];
  }

  else
  {
    v7 = [(CRLZipEntry *)self->_entry nameLength];
    v8 = [(CRLZipEntry *)self->_entry extraFieldsLength];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_10047D2A8;
    v25[4] = sub_10047D2B8;
    v9 = &_dispatch_data_empty;
    v26 = &_dispatch_data_empty;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    v11 = [(CRLZipEntry *)self->_entry offset];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10047D2C0;
    v12[3] = &unk_101865868;
    v14 = v21;
    v12[4] = self;
    v13 = v4;
    v15 = v25;
    v16 = v23;
    v17 = v19;
    v18 = v7 + v8 + 30;
    [(CRLReadChannel *)archiveReadChannel readFromOffset:v11 length:v18 + v5 handler:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [(CRLZipEntry *)self->_entry compressedSize];
  v10 = v9;
  if (a3 < 0 || v9 < a3)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10137ADA0();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      entry = self->_entry;
      v16 = v11;
      v17 = [(CRLZipEntry *)entry name];
      *buf = 138412802;
      v23 = v17;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = a3;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Requested range is not within the entry: %@. Size: %llu. Requested offset: %llu", buf, 0x20u);
    }

    v8[2](v8, 1, &_dispatch_data_empty, 0);
  }

  else
  {
    if (v9 - a3 < a4)
    {
      a4 = v9 - a3;
    }

    if (a3 || a4 != v9)
    {
      v12 = [(CRLZipEntry *)self->_entry fileHeaderLength];
      if (v12)
      {
        [(CRLReadChannel *)self->_archiveReadChannel readFromOffset:[(CRLZipEntry *)self->_entry offset]+ v12 + a3 length:a4 handler:v8];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        v14 = [(CRLZipEntry *)self->_entry offset];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10047D96C;
        v18[3] = &unk_1018658B0;
        v18[4] = self;
        v20 = a3;
        v21 = a4;
        v19 = v8;
        [CRLIOUtils readAllFromChannel:archiveReadChannel offset:v14 length:30 completion:v18];
      }
    }

    else
    {
      [(CRLZipReadChannel *)self readWithHandler:v8];
    }
  }
}

- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  size = dispatch_data_get_size(v8);
  if (size == 30)
  {
    subrange = v8;
    goto LABEL_5;
  }

  if (size < 0x1F)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10137ADB4();
    }

    v29 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10137ADC8(self, v29);
      if (a5)
      {
        goto LABEL_33;
      }
    }

    else if (a5)
    {
LABEL_33:
      v41[0] = @"Read was less than record size";
      v40[0] = @"CRLZipArchiveErrorDescription";
      v40[1] = @"CRLZipArchiveErrorEntryName";
      v30 = [(CRLZipEntry *)self->_entry name];
      v11 = v30;
      v31 = &stru_1018BCA28;
      if (v30)
      {
        v31 = v30;
      }

      v41[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      *a5 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v32];

      v17 = 0;
      goto LABEL_38;
    }

    v17 = 0;
    goto LABEL_39;
  }

  subrange = dispatch_data_create_subrange(v8, 0, 0x1EuLL);
LABEL_5:
  v11 = subrange;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(subrange, &buffer_ptr, &size_ptr);
  v13 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10137AE88();
    }

    v18 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10137AEB0(self, v18);
    }

    v39[0] = @"Local file header has bad signature";
    v38[0] = @"CRLZipArchiveErrorDescription";
    v38[1] = @"CRLZipArchiveErrorEntryName";
    v19 = [(CRLZipEntry *)self->_entry name];
    v20 = v19;
    v21 = &stru_1018BCA28;
    if (v19)
    {
      v21 = v19;
    }

    v39[1] = v21;
    v22 = v39;
    v23 = v38;
    goto LABEL_27;
  }

  v14 = *(buffer_ptr + 4);
  if (*(buffer_ptr + 4))
  {
    v15 = v14 == 8;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 || (((v14 != 8) ^ [(CRLZipEntry *)self->_entry isCompressed]) & 1) == 0)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10137AF58();
    }

    v24 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10137AF80(self, v24);
    }

    v37[0] = @"Local file header doesn't match compression method from central directory file header";
    v36[0] = @"CRLZipArchiveErrorDescription";
    v36[1] = @"CRLZipArchiveErrorEntryName";
    v25 = [(CRLZipEntry *)self->_entry name];
    v20 = v25;
    v26 = &stru_1018BCA28;
    if (v25)
    {
      v26 = v25;
    }

    v37[1] = v26;
    v22 = v37;
    v23 = v36;
LABEL_27:
    v27 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:2];
    v16 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v27];

    if (a5)
    {
      v28 = v16;
      v17 = 0;
      *a5 = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_37;
  }

  *a4 = v13[13] + v13[14] + 30;
  [(CRLZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_37:

LABEL_38:
LABEL_39:

  return v17;
}

- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  v8 = [(CRLZipEntry *)self->_entry offset];
  v9 = [(CRLZipEntry *)self->_entry compressedSize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10047E06C;
  v11[3] = &unk_101865938;
  v13 = v17;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v14 = v15;
  [(CRLReadChannel *)archiveReadChannel readFromOffset:v8 + a3 length:v9 handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if (a4 && self->_validateCRC && (v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_10047E34C, v20[3] = &unk_101865998, v20[4] = a4, dispatch_data_apply(v10, v20), v7) && [(CRLZipEntry *)self->_entry CRC]!= *a4)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10137B028();
    }

    v14 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10137B050(&self->_entry, v14);
    }

    v22[0] = @"CRC does not match";
    v21[0] = @"CRLZipArchiveErrorDescription";
    v21[1] = @"CRLZipArchiveErrorEntryName";
    v15 = [(CRLZipEntry *)self->_entry name];
    v16 = v15;
    v17 = &stru_1018BCA28;
    if (v15)
    {
      v17 = v15;
    }

    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v18];

    [(CRLZipReadChannel *)self handleFailureWithHandler:v11 error:v19];
    v12 = 0;
  }

  else
  {
    v11[2](v11, v7, v10, 0);
    v12 = 1;
  }

  return v12;
}

- (void)handleFailureWithHandler:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v21 = @"CRLZipArchiveErrorEntryName";
    v17 = [(CRLZipEntry *)self->_entry name];
    v10 = v17;
    v18 = &stru_1018BCA28;
    if (v17)
    {
      v18 = v17;
    }

    v22 = v18;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v8 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v13];
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 crl_zipArchiveErrorEntryName];

  if (!v9)
  {
    v10 = [v8 domain];
    v11 = [v8 code];
    v20[0] = v8;
    v19[0] = NSUnderlyingErrorKey;
    v19[1] = @"CRLZipArchiveErrorEntryName";
    v12 = [(CRLZipEntry *)self->_entry name];
    v13 = v12;
    v14 = &stru_1018BCA28;
    if (v12)
    {
      v14 = v12;
    }

    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [NSError errorWithDomain:v10 code:v11 userInfo:v15];

    v8 = v16;
LABEL_9:
  }

  v6[2](v6, 1, 0, v8);
}

- (void)close
{
  [(CRLReadChannel *)self->_archiveReadChannel close];
  archiveReadChannel = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;

  entry = self->_entry;
  self->_entry = 0;

  archive = self->_archive;
  self->_archive = 0;
}

- (void)setLowWater:(unint64_t)a3
{
  if (!self->_archiveReadChannel)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137B2F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137B308();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137B390();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLZipReadChannel setLowWater:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:307 isFatal:0 description:"Already closed"];
  }

  if (a3 <= 0x1D)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137B3B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137B3E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137B468();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLZipReadChannel setLowWater:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:308 isFatal:0 description:"Low water is too small"];
  }

  [(CRLReadChannel *)self->_archiveReadChannel setLowWater:a3];
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  archiveReadChannel = self->_archiveReadChannel;
  if (!archiveReadChannel)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137B490();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137B4A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137B52C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLZipReadChannel addBarrier:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:314 isFatal:0 description:"Already closed"];

    archiveReadChannel = self->_archiveReadChannel;
  }

  [(CRLReadChannel *)archiveReadChannel addBarrier:v4];
}

@end