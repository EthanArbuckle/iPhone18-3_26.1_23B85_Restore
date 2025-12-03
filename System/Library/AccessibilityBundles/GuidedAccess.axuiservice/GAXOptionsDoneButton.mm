@interface GAXOptionsDoneButton
+ (id)optionsDoneButtonWithTitle:(id)title styleProvider:(id)provider;
- (GAXOptionsDoneButton)initWithTitle:(id)title styleProvider:(id)provider;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation GAXOptionsDoneButton

+ (id)optionsDoneButtonWithTitle:(id)title styleProvider:(id)provider
{
  providerCopy = provider;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy styleProvider:providerCopy];

  return v8;
}

- (GAXOptionsDoneButton)initWithTitle:(id)title styleProvider:(id)provider
{
  titleCopy = title;
  providerCopy = provider;
  v8 = [(GAXOptionsDoneButton *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    optionsDoneButtonBackgroundColor = [providerCopy optionsDoneButtonBackgroundColor];
    [(GAXOptionsDoneButton *)v8 setBackgroundColor:optionsDoneButtonBackgroundColor];

    optionsDoneButtonFont = [providerCopy optionsDoneButtonFont];
    titleLabel = [(GAXOptionsDoneButton *)v8 titleLabel];
    [titleLabel setFont:optionsDoneButtonFont];

    [(GAXOptionsDoneButton *)v8 setTitle:titleCopy forState:0];
    tintColor = [(GAXOptionsDoneButton *)v8 tintColor];
    [(GAXOptionsDoneButton *)v8 setTitleColor:tintColor forState:0];

    [(GAXOptionsDoneButton *)v8 setStyleProvider:providerCopy];
  }

  return v8;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v8.receiver = self;
  v8.super_class = GAXOptionsDoneButton;
  [(GAXOptionsDoneButton *)&v8 setHighlighted:?];
  styleProvider = [(GAXOptionsDoneButton *)self styleProvider];
  v6 = styleProvider;
  if (highlighted)
  {
    [styleProvider optionsDoneButtonBackgroundHighlightedColor];
  }

  else
  {
    [styleProvider optionsDoneButtonBackgroundColor];
  }
  v7 = ;
  [(GAXOptionsDoneButton *)self setBackgroundColor:v7];
}

@end