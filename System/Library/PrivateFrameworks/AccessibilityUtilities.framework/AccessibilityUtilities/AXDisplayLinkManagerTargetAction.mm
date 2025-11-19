@interface AXDisplayLinkManagerTargetAction
- (AXDisplayLinkManagerTargetAction)initWithTarget:(id)a3 actionSelector:(SEL)a4;
- (BOOL)isEqual:(id)a3;
- (SEL)actionSelector;
- (unint64_t)hash;
- (void)displayDidRefresh:(id)a3;
- (void)setActionSelector:(SEL)a3;
@end

@implementation AXDisplayLinkManagerTargetAction

- (AXDisplayLinkManagerTargetAction)initWithTarget:(id)a3 actionSelector:(SEL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = AXDisplayLinkManagerTargetAction;
  v7 = [(AXDisplayLinkManagerTargetAction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AXDisplayLinkManagerTargetAction *)v7 setTarget:v6];
    [(AXDisplayLinkManagerTargetAction *)v8 setActionSelector:a4];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AXDisplayLinkManagerTargetAction *)self actionSelector];
    if (v6 == [v5 actionSelector])
    {
      v8 = [(AXDisplayLinkManagerTargetAction *)self target];
      v9 = [v5 target];
      v7 = [v8 isEqual:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(AXDisplayLinkManagerTargetAction *)self target];
  v4 = [v3 hash];
  v5 = sel_getName([(AXDisplayLinkManagerTargetAction *)self actionSelector]) % 0x2710;

  return v5 + v4;
}

- (void)displayDidRefresh:(id)a3
{
  v10 = a3;
  v4 = [(AXDisplayLinkManagerTargetAction *)self displayDidRefreshCount];
  v5 = [(AXDisplayLinkManagerTargetAction *)self target];
  [(AXDisplayLinkManagerTargetAction *)self actionSelector];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXDisplayLinkManagerTargetAction *)self target];
    v8 = [v7 methodForSelector:{-[AXDisplayLinkManagerTargetAction actionSelector](self, "actionSelector")}];

    v9 = [(AXDisplayLinkManagerTargetAction *)self target];
    v8(v9, [(AXDisplayLinkManagerTargetAction *)self actionSelector], v10);

    [(AXDisplayLinkManagerTargetAction *)self setDisplayDidRefreshCount:v4 + 1];
  }
}

- (SEL)actionSelector
{
  if (self->_actionSelector)
  {
    return self->_actionSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setActionSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_actionSelector = v3;
}

@end