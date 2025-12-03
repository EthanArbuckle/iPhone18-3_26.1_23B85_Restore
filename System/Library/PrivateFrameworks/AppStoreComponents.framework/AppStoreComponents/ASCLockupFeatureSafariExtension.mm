@interface ASCLockupFeatureSafariExtension
- (ASCLockupFeatureSafariExtension)initWithCoder:(id)coder;
- (ASCLockupFeatureSafariExtension)initWithContentProviderTeamID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureSafariExtension

- (ASCLockupFeatureSafariExtension)initWithContentProviderTeamID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASCLockupFeatureSafariExtension;
  v5 = [(ASCLockupFeatureSafariExtension *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    contentProviderTeamID = v5->_contentProviderTeamID;
    v5->_contentProviderTeamID = v6;
  }

  return v5;
}

- (ASCLockupFeatureSafariExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentProviderTeamID"];

  v6 = [(ASCLockupFeatureSafariExtension *)self initWithContentProviderTeamID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentProviderTeamID = [(ASCLockupFeatureSafariExtension *)self contentProviderTeamID];
  [coderCopy encodeObject:contentProviderTeamID forKey:@"contentProviderTeamID"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  contentProviderTeamID = [(ASCLockupFeatureSafariExtension *)self contentProviderTeamID];
  [(ASCHasher *)v3 combineObject:contentProviderTeamID];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
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

    v8 = v6;

    if (v8)
    {
      contentProviderTeamID = [(ASCLockupFeatureSafariExtension *)self contentProviderTeamID];
      contentProviderTeamID2 = [(ASCLockupFeatureSafariExtension *)v8 contentProviderTeamID];
      v11 = contentProviderTeamID2;
      if (contentProviderTeamID && contentProviderTeamID2)
      {
        v7 = [contentProviderTeamID isEqual:contentProviderTeamID2];
      }

      else
      {
        v7 = contentProviderTeamID == contentProviderTeamID2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  contentProviderTeamID = [(ASCLockupFeatureSafariExtension *)self contentProviderTeamID];
  [(ASCDescriber *)v3 addObject:contentProviderTeamID withName:@"contentProviderTeamID"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end