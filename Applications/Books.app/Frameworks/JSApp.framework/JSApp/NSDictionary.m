@interface NSDictionary
- (id)jsa_stringDictionaryForRequestHeaderOrURLParam;
@end

@implementation NSDictionary

- (id)jsa_stringDictionaryForRequestHeaderOrURLParam
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_9DB4;
  v6[3] = &unk_B2688;
  v7 = objc_opt_new();
  v3 = v7;
  [(NSDictionary *)self enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end