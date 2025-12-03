@interface FPTestingCreation
- (FPTestingCreation)initWithCoder:(id)coder;
- (FPTestingCreation)initWithOperationIdentifier:(id)identifier sourceItem:(id)item domainVersion:(id)version snapshotVersion:(int64_t)snapshotVersion;
- (unint64_t)targetSide;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingCreation

- (FPTestingCreation)initWithOperationIdentifier:(id)identifier sourceItem:(id)item domainVersion:(id)version snapshotVersion:(int64_t)snapshotVersion
{
  itemCopy = item;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = FPTestingCreation;
  v13 = [(FPTestingOperation *)&v16 initWithOperationIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sourceItem, item);
    v14->_snapshotVersion = snapshotVersion;
    objc_storeStrong(&v14->_domainVersion, version);
  }

  return v14;
}

- (unint64_t)targetSide
{
  itemIdentifier = [(NSFileProviderItem *)self->_sourceItem itemIdentifier];
  v3 = [itemIdentifier hasPrefix:@"__fp/fs/"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPTestingCreation;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceItem forKey:{@"_sourceItem", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
  [coderCopy encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingCreation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPTestingCreation;
  v5 = [(FPTestingOperation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItem"];
    sourceItem = v5->_sourceItem;
    v5->_sourceItem = v6;

    v5->_snapshotVersion = [coderCopy decodeIntegerForKey:@"_snapshotVersion"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v8;
  }

  return v5;
}

@end