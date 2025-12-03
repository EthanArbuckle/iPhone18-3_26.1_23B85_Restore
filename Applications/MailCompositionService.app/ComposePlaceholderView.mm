@interface ComposePlaceholderView
- (ComposePlaceholderView)initWithFrame:(CGRect)frame subject:(id)subject modelFuture:(id)future;
- (id)snapshotContentUsingWebView:(id)view;
- (void)_createSubviews;
- (void)_setSubject:(id)subject;
- (void)_updateHeadersWithModel:(id)model;
- (void)_updateIndividualFieldsWithModel:(id)model;
- (void)_updateMultiFieldWithModel:(id)model;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)layoutSubviews;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation ComposePlaceholderView

- (ComposePlaceholderView)initWithFrame:(CGRect)frame subject:(id)subject modelFuture:(id)future
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subjectCopy = subject;
  futureCopy = future;
  v16.receiver = self;
  v16.super_class = ComposePlaceholderView;
  height = [(ComposePlaceholderView *)&v16 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_modelFuture, future);
    [(ComposePlaceholderView *)v14 _createSubviews];
    [(ComposePlaceholderView *)v14 _setSubject:subjectCopy];
  }

  return v14;
}

- (void)_createSubviews
{
  v3 = +[UIColor systemBackgroundColor];
  [(ComposePlaceholderView *)self setBackgroundColor:v3];

  [(ComposePlaceholderView *)self setUserInteractionEnabled:0];
  v4 = [[UINavigationBar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  navigationBar = self->_navigationBar;
  self->_navigationBar = v4;

  [(ComposePlaceholderView *)self addSubview:self->_navigationBar];
  v6 = objc_alloc_init(UINavigationItem);
  v34 = v6;
  v7 = [NSArray arrayWithObjects:&v34 count:1];
  [(UINavigationBar *)self->_navigationBar setItems:v7];

  [(ComposePlaceholderView *)self bounds];
  Width = CGRectGetWidth(v35);
  +[MFMailComposeView preferredHeaderHeight];
  v10 = v9;
  v11 = [[MFMailComposeToField alloc] initWithFrame:{0.0, 0.0, Width, v9}];
  toField = self->_toField;
  self->_toField = v11;

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"TO" value:&stru_1000188C0 table:@"Main"];
  [(MFMailComposeToField *)self->_toField setLabel:v14];

  [(MFMailComposeToField *)self->_toField setIndicatesUnsafeRecipientsWhenCollapsed:1];
  [(MFMailComposeToField *)self->_toField setEnabled:0];
  [(ComposePlaceholderView *)self addSubview:self->_toField];
  v15 = [[MFComposeMultiView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  multiField = self->_multiField;
  self->_multiField = v15;

  [(MFComposeMultiView *)self->_multiField setUserInteractionEnabled:0];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CC/BCC" value:&stru_1000188C0 table:@"Main"];
  [(MFComposeMultiView *)self->_multiField setLabel:v18];

  [(ComposePlaceholderView *)self addSubview:self->_multiField];
  v19 = [[MFMailComposeRecipientTextView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  ccField = self->_ccField;
  self->_ccField = v19;

  [(MFMailComposeRecipientTextView *)self->_ccField setIndicatesUnsafeRecipientsWhenCollapsed:1];
  [(MFMailComposeRecipientTextView *)self->_ccField setEnabled:0];
  [(MFMailComposeRecipientTextView *)self->_ccField setHidden:1];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CC" value:&stru_1000188C0 table:@"Main"];
  [(MFMailComposeRecipientTextView *)self->_ccField setLabel:v22];

  [(ComposePlaceholderView *)self addSubview:self->_ccField];
  v23 = [[MFMailComposeRecipientTextView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  bccField = self->_bccField;
  self->_bccField = v23;

  [(MFMailComposeRecipientTextView *)self->_bccField setIndicatesUnsafeRecipientsWhenCollapsed:1];
  [(MFMailComposeRecipientTextView *)self->_bccField setEnabled:0];
  [(MFMailComposeRecipientTextView *)self->_bccField setHidden:1];
  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"BCC" value:&stru_1000188C0 table:@"Main"];
  [(MFMailComposeRecipientTextView *)self->_bccField setLabel:v26];

  [(ComposePlaceholderView *)self addSubview:self->_bccField];
  v27 = [[MFComposeFromView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  fromField = self->_fromField;
  self->_fromField = v27;

  [(MFComposeFromView *)self->_fromField setUserInteractionEnabled:0];
  [(MFComposeFromView *)self->_fromField setHidden:1];
  [(ComposePlaceholderView *)self addSubview:self->_fromField];
  v29 = [[MFComposeSubjectView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  subjectField = self->_subjectField;
  self->_subjectField = v29;

  [(MFComposeSubjectView *)self->_subjectField setEnabled:0];
  [(MFComposeSubjectView *)self->_subjectField setDelegate:self];
  [(ComposePlaceholderView *)self addSubview:self->_subjectField];
  v31 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, Width, v10}];
  snapshotImageView = self->_snapshotImageView;
  self->_snapshotImageView = v31;

  v33 = +[UIColor systemBackgroundColor];
  [(UIImageView *)self->_snapshotImageView setBackgroundColor:v33];

  [(ComposePlaceholderView *)self addSubview:self->_snapshotImageView];
  [(ComposePlaceholderView *)self bringSubviewToFront:self->_navigationBar];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = ComposePlaceholderView;
  [(ComposePlaceholderView *)&v30 layoutSubviews];
  [(ComposePlaceholderView *)self bounds];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v7 = CGRectGetWidth(v33);
  if (MUISolariumFeatureEnabled())
  {
    v8 = 8.0;
  }

  else
  {
    v8 = 0.0;
  }

  navigationBar = [(ComposePlaceholderView *)self navigationBar];
  [navigationBar setFrame:{0.0, v8, v7, 50.0}];

  toField = [(ComposePlaceholderView *)self toField];
  v32[0] = toField;
  multiField = [(ComposePlaceholderView *)self multiField];
  v32[1] = multiField;
  ccField = [(ComposePlaceholderView *)self ccField];
  v32[2] = ccField;
  bccField = [(ComposePlaceholderView *)self bccField];
  v32[3] = bccField;
  fromField = [(ComposePlaceholderView *)self fromField];
  v32[4] = fromField;
  subjectField = [(ComposePlaceholderView *)self subjectField];
  v32[5] = subjectField;
  v16 = [NSArray arrayWithObjects:v32 count:6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v19 = *v27;
    v20 = 50.0;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if (([v22 isHidden] & 1) == 0)
        {
          [v22 bounds];
          v23 = CGRectGetHeight(v34);
          [v22 setFrame:{0.0, v20, v7, v23}];
          v20 = v20 + v23;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = 50.0;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v24 = CGRectGetHeight(v35);
  snapshotImageView = [(ComposePlaceholderView *)self snapshotImageView];
  [snapshotImageView setFrame:{0.0, v20, v7, v24 - v20}];
}

- (void)_updateHeadersWithModel:(id)model
{
  modelCopy = model;
  toRecipients = [modelCopy toRecipients];
  toField = [(ComposePlaceholderView *)self toField];
  [toField setRecipients:toRecipients];

  if ([modelCopy shouldUseMultiField])
  {
    [(ComposePlaceholderView *)self _updateMultiFieldWithModel:modelCopy];
  }

  else
  {
    multiField = [(ComposePlaceholderView *)self multiField];
    [multiField setHidden:1];

    [(ComposePlaceholderView *)self _updateIndividualFieldsWithModel:modelCopy];
    [(ComposePlaceholderView *)self setNeedsLayout];
  }
}

- (void)_updateMultiFieldWithModel:(id)model
{
  modelCopy = model;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CC/BCC" value:&stru_1000188C0 table:@"Main"];

  if ([modelCopy showSenderAddress])
  {
    senderAddress = [modelCopy senderAddress];

    if (senderAddress)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"CC/BCC/FROM" value:&stru_1000188C0 table:@"Main"];

      v5 = v8;
    }
  }

  multiField = [(ComposePlaceholderView *)self multiField];
  senderAddress2 = [modelCopy senderAddress];
  [multiField setAccountDescription:senderAddress2];

  multiField2 = [(ComposePlaceholderView *)self multiField];
  [multiField2 setLabel:v5];
}

- (void)_updateIndividualFieldsWithModel:(id)model
{
  modelCopy = model;
  ccRecipients = [modelCopy ccRecipients];
  v5 = [ccRecipients count];

  if (v5)
  {
    ccRecipients2 = [modelCopy ccRecipients];
    ccField = [(ComposePlaceholderView *)self ccField];
    [ccField setRecipients:ccRecipients2];

    ccField2 = [(ComposePlaceholderView *)self ccField];
    [ccField2 setHidden:0];
  }

  bccRecipients = [modelCopy bccRecipients];
  v10 = [bccRecipients count];

  if (v10)
  {
    bccRecipients2 = [modelCopy bccRecipients];
    bccField = [(ComposePlaceholderView *)self bccField];
    [bccField setRecipients:bccRecipients2];

    bccField2 = [(ComposePlaceholderView *)self bccField];
    [bccField2 setHidden:0];
  }

  if ([modelCopy showSenderAddress])
  {
    senderAddress = [modelCopy senderAddress];

    if (senderAddress)
    {
      senderAddress2 = [modelCopy senderAddress];
      fromField = [(ComposePlaceholderView *)self fromField];
      [fromField setSelectedAddress:senderAddress2];

      fromField2 = [(ComposePlaceholderView *)self fromField];
      [fromField2 setHidden:0];
    }
  }
}

- (void)_setSubject:(id)subject
{
  subjectCopy = subject;
  v13 = subjectCopy;
  if (subjectCopy)
  {
    v7 = 0;
    v8 = 0;
    v9 = subjectCopy;
  }

  else
  {
    v7 = +[UIDevice mf_isPadIdiom];
    v3 = NSBundle;
    [NSBundle bundleForClass:objc_opt_class()];
    if (v7)
      v3 = {;
      [v3 localizedStringForKey:@"NEW_MESSAGE_LONG" value:&stru_1000188C0 table:@"Main"];
    }

    else
      v4 = {;
      [v4 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1000188C0 table:@"Main"];
    }
    v9 = ;
    v8 = v7 ^ 1;
  }

  navigationBar = [(ComposePlaceholderView *)self navigationBar];
  topItem = [navigationBar topItem];
  [topItem setTitle:v9];

  if (v8)
  {
  }

  if (v7)
  {
  }

  subjectField = [(ComposePlaceholderView *)self subjectField];
  [subjectField setText:v13];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  subjectField = [(ComposePlaceholderView *)self subjectField];

  v8 = viewCopy;
  if (subjectField == viewCopy)
  {
    subjectField2 = [(ComposePlaceholderView *)self subjectField];
    [subjectField2 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    MinY = CGRectGetMinY(v22);
    subjectField3 = [(ComposePlaceholderView *)self subjectField];
    [subjectField3 setFrame:{0.0, MinY, width, height}];

    v8 = viewCopy;
  }
}

- (id)snapshotContentUsingWebView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  modelFuture = [(ComposePlaceholderView *)self modelFuture];
  v6 = +[EFScheduler mainThreadScheduler];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004644;
  v21[3] = &unk_1000185B0;
  objc_copyWeak(&v23, &location);
  v7 = viewCopy;
  v22 = v7;
  v8 = [modelFuture onScheduler:v6 then:v21];

  v9 = +[EFScheduler mainThreadScheduler];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000047C4;
  v19[3] = &unk_1000185D8;
  v10 = v7;
  v20 = v10;
  v11 = [v8 onScheduler:v9 then:v19];

  v12 = +[EFScheduler mainThreadScheduler];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004868;
  v16[3] = &unk_100018628;
  objc_copyWeak(&v18, &location);
  v13 = v10;
  v17 = v13;
  v14 = [v11 onScheduler:v12 then:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v14;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v5 = [(ComposePlaceholderView *)self contentLoadingPromise:view];
  v4 = +[NSNull null];
  [v5 finishWithResult:v4];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  contentLoadingPromise = [(ComposePlaceholderView *)self contentLoadingPromise];
  [contentLoadingPromise finishWithError:errorCopy];
}

@end