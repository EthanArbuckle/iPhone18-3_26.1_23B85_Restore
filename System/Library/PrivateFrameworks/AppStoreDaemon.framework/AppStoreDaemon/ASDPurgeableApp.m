@interface ASDPurgeableApp
- (ASDPurgeableApp)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)diagnosticDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurgeableApp

- (id)diagnosticDescription
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = self->_storeItemID;
  v11[0] = @"itemID";
  v11[1] = @"bundleID";
  v3 = [(ASDPurgeableApp *)self bundleID];
  v12[1] = v3;
  v11[2] = @"Disk Usage";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_staticDiskUsage];
  purgeableReason = self->_purgeableReason;
  purgeableType = self->_purgeableType;
  v12[2] = v4;
  v12[3] = purgeableReason;
  v11[3] = @"Reason";
  v11[4] = @"Type";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:purgeableType];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_purgeableReason copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 24) = *&self->_purgeableType;
  v10 = [(NSNumber *)self->_storeItemID copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

- (ASDPurgeableApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurgeableApp *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purgeableReason"];
    purgeableReason = v5->_purgeableReason;
    v5->_purgeableReason = v8;

    v5->_purgeableType = [v4 decodeIntegerForKey:@"purgeableType"];
    v5->_staticDiskUsage = [v4 decodeInt64ForKey:@"staticDiskUsage"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurgeableApp *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(ASDPurgeableApp *)self purgeableReason];
  [v4 encodeObject:v6 forKey:@"purgeableReason"];

  [v4 encodeInteger:-[ASDPurgeableApp purgeableType](self forKey:{"purgeableType"), @"purgeableType"}];
  [v4 encodeInt64:-[ASDPurgeableApp staticDiskUsage](self forKey:{"staticDiskUsage"), @"staticDiskUsage"}];
  v7 = [(ASDPurgeableApp *)self storeItemID];
  [v4 encodeObject:v7 forKey:@"storeItemID"];
}

@end