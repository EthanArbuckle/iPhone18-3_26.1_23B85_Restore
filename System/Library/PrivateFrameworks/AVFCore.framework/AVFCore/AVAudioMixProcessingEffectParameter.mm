@interface AVAudioMixProcessingEffectParameter
+ (id)parameterWithFourCharCode:(unsigned int)code value:(float)value;
- (AVAudioMixProcessingEffectParameter)initWithFourCharCode:(unsigned int)code value:(float)value;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AVAudioMixProcessingEffectParameter

- (AVAudioMixProcessingEffectParameter)initWithFourCharCode:(unsigned int)code value:(float)value
{
  v7.receiver = self;
  v7.super_class = AVAudioMixProcessingEffectParameter;
  result = [(AVAudioMixProcessingEffectParameter *)&v7 init];
  if (result)
  {
    result->_fourcc = code;
    result->_value = value;
  }

  return result;
}

+ (id)parameterWithFourCharCode:(unsigned int)code value:(float)value
{
  v5 = *&code;
  v6 = [AVAudioMixProcessingEffectParameter alloc];
  *&v7 = value;
  v8 = [(AVAudioMixProcessingEffectParameter *)v6 initWithFourCharCode:v5 value:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  if (self->_fourcc != *(equal + 2))
  {
    return 0;
  }

  *&v5 = self->_value;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  LODWORD(v7) = *(equal + 3);
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];

  return [v6 isEqual:v8];
}

- (unint64_t)hash
{
  *&v2 = self->_value;
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v2), "hash"}];
  return [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_fourcc), "hash"}] ^ v4;
}

@end