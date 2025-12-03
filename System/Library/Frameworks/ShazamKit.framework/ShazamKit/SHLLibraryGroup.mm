@interface SHLLibraryGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualGroup:(id)group;
- (SHLLibraryGroup)initWithCoder:(id)coder;
- (SHLLibraryGroup)initWithLibraryGroup:(id)group;
- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)commonInitWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHLLibraryGroup

- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  saveCopy = save;
  v14.receiver = self;
  v14.super_class = SHLLibraryGroup;
  v11 = [(SHLLibraryGroup *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SHLLibraryGroup *)v11 commonInitWithIdentifier:identifierCopy metadata:metadataCopy tracksToSave:saveCopy];
  }

  return v12;
}

- (void)commonInitWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  saveCopy = save;
  if (![(SHLLibraryGroup *)self validIdentifier:identifierCopy])
  {
    identifierCopy = [NSString stringWithFormat:@"%@ is not a valid identifier.", identifierCopy];
    v17 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:identifierCopy];
    v18 = v17;

    objc_exception_throw(v17);
  }

  identifier = self->_identifier;
  self->_identifier = identifierCopy;
  v11 = identifierCopy;

  metadata = self->_metadata;
  self->_metadata = metadataCopy;
  v13 = metadataCopy;

  v14 = [saveCopy mutableCopy];
  tracksToSave = self->_tracksToSave;
  self->_tracksToSave = v14;
}

- (SHLLibraryGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryGroupIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryGroupMetadata"];
  if (v6)
  {
    v7 = [[SHLLibraryItemMetadata alloc] initWithEncodedSystemData:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SHLLibraryGroupTracksToSave"];
  v11 = [(SHLLibraryGroup *)self _initWithIdentifier:v5 metadata:v7 tracksToSave:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SHLLibraryGroupIdentifier"];
  encodedSystemData = [(SHLLibraryItemMetadata *)self->_metadata encodedSystemData];
  [coderCopy encodeObject:encodedSystemData forKey:@"SHLLibraryGroupMetadata"];

  v7 = [(NSMutableArray *)self->_tracksToSave copy];
  [coderCopy encodeObject:v7 forKey:@"SHLLibraryGroupTracksToSave"];
}

- (SHLLibraryGroup)initWithLibraryGroup:(id)group
{
  groupCopy = group;
  v16.receiver = self;
  v16.super_class = SHLLibraryGroup;
  v5 = [(SHLLibraryGroup *)&v16 init];
  if (v5)
  {
    identifier = [groupCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    metadata = [groupCopy metadata];
    v10 = [metadata copy];
    metadata = v5->_metadata;
    v5->_metadata = v10;

    tracksToSave = [groupCopy tracksToSave];
    v13 = [tracksToSave copy];
    tracksToSave = v5->_tracksToSave;
    v5->_tracksToSave = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHLLibraryGroup allocWithZone:zone];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SHLMutableLibraryGroup allocWithZone:zone];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SHLLibraryGroup *)self isEqualGroup:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualGroup:(id)group
{
  groupCopy = group;
  identifier = [(SHLLibraryGroup *)self identifier];
  identifier2 = [groupCopy identifier];

  LOBYTE(groupCopy) = [identifier isEqualToString:identifier2];
  return groupCopy;
}

- (unint64_t)hash
{
  identifier = [(SHLLibraryGroup *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end