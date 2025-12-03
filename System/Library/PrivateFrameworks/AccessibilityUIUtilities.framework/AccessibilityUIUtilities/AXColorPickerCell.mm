@interface AXColorPickerCell
- (AXColorPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_colorValue;
- (id)accessibilityValue;
- (id)controlValue;
- (id)newControl;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation AXColorPickerCell

- (AXColorPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = AXColorPickerCell;
  v4 = [(PSControlTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    control = [(PSControlTableCell *)v4 control];
    [(AXColorPickerCell *)v5 setAccessoryView:control];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXColorPickerCell;
  [(PSTableCell *)&v4 prepareForReuse];
  control = [(PSControlTableCell *)self control];
  [(AXColorPickerCell *)self setAccessoryView:control];
}

- (id)newControl
{
  v2 = [objc_alloc(MEMORY[0x1E69DC8A8]) initWithFrame:{0.0, 0.0, 28.0, 28.0}];
  [v2 setUserInteractionEnabled:0];
  return v2;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = AXColorPickerCell;
  [(PSControlTableCell *)&v8 refreshCellContentsWithSpecifier:specifier];
  _colorValue = [(AXColorPickerCell *)self _colorValue];
  selectedColor = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5798]) selectedColor];

  if (_colorValue != selectedColor)
  {
    control = [(PSControlTableCell *)self control];
    _colorValue2 = [(AXColorPickerCell *)self _colorValue];
    [control setSelectedColor:_colorValue2];
  }
}

- (id)controlValue
{
  control = [(PSControlTableCell *)self control];
  selectedColor = [control selectedColor];

  return selectedColor;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v6 = *MEMORY[0x1E69C5800];
  if (*(&self->super.super.super.super.super.super.isa + v6) != valueCopy)
  {
    v9 = valueCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (!v9 || (isKindOfClass & 1) != 0)
    {
      objc_storeStrong((&self->super.super.super.super.super.super.isa + v6), value);
      control = [(PSControlTableCell *)self control];
      [control setSelectedColor:v9];
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
  _colorValue = [(AXColorPickerCell *)self _colorValue];
  v3 = _colorValue;
  if (_colorValue)
  {
    AXColorStringForColor(_colorValue, 0);
  }

  else
  {
    AXUILocalizedStringForKey(@"NOT_SET");
  }
  v4 = ;

  return v4;
}

@end