@interface MKSearchFoundationBusinessReviewRichText
- (void)resolveReviewStringWithProviderNameByMapItem:(id)item lines:(id)lines temporaryReviewString:(id)string;
- (void)resolveReviewStringWithProviderNameNotFoundByMapItem:(id)item lines:(id)lines temporaryReviewString:(id)string;
@end

@implementation MKSearchFoundationBusinessReviewRichText

- (void)resolveReviewStringWithProviderNameNotFoundByMapItem:(id)item lines:(id)lines temporaryReviewString:(id)string
{
  linesCopy = lines;
  if (string)
  {
    [linesCopy removeObject:string];
  }

  [(MKSearchFoundationBusinessReviewRichText *)self setReviewResolved:1];
  v7 = [MKSearchFoundationResult styledStringFromStringArray:linesCopy];
  [(MKSearchFoundationRichText *)self setText:v7];
}

- (void)resolveReviewStringWithProviderNameByMapItem:(id)item lines:(id)lines temporaryReviewString:(id)string
{
  linesCopy = lines;
  stringCopy = string;
  v9 = MEMORY[0x1E696AEC0];
  itemCopy = item;
  v11 = _MKLocalizedStringFromThisBundle(@"Place_Reviews_On_Provider");
  _sampleSizeForUserRatingScore = [itemCopy _sampleSizeForUserRatingScore];
  _reviewsDisplayName = [itemCopy _reviewsDisplayName];

  v14 = [v9 localizedStringWithFormat:v11, _sampleSizeForUserRatingScore, _reviewsDisplayName];

  if ([linesCopy count])
  {
    [linesCopy insertObject:v14 atIndex:0];
    if (!stringCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [linesCopy addObject:v14];
  if (stringCopy)
  {
LABEL_3:
    [linesCopy removeObject:stringCopy];
  }

LABEL_4:
  [(MKSearchFoundationBusinessReviewRichText *)self setReviewResolved:1];
  v15 = [MKSearchFoundationResult styledStringFromStringArray:linesCopy];
  [(MKSearchFoundationRichText *)self setText:v15];
}

@end