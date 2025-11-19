@interface ARPHomeControlCorrelationsArchive
- (ARPHomeControlCorrelationsArchive)initWithCoder:(id)a3;
- (ARPHomeControlCorrelationsArchive)initWithMicrolocationsCorrelationsDictionary:(id)a3 nextActionCorrelationsDictionary:(id)a4 archiveDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPHomeControlCorrelationsArchive

- (ARPHomeControlCorrelationsArchive)initWithMicrolocationsCorrelationsDictionary:(id)a3 nextActionCorrelationsDictionary:(id)a4 archiveDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ARPHomeControlCorrelationsArchive;
  v12 = [(ARPHomeControlCorrelationsArchive *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_microlocationCorrelationsDictionary, a3);
    objc_storeStrong(&v13->_nextActionCorrelationsDictionary, a4);
    objc_storeStrong(&v13->_archiveDate, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ARPHomeControlCorrelationsArchive *)self microlocationCorrelationsDictionary];
  v6 = [(ARPHomeControlCorrelationsArchive *)self nextActionCorrelationsDictionary];
  v7 = [(ARPHomeControlCorrelationsArchive *)self archiveDate];
  v8 = [v4 initWithMicrolocationsCorrelationsDictionary:v5 nextActionCorrelationsDictionary:v6 archiveDate:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ARPHomeControlCorrelationsArchive *)self microlocationCorrelationsDictionary];
  v6 = NSStringFromSelector(sel_microlocationCorrelationsDictionary);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ARPHomeControlCorrelationsArchive *)self nextActionCorrelationsDictionary];
  v8 = NSStringFromSelector(sel_nextActionCorrelationsDictionary);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(ARPHomeControlCorrelationsArchive *)self archiveDate];
  v9 = NSStringFromSelector(sel_archiveDate);
  [v4 encodeObject:v10 forKey:v9];
}

- (ARPHomeControlCorrelationsArchive)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = NSStringFromSelector(sel_microlocationCorrelationsDictionary);
  v12 = [v5 decodeObjectOfClasses:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_nextActionCorrelationsDictionary);
  v14 = [v5 decodeObjectOfClasses:v10 forKey:v13];

  v15 = NSStringFromSelector(sel_archiveDate);
  v16 = [v5 decodeObjectOfClasses:v10 forKey:v15];

  v17 = [(ARPHomeControlCorrelationsArchive *)self initWithMicrolocationsCorrelationsDictionary:v12 nextActionCorrelationsDictionary:v14 archiveDate:v16];
  return v17;
}

@end