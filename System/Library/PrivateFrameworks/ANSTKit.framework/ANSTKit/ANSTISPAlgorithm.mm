@interface ANSTISPAlgorithm
+ (ANSTISPAlgorithm)new;
+ (Class)_concreteClassOfVersion:(unint64_t)version;
- (ANSTISPAlgorithm)init;
- (ANSTISPAlgorithm)initWithConfiguration:(id)configuration;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
@end

@implementation ANSTISPAlgorithm

+ (ANSTISPAlgorithm)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTISPAlgorithm)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)version
{
  if (version == 0x10000)
  {
    v4 = off_27884F478;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (version == 196613)
  {
    v4 = off_27884F480;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (ANSTISPAlgorithm)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithm;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:configuration];
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, orientation, error);
  __break(1u);
  return result;
}

@end