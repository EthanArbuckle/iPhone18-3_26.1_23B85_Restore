@interface MFSwipableCollectionViewLayout
+ (OS_os_log)log;
- (MFSwipableCollectionViewLayoutDelegate)swipeDelegate;
- (NSIndexPath)swipedIndexPath;
- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path;
- (id)gestureRecognizerViewForSwipeActionController:(id)controller;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)itemContainerViewForSwipeActionController:(id)controller;
- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location;
- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path;
- (id)traitCollection;
- (int64_t)layoutDirectionForSwipeActionController:(id)controller;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareForTransitionFromLayout:(id)layout;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)setSwipeDelegate:(id)delegate;
- (void)setSwipedIndexPath:(id)path animated:(BOOL)animated completion:(id)completion;
- (void)swipeActionController:(id)controller animateView:(id)view actionsView:(id)actionsView forDestructiveAction:(id)action atIndexPath:(id)path withSwipeInfo:(id *)info completion:(id)completion;
- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path;
- (void)swipeActionController:(id)controller willEndSwipeForItemAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFSwipableCollectionViewLayout

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021A90C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD6E0 != -1)
  {
    dispatch_once(&qword_1006DD6E0, block);
  }

  v2 = qword_1006DD6D8;

  return v2;
}

- (void)setSwipeDelegate:(id)delegate
{
  obj = delegate;
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

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v9 invalidateLayoutWithContext:contextCopy];
  if ([contextCopy invalidateEverything])
  {
    swipeController = [(MFSwipableCollectionViewLayout *)self swipeController];
    [swipeController resetSwipedItemAnimated:0 completion:0];
  }

  v6 = +[MFSwipableCollectionViewLayout log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    invalidateEverything = [contextCopy invalidateEverything];
    invalidateDataSourceCounts = [contextCopy invalidateDataSourceCounts];
    *buf = 134218496;
    v11 = contextCopy;
    v12 = 2048;
    v13 = invalidateEverything;
    v14 = 2048;
    v15 = invalidateDataSourceCounts;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidateLayoutWithContext:%p invalidateEverything: %ld invalidateDataSourceCounts: %ld", buf, 0x20u);
  }
}

- (id)traitCollection
{
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];

  return traitCollection;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  [collectionView traitCollectionDidChange:changeCopy];
}

- (void)prepareForTransitionFromLayout:(id)layout
{
  layoutCopy = layout;
  v6.receiver = self;
  v6.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v6 prepareForTransitionFromLayout:layoutCopy];
  swipeController = [(MFSwipableCollectionViewLayout *)self swipeController];
  [swipeController setSwipeEnabled:1];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  layoutCopy = layout;
  v6.receiver = self;
  v6.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v6 prepareForTransitionToLayout:layoutCopy];
  swipeController = [(MFSwipableCollectionViewLayout *)self swipeController];
  [swipeController setSwipeEnabled:0];
}

- (NSIndexPath)swipedIndexPath
{
  swipeController = [(MFSwipableCollectionViewLayout *)self swipeController];
  swipedIndexPath = [swipeController swipedIndexPath];

  return swipedIndexPath;
}

- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

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

- (id)gestureRecognizerViewForSwipeActionController:(id)controller
{
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];

  return collectionView;
}

- (id)itemContainerViewForSwipeActionController:(id)controller
{
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];

  return collectionView;
}

- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  swipeDelegate = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [swipeDelegate swipableCollectionViewLayout:self leadingSwipeActionsConfigurationForItemAtIndexPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  swipeDelegate = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [swipeDelegate swipableCollectionViewLayout:self trailingSwipeActionsConfigurationForItemAtIndexPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  return v7;
}

- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];
  contentWrapperView = [v7 contentWrapperView];

  return contentWrapperView;
}

- (void)setSwipedIndexPath:(id)path animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  pathCopy = path;
  completionCopy = completion;
  [(MFSwipableCollectionViewLayout *)self swipeController];
  if (pathCopy)
    v9 = {;
    v10 = [(MFSwipableCollectionViewLayout *)self swipeActionController:v9 trailingSwipeConfigurationForItemAtIndexPath:pathCopy];

    swipeController = [(MFSwipableCollectionViewLayout *)self swipeController];
    collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
    [swipeController swipeItemAtIndexPath:pathCopy configuration:v10 direction:sub_10022BBE8(0 animated:collectionView) completion:{animatedCopy, completionCopy}];
  }

  else
    v10 = {;
    [v10 resetSwipedItemAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)swipeActionController:(id)controller animateView:(id)view actionsView:(id)actionsView forDestructiveAction:(id)action atIndexPath:(id)path withSwipeInfo:(id *)info completion:(id)completion
{
  viewCopy = view;
  actionsViewCopy = actionsView;
  completionCopy = completion;
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  [collectionView frame];
  v17 = v16;
  _UIDirectionalMultiplierForSwipeDirection();
  v19 = v17 * 1.5 * v18;

  var4 = info->var4;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10021B4E8;
  v26[3] = &unk_10064CF10;
  v21 = viewCopy;
  v27 = v21;
  v29 = v19;
  v22 = actionsViewCopy;
  v28 = v22;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10021B5AC;
  v24[3] = &unk_10064FAE0;
  v24[4] = self;
  v23 = completionCopy;
  v25 = v23;
  [UIView animateWithDuration:0 delay:v26 usingSpringWithDamping:v24 initialSpringVelocity:0.400000006 options:0.0 animations:1.0 completion:var4];
}

- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  swipeDelegate = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [swipeDelegate swipableCollectionViewLayout:self willBeginSwipeAtIndexPath:pathCopy];
  }
}

- (void)swipeActionController:(id)controller willEndSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  swipeDelegate = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  if (objc_opt_respondsToSelector())
  {
    [swipeDelegate swipableCollectionViewLayout:self willEndSwipeForItemAtIndexPath:pathCopy];
  }
}

- (int64_t)layoutDirectionForSwipeActionController:(id)controller
{
  collectionView = [(MFSwipableCollectionViewLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  return layoutDirection;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  updatesCopy = updates;
  v7.receiver = self;
  v7.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:updatesCopy];
  v5 = objc_opt_new();
  [(MFSwipableCollectionViewLayout *)self setInsertedIndexPaths:v5];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021B8A4;
  v6[3] = &unk_100655C60;
  v6[4] = self;
  [updatesCopy enumerateObjectsUsingBlock:v6];
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = MFSwipableCollectionViewLayout;
  [(MFSwipableCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(MFSwipableCollectionViewLayout *)self setInsertedIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = MFSwipableCollectionViewLayout;
  v5 = [(MFSwipableCollectionViewLayout *)&v12 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  swipeDelegate = [(MFSwipableCollectionViewLayout *)self swipeDelegate];
  insertedIndexPaths = [(MFSwipableCollectionViewLayout *)self insertedIndexPaths];
  v8 = [insertedIndexPaths containsObject:pathCopy];

  LODWORD(self) = [swipeDelegate swipableCollectionViewLayout:self shouldAnimateAppearingItemAtIndexPath:pathCopy];
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