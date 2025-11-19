@interface BKAudiobookSupplementalContent
- (BKAudiobookSupplementalContent)initWithTitle:(id)a3 assetIdentifier:(id)a4;
@end

@implementation BKAudiobookSupplementalContent

- (BKAudiobookSupplementalContent)initWithTitle:(id)a3 assetIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BKAudiobookSupplementalContent;
  v8 = [(BKAudiobookSupplementalContent *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    assetIdentifier = v8->_assetIdentifier;
    v8->_assetIdentifier = v11;
  }

  return v8;
}

@end