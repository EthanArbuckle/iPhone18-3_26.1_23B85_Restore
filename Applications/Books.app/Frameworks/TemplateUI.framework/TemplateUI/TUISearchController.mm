@interface TUISearchController
- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)searchBarShouldClear:(id)clear;
- (TUISearchController)init;
- (TUIViewFactory)factory;
- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments;
- (void)configureSubviews;
- (void)configureWithModel:(id)model;
- (void)didUpdateWithTrigger:(id)trigger text:(id)text;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)setShowsSearchFilter:(BOOL)filter animated:(BOOL)animated;
@end

@implementation TUISearchController

- (TUISearchController)init
{
  v11.receiver = self;
  v11.super_class = TUISearchController;
  v2 = [(TUISearchController *)&v11 init];
  if (v2)
  {
    v3 = [[_TUIUIKitSearchController alloc] initWithSearchResultsController:0];
    searchController = v2->_searchController;
    v2->_searchController = v3;

    searchBar = [(_TUIUIKitSearchController *)v2->_searchController searchBar];
    [searchBar setDelegate:v2];

    v6 = [[_TUISearchFilterContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    searchFilterContentView = v2->_searchFilterContentView;
    v2->_searchFilterContentView = v6;

    v8 = [[_TUISearchFilterHostingPalette alloc] initWithContentView:v2->_searchFilterContentView];
    searchFilterPalette = v2->_searchFilterPalette;
    v2->_searchFilterPalette = v8;
  }

  return v2;
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  [(TUISearchController *)self setRenderModel:modelCopy];
  searchController = [(TUISearchController *)self searchController];
  [searchController setHidesNavigationBarDuringPresentation:1];

  searchController2 = [(TUISearchController *)self searchController];
  [searchController2 setObscuresBackgroundDuringPresentation:0];

  searchController3 = [(TUISearchController *)self searchController];
  searchBar = [searchController3 searchBar];

  searchField = [searchBar searchField];
  placeholderText = [modelCopy placeholderText];
  v32 = 0;
  v33 = [placeholderText length];

  placeholderText2 = [modelCopy placeholderText];
  v12 = [placeholderText2 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:&v32];

  if (v12)
  {
    v13 = [v12 mutableCopy];
  }

  else
  {
    v14 = +[NSParagraphStyle defaultParagraphStyle];
    v13 = [v14 mutableCopy];
  }

  [v13 setMaximumLineHeight:{0.0, v32, v33}];
  [v13 setMinimumLineHeight:0.0];
  v15 = [NSMutableAttributedString alloc];
  placeholderText3 = [modelCopy placeholderText];
  v17 = [v15 initWithAttributedString:placeholderText3];

  [v17 addAttribute:NSParagraphStyleAttributeName value:v13 range:{v32, v33}];
  [searchField setAttributedPlaceholder:v17];
  text = [searchBar text];
  v19 = [text length];

  if (!v19)
  {
    text2 = [modelCopy text];
    [searchBar setText:text2];
  }

  text3 = [searchBar text];
  v22 = [text3 length];

  if (v22)
  {
    v23 = objc_opt_class();
    searchController4 = [(TUISearchController *)self searchController];
    delegate = [searchController4 delegate];
    v26 = TUIDynamicCast(v23, delegate);

    presentedViewController = [v26 presentedViewController];

    if (!presentedViewController)
    {
      searchController5 = [(TUISearchController *)self searchController];
      [searchController5 setActive:1];
    }
  }

  v29 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([modelCopy keyboardAppearance]);
  if (v29 != [searchBar keyboardAppearance])
  {
    [searchBar setKeyboardAppearance:v29];
    [searchBar reloadInputViewsWithoutReset];
  }

  v30 = +[UIColor blackColor];
  if ([modelCopy keyboardAppearance] == &dword_0 + 1)
  {
    v31 = +[UIColor whiteColor];

    v30 = v31;
  }

  [searchBar setTintColor:v30];
  [(TUISearchController *)self configureSubviews];
}

- (void)didUpdateWithTrigger:(id)trigger text:(id)text
{
  v9 = @"value";
  textCopy = text;
  textCopy2 = text;
  triggerCopy = trigger;
  v8 = [NSDictionary dictionaryWithObjects:&textCopy forKeys:&v9 count:1];

  [(TUISearchController *)self _callActionHandlerForTrigger:triggerCopy arguments:v8];
}

- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments
{
  argumentsCopy = arguments;
  triggerCopy = trigger;
  renderModel = [(TUISearchController *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:triggerCopy arguments:argumentsCopy];
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  isBeingPresentedProgrammatically = [(_TUIUIKitSearchController *)self->_searchController isBeingPresentedProgrammatically];
  [(_TUIUIKitSearchController *)self->_searchController setIsBeingPresentedProgrammatically:0];
  return isBeingPresentedProgrammatically ^ 1;
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  searchController = [(TUISearchController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(TUISearchController *)self didUpdateWithTrigger:@"beginInput" text:text];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  searchController = [(TUISearchController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(TUISearchController *)self didUpdateWithTrigger:@"endInput" text:text];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v7 = [(TUISearchController *)self searchController:bar];
  searchBar = [v7 searchBar];
  text = [searchBar text];
  [(TUISearchController *)self didUpdateWithTrigger:@"changedInput" text:text];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  searchController = [(TUISearchController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(TUISearchController *)self didUpdateWithTrigger:@"returnPressed" text:text];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  searchController = [(TUISearchController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setText:&stru_264550];

  searchController2 = [(TUISearchController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  text = [searchBar2 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"cancelPressed" text:text];
}

- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  textCopy = text;
  text = [bar text];
  v10 = [text length];
  v11 = [textCopy length];

  v12 = v10 + v11 - length;
  renderModel = [(TUISearchController *)self renderModel];
  LOBYTE(self) = v12 <= [renderModel searchTextMaxLength];

  return self;
}

- (BOOL)searchBarShouldClear:(id)clear
{
  searchController = [(TUISearchController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(TUISearchController *)self didUpdateWithTrigger:@"clearPressed" text:text];

  return 1;
}

- (void)configureSubviews
{
  v3 = objc_opt_class();
  subviews = [(_TUISearchFilterContainerView *)self->_searchFilterContentView subviews];
  firstObject = [subviews firstObject];
  v6 = TUIDynamicCast(v3, firstObject);

  viewStateSave = [v6 viewStateSave];
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  [WeakRetained viewFactoryPrepareToReuseHost:self->_searchFilterContentView];

  subviewsModel = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
  if (subviewsModel)
  {
    v10 = objc_loadWeakRetained(&self->_factory);
    v11 = v10 != 0;

    if (v10)
    {
      [subviewsModel prepare];
      v32 = 0;
      v12 = objc_loadWeakRetained(&self->_factory);
      v13 = [subviewsModel configureSubviewsWithFactory:v12 outsets:self->_searchFilterContentView host:0 overrides:&v32 usedOverrides:0 UUID:0 uid:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [(TUISearchController *)self verifyHierarchyForSubview:*(*(&v28 + 1) + 8 * i) containerView:self->_searchFilterContentView];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v16);
      }

      v10 = &dword_0 + 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  [subviewsModel size];
  [(_TUISearchFilterContainerView *)self->_searchFilterContentView setIntrinsicContentSize:?];
  v19 = objc_opt_class();
  subviews2 = [(_TUISearchFilterContainerView *)self->_searchFilterContentView subviews];
  firstObject2 = [subviews2 firstObject];
  v22 = TUIDynamicCast(v19, firstObject2);

  if (viewStateSave)
  {
    v23 = objc_opt_class();
    if (v23 == objc_opt_class())
    {
      [v22 viewStateRestore:viewStateSave];
    }
  }

  transitionCoordinator = [(_TUIUIKitSearchController *)self->_searchController transitionCoordinator];
  v25 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_162A0C;
    v26[3] = &unk_263040;
    v26[4] = self;
    v27 = v11;
    [transitionCoordinator animateAlongsideTransition:0 completion:v26];
  }

  else
  {
    [(TUISearchController *)self setShowsSearchFilter:v10 animated:1];
  }
}

- (void)setShowsSearchFilter:(BOOL)filter animated:(BOOL)animated
{
  animatedCopy = animated;
  filterCopy = filter;
  [(_UINavigationBarPalette *)self->_searchFilterPalette setNeedsLayout];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_162C0C;
  v14[3] = &unk_25EF60;
  v14[4] = self;
  v15 = filterCopy;
  v7 = objc_retainBlock(v14);
  if (animatedCopy)
  {
    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setHidden:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_162CA4;
    v11[3] = &unk_263068;
    v13 = filterCopy;
    v11[4] = self;
    v12 = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_162D7C;
    v9[3] = &unk_261DF8;
    v9[4] = self;
    v10 = filterCopy;
    [UIView animateKeyframesWithDuration:0 delay:v11 options:v9 animations:0.35 completion:0.0];
  }

  else
  {
    v8 = 0.0;
    if (filterCopy)
    {
      v8 = 1.0;
    }

    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setAlpha:v8];
    (v7[2])(v7);
    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setHidden:!filterCopy];
  }
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end