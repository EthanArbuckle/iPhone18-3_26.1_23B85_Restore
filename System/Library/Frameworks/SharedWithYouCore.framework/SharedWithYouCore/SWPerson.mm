@interface SWPerson
- (SWPerson)initWithCoder:(id)coder;
- (SWPerson)initWithHandle:(NSString *)handle identity:(SWPersonIdentity *)identity displayName:(NSString *)displayName thumbnailImageData:(NSData *)thumbnailImageData;
- (id)contact;
- (id)displayName;
- (id)handle;
- (id)thumbnailImageData;
- (void)encodeWithCoder:(id)coder;
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
  slPerson = [(SWPerson *)self slPerson];
  handle = [slPerson handle];

  return handle;
}

- (id)displayName
{
  slPerson = [(SWPerson *)self slPerson];
  displayName = [slPerson displayName];

  return displayName;
}

- (id)contact
{
  slPerson = [(SWPerson *)self slPerson];
  contact = [slPerson contact];

  return contact;
}

- (id)thumbnailImageData
{
  customThumbnailImageData = [(SWPerson *)self customThumbnailImageData];

  if (customThumbnailImageData)
  {
    customThumbnailImageData2 = [(SWPerson *)self customThumbnailImageData];
  }

  else
  {
    slPerson = [(SWPerson *)self slPerson];
    customThumbnailImageData2 = [slPerson thumbnailImageData];
  }

  return customThumbnailImageData2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  slPerson = [(SWPerson *)self slPerson];
  v6 = NSStringFromSelector(sel_slPerson);
  [coderCopy encodeObject:slPerson forKey:v6];

  customThumbnailImageData = [(SWPerson *)self customThumbnailImageData];
  v8 = NSStringFromSelector(sel_customThumbnailImageData);
  [coderCopy encodeObject:customThumbnailImageData forKey:v8];

  identity = [(SWPerson *)self identity];
  v9 = NSStringFromSelector(sel_identity);
  [coderCopy encodeObject:identity forKey:v9];
}

- (SWPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SWPerson;
  v5 = [(SWPerson *)&v19 init];
  if (v5)
  {
    SLPersonClass = getSLPersonClass();
    v7 = NSStringFromSelector(sel_slPerson);
    v8 = [coderCopy decodeObjectOfClass:SLPersonClass forKey:v7];
    slPerson = v5->_slPerson;
    v5->_slPerson = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_customThumbnailImageData);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    customThumbnailImageData = v5->_customThumbnailImageData;
    v5->_customThumbnailImageData = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_identity);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    identity = v5->_identity;
    v5->_identity = v16;
  }

  return v5;
}

@end