@interface ReadingActivityDonor
- (_TtC5Books20ReadingActivityDonor)init;
- (_TtC5Books20ReadingActivityDonor)initWithType:(id)a3;
- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5;
@end

@implementation ReadingActivityDonor

- (_TtC5Books20ReadingActivityDonor)initWithType:(id)a3
{
  self->BMBaseDonor_opaque[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved] = 0;
  v4 = OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApprovedConfig;
  v5 = objc_allocWithZone(sub_100799884());
  *&self->BMBaseDonor_opaque[v4] = sub_100799874();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1007A2254();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a3;
  v12 = self;
  sub_10075FFA0(v11, v9, a4, v12, v8);
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