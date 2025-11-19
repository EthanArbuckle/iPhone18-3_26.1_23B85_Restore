@interface ANSTISPAlgorithm
+ (ANSTISPAlgorithm)new;
+ (Class)_concreteClassOfVersion:(unint64_t)a3;
- (ANSTISPAlgorithm)init;
- (ANSTISPAlgorithm)initWithConfiguration:(id)a3;
- (id)resultForPixelBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 error:(id *)a5;
@end

@implementation ANSTISPAlgorithm

+ (ANSTISPAlgorithm)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTISPAlgorithm)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)a3
{
  if (a3 == 0x10000)
  {
    v4 = off_27884F478;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 196613)
  {
    v4 = off_27884F480;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (ANSTISPAlgorithm)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithm;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:a3];
}

- (id)resultForPixelBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 error:(id *)a5
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, a4, a5);
  __break(1u);
  return result;
}

@end