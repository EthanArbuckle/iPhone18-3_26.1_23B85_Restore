@interface CTLazuliMessageGroupFileTransferPush
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageGroupFileTransferPush:(id)push;
- (CTLazuliMessageGroupFileTransferPush)initWithCoder:(id)coder;
- (CTLazuliMessageGroupFileTransferPush)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageGroupFileTransferPush

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chatInformation = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", chatInformation];

  descriptor = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
  [v3 appendFormat:@", descriptor = %@", descriptor];

  metaData = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
  [v3 appendFormat:@", metaData = %@", metaData];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupFileTransferPush:(id)push
{
  pushCopy = push;
  chatInformation = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
  chatInformation2 = [pushCopy chatInformation];
  if (chatInformation != chatInformation2)
  {
    chatInformation3 = [(CTLazuliMessageGroupFileTransferPush *)self chatInformation];
    chatInformation4 = [pushCopy chatInformation];
    if (![chatInformation3 isEqualToCTLazuliGroupChatInformation:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  descriptor = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
  descriptor2 = [pushCopy descriptor];
  if (descriptor != descriptor2)
  {
    descriptor3 = [(CTLazuliMessageGroupFileTransferPush *)self descriptor];
    descriptor4 = [pushCopy descriptor];
    if (![descriptor3 isEqualToCTLazuliFileTransferDescriptor:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  metaData = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
  metaData2 = [pushCopy metaData];
  v12 = metaData2;
  if (metaData == metaData2)
  {

    v7 = 1;
  }

  else
  {
    metaData3 = [(CTLazuliMessageGroupFileTransferPush *)self metaData];
    metaData4 = [pushCopy metaData];
    v7 = [metaData3 isEqualToCTLazuliCustomMetaData:metaData4];
  }

  if (descriptor != descriptor2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupFileTransferPush *)self isEqualToCTLazuliMessageGroupFileTransferPush:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageGroupFileTransferPush allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:zone];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setChatInformation:v6];

  v7 = [(CTLazuliFileTransferDescriptor *)self->_descriptor copyWithZone:zone];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setDescriptor:v7];

  v8 = [(CTLazuliCustomMetaData *)self->_metaData copyWithZone:zone];
  [(CTLazuliMessageGroupFileTransferPush *)v5 setMetaData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  [coderCopy encodeObject:self->_descriptor forKey:@"kDescriptorKey"];
  [coderCopy encodeObject:self->_metaData forKey:@"kMetaDataKey"];
}

- (CTLazuliMessageGroupFileTransferPush)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliMessageGroupFileTransferPush;
  v5 = [(CTLazuliMessageGroupFileTransferPush *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDescriptorKey"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMetaDataKey"];
    metaData = v5->_metaData;
    v5->_metaData = v10;
  }

  return v5;
}

- (CTLazuliMessageGroupFileTransferPush)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliMessageGroupFileTransferPush;
  v4 = [(CTLazuliMessageGroupFileTransferPush *)&v15 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:reflection];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    v7 = [[CTLazuliFileTransferDescriptor alloc] initWithReflection:reflection + 328];
    descriptor = v4->_descriptor;
    v4->_descriptor = v7;

    if (*(reflection + 872) == 1)
    {
      v9 = v4;
      v10 = [CTLazuliCustomMetaData alloc];
      if ((*(reflection + 872) & 1) == 0)
      {
        v14 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v14);
      }

      v11 = [(CTLazuliCustomMetaData *)v10 initWithReflection:reflection + 848];
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