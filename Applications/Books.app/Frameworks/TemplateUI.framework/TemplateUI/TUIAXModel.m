@interface TUIAXModel
- (BOOL)hasAccessibleDescendants;
- (CGRect)accessibilityFrameRelativeToScrollAncestor;
- (TUIAXModel)init;
- (TUIAXModel)initWithIdentifier:(id)a3 boxType:(id)a4;
- (id)description;
@end

@implementation TUIAXModel

- (TUIAXModel)init
{
  v3.receiver = self;
  v3.super_class = TUIAXModel;
  return [(TUIAXModel *)&v3 init];
}

- (TUIAXModel)initWithIdentifier:(id)a3 boxType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TUIAXModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [v8 copy];
    boxType = v10->_boxType;
    v10->_boxType = v11;
  }

  return v10;
}

- (id)description
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TUIAXModel *)self boxType];
  v7 = [(TUIAXModel *)self identifier];
  if (v7)
  {
    v17 = [(TUIAXModel *)self identifier];
    v8 = [NSString stringWithFormat:@" identifier=%@", v17];
  }

  else
  {
    v8 = &stru_264550;
  }

  v9 = [(TUIAXModel *)self stateName];
  if (v9)
  {
    v2 = [(TUIAXModel *)self stateName];
    v10 = [NSString stringWithFormat:@" state=%@", v2];;
  }

  else
  {
    v10 = &stru_264550;
  }

  v11 = [(TUIAXModel *)self children];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
  v16 = self;
  v13 = v5;
  v14 = [NSString stringWithFormat:@"<%@: %p %@;%@%@ #children=%@>", v5, v16, v6, v8, v10, v12];;

  if (v9)
  {
  }

  if (v7)
  {
  }

  return v14;
}

- (BOOL)hasAccessibleDescendants
{
  v3 = [(TUIAXModel *)self axAttributes];
  if ([v3 isAXElement])
  {

LABEL_4:
    LOBYTE(v5) = 1;
    return v5;
  }

  v4 = [(TUIAXModel *)self shouldVendControlView];

  if (v4)
  {
    goto LABEL_4;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [(TUIAXModel *)self children];
  v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasAccessibleDescendants])
        {
          LOBYTE(v5) = 1;
          goto LABEL_15;
        }
      }

      v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
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