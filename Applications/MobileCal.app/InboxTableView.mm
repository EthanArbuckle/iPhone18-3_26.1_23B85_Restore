@interface InboxTableView
- (InboxTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (InboxTableViewDelegate)listViewDelegate;
- (void)setPreferredBackgroundColor:(id)color;
- (void)setShowNoContentString:(BOOL)string;
@end

@implementation InboxTableView

- (InboxTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = InboxTableView;
  v4 = [(InboxTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(InboxTableView *)v4 setAutoresizingMask:18];
    [(InboxTableView *)v5 setSeparatorStyle:1];
    +[CalendarMessageCell defaultRowHeight];
    [(InboxTableView *)v5 setRowHeight:?];
  }

  return v5;
}

- (void)setShowNoContentString:(BOOL)string
{
  if (string)
  {
    [(InboxTableView *)self setSeparatorStyle:0];
    if (!self->_noContentView)
    {
      v4 = +[UIContentUnavailableConfiguration emptyConfiguration];
      listViewDelegate = [(InboxTableView *)self listViewDelegate];
      v6 = [listViewDelegate noContentStringForInboxTableView:self];
      v28 = v4;
      [v4 setText:v6];

      v7 = [[UIContentUnavailableView alloc] initWithConfiguration:v4];
      noContentView = self->_noContentView;
      self->_noContentView = v7;

      [(UIContentUnavailableView *)self->_noContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(InboxTableView *)self addSubview:self->_noContentView];
      safeAreaLayoutGuide = [(InboxTableView *)self safeAreaLayoutGuide];
      leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
      leadingAnchor2 = [(UIContentUnavailableView *)self->_noContentView leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v29[0] = v24;
      safeAreaLayoutGuide2 = [(InboxTableView *)self safeAreaLayoutGuide];
      trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
      trailingAnchor2 = [(UIContentUnavailableView *)self->_noContentView trailingAnchor];
      v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v29[1] = v9;
      safeAreaLayoutGuide3 = [(InboxTableView *)self safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide3 topAnchor];
      topAnchor2 = [(UIContentUnavailableView *)self->_noContentView topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v29[2] = v13;
      safeAreaLayoutGuide4 = [(InboxTableView *)self safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
      bottomAnchor2 = [(UIContentUnavailableView *)self->_noContentView bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v29[3] = v17;
      v18 = [NSArray arrayWithObjects:v29 count:4];
      [NSLayoutConstraint activateConstraints:v18];
    }
  }

  else
  {
    [(InboxTableView *)self setSeparatorStyle:1];
    v19 = self->_noContentView;
    if (v19)
    {
      [(UIContentUnavailableView *)v19 removeFromSuperview];
      v20 = self->_noContentView;
      self->_noContentView = 0;
    }
  }
}

- (void)setPreferredBackgroundColor:(id)color
{
  colorCopy = color;
  if (CalSplitViewEnabled())
  {
    [(InboxTableView *)self setBackgroundColor:0];
  }

  else
  {
    objc_storeStrong(&self->_preferredBackgroundColor, color);
    preferredBackgroundColor = [(InboxTableView *)self preferredBackgroundColor];
    if (preferredBackgroundColor)
    {
      [(InboxTableView *)self setBackgroundColor:preferredBackgroundColor];
    }

    else
    {
      if ([(InboxTableView *)self style])
      {
        +[UIColor systemGroupedBackgroundColor];
      }

      else
      {
        +[UIColor tableBackgroundColor];
      }
      v6 = ;
      [(InboxTableView *)self setBackgroundColor:v6];
    }
  }
}

- (InboxTableViewDelegate)listViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listViewDelegate);

  return WeakRetained;
}

@end