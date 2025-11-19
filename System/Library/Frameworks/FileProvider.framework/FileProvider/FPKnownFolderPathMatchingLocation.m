@interface FPKnownFolderPathMatchingLocation
- (FPKnownFolderPathMatchingLocation)initWithCoder:(id)a3;
- (FPKnownFolderPathMatchingLocation)initWithParentItemIdentifier:(id)a3 filename:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPKnownFolderPathMatchingLocation

- (FPKnownFolderPathMatchingLocation)initWithParentItemIdentifier:(id)a3 filename:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FPKnownFolderPathMatchingLocation;
  v8 = [(FPKnownFolderPathMatchingLocation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    parentItemIdentifier = v8->_parentItemIdentifier;
    v8->_parentItemIdentifier = v9;

    v11 = [v7 copy];
    filename = v8->_filename;
    v8->_filename = v11;
  }

  return v8;
}

- (FPKnownFolderPathMatchingLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPKnownFolderPathMatchingLocation;
  v5 = [(FPKnownFolderPathMatchingLocation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_parentItemIdentifier"];
    parentItemIdentifier = v5->_parentItemIdentifier;
    v5->_parentItemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
    filename = v5->_filename;
    v5->_filename = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  parentItemIdentifier = self->_parentItemIdentifier;
  v5 = a3;
  [v5 encodeObject:parentItemIdentifier forKey:@"_parentItemIdentifier"];
  [v5 encodeObject:self->_filename forKey:@"_filename"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  parentItemIdentifier = self->_parentItemIdentifier;
  v4 = [(NSString *)self->_filename fp_obfuscatedPath];
  v5 = [v2 stringWithFormat:@"<p:%@ n:%@>", parentItemIdentifier, v4];

  return v5;
}

@end