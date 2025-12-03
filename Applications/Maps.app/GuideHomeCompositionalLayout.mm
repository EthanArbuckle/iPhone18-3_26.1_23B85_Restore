@interface GuideHomeCompositionalLayout
- (GuideHomeCompositionalLayout)initWithSectionProvider:(id)provider dataProvider:(id)dataProvider;
- (GuideHomeDataProvider)dataProvider;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation GuideHomeCompositionalLayout

- (GuideHomeDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v24.receiver = self;
  v24.super_class = GuideHomeCompositionalLayout;
  v4 = [(GuideHomeCompositionalLayout *)&v24 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  dataProvider = [(GuideHomeCompositionalLayout *)self dataProvider];
  isCuratedGuidesHome = [dataProvider isCuratedGuidesHome];

  if (isCuratedGuidesHome)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v21;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        indexPath = [v12 indexPath];
        if ([indexPath section])
        {
          goto LABEL_8;
        }

        indexPath2 = [v12 indexPath];
        item = [indexPath2 item];

        if (!item)
        {
          collectionView = [(GuideHomeCompositionalLayout *)self collectionView];
          [collectionView contentOffset];
          v18 = v17;

          if (v18 < 0.0)
          {
            [v12 frame];
            CGRectGetMaxY(v27);
            indexPath = [(GuideHomeCompositionalLayout *)self collectionView];
            [indexPath frame];
            [v12 setFrame:{0.0, v18}];
LABEL_8:

            continue;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (!v9)
      {
LABEL_14:

        break;
      }
    }
  }

  return v4;
}

- (GuideHomeCompositionalLayout)initWithSectionProvider:(id)provider dataProvider:(id)dataProvider
{
  dataProviderCopy = dataProvider;
  v14.receiver = self;
  v14.super_class = GuideHomeCompositionalLayout;
  v7 = [(GuideHomeCompositionalLayout *)&v14 initWithSectionProvider:provider];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_dataProvider, dataProviderCopy);
    v9 = objc_opt_class();
    v10 = +[GuidesSectionBackground decorationViewKind];
    [(GuideHomeCompositionalLayout *)v8 registerClass:v9 forDecorationViewOfKind:v10];

    v11 = objc_opt_class();
    v12 = +[CompactGuidesSectionBackground decorationViewKind];
    [(GuideHomeCompositionalLayout *)v8 registerClass:v11 forDecorationViewOfKind:v12];
  }

  return v8;
}

@end