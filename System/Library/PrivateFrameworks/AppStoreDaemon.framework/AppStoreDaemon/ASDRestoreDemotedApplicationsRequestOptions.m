@interface ASDRestoreDemotedApplicationsRequestOptions
- (ASDRestoreDemotedApplicationsRequestOptions)initWithAccountID:(id)a3 appleID:(id)a4;
- (ASDRestoreDemotedApplicationsRequestOptions)initWithBundleIDs:(id)a3;
- (ASDRestoreDemotedApplicationsRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDRestoreDemotedApplicationsRequestOptions

- (ASDRestoreDemotedApplicationsRequestOptions)initWithAccountID:(id)a3 appleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v8 = [(ASDRestoreDemotedApplicationsRequestOptions *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accountID = v8->_accountID;
    v8->_accountID = v9;

    v11 = [v7 copy];
    appleID = v8->_appleID;
    v8->_appleID = v11;
  }

  return v8;
}

- (ASDRestoreDemotedApplicationsRequestOptions)initWithBundleIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v5 = [(ASDRestoreDemotedApplicationsRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDRestoreDemotedApplicationsRequestOptions allocWithZone:](ASDRestoreDemotedApplicationsRequestOptions init];
  v6 = [(NSNumber *)self->_accountID copyWithZone:a3];
  accountID = v5->_accountID;
  v5->_accountID = v6;

  v8 = [(NSString *)self->_appleID copyWithZone:a3];
  appleID = v5->_appleID;
  v5->_appleID = v8;

  v10 = [(NSArray *)self->_bundleIDs copyWithZone:a3];
  bundleIDs = v5->_bundleIDs;
  v5->_bundleIDs = v10;

  return v5;
}

- (ASDRestoreDemotedApplicationsRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountID = self->_accountID;
  v5 = a3;
  [v5 encodeObject:accountID forKey:@"accountID"];
  [v5 encodeObject:self->_appleID forKey:@"appleID"];
  [v5 encodeObject:self->_bundleIDs forKey:@"bundleIDs"];
}

@end