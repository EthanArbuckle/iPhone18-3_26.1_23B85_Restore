@interface CTLazuliSuggestedActionComposeText
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionComposeText:(id)text;
- (CTLazuliSuggestedActionComposeText)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionComposeText)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionComposeText

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  phoneNumber = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber = %@", phoneNumber];

  text = [(CTLazuliSuggestedActionComposeText *)self text];
  [v3 appendFormat:@", text = %@", text];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionComposeText:(id)text
{
  textCopy = text;
  phoneNumber = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
  phoneNumber2 = [textCopy phoneNumber];
  if (phoneNumber != phoneNumber2)
  {
    phoneNumber3 = [(CTLazuliSuggestedActionComposeText *)self phoneNumber];
    phoneNumber4 = [textCopy phoneNumber];
    if (![phoneNumber3 isEqualToString:phoneNumber4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  text = [(CTLazuliSuggestedActionComposeText *)self text];
  text2 = [textCopy text];
  v12 = text2;
  if (text == text2)
  {

    v9 = 1;
  }

  else
  {
    text3 = [(CTLazuliSuggestedActionComposeText *)self text];
    text4 = [textCopy text];
    v9 = [text3 isEqualToString:text4];
  }

  if (phoneNumber != phoneNumber2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionComposeText *)self isEqualToCTLazuliSuggestedActionComposeText:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionComposeText allocWithZone:?];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(CTLazuliSuggestedActionComposeText *)v5 setPhoneNumber:v6];

  v7 = [(NSString *)self->_text copyWithZone:zone];
  [(CTLazuliSuggestedActionComposeText *)v5 setText:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_phoneNumber forKey:@"kPhoneNumberKey"];
  [coderCopy encodeObject:self->_text forKey:@"kTextKey"];
}

- (CTLazuliSuggestedActionComposeText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliSuggestedActionComposeText;
  v5 = [(CTLazuliSuggestedActionComposeText *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPhoneNumberKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTextKey"];
    text = v5->_text;
    v5->_text = v8;
  }

  return v5;
}

- (CTLazuliSuggestedActionComposeText)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionComposeText;
  v4 = [(CTLazuliSuggestedActionComposeText *)&v15 init];
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
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v6;

    v10 = *(reflection + 3);
    v9 = reflection + 24;
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