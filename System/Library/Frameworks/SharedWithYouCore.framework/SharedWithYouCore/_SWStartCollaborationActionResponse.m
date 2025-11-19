@interface _SWStartCollaborationActionResponse
+ (id)responseWithURL:(id)a3 updatedMetadata:(id)a4;
- (BOOL)isEqualToActionResponse:(id)a3;
- (_SWStartCollaborationActionResponse)initWithCoder:(id)a3;
- (_SWStartCollaborationActionResponse)initWithDestinationResponse:(id)a3;
- (_SWStartCollaborationActionResponse)initWithURL:(id)a3 updatedMetadata:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSActionResponseSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWStartCollaborationActionResponse

+ (id)responseWithURL:(id)a3 updatedMetadata:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithURL:v6 updatedMetadata:v5];

  return v7;
}

- (_SWStartCollaborationActionResponse)initWithURL:(id)a3 updatedMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SWStartCollaborationActionResponse;
  v9 = [(_SWActionResponse *)&v12 initWithSuccess:1 error:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_updatedMetadata, a4);
  }

  return v10;
}

- (_SWStartCollaborationActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SWStartCollaborationActionResponse;
  v5 = [(_SWActionResponse *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("url");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    url = v5->_url;
    v5->_url = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_updatedMetadata);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    updatedMetadata = v5->_updatedMetadata;
    v5->_updatedMetadata = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _SWStartCollaborationActionResponse;
  v4 = a3;
  [(_SWActionResponse *)&v9 encodeWithCoder:v4];
  v5 = [(_SWStartCollaborationActionResponse *)self url:v9.receiver];
  v6 = NSStringFromSelector("url");
  [v4 encodeObject:v5 forKey:v6];

  updatedMetadata = self->_updatedMetadata;
  v8 = NSStringFromSelector(sel_updatedMetadata);
  [v4 encodeObject:updatedMetadata forKey:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _SWStartCollaborationActionResponse;
  v4 = [(_SWActionResponse *)&v7 copyWithZone:a3];
  if (v4)
  {
    v5 = [(_SWStartCollaborationActionResponse *)self url];
    [v4 setUrl:v5];

    objc_storeStrong(v4 + 4, self->_updatedMetadata);
  }

  return v4;
}

- (BOOL)isEqualToActionResponse:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _SWStartCollaborationActionResponse;
  if ([(_SWActionResponse *)&v13 isEqualToActionResponse:v5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      updatedMetadata = self->_updatedMetadata;
      if (updatedMetadata | v6[4] && ![(SWCollaborationMetadata *)updatedMetadata isEqual:?])
      {
        v11 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v8 = [(_SWStartCollaborationActionResponse *)self url];
      if (v8 || ([v6 url], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = [(_SWStartCollaborationActionResponse *)self url];
        v10 = [v6 url];
        v11 = [v9 isEqual:v10];

        if (v8)
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (_SWStartCollaborationActionResponse)initWithDestinationResponse:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _SWStartCollaborationActionResponse;
  v5 = [(_SWActionResponse *)&v19 initWithDestinationResponse:v4];
  if (v5)
  {
    v6 = [v4 info];
    v7 = [v6 objectForSetting:2];

    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:v7 error:0];
    updatedMetadata = v5->_updatedMetadata;
    v5->_updatedMetadata = v12;

    v14 = [v4 info];
    v15 = [v14 objectForSetting:3];
    url = v5->_url;
    v5->_url = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithBSActionResponseSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = _SWStartCollaborationActionResponse;
  v4 = a3;
  [(_SWActionResponse *)&v7 encodeWithBSActionResponseSettings:v4];
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_updatedMetadata requiringSecureCoding:1 error:{0, v7.receiver, v7.super_class}];
  [v4 setObject:v5 forSetting:2];
  v6 = [(_SWStartCollaborationActionResponse *)self url];
  [v4 setObject:v6 forSetting:3];
}

@end