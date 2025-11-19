uint64_t sub_17C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1860;

  return sub_2C30();
}

uint64_t sub_1860(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1AE8(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1B94;

  return sub_2C30();
}

uint64_t sub_1B94(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1E3C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._countAndFlagsBits = 0x454D414E5F505041;
  v6._object = 0xE800000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v2.super.isa = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v3 = sub_672C(v6, v7, v2, v8, v5);

  return v3;
}

void sub_1F48(void (*a1)(id))
{
  v3 = sub_675C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MindTimelineEntryModel();
  v8 = sub_3CDC();
  sub_674C();
  v9 = [v1 family];
  v10 = (*&stru_68.segname[(swift_isaMask & *v8) + 8])(v9);
  isa = sub_673C().super.isa;
  v12 = [objc_opt_self() entryWithDate:isa complicationTemplate:v10];

  (*(v4 + 8))(v7, v3);
  a1(v12);
}

uint64_t sub_2150(uint64_t (*a1)(void))
{
  v3 = v1;
  type metadata accessor for MindTimelineEntryModel();
  v4 = a1();
  v5 = [v3 family];
  v6 = (*&stru_68.segname[(swift_isaMask & *v4) + 8])(v5);

  return v6;
}

id sub_21E4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for MindTimelineEntryModel();
  v5 = a1;
  v6 = a3();
  v7 = [v5 family];
  v8 = (*&stru_68.segname[(swift_isaMask & *v6) + 8])(v7);

  return v8;
}

id sub_2298(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithComplication:a1 family:a2 forDevice:a3];

  return v6;
}

id sub_22F8(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for MindComplicationDataSource();
  v7 = objc_msgSendSuper2(&v9, "initWithComplication:family:forDevice:", a1, a2, a3);

  return v7;
}

id sub_23C4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindComplicationDataSource();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_246C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindComplicationDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_24A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24C0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_39DC;

  return v7();
}

uint64_t sub_25A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2690;

  return v8();
}

uint64_t sub_2690()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_33E0(&qword_10508, "<\v") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_3700(a3, v24 - v10);
  v12 = sub_68BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_3770(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_68AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_689C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_681C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_3770(a3);

    return v22;
  }

LABEL_8:
  sub_3770(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2A40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B38;

  return v7(a1);
}

uint64_t sub_2B38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2C30()
{
  v1 = sub_67BC();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_2CEC, 0, 0);
}

uint64_t sub_2CEC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = Log.default.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5._countAndFlagsBits = 0xD00000000000006FLL;
  v5._object = 0x8000000000007590;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x8000000000007660;
  Logger.trace(file:function:)(v5, v6);
  (*(v2 + 8))(v1, v3);
  v7 = objc_allocWithZone(CLKWidgetComplicationDescriptor);
  v8 = sub_67EC();
  v9 = sub_67EC();
  v10 = sub_67EC();
  v11 = [v7 initWithExtensionBundleIdentifier:v8 containerBundleIdentifier:v9 kind:v10 intent:0];

  v12 = v0[1];

  return v12(v11);
}

id sub_2E7C(void *a1)
{
  v2 = (*(*(sub_33E0(&qword_10510, &qword_6F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = sub_67BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Log.default.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v10, v5);
  v11._countAndFlagsBits = 0xD00000000000006FLL;
  v11._object = 0x8000000000007590;
  v12._object = 0x8000000000007600;
  v12._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v11, v12);
  (*(v6 + 8))(v9, v5);
  sub_676C();
  v13 = sub_678C();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v4, 1, v13) != 1)
  {
    isa = sub_677C().super.isa;
    (*(v14 + 8))(v4, v13);
  }

  v16 = [a1 supportsCapability:isa];

  return v16;
}

uint64_t sub_30AC(unint64_t a1, void *a2)
{
  v4 = (*(*(sub_33E0(&qword_10510, &qword_6F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v13 - v5;
  sub_676C();
  v7 = sub_678C();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    isa = sub_677C().super.isa;
    (*(v8 + 8))(v6, v7);
  }

  v10 = [a2 supportsCapability:isa];

  if (!v10)
  {
    goto LABEL_8;
  }

  if (CLKComplicationFamilyCircularMedium != a1)
  {
    if (a1 <= 0xC)
    {
      v11 = 0x1795u >> a1;
      return v11 & 1;
    }

LABEL_8:
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  LOBYTE(v11) = 1;
  return v11 & 1;
}

void sub_324C(void *a1, uint64_t a2)
{
  v4 = sub_675C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MindTimelineEntryModel();
  v9 = sub_3CDC();
  sub_674C();
  v10 = [a1 family];
  v11 = (*&stru_68.segname[(swift_isaMask & *v9) + 8])(v10);
  isa = sub_673C().super.isa;
  v13 = [objc_opt_self() entryWithDate:isa complicationTemplate:v11];

  (*(v5 + 8))(v8, v4);
  (*(a2 + 16))(a2, v13);
}

uint64_t sub_33E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3428()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3470()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2690;

  return sub_1AE8(v2, v3, v5);
}

uint64_t sub_3534()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_39DC;

  return sub_24C0(v2, v3, v5);
}

uint64_t sub_35F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_39DC;

  return sub_25A8(a1, v4, v5, v7);
}

uint64_t sub_3700(uint64_t a1, uint64_t a2)
{
  v4 = sub_33E0(&qword_10508, "<\v");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3770(uint64_t a1)
{
  v2 = sub_33E0(&qword_10508, "<\v");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_37D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3810(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_39DC;

  return sub_2A40(a1, v5);
}

uint64_t sub_38C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2690;

  return sub_2A40(a1, v5);
}

void type metadata accessor for CLKComplicationFamily()
{
  if (!qword_10518)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10518);
    }
  }
}

uint64_t sub_39E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_entryDate;
  v4 = sub_675C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_3AA8(void *a1)
{
  v2 = sub_675C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 _deepBreathingDuration];
  v8 = [objc_opt_self() minuteUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;
  v11 = v9;

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 1.84467441e19)
  {
    v12 = [a1 _isDataLoading];
    sub_674C();
    v13 = type metadata accessor for MindTimelineEntryModel();
    v14 = objc_allocWithZone(v13);
    (*(v3 + 16))(&v14[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_entryDate], v6, v2);
    *&v14[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_minutes] = v10;
    v14[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_loading] = v12;
    v14[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_locked] = 0;
    v14[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_privacy] = 0;
    v15.receiver = v14;
    v15.super_class = v13;
    objc_msgSendSuper2(&v15, "init");
    (*(v3 + 8))(v6, v2);
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_3CE8(uint64_t a1, char a2)
{
  v4 = sub_675C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_674C();
  v9 = type metadata accessor for MindTimelineEntryModel();
  v10 = objc_allocWithZone(v9);
  (*(v5 + 16))(&v10[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_entryDate], v8, v4);
  *&v10[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_minutes] = a1;
  v10[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_loading] = 0;
  v10[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_locked] = a2;
  v10[OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_privacy] = 0;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v5 + 8))(v8, v4);
  return v11;
}

id sub_3E4C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_3F48(uint64_t a1)
{
  if (a1 > 7)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {

        return sub_4B38();
      }

      else
      {

        return sub_47A4();
      }
    }

    if (a1 == 10)
    {
      sub_5840();
      isa = sub_68DC(23.0).super.super.isa;
      v25 = objc_opt_self();
      v26 = sub_67EC();
      v27 = [v25 _symbolImageProviderWithSystemName:v26];

      [v27 setOverridePointSize:isa];
      v14 = [objc_allocWithZone(CLKComplicationTemplateGraphicCircularImage) initWithImageProvider:v27];
      sub_464C(1);

      return v14;
    }

    if (a1 == 12)
    {
      sub_5840();
      v10 = sub_68DC(87.0).super.super.isa;
      v11 = objc_opt_self();
      v12 = sub_67EC();
      v13 = [v11 _symbolImageProviderWithSystemName:v12];

      [v13 setOverridePointSize:v10];
      v14 = [objc_allocWithZone(CLKComplicationTemplateGraphicExtraLargeCircularImage) initWithImageProvider:v13];
      sub_464C(1);

LABEL_32:
      return v14;
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      sub_5840();
      v20 = sub_68DC(23.0).super.super.isa;
      v21 = objc_opt_self();
      v22 = sub_67EC();
      v4 = [v21 _symbolImageProviderWithSystemName:v22];

      [v4 setOverridePointSize:v20];
      v23 = CLKComplicationTemplateCircularSmallSimpleImage;
LABEL_28:
      v31 = [objc_allocWithZone(v23) initWithImageProvider:v4];
      v32 = qword_106C8;
      v14 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      [v14 setTintColor:qword_106F8];
      sub_464C(1);
      goto LABEL_31;
    }

    if (a1 == 7)
    {
      sub_5840();
      v7 = sub_68DC(87.0).super.super.isa;
      v8 = objc_opt_self();
      v9 = sub_67EC();
      v4 = [v8 _symbolImageProviderWithSystemName:v9];

      [v4 setOverridePointSize:v7];
      v5 = CLKComplicationTemplateExtraLargeSimpleImage;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      sub_5840();
      v15 = sub_68DC(23.0).super.super.isa;
      v16 = objc_opt_self();
      v17 = sub_67EC();
      v4 = [v16 _symbolImageProviderWithSystemName:v17];

      [v4 setOverridePointSize:v15];
      v5 = CLKComplicationTemplateModularSmallSimpleImage;
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      sub_5840();
      v1 = sub_68DC(16.0).super.super.isa;
      v2 = objc_opt_self();
      v3 = sub_67EC();
      v4 = [v2 _symbolImageProviderWithSystemName:v3];

      [v4 setOverridePointSize:v1];
      v5 = CLKComplicationTemplateUtilitarianSmallSquare;
LABEL_18:
      v18 = [objc_allocWithZone(v5) initWithImageProvider:v4];
      v19 = qword_106C8;
      v14 = v18;
      if (v19 != -1)
      {
        swift_once();
      }

      [v14 setTintColor:qword_106F8];
LABEL_31:

      goto LABEL_32;
    }
  }

  if (CLKComplicationFamilyCircularMedium == a1)
  {
    sub_5840();
    v28 = sub_68DC(28.0).super.super.isa;
    v29 = objc_opt_self();
    v30 = sub_67EC();
    v4 = [v29 _symbolImageProviderWithSystemName:v30];

    [v4 setOverridePointSize:v28];
    v23 = CLKComplicationTemplateCircularMediumSimpleImage;
    goto LABEL_28;
  }

  sub_691C(45);

  v34._countAndFlagsBits = sub_696C();
  sub_685C(v34);

  result = sub_693C();
  __break(1u);
  return result;
}

uint64_t *sub_45FC()
{
  if (qword_106C8 != -1)
  {
    swift_once();
  }

  return &qword_106F8;
}

void sub_464C(char a1)
{
  v3 = sub_680C();
  v5 = v4;
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v7 = [v1 metadata];
  sub_33E0(&qword_10588, qword_6FC8);
  v8 = sub_67DC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v8;
  sub_56C4(v6, v3, v5, isUniquelyReferenced_nonNull_native, &v11);

  isa = sub_67CC().super.isa;

  [v1 setMetadata:isa];
}

id sub_47A4()
{
  if (*(v0 + OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_locked) == 1)
  {
    if (qword_106C0 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_106F0;
    v16._countAndFlagsBits = 0xE000000000000000;
    v2._countAndFlagsBits = 0x545F4B434F4C4E55;
    v2._object = 0xEE00574549565F4FLL;
LABEL_12:
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_672C(v2, v19, v1, v21, v16);
    goto LABEL_13;
  }

  v3 = *(v0 + OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_minutes);
  if (!v3)
  {
    if (qword_106C0 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_106F0;
    v16._countAndFlagsBits = 0xE000000000000000;
    v2._countAndFlagsBits = 0x454D414E5F505041;
    v2._object = 0xE800000000000000;
    goto LABEL_12;
  }

  if (qword_106C0 != -1)
  {
    swift_once();
  }

  v4.super.isa = qword_106F0;
  v16._countAndFlagsBits = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000014;
  v17._object = 0x8000000000007860;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_672C(v17, v18, v4, v20, v16);
  sub_33E0(&unk_105C0, &unk_7028);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_6FB0;
  *(v5 + 56) = &type metadata for UInt;
  *(v5 + 64) = &protocol witness table for UInt;
  *(v5 + 32) = v3;
  sub_67FC();

LABEL_13:
  v6 = sub_67EC();

  v7 = [objc_opt_self() textProviderWithText:v6];

  v8 = v7;
  sub_5840();
  isa = sub_68DC(23.0).super.super.isa;
  v10 = objc_opt_self();
  v11 = sub_67EC();
  v12 = [v10 _symbolImageProviderWithSystemName:v11];

  [v12 setOverridePointSize:isa];
  v13 = [objc_allocWithZone(CLKComplicationTemplateGraphicCircularImage) initWithImageProvider:v12];
  sub_464C(1);

  v14 = [objc_allocWithZone(CLKComplicationTemplateGraphicBezelCircularText) initWithCircularTemplate:v13 textProvider:v8];
  return v14;
}

uint64_t *sub_4AE8()
{
  if (qword_106C0 != -1)
  {
    swift_once();
  }

  return &qword_106F0;
}

id sub_4B38()
{
  v1 = v0;
  sub_5840();
  isa = sub_68DC(18.0).super.super.isa;
  v3 = objc_opt_self();
  v4 = sub_67EC();
  v5 = [v3 _symbolImageProviderWithSystemName:v4];

  [v5 setOverridePointSize:isa];
  if (*(v1 + OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_locked) == 1)
  {
    if (qword_106C0 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_106F0;
    v20._countAndFlagsBits = 0xE000000000000000;
    v21._countAndFlagsBits = 0x545F4B434F4C4E55;
    v21._object = 0xEE00574549565F4FLL;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_672C(v21, v24, v6, v27, v20);
    v7 = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC31MindComplicationBundleCompanion22MindTimelineEntryModel_minutes);
    if (v8)
    {
      if (qword_106C0 != -1)
      {
        swift_once();
      }

      v9.super.isa = qword_106F0;
      v20._countAndFlagsBits = 0xE000000000000000;
      v22._countAndFlagsBits = 0x5F534554554E494DLL;
      v22._object = 0xEE0054414D524F46;
      v25.value._countAndFlagsBits = 0;
      v25.value._object = 0;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      sub_672C(v22, v25, v9, v28, v20);
      sub_33E0(&unk_105C0, &unk_7028);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_6FB0;
      *(v10 + 56) = &type metadata for UInt;
      *(v10 + 64) = &protocol witness table for UInt;
      *(v10 + 32) = v8;
      sub_67FC();

      v7 = 0;
    }

    else
    {
      if (qword_106C0 != -1)
      {
        swift_once();
      }

      v11.super.isa = qword_106F0;
      v20._countAndFlagsBits = 0xE000000000000000;
      v23._countAndFlagsBits = 0x454D414E5F505041;
      v23._object = 0xE800000000000000;
      v26.value._countAndFlagsBits = 0;
      v26.value._object = 0;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      sub_672C(v23, v26, v11, v29, v20);
      v7 = 1;
    }
  }

  v12 = sub_67EC();

  v13 = [objc_opt_self() textProviderWithText:v12];

  v14 = objc_opt_self();
  v15 = v13;
  result = [v14 fiui_meditationTeal];
  if (result)
  {
    v17 = result;
    [v15 setTintColor:result];

    v18 = [objc_allocWithZone(CLKComplicationTemplateGraphicCornerTextImage) initWithTextProvider:v15 imageProvider:v5];
    v19 = v18;
    sub_464C(v7);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4F40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindTimelineEntryModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4FE4()
{
  type metadata accessor for MindTimelineEntryModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_106F0 = result;
  return result;
}

id sub_503C()
{
  if (qword_106C0 != -1)
  {
    swift_once();
  }

  v0 = qword_106F0;

  return v0;
}

id sub_5098()
{
  result = [objc_opt_self() fiui_meditationTeal];
  qword_106F8 = result;
  return result;
}

uint64_t sub_50D4()
{
  if (qword_106C8 != -1)
  {
    swift_once();
  }

  v0 = qword_106F8;
  v1 = qword_106F8;
  return v0;
}

uint64_t type metadata accessor for MindTimelineEntryModel()
{
  result = qword_106D0;
  if (!qword_106D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_517C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_69AC();
  sub_683C();
  v6 = sub_69BC();

  return sub_549C(a1, a2, v6);
}

uint64_t sub_51F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_33E0(&qword_105B8, &qword_7020);
  v38 = a2;
  result = sub_695C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_69AC();
      sub_683C();
      result = sub_69BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_698C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_5554()
{
  v1 = v0;
  sub_33E0(&qword_105B8, &qword_7020);
  v2 = *v0;
  v3 = sub_694C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_56C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_517C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_51F4(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_517C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_699C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_5554();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_5840()
{
  result = qword_10520;
  if (!qword_10520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10520);
  }

  return result;
}

uint64_t sub_5894()
{
  result = sub_675C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_5998(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5A18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_67BC();
  sub_66C4(v3, a2);
  sub_5998(v3, a2);
  return sub_67AC();
}

uint64_t sub_5AB4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_67BC();

  return sub_5998(v3, a2);
}

uint64_t sub_5B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_67BC();
  v6 = sub_5998(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v20 = file;
  sub_5ED4();
  v6 = (sub_68FC() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_5F28(46, 0xE100000000000000, v5, v4);
  sub_688C();

  v8 = sub_682C();
  v10 = v9;

  sub_5F28(40, 0xE100000000000000, countAndFlagsBits, object);
  sub_688C();
  v11 = sub_682C();
  v13 = v12;

  v14 = sub_679C();
  v15 = sub_68CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20._countAndFlagsBits = swift_slowAlloc();
    *v16 = 67109634;
    v17 = pthread_self();
    *(v16 + 4) = pthread_mach_thread_np(v17);
    *(v16 + 8) = 2080;
    v18 = sub_6060(v8, v10, &v20._countAndFlagsBits);

    *(v16 + 10) = v18;
    *(v16 + 18) = 2080;
    v19 = sub_6060(v11, v13, &v20._countAndFlagsBits);

    *(v16 + 20) = v19;
    _os_log_impl(&dword_0, v14, v15, "[%u] %s::%s", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_5ED4()
{
  result = qword_10630;
  if (!qword_10630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10630);
  }

  return result;
}

unint64_t sub_5F28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_687C() != a1 || v9 != a2)
  {
    v10 = sub_698C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_684C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_6060(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_613C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6294(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6248(v11);
  return v7;
}

unint64_t sub_613C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_62F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_692C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_6248(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_6294(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_62F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_633C(a1, a2);
  sub_646C(&off_C658);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_633C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_6558(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_692C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_686C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6558(v10, 0);
        result = sub_690C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_646C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_65CC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_6558(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_33E0(&qword_10638, &qword_7080);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_65CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_33E0(&qword_10638, &qword_7080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *sub_66C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}