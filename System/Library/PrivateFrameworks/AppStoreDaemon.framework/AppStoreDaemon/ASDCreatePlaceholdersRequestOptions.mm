@interface ASDCreatePlaceholdersRequestOptions
- (ASDCreatePlaceholdersRequestOptions)initWithApplicationMetadata:(id)a3;
- (ASDCreatePlaceholdersRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDCreatePlaceholdersRequestOptions

- (ASDCreatePlaceholdersRequestOptions)initWithApplicationMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDCreatePlaceholdersRequestOptions;
  v6 = [(ASDCreatePlaceholdersRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDCreatePlaceholdersRequestOptions allocWithZone:](ASDCreatePlaceholdersRequestOptions init];
  v5->_completeDataPromise = self->_completeDataPromise;
  v5->_createAsMobileBackup = self->_createAsMobileBackup;
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  items = v5->_items;
  v5->_items = v6;

  return v5;
}

- (ASDCreatePlaceholdersRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDCreatePlaceholdersRequestOptions;
  v5 = [(ASDRequestOptions *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_completeDataPromise = [v4 decodeBoolForKey:@"completeDataPromise"];
    v5->_createAsMobileBackup = [v4 decodeBoolForKey:@"createAsMobileBackup"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ASDCreatePlaceholdersRequestOptions *)self items];
  [v5 encodeObject:v4 forKey:@"items"];

  [v5 encodeBool:-[ASDCreatePlaceholdersRequestOptions completeDataPromise](self forKey:{"completeDataPromise"), @"completeDataPromise"}];
  [v5 encodeBool:-[ASDCreatePlaceholdersRequestOptions createAsMobileBackup](self forKey:{"createAsMobileBackup"), @"createAsMobileBackup"}];
}

@end