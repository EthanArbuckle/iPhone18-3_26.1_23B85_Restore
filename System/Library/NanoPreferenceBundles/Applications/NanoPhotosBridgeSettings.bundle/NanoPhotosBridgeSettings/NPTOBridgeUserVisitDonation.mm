@interface NPTOBridgeUserVisitDonation
+ (void)donateUserVisitForPhotosLimitSection;
+ (void)donateUserVisitForPhotosSection;
+ (void)donateUserVisitForSelectedPhotoAlbumSection;
@end

@implementation NPTOBridgeUserVisitDonation

+ (void)donateUserVisitForPhotosSection
{
  v3 = objc_opt_self();
  v5 = sub_2E54(v3, @"PANE_TITLE");
  v4 = sub_2F3C();
  sub_2D5C(a1, v5, &__NSArray0__struct, v4);
}

+ (void)donateUserVisitForSelectedPhotoAlbumSection
{
  v3 = objc_opt_self();
  v4 = sub_2E54(v3, @"ALBUM_SPECIFIER_TITLE");
  v5 = objc_opt_self();
  v6 = sub_2E54(v5, @"PANE_TITLE");
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  objc_opt_self();
  v8 = sub_2F3C();
  v9 = [v8 stringByAppendingString:@"&path=SELECTED_PHOTO_ALBUM_ID"];

  sub_2D5C(a1, v4, v7, v9);
}

+ (void)donateUserVisitForPhotosLimitSection
{
  v3 = objc_opt_self();
  v4 = sub_2E54(v3, @"AMOUNT_SPECIFIER_TITLE");
  v5 = objc_opt_self();
  v6 = sub_2E54(v5, @"PANE_TITLE");
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  objc_opt_self();
  v8 = sub_2F3C();
  v9 = [v8 stringByAppendingString:@"&path=PHOTOS_LIMIT_ID"];

  sub_2D5C(a1, v4, v7, v9);
}

@end