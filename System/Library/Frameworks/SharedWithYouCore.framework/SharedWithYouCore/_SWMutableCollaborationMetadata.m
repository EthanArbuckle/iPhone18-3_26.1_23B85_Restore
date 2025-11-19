@interface _SWMutableCollaborationMetadata
- (BOOL)isEqual:(id)a3;
- (_SWMutableCollaborationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWMutableCollaborationMetadata

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _SWMutableCollaborationMetadata;
  if ([(SWCollaborationMetadata *)&v11 isEqual:v5])
  {
    v6 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    if (v6 || ([v5 ckAppBundleIDs], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
      v8 = [v5 ckAppBundleIDs];
      v9 = [v7 isEqual:v8];

      if (v6)
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
  v4 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _SWMutableCollaborationMetadata;
  v4 = [(SWCollaborationMetadata *)&v8 copyWithZone:a3];
  v5 = [(SWCollaborationMetadata *)self ckAppBundleIDs];

  if (v5)
  {
    v6 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    [v4 setCkAppBundleIDs:v6];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _SWMutableCollaborationMetadata;
  v4 = [(SWCollaborationMetadata *)&v8 mutableCopyWithZone:a3];
  v5 = [(SWCollaborationMetadata *)self ckAppBundleIDs];

  if (v5)
  {
    v6 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    [v4 setCkAppBundleIDs:v6];
  }

  return v4;
}

- (_SWMutableCollaborationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SWMutableCollaborationMetadata;
  v5 = [(SWCollaborationMetadata *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_ckAppBundleIDs);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    [(SWCollaborationMetadata *)v5 setCkAppBundleIDs:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _SWMutableCollaborationMetadata;
  v4 = a3;
  [(SWCollaborationMetadata *)&v7 encodeWithCoder:v4];
  v5 = [(SWCollaborationMetadata *)self ckAppBundleIDs:v7.receiver];
  v6 = NSStringFromSelector(sel_ckAppBundleIDs);
  [v4 encodeObject:v5 forKey:v6];
}

@end