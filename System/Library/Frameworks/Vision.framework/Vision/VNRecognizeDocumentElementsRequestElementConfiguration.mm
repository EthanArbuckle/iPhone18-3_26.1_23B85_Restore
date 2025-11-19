@interface VNRecognizeDocumentElementsRequestElementConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation VNRecognizeDocumentElementsRequestElementConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setRecognize:{-[VNRecognizeDocumentElementsRequestElementConfiguration recognize](self, "recognize")}];
    [v4 setGenerateSegmentationMask:{-[VNRecognizeDocumentElementsRequestElementConfiguration generateSegmentationMask](self, "generateSegmentationMask")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self recognize];
      if (v6 == [(VNRecognizeDocumentElementsRequestElementConfiguration *)v5 recognize])
      {
        v8 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self generateSegmentationMask];
        v7 = v8 ^ [(VNRecognizeDocumentElementsRequestElementConfiguration *)v5 generateSegmentationMask]^ 1;
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

  v4 = [(VNRecognizeDocumentElementsRequestElementConfiguration *)self generateSegmentationMask];
  v5 = 21845;
  if (v4)
  {
    v5 = 43690;
  }

  return v5 ^ v3;
}

@end