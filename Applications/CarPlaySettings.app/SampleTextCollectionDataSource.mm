@interface SampleTextCollectionDataSource
- (SampleTextCollectionDataSource)initWithFontTextStyles:(id)styles;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
@end

@implementation SampleTextCollectionDataSource

- (SampleTextCollectionDataSource)initWithFontTextStyles:(id)styles
{
  stylesCopy = styles;
  v9.receiver = self;
  v9.super_class = SampleTextCollectionDataSource;
  v6 = [(SampleTextCollectionDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontTextStyles, styles);
  }

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[SampleTextCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  fontTextStyles = [(SampleTextCollectionDataSource *)self fontTextStyles];
  v11 = [pathCopy row];

  v12 = [fontTextStyles objectAtIndexedSubscript:v11];
  [v9 setFontTextStyle:v12];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SampleTextCollectionDataSource *)self fontTextStyles:view];
  v5 = [v4 count];

  return v5;
}

@end