@interface AXDisplayLinkManagerTargetAction
- (AXDisplayLinkManagerTargetAction)initWithTarget:(id)target actionSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (SEL)actionSelector;
- (unint64_t)hash;
- (void)displayDidRefresh:(id)refresh;
- (void)setActionSelector:(SEL)selector;
@end

@implementation AXDisplayLinkManagerTargetAction

- (AXDisplayLinkManagerTargetAction)initWithTarget:(id)target actionSelector:(SEL)selector
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = AXDisplayLinkManagerTargetAction;
  v7 = [(AXDisplayLinkManagerTargetAction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AXDisplayLinkManagerTargetAction *)v7 setTarget:targetCopy];
    [(AXDisplayLinkManagerTargetAction *)v8 setActionSelector:selector];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    actionSelector = [(AXDisplayLinkManagerTargetAction *)self actionSelector];
    if (actionSelector == [v5 actionSelector])
    {
      target = [(AXDisplayLinkManagerTargetAction *)self target];
      target2 = [v5 target];
      v7 = [target isEqual:target2];
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
  target = [(AXDisplayLinkManagerTargetAction *)self target];
  v4 = [target hash];
  v5 = sel_getName([(AXDisplayLinkManagerTargetAction *)self actionSelector]) % 0x2710;

  return v5 + v4;
}

- (void)displayDidRefresh:(id)refresh
{
  refreshCopy = refresh;
  displayDidRefreshCount = [(AXDisplayLinkManagerTargetAction *)self displayDidRefreshCount];
  target = [(AXDisplayLinkManagerTargetAction *)self target];
  [(AXDisplayLinkManagerTargetAction *)self actionSelector];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    target2 = [(AXDisplayLinkManagerTargetAction *)self target];
    v8 = [target2 methodForSelector:{-[AXDisplayLinkManagerTargetAction actionSelector](self, "actionSelector")}];

    target3 = [(AXDisplayLinkManagerTargetAction *)self target];
    v8(target3, [(AXDisplayLinkManagerTargetAction *)self actionSelector], refreshCopy);

    [(AXDisplayLinkManagerTargetAction *)self setDisplayDidRefreshCount:displayDidRefreshCount + 1];
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

- (void)setActionSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_actionSelector = selectorCopy;
}

@end