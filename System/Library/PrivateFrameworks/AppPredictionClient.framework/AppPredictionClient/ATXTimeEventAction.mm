@interface ATXTimeEventAction
- (ATXTimeEventAction)initWithCoder:(id)a3;
- (ATXTimeEventAction)initWithTitle:(id)a3 compactTitle:(id)a4 identifier:(id)a5 symbolName:(id)a6 colorName:(id)a7 options:(unint64_t)a8;
- (id)compactTitleUsingETAIfPossibleWithMinutes:(double)a3 style:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeEventAction

- (ATXTimeEventAction)initWithTitle:(id)a3 compactTitle:(id)a4 identifier:(id)a5 symbolName:(id)a6 colorName:(id)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v32.receiver = self;
  v32.super_class = ATXTimeEventAction;
  v19 = [(ATXTimeEventAction *)&v32 init];
  if (v19)
  {
    v20 = [v14 copy];
    title = v19->_title;
    v19->_title = v20;

    v22 = [v15 copy];
    compactTitle = v19->_compactTitle;
    v19->_compactTitle = v22;

    v24 = [v16 copy];
    identifier = v19->_identifier;
    v19->_identifier = v24;

    v26 = [v17 copy];
    symbolName = v19->_symbolName;
    v19->_symbolName = v26;

    v28 = [v18 copy];
    colorName = v19->_colorName;
    v19->_colorName = v28;

    v19->_options = a8;
    v30 = v19;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbol"];
  [v5 encodeObject:self->_colorName forKey:@"symbolColorName"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_compactTitle forKey:@"compactTitle"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_options forKey:@"options"];
}

- (ATXTimeEventAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compactTitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolColorName"];
  v10 = [v4 decodeIntegerForKey:@"options"];

  v11 = [(ATXTimeEventAction *)self initWithTitle:v5 compactTitle:v6 identifier:v7 symbolName:v8 colorName:v9 options:v10];
  return v11;
}

- (id)compactTitleUsingETAIfPossibleWithMinutes:(double)a3 style:(int64_t)a4
{
  if (a3 < 1.0 || (self->_options & 2) == 0)
  {
    v9 = [(ATXTimeEventAction *)self compactTitle];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setMinute:a3];
    v8 = objc_alloc_init(MEMORY[0x1E696AB70]);
    [v8 setUnitsStyle:a4];
    v9 = [v8 stringFromDateComponents:v7];
  }

  return v9;
}

@end