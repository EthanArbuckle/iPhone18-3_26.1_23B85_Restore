@interface CRLiOSShapePresetProvider
+ (id)p_placeholderLocalizedString;
- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context;
- (CRLiOSShapePresetProvider)initWithShapeCollectionDataSource:(id)source searchResultsCollection:(id)collection;
- (UIEdgeInsets)swatchInsets;
- (id)defaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context;
- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)path context:(id)context;
- (id)p_localizedNameForPresetAtIndexPath:(id)path context:(id)context isUserDefinedShape:(BOOL *)shape;
- (id)p_shapeAtIndexPath:(id)path context:(id)context;
- (id)swatchOperationWithSize:(CGSize)size atIndexPath:(id)path context:(id)context;
@end

@implementation CRLiOSShapePresetProvider

- (CRLiOSShapePresetProvider)initWithShapeCollectionDataSource:(id)source searchResultsCollection:(id)collection
{
  sourceCopy = source;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CRLiOSShapePresetProvider;
  v9 = [(CRLiOSShapePresetProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shapeCollectionDataSource, source);
    objc_storeStrong(&v10->_searchResultsCollection, collection);
  }

  return v10;
}

- (id)p_localizedNameForPresetAtIndexPath:(id)path context:(id)context isUserDefinedShape:(BOOL *)shape
{
  contextCopy = context;
  v9 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:path context:contextCopy];
  name = [v9 name];
  if ([contextCopy isSearching])
  {
    p_searchResultsCollection = [(CRLiOSShapePresetProvider *)self p_searchResultsCollection];
    v12 = [p_searchResultsCollection displayNameForShape:v9];

    name = v12;
  }

  pageIndex = [contextCopy pageIndex];
  p_shapeCollectionDataSource = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
  indexOfUserDefinedLibraryCategory = [p_shapeCollectionDataSource indexOfUserDefinedLibraryCategory];

  if (shape)
  {
    *shape = pageIndex == indexOfUserDefinedLibraryCategory;
  }

  if (![name length] && pageIndex == indexOfUserDefinedLibraryCategory)
  {
    v16 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];

    name = v16;
  }

  return name;
}

- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context
{
  v8 = 0;
  v4 = [(CRLiOSShapePresetProvider *)self p_localizedNameForPresetAtIndexPath:path context:context isUserDefinedShape:&v8];
  v5 = 0;
  if (v8 == 1)
  {
    v6 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];
    v5 = [v4 isEqualToString:v6];
  }

  return v5;
}

- (id)defaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context
{
  pageIndex = [context pageIndex];
  p_shapeCollectionDataSource = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
  indexOfUserDefinedLibraryCategory = [p_shapeCollectionDataSource indexOfUserDefinedLibraryCategory];

  if (pageIndex == indexOfUserDefinedLibraryCategory)
  {
    v8 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)path context:(id)context
{
  contextCopy = context;
  v7 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:path context:contextCopy];
  accessibilityName = [v7 accessibilityName];
  if (![accessibilityName length])
  {
    pageIndex = [contextCopy pageIndex];
    p_shapeCollectionDataSource = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
    indexOfUserDefinedLibraryCategory = [p_shapeCollectionDataSource indexOfUserDefinedLibraryCategory];

    if (pageIndex == indexOfUserDefinedLibraryCategory)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Shape" value:0 table:0];

      accessibilityName = v13;
    }
  }

  return accessibilityName;
}

- (UIEdgeInsets)swatchInsets
{
  v2 = +[CRLSwatchCache swatchCache];
  [v2 shapeSwatchInset];
  v4 = v3;
  v6 = v5;

  v7 = v6;
  v8 = v4;
  v9 = v6;
  v10 = v4;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (id)swatchOperationWithSize:(CGSize)size atIndexPath:(id)path context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v10 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:path context:contextCopy];
  shapeType = [v10 shapeType];
  editingCoordinator = [contextCopy editingCoordinator];
  if (shapeType > 0x14 || ((1 << shapeType) & 0x1D8006) == 0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 45.0;
  }

  isInDarkContainer = [contextCopy isInDarkContainer];
  isInTranslucentContainer = [contextCopy isInTranslucentContainer];
  v17 = 2;
  if (isInTranslucentContainer)
  {
    v17 = 3;
  }

  if (isInDarkContainer)
  {
    v18 = v17;
  }

  else
  {
    v18 = isInTranslucentContainer;
  }

  v19 = objc_alloc_init(CRLSwatchRenderingContext);
  [(CRLSwatchRenderingContext *)v19 setBackgroundAppearance:v18];
  [(CRLSwatchRenderingContext *)v19 setWantsToRenderHighContrastBackground:0];
  v20 = [CRLShapeRenderingOperation alloc];
  +[UIScreen crl_screenScale];
  v22 = v21;
  v23 = [v10 pathSourceWithSize:{width, height}];
  v24 = [(CRLShapeRenderingOperation *)v20 initWithImageSize:shapeType imageScale:v23 shapeType:editingCoordinator shapePathSource:v19 angle:width editingCoordinator:height swatchCacheRenderingContext:v22, v14];

  return v24;
}

- (id)p_shapeAtIndexPath:(id)path context:(id)context
{
  contextCopy = context;
  pathCopy = path;
  if ([contextCopy isSearching])
  {
    p_searchResultsCollection = [(CRLiOSShapePresetProvider *)self p_searchResultsCollection];
    v9 = [p_searchResultsCollection shapeAtIndexPath:pathCopy];
  }

  else
  {
    p_searchResultsCollection = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
    v10 = [pathCopy row];

    v9 = [p_searchResultsCollection shapeAtIndex:v10 categoryIndex:{objc_msgSend(contextCopy, "pageIndex")}];
  }

  return v9;
}

+ (id)p_placeholderLocalizedString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Shape" value:0 table:0];

  return v3;
}

@end