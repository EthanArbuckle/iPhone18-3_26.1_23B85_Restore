@interface _WKProcessInfo
- (_WKProcessInfo)initWithTaskInfo:(const TaskInfo *)info;
@end

@implementation _WKProcessInfo

- (_WKProcessInfo)initWithTaskInfo:(const TaskInfo *)info
{
  v9.receiver = self;
  v9.super_class = _WKProcessInfo;
  result = [(_WKProcessInfo *)&v9 init];
  if (result)
  {
    result->_pid = info->var0;
    var1 = info->var1;
    v6 = var1 == 1;
    v7 = var1 == 0;
    v8 = 2;
    if (!v7)
    {
      v8 = v6;
    }

    result->_state = v8;
    result->_totalUserCPUTime = info->var2.m_value;
    result->_totalSystemCPUTime = info->var3.m_value;
    result->_physicalFootprint = info->var4;
  }

  return result;
}

@end