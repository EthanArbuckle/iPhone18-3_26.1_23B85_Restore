@interface ASDRestoreApplicationsRequestOptions
- (ASDRestoreApplicationsRequestOptions)initWithApplicationMetadata:(id)a3;
- (ASDRestoreApplicationsRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDRestoreApplicationsRequestOptions

- (ASDRestoreApplicationsRequestOptions)initWithApplicationMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDRestoreApplicationsRequestOptions;
  v6 = [(ASDRestoreApplicationsRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDRestoreApplicationsRequestOptions allocWithZone:](ASDRestoreApplicationsRequestOptions init];
  v5->_completeDataPromise = self->_completeDataPromise;
  v5->_createAsMobileBackup = self->_createAsMobileBackup;
  v5->_createsPlaceholders = self->_createsPlaceholders;
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  items = v5->_items;
  v5->_items = v6;

  v5->_restoreApplicationData = self->_restoreApplicationData;
  v5->_skipCoordinatorCompletion = self->_skipCoordinatorCompletion;
  return v5;
}

- (ASDRestoreApplicationsRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDRestoreApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_completeDataPromise = [v4 decodeBoolForKey:@"completeDataPromise"];
    v5->_createAsMobileBackup = [v4 decodeBoolForKey:@"createsAsMobileBackup"];
    v5->_createsPlaceholders = [v4 decodeBoolForKey:@"createsPlaceholders"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_restoreApplicationData = [v4 decodeBoolForKey:@"restoreAppData"];
    v5->_skipCoordinatorCompletion = [v4 decodeBoolForKey:@"skipCompletion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  completeDataPromise = self->_completeDataPromise;
  v6 = a3;
  [v6 encodeBool:completeDataPromise forKey:@"completeDataPromise"];
  [v6 encodeBool:self->_createAsMobileBackup forKey:@"createsAsMobileBackup"];
  [v6 encodeBool:self->_createsPlaceholders forKey:@"createsPlaceholders"];
  v5 = [(ASDRestoreApplicationsRequestOptions *)self items];
  [v6 encodeObject:v5 forKey:@"items"];

  [v6 encodeBool:self->_restoreApplicationData forKey:@"restoreAppData"];
  [v6 encodeBool:self->_skipCoordinatorCompletion forKey:@"skipCompletion"];
}

@end