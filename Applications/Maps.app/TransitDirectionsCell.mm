@interface TransitDirectionsCell
+ (Class)cellClassForListItem:(id)item;
+ (Class)collectionCellClassForListItem:(id)item;
+ (Class)stepViewClass;
+ (id)cellIdentifierForListItem:(id)item;
+ (id)cellMapping;
+ (id)collectionCellMapping;
+ (id)dequeueCellForListItem:(id)item fromCollectionView:(id)view atIndexPath:(id)path;
+ (id)dequeueCellForListItem:(id)item fromTableView:(id)view atIndexPath:(id)path;
+ (void)registerCellsForCollectionView:(id)view;
+ (void)registerCellsForTableView:(id)view;
- (CGRect)_separatorFrame;
- (TransitDirectionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)type;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setUseLeadingInstructionMarginAsLeadingSeparatorInset:(BOOL)inset;
@end

@implementation TransitDirectionsCell

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v6 setHighlighted:highlighted animated:animated];
  [(TransitDirectionsStepView *)self->_stepView setHighlighted:highlightedCopy];
}

- (void)setAccessoryType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v6 setAccessoryType:?];
  v5 = 0.0;
  if (!type)
  {
    v5 = 16.0;
  }

  [(TransitDirectionsStepView *)self->_stepView _setTrailingGuideToContentViewDistance:v5];
}

- (void)setUseLeadingInstructionMarginAsLeadingSeparatorInset:(BOOL)inset
{
  if (self->_useLeadingInstructionMarginAsLeadingSeparatorInset != inset)
  {
    self->_useLeadingInstructionMarginAsLeadingSeparatorInset = inset;
    separatorStyle = [(TransitDirectionsCell *)self separatorStyle];
    [(TransitDirectionsCell *)self setSeparatorStyle:(separatorStyle + 1) % 3];

    [(TransitDirectionsCell *)self setSeparatorStyle:separatorStyle];
  }
}

- (CGRect)_separatorFrame
{
  v21.receiver = self;
  v21.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v21 _separatorFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_useLeadingInstructionMarginAsLeadingSeparatorInset)
  {
    if (MKApplicationLayoutDirectionIsRightToLeft())
    {
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      MaxX = CGRectGetMaxX(v22);
      [(TransitDirectionsCell *)self bounds];
      v12 = CGRectGetMaxX(v23);
      [(TransitDirectionsStepView *)self->_stepView leadingInstructionMargin];
      v8 = v8 + v12 - (MaxX + v13);
    }

    else
    {
      [(TransitDirectionsStepView *)self->_stepView leadingInstructionMargin];
      v15 = v14;
      v24.origin.x = v4;
      v24.origin.y = v6;
      v24.size.width = v8;
      v24.size.height = v10;
      v16 = v15 - CGRectGetMinX(v24);
      v4 = v16 + v4;
      v8 = v8 - v16;
    }
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v3 prepareForReuse];
  [(TransitDirectionsStepView *)self->_stepView prepareForReuse];
}

- (TransitDirectionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32.receiver = self;
  v32.super_class = TransitDirectionsCell;
  v4 = [(TransitDirectionsCell *)&v32 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(TransitDirectionsCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor clearColor];
    backgroundView = [(TransitDirectionsCell *)v4 backgroundView];
    [backgroundView setBackgroundColor:v6];

    v8 = objc_alloc([objc_opt_class() stepViewClass]);
    contentView = [(TransitDirectionsCell *)v4 contentView];
    [contentView bounds];
    v10 = [v8 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v10;

    [(TransitDirectionsStepView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TransitDirectionsStepView *)v4->_stepView setCell:v4];
    contentView2 = [(TransitDirectionsCell *)v4 contentView];
    [contentView2 addSubview:v4->_stepView];

    v13 = objc_alloc_init(NSMutableArray);
    topAnchor = [(TransitDirectionsStepView *)v4->_stepView topAnchor];
    contentView3 = [(TransitDirectionsCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[0] = v28;
    leadingAnchor = [(TransitDirectionsStepView *)v4->_stepView leadingAnchor];
    contentView4 = [(TransitDirectionsCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[1] = v24;
    contentView5 = [(TransitDirectionsCell *)v4 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [(TransitDirectionsStepView *)v4->_stepView bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[2] = v16;
    contentView6 = [(TransitDirectionsCell *)v4 contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [(TransitDirectionsStepView *)v4->_stepView trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[3] = v20;
    v21 = [NSArray arrayWithObjects:v33 count:4];
    [v13 addObjectsFromArray:v21];

    [NSLayoutConstraint activateConstraints:v13];
  }

  return v4;
}

+ (Class)stepViewClass
{
  [self doesNotRecognizeSelector:a2];

  return objc_opt_class();
}

+ (id)dequeueCellForListItem:(id)item fromCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v10 = [self cellIdentifierForListItem:item];
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  return v11;
}

+ (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  collectionCellMapping = [self collectionCellMapping];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B22C70;
  v7[3] = &unk_10165FF20;
  v8 = viewCopy;
  v6 = viewCopy;
  [collectionCellMapping enumerateKeysAndObjectsUsingBlock:v7];
}

+ (Class)collectionCellClassForListItem:(id)item
{
  v4 = [self cellIdentifierForListItem:item];
  collectionCellMapping = [self collectionCellMapping];
  v6 = [collectionCellMapping objectForKeyedSubscript:v4];

  return v6;
}

+ (id)collectionCellMapping
{
  if (qword_10195E700 != -1)
  {
    dispatch_once(&qword_10195E700, &stru_101638568);
  }

  v3 = qword_10195E6F8;

  return v3;
}

+ (id)dequeueCellForListItem:(id)item fromTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v10 = [self cellIdentifierForListItem:item];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  return v11;
}

+ (void)registerCellsForTableView:(id)view
{
  viewCopy = view;
  cellMapping = [self cellMapping];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B231D8;
  v7[3] = &unk_10165FF20;
  v8 = viewCopy;
  v6 = viewCopy;
  [cellMapping enumerateKeysAndObjectsUsingBlock:v7];
}

+ (id)cellIdentifierForListItem:(id)item
{
  itemCopy = item;
  switch([itemCopy type])
  {
    case 0uLL:
    case 1uLL:
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      if ([itemCopy type])
      {
        v6 = @".Destination";
      }

      else
      {
        v6 = @".Origin";
      }

      v7 = [v5 stringByAppendingString:v6];

      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
      v8 = objc_opt_class();
      v7 = NSStringFromClass(v8);
      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

+ (Class)cellClassForListItem:(id)item
{
  v4 = [self cellIdentifierForListItem:item];
  cellMapping = [self cellMapping];
  v6 = [cellMapping objectForKeyedSubscript:v4];

  return v6;
}

+ (id)cellMapping
{
  if (qword_10195E6F0 != -1)
  {
    dispatch_once(&qword_10195E6F0, &stru_101638548);
  }

  v3 = qword_10195E6E8;

  return v3;
}

@end