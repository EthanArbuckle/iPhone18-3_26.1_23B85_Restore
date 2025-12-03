@interface BKAssetMetadataCache
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d;
- (void)saveTitle:(id)title author:(id)author genre:(id)genre language:(id)language pageProgressionDirection:(id)direction forAssetID:(id)d;
@end

@implementation BKAssetMetadataCache

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  v5 = [v4 coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:dCopy];

  return v5;
}

- (void)saveTitle:(id)title author:(id)author genre:(id)genre language:(id)language pageProgressionDirection:(id)direction forAssetID:(id)d
{
  dCopy = d;
  directionCopy = direction;
  languageCopy = language;
  genreCopy = genre;
  authorCopy = author;
  titleCopy = title;
  v19 = objc_opt_new();
  [v19 saveTitle:titleCopy author:authorCopy genre:genreCopy language:languageCopy pageProgressionDirection:directionCopy forAssetID:dCopy];
}

@end