@interface InboxTableView
- (InboxTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (InboxTableViewDelegate)listViewDelegate;
- (void)setPreferredBackgroundColor:(id)a3;
- (void)setShowNoContentString:(BOOL)a3;
@end

@implementation InboxTableView

- (InboxTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = InboxTableView;
  v4 = [(InboxTableView *)&v7 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setShowNoContentString:(BOOL)a3
{
  if (a3)
  {
    [(InboxTableView *)self setSeparatorStyle:0];
    if (!self->_noContentView)
    {
      v4 = +[UIContentUnavailableConfiguration emptyConfiguration];
      v5 = [(InboxTableView *)self listViewDelegate];
      v6 = [v5 noContentStringForInboxTableView:self];
      v28 = v4;
      [v4 setText:v6];

      v7 = [[UIContentUnavailableView alloc] initWithConfiguration:v4];
      noContentView = self->_noContentView;
      self->_noContentView = v7;

      [(UIContentUnavailableView *)self->_noContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(InboxTableView *)self addSubview:self->_noContentView];
      v27 = [(InboxTableView *)self safeAreaLayoutGuide];
      v26 = [v27 leadingAnchor];
      v25 = [(UIContentUnavailableView *)self->_noContentView leadingAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v29[0] = v24;
      v23 = [(InboxTableView *)self safeAreaLayoutGuide];
      v22 = [v23 trailingAnchor];
      v21 = [(UIContentUnavailableView *)self->_noContentView trailingAnchor];
      v9 = [v22 constraintEqualToAnchor:v21];
      v29[1] = v9;
      v10 = [(InboxTableView *)self safeAreaLayoutGuide];
      v11 = [v10 topAnchor];
      v12 = [(UIContentUnavailableView *)self->_noContentView topAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v29[2] = v13;
      v14 = [(InboxTableView *)self safeAreaLayoutGuide];
      v15 = [v14 bottomAnchor];
      v16 = [(UIContentUnavailableView *)self->_noContentView bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
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

- (void)setPreferredBackgroundColor:(id)a3
{
  v7 = a3;
  if (CalSplitViewEnabled())
  {
    [(InboxTableView *)self setBackgroundColor:0];
  }

  else
  {
    objc_storeStrong(&self->_preferredBackgroundColor, a3);
    v5 = [(InboxTableView *)self preferredBackgroundColor];
    if (v5)
    {
      [(InboxTableView *)self setBackgroundColor:v5];
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