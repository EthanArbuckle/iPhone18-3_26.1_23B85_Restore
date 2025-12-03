@interface BKYearInReviewEligibilityService
- (BSUIDynamicValue)topPicksIsEligible;
- (JSValue)topPicksIsEligiblePromise;
- (NSNumber)activeYear;
- (id)isActiveEntryPoint:(id)point;
- (id)isEligibleForEntryConditionPromise:(id)promise;
- (void)dealloc;
- (void)onConfigurationChange:(id)change;
@end

@implementation BKYearInReviewEligibilityService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  v7 = selfCopy;
  v8 = sub_1007A2E44();
  [defaultCenter removeObserver:v7 name:v8 object:0];

  v9.receiver = v7;
  v9.super_class = ObjectType;
  [(BKYearInReviewEligibilityService *)&v9 dealloc];
}

- (void)onConfigurationChange:(id)change
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  selfCopy = self;
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
  selfCopy = self;
  sub_1005E66D4();
  v4 = v3;

  return v4;
}

- (NSNumber)activeYear
{
  if (*(&self->super.super.isa + OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider))
  {
    selfCopy = self;

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

- (id)isActiveEntryPoint:(id)point
{
  pointCopy = point;
  selfCopy = self;
  sub_1005E6DE4(pointCopy);
  v7 = v6;

  return v7;
}

- (id)isEligibleForEntryConditionPromise:(id)promise
{
  promiseCopy = promise;
  selfCopy = self;
  sub_1005E6FFC(promiseCopy);
  v7 = v6;

  return v7;
}

@end