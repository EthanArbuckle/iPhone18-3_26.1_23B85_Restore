@interface AXMOutputAction
- (id)_initWithHandle:(id)handle;
@end

@implementation AXMOutputAction

- (id)_initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = AXMOutputAction;
  v5 = [(AXMOutputAction *)&v9 init];
  if (v5)
  {
    if (handleCopy)
    {
      v6 = handleCopy;
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