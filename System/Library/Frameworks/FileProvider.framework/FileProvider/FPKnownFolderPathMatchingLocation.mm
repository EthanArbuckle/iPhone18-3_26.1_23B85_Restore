@interface FPKnownFolderPathMatchingLocation
- (FPKnownFolderPathMatchingLocation)initWithCoder:(id)coder;
- (FPKnownFolderPathMatchingLocation)initWithParentItemIdentifier:(id)identifier filename:(id)filename;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPKnownFolderPathMatchingLocation

- (FPKnownFolderPathMatchingLocation)initWithParentItemIdentifier:(id)identifier filename:(id)filename
{
  identifierCopy = identifier;
  filenameCopy = filename;
  v14.receiver = self;
  v14.super_class = FPKnownFolderPathMatchingLocation;
  v8 = [(FPKnownFolderPathMatchingLocation *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    parentItemIdentifier = v8->_parentItemIdentifier;
    v8->_parentItemIdentifier = v9;

    v11 = [filenameCopy copy];
    filename = v8->_filename;
    v8->_filename = v11;
  }

  return v8;
}

- (FPKnownFolderPathMatchingLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPKnownFolderPathMatchingLocation;
  v5 = [(FPKnownFolderPathMatchingLocation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentItemIdentifier"];
    parentItemIdentifier = v5->_parentItemIdentifier;
    v5->_parentItemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
    filename = v5->_filename;
    v5->_filename = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  parentItemIdentifier = self->_parentItemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:parentItemIdentifier forKey:@"_parentItemIdentifier"];
  [coderCopy encodeObject:self->_filename forKey:@"_filename"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  parentItemIdentifier = self->_parentItemIdentifier;
  fp_obfuscatedPath = [(NSString *)self->_filename fp_obfuscatedPath];
  v5 = [v2 stringWithFormat:@"<p:%@ n:%@>", parentItemIdentifier, fp_obfuscatedPath];

  return v5;
}

@end