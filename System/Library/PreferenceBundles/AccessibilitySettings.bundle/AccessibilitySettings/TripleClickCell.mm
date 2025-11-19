@interface TripleClickCell
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TripleClickCell

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = TripleClickCell;
  v3 = [(TripleClickCell *)&v9 accessibilityTraits];
  v4 = [(TripleClickCell *)self specifier];
  v5 = [v4 propertyForKey:@"AXChecked"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = UIAccessibilityTraitSelected;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v3;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TripleClickCell;
  [(TripleClickCell *)&v23 refreshCellContentsWithSpecifier:v4];
  v5 = [(TripleClickCell *)self defaultContentConfiguration];
  v6 = [UIImage systemImageNamed:@"checkmark"];
  [v6 size];
  v8 = v7;
  v10 = v9;
  v11 = [v5 imageProperties];
  [v11 setReservedLayoutSize:{v8, v10}];

  v12 = [v4 propertyForKey:@"AXCheckStateCannotChange"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = +[UIColor tertiaryLabelColor];
    v15 = [v5 textProperties];
    [v15 setColor:v14];

    [(TripleClickCell *)self setSelectionStyle:0];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __52__TripleClickCell_refreshCellContentsWithSpecifier___block_invoke;
  v21[3] = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
  v22 = v13;
  v16 = [v5 imageProperties];
  [v16 setTintColorTransformer:v21];

  v17 = [v4 propertyForKey:@"AXChecked"];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    [v5 setImage:v6];
  }

  else
  {
    v19 = objc_opt_new();
    [v5 setImage:v19];
  }

  v20 = [v4 name];
  [v5 setText:v20];

  [(TripleClickCell *)self setContentConfiguration:v5];
}

id __52__TripleClickCell_refreshCellContentsWithSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = [v3 colorWithAlphaComponent:0.5];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TripleClickCell;
  [(TripleClickCell *)&v3 prepareForReuse];
  [(TripleClickCell *)self setContentConfiguration:0];
}

@end