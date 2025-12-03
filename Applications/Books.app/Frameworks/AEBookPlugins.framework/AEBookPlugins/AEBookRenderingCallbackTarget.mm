@interface AEBookRenderingCallbackTarget
- (AEBookRenderingCallbackTarget)initWithCallbackBlock:(id)block;
@end

@implementation AEBookRenderingCallbackTarget

- (AEBookRenderingCallbackTarget)initWithCallbackBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = AEBookRenderingCallbackTarget;
  v5 = [(AEBookRenderingCallbackTarget *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (blockCopy)
    {
      v7 = [blockCopy copy];
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