@interface _TUIResourceLoaderTask
- (_TUIResourceLoaderTask)initWithSessionDataTask:(id)a3;
@end

@implementation _TUIResourceLoaderTask

- (_TUIResourceLoaderTask)initWithSessionDataTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIResourceLoaderTask;
  v6 = [(_TUIResourceLoaderTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionDataTask, a3);
  }

  return v7;
}

@end