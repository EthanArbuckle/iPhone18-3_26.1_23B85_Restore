@interface MapViewModeGridView
- (MapViewModeGridView)initWithFrame:(CGRect)frame;
- (id)_constraintsForStackingButtonViews:(id)views inRowLayoutGuide:(id)guide;
- (id)_constraintsForStackingRows;
- (void)_addOrRemoveObjectsInMutableArray:(id)array toMatchCount:(unint64_t)count addBlock:(id)block removeBlock:(id)removeBlock;
- (void)_rebuildGrid;
- (void)setButtonViewModels:(id)models;
@end

@implementation MapViewModeGridView

- (id)_constraintsForStackingButtonViews:(id)views inRowLayoutGuide:(id)guide
{
  viewsCopy = views;
  guideCopy = guide;
  v8 = +[NSMutableArray array];
  selfCopy = self;
  v45 = 0u;
  v46 = 0u;
  if (sub_10000FA08(self) == 5)
  {
    v9 = 14.0;
  }

  else
  {
    v9 = 20.0;
  }

  v47 = 0uLL;
  v48 = 0uLL;
  v10 = viewsCopy;
  v42 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v42)
  {
    v11 = 0;
    v39 = *v46;
    v40 = v10;
    v43 = guideCopy;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v45 + 1) + 8 * v12);
        leadingAnchor = [v14 leadingAnchor];
        v44 = v13;
        if (v13)
        {
          trailingAnchor = [v13 trailingAnchor];
          [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:v9];
        }

        else
        {
          trailingAnchor = [guideCopy leadingAnchor];
          [leadingAnchor constraintEqualToAnchor:trailingAnchor];
        }
        v17 = ;
        [v8 addObject:v17];

        topAnchor = [v14 topAnchor];
        topAnchor2 = [guideCopy topAnchor];
        v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v49[0] = v20;
        bottomAnchor = [v14 bottomAnchor];
        [guideCopy bottomAnchor];
        v23 = v22 = v8;
        v24 = [bottomAnchor constraintEqualToAnchor:v23];
        v49[1] = v24;
        v25 = [NSArray arrayWithObjects:v49 count:2];
        [v22 addObjectsFromArray:v25];

        v8 = v22;
        v10 = v40;
        lastObject = [v40 lastObject];

        if (v14 == lastObject)
        {
          trailingAnchor2 = [v14 trailingAnchor];
          trailingAnchor3 = [v43 trailingAnchor];
          v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
          [v8 addObject:v29];
        }

        if (v44)
        {
          widthAnchor = [v14 widthAnchor];
          widthAnchor2 = [v44 widthAnchor];
          v32 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
          [v8 addObject:v32];
        }

        if ([v40 count] >= 2)
        {
          widthAnchor3 = [v14 widthAnchor];
          heightAnchor = [v14 heightAnchor];
          v35 = [widthAnchor3 constraintEqualToAnchor:heightAnchor multiplier:1.42105263];
          [v8 addObject:v35];
        }

        if (sub_10000FA08(selfCopy) == 5)
        {
          widthAnchor4 = [v14 widthAnchor];
          v37 = [widthAnchor4 constraintEqualToConstant:152.0];
          [v8 addObject:v37];
        }

        v11 = v14;

        v12 = v12 + 1;
        v13 = v11;
        guideCopy = v43;
      }

      while (v42 != v12);
      v42 = [v40 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v42);
  }

  return v8;
}

- (id)_constraintsForStackingRows
{
  v3 = +[NSMutableArray array];
  if (sub_10000FA08(self) == 5)
  {
    v4 = 14.0;
  }

  else
  {
    v4 = 20.0;
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_rowLayoutGuides;
  v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v5 = 0;
  if (v34)
  {
    v32 = v3;
    v33 = *v40;
    selfCopy = self;
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * v6);
        topAnchor = [v8 topAnchor];
        v37 = v7;
        v38 = v6;
        if (v7)
        {
          bottomAnchor = [v7 bottomAnchor];
          topAnchor2 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v4];
          [v3 addObject:topAnchor2];
        }

        else
        {
          bottomAnchor = [(MapViewModeGridView *)self layoutMarginsGuide];
          topAnchor2 = [bottomAnchor topAnchor];
          v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
          [v3 addObject:v12];
        }

        leadingAnchor = [v8 leadingAnchor];
        layoutMarginsGuide = [(MapViewModeGridView *)self layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
        [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v16 = v15 = v8;
        v43[0] = v16;
        trailingAnchor = [v8 trailingAnchor];
        layoutMarginsGuide2 = [(MapViewModeGridView *)self layoutMarginsGuide];
        trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
        v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v43[1] = v20;
        v21 = [NSArray arrayWithObjects:v43 count:2];
        [v32 addObjectsFromArray:v21];

        self = selfCopy;
        lastObject = [(NSMutableArray *)selfCopy->_rowLayoutGuides lastObject];

        v3 = v32;
        if (v15 == lastObject)
        {
          bottomAnchor2 = [v15 bottomAnchor];
          layoutMarginsGuide3 = [(MapViewModeGridView *)selfCopy layoutMarginsGuide];
          bottomAnchor3 = [layoutMarginsGuide3 bottomAnchor];
          v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
          [v32 addObject:v26];

          self = selfCopy;
        }

        if (v37)
        {
          heightAnchor = [v15 heightAnchor];
          heightAnchor2 = [v37 heightAnchor];
          v29 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
          [v32 addObject:v29];
        }

        v5 = v15;

        v6 = v38 + 1;
        v7 = v5;
      }

      while (v34 != (v38 + 1));
      v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

  return v3;
}

- (void)_addOrRemoveObjectsInMutableArray:(id)array toMatchCount:(unint64_t)count addBlock:(id)block removeBlock:(id)removeBlock
{
  arrayCopy = array;
  blockCopy = block;
  removeBlockCopy = removeBlock;
  v11 = [arrayCopy count];
  v12 = [arrayCopy count];
  if (v11 >= count)
  {
    if (v12 > count && [arrayCopy count] > count)
    {
      do
      {
        lastObject = [arrayCopy lastObject];
        [arrayCopy removeLastObject];
        removeBlockCopy[2](removeBlockCopy, lastObject);
      }

      while ([arrayCopy count] > count);
    }
  }

  else if (v12 < count)
  {
    do
    {
      v13 = blockCopy[2](blockCopy);
      [arrayCopy addObject:v13];
    }

    while ([arrayCopy count] < count);
  }
}

- (void)_rebuildGrid
{
  selfCopy = self;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = selfCopy->_constraints;
    selfCopy->_constraints = 0;
  }

  v4 = 8;
  buttonViews = selfCopy->_buttonViews;
  v6 = [(NSArray *)selfCopy->_buttonViewModels count];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100BDDCA0;
  v33[3] = &unk_10164D030;
  v33[4] = selfCopy;
  [(MapViewModeGridView *)selfCopy _addOrRemoveObjectsInMutableArray:buttonViews toMatchCount:v6 addBlock:v33 removeBlock:&stru_10164D070];
  v27 = [(NSMutableArray *)selfCopy->_buttonViews count]& 1;
  v7 = v27 + ([(NSMutableArray *)selfCopy->_buttonViews count]>> 1);
  v8 = 16;
  rowLayoutGuides = selfCopy->_rowLayoutGuides;
  v31[4] = selfCopy;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100BDDD0C;
  v32[3] = &unk_10164D030;
  v32[4] = selfCopy;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100BDDD5C;
  v31[3] = &unk_10164D098;
  [(MapViewModeGridView *)selfCopy _addOrRemoveObjectsInMutableArray:rowLayoutGuides toMatchCount:v7 addBlock:v32 removeBlock:v31];
  v10 = +[NSMutableArray array];
  _constraintsForStackingRows = [(MapViewModeGridView *)selfCopy _constraintsForStackingRows];
  v29 = v10;
  [v10 addObjectsFromArray:_constraintsForStackingRows];

  if (v7)
  {
    v12 = 0;
    v13 = -v27;
    v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    do
    {
      if (v12 || !v27)
      {
        v28 = [*(&selfCopy->super.super.super.isa + v4) objectAtIndexedSubscript:v13];
        v34[0] = v28;
        v30 = [*(&selfCopy->super.super.super.isa + v4) objectAtIndexedSubscript:v13 + 1];
        v34[1] = v30;
        firstObject2 = [v14[286] arrayWithObjects:v34 count:2];
        v18 = [*(&selfCopy->super.super.super.isa + v8) objectAtIndexedSubscript:v12];
        [(MapViewModeGridView *)selfCopy _constraintsForStackingButtonViews:firstObject2 inRowLayoutGuide:v18];
        v19 = v14;
        v20 = selfCopy;
        v21 = v4;
        v22 = v8;
        v24 = v23 = v7;
        [v29 addObjectsFromArray:v24];

        v7 = v23;
        v8 = v22;
        v4 = v21;
        selfCopy = v20;
        v14 = v19;
        firstObject = v28;
      }

      else
      {
        firstObject = [*(&selfCopy->super.super.super.isa + v4) firstObject];
        v35 = firstObject;
        v16 = [v14[286] arrayWithObjects:&v35 count:1];
        firstObject2 = [*(&selfCopy->super.super.super.isa + v8) firstObject];
        v30 = v16;
        v18 = [(MapViewModeGridView *)selfCopy _constraintsForStackingButtonViews:v16 inRowLayoutGuide:firstObject2];
        [v29 addObjectsFromArray:v18];
      }

      ++v12;
      v13 += 2;
    }

    while (v7 != v12);
  }

  if (sub_10000FA08(selfCopy) == 5)
  {
    [(MapViewModeGridView *)selfCopy setLayoutMargins:16.0, 14.0, 16.0, 14.0];
  }

  [NSLayoutConstraint activateConstraints:v29];
  v25 = [v29 copy];
  v26 = selfCopy->_constraints;
  selfCopy->_constraints = v25;
}

- (void)setButtonViewModels:(id)models
{
  modelsCopy = models;
  v6 = modelsCopy;
  if (self->_buttonViewModels != modelsCopy && ([(NSArray *)modelsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_buttonViewModels, models);
    v7 = [(NSMutableArray *)self->_buttonViews count];
    if (v7 != [(NSArray *)self->_buttonViewModels count])
    {
      [(MapViewModeGridView *)self _rebuildGrid];
    }

    buttonViewModels = self->_buttonViewModels;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100BDDE5C;
    v9[3] = &unk_10164D008;
    v9[4] = self;
    [(NSArray *)buttonViewModels enumerateObjectsUsingBlock:v9];
  }
}

- (MapViewModeGridView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MapViewModeGridView;
  v3 = [(MapViewModeGridView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    buttonViews = v3->_buttonViews;
    v3->_buttonViews = v4;

    buttonViewModels = v3->_buttonViewModels;
    v3->_buttonViewModels = &__NSArray0__struct;

    v7 = +[NSMutableArray array];
    rowLayoutGuides = v3->_rowLayoutGuides;
    v3->_rowLayoutGuides = v7;

    [(MapViewModeGridView *)v3 setAccessibilityIdentifier:@"MapViewModeGridView"];
  }

  return v3;
}

@end