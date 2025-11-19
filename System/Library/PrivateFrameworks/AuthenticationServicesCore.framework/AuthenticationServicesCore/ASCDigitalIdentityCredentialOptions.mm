@interface ASCDigitalIdentityCredentialOptions
- (ASCDigitalIdentityCredentialOptions)initWithCoder:(id)a3;
- (ASCDigitalIdentityCredentialOptions)initWithOrigin:(id)a3 requestType:(id)a4 commandData:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCDigitalIdentityCredentialOptions

- (ASCDigitalIdentityCredentialOptions)initWithOrigin:(id)a3 requestType:(id)a4 commandData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v20.receiver = self;
    v20.super_class = ASCDigitalIdentityCredentialOptions;
    self = [(ASCDigitalIdentityCredentialOptions *)&v20 init];
    if (self)
    {
      v13 = [v8 copy];
      origin = self->_origin;
      self->_origin = v13;

      v15 = [v9 copy];
      requestType = self->_requestType;
      self->_requestType = v15;

      v17 = [v11 copy];
      commandData = self->_commandData;
      self->_commandData = v17;

      self = self;
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      origin = self->_origin;
      v8 = [(ASCDigitalIdentityCredentialOptions *)v6 origin];
      if ([(NSString *)origin isEqualToString:v8])
      {
        requestType = self->_requestType;
        v10 = [(ASCDigitalIdentityCredentialOptions *)v6 requestType];
        if ([(NSString *)requestType isEqualToString:v10])
        {
          commandData = self->_commandData;
          v12 = [(ASCDigitalIdentityCredentialOptions *)v6 commandData];
          v13 = [(NSData *)commandData isEqualToData:v12];
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

- (ASCDigitalIdentityCredentialOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandData"];

  v8 = [(ASCDigitalIdentityCredentialOptions *)self initWithOrigin:v5 requestType:v6 commandData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  origin = self->_origin;
  v5 = a3;
  [v5 encodeObject:origin forKey:@"origin"];
  [v5 encodeObject:self->_requestType forKey:@"requestType"];
  [v5 encodeObject:self->_commandData forKey:@"commandData"];
}

@end