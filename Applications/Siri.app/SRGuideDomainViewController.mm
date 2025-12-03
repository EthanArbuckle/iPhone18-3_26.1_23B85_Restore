@interface SRGuideDomainViewController
- (BOOL)_showsCategoriesForSection:(unint64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SRGuideDomainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)_headerViewEdgeInsets;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForWidth:(double)width;
- (id)_phraseForIndexPath:(id)path;
- (id)_titleForSection:(unint64_t)section;
- (id)_utterancesForSection:(unint64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)_cellTypeForIndexPath:(id)path;
- (int64_t)_numberOfSections;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)configureReusableHeaderView:(id)view;
- (void)loadView;
- (void)setSnippet:(id)snippet;
@end

@implementation SRGuideDomainViewController

- (SRGuideDomainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SRGuideDomainViewController;
  v4 = [(SRGuideDomainViewController *)&v7 initWithNibName:name bundle:bundle];
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
  collectionView = [(SRGuideDomainViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SRGuideDetailSectionHeaderCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[SRGuideDetailPhraseViewCell reuseIdentifier];
  [collectionView registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[SRGuideViewHeader reuseIdentifier];
  [collectionView registerClass:v10 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11];
}

- (void)configureReusableHeaderView:(id)view
{
  viewCopy = view;
  snippet = [(SRGuideDomainViewController *)self snippet];
  domainDisplayName = [snippet domainDisplayName];
  [viewCopy setTitle:domainDisplayName];

  [(SRGuideDomainViewController *)self _headerViewEdgeInsets];
  [viewCopy setEdgeInsets:?];
}

- (double)desiredHeightForHeaderView
{
  delegate = [(SRGuideDomainViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v5 = v4;
  snippet = [(SRGuideDomainViewController *)self snippet];
  domainDisplayName = [snippet domainDisplayName];
  [(SRGuideDomainViewController *)self _headerViewEdgeInsets];
  [SRGuideViewHeader sizeThatFits:domainDisplayName text:v5 edgeInsets:1.79769313e308, v8, v9, v10, v11];
  v13 = v12;

  return v13;
}

- (int64_t)_cellTypeForIndexPath:(id)path
{
  pathCopy = path;
  v5 = 1;
  if (![pathCopy item])
  {
    snippet = [(SRGuideDomainViewController *)self snippet];
    guideSections = [snippet guideSections];
    v8 = [guideSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    sectionName = [v8 sectionName];
    v10 = [sectionName length];

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
  snippet = [(SRGuideDomainViewController *)self snippet];
  guideSections = [snippet guideSections];
  v4 = [guideSections count];

  return v4;
}

- (id)_utterancesForSection:(unint64_t)section
{
  snippet = [(SRGuideDomainViewController *)self snippet];
  guideSections = [snippet guideSections];
  v6 = [guideSections objectAtIndexedSubscript:section];

  guideUtterances = [v6 guideUtterances];

  return guideUtterances;
}

- (double)desiredHeightForWidth:(double)width
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
      snippet = [(SRGuideDomainViewController *)self snippet];
      guideSections = [snippet guideSections];
      v9 = [guideSections objectAtIndexedSubscript:v5];

      sectionName = [v9 sectionName];
      [SRGuideDetailSectionHeaderCollectionViewCell sizeThatFits:sectionName text:width, 1.79769313e308];
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

          [SRGuideDetailPhraseViewCell sizeThatFits:*(*(&v19 + 1) + 8 * i) text:width, 1.79769313e308];
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

- (id)_titleForSection:(unint64_t)section
{
  snippet = [(SRGuideDomainViewController *)self snippet];
  guideSections = [snippet guideSections];
  v6 = [guideSections objectAtIndexedSubscript:section];

  sectionName = [v6 sectionName];

  return sectionName;
}

- (BOOL)_showsCategoriesForSection:(unint64_t)section
{
  v3 = [(SRGuideDomainViewController *)self _titleForSection:section];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)_phraseForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  v6 = &item[--[SRGuideDomainViewController _showsCategoriesForSection:](self, "_showsCategoriesForSection:", [pathCopy section])];
  section = [pathCopy section];

  v8 = [(SRGuideDomainViewController *)self _utterancesForSection:section];
  v9 = [v8 objectAtIndexedSubscript:v6];

  return v9;
}

- (void)setSnippet:(id)snippet
{
  v5.receiver = self;
  v5.super_class = SRGuideDomainViewController;
  [(SRGuideDomainViewController *)&v5 setSnippet:snippet];
  if ([(SRGuideDomainViewController *)self isViewLoaded])
  {
    collectionView = [(SRGuideDomainViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[SRGuideViewHeader reuseIdentifier];
  v9 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v8 forIndexPath:pathCopy];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v6 = [(SRGuideDomainViewController *)self _utterancesForSection:section];
  v7 = [v6 count];

  return v7 + [(SRGuideDomainViewController *)self _showsCategoriesForSection:section];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SRGuideDomainViewController *)self _cellTypeForIndexPath:pathCopy];
  if (v8 == 1)
  {
    v15 = +[SRGuideDetailPhraseViewCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

    v13 = [(SRGuideDomainViewController *)self _phraseForIndexPath:pathCopy];
    [v10 setText:v13];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = +[SRGuideDetailSectionHeaderCollectionViewCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    snippet = [(SRGuideDomainViewController *)self snippet];
    guideSections = [snippet guideSections];
    v13 = [guideSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    sectionName = [v13 sectionName];
    [v10 setText:sectionName];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(SRGuideDomainViewController *)self _cellTypeForIndexPath:pathCopy];
  delegate = [(SRGuideDomainViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v10 = v9;

  if (v7 == 1)
  {
    v13 = [(SRGuideDomainViewController *)self _phraseForIndexPath:pathCopy];
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

    snippet = [(SRGuideDomainViewController *)self snippet];
    guideSections = [snippet guideSections];
    v13 = [guideSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    sectionName = [v13 sectionName];
    [SRGuideDetailSectionHeaderCollectionViewCell sizeThatFits:sectionName text:v10, 1.79769313e308];
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