@interface GuideHomeCompositionalLayout
- (GuideHomeCompositionalLayout)initWithSectionProvider:(id)a3 dataProvider:(id)a4;
- (GuideHomeDataProvider)dataProvider;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation GuideHomeCompositionalLayout

- (GuideHomeDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = GuideHomeCompositionalLayout;
  v4 = [(GuideHomeCompositionalLayout *)&v24 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(GuideHomeCompositionalLayout *)self dataProvider];
  v6 = [v5 isCuratedGuidesHome];

  if (v6)
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
        v13 = [v12 indexPath];
        if ([v13 section])
        {
          goto LABEL_8;
        }

        v14 = [v12 indexPath];
        v15 = [v14 item];

        if (!v15)
        {
          v16 = [(GuideHomeCompositionalLayout *)self collectionView];
          [v16 contentOffset];
          v18 = v17;

          if (v18 < 0.0)
          {
            [v12 frame];
            CGRectGetMaxY(v27);
            v13 = [(GuideHomeCompositionalLayout *)self collectionView];
            [v13 frame];
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

- (GuideHomeCompositionalLayout)initWithSectionProvider:(id)a3 dataProvider:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = GuideHomeCompositionalLayout;
  v7 = [(GuideHomeCompositionalLayout *)&v14 initWithSectionProvider:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_dataProvider, v6);
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