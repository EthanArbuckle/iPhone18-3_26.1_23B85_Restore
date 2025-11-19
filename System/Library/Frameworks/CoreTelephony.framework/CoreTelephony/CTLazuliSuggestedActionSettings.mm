@interface CTLazuliSuggestedActionSettings
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionSettings:(id)a3;
- (CTLazuliSuggestedActionSettings)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionSettings)initWithReflection:(const SuggestedActionSettings *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionSettings

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionSettings *)self type];
  v6 = [(CTLazuliSuggestedActionSettings *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", v4, print_CTLazuliSettingsActionType(&v6)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionSettings:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionSettings *)self type];
  LOBYTE(v5) = v5 == [v4 type];

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionSettings *)self isEqualToCTLazuliSuggestedActionSettings:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTLazuliSuggestedActionSettings allocWithZone:a3];
  [(CTLazuliSuggestedActionSettings *)v4 setType:self->_type];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [v5 encodeObject:v4 forKey:@"kTypeKey"];
}

- (CTLazuliSuggestedActionSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CTLazuliSuggestedActionSettings;
  v5 = [(CTLazuliSuggestedActionSettings *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];
  }

  return v5;
}

- (CTLazuliSuggestedActionSettings)initWithReflection:(const SuggestedActionSettings *)a3
{
  v6.receiver = self;
  v6.super_class = CTLazuliSuggestedActionSettings;
  v4 = [(CTLazuliSuggestedActionSettings *)&v6 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(a3);
  }

  return v4;
}

@end