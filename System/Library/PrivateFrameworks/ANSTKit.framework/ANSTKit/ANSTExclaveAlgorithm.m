@interface ANSTExclaveAlgorithm
+ (Class)_concreteClassOfVersion:(unint64_t)a3;
+ (id)new;
- (ANSTExclaveAlgorithm)init;
- (ANSTExclaveAlgorithm)initWithConfiguration:(id)a3;
- (ANSTPixelBufferDescriptor)networkInputImageDescriptor;
- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)executeInferenceWithFocalLength:(float)a3 originalInputDimension:(CGSize)a4 error:(id *)a5;
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
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)a3
{
  if (a3 - 66436 <= 0x14 && ((1 << (a3 + 124)) & 0x100C01) != 0 || a3 - 65543 < 2 || a3 == 65717)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ANSTExclaveAlgorithm)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = ANSTExclaveAlgorithm;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:a3];
}

- (ANSTPixelBufferDescriptor)networkInputImageDescriptor
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, a4);
  __break(1u);
  return result;
}

- (id)executeInferenceWithFocalLength:(float)a3 originalInputDimension:(CGSize)a4 error:(id *)a5
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end