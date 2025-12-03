@interface CNContactListSectionHeaderFooterView
- (void)layoutSubviews;
@end

@implementation CNContactListSectionHeaderFooterView

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CNContactListSectionHeaderFooterView;
  [(CNContactListSectionHeaderFooterView *)&v19 layoutSubviews];
  [(CNContactListSectionHeaderFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CNContactStyle currentStyle];
  usesInsetPlatterStyle = [v11 usesInsetPlatterStyle];

  if (usesInsetPlatterStyle)
  {
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    v21 = CGRectInset(v20, 8.0, 0.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    backgroundView = [(CNContactListSectionHeaderFooterView *)self backgroundView];
    [backgroundView setFrame:{x, y, width, height}];

    backgroundView2 = [(CNContactListSectionHeaderFooterView *)self backgroundView];
    [backgroundView2 _setContinuousCornerRadius:8.0];
  }
}

@end