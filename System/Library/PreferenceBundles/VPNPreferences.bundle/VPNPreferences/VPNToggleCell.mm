@interface VPNToggleCell
- (void)layoutSubviews;
@end

@implementation VPNToggleCell

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = VPNToggleCell;
  [(VPNToggleCell *)&v19 layoutSubviews];
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  detailTextLabel = [(VPNToggleCell *)self detailTextLabel];
  [detailTextLabel frame];
  v6 = v5;

  v7 = 10.0;
  if (!userInterfaceLayoutDirection)
  {
    v7 = -10.0;
  }

  v8 = v6 + v7;
  detailTextLabel2 = [(VPNToggleCell *)self detailTextLabel];
  [detailTextLabel2 frame];
  v11 = v10;
  detailTextLabel3 = [(VPNToggleCell *)self detailTextLabel];
  [detailTextLabel3 frame];
  v14 = v13;
  detailTextLabel4 = [(VPNToggleCell *)self detailTextLabel];
  [detailTextLabel4 frame];
  v17 = v16;
  detailTextLabel5 = [(VPNToggleCell *)self detailTextLabel];
  [detailTextLabel5 setFrame:{v8, v11, v14, v17}];
}

@end