@interface SecuritydXPCCallback
- (SecuritydXPCCallback)initWithCallback:(id)callback;
@end

@implementation SecuritydXPCCallback

- (SecuritydXPCCallback)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = SecuritydXPCCallback;
  v5 = [(SecuritydXPCCallback *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

@end