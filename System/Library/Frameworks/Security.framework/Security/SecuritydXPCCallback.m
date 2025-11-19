@interface SecuritydXPCCallback
- (SecuritydXPCCallback)initWithCallback:(id)a3;
@end

@implementation SecuritydXPCCallback

- (SecuritydXPCCallback)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecuritydXPCCallback;
  v5 = [(SecuritydXPCCallback *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

@end