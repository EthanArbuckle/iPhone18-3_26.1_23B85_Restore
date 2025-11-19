@interface TFImageUpload
- (BOOL)isEqual:(id)a3;
- (TFImageUpload)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TFImageUpload

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFImageUpload;
  v3 = [(TFImageUpload *)&v7 description];
  v4 = [(TFImageUpload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uploadUrl = self->_uploadUrl;
  if (uploadUrl)
  {
    [v3 setObject:uploadUrl forKey:@"uploadUrl"];
  }

  xiCloudVersionIdHeader = self->_xiCloudVersionIdHeader;
  if (xiCloudVersionIdHeader)
  {
    [v4 setObject:xiCloudVersionIdHeader forKey:@"xiCloudVersionIdHeader"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uploadUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_xiCloudVersionIdHeader)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uploadUrl copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_xiCloudVersionIdHeader copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uploadUrl = self->_uploadUrl, !(uploadUrl | v4[1])) || -[NSString isEqual:](uploadUrl, "isEqual:")))
  {
    xiCloudVersionIdHeader = self->_xiCloudVersionIdHeader;
    if (xiCloudVersionIdHeader | v4[2])
    {
      v7 = [(NSString *)xiCloudVersionIdHeader isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  uploadUrl = self->_uploadUrl;
  v5 = a3;
  [v5 encodeObject:uploadUrl forKey:@"A"];
  [v5 encodeObject:self->_xiCloudVersionIdHeader forKey:@"B"];
}

- (TFImageUpload)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TFImageUpload;
  v5 = [(TFImageUpload *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    uploadUrl = v5->_uploadUrl;
    v5->_uploadUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    xiCloudVersionIdHeader = v5->_xiCloudVersionIdHeader;
    v5->_xiCloudVersionIdHeader = v8;
  }

  return v5;
}

@end