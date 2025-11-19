@interface AVSpeechSynthesisProviderRequest
+ (void)initialize;
- (AVSpeechSynthesisProviderRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVSpeechSynthesisProviderRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AVSpeechSynthesisProviderRequest *)self voice];
  [v4 setVoice:v5];

  v6 = [(AVSpeechSynthesisProviderRequest *)self ssmlRepresentation];
  [v4 setSsmlRepresentation:v6];

  return v4;
}

- (AVSpeechSynthesisProviderRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVSpeechSynthesisProviderRequest;
  v5 = [(AVSpeechSynthesisProviderRequest *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    [(AVSpeechSynthesisProviderRequest *)v5 setVoice:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ssmlRepresentation"];
    [(AVSpeechSynthesisProviderRequest *)v5 setSsmlRepresentation:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AVSpeechSynthesisProviderRequest *)self voice];
  [v6 encodeObject:v4 forKey:@"voice"];

  v5 = [(AVSpeechSynthesisProviderRequest *)self ssmlRepresentation];
  [v6 encodeObject:v5 forKey:@"ssmlRepresentation"];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end