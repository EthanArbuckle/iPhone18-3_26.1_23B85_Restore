@interface CTLazuliGroupChatIcon
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatIcon:(id)a3;
- (CTLazuliGroupChatIcon)initWithCoder:(id)a3;
- (CTLazuliGroupChatIcon)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliGroupChatIcon

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatIcon *)self name];
  [v3 appendFormat:@", name = %@", v4];

  v5 = [(CTLazuliGroupChatIcon *)self data];
  [v3 appendFormat:@", data = %@", v5];

  v6 = [(CTLazuliGroupChatIcon *)self type];
  [v3 appendFormat:@", type = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatIcon:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliGroupChatIcon *)self name];
  v6 = [v4 name];
  if (v5 != v6)
  {
    v19 = [(CTLazuliGroupChatIcon *)self name];
    v17 = [v4 name];
    if (![v19 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliGroupChatIcon *)self data];
  v9 = [v4 data];
  if (v8 != v9)
  {
    v18 = [(CTLazuliGroupChatIcon *)self data];
    v16 = [v4 data];
    if (![v18 isEqualToData:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliGroupChatIcon *)self type];
  v11 = [v4 type];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliGroupChatIcon *)self type];
    v14 = [v4 type];
    v7 = [v13 isEqualToString:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatIcon *)self isEqualToCTLazuliGroupChatIcon:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatIcon allocWithZone:?];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  [(CTLazuliGroupChatIcon *)v5 setName:v6];

  v7 = [(NSData *)self->_data copyWithZone:a3];
  [(CTLazuliGroupChatIcon *)v5 setData:v7];

  v8 = [(NSString *)self->_type copyWithZone:a3];
  [(CTLazuliGroupChatIcon *)v5 setType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"kNameKey"];
  [v4 encodeObject:self->_data forKey:@"kDataKey"];
  [v4 encodeObject:self->_type forKey:@"kTypeKey"];
}

- (CTLazuliGroupChatIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliGroupChatIcon;
  v5 = [(CTLazuliGroupChatIcon *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    type = v5->_type;
    v5->_type = v10;
  }

  return v5;
}

- (CTLazuliGroupChatIcon)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatIcon;
  v4 = [(CTLazuliGroupChatIcon *)&v17 init];
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
    name = v4->_name;
    v4->_name = v6;

    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:*(a3 + 3) length:*(a3 + 4) - *(a3 + 3)];
    data = v4->_data;
    v4->_data = v8;

    v12 = *(a3 + 6);
    v11 = a3 + 48;
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