@interface RichLinkPluginController
- (BOOL)canPresentCustomizationPicker;
- (CKTranscriptLinkCustomizationPickerDelegate)customizationPickerDelegate;
- (CKTranscriptPluginView)pluginContentView;
- (RichLinkPluginController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4;
- (UIColor)balloonOutlineColor;
- (UIViewController)contentViewController;
- (double)maximumWidthForLinkViewInCustomizationPicker:(id)a3;
- (void)customizationPicker:(id)a3 didSelectVariantAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)presentCustomizationPicker;
@end

@implementation RichLinkPluginController

- (RichLinkPluginController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = RichLinkPluginController;
  v7 = [(RichLinkPluginController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, a3);
    [(RichLinkPluginDataSource *)v8->_dataSource addClient:v8];
  }

  return v8;
}

- (void)dealloc
{
  if (self->_keyboardHidden)
  {
    [UIKeyboard setKeyboardAlpha:1.0];
  }

  v3.receiver = self;
  v3.super_class = RichLinkPluginController;
  [(RichLinkPluginController *)&v3 dealloc];
}

- (CKTranscriptPluginView)pluginContentView
{
  view = self->_view;
  if (!view)
  {
    v4 = [(RichLinkPluginDataSource *)self->_dataSource createRichLinkView];
    v5 = self->_view;
    self->_view = v4;

    [(LPLinkView *)self->_view _setAllowsOpeningSensitiveURLs:self->_allowsOpeningSensitiveURLs];
    view = self->_view;
  }

  return view;
}

- (UIViewController)contentViewController
{
  v2 = [(RichLinkPluginDataSource *)self->_dataSource originalURL];
  if (v2)
  {
    v3 = [[NSURLComponents alloc] initWithURL:v2 resolvingAgainstBaseURL:0];
    v4 = [v3 host];
    v5 = [v4 caseInsensitiveCompare:@"itunes.apple.com"];

    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = [v3 host];
    v7 = [v6 caseInsensitiveCompare:@"itunes.com"];

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = [v3 host];
    v9 = [v8 caseInsensitiveCompare:@"itun.es"];

    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = [v3 host];
    v11 = [v10 caseInsensitiveCompare:@"appsto.re"];

    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [v3 host];
    v13 = [v12 caseInsensitiveCompare:@"apps.apple.com"];

    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = [v3 host];
    v15 = [v14 caseInsensitiveCompare:@"music.apple.com"];

    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = [v3 host];
    v17 = [v16 caseInsensitiveCompare:@"movies.apple.com"];

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [v3 host];
    v19 = [v18 caseInsensitiveCompare:@"tv.apple.com"];

    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = [v3 host];
    v21 = [v20 caseInsensitiveCompare:@"books.apple.com"];

    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = [v3 host];
    v23 = [v22 caseInsensitiveCompare:@"podcasts.apple.com"];

    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = [v3 host];
    v25 = [v24 caseInsensitiveCompare:@"maps.apple.com"];

    if (!v25)
    {
      goto LABEL_16;
    }

    v26 = [v3 host];
    v27 = sub_1A14(v26, &off_CA50);

    if (v27)
    {
      v28 = [v2 pathComponents];
      if ([v28 count] <= 1)
      {
      }

      else
      {
        v29 = [v28 objectAtIndexedSubscript:1];
        v30 = sub_1A14(v29, &off_CA68);

        if (v30)
        {
LABEL_16:

          v31 = +[UIDevice currentDevice];
          v32 = [v31 _tapticEngine];
          [v32 actuateFeedback:2];

          v33 = 0;
          goto LABEL_20;
        }
      }
    }
  }

  v31 = [[MLULookupItem alloc] initWithURL:v2 dataDetectorsResult:0 text:&stru_C4E8 range:{0, 0}];
  [v31 resolve];
  v33 = [v31 viewControllerToPresent];
LABEL_20:

  return v33;
}

- (UIColor)balloonOutlineColor
{
  v2 = [(LPLinkView *)self->_view _dominantBackgroundColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIColor separatorColor];
  }

  v5 = v4;

  return v5;
}

- (BOOL)canPresentCustomizationPicker
{
  v2 = [(LPLinkView *)self->_view _metadataVariants];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)presentCustomizationPicker
{
  v3 = [(RichLinkPluginDataSource *)self->_dataSource balloonMaskIncludingTail:0 userInterfaceStyle:1];
  v4 = [[LPCustomizationPickerViewController alloc] initWithSource:self->_view];
  [v4 setCustomizationDelegate:self];
  [v4 setMask:v3];
  v5 = [(LPLinkView *)self->_view traitCollection];
  if (![v5 userInterfaceIdiom] || objc_msgSend(v5, "horizontalSizeClass") == &dword_0 + 1 || objc_msgSend(v5, "verticalSizeClass") == &dword_0 + 1)
  {
    [v4 setModalPresentationStyle:4];
    [v4 setTransitioningDelegate:v4];
  }

  else
  {
    [v4 setModalPresentationStyle:7];
    v9 = [v4 popoverPresentationController];
    [v9 setPermittedArrowDirections:12];

    view = self->_view;
    v11 = [v4 popoverPresentationController];
    [v11 setSourceView:view];
  }

  v6 = [UIViewController _viewControllerForFullScreenPresentationFromView:self->_view];
  if (v6)
  {
    v7 = [(RichLinkPluginController *)self customizationPickerDelegate];
    [v7 customizationPickerControllerWillPresent:v4];

    self->_keyboardHidden = 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_16C4;
    v12[3] = &unk_C320;
    v12[4] = self;
    v13 = v4;
    [v6 presentViewController:v13 animated:1 completion:v12];
  }

  else
  {
    v8 = LPLogChannelPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_58FC(v8);
    }
  }
}

- (void)customizationPicker:(id)a3 didSelectVariantAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(LPLinkView *)self->_view _selectedVariantIndex];
  if (!v7 || (v8 = v7, -[LPLinkView _selectedVariantIndex](self->_view, "_selectedVariantIndex"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 integerValue], v9, v8, v10 != a4))
  {
    v11 = [NSNumber numberWithInteger:a4];
    [(LPLinkView *)self->_view _setSelectedVariantIndex:v11];

    dataSource = self->_dataSource;
    v13 = [(LPLinkView *)self->_view _flattenedMetadata];
    [(RichLinkPluginDataSource *)dataSource setFlattenedMetadataForSending:v13];

    [(RichLinkPluginDataSource *)self->_dataSource didChangeSelectedVariant];
  }

  v14 = [(RichLinkPluginController *)self customizationPickerDelegate];
  [v14 customizationPickerControllerWillDismiss:v6];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_18D8;
  v22 = &unk_C320;
  v23 = self;
  v15 = v6;
  v24 = v15;
  [v15 dismissViewControllerAnimated:1 completion:&v19];
  v16 = [(RichLinkPluginController *)self customizationPickerDelegate:v19];
  if (objc_opt_respondsToSelector())
  {
    v17 = +[UIDevice currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if ((v18 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [UIKeyboard setKeyboardAlpha:0.0];
    }
  }

  else
  {
  }
}

- (double)maximumWidthForLinkViewInCustomizationPicker:(id)a3
{
  v4 = a3;
  v5 = [(RichLinkPluginController *)self customizationPickerDelegate];
  v6 = [v5 transitionContextForCustomizationPickerController:v4];

  [v6 maxWidthForSourceView];
  v8 = v7;

  return v8;
}

- (CKTranscriptLinkCustomizationPickerDelegate)customizationPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customizationPickerDelegate);

  return WeakRetained;
}

@end