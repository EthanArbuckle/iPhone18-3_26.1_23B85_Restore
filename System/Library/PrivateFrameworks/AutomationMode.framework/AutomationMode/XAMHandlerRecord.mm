@interface XAMHandlerRecord
- (id)initWithQueue:(void *)a3 block:;
@end

@implementation XAMHandlerRecord

- (id)initWithQueue:(void *)a3 block:
{
  v6 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = XAMHandlerRecord;
    v7 = a3;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    objc_storeStrong(v8 + 1, a2);
    v9 = [v7 copy];

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