@interface ARPHomeControlCorrelationsArchive
- (ARPHomeControlCorrelationsArchive)initWithCoder:(id)coder;
- (ARPHomeControlCorrelationsArchive)initWithMicrolocationsCorrelationsDictionary:(id)dictionary nextActionCorrelationsDictionary:(id)correlationsDictionary archiveDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPHomeControlCorrelationsArchive

- (ARPHomeControlCorrelationsArchive)initWithMicrolocationsCorrelationsDictionary:(id)dictionary nextActionCorrelationsDictionary:(id)correlationsDictionary archiveDate:(id)date
{
  dictionaryCopy = dictionary;
  correlationsDictionaryCopy = correlationsDictionary;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = ARPHomeControlCorrelationsArchive;
  v12 = [(ARPHomeControlCorrelationsArchive *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_microlocationCorrelationsDictionary, dictionary);
    objc_storeStrong(&v13->_nextActionCorrelationsDictionary, correlationsDictionary);
    objc_storeStrong(&v13->_archiveDate, date);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  microlocationCorrelationsDictionary = [(ARPHomeControlCorrelationsArchive *)self microlocationCorrelationsDictionary];
  nextActionCorrelationsDictionary = [(ARPHomeControlCorrelationsArchive *)self nextActionCorrelationsDictionary];
  archiveDate = [(ARPHomeControlCorrelationsArchive *)self archiveDate];
  v8 = [v4 initWithMicrolocationsCorrelationsDictionary:microlocationCorrelationsDictionary nextActionCorrelationsDictionary:nextActionCorrelationsDictionary archiveDate:archiveDate];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  microlocationCorrelationsDictionary = [(ARPHomeControlCorrelationsArchive *)self microlocationCorrelationsDictionary];
  v6 = NSStringFromSelector(sel_microlocationCorrelationsDictionary);
  [coderCopy encodeObject:microlocationCorrelationsDictionary forKey:v6];

  nextActionCorrelationsDictionary = [(ARPHomeControlCorrelationsArchive *)self nextActionCorrelationsDictionary];
  v8 = NSStringFromSelector(sel_nextActionCorrelationsDictionary);
  [coderCopy encodeObject:nextActionCorrelationsDictionary forKey:v8];

  archiveDate = [(ARPHomeControlCorrelationsArchive *)self archiveDate];
  v9 = NSStringFromSelector(sel_archiveDate);
  [coderCopy encodeObject:archiveDate forKey:v9];
}

- (ARPHomeControlCorrelationsArchive)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = NSStringFromSelector(sel_microlocationCorrelationsDictionary);
  v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_nextActionCorrelationsDictionary);
  v14 = [coderCopy decodeObjectOfClasses:v10 forKey:v13];

  v15 = NSStringFromSelector(sel_archiveDate);
  v16 = [coderCopy decodeObjectOfClasses:v10 forKey:v15];

  v17 = [(ARPHomeControlCorrelationsArchive *)self initWithMicrolocationsCorrelationsDictionary:v12 nextActionCorrelationsDictionary:v14 archiveDate:v16];
  return v17;
}

@end