@interface DAHistoryEntry
- (DAHistoryEntry)initWithCoder:(id)a3;
- (DAHistoryEntry)initWithTestSuiteName:(id)a3 date:(id)a4 skipped:(BOOL)a5 results:(id)a6;
- (DAHistoryEntry)initWithTestSuiteName:(id)a3 skipped:(BOOL)a4;
- (DAHistoryEntry)initWithTestSuiteName:(id)a3 skipped:(BOOL)a4 results:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAHistoryEntry

- (DAHistoryEntry)initWithTestSuiteName:(id)a3 skipped:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSDate date];
  v8 = [(DAHistoryEntry *)self initWithTestSuiteName:v6 date:v7 skipped:v4];

  return v8;
}

- (DAHistoryEntry)initWithTestSuiteName:(id)a3 skipped:(BOOL)a4 results:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[NSDate date];
  v11 = [(DAHistoryEntry *)self initWithTestSuiteName:v9 date:v10 skipped:v5 results:v8];

  return v11;
}

- (DAHistoryEntry)initWithTestSuiteName:(id)a3 date:(id)a4 skipped:(BOOL)a5 results:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DAHistoryEntry;
  v14 = [(DAHistoryEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_testSuiteName, a3);
    objc_storeStrong(&v15->_date, a4);
    v15->_skipped = a5;
    objc_storeStrong(&v15->_results, a6);
  }

  return v15;
}

- (DAHistoryEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAHistoryEntry *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testSuiteName"];
    testSuiteName = v5->_testSuiteName;
    v5->_testSuiteName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_skipped = [v4 decodeBoolForKey:@"skipped"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"results"];
    results = v5->_results;
    v5->_results = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAHistoryEntry *)self testSuiteName];
  [v4 encodeObject:v5 forKey:@"testSuiteName"];

  v6 = [(DAHistoryEntry *)self date];
  [v4 encodeObject:v6 forKey:@"date"];

  [v4 encodeBool:-[DAHistoryEntry skipped](self forKey:{"skipped"), @"skipped"}];
  v7 = [(DAHistoryEntry *)self results];
  [v4 encodeObject:v7 forKey:@"results"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_testSuiteName copyWithZone:a3];
  v7 = [(NSDate *)self->_date copyWithZone:a3];
  v8 = [v5 initWithTestSuiteName:v6 date:v7 skipped:self->_skipped];

  return v8;
}

- (id)description
{
  v3 = [(DAHistoryEntry *)self testSuiteName];
  v4 = [(DAHistoryEntry *)self date];
  v5 = [NSString stringWithFormat:@"testSuiteName: %@ date: %@; skipped: %d", v3, v4, [(DAHistoryEntry *)self skipped]];;

  return v5;
}

@end