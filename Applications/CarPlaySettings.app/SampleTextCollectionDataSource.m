@interface SampleTextCollectionDataSource
- (SampleTextCollectionDataSource)initWithFontTextStyles:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation SampleTextCollectionDataSource

- (SampleTextCollectionDataSource)initWithFontTextStyles:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SampleTextCollectionDataSource;
  v6 = [(SampleTextCollectionDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontTextStyles, a3);
  }

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SampleTextCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(SampleTextCollectionDataSource *)self fontTextStyles];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];
  [v9 setFontTextStyle:v12];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SampleTextCollectionDataSource *)self fontTextStyles:a3];
  v5 = [v4 count];

  return v5;
}

@end