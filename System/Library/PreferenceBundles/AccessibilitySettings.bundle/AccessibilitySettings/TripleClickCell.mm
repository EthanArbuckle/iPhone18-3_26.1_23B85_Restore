@interface TripleClickCell
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TripleClickCell

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = TripleClickCell;
  accessibilityTraits = [(TripleClickCell *)&v9 accessibilityTraits];
  specifier = [(TripleClickCell *)self specifier];
  v5 = [specifier propertyForKey:@"AXChecked"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = UIAccessibilityTraitSelected;
  }

  else
  {
    v7 = 0;
  }

  return v7 | accessibilityTraits;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v23.receiver = self;
  v23.super_class = TripleClickCell;
  [(TripleClickCell *)&v23 refreshCellContentsWithSpecifier:specifierCopy];
  defaultContentConfiguration = [(TripleClickCell *)self defaultContentConfiguration];
  v6 = [UIImage systemImageNamed:@"checkmark"];
  [v6 size];
  v8 = v7;
  v10 = v9;
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{v8, v10}];

  v12 = [specifierCopy propertyForKey:@"AXCheckStateCannotChange"];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = +[UIColor tertiaryLabelColor];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setColor:v14];

    [(TripleClickCell *)self setSelectionStyle:0];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __52__TripleClickCell_refreshCellContentsWithSpecifier___block_invoke;
  v21[3] = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
  v22 = bOOLValue;
  imageProperties2 = [defaultContentConfiguration imageProperties];
  [imageProperties2 setTintColorTransformer:v21];

  v17 = [specifierCopy propertyForKey:@"AXChecked"];
  bOOLValue2 = [v17 BOOLValue];

  if (bOOLValue2)
  {
    [defaultContentConfiguration setImage:v6];
  }

  else
  {
    v19 = objc_opt_new();
    [defaultContentConfiguration setImage:v19];
  }

  name = [specifierCopy name];
  [defaultContentConfiguration setText:name];

  [(TripleClickCell *)self setContentConfiguration:defaultContentConfiguration];
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