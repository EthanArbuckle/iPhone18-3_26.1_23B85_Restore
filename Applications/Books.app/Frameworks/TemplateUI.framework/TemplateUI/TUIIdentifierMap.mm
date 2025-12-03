@interface TUIIdentifierMap
+ (id)describeForDebuggingIdentifierIndex:(unint64_t)index package:(id)package;
- (TUIIdentifierMap)init;
- (TUIIdentifierMap)initWithUUID:(id)d;
- (id)identifierWithNode:(id)node baseIdentifier:(id)identifier;
@end

@implementation TUIIdentifierMap

- (TUIIdentifierMap)init
{
  v3 = +[NSUUID UUID];
  v4 = [(TUIIdentifierMap *)self initWithUUID:v3];

  return v4;
}

- (TUIIdentifierMap)initWithUUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TUIIdentifierMap;
  v6 = [(TUIIdentifierMap *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
    v8 = objc_opt_new();
    renderModelIdentifierMap = v7->_renderModelIdentifierMap;
    v7->_renderModelIdentifierMap = v8;

    loadingIdentifier = v7->_loadingIdentifier;
    v7->_loadingIdentifier = &off_274A98;
  }

  return v7;
}

- (id)identifierWithNode:(id)node baseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (TUIElementNodeNotNil(node.var0))
  {
    v6 = [NSNumber numberWithUnsignedInt:(2 * node.var0) | 1];
    v7 = v6;
    if (identifierCopy)
    {
      v8 = [identifierCopy tui_identifierByAppendingIndex:{objc_msgSend(v6, "unsignedIntegerValue")}];
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

+ (id)describeForDebuggingIdentifierIndex:(unint64_t)index package:(id)package
{
  if (index)
  {
    v5 = [package debugLocationForNode:(index >> 1)];
  }

  else
  {
    v5 = @"Other:Loading";
  }

  return v5;
}

@end