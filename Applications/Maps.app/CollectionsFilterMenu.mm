@interface CollectionsFilterMenu
+ (double)defaultHeightForDisplayStyle:(int64_t)style inContext:(int64_t)context;
- (AllCollectinsFilterRoutingDelegate)allCollectionsFilterRoutingDelegate;
- (CollectionsFilterMenu)initWithFrame:(CGRect)frame;
- (CollectionsFilterRoutingDelegate)publisherFilterRoutingDelegate;
- (id)menuUsingSelectedIndexPath:(id)path usingCount:(unint64_t)count;
- (id)titleForFilterAtIndexPath:(id)path;
- (void)addMenuButton;
- (void)configureForAllCollectionsWithRoutingDelegate:(id)delegate withAllCollectionsResultFilters:(id)filters withSelectedFilterIndex:(id)index selectedFilterResultsCount:(unint64_t)count;
- (void)configureForPublisherWithRoutingDelegate:(id)delegate withPublishersResultFilters:(id)filters withSelectedFilterIndex:(id)index selectedFilterResultsCount:(unint64_t)count;
- (void)filterSelectedAtIndexPath:(id)path;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation CollectionsFilterMenu

- (AllCollectinsFilterRoutingDelegate)allCollectionsFilterRoutingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_allCollectionsFilterRoutingDelegate);

  return WeakRetained;
}

- (CollectionsFilterRoutingDelegate)publisherFilterRoutingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_publisherFilterRoutingDelegate);

  return WeakRetained;
}

- (id)titleForFilterAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(CollectionsFilterMenu *)self logicController];
  v6 = [logicController filterAtIndexPath:pathCopy];

  filterTitle = [v6 filterTitle];

  return filterTitle;
}

- (void)filterSelectedAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(CollectionsFilterMenu *)self logicController];
  selectedFilterIndexPath = [logicController selectedFilterIndexPath];

  v6 = pathCopy;
  if (selectedFilterIndexPath != pathCopy)
  {
    logicController2 = [(CollectionsFilterMenu *)self logicController];
    v8 = [logicController2 filterAtIndexPath:pathCopy];

    menuButton = [(CollectionsFilterMenu *)self menuButton];
    filterTitle = [v8 filterTitle];
    [menuButton setTitle:filterTitle forState:0];

    context = self->_context;
    if (context == 1)
    {
      logicController3 = [(CollectionsFilterMenu *)self logicController];
      v13 = [logicController3 routeToSelectedAllCollectionsFilterAtIndexPath:pathCopy];

      allCollectionsAddressFilter = [v13 allCollectionsAddressFilter];

      if (allCollectionsAddressFilter)
      {
        allCollectionsFilterRoutingDelegate = [(CollectionsFilterMenu *)self allCollectionsFilterRoutingDelegate];
        allCollectionsAddressFilter2 = [v13 allCollectionsAddressFilter];
        goto LABEL_8;
      }

      allCollectionsKeywordFilter = [v13 allCollectionsKeywordFilter];

      if (allCollectionsKeywordFilter)
      {
        allCollectionsFilterRoutingDelegate = [(CollectionsFilterMenu *)self allCollectionsFilterRoutingDelegate];
        allCollectionsKeywordFilter2 = [v13 allCollectionsKeywordFilter];
        goto LABEL_13;
      }
    }

    else
    {
      if (context)
      {
LABEL_16:
        menuButton2 = [(CollectionsFilterMenu *)self menuButton];
        v24 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:pathCopy usingCount:0];
        [menuButton2 setMenu:v24];

        v6 = pathCopy;
        goto LABEL_17;
      }

      logicController4 = [(CollectionsFilterMenu *)self logicController];
      v13 = [logicController4 routeToSelectedFilterAtIndexPath:pathCopy];

      addressFilter = [v13 addressFilter];

      if (addressFilter)
      {
        allCollectionsFilterRoutingDelegate = [(CollectionsFilterMenu *)self publisherFilterRoutingDelegate];
        allCollectionsAddressFilter2 = [v13 addressFilter];
LABEL_8:
        v19 = allCollectionsAddressFilter2;
        [allCollectionsFilterRoutingDelegate didRouteToAddressFilter:allCollectionsAddressFilter2 atIndexPath:pathCopy];
LABEL_14:

        goto LABEL_15;
      }

      keywordFilter = [v13 keywordFilter];

      if (keywordFilter)
      {
        allCollectionsFilterRoutingDelegate = [(CollectionsFilterMenu *)self publisherFilterRoutingDelegate];
        allCollectionsKeywordFilter2 = [v13 keywordFilter];
LABEL_13:
        v19 = allCollectionsKeywordFilter2;
        [allCollectionsFilterRoutingDelegate didRouteToKeywordFilter:allCollectionsKeywordFilter2 atIndexPath:pathCopy];
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (id)menuUsingSelectedIndexPath:(id)path usingCount:(unint64_t)count
{
  pathCopy = path;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1007EF900;
  v20 = sub_1007EF910;
  v21 = +[NSMutableArray array];
  logicController = [(CollectionsFilterMenu *)self logicController];
  v8 = [logicController filterAtIndexPath:pathCopy];

  menuButton = [(CollectionsFilterMenu *)self menuButton];
  filterTitle = [v8 filterTitle];
  [menuButton setTitle:filterTitle forState:0];

  logicController2 = [(CollectionsFilterMenu *)self logicController];
  filterViewModels = [logicController2 filterViewModels];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007EF918;
  v15[3] = &unk_10162ACF0;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = count;
  [filterViewModels enumerateObjectsUsingBlock:v15];

  v13 = [UIMenu menuWithTitle:&stru_1016631F0 children:v17[5]];

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)setupConstraints
{
  sizeProvider = [(CollectionsFilterMenu *)self sizeProvider];
  [sizeProvider insetForFilterAtIndex:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  stackView = [(CollectionsFilterMenu *)self stackView];
  topAnchor = [stackView topAnchor];
  topAnchor2 = [(CollectionsFilterMenu *)self topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];
  v29[0] = v25;
  stackView2 = [(CollectionsFilterMenu *)self stackView];
  leadingAnchor = [stackView2 leadingAnchor];
  leadingAnchor2 = [(CollectionsFilterMenu *)self leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v7];
  v29[1] = v12;
  stackView3 = [(CollectionsFilterMenu *)self stackView];
  trailingAnchor = [stackView3 trailingAnchor];
  trailingAnchor2 = [(CollectionsFilterMenu *)self trailingAnchor];
  v16 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v11];
  v29[2] = v16;
  stackView4 = [(CollectionsFilterMenu *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [(CollectionsFilterMenu *)self bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v9];
  v29[3] = v20;
  v21 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)addMenuButton
{
  v3 = [MapsRightImageButton buttonWithType:0];
  [(CollectionsFilterMenu *)self setMenuButton:v3];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  menuButton = [(CollectionsFilterMenu *)self menuButton];
  titleLabel = [menuButton titleLabel];
  [titleLabel setFont:v4];

  menuButton2 = [(CollectionsFilterMenu *)self menuButton];
  v8 = +[UIFont system15];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
  v10 = [UIImage systemImageNamed:@"chevron.up.chevron.down" withConfiguration:v9];
  [menuButton2 setImage:v10 forState:0];

  menuButton3 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton3 setContextMenuInteractionEnabled:1];

  menuButton4 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton4 setShowsMenuAsPrimaryAction:1];

  menuButton5 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

  menuButton6 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton6 setTitleColorProvider:&stru_10162ACC8];

  menuButton7 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton7 setAccessibilityIdentifier:@"CollectionsFilterMenuButton"];

  v16 = +[UIColor clearColor];
  menuButton8 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton8 setBackgroundColor:v16];

  menuButton9 = [(CollectionsFilterMenu *)self menuButton];
  [menuButton9 _setContinuousCornerRadius:4.0];

  menuButton10 = [(CollectionsFilterMenu *)self menuButton];
  layer = [menuButton10 layer];
  [layer setMasksToBounds:1];

  stackView = [(CollectionsFilterMenu *)self stackView];
  menuButton11 = [(CollectionsFilterMenu *)self menuButton];
  [stackView addArrangedSubview:menuButton11];
}

- (void)setupSubviews
{
  v3 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterMenu *)self setStackView:v3];

  stackView = [(CollectionsFilterMenu *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(CollectionsFilterMenu *)self stackView];
  [stackView2 setAxis:0];

  stackView3 = [(CollectionsFilterMenu *)self stackView];
  [stackView3 setDistribution:0];

  stackView4 = [(CollectionsFilterMenu *)self stackView];
  [stackView4 setAlignment:1];

  [(CollectionsFilterMenu *)self addMenuButton];
  stackView5 = [(CollectionsFilterMenu *)self stackView];
  [(CollectionsFilterMenu *)self addSubview:stackView5];
}

- (void)configureForPublisherWithRoutingDelegate:(id)delegate withPublishersResultFilters:(id)filters withSelectedFilterIndex:(id)index selectedFilterResultsCount:(unint64_t)count
{
  self->_context = 0;
  indexCopy = index;
  filtersCopy = filters;
  [(CollectionsFilterMenu *)self setPublisherFilterRoutingDelegate:delegate];
  v12 = [[CollectionsFilterLogicController alloc] initForPublisherViewUsingFilters:filtersCopy withSelectedFilterIndexPath:indexCopy];

  [(CollectionsFilterMenu *)self setLogicController:v12];
  v13 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:1 inContext:0];
  [(CollectionsFilterMenu *)self setSizeProvider:v13];

  [(CollectionsFilterMenu *)self setupConstraints];
  menuButton = [(CollectionsFilterMenu *)self menuButton];
  v14 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:indexCopy usingCount:count];

  [menuButton setMenu:v14];
}

- (void)configureForAllCollectionsWithRoutingDelegate:(id)delegate withAllCollectionsResultFilters:(id)filters withSelectedFilterIndex:(id)index selectedFilterResultsCount:(unint64_t)count
{
  self->_context = 1;
  indexCopy = index;
  filtersCopy = filters;
  [(CollectionsFilterMenu *)self setAllCollectionsFilterRoutingDelegate:delegate];
  v12 = [[CollectionsFilterLogicController alloc] initForAllCollectionsViewUsingFilters:filtersCopy withSelectedFilterIndexPath:indexCopy];

  [(CollectionsFilterMenu *)self setLogicController:v12];
  v13 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:1 inContext:1];
  [(CollectionsFilterMenu *)self setSizeProvider:v13];

  [(CollectionsFilterMenu *)self setupConstraints];
  menuButton = [(CollectionsFilterMenu *)self menuButton];
  v14 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:indexCopy usingCount:count];

  [menuButton setMenu:v14];
}

- (CollectionsFilterMenu)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CollectionsFilterMenu;
  v3 = [(CollectionsFilterMenu *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CollectionsFilterMenu *)v3 setupSubviews];
  }

  return v4;
}

+ (double)defaultHeightForDisplayStyle:(int64_t)style inContext:(int64_t)context
{
  v4 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:style inContext:context];
  [(CollectionsFilterSizeController *)v4 defaultHeight];
  v6 = v5;

  return v6;
}

@end