@interface VNPixelBufferMLFeatureProvider
- (NSSet)featureNames;
- (VNPixelBufferMLFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer forKey:(id)key originalFeatureProvider:(id)provider;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation VNPixelBufferMLFeatureProvider

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:self->_imageInputKey])
  {
    [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_pixelBuffer];
  }

  else
  {
    [(MLFeatureProvider *)self->_originalFeatureProvider featureValueForName:nameCopy];
  }
  v5 = ;

  return v5;
}

- (NSSet)featureNames
{
  v3 = [MEMORY[0x1E695DFA8] setWithObject:self->_imageInputKey];
  originalFeatureProvider = self->_originalFeatureProvider;
  if (originalFeatureProvider)
  {
    featureNames = [(MLFeatureProvider *)originalFeatureProvider featureNames];
    [v3 unionSet:featureNames];
  }

  return v3;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  self->_pixelBuffer = 0;
  v3.receiver = self;
  v3.super_class = VNPixelBufferMLFeatureProvider;
  [(VNPixelBufferMLFeatureProvider *)&v3 dealloc];
}

- (VNPixelBufferMLFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer forKey:(id)key originalFeatureProvider:(id)provider
{
  keyCopy = key;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = VNPixelBufferMLFeatureProvider;
  v10 = [(VNPixelBufferMLFeatureProvider *)&v14 init];
  if (v10)
  {
    v10->_pixelBuffer = CVPixelBufferRetain(buffer);
    v11 = [keyCopy copy];
    imageInputKey = v10->_imageInputKey;
    v10->_imageInputKey = v11;

    objc_storeStrong(&v10->_originalFeatureProvider, provider);
  }

  return v10;
}

@end