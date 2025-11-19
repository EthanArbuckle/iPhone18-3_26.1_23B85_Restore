@interface ComposePlaceholderView
- (ComposePlaceholderView)initWithFrame:(CGRect)a3 subject:(id)a4 modelFuture:(id)a5;
- (id)snapshotContentUsingWebView:(id)a3;
- (void)_createSubviews;
- (void)_setSubject:(id)a3;
- (void)_updateHeadersWithModel:(id)a3;
- (void)_updateIndividualFieldsWithModel:(id)a3;
- (void)_updateMultiFieldWithModel:(id)a3;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)layoutSubviews;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation ComposePlaceholderView

- (ComposePlaceholderView)initWithFrame:(CGRect)a3 subject:(id)a4 modelFuture:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = ComposePlaceholderView;
  v13 = [(ComposePlaceholderView *)&v16 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_modelFuture, a5);
    [(ComposePlaceholderView *)v14 _createSubviews];
    [(ComposePlaceholderView *)v14 _setSubject:v11];
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

  v9 = [(ComposePlaceholderView *)self navigationBar];
  [v9 setFrame:{0.0, v8, v7, 50.0}];

  v10 = [(ComposePlaceholderView *)self toField];
  v32[0] = v10;
  v11 = [(ComposePlaceholderView *)self multiField];
  v32[1] = v11;
  v12 = [(ComposePlaceholderView *)self ccField];
  v32[2] = v12;
  v13 = [(ComposePlaceholderView *)self bccField];
  v32[3] = v13;
  v14 = [(ComposePlaceholderView *)self fromField];
  v32[4] = v14;
  v15 = [(ComposePlaceholderView *)self subjectField];
  v32[5] = v15;
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
  v25 = [(ComposePlaceholderView *)self snapshotImageView];
  [v25 setFrame:{0.0, v20, v7, v24 - v20}];
}

- (void)_updateHeadersWithModel:(id)a3
{
  v7 = a3;
  v4 = [v7 toRecipients];
  v5 = [(ComposePlaceholderView *)self toField];
  [v5 setRecipients:v4];

  if ([v7 shouldUseMultiField])
  {
    [(ComposePlaceholderView *)self _updateMultiFieldWithModel:v7];
  }

  else
  {
    v6 = [(ComposePlaceholderView *)self multiField];
    [v6 setHidden:1];

    [(ComposePlaceholderView *)self _updateIndividualFieldsWithModel:v7];
    [(ComposePlaceholderView *)self setNeedsLayout];
  }
}

- (void)_updateMultiFieldWithModel:(id)a3
{
  v12 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CC/BCC" value:&stru_1000188C0 table:@"Main"];

  if ([v12 showSenderAddress])
  {
    v6 = [v12 senderAddress];

    if (v6)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"CC/BCC/FROM" value:&stru_1000188C0 table:@"Main"];

      v5 = v8;
    }
  }

  v9 = [(ComposePlaceholderView *)self multiField];
  v10 = [v12 senderAddress];
  [v9 setAccountDescription:v10];

  v11 = [(ComposePlaceholderView *)self multiField];
  [v11 setLabel:v5];
}

- (void)_updateIndividualFieldsWithModel:(id)a3
{
  v18 = a3;
  v4 = [v18 ccRecipients];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v18 ccRecipients];
    v7 = [(ComposePlaceholderView *)self ccField];
    [v7 setRecipients:v6];

    v8 = [(ComposePlaceholderView *)self ccField];
    [v8 setHidden:0];
  }

  v9 = [v18 bccRecipients];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v18 bccRecipients];
    v12 = [(ComposePlaceholderView *)self bccField];
    [v12 setRecipients:v11];

    v13 = [(ComposePlaceholderView *)self bccField];
    [v13 setHidden:0];
  }

  if ([v18 showSenderAddress])
  {
    v14 = [v18 senderAddress];

    if (v14)
    {
      v15 = [v18 senderAddress];
      v16 = [(ComposePlaceholderView *)self fromField];
      [v16 setSelectedAddress:v15];

      v17 = [(ComposePlaceholderView *)self fromField];
      [v17 setHidden:0];
    }
  }
}

- (void)_setSubject:(id)a3
{
  v6 = a3;
  v13 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6;
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

  v10 = [(ComposePlaceholderView *)self navigationBar];
  v11 = [v10 topItem];
  [v11 setTitle:v9];

  if (v8)
  {
  }

  if (v7)
  {
  }

  v12 = [(ComposePlaceholderView *)self subjectField];
  [v12 setText:v13];
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v20 = a3;
  v7 = [(ComposePlaceholderView *)self subjectField];

  v8 = v20;
  if (v7 == v20)
  {
    v9 = [(ComposePlaceholderView *)self subjectField];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    MinY = CGRectGetMinY(v22);
    v19 = [(ComposePlaceholderView *)self subjectField];
    [v19 setFrame:{0.0, MinY, width, height}];

    v8 = v20;
  }
}

- (id)snapshotContentUsingWebView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ComposePlaceholderView *)self modelFuture];
  v6 = +[EFScheduler mainThreadScheduler];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004644;
  v21[3] = &unk_1000185B0;
  objc_copyWeak(&v23, &location);
  v7 = v4;
  v22 = v7;
  v8 = [v5 onScheduler:v6 then:v21];

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

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = [(ComposePlaceholderView *)self contentLoadingPromise:a3];
  v4 = +[NSNull null];
  [v5 finishWithResult:v4];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v7 = a5;
  v6 = [(ComposePlaceholderView *)self contentLoadingPromise];
  [v6 finishWithError:v7];
}

@end