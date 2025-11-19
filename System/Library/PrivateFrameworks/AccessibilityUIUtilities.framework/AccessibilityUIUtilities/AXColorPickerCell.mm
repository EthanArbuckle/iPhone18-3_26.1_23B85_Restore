@interface AXColorPickerCell
- (AXColorPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_colorValue;
- (id)accessibilityValue;
- (id)controlValue;
- (id)newControl;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation AXColorPickerCell

- (AXColorPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AXColorPickerCell;
  v4 = [(PSControlTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSControlTableCell *)v4 control];
    [(AXColorPickerCell *)v5 setAccessoryView:v6];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXColorPickerCell;
  [(PSTableCell *)&v4 prepareForReuse];
  v3 = [(PSControlTableCell *)self control];
  [(AXColorPickerCell *)self setAccessoryView:v3];
}

- (id)newControl
{
  v2 = [objc_alloc(MEMORY[0x1E69DC8A8]) initWithFrame:{0.0, 0.0, 28.0, 28.0}];
  [v2 setUserInteractionEnabled:0];
  return v2;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = AXColorPickerCell;
  [(PSControlTableCell *)&v8 refreshCellContentsWithSpecifier:a3];
  v4 = [(AXColorPickerCell *)self _colorValue];
  v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5798]) selectedColor];

  if (v4 != v5)
  {
    v6 = [(PSControlTableCell *)self control];
    v7 = [(AXColorPickerCell *)self _colorValue];
    [v6 setSelectedColor:v7];
  }
}

- (id)controlValue
{
  v2 = [(PSControlTableCell *)self control];
  v3 = [v2 selectedColor];

  return v3;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  v6 = *MEMORY[0x1E69C5800];
  if (*(&self->super.super.super.super.super.super.isa + v6) != v5)
  {
    v9 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (!v9 || (isKindOfClass & 1) != 0)
    {
      objc_storeStrong((&self->super.super.super.super.super.super.isa + v6), a3);
      v8 = [(PSControlTableCell *)self control];
      [v8 setSelectedColor:v9];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_colorValue
{
  v2 = *MEMORY[0x1E69C5800];
  if (*(&self->super.super.super.super.super.super.isa + v2) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(&self->super.super.super.super.super.super.isa + v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AXColorPickerCell;
  return *MEMORY[0x1E69DD9B8] | [(AXColorPickerCell *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v2 = [(AXColorPickerCell *)self _colorValue];
  v3 = v2;
  if (v2)
  {
    AXColorStringForColor(v2, 0);
  }

  else
  {
    AXUILocalizedStringForKey(@"NOT_SET");
  }
  v4 = ;

  return v4;
}

@end