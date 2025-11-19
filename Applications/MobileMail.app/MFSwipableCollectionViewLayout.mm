@interface MFSwipableCollectionViewLayout
+ (OS_os_log)log;
- (MFSwipableCollectionViewLayoutDelegate)swipeDelegate;
- (NSIndexPath)swipedIndexPath;
- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4;
- (id)gestureRecognizerViewForSwipeActionController:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)itemContainerViewForSwipeActionController:(id)a3;
- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4;
- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4;
- (id)traitCollection;
- (int64_t)layoutDirectionForSwipeActionController:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareForTransitionFromLayout:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)setSwipeDelegate:(id)a3;
- (void)setSwipedIndexPath:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)swipeActionController:(id)a3 animateView:(id)a4 actionsView:(id)a5 forDestructiveAction:(id)a6 atIndexPath:(id)a7 withSwipeInfo:(id *)a8 completion:(id)a9;
- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 willEndSwipeForItemAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFSwipableCollectionViewLayout

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021A90C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD6E0 != -1)
  {
    dispatch_once(&qword_1006DD6E0, block);
  }

  v2 = qword_1006DD6D8;

  return v2;
}

- (void)setSwipeDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_swipeDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_swipeDelegate, obj);
    v6 = [[UISwipeActionController alloc] initWithSwipeActionHost:self style:1];
    swipeController = self->_swipeController;
    self->_swipeController = v6;

    v5 = obj;
  }
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v9 invalidateLayoutWithContext:v4];
  if ([v4 invalidateEverything])
  {
    v5 = [(MFSwipableCollectionViewLayout *)self swipeController];
    [v5 resetSwipedItemAnimated:0 completion:0];
  }

  v6 = +[MFSwipableCollectionViewLayout log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 invalidateEverything];
    v8 = [v4 invalidateDataSourceCounts];
    *buf = 134218496;
    v11 = v4;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidateLayoutWithContext:%p invalidateEverything: %ld invalidateDataSourceCounts: %ld", buf, 0x20u);
  }
}

- (id)traitCollection
{
  v2 = [(MFSwipableCollectionViewLayout *)self collectionView];
  v3 = [v2 traitCollection];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v4 = [(MFSwipableCollectionViewLayout *)self collectionView];
  [v4 traitCollectionDidChange:v5];
}

- (void)prepareForTransitionFromLayout:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v6 prepareForTransitionFromLayout:v4];
  v5 = [(MFSwipableCollectionViewLayout *)self swipeController];
  [v5 setSwipeEnabled:1];
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v6 prepareForTransitionToLayout:v4];
  v5 = [(MFSwipableCollectionViewLayout *)self swipeController];
  [v5 setSwipeEnabled:0];
}

- (NSIndexPath)swipedIndexPath
{
  v2 = [(MFSwipableCollectionViewLayout *)self swipeController];
  v3 = [v2 swipedIndexPath];

  return v3;
}

- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  [v7 safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)a3
{
  v3 = [(MFSwipableCollectionViewLayout *)self collectionView];

  return v3;
}

- (id)itemContainerViewForSwipeActionController:(id)a3
{
  v3 = [(MFSwipableCollectionViewLayout *)self collectionView];

  return v3;
}

- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 swipableCollectionViewLayout:self leadingSwipeActionsConfigurationForItemAtIndexPath:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 swipableCollectionViewLayout:self trailingSwipeActionsConfigurationForItemAtIndexPath:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  return v7;
}

- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];
  v8 = [v7 contentWrapperView];

  return v8;
}

- (void)setSwipedIndexPath:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  [(MFSwipableCollectionViewLayout *)self swipeController];
  if (v13)
    v9 = {;
    v10 = [(MFSwipableCollectionViewLayout *)self swipeActionController:v9 trailingSwipeConfigurationForItemAtIndexPath:v13];

    v11 = [(MFSwipableCollectionViewLayout *)self swipeController];
    v12 = [(MFSwipableCollectionViewLayout *)self collectionView];
    [v11 swipeItemAtIndexPath:v13 configuration:v10 direction:sub_10022BBE8(0 animated:v12) completion:{v6, v8}];
  }

  else
    v10 = {;
    [v10 resetSwipedItemAnimated:v6 completion:v8];
  }
}

- (void)swipeActionController:(id)a3 animateView:(id)a4 actionsView:(id)a5 forDestructiveAction:(id)a6 atIndexPath:(id)a7 withSwipeInfo:(id *)a8 completion:(id)a9
{
  v12 = a4;
  v13 = a5;
  v14 = a9;
  v15 = [(MFSwipableCollectionViewLayout *)self collectionView];
  [v15 frame];
  v17 = v16;
  _UIDirectionalMultiplierForSwipeDirection();
  v19 = v17 * 1.5 * v18;

  var4 = a8->var4;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10021B4E8;
  v26[3] = &unk_10064CF10;
  v21 = v12;
  v27 = v21;
  v29 = v19;
  v22 = v13;
  v28 = v22;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10021B5AC;
  v24[3] = &unk_10064FAE0;
  v24[4] = self;
  v23 = v14;
  v25 = v23;
  [UIView animateWithDuration:0 delay:v26 usingSpringWithDamping:v24 initialSpringVelocity:0.400000006 options:0.0 animations:1.0 completion:var4];
}

- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 swipableCollectionViewLayout:self willBeginSwipeAtIndexPath:v6];
  }
}

- (void)swipeActionController:(id)a3 willEndSwipeForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 swipableCollectionViewLayout:self willEndSwipeForItemAtIndexPath:v6];
  }
}

- (int64_t)layoutDirectionForSwipeActionController:(id)a3
{
  v3 = [(MFSwipableCollectionViewLayout *)self collectionView];
  v4 = [v3 traitCollection];
  v5 = [v4 layoutDirection];

  return v5;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:v4];
  v5 = objc_opt_new();
  [(MFSwipableCollectionViewLayout *)self setInsertedIndexPaths:v5];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021B8A4;
  v6[3] = &unk_100655C60;
  v6[4] = self;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(MFSwipableCollectionViewLayout *)self setInsertedIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MFSwipableCollectionViewLayout;
  v5 = [(MFSwipableCollectionViewLayout *)&v12 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v6 = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  v7 = [(MFSwipableCollectionViewLayout *)self insertedIndexPaths];
  v8 = [v7 containsObject:v4];

  LODWORD(self) = [v6 swipableCollectionViewLayout:self shouldAnimateAppearingItemAtIndexPath:v4];
  if ((_os_feature_enabled_impl() & v8 & self) == 1)
  {
    [v5 setAlpha:1.0];
    v9 = +[MFSwipableCollectionViewLayout log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Quick Reply][Send Animation] Will use quick-reply send animation", v11, 2u);
    }
  }

  return v5;
}

- (MFSwipableCollectionViewLayoutDelegate)swipeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeDelegate);

  return WeakRetained;
}

@end