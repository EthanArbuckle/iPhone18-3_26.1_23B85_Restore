@interface CTLazuliSuggestedActionComposeAudioRecording
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionComposeAudioRecording:(id)recording;
- (CTLazuliSuggestedActionComposeAudioRecording)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionComposeAudioRecording)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliSuggestedActionComposeAudioRecording

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  phoneNumber = [(CTLazuliSuggestedActionComposeAudioRecording *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", phoneNumber];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionComposeAudioRecording:(id)recording
{
  recordingCopy = recording;
  phoneNumber = [(CTLazuliSuggestedActionComposeAudioRecording *)self phoneNumber];
  phoneNumber2 = [recordingCopy phoneNumber];
  if (phoneNumber == phoneNumber2)
  {
    v9 = 1;
  }

  else
  {
    phoneNumber3 = [(CTLazuliSuggestedActionComposeAudioRecording *)self phoneNumber];
    phoneNumber4 = [recordingCopy phoneNumber];
    v9 = [phoneNumber3 isEqualToString:phoneNumber4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionComposeAudioRecording *)self isEqualToCTLazuliSuggestedActionComposeAudioRecording:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionComposeAudioRecording allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(CTLazuliSuggestedActionComposeAudioRecording *)v5 setPhoneNumber:v6];

  return v5;
}

- (CTLazuliSuggestedActionComposeAudioRecording)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeAudioRecording;
  v5 = [(CTLazuliSuggestedActionComposeAudioRecording *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionComposeAudioRecording)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeAudioRecording;
  v4 = [(CTLazuliSuggestedActionComposeAudioRecording *)&v9 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v6;
  }

  return v4;
}

@end