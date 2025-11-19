@interface MFConversationViewCell
- (MFConversationViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setDisplayMetrics:(id)a3;
@end

@implementation MFConversationViewCell

- (MFConversationViewCell)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = MFConversationViewCell;
  v3 = [(MFConversationViewCell *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFConversationViewCell *)v3 contentView];
    [v5 setClipsToBounds:1];

    [(MFConversationViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    v6 = [UIView alloc];
    [(MFConversationViewCell *)v4 bounds];
    v7 = [v6 initWithFrame:?];
    [(MFConversationViewCell *)v4 setContentWrapperView:v7];

    v8 = [(MFConversationViewCell *)v4 contentWrapperView];
    [v8 setAutoresizingMask:18];

    v9 = [(MFConversationViewCell *)v4 contentWrapperView];
    [(MFConversationViewCell *)v4 addSubview:v9];

    v10 = [(MFConversationViewCell *)v4 contentWrapperView];
    v11 = [(MFConversationViewCell *)v4 contentView];
    [v10 addSubview:v11];

    v12 = [(MFConversationViewCell *)v4 contentWrapperView];
    [v12 setInsetsLayoutMarginsFromSafeArea:0];

    v13 = [(MFConversationViewCell *)v4 contentView];
    [v13 setPreservesSuperviewLayoutMargins:1];

    v14 = [(MFConversationViewCell *)v4 contentView];
    [v14 setInsetsLayoutMarginsFromSafeArea:0];

    v15 = [(MFConversationViewCell *)v4 contentView];
    [v15 setLayoutMargins:{0.0, 31.0, 0.0, 31.0}];

    if (qword_1006DD4C0 != -1)
    {
      sub_10048B514();
    }

    if (byte_1006DD4B8 == 1)
    {
      v16 = +[UIColor lightGrayColor];
      v17 = [v16 CGColor];
      v18 = [(MFConversationViewCell *)v4 layer];
      [v18 setBorderColor:v17];

      v19 = +[UIScreen mainScreen];
      [v19 scale];
      v21 = v20;
      v22 = [(MFConversationViewCell *)v4 layer];
      [v22 setBorderWidth:1.0 / v21];
    }

    [(MFConversationViewCell *)v4 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v4;
}

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (([(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
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
  v11 = [(MFConversationViewCell *)self contentView];
  [v11 layoutMargins];
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

  v19 = [(MFConversationViewCell *)self contentView];
  [v19 setLayoutMargins:{v4, v6, v8, v10}];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFConversationViewCell;
  [(MFConversationViewCell *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 zIndex];
  v6 = [(MFConversationViewCell *)self layer];
  [v6 setZPosition:v5];
}

- (void)prepareForReuse
{
  [(MFConversationViewCell *)self setItemID:0];
  [(MFConversationViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MFConversationViewCell *)self contentWrapperView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12.receiver = self;
  v12.super_class = MFConversationViewCell;
  [(MFConversationViewCell *)&v12 prepareForReuse];
}

@end