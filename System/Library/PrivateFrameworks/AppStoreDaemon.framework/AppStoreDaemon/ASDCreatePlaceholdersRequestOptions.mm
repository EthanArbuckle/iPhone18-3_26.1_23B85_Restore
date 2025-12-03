@interface ASDCreatePlaceholdersRequestOptions
- (ASDCreatePlaceholdersRequestOptions)initWithApplicationMetadata:(id)metadata;
- (ASDCreatePlaceholdersRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDCreatePlaceholdersRequestOptions

- (ASDCreatePlaceholdersRequestOptions)initWithApplicationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = ASDCreatePlaceholdersRequestOptions;
  v6 = [(ASDCreatePlaceholdersRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, metadata);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDCreatePlaceholdersRequestOptions allocWithZone:](ASDCreatePlaceholdersRequestOptions init];
  v5->_completeDataPromise = self->_completeDataPromise;
  v5->_createAsMobileBackup = self->_createAsMobileBackup;
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  items = v5->_items;
  v5->_items = v6;

  return v5;
}

- (ASDCreatePlaceholdersRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDCreatePlaceholdersRequestOptions;
  v5 = [(ASDRequestOptions *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_completeDataPromise = [coderCopy decodeBoolForKey:@"completeDataPromise"];
    v5->_createAsMobileBackup = [coderCopy decodeBoolForKey:@"createAsMobileBackup"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(ASDCreatePlaceholdersRequestOptions *)self items];
  [coderCopy encodeObject:items forKey:@"items"];

  [coderCopy encodeBool:-[ASDCreatePlaceholdersRequestOptions completeDataPromise](self forKey:{"completeDataPromise"), @"completeDataPromise"}];
  [coderCopy encodeBool:-[ASDCreatePlaceholdersRequestOptions createAsMobileBackup](self forKey:{"createAsMobileBackup"), @"createAsMobileBackup"}];
}

@end