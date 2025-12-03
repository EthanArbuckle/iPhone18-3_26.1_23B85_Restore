@interface PublisherActionView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PublisherActionView)initWithFrame:(CGRect)frame;
- (PublisherHeaderViewActionManager)actionManager;
- (id)titleForFilterAtIndexPath:(id)path;
- (void)configureWithActionManager:(id)manager publishersResultFilters:(id)filters routingDelegate:(id)delegate selectedFilterIndex:(id)index;
- (void)createActions;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation PublisherActionView

- (PublisherHeaderViewActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

- (id)titleForFilterAtIndexPath:(id)path
{
  pathCopy = path;
  filterCarousel = [(PublisherActionView *)self filterCarousel];
  v6 = [filterCarousel titleForFilterAtIndexPath:pathCopy];

  return v6;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(PublisherActionView *)self layoutIfNeeded];
  v20.receiver = self;
  v20.super_class = PublisherActionView;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(PublisherActionView *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;
  filterCarousel = [(PublisherActionView *)self filterCarousel];

  if (filterCarousel)
  {
    [CollectionsFilterCarouselView defaultHeightForDisplayStyle:0 inContext:0];
    v15 = v17 + v15;
  }

  v18 = v13;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)createActions
{
  actionManager = [(PublisherActionView *)self actionManager];
  actionRowView = [(PublisherActionView *)self actionRowView];
  [actionRowView setActionManager:actionManager];
}

- (void)setupConstraints
{
  actionRowView = [(PublisherActionView *)self actionRowView];
  topAnchor = [actionRowView topAnchor];
  topAnchor2 = [(PublisherActionView *)self topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v33[0] = v29;
  actionRowView2 = [(PublisherActionView *)self actionRowView];
  leadingAnchor = [actionRowView2 leadingAnchor];
  leadingAnchor2 = [(PublisherActionView *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v33[1] = v25;
  actionRowView3 = [(PublisherActionView *)self actionRowView];
  trailingAnchor = [actionRowView3 trailingAnchor];
  trailingAnchor2 = [(PublisherActionView *)self trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v33[2] = v21;
  filterCarousel = [(PublisherActionView *)self filterCarousel];
  topAnchor3 = [filterCarousel topAnchor];
  actionRowView4 = [(PublisherActionView *)self actionRowView];
  bottomAnchor = [actionRowView4 bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
  v33[3] = v16;
  filterCarousel2 = [(PublisherActionView *)self filterCarousel];
  leadingAnchor3 = [filterCarousel2 leadingAnchor];
  leadingAnchor4 = [(PublisherActionView *)self leadingAnchor];
  v3 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v33[4] = v3;
  filterCarousel3 = [(PublisherActionView *)self filterCarousel];
  trailingAnchor3 = [filterCarousel3 trailingAnchor];
  trailingAnchor4 = [(PublisherActionView *)self trailingAnchor];
  v7 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v33[5] = v7;
  filterCarousel4 = [(PublisherActionView *)self filterCarousel];
  bottomAnchor2 = [filterCarousel4 bottomAnchor];
  bottomAnchor3 = [(PublisherActionView *)self bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v33[6] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:7];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = +[UIColor clearColor];
  [(PublisherActionView *)self setBackgroundColor:v3];

  v4 = [[MUPlaceCardActionsRowView alloc] initWithStyle:2 * (sub_10000FA08(self) == 5)];
  [(PublisherActionView *)self setActionRowView:v4];

  actionRowView = [(PublisherActionView *)self actionRowView];
  [actionRowView setPreservesSuperviewLayoutMargins:0];

  actionRowView2 = [(PublisherActionView *)self actionRowView];
  [actionRowView2 setInsetsLayoutMarginsFromSafeArea:0];

  actionRowView3 = [(PublisherActionView *)self actionRowView];
  [actionRowView3 setLayoutMargins:{0.0, 6.0, 0.0, 6.0}];

  actionRowView4 = [(PublisherActionView *)self actionRowView];
  [actionRowView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionRowView5 = [(PublisherActionView *)self actionRowView];
  [(PublisherActionView *)self addSubview:actionRowView5];

  v10 = [[CollectionsFilterCarouselView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PublisherActionView *)self setFilterCarousel:v10];

  filterCarousel = [(PublisherActionView *)self filterCarousel];
  [filterCarousel setTranslatesAutoresizingMaskIntoConstraints:0];

  filterCarousel2 = [(PublisherActionView *)self filterCarousel];
  [(PublisherActionView *)self addSubview:filterCarousel2];
}

- (void)configureWithActionManager:(id)manager publishersResultFilters:(id)filters routingDelegate:(id)delegate selectedFilterIndex:(id)index
{
  filtersCopy = filters;
  delegateCopy = delegate;
  indexCopy = index;
  [(PublisherActionView *)self setActionManager:manager];
  [(PublisherActionView *)self createActions];
  v13 = [filtersCopy count];
  filterCarousel = [(PublisherActionView *)self filterCarousel];
  v15 = filterCarousel;
  if (v13 < 2)
  {

    if (v15)
    {
      actionRowView = [(PublisherActionView *)self actionRowView];
      bottomAnchor = [actionRowView bottomAnchor];
      bottomAnchor2 = [(PublisherActionView *)self bottomAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
      v23 = v20;
      v21 = [NSArray arrayWithObjects:&v23 count:1];
      [NSLayoutConstraint activateConstraints:v21];

      filterCarousel2 = [(PublisherActionView *)self filterCarousel];
      [filterCarousel2 removeFromSuperview];

      [(PublisherActionView *)self setFilterCarousel:0];
    }
  }

  else
  {
    [filterCarousel configureWithContext:0 withRoutingDelegate:delegateCopy withPublishersResultFilters:filtersCopy withSelectedFilterIndex:indexCopy];

    filterCarousel3 = [(PublisherActionView *)self filterCarousel];
    [filterCarousel3 displayFilters];
  }
}

- (PublisherActionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PublisherActionView;
  v3 = [(PublisherActionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PublisherActionView *)v3 setupSubviews];
    [(PublisherActionView *)v4 setupConstraints];
  }

  return v4;
}

@end