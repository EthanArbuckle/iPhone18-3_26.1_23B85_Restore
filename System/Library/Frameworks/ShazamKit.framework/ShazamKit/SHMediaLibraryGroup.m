@interface SHMediaLibraryGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualGroup:(id)a3;
- (NSArray)tracksToSave;
- (SHMediaLibraryGroup)initWithCoder:(id)a3;
- (SHMediaLibraryGroup)initWithGroupMetadata:(id)a3 groupSyncID:(id)a4;
- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addTracks:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeTracks:(id)a3;
@end

@implementation SHMediaLibraryGroup

- (SHMediaLibraryGroup)initWithGroupMetadata:(id)a3 groupSyncID:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    a3 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v7];
  }

  v8 = [(SHMediaLibraryGroup *)self _initWithIdentifier:v6 metadata:a3 tracksToSave:MEMORY[0x277CBEBF8]];

  return v8;
}

- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 tracksToSave:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = SHMediaLibraryGroup;
  v11 = [(SHMediaLibraryGroup *)&v23 init];
  v12 = v11;
  if (v11)
  {
    if (![(SHMediaLibraryGroup *)v11 validIdentifier:v8])
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = *MEMORY[0x277CBE660];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not a valid identifier.", v8];
      v21 = [v18 exceptionWithName:v19 reason:v20 userInfo:0];
      v22 = v21;

      objc_exception_throw(v21);
    }

    v13 = [v8 precomposedStringWithCanonicalMapping];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_metadata, a4);
    v15 = [v10 mutableCopy];
    mutableTracksToSave = v12->_mutableTracksToSave;
    v12->_mutableTracksToSave = v15;
  }

  return v12;
}

- (NSArray)tracksToSave
{
  v2 = [(SHMediaLibraryGroup *)self mutableTracksToSave];
  v3 = [v2 copy];

  return v3;
}

- (void)addTracks:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 associatedGroupIdentifier];

        if (v10)
        {
          v15 = MEMORY[0x277CBEAD8];
          v16 = *MEMORY[0x277CBE660];
          v17 = MEMORY[0x277CCACA8];
          v18 = [v9 identifier];
          v19 = [v9 associatedGroupIdentifier];
          v20 = [v17 stringWithFormat:@"Track with identifier %@ is already associated to a group (%@), try removing it first.", v18, v19, v23];
          v21 = [v15 exceptionWithName:v16 reason:v20 userInfo:0];
          v22 = v21;

          objc_exception_throw(v21);
        }

        v11 = [(SHMediaLibraryGroup *)self identifier];
        [v9 setAssociatedGroupIdentifier:v11];

        v12 = [(SHMediaLibraryGroup *)self mutableTracksToSave];
        v13 = [v9 copy];
        [v12 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeTracks:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 associatedGroupIdentifier];

        if (!v10)
        {
          v14 = MEMORY[0x277CBEAD8];
          v15 = *MEMORY[0x277CBE660];
          v16 = MEMORY[0x277CCACA8];
          v17 = [v9 identifier];
          v18 = [v16 stringWithFormat:@"Track with identifier %@ cannot be removed, try adding it first.", v17];
          v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
          v20 = v19;

          objc_exception_throw(v19);
        }

        [v9 setAssociatedGroupIdentifier:0];
        v11 = [(SHMediaLibraryGroup *)self mutableTracksToSave];
        v12 = [v9 copy];
        [v11 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SHMediaLibraryGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SHMediaLibraryGroup;
  v5 = [(SHMediaLibraryGroup *)&v19 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryGroupIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryGroupMetadata"];
    if (v9)
    {
      v10 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v9];
      metadata = v5->_metadata;
      v5->_metadata = v10;
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"SHMediaLibraryGroupTracksToSave"];
    v16 = [v15 mutableCopy];
    mutableTracksToSave = v5->_mutableTracksToSave;
    v5->_mutableTracksToSave = v16;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  [v7 encodeObject:self->_identifier forKey:@"SHLibraryGroupIdentifier"];
  v5 = [(SHMediaLibraryItemMetadata *)self->_metadata encodedSystemData];
  [v7 encodeObject:v5 forKey:@"SHLibraryGroupMetadata"];

  v6 = [(SHMediaLibraryGroup *)self tracksToSave];
  [v7 encodeObject:v6 forKey:@"SHMediaLibraryGroupTracksToSave"];

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaLibraryGroup allocWithZone:?];
  v6 = [(SHMediaLibraryGroup *)self identifier];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMediaLibraryGroup *)self metadata];
  v9 = [v8 copyWithZone:a3];
  v10 = [(SHMediaLibraryGroup *)self tracksToSave];
  v11 = [v10 copyWithZone:a3];
  v12 = [(SHMediaLibraryGroup *)v5 _initWithIdentifier:v7 metadata:v9 tracksToSave:v11];

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryGroup *)self isEqualGroup:v4];
  }

  return v5;
}

- (BOOL)isEqualGroup:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryGroup *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SHMediaLibraryGroup *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end