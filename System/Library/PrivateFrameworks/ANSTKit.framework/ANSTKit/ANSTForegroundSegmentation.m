@interface ANSTForegroundSegmentation
+ (Class)_concreteClassOfVersion:(unint64_t)a3;
+ (id)new;
- (ANSTForegroundSegmentation)init;
- (ANSTForegroundSegmentation)initWithConfiguration:(id)a3;
- (id)resultForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
@end

@implementation ANSTForegroundSegmentation

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentation)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)a3
{
  if (a3 == 0x20000 || a3 == 0x10000)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ANSTForegroundSegmentation)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = ANSTForegroundSegmentation;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:a3];
}

- (id)resultForPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, a4);
  __break(1u);
  return result;
}

@end