@interface AKMarkupBarButtonItem
+ (id)markupBarButtonWithTarget:(id)target action:(SEL)action;
- (AKMarkupBarButtonItem)init;
- (void)setAction:(SEL)action;
- (void)setEnabled:(BOOL)enabled;
- (void)setSelected:(BOOL)selected;
- (void)setTarget:(id)target;
@end

@implementation AKMarkupBarButtonItem

+ (id)markupBarButtonWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v6 = objc_alloc_init(AKMarkupBarButtonItem);
  [(AKMarkupBarButtonItem *)v6 setTarget:targetCopy];

  [(AKMarkupBarButtonItem *)v6 setAction:action];

  return v6;
}

- (AKMarkupBarButtonItem)init
{
  v7.receiver = self;
  v7.super_class = AKMarkupBarButtonItem;
  v2 = [(AKMarkupBarButtonItem *)&v7 init];
  if (v2)
  {
    v3 = [AKMarkupButtonContainerView alloc];
    v4 = [(AKMarkupButtonContainerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    toggleView = v2->_toggleView;
    v2->_toggleView = v4;

    [(AKMarkupBarButtonItem *)v2 setCustomView:v2->_toggleView];
  }

  return v2;
}

- (void)setTarget:(id)target
{
  v9.receiver = self;
  v9.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v9 setTarget:target];
  toggleView = [(AKMarkupBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  toggleView2 = [(AKMarkupBarButtonItem *)self toggleView];
  button2 = [toggleView2 button];
  target = [(AKMarkupBarButtonItem *)self target];
  [button2 addTarget:target action:-[AKMarkupBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setAction:(SEL)action
{
  v9.receiver = self;
  v9.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v9 setAction:action];
  toggleView = [(AKMarkupBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  toggleView2 = [(AKMarkupBarButtonItem *)self toggleView];
  button2 = [toggleView2 button];
  target = [(AKMarkupBarButtonItem *)self target];
  [button2 addTarget:target action:-[AKMarkupBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v5 setSelected:selected];
  toggleView = [(AKMarkupBarButtonItem *)self toggleView];
  [toggleView setSelected:{-[AKMarkupBarButtonItem isSelected](self, "isSelected")}];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v7 setEnabled:?];
  toggleView = [(AKMarkupBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button setEnabled:enabledCopy];
}

@end