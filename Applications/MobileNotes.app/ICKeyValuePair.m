@interface ICKeyValuePair
- (ICKeyValuePair)initWithKey:(id)a3 value:(id)a4;
@end

@implementation ICKeyValuePair

- (ICKeyValuePair)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICKeyValuePair;
  v9 = [(ICKeyValuePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end