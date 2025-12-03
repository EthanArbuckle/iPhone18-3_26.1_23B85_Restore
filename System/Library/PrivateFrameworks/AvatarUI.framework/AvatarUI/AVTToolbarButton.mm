@interface AVTToolbarButton
- (AVTToolbarButton)initWithTitle:(id)title isDefault:(BOOL)default;
@end

@implementation AVTToolbarButton

- (AVTToolbarButton)initWithTitle:(id)title isDefault:(BOOL)default
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = AVTToolbarButton;
  v8 = [(AVTToolbarButton *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    v9->_isDefault = default;
  }

  return v9;
}

@end