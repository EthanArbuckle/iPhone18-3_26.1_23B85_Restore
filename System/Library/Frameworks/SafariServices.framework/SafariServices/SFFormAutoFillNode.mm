@interface SFFormAutoFillNode
+ (id)autoFillNodeWithNodeHandle:(id)a3;
- (CGRect)elementBounds;
- (SFFormAutoFillNode)initWithJSWrapper:(OpaqueJSValue *)a3 inContext:(OpaqueJSContext *)a4;
- (SFFormAutoFillNode)initWithNodeHandle:(id)a3;
- (int64_t)htmlInputElementAutoFillButtonType;
- (int64_t)htmlInputElementLastAutoFillButtonType;
- (void)setHTMLInputElementAutoFilledWithAutomaticStrongPassword:(BOOL)a3;
- (void)setSpinnerVisibilityOnHTMLInputElement:(BOOL)a3;
@end

@implementation SFFormAutoFillNode

+ (id)autoFillNodeWithNodeHandle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNodeHandle:v4];

  return v5;
}

- (SFFormAutoFillNode)initWithNodeHandle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFFormAutoFillNode;
  v6 = [(SFFormAutoFillNode *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nodeHandle, a3);
    v8 = v7;
  }

  return v7;
}

- (SFFormAutoFillNode)initWithJSWrapper:(OpaqueJSValue *)a3 inContext:(OpaqueJSContext *)a4
{
  v4 = a3;
  v5 = self;
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = SFFormAutoFillNode;
    v5 = [(SFFormAutoFillNode *)&v13 init];
    if (v5)
    {
      v7 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(a4)];
      v8 = MEMORY[0x1E6985390];
      v9 = [MEMORY[0x1E696EB58] valueWithJSValueRef:v4 inContext:v7];
      v10 = [v8 nodeHandleWithJSValue:v9 inContext:v7];
      nodeHandle = v5->_nodeHandle;
      v5->_nodeHandle = v10;

      if (v5->_nodeHandle)
      {
        v4 = v5;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
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

- (void)setHTMLInputElementAutoFilledWithAutomaticStrongPassword:(BOOL)a3
{
  v3 = a3;
  nodeHandle = self->_nodeHandle;
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(WKWebProcessPlugInNodeHandle *)nodeHandle setHTMLInputElementAutoFillButtonEnabledWithButtonType:v6];
  v7 = self->_nodeHandle;

  [(WKWebProcessPlugInNodeHandle *)v7 setHTMLInputElementIsAutoFilled:v3];
}

- (int64_t)htmlInputElementAutoFillButtonType
{
  v2 = [(WKWebProcessPlugInNodeHandle *)self->_nodeHandle htmlInputElementAutoFillButtonType];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D47DD048[v2 - 1];
  }
}

- (int64_t)htmlInputElementLastAutoFillButtonType
{
  v2 = [(WKWebProcessPlugInNodeHandle *)self->_nodeHandle htmlInputElementLastAutoFillButtonType];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1D47DD048[v2 - 1];
  }
}

- (void)setSpinnerVisibilityOnHTMLInputElement:(BOOL)a3
{
  nodeHandle = self->_nodeHandle;
  if (a3)
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