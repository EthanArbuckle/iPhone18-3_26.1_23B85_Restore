@interface AEBookRenderingCallbackTarget
- (AEBookRenderingCallbackTarget)initWithCallbackBlock:(id)a3;
@end

@implementation AEBookRenderingCallbackTarget

- (AEBookRenderingCallbackTarget)initWithCallbackBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AEBookRenderingCallbackTarget;
  v5 = [(AEBookRenderingCallbackTarget *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
      callbackBlock = v6->_callbackBlock;
      v6->_callbackBlock = v7;
    }

    else
    {
      callbackBlock = v5;
      v6 = 0;
    }
  }

  return v6;
}

@end