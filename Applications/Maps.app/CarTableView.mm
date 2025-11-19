@interface CarTableView
- (UIEdgeInsets)_sectionContentInset;
- (id)_car_indexPathsForVisibleRows;
- (id)_car_visibleCells;
- (id)accessoryViewAtEdge:(int64_t)a3;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
@end

@implementation CarTableView

- (UIEdgeInsets)_sectionContentInset
{
  v2 = 0.0;
  v3 = 10.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)_car_indexPathsForVisibleRows
{
  v3 = [(CarTableView *)self _car_visibleCells];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F00B30;
  v6[3] = &unk_10165CB50;
  v6[4] = self;
  v4 = sub_100021DB0(v3, v6);

  return v4;
}

- (id)_car_visibleCells
{
  v3 = [(CarTableView *)self visibleCells];
  v4 = v3;
  if (v3 && [v3 count])
  {
    [(CarTableView *)self frame];
    v6 = v5;
    v8 = v7;
    [(CarTableView *)self _sectionContentInset];
    v11 = v6 - (v9 + v10);
    v14 = v8 - (v12 + v13);
    [(CarTableView *)self contentOffset];
    v16 = v15;
    [(CarTableView *)self contentOffset];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100F00C70;
    v21[3] = &unk_10165CB28;
    v21[4] = v16;
    v21[5] = v17;
    *&v21[6] = v11;
    *&v21[7] = v14;
    v18 = [v4 indexesOfObjectsPassingTest:v21];
    v19 = [v4 objectsAtIndexes:v18];
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  return v19;
}

- (id)accessoryViewAtEdge:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CarTableView;
  v3 = [(CarTableView *)&v5 accessoryViewAtEdge:4];

  return v3;
}

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CarTableView;
  [(CarTableView *)&v16 setAccessoryView:v5 atEdge:4];
  if (GEOConfigGetBOOL())
  {
    v6 = [v5 _mapsCar_injectBlurView];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v5 _mapsCar_recursiveSubviewsWithClass:{objc_opt_class(), 0}];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setCharge:0.0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

@end