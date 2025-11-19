@interface CNVisualIdentityAvatarStyleSectionHeaderView
+ (CGSize)sizeWithText:(id)a3;
+ (NSString)reuseID;
- (CNVisualIdentityAvatarStyleSectionHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation CNVisualIdentityAvatarStyleSectionHeaderView

- (CNVisualIdentityAvatarStyleSectionHeaderView)initWithFrame:(CGRect)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CNVisualIdentityAvatarStyleSectionHeaderView;
  v3 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    v6 = [objc_opt_class() font];
    [(UILabel *)v3->_label setFont:v6];

    [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 addSubview:v3->_label];
    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(UILabel *)v3->_label leadingAnchor];
    v24 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    v22 = [v24 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v19 = [(UILabel *)v3->_label trailingAnchor];
    v20 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    v18 = [v20 trailingAnchor];
    v17 = [v19 constraintEqualToAnchor:v18];
    v26[1] = v17;
    v7 = [(UILabel *)v3->_label topAnchor];
    v8 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v26[2] = v10;
    v11 = [(UILabel *)v3->_label bottomAnchor];
    v12 = [(CNVisualIdentityAvatarStyleSectionHeaderView *)v3 layoutMarginsGuide];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v3;
}

+ (CGSize)sizeWithText:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69DB648];
  v4 = a3;
  v5 = [a1 font];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v4 boundingRectWithSize:0 options:v6 attributes:0 context:{1.79769313e308, 1.79769313e308}];
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