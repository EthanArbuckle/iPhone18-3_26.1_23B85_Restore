@interface SWPerson
- (SWPerson)initWithCoder:(id)a3;
- (SWPerson)initWithHandle:(NSString *)handle identity:(SWPersonIdentity *)identity displayName:(NSString *)displayName thumbnailImageData:(NSData *)thumbnailImageData;
- (id)contact;
- (id)displayName;
- (id)handle;
- (id)thumbnailImageData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWPerson

- (SWPerson)initWithHandle:(NSString *)handle identity:(SWPersonIdentity *)identity displayName:(NSString *)displayName thumbnailImageData:(NSData *)thumbnailImageData
{
  v10 = handle;
  v11 = identity;
  v12 = displayName;
  v13 = thumbnailImageData;
  if (!(v10 | v11))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"either handle or identity must be non-nil"];
  }

  SLPersonClass = getSLPersonClass();
  if (![SLPersonClass instancesRespondToSelector:sel_initWithHandle_displayName_] || !objc_msgSend(SLPersonClass, "instancesRespondToSelector:", sel_handle) || !objc_msgSend(SLPersonClass, "instancesRespondToSelector:", sel_displayName) || !objc_msgSend(SLPersonClass, "instancesRespondToSelector:", sel_contact) || (objc_msgSend(SLPersonClass, "instancesRespondToSelector:", sel_thumbnailImageData) & 1) == 0)
  {
    p_super = SWFrameworkLogHandle();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [SWPerson initWithHandle:? identity:? displayName:? thumbnailImageData:?];
    }

    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = SWPerson;
  self = [(SWPerson *)&v20 init];
  if (self)
  {
    v15 = [[SLPersonClass alloc] initWithHandle:v10 displayName:v12];
    slPerson = self->_slPerson;
    self->_slPerson = v15;

    objc_storeStrong(&self->_customThumbnailImageData, thumbnailImageData);
    v17 = v11;
    p_super = &self->_identity->super;
    self->_identity = v17;
LABEL_12:
  }

  return self;
}

- (id)handle
{
  v2 = [(SWPerson *)self slPerson];
  v3 = [v2 handle];

  return v3;
}

- (id)displayName
{
  v2 = [(SWPerson *)self slPerson];
  v3 = [v2 displayName];

  return v3;
}

- (id)contact
{
  v2 = [(SWPerson *)self slPerson];
  v3 = [v2 contact];

  return v3;
}

- (id)thumbnailImageData
{
  v3 = [(SWPerson *)self customThumbnailImageData];

  if (v3)
  {
    v4 = [(SWPerson *)self customThumbnailImageData];
  }

  else
  {
    v5 = [(SWPerson *)self slPerson];
    v4 = [v5 thumbnailImageData];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWPerson *)self slPerson];
  v6 = NSStringFromSelector(sel_slPerson);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWPerson *)self customThumbnailImageData];
  v8 = NSStringFromSelector(sel_customThumbnailImageData);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(SWPerson *)self identity];
  v9 = NSStringFromSelector(sel_identity);
  [v4 encodeObject:v10 forKey:v9];
}

- (SWPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SWPerson;
  v5 = [(SWPerson *)&v19 init];
  if (v5)
  {
    SLPersonClass = getSLPersonClass();
    v7 = NSStringFromSelector(sel_slPerson);
    v8 = [v4 decodeObjectOfClass:SLPersonClass forKey:v7];
    slPerson = v5->_slPerson;
    v5->_slPerson = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_customThumbnailImageData);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    customThumbnailImageData = v5->_customThumbnailImageData;
    v5->_customThumbnailImageData = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_identity);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    identity = v5->_identity;
    v5->_identity = v16;
  }

  return v5;
}

@end