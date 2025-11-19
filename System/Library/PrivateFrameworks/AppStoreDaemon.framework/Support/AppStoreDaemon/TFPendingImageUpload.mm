@interface TFPendingImageUpload
- (BOOL)isEqual:(id)a3;
- (TFPendingImageUpload)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TFPendingImageUpload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (!v4 ? (data = 0) : (data = v4->_data), [(NSData *)self->_data isEqual:data]&& (!v4 ? (logKey = 0) : (logKey = v4->_logKey), [(LogKey *)self->_logKey isEqual:logKey])))
    {
      if (v4)
      {
        URL = v4->_URL;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TFPendingImageUpload allocWithZone:?]];
  objc_storeStrong(&v4->_data, self->_data);
  objc_storeStrong(&v4->_logKey, self->_logKey);
  objc_storeStrong(&v4->_URL, self->_URL);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"A"];
  [v5 encodeObject:self->_logKey forKey:@"B"];
  [v5 encodeObject:self->_URL forKey:@"C"];
}

- (TFPendingImageUpload)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TFPendingImageUpload;
  v5 = [(TFPendingImageUpload *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    URL = v5->_URL;
    v5->_URL = v10;
  }

  return v5;
}

@end