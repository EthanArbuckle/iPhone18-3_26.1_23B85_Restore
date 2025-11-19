@interface BKYearInReviewEligibilityService
- (BSUIDynamicValue)topPicksIsEligible;
- (JSValue)topPicksIsEligiblePromise;
- (NSNumber)activeYear;
- (id)isActiveEntryPoint:(id)a3;
- (id)isEligibleForEntryConditionPromise:(id)a3;
- (void)dealloc;
- (void)onConfigurationChange:(id)a3;
@end

@implementation BKYearInReviewEligibilityService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  v7 = v5;
  v8 = sub_1007A2E44();
  [v6 removeObserver:v7 name:v8 object:0];

  v9.receiver = v7;
  v9.super_class = ObjectType;
  [(BKYearInReviewEligibilityService *)&v9 dealloc];
}

- (void)onConfigurationChange:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = self;
  sub_1005E5740();

  (*(v5 + 8))(v7, v4);
}

- (BSUIDynamicValue)topPicksIsEligible
{
  v3 = OBJC_IVAR___BKYearInReviewEligibilityService_topPicksObserver;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (JSValue)topPicksIsEligiblePromise
{
  v2 = self;
  sub_1005E66D4();
  v4 = v3;

  return v4;
}

- (NSNumber)activeYear
{
  if (*(&self->super.super.isa + OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider))
  {
    v2 = self;

    sub_1004B7BF8();
    v4 = v3;

    if (v4)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1007A2884().super.super.isa;
    }

    return isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)isActiveEntryPoint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005E6DE4(v4);
  v7 = v6;

  return v7;
}

- (id)isEligibleForEntryConditionPromise:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005E6FFC(v4);
  v7 = v6;

  return v7;
}

@end