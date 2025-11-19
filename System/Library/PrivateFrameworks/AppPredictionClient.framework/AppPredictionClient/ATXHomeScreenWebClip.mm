@interface ATXHomeScreenWebClip
- (ATXHomeScreenWebClip)initWithCoder:(id)a3;
- (ATXHomeScreenWebClip)initWithUUID:(id)a3 name:(id)a4 url:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenWebClip:(id)a3;
- (id)dictionaryRepresentationForIntrospection;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenWebClip

- (ATXHomeScreenWebClip)initWithUUID:(id)a3 name:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ATXHomeScreenWebClip;
  v11 = [(ATXHomeScreenWebClip *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    objc_storeStrong(&v11->_url, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
}

- (ATXHomeScreenWebClip)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXHomeScreenWebClip;
  v5 = [(ATXHomeScreenWebClip *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenWebClip *)self isEqualToATXHomeScreenWebClip:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenWebClip:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[3])
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
  v5 = [(NSURL *)url absoluteString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
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