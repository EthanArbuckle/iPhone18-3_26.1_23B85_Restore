@interface AVSpeechSynthesisProviderRequest
+ (void)initialize;
- (AVSpeechSynthesisProviderRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVSpeechSynthesisProviderRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  voice = [(AVSpeechSynthesisProviderRequest *)self voice];
  [v4 setVoice:voice];

  ssmlRepresentation = [(AVSpeechSynthesisProviderRequest *)self ssmlRepresentation];
  [v4 setSsmlRepresentation:ssmlRepresentation];

  return v4;
}

- (AVSpeechSynthesisProviderRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AVSpeechSynthesisProviderRequest;
  v5 = [(AVSpeechSynthesisProviderRequest *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    [(AVSpeechSynthesisProviderRequest *)v5 setVoice:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssmlRepresentation"];
    [(AVSpeechSynthesisProviderRequest *)v5 setSsmlRepresentation:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  voice = [(AVSpeechSynthesisProviderRequest *)self voice];
  [coderCopy encodeObject:voice forKey:@"voice"];

  ssmlRepresentation = [(AVSpeechSynthesisProviderRequest *)self ssmlRepresentation];
  [coderCopy encodeObject:ssmlRepresentation forKey:@"ssmlRepresentation"];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end