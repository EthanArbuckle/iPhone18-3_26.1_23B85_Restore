@interface TUIIdentifierMap
+ (id)describeForDebuggingIdentifierIndex:(unint64_t)a3 package:(id)a4;
- (TUIIdentifierMap)init;
- (TUIIdentifierMap)initWithUUID:(id)a3;
- (id)identifierWithNode:(id)a3 baseIdentifier:(id)a4;
@end

@implementation TUIIdentifierMap

- (TUIIdentifierMap)init
{
  v3 = +[NSUUID UUID];
  v4 = [(TUIIdentifierMap *)self initWithUUID:v3];

  return v4;
}

- (TUIIdentifierMap)initWithUUID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TUIIdentifierMap;
  v6 = [(TUIIdentifierMap *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
    v8 = objc_opt_new();
    renderModelIdentifierMap = v7->_renderModelIdentifierMap;
    v7->_renderModelIdentifierMap = v8;

    loadingIdentifier = v7->_loadingIdentifier;
    v7->_loadingIdentifier = &off_274A98;
  }

  return v7;
}

- (id)identifierWithNode:(id)a3 baseIdentifier:(id)a4
{
  v5 = a4;
  if (TUIElementNodeNotNil(a3.var0))
  {
    v6 = [NSNumber numberWithUnsignedInt:(2 * a3.var0) | 1];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 tui_identifierByAppendingIndex:{objc_msgSend(v6, "unsignedIntegerValue")}];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)describeForDebuggingIdentifierIndex:(unint64_t)a3 package:(id)a4
{
  if (a3)
  {
    v5 = [a4 debugLocationForNode:(a3 >> 1)];
  }

  else
  {
    v5 = @"Other:Loading";
  }

  return v5;
}

@end