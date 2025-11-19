@interface VNPixelBufferMLFeatureProvider
- (NSSet)featureNames;
- (VNPixelBufferMLFeatureProvider)initWithPixelBuffer:(__CVBuffer *)a3 forKey:(id)a4 originalFeatureProvider:(id)a5;
- (id)featureValueForName:(id)a3;
- (void)dealloc;
@end

@implementation VNPixelBufferMLFeatureProvider

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:self->_imageInputKey])
  {
    [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_pixelBuffer];
  }

  else
  {
    [(MLFeatureProvider *)self->_originalFeatureProvider featureValueForName:v4];
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
    v5 = [(MLFeatureProvider *)originalFeatureProvider featureNames];
    [v3 unionSet:v5];
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

- (VNPixelBufferMLFeatureProvider)initWithPixelBuffer:(__CVBuffer *)a3 forKey:(id)a4 originalFeatureProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = VNPixelBufferMLFeatureProvider;
  v10 = [(VNPixelBufferMLFeatureProvider *)&v14 init];
  if (v10)
  {
    v10->_pixelBuffer = CVPixelBufferRetain(a3);
    v11 = [v8 copy];
    imageInputKey = v10->_imageInputKey;
    v10->_imageInputKey = v11;

    objc_storeStrong(&v10->_originalFeatureProvider, a5);
  }

  return v10;
}

@end