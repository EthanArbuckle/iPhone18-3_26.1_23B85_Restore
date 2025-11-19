@interface FPTestingDeletion
- (FPTestingDeletion)initWithCoder:(id)a3;
- (FPTestingDeletion)initWithOperationIdentifier:(id)a3 sourceItemIdentifier:(id)a4 targetItemIdentifier:(id)a5 targetItemBaseVersion:(id)a6 domainVersion:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingDeletion

- (FPTestingDeletion)initWithOperationIdentifier:(id)a3 sourceItemIdentifier:(id)a4 targetItemIdentifier:(id)a5 targetItemBaseVersion:(id)a6 domainVersion:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = FPTestingDeletion;
  v17 = [(FPTestingOperation *)&v20 initWithOperationIdentifier:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceItemIdentifier, a4);
    objc_storeStrong(&v18->_targetItemIdentifier, a5);
    objc_storeStrong(&v18->_targetItemBaseVersion, a6);
    objc_storeStrong(&v18->_domainVersion, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPTestingDeletion;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sourceItemIdentifier forKey:{@"_sourceItemIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_targetItemIdentifier forKey:@"_targetItemIdentifier"];
  [v4 encodeObject:self->_targetItemBaseVersion forKey:@"_targetItemBaseVersion"];
  [v4 encodeObject:self->_domainVersion forKey:@"_domainVersion"];
}

- (FPTestingDeletion)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPTestingDeletion;
  v5 = [(FPTestingOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceItemIdentifier"];
    sourceItemIdentifier = v5->_sourceItemIdentifier;
    v5->_sourceItemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemIdentifier"];
    targetItemIdentifier = v5->_targetItemIdentifier;
    v5->_targetItemIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetItemBaseVersion"];
    targetItemBaseVersion = v5->_targetItemBaseVersion;
    v5->_targetItemBaseVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v12;
  }

  return v5;
}

@end