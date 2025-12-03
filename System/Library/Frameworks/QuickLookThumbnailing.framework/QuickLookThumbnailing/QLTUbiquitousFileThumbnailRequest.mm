@interface QLTUbiquitousFileThumbnailRequest
- (QLTUbiquitousFileThumbnailRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLTUbiquitousFileThumbnailRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  providerID = [(FPItem *)self->_item providerID];
  itemIdentifier = [(FPItem *)self->_item itemIdentifier];
  displayName = [(FPItem *)self->_item displayName];
  [(QLTThumbnailRequest *)self size];
  v10 = v9;
  [(QLTThumbnailRequest *)self size];
  v12 = [v3 initWithFormat:@"<%@:%p %@/%@ (%@) {%g, %g}>", v5, self, providerID, itemIdentifier, displayName, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  [coderCopy encodeObject:item forKey:@"it"];
  v6.receiver = self;
  v6.super_class = QLTUbiquitousFileThumbnailRequest;
  [(QLTThumbnailRequest *)&v6 encodeWithCoder:coderCopy];
}

- (QLTUbiquitousFileThumbnailRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = QLTUbiquitousFileThumbnailRequest;
  v5 = [(QLTThumbnailRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getFPItemClass_softClass_0;
    v16 = getFPItemClass_softClass_0;
    if (!getFPItemClass_softClass_0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getFPItemClass_block_invoke_0;
      v12[3] = &unk_1E8369C70;
      v12[4] = &v13;
      __getFPItemClass_block_invoke_0(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"it"];
    item = v5->_item;
    v5->_item = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = QLTUbiquitousFileThumbnailRequest;
  v4 = [(QLTThumbnailRequest *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 12, self->_item);
  return v4;
}

@end