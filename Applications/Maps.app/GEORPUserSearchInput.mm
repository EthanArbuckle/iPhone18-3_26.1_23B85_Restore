@interface GEORPUserSearchInput
- (id)initWithRAPUserSearchInput:(id)a3;
@end

@implementation GEORPUserSearchInput

- (id)initWithRAPUserSearchInput:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GEORPUserSearchInput;
  v5 = [(GEORPUserSearchInput *)&v13 init];
  if (v5)
  {
    v6 = [v4 searchString];
    [(GEORPUserSearchInput *)v5 setSearchString:v6];

    v7 = [v4 singleLineAddressString];
    [(GEORPUserSearchInput *)v5 setSingleLineAddressString:v7];

    -[GEORPUserSearchInput setOrigin:](v5, "setOrigin:", [v4 origin]);
    v8 = [v4 coordinate];
    [(GEORPUserSearchInput *)v5 setCoordinate:v8];

    v9 = [v4 placeMapItemStorage];
    v10 = [v9 placeData];
    [(GEORPUserSearchInput *)v5 setPlace:v10];

    v11 = [v4 completionStorage];
    [v11 applyToUserSearchInput:v5];
  }

  return v5;
}

@end