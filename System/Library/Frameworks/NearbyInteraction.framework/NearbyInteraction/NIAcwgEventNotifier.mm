@interface NIAcwgEventNotifier
- (NIAcwgEventNotifier)initWithParentSession:(id)a3;
@end

@implementation NIAcwgEventNotifier

- (NIAcwgEventNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NIAcwgEventNotifier;
  v5 = [(NIAcwgEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

@end