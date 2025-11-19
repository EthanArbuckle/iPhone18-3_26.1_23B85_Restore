@interface _LSPersonaWithAttributes
- (BOOL)isEqual:(id)a3;
- (_LSPersonaWithAttributes)initWithCoder:(id)a3;
- (uint64_t)personaType;
- (uint64_t)personaUniqueString;
- (void)encodeWithCoder:(id)a3;
- (void)initWithPersonaType:(void *)a3 personaUniqueString:;
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

- (void)initWithPersonaType:(void *)a3 personaUniqueString:
{
  v5 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _LSPersonaWithAttributes;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[2] = a2;
    }
  }

  return a1;
}

- (_LSPersonaWithAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSPersonaWithAttributes;
  v5 = [(_LSPersonaWithAttributes *)&v9 init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v6;

    v5->_personaType = [v4 decodeIntegerForKey:@"personaType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_personaUniqueString forKey:@"personaUniqueString"];
  [v4 encodeInteger:self->_personaType forKey:@"personaType"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4[2] == self->_personaType)
  {
    v5 = [v4[1] isEqualToString:self->_personaUniqueString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end