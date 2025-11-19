@interface HPRFMindSettingsNavigationDonation
+ (uint64_t)donateUserVisitForBreathRateSettings;
+ (uint64_t)donateUserVisitForHapticSettings;
+ (uint64_t)donateUserVisitForMindfulnessSettings;
- (HPRFMindSettingsNavigationDonation)init;
@end

@implementation HPRFMindSettingsNavigationDonation

- (HPRFMindSettingsNavigationDonation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MindSettingsNavigationDonation();
  return [(HPRFMindSettingsNavigationDonation *)&v3 init];
}

+ (uint64_t)donateUserVisitForMindfulnessSettings
{
  v0 = sub_EC88();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_EB98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_EF28();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_EBA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_EF18();
  *v6 = type metadata accessor for MindSettingsNavigationDonation();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v2);
  sub_EC78();
  sub_EBB8();
  v14 = sub_C014();
  sub_C0F0(v13, &_swiftEmptyArrayStorage, v14, v15);

  return (*(v10 + 8))(v13, v9);
}

+ (uint64_t)donateUserVisitForBreathRateSettings
{
  v0 = sub_EC88();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_EB98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_EF28();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v33 = sub_EBA8();
  v28[0] = *(v33 - 8);
  v10 = v28[0];
  v11 = *(v28[0] + 64);
  __chkstk_darwin(v33);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF18();
  v30 = type metadata accessor for MindSettingsNavigationDonation();
  *v7 = v30;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v4 + 104);
  v28[1] = v4 + 104;
  v29 = v15;
  v15(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_EC78();
  v16 = v28[0];
  v32 = v13;
  sub_EBB8();
  sub_B124(&qword_1DBB0, &qword_11140);
  v17 = *(v10 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_11100;
  sub_EF18();
  v20 = v29;
  *v7 = v30;
  v20(v7, v14, v3);
  sub_EC78();
  sub_EBB8();
  v21 = sub_C014();
  v23 = v21;
  if (v22)
  {
    v36 = 0xD00000000000001ALL;
    v37 = 0x8000000000011B10;
    v34 = v21;
    v35 = v22;
    v34 = sub_EF88();
    v35 = v24;
    sub_EF58();
    v23 = v34;
    v25 = v35;
  }

  else
  {
    v25 = 0;
  }

  v26 = v32;
  sub_C0F0(v32, v19, v23, v25);

  return (*(v16 + 8))(v26, v33);
}

+ (uint64_t)donateUserVisitForHapticSettings
{
  v0 = sub_EC88();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_EB98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_EF28();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v33 = sub_EBA8();
  v28[0] = *(v33 - 8);
  v10 = v28[0];
  v11 = *(v28[0] + 64);
  __chkstk_darwin(v33);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF18();
  v30 = type metadata accessor for MindSettingsNavigationDonation();
  *v7 = v30;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v4 + 104);
  v28[1] = v4 + 104;
  v29 = v15;
  v15(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v3);
  sub_EC78();
  v16 = v28[0];
  v32 = v13;
  sub_EBB8();
  sub_B124(&qword_1DBB0, &qword_11140);
  v17 = *(v10 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_11100;
  sub_EF18();
  v20 = v29;
  *v7 = v30;
  v20(v7, v14, v3);
  sub_EC78();
  sub_EBB8();
  v21 = sub_C014();
  v23 = v21;
  if (v22)
  {
    v36 = 0xD000000000000015;
    v37 = 0x8000000000011AB0;
    v34 = v21;
    v35 = v22;
    v34 = sub_EF88();
    v35 = v24;
    sub_EF58();
    v23 = v34;
    v25 = v35;
  }

  else
  {
    v25 = 0;
  }

  v26 = v32;
  sub_C0F0(v32, v19, v23, v25);

  return (*(v16 + 8))(v26, v33);
}

@end