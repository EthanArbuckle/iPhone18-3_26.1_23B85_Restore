@interface BaseDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
+ (NSString)localizedComplicationName;
- (_TtC20WeatherComplications14BaseDataSource)init;
- (id)currentSwitcherTemplate;
- (id)sampleTemplate;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(int64_t)limit withHandler:(id)handler;
@end

@implementation BaseDataSource

+ (NSString)appIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

+ (NSString)localizedAppName
{
  sub_23BDB522C();
  if (v2)
  {
    v3 = sub_23BDC66C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = (*(ObjCClassMetadata + 296))();
  LOBYTE(family) = sub_23BDA8A20(family, v6);

  return family & 1;
}

+ (NSString)localizedComplicationName
{
  swift_getObjCClassMetadata();
  sub_23BDB2EB8();
  if (v2)
  {
    v3 = sub_23BDC66C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)currentSwitcherTemplate
{
  sampleTemplate = [(BaseDataSource *)self sampleTemplate];

  return sampleTemplate;
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v6 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23BDC6010();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC5FF0();
  if (travelDate)
  {
    sub_23BDC5FF0();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 8))(v14, v10);
  (*(v11 + 56))(v9, v15, 1, v10);
  sub_23BD962D4(v9, &qword_27E1C5958, &unk_23BDC8E10);
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(int64_t)limit withHandler:(id)handler
{
  v7 = sub_23BDC6010();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  sub_23BDC5FF0();
  _Block_copy(v12);
  selfCopy = self;
  sub_23BDB5B84(v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (id)sampleTemplate
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23BDC6000();
  (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x120))(v7);
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 48))([(CLKCComplicationDataSource *)selfCopy family], ObjectType, v10);
  [v12 finalize];

  swift_unknownObjectRelease();

  return v12;
}

- (_TtC20WeatherComplications14BaseDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end