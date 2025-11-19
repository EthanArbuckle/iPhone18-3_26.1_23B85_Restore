@interface MapViewModeGridView
- (MapViewModeGridView)initWithFrame:(CGRect)a3;
- (id)_constraintsForStackingButtonViews:(id)a3 inRowLayoutGuide:(id)a4;
- (id)_constraintsForStackingRows;
- (void)_addOrRemoveObjectsInMutableArray:(id)a3 toMatchCount:(unint64_t)a4 addBlock:(id)a5 removeBlock:(id)a6;
- (void)_rebuildGrid;
- (void)setButtonViewModels:(id)a3;
@end

@implementation MapViewModeGridView

- (id)_constraintsForStackingButtonViews:(id)a3 inRowLayoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v41 = self;
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
  v10 = v6;
  v42 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v42)
  {
    v11 = 0;
    v39 = *v46;
    v40 = v10;
    v43 = v7;
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
        v15 = [v14 leadingAnchor];
        v44 = v13;
        if (v13)
        {
          v16 = [v13 trailingAnchor];
          [v15 constraintEqualToAnchor:v16 constant:v9];
        }

        else
        {
          v16 = [v7 leadingAnchor];
          [v15 constraintEqualToAnchor:v16];
        }
        v17 = ;
        [v8 addObject:v17];

        v18 = [v14 topAnchor];
        v19 = [v7 topAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v49[0] = v20;
        v21 = [v14 bottomAnchor];
        [v7 bottomAnchor];
        v23 = v22 = v8;
        v24 = [v21 constraintEqualToAnchor:v23];
        v49[1] = v24;
        v25 = [NSArray arrayWithObjects:v49 count:2];
        [v22 addObjectsFromArray:v25];

        v8 = v22;
        v10 = v40;
        v26 = [v40 lastObject];

        if (v14 == v26)
        {
          v27 = [v14 trailingAnchor];
          v28 = [v43 trailingAnchor];
          v29 = [v27 constraintEqualToAnchor:v28];
          [v8 addObject:v29];
        }

        if (v44)
        {
          v30 = [v14 widthAnchor];
          v31 = [v44 widthAnchor];
          v32 = [v30 constraintEqualToAnchor:v31];
          [v8 addObject:v32];
        }

        if ([v40 count] >= 2)
        {
          v33 = [v14 widthAnchor];
          v34 = [v14 heightAnchor];
          v35 = [v33 constraintEqualToAnchor:v34 multiplier:1.42105263];
          [v8 addObject:v35];
        }

        if (sub_10000FA08(v41) == 5)
        {
          v36 = [v14 widthAnchor];
          v37 = [v36 constraintEqualToConstant:152.0];
          [v8 addObject:v37];
        }

        v11 = v14;

        v12 = v12 + 1;
        v13 = v11;
        v7 = v43;
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
    v35 = self;
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
        v9 = [v8 topAnchor];
        v37 = v7;
        v38 = v6;
        if (v7)
        {
          v10 = [v7 bottomAnchor];
          v11 = [v9 constraintEqualToAnchor:v10 constant:v4];
          [v3 addObject:v11];
        }

        else
        {
          v10 = [(MapViewModeGridView *)self layoutMarginsGuide];
          v11 = [v10 topAnchor];
          v12 = [v9 constraintEqualToAnchor:v11];
          [v3 addObject:v12];
        }

        v36 = [v8 leadingAnchor];
        v13 = [(MapViewModeGridView *)self layoutMarginsGuide];
        v14 = [v13 leadingAnchor];
        [v36 constraintEqualToAnchor:v14];
        v16 = v15 = v8;
        v43[0] = v16;
        v17 = [v8 trailingAnchor];
        v18 = [(MapViewModeGridView *)self layoutMarginsGuide];
        v19 = [v18 trailingAnchor];
        v20 = [v17 constraintEqualToAnchor:v19];
        v43[1] = v20;
        v21 = [NSArray arrayWithObjects:v43 count:2];
        [v32 addObjectsFromArray:v21];

        self = v35;
        v22 = [(NSMutableArray *)v35->_rowLayoutGuides lastObject];

        v3 = v32;
        if (v15 == v22)
        {
          v23 = [v15 bottomAnchor];
          v24 = [(MapViewModeGridView *)v35 layoutMarginsGuide];
          v25 = [v24 bottomAnchor];
          v26 = [v23 constraintEqualToAnchor:v25];
          [v32 addObject:v26];

          self = v35;
        }

        if (v37)
        {
          v27 = [v15 heightAnchor];
          v28 = [v37 heightAnchor];
          v29 = [v27 constraintEqualToAnchor:v28];
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

- (void)_addOrRemoveObjectsInMutableArray:(id)a3 toMatchCount:(unint64_t)a4 addBlock:(id)a5 removeBlock:(id)a6
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v15 count];
  v12 = [v15 count];
  if (v11 >= a4)
  {
    if (v12 > a4 && [v15 count] > a4)
    {
      do
      {
        v14 = [v15 lastObject];
        [v15 removeLastObject];
        v10[2](v10, v14);
      }

      while ([v15 count] > a4);
    }
  }

  else if (v12 < a4)
  {
    do
    {
      v13 = v9[2](v9);
      [v15 addObject:v13];
    }

    while ([v15 count] < a4);
  }
}

- (void)_rebuildGrid
{
  v2 = self;
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = v2->_constraints;
    v2->_constraints = 0;
  }

  v4 = 8;
  buttonViews = v2->_buttonViews;
  v6 = [(NSArray *)v2->_buttonViewModels count];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100BDDCA0;
  v33[3] = &unk_10164D030;
  v33[4] = v2;
  [(MapViewModeGridView *)v2 _addOrRemoveObjectsInMutableArray:buttonViews toMatchCount:v6 addBlock:v33 removeBlock:&stru_10164D070];
  v27 = [(NSMutableArray *)v2->_buttonViews count]& 1;
  v7 = v27 + ([(NSMutableArray *)v2->_buttonViews count]>> 1);
  v8 = 16;
  rowLayoutGuides = v2->_rowLayoutGuides;
  v31[4] = v2;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100BDDD0C;
  v32[3] = &unk_10164D030;
  v32[4] = v2;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100BDDD5C;
  v31[3] = &unk_10164D098;
  [(MapViewModeGridView *)v2 _addOrRemoveObjectsInMutableArray:rowLayoutGuides toMatchCount:v7 addBlock:v32 removeBlock:v31];
  v10 = +[NSMutableArray array];
  v11 = [(MapViewModeGridView *)v2 _constraintsForStackingRows];
  v29 = v10;
  [v10 addObjectsFromArray:v11];

  if (v7)
  {
    v12 = 0;
    v13 = -v27;
    v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    do
    {
      if (v12 || !v27)
      {
        v28 = [*(&v2->super.super.super.isa + v4) objectAtIndexedSubscript:v13];
        v34[0] = v28;
        v30 = [*(&v2->super.super.super.isa + v4) objectAtIndexedSubscript:v13 + 1];
        v34[1] = v30;
        v17 = [v14[286] arrayWithObjects:v34 count:2];
        v18 = [*(&v2->super.super.super.isa + v8) objectAtIndexedSubscript:v12];
        [(MapViewModeGridView *)v2 _constraintsForStackingButtonViews:v17 inRowLayoutGuide:v18];
        v19 = v14;
        v20 = v2;
        v21 = v4;
        v22 = v8;
        v24 = v23 = v7;
        [v29 addObjectsFromArray:v24];

        v7 = v23;
        v8 = v22;
        v4 = v21;
        v2 = v20;
        v14 = v19;
        v15 = v28;
      }

      else
      {
        v15 = [*(&v2->super.super.super.isa + v4) firstObject];
        v35 = v15;
        v16 = [v14[286] arrayWithObjects:&v35 count:1];
        v17 = [*(&v2->super.super.super.isa + v8) firstObject];
        v30 = v16;
        v18 = [(MapViewModeGridView *)v2 _constraintsForStackingButtonViews:v16 inRowLayoutGuide:v17];
        [v29 addObjectsFromArray:v18];
      }

      ++v12;
      v13 += 2;
    }

    while (v7 != v12);
  }

  if (sub_10000FA08(v2) == 5)
  {
    [(MapViewModeGridView *)v2 setLayoutMargins:16.0, 14.0, 16.0, 14.0];
  }

  [NSLayoutConstraint activateConstraints:v29];
  v25 = [v29 copy];
  v26 = v2->_constraints;
  v2->_constraints = v25;
}

- (void)setButtonViewModels:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_buttonViewModels != v5 && ([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_buttonViewModels, a3);
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

- (MapViewModeGridView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MapViewModeGridView;
  v3 = [(MapViewModeGridView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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