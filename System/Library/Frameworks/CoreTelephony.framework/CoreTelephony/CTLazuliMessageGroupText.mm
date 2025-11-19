@interface CTLazuliMessageGroupText
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageGroupText:(id)a3;
- (CTLazuliMessageGroupText)initWithCoder:(id)a3;
- (CTLazuliMessageGroupText)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageGroupText

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageGroupText *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", v4];

  v5 = [(CTLazuliMessageGroupText *)self content];
  [v3 appendFormat:@", content = %@", v5];

  v6 = [(CTLazuliMessageGroupText *)self metaData];
  [v3 appendFormat:@", metaData = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupText:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageGroupText *)self chatInformation];
  v6 = [v4 chatInformation];
  if (v5 != v6)
  {
    v19 = [(CTLazuliMessageGroupText *)self chatInformation];
    v17 = [v4 chatInformation];
    if (![v19 isEqualToCTLazuliGroupChatInformation:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliMessageGroupText *)self content];
  v9 = [v4 content];
  if (v8 != v9)
  {
    v18 = [(CTLazuliMessageGroupText *)self content];
    v16 = [v4 content];
    if (![v18 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliMessageGroupText *)self metaData];
  v11 = [v4 metaData];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliMessageGroupText *)self metaData];
    v14 = [v4 metaData];
    v7 = [v13 isEqualToCTLazuliCustomMetaData:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupText *)self isEqualToCTLazuliMessageGroupText:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageGroupText allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:a3];
  [(CTLazuliMessageGroupText *)v5 setChatInformation:v6];

  v7 = [(NSString *)self->_content copyWithZone:a3];
  [(CTLazuliMessageGroupText *)v5 setContent:v7];

  v8 = [(CTLazuliCustomMetaData *)self->_metaData copyWithZone:a3];
  [(CTLazuliMessageGroupText *)v5 setMetaData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  [v4 encodeObject:self->_content forKey:@"kContentKey"];
  [v4 encodeObject:self->_metaData forKey:@"kMetaDataKey"];
}

- (CTLazuliMessageGroupText)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliMessageGroupText;
  v5 = [(CTLazuliMessageGroupText *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kContentKey"];
    content = v5->_content;
    v5->_content = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMetaDataKey"];
    metaData = v5->_metaData;
    v5->_metaData = v10;
  }

  return v5;
}

- (CTLazuliMessageGroupText)initWithReflection:(const void *)a3
{
  v16.receiver = self;
  v16.super_class = CTLazuliMessageGroupText;
  v4 = [(CTLazuliMessageGroupText *)&v16 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:a3];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    if (*(a3 + 351) >= 0)
    {
      v7 = a3 + 328;
    }

    else
    {
      v7 = *(a3 + 41);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    content = v4->_content;
    v4->_content = v8;

    if (*(a3 + 376) == 1)
    {
      v10 = v4;
      v11 = [CTLazuliCustomMetaData alloc];
      if ((*(a3 + 376) & 1) == 0)
      {
        v15 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v15);
      }

      v12 = [(CTLazuliCustomMetaData *)v11 initWithReflection:a3 + 352];
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