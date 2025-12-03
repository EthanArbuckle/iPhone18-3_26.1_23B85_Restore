@interface TUIAXModel
- (BOOL)hasAccessibleDescendants;
- (CGRect)accessibilityFrameRelativeToScrollAncestor;
- (TUIAXModel)init;
- (TUIAXModel)initWithIdentifier:(id)identifier boxType:(id)type;
- (id)description;
@end

@implementation TUIAXModel

- (TUIAXModel)init
{
  v3.receiver = self;
  v3.super_class = TUIAXModel;
  return [(TUIAXModel *)&v3 init];
}

- (TUIAXModel)initWithIdentifier:(id)identifier boxType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v9 = [(TUIAXModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = [typeCopy copy];
    boxType = v10->_boxType;
    v10->_boxType = v11;
  }

  return v10;
}

- (id)description
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  boxType = [(TUIAXModel *)self boxType];
  identifier = [(TUIAXModel *)self identifier];
  if (identifier)
  {
    identifier2 = [(TUIAXModel *)self identifier];
    v8 = [NSString stringWithFormat:@" identifier=%@", identifier2];
  }

  else
  {
    v8 = &stru_264550;
  }

  stateName = [(TUIAXModel *)self stateName];
  if (stateName)
  {
    stateName2 = [(TUIAXModel *)self stateName];
    v10 = [NSString stringWithFormat:@" state=%@", stateName2];;
  }

  else
  {
    v10 = &stru_264550;
  }

  children = [(TUIAXModel *)self children];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [children count]);
  selfCopy = self;
  v13 = v5;
  v14 = [NSString stringWithFormat:@"<%@: %p %@;%@%@ #children=%@>", v5, selfCopy, boxType, v8, v10, v12];;

  if (stateName)
  {
  }

  if (identifier)
  {
  }

  return v14;
}

- (BOOL)hasAccessibleDescendants
{
  axAttributes = [(TUIAXModel *)self axAttributes];
  if ([axAttributes isAXElement])
  {

LABEL_4:
    LOBYTE(v5) = 1;
    return v5;
  }

  shouldVendControlView = [(TUIAXModel *)self shouldVendControlView];

  if (shouldVendControlView)
  {
    goto LABEL_4;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  children = [(TUIAXModel *)self children];
  v5 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(children);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasAccessibleDescendants])
        {
          LOBYTE(v5) = 1;
          goto LABEL_15;
        }
      }

      v5 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

- (CGRect)accessibilityFrameRelativeToScrollAncestor
{
  x = self->_accessibilityFrameRelativeToScrollAncestor.origin.x;
  y = self->_accessibilityFrameRelativeToScrollAncestor.origin.y;
  width = self->_accessibilityFrameRelativeToScrollAncestor.size.width;
  height = self->_accessibilityFrameRelativeToScrollAncestor.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end