@interface NEFlowMetaData
- (NEFlowMetaData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFlowMetaData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEFlowMetaData allocWithZone:zone];
  sourceAppUniqueIdentifier = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  sourceAppSigningIdentifier = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  fastOpenRequested = [(NEFlowMetaData *)self fastOpenRequested];
  multipathRequested = [(NEFlowMetaData *)self multipathRequested];
  sourceAppAuditToken = [(NEFlowMetaData *)self sourceAppAuditToken];
  filterFlowIdentifier = [(NEFlowMetaData *)self filterFlowIdentifier];
  v10 = sourceAppUniqueIdentifier;
  v11 = sourceAppSigningIdentifier;
  v12 = sourceAppAuditToken;
  v13 = filterFlowIdentifier;
  if (v4)
  {
    v17.receiver = v4;
    v17.super_class = NEFlowMetaData;
    v14 = [(NEFlowMetaData *)&v17 init];
    v4 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_sourceAppSigningIdentifier, sourceAppSigningIdentifier);
      objc_storeStrong(&v4->_sourceAppUniqueIdentifier, sourceAppUniqueIdentifier);
      v4->_fastOpenRequested = fastOpenRequested;
      v4->_multipathRequested = multipathRequested;
      objc_storeStrong(&v4->_sourceAppAuditToken, sourceAppAuditToken);
      objc_storeStrong(&v4->_filterFlowIdentifier, filterFlowIdentifier);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceAppSigningIdentifier = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  [coderCopy encodeObject:sourceAppSigningIdentifier forKey:@"sourceAppSigningIdentifier"];

  sourceAppUniqueIdentifier = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  [coderCopy encodeObject:sourceAppUniqueIdentifier forKey:@"sourceAppUniqueIdentifier"];

  sourceAppAuditToken = [(NEFlowMetaData *)self sourceAppAuditToken];
  [coderCopy encodeObject:sourceAppAuditToken forKey:@"sourceAppAuditToken"];

  filterFlowIdentifier = [(NEFlowMetaData *)self filterFlowIdentifier];
  [coderCopy encodeObject:filterFlowIdentifier forKey:@"filterFlowID"];
}

- (NEFlowMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEFlowMetaData;
  v5 = [(NEFlowMetaData *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppSigningIdentifier"];
    sourceAppSigningIdentifier = v5->_sourceAppSigningIdentifier;
    v5->_sourceAppSigningIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppUniqueIdentifier"];
    sourceAppUniqueIdentifier = v5->_sourceAppUniqueIdentifier;
    v5->_sourceAppUniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppAuditToken"];
    sourceAppAuditToken = v5->_sourceAppAuditToken;
    v5->_sourceAppAuditToken = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterFlowID"];
    filterFlowIdentifier = v5->_filterFlowIdentifier;
    v5->_filterFlowIdentifier = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sourceAppSigningIdentifier = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  sourceAppUniqueIdentifier = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  v6 = [v3 stringWithFormat:@"%@[%@]", sourceAppSigningIdentifier, sourceAppUniqueIdentifier];

  return v6;
}

@end