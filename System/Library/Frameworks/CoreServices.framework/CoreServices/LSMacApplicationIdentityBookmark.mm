@interface LSMacApplicationIdentityBookmark
- (BOOL)isEqual:(id)equal;
- (LSMacApplicationIdentityBookmark)initWithCoder:(id)coder;
- (id)initWithURL:(void *)l bundleIdentifier:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSMacApplicationIdentityBookmark

- (id)initWithURL:(void *)l bundleIdentifier:
{
  v6 = a2;
  lCopy = l;
  v8 = lCopy;
  if (!self)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (!(v6 | lCopy))
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(LSMacApplicationIdentityBookmark *)v12 initWithURL:v13 bundleIdentifier:v14, v15, v16, v17, v18, v19];
    }

    v10 = 0;
    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = LSMacApplicationIdentityBookmark;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a2);
    v11 = [v8 copy];
    self = v10[2];
    v10[2] = v11;
LABEL_8:
  }

LABEL_9:

  return v10;
}

- (LSMacApplicationIdentityBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  if (!(v5 | v6))
  {
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = LSMacApplicationIdentityBookmark;
  v7 = [(LSMacApplicationIdentityBookmark *)&v10 init];
  if (!v7)
  {
    self = 0;
LABEL_5:

    v8 = 0;
    goto LABEL_6;
  }

  v8 = [(LSMacApplicationIdentityBookmark *)v7 initWithURL:v6 bundleIdentifier:v5];
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(NSURL *)self->_URL isEqual:v5[1]])
    {
      v6 = [(NSString *)self->_bundleIdentifier isEqual:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end