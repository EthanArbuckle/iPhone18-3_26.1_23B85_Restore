@interface CLPlacemark(INIntentsAdditions)
+ (id)placemarkWithLocation:()INIntentsAdditions name:postalAddress:;
@end

@implementation CLPlacemark(INIntentsAdditions)

+ (id)placemarkWithLocation:()INIntentsAdditions name:postalAddress:
{
  v8 = MEMORY[0x1E69A1E70];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  [v11 coordinate];
  v14 = v13;
  [v11 coordinate];
  v16 = v15;

  v17 = [v12 initWithLatitude:v14 longitude:v16];
  v18 = objc_alloc(MEMORY[0x1E69A21A0]);
  dictionaryRepresentation = [v9 dictionaryRepresentation];

  LODWORD(v23) = 0;
  v20 = [v18 initWithWithLocation:v17 addressDictionary:dictionaryRepresentation name:v10 businessURL:0 phoneNumber:0 sessionID:0 muid:0.0 attributionID:0 sampleSizeForUserRatingScore:0 normalizedUserRatingScore:v23];

  v21 = [self placemarkWithGEOMapItem:v20];

  return v21;
}

@end