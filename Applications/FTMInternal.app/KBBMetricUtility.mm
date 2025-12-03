@interface KBBMetricUtility
+ (BOOL)isValidMetricIdTag:(id)tag forClass:(Class)class;
@end

@implementation KBBMetricUtility

+ (BOOL)isValidMetricIdTag:(id)tag forClass:(Class)class
{
  v4 = qword_10037A558[0];
  tagCopy = tag;
  if (v4 != -1)
  {
    sub_100285C84();
  }

  v6 = [qword_10037A550 objectForKey:tagCopy];

  return v6 != 0;
}

@end