@interface ComplicationsDataSource
+ (NSString)appIdentifier;
+ (NSString)bundleIdentifier;
+ (NSString)localizedAppName;
- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)init;
- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)currentSwitcherTemplate;
- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation ComplicationsDataSource

- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)a3 family:(int64_t)a4 completion:(id)a5
{
  v9 = (*(*(sub_3260(&qword_C378, &qword_4320) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_3960();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_4330;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_4340;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1F84(0, 0, v11, &unk_4350, v16);
}

+ (NSString)bundleIdentifier
{
  v2 = sub_38F0();

  return v2;
}

+ (NSString)appIdentifier
{
  v2 = sub_38F0();

  return v2;
}

+ (NSString)localizedAppName
{
  type metadata accessor for ComplicationsDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = 0x454D414E5F505041;
  v9._object = 0xE800000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v4.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_3890(v9, v10, v4, v11, v7);

  v5 = sub_38F0();

  return v5;
}

- (id)currentSwitcherTemplate
{
  v2 = self;
  v3 = sub_2F0C([(ComplicationsDataSource *)v2 family]);

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = sub_38C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a3);
  v11 = self;
  v12 = sub_2F0C([(ComplicationsDataSource *)v11 family]);
  sub_38B0();
  v13 = v12;
  isa = sub_38A0().super.isa;
  v15 = [objc_opt_self() entryWithDate:isa complicationTemplate:v13];

  (*(v6 + 8))(v9, v5);
  v10[2](v10, v15);

  _Block_release(v10);
}

- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ComplicationsDataSource();
  return [(ComplicationsDataSource *)&v9 initWithComplication:a3 family:a4 forDevice:a5];
}

- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ComplicationsDataSource();
  return [(ComplicationsDataSource *)&v3 init];
}

@end