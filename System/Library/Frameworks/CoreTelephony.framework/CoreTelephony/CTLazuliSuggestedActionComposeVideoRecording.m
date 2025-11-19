@interface CTLazuliSuggestedActionComposeVideoRecording
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionComposeVideoRecording:(id)a3;
- (CTLazuliSuggestedActionComposeVideoRecording)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionComposeVideoRecording)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliSuggestedActionComposeVideoRecording

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionComposeVideoRecording:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
  v6 = [v4 phoneNumber];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliSuggestedActionComposeVideoRecording *)self phoneNumber];
    v8 = [v4 phoneNumber];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionComposeVideoRecording *)self isEqualToCTLazuliSuggestedActionComposeVideoRecording:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionComposeVideoRecording allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  [(CTLazuliSuggestedActionComposeVideoRecording *)v5 setPhoneNumber:v6];

  return v5;
}

- (CTLazuliSuggestedActionComposeVideoRecording)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeVideoRecording;
  v5 = [(CTLazuliSuggestedActionComposeVideoRecording *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;
  }

  return v5;
}

- (CTLazuliSuggestedActionComposeVideoRecording)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliSuggestedActionComposeVideoRecording;
  v4 = [(CTLazuliSuggestedActionComposeVideoRecording *)&v9 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v6;
  }

  return v4;
}

@end