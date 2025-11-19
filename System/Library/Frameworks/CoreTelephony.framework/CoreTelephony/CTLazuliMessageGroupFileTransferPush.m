@interface CTLazuliMessageGroupFileTransferPush
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageGroupFileTransferPush:(id)a3;
- (CTLazuliMessageGroupFileTransferPush)initWithCoder:(id)a3;
- (CTLazuliMessageGroupFileTransferPush)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliMessageGroupFileTransferPush

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", v4];

  v5 = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
  [v3 appendFormat:@", descriptor = %@", v5];

  v6 = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
  [v3 appendFormat:@", metaData = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupFileTransferPush:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
  v6 = [v4 chatInformation];
  if (v5 != v6)
  {
    v19 = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
    v17 = [v4 chatInformation];
    if (![v19 isEqualToCTLazuliGroupChatInformation:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
  v9 = [v4 descriptor];
  if (v8 != v9)
  {
    v18 = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
    v16 = [v4 descriptor];
    if (![v18 isEqualToCTLazuliFileTransferDescriptor:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
  v11 = [v4 metaData];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupFileTransferPush *)self isEqualToCTLazuliMessageGroupFileTransferPush:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageGroupFileTransferPush allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:a3];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setChatInformation:v6];

  v7 = [(CTLazuliFileTransferDescriptor *)self->_descriptor copyWithZone:a3];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setDescriptor:v7];

  v8 = [(CTLazuliCustomMetaData *)self->_metaData copyWithZone:a3];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setMetaData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  [v4 encodeObject:self->_descriptor forKey:@"kDescriptorKey"];
  [v4 encodeObject:self->_metaData forKey:@"kMetaDataKey"];
}

- (CTLazuliMessageGroupFileTransferPush)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliMessageGroupFileTransferPush;
  v5 = [(CTLazuliMessageGroupFileTransferPush *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptorKey"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMetaDataKey"];
    metaData = v5->_metaData;
    v5->_metaData = v10;
  }

  return v5;
}

- (CTLazuliMessageGroupFileTransferPush)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliMessageGroupFileTransferPush;
  v4 = [(CTLazuliMessageGroupFileTransferPush *)&v15 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:a3];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    v7 = [[CTLazuliFileTransferDescriptor alloc] initWithReflection:a3 + 328];
    descriptor = v4->_descriptor;
    v4->_descriptor = v7;

    if (*(a3 + 872) == 1)
    {
      v9 = v4;
      v10 = [CTLazuliCustomMetaData alloc];
      if ((*(a3 + 872) & 1) == 0)
      {
        v14 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v14);
      }

      v11 = [(CTLazuliCustomMetaData *)v10 initWithReflection:a3 + 848];
    }

    else
    {
      v11 = 0;
    }

    metaData = v4->_metaData;
    v4->_metaData = v11;
  }

  return v4;
}

@end