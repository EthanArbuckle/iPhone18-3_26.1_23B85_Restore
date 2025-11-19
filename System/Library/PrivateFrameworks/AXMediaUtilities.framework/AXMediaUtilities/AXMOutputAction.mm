@interface AXMOutputAction
- (id)_initWithHandle:(id)a3;
@end

@implementation AXMOutputAction

- (id)_initWithHandle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXMOutputAction;
  v5 = [(AXMOutputAction *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(AXMOutputActionHandle);
    }

    handle = v5->_handle;
    v5->_handle = v6;
  }

  return v5;
}

@end