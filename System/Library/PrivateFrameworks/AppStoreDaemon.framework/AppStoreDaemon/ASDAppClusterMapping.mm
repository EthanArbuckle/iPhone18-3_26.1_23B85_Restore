@interface ASDAppClusterMapping
- (ASDAppClusterMapping)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAppClusterMapping

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDAppClusterMapping allocWithZone:](ASDAppClusterMapping init];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setBundleID:v6];

  v7 = [(NSNumber *)self->_clusterID copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setClusterID:v7];

  v8 = [(NSNumber *)self->_clusterVersion copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setClusterVersion:v8];

  v9 = [(NSNumber *)self->_itemID copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setItemID:v9];

  v10 = [(NSNumber *)self->_launchesWeight copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setLaunchesWeight:v10];

  v11 = [(NSNumber *)self->_usageWeight copyWithZone:a3];
  [(ASDAppClusterMapping *)v5 setUsageWeight:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDAppClusterMapping *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(ASDAppClusterMapping *)self clusterID];
  [v4 encodeObject:v6 forKey:@"clusterID"];

  v7 = [(ASDAppClusterMapping *)self clusterVersion];
  [v4 encodeObject:v7 forKey:@"clusterVersion"];

  v8 = [(ASDAppClusterMapping *)self itemID];
  [v4 encodeObject:v8 forKey:@"itemID"];

  v9 = [(ASDAppClusterMapping *)self launchesWeight];
  [v4 encodeObject:v9 forKey:@"launchesWeight"];

  v10 = [(ASDAppClusterMapping *)self usageWeight];
  [v4 encodeObject:v10 forKey:@"usageWeight"];
}

- (ASDAppClusterMapping)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ASDAppClusterMapping;
  v5 = [(ASDAppClusterMapping *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterID"];
    clusterID = v5->_clusterID;
    v5->_clusterID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterVersion"];
    clusterVersion = v5->_clusterVersion;
    v5->_clusterVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchesWeight"];
    launchesWeight = v5->_launchesWeight;
    v5->_launchesWeight = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageWeight"];
    usageWeight = v5->_usageWeight;
    v5->_usageWeight = v16;
  }

  return v5;
}

@end