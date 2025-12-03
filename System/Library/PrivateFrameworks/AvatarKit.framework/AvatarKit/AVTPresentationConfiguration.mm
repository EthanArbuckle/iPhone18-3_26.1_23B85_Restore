@interface AVTPresentationConfiguration
- (AVTPresentationConfiguration)init;
- (id)_initWithStyle:(unint64_t)style;
@end

@implementation AVTPresentationConfiguration

- (AVTPresentationConfiguration)init
{
  [(AVTPresentationConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = AVTPresentationConfiguration;
  result = [(AVTPresentationConfiguration *)&v5 init];
  if (result)
  {
    *(result + 1) = style;
  }

  return result;
}

@end