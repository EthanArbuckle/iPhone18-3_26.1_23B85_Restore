@interface _MKMapItemUserRatingSnippetTip
- (NSDate)_date;
- (NSURL)_reviewerImageURL;
- (_MKMapItemUserRatingSnippetTip)initWithMapItem:(id)item review:(id)review;
@end

@implementation _MKMapItemUserRatingSnippetTip

- (NSDate)_date
{
  tip = self->_tip;
  if (tip)
  {
    [tip tipTime];
    if (v4 <= 0.0)
    {
      tip = 0;
    }

    else
    {
      v5 = MEMORY[0x1E695DF00];
      [(GEOMapItemTip *)self->_tip tipTime];
      tip = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    }
  }

  return tip;
}

- (NSURL)_reviewerImageURL
{
  v2 = MEMORY[0x1E695DFF8];
  bestImageURL = [(GEOMapItemTip *)self->_tip bestImageURL];
  v4 = [v2 URLWithString:bestImageURL];

  return v4;
}

- (_MKMapItemUserRatingSnippetTip)initWithMapItem:(id)item review:(id)review
{
  itemCopy = item;
  reviewCopy = review;
  v11.receiver = self;
  v11.super_class = _MKMapItemUserRatingSnippetTip;
  v9 = [(_MKMapItemUserRatingSnippetTip *)&v11 self];

  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v9->_tip, review);
  }

  return v9;
}

@end