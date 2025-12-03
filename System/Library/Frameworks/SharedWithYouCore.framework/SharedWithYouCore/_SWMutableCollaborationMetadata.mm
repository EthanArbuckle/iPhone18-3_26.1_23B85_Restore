@interface _SWMutableCollaborationMetadata
- (BOOL)isEqual:(id)equal;
- (_SWMutableCollaborationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWMutableCollaborationMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _SWMutableCollaborationMetadata;
  if ([(SWCollaborationMetadata *)&v11 isEqual:equalCopy])
  {
    ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    if (ckAppBundleIDs || ([equalCopy ckAppBundleIDs], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      ckAppBundleIDs2 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
      ckAppBundleIDs3 = [equalCopy ckAppBundleIDs];
      v9 = [ckAppBundleIDs2 isEqual:ckAppBundleIDs3];

      if (ckAppBundleIDs)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _SWMutableCollaborationMetadata;
  v3 = [(SWCollaborationMetadata *)&v7 hash];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v5 = [ckAppBundleIDs hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _SWMutableCollaborationMetadata;
  v4 = [(SWCollaborationMetadata *)&v8 copyWithZone:zone];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];

  if (ckAppBundleIDs)
  {
    ckAppBundleIDs2 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    [v4 setCkAppBundleIDs:ckAppBundleIDs2];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _SWMutableCollaborationMetadata;
  v4 = [(SWCollaborationMetadata *)&v8 mutableCopyWithZone:zone];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];

  if (ckAppBundleIDs)
  {
    ckAppBundleIDs2 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    [v4 setCkAppBundleIDs:ckAppBundleIDs2];
  }

  return v4;
}

- (_SWMutableCollaborationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _SWMutableCollaborationMetadata;
  v5 = [(SWCollaborationMetadata *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_ckAppBundleIDs);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    [(SWCollaborationMetadata *)v5 setCkAppBundleIDs:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _SWMutableCollaborationMetadata;
  coderCopy = coder;
  [(SWCollaborationMetadata *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SWCollaborationMetadata *)self ckAppBundleIDs:v7.receiver];
  v6 = NSStringFromSelector(sel_ckAppBundleIDs);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end