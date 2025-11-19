@interface AXSSKeyboardCommandInfo
+ (id)infoWithDownHandler:(id)a3 upHandler:(id)a4;
+ (id)infoWithHandler:(id)a3;
- (id)_initWithHandler:(id)a3 downHandler:(id)a4 upHandler:(id)a5 handlesBothDownAndUp:(BOOL)a6;
@end

@implementation AXSSKeyboardCommandInfo

+ (id)infoWithHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithHandler:v4 downHandler:0 upHandler:0 handlesBothDownAndUp:0];

  return v5;
}

+ (id)infoWithDownHandler:(id)a3 upHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithHandler:0 downHandler:v7 upHandler:v6 handlesBothDownAndUp:1];

  return v8;
}

- (id)_initWithHandler:(id)a3 downHandler:(id)a4 upHandler:(id)a5 handlesBothDownAndUp:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = AXSSKeyboardCommandInfo;
  v13 = [(AXSSKeyboardCommandInfo *)&v21 init];
  if (v13)
  {
    v14 = _Block_copy(v10);
    handler = v13->_handler;
    v13->_handler = v14;

    v16 = _Block_copy(v11);
    downHandler = v13->_downHandler;
    v13->_downHandler = v16;

    v18 = _Block_copy(v12);
    upHandler = v13->_upHandler;
    v13->_upHandler = v18;

    v13->_handlesBothDownAndUp = a6;
  }

  return v13;
}

@end