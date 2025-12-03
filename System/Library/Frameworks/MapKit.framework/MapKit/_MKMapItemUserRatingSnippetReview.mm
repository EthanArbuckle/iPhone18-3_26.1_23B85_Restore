@interface _MKMapItemUserRatingSnippetReview
- (NSURL)_reviewerImageURL;
- (_MKMapItemUserRatingSnippetReview)initWithMapItem:(id)item review:(id)review;
- (void)showWithCompletionHandler:(id)handler;
@end

@implementation _MKMapItemUserRatingSnippetReview

- (void)showWithCompletionHandler:(id)handler
{
  _reviewsAttribution = [(MKMapItem *)self->_mapItem _reviewsAttribution];
  v4 = [_reviewsAttribution urlsForReview:self];
  if ([v4 count])
  {
    [MKAppLaunchController launchAttributionURLs:v4 withAttribution:_reviewsAttribution completionHandler:0];
  }
}

- (NSURL)_reviewerImageURL
{
  _reviewerImageURLString = [(GEOMapItemReview *)self->_review _reviewerImageURLString];
  if ([_reviewerImageURLString length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:_reviewerImageURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_MKMapItemUserRatingSnippetReview)initWithMapItem:(id)item review:(id)review
{
  itemCopy = item;
  reviewCopy = review;
  v13.receiver = self;
  v13.super_class = _MKMapItemUserRatingSnippetReview;
  v9 = [(_MKMapItemUserRatingSnippetReview *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v10->_review, review);
    v11 = v10;
  }

  return v10;
}

@end