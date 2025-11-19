@interface AMSOnDeviceDataSyncRequest
- (AMSOnDeviceDataSyncRequest)initWithCoder:(id)a3;
- (AMSOnDeviceDataSyncRequest)initWithNamespace:(id)a3 idSource:(id)a4 idDomain:(id)a5 identifier:(id)a6 accountID:(id)a7 datasetName:(id)a8 idSuffix:(id)a9 afterDelay:(id)a10;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSOnDeviceDataSyncRequest

- (AMSOnDeviceDataSyncRequest)initWithNamespace:(id)a3 idSource:(id)a4 idDomain:(id)a5 identifier:(id)a6 accountID:(id)a7 datasetName:(id)a8 idSuffix:(id)a9 afterDelay:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = AMSOnDeviceDataSyncRequest;
  v24 = [(AMSOnDeviceDataSyncRequest *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    datasetNamespace = v24->_datasetNamespace;
    v24->_datasetNamespace = v25;

    v27 = [v17 copy];
    idSource = v24->_idSource;
    v24->_idSource = v27;

    v29 = [v18 copy];
    idDomain = v24->_idDomain;
    v24->_idDomain = v29;

    v31 = [v19 copy];
    identifier = v24->_identifier;
    v24->_identifier = v31;

    v33 = [v20 copy];
    accountIdentity = v24->_accountIdentity;
    v24->_accountIdentity = v33;

    v35 = [v21 copy];
    datasetName = v24->_datasetName;
    v24->_datasetName = v35;

    v37 = [v22 copy];
    idSuffix = v24->_idSuffix;
    v24->_idSuffix = v37;

    v39 = [v23 copy];
    afterDelay = v24->_afterDelay;
    v24->_afterDelay = v39;
  }

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v19 = 0;
    v6 = v4;
LABEL_27:

    goto LABEL_28;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 datasetNamespace];
    v7 = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 idSource];
      v9 = [(AMSOnDeviceDataSyncRequest *)self idSource];
      if ([v8 isEqualToString:v9])
      {
        v10 = [v5 idDomain];
        v11 = [(AMSOnDeviceDataSyncRequest *)self idDomain];
        if ([v10 isEqualToString:v11])
        {
          v12 = [v5 identifier];
          v28 = [(AMSOnDeviceDataSyncRequest *)self identifier];
          v29 = v12;
          if ([v12 isEqualToString:v28])
          {
            v13 = [v5 accountIdentity];
            v26 = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
            v27 = v13;
            if ([v13 isEqual:v26])
            {
              v14 = [v5 datasetName];
              v24 = [(AMSOnDeviceDataSyncRequest *)self datasetName];
              v25 = v14;
              if ([v14 isEqualToString:v24])
              {
                v15 = [v5 idSuffix];
                v16 = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
                v23 = v15;
                v17 = v15;
                v18 = v16;
                if ([v17 isEqualToString:v16])
                {
                  v22 = [v5 afterDelay];
                  v21 = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
                  v19 = [v22 isEqualToNumber:v21];
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
  v3 = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
  v4 = [v3 hash];
  v5 = [(AMSOnDeviceDataSyncRequest *)self idSource];
  v6 = [v5 hash] ^ v4;
  v7 = [(AMSOnDeviceDataSyncRequest *)self idDomain];
  v8 = [v7 hash];
  v9 = [(AMSOnDeviceDataSyncRequest *)self identifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
  v12 = [v11 hash];
  v13 = [(AMSOnDeviceDataSyncRequest *)self datasetName];
  v14 = v12 ^ [v13 hash];
  v15 = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
  v18 = [v17 hash];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSOnDeviceDataSyncRequest *)self datasetNamespace];
  [v4 encodeObject:v5 forKey:@"kCodingKeyNamespace"];

  v6 = [(AMSOnDeviceDataSyncRequest *)self idSource];
  [v4 encodeObject:v6 forKey:@"kCodingKeyIDSource"];

  v7 = [(AMSOnDeviceDataSyncRequest *)self idDomain];
  [v4 encodeObject:v7 forKey:@"kCodingKeyIDDomain"];

  v8 = [(AMSOnDeviceDataSyncRequest *)self identifier];
  [v4 encodeObject:v8 forKey:@"kCodingKeyIdentifier"];

  v9 = [(AMSOnDeviceDataSyncRequest *)self accountIdentity];
  [v4 encodeObject:v9 forKey:@"kCodingKeyAccountID"];

  v10 = [(AMSOnDeviceDataSyncRequest *)self datasetName];
  [v4 encodeObject:v10 forKey:@"kCodingKeyDatasetName"];

  v11 = [(AMSOnDeviceDataSyncRequest *)self idSuffix];
  [v4 encodeObject:v11 forKey:@"kCodingKeyIDSuffix"];

  v12 = [(AMSOnDeviceDataSyncRequest *)self afterDelay];
  [v4 encodeObject:v12 forKey:@"kCodingKeyAfterDelay"];
}

- (AMSOnDeviceDataSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AMSOnDeviceDataSyncRequest;
  v5 = [(AMSOnDeviceDataSyncRequest *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyNamespace"];
    datasetNamespace = v5->_datasetNamespace;
    v5->_datasetNamespace = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDSource"];
    idSource = v5->_idSource;
    v5->_idSource = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDDomain"];
    idDomain = v5->_idDomain;
    v5->_idDomain = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccountID"];
    accountIdentity = v5->_accountIdentity;
    v5->_accountIdentity = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDatasetName"];
    datasetName = v5->_datasetName;
    v5->_datasetName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIDSuffix"];
    idSuffix = v5->_idSuffix;
    v5->_idSuffix = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAfterDelay"];
    afterDelay = v5->_afterDelay;
    v5->_afterDelay = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_datasetNamespace copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_idSource copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_idDomain copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_identifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(AMSAccountIdentity *)self->_accountIdentity copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_datasetName copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_idSuffix copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSNumber *)self->_afterDelay copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  return v5;
}

@end