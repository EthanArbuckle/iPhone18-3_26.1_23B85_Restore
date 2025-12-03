@interface MFConversationViewCell
- (MFConversationViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setDisplayMetrics:(id)metrics;
@end

@implementation MFConversationViewCell

- (MFConversationViewCell)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = MFConversationViewCell;
  v3 = [(MFConversationViewCell *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(MFConversationViewCell *)v3 contentView];
    [contentView setClipsToBounds:1];

    [(MFConversationViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    v6 = [UIView alloc];
    [(MFConversationViewCell *)v4 bounds];
    v7 = [v6 initWithFrame:?];
    [(MFConversationViewCell *)v4 setContentWrapperView:v7];

    contentWrapperView = [(MFConversationViewCell *)v4 contentWrapperView];
    [contentWrapperView setAutoresizingMask:18];

    contentWrapperView2 = [(MFConversationViewCell *)v4 contentWrapperView];
    [(MFConversationViewCell *)v4 addSubview:contentWrapperView2];

    contentWrapperView3 = [(MFConversationViewCell *)v4 contentWrapperView];
    contentView2 = [(MFConversationViewCell *)v4 contentView];
    [contentWrapperView3 addSubview:contentView2];

    contentWrapperView4 = [(MFConversationViewCell *)v4 contentWrapperView];
    [contentWrapperView4 setInsetsLayoutMarginsFromSafeArea:0];

    contentView3 = [(MFConversationViewCell *)v4 contentView];
    [contentView3 setPreservesSuperviewLayoutMargins:1];

    contentView4 = [(MFConversationViewCell *)v4 contentView];
    [contentView4 setInsetsLayoutMarginsFromSafeArea:0];

    contentView5 = [(MFConversationViewCell *)v4 contentView];
    [contentView5 setLayoutMargins:{0.0, 31.0, 0.0, 31.0}];

    if (qword_1006DD4C0 != -1)
    {
      sub_10048B514();
    }

    if (byte_1006DD4B8 == 1)
    {
      v16 = +[UIColor lightGrayColor];
      cGColor = [v16 CGColor];
      layer = [(MFConversationViewCell *)v4 layer];
      [layer setBorderColor:cGColor];

      v19 = +[UIScreen mainScreen];
      [v19 scale];
      v21 = v20;
      layer2 = [(MFConversationViewCell *)v4 layer];
      [layer2 setBorderWidth:1.0 / v21];
    }

    [(MFConversationViewCell *)v4 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v4;
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    [(MFConversationViewCell *)self _displayMetricsDidChange];
  }
}

- (void)layoutMarginsDidChange
{
  v20.receiver = self;
  v20.super_class = MFConversationViewCell;
  [(MFConversationViewCell *)&v20 layoutMarginsDidChange];
  [(MFConversationViewCell *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(MFConversationViewCell *)self contentView];
  [contentView layoutMargins];
  v16 = v15;
  if (v10 < 31.0)
  {
    v10 = 31.0;
  }

  if (v6 < 31.0)
  {
    v6 = 31.0;
  }

  if (v6 == v13 && v4 == v12 && v10 == v14)
  {

    if (v8 == v16)
    {
      return;
    }
  }

  else
  {
  }

  contentView2 = [(MFConversationViewCell *)self contentView];
  [contentView2 setLayoutMargins:{v4, v6, v8, v10}];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = MFConversationViewCell;
  [(MFConversationViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  zIndex = [attributesCopy zIndex];
  layer = [(MFConversationViewCell *)self layer];
  [layer setZPosition:zIndex];
}

- (void)prepareForReuse
{
  [(MFConversationViewCell *)self setItemID:0];
  [(MFConversationViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentWrapperView = [(MFConversationViewCell *)self contentWrapperView];
  [contentWrapperView setFrame:{v4, v6, v8, v10}];

  v12.receiver = self;
  v12.super_class = MFConversationViewCell;
  [(MFConversationViewCell *)&v12 prepareForReuse];
}

@end