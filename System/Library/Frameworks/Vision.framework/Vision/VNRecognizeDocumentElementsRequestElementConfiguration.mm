@interface VNRecognizeDocumentElementsRequestElementConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation VNRecognizeDocumentElementsRequestElementConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setRecognize:{-[VNRecognizeDocumentElementsRequestElementConfiguration recognize](self, "recognize")}];
    [v4 setGenerateSegmentationMask:{-[VNRecognizeDocumentElementsRequestElementConfiguration generateSegmentationMask](self, "generateSegmentationMask")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      recognize = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self recognize];
      if (recognize == [(VNRecognizeDocumentElementsRequestElementConfiguration *)v5 recognize])
      {
        generateSegmentationMask = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self generateSegmentationMask];
        v7 = generateSegmentationMask ^ [(VNRecognizeDocumentElementsRequestElementConfiguration *)v5 generateSegmentationMask]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  if ([(VNRecognizeDocumentElementsRequestElementConfiguration *)self recognize])
  {
    v3 = 357908480;
  }

  else
  {
    v3 = 178954240;
  }

  generateSegmentationMask = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self generateSegmentationMask];
  v5 = 21845;
  if (generateSegmentationMask)
  {
    v5 = 43690;
  }

  return v5 ^ v3;
}

@end