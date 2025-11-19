@interface FPTestingCreation
- (FPTestingCreation)initWithCoder:(id)a3;
- (FPTestingCreation)initWithOperationIdentifier:(id)a3 sourceItem:(id)a4 domainVersion:(id)a5 snapshotVersion:(int64_t)a6;
- (unint64_t)targetSide;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingCreation

- (FPTestingCreation)initWithOperationIdentifier:(id)a3 sourceItem:(id)a4 domainVersion:(id)a5 snapshotVersion:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = FPTestingCreation;
  v13 = [(FPTestingOperation *)&v16 initWithOperationIdentifier:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceItem, a4);
    v14->_snapshotVersion = a6;
    objc_storeStrong(&v14->_domainVersion, a5);
  }

  return v14;
}

- (unint64_t)targetSide
{
  v2 = [(NSFileProviderItem *)self->_sourceItem itemIdentifier];
  v3 = [v2 hasPrefix:@"__fp/fs/"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPTestingCreation;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sourceItem forKey:{@"_sourceItem", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
  [v4 encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingCreation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPTestingCreation;
  v5 = [(FPTestingOperation *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItem"];
    sourceItem = v5->_sourceItem;
    v5->_sourceItem = v6;

    v5->_snapshotVersion = [v4 decodeIntegerForKey:@"_snapshotVersion"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v8;
  }

  return v5;
}

@end