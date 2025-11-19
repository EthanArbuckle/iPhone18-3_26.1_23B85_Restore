@interface AVTArchiverBasedStoreRoot
- (AVTArchiverBasedStoreRoot)initWithCoder:(id)a3;
- (AVTArchiverBasedStoreRoot)initWithDomains:(id)a3 records:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTArchiverBasedStoreRoot

- (AVTArchiverBasedStoreRoot)initWithDomains:(id)a3 records:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AVTArchiverBasedStoreRoot;
  v8 = [(AVTArchiverBasedStoreRoot *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domains = v8->_domains;
    v8->_domains = v9;

    v11 = [v7 copy];
    records = v8->_records;
    v8->_records = v11;
  }

  return v8;
}

- (AVTArchiverBasedStoreRoot)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"domains"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"records"];

  v13 = [(AVTArchiverBasedStoreRoot *)self initWithDomains:v8 records:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AVTArchiverBasedStoreRoot *)self domains];
  [v4 encodeObject:v5 forKey:@"domains"];

  v6 = [(AVTArchiverBasedStoreRoot *)self records];
  [v4 encodeObject:v6 forKey:@"records"];
}

@end