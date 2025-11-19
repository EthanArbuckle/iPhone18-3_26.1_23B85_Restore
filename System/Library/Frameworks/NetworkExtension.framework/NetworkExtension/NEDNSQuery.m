@interface NEDNSQuery
- (NEDNSQuery)initWithName:(id)a3 recordType:(int64_t)a4 recordClass:(int64_t)a5;
@end

@implementation NEDNSQuery

- (NEDNSQuery)initWithName:(id)a3 recordType:(int64_t)a4 recordClass:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = NEDNSQuery;
  v10 = [(NEDNSQuery *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    v11->_recordType = a4;
    v11->_recordClass = a5;
  }

  return v11;
}

@end