@interface BKAssetMetadataCache
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3;
- (void)saveTitle:(id)a3 author:(id)a4 genre:(id)a5 language:(id)a6 pageProgressionDirection:(id)a7 forAssetID:(id)a8;
@end

@implementation BKAssetMetadataCache

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:v3];

  return v5;
}

- (void)saveTitle:(id)a3 author:(id)a4 genre:(id)a5 language:(id)a6 pageProgressionDirection:(id)a7 forAssetID:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  [v19 saveTitle:v18 author:v17 genre:v16 language:v15 pageProgressionDirection:v14 forAssetID:v13];
}

@end