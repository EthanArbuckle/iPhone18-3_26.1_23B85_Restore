@interface KBBMetricUtility
+ (BOOL)isValidMetricIdTag:(id)a3 forClass:(Class)a4;
@end

@implementation KBBMetricUtility

+ (BOOL)isValidMetricIdTag:(id)a3 forClass:(Class)a4
{
  v4 = qword_10037A558[0];
  v5 = a3;
  if (v4 != -1)
  {
    sub_100285C84();
  }

  v6 = [qword_10037A550 objectForKey:v5];

  return v6 != 0;
}

@end