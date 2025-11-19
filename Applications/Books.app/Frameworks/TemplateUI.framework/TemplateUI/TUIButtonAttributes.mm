@interface TUIButtonAttributes
- (BOOL)isEqual:(id)a3;
- (TUIButtonAttributes)initWithTitle:(id)a3 image:(id)a4;
- (id)attributesForButtonType:(unint64_t)a3;
@end

@implementation TUIButtonAttributes

- (TUIButtonAttributes)initWithTitle:(id)a3 image:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIButtonAttributes;
  v9 = [(TUIButtonAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_image, a4);
  }

  return v10;
}

- (id)attributesForButtonType:(unint64_t)a3
{
  v4 = self;
  v5 = [(NSAttributedString *)v4->_title tui_attributedTitleForButtonType:a3];
  if (v5 != v4->_title)
  {
    v6 = [[TUIButtonAttributes alloc] initWithTitle:v5 image:v4->_image];

    v4 = v6;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, v5);
  }

  return self == a3;
}

@end