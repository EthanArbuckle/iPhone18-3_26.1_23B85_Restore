@interface GEORPUserSearchInput
- (id)initWithRAPUserSearchInput:(id)input;
@end

@implementation GEORPUserSearchInput

- (id)initWithRAPUserSearchInput:(id)input
{
  inputCopy = input;
  v13.receiver = self;
  v13.super_class = GEORPUserSearchInput;
  v5 = [(GEORPUserSearchInput *)&v13 init];
  if (v5)
  {
    searchString = [inputCopy searchString];
    [(GEORPUserSearchInput *)v5 setSearchString:searchString];

    singleLineAddressString = [inputCopy singleLineAddressString];
    [(GEORPUserSearchInput *)v5 setSingleLineAddressString:singleLineAddressString];

    -[GEORPUserSearchInput setOrigin:](v5, "setOrigin:", [inputCopy origin]);
    coordinate = [inputCopy coordinate];
    [(GEORPUserSearchInput *)v5 setCoordinate:coordinate];

    placeMapItemStorage = [inputCopy placeMapItemStorage];
    placeData = [placeMapItemStorage placeData];
    [(GEORPUserSearchInput *)v5 setPlace:placeData];

    completionStorage = [inputCopy completionStorage];
    [completionStorage applyToUserSearchInput:v5];
  }

  return v5;
}

@end