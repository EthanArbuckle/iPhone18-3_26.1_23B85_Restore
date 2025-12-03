@interface AVTArchiverBasedStoreRoot
- (AVTArchiverBasedStoreRoot)initWithCoder:(id)coder;
- (AVTArchiverBasedStoreRoot)initWithDomains:(id)domains records:(id)records;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTArchiverBasedStoreRoot

- (AVTArchiverBasedStoreRoot)initWithDomains:(id)domains records:(id)records
{
  domainsCopy = domains;
  recordsCopy = records;
  v14.receiver = self;
  v14.super_class = AVTArchiverBasedStoreRoot;
  v8 = [(AVTArchiverBasedStoreRoot *)&v14 init];
  if (v8)
  {
    v9 = [domainsCopy copy];
    domains = v8->_domains;
    v8->_domains = v9;

    v11 = [recordsCopy copy];
    records = v8->_records;
    v8->_records = v11;
  }

  return v8;
}

- (AVTArchiverBasedStoreRoot)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"domains"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"records"];

  v13 = [(AVTArchiverBasedStoreRoot *)self initWithDomains:v8 records:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  domains = [(AVTArchiverBasedStoreRoot *)self domains];
  [coderCopy encodeObject:domains forKey:@"domains"];

  records = [(AVTArchiverBasedStoreRoot *)self records];
  [coderCopy encodeObject:records forKey:@"records"];
}

@end