@interface BKTVAppService
+ (BKTVAppService)shared;
- (BKTVAppService)init;
- (id)fetchTVApp:(id)a3;
@end

@implementation BKTVAppService

+ (BKTVAppService)shared
{
  if (qword_3BB720 != -1)
  {
    swift_once();
  }

  v3 = qword_3BE170;

  return v3;
}

- (id)fetchTVApp:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_A1648(v4);
  v7 = v6;

  return v7;
}

- (BKTVAppService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BKTVAppService____lazy_storage___tvMapping) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BKTVAppService *)&v5 init];
}

@end