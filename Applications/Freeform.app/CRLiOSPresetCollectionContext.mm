@interface CRLiOSPresetCollectionContext
- (BOOL)hasCompactHeightCompactWidthTraitCollection;
- (BOOL)hasCompactHeightRegularWidthTraitCollection;
- (BOOL)hasRegularHeightCompactWidthTraitCollection;
- (BOOL)hasRegularHeightRegularWidthTraitCollection;
- (BOOL)isInDarkContainer;
- (CGSize)contentSize;
- (CRLiOSPresetCollectionContext)initWithContextType:(unint64_t)type contentSize:(CGSize)size editingCoordinator:(id)coordinator isSearching:(BOOL)searching pageIndex:(unint64_t)index subpageIndex:(unint64_t)subpageIndex traitCollection:(id)collection;
- (id)description;
@end

@implementation CRLiOSPresetCollectionContext

- (CRLiOSPresetCollectionContext)initWithContextType:(unint64_t)type contentSize:(CGSize)size editingCoordinator:(id)coordinator isSearching:(BOOL)searching pageIndex:(unint64_t)index subpageIndex:(unint64_t)subpageIndex traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  v23.receiver = self;
  v23.super_class = CRLiOSPresetCollectionContext;
  v20 = [(CRLiOSPresetCollectionContext *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_contentSize.width = width;
    v20->_contentSize.height = height;
    v20->_contextType = type;
    objc_storeStrong(&v20->_editingCoordinator, coordinator);
    v21->_isSearching = searching;
    v21->_pageIndex = index;
    v21->_subpageIndex = subpageIndex;
    objc_storeStrong(&v21->_traitCollection, collection);
  }

  return v21;
}

- (BOOL)hasCompactHeightRegularWidthTraitCollection
{
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    traitCollection2 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasRegularHeightCompactWidthTraitCollection
{
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 2)
  {
    traitCollection2 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasRegularHeightRegularWidthTraitCollection
{
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 2)
  {
    traitCollection2 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCompactHeightCompactWidthTraitCollection
{
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    traitCollection2 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInDarkContainer
{
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  crl_isUserInterfaceStyleDark = [traitCollection crl_isUserInterfaceStyleDark];

  return crl_isUserInterfaceStyleDark;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(CRLiOSPresetCollectionContext *)self contentSize];
  v6 = v5;
  [(CRLiOSPresetCollectionContext *)self contentSize];
  v8 = v7;
  contextType = [(CRLiOSPresetCollectionContext *)self contextType];
  editingCoordinator = [(CRLiOSPresetCollectionContext *)self editingCoordinator];
  isSearching = [(CRLiOSPresetCollectionContext *)self isSearching];
  pageIndex = [(CRLiOSPresetCollectionContext *)self pageIndex];
  subpageIndex = [(CRLiOSPresetCollectionContext *)self subpageIndex];
  traitCollection = [(CRLiOSPresetCollectionContext *)self traitCollection];
  v15 = [NSString stringWithFormat:@"<%@ %p contentSize.width=%f, contentSize.height=%f, contextType=%lu, editingCoordinator=%@, isSearching: %d, pageIndex=%lu, subpageIndex=%lu, traitCollection=%@>", v4, self, v6, v8, contextType, editingCoordinator, isSearching, pageIndex, subpageIndex, traitCollection];;

  return v15;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end