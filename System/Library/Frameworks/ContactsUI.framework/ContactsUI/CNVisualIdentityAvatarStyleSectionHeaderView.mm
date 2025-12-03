@interface CNVisualIdentityAvatarStyleSectionHeaderView
+ (CGSize)sizeWithText:(id)text;
+ (NSString)reuseID;
- (CNVisualIdentityAvatarStyleSectionHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation CNVisualIdentityAvatarStyleSectionHeaderView

- (CNVisualIdentityAvatarStyleSectionHeaderView)initWithFrame:(CGRect)frame
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CNVisualIdentityAvatarStyleSectionHeaderView;
  v3 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    font = [objc_opt_class() font];
    [(UILabel *)v3->_label setFont:font];

    [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 addSubview:v3->_label];
    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    layoutMarginsGuide = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v21;
    trailingAnchor = [(UILabel *)v3->_label trailingAnchor];
    layoutMarginsGuide2 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v17;
    topAnchor = [(UILabel *)v3->_label topAnchor];
    layoutMarginsGuide3 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v10;
    bottomAnchor = [(UILabel *)v3->_label bottomAnchor];
    layoutMarginsGuide4 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v3;
}

+ (CGSize)sizeWithText:(id)text
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69DB648];
  textCopy = text;
  font = [self font];
  v14[0] = font;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [textCopy boundingRectWithSize:0 options:v6 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (NSString)reuseID
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end