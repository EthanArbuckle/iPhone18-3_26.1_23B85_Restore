@interface AEAssetMetadataCache
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d;
- (void)saveTitle:(id)title author:(id)author genre:(id)genre language:(id)language pageProgressionDirection:(id)direction forAssetID:(id)d;
@end

@implementation AEAssetMetadataCache

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d
{
  dCopy = d;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[AEEpubInfoSource sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_87F88;
  v8[3] = &unk_1E4C20;
  v6 = v4;
  v9 = v6;
  [v5 readableBookInfoForDatabaseKey_sync:dCopy block:v8];

  return v6;
}

- (void)saveTitle:(id)title author:(id)author genre:(id)genre language:(id)language pageProgressionDirection:(id)direction forAssetID:(id)d
{
  titleCopy = title;
  authorCopy = author;
  genreCopy = genre;
  languageCopy = language;
  directionCopy = direction;
  dCopy = d;
  v19 = +[AEEpubInfoSource sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_881BC;
  v25[3] = &unk_1E4C48;
  v26 = titleCopy;
  v27 = authorCopy;
  v28 = genreCopy;
  v29 = directionCopy;
  v30 = languageCopy;
  v20 = languageCopy;
  v21 = directionCopy;
  v22 = genreCopy;
  v23 = authorCopy;
  v24 = titleCopy;
  [v19 writableBookInfoForDatabaseKey_sync:dCopy block:v25];
}

@end