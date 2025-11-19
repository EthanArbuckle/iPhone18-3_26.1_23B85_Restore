@interface TUISearchController
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)searchBarShouldClear:(id)a3;
- (TUISearchController)init;
- (TUIViewFactory)factory;
- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4;
- (void)configureSubviews;
- (void)configureWithModel:(id)a3;
- (void)didUpdateWithTrigger:(id)a3 text:(id)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)setShowsSearchFilter:(BOOL)a3 animated:(BOOL)a4;
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

    v5 = [(_TUIUIKitSearchController *)v2->_searchController searchBar];
    [v5 setDelegate:v2];

    v6 = [[_TUISearchFilterContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    searchFilterContentView = v2->_searchFilterContentView;
    v2->_searchFilterContentView = v6;

    v8 = [[_TUISearchFilterHostingPalette alloc] initWithContentView:v2->_searchFilterContentView];
    searchFilterPalette = v2->_searchFilterPalette;
    v2->_searchFilterPalette = v8;
  }

  return v2;
}

- (void)configureWithModel:(id)a3
{
  v4 = a3;
  [(TUISearchController *)self setRenderModel:v4];
  v5 = [(TUISearchController *)self searchController];
  [v5 setHidesNavigationBarDuringPresentation:1];

  v6 = [(TUISearchController *)self searchController];
  [v6 setObscuresBackgroundDuringPresentation:0];

  v7 = [(TUISearchController *)self searchController];
  v8 = [v7 searchBar];

  v9 = [v8 searchField];
  v10 = [v4 placeholderText];
  v32 = 0;
  v33 = [v10 length];

  v11 = [v4 placeholderText];
  v12 = [v11 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:&v32];

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
  v16 = [v4 placeholderText];
  v17 = [v15 initWithAttributedString:v16];

  [v17 addAttribute:NSParagraphStyleAttributeName value:v13 range:{v32, v33}];
  [v9 setAttributedPlaceholder:v17];
  v18 = [v8 text];
  v19 = [v18 length];

  if (!v19)
  {
    v20 = [v4 text];
    [v8 setText:v20];
  }

  v21 = [v8 text];
  v22 = [v21 length];

  if (v22)
  {
    v23 = objc_opt_class();
    v24 = [(TUISearchController *)self searchController];
    v25 = [v24 delegate];
    v26 = TUIDynamicCast(v23, v25);

    v27 = [v26 presentedViewController];

    if (!v27)
    {
      v28 = [(TUISearchController *)self searchController];
      [v28 setActive:1];
    }
  }

  v29 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v4 keyboardAppearance]);
  if (v29 != [v8 keyboardAppearance])
  {
    [v8 setKeyboardAppearance:v29];
    [v8 reloadInputViewsWithoutReset];
  }

  v30 = +[UIColor blackColor];
  if ([v4 keyboardAppearance] == &dword_0 + 1)
  {
    v31 = +[UIColor whiteColor];

    v30 = v31;
  }

  [v8 setTintColor:v30];
  [(TUISearchController *)self configureSubviews];
}

- (void)didUpdateWithTrigger:(id)a3 text:(id)a4
{
  v9 = @"value";
  v10 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(TUISearchController *)self _callActionHandlerForTrigger:v7 arguments:v8];
}

- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUISearchController *)self renderModel];
  v8 = [v9 actionHandler];
  [v8 invoke:v7 arguments:v6];
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v4 = [(_TUIUIKitSearchController *)self->_searchController isBeingPresentedProgrammatically];
  [(_TUIUIKitSearchController *)self->_searchController setIsBeingPresentedProgrammatically:0];
  return v4 ^ 1;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v6 = [(TUISearchController *)self searchController];
  v4 = [v6 searchBar];
  v5 = [v4 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"beginInput" text:v5];
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v6 = [(TUISearchController *)self searchController];
  v4 = [v6 searchBar];
  v5 = [v4 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"endInput" text:v5];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v7 = [(TUISearchController *)self searchController:a3];
  v5 = [v7 searchBar];
  v6 = [v5 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"changedInput" text:v6];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v6 = [(TUISearchController *)self searchController];
  v4 = [v6 searchBar];
  v5 = [v4 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"returnPressed" text:v5];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(TUISearchController *)self searchController];
  v5 = [v4 searchBar];
  [v5 setText:&stru_264550];

  v8 = [(TUISearchController *)self searchController];
  v6 = [v8 searchBar];
  v7 = [v6 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"cancelPressed" text:v7];
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = a5;
  v9 = [a3 text];
  v10 = [v9 length];
  v11 = [v8 length];

  v12 = v10 + v11 - length;
  v13 = [(TUISearchController *)self renderModel];
  LOBYTE(self) = v12 <= [v13 searchTextMaxLength];

  return self;
}

- (BOOL)searchBarShouldClear:(id)a3
{
  v4 = [(TUISearchController *)self searchController];
  v5 = [v4 searchBar];
  v6 = [v5 text];
  [(TUISearchController *)self didUpdateWithTrigger:@"clearPressed" text:v6];

  return 1;
}

- (void)configureSubviews
{
  v3 = objc_opt_class();
  v4 = [(_TUISearchFilterContainerView *)self->_searchFilterContentView subviews];
  v5 = [v4 firstObject];
  v6 = TUIDynamicCast(v3, v5);

  v7 = [v6 viewStateSave];
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  [WeakRetained viewFactoryPrepareToReuseHost:self->_searchFilterContentView];

  v9 = [(TUIRenderModelNavigationItem *)self->_renderModel subviewsModel];
  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_factory);
    v11 = v10 != 0;

    if (v10)
    {
      [v9 prepare];
      v32 = 0;
      v12 = objc_loadWeakRetained(&self->_factory);
      v13 = [v9 configureSubviewsWithFactory:v12 outsets:self->_searchFilterContentView host:0 overrides:&v32 usedOverrides:0 UUID:0 uid:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

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

  [v9 size];
  [(_TUISearchFilterContainerView *)self->_searchFilterContentView setIntrinsicContentSize:?];
  v19 = objc_opt_class();
  v20 = [(_TUISearchFilterContainerView *)self->_searchFilterContentView subviews];
  v21 = [v20 firstObject];
  v22 = TUIDynamicCast(v19, v21);

  if (v7)
  {
    v23 = objc_opt_class();
    if (v23 == objc_opt_class())
    {
      [v22 viewStateRestore:v7];
    }
  }

  v24 = [(_TUIUIKitSearchController *)self->_searchController transitionCoordinator];
  v25 = v24;
  if (v24)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_162A0C;
    v26[3] = &unk_263040;
    v26[4] = self;
    v27 = v11;
    [v24 animateAlongsideTransition:0 completion:v26];
  }

  else
  {
    [(TUISearchController *)self setShowsSearchFilter:v10 animated:1];
  }
}

- (void)setShowsSearchFilter:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(_UINavigationBarPalette *)self->_searchFilterPalette setNeedsLayout];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_162C0C;
  v14[3] = &unk_25EF60;
  v14[4] = self;
  v15 = v5;
  v7 = objc_retainBlock(v14);
  if (v4)
  {
    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setHidden:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_162CA4;
    v11[3] = &unk_263068;
    v13 = v5;
    v11[4] = self;
    v12 = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_162D7C;
    v9[3] = &unk_261DF8;
    v9[4] = self;
    v10 = v5;
    [UIView animateKeyframesWithDuration:0 delay:v11 options:v9 animations:0.35 completion:0.0];
  }

  else
  {
    v8 = 0.0;
    if (v5)
    {
      v8 = 1.0;
    }

    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setAlpha:v8];
    (v7[2])(v7);
    [(_TUISearchFilterContainerView *)self->_searchFilterContentView setHidden:!v5];
  }
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end