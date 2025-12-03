@interface ASCDigitalIdentityCredentialOptions
- (ASCDigitalIdentityCredentialOptions)initWithCoder:(id)coder;
- (ASCDigitalIdentityCredentialOptions)initWithOrigin:(id)origin requestType:(id)type commandData:(id)data;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCDigitalIdentityCredentialOptions

- (ASCDigitalIdentityCredentialOptions)initWithOrigin:(id)origin requestType:(id)type commandData:(id)data
{
  originCopy = origin;
  typeCopy = type;
  dataCopy = data;
  v11 = dataCopy;
  selfCopy = 0;
  if (originCopy && typeCopy && dataCopy)
  {
    v20.receiver = self;
    v20.super_class = ASCDigitalIdentityCredentialOptions;
    self = [(ASCDigitalIdentityCredentialOptions *)&v20 init];
    if (self)
    {
      v13 = [originCopy copy];
      origin = self->_origin;
      self->_origin = v13;

      v15 = [typeCopy copy];
      requestType = self->_requestType;
      self->_requestType = v15;

      v17 = [v11 copy];
      commandData = self->_commandData;
      self->_commandData = v17;

      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      origin = self->_origin;
      origin = [(ASCDigitalIdentityCredentialOptions *)v6 origin];
      if ([(NSString *)origin isEqualToString:origin])
      {
        requestType = self->_requestType;
        requestType = [(ASCDigitalIdentityCredentialOptions *)v6 requestType];
        if ([(NSString *)requestType isEqualToString:requestType])
        {
          commandData = self->_commandData;
          commandData = [(ASCDigitalIdentityCredentialOptions *)v6 commandData];
          v13 = [(NSData *)commandData isEqualToData:commandData];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_origin hash];
  v4 = [(NSString *)self->_requestType hash]^ v3;
  return v4 ^ [(NSData *)self->_commandData hash];
}

- (ASCDigitalIdentityCredentialOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandData"];

  v8 = [(ASCDigitalIdentityCredentialOptions *)self initWithOrigin:v5 requestType:v6 commandData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  origin = self->_origin;
  coderCopy = coder;
  [coderCopy encodeObject:origin forKey:@"origin"];
  [coderCopy encodeObject:self->_requestType forKey:@"requestType"];
  [coderCopy encodeObject:self->_commandData forKey:@"commandData"];
}

@end