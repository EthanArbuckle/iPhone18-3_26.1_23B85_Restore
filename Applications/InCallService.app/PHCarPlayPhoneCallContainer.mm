@interface PHCarPlayPhoneCallContainer
- (PHCarPlayPhoneCallContainer)initWithFrame:(CGRect)a3;
- (id)_reloadQueue;
- (void)addConstraintsForNewCell:(id)a3;
- (void)addRelationForLeftOfCell:(id)a3;
- (void)addRelationForRightOfCell:(id)a3;
- (void)addRelationForWidthOfCell:(id)a3;
- (void)animateLayoutOfViewWithCompletionBlock:(id)a3;
- (void)createVisibleCells:(unint64_t)a3;
- (void)dealloc;
- (void)mergeAllCellConstraints;
- (void)mergeVisibleCells;
- (void)phoneCallViewCellTapped:(id)a3;
- (void)reloadDataAnimated:(BOOL)a3;
- (void)removeAllConstraintsForCell:(id)a3;
- (void)removeVisibleCells:(unint64_t)a3;
- (void)updateAllCellConstraints;
- (void)updateCell:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)updateLayoutAnimated:(BOOL)a3;
- (void)updateNumberOfCellsWithNewValue:(unint64_t)a3 animated:(BOOL)a4;
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
  v3 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 containerSpecificRightConstraint];

        if (v9)
        {
          v10 = [v8 containerSpecificRightConstraint];
          [(PHCarPlayPhoneCallContainer *)self removeConstraint:v10];
        }

        v11 = [v8 containerSpecificLeftConstraint];

        if (v11)
        {
          v12 = [v8 containerSpecificLeftConstraint];
          [(PHCarPlayPhoneCallContainer *)self removeConstraint:v12];
        }

        [(PHCarPlayPhoneCallContainer *)self addRelationForLeftOfCell:v8];
        [(PHCarPlayPhoneCallContainer *)self addRelationForRightOfCell:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (PHCarPlayPhoneCallContainer)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PHCarPlayPhoneCallContainer;
  v3 = [(PHCarPlayPhoneCallContainer *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)reloadDataAnimated:(BOOL)a3
{
  v5 = [(PHCarPlayPhoneCallContainer *)self _reloadQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C42B4;
  v6[3] = &unk_100356BB8;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (void)updateCell:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C4510;
  v9[3] = &unk_100358DB0;
  v10 = a3;
  v11 = a4;
  v9[4] = self;
  v12 = a5;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)updateNumberOfCellsWithNewValue:(unint64_t)a3 animated:(BOOL)a4
{
  v6 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v7 = [v6 count];

  if (v7 < a3)
  {
    v8 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v9 = a3 - [v8 count];

    [(PHCarPlayPhoneCallContainer *)self createVisibleCells:v9];
LABEL_8:

    [(PHCarPlayPhoneCallContainer *)self updateLayoutAnimated:?];
    return;
  }

  if (!self->_shouldMerge)
  {
    v10 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v11 = [v10 count] - a3;

    [(PHCarPlayPhoneCallContainer *)self removeVisibleCells:v11];
    goto LABEL_8;
  }

  [(PHCarPlayPhoneCallContainer *)self mergeVisibleCells];
}

- (void)updateLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  [(PHCarPlayPhoneCallContainer *)self layoutIfNeeded];
  [(PHCarPlayPhoneCallContainer *)self updateAllCellConstraints];
  [(PHCarPlayPhoneCallContainer *)self setNeedsUpdateConstraints];
  if (v3)
  {

    [(PHCarPlayPhoneCallContainer *)self animateLayoutOfViewWithCompletionBlock:0];
  }
}

- (void)animateLayoutOfViewWithCompletionBlock:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C4A2C;
  v3[3] = &unk_100356988;
  v3[4] = self;
  [UIView animateWithDuration:133 delay:v3 options:a3 animations:0.550000012 completion:0.0];
}

- (void)phoneCallViewCellTapped:(id)a3
{
  v10 = a3;
  v4 = [(PHCarPlayPhoneCallContainer *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHCarPlayPhoneCallContainer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PHCarPlayPhoneCallContainer *)self delegate];
      v9 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
      [v8 phoneCallContainer:self phoneCallViewTappedAtIndex:{objc_msgSend(v9, "indexOfObject:", v10)}];
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
    v3 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v3);
          }

          [(PHCarPlayPhoneCallContainer *)self updateCell:*(*(&v10 + 1) + 8 * v7) atIndex:0 animated:1];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)createVisibleCells:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v5 = [PHCarPlayPhoneCallViewCell alloc];
      [(PHCarPlayPhoneCallContainer *)self bounds];
      v6 = [(PHCarPlayPhoneCallViewCell *)v5 initWithFrame:?];
      [(PHCarPlayPhoneCallViewCell *)v6 addTarget:self action:"phoneCallViewCellTapped:" forControlEvents:64];
      [(PHCarPlayPhoneCallContainer *)self addSubview:v6];
      v7 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
      [v7 addObject:v6];

      [(PHCarPlayPhoneCallContainer *)self addConstraintsForNewCell:v6];
      --v3;
    }

    while (v3);
  }
}

- (void)removeVisibleCells:(unint64_t)a3
{
  v5 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v6 = [v5 count] - a3;

  v7 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v8 = [v7 subarrayWithRange:{v6, a3}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C4F20;
  v9[3] = &unk_100358DD8;
  v9[4] = self;
  [v8 enumerateObjectsUsingBlock:v9];
}

- (void)removeAllConstraintsForCell:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PHCarPlayPhoneCallContainer *)self constraints];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 firstItem];
        v13 = v12;
        if (v12 == v4)
        {
        }

        else
        {
          v14 = [v11 secondItem];

          if (v14 != v4)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(PHCarPlayPhoneCallContainer *)self removeConstraints:v5];
}

- (void)addConstraintsForNewCell:(id)a3
{
  v4 = a3;
  v5 = [v4 centerYAnchor];
  v6 = [(PHCarPlayPhoneCallContainer *)self centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  LODWORD(v8) = 1144750080;
  [v7 setPriority:v8];
  v9 = [v4 topAnchor];
  v10 = [(PHCarPlayPhoneCallContainer *)self topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];

  LODWORD(v12) = 1148846080;
  [v11 setPriority:v12];
  v13 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithLeftOfCell:v4];
  [v4 setContainerSpecificLeftConstraint:v13];

  v14 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithRightOfCell:v4];
  [v4 setContainerSpecificRightConstraint:v14];

  v18[0] = v7;
  v18[1] = v11;
  v15 = [v4 containerSpecificLeftConstraint];
  v18[2] = v15;
  v16 = [v4 containerSpecificRightConstraint];
  v18[3] = v16;
  v17 = [NSArray arrayWithObjects:v18 count:4];
  [(PHCarPlayPhoneCallContainer *)self addConstraints:v17];

  [(PHCarPlayPhoneCallContainer *)self addRelationForWidthOfCell:v4];
}

- (void)mergeAllCellConstraints
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(PHCarPlayPhoneCallContainer *)self removeAllConstraintsForCell:v8];
        [(PHCarPlayPhoneCallContainer *)self addConstraintsForNewCell:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)addRelationForWidthOfCell:(id)a3
{
  v9 = a3;
  v4 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  if ([v4 count] >= 2)
  {
    v5 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v6 = [v5 indexOfObject:v9];

    if (!v6)
    {
      goto LABEL_5;
    }

    v4 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v7 = [v4 firstObject];
    v8 = [NSLayoutConstraint constraintWithItem:v9 attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
  }

LABEL_5:
}

- (void)addRelationForRightOfCell:(id)a3
{
  v11 = a3;
  v4 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v5 = [v4 count] - 1;

  v6 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v7 = [v6 indexOfObject:v11];

  if (v7 == v5)
  {
    v8 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithRightOfCell:v11];
  }

  else
  {
    v9 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v10 = [v9 objectAtIndexedSubscript:v7 + 1];
    v8 = [NSLayoutConstraint constraintWithItem:v11 attribute:2 relatedBy:0 toItem:v10 attribute:1 multiplier:1.0 constant:-12.0];
  }

  [v11 setContainerSpecificRightConstraint:v8];
  [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
}

- (void)addRelationForLeftOfCell:(id)a3
{
  v9 = a3;
  v4 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
  v5 = [v4 indexOfObject:v9];

  if (v5)
  {
    v6 = [(PHCarPlayPhoneCallContainer *)self visibleCells];
    v7 = [v6 objectAtIndexedSubscript:v5 - 1];
    v8 = [NSLayoutConstraint constraintWithItem:v9 attribute:1 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:12.0];
  }

  else
  {
    v8 = [(PHCarPlayPhoneCallContainer *)self constraintToFillContainerWithLeftOfCell:v9];
  }

  [v9 setContainerSpecificLeftConstraint:v8];
  [(PHCarPlayPhoneCallContainer *)self addConstraint:v8];
}

@end