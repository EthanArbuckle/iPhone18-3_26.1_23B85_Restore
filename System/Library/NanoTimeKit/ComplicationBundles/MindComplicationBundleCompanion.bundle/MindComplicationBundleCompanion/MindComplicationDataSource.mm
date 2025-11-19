@interface MindComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (NSNumber)legacyNTKComplicationType;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)init;
- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation MindComplicationDataSource

- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)a3 family:(int64_t)a4 completion:(id)a5
{
  v9 = (*(*(sub_33E0(&qword_10508, "<\v") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_68BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_6F00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_6F10;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_2784(0, 0, v11, &unk_6F20, v16);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v4 = a4;
  v5 = sub_2E7C(v4);

  return v5 & 1;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  LOBYTE(a3) = sub_30AC(a3, v5);

  return a3 & 1;
}

+ (NSString)appIdentifier
{
  v2 = sub_67EC();

  return v2;
}

+ (NSNumber)legacyNTKComplicationType
{
  v2.super.super.isa = sub_68EC().super.super.isa;

  return v2.super.super.isa;
}

+ (NSString)localizedAppName
{
  swift_getObjCClassMetadata();
  sub_1E3C();
  if (v2)
  {
    v3 = sub_67EC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_324C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MindComplicationDataSource();
  return [(MindComplicationDataSource *)&v9 initWithComplication:a3 family:a4 forDevice:a5];
}

- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MindComplicationDataSource();
  return [(MindComplicationDataSource *)&v3 init];
}

@end