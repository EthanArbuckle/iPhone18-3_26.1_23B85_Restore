@interface ATXHomeScreenWebClip
- (ATXHomeScreenWebClip)initWithCoder:(id)coder;
- (ATXHomeScreenWebClip)initWithUUID:(id)d name:(id)name url:(id)url;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenWebClip:(id)clip;
- (id)dictionaryRepresentationForIntrospection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenWebClip

- (ATXHomeScreenWebClip)initWithUUID:(id)d name:(id)name url:(id)url
{
  dCopy = d;
  nameCopy = name;
  urlCopy = url;
  v17.receiver = self;
  v17.super_class = ATXHomeScreenWebClip;
  v11 = [(ATXHomeScreenWebClip *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    objc_storeStrong(&v11->_url, url);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
}

- (ATXHomeScreenWebClip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXHomeScreenWebClip;
  v5 = [(ATXHomeScreenWebClip *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v10;
  }

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenWebClip *)self isEqualToATXHomeScreenWebClip:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenWebClip:(id)clip
{
  clipCopy = clip;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == clipCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_url;
  v10 = v9;
  if (v9 == clipCopy[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSURL *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (id)dictionaryRepresentationForIntrospection
{
  v12[3] = *MEMORY[0x1E69E9840];
  name = self->_name;
  url = self->_url;
  if (!name)
  {
    name = @"<nil>";
  }

  v12[0] = name;
  v11[0] = @"name";
  v11[1] = @"url";
  absoluteString = [(NSURL *)url absoluteString];
  v6 = absoluteString;
  if (absoluteString)
  {
    v7 = absoluteString;
  }

  else
  {
    v7 = @"<nil>";
  }

  v11[2] = @"uuid";
  uuid = self->_uuid;
  if (!uuid)
  {
    uuid = @"<nil>";
  }

  v12[1] = v7;
  v12[2] = uuid;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end