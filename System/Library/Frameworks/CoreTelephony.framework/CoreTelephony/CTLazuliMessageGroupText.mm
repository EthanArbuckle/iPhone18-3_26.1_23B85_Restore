@interface CTLazuliMessageGroupText
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageGroupText:(id)text;
- (CTLazuliMessageGroupText)initWithCoder:(id)coder;
- (CTLazuliMessageGroupText)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageGroupText

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chatInformation = [(CTLazuliMessageGroupText *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", chatInformation];

  content = [(CTLazuliMessageGroupText *)self content];
  [v3 appendFormat:@", content = %@", content];

  metaData = [(CTLazuliMessageGroupText *)self metaData];
  [v3 appendFormat:@", metaData = %@", metaData];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupText:(id)text
{
  textCopy = text;
  chatInformation = [(CTLazuliMessageGroupText *)self chatInformation];
  chatInformation2 = [textCopy chatInformation];
  if (chatInformation != chatInformation2)
  {
    chatInformation3 = [(CTLazuliMessageGroupText *)self chatInformation];
    chatInformation4 = [textCopy chatInformation];
    if (![chatInformation3 isEqualToCTLazuliGroupChatInformation:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  content = [(CTLazuliMessageGroupText *)self content];
  content2 = [textCopy content];
  if (content != content2)
  {
    content3 = [(CTLazuliMessageGroupText *)self content];
    content4 = [textCopy content];
    if (![content3 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  metaData = [(CTLazuliMessageGroupText *)self metaData];
  metaData2 = [textCopy metaData];
  v12 = metaData2;
  if (metaData == metaData2)
  {

    v7 = 1;
  }

  else
  {
    metaData3 = [(CTLazuliMessageGroupText *)self metaData];
    metaData4 = [textCopy metaData];
    v7 = [metaData3 isEqualToCTLazuliCustomMetaData:metaData4];
  }

  if (content != content2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (chatInformation != chatInformation2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupText *)self isEqualToCTLazuliMessageGroupText:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageGroupText allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:zone];
  [(CTLazuliMessageGroupText *)v5 setChatInformation:v6];

  v7 = [(NSString *)self->_content copyWithZone:zone];
  [(CTLazuliMessageGroupText *)v5 setContent:v7];

  v8 = [(CTLazuliCustomMetaData *)self->_metaData copyWithZone:zone];
  [(CTLazuliMessageGroupText *)v5 setMetaData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  [coderCopy encodeObject:self->_content forKey:@"kContentKey"];
  [coderCopy encodeObject:self->_metaData forKey:@"kMetaDataKey"];
}

- (CTLazuliMessageGroupText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliMessageGroupText;
  v5 = [(CTLazuliMessageGroupText *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMetaDataKey"];
    metaData = v5->_metaData;
    v5->_metaData = v10;
  }

  return v5;
}

- (CTLazuliMessageGroupText)initWithReflection:(const void *)reflection
{
  v16.receiver = self;
  v16.super_class = CTLazuliMessageGroupText;
  v4 = [(CTLazuliMessageGroupText *)&v16 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:reflection];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    if (*(reflection + 351) >= 0)
    {
      v7 = reflection + 328;
    }

    else
    {
      v7 = *(reflection + 41);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    content = v4->_content;
    v4->_content = v8;

    if (*(reflection + 376) == 1)
    {
      v10 = v4;
      v11 = [CTLazuliCustomMetaData alloc];
      if ((*(reflection + 376) & 1) == 0)
      {
        v15 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v15);
      }

      v12 = [(CTLazuliCustomMetaData *)v11 initWithReflection:reflection + 352];
    }

    else
    {
      v12 = 0;
    }

    metaData = v4->_metaData;
    v4->_metaData = v12;
  }

  return v4;
}

@end