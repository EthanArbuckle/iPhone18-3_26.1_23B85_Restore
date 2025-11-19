@interface CTLazuliSuggestedActionComposeText
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionComposeText:(id)a3;
- (CTLazuliSuggestedActionComposeText)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionComposeText)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionComposeText

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", v4];

  v5 = [(CTLazuliSuggestedActionComposeText *)self text];
  [v3 appendFormat:@", text = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionComposeText:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
  v8 = [v6 phoneNumber];
  if (v7 != v8)
  {
    v3 = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
    v4 = [v6 phoneNumber];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliSuggestedActionComposeText *)self text];
  v11 = [v6 text];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliSuggestedActionComposeText *)self text];
    v14 = [v6 text];
    v9 = [v13 isEqualToString:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionComposeText *)self isEqualToCTLazuliSuggestedActionComposeText:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionComposeText allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  [(CTLazuliSuggestedActionComposeText *)v5 setPhoneNumber:v6];

  v7 = [(NSString *)self->_text copyWithZone:a3];
  [(CTLazuliSuggestedActionComposeText *)v5 setText:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_phoneNumber forKey:@"kPhoneNumberKey"];
  [v4 encodeObject:self->_text forKey:@"kTextKey"];
}

- (CTLazuliSuggestedActionComposeText)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliSuggestedActionComposeText;
  v5 = [(CTLazuliSuggestedActionComposeText *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v8;
  }

  return v5;
}

- (CTLazuliSuggestedActionComposeText)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionComposeText;
  v4 = [(CTLazuliSuggestedActionComposeText *)&v15 init];
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

    v10 = *(a3 + 3);
    v9 = a3 + 24;
    v8 = v10;
    if (v9[23] >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    text = v4->_text;
    v4->_text = v12;
  }

  return v4;
}

@end