@interface CloudTabGroupRecordZoneMetadata
+ (id)_syncKeyForRecordZoneID:(id)d;
+ (id)_syncKeyPrefixForRecordZoneName:(id)name;
+ (id)allRecordZoneMetadataInCollection:(id)collection;
+ (id)recordZoneMetadataWithRecordZoneID:(id)d inCollection:(id)collection;
+ (id)recordZoneMetadataWithRecordZoneName:(id)name inCollection:(id)collection;
+ (void)initialize;
+ (void)removeMetadataForRecordZoneIDs:(id)ds inCollection:(id)collection;
- (BOOL)isMinimumAPIVersionUnsupportedGetVersionKinds:(unint64_t *)kinds;
- (BOOL)isPlaceholder;
- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)kinds;
- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)kinds inCollection:(id)collection;
- (BOOL)setRecordZoneID:(id)d inCollection:(id)collection;
- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)version ofKinds:(unint64_t)kinds;
- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)version ofKinds:(unint64_t)kinds inCollection:(id)collection;
- (BOOL)writeToCollectionIfNeeded:(id)needed;
- (CloudTabGroupRecordZoneMetadata)initWithCoder:(id)coder;
- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneID:(id)d;
- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneName:(id)name;
- (id)_syncKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CloudTabGroupRecordZoneMetadata

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100153E60 = 4;
  }
}

+ (id)_syncKeyForRecordZoneID:(id)d
{
  v9[0] = @"com.apple.CloudTabGroupSync:";
  dCopy = d;
  zoneName = [dCopy zoneName];
  v9[1] = zoneName;
  v9[2] = @" | ";
  ownerName = [dCopy ownerName];

  v9[3] = ownerName;
  v6 = [NSArray arrayWithObjects:v9 count:4];
  v7 = [v6 componentsJoinedByString:&stru_100137BA8];

  return v7;
}

+ (id)_syncKeyPrefixForRecordZoneName:(id)name
{
  v7 = @"com.apple.CloudTabGroupSync:";
  nameCopy = name;
  v9 = @" | ";
  nameCopy2 = name;
  v4 = [NSArray arrayWithObjects:&v7 count:3];

  v5 = [v4 componentsJoinedByString:{&stru_100137BA8, v7, nameCopy, v9}];

  return v5;
}

+ (id)allRecordZoneMetadataInCollection:(id)collection
{
  v3 = [collection allSyncDataForKeysWithPrefix:@"com.apple.CloudTabGroupSync:"];
  +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024498;
  v4 = v6[3] = &unk_100132370;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

+ (void)removeMetadataForRecordZoneIDs:(id)ds inCollection:(id)collection
{
  dsCopy = ds;
  collectionCopy = collection;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(dsCopy);
        }

        zoneName = [*(*(&v14 + 1) + 8 * v11) zoneName];
        v13 = [self _syncKeyPrefixForRecordZoneName:zoneName];
        [collectionCopy removeAllSyncDataForKeyWithPrefix:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

+ (id)recordZoneMetadataWithRecordZoneID:(id)d inCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [self _syncKeyForRecordZoneID:d];
  v8 = [collectionCopy syncDataForKey:v7];

  v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  return v10;
}

+ (id)recordZoneMetadataWithRecordZoneName:(id)name inCollection:(id)collection
{
  nameCopy = name;
  collectionCopy = collection;
  v8 = [self _syncKeyPrefixForRecordZoneName:nameCopy];
  v9 = [collectionCopy allSyncDataForKeysWithPrefix:v8];

  if ([v9 count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100001464;
    v17 = sub_1000248A0;
    v18 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000248A8;
    v12[3] = &unk_100132398;
    v12[4] = &v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CloudTabGroupRecordZoneMetadata;
  v5 = [(CloudTabGroupRecordZoneMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dCopy copy];
    recordZoneID = v5->_recordZoneID;
    v5->_recordZoneID = v6;

    v8 = +[NSMutableDictionary dictionary];
    kindsToMinimumAPIVersions = v5->_kindsToMinimumAPIVersions;
    v5->_kindsToMinimumAPIVersions = v8;

    v5->_hasUpdates = 1;
    v10 = v5;
  }

  return v5;
}

- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneName:(id)name
{
  nameCopy = name;
  v5 = [[CKRecordZoneID alloc] initWithZoneName:nameCopy ownerName:@"<SafariUnknownCKRecordZoneOwner>"];

  v6 = [(CloudTabGroupRecordZoneMetadata *)self initWithRecordZoneID:v5];
  return v6;
}

- (CloudTabGroupRecordZoneMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CloudTabGroupRecordZoneMetadata;
  v5 = [(CloudTabGroupRecordZoneMetadata *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecordZoneID"];
    recordZoneID = v5->_recordZoneID;
    v5->_recordZoneID = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"KindsToMinimumAPIVersions"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = +[NSMutableDictionary dictionary];
    }

    kindsToMinimumAPIVersions = v5->_kindsToMinimumAPIVersions;
    v5->_kindsToMinimumAPIVersions = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_recordZoneID forKey:@"RecordZoneID"];
  if ([(NSMutableDictionary *)self->_kindsToMinimumAPIVersions count])
  {
    [coderCopy encodeObject:self->_kindsToMinimumAPIVersions forKey:@"KindsToMinimumAPIVersions"];
  }
}

- (BOOL)writeToCollectionIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(CloudTabGroupRecordZoneMetadata *)self _isEmpty])
  {
    _syncKey = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
    v6 = [neededCopy setSyncData:0 forKey:_syncKey];

    if (!v6)
    {
      LOBYTE(v9) = 0;
      goto LABEL_10;
    }

    self->_hasUpdates = 0;
    goto LABEL_8;
  }

  if (!self->_hasUpdates)
  {
LABEL_8:
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v7 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  _syncKey2 = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
  v9 = [neededCopy setSyncData:v7 forKey:_syncKey2];

  if (v9)
  {
    self->_hasUpdates = 0;
  }

LABEL_10:
  return v9;
}

- (id)_syncKey
{
  v3 = objc_opt_class();
  recordZoneID = self->_recordZoneID;

  return [v3 _syncKeyForRecordZoneID:recordZoneID];
}

- (BOOL)isPlaceholder
{
  ownerName = [(CKRecordZoneID *)self->_recordZoneID ownerName];
  v3 = [ownerName isEqualToString:@"<SafariUnknownCKRecordZoneOwner>"];

  return v3;
}

- (BOOL)setRecordZoneID:(id)d inCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  if ([dCopy isEqual:self->_recordZoneID])
  {
    v8 = 1;
  }

  else
  {
    _syncKey = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
    v10 = [collectionCopy setSyncData:0 forKey:_syncKey];

    if (v10)
    {
      v11 = [dCopy copy];
      recordZoneID = self->_recordZoneID;
      self->_recordZoneID = v11;

      self->_hasUpdates = 1;
      v8 = [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:collectionCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isMinimumAPIVersionUnsupportedGetVersionKinds:(unint64_t *)kinds
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  kindsToMinimumAPIVersions = self->_kindsToMinimumAPIVersions;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024F44;
  v7[3] = &unk_1001323C0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v12;
  [(NSMutableDictionary *)kindsToMinimumAPIVersions enumerateKeysAndObjectsUsingBlock:v7];
  if (kinds)
  {
    *kinds = v13[3];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)version ofKinds:(unint64_t)kinds
{
  if ([objc_opt_class() currentAPIVersion] >= version)
  {

    return [(CloudTabGroupRecordZoneMetadata *)self resetMinimumAPIVersionOfKinds:kinds];
  }

  else
  {
    v7 = [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];
    v8 = [NSNumber numberWithInteger:version];
    v9 = 1;
    do
    {
      if ((v9 & kinds) != 0)
      {
        kindsToMinimumAPIVersions = self->_kindsToMinimumAPIVersions;
        v11 = [NSNumber numberWithUnsignedInteger:v9];
        v12 = [(NSMutableDictionary *)kindsToMinimumAPIVersions objectForKeyedSubscript:v11];
        v13 = [v12 isEqual:v8];

        if ((v13 & 1) == 0)
        {
          v14 = self->_kindsToMinimumAPIVersions;
          v15 = [NSNumber numberWithUnsignedInteger:v9];
          [(NSMutableDictionary *)v14 setObject:v8 forKeyedSubscript:v15];

          self->_hasUpdates = 1;
        }
      }

      v9 *= 2;
    }

    while (v9);
    v16 = [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];

    return v7 ^ v16;
  }
}

- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)version ofKinds:(unint64_t)kinds inCollection:(id)collection
{
  collectionCopy = collection;
  LOBYTE(kinds) = [(CloudTabGroupRecordZoneMetadata *)self setUnsupportMinimumAPIVersion:version ofKinds:kinds];
  [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:collectionCopy];

  return kinds;
}

- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)kinds
{
  v5 = [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];
  if (kinds != 7)
  {
    v9 = 1;
    do
    {
      if ((v9 & kinds) != 0)
      {
        kindsToMinimumAPIVersions = self->_kindsToMinimumAPIVersions;
        v11 = [NSNumber numberWithUnsignedInteger:v9];
        v12 = [(NSMutableDictionary *)kindsToMinimumAPIVersions objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = self->_kindsToMinimumAPIVersions;
          v14 = [NSNumber numberWithUnsignedInteger:v9];
          [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:v14];

          self->_hasUpdates = 1;
        }
      }

      v9 *= 2;
    }

    while (v9);
    goto LABEL_9;
  }

  v6 = [(NSMutableDictionary *)self->_kindsToMinimumAPIVersions count];
  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = self->_kindsToMinimumAPIVersions;
    self->_kindsToMinimumAPIVersions = v7;

    self->_hasUpdates = 1;
LABEL_9:
    LOBYTE(v6) = v5 ^ [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];
  }

  return v6;
}

- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)kinds inCollection:(id)collection
{
  collectionCopy = collection;
  LOBYTE(kinds) = [(CloudTabGroupRecordZoneMetadata *)self resetMinimumAPIVersionOfKinds:kinds];
  [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:collectionCopy];

  return kinds;
}

@end