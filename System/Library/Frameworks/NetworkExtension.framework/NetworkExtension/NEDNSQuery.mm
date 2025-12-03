@interface NEDNSQuery
- (NEDNSQuery)initWithName:(id)name recordType:(int64_t)type recordClass:(int64_t)class;
@end

@implementation NEDNSQuery

- (NEDNSQuery)initWithName:(id)name recordType:(int64_t)type recordClass:(int64_t)class
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = NEDNSQuery;
  v10 = [(NEDNSQuery *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_recordType = type;
    v11->_recordClass = class;
  }

  return v11;
}

@end