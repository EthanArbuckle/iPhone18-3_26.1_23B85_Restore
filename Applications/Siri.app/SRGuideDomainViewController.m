@interface SRGuideDomainViewController
- (BOOL)_showsCategoriesForSection:(unint64_t)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SRGuideDomainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)_headerViewEdgeInsets;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForWidth:(double)a3;
- (id)_phraseForIndexPath:(id)a3;
- (id)_titleForSection:(unint64_t)a3;
- (id)_utterancesForSection:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)_cellTypeForIndexPath:(id)a3;
- (int64_t)_numberOfSections;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)configureReusableHeaderView:(id)a3;
- (void)loadView;
- (void)setSnippet:(id)a3;
@end

@implementation SRGuideDomainViewController

- (SRGuideDomainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SRGuideDomainViewController;
  v4 = [(SRGuideDomainViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SRGuideDomainViewController *)v4 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  return v5;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = SRGuideDomainViewController;
  [(SRGuideDomainViewController *)&v12 loadView];
  v3 = [(SRGuideDomainViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SRGuideDetailSectionHeaderCollectionViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[SRGuideDetailPhraseViewCell reuseIdentifier];
  [v3 registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [v3 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[SRGuideViewHeader reuseIdentifier];
  [v3 registerClass:v10 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11];
}

- (void)configureReusableHeaderView:(id)a3
{
  v6 = a3;
  v4 = [(SRGuideDomainViewController *)self snippet];
  v5 = [v4 domainDisplayName];
  [v6 setTitle:v5];

  [(SRGuideDomainViewController *)self _headerViewEdgeInsets];
  [v6 setEdgeInsets:?];
}

- (double)desiredHeightForHeaderView
{
  v3 = [(SRGuideDomainViewController *)self delegate];
  [v3 siriViewControllerExpectedWidth:self];
  v5 = v4;
  v6 = [(SRGuideDomainViewController *)self snippet];
  v7 = [v6 domainDisplayName];
  [(SRGuideDomainViewController *)self _headerViewEdgeInsets];
  [SRGuideViewHeader sizeThatFits:v7 text:v5 edgeInsets:1.79769313e308, v8, v9, v10, v11];
  v13 = v12;

  return v13;
}

- (int64_t)_cellTypeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (![v4 item])
  {
    v6 = [(SRGuideDomainViewController *)self snippet];
    v7 = [v6 guideSections];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    v9 = [v8 sectionName];
    v10 = [v9 length];

    if (v10)
    {
      v5 = 0;
    }
  }

  return v5;
}

- (UIEdgeInsets)_headerViewEdgeInsets
{
  v2 = SiriUIPlatterStyle[32];
  v3 = SiriUIPlatterStyle[34];
  v4 = 3.5;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (int64_t)_numberOfSections
{
  v2 = [(SRGuideDomainViewController *)self snippet];
  v3 = [v2 guideSections];
  v4 = [v3 count];

  return v4;
}

- (id)_utterancesForSection:(unint64_t)a3
{
  v4 = [(SRGuideDomainViewController *)self snippet];
  v5 = [v4 guideSections];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 guideUtterances];

  return v7;
}

- (double)desiredHeightForWidth:(double)a3
{
  if ([(SRGuideDomainViewController *)self _numberOfSections]< 1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    if ([(SRGuideDomainViewController *)self _showsCategoriesForSection:v5])
    {
      v7 = [(SRGuideDomainViewController *)self snippet];
      v8 = [v7 guideSections];
      v9 = [v8 objectAtIndexedSubscript:v5];

      v10 = [v9 sectionName];
      [SRGuideDetailSectionHeaderCollectionViewCell sizeThatFits:v10 text:a3, 1.79769313e308];
      v6 = v6 + v11;
    }

    v12 = [(SRGuideDomainViewController *)self _utterancesForSection:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [SRGuideDetailPhraseViewCell sizeThatFits:*(*(&v19 + 1) + 8 * i) text:a3, 1.79769313e308];
          v6 = v6 + v17;
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    ++v5;
  }

  while (v5 < [(SRGuideDomainViewController *)self _numberOfSections]);
  return v6;
}

- (id)_titleForSection:(unint64_t)a3
{
  v4 = [(SRGuideDomainViewController *)self snippet];
  v5 = [v4 guideSections];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 sectionName];

  return v7;
}

- (BOOL)_showsCategoriesForSection:(unint64_t)a3
{
  v3 = [(SRGuideDomainViewController *)self _titleForSection:a3];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)_phraseForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = &v5[--[SRGuideDomainViewController _showsCategoriesForSection:](self, "_showsCategoriesForSection:", [v4 section])];
  v7 = [v4 section];

  v8 = [(SRGuideDomainViewController *)self _utterancesForSection:v7];
  v9 = [v8 objectAtIndexedSubscript:v6];

  return v9;
}

- (void)setSnippet:(id)a3
{
  v5.receiver = self;
  v5.super_class = SRGuideDomainViewController;
  [(SRGuideDomainViewController *)&v5 setSnippet:a3];
  if ([(SRGuideDomainViewController *)self isViewLoaded])
  {
    v4 = [(SRGuideDomainViewController *)self collectionView];
    [v4 reloadData];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[SRGuideViewHeader reuseIdentifier];
  v9 = [v7 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v8 forIndexPath:v6];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(SRGuideDomainViewController *)self _utterancesForSection:a4];
  v7 = [v6 count];

  return v7 + [(SRGuideDomainViewController *)self _showsCategoriesForSection:a4];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRGuideDomainViewController *)self _cellTypeForIndexPath:v7];
  if (v8 == 1)
  {
    v15 = +[SRGuideDetailPhraseViewCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];

    v13 = [(SRGuideDomainViewController *)self _phraseForIndexPath:v7];
    [v10 setText:v13];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = +[SRGuideDetailSectionHeaderCollectionViewCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

    v11 = [(SRGuideDomainViewController *)self snippet];
    v12 = [v11 guideSections];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v14 = [v13 sectionName];
    [v10 setText:v14];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SRGuideDomainViewController *)self _cellTypeForIndexPath:v6];
  v8 = [(SRGuideDomainViewController *)self delegate];
  [v8 siriViewControllerExpectedWidth:self];
  v10 = v9;

  if (v7 == 1)
  {
    v13 = [(SRGuideDomainViewController *)self _phraseForIndexPath:v6];
    [SRGuideDetailPhraseViewCell sizeThatFits:v13 text:v10, 1.79769313e308];
    height = v17;
  }

  else
  {
    if (v7)
    {
      height = CGSizeZero.height;
      goto LABEL_7;
    }

    v11 = [(SRGuideDomainViewController *)self snippet];
    v12 = [v11 guideSections];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

    v14 = [v13 sectionName];
    [SRGuideDetailSectionHeaderCollectionViewCell sizeThatFits:v14 text:v10, 1.79769313e308];
    height = v15;
  }

LABEL_7:
  v18 = v10;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

@end