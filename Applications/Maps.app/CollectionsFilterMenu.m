@interface CollectionsFilterMenu
+ (double)defaultHeightForDisplayStyle:(int64_t)a3 inContext:(int64_t)a4;
- (AllCollectinsFilterRoutingDelegate)allCollectionsFilterRoutingDelegate;
- (CollectionsFilterMenu)initWithFrame:(CGRect)a3;
- (CollectionsFilterRoutingDelegate)publisherFilterRoutingDelegate;
- (id)menuUsingSelectedIndexPath:(id)a3 usingCount:(unint64_t)a4;
- (id)titleForFilterAtIndexPath:(id)a3;
- (void)addMenuButton;
- (void)configureForAllCollectionsWithRoutingDelegate:(id)a3 withAllCollectionsResultFilters:(id)a4 withSelectedFilterIndex:(id)a5 selectedFilterResultsCount:(unint64_t)a6;
- (void)configureForPublisherWithRoutingDelegate:(id)a3 withPublishersResultFilters:(id)a4 withSelectedFilterIndex:(id)a5 selectedFilterResultsCount:(unint64_t)a6;
- (void)filterSelectedAtIndexPath:(id)a3;
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

- (id)titleForFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterMenu *)self logicController];
  v6 = [v5 filterAtIndexPath:v4];

  v7 = [v6 filterTitle];

  return v7;
}

- (void)filterSelectedAtIndexPath:(id)a3
{
  v25 = a3;
  v4 = [(CollectionsFilterMenu *)self logicController];
  v5 = [v4 selectedFilterIndexPath];

  v6 = v25;
  if (v5 != v25)
  {
    v7 = [(CollectionsFilterMenu *)self logicController];
    v8 = [v7 filterAtIndexPath:v25];

    v9 = [(CollectionsFilterMenu *)self menuButton];
    v10 = [v8 filterTitle];
    [v9 setTitle:v10 forState:0];

    context = self->_context;
    if (context == 1)
    {
      v17 = [(CollectionsFilterMenu *)self logicController];
      v13 = [v17 routeToSelectedAllCollectionsFilterAtIndexPath:v25];

      v18 = [v13 allCollectionsAddressFilter];

      if (v18)
      {
        v15 = [(CollectionsFilterMenu *)self allCollectionsFilterRoutingDelegate];
        v16 = [v13 allCollectionsAddressFilter];
        goto LABEL_8;
      }

      v22 = [v13 allCollectionsKeywordFilter];

      if (v22)
      {
        v15 = [(CollectionsFilterMenu *)self allCollectionsFilterRoutingDelegate];
        v21 = [v13 allCollectionsKeywordFilter];
        goto LABEL_13;
      }
    }

    else
    {
      if (context)
      {
LABEL_16:
        v23 = [(CollectionsFilterMenu *)self menuButton];
        v24 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:v25 usingCount:0];
        [v23 setMenu:v24];

        v6 = v25;
        goto LABEL_17;
      }

      v12 = [(CollectionsFilterMenu *)self logicController];
      v13 = [v12 routeToSelectedFilterAtIndexPath:v25];

      v14 = [v13 addressFilter];

      if (v14)
      {
        v15 = [(CollectionsFilterMenu *)self publisherFilterRoutingDelegate];
        v16 = [v13 addressFilter];
LABEL_8:
        v19 = v16;
        [v15 didRouteToAddressFilter:v16 atIndexPath:v25];
LABEL_14:

        goto LABEL_15;
      }

      v20 = [v13 keywordFilter];

      if (v20)
      {
        v15 = [(CollectionsFilterMenu *)self publisherFilterRoutingDelegate];
        v21 = [v13 keywordFilter];
LABEL_13:
        v19 = v21;
        [v15 didRouteToKeywordFilter:v21 atIndexPath:v25];
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (id)menuUsingSelectedIndexPath:(id)a3 usingCount:(unint64_t)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1007EF900;
  v20 = sub_1007EF910;
  v21 = +[NSMutableArray array];
  v7 = [(CollectionsFilterMenu *)self logicController];
  v8 = [v7 filterAtIndexPath:v6];

  v9 = [(CollectionsFilterMenu *)self menuButton];
  v10 = [v8 filterTitle];
  [v9 setTitle:v10 forState:0];

  v11 = [(CollectionsFilterMenu *)self logicController];
  v12 = [v11 filterViewModels];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007EF918;
  v15[3] = &unk_10162ACF0;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = a4;
  [v12 enumerateObjectsUsingBlock:v15];

  v13 = [UIMenu menuWithTitle:&stru_1016631F0 children:v17[5]];

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)setupConstraints
{
  v3 = [(CollectionsFilterMenu *)self sizeProvider];
  [v3 insetForFilterAtIndex:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v28 = [(CollectionsFilterMenu *)self stackView];
  v27 = [v28 topAnchor];
  v26 = [(CollectionsFilterMenu *)self topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:v5];
  v29[0] = v25;
  v24 = [(CollectionsFilterMenu *)self stackView];
  v23 = [v24 leadingAnchor];
  v22 = [(CollectionsFilterMenu *)self leadingAnchor];
  v12 = [v23 constraintEqualToAnchor:v22 constant:v7];
  v29[1] = v12;
  v13 = [(CollectionsFilterMenu *)self stackView];
  v14 = [v13 trailingAnchor];
  v15 = [(CollectionsFilterMenu *)self trailingAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-v11];
  v29[2] = v16;
  v17 = [(CollectionsFilterMenu *)self stackView];
  v18 = [v17 bottomAnchor];
  v19 = [(CollectionsFilterMenu *)self bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v9];
  v29[3] = v20;
  v21 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)addMenuButton
{
  v3 = [MapsRightImageButton buttonWithType:0];
  [(CollectionsFilterMenu *)self setMenuButton:v3];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [(CollectionsFilterMenu *)self menuButton];
  v6 = [v5 titleLabel];
  [v6 setFont:v4];

  v7 = [(CollectionsFilterMenu *)self menuButton];
  v8 = +[UIFont system15];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
  v10 = [UIImage systemImageNamed:@"chevron.up.chevron.down" withConfiguration:v9];
  [v7 setImage:v10 forState:0];

  v11 = [(CollectionsFilterMenu *)self menuButton];
  [v11 setContextMenuInteractionEnabled:1];

  v12 = [(CollectionsFilterMenu *)self menuButton];
  [v12 setShowsMenuAsPrimaryAction:1];

  v13 = [(CollectionsFilterMenu *)self menuButton];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(CollectionsFilterMenu *)self menuButton];
  [v14 setTitleColorProvider:&stru_10162ACC8];

  v15 = [(CollectionsFilterMenu *)self menuButton];
  [v15 setAccessibilityIdentifier:@"CollectionsFilterMenuButton"];

  v16 = +[UIColor clearColor];
  v17 = [(CollectionsFilterMenu *)self menuButton];
  [v17 setBackgroundColor:v16];

  v18 = [(CollectionsFilterMenu *)self menuButton];
  [v18 _setContinuousCornerRadius:4.0];

  v19 = [(CollectionsFilterMenu *)self menuButton];
  v20 = [v19 layer];
  [v20 setMasksToBounds:1];

  v22 = [(CollectionsFilterMenu *)self stackView];
  v21 = [(CollectionsFilterMenu *)self menuButton];
  [v22 addArrangedSubview:v21];
}

- (void)setupSubviews
{
  v3 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterMenu *)self setStackView:v3];

  v4 = [(CollectionsFilterMenu *)self stackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CollectionsFilterMenu *)self stackView];
  [v5 setAxis:0];

  v6 = [(CollectionsFilterMenu *)self stackView];
  [v6 setDistribution:0];

  v7 = [(CollectionsFilterMenu *)self stackView];
  [v7 setAlignment:1];

  [(CollectionsFilterMenu *)self addMenuButton];
  v8 = [(CollectionsFilterMenu *)self stackView];
  [(CollectionsFilterMenu *)self addSubview:v8];
}

- (void)configureForPublisherWithRoutingDelegate:(id)a3 withPublishersResultFilters:(id)a4 withSelectedFilterIndex:(id)a5 selectedFilterResultsCount:(unint64_t)a6
{
  self->_context = 0;
  v10 = a5;
  v11 = a4;
  [(CollectionsFilterMenu *)self setPublisherFilterRoutingDelegate:a3];
  v12 = [[CollectionsFilterLogicController alloc] initForPublisherViewUsingFilters:v11 withSelectedFilterIndexPath:v10];

  [(CollectionsFilterMenu *)self setLogicController:v12];
  v13 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:1 inContext:0];
  [(CollectionsFilterMenu *)self setSizeProvider:v13];

  [(CollectionsFilterMenu *)self setupConstraints];
  v15 = [(CollectionsFilterMenu *)self menuButton];
  v14 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:v10 usingCount:a6];

  [v15 setMenu:v14];
}

- (void)configureForAllCollectionsWithRoutingDelegate:(id)a3 withAllCollectionsResultFilters:(id)a4 withSelectedFilterIndex:(id)a5 selectedFilterResultsCount:(unint64_t)a6
{
  self->_context = 1;
  v10 = a5;
  v11 = a4;
  [(CollectionsFilterMenu *)self setAllCollectionsFilterRoutingDelegate:a3];
  v12 = [[CollectionsFilterLogicController alloc] initForAllCollectionsViewUsingFilters:v11 withSelectedFilterIndexPath:v10];

  [(CollectionsFilterMenu *)self setLogicController:v12];
  v13 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:1 inContext:1];
  [(CollectionsFilterMenu *)self setSizeProvider:v13];

  [(CollectionsFilterMenu *)self setupConstraints];
  v15 = [(CollectionsFilterMenu *)self menuButton];
  v14 = [(CollectionsFilterMenu *)self menuUsingSelectedIndexPath:v10 usingCount:a6];

  [v15 setMenu:v14];
}

- (CollectionsFilterMenu)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CollectionsFilterMenu;
  v3 = [(CollectionsFilterMenu *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CollectionsFilterMenu *)v3 setupSubviews];
  }

  return v4;
}

+ (double)defaultHeightForDisplayStyle:(int64_t)a3 inContext:(int64_t)a4
{
  v4 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:a3 inContext:a4];
  [(CollectionsFilterSizeController *)v4 defaultHeight];
  v6 = v5;

  return v6;
}

@end