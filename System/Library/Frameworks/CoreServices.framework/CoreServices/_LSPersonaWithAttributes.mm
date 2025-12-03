@interface _LSPersonaWithAttributes
- (BOOL)isEqual:(id)equal;
- (_LSPersonaWithAttributes)initWithCoder:(id)coder;
- (uint64_t)personaType;
- (uint64_t)personaUniqueString;
- (void)encodeWithCoder:(id)coder;
- (void)initWithPersonaType:(void *)type personaUniqueString:;
@end

@implementation _LSPersonaWithAttributes

- (uint64_t)personaUniqueString
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)personaType
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)initWithPersonaType:(void *)type personaUniqueString:
{
  typeCopy = type;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _LSPersonaWithAttributes;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = [typeCopy copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = a2;
    }
  }

  return self;
}

- (_LSPersonaWithAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSPersonaWithAttributes;
  v5 = [(_LSPersonaWithAttributes *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v6;

    v5->_personaType = [coderCopy decodeIntegerForKey:@"personaType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_personaUniqueString forKey:@"personaUniqueString"];
  [coderCopy encodeInteger:self->_personaType forKey:@"personaType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy[2] == self->_personaType)
  {
    v5 = [equalCopy[1] isEqualToString:self->_personaUniqueString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end