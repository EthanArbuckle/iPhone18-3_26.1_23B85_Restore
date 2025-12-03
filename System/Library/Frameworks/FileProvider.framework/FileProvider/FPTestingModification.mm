@interface FPTestingModification
- (FPTestingModification)initWithCoder:(id)coder;
- (FPTestingModification)initWithOperationIdentifier:(id)identifier sourceItem:(id)item targetItemIdentifier:(id)itemIdentifier targetItemBaseVersion:(id)version changedFields:(unint64_t)fields domainVersion:(id)domainVersion rawFields:(int64_t)rawFields snapshotVersion:(int64_t)self0;
- (unint64_t)targetSide;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingModification

- (FPTestingModification)initWithOperationIdentifier:(id)identifier sourceItem:(id)item targetItemIdentifier:(id)itemIdentifier targetItemBaseVersion:(id)version changedFields:(unint64_t)fields domainVersion:(id)domainVersion rawFields:(int64_t)rawFields snapshotVersion:(int64_t)self0
{
  itemCopy = item;
  itemIdentifierCopy = itemIdentifier;
  versionCopy = version;
  domainVersionCopy = domainVersion;
  v24.receiver = self;
  v24.super_class = FPTestingModification;
  v20 = [(FPTestingOperation *)&v24 initWithOperationIdentifier:identifier];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sourceItem, item);
    objc_storeStrong(&v21->_targetItemIdentifier, itemIdentifier);
    objc_storeStrong(&v21->_targetItemBaseVersion, version);
    v21->_changedFields = fields;
    v21->_rawFields = rawFields;
    v21->_snapshotVersion = snapshotVersion;
    objc_storeStrong(&v21->_domainVersion, domainVersion);
  }

  return v21;
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
  v5.super_class = FPTestingModification;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceItem forKey:{@"_sourceItem", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_targetItemIdentifier forKey:@"_targetItemIdentifier"];
  [coderCopy encodeObject:self->_targetItemBaseVersion forKey:@"_targetItemBaseVersion"];
  [coderCopy encodeInteger:self->_changedFields forKey:@"_changedFields"];
  [coderCopy encodeInteger:self->_rawFields forKey:@"_rawFields"];
  [coderCopy encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
  [coderCopy encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingModification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FPTestingModification;
  v5 = [(FPTestingOperation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItem"];
    sourceItem = v5->_sourceItem;
    v5->_sourceItem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemIdentifier"];
    targetItemIdentifier = v5->_targetItemIdentifier;
    v5->_targetItemIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemBaseVersion"];
    targetItemBaseVersion = v5->_targetItemBaseVersion;
    v5->_targetItemBaseVersion = v10;

    v5->_changedFields = [coderCopy decodeIntegerForKey:@"_changedFields"];
    v5->_rawFields = [coderCopy decodeIntegerForKey:@"_rawFields"];
    v5->_snapshotVersion = [coderCopy decodeIntegerForKey:@"_snapshotVersion"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v12;
  }

  return v5;
}

@end