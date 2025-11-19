@interface CRLiOSShapePresetProvider
+ (id)p_placeholderLocalizedString;
- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (CRLiOSShapePresetProvider)initWithShapeCollectionDataSource:(id)a3 searchResultsCollection:(id)a4;
- (UIEdgeInsets)swatchInsets;
- (id)defaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (id)p_localizedNameForPresetAtIndexPath:(id)a3 context:(id)a4 isUserDefinedShape:(BOOL *)a5;
- (id)p_shapeAtIndexPath:(id)a3 context:(id)a4;
- (id)swatchOperationWithSize:(CGSize)a3 atIndexPath:(id)a4 context:(id)a5;
@end

@implementation CRLiOSShapePresetProvider

- (CRLiOSShapePresetProvider)initWithShapeCollectionDataSource:(id)a3 searchResultsCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLiOSShapePresetProvider;
  v9 = [(CRLiOSShapePresetProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shapeCollectionDataSource, a3);
    objc_storeStrong(&v10->_searchResultsCollection, a4);
  }

  return v10;
}

- (id)p_localizedNameForPresetAtIndexPath:(id)a3 context:(id)a4 isUserDefinedShape:(BOOL *)a5
{
  v8 = a4;
  v9 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:a3 context:v8];
  v10 = [v9 name];
  if ([v8 isSearching])
  {
    v11 = [(CRLiOSShapePresetProvider *)self p_searchResultsCollection];
    v12 = [v11 displayNameForShape:v9];

    v10 = v12;
  }

  v13 = [v8 pageIndex];
  v14 = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
  v15 = [v14 indexOfUserDefinedLibraryCategory];

  if (a5)
  {
    *a5 = v13 == v15;
  }

  if (![v10 length] && v13 == v15)
  {
    v16 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];

    v10 = v16;
  }

  return v10;
}

- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v8 = 0;
  v4 = [(CRLiOSShapePresetProvider *)self p_localizedNameForPresetAtIndexPath:a3 context:a4 isUserDefinedShape:&v8];
  v5 = 0;
  if (v8 == 1)
  {
    v6 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];
    v5 = [v4 isEqualToString:v6];
  }

  return v5;
}

- (id)defaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v5 = [a4 pageIndex];
  v6 = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
  v7 = [v6 indexOfUserDefinedLibraryCategory];

  if (v5 == v7)
  {
    v8 = +[CRLiOSShapePresetProvider p_placeholderLocalizedString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:a3 context:v6];
  v8 = [v7 accessibilityName];
  if (![v8 length])
  {
    v9 = [v6 pageIndex];
    v10 = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
    v11 = [v10 indexOfUserDefinedLibraryCategory];

    if (v9 == v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Shape" value:0 table:0];

      v8 = v13;
    }
  }

  return v8;
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

- (id)swatchOperationWithSize:(CGSize)a3 atIndexPath:(id)a4 context:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(CRLiOSShapePresetProvider *)self p_shapeAtIndexPath:a4 context:v9];
  v11 = [v10 shapeType];
  v12 = [v9 editingCoordinator];
  if (v11 > 0x14 || ((1 << v11) & 0x1D8006) == 0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 45.0;
  }

  v15 = [v9 isInDarkContainer];
  v16 = [v9 isInTranslucentContainer];
  v17 = 2;
  if (v16)
  {
    v17 = 3;
  }

  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = objc_alloc_init(CRLSwatchRenderingContext);
  [(CRLSwatchRenderingContext *)v19 setBackgroundAppearance:v18];
  [(CRLSwatchRenderingContext *)v19 setWantsToRenderHighContrastBackground:0];
  v20 = [CRLShapeRenderingOperation alloc];
  +[UIScreen crl_screenScale];
  v22 = v21;
  v23 = [v10 pathSourceWithSize:{width, height}];
  v24 = [(CRLShapeRenderingOperation *)v20 initWithImageSize:v11 imageScale:v23 shapeType:v12 shapePathSource:v19 angle:width editingCoordinator:height swatchCacheRenderingContext:v22, v14];

  return v24;
}

- (id)p_shapeAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isSearching])
  {
    v8 = [(CRLiOSShapePresetProvider *)self p_searchResultsCollection];
    v9 = [v8 shapeAtIndexPath:v7];
  }

  else
  {
    v8 = [(CRLiOSShapePresetProvider *)self p_shapeCollectionDataSource];
    v10 = [v7 row];

    v9 = [v8 shapeAtIndex:v10 categoryIndex:{objc_msgSend(v6, "pageIndex")}];
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