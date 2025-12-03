@interface AMSOnDeviceDataSyncRequest
- (AMSOnDeviceDataSyncRequest)initWithCoder:(id)coder;
- (AMSOnDeviceDataSyncRequest)initWithNamespace:(id)namespace idSource:(id)source idDomain:(id)domain identifier:(id)identifier accountID:(id)d datasetName:(id)name idSuffix:(id)suffix afterDelay:(id)self0;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSOnDeviceDataSyncRequest

- (AMSOnDeviceDataSyncRequest)initWithNamespace:(id)namespace idSource:(id)source idDomain:(id)domain identifier:(id)identifier accountID:(id)d datasetName:(id)name idSuffix:(id)suffix afterDelay:(id)self0
{
  namespaceCopy = namespace;
  sourceCopy = source;
  domainCopy = domain;
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  suffixCopy = suffix;
  delayCopy = delay;
  v42.receiver = self;
  v42.super_class = AMSOnDeviceDataSyncRequest;
  v24 = [(AMSOnDeviceDataSyncRequest *)&v42 init];
  if (v24)
  {
    v25 = [namespaceCopy copy];
    datasetNamespace = v24->_datasetNamespace;
    v24->_datasetNamespace = v25;

    v27 = [sourceCopy copy];
    idSource = v24->_idSource;
    v24->_idSource = v27;

    v29 = [domainCopy copy];
    idDomain = v24->_idDomain;
    v24->_idDomain = v29;

    v31 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v31;

    v33 = [dCopy copy];
    accountIdentity = v24->_accountIdentity;
    v24->_accountIdentity = v33;

    v35 = [nameCopy copy];
    datasetName = v24->_datasetName;
    v24->_datasetName = v35;

    v37 = [suffixCopy copy];
    idSuffix = v24->_idSuffix;
    v24->_idSuffix = v37;

    v39 = [delayCopy copy];
    afterDelay = v24->_afterDelay;
    v24->_afterDelay = v39;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v19 = 0;
    datasetNamespace = equalCopy;
LABEL_27:

    goto LABEL_28;
  }

  v5 = equalCopy;

  if (v5)
  {
    datasetNamespace = [v5 datasetNamespace];
    datasetNamespace2 = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
    if ([datasetNamespace isEqualToString:datasetNamespace2])
    {
      idSource = [v5 idSource];
      idSource2 = [(AMSOnDeviceDataSyncRequest *)self idSource];
      if ([idSource isEqualToString:idSource2])
      {
        idDomain = [v5 idDomain];
        idDomain2 = [(AMSOnDeviceDataSyncRequest *)self idDomain];
        if ([idDomain isEqualToString:idDomain2])
        {
          identifier = [v5 identifier];
          identifier2 = [(AMSOnDeviceDataSyncRequest *)self identifier];
          v29 = identifier;
          if ([identifier isEqualToString:identifier2])
          {
            accountIdentity = [v5 accountIdentity];
            accountIdentity2 = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
            v27 = accountIdentity;
            if ([accountIdentity isEqual:accountIdentity2])
            {
              datasetName = [v5 datasetName];
              datasetName2 = [(AMSOnDeviceDataSyncRequest *)self datasetName];
              v25 = datasetName;
              if ([datasetName isEqualToString:datasetName2])
              {
                idSuffix = [v5 idSuffix];
                idSuffix2 = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
                v23 = idSuffix;
                v17 = idSuffix;
                v18 = idSuffix2;
                if ([v17 isEqualToString:idSuffix2])
                {
                  afterDelay = [v5 afterDelay];
                  afterDelay2 = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
                  v19 = [afterDelay isEqualToNumber:afterDelay2];
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:

  return v19;
}

- (unint64_t)hash
{
  datasetNamespace = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
  v4 = [datasetNamespace hash];
  idSource = [(AMSOnDeviceDataSyncRequest *)self idSource];
  v6 = [idSource hash] ^ v4;
  idDomain = [(AMSOnDeviceDataSyncRequest *)self idDomain];
  v8 = [idDomain hash];
  identifier = [(AMSOnDeviceDataSyncRequest *)self identifier];
  v10 = v6 ^ v8 ^ [identifier hash];
  accountIdentity = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
  v12 = [accountIdentity hash];
  datasetName = [(AMSOnDeviceDataSyncRequest *)self datasetName];
  v14 = v12 ^ [datasetName hash];
  idSuffix = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
  v16 = v10 ^ v14 ^ [idSuffix hash];
  afterDelay = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
  v18 = [afterDelay hash];

  return v16 ^ v18;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = AMSOnDeviceDataSyncRequest;
  v3 = [(AMSOnDeviceDataSyncRequest *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" (datasetName: %@, namespace: %@, idSource: %@, idDomain: %@, identifier: %@, accountIdentity: %@, idSuffix: %@, afterDelay: %@)", self->_datasetName, self->_datasetNamespace, self->_idSource, self->_idDomain, self->_identifier, self->_accountIdentity, self->_idSuffix, self->_afterDelay];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  datasetNamespace = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
  [coderCopy encodeObject:datasetNamespace forKey:@"kCodingKeyNamespace"];

  idSource = [(AMSOnDeviceDataSyncRequest *)self idSource];
  [coderCopy encodeObject:idSource forKey:@"kCodingKeyIDSource"];

  idDomain = [(AMSOnDeviceDataSyncRequest *)self idDomain];
  [coderCopy encodeObject:idDomain forKey:@"kCodingKeyIDDomain"];

  identifier = [(AMSOnDeviceDataSyncRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCodingKeyIdentifier"];

  accountIdentity = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
  [coderCopy encodeObject:accountIdentity forKey:@"kCodingKeyAccountID"];

  datasetName = [(AMSOnDeviceDataSyncRequest *)self datasetName];
  [coderCopy encodeObject:datasetName forKey:@"kCodingKeyDatasetName"];

  idSuffix = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
  [coderCopy encodeObject:idSuffix forKey:@"kCodingKeyIDSuffix"];

  afterDelay = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
  [coderCopy encodeObject:afterDelay forKey:@"kCodingKeyAfterDelay"];
}

- (AMSOnDeviceDataSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = AMSOnDeviceDataSyncRequest;
  v5 = [(AMSOnDeviceDataSyncRequest *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyNamespace"];
    datasetNamespace = v5->_datasetNamespace;
    v5->_datasetNamespace = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDSource"];
    idSource = v5->_idSource;
    v5->_idSource = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDDomain"];
    idDomain = v5->_idDomain;
    v5->_idDomain = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccountID"];
    accountIdentity = v5->_accountIdentity;
    v5->_accountIdentity = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDatasetName"];
    datasetName = v5->_datasetName;
    v5->_datasetName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDSuffix"];
    idSuffix = v5->_idSuffix;
    v5->_idSuffix = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAfterDelay"];
    afterDelay = v5->_afterDelay;
    v5->_afterDelay = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_datasetNamespace copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_idSource copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_idDomain copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_identifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(AMSAccountIdentity *)self->_accountIdentity copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_datasetName copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_idSuffix copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSNumber *)self->_afterDelay copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  return v5;
}

@end