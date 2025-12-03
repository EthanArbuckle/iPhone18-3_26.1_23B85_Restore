@interface ANSTExclaveAlgorithm
+ (Class)_concreteClassOfVersion:(unint64_t)version;
+ (id)new;
- (ANSTExclaveAlgorithm)init;
- (ANSTExclaveAlgorithm)initWithConfiguration:(id)configuration;
- (ANSTPixelBufferDescriptor)networkInputImageDescriptor;
- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error;
@end

@implementation ANSTExclaveAlgorithm

- (ANSTExclaveAlgorithm)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)version
{
  if (version - 66436 <= 0x14 && ((1 << (version + 124)) & 0x100C01) != 0 || version - 65543 < 2 || version == 65717)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ANSTExclaveAlgorithm)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = ANSTExclaveAlgorithm;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:configuration];
}

- (ANSTPixelBufferDescriptor)networkInputImageDescriptor
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, error);
  __break(1u);
  return result;
}

- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end