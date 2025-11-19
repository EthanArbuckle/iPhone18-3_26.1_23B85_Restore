@interface TransitDirectionsCell
+ (Class)cellClassForListItem:(id)a3;
+ (Class)collectionCellClassForListItem:(id)a3;
+ (Class)stepViewClass;
+ (id)cellIdentifierForListItem:(id)a3;
+ (id)cellMapping;
+ (id)collectionCellMapping;
+ (id)dequeueCellForListItem:(id)a3 fromCollectionView:(id)a4 atIndexPath:(id)a5;
+ (id)dequeueCellForListItem:(id)a3 fromTableView:(id)a4 atIndexPath:(id)a5;
+ (void)registerCellsForCollectionView:(id)a3;
+ (void)registerCellsForTableView:(id)a3;
- (CGRect)_separatorFrame;
- (TransitDirectionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setUseLeadingInstructionMarginAsLeadingSeparatorInset:(BOOL)a3;
@end

@implementation TransitDirectionsCell

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v6 setHighlighted:a3 animated:a4];
  [(TransitDirectionsStepView *)self->_stepView setHighlighted:v4];
}

- (void)setAccessoryType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsCell;
  [(TransitDirectionsCell *)&v6 setAccessoryType:?];
  v5 = 0.0;
  if (!a3)
  {
    v5 = 16.0;
  }

  [(TransitDirectionsStepView *)self->_stepView _setTrailingGuideToContentViewDistance:v5];
}

- (void)setUseLeadingInstructionMarginAsLeadingSeparatorInset:(BOOL)a3
{
  if (self->_useLeadingInstructionMarginAsLeadingSeparatorInset != a3)
  {
    self->_useLeadingInstructionMarginAsLeadingSeparatorInset = a3;
    v5 = [(TransitDirectionsCell *)self separatorStyle];
    [(TransitDirectionsCell *)self setSeparatorStyle:(v5 + 1) % 3];

    [(TransitDirectionsCell *)self setSeparatorStyle:v5];
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

- (TransitDirectionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32.receiver = self;
  v32.super_class = TransitDirectionsCell;
  v4 = [(TransitDirectionsCell *)&v32 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(TransitDirectionsCell *)v4 setBackgroundColor:v5];

    v6 = +[UIColor clearColor];
    v7 = [(TransitDirectionsCell *)v4 backgroundView];
    [v7 setBackgroundColor:v6];

    v8 = objc_alloc([objc_opt_class() stepViewClass]);
    v9 = [(TransitDirectionsCell *)v4 contentView];
    [v9 bounds];
    v10 = [v8 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v10;

    [(TransitDirectionsStepView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TransitDirectionsStepView *)v4->_stepView setCell:v4];
    v12 = [(TransitDirectionsCell *)v4 contentView];
    [v12 addSubview:v4->_stepView];

    v13 = objc_alloc_init(NSMutableArray);
    v30 = [(TransitDirectionsStepView *)v4->_stepView topAnchor];
    v31 = [(TransitDirectionsCell *)v4 contentView];
    v29 = [v31 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v26 = [(TransitDirectionsStepView *)v4->_stepView leadingAnchor];
    v27 = [(TransitDirectionsCell *)v4 contentView];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v33[1] = v24;
    v23 = [(TransitDirectionsCell *)v4 contentView];
    v14 = [v23 bottomAnchor];
    v15 = [(TransitDirectionsStepView *)v4->_stepView bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v33[2] = v16;
    v17 = [(TransitDirectionsCell *)v4 contentView];
    v18 = [v17 trailingAnchor];
    v19 = [(TransitDirectionsStepView *)v4->_stepView trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v33[3] = v20;
    v21 = [NSArray arrayWithObjects:v33 count:4];
    [v13 addObjectsFromArray:v21];

    [NSLayoutConstraint activateConstraints:v13];
  }

  return v4;
}

+ (Class)stepViewClass
{
  [a1 doesNotRecognizeSelector:a2];

  return objc_opt_class();
}

+ (id)dequeueCellForListItem:(id)a3 fromCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 cellIdentifierForListItem:a3];
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v8];

  return v11;
}

+ (void)registerCellsForCollectionView:(id)a3
{
  v4 = a3;
  v5 = [a1 collectionCellMapping];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B22C70;
  v7[3] = &unk_10165FF20;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

+ (Class)collectionCellClassForListItem:(id)a3
{
  v4 = [a1 cellIdentifierForListItem:a3];
  v5 = [a1 collectionCellMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

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

+ (id)dequeueCellForListItem:(id)a3 fromTableView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 cellIdentifierForListItem:a3];
  v11 = [v9 dequeueReusableCellWithIdentifier:v10 forIndexPath:v8];

  return v11;
}

+ (void)registerCellsForTableView:(id)a3
{
  v4 = a3;
  v5 = [a1 cellMapping];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B231D8;
  v7[3] = &unk_10165FF20;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

+ (id)cellIdentifierForListItem:(id)a3
{
  v3 = a3;
  switch([v3 type])
  {
    case 0uLL:
    case 1uLL:
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      if ([v3 type])
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

+ (Class)cellClassForListItem:(id)a3
{
  v4 = [a1 cellIdentifierForListItem:a3];
  v5 = [a1 cellMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

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