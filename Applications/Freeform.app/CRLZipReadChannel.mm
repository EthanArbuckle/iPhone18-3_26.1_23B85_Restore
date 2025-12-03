@interface CRLZipReadChannel
- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length error:(id *)error;
- (CRLZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler;
- (void)readWithHandler:(id)handler;
- (void)setLowWater:(unint64_t)water;
@end

@implementation CRLZipReadChannel

- (CRLZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c
{
  entryCopy = entry;
  archiveCopy = archive;
  v19.receiver = self;
  v19.super_class = CRLZipReadChannel;
  v11 = [(CRLZipReadChannel *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, entry);
    objc_storeStrong(&v12->_archive, archive);
    v12->_validateCRC = c;
    newArchiveReadChannel = [archiveCopy newArchiveReadChannel];
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = newArchiveReadChannel;

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

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(CRLZipEntry *)self->_entry compressedSize];
  fileHeaderLength = [(CRLZipEntry *)self->_entry fileHeaderLength];
  if (fileHeaderLength)
  {
    [(CRLZipReadChannel *)self readWithFileHeaderLength:fileHeaderLength handler:handlerCopy];
  }

  else
  {
    nameLength = [(CRLZipEntry *)self->_entry nameLength];
    extraFieldsLength = [(CRLZipEntry *)self->_entry extraFieldsLength];
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
    offset = [(CRLZipEntry *)self->_entry offset];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10047D2C0;
    v12[3] = &unk_101865868;
    v14 = v21;
    v12[4] = self;
    v13 = handlerCopy;
    v15 = v25;
    v16 = v23;
    v17 = v19;
    v18 = nameLength + extraFieldsLength + 30;
    [(CRLReadChannel *)archiveReadChannel readFromOffset:offset length:v18 + compressedSize handler:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(CRLZipEntry *)self->_entry compressedSize];
  v10 = compressedSize;
  if (offset < 0 || compressedSize < offset)
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
      name = [(CRLZipEntry *)entry name];
      *buf = 138412802;
      v23 = name;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      offsetCopy = offset;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Requested range is not within the entry: %@. Size: %llu. Requested offset: %llu", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 1, &_dispatch_data_empty, 0);
  }

  else
  {
    if (compressedSize - offset < length)
    {
      length = compressedSize - offset;
    }

    if (offset || length != compressedSize)
    {
      fileHeaderLength = [(CRLZipEntry *)self->_entry fileHeaderLength];
      if (fileHeaderLength)
      {
        [(CRLReadChannel *)self->_archiveReadChannel readFromOffset:[(CRLZipEntry *)self->_entry offset]+ fileHeaderLength + offset length:length handler:handlerCopy];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        offset = [(CRLZipEntry *)self->_entry offset];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10047D96C;
        v18[3] = &unk_1018658B0;
        v18[4] = self;
        offsetCopy2 = offset;
        lengthCopy = length;
        v19 = handlerCopy;
        [CRLIOUtils readAllFromChannel:archiveReadChannel offset:offset length:30 completion:v18];
      }
    }

    else
    {
      [(CRLZipReadChannel *)self readWithHandler:handlerCopy];
    }
  }
}

- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length error:(id *)error
{
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  if (size == 30)
  {
    subrange = dataCopy;
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
      if (error)
      {
        goto LABEL_33;
      }
    }

    else if (error)
    {
LABEL_33:
      v41[0] = @"Read was less than record size";
      v40[0] = @"CRLZipArchiveErrorDescription";
      v40[1] = @"CRLZipArchiveErrorEntryName";
      name = [(CRLZipEntry *)self->_entry name];
      v11 = name;
      v31 = &stru_1018BCA28;
      if (name)
      {
        v31 = name;
      }

      v41[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      *error = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v32];

      v17 = 0;
      goto LABEL_38;
    }

    v17 = 0;
    goto LABEL_39;
  }

  subrange = dispatch_data_create_subrange(dataCopy, 0, 0x1EuLL);
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
    name2 = [(CRLZipEntry *)self->_entry name];
    v20 = name2;
    v21 = &stru_1018BCA28;
    if (name2)
    {
      v21 = name2;
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
    name3 = [(CRLZipEntry *)self->_entry name];
    v20 = name3;
    v26 = &stru_1018BCA28;
    if (name3)
    {
      v26 = name3;
    }

    v37[1] = v26;
    v22 = v37;
    v23 = v36;
LABEL_27:
    v27 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:2];
    v16 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v27];

    if (error)
    {
      v28 = v16;
      v17 = 0;
      *error = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_37;
  }

  *length = v13[13] + v13[14] + 30;
  [(CRLZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_37:

LABEL_38:
LABEL_39:

  return v17;
}

- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  offset = [(CRLZipEntry *)self->_entry offset];
  compressedSize = [(CRLZipEntry *)self->_entry compressedSize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10047E06C;
  v11[3] = &unk_101865938;
  v13 = v17;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  v14 = v15;
  [(CRLReadChannel *)archiveReadChannel readFromOffset:offset + length length:compressedSize handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  handlerCopy = handler;
  if (c && self->_validateCRC && (v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_10047E34C, v20[3] = &unk_101865998, v20[4] = c, dispatch_data_apply(dataCopy, v20), doneCopy) && [(CRLZipEntry *)self->_entry CRC]!= *c)
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
    name = [(CRLZipEntry *)self->_entry name];
    v16 = name;
    v17 = &stru_1018BCA28;
    if (name)
    {
      v17 = name;
    }

    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v18];

    [(CRLZipReadChannel *)self handleFailureWithHandler:handlerCopy error:v19];
    v12 = 0;
  }

  else
  {
    handlerCopy[2](handlerCopy, doneCopy, dataCopy, 0);
    v12 = 1;
  }

  return v12;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  if (!errorCopy)
  {
    v21 = @"CRLZipArchiveErrorEntryName";
    name = [(CRLZipEntry *)self->_entry name];
    domain = name;
    v18 = &stru_1018BCA28;
    if (name)
    {
      v18 = name;
    }

    v22 = v18;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v8 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v13];
    goto LABEL_9;
  }

  v8 = errorCopy;
  crl_zipArchiveErrorEntryName = [errorCopy crl_zipArchiveErrorEntryName];

  if (!crl_zipArchiveErrorEntryName)
  {
    domain = [v8 domain];
    code = [v8 code];
    v20[0] = v8;
    v19[0] = NSUnderlyingErrorKey;
    v19[1] = @"CRLZipArchiveErrorEntryName";
    name2 = [(CRLZipEntry *)self->_entry name];
    v13 = name2;
    v14 = &stru_1018BCA28;
    if (name2)
    {
      v14 = name2;
    }

    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [NSError errorWithDomain:domain code:code userInfo:v15];

    v8 = v16;
LABEL_9:
  }

  handlerCopy[2](handlerCopy, 1, 0, v8);
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

- (void)setLowWater:(unint64_t)water
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

  if (water <= 0x1D)
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

  [(CRLReadChannel *)self->_archiveReadChannel setLowWater:water];
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
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

  [(CRLReadChannel *)archiveReadChannel addBarrier:barrierCopy];
}

@end