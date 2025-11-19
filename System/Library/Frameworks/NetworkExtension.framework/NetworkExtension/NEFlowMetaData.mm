@interface NEFlowMetaData
- (NEFlowMetaData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFlowMetaData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEFlowMetaData allocWithZone:a3];
  v5 = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  v6 = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  v16 = [(NEFlowMetaData *)self fastOpenRequested];
  v7 = [(NEFlowMetaData *)self multipathRequested];
  v8 = [(NEFlowMetaData *)self sourceAppAuditToken];
  v9 = [(NEFlowMetaData *)self filterFlowIdentifier];
  v10 = v5;
  v11 = v6;
  v12 = v8;
  v13 = v9;
  if (v4)
  {
    v17.receiver = v4;
    v17.super_class = NEFlowMetaData;
    v14 = [(NEFlowMetaData *)&v17 init];
    v4 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_sourceAppSigningIdentifier, v6);
      objc_storeStrong(&v4->_sourceAppUniqueIdentifier, v5);
      v4->_fastOpenRequested = v16;
      v4->_multipathRequested = v7;
      objc_storeStrong(&v4->_sourceAppAuditToken, v8);
      objc_storeStrong(&v4->_filterFlowIdentifier, v9);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  [v4 encodeObject:v5 forKey:@"sourceAppSigningIdentifier"];

  v6 = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"sourceAppUniqueIdentifier"];

  v7 = [(NEFlowMetaData *)self sourceAppAuditToken];
  [v4 encodeObject:v7 forKey:@"sourceAppAuditToken"];

  v8 = [(NEFlowMetaData *)self filterFlowIdentifier];
  [v4 encodeObject:v8 forKey:@"filterFlowID"];
}

- (NEFlowMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEFlowMetaData;
  v5 = [(NEFlowMetaData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppSigningIdentifier"];
    sourceAppSigningIdentifier = v5->_sourceAppSigningIdentifier;
    v5->_sourceAppSigningIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppUniqueIdentifier"];
    sourceAppUniqueIdentifier = v5->_sourceAppUniqueIdentifier;
    v5->_sourceAppUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppAuditToken"];
    sourceAppAuditToken = v5->_sourceAppAuditToken;
    v5->_sourceAppAuditToken = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterFlowID"];
    filterFlowIdentifier = v5->_filterFlowIdentifier;
    v5->_filterFlowIdentifier = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NEFlowMetaData *)self sourceAppSigningIdentifier];
  v5 = [(NEFlowMetaData *)self sourceAppUniqueIdentifier];
  v6 = [v3 stringWithFormat:@"%@[%@]", v4, v5];

  return v6;
}

@end