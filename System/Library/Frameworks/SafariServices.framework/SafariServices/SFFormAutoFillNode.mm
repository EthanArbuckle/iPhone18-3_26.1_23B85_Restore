@interface SFFormAutoFillNode
+ (id)autoFillNodeWithNodeHandle:(id)handle;
- (CGRect)elementBounds;
- (SFFormAutoFillNode)initWithJSWrapper:(OpaqueJSValue *)wrapper inContext:(OpaqueJSContext *)context;
- (SFFormAutoFillNode)initWithNodeHandle:(id)handle;
- (int64_t)htmlInputElementAutoFillButtonType;
- (int64_t)htmlInputElementLastAutoFillButtonType;
- (void)setHTMLInputElementAutoFilledWithAutomaticStrongPassword:(BOOL)password;
- (void)setSpinnerVisibilityOnHTMLInputElement:(BOOL)element;
@end

@implementation SFFormAutoFillNode

+ (id)autoFillNodeWithNodeHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[self alloc] initWithNodeHandle:handleCopy];

  return v5;
}

- (SFFormAutoFillNode)initWithNodeHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = SFFormAutoFillNode;
  v6 = [(SFFormAutoFillNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nodeHandle, handle);
    v8 = v7;
  }

  return v7;
}

- (SFFormAutoFillNode)initWithJSWrapper:(OpaqueJSValue *)wrapper inContext:(OpaqueJSContext *)context
{
  wrapperCopy = wrapper;
  selfCopy = self;
  if (wrapper)
  {
    v13.receiver = self;
    v13.super_class = SFFormAutoFillNode;
    selfCopy = [(SFFormAutoFillNode *)&v13 init];
    if (selfCopy)
    {
      v7 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(context)];
      v8 = MEMORY[0x1E6985390];
      v9 = [MEMORY[0x1E696EB58] valueWithJSValueRef:wrapperCopy inContext:v7];
      v10 = [v8 nodeHandleWithJSValue:v9 inContext:v7];
      nodeHandle = selfCopy->_nodeHandle;
      selfCopy->_nodeHandle = v10;

      if (selfCopy->_nodeHandle)
      {
        wrapperCopy = selfCopy;
      }

      else
      {
        wrapperCopy = 0;
      }
    }

    else
    {
      wrapperCopy = 0;
    }
  }

  return wrapperCopy;
}

- (CGRect)elementBounds
{
  [(WKWebProcessPlugInNodeHandle *)self->_nodeHandle elementBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setHTMLInputElementAutoFilledWithAutomaticStrongPassword:(BOOL)password
{
  passwordCopy = password;
  nodeHandle = self->_nodeHandle;
  if (password)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(WKWebProcessPlugInNodeHandle *)nodeHandle setHTMLInputElementAutoFillButtonEnabledWithButtonType:v6];
  v7 = self->_nodeHandle;

  [(WKWebProcessPlugInNodeHandle *)v7 setHTMLInputElementIsAutoFilled:passwordCopy];
}

- (int64_t)htmlInputElementAutoFillButtonType
{
  htmlInputElementAutoFillButtonType = [(WKWebProcessPlugInNodeHandle *)self->_nodeHandle htmlInputElementAutoFillButtonType];
  if ((htmlInputElementAutoFillButtonType - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D47DD048[htmlInputElementAutoFillButtonType - 1];
  }
}

- (int64_t)htmlInputElementLastAutoFillButtonType
{
  htmlInputElementLastAutoFillButtonType = [(WKWebProcessPlugInNodeHandle *)self->_nodeHandle htmlInputElementLastAutoFillButtonType];
  if ((htmlInputElementLastAutoFillButtonType - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D47DD048[htmlInputElementLastAutoFillButtonType - 1];
  }
}

- (void)setSpinnerVisibilityOnHTMLInputElement:(BOOL)element
{
  nodeHandle = self->_nodeHandle;
  if (element)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  [(WKWebProcessPlugInNodeHandle *)nodeHandle setHTMLInputElementAutoFillButtonEnabledWithButtonType:v4];
}

@end