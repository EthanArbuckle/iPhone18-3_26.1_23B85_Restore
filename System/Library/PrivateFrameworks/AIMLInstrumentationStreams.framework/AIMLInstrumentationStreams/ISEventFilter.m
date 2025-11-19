@interface ISEventFilter
+ (ISEventFilter)everything;
+ (id)allOf:(Class)a3;
+ (id)someOf:(Class)a3 types:(id)a4;
- (ISEventFilter)init;
- (id)combine:(id)a3;
@end

@implementation ISEventFilter

- (ISEventFilter)init
{
  *(&self->super.isa + OBJC_IVAR___ISEventFilter_filter) = sub_23C598D8C(MEMORY[0x277D84F90]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for EventFilter();
  return [(ISEventFilter *)&v4 init];
}

+ (id)allOf:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = ObjCClassMetadata;
  v5 = inited + 32;
  *(inited + 40) = 0;
  v6 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v5);
  v7 = type metadata accessor for EventFilter();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___ISEventFilter_filter] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

+ (id)someOf:(Class)a3 types:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3C8, &qword_23C87AB78);
  v5 = sub_23C8718A4();
  v6 = _s26AIMLInstrumentationStreams11EventFilterC4some2of5typesACSo25SISchemaTopLevelUnionTypeCm_SaySo0H22InstrumentationMessageCmGtFZ_0(ObjCClassMetadata, v5);

  return v6;
}

+ (ISEventFilter)everything
{
  v2 = type metadata accessor for EventFilter();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___ISEventFilter_filter] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

- (id)combine:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v5, v4);

  return v6;
}

@end