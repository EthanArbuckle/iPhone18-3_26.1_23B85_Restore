@interface PHPTPConversionResult
- (PHPTPConversionResult)initWithRequiresConversion:(BOOL)conversion pathExtension:(id)extension estimatedFileLength:(unint64_t)length inputVideoCodec:(unsigned int)codec inputContentType:(id)type outputVideoCodec:(unsigned int)videoCodec outputContentType:(id)contentType;
@end

@implementation PHPTPConversionResult

- (PHPTPConversionResult)initWithRequiresConversion:(BOOL)conversion pathExtension:(id)extension estimatedFileLength:(unint64_t)length inputVideoCodec:(unsigned int)codec inputContentType:(id)type outputVideoCodec:(unsigned int)videoCodec outputContentType:(id)contentType
{
  extensionCopy = extension;
  typeCopy = type;
  contentTypeCopy = contentType;
  v24.receiver = self;
  v24.super_class = PHPTPConversionResult;
  v18 = [(PHPTPConversionResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requiresConversion = conversion;
    v20 = [extensionCopy copy];
    pathExtension = v19->_pathExtension;
    v19->_pathExtension = v20;

    v19->_estimatedFileLength = length;
    v19->_inputVideoCodec = codec;
    objc_storeStrong(&v19->_inputContentType, type);
    v19->_outputVideoCodec = videoCodec;
    objc_storeStrong(&v19->_outputContentType, contentType);
    v22 = v19;
  }

  return v19;
}

@end