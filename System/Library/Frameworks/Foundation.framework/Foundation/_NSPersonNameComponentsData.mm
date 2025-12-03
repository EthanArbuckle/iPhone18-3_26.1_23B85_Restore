@interface _NSPersonNameComponentsData
- (_NSPersonNameComponentsData)init;
- (_NSPersonNameComponentsData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSPersonNameComponentsData

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self)
  {

    self->_givenName = 0;
    self->_familyName = 0;

    self->_middleName = 0;
    self->_namePrefix = 0;

    self->_nameSuffix = 0;
    self->_nickname = 0;

    self->_phoneticRepresentation = 0;
  }

  v3.receiver = self;
  v3.super_class = _NSPersonNameComponentsData;
  [(_NSPersonNameComponentsData *)&v3 dealloc];
}

- (_NSPersonNameComponentsData)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSPersonNameComponentsData;
  result = [(_NSPersonNameComponentsData *)&v3 init];
  if (result)
  {
    result->_phoneticRepresentation = 0;
    *&result->_nameSuffix = 0u;
    *&result->_middleName = 0u;
    *&result->_givenName = 0u;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(_NSPersonNameComponentsData);
  v5->_givenName = [(NSString *)self->_givenName copyWithZone:zone];
  v5->_familyName = [(NSString *)self->_familyName copyWithZone:zone];
  v5->_middleName = [(NSString *)self->_middleName copyWithZone:zone];
  v5->_namePrefix = [(NSString *)self->_namePrefix copyWithZone:zone];
  v5->_nameSuffix = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v5->_nickname = [(NSString *)self->_nickname copyWithZone:zone];
  v5->_phoneticRepresentation = [(NSPersonNameComponents *)self->_phoneticRepresentation copyWithZone:zone];
  return v5;
}

- (_NSPersonNameComponentsData)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  if (self)
  {
    if ([coder containsValueForKey:@"NS.givenName"])
    {
      self->_givenName = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.givenName", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.familyName"])
    {
      self->_familyName = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.familyName", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.middleName"])
    {
      self->_middleName = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.middleName", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.namePrefix"])
    {
      self->_namePrefix = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.namePrefix", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.nameSuffix"])
    {
      self->_nameSuffix = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.nameSuffix", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.nickname"])
    {
      self->_nickname = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.nickname", "copy"}];
    }

    if ([coder containsValueForKey:@"NS.phoneticRepresentation"])
    {
      self->_phoneticRepresentation = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.phoneticRepresentation", "copy"}];
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersonNameComponents cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [coder encodeObject:self->_givenName forKey:@"NS.givenName"];
  [coder encodeObject:self->_familyName forKey:@"NS.familyName"];
  [coder encodeObject:self->_middleName forKey:@"NS.middleName"];
  [coder encodeObject:self->_namePrefix forKey:@"NS.namePrefix"];
  [coder encodeObject:self->_nameSuffix forKey:@"NS.nameSuffix"];
  [coder encodeObject:self->_nickname forKey:@"NS.nickname"];
  phoneticRepresentation = self->_phoneticRepresentation;

  [coder encodeObject:phoneticRepresentation forKey:@"NS.phoneticRepresentation"];
}

@end