@interface TFPendingImageUpload
- (BOOL)isEqual:(id)equal;
- (TFPendingImageUpload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TFPendingImageUpload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (!equalCopy ? (data = 0) : (data = equalCopy->_data), [(NSData *)self->_data isEqual:data]&& (!equalCopy ? (logKey = 0) : (logKey = equalCopy->_logKey), [(LogKey *)self->_logKey isEqual:logKey])))
    {
      if (equalCopy)
      {
        URL = equalCopy->_URL;
      }

      else
      {
        URL = 0;
      }

      v9 = [(NSURL *)self->_URL isEqual:URL];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TFPendingImageUpload allocWithZone:?]];
  objc_storeStrong(&v4->_data, self->_data);
  objc_storeStrong(&v4->_logKey, self->_logKey);
  objc_storeStrong(&v4->_URL, self->_URL);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"A"];
  [coderCopy encodeObject:self->_logKey forKey:@"B"];
  [coderCopy encodeObject:self->_URL forKey:@"C"];
}

- (TFPendingImageUpload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TFPendingImageUpload;
  v5 = [(TFPendingImageUpload *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    URL = v5->_URL;
    v5->_URL = v10;
  }

  return v5;
}

@end