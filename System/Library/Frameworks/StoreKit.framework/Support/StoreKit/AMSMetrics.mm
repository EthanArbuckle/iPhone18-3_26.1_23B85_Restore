@interface AMSMetrics
+ (id)lib_sharedInstanceWithContainerId:(id)id;
+ (id)lib_sharedMetricsQueue;
@end

@implementation AMSMetrics

+ (id)lib_sharedInstanceWithContainerId:(id)id
{
  idCopy = id;
  if (qword_1003D3A58 != -1)
  {
    sub_1002C7770();
  }

  v4 = [qword_1003D3A50 objectForKey:idCopy];
  if (!v4)
  {
    v5 = [AMSMetrics alloc];
    v6 = +[_TtC9storekitd3Bag defaultBag];
    v4 = [v5 initWithContainerID:idCopy bag:v6];

    [qword_1003D3A50 setObject:v4 forKey:idCopy];
  }

  return v4;
}

+ (id)lib_sharedMetricsQueue
{
  if (qword_1003D3A68 != -1)
  {
    sub_1002C7784();
  }

  v3 = qword_1003D3A60;

  return v3;
}

@end