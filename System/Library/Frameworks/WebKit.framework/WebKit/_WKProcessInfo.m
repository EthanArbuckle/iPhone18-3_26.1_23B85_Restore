@interface _WKProcessInfo
- (_WKProcessInfo)initWithTaskInfo:(const TaskInfo *)a3;
@end

@implementation _WKProcessInfo

- (_WKProcessInfo)initWithTaskInfo:(const TaskInfo *)a3
{
  v9.receiver = self;
  v9.super_class = _WKProcessInfo;
  result = [(_WKProcessInfo *)&v9 init];
  if (result)
  {
    result->_pid = a3->var0;
    var1 = a3->var1;
    v6 = var1 == 1;
    v7 = var1 == 0;
    v8 = 2;
    if (!v7)
    {
      v8 = v6;
    }

    result->_state = v8;
    result->_totalUserCPUTime = a3->var2.m_value;
    result->_totalSystemCPUTime = a3->var3.m_value;
    result->_physicalFootprint = a3->var4;
  }

  return result;
}

@end