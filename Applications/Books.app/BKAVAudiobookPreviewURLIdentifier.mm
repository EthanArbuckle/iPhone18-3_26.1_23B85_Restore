@interface BKAVAudiobookPreviewURLIdentifier
+ (id)audiobookIdentifierWithPreviewURL:(id)l storeID:(id)d title:(id)title author:(id)author duration:(double)duration;
- (BKAVAudiobookPreviewURLIdentifier)initWithPreviewURL:(id)l storeID:(id)d title:(id)title author:(id)author duration:(double)duration;
- (BOOL)isEqualToIdentifier:(id)identifier;
- (id)copy;
@end

@implementation BKAVAudiobookPreviewURLIdentifier

+ (id)audiobookIdentifierWithPreviewURL:(id)l storeID:(id)d title:(id)title author:(id)author duration:(double)duration
{
  authorCopy = author;
  titleCopy = title;
  dCopy = d;
  lCopy = l;
  v16 = [[self alloc] initWithPreviewURL:lCopy storeID:dCopy title:titleCopy author:authorCopy duration:duration];

  return v16;
}

- (BKAVAudiobookPreviewURLIdentifier)initWithPreviewURL:(id)l storeID:(id)d title:(id)title author:(id)author duration:(double)duration
{
  lCopy = l;
  dCopy = d;
  titleCopy = title;
  authorCopy = author;
  v20.receiver = self;
  v20.super_class = BKAVAudiobookPreviewURLIdentifier;
  v17 = [(BKAVAudiobookPreviewURLIdentifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_previewURL, l);
    objc_storeStrong(&v18->_storeID, d);
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v18->_author, author);
    v18->_duration = duration;
  }

  return v18;
}

- (BOOL)isEqualToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previewURL = [(BKAVAudiobookPreviewURLIdentifier *)self previewURL];
    previewURL2 = [identifierCopy previewURL];
    v7 = [previewURL isEqual:previewURL2];
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
  previewURL = [(BKAVAudiobookPreviewURLIdentifier *)self previewURL];
  [v3 setPreviewURL:previewURL];

  return v3;
}

@end