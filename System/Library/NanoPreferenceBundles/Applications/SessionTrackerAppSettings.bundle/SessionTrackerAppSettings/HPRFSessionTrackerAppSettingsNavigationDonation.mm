@interface HPRFSessionTrackerAppSettingsNavigationDonation
+ (uint64_t)donateUserVisitForCyclingPowerSettings;
+ (uint64_t)donateUserVisitForMirroringSettings;
+ (uint64_t)donateUserVisitForSessionTrackerAppSettings;
+ (uint64_t)donateUserVisitForUnitsOfMeasureSettings;
+ (uint64_t)donateUserVisitForWorkoutPlaylistSettings;
- (HPRFSessionTrackerAppSettingsNavigationDonation)init;
@end

@implementation HPRFSessionTrackerAppSettingsNavigationDonation

- (HPRFSessionTrackerAppSettingsNavigationDonation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  return [(HPRFSessionTrackerAppSettingsNavigationDonation *)&v3 init];
}

+ (uint64_t)donateUserVisitForSessionTrackerAppSettings
{
  v0 = sub_22284();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_221C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22854();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_221D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22844();
  *v6 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_22274();
  sub_221E4();
  v14 = sub_1A0E4();
  sub_19CFC(v13, &_swiftEmptyArrayStorage, v14, v15);

  return (*(v10 + 8))(v13, v9);
}

+ (uint64_t)donateUserVisitForCyclingPowerSettings
{
  v0 = sub_22284();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v26 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_221C4();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22854();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_221D4();
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844();
  v24[1] = &qword_30E10;
  v13 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  *v6 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v3 + 104);
  v24[2] = v3 + 104;
  v16 = v25;
  v15(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v25);
  sub_22274();
  v17 = v24[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v18 = *(v10 + 72);
  v19 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30E20;
  sub_22844();
  *v6 = v13;
  v15(v6, v14, v16);
  sub_22274();
  sub_221E4();
  v21 = sub_1A458();
  sub_19CFC(v17, v20, v21, v22);

  return (*(v28 + 8))(v17, v27);
}

+ (uint64_t)donateUserVisitForWorkoutPlaylistSettings
{
  v0 = sub_22284();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_221C4();
  v25 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22854();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v28 = sub_221D4();
  v26 = *(v28 - 8);
  v10 = v26;
  v11 = *(v26 + 64);
  __chkstk_darwin(v28);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844();
  v24[1] = &qword_30E10;
  v13 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  *v7 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v4 + 104);
  v24[2] = v4 + 104;
  v15(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_22274();
  v16 = v24[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v17 = *(v10 + 72);
  v18 = v26;
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30E20;
  sub_22844();
  *v7 = v13;
  v15(v7, v14, v25);
  sub_22274();
  sub_221E4();
  v21 = sub_1ADDC();
  sub_19CFC(v16, v20, v21, v22);

  return (*(v18 + 8))(v16, v28);
}

+ (uint64_t)donateUserVisitForUnitsOfMeasureSettings
{
  v0 = sub_22284();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_221C4();
  v25 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22854();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v28 = sub_221D4();
  v26 = *(v28 - 8);
  v10 = v26;
  v11 = *(v26 + 64);
  __chkstk_darwin(v28);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844();
  v24[1] = &qword_30E10;
  v13 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  *v7 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v4 + 104);
  v24[2] = v4 + 104;
  v15(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_22274();
  v16 = v24[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v17 = *(v10 + 72);
  v18 = v26;
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30E20;
  sub_22844();
  *v7 = v13;
  v15(v7, v14, v25);
  sub_22274();
  sub_221E4();
  v21 = sub_1B3AC();
  sub_19CFC(v16, v20, v21, v22);

  return (*(v18 + 8))(v16, v28);
}

+ (uint64_t)donateUserVisitForMirroringSettings
{
  v0 = sub_22284();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_221C4();
  v25 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22854();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v28 = sub_221D4();
  v26 = *(v28 - 8);
  v10 = v26;
  v11 = *(v26 + 64);
  __chkstk_darwin(v28);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844();
  v24[1] = &qword_30E10;
  v13 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation();
  *v7 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v4 + 104);
  v24[2] = v4 + 104;
  v15(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_22274();
  v16 = v24[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v17 = *(v10 + 72);
  v18 = v26;
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30E20;
  sub_22844();
  *v7 = v13;
  v15(v7, v14, v25);
  sub_22274();
  sub_221E4();
  v21 = sub_1B864();
  sub_19CFC(v16, v20, v21, v22);

  return (*(v18 + 8))(v16, v28);
}

@end