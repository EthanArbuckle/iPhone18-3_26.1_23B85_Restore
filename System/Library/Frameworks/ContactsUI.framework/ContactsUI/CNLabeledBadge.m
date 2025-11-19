@interface CNLabeledBadge
+ (id)labeledBadgeWithText:(id)a3;
- (CNLabeledBadge)initWithFrame:(CGRect)a3;
@end

@implementation CNLabeledBadge

- (CNLabeledBadge)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CNLabeledBadge;
  v3 = [(CNLabeledBadge *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)labeledBadgeWithText:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNLabeledBadge);
  [(CNLabeledBadge *)v4 setText:v3];

  return v4;
}

@end