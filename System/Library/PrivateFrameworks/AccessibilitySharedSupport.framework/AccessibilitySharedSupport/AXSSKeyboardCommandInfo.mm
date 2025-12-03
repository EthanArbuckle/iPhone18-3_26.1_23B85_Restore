@interface AXSSKeyboardCommandInfo
+ (id)infoWithDownHandler:(id)handler upHandler:(id)upHandler;
+ (id)infoWithHandler:(id)handler;
- (id)_initWithHandler:(id)handler downHandler:(id)downHandler upHandler:(id)upHandler handlesBothDownAndUp:(BOOL)up;
@end

@implementation AXSSKeyboardCommandInfo

+ (id)infoWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] _initWithHandler:handlerCopy downHandler:0 upHandler:0 handlesBothDownAndUp:0];

  return v5;
}

+ (id)infoWithDownHandler:(id)handler upHandler:(id)upHandler
{
  upHandlerCopy = upHandler;
  handlerCopy = handler;
  v8 = [[self alloc] _initWithHandler:0 downHandler:handlerCopy upHandler:upHandlerCopy handlesBothDownAndUp:1];

  return v8;
}

- (id)_initWithHandler:(id)handler downHandler:(id)downHandler upHandler:(id)upHandler handlesBothDownAndUp:(BOOL)up
{
  handlerCopy = handler;
  downHandlerCopy = downHandler;
  upHandlerCopy = upHandler;
  v21.receiver = self;
  v21.super_class = AXSSKeyboardCommandInfo;
  v13 = [(AXSSKeyboardCommandInfo *)&v21 init];
  if (v13)
  {
    v14 = _Block_copy(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v16 = _Block_copy(downHandlerCopy);
    downHandler = v13->_downHandler;
    v13->_downHandler = v16;

    v18 = _Block_copy(upHandlerCopy);
    upHandler = v13->_upHandler;
    v13->_upHandler = v18;

    v13->_handlesBothDownAndUp = up;
  }

  return v13;
}

@end