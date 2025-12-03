@interface CVAFeatureBuffer
+ (id)classes;
+ (id)streamName:(id)name;
+ (id)withData:(id)data;
- (CVAFeatureBuffer)initWithCoder:(id)coder;
- (CVAFeatureBuffer)initWithPixelBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp streamID:(id)d reduce:(BOOL)reduce compress:(BOOL)compress;
- (__CVBuffer)getPixelBuffer:(BOOL)buffer;
- (__CVBuffer)getPixelBufferCopy;
- (id)debugDescription;
- (id)dictionary;
- (id)reduceBuffer:(void *)buffer;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVAFeatureBuffer

+ (id)classes
{
  if (qword_27E3C8528 == -1)
  {
    v3 = qword_27E3C8520;
  }

  else
  {
    sub_24019CAEC();
    v3 = qword_27E3C8520;
  }

  return v3;
}

- (id)reduceBuffer:(void *)buffer
{
  v3 = *(buffer + 13);
  if (v3 <= 0xF4240)
  {
    v6 = *(buffer + 10);
    v7 = *(buffer + 12);
    v9 = [MEMORY[0x277CBEB28] dataWithLength:(v6 + v3)];
    mutableBytes = [v9 mutableBytes];
    v11 = *buffer;
    v12 = *(buffer + 6);
    v13 = *(buffer + 2);
    *(mutableBytes + 16) = *(buffer + 1);
    *(mutableBytes + 32) = v13;
    *(mutableBytes + 48) = v12;
    *mutableBytes = v11;
    *(mutableBytes + 40) = v6;
    *(mutableBytes + 48) = v6;
    *(mutableBytes + 52) = v3;
    memcpy((mutableBytes + v6), buffer + v7, v3);
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CVAFeatureBuffer)initWithPixelBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp streamID:(id)d reduce:(BOOL)reduce compress:(BOOL)compress
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = CVAFeatureBuffer;
  v14 = [(CVAFeatureBuffer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_pixelBufferRef = ref;
    v14->_timestamp = timestamp;
    objc_storeStrong(&v14->_sourceStreamID, d);
    v15->_reduce = reduce;
    v15->_compressed = compress;
    CVPixelBufferRetain(v15->_pixelBufferRef);
    v16 = CVBufferCopyAttachments(v15->_pixelBufferRef, kCVAttachmentMode_ShouldPropagate);
    attachments = v15->_attachments;
    v15->_attachments = v16;
  }

  return v15;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVAFeatureBuffer classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (__CVBuffer)getPixelBuffer:(BOOL)buffer
{
  buffer = 0;
  width = self->_width;
  if (buffer)
  {
    self->_original_width = width;
    width = self->_bytesPerRow;
    self->_width = width;
  }

  v5 = CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], width, self->_height, 0x4C303038u, [(NSData *)self->_data bytes], self->_bytesPerRow, 0, 0, 0, &buffer);
  result = 0;
  if (!v5)
  {
    attachments = self->_attachments;
    if (attachments)
    {
      CVBufferSetAttachments(buffer, attachments, kCVAttachmentMode_ShouldPropagate);
    }

    return buffer;
  }

  return result;
}

- (__CVBuffer)getPixelBufferCopy
{
  v12 = *MEMORY[0x277D85DE8];
  if ((self->_bytesPerRow & 0x3F) != 0)
  {
    v3 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      bytesPerRow = self->_bytesPerRow;
      v10 = 134217984;
      v11 = bytesPerRow;
      _os_log_impl(&dword_24016D000, v3, OS_LOG_TYPE_ERROR, "MOVKit:CVAFeatureBuffer - ERROR - bytesPerRow %ld not multiple of 64", &v10, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = [MEMORY[0x277D256C8] createRawPixelBufferWithWidth:LODWORD(self->_width) height:LODWORD(self->_height) pixelFormat:1278226488 bytesPerRow:?];
    if (result)
    {
      v6 = result;
      CVPixelBufferLockBaseAddress(result, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v6);
      memcpy(BaseAddress, [(NSData *)self->_data bytes], [(NSData *)self->_data length]);
      CVPixelBufferUnlockBaseAddress(v6, 0);
      attachments = self->_attachments;
      if (attachments)
      {
        CVBufferSetAttachments(v6, attachments, kCVAttachmentMode_ShouldPropagate);
      }

      result = v6;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (CVAFeatureBuffer)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CVAFeatureBuffer;
  v5 = [(CVAFeatureBuffer *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_width = [coderCopy decodeIntegerForKey:@"w"];
    v5->_height = [coderCopy decodeIntegerForKey:@"h"];
    v5->_bytesPerRow = [coderCopy decodeIntegerForKey:@"bpr"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    data = v5->_data;
    v5->_data = v7;

    v9 = [coderCopy decodeObjectForKey:@"a"];
    attachments = v5->_attachments;
    v5->_attachments = v9;

    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v11;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"sct"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    v12 = [coderCopy decodeObjectForKey:@"st"];
    sourceStreamID = v5->_sourceStreamID;
    v5->_sourceStreamID = v12;

    v14 = [coderCopy decodeBoolForKey:@"c"];
    v5->_compressed = v14;
    if (v14)
    {
      v15 = v5->_data;
      v23 = 0;
      v16 = [(NSData *)v15 decompressedDataUsingAlgorithm:1 error:&v23];
      v17 = v23;
      if (v17)
      {
        p_super = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          v19 = [v17 description];
          *buf = 138412290;
          v26 = v19;
          _os_log_impl(&dword_24016D000, p_super, OS_LOG_TYPE_ERROR, "CVAFeatureBuffer - ERROR - %@", buf, 0xCu);
        }
      }

      else
      {
        v20 = v16;
        p_super = &v5->_data->super;
        v5->_data = v20;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  CVPixelBufferLockBaseAddress(self->_pixelBufferRef, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBufferRef);
  if (self->_reduce && [(CVAFeatureBuffer *)self shouldReduce:BaseAddress])
  {
    v7 = [(CVAFeatureBuffer *)self reduceBuffer:BaseAddress];
    if (!v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    self->_width = CVPixelBufferGetWidth(self->_pixelBufferRef);
    self->_height = CVPixelBufferGetHeight(self->_pixelBufferRef);
    self->_bytesPerRow = CVPixelBufferGetBytesPerRow(self->_pixelBufferRef);
    if (self->_compressed)
    {
      v14 = 0;
      v9 = [v7 compressedDataUsingAlgorithm:1 error:&v14];
      v8 = v14;
      data = self->_data;
      self->_data = v9;

      if (v8)
      {
        v11 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [v8 description];
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&dword_24016D000, v11, OS_LOG_TYPE_ERROR, "CVAFeatureBuffer - ERROR - %@", buf, 0xCu);
        }

        goto LABEL_12;
      }
    }

    else
    {
      objc_storeStrong(&self->_data, v7);
    }

    [coderCopy encodeInteger:self->_width forKey:@"w"];
    [coderCopy encodeInteger:self->_height forKey:@"h"];
    [coderCopy encodeInteger:self->_bytesPerRow forKey:@"bpr"];
    [coderCopy encodeObject:self->_data forKey:@"d"];
    [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
    [coderCopy encodeInt64:self->_syncTimestamp forKey:@"sct"];
    [coderCopy encodeObject:self->_sourceStreamID forKey:@"st"];
    [coderCopy encodeBool:self->_compressed forKey:@"c"];
    [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
    [coderCopy encodeObject:self->_attachments forKey:@"a"];
    goto LABEL_15;
  }

  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:BaseAddress length:CVPixelBufferGetDataSize(self->_pixelBufferRef) freeWhenDone:0];
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = +[AppleCV3DMOVKitLog defaultLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_24016D000, v8, OS_LOG_TYPE_ERROR, "CVAFeatureBuffer - ERROR - failed to parse pixelBuffer", buf, 2u);
  }

LABEL_12:

LABEL_15:
  CVPixelBufferUnlockBaseAddress(self->_pixelBufferRef, 1uLL);
  CVPixelBufferRelease(self->_pixelBufferRef);
  self->_pixelBufferRef = 0;

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  pixelBufferRef = self->_pixelBufferRef;
  if (pixelBufferRef)
  {
    CVPixelBufferRelease(pixelBufferRef);
    self->_pixelBufferRef = 0;
  }

  v4.receiver = self;
  v4.super_class = CVAFeatureBuffer;
  [(CVAFeatureBuffer *)&v4 dealloc];
}

+ (id)streamName:(id)name
{
  if (name)
  {
    name = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.reality.kind.data.%@.desgen", name];
  }

  else
  {
    name = @"CVAFeatureBuffer";
  }

  return name;
}

- (id)dictionary
{
  v19[10] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{self->_width, @"w"}];
  v19[0] = v3;
  v18[1] = @"h";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_height];
  v19[1] = v4;
  v18[2] = @"bpr";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_bytesPerRow];
  v19[2] = v5;
  v18[3] = @"d";
  data = self->_data;
  v7 = data;
  if (!data)
  {
    v7 = objc_opt_new();
  }

  attachments = self->_attachments;
  if (!attachments)
  {
    attachments = MEMORY[0x277CBEC10];
  }

  v19[3] = v7;
  v19[4] = attachments;
  v18[4] = @"a";
  v18[5] = @"t";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v19[5] = v9;
  v18[6] = @"sct";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v11 = v10;
  sourceStreamID = self->_sourceStreamID;
  if (!sourceStreamID)
  {
    sourceStreamID = &stru_28521B010;
  }

  v19[6] = v10;
  v19[7] = sourceStreamID;
  v18[7] = @"st";
  v18[8] = @"c";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_compressed];
  v19[8] = v13;
  v18[9] = @"fi";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v19[9] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:10];

  if (!data)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVAFeatureBuffer *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end