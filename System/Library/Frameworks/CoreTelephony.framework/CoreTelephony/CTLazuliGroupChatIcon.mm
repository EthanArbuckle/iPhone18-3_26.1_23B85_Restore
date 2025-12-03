@interface CTLazuliGroupChatIcon
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatIcon:(id)icon;
- (CTLazuliGroupChatIcon)initWithCoder:(id)coder;
- (CTLazuliGroupChatIcon)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliGroupChatIcon

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  name = [(CTLazuliGroupChatIcon *)self name];
  [v3 appendFormat:@", name = %@", name];

  data = [(CTLazuliGroupChatIcon *)self data];
  [v3 appendFormat:@", data = %@", data];

  type = [(CTLazuliGroupChatIcon *)self type];
  [v3 appendFormat:@", type = %@", type];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatIcon:(id)icon
{
  iconCopy = icon;
  name = [(CTLazuliGroupChatIcon *)self name];
  name2 = [iconCopy name];
  if (name != name2)
  {
    name3 = [(CTLazuliGroupChatIcon *)self name];
    name4 = [iconCopy name];
    if (![name3 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  data = [(CTLazuliGroupChatIcon *)self data];
  data2 = [iconCopy data];
  if (data != data2)
  {
    data3 = [(CTLazuliGroupChatIcon *)self data];
    data4 = [iconCopy data];
    if (![data3 isEqualToData:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  type = [(CTLazuliGroupChatIcon *)self type];
  type2 = [iconCopy type];
  v12 = type2;
  if (type == type2)
  {

    v7 = 1;
  }

  else
  {
    type3 = [(CTLazuliGroupChatIcon *)self type];
    type4 = [iconCopy type];
    v7 = [type3 isEqualToString:type4];
  }

  if (data != data2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (name != name2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatIcon *)self isEqualToCTLazuliGroupChatIcon:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatIcon allocWithZone:?];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  [(CTLazuliGroupChatIcon *)v5 setName:v6];

  v7 = [(NSData *)self->_data copyWithZone:zone];
  [(CTLazuliGroupChatIcon *)v5 setData:v7];

  v8 = [(NSString *)self->_type copyWithZone:zone];
  [(CTLazuliGroupChatIcon *)v5 setType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"kNameKey"];
  [coderCopy encodeObject:self->_data forKey:@"kDataKey"];
  [coderCopy encodeObject:self->_type forKey:@"kTypeKey"];
}

- (CTLazuliGroupChatIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliGroupChatIcon;
  v5 = [(CTLazuliGroupChatIcon *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    type = v5->_type;
    v5->_type = v10;
  }

  return v5;
}

- (CTLazuliGroupChatIcon)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatIcon;
  v4 = [(CTLazuliGroupChatIcon *)&v17 init];
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
    name = v4->_name;
    v4->_name = v6;

    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:*(reflection + 3) length:*(reflection + 4) - *(reflection + 3)];
    data = v4->_data;
    v4->_data = v8;

    v12 = *(reflection + 6);
    v11 = reflection + 48;
    v10 = v12;
    if (v11[23] >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    type = v4->_type;
    v4->_type = v14;
  }

  return v4;
}

@end