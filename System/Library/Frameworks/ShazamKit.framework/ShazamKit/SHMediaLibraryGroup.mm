@interface SHMediaLibraryGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualGroup:(id)group;
- (NSArray)tracksToSave;
- (SHMediaLibraryGroup)initWithCoder:(id)coder;
- (SHMediaLibraryGroup)initWithGroupMetadata:(id)metadata groupSyncID:(id)d;
- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addTracks:(id)tracks;
- (void)encodeWithCoder:(id)coder;
- (void)removeTracks:(id)tracks;
@end

@implementation SHMediaLibraryGroup

- (SHMediaLibraryGroup)initWithGroupMetadata:(id)metadata groupSyncID:(id)d
{
  dCopy = d;
  if (metadata)
  {
    metadataCopy = metadata;
    metadata = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:metadataCopy];
  }

  v8 = [(SHMediaLibraryGroup *)self _initWithIdentifier:dCopy metadata:metadata tracksToSave:MEMORY[0x277CBEBF8]];

  return v8;
}

- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata tracksToSave:(id)save
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  saveCopy = save;
  v23.receiver = self;
  v23.super_class = SHMediaLibraryGroup;
  v11 = [(SHMediaLibraryGroup *)&v23 init];
  v12 = v11;
  if (v11)
  {
    if (![(SHMediaLibraryGroup *)v11 validIdentifier:identifierCopy])
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = *MEMORY[0x277CBE660];
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not a valid identifier.", identifierCopy];
      v21 = [v18 exceptionWithName:v19 reason:identifierCopy userInfo:0];
      v22 = v21;

      objc_exception_throw(v21);
    }

    precomposedStringWithCanonicalMapping = [identifierCopy precomposedStringWithCanonicalMapping];
    identifier = v12->_identifier;
    v12->_identifier = precomposedStringWithCanonicalMapping;

    objc_storeStrong(&v12->_metadata, metadata);
    v15 = [saveCopy mutableCopy];
    mutableTracksToSave = v12->_mutableTracksToSave;
    v12->_mutableTracksToSave = v15;
  }

  return v12;
}

- (NSArray)tracksToSave
{
  mutableTracksToSave = [(SHMediaLibraryGroup *)self mutableTracksToSave];
  v3 = [mutableTracksToSave copy];

  return v3;
}

- (void)addTracks:(id)tracks
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  tracksCopy = tracks;
  v5 = [tracksCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(tracksCopy);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        associatedGroupIdentifier = [v9 associatedGroupIdentifier];

        if (associatedGroupIdentifier)
        {
          v15 = MEMORY[0x277CBEAD8];
          v16 = *MEMORY[0x277CBE660];
          v17 = MEMORY[0x277CCACA8];
          identifier = [v9 identifier];
          associatedGroupIdentifier2 = [v9 associatedGroupIdentifier];
          v20 = [v17 stringWithFormat:@"Track with identifier %@ is already associated to a group (%@), try removing it first.", identifier, associatedGroupIdentifier2, v23];
          v21 = [v15 exceptionWithName:v16 reason:v20 userInfo:0];
          v22 = v21;

          objc_exception_throw(v21);
        }

        identifier2 = [(SHMediaLibraryGroup *)self identifier];
        [v9 setAssociatedGroupIdentifier:identifier2];

        mutableTracksToSave = [(SHMediaLibraryGroup *)self mutableTracksToSave];
        v13 = [v9 copy];
        [mutableTracksToSave addObject:v13];
      }

      v6 = [tracksCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeTracks:(id)tracks
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  tracksCopy = tracks;
  v5 = [tracksCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(tracksCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        associatedGroupIdentifier = [v9 associatedGroupIdentifier];

        if (!associatedGroupIdentifier)
        {
          v14 = MEMORY[0x277CBEAD8];
          v15 = *MEMORY[0x277CBE660];
          v16 = MEMORY[0x277CCACA8];
          identifier = [v9 identifier];
          v18 = [v16 stringWithFormat:@"Track with identifier %@ cannot be removed, try adding it first.", identifier];
          v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
          v20 = v19;

          objc_exception_throw(v19);
        }

        [v9 setAssociatedGroupIdentifier:0];
        mutableTracksToSave = [(SHMediaLibraryGroup *)self mutableTracksToSave];
        v12 = [v9 copy];
        [mutableTracksToSave addObject:v12];
      }

      v6 = [tracksCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SHMediaLibraryGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SHMediaLibraryGroup;
  v5 = [(SHMediaLibraryGroup *)&v19 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryGroupIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryGroupMetadata"];
    if (v9)
    {
      v10 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v9];
      metadata = v5->_metadata;
      v5->_metadata = v10;
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"SHMediaLibraryGroupTracksToSave"];
    v16 = [v15 mutableCopy];
    mutableTracksToSave = v5->_mutableTracksToSave;
    v5->_mutableTracksToSave = v16;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_identifier forKey:@"SHLibraryGroupIdentifier"];
  encodedSystemData = [(SHMediaLibraryItemMetadata *)self->_metadata encodedSystemData];
  [coderCopy encodeObject:encodedSystemData forKey:@"SHLibraryGroupMetadata"];

  tracksToSave = [(SHMediaLibraryGroup *)self tracksToSave];
  [coderCopy encodeObject:tracksToSave forKey:@"SHMediaLibraryGroupTracksToSave"];

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryGroup allocWithZone:?];
  identifier = [(SHMediaLibraryGroup *)self identifier];
  v7 = [identifier copyWithZone:zone];
  metadata = [(SHMediaLibraryGroup *)self metadata];
  v9 = [metadata copyWithZone:zone];
  tracksToSave = [(SHMediaLibraryGroup *)self tracksToSave];
  v11 = [tracksToSave copyWithZone:zone];
  v12 = [(SHMediaLibraryGroup *)v5 _initWithIdentifier:v7 metadata:v9 tracksToSave:v11];

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryGroup *)self isEqualGroup:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualGroup:(id)group
{
  groupCopy = group;
  identifier = [(SHMediaLibraryGroup *)self identifier];
  identifier2 = [groupCopy identifier];

  LOBYTE(groupCopy) = [identifier isEqualToString:identifier2];
  return groupCopy;
}

- (unint64_t)hash
{
  identifier = [(SHMediaLibraryGroup *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end