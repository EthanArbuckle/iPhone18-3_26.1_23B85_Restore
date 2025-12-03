@interface SAStructuredDictationPlaceResult
- (id)ad_transcriptionResultWithAddressBookManager:(id)manager;
@end

@implementation SAStructuredDictationPlaceResult

- (id)ad_transcriptionResultWithAddressBookManager:(id)manager
{
  selfCopy = self;
  v4 = objc_alloc_init(STSiriLocation);
  resultData = [(SAStructuredDictationPlaceResult *)selfCopy resultData];
  [v4 setGeoResult:resultData];

  placeResultType = [(SAStructuredDictationPlaceResult *)selfCopy placeResultType];
  v7 = [placeResultType isEqualToString:SAStructuredDictationPlaceResultPlaceResultTypeFORWARD_GEOCODEValue];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    placeResultType2 = [(SAStructuredDictationPlaceResult *)selfCopy placeResultType];
    v10 = [placeResultType2 isEqualToString:SAStructuredDictationPlaceResultPlaceResultTypePLACE_SEARCHValue];

    if (!v10)
    {
      goto LABEL_6;
    }

    v8 = 2;
  }

  [v4 setResultType:v8];
LABEL_6:

  return v4;
}

@end