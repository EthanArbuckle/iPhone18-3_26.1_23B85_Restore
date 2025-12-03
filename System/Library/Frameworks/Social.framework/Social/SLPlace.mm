@interface SLPlace
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (SLPlace)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLPlace

- (CLLocationCoordinate2D)coordinate
{
  [(SLPlace *)self latitude];
  v4 = v3;
  [(SLPlace *)self longitude];

  v8 = CLLocationCoordinate2DMake(v4, v5);
  longitude = v8.longitude;
  latitude = v8.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (SLPlace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SLPlace;
  v5 = [(SLPlace *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pictureURL"];
    pictureURL = v5->_pictureURL;
    v5->_pictureURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  encodableProperties = [(SLPlace *)self encodableProperties];
  v6 = [encodableProperties countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(encodableProperties);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(SLPlace *)self valueForKey:v10];
        [coderCopy encodeObject:v11 forKey:v10];
      }

      v7 = [encodableProperties countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(SLPlace *)self name];
  identifier = [(SLPlace *)self identifier];
  v6 = [v3 stringWithFormat:@"SLPlace name=%@ identifier=%@", name, identifier];

  return v6;
}

@end