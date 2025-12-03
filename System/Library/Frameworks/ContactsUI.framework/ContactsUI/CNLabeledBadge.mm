@interface CNLabeledBadge
+ (id)labeledBadgeWithText:(id)text;
- (CNLabeledBadge)initWithFrame:(CGRect)frame;
@end

@implementation CNLabeledBadge

- (CNLabeledBadge)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CNLabeledBadge;
  v3 = [(CNLabeledBadge *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CNUIFontRepository contactCardRecentBadgeFont];
    [(CNLabeledBadge *)v3 setFont:v4];

    v5 = +[CNUIColorRepository contactCardRecentBadgeTextDynamicColor];
    [(CNLabeledBadge *)v3 setTextColor:v5];

    [(CNLabeledBadge *)v3 setAdjustsFontForContentSizeCategory:1];
    [(CNLabeledBadge *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DC5D8]);
    [v6 setStyle:1];
    v7 = +[CNUIColorRepository contactCardLabeledBadgeBackgroundDynamicColor];
    [v6 setColor:v7];

    [v6 setScale:1];
    [(CNLabeledBadge *)v3 _setTextEncapsulation:v6];
    v8 = v3;
  }

  return v3;
}

+ (id)labeledBadgeWithText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(CNLabeledBadge);
  [(CNLabeledBadge *)v4 setText:textCopy];

  return v4;
}

@end