@interface EKUIDividedGridViewCell
- (EKUIDividedGridViewCell)init;
- (EKUIDividedGridViewCell)initWithBackgroundColor:(id)color;
- (EKUIDividedGridViewController)viewController;
- (NSLayoutConstraint)widthConstraint;
- (id)selectedTextColor;
- (void)setSelected:(BOOL)selected;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation EKUIDividedGridViewCell

- (EKUIDividedGridViewCell)initWithBackgroundColor:(id)color
{
  colorCopy = color;
  v6 = [(EKUIDividedGridViewCell *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bgColor, color);
    [(EKUIDividedGridViewCell *)v7 setBackgroundColor:v7->_bgColor];
  }

  return v7;
}

- (EKUIDividedGridViewCell)init
{
  v14.receiver = self;
  v14.super_class = EKUIDividedGridViewCell;
  v2 = [(EKUIDividedGridViewCell *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    label = v2->_label;
    v2->_label = v3;

    [(UILabel *)v2->_label setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:labelColor];

    [(UILabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUIDividedGridViewCell *)v2 addSubview:v2->_label];
    v6 = MEMORY[0x1E696ACD8];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Label_0.isa, v2->_label, 0);
    v8 = [v6 constraintsWithVisualFormat:@"H:|-(7)-[_label]-(7)-|" options:1024 metrics:0 views:v7];
    [(EKUIDividedGridViewCell *)v2 addConstraints:v8];

    v9 = MEMORY[0x1E696ACD8];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Label_0.isa, v2->_label, 0);
    v11 = [v9 constraintsWithVisualFormat:@"V:|-(0)-[_label]-(0)-|" options:512 metrics:0 views:v10];
    [(EKUIDividedGridViewCell *)v2 addConstraints:v11];

    tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    [(EKUIDividedGridViewCell *)v2 setBackgroundColor:tableCellGroupedBackgroundColor];
  }

  return v2;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [(EKUIDividedGridViewCell *)self viewController:began];
  [v5 cellTapped:self];
}

- (id)selectedTextColor
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  traitCollection = [(EKUIDividedGridViewCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];

    whiteColor = blackColor;
  }

  return whiteColor;
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (![(EKUIDividedGridViewCell *)self selected])
  {
    if (self->_bgColor)
    {
      [(EKUIDividedGridViewCell *)self setBackgroundColor:?];
      goto LABEL_9;
    }

    tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    goto LABEL_7;
  }

  tableCellGroupedBackgroundColor = [(EKUIDividedGridViewCell *)self tintColor];
  if (tableCellGroupedBackgroundColor)
  {
LABEL_7:
    [(EKUIDividedGridViewCell *)self setBackgroundColor:tableCellGroupedBackgroundColor];
    goto LABEL_8;
  }

  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  [(EKUIDividedGridViewCell *)self setBackgroundColor:darkGrayColor];

LABEL_8:
LABEL_9:
  if ([(EKUIDividedGridViewCell *)self selected])
  {
    [(EKUIDividedGridViewCell *)self selectedTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v7 = ;
  label = [(EKUIDividedGridViewCell *)self label];
  [label setTextColor:v7];
}

- (EKUIDividedGridViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (NSLayoutConstraint)widthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_widthConstraint);

  return WeakRetained;
}

@end