@interface RichLinkPluginController
- (BOOL)canPresentCustomizationPicker;
- (CKTranscriptLinkCustomizationPickerDelegate)customizationPickerDelegate;
- (CKTranscriptPluginView)pluginContentView;
- (RichLinkPluginController)initWithDataSource:(id)source isFromMe:(BOOL)me;
- (UIColor)balloonOutlineColor;
- (UIViewController)contentViewController;
- (double)maximumWidthForLinkViewInCustomizationPicker:(id)picker;
- (void)customizationPicker:(id)picker didSelectVariantAtIndex:(int64_t)index;
- (void)dealloc;
- (void)presentCustomizationPicker;
@end

@implementation RichLinkPluginController

- (RichLinkPluginController)initWithDataSource:(id)source isFromMe:(BOOL)me
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = RichLinkPluginController;
  v7 = [(RichLinkPluginController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, source);
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
    createRichLinkView = [(RichLinkPluginDataSource *)self->_dataSource createRichLinkView];
    v5 = self->_view;
    self->_view = createRichLinkView;

    [(LPLinkView *)self->_view _setAllowsOpeningSensitiveURLs:self->_allowsOpeningSensitiveURLs];
    view = self->_view;
  }

  return view;
}

- (UIViewController)contentViewController
{
  originalURL = [(RichLinkPluginDataSource *)self->_dataSource originalURL];
  if (originalURL)
  {
    v3 = [[NSURLComponents alloc] initWithURL:originalURL resolvingAgainstBaseURL:0];
    host = [v3 host];
    v5 = [host caseInsensitiveCompare:@"itunes.apple.com"];

    if (!v5)
    {
      goto LABEL_16;
    }

    host2 = [v3 host];
    v7 = [host2 caseInsensitiveCompare:@"itunes.com"];

    if (!v7)
    {
      goto LABEL_16;
    }

    host3 = [v3 host];
    v9 = [host3 caseInsensitiveCompare:@"itun.es"];

    if (!v9)
    {
      goto LABEL_16;
    }

    host4 = [v3 host];
    v11 = [host4 caseInsensitiveCompare:@"appsto.re"];

    if (!v11)
    {
      goto LABEL_16;
    }

    host5 = [v3 host];
    v13 = [host5 caseInsensitiveCompare:@"apps.apple.com"];

    if (!v13)
    {
      goto LABEL_16;
    }

    host6 = [v3 host];
    v15 = [host6 caseInsensitiveCompare:@"music.apple.com"];

    if (!v15)
    {
      goto LABEL_16;
    }

    host7 = [v3 host];
    v17 = [host7 caseInsensitiveCompare:@"movies.apple.com"];

    if (!v17)
    {
      goto LABEL_16;
    }

    host8 = [v3 host];
    v19 = [host8 caseInsensitiveCompare:@"tv.apple.com"];

    if (!v19)
    {
      goto LABEL_16;
    }

    host9 = [v3 host];
    v21 = [host9 caseInsensitiveCompare:@"books.apple.com"];

    if (!v21)
    {
      goto LABEL_16;
    }

    host10 = [v3 host];
    v23 = [host10 caseInsensitiveCompare:@"podcasts.apple.com"];

    if (!v23)
    {
      goto LABEL_16;
    }

    host11 = [v3 host];
    v25 = [host11 caseInsensitiveCompare:@"maps.apple.com"];

    if (!v25)
    {
      goto LABEL_16;
    }

    host12 = [v3 host];
    v27 = sub_1A14(host12, &off_CA50);

    if (v27)
    {
      pathComponents = [originalURL pathComponents];
      if ([pathComponents count] <= 1)
      {
      }

      else
      {
        v29 = [pathComponents objectAtIndexedSubscript:1];
        v30 = sub_1A14(v29, &off_CA68);

        if (v30)
        {
LABEL_16:

          v31 = +[UIDevice currentDevice];
          _tapticEngine = [v31 _tapticEngine];
          [_tapticEngine actuateFeedback:2];

          viewControllerToPresent = 0;
          goto LABEL_20;
        }
      }
    }
  }

  v31 = [[MLULookupItem alloc] initWithURL:originalURL dataDetectorsResult:0 text:&stru_C4E8 range:{0, 0}];
  [v31 resolve];
  viewControllerToPresent = [v31 viewControllerToPresent];
LABEL_20:

  return viewControllerToPresent;
}

- (UIColor)balloonOutlineColor
{
  _dominantBackgroundColor = [(LPLinkView *)self->_view _dominantBackgroundColor];
  v3 = _dominantBackgroundColor;
  if (_dominantBackgroundColor)
  {
    v4 = _dominantBackgroundColor;
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
  _metadataVariants = [(LPLinkView *)self->_view _metadataVariants];
  v3 = [_metadataVariants count] > 1;

  return v3;
}

- (void)presentCustomizationPicker
{
  v3 = [(RichLinkPluginDataSource *)self->_dataSource balloonMaskIncludingTail:0 userInterfaceStyle:1];
  v4 = [[LPCustomizationPickerViewController alloc] initWithSource:self->_view];
  [v4 setCustomizationDelegate:self];
  [v4 setMask:v3];
  traitCollection = [(LPLinkView *)self->_view traitCollection];
  if (![traitCollection userInterfaceIdiom] || objc_msgSend(traitCollection, "horizontalSizeClass") == &dword_0 + 1 || objc_msgSend(traitCollection, "verticalSizeClass") == &dword_0 + 1)
  {
    [v4 setModalPresentationStyle:4];
    [v4 setTransitioningDelegate:v4];
  }

  else
  {
    [v4 setModalPresentationStyle:7];
    popoverPresentationController = [v4 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:12];

    view = self->_view;
    popoverPresentationController2 = [v4 popoverPresentationController];
    [popoverPresentationController2 setSourceView:view];
  }

  v6 = [UIViewController _viewControllerForFullScreenPresentationFromView:self->_view];
  if (v6)
  {
    customizationPickerDelegate = [(RichLinkPluginController *)self customizationPickerDelegate];
    [customizationPickerDelegate customizationPickerControllerWillPresent:v4];

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

- (void)customizationPicker:(id)picker didSelectVariantAtIndex:(int64_t)index
{
  pickerCopy = picker;
  _selectedVariantIndex = [(LPLinkView *)self->_view _selectedVariantIndex];
  if (!_selectedVariantIndex || (v8 = _selectedVariantIndex, -[LPLinkView _selectedVariantIndex](self->_view, "_selectedVariantIndex"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 integerValue], v9, v8, v10 != index))
  {
    v11 = [NSNumber numberWithInteger:index];
    [(LPLinkView *)self->_view _setSelectedVariantIndex:v11];

    dataSource = self->_dataSource;
    _flattenedMetadata = [(LPLinkView *)self->_view _flattenedMetadata];
    [(RichLinkPluginDataSource *)dataSource setFlattenedMetadataForSending:_flattenedMetadata];

    [(RichLinkPluginDataSource *)self->_dataSource didChangeSelectedVariant];
  }

  customizationPickerDelegate = [(RichLinkPluginController *)self customizationPickerDelegate];
  [customizationPickerDelegate customizationPickerControllerWillDismiss:pickerCopy];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_18D8;
  v22 = &unk_C320;
  selfCopy = self;
  v15 = pickerCopy;
  v24 = v15;
  [v15 dismissViewControllerAnimated:1 completion:&v19];
  v16 = [(RichLinkPluginController *)self customizationPickerDelegate:v19];
  if (objc_opt_respondsToSelector())
  {
    v17 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v17 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [UIKeyboard setKeyboardAlpha:0.0];
    }
  }

  else
  {
  }
}

- (double)maximumWidthForLinkViewInCustomizationPicker:(id)picker
{
  pickerCopy = picker;
  customizationPickerDelegate = [(RichLinkPluginController *)self customizationPickerDelegate];
  v6 = [customizationPickerDelegate transitionContextForCustomizationPickerController:pickerCopy];

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