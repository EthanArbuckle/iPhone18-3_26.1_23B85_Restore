@interface ASDPurgeableApp
- (ASDPurgeableApp)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)diagnosticDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurgeableApp

- (id)diagnosticDescription
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = self->_storeItemID;
  v11[0] = @"itemID";
  v11[1] = @"bundleID";
  bundleID = [(ASDPurgeableApp *)self bundleID];
  v12[1] = bundleID;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_purgeableReason copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 24) = *&self->_purgeableType;
  v10 = [(NSNumber *)self->_storeItemID copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

- (ASDPurgeableApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDPurgeableApp *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purgeableReason"];
    purgeableReason = v5->_purgeableReason;
    v5->_purgeableReason = v8;

    v5->_purgeableType = [coderCopy decodeIntegerForKey:@"purgeableType"];
    v5->_staticDiskUsage = [coderCopy decodeInt64ForKey:@"staticDiskUsage"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ASDPurgeableApp *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  purgeableReason = [(ASDPurgeableApp *)self purgeableReason];
  [coderCopy encodeObject:purgeableReason forKey:@"purgeableReason"];

  [coderCopy encodeInteger:-[ASDPurgeableApp purgeableType](self forKey:{"purgeableType"), @"purgeableType"}];
  [coderCopy encodeInt64:-[ASDPurgeableApp staticDiskUsage](self forKey:{"staticDiskUsage"), @"staticDiskUsage"}];
  storeItemID = [(ASDPurgeableApp *)self storeItemID];
  [coderCopy encodeObject:storeItemID forKey:@"storeItemID"];
}

@end