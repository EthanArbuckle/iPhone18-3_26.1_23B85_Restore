@interface BKPersonalizationEventDonor
- (BKPersonalizationEventDonor)init;
- (BKPersonalizationEventDonor)initWithType:(id)type;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
- (void)setupWithLibraryManager:(id)manager;
@end

@implementation BKPersonalizationEventDonor

- (BKPersonalizationEventDonor)init
{
  sub_10079E784();
  v2 = sub_10079E774();
  v3 = objc_allocWithZone(type metadata accessor for PersonalizationEventDonor());
  v4 = sub_100018D48(0xD000000000000021, 0x80000001008D7330, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (BKPersonalizationEventDonor)initWithType:(id)type
{
  v3 = sub_1007A2254();
  v5 = v4;
  sub_10079E784();
  v6 = sub_10079E774();
  v7 = objc_allocWithZone(type metadata accessor for PersonalizationEventDonor());
  v8 = sub_100018D48(v3, v5, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)setupWithLibraryManager:(id)manager
{
  v8[3] = sub_10000A7C4(0, &qword_100AD9BD0);
  v8[4] = &off_100A300A0;
  v8[0] = manager;
  v5 = OBJC_IVAR___BKPersonalizationEventDonor_libraryAssetProvider;
  swift_beginAccess();
  managerCopy = manager;
  selfCopy = self;
  sub_100492D88(v8, &self->BMBaseDonor_opaque[v5]);
  swift_endAccess();
}

- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block
{
  v8 = _Block_copy(block);
  if (context)
  {
    v9 = sub_1007A2254();
    context = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  configurationCopy = configuration;
  selfCopy = self;
  sub_100491F5C(configurationCopy, v9, context, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end