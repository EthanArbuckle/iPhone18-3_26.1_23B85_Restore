@interface CTLazuliSuggestedActionDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionDevice:(id)device;
- (CTLazuliSuggestedActionDevice)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionDevice)initWithReflection:(const SuggestedActionDevice *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionDevice

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  type = [(CTLazuliSuggestedActionDevice *)self type];
  type2 = [(CTLazuliSuggestedActionDevice *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliDeviceActionType(&type2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionDevice:(id)device
{
  deviceCopy = device;
  type = [(CTLazuliSuggestedActionDevice *)self type];
  LOBYTE(type) = type == [deviceCopy type];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionDevice *)self isEqualToCTLazuliSuggestedActionDevice:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTLazuliSuggestedActionDevice allocWithZone:zone];
  [(CTLazuliSuggestedActionDevice *)v4 setType:self->_type];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];
}

- (CTLazuliSuggestedActionDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CTLazuliSuggestedActionDevice;
  v5 = [(CTLazuliSuggestedActionDevice *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v6 longValue];
  }

  return v5;
}

- (CTLazuliSuggestedActionDevice)initWithReflection:(const SuggestedActionDevice *)reflection
{
  v6.receiver = self;
  v6.super_class = CTLazuliSuggestedActionDevice;
  v4 = [(CTLazuliSuggestedActionDevice *)&v6 init];
  if (v4)
  {
    v4->_type = encode_CTLazuliChatBotMediaLabelType(reflection);
  }

  return v4;
}

@end