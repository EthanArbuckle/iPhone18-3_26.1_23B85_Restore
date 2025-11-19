@interface OCSharedLoggable
- (OCSharedLoggable)initWithName:(const char *)a3 qosClass:(unsigned int)a4 logContext:(OsLogContext)a5;
- (OCSharedLoggable)initWithQueue:(queue)a3 logContext:(OsLogContext)a4;
- (OsLogContext)getLogContext;
- (id).cxx_construct;
- (queue)getQueue;
- (void)setQueue:(queue)a3;
@end

@implementation OCSharedLoggable

- (OsLogContext)getLogContext
{
  v3 = ctu::OsLogContext::OsLogContext(v2, &self->_logContext);
  result.handle.fRef = v4;
  result.domain = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (queue)getQueue
{
  fObj = self->_queue.fObj.fObj;
  *v2 = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  return fObj;
}

- (OCSharedLoggable)initWithQueue:(queue)a3 logContext:(OsLogContext)a4
{
  v10.receiver = self;
  v10.super_class = OCSharedLoggable;
  v5 = [(OCSharedLoggable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = *a3.fObj.fObj;
    *a3.fObj.fObj = 0;
    fObj = v5->_queue.fObj.fObj;
    v6->_queue.fObj.fObj = v7;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    ctu::OsLogContext::operator=();
  }

  return v6;
}

- (OCSharedLoggable)initWithName:(const char *)a3 qosClass:(unsigned int)a4 logContext:(OsLogContext)a5
{
  domain = a5.domain;
  v8 = dispatch_queue_attr_make_with_qos_class(0, a4, 0);
  object = dispatch_queue_create(a3, v8);
  ctu::OsLogContext::OsLogContext(v11, domain);
  v9 = [(OCSharedLoggable *)self initWithQueue:&object logContext:v11];
  ctu::OsLogContext::~OsLogContext(v11);
  if (object)
  {
    dispatch_release(object);
  }

  return v9;
}

- (void)setQueue:(queue)a3
{
  v4 = *a3.fObj.fObj;
  if (*a3.fObj.fObj)
  {
    dispatch_retain(*a3.fObj.fObj);
  }

  fObj = self->_queue.fObj.fObj;
  self->_queue.fObj.fObj = v4;
  if (fObj)
  {

    dispatch_release(fObj);
  }
}

@end