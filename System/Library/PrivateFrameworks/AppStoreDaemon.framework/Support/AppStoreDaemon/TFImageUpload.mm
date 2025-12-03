@interface TFImageUpload
- (BOOL)isEqual:(id)equal;
- (TFImageUpload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation TFImageUpload

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFImageUpload;
  v3 = [(TFImageUpload *)&v7 description];
  dictionaryRepresentation = [(TFImageUpload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uploadUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_xiCloudVersionIdHeader)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uploadUrl copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_xiCloudVersionIdHeader copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uploadUrl = self->_uploadUrl, !(uploadUrl | equalCopy[1])) || -[NSString isEqual:](uploadUrl, "isEqual:")))
  {
    xiCloudVersionIdHeader = self->_xiCloudVersionIdHeader;
    if (xiCloudVersionIdHeader | equalCopy[2])
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

- (void)encodeWithCoder:(id)coder
{
  uploadUrl = self->_uploadUrl;
  coderCopy = coder;
  [coderCopy encodeObject:uploadUrl forKey:@"A"];
  [coderCopy encodeObject:self->_xiCloudVersionIdHeader forKey:@"B"];
}

- (TFImageUpload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TFImageUpload;
  v5 = [(TFImageUpload *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    uploadUrl = v5->_uploadUrl;
    v5->_uploadUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    xiCloudVersionIdHeader = v5->_xiCloudVersionIdHeader;
    v5->_xiCloudVersionIdHeader = v8;
  }

  return v5;
}

@end