@interface SHLLibraryGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualGroup:(id)a3;
- (SHLLibraryGroup)initWithCoder:(id)a3;
- (SHLLibraryGroup)initWithLibraryGroup:(id)a3;
- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)commonInitWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHLLibraryGroup

- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SHLLibraryGroup;
  v11 = [(SHLLibraryGroup *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SHLLibraryGroup *)v11 commonInitWithIdentifier:v8 metadata:v9 tracksToSave:v10];
  }

  return v12;
}

- (void)commonInitWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19 = a5;
  if (![(SHLLibraryGroup *)self validIdentifier:v8])
  {
    v16 = [NSString stringWithFormat:@"%@ is not a valid identifier.", v8];
    v17 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

  identifier = self->_identifier;
  self->_identifier = v8;
  v11 = v8;

  metadata = self->_metadata;
  self->_metadata = v9;
  v13 = v9;

  v14 = [v19 mutableCopy];
  tracksToSave = self->_tracksToSave;
  self->_tracksToSave = v14;
}

- (SHLLibraryGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryGroupIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryGroupMetadata"];
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
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SHLLibraryGroupTracksToSave"];
  v11 = [(SHLLibraryGroup *)self _initWithIdentifier:v5 metadata:v7 tracksToSave:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"SHLLibraryGroupIdentifier"];
  v6 = [(SHLLibraryItemMetadata *)self->_metadata encodedSystemData];
  [v5 encodeObject:v6 forKey:@"SHLLibraryGroupMetadata"];

  v7 = [(NSMutableArray *)self->_tracksToSave copy];
  [v5 encodeObject:v7 forKey:@"SHLLibraryGroupTracksToSave"];
}

- (SHLLibraryGroup)initWithLibraryGroup:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SHLLibraryGroup;
  v5 = [(SHLLibraryGroup *)&v16 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 metadata];
    v10 = [v9 copy];
    metadata = v5->_metadata;
    v5->_metadata = v10;

    v12 = [v4 tracksToSave];
    v13 = [v12 copy];
    tracksToSave = v5->_tracksToSave;
    v5->_tracksToSave = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHLLibraryGroup allocWithZone:a3];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SHLMutableLibraryGroup allocWithZone:a3];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SHLLibraryGroup *)self isEqualGroup:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualGroup:(id)a3
{
  v4 = a3;
  v5 = [(SHLLibraryGroup *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SHLLibraryGroup *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end