@interface THGlossaryTermsViewController
+ (id)newViewController;
- (BOOL)shouldHighlightWord:(id)a3;
- (CGRect)tableView:(id)a3 frameForSectionIndexGivenProposedFrame:(CGRect)a4;
- (THGlossaryIndex)glossaryIndex;
- (THGlossaryTermsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)layerForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4;
- (id)p_activeTableView;
- (id)p_constraintsOfSeparatorInCell:(id)a3 tableView:(id)a4 indexPath:(id)a5;
- (id)p_previousCellForTableView:(id)a3 indexPath:(id)a4;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)selectedEntry;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (unint64_t)numberOfFloatingHeaders:(id)a3;
- (unint64_t)numberOfRowsForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4;
- (unint64_t)rowNumberForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4;
- (void)_styleForTheme;
- (void)clearSearch;
- (void)dealloc;
- (void)glossaryTermTableCell:(id)a3 selected:(BOOL)a4;
- (void)scrollToEntry:(id)a3 scrollPosition:(int64_t)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)selectEntry:(id)a3 scrollPosition:(int64_t)a4 animated:(BOOL)a5;
- (void)setSearchString:(id)a3;
- (void)setTheme:(id)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation THGlossaryTermsViewController

+ (id)newViewController
{
  v2 = [THGlossaryTermsViewController alloc];

  return [(THGlossaryTermsViewController *)v2 initWithNibName:0 bundle:0];
}

- (THGlossaryTermsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = THBundle();
  v9.receiver = self;
  v9.super_class = THGlossaryTermsViewController;
  v7 = [(THGlossaryTermsViewController *)&v9 initWithNibName:a3 bundle:v6];
  if (v7)
  {
    [(THGlossaryTermsViewController *)v7 setTheme:[IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme]];
    [(THGlossaryTermsViewController *)v7 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(THGlossaryTermsViewController *)self setDidLayoutBlock:0];

  self->_searchString = 0;
  self->_glossaryIndex = 0;
  [(THFloatingHeaderController *)self->_floatingHeaderController setDelegate:0];
  [(THFloatingHeaderController *)self->_floatingHeaderController setTableView:0];

  self->_floatingHeaderController = 0;
  [(UISearchBar *)self->_searchBar setDelegate:0];
  v3.receiver = self;
  v3.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v3 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v3 viewDidLayoutSubviews];
  [(THGlossaryTermsViewController *)self setHasDoneLayout:1];
  if ([(THGlossaryTermsViewController *)self didLayoutBlock])
  {
    (*([(THGlossaryTermsViewController *)self didLayoutBlock]+ 2))();
    [(THGlossaryTermsViewController *)self setDidLayoutBlock:0];
  }
}

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v4 setTheme:a3];
  [(THGlossaryTermsViewController *)self _styleForTheme];
}

- (void)_styleForTheme
{
  v3 = [-[THGlossaryTermsViewController themePage](self "themePage")];
  -[UITableView setSeparatorColor:](-[THGlossaryTermsViewController tableView](self, "tableView"), "setSeparatorColor:", [-[THGlossaryTermsViewController themePage](self "themePage")]);
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setBackgroundColor:v3];
  [-[THGlossaryTermsViewController view](self "view")];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] reloadData];
  v4 = [(THGlossaryTermsViewController *)self floatingHeaderController];

  [(THFloatingHeaderController *)v4 reloadData];
}

- (THGlossaryIndex)glossaryIndex
{
  result = self->_glossaryIndex;
  if (!result)
  {
    if ([(THGlossaryTermsViewController *)self isSearching])
    {
      v4 = [THGlossaryIndex alphabeticalIndexForGlossary:[(THGlossaryController *)[(THGlossaryTermsViewController *)self glossaryController] model] withPrefix:self->_searchString];
    }

    else
    {
      v4 = [(THGlossaryController *)[(THGlossaryTermsViewController *)self glossaryController] alphabeticalTermIndex];
    }

    result = v4;
    self->_glossaryIndex = result;
  }

  return result;
}

- (BOOL)shouldHighlightWord:(id)a3
{
  v5 = [(NSString *)self->_searchString length];
  if (v5)
  {
    v6 = [a3 normalizedStringForSearch];
    v7 = [(NSString *)self->_searchString normalizedStringForSearch];

    LOBYTE(v5) = [v6 hasPrefix:v7];
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v5 viewDidLoad];
  [-[THGlossaryTermsViewController view](self "view")];
  [-[THGlossaryTermsViewController view](self "view")];
  [-[THGlossaryTermsViewController view](self "view")];
  -[UISearchBar setPlaceholder:](-[THGlossaryTermsViewController searchBar](self, "searchBar"), "setPlaceholder:", [THBundle() localizedStringForKey:@"Search" value:&stru_471858 table:0]);
  [(UISearchBar *)[(THGlossaryTermsViewController *)self searchBar] setDelegate:self];
  [(UIView *)[(THGlossaryTermsViewController *)self dividerView] setBackgroundColor:[UIColor colorWithRed:0.784313725 green:0.780392157 blue:0.8 alpha:1.0]];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setSectionHeaderHeight:0.0];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setRowHeight:44.0];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setSeparatorStyle:0];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setSectionIndexBackgroundColor:+[UIColor clearColor]];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setClipsToBounds:1];
  [(UITableView *)[(THGlossaryTermsViewController *)self tableView] setContentInsetAdjustmentBehavior:0];
  [(THGlossaryTermsViewController *)self setFloatingHeaderController:objc_alloc_init(THFloatingHeaderController)];
  [(THFloatingHeaderController *)[(THGlossaryTermsViewController *)self floatingHeaderController] setDelegate:self];
  [(THFloatingHeaderController *)[(THGlossaryTermsViewController *)self floatingHeaderController] setTableView:[(THGlossaryTermsViewController *)self tableView]];
  [(THFloatingHeaderController *)[(THGlossaryTermsViewController *)self floatingHeaderController] reloadData];
  TSUScreenScale();
  [(NSLayoutConstraint *)[(THGlossaryTermsViewController *)self dividerHeightConstraint] setConstant:1.0 / v3];
  v4 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v4 addObserver:self selector:"dismissSearchKeyboard:" name:kTHGlossaryDismissSearchNotification object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v4 viewWillDisappear:a3];
  [(UISearchBar *)[(THGlossaryTermsViewController *)self searchBar] resignFirstResponder];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = THGlossaryTermsViewController;
  [(THGlossaryTermsViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(THFloatingHeaderController *)[(THGlossaryTermsViewController *)self floatingHeaderController] layoutHeaders];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(THGlossaryTermsViewController *)self floatingHeaderController];

  [(THFloatingHeaderController *)v3 layoutHeaders];
}

- (id)p_previousCellForTableView:(id)a3 indexPath:(id)a4
{
  result = [a3 indexPathForRowPreceedingIndexPath:a4];
  if (result)
  {
    v6 = result;
    objc_opt_class();
    [a3 cellForRowAtIndexPath:v6];

    return TSUDynamicCast();
  }

  return result;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  [(THGlossaryTermsViewController *)self dismissSearchKeyboard:self];
  [(THGlossaryNavigationDelegate *)[(THGlossaryTermsViewController *)self navigationDelegate] displayEntry:[(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] entryForRowAtIndexPath:a4] whenCollapsed:1];
  return a4;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v4 = [(THGlossaryTermsViewController *)self p_previousCellForTableView:a3 indexPath:a4];

  [v4 setFollowingCellHighlighted:1];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v4 = [(THGlossaryTermsViewController *)self p_previousCellForTableView:a3 indexPath:a4];

  [v4 setFollowingCellHighlighted:0];
}

- (CGRect)tableView:(id)a3 frameForSectionIndexGivenProposedFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [a3 _shouldReverseLayoutDirection];
  [a3 safeAreaInsets];
  v12 = -v11;
  if (v9)
  {
    v12 = v10;
  }

  v13 = x + v12;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)glossaryTermTableCell:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v7 = [(THGlossaryTermsViewController *)self tableView];
  v8 = [(THGlossaryTermsViewController *)self p_previousCellForTableView:v7 indexPath:[(UITableView *)v7 indexPathForCell:a3]];

  [v8 setFollowingCellSelected:v4];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(THGlossaryTermsViewController *)self glossaryIndex];

  return [(THGlossaryIndex *)v3 numberOfSections];
}

- (id)p_constraintsOfSeparatorInCell:(id)a3 tableView:(id)a4 indexPath:(id)a5
{
  v7 = [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex:a3] isLastInSection:a5];
  v8 = +[NSMutableArray array];
  TSUScreenScale();
  v10 = [NSNumber numberWithDouble:1.0 / v9];
  if (([(THGlossaryTermsViewController *)self isSearching]| v7))
  {
    v11 = &off_49D168;
  }

  else
  {
    v11 = &off_49CF50;
  }

  v12 = [a3 separatorView];
  v13 = _NSDictionaryOfVariableBindings(@"leftIndent", v11, 0);
  [v8 addObjectsFromArray:{+[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-leftIndent-[separatorView]|", 0, v13, _NSDictionaryOfVariableBindings(@"separatorView", v12, 0))}];
  v14 = _NSDictionaryOfVariableBindings(@"separatorHeight", v10, 0);
  [v8 addObjectsFromArray:{+[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[separatorView(==separatorHeight)]|", 0, v14, _NSDictionaryOfVariableBindings(@"separatorView", v12, 0))}];
  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = [a3 dequeueReusableCellWithIdentifier:@"THGlossaryTermTableViewCell"];
  if (!v7)
  {
    v7 = [[THGlossaryTermTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"THGlossaryTermTableViewCell"];
    [(THGlossaryTermTableViewCell *)v7 setSelectionStyle:0];
    [(THLabelWithWordHighlights *)[(THGlossaryTermTableViewCell *)v7 labelWithHighlights] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(THLabelWithWordHighlights *)[(THGlossaryTermTableViewCell *)v7 labelWithHighlights] setBackgroundColor:+[UIColor clearColor]];
    [(THLabelWithWordHighlights *)[(THGlossaryTermTableViewCell *)v7 labelWithHighlights] setTextFont:[UIFont systemFontOfSize:17.0]];
    [(THLabelWithWordHighlights *)[(THGlossaryTermTableViewCell *)v7 labelWithHighlights] setHighlightedTextFont:[UIFont boldSystemFontOfSize:17.0]];
    [(THLabelWithWordHighlights *)[(THGlossaryTermTableViewCell *)v7 labelWithHighlights] setDelegate:self];
    [(UIView *)[(THGlossaryTermTableViewCell *)v7 separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(THGlossaryTermTableViewCell *)v7 setDelegate:self];
  }

  v8 = [(THGlossaryTermsViewController *)self themePage];
  [-[THGlossaryTermTableViewCell contentView](v7 "contentView")];
  -[THLabelWithWordHighlights setTextColor:](-[THGlossaryTermTableViewCell labelWithHighlights](v7, "labelWithHighlights"), "setTextColor:", [v8 primaryTextColor]);
  -[THLabelWithWordHighlights setHighlightedTextColor:](-[THGlossaryTermTableViewCell labelWithHighlights](v7, "labelWithHighlights"), "setHighlightedTextColor:", [v8 primaryTextColor]);
  -[UIView setBackgroundColor:](-[THGlossaryTermTableViewCell separatorView](v7, "separatorView"), "setBackgroundColor:", [v8 separatorColor]);
  [-[THGlossaryTermTableViewCell selectedBackgroundView](v7 "selectedBackgroundView")];
  -[THLabelWithWordHighlights setText:](-[THGlossaryTermTableViewCell labelWithHighlights](v7, "labelWithHighlights"), "setText:", [-[THGlossaryIndex entryForRowAtIndexPath:](-[THGlossaryTermsViewController glossaryIndex](self "glossaryIndex")]);
  v9 = +[NSMutableArray array];
  v10 = _NSDictionaryOfVariableBindings(@"labelWithHighlights", [(THGlossaryTermTableViewCell *)v7 labelWithHighlights], 0);
  v11 = _NSDictionaryOfVariableBindings(@"glossaryTermIndent", &off_49CF50, 0);
  [v9 addObjectsFromArray:{+[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-glossaryTermIndent-[labelWithHighlights]|", 0x10000, v11, v10)}];
  [v9 addObjectsFromArray:{+[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[labelWithHighlights]|", 0, v11, v10)}];
  [v9 addObjectsFromArray:{-[THGlossaryTermsViewController p_constraintsOfSeparatorInCell:tableView:indexPath:](self, "p_constraintsOfSeparatorInCell:tableView:indexPath:", v7, a3, a4)}];
  [(THGlossaryTermTableViewCell *)v7 removeConstraints:[(THGlossaryTermTableViewCell *)v7 constraints]];
  [(THGlossaryTermTableViewCell *)v7 addConstraints:v9];
  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = v7;
    v9 = [-[THGlossaryIndex entryForRowAtIndexPath:](-[THGlossaryTermsViewController glossaryIndex](self "glossaryIndex")];
    v10 = [v8 labelWithHighlights];

    [v10 setText:v9];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(THGlossaryTermsViewController *)self glossaryIndex];

  return [(THGlossaryIndex *)v5 numberOfRowsInSection:a4];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(THGlossaryTermsViewController *)self glossaryIndex];

  return [(THGlossaryIndex *)v5 titleForHeaderInSection:a4];
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if ([(THGlossaryTermsViewController *)self isSearching])
  {
    return 0;
  }

  v4 = [+[UILocalizedIndexedCollation currentCollation](UILocalizedIndexedCollation sectionIndexTitles];

  return [NSMutableArray arrayWithArray:v4];
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  if (a5)
  {
    if ([(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] numberOfEntries]< 1)
    {
      return 0;
    }

    else
    {
      v8 = [(THGlossaryTermsViewController *)self glossaryIndex];

      return [(THGlossaryIndex *)v8 sectionForSectionIndexTitle:a4 atIndex:a5];
    }
  }

  else
  {
    [a3 scrollToRowAtIndexPath:+[NSIndexPath indexPathForRow:inSection:](NSIndexPath atScrollPosition:"indexPathForRow:inSection:" animated:{0, 0), 3, 0}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)p_activeTableView
{
  if ([(THGlossaryTermsViewController *)self isSearching]&& [(THGlossaryTermsViewController *)self searchDisplayController])
  {
    v3 = [(THGlossaryTermsViewController *)self searchDisplayController];

    return [v3 searchResultsTableView];
  }

  else
  {

    return [(THGlossaryTermsViewController *)self tableView];
  }
}

- (void)selectEntry:(id)a3 scrollPosition:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  if ([(THGlossaryTermsViewController *)self hasDoneLayout])
  {
    v9 = [(THGlossaryTermsViewController *)self p_activeTableView];
    if ([(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] indexForEntry:a3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v9 indexPathForSelectedRow];

      [v9 deselectRowAtIndexPath:v10 animated:0];
    }

    else
    {
      v11 = [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] indexPathForEntry:a3];
      [v9 selectRowAtIndexPath:v11 animated:v5 scrollPosition:a4];

      [v9 scrollToRowAtIndexPath:v11 atScrollPosition:a4 animated:v5];
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3052000000;
    v13[3] = sub_BB6C0;
    v13[4] = sub_BB6D0;
    v13[5] = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_BB6DC;
    v12[3] = &unk_45CF30;
    v12[4] = a3;
    v12[5] = v13;
    v12[6] = a4;
    [(THGlossaryTermsViewController *)self setDidLayoutBlock:v12];
    _Block_object_dispose(v13, 8);
  }
}

- (void)scrollToEntry:(id)a3 scrollPosition:(int64_t)a4
{
  if (a3 && [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] indexForEntry:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(THGlossaryTermsViewController *)self p_activeTableView];
    v8 = [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] indexPathForEntry:a3];

    [v7 scrollToRowAtIndexPath:v8 atScrollPosition:a4 animated:1];
  }
}

- (id)selectedEntry
{
  v3 = [-[THGlossaryTermsViewController p_activeTableView](self "p_activeTableView")];
  v4 = [(THGlossaryTermsViewController *)self glossaryIndex];

  return [(THGlossaryIndex *)v4 entryForRowAtIndexPath:v3];
}

- (void)setSearchString:(id)a3
{
  if ([NSString normalizedCompare:a3 with:self->_searchString])
  {
    v5 = [(THGlossaryNavigationDelegate *)[(THGlossaryTermsViewController *)self navigationDelegate] displayedEntry];

    self->_searchString = [a3 copy];
    self->_glossaryIndex = 0;
    [(UITableView *)[(THGlossaryTermsViewController *)self tableView] reloadData];
    if ([(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] numberOfEntries]>= 1 && [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] indexForEntry:v5]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THGlossaryTermsViewController *)self selectEntry:v5 scrollPosition:1 animated:1];
    }

    v6 = [(THGlossaryTermsViewController *)self navigationDelegate];

    [(THGlossaryNavigationDelegate *)v6 displayEntry:v5 whenCollapsed:0];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  result = [-[THGlossaryTermsViewController themePage](self "themePage")];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  -[THGlossaryTermsViewController setSearchString:](self, "setSearchString:", [a3 text]);
  v6 = [(THGlossaryTermsViewController *)self floatingHeaderController];
  v7 = [a4 length] != 0;

  [(THFloatingHeaderController *)v6 setHeaderHidden:v7];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [a3 setText:0];

  [(THGlossaryTermsViewController *)self clearSearch];
}

- (void)clearSearch
{
  [(THGlossaryTermsViewController *)self dismissSearchKeyboard:0];
  v3 = +[NSString string];

  [(THGlossaryTermsViewController *)self setSearchString:v3];
}

- (unint64_t)numberOfFloatingHeaders:(id)a3
{
  v3 = [(THGlossaryTermsViewController *)self glossaryIndex];

  return [(THGlossaryIndex *)v3 numberOfSections];
}

- (id)layerForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4
{
  v15 = *&CATransform3DIdentity.m33;
  v16 = *&CATransform3DIdentity.m31;
  *&v19.m31 = v16;
  *&v19.m33 = v15;
  v13 = *&CATransform3DIdentity.m43;
  v14 = *&CATransform3DIdentity.m41;
  *&v19.m41 = v14;
  *&v19.m43 = v13;
  v11 = *&CATransform3DIdentity.m13;
  v12 = *&CATransform3DIdentity.m11;
  *&v19.m11 = *&CATransform3DIdentity.m11;
  *&v19.m13 = v11;
  v9 = *&CATransform3DIdentity.m23;
  v10 = *&CATransform3DIdentity.m21;
  *&v19.m21 = v10;
  *&v19.m23 = v9;
  if ([objc_msgSend(a4 "tableView")])
  {
    *&v18.m31 = v16;
    *&v18.m33 = v15;
    *&v18.m41 = v14;
    *&v18.m43 = v13;
    *&v18.m11 = v12;
    *&v18.m13 = v11;
    *&v18.m21 = v10;
    *&v18.m23 = v9;
    CATransform3DScale(&v19, &v18, -1.0, 1.0, 1.0);
  }

  v6 = +[CATextLayer layer];
  v18 = v19;
  [v6 setTransform:&v18];
  [v6 setFrame:{0.0, 2.0, 41.0, 20.0}];
  [v6 setAnchorPoint:{0.5, 0.0}];
  [v6 setFont:{objc_msgSend(+[TSUFont systemFontOfSize:](TSUFont, "systemFontOfSize:", 17.0), "fontName")}];
  [v6 setFontSize:17.0];
  [v6 setAlignmentMode:kCAAlignmentCenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_BBCC8;
  v17[3] = &unk_45AE58;
  v17[4] = v6;
  v17[5] = self;
  [-[THGlossaryTermsViewController traitCollection](self "traitCollection")];
  [v6 setBackgroundColor:{-[UIColor CGColor](+[UIColor clearColor](UIColor, "clearColor"), "CGColor")}];
  [v6 setString:{-[THGlossaryIndex titleForHeaderInSection:](-[THGlossaryTermsViewController glossaryIndex](self, "glossaryIndex"), "titleForHeaderInSection:", a3)}];
  [+[UIScreen mainScreen](UIScreen scale];
  [v6 setContentsScale:?];
  v7 = +[CALayer layer];
  [(CALayer *)v7 setFrame:0.0, 0.0, 44.0, 44.0];
  [(CALayer *)v7 setAnchorPoint:0.0, 0.0];
  -[CALayer setBackgroundColor:](v7, "setBackgroundColor:", [+[UIColor clearColor](UIColor CGColor]);
  [(CALayer *)v7 addSublayer:v6];
  return v7;
}

- (unint64_t)rowNumberForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3 - 1;
  do
  {
    v5 += [(THGlossaryIndex *)[(THGlossaryTermsViewController *)self glossaryIndex] numberOfRowsInSection:v6--];
  }

  while (v6 != -1);
  return v5;
}

- (unint64_t)numberOfRowsForFloatingHeaderAtIndex:(unint64_t)a3 forController:(id)a4
{
  v5 = [(THGlossaryTermsViewController *)self glossaryIndex:a3];

  return [(THGlossaryIndex *)v5 numberOfRowsInSection:a3];
}

@end