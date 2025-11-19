@interface CloudTabGroupRecordZoneMetadata
+ (id)_syncKeyForRecordZoneID:(id)a3;
+ (id)_syncKeyPrefixForRecordZoneName:(id)a3;
+ (id)allRecordZoneMetadataInCollection:(id)a3;
+ (id)recordZoneMetadataWithRecordZoneID:(id)a3 inCollection:(id)a4;
+ (id)recordZoneMetadataWithRecordZoneName:(id)a3 inCollection:(id)a4;
+ (void)initialize;
+ (void)removeMetadataForRecordZoneIDs:(id)a3 inCollection:(id)a4;
- (BOOL)isMinimumAPIVersionUnsupportedGetVersionKinds:(unint64_t *)a3;
- (BOOL)isPlaceholder;
- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)a3;
- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)a3 inCollection:(id)a4;
- (BOOL)setRecordZoneID:(id)a3 inCollection:(id)a4;
- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)a3 ofKinds:(unint64_t)a4;
- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)a3 ofKinds:(unint64_t)a4 inCollection:(id)a5;
- (BOOL)writeToCollectionIfNeeded:(id)a3;
- (CloudTabGroupRecordZoneMetadata)initWithCoder:(id)a3;
- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneID:(id)a3;
- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneName:(id)a3;
- (id)_syncKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CloudTabGroupRecordZoneMetadata

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100153E60 = 4;
  }
}

+ (id)_syncKeyForRecordZoneID:(id)a3
{
  v9[0] = @"com.apple.CloudTabGroupSync:";
  v3 = a3;
  v4 = [v3 zoneName];
  v9[1] = v4;
  v9[2] = @" | ";
  v5 = [v3 ownerName];

  v9[3] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:4];
  v7 = [v6 componentsJoinedByString:&stru_100137BA8];

  return v7;
}

+ (id)_syncKeyPrefixForRecordZoneName:(id)a3
{
  v7 = @"com.apple.CloudTabGroupSync:";
  v8 = a3;
  v9 = @" | ";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:3];

  v5 = [v4 componentsJoinedByString:{&stru_100137BA8, v7, v8, v9}];

  return v5;
}

+ (id)allRecordZoneMetadataInCollection:(id)a3
{
  v3 = [a3 allSyncDataForKeysWithPrefix:@"com.apple.CloudTabGroupSync:"];
  +[NSMutableSet set];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024498;
  v4 = v6[3] = &unk_100132370;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

+ (void)removeMetadataForRecordZoneIDs:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) zoneName];
        v13 = [a1 _syncKeyPrefixForRecordZoneName:v12];
        [v7 removeAllSyncDataForKeyWithPrefix:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

+ (id)recordZoneMetadataWithRecordZoneID:(id)a3 inCollection:(id)a4
{
  v6 = a4;
  v7 = [a1 _syncKeyForRecordZoneID:a3];
  v8 = [v6 syncDataForKey:v7];

  v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  return v10;
}

+ (id)recordZoneMetadataWithRecordZoneName:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _syncKeyPrefixForRecordZoneName:v6];
  v9 = [v7 allSyncDataForKeysWithPrefix:v8];

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

- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneID:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CloudTabGroupRecordZoneMetadata;
  v5 = [(CloudTabGroupRecordZoneMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (CloudTabGroupRecordZoneMetadata)initWithRecordZoneName:(id)a3
{
  v4 = a3;
  v5 = [[CKRecordZoneID alloc] initWithZoneName:v4 ownerName:@"<SafariUnknownCKRecordZoneOwner>"];

  v6 = [(CloudTabGroupRecordZoneMetadata *)self initWithRecordZoneID:v5];
  return v6;
}

- (CloudTabGroupRecordZoneMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CloudTabGroupRecordZoneMetadata;
  v5 = [(CloudTabGroupRecordZoneMetadata *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecordZoneID"];
    recordZoneID = v5->_recordZoneID;
    v5->_recordZoneID = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"KindsToMinimumAPIVersions"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_recordZoneID forKey:@"RecordZoneID"];
  if ([(NSMutableDictionary *)self->_kindsToMinimumAPIVersions count])
  {
    [v4 encodeObject:self->_kindsToMinimumAPIVersions forKey:@"KindsToMinimumAPIVersions"];
  }
}

- (BOOL)writeToCollectionIfNeeded:(id)a3
{
  v4 = a3;
  if ([(CloudTabGroupRecordZoneMetadata *)self _isEmpty])
  {
    v5 = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
    v6 = [v4 setSyncData:0 forKey:v5];

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
  v8 = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
  v9 = [v4 setSyncData:v7 forKey:v8];

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
  v2 = [(CKRecordZoneID *)self->_recordZoneID ownerName];
  v3 = [v2 isEqualToString:@"<SafariUnknownCKRecordZoneOwner>"];

  return v3;
}

- (BOOL)setRecordZoneID:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:self->_recordZoneID])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(CloudTabGroupRecordZoneMetadata *)self _syncKey];
    v10 = [v7 setSyncData:0 forKey:v9];

    if (v10)
    {
      v11 = [v6 copy];
      recordZoneID = self->_recordZoneID;
      self->_recordZoneID = v11;

      self->_hasUpdates = 1;
      v8 = [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isMinimumAPIVersionUnsupportedGetVersionKinds:(unint64_t *)a3
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
  if (a3)
  {
    *a3 = v13[3];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)a3 ofKinds:(unint64_t)a4
{
  if ([objc_opt_class() currentAPIVersion] >= a3)
  {

    return [(CloudTabGroupRecordZoneMetadata *)self resetMinimumAPIVersionOfKinds:a4];
  }

  else
  {
    v7 = [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];
    v8 = [NSNumber numberWithInteger:a3];
    v9 = 1;
    do
    {
      if ((v9 & a4) != 0)
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

- (BOOL)setUnsupportMinimumAPIVersion:(int64_t)a3 ofKinds:(unint64_t)a4 inCollection:(id)a5
{
  v8 = a5;
  LOBYTE(a4) = [(CloudTabGroupRecordZoneMetadata *)self setUnsupportMinimumAPIVersion:a3 ofKinds:a4];
  [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:v8];

  return a4;
}

- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)a3
{
  v5 = [(CloudTabGroupRecordZoneMetadata *)self isMinimumAPIVersionUnsupportedGetVersionKinds:0];
  if (a3 != 7)
  {
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
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

- (BOOL)resetMinimumAPIVersionOfKinds:(unint64_t)a3 inCollection:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = [(CloudTabGroupRecordZoneMetadata *)self resetMinimumAPIVersionOfKinds:a3];
  [(CloudTabGroupRecordZoneMetadata *)self writeToCollectionIfNeeded:v6];

  return a3;
}

@end