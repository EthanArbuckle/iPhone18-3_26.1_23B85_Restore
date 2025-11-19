@interface VNRecognizeDocumentElementsRequestConfiguration
- (VNRecognizeDocumentElementsRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNRecognizeDocumentElementsRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = VNRecognizeDocumentElementsRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v13 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[18] = self->_imageCropAndScaleOption;
    v6 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self->_documentElements copy];
    v7 = v5[19];
    v5[19] = v6;

    v8 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self->_textElements copy];
    v9 = v5[20];
    v5[20] = v8;

    v10 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self->_machineReadableCodeElements copy];
    v11 = v5[21];
    v5[21] = v10;
  }

  return v5;
}

- (VNRecognizeDocumentElementsRequestConfiguration)initWithRequestClass:(Class)a3
{
  v12.receiver = self;
  v12.super_class = VNRecognizeDocumentElementsRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v12 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    v3->_imageCropAndScaleOption = 2;
    v5 = +[VNRecognizeDocumentElementsRequestElementConfiguration newConfiguration];
    documentElements = v4->_documentElements;
    v4->_documentElements = v5;

    v7 = +[VNRecognizeDocumentElementsRequestElementConfiguration newConfiguration];
    textElements = v4->_textElements;
    v4->_textElements = v7;

    v9 = +[VNRecognizeDocumentElementsRequestElementConfiguration newConfiguration];
    machineReadableCodeElements = v4->_machineReadableCodeElements;
    v4->_machineReadableCodeElements = v9;
  }

  return v4;
}

@end