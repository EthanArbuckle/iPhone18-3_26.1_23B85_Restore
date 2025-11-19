@interface CRLiOSPresetCollectionContext
- (BOOL)hasCompactHeightCompactWidthTraitCollection;
- (BOOL)hasCompactHeightRegularWidthTraitCollection;
- (BOOL)hasRegularHeightCompactWidthTraitCollection;
- (BOOL)hasRegularHeightRegularWidthTraitCollection;
- (BOOL)isInDarkContainer;
- (CGSize)contentSize;
- (CRLiOSPresetCollectionContext)initWithContextType:(unint64_t)a3 contentSize:(CGSize)a4 editingCoordinator:(id)a5 isSearching:(BOOL)a6 pageIndex:(unint64_t)a7 subpageIndex:(unint64_t)a8 traitCollection:(id)a9;
- (id)description;
@end

@implementation CRLiOSPresetCollectionContext

- (CRLiOSPresetCollectionContext)initWithContextType:(unint64_t)a3 contentSize:(CGSize)a4 editingCoordinator:(id)a5 isSearching:(BOOL)a6 pageIndex:(unint64_t)a7 subpageIndex:(unint64_t)a8 traitCollection:(id)a9
{
  height = a4.height;
  width = a4.width;
  v18 = a5;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = CRLiOSPresetCollectionContext;
  v20 = [(CRLiOSPresetCollectionContext *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_contentSize.width = width;
    v20->_contentSize.height = height;
    v20->_contextType = a3;
    objc_storeStrong(&v20->_editingCoordinator, a5);
    v21->_isSearching = a6;
    v21->_pageIndex = a7;
    v21->_subpageIndex = a8;
    objc_storeStrong(&v21->_traitCollection, a9);
  }

  return v21;
}

- (BOOL)hasCompactHeightRegularWidthTraitCollection
{
  v3 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([v3 verticalSizeClass] == 1)
  {
    v4 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasRegularHeightCompactWidthTraitCollection
{
  v3 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([v3 verticalSizeClass] == 2)
  {
    v4 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasRegularHeightRegularWidthTraitCollection
{
  v3 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([v3 verticalSizeClass] == 2)
  {
    v4 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCompactHeightCompactWidthTraitCollection
{
  v3 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  if ([v3 verticalSizeClass] == 1)
  {
    v4 = [(CRLiOSPresetCollectionContext *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInDarkContainer
{
  v2 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  v3 = [v2 crl_isUserInterfaceStyleDark];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(CRLiOSPresetCollectionContext *)self contentSize];
  v6 = v5;
  [(CRLiOSPresetCollectionContext *)self contentSize];
  v8 = v7;
  v9 = [(CRLiOSPresetCollectionContext *)self contextType];
  v10 = [(CRLiOSPresetCollectionContext *)self editingCoordinator];
  v11 = [(CRLiOSPresetCollectionContext *)self isSearching];
  v12 = [(CRLiOSPresetCollectionContext *)self pageIndex];
  v13 = [(CRLiOSPresetCollectionContext *)self subpageIndex];
  v14 = [(CRLiOSPresetCollectionContext *)self traitCollection];
  v15 = [NSString stringWithFormat:@"<%@ %p contentSize.width=%f, contentSize.height=%f, contextType=%lu, editingCoordinator=%@, isSearching: %d, pageIndex=%lu, subpageIndex=%lu, traitCollection=%@>", v4, self, v6, v8, v9, v10, v11, v12, v13, v14];;

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