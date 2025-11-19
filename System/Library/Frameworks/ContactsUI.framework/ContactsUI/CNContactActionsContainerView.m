@interface CNContactActionsContainerView
- (CNContactActionsContainerView)initWithArrangedSubviews:(id)a3;
@end

@implementation CNContactActionsContainerView

- (CNContactActionsContainerView)initWithArrangedSubviews:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNContactActionsContainerView;
  v3 = [(NUIContainerBoxView *)&v6 initWithArrangedSubviews:a3];
  v4 = v3;
  if (v3)
  {
    [(CNContactActionsContainerView *)v3 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerBoxView *)v4 setHorizontalAlignment:3];
    [(NUIContainerBoxView *)v4 setVerticalAlignment:3];
  }

  return v4;
}

@end