@interface ASDRestoreDemotedApplicationsRequestOptions
- (ASDRestoreDemotedApplicationsRequestOptions)initWithAccountID:(id)d appleID:(id)iD;
- (ASDRestoreDemotedApplicationsRequestOptions)initWithBundleIDs:(id)ds;
- (ASDRestoreDemotedApplicationsRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDRestoreDemotedApplicationsRequestOptions

- (ASDRestoreDemotedApplicationsRequestOptions)initWithAccountID:(id)d appleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v8 = [(ASDRestoreDemotedApplicationsRequestOptions *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    accountID = v8->_accountID;
    v8->_accountID = v9;

    v11 = [iDCopy copy];
    appleID = v8->_appleID;
    v8->_appleID = v11;
  }

  return v8;
}

- (ASDRestoreDemotedApplicationsRequestOptions)initWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v5 = [(ASDRestoreDemotedApplicationsRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDRestoreDemotedApplicationsRequestOptions allocWithZone:](ASDRestoreDemotedApplicationsRequestOptions init];
  v6 = [(NSNumber *)self->_accountID copyWithZone:zone];
  accountID = v5->_accountID;
  v5->_accountID = v6;

  v8 = [(NSString *)self->_appleID copyWithZone:zone];
  appleID = v5->_appleID;
  v5->_appleID = v8;

  v10 = [(NSArray *)self->_bundleIDs copyWithZone:zone];
  bundleIDs = v5->_bundleIDs;
  v5->_bundleIDs = v10;

  return v5;
}

- (ASDRestoreDemotedApplicationsRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ASDRestoreDemotedApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountID = self->_accountID;
  coderCopy = coder;
  [coderCopy encodeObject:accountID forKey:@"accountID"];
  [coderCopy encodeObject:self->_appleID forKey:@"appleID"];
  [coderCopy encodeObject:self->_bundleIDs forKey:@"bundleIDs"];
}

@end