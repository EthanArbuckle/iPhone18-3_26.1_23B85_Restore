@interface VPNToggleCell
- (void)layoutSubviews;
@end

@implementation VPNToggleCell

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = VPNToggleCell;
  [(VPNToggleCell *)&v19 layoutSubviews];
  v3 = [UIApp userInterfaceLayoutDirection];
  v4 = [(VPNToggleCell *)self detailTextLabel];
  [v4 frame];
  v6 = v5;

  v7 = 10.0;
  if (!v3)
  {
    v7 = -10.0;
  }

  v8 = v6 + v7;
  v9 = [(VPNToggleCell *)self detailTextLabel];
  [v9 frame];
  v11 = v10;
  v12 = [(VPNToggleCell *)self detailTextLabel];
  [v12 frame];
  v14 = v13;
  v15 = [(VPNToggleCell *)self detailTextLabel];
  [v15 frame];
  v17 = v16;
  v18 = [(VPNToggleCell *)self detailTextLabel];
  [v18 setFrame:{v8, v11, v14, v17}];
}

@end