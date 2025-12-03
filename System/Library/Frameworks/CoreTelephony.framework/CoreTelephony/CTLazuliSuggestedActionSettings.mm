@interface CTLazuliSuggestedActionSettings
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionSettings:(id)settings;
- (CTLazuliSuggestedActionSettings)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionSettings)initWithReflection:(const SuggestedActionSettings *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionSettings

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  type = [(CTLazuliSuggestedActionSettings *)self type];
  type2 = [(CTLazuliSuggestedActionSettings *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliSettingsActionType(&type2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionSettings:(id)settings
{
  settingsCopy = settings;
  type = [(CTLazuliSuggestedActionSettings *)self type];
  LOBYTE(type) = type == [settingsCopy type];

  return type;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionSettings *)self isEqualToCTLazuliSuggestedActionSettings:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTLazuliSuggestedActionSettings allocWithZone:zone];
  [(CTLazuliSuggestedActionSettings *)v4 setType:self->_type];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];
}

- (CTLazuliSuggestedActionSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CTLazuliSuggestedActionSettings;
  v5 = [(CTLazuliSuggestedActionSettings *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];
  }

  return v5;
}

- (CTLazuliSuggestedActionSettings)initWithReflection:(const SuggestedActionSettings *)reflection
{
  v6.receiver = self;
  v6.super_class = CTLazuliSuggestedActionSettings;
  v4 = [(CTLazuliSuggestedActionSettings *)&v6 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliGroupChatParticipantRoleType(reflection);
  }

  return v4;
}

@end