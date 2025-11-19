@interface BKAVAudiobookPreviewURLIdentifier
+ (id)audiobookIdentifierWithPreviewURL:(id)a3 storeID:(id)a4 title:(id)a5 author:(id)a6 duration:(double)a7;
- (BKAVAudiobookPreviewURLIdentifier)initWithPreviewURL:(id)a3 storeID:(id)a4 title:(id)a5 author:(id)a6 duration:(double)a7;
- (BOOL)isEqualToIdentifier:(id)a3;
- (id)copy;
@end

@implementation BKAVAudiobookPreviewURLIdentifier

+ (id)audiobookIdentifierWithPreviewURL:(id)a3 storeID:(id)a4 title:(id)a5 author:(id)a6 duration:(double)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithPreviewURL:v15 storeID:v14 title:v13 author:v12 duration:a7];

  return v16;
}

- (BKAVAudiobookPreviewURLIdentifier)initWithPreviewURL:(id)a3 storeID:(id)a4 title:(id)a5 author:(id)a6 duration:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BKAVAudiobookPreviewURLIdentifier;
  v17 = [(BKAVAudiobookPreviewURLIdentifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_previewURL, a3);
    objc_storeStrong(&v18->_storeID, a4);
    objc_storeStrong(&v18->_title, a5);
    objc_storeStrong(&v18->_author, a6);
    v18->_duration = a7;
  }

  return v18;
}

- (BOOL)isEqualToIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(BKAVAudiobookPreviewURLIdentifier *)self previewURL];
    v6 = [v4 previewURL];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  v4 = [(BKAVAudiobookPreviewURLIdentifier *)self previewURL];
  [v3 setPreviewURL:v4];

  return v3;
}

@end