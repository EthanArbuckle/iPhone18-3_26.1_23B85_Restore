@interface PHCarPlayPhoneCallContainer
- (PHCarPlayPhoneCallContainer)initWithFrame:(CGRect)frame;
- (id)_reloadQueue;
- (void)addConstraintsForNewCell:(id)cell;
- (void)addRelationForLeftOfCell:(id)cell;
- (void)addRelationForRightOfCell:(id)cell;
- (void)addRelationForWidthOfCell:(id)cell;
- (void)animateLayoutOfViewWithCompletionBlock:(id)block;
- (void)createVisibleCells:(unint64_t)cells;
- (void)dealloc;
- (void)mergeAllCellConstraints;
- (void)mergeVisibleCells;
- (void)phoneCallViewCellTapped:(id)tapped;
- (void)reloadDataAnimated:(BOOL)animated;
- (void)removeAllConstraintsForCell:(id)cell;
- (void)removeVisibleCells:(unint64_t)cells;
- (void)updateAllCellConstraints;
- (void)updateCell:(id)cell atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)updateLayoutAnimated:(BOOL)animated;
- (void)updateNumberOfCellsWithNewValue:(unint64_t)value animated:(BOOL)animated;
@end

@implementation PHCarPlayPhoneCallContainer

- (id)_reloadQueue
{
  if (qword_1003B0E90 != -1)
  {
    sub_100256428();
  }

  v3 = qword_1003B0E98;

  return v3;
}

- (void)updateAllCellConstraints
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v4 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        containerSpecificRightConstraint = [v8 containerSpecificRightConstraint];

        if (containerSpecificRightConstraint)
        {
          containerSpecificRightConstraint2 = [v8 containerSpecificRightConstraint];
          [(PHCarPlayPhoneCallContainer *)self removeConstraint:containerSpecificRightConstraint2];
        }

        containerSpecificLeftConstraint = [v8 containerSpecificLeftConstraint];

        if (containerSpecificLeftConstraint)
        {
          containerSpecificLeftConstraint2 = [v8 containerSpecificLeftConstraint];
          [(PHCarPlayPhoneCallContainer *)self removeConstraint:containerSpecificLeftConstraint2];
        }

        [(PHCarPlayPhoneCallContainer *)self addRelationForLeftOfCell:v8];
        [(PHCarPlayPhoneCallContainer *)self addRelationForRightOfCell:v8];
      }

      v5 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  self->_dataSource = 0;
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = PHCarPlayPhoneCallContainer;
  [(PHCarPlayPhoneCallContainer *)&v2 dealloc];
}

- (PHCarPlayPhoneCallContainer)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PHCarPlayPhoneCallContainer;
  v3 = [(PHCarPlayPhoneCallContainer *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHCarPlayPhoneCallContainer *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[NSMutableArray array];
    visibleCells = v4->_visibleCells;
    v4->_visibleCells = v5;

    v4->_shouldMerge = 0;
  }

  return v4;
}

- (void)reloadDataAnimated:(BOOL)animated
{
  _reloadQueue = [(PHCarPlayPhoneCallContainer *)self _reloadQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C42B4;
  v6[3] = &unk_100356BB8;
  v6[4] = self;
  animatedCopy = animated;
  dispatch_sync(_reloadQueue, v6);
}

- (void)updateCell:(id)cell atIndex:(unint64_t)index animated:(BOOL)animated
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C4510;
  v9[3] = &unk_100358DB0;
  cellCopy = cell;
  indexCopy = index;
  v9[4] = self;
  animatedCopy = animated;
  v8 = cellCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)updateNumberOfCellsWithNewValue:(unint64_t)value animated:(BOOL)animated
{
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v7 = [visibleCells count];

  if (v7 < value)
  {
    visibleCells2 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v9 = value - [visibleCells2 count];

    [(PHCarPlayPhoneCallContainer *)self createVisibleCells:v9];
LABEL_8:

    [(PHCarPlayPhoneCallContainer *)self updateLayoutAnimated:?];
    return;
  }

  if (!self->_shouldMerge)
  {
    visibleCells3 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v11 = [visibleCells3 count] - value;

    [(PHCarPlayPhoneCallContainer *)self removeVisibleCells:v11];
    goto LABEL_8;
  }

  [(PHCarPlayPhoneCallContainer *)self mergeVisibleCells];
}

- (void)updateLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PHCarPlayPhoneCallContainer *)self layoutIfNeeded];
  [(PHCarPlayPhoneCallContainer *)self updateAllCellConstraints];
  [(PHCarPlayPhoneCallContainer *)self setNeedsUpdateConstraints];
  if (animatedCopy)
  {

    [(PHCarPlayPhoneCallContainer *)self animateLayoutOfViewWithCompletionBlock:0];
  }
}

- (void)animateLayoutOfViewWithCompletionBlock:(id)block
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C4A2C;
  v3[3] = &unk_100356988;
  v3[4] = self;
  [UIView animateWithDuration:133 delay:v3 options:block animations:0.550000012 completion:0.0];
}

- (void)phoneCallViewCellTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHCarPlayPhoneCallContainer *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PHCarPlayPhoneCallContainer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PHCarPlayPhoneCallContainer *)self delegate];
      visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
      [delegate3 phoneCallContainer:self phoneCallViewTappedAtIndex:{objc_msgSend(visibleCells, "indexOfObject:", tappedCopy)}];
    }
  }
}

- (void)mergeVisibleCells
{
  if (![(PHCarPlayPhoneCallContainer *)self isMerging])
  {
    self->_merging = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v4 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(visibleCells);
          }

          [(PHCarPlayPhoneCallContainer *)self updateCell:*(*(&v10 + 1) + 8 * v7) atIndex:0 animated:1];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(PHCarPlayPhoneCallContainer *)self layoutIfNeeded];
    [(PHCarPlayPhoneCallContainer *)self mergeAllCellConstraints];
    [(PHCarPlayPhoneCallContainer *)self setNeedsUpdateConstraints];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C4CC8;
    v9[3] = &unk_1003569B0;
    v9[4] = self;
    v8 = objc_retainBlock(v9);
    [(PHCarPlayPhoneCallContainer *)self animateLayoutOfViewWithCompletionBlock:v8];
  }
}

- (void)createVisibleCells:(unint64_t)cells
{
  if (cells)
  {
    cellsCopy = cells;
    do
    {
      v5 = [PHCarPlayPhoneCallViewCell alloc];
      [(PHCarPlayPhoneCallContainer *)self bounds];
      v6 = [(PHCarPlayPhoneCallViewCell *)v5 initWithFrame:?];
      [(PHCarPlayPhoneCallViewCell *)v6 addTarget:self action:"phoneCallViewCellTapped:" forControlEvents:64];
      [(PHCarPlayPhoneCallContainer *)self addSubview:v6];
      visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
      [visibleCells addObject:v6];

      [(PHCarPlayPhoneCallContainer *)self addConstraintsForNewCell:v6];
      --cellsCopy;
    }

    while (cellsCopy);
  }
}

- (void)removeVisibleCells:(unint64_t)cells
{
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v6 = [visibleCells count] - cells;

  visibleCells2 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v8 = [visibleCells2 subarrayWithRange:{v6, cells}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C4F20;
  v9[3] = &unk_100358DD8;
  v9[4] = self;
  [v8 enumerateObjectsUsingBlock:v9];
}

- (void)removeAllConstraintsForCell:(id)cell
{
  cellCopy = cell;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  constraints = [(PHCarPlayPhoneCallContainer *)self constraints];
  v7 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(constraints);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        firstItem = [v11 firstItem];
        v13 = firstItem;
        if (firstItem == cellCopy)
        {
        }

        else
        {
          secondItem = [v11 secondItem];

          if (secondItem != cellCopy)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(PHCarPlayPhoneCallContainer *)self removeConstraints:v5];
}

- (void)addConstraintsForNewCell:(id)cell
{
  cellCopy = cell;
  centerYAnchor = [cellCopy centerYAnchor];
  centerYAnchor2 = [(PHCarPlayPhoneCallContainer *)self centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  LODWORD(v8) = 1144750080;
  [v7 setPriority:v8];
  topAnchor = [cellCopy topAnchor];
  topAnchor2 = [(PHCarPlayPhoneCallContainer *)self topAnchor];
  v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];

  LODWORD(v12) = 1148846080;
  [v11 setPriority:v12];
  v13 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithLeftOfCell:cellCopy];
  [cellCopy setContainerSpecificLeftConstraint:v13];

  v14 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithRightOfCell:cellCopy];
  [cellCopy setContainerSpecificRightConstraint:v14];

  v18[0] = v7;
  v18[1] = v11;
  containerSpecificLeftConstraint = [cellCopy containerSpecificLeftConstraint];
  v18[2] = containerSpecificLeftConstraint;
  containerSpecificRightConstraint = [cellCopy containerSpecificRightConstraint];
  v18[3] = containerSpecificRightConstraint;
  v17 = [NSArray arrayWithObjects:v18 count:4];
  [(PHCarPlayPhoneCallContainer *)self addConstraints:v17];

  [(PHCarPlayPhoneCallContainer *)self addRelationForWidthOfCell:cellCopy];
}

- (void)mergeAllCellConstraints
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(PHCarPlayPhoneCallContainer *)self removeAllConstraintsForCell:v8];
        [(PHCarPlayPhoneCallContainer *)self addConstraintsForNewCell:v8];
      }

      v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)addRelationForWidthOfCell:(id)cell
{
  cellCopy = cell;
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  if ([visibleCells count] >= 2)
  {
    visibleCells2 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v6 = [visibleCells2 indexOfObject:cellCopy];

    if (!v6)
    {
      goto LABEL_5;
    }

    visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    firstObject = [visibleCells firstObject];
    v8 = [NSLayoutConstraint constraintWithItem:cellCopy attribute:7 relatedBy:0 toItem:firstObject attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
  }

LABEL_5:
}

- (void)addRelationForRightOfCell:(id)cell
{
  cellCopy = cell;
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v5 = [visibleCells count] - 1;

  visibleCells2 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v7 = [visibleCells2 indexOfObject:cellCopy];

  if (v7 == v5)
  {
    v8 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithRightOfCell:cellCopy];
  }

  else
  {
    visibleCells3 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v10 = [visibleCells3 objectAtIndexedSubscript:v7 + 1];
    v8 = [NSLayoutConstraint constraintWithItem:cellCopy attribute:2 relatedBy:0 toItem:v10 attribute:1 multiplier:1.0 constant:-12.0];
  }

  [cellCopy setContainerSpecificRightConstraint:v8];
  [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
}

- (void)addRelationForLeftOfCell:(id)cell
{
  cellCopy = cell;
  visibleCells = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v5 = [visibleCells indexOfObject:cellCopy];

  if (v5)
  {
    visibleCells2 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v7 = [visibleCells2 objectAtIndexedSubscript:v5 - 1];
    v8 = [NSLayoutConstraint constraintWithItem:cellCopy attribute:1 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:12.0];
  }

  else
  {
    v8 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithLeftOfCell:cellCopy];
  }

  [cellCopy setContainerSpecificLeftConstraint:v8];
  [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
}

@end