@interface AVTPresentationConfiguration
- (AVTPresentationConfiguration)init;
- (id)_initWithStyle:(unint64_t)a3;
@end

@implementation AVTPresentationConfiguration

- (AVTPresentationConfiguration)init
{
  [(AVTPresentationConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AVTPresentationConfiguration;
  result = [(AVTPresentationConfiguration *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

@end