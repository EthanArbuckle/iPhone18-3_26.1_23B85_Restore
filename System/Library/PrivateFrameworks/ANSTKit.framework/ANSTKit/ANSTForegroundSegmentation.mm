@interface ANSTForegroundSegmentation
+ (Class)_concreteClassOfVersion:(unint64_t)version;
+ (id)new;
- (ANSTForegroundSegmentation)init;
- (ANSTForegroundSegmentation)initWithConfiguration:(id)configuration;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
@end

@implementation ANSTForegroundSegmentation

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTForegroundSegmentation)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)version
{
  if (version == 0x20000 || version == 0x10000)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ANSTForegroundSegmentation)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = ANSTForegroundSegmentation;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:configuration];
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, error);
  __break(1u);
  return result;
}

@end