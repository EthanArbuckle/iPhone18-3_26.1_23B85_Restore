@interface GAXOptionsDoneButton
+ (id)optionsDoneButtonWithTitle:(id)a3 styleProvider:(id)a4;
- (GAXOptionsDoneButton)initWithTitle:(id)a3 styleProvider:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation GAXOptionsDoneButton

+ (id)optionsDoneButtonWithTitle:(id)a3 styleProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 styleProvider:v6];

  return v8;
}

- (GAXOptionsDoneButton)initWithTitle:(id)a3 styleProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GAXOptionsDoneButton *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [v7 optionsDoneButtonBackgroundColor];
    [(GAXOptionsDoneButton *)v8 setBackgroundColor:v9];

    v10 = [v7 optionsDoneButtonFont];
    v11 = [(GAXOptionsDoneButton *)v8 titleLabel];
    [v11 setFont:v10];

    [(GAXOptionsDoneButton *)v8 setTitle:v6 forState:0];
    v12 = [(GAXOptionsDoneButton *)v8 tintColor];
    [(GAXOptionsDoneButton *)v8 setTitleColor:v12 forState:0];

    [(GAXOptionsDoneButton *)v8 setStyleProvider:v7];
  }

  return v8;
}

- (void)setHighlighted:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GAXOptionsDoneButton;
  [(GAXOptionsDoneButton *)&v8 setHighlighted:?];
  v5 = [(GAXOptionsDoneButton *)self styleProvider];
  v6 = v5;
  if (a3)
  {
    [v5 optionsDoneButtonBackgroundHighlightedColor];
  }

  else
  {
    [v5 optionsDoneButtonBackgroundColor];
  }
  v7 = ;
  [(GAXOptionsDoneButton *)self setBackgroundColor:v7];
}

@end