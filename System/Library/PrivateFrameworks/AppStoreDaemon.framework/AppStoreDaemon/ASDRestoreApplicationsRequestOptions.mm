@interface ASDRestoreApplicationsRequestOptions
- (ASDRestoreApplicationsRequestOptions)initWithApplicationMetadata:(id)metadata;
- (ASDRestoreApplicationsRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDRestoreApplicationsRequestOptions

- (ASDRestoreApplicationsRequestOptions)initWithApplicationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = ASDRestoreApplicationsRequestOptions;
  v6 = [(ASDRestoreApplicationsRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, metadata);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDRestoreApplicationsRequestOptions allocWithZone:](ASDRestoreApplicationsRequestOptions init];
  v5->_completeDataPromise = self->_completeDataPromise;
  v5->_createAsMobileBackup = self->_createAsMobileBackup;
  v5->_createsPlaceholders = self->_createsPlaceholders;
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  items = v5->_items;
  v5->_items = v6;

  v5->_restoreApplicationData = self->_restoreApplicationData;
  v5->_skipCoordinatorCompletion = self->_skipCoordinatorCompletion;
  return v5;
}

- (ASDRestoreApplicationsRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDRestoreApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_completeDataPromise = [coderCopy decodeBoolForKey:@"completeDataPromise"];
    v5->_createAsMobileBackup = [coderCopy decodeBoolForKey:@"createsAsMobileBackup"];
    v5->_createsPlaceholders = [coderCopy decodeBoolForKey:@"createsPlaceholders"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_restoreApplicationData = [coderCopy decodeBoolForKey:@"restoreAppData"];
    v5->_skipCoordinatorCompletion = [coderCopy decodeBoolForKey:@"skipCompletion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  completeDataPromise = self->_completeDataPromise;
  coderCopy = coder;
  [coderCopy encodeBool:completeDataPromise forKey:@"completeDataPromise"];
  [coderCopy encodeBool:self->_createAsMobileBackup forKey:@"createsAsMobileBackup"];
  [coderCopy encodeBool:self->_createsPlaceholders forKey:@"createsPlaceholders"];
  items = [(ASDRestoreApplicationsRequestOptions *)self items];
  [coderCopy encodeObject:items forKey:@"items"];

  [coderCopy encodeBool:self->_restoreApplicationData forKey:@"restoreAppData"];
  [coderCopy encodeBool:self->_skipCoordinatorCompletion forKey:@"skipCompletion"];
}

@end