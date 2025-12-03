@interface FPTestingDeletion
- (FPTestingDeletion)initWithCoder:(id)coder;
- (FPTestingDeletion)initWithOperationIdentifier:(id)identifier sourceItemIdentifier:(id)itemIdentifier targetItemIdentifier:(id)targetItemIdentifier targetItemBaseVersion:(id)version domainVersion:(id)domainVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingDeletion

- (FPTestingDeletion)initWithOperationIdentifier:(id)identifier sourceItemIdentifier:(id)itemIdentifier targetItemIdentifier:(id)targetItemIdentifier targetItemBaseVersion:(id)version domainVersion:(id)domainVersion
{
  itemIdentifierCopy = itemIdentifier;
  targetItemIdentifierCopy = targetItemIdentifier;
  versionCopy = version;
  domainVersionCopy = domainVersion;
  v20.receiver = self;
  v20.super_class = FPTestingDeletion;
  v17 = [(FPTestingOperation *)&v20 initWithOperationIdentifier:identifier];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceItemIdentifier, itemIdentifier);
    objc_storeStrong(&v18->_targetItemIdentifier, targetItemIdentifier);
    objc_storeStrong(&v18->_targetItemBaseVersion, version);
    objc_storeStrong(&v18->_domainVersion, domainVersion);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPTestingDeletion;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceItemIdentifier forKey:{@"_sourceItemIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_targetItemIdentifier forKey:@"_targetItemIdentifier"];
  [coderCopy encodeObject:self->_targetItemBaseVersion forKey:@"_targetItemBaseVersion"];
  [coderCopy encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingDeletion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FPTestingDeletion;
  v5 = [(FPTestingOperation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItemIdentifier"];
    sourceItemIdentifier = v5->_sourceItemIdentifier;
    v5->_sourceItemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemIdentifier"];
    targetItemIdentifier = v5->_targetItemIdentifier;
    v5->_targetItemIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemBaseVersion"];
    targetItemBaseVersion = v5->_targetItemBaseVersion;
    v5->_targetItemBaseVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v12;
  }

  return v5;
}

@end