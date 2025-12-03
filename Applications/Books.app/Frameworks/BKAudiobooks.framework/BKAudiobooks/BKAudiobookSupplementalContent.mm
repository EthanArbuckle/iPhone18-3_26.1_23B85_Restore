@interface BKAudiobookSupplementalContent
- (BKAudiobookSupplementalContent)initWithTitle:(id)title assetIdentifier:(id)identifier;
@end

@implementation BKAudiobookSupplementalContent

- (BKAudiobookSupplementalContent)initWithTitle:(id)title assetIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = BKAudiobookSupplementalContent;
  v8 = [(BKAudiobookSupplementalContent *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [identifierCopy copy];
    assetIdentifier = v8->_assetIdentifier;
    v8->_assetIdentifier = v11;
  }

  return v8;
}

@end