@interface EKUIDividedGridViewCell
- (EKUIDividedGridViewCell)init;
- (EKUIDividedGridViewCell)initWithBackgroundColor:(id)a3;
- (EKUIDividedGridViewController)viewController;
- (NSLayoutConstraint)widthConstraint;
- (id)selectedTextColor;
- (void)setSelected:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation EKUIDividedGridViewCell

- (EKUIDividedGridViewCell)initWithBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = [(EKUIDividedGridViewCell *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bgColor, a3);
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
    v5 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:v5];

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

    v12 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    [(EKUIDividedGridViewCell *)v2 setBackgroundColor:v12];
  }

  return v2;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [(EKUIDividedGridViewCell *)self viewController:a3];
  [v5 cellTapped:self];
}

- (id)selectedTextColor
{
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(EKUIDividedGridViewCell *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];

    v3 = v6;
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (![(EKUIDividedGridViewCell *)self selected])
  {
    if (self->_bgColor)
    {
      [(EKUIDividedGridViewCell *)self setBackgroundColor:?];
      goto LABEL_9;
    }

    v4 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    goto LABEL_7;
  }

  v4 = [(EKUIDividedGridViewCell *)self tintColor];
  if (v4)
  {
LABEL_7:
    [(EKUIDividedGridViewCell *)self setBackgroundColor:v4];
    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E69DC888] darkGrayColor];
  [(EKUIDividedGridViewCell *)self setBackgroundColor:v5];

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
  v6 = [(EKUIDividedGridViewCell *)self label];
  [v6 setTextColor:v7];
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