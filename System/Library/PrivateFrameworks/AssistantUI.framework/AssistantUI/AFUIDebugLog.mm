@interface AFUIDebugLog
+ (id)logWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression;
- (AFUIDebugLog)initWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression;
@end

@implementation AFUIDebugLog

+ (id)logWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression
{
  compressionCopy = compression;
  nameCopy = name;
  typeCopy = type;
  dataCopy = data;
  v13 = [[self alloc] initWithData:dataCopy mimeType:typeCopy name:nameCopy attemptCompression:compressionCopy];

  return v13;
}

- (AFUIDebugLog)initWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression
{
  compressionCopy = compression;
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = AFUIDebugLog;
  v13 = [(AFUIDebugLog *)&v24 init];
  if (v13)
  {
    if (compressionCopy)
    {
      sruif_dataByCompressingWithGzip = [dataCopy sruif_dataByCompressingWithGzip];
      data = v13->_data;
      v13->_data = sruif_dataByCompressingWithGzip;
    }

    if (v13->_data)
    {
      mimeType = v13->_mimeType;
      v13->_mimeType = @"application/x-gzip";

      v17 = [nameCopy stringByAppendingPathExtension:@"gz"];
    }

    else
    {
      v18 = [dataCopy copy];
      v19 = v13->_data;
      v13->_data = v18;

      v20 = [typeCopy copy];
      v21 = v13->_mimeType;
      v13->_mimeType = v20;

      v17 = [nameCopy copy];
    }

    name = v13->_name;
    v13->_name = v17;

    if (!v13->_mimeType)
    {
      v13->_mimeType = @"application/octet-stream";
    }
  }

  return v13;
}

@end