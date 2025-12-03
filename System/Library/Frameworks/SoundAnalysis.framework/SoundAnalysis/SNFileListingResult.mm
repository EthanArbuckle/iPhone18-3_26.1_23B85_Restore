@interface SNFileListingResult
- (NSArray)fileItems;
- (SNFileListingResult)initWithFileItems:(id)items;
@end

@implementation SNFileListingResult

- (NSArray)fileItems
{
  sub_1C9A3B2AC();
  sub_1C99CC1F4();
  v2 = sub_1C9A92768();

  return v2;
}

- (SNFileListingResult)initWithFileItems:(id)items
{
  sub_1C99CC1F4();
  v3 = sub_1C9A92798();
  return sub_1C9A3B2BC(v3);
}

@end