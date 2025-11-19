@interface PHPTPConversionResult
- (PHPTPConversionResult)initWithRequiresConversion:(BOOL)a3 pathExtension:(id)a4 estimatedFileLength:(unint64_t)a5 inputVideoCodec:(unsigned int)a6 inputContentType:(id)a7 outputVideoCodec:(unsigned int)a8 outputContentType:(id)a9;
@end

@implementation PHPTPConversionResult

- (PHPTPConversionResult)initWithRequiresConversion:(BOOL)a3 pathExtension:(id)a4 estimatedFileLength:(unint64_t)a5 inputVideoCodec:(unsigned int)a6 inputContentType:(id)a7 outputVideoCodec:(unsigned int)a8 outputContentType:(id)a9
{
  v15 = a4;
  v16 = a7;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = PHPTPConversionResult;
  v18 = [(PHPTPConversionResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requiresConversion = a3;
    v20 = [v15 copy];
    pathExtension = v19->_pathExtension;
    v19->_pathExtension = v20;

    v19->_estimatedFileLength = a5;
    v19->_inputVideoCodec = a6;
    objc_storeStrong(&v19->_inputContentType, a7);
    v19->_outputVideoCodec = a8;
    objc_storeStrong(&v19->_outputContentType, a9);
    v22 = v19;
  }

  return v19;
}

@end