@interface DAHistoryEntry
- (DAHistoryEntry)initWithCoder:(id)coder;
- (DAHistoryEntry)initWithTestSuiteName:(id)name date:(id)date skipped:(BOOL)skipped results:(id)results;
- (DAHistoryEntry)initWithTestSuiteName:(id)name skipped:(BOOL)skipped;
- (DAHistoryEntry)initWithTestSuiteName:(id)name skipped:(BOOL)skipped results:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAHistoryEntry

- (DAHistoryEntry)initWithTestSuiteName:(id)name skipped:(BOOL)skipped
{
  skippedCopy = skipped;
  nameCopy = name;
  v7 = +[NSDate date];
  v8 = [(DAHistoryEntry *)self initWithTestSuiteName:nameCopy date:v7 skipped:skippedCopy];

  return v8;
}

- (DAHistoryEntry)initWithTestSuiteName:(id)name skipped:(BOOL)skipped results:(id)results
{
  skippedCopy = skipped;
  resultsCopy = results;
  nameCopy = name;
  v10 = +[NSDate date];
  v11 = [(DAHistoryEntry *)self initWithTestSuiteName:nameCopy date:v10 skipped:skippedCopy results:resultsCopy];

  return v11;
}

- (DAHistoryEntry)initWithTestSuiteName:(id)name date:(id)date skipped:(BOOL)skipped results:(id)results
{
  nameCopy = name;
  dateCopy = date;
  resultsCopy = results;
  v17.receiver = self;
  v17.super_class = DAHistoryEntry;
  v14 = [(DAHistoryEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_testSuiteName, name);
    objc_storeStrong(&v15->_date, date);
    v15->_skipped = skipped;
    objc_storeStrong(&v15->_results, results);
  }

  return v15;
}

- (DAHistoryEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DAHistoryEntry *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testSuiteName"];
    testSuiteName = v5->_testSuiteName;
    v5->_testSuiteName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_skipped = [coderCopy decodeBoolForKey:@"skipped"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"results"];
    results = v5->_results;
    v5->_results = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  testSuiteName = [(DAHistoryEntry *)self testSuiteName];
  [coderCopy encodeObject:testSuiteName forKey:@"testSuiteName"];

  date = [(DAHistoryEntry *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeBool:-[DAHistoryEntry skipped](self forKey:{"skipped"), @"skipped"}];
  results = [(DAHistoryEntry *)self results];
  [coderCopy encodeObject:results forKey:@"results"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_testSuiteName copyWithZone:zone];
  v7 = [(NSDate *)self->_date copyWithZone:zone];
  v8 = [v5 initWithTestSuiteName:v6 date:v7 skipped:self->_skipped];

  return v8;
}

- (id)description
{
  testSuiteName = [(DAHistoryEntry *)self testSuiteName];
  date = [(DAHistoryEntry *)self date];
  v5 = [NSString stringWithFormat:@"testSuiteName: %@ date: %@; skipped: %d", testSuiteName, date, [(DAHistoryEntry *)self skipped]];;

  return v5;
}

@end