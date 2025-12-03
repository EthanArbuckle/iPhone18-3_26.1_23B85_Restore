@interface MailStatusBarView
+ (id)log;
- (MailStatusBarView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayWithStatusInfo:(id)info;
- (void)setShouldShowLargeTitle:(BOOL)title;
- (void)setTarget:(id)target withAction:(SEL)action;
- (void)setTextAlignment:(int64_t)alignment;
- (void)showFilterCriteriaButtonWithStatusInfo:(id)info;
- (void)showIndeterminateStatusWithStatusInfo:(id)info;
- (void)showProgressBarWithStatusInfo:(id)info;
- (void)showUndoButtonWithStatusInfo:(id)info;
- (void)showUpdateStatusWithStatusInfo:(id)info;
- (void)switchSubviewToView:(id)view;
@end

@implementation MailStatusBarView

- (void)setNeedsDisplay
{
  v3 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001310D0;
    v4[3] = &unk_100651198;
    v4[4] = self;
    [(MailStatusBarViewDelegate *)v3 currentStatusInfoWithCompletion:v4];
  }
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130094;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD190 != -1)
  {
    dispatch_once(&qword_1006DD190, block);
  }

  v2 = qword_1006DD188;

  return v2;
}

- (MailStatusBarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (pthread_main_np() != 1)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailStatusBarView.m" lineNumber:54 description:@"Current thread must be main"];
  }

  v18.receiver = self;
  v18.super_class = MailStatusBarView;
  height = [(MailStatusBarView *)&v18 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    height->_textAlignment = 1;
    [(MailStatusBarView *)height setOpaque:0];
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      [(MailStatusBarView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [(MailStatusBarView *)v10 widthAnchor];
      v12 = [widthAnchor constraintEqualToConstant:230.0];

      LODWORD(v13) = 1144750080;
      [v12 setPriority:v13];
      [v12 setActive:1];
      heightAnchor = [(MailStatusBarView *)v10 heightAnchor];
      v15 = [heightAnchor constraintEqualToConstant:23.0];
      [v15 setActive:1];
    }
  }

  return v10;
}

- (void)setTarget:(id)target withAction:(SEL)action
{
  targetCopy = target;
  if (targetCopy && action)
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:targetCopy action:action];
    [(MailStatusBarView *)self addGestureRecognizer:v6];
  }

  else
  {
    [(MailStatusBarView *)self removeAllGestureRecognizers];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&self->_delegate, delegate);
  [(MailStatusLabelView *)self->_updateView setDelegate:self->_delegate];
  [(MailStatusLabelView *)self->_progressStatusView setDelegate:self->_delegate];
}

- (void)switchSubviewToView:(id)view
{
  viewCopy = view;
  [(MailStatusBarView *)self bounds];
  [viewCopy setFrame:?];
  subviews = [(MailStatusBarView *)self subviews];
  if ([subviews count] == 1 && (objc_msgSend(subviews, "objectAtIndex:", 0), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == viewCopy))
  {
    [viewCopy setNeedsDisplay];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    [v7 addObjectsFromArray:subviews];
    if (viewCopy)
    {
      [v8 addObject:viewCopy];
      if ([v7 containsObject:viewCopy])
      {
        [v7 removeObject:viewCopy];
      }

      else
      {
        [viewCopy setAlpha:0.0];
        [(MailStatusBarView *)self addSubview:viewCopy];
        if (MUISolariumFeatureEnabled())
        {
          [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
          [viewCopy mf_pinToView:self usingLayoutMargins:0];
        }
      }

      [viewCopy setNeedsDisplay];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001306DC;
    v13[3] = &unk_10064C660;
    v14 = v7;
    v9 = v8;
    v15 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10013088C;
    v11[3] = &unk_10064C570;
    v10 = v14;
    v12 = v10;
    [UIView animateWithDuration:4 delay:v13 options:v11 animations:0.25 completion:0.0];
  }
}

- (void)showUpdateStatusWithStatusInfo:(id)info
{
  infoCopy = info;
  updateView = self->_updateView;
  v9 = infoCopy;
  if (!updateView)
  {
    v6 = [MailStatusUpdateView alloc];
    [(MailStatusBarView *)self bounds];
    v7 = [(MailStatusUpdateView *)v6 initWithFrame:?];
    v8 = self->_updateView;
    self->_updateView = v7;

    [(MailStatusLabelView *)self->_updateView setDelegate:self->_delegate];
    [(MailStatusLabelView *)self->_updateView setTextAlignment:[(MailStatusBarView *)self textAlignment]];
    [(MailStatusLabelView *)self->_updateView setShouldShowLargeTitle:[(MailStatusBarView *)self shouldShowLargeTitle]];
    updateView = self->_updateView;
    infoCopy = v9;
  }

  [(MailStatusUpdateView *)updateView updateWithStatusInfo:infoCopy];
  [(MailStatusBarView *)self switchSubviewToView:self->_updateView];
}

- (void)showProgressBarWithStatusInfo:(id)info
{
  infoCopy = info;
  progressStatusView = self->_progressStatusView;
  v9 = infoCopy;
  if (!progressStatusView)
  {
    v6 = [MailStatusProgressBarView alloc];
    [(MailStatusBarView *)self bounds];
    v7 = [(MailStatusLabelView *)v6 initWithFrame:?];
    v8 = self->_progressStatusView;
    self->_progressStatusView = v7;

    [(MailStatusLabelView *)self->_progressStatusView setDelegate:self->_delegate];
    progressStatusView = self->_progressStatusView;
    infoCopy = v9;
  }

  [(MailStatusProgressBarView *)progressStatusView updateWithStatusInfo:infoCopy];
  [(MailStatusBarView *)self switchSubviewToView:self->_progressStatusView];
}

- (void)showIndeterminateStatusWithStatusInfo:(id)info
{
  infoCopy = info;
  status = [infoCopy status];

  if (status)
  {
    indeterminateView = self->_indeterminateView;
    if (!indeterminateView)
    {
      v7 = [MailStatusIndeterminateView alloc];
      [(MailStatusBarView *)self bounds];
      v8 = [(MailStatusLabelView *)v7 initWithFrame:?];
      v9 = self->_indeterminateView;
      self->_indeterminateView = v8;

      [(MailStatusLabelView *)self->_indeterminateView setDelegate:self->_delegate];
      indeterminateView = self->_indeterminateView;
    }

    [(MailStatusIndeterminateView *)indeterminateView updateWithStatusInfo:infoCopy];
    [(MailStatusBarView *)self switchSubviewToView:self->_indeterminateView];
  }

  else
  {
    v10 = +[MailStatusBarView log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [infoCopy debugDescription];
      sub_100489830(v11, v12, v10);
    }
  }
}

- (void)showUndoButtonWithStatusInfo:(id)info
{
  infoCopy = info;
  undoView = self->_undoView;
  if (!undoView)
  {
    v5 = [MailStatusUndoView alloc];
    [(MailStatusBarView *)self bounds];
    v6 = [(MailStatusUndoView *)v5 initWithFrame:?];
    v7 = self->_undoView;
    self->_undoView = v6;

    [(MailStatusUndoView *)self->_undoView setDelegate:self];
    undoView = self->_undoView;
  }

  [(MailStatusBarView *)self switchSubviewToView:undoView];
}

- (void)showFilterCriteriaButtonWithStatusInfo:(id)info
{
  infoCopy = info;
  if (!self->_filterCriteriaButton)
  {
    v5 = +[UIButtonConfiguration plainButtonConfiguration];
    [v5 setTitleAlignment:1];
    [v5 setTitleLineBreakMode:4];
    [v5 setButtonSize:1];
    [v5 contentInsets];
    [v5 setContentInsets:?];
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013105C;
    v16[3] = &unk_10064F278;
    objc_copyWeak(&v17, &location);
    v6 = [UIAction actionWithHandler:v16];
    v7 = [UIButton buttonWithConfiguration:v5 primaryAction:v6];
    filterCriteriaButton = self->_filterCriteriaButton;
    self->_filterCriteriaButton = v7;

    v9 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 maximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
    titleLabel = [(UIButton *)self->_filterCriteriaButton titleLabel];
    [titleLabel setFont:v9];

    [(UIButton *)self->_filterCriteriaButton setContentHorizontalAlignment:1];
    [(UIButton *)self->_filterCriteriaButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_filterCriteriaButton setShowsLargeContentViewer:1];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Filtered By: %@" value:&stru_100662A88 table:0];

  v13 = self->_filterCriteriaButton;
  filterCriteria = [infoCopy filterCriteria];
  v15 = [NSString localizedStringWithFormat:v12, filterCriteria];
  [(UIButton *)v13 setTitle:v15 forState:0];

  [(MailStatusBarView *)self switchSubviewToView:self->_filterCriteriaButton];
}

- (void)setNeedsDisplayWithStatusInfo:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  selfCopy = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(MailStatusLabelView *)self->_updateView setTextAlignment:?];
  }
}

- (void)setShouldShowLargeTitle:(BOOL)title
{
  if (self->_shouldShowLargeTitle != title)
  {
    self->_shouldShowLargeTitle = title;
    [(MailStatusLabelView *)self->_updateView setShouldShowLargeTitle:?];
  }
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  [(MailStatusLabelView *)self->_progressStatusView setDelegate:0];
  [(MailStatusLabelView *)self->_updateView setDelegate:0];
  [(MailStatusLabelView *)self->_indeterminateView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MailStatusBarView;
  [(MailStatusBarView *)&v3 dealloc];
}

@end