@interface ReadingActivityDonor
- (_TtC5Books20ReadingActivityDonor)init;
- (_TtC5Books20ReadingActivityDonor)initWithType:(id)type;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
@end

@implementation ReadingActivityDonor

- (_TtC5Books20ReadingActivityDonor)initWithType:(id)type
{
  self->BMBaseDonor_opaque[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved] = 0;
  v4 = OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApprovedConfig;
  v5 = objc_allocWithZone(sub_100799884());
  *&self->BMBaseDonor_opaque[v4] = sub_100799874();
  result = sub_1007A38A4();
  __break(1u);
  return result;
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
  sub_10075FFA0(configurationCopy, v9, context, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC5Books20ReadingActivityDonor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end