@interface BCImage
- (BCImage)initWithImageData:(id)data identifier:(id)identifier description:(id)description;
- (NSDictionary)dictionaryValue;
- (UIImage)image;
@end

@implementation BCImage

- (BCImage)initWithImageData:(id)data identifier:(id)identifier description:(id)description
{
  dataCopy = data;
  identifierCopy = identifier;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = BCImage;
  v12 = [(BCImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageData, data);
    objc_storeStrong(&v13->_imageDescription, description);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_imageData forKeyedSubscript:@"data"];
  [v3 setObject:self->_imageDescription forKeyedSubscript:@"description"];
  v4 = [v3 copy];

  return v4;
}

- (UIImage)image
{
  v2 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:self->_imageData];

  return v2;
}

@end