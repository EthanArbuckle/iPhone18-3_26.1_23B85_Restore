@interface AKMarkupBarButtonItem
+ (id)markupBarButtonWithTarget:(id)a3 action:(SEL)a4;
- (AKMarkupBarButtonItem)init;
- (void)setAction:(SEL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTarget:(id)a3;
@end

@implementation AKMarkupBarButtonItem

+ (id)markupBarButtonWithTarget:(id)a3 action:(SEL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(AKMarkupBarButtonItem);
  [(AKMarkupBarButtonItem *)v6 setTarget:v5];

  [(AKMarkupBarButtonItem *)v6 setAction:a4];

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

- (void)setTarget:(id)a3
{
  v9.receiver = self;
  v9.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v9 setTarget:a3];
  v4 = [(AKMarkupBarButtonItem *)self toggleView];
  v5 = [v4 button];
  [v5 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v6 = [(AKMarkupBarButtonItem *)self toggleView];
  v7 = [v6 button];
  v8 = [(AKMarkupBarButtonItem *)self target];
  [v7 addTarget:v8 action:-[AKMarkupBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setAction:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v9 setAction:a3];
  v4 = [(AKMarkupBarButtonItem *)self toggleView];
  v5 = [v4 button];
  [v5 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v6 = [(AKMarkupBarButtonItem *)self toggleView];
  v7 = [v6 button];
  v8 = [(AKMarkupBarButtonItem *)self target];
  [v7 addTarget:v8 action:-[AKMarkupBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v5 setSelected:a3];
  v4 = [(AKMarkupBarButtonItem *)self toggleView];
  [v4 setSelected:{-[AKMarkupBarButtonItem isSelected](self, "isSelected")}];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = AKMarkupBarButtonItem;
  [(AKMarkupBarButtonItem *)&v7 setEnabled:?];
  v5 = [(AKMarkupBarButtonItem *)self toggleView];
  v6 = [v5 button];
  [v6 setEnabled:v3];
}

@end