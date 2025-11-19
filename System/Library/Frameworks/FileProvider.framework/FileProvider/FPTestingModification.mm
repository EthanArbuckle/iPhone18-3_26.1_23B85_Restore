@interface FPTestingModification
- (FPTestingModification)initWithCoder:(id)a3;
- (FPTestingModification)initWithOperationIdentifier:(id)a3 sourceItem:(id)a4 targetItemIdentifier:(id)a5 targetItemBaseVersion:(id)a6 changedFields:(unint64_t)a7 domainVersion:(id)a8 rawFields:(int64_t)a9 snapshotVersion:(int64_t)a10;
- (unint64_t)targetSide;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingModification

- (FPTestingModification)initWithOperationIdentifier:(id)a3 sourceItem:(id)a4 targetItemIdentifier:(id)a5 targetItemBaseVersion:(id)a6 changedFields:(unint64_t)a7 domainVersion:(id)a8 rawFields:(int64_t)a9 snapshotVersion:(int64_t)a10
{
  v17 = a4;
  v18 = a5;
  v23 = a6;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = FPTestingModification;
  v20 = [(FPTestingOperation *)&v24 initWithOperationIdentifier:a3];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sourceItem, a4);
    objc_storeStrong(&v21->_targetItemIdentifier, a5);
    objc_storeStrong(&v21->_targetItemBaseVersion, a6);
    v21->_changedFields = a7;
    v21->_rawFields = a9;
    v21->_snapshotVersion = a10;
    objc_storeStrong(&v21->_domainVersion, a8);
  }

  return v21;
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
  v5.super_class = FPTestingModification;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sourceItem forKey:{@"_sourceItem", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_targetItemIdentifier forKey:@"_targetItemIdentifier"];
  [v4 encodeObject:self->_targetItemBaseVersion forKey:@"_targetItemBaseVersion"];
  [v4 encodeInteger:self->_changedFields forKey:@"_changedFields"];
  [v4 encodeInteger:self->_rawFields forKey:@"_rawFields"];
  [v4 encodeInteger:self->_snapshotVersion forKey:@"_snapshotVersion"];
  [v4 encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingModification)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPTestingModification;
  v5 = [(FPTestingOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItem"];
    sourceItem = v5->_sourceItem;
    v5->_sourceItem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemIdentifier"];
    targetItemIdentifier = v5->_targetItemIdentifier;
    v5->_targetItemIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemBaseVersion"];
    targetItemBaseVersion = v5->_targetItemBaseVersion;
    v5->_targetItemBaseVersion = v10;

    v5->_changedFields = [v4 decodeIntegerForKey:@"_changedFields"];
    v5->_rawFields = [v4 decodeIntegerForKey:@"_rawFields"];
    v5->_snapshotVersion = [v4 decodeIntegerForKey:@"_snapshotVersion"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v12;
  }

  return v5;
}

@end