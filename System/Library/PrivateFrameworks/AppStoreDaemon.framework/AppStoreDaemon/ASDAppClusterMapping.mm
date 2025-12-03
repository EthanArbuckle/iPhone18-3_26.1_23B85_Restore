@interface ASDAppClusterMapping
- (ASDAppClusterMapping)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAppClusterMapping

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDAppClusterMapping allocWithZone:](ASDAppClusterMapping init];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setBundleID:v6];

  v7 = [(NSNumber *)self->_clusterID copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setClusterID:v7];

  v8 = [(NSNumber *)self->_clusterVersion copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setClusterVersion:v8];

  v9 = [(NSNumber *)self->_itemID copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setItemID:v9];

  v10 = [(NSNumber *)self->_launchesWeight copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setLaunchesWeight:v10];

  v11 = [(NSNumber *)self->_usageWeight copyWithZone:zone];
  [(ASDAppClusterMapping *)v5 setUsageWeight:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ASDAppClusterMapping *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  clusterID = [(ASDAppClusterMapping *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  clusterVersion = [(ASDAppClusterMapping *)self clusterVersion];
  [coderCopy encodeObject:clusterVersion forKey:@"clusterVersion"];

  itemID = [(ASDAppClusterMapping *)self itemID];
  [coderCopy encodeObject:itemID forKey:@"itemID"];

  launchesWeight = [(ASDAppClusterMapping *)self launchesWeight];
  [coderCopy encodeObject:launchesWeight forKey:@"launchesWeight"];

  usageWeight = [(ASDAppClusterMapping *)self usageWeight];
  [coderCopy encodeObject:usageWeight forKey:@"usageWeight"];
}

- (ASDAppClusterMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ASDAppClusterMapping;
  v5 = [(ASDAppClusterMapping *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterID"];
    clusterID = v5->_clusterID;
    v5->_clusterID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterVersion"];
    clusterVersion = v5->_clusterVersion;
    v5->_clusterVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchesWeight"];
    launchesWeight = v5->_launchesWeight;
    v5->_launchesWeight = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageWeight"];
    usageWeight = v5->_usageWeight;
    v5->_usageWeight = v16;
  }

  return v5;
}

@end