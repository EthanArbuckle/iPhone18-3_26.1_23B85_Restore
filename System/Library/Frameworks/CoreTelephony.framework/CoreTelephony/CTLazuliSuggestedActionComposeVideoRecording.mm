@interface CTLazuliSuggestedActionComposeVideoRecording
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionComposeVideoRecording:(id)recording;
- (CTLazuliSuggestedActionComposeVideoRecording)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionComposeVideoRecording)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliSuggestedActionComposeVideoRecording

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  phoneNumber = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", phoneNumber];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionComposeVideoRecording:(id)recording
{
  recordingCopy = recording;
  phoneNumber = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
  phoneNumber2 = [recordingCopy phoneNumber];
  if (phoneNumber == phoneNumber2)
  {
    v9 = 1;
  }

  else
  {
    phoneNumber3 = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionComposeVideoRecording *)self isEqualToCTLazuliSuggestedActionComposeVideoRecording:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionComposeVideoRecording allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(CTLazuliSuggestedActionComposeVideoRecording *)v5 setPhoneNumber:v6];

  return v5;
}

- (CTLazuliSuggestedActionComposeVideoRecording)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeVideoRecording;
  v5 = [(CTLazuliSuggestedActionComposeVideoRecording *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionComposeVideoRecording)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeVideoRecording;
  v4 = [(CTLazuliSuggestedActionComposeVideoRecording *)&v9 init];
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