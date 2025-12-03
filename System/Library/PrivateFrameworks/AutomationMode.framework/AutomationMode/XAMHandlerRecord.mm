@interface XAMHandlerRecord
- (id)initWithQueue:(void *)queue block:;
@end

@implementation XAMHandlerRecord

- (id)initWithQueue:(void *)queue block:
{
  v6 = a2;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = XAMHandlerRecord;
    queueCopy = queue;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    objc_storeStrong(v8 + 1, a2);
    v9 = [queueCopy copy];

    v10 = v8[2];
    v8[2] = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end