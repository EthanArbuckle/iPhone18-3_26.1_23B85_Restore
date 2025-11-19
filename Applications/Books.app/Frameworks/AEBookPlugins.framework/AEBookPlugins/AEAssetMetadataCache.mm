@interface AEAssetMetadataCache
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3;
- (void)saveTitle:(id)a3 author:(id)a4 genre:(id)a5 language:(id)a6 pageProgressionDirection:(id)a7 forAssetID:(id)a8;
@end

@implementation AEAssetMetadataCache

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[AEEpubInfoSource sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_87F88;
  v8[3] = &unk_1E4C20;
  v6 = v4;
  v9 = v6;
  [v5 readableBookInfoForDatabaseKey_sync:v3 block:v8];

  return v6;
}

- (void)saveTitle:(id)a3 author:(id)a4 genre:(id)a5 language:(id)a6 pageProgressionDirection:(id)a7 forAssetID:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[AEEpubInfoSource sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_881BC;
  v25[3] = &unk_1E4C48;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v17;
  v30 = v16;
  v20 = v16;
  v21 = v17;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  [v19 writableBookInfoForDatabaseKey_sync:v18 block:v25];
}

@end