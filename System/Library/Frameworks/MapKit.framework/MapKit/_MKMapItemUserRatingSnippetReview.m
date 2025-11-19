@interface _MKMapItemUserRatingSnippetReview
- (NSURL)_reviewerImageURL;
- (_MKMapItemUserRatingSnippetReview)initWithMapItem:(id)a3 review:(id)a4;
- (void)showWithCompletionHandler:(id)a3;
@end

@implementation _MKMapItemUserRatingSnippetReview

- (void)showWithCompletionHandler:(id)a3
{
  v5 = [(MKMapItem *)self->_mapItem _reviewsAttribution];
  v4 = [v5 urlsForReview:self];
  if ([v4 count])
  {
    [MKAppLaunchController launchAttributionURLs:v4 withAttribution:v5 completionHandler:0];
  }
}

- (NSURL)_reviewerImageURL
{
  v2 = [(GEOMapItemReview *)self->_review _reviewerImageURLString];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_MKMapItemUserRatingSnippetReview)initWithMapItem:(id)a3 review:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MKMapItemUserRatingSnippetReview;
  v9 = [(_MKMapItemUserRatingSnippetReview *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    objc_storeStrong(&v10->_review, a4);
    v11 = v10;
  }

  return v10;
}

@end