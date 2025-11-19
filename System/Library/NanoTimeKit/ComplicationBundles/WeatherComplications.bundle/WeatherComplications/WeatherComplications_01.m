char *sub_23BDAFB20(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ConditionTemplateModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDAFC8C()
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConditionTemplateModel();
    if (v2 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v3 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDAFD98(uint64_t a1)
{
  result = sub_23BDAFE48(&unk_27E1C5780, type metadata accessor for ConditionRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDAFDF0(uint64_t a1)
{
  result = sub_23BDAFE48(&qword_27E1C5B68, type metadata accessor for ConditionRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDAFE48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_23BDAFE90()
{
  type metadata accessor for NWCBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E1C5B70 = result;
  return result;
}

id CLKTextProvider.init(nwcFormat:_:)()
{
  v0 = sub_23BDC69C0();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_23BDC66C0();

  v3 = [ObjCClassFromMetadata textProviderWithFormat:v2 arguments:v0];

  return v3;
}

uint64_t sub_23BDAFFA8()
{
  v1 = [v0 hourlyEntryModels];
  sub_23BDA182C();
  v2 = sub_23BDC6780();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 1;
  }

  result = sub_23BDC6930();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEBD1D0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 topString];
    if (v6)
    {
      v7 = v6;

      return 0;
    }

    v8 = [v5 middleString];
    if (v8)
    {

      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_23BDB00D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_23BDC66C0();
  [v0 setDateFormat_];

  qword_27E1C5B78 = v0;
}

char *sub_23BDB021C(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications12UVDataSource_rectangularFormatter;
  if (qword_27E1C5608 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C77D0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for UVDataSource();
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v14, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C55A0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27E1C7750;
  swift_unknownObjectRetain();

  v11 = *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v13;

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23BDB03B8()
{
  v1 = [v0 family];
  v2 = &OBJC_IVAR____TtC20WeatherComplications12UVDataSource_rectangularFormatter;
  if (v1 != 11)
  {
    v2 = &OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  }

  v3 = &v0[*v2];
  v4 = *v3;
  v5 = *(v3 + 1);
  return swift_unknownObjectRetain();
}

id sub_23BDB04EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UVDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UVDataSource()
{
  result = qword_27E1C5B88;
  if (!qword_27E1C5B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB05CC(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v7 = sub_23BDC6630();
  v8 = sub_23BDC6810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23BD93000, v7, v8, "Migrating to widget.", v9, 2u);
    MEMORY[0x23EEBD7D0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v13 intent:0];

  (*(a1 + 16))(a1, v14);
}

uint64_t sub_23BDB07EC()
{
  type metadata accessor for ChanceRainRectangularTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC6620();
  v2 = sub_23BDB137C(&unk_27E1C5BD0, v1, type metadata accessor for ChanceRainRectangularTemplateFormatter);
  qword_27E1C7790 = v0;
  *algn_27E1C7798 = v2;
}

void *sub_23BDB08EC(void **a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChanceRainRectangularTemplateModel();
  sub_23BDB1254(a1 + *(v6 + 20), v5);
  v73 = *a1;
  v7 = sub_23BDAFFA8();
  v74 = v5;
  if (v7)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v8 = qword_27E1C5B70;
    v9 = sub_23BDC66C0();
    v10 = sub_23BDC66C0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_23BDC66F0();
    v14 = v13;

    v77 = v12;
    v78 = v14;
    sub_23BD97C00();
    sub_23BDC6860();

    v15 = qword_27E1C5B70;
    v16 = sub_23BDC66C0();
    v17 = sub_23BDC66C0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v19 = sub_23BDC66F0();
    v21 = v20;

    v75 = v19;
    v76 = v21;
    sub_23BDC6860();

    v22 = sub_23BDC66C0();

    v23 = sub_23BDC66C0();

    v24 = [objc_opt_self() textProviderWithText:v22 shortText:v23];

    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 grayColor];
    [v26 setTintColor_];
  }

  else
  {
    v28 = &v5[*(v2 + 28)];
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = a1 + *(v6 + 28);
    LODWORD(v31) = v31[*(sub_23BDC6590() + 28)];
    v32 = sub_23BDC66C0();
    if (v31 == 1)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v34 = NWCGlyphPrefixedTextProvider();

      v32 = v33;
    }

    else
    {
      v34 = [objc_opt_self() textProviderWithText_];
    }

    v35 = objc_opt_self();
    v36 = [v35 systemCyanColor];
    [v34 setTintColor_];

    v37 = &v5[*(v2 + 36)];
    v39 = *v37;
    v38 = *(v37 + 1);
    v40 = sub_23BDC66C0();
    v41 = sub_23BDC66C0();
    v42 = NWKUILocalizedString();

    if (!v42)
    {
      sub_23BDC66F0();
      v42 = sub_23BDC66C0();
    }

    v77 = v39;
    v78 = v38;

    MEMORY[0x23EEBD040](0x54524F48535FLL, 0xE600000000000000);
    v43 = sub_23BDC66C0();

    v44 = sub_23BDC66C0();
    v45 = NWKUILocalizedString();

    sub_23BDC66F0();
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v46 = qword_27E1C5B70;
    v47 = sub_23BDC66C0();
    v48 = sub_23BDC66C0();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    if (!v49)
    {
      sub_23BDC66F0();
      v49 = sub_23BDC66C0();
    }

    v50 = sub_23BDC66C0();

    v51 = [objc_opt_self() textProviderWithText:v42 shortText:v50];

    v52 = v51;
    v53 = [v35 whiteColor];
    [v52 setTintColor_];

    v54 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BDC8C50;
    *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
    *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
    *(inited + 32) = v34;
    *(inited + 96) = v54;
    *(inited + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
    *(inited + 72) = v52;
    v56 = v52;
    v57 = v34;
    v58 = sub_23BDC69C0();
    swift_setDeallocating();
    v59 = *(inited + 16);
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v60 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v49 arguments:v58];

    v26 = v60;
  }

  sub_23BD96820(0, &qword_27E1C5BC8, 0x277D2C798);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_23BDC8C40;
  v64 = *MEMORY[0x277D2C790];
  *(v63 + 32) = sub_23BDC66F0();
  v65 = v73;
  *(v63 + 40) = v66;
  *(v63 + 48) = v65;
  v67 = v65;
  v68 = sub_23BD984E0(v63);
  swift_setDeallocating();
  sub_23BDB12B8(v63 + 32);
  sub_23BD97E68(v68);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v69 = sub_23BDC6670();

  [v62 setMetadata_];

  v70 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v26 imageProvider:v62];
  v71 = sub_23BDB1D54();

  sub_23BDB1320(v74);
  return v71;
}

uint64_t sub_23BDB1254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChanceRainTemplateModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDB12B8(uint64_t a1)
{
  v2 = sub_23BD9628C(&unk_27E1C5D20, qword_23BDC8D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDB1320(uint64_t a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDB137C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BDB13C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23BDC69A0();
  sub_23BDC6710();
  v6 = sub_23BDC69B0();

  return sub_23BDB14D0(a1, a2, v6);
}

unint64_t sub_23BDB143C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23BDC66F0();
  sub_23BDC69A0();
  sub_23BDC6710();
  v4 = sub_23BDC69B0();

  return sub_23BDB1588(a1, v4);
}

unint64_t sub_23BDB14D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23BDC6980())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23BDB1588(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23BDC66F0();
      v9 = v8;
      if (v7 == sub_23BDC66F0() && v9 == v10)
      {
        break;
      }

      v12 = sub_23BDC6980();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23BDB168C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_23BD9628C(&qword_27E1C5BE8, &unk_23BDC94D0);
  v38 = a2;
  result = sub_23BDC6950();
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
      sub_23BDC69A0();
      sub_23BDC6710();
      result = sub_23BDC69B0();
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

void *sub_23BDB1934()
{
  v1 = v0;
  sub_23BD9628C(&qword_27E1C5BE8, &unk_23BDC94D0);
  v2 = *v0;
  v3 = sub_23BDC6940();
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

uint64_t sub_23BDB1AA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_23BDB13C4(a2, a3);
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
      sub_23BDB168C(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_23BDB13C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23BDC6990();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23BDB1934();
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

void *sub_23BDB1C20()
{
  v1 = *MEMORY[0x277CBB6E8];
  v2 = sub_23BDC66F0();
  v4 = v3;
  v5 = sub_23BDC67C0();
  v6 = [v0 metadata];
  sub_23BD9628C(&qword_27E1C5BE0, &qword_23BDC94C8);
  v7 = sub_23BDC6680();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v7;
  sub_23BDB1AA4(v5, v2, v4, isUniquelyReferenced_nonNull_native, &v11);

  v9 = sub_23BDC6670();

  [v0 setMetadata_];

  return v0;
}

void *sub_23BDB1D54()
{
  v1 = *MEMORY[0x277CBB6D8];
  v2 = sub_23BDC66F0();
  v4 = v3;
  v5 = sub_23BDC67E0();
  v6 = [v0 metadata];
  sub_23BD9628C(&qword_27E1C5BE0, &qword_23BDC94C8);
  v7 = sub_23BDC6680();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v7;
  sub_23BDB1AA4(v5, v2, v4, isUniquelyReferenced_nonNull_native, &v11);

  v9 = sub_23BDC6670();

  [v0 setMetadata_];

  return v0;
}

id sub_23BDB2128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeatherDataSource()
{
  result = qword_27E1C5BF0;
  if (!qword_27E1C5BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB21EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BDC6650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v8 = sub_23BDC6630();
  v9 = sub_23BDC6810();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23BD93000, v8, v9, "Migrating to widget.", v10, 2u);
    MEMORY[0x23EEBD7D0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v11 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = sub_23BDC66C0();
  v15 = [v11 initWithExtensionBundleIdentifier:v12 containerBundleIdentifier:v13 kind:v14 intent:0];

  (*(a2 + 16))(a2, v15);
}

uint64_t sub_23BDB2450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[2] = a2;
  v27[3] = a6;
  v27[1] = a5;
  v8 = sub_23BDC63A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v27 - v15;
  v17 = sub_23BDC6010();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v27 - v23;
  sub_23BDA38EC(a4, v16);
  v25 = sub_23BDC6240();
  if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
  {
    sub_23BD962D4(v16, &qword_27E1C5960, &qword_23BDC8F50);
    sub_23BDC6000();
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x130))();
    sub_23BDC5F80();
    (*(v9 + 8))(v12, v8);
    sub_23BD962D4(v16, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v18 + 32))(v24, v22, v17);
  }

  sub_23BDC5FD0();
  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_23BDB2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a1;
  v40 = a3;
  v44 = a2;
  v5 = sub_23BDC6590();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v39 = sub_23BDC6010();
  v17 = *(v39 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v39);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TemplateData();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v39 - v26;
  sub_23BDC6000();
  sub_23BDA38EC(v4 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v16);
  v41 = v4;
  sub_23BD9CC98(v4 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v9);
  sub_23BDA38EC(v16, v14);
  v28 = &v9[*(v6 + 40)];
  if (*v28 == *MEMORY[0x277CE4278])
  {
    v29 = v28[1];
    v30 = *(MEMORY[0x277CE4278] + 8);
    sub_23BD962D4(v16, &qword_27E1C5960, &qword_23BDC8F50);
    if (v29 == v30)
    {
      sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
      v31 = sub_23BDC6240();
      (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    }
  }

  else
  {
    sub_23BD962D4(v16, &qword_27E1C5960, &qword_23BDC8F50);
  }

  (*(v17 + 32))(v25, v20, v39);
  sub_23BDA8F64(v14, &v25[*(v21 + 20)]);
  sub_23BDB6810(v9, &v25[*(v21 + 24)], MEMORY[0x277D2C7F0]);
  sub_23BDB6810(v25, v27, type metadata accessor for TemplateData);
  v32 = swift_allocObject();
  v33 = v40;
  v34 = v41;
  v32[2] = v41;
  v32[3] = v33;
  v32[4] = v42;
  ObjectType = swift_getObjectType();
  v36 = v34;

  v37 = [v36 family];
  (*(v44 + 40))(v37, v27, sub_23BDB6964, v32, ObjectType);
  sub_23BDB6878(v27, type metadata accessor for TemplateData);
}

uint64_t sub_23BDB2B3C(uint64_t a1)
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_23BDC6000();
  (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v10);
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v10, v3);
  ObjectType = swift_getObjectType();
  v15 = (*(v12 + 48))(a1, ObjectType, v12);
  [v15 finalize];
  result = sub_23BDC5F80();
  if (v15)
  {
    v17 = sub_23BDC5FA0();
    v18 = [objc_opt_self() entryWithDate:v17 complicationTemplate:v15];
    swift_unknownObjectRelease();

    v13(v8, v3);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BDB2D38()
{
  v1 = *(v0 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter);
  v2 = *(v0 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_23BDB2EB8()
{
  (*(v0 + 256))();
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1C5B70;
  v2 = sub_23BDC66C0();

  v3 = sub_23BDC66C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_23BDC66F0();
  return v5;
}

uint64_t sub_23BDB2FD0()
{
  v0 = sub_23BDC6650();
  sub_23BDB4C20(v0, qword_27E1C5C08);
  sub_23BDB4BE8(v0, qword_27E1C5C08);
  return sub_23BDC6640();
}

uint64_t sub_23BDB3050@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1C55E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BDC6650();
  v3 = sub_23BDB4BE8(v2, qword_27E1C5C08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_23BDB30F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27E1C77A0 = v0;
  return result;
}

void *sub_23BDB315C(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_23BDC6650();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_switcherTemplate] = 0;
  v11 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast;
  v12 = sub_23BDC6240();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location;
  v14 = sub_23BDC6580();
  sub_23BD9CC98(v14, &v3[v13]);
  v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive] = 0;
  v15 = &v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  if (qword_27E1C55F8 != -1)
  {
    swift_once();
  }

  *&v3[v16] = xmmword_27E1C77C0;
  swift_unknownObjectRetain();
  sub_23BDC5F70();
  sub_23BDC5F70();
  v17 = &v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_lastCurrentDescription];
  *v17 = 0x657320726576656ELL;
  v17[1] = 0xE900000000000074;
  sub_23BDC6640();
  v18 = type metadata accessor for BaseDataSource();
  v46.receiver = v3;
  v46.super_class = v18;
  v19 = objc_msgSendSuper2(&v46, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v20 = a2;
  v21 = a3;
  v22 = v19;
  v23 = *((*MEMORY[0x277D85000] & *v19) + 0x190);
  v24 = v19;
  v23();
  v25 = sub_23BDC6630();
  v26 = v10;
  v27 = sub_23BDC6810();

  if (!os_log_type_enabled(v25, v27))
  {

    (*(v44 + 8))(v26, v7);
    return v24;
  }

  v40 = v26;
  v41 = a1;
  v42 = v21;
  v43 = v7;
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v45 = v30;
  *v28 = 138412546;
  *(v28 + 4) = v24;
  *v29 = v22;
  *(v28 + 12) = 2082;
  if (*MEMORY[0x277CBB668] == v20)
  {
    v31 = 0x800000023BDC8110;
    v32 = v24;
    v33 = 0xD000000000000023;
LABEL_9:
    v39 = sub_23BDB4C84(v33, v31, &v45);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_23BD93000, v25, v27, "%@ initialized for %{public}s", v28, 0x16u);
    sub_23BD962D4(v29, &qword_27E1C5C90, &unk_23BDC95F0);
    MEMORY[0x23EEBD7D0](v29, -1, -1);
    sub_23BD9CD40(v30);
    MEMORY[0x23EEBD7D0](v30, -1, -1);
    MEMORY[0x23EEBD7D0](v28, -1, -1);

    (*(v44 + 8))(v40, v43);
    return v24;
  }

  v34 = v24;
  result = CLKStringForComplicationFamily();
  if (result)
  {
    v36 = result;
    v37 = sub_23BDC66F0();
    v31 = v38;

    v33 = v37;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BDB3808(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(id), uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v10 = sub_23BDC6650();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BDC6010();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v51 = v11;
    v52 = v10;
    v53 = v18;
    v54 = result;
    v55 = a2;
    v21 = a1;
    [v21 finalize];
    sub_23BDC6000();
    v22 = v21;
    v23 = sub_23BDC5FA0();
    v49 = [objc_opt_self() entryWithDate:v23 complicationTemplate:v22];
    v50 = v22;

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v24 = qword_27E1C77A0;
    v25 = sub_23BDC5FA0();
    v26 = [v24 stringFromDate_];

    v27 = sub_23BDC66F0();
    v29 = v28;

    (*((*MEMORY[0x277D85000] & *a4) + 0x190))();
    v30 = a4;

    v31 = sub_23BDC6630();
    v32 = sub_23BDC6810();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = v14;
      v34 = v33;
      v47 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v35 = v27;
      v36 = v58;
      *v34 = 136447235;
      v37 = sub_23BDB4C84(v35, v29, &v58);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      if (*(v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive))
      {
        v38 = 0x657669746361;
      }

      else
      {
        v38 = 0x4954434120544F4ELL;
      }

      if (*(v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive))
      {
        v39 = 0xE600000000000000;
      }

      else
      {
        v39 = 0xEA00000000004556;
      }

      v40 = sub_23BDB4C84(v38, v39, &v58);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2081;
      *(v34 + 24) = sub_23BDB4C84(*(v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID), *(v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID + 8), &v58);
      *(v34 + 32) = 2082;
      v41 = v55;
      *(v34 + 34) = sub_23BDB4C84(v55, a3, &v58);
      *(v34 + 42) = 2114;
      *(v34 + 44) = v30;
      v42 = v47;
      *v47 = a4;
      v43 = v30;
      _os_log_impl(&dword_23BD93000, v31, v32, "getCurrentTimelineEntry (date: %{public}s, active: %{public}s, location: %{private}s, description: %{public}s,\nself: %{public}@", v34, 0x34u);
      sub_23BD962D4(v42, &qword_27E1C5C90, &unk_23BDC95F0);
      MEMORY[0x23EEBD7D0](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23EEBD7D0](v36, -1, -1);
      MEMORY[0x23EEBD7D0](v34, -1, -1);

      (*(v51 + 8))(v48, v52);
    }

    else
    {

      (*(v51 + 8))(v14, v52);
      v41 = v55;
    }

    v44 = (v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_lastCurrentDescription);
    v45 = *(v30 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_lastCurrentDescription + 8);
    *v44 = v41;
    v44[1] = a3;

    v46 = v49;
    v57(v49);

    return (*(v53 + 8))(v20, v54);
  }

  return result;
}

void sub_23BDB3D44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_23BDB3DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a2;
  v57 = a4;
  v55 = a3;
  v5 = sub_23BDC6590();
  v6 = *(v5 - 8);
  v59 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v50 - v13;
  v61 = type metadata accessor for TemplateData();
  v14 = *(*(v61 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v61);
  v62 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v50 - v17;
  v18 = sub_23BDC6010();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v50 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = *(v19 + 16);
  v24(&v50 - v22, a1, v18);
  v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v26 = (v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = *(v19 + 32);
  v30 = v28 + v25;
  v31 = v55;
  v58 = v19 + 32;
  v53 = v29;
  v29(v30, v23, v18);
  *(v28 + v26) = v56;
  v32 = v57;
  *(v28 + v27) = v31;
  v33 = v50;
  v60 = a1;
  v34 = a1;
  v35 = v51;
  v24(v50, v34, v18);
  v36 = v52;
  v37 = v54;
  sub_23BDA38EC(v32 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v35);
  sub_23BD9CC98(v32 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v37);
  sub_23BDA38EC(v35, v36);
  v38 = (v37 + *(v59 + 40));
  if (*v38 == *MEMORY[0x277CE4278])
  {
    v39 = v38[1];
    v40 = *(MEMORY[0x277CE4278] + 8);

    sub_23BD962D4(v35, &qword_27E1C5960, &qword_23BDC8F50);
    if (v39 == v40)
    {
      sub_23BD962D4(v36, &qword_27E1C5960, &qword_23BDC8F50);
      v41 = sub_23BDC6240();
      (*(*(v41 - 8) + 56))(v36, 1, 1, v41);
    }
  }

  else
  {

    sub_23BD962D4(v35, &qword_27E1C5960, &qword_23BDC8F50);
  }

  v42 = v62;
  v53(v62, v33, v18);
  v43 = v61;
  sub_23BDA8F64(v36, &v42[*(v61 + 20)]);
  sub_23BDB6810(v37, &v42[*(v43 + 24)], MEMORY[0x277D2C7F0]);
  v44 = v42;
  v45 = v63;
  sub_23BDB6810(v44, v63, type metadata accessor for TemplateData);
  (*((*MEMORY[0x277D85000] & *v32) + 0x120))(v60);
  v47 = v46;
  ObjectType = swift_getObjectType();
  (*(v47 + 40))([v32 family], v45, sub_23BDB6750, v28, ObjectType, v47);
  swift_unknownObjectRelease();
  sub_23BDB6878(v45, type metadata accessor for TemplateData);
}

void sub_23BDB430C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a1;
    [v10 finalize];
    v11 = v10;
    v12 = sub_23BDC5FA0();
    v13 = [objc_opt_self() entryWithDate:v12 complicationTemplate:v11];

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v14 = qword_27E1C77A0;
    v15 = sub_23BDC5FA0();
    v16 = [v14 stringFromDate_];

    v17 = sub_23BDC66F0();
    v19 = v18;

    MEMORY[0x23EEBD040](v17, v19);

    MEMORY[0x23EEBD040](8236, 0xE200000000000000);
    MEMORY[0x23EEBD040](a2, a3);
    MEMORY[0x23EEBD040](41, 0xE100000000000000);
    swift_beginAccess();
    v20 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_23BDA1B20(0, *(v20 + 2) + 1, 1, v20);
      *(a5 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_23BDA1B20((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = 40;
    *(v24 + 5) = 0xE100000000000000;
    *(a5 + 16) = v20;
    swift_endAccess();
    swift_beginAccess();
    v25 = v13;
    MEMORY[0x23EEBD070]();
    if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    swift_endAccess();
  }
}

id sub_23BDB4890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BaseDataSource()
{
  result = qword_27E1C5C58;
  if (!qword_27E1C5C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB4A84()
{
  sub_23BDA9FA4();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_23BDC6590();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_23BDC6010();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_23BDC6650();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_23BDB4BE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_23BDB4C20(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23BDB4C84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BDB4D50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23BDB6648(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23BD9CD40(v11);
  return v7;
}

unint64_t sub_23BDB4D50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23BDB4E5C(a5, a6);
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
    result = sub_23BDC68D0();
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

uint64_t sub_23BDB4E5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23BDB4EA8(a1, a2);
  sub_23BDB4FD8(&unk_284E8CEE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23BDB4EA8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23BDB50C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23BDC68D0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23BDC6740();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23BDB50C4(v10, 0);
        result = sub_23BDC68A0();
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

uint64_t sub_23BDB4FD8(uint64_t result)
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

  result = sub_23BDB5138(result, v12, 1, v3);
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

void *sub_23BDB50C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_23BD9628C(&qword_27E1C5C88, &unk_23BDC95E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23BDB5138(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5C88, &unk_23BDC95E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23BDB522C()
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1C5B70;
  v1 = sub_23BDC66C0();
  v2 = sub_23BDC66C0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_23BDC66F0();
  return v4;
}

void sub_23BDB531C(void *a1, void (**a2)(void, void))
{
  v4 = sub_23BDC6010();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  _Block_copy(a2);
  sub_23BDC6000();
  v10 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))(v8);
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  if (byte_27E1C5C00 == 1)
  {
    v13 = sub_23BDB2B3C([a1 family]);
    (a2)[2](a2, v13);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23BDB2734(v10, v12, sub_23BDB6910, v9);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_23BDB54F4(void *a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_23BDC6650();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BDC6590();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BDC63A0();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_23BDC6010();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  if (byte_27E1C5C00 == 1)
  {
    v29 = sub_23BDB2B3C([a1 family]);
    v30 = [v29 date];

    sub_23BDC5FF0();
    v26 = v28;
  }

  else
  {
    sub_23BDA38EC(a1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v17);
    v31 = sub_23BDC6240();
    v32 = (*(*(v31 - 8) + 48))(v17, 1, v31);
    v33 = sub_23BD962D4(v17, &qword_27E1C5960, &qword_23BDC8F50);
    if (v32)
    {
      v34 = MEMORY[0x277D85000];
      sub_23BDC6000();
    }

    else
    {
      v34 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *a1) + 0x130))(v33);
      sub_23BDC5F80();
      (*(v54 + 8))(v13, v10);
      (*(v19 + 32))(v26, v23, v18);
    }

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v35 = qword_27E1C77A0;
    v36 = sub_23BDC5FA0();
    v37 = [v35 stringFromDate_];

    v54 = sub_23BDC66F0();
    v39 = v38;

    sub_23BD9CC98(a1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v9);
    v53 = sub_23BDC6560();
    v41 = v40;
    v42 = sub_23BDB6878(v9, MEMORY[0x277D2C7F0]);
    v43 = v57;
    (*((*v34 & *a1) + 0x190))(v42);

    v44 = sub_23BDC6630();
    v45 = sub_23BDC6800();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = v47;
      *v46 = 136315394;
      v48 = sub_23BDB4C84(v54, v39, &v59);

      *(v46 + 4) = v48;
      *(v46 + 12) = 2080;
      v49 = sub_23BDB4C84(v53, v41, &v59);

      *(v46 + 14) = v49;
      _os_log_impl(&dword_23BD93000, v44, v45, "Timeline end date: %s for location: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEBD7D0](v47, -1, -1);
      MEMORY[0x23EEBD7D0](v46, -1, -1);

      (*(v55 + 8))(v57, v56);
    }

    else
    {

      (*(v55 + 8))(v43, v56);
    }
  }

  v50 = sub_23BDC5FA0();
  (*(v58 + 16))(v58, v50);

  return (*(v19 + 8))(v26, v18);
}

void sub_23BDB5B84(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_23BDC6650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  v17 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v82 - v19;
  v21 = sub_23BDC6590();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (byte_27E1C5C00 == 1)
  {
    sub_23BD9628C(&qword_27E1C5C80, qword_23BDC9A30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_23BDC9560;
    *(v25 + 32) = sub_23BDB2B3C([a2 family]);
    sub_23BDB65B4();
    v91 = sub_23BDC6770();
    (*(a3 + 16))(a3, v91);

    v26 = v91;
  }

  else
  {
    v82 = v11;
    v83 = v14;
    v91 = v7;
    v85 = v6;
    v86 = a3;
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D84F90];
    *(v27 + 16) = MEMORY[0x277D84F90];
    v88 = (v27 + 16);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v87 = (v29 + 16);
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v27;
    v30[4] = a2;
    v89 = v29;

    v31 = a2;
    v32 = [v31 family];
    sub_23BD9CC98(v31 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v24);
    sub_23BDA38EC(v31 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v20);
    v33 = *((*MEMORY[0x277D85000] & *v31) + 0x1B0);

    v33(v32, a1, v24, v20, sub_23BDB65A8, v30);
    sub_23BD962D4(v20, &qword_27E1C5960, &qword_23BDC8F50);
    sub_23BDB6878(v24, MEMORY[0x277D2C7F0]);
    v84 = v30;

    v35 = *((*MEMORY[0x277D85000] & *v31) + 0x190);
    v35(v34);

    v36 = sub_23BDC6630();
    v37 = sub_23BDC6810();
    v38 = os_log_type_enabled(v36, v37);
    v90 = v27;
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      v40 = v88;
      swift_beginAccess();
      v41 = *v40;
      if (*v40 >> 62)
      {
        if (v41 < 0)
        {
          v81 = *v40;
        }

        v42 = sub_23BDC6930();
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v85;
      *(v39 + 4) = v42;
      v44 = v91;

      _os_log_impl(&dword_23BD93000, v36, v37, "getTimelineEntries added %{public}ld entries.", v39, 0xCu);
      MEMORY[0x23EEBD7D0](v39, -1, -1);
    }

    else
    {

      v43 = v85;
      v44 = v91;
    }

    v47 = *(v44 + 8);
    v46 = v44 + 8;
    v45 = v47;
    v47(v16, v43);
    v48 = v87;
    v49 = swift_beginAccess();
    v50 = *v48;
    v51 = (*v48 + 16);
    v52 = *v51;
    if (*v51 < 0xD)
    {
      v69 = v82;
      v35(v49);

      v70 = sub_23BDC6630();
      v71 = sub_23BDC67F0();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v92[0] = v73;
        *v72 = 136446210;
        v85 = v45;
        v93 = *v87;

        sub_23BD9628C(&qword_27E1C5A08, &qword_23BDC8F58);
        sub_23BDB6600(&qword_27E1C5A10, &qword_27E1C5A08, &qword_23BDC8F58);
        v74 = sub_23BDC66A0();
        v76 = v75;

        v77 = sub_23BDB4C84(v74, v76, v92);

        *(v72 + 4) = v77;
        _os_log_impl(&dword_23BD93000, v70, v71, "getTimeLineEntries: [%{public}s]", v72, 0xCu);
        sub_23BD9CD40(v73);
        MEMORY[0x23EEBD7D0](v73, -1, -1);
        MEMORY[0x23EEBD7D0](v72, -1, -1);

        v85(v82, v43);
      }

      else
      {

        v45(v69, v43);
      }
    }

    else
    {
      v85 = v45;
      v91 = v46;
      v53 = &v51[2 * v52];
      v54 = v53[1];
      v87 = *v53;

      v56 = v83;
      v35(v55);
      v57 = v56;

      swift_unknownObjectRetain();
      v58 = sub_23BDC6630();
      v59 = sub_23BDC67F0();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = 12;
        if (v52 < v52 - 12)
        {
          v60 = 0;
        }

        v61 = (2 * v60) | 1;
        v62 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92[3] = v61;
        v93 = v82;
        *v62 = 136446466;
        v92[0] = v50;
        v92[1] = v50 + 32;
        v92[2] = 0;
        sub_23BD9628C(&qword_27E1C5C70, &unk_23BDC95D0);
        sub_23BDB6600(&qword_27E1C5C78, &qword_27E1C5C70, &unk_23BDC95D0);
        v63 = sub_23BDC66A0();
        v65 = sub_23BDB4C84(v63, v64, &v93);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2082;
        v66 = sub_23BDB4C84(v87, v54, &v93);

        *(v62 + 14) = v66;
        _os_log_impl(&dword_23BD93000, v58, v59, "getTimeLineEntries: [%{public}s, …, %{public}s]", v62, 0x16u);
        v67 = v82;
        swift_arrayDestroy();
        MEMORY[0x23EEBD7D0](v67, -1, -1);
        MEMORY[0x23EEBD7D0](v62, -1, -1);
        swift_unknownObjectRelease();

        v68 = v83;
      }

      else
      {

        swift_unknownObjectRelease();
        v68 = v57;
      }

      v85(v68, v43);
    }

    v78 = v86;
    swift_beginAccess();
    v79 = *(v90 + 16);
    sub_23BDB65B4();

    v80 = sub_23BDC6770();
    (*(v78 + 16))(v78, v80);
  }
}

uint64_t sub_23BDB6528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDB6560()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23BDB65B4()
{
  result = qword_27E1C5C68;
  if (!qword_27E1C5C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5C68);
  }

  return result;
}

uint64_t sub_23BDB6600(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23BD9B8CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDB6648(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BDB66A4()
{
  v1 = sub_23BDC6010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_23BDB6750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_23BDC6010() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_23BDB430C(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_23BDB6810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDB6878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDB68D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDB6924()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BDB6974()
{
  v1 = v0;
  v2 = *sub_23BDC65E0();
  v3 = type metadata accessor for WeatherTemplateModel();
  v4 = v3[6];
  v5 = *(*v2 + 152);

  v6 = v5(v1 + v4, 1, 2);
  v7 = v5(v1 + v3[8], 1, 2);
  v9 = v8;
  v10 = v5(v1 + v3[9], 1, 2);
  v12 = v11;
  MEMORY[0x23EEBD040](540690464, 0xE400000000000000);
  MEMORY[0x23EEBD040](v7, v9);

  MEMORY[0x23EEBD040](0x203A4C202CLL, 0xE500000000000000);
  MEMORY[0x23EEBD040](v10, v12);

  return v6;
}

uint64_t sub_23BDB6ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v147 = &v128 - v5;
  v133 = sub_23BDC6590();
  v6 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v145 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v144 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v143 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v146 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v141 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v155 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v139 = &v128 - v21;
  MEMORY[0x28223BE20](v20);
  v154 = &v128 - v22;
  v132 = sub_23BDC6430();
  v130 = *(v132 - 8);
  v23 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v128 - v27;
  v138 = sub_23BDC6350();
  v149 = *(v138 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x28223BE20](v138);
  v131 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23BDC6240();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23BD9628C(&qword_27E1C5B18, &unk_23BDC92F0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v140 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v135 = &v128 - v41;
  MEMORY[0x28223BE20](v40);
  v156 = &v128 - v42;
  v43 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v128 - v45;
  v47 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v128 - v49;
  v51 = sub_23BDC6010();
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51);
  v153 = &v128 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v142 = v55;
  v56 = *(v55 + 16);
  v152 = &v128 - v57;
  v150 = v58;
  v137 = v55 + 16;
  v136 = v56;
  v56();
  v59 = type metadata accessor for TemplateData();
  v60 = *(v59 + 20);
  v134 = a1;
  sub_23BD96394(a1 + v60, v50, &qword_27E1C5960, &qword_23BDC8F50);
  v61 = *(v32 + 48);
  v62 = v61(v50, 1, v31);
  v151 = v50;
  if (v62)
  {
    v63 = sub_23BDC6280();
    (*(*(v63 - 8) + 56))(v46, 1, 1, v63);
LABEL_4:
    sub_23BD962D4(v46, &qword_27E1C5660, &qword_23BDC89F0);
    v65 = v151;
    sub_23BD962D4(v151, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v32 + 56))(v65, 1, 1, v31);
    goto LABEL_5;
  }

  sub_23BDC6210();
  v64 = sub_23BDC6280();
  if ((*(*(v64 - 8) + 48))(v46, 1, v64) == 1)
  {
    goto LABEL_4;
  }

  sub_23BD962D4(v46, &qword_27E1C5660, &qword_23BDC89F0);
  v65 = v151;
LABEL_5:
  if (v61(v65, 1, v31))
  {
    v66 = sub_23BDC6110();
    (*(*(v66 - 8) + 56))(v156, 1, 1, v66);
  }

  else
  {
    (*(v32 + 16))(v35, v65, v31);
    sub_23BDC61C0();
    (*(v32 + 8))(v35, v31);
  }

  if (v61(v65, 1, v31))
  {
    v161 = 0;
    memset(v160, 0, sizeof(v160));
  }

  else
  {
    (*(v32 + 16))(v35, v65, v31);
    sub_23BDC6200();
    (*(v32 + 8))(v35, v31);
  }

  v67 = v138;
  v68 = *(v133 + 32);
  v134 += *(v59 + 24);
  v69 = (v134 + v68);
  v70 = *v69;
  v71 = v69[1];
  LODWORD(v138) = sub_23BDC6820();
  if (v61(v65, 1, v31))
  {
    (*(v149 + 56))(v28, 1, 1, v67);
    v72 = v140;
    v73 = v139;
LABEL_14:
    sub_23BD962D4(v28, &qword_27E1C5CA0, &unk_23BDC9650);
    v133 = 0;
    v132 = 0;
    goto LABEL_15;
  }

  sub_23BDC6220();
  v74 = v149;
  v75 = (*(v149 + 48))(v28, 1, v67);
  v72 = v140;
  v73 = v139;
  if (v75 == 1)
  {
    goto LABEL_14;
  }

  v112 = v131;
  (*(v74 + 32))(v131, v28, v67);
  if (sub_23BDC6300())
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v113 = qword_27E1C5B70;
    v114 = sub_23BDC66C0();
    v115 = sub_23BDC66C0();
    v116 = [v113 localizedStringForKey:v114 value:0 table:v115];

    v133 = sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_23BDC8C50;
    v157[0] = sub_23BDC6330();
    sub_23BD9CD8C();
    v118 = sub_23BDC6870();
    v120 = v119;
    v121 = MEMORY[0x277D837D0];
    *(v117 + 56) = MEMORY[0x277D837D0];
    v122 = sub_23BD97C54();
    *(v117 + 64) = v122;
    *(v117 + 32) = v118;
    *(v117 + 40) = v120;
    v123 = v129;
    sub_23BDC6320();
    v124 = sub_23BDC63F0();
    v126 = v125;
    (*(v130 + 8))(v123, v132);
    *(v117 + 96) = v121;
    *(v117 + 104) = v122;
    v112 = v131;
    *(v117 + 72) = v124;
    *(v117 + 80) = v126;
    v133 = sub_23BDC6700();
    v132 = v127;

    v74 = v149;
  }

  else
  {
    v133 = 0;
    v132 = 0;
  }

  (*(v74 + 8))(v112, v67);
LABEL_15:
  v76 = *sub_23BDC65E0();
  sub_23BD96394(v160, v157, &qword_27E1C59A8, &unk_23BDC8EC0);
  v77 = v158;
  if (v158)
  {
    v78 = v159;
    sub_23BD9CCFC(v157, v158);
    v79 = *(v78 + 88);

    v79(v77, v78);
    v80 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v80 - 8) + 56))(v73, 0, 1, v80);
    sub_23BD9CD40(v157);
  }

  else
  {

    sub_23BD962D4(v157, &qword_27E1C59A8, &unk_23BDC8EC0);
    v81 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v81 - 8) + 56))(v73, 1, 1, v81);
  }

  v82 = *(*v76 + 176);
  v82(v73);
  sub_23BD962D4(v73, &qword_27E1C5790, &unk_23BDC92E0);
  v83 = v135;
  sub_23BD96394(v156, v135, &qword_27E1C5B18, &unk_23BDC92F0);
  v84 = sub_23BDC6110();
  v85 = *(v84 - 8);
  v86 = *(v85 + 48);
  if (v86(v83, 1, v84) == 1)
  {
    sub_23BD962D4(v83, &qword_27E1C5B18, &unk_23BDC92F0);
    v87 = 1;
    v88 = v141;
  }

  else
  {
    v88 = v141;
    sub_23BDC60E0();
    (*(v85 + 8))(v83, v84);
    v87 = 0;
  }

  v89 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v89 - 8) + 56))(v88, v87, 1, v89);
  v82(v88);
  sub_23BD962D4(v88, &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BD96394(v156, v72, &qword_27E1C5B18, &unk_23BDC92F0);
  if (v86(v72, 1, v84) == 1)
  {
    sub_23BD962D4(v72, &qword_27E1C5B18, &unk_23BDC92F0);
    v90 = 1;
    v91 = v145;
    v92 = v144;
    v93 = v143;
  }

  else
  {
    v93 = v143;
    sub_23BDC60D0();
    (*(v85 + 8))(v72, v84);
    v90 = 0;
    v91 = v145;
    v92 = v144;
  }

  v94 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v94 - 8) + 56))(v93, v90, 1, v94);
  v95 = v146;
  v82(v93);
  sub_23BD962D4(v93, &qword_27E1C5790, &unk_23BDC92E0);
  v96 = v152;
  v97 = v150;
  (v136)(v153, v152, v150);
  sub_23BD9CC98(v134, v91);
  v98 = v154;
  sub_23BD96394(v154, v92, &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BD96394(v160, v157, &qword_27E1C59A8, &unk_23BDC8EC0);
  v99 = v158;
  if (v158)
  {
    v100 = v98;
    v101 = v159;
    sub_23BD9CCFC(v157, v158);
    v102 = v147;
    (*(v101 + 40))(v99, v101);

    v103 = v100;
    v97 = v150;
    sub_23BD962D4(v103, &qword_27E1C5790, &unk_23BDC92E0);
    sub_23BD962D4(v160, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v156, &qword_27E1C5B18, &unk_23BDC92F0);
    v104 = v142;
    (*(v142 + 8))(v96, v97);
    v105 = sub_23BDC62F0();
    (*(*(v105 - 8) + 56))(v102, 0, 1, v105);
    sub_23BD9CD40(v157);
  }

  else
  {

    sub_23BD962D4(v98, &qword_27E1C5790, &unk_23BDC92E0);
    sub_23BD962D4(v160, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v156, &qword_27E1C5B18, &unk_23BDC92F0);
    v104 = v142;
    (*(v142 + 8))(v96, v97);
    sub_23BD962D4(v157, &qword_27E1C59A8, &unk_23BDC8EC0);
    v106 = sub_23BDC62F0();
    v102 = v147;
    (*(*(v106 - 8) + 56))(v147, 1, 1, v106);
  }

  v107 = v148;
  (*(v104 + 32))(v148, v153, v97);
  v108 = type metadata accessor for WeatherTemplateModel();
  sub_23BDA8FD4(v91, v107 + v108[5]);
  sub_23BDA1D38(v92, v107 + v108[6], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v102, v107 + v108[7], &qword_27E1C59F0, &unk_23BDC8F30);
  sub_23BDA1D38(v155, v107 + v108[8], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v95, v107 + v108[9], &qword_27E1C5790, &unk_23BDC92E0);
  v109 = (v107 + v108[10]);
  v110 = v132;
  *v109 = v133;
  v109[1] = v110;
  *(v107 + v108[11]) = v138 & 1;
  return sub_23BD962D4(v151, &qword_27E1C5960, &qword_23BDC8F50);
}

unint64_t sub_23BDB7DF4(uint64_t a1)
{
  result = sub_23BDB7E1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDB7E1C()
{
  result = qword_27E1C5C98;
  if (!qword_27E1C5C98)
  {
    type metadata accessor for WeatherTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5C98);
  }

  return result;
}

uint64_t type metadata accessor for WeatherTemplateModel()
{
  result = qword_27E1C5CA8;
  if (!qword_27E1C5CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDB7ED4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_23BDB80AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23BDC6590();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDB8260()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BDAE518();
      if (v2 <= 0x3F)
      {
        sub_23BDAE4C0();
        if (v3 <= 0x3F)
        {
          sub_23BDB8340();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BDB8340()
{
  if (!qword_27E1C59D0)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C59D0);
    }
  }
}

uint64_t sub_23BDB8390()
{
  type metadata accessor for ChanceRainTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC6620();
  strcpy((v0 + 24), "umbrella.fill");
  *(v0 + 38) = -4864;
  v2 = sub_23BDBA1AC(&unk_27E1C5CF0, v1, type metadata accessor for ChanceRainTemplateFormatter);
  *&xmmword_27E1C77C0 = v0;
  *(&xmmword_27E1C77C0 + 1) = v2;
}

void sub_23BDB8444()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(MEMORY[0x277CBBAF8]);
    v3 = v1;
    v4 = [v2 initWithDevice:v3 identitySizeClass:2];

    [v4 scaledValue_];
    v6 = v5;
    [v4 scaledValue_];
    v8 = v7;
    CLKComplicationGraphicExtraLargeCircularScalingFactor();
    v10 = v9;

    qword_27E1C5CB8 = *&v6;
    qword_27E1C5CC0 = *&v8;
    *&qword_27E1C5CC8 = v6 * v10;
    *&qword_27E1C5CD0 = v8 * v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_23BDB8548(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  v5 = sub_23BDC66C0();

  v6 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemCyanColor];
  [v8 setTintColor_];

  v10 = (a1 + *(type metadata accessor for ChanceRainTemplateModel() + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_23BDC66C0();
  v14 = [objc_opt_self() textProviderWithText_];

  v15 = objc_allocWithZone(MEMORY[0x277CBBA90]);
  v16 = v14;
  v17 = [v15 initWithTextProvider:v16 imageProvider:v8];

  return v17;
}

id sub_23BDB86C4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  v5 = sub_23BDC66C0();

  v6 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v7 = objc_opt_self();
  v8 = [v7 systemCyanColor];
  [v6 setTintColor_];

  v9 = [v7 whiteColor];
  [v6 setTintColor_];

  v10 = type metadata accessor for ChanceRainTemplateModel();
  v11 = (a1 + v10[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_23BDC66C0();
  v15 = [objc_opt_self() textProviderWithText_];

  v16 = (*(**(v1 + 16) + 184))(*(a1 + v10[6]), *(a1 + v10[6] + 8), *(a1 + v10[8]), 1);
  v17 = [v7 systemCyanColor];
  v18 = 0.0;
  if (v16 > 0.0)
  {
    v18 = v16;
  }

  v19 = fminf(v18, 1.0);
  v20 = objc_opt_self();
  *&v21 = v19;
  v22 = [v20 gaugeProviderWithStyle:1 gaugeColor:v17 fillFraction:v21];

  v23 = [objc_allocWithZone(MEMORY[0x277CBB8C8]) initWithGaugeProvider:v22 leadingTextProvider:v15 trailingTextProvider:0 imageProvider:v6];
  return v23;
}

id sub_23BDB88F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChanceRainTemplateModel();
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = 10;
  v9 = sub_23BDC66C0();
  v30[4] = sub_23BDBA200;
  v30[5] = v8;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_23BDB93A0;
  v30[3] = &unk_284E8D578;
  v10 = _Block_copy(v30);
  sub_23BDC6F20(v11);
  v13 = *(v12 + 152);
  v14 = [objc_opt_self() textProviderWithText:v9 overrideBlock:v10];

  _Block_release(v10);

  v15 = (*(**(v1 + 16) + 184))(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a1 + v4[8]), 1);
  v16 = objc_opt_self();
  v17 = [v16 systemCyanColor];
  v18 = 0.0;
  if (v15 > 0.0)
  {
    v18 = v15;
  }

  v19 = fminf(v18, 1.0);
  v20 = objc_opt_self();
  *&v21 = v19;
  v22 = [v20 gaugeProviderWithStyle:1 gaugeColor:v17 fillFraction:v21];

  v24 = *(v2 + 24);
  v23 = *(v2 + 32);

  v25 = sub_23BDC66C0();

  v26 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v27 = [v16 systemCyanColor];
  [v26 setTintColor_];

  v28 = [objc_allocWithZone(MEMORY[0x277CBB860]) initWithGaugeProvider:v22 bottomImageProvider:v26 centerTextProvider:v14];
  return v28;
}

id sub_23BDB8B9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChanceRainTemplateModel();
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = 12;
  v9 = sub_23BDC66C0();
  v30[4] = sub_23BDBA124;
  v30[5] = v8;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_23BDB93A0;
  v30[3] = &unk_284E8D528;
  v10 = _Block_copy(v30);
  sub_23BDC6F20(v11);
  v13 = *(v12 + 152);
  v14 = [objc_opt_self() textProviderWithText:v9 overrideBlock:v10];

  _Block_release(v10);

  v15 = (*(**(v1 + 16) + 184))(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a1 + v4[8]), 1);
  v16 = objc_opt_self();
  v17 = [v16 systemCyanColor];
  v18 = 0.0;
  if (v15 > 0.0)
  {
    v18 = v15;
  }

  v19 = fminf(v18, 1.0);
  v20 = objc_opt_self();
  *&v21 = v19;
  v22 = [v20 gaugeProviderWithStyle:1 gaugeColor:v17 fillFraction:v21];

  v24 = *(v2 + 24);
  v23 = *(v2 + 32);

  v25 = sub_23BDC66C0();

  v26 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v27 = [v16 systemCyanColor];
  [v26 setTintColor_];

  v28 = [objc_allocWithZone(MEMORY[0x277CBB948]) initWithGaugeProvider:v22 bottomImageProvider:v26 centerTextProvider:v14];
  return v28;
}

id sub_23BDB8E58(uint64_t a1, Class *a2, Class *a3)
{
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);

  v9 = sub_23BDC66C0();

  v10 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemCyanColor];
  [v12 setTintColor_];

  v14 = type metadata accessor for ChanceRainTemplateModel();
  if (*(a1 + *(v14 + 24) + 8) == 1)
  {
    v15 = [objc_allocWithZone(*a2) initWithImageProvider_];
  }

  else
  {
    v16 = (a1 + *(v14 + 28));
    v17 = *v16;
    v18 = v16[1];
    v19 = sub_23BDC66C0();
    v20 = [objc_opt_self() textProviderWithText_];

    v15 = [objc_allocWithZone(*a3) initWithLine1ImageProvider:v12 line2TextProvider:v20];
  }

  return v15;
}

id sub_23BDB8FD8(int a1, int a2, uint64_t a3, id a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = [a4 font];
  [v8 pointSize];
  v10 = v9;

  v11 = sub_23BDC6720();
  if (a5 == 12)
  {
    if (v11 > 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CD0;
LABEL_12:
      if (v12 != -1)
      {
        swift_once();
      }

      v10 = v10 - *v13;
      goto LABEL_15;
    }

    if (sub_23BDC6720() >= 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CC8;
      goto LABEL_12;
    }
  }

  else
  {
    if (v11 > 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CC0;
      goto LABEL_12;
    }

    if (sub_23BDC6720() >= 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CB8;
      goto LABEL_12;
    }
  }

LABEL_15:
  v14 = [a4 font];
  v15 = [v14 fontDescriptor];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:v10];
  sub_23BD9628C(&qword_27E1C5CE0, &qword_23BDC96C8);
  inited = swift_initStackObject();
  v18 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_23BDC8C40;
  v19 = *v18;
  *(inited + 32) = v19;
  *(inited + 40) = v16;
  v20 = v19;
  v21 = v16;
  v22 = sub_23BD99B00(inited);
  swift_setDeallocating();
  sub_23BDBA144(inited + 32);
  sub_23BD980A4(v22);

  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_23BDC66C0();
  type metadata accessor for Key(0);
  sub_23BDBA1AC(&qword_27E1C56F0, 255, type metadata accessor for Key);
  v25 = sub_23BDC6670();

  v26 = [v23 initWithString:v24 attributes:v25];

  v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v28 = sub_23BDC66C0();
  v29 = [v27 initWithString_];

  v30 = sub_23BDC66C0();
  v31 = [v29 rangeOfString_];
  v33 = v32;

  if (v31 != sub_23BDC5F00())
  {
    v34 = [v21 _fontScaledByScaleFactor_];
    if (v34)
    {
      v35 = v34;
      [v26 addAttribute:v20 value:v35 range:{v31, v33}];
    }
  }

  return v26;
}

id sub_23BDB93A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_23BDC66F0();
  v10 = v9;

  v11 = a4;
  v12 = v7(v8, v10, a3, v11);

  return v12;
}

id sub_23BDB94B4(uint64_t a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDB1254(a1, v6);
  v7 = sub_23BDB9C98(&v6[v3[7]], v6[v3[8] + 8]);
  v8 = [objc_opt_self() systemCyanColor];
  [v7 setTintColor_];

  sub_23BDB1320(v6);
  v9 = (a1 + v3[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_23BDC66C0();
  v13 = objc_opt_self();
  v14 = [v13 textProviderWithText_];

  v15 = sub_23BDC66C0();
  v16 = sub_23BDC66C0();
  v17 = NWKUILocalizedString();

  if (!v17)
  {
    sub_23BDC66F0();
    v17 = sub_23BDC66C0();
  }

  v18 = sub_23BDC66C0();
  v19 = sub_23BDC66C0();
  v20 = NWKUILocalizedString();

  if (!v20)
  {
    sub_23BDC66F0();
    v20 = sub_23BDC66C0();
  }

  v21 = [v13 textProviderWithText:v17 shortText:v20];

  v22 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v7 body1TextProvider:v14 body2TextProvider:v21];
  return v22;
}

id sub_23BDB9758(uint64_t a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel();
  if (*(a1 + *(v2 + 24) + 8) == 1)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v3 = qword_27E1C5B70;
    v4 = sub_23BDC66C0();
    v5 = sub_23BDC66C0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    if (!v6)
    {
      sub_23BDC66F0();
      v6 = sub_23BDC66C0();
    }

    v7 = [objc_opt_self() textProviderWithText_];

    v8 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  }

  else
  {
    v9 = (a1 + *(v2 + 28));
    v11 = *v9;
    v10 = v9[1];
    v12 = v2;
    v13 = sub_23BDC66C0();
    v14 = objc_opt_self();
    v15 = [v14 textProviderWithText_];

    v16 = (a1 + *(v12 + 36));
    v18 = *v16;
    v17 = v16[1];
    v19 = sub_23BDC66C0();
    v20 = sub_23BDC66C0();
    v21 = NWKUILocalizedString();

    if (!v21)
    {
      sub_23BDC66F0();
      v21 = sub_23BDC66C0();
    }

    MEMORY[0x23EEBD040](0x54524F48535FLL, 0xE600000000000000);
    v22 = sub_23BDC66C0();

    v23 = sub_23BDC66C0();
    v24 = NWKUILocalizedString();

    sub_23BDC66F0();
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v25 = qword_27E1C5B70;
    v26 = sub_23BDC66C0();
    v27 = sub_23BDC66C0();
    v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

    if (!v28)
    {
      sub_23BDC66F0();
      v28 = sub_23BDC66C0();
    }

    v29 = sub_23BDC66C0();

    v30 = [v14 textProviderWithText:v21 shortText:v29];

    v31 = sub_23BDAC0C0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BDC8C50;
    *(inited + 56) = v31;
    v33 = sub_23BDBA1AC(&unk_27E1C58B0, 255, sub_23BDAC0C0);
    *(inited + 32) = v15;
    *(inited + 96) = v31;
    *(inited + 104) = v33;
    *(inited + 64) = v33;
    *(inited + 72) = v30;
    v34 = v15;
    v35 = v30;
    v36 = sub_23BDC69C0();
    swift_setDeallocating();
    v37 = *(inited + 16);
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v38 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v28 arguments:v36];

    v8 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  }

  return v8;
}

id sub_23BDB9C98(uint64_t *a1, char a2)
{
  if (a2)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v3 = qword_27E1C5B70;
    v4 = sub_23BDC66C0();
    v5 = sub_23BDC66C0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = v6;
    v8 = v6;
    if (!v6)
    {
      sub_23BDC66F0();
      v8 = sub_23BDC66C0();

      sub_23BDC66F0();
      v7 = sub_23BDC66C0();
    }

    v9 = *(a1 + *(sub_23BDC6590() + 28));
    v10 = v6;
    if (v9 == 1)
    {

      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v11 = NWCGlyphPrefixedTextProvider();

      goto LABEL_23;
    }

    v21 = [objc_opt_self() textProviderWithText_];
LABEL_22:
    v11 = v21;
    goto LABEL_23;
  }

  v12 = *a1;
  v13 = a1[1];
  if (*a1 != 0x65772D6C61636F6CLL || v13 != 0xED00007265687461)
  {
    v15 = *a1;
    v16 = a1[1];
    if ((sub_23BDC6980() & 1) == 0 && (v12 != 0x7461636F4C20794DLL || v13 != 0xEB000000006E6F69) && (sub_23BDC6980() & 1) == 0)
    {
      v23 = *(a1 + *(sub_23BDC6590() + 28));
      v7 = sub_23BDC66C0();
      if (v23 == 1)
      {
        v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
        v11 = NWCGlyphPrefixedTextProvider();

        v7 = v24;
        goto LABEL_23;
      }

      v21 = [objc_opt_self() textProviderWithText_];
      goto LABEL_22;
    }
  }

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1C5B70;
  v18 = sub_23BDC66C0();
  v19 = sub_23BDC66C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  if (!v20)
  {
    sub_23BDC66F0();
    v20 = sub_23BDC66C0();

    sub_23BDC66F0();
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
  v11 = NWCGlyphPrefixedTextProvider();

LABEL_23:
  return v11;
}

uint64_t sub_23BDBA12C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BDBA144(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5CE8, qword_23BDC96D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBA1AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDBA208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v106 = a3;
  v5 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v100 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v97 - v11;
  MEMORY[0x28223BE20](v10);
  v101 = &v97 - v13;
  v14 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v104 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v97 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v109 = &v97 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v97 - v29;
  v31 = type metadata accessor for WeatherTemplateModel();
  sub_23BD9998C(a1 + *(v31 + 32), v30);
  v107 = v31;
  v108 = a1;
  v32 = a1 + *(v31 + 36);
  v33 = v28;
  sub_23BD9998C(v32, v28);
  v102 = v6;
  v34 = *(v6 + 48);
  if (v34(v30, 1, v5))
  {
    if (v34(v28, 1, v5))
    {
      goto LABEL_9;
    }

    v35 = 1.0;
LABEL_7:
    sub_23BDC5F50();
    if (v35 >= v37)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_23BDC5F50();
  v35 = v36;
  if (!v34(v28, 1, v5))
  {
    goto LABEL_7;
  }

  if (v35 < 0.0)
  {
LABEL_8:
    v38 = v109;
    sub_23BD9998C(v30, v109);
    sub_23BDBAC50(v33, v30);
    sub_23BDBACC0(v38, v33);
  }

LABEL_9:
  sub_23BD9998C(v30, v23);
  v39 = v34(v23, 1, v5);
  v105 = v33;
  v110 = v30;
  if (v39 == 1)
  {
    v20 = v23;
LABEL_16:
    sub_23BDBAB8C(v20);
    v46 = sub_23BDC6610();
    v47 = *v46;
    v48 = *(*v46 + 16);
    v49 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    if (v48)
    {
      v50 = 1.0 / v48;

      v51 = 0.0;
      v52 = 40;
      do
      {
        v53 = *(v47 + v52);
        MEMORY[0x23EEBD070]();
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23BDC6790();
        }

        sub_23BDC67A0();
        v49 = v111;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        MEMORY[0x23EEBD070]();
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v104 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23BDC6790();
        }

        sub_23BDC67A0();

        v51 = v50 + v51;
        v52 += 16;
        --v48;
      }

      while (v48);
      v102 = v112;

      v30 = v110;
    }

    else
    {
      v102 = MEMORY[0x277D84F90];
    }

    v55 = objc_opt_self();
    v104 = [v55 whiteColor];
    v103 = [v55 whiteColor];
    v56 = *MEMORY[0x277CBB6C8];
    goto LABEL_26;
  }

  v98 = v12;
  v99 = a2;
  v41 = v101;
  v40 = v102;
  v42 = *(v102 + 32);
  v42(v101, v23, v5);
  sub_23BD9998C(v33, v20);
  if (v34(v20, 1, v5) == 1)
  {
    (*(v40 + 8))(v41, v5);
LABEL_15:
    v30 = v110;
    a2 = v99;
    goto LABEL_16;
  }

  v43 = v98;
  v42(v98, v20, v5);
  v44 = v104;
  sub_23BD9998C(v108 + *(v107 + 24), v104);
  if (v34(v44, 1, v5) == 1)
  {
    v45 = *(v102 + 8);
    v45(v43, v5);
    v45(v101, v5);
    v20 = v44;
    goto LABEL_15;
  }

  v42(v100, v44, v5);
  v74 = v101;
  v75 = sub_23BDC65A0();
  v76 = v98;
  v103 = sub_23BDC65A0();
  sub_23BDA9AD0();
  v77 = sub_23BDC5F30();
  v78 = v102;
  if ((v77 & 1) == 0 || (v79 = sub_23BDC5F30(), v80 = 0.5, (v79 & 1) == 0))
  {
    sub_23BDC5F50();
    v82 = v81;
    sub_23BDC5F50();
    v84 = v83;
    sub_23BDC5F50();
    v86 = (v85 - v82) / (v84 - v82);
    v87 = 0.0;
    if (v86 >= 0.0)
    {
      v87 = v86;
    }

    if (v86 >= 1.0)
    {
      v88 = 1.0;
    }

    else
    {
      v88 = v87;
    }

    v80 = v88;
  }

  v104 = v75;
  if (v80 <= 0.0)
  {
    v80 = 0.0;
  }

  v56 = fminf(v80, 1.0);
  v90 = sub_23BDC65B0();
  v49 = v91;
  v92 = *(v90 + 16);
  a2 = v99;
  if (v92)
  {
    v97 = v89;
    v112 = MEMORY[0x277D84F90];

    sub_23BDC6900();
    v93 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_23BDC68E0();
      v94 = *(v112 + 16);
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v93 += 8;
      --v92;
    }

    while (v92);

    v95 = *(v102 + 8);
    v95(v100, v5);
    v95(v98, v5);
    v95(v101, v5);
    v102 = v112;
    a2 = v99;
    v30 = v110;
  }

  else
  {

    v96 = *(v78 + 8);
    v96(v100, v5);
    v96(v76, v5);
    v96(v74, v5);
    v102 = MEMORY[0x277D84F90];
    v30 = v110;
  }

LABEL_26:
  v57 = *sub_23BDC65E0();
  v58 = v109;
  sub_23BD9998C(v30, v109);
  v59 = *(*v57 + 152);

  v101 = v59(v58, 0, 0);
  v61 = v60;
  sub_23BDBAB8C(v58);
  v62 = v105;
  sub_23BD9998C(v105, v58);
  v63 = v59(v58, 0, 0);
  v65 = v64;
  sub_23BDBAB8C(v58);
  v66 = v108;
  v67 = v59(v108 + *(v107 + 24), a2, 1);
  v69 = v68;

  sub_23BDBABF4(v66);
  sub_23BDBAB8C(v62);
  result = sub_23BDBAB8C(v110);
  v71 = v106;
  *v106 = v56;
  *(v71 + 1) = v67;
  *(v71 + 2) = v69;
  *(v71 + 3) = v101;
  *(v71 + 4) = v61;
  v72 = v103;
  *(v71 + 5) = v104;
  *(v71 + 6) = v63;
  *(v71 + 7) = v65;
  *(v71 + 8) = v72;
  v73 = v102;
  *(v71 + 9) = v49;
  *(v71 + 10) = v73;
  return result;
}

uint64_t sub_23BDBAB8C(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBABF4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBACC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_23BDBAD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23BDBAD54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BDBAD9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BDBAE00()
{
  type metadata accessor for UVRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDBB94C(&qword_27E1C5D38, v1, type metadata accessor for UVRectangularTemplateFormatter);
  *&xmmword_27E1C77D0 = v0;
  *(&xmmword_27E1C77D0 + 1) = result;
  return result;
}

void *sub_23BDBAEE0(void **a1)
{
  v2 = type metadata accessor for UVTemplateModel();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD96820(0, &unk_27E1C5D10, 0x277D2C7B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v9 = *MEMORY[0x277D2C788];
  *(inited + 32) = sub_23BDC66F0();
  *(inited + 40) = v10;
  v11 = *a1;
  *(inited + 48) = *a1;
  v12 = v11;
  v13 = sub_23BD984E0(inited);
  swift_setDeallocating();
  sub_23BDB12B8(inited + 32);
  sub_23BD97E68(v13);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v14 = sub_23BDC6670();

  v92 = v7;
  [v7 setMetadata_];

  v15 = type metadata accessor for UVRectangularTemplateModel();
  sub_23BD97CA8(a1 + *(v15 + 20), v5);
  v16 = &v5[v2[6]];
  v17 = *(v16 + 1);
  v93 = v5;
  if (v17 && (v18 = *&v5[v2[8]]) != 0)
  {
    v88 = v17;
    v87 = *v16;
    v19 = qword_27E1C55D0;
    v91 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_27E1C5B70;
    v21 = sub_23BDC66C0();
    v22 = sub_23BDC66C0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = sub_23BDC66F0();
    v86 = v25;

    v26 = qword_27E1C5B70;
    v27 = sub_23BDC66C0();
    v90 = "uviFormatter";
    v28 = sub_23BDC66C0();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v30 = swift_allocObject();
    v89 = xmmword_23BDC8C50;
    *(v30 + 16) = xmmword_23BDC8C50;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_23BD97C54();
    *(v30 + 64) = v32;
    v33 = v86;
    *(v30 + 32) = v24;
    *(v30 + 40) = v33;
    v34 = &v93[v2[5]];
    if (v34[8])
    {
      v35 = 0;
    }

    else
    {
      v35 = *v34;
    }

    v96 = v35;
    sub_23BD9CD8C();
    v36 = sub_23BDC6870();
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 72) = v36;
    *(v30 + 80) = v37;
    sub_23BDC6700();

    v38 = a1 + *(v15 + 28);
    v39 = v38[*(sub_23BDC6590() + 28)];
    v40 = sub_23BDC66C0();

    if (v39 == 1)
    {
      v41 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v42 = NWCGlyphPrefixedTextProvider();

      v40 = v41;
    }

    else
    {
      v42 = [objc_opt_self() textProviderWithText_];
    }

    v63 = v91;

    [v42 setTintColor_];
    v96 = v87;
    v97 = v88;
    sub_23BD97C00();
    sub_23BDC6860();
    v64 = sub_23BDC66C0();

    v65 = [objc_opt_self() textProviderWithText_];

    v66 = objc_opt_self();
    v67 = v65;
    v68 = [v66 whiteColor];
    [v67 setTintColor_];

    v69 = qword_27E1C5B70;
    v70 = sub_23BDC66C0();
    v71 = sub_23BDC66C0();
    v72 = [v69 localizedStringForKey:v70 value:0 table:v71];

    if (!v72)
    {
      sub_23BDC66F0();
      v72 = sub_23BDC66C0();
    }

    v73 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
    v74 = swift_initStackObject();
    *(v74 + 16) = v89;
    *(v74 + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
    *(v74 + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
    *(v74 + 32) = v42;
    *(v74 + 96) = v73;
    *(v74 + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
    *(v74 + 72) = v67;
    v75 = v67;
    v76 = v42;
    v77 = sub_23BDC69C0();
    swift_setDeallocating();
    v78 = *(v74 + 16);
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v79 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v72 arguments:v77];

    v61 = v79;
  }

  else
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v43 = qword_27E1C5B70;
    v44 = sub_23BDC66C0();
    v45 = sub_23BDC66C0();
    v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

    v47 = sub_23BDC66F0();
    v49 = v48;

    v96 = v47;
    v97 = v49;
    sub_23BD97C00();
    sub_23BDC6860();

    v50 = qword_27E1C5B70;
    v51 = sub_23BDC66C0();
    v52 = sub_23BDC66C0();
    v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

    v54 = sub_23BDC66F0();
    v56 = v55;

    v94 = v54;
    v95 = v56;
    sub_23BDC6860();

    v57 = sub_23BDC66C0();

    v58 = sub_23BDC66C0();

    v59 = [objc_opt_self() textProviderWithText:v57 shortText:v58];

    v60 = objc_opt_self();
    v61 = v59;
    v62 = [v60 grayColor];
    [v61 setTintColor_];
  }

  v80 = objc_allocWithZone(MEMORY[0x277CBB9B0]);
  v81 = v92;
  v82 = [v80 initWithTextProvider:v61 imageProvider:v92];

  v83 = sub_23BDB1D54();
  sub_23BD97D0C(v93);
  return v83;
}

uint64_t sub_23BDBB94C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDBB994()
{
  type metadata accessor for WindRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDBC80C(&unk_27E1C5D80, v1, type metadata accessor for WindRectangularTemplateFormatter);
  *&xmmword_27E1C77E0 = v0;
  *(&xmmword_27E1C77E0 + 1) = result;
  return result;
}

void *sub_23BDBBA74(void **a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for WindRectangularTemplateModel();
  v12 = a1 + *(v11 + 20);
  v13 = type metadata accessor for WindTemplateModel();
  v14 = v12[*(v13 + 24)];
  v121 = a1;
  if (v14 == 16)
  {
    goto LABEL_4;
  }

  v120 = sub_23BDC6490();
  v16 = v15;
  sub_23BDBC79C(&v12[*(v13 + 28)], v10);
  v17 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {

    sub_23BD962D4(v10, &unk_27E1C5D50, &unk_23BDC8F70);
LABEL_4:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v19 = qword_27E1C5B70;
    v20 = sub_23BDC66C0();
    v21 = sub_23BDC66C0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_23BDC66F0();
    v25 = v24;

    v124 = v23;
    v125 = v25;
    sub_23BD97C00();
    sub_23BDC6860();

    v26 = qword_27E1C5B70;
    v27 = sub_23BDC66C0();
    v28 = sub_23BDC66C0();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    v30 = sub_23BDC66F0();
    v32 = v31;

    *&v129 = v30;
    *(&v129 + 1) = v32;
    sub_23BDC6860();

    v33 = sub_23BDC66C0();

    v34 = sub_23BDC66C0();

    v35 = [objc_opt_self() textProviderWithText:v33 shortText:v34];

    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 grayColor];
    [v37 setTintColor_];

    goto LABEL_15;
  }

  v116 = v16;
  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v6, v2);
  (*(v18 + 8))(v10, v17);
  v114 = v124;
  v115 = v125;
  v129 = v126;
  sub_23BD96334(&v129);
  v128 = v127;
  sub_23BD96334(&v128);
  v117 = sub_23BDA61BC();
  v118 = v39;
  v40 = v121 + *(v11 + 28);
  v41 = v40[*(sub_23BDC6590() + 28)];
  v42 = sub_23BDC66C0();
  if (v41 == 1)
  {
    v43 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
    v44 = NWCGlyphPrefixedTextProvider();

    v42 = v43;
  }

  else
  {
    v44 = [objc_opt_self() textProviderWithText_];
  }

  v113 = objc_opt_self();
  v45 = [v113 systemCyanColor];
  v119 = v44;
  [v44 setTintColor_];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v46 = qword_27E1C5B70;
  v47 = sub_23BDC66C0();
  v48 = sub_23BDC66C0();
  v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

  sub_23BDC66F0();
  v112 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23BDC8C40;
  v51 = qword_27E1C5B70;
  v52 = sub_23BDC66C0();
  v53 = sub_23BDC66C0();
  v54 = [v51 localizedStringForKey:v52 value:0 table:v53];

  v55 = sub_23BDC66F0();
  v57 = v56;

  v122 = v55;
  v123 = v57;
  sub_23BD97C00();
  v58 = MEMORY[0x277D837D0];
  v59 = sub_23BDC6860();
  v61 = v60;
  *(v50 + 56) = v58;
  *(v50 + 64) = sub_23BD97C54();
  *(v50 + 32) = v59;
  *(v50 + 40) = v61;

  sub_23BDC6700();

  v62 = sub_23BDC66C0();

  v63 = sub_23BDC66C0();
  v64 = objc_opt_self();
  v65 = [v64 textProviderWithText:v62 shortText:v63];

  v66 = v65;
  v67 = v113;
  v68 = [v113 systemCyanColor];
  [v66 setTintColor_];
  v111 = v66;

  v69 = sub_23BDC66C0();

  v70 = [v64 textProviderWithText_];

  v71 = v70;
  v72 = [v67 systemCyanColor];
  [v71 setTintColor_];
  v120 = v71;

  v73 = sub_23BDC66C0();

  v74 = [v64 textProviderWithText_];

  v75 = v74;
  v76 = [v67 whiteColor];
  [v75 setTintColor_];

  v77 = sub_23BDC66C0();

  v78 = [v64 textProviderWithText_];

  v79 = v78;
  v80 = [v67 whiteColor];
  [v79 setTintColor_];

  v81 = sub_23BDC66C0();
  v82 = sub_23BDC66C0();
  v83 = NWCLocalizedString();

  if (!v83)
  {
    sub_23BDC66F0();
    v83 = sub_23BDC66C0();
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC88C0;
  *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
  *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
  v85 = v119;
  *(inited + 32) = v119;
  v86 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 96) = v86;
  v87 = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
  v88 = v111;
  *(inited + 72) = v111;
  *(inited + 136) = v86;
  *(inited + 144) = v87;
  v89 = v120;
  *(inited + 104) = v87;
  *(inited + 112) = v89;
  *(inited + 176) = v86;
  *(inited + 184) = v87;
  *(inited + 152) = v75;
  *(inited + 216) = v86;
  *(inited + 224) = v87;
  *(inited + 192) = v79;
  v90 = v88;
  v91 = v89;
  v92 = v75;
  v93 = v79;
  v94 = v85;
  v95 = sub_23BDC69C0();
  swift_setDeallocating();
  v96 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v97 = [objc_opt_self() textProviderWithFormat:v83 arguments:v95];

  v37 = v97;
LABEL_15:
  sub_23BD96820(0, &unk_27E1C5D60, 0x277D2C7A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  v100 = *v121;
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v101 = swift_initStackObject();
  *(v101 + 16) = xmmword_23BDC8C40;
  v102 = *MEMORY[0x277D2C790];
  *(v101 + 32) = sub_23BDC66F0();
  *(v101 + 40) = v103;
  *(v101 + 48) = v100;
  v104 = v100;
  v105 = sub_23BD984E0(v101);
  swift_setDeallocating();
  sub_23BD962D4(v101 + 32, &unk_27E1C5D20, qword_23BDC8D50);
  sub_23BD97E68(v105);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v106 = sub_23BDC6670();

  [v99 setMetadata_];

  v107 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v37 imageProvider:v99];
  v108 = sub_23BDB1D54();

  return v108;
}

uint64_t sub_23BDBC79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBC80C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_23BDBC8F0(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications19ConditionDataSource_rectangularFormatter;
  if (qword_27E1C55A8 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C7760;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ConditionDataSource();
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v14, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C55C8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27E1C7780;
  swift_unknownObjectRetain();

  v11 = *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v13;

  swift_unknownObjectRelease();
  return v10;
}

double sub_23BDBCA8C()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9800;
  *(v0 + 32) = xmmword_23BDC9810;
  *(v0 + 48) = xmmword_23BDC9820;
  *(v0 + 64) = xmmword_23BDC9830;
  *&result = 9;
  *(v0 + 80) = xmmword_23BDC9840;
  *(v0 + 96) = xmmword_23BDC9850;
  *(v0 + 112) = *MEMORY[0x277CBB668];
  return result;
}

uint64_t sub_23BDBCB44()
{
  v1 = [v0 family];
  v2 = &OBJC_IVAR____TtC20WeatherComplications19ConditionDataSource_rectangularFormatter;
  if (v1 != 11)
  {
    v2 = &OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  }

  v3 = &v0[*v2];
  v4 = *v3;
  v5 = *(v3 + 1);
  return swift_unknownObjectRetain();
}

id sub_23BDBCC78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConditionDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConditionDataSource()
{
  result = qword_27E1C5D98;
  if (!qword_27E1C5D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDBCD58(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v7 = sub_23BDC6630();
  v8 = sub_23BDC6810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23BD93000, v7, v8, "Migrating to widget.", v9, 2u);
    MEMORY[0x23EEBD7D0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v13 intent:0];

  (*(a1 + 16))(a1, v14);
}

char *sub_23BDBD018(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications13AQIDataSource_nonNumericalFormatter;
  if (qword_27E1C5638 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C7830;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for AQIDataSource();
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v14, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C5618;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27E1C77F0;
  swift_unknownObjectRetain();

  v11 = *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v13;

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23BDBD1B4()
{
  sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
  v0 = *(sub_23BDC63A0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_23BDC8C40;
  sub_23BDC6370();
  sub_23BD9B810();
  sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
  sub_23BD9B868();
  return sub_23BDC6880();
}

uint64_t sub_23BDBD300(uint64_t a1)
{
  v2 = sub_23BDBD34C(a1);
  v3 = &OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  if ((v2 & 1) == 0)
  {
    v3 = &OBJC_IVAR____TtC20WeatherComplications13AQIDataSource_nonNumericalFormatter;
  }

  v4 = (v1 + *v3);
  v5 = *v4;
  v6 = v4[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_23BDBD34C(uint64_t a1)
{
  v30 = a1;
  v2 = sub_23BDC63E0();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BDC6010();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = sub_23BDC6350();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDA38EC(v1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v13);
  v23 = sub_23BDC6240();
  if ((*(*(v23 - 8) + 48))(v13, 1, v23))
  {
    sub_23BD962D4(v13, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    sub_23BD962D4(v17, &qword_27E1C5CA0, &unk_23BDC9650);
    goto LABEL_5;
  }

  v28 = v2;
  v24 = v31;
  sub_23BDC6220();
  sub_23BD962D4(v13, &qword_27E1C5960, &qword_23BDC8F50);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  (*(v19 + 32))(v22, v17, v18);
  sub_23BDC65C0();
  v27 = sub_23BDC5FB0();
  (*(v29 + 8))(v9, v6);
  if (v27)
  {
    sub_23BDC6340();
    v25 = sub_23BDC63C0();
    (*(v24 + 8))(v5, v28);
    (*(v19 + 8))(v22, v18);
    return v25 & 1;
  }

  (*(v19 + 8))(v22, v18);
LABEL_5:
  v25 = 1;
  return v25 & 1;
}

id sub_23BDBD848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AQIDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AQIDataSource()
{
  result = qword_27E1C5DB8;
  if (!qword_27E1C5DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDBD928(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v7 = sub_23BDC6630();
  v8 = sub_23BDC6810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23BD93000, v7, v8, "Migrating to widget.", v9, 2u);
    MEMORY[0x23EEBD7D0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v13 intent:0];

  (*(a1 + 16))(a1, v14);
}

unint64_t sub_23BDBDB48()
{
  v1 = v0;
  sub_23BDC68B0();

  v2 = type metadata accessor for AQINonNumericalTemplateModel();
  MEMORY[0x23EEBD040](*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  MEMORY[0x23EEBD040](0x49656C616373202CLL, 0xEB00000000203A44);
  MEMORY[0x23EEBD040](*(v1 + *(v2 + 40)), *(v1 + *(v2 + 40) + 8));
  return 0xD000000000000015;
}

uint64_t sub_23BDBDC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_23BDC6590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_23BDC6010();
  v74 = *(v79 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDC63E0();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BDC6430();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = v68 - v18;
  v19 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v68 - v21;
  v23 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v68 - v25;
  v27 = sub_23BDC6350();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v77 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for TemplateData();
  v73 = a1;
  sub_23BDA38EC(a1 + *(v72 + 20), v22);
  v31 = sub_23BDC6240();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v22, 1, v31) == 1)
  {
    sub_23BD962D4(v22, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v28 + 56))(v26, 1, 1, v27);
LABEL_4:
    v33 = sub_23BD962D4(v26, &qword_27E1C5CA0, &unk_23BDC9650);
    v34 = v81;
    sub_23BD9D208(v33);
    v35 = type metadata accessor for AQINonNumericalTemplateModel();
    v36 = v34 + v35[5];
    result = sub_23BD9D20C(v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    v43 = 0xE000000000000000;
    v44 = 0xE000000000000000;
    v45 = 0xE000000000000000;
    goto LABEL_17;
  }

  sub_23BDC6220();
  (*(v32 + 8))(v22, v31);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  v70 = v27;
  v71 = v8;
  v69 = v28;
  (*(v28 + 32))(v77, v26, v27);
  sub_23BDC6320();
  sub_23BDC6340();
  v46 = sub_23BDC63B0();
  (*(v83 + 8))(v12, v9);
  v47 = *(v46 + 16);
  if (v47)
  {
    v84 = MEMORY[0x277D84F90];
    sub_23BDC6900();
    v48 = sub_23BD97BB4();
    v82 = *(v75 + 16);
    v83 = v48;
    v49 = *(v75 + 80);
    v68[1] = v46;
    v50 = v46 + ((v49 + 32) & ~v49);
    v51 = *(v75 + 72);
    v52 = (v75 + 8);
    v53 = v76;
    do
    {
      v82(v17, v50, v53);
      sub_23BDC6400();
      sub_23BDC6830();
      (*v52)(v17, v53);
      sub_23BDC68E0();
      v54 = *(v84 + 16);
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v50 += v51;
      --v47;
    }

    while (v47);

    v55 = v84;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v83 = v55;
  v56 = v80;
  v57 = v73;
  v58 = v74;
  (*(v74 + 16))(v71, v73, v79);
  sub_23BD9CC98(v57 + *(v72 + 24), v56);
  v59 = v78;
  v60 = sub_23BDC6410();
  if (v61)
  {
    v38 = v60;
  }

  else
  {
    v38 = 0;
  }

  if (v61)
  {
    v43 = v61;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  v39 = sub_23BDC63F0();
  v44 = v62;
  v40 = sub_23BDC6420();
  v63 = v77;
  v41 = sub_23BDC6310();
  v45 = v64;
  (*(v75 + 8))(v59, v76);
  (*(v69 + 8))(v63, v70);
  v34 = v81;
  (*(v58 + 32))(v81, v71, v79);
  v35 = type metadata accessor for AQINonNumericalTemplateModel();
  result = sub_23BDA8FD4(v80, v34 + v35[5]);
  v42 = v83;
LABEL_17:
  v65 = (v34 + v35[6]);
  *v65 = v38;
  v65[1] = v43;
  v66 = (v34 + v35[7]);
  *v66 = v39;
  v66[1] = v44;
  *(v34 + v35[8]) = v40;
  *(v34 + v35[9]) = v42;
  v67 = (v34 + v35[10]);
  *v67 = v41;
  v67[1] = v45;
  *(v34 + v35[11]) = 0;
  return result;
}

uint64_t sub_23BDBE31C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BD9D208();
  v5 = a2 + a1[5];
  result = sub_23BD9D20C(v4);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = a1[9];
  *(a2 + a1[8]) = 0;
  *(a2 + v10) = MEMORY[0x277D84F90];
  v11 = a1[11];
  v12 = (a2 + a1[10]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(a2 + v11) = 0;
  return result;
}

unint64_t sub_23BDBE390(uint64_t a1)
{
  result = sub_23BDBE3B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDBE3B8()
{
  result = qword_27E1C5DC8;
  if (!qword_27E1C5DC8)
  {
    type metadata accessor for AQINonNumericalTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5DC8);
  }

  return result;
}

uint64_t type metadata accessor for AQINonNumericalTemplateModel()
{
  result = qword_27E1C5DD0;
  if (!qword_27E1C5DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDBE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDBE594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDBE6A0()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BDBE760();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDBE760()
{
  if (!qword_27E1C59E0)
  {
    sub_23BD97BB4();
    v0 = sub_23BDC67B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C59E0);
    }
  }
}

unint64_t sub_23BDBE7B8()
{
  v1 = 7104878;
  sub_23BDC68B0();

  v2 = type metadata accessor for AQINumericalTemplateModel();
  v3 = (v0 + *(v2 + 24));
  if (v3[1])
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v10 = *v3;
    sub_23BD9CD8C();
    v5 = sub_23BDC6870();
    v4 = v6;
  }

  MEMORY[0x23EEBD040](v5, v4);

  MEMORY[0x23EEBD040](0x49656C616373202CLL, 0xEB00000000203A44);
  v7 = (v0 + *(v2 + 36));
  if (v7[1])
  {
    v1 = *v7;
    v8 = v7[1];
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x23EEBD040](v1, v8);

  return 0xD000000000000011;
}

id sub_23BDBE8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BDC6430();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - v9;
  v11 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - v13;
  v15 = sub_23BDC6350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TemplateData();
  sub_23BDA38EC(a1 + *(v20 + 20), v10);
  v21 = sub_23BDC6240();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_23BD962D4(v10, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_23BDC6220();
    (*(v22 + 8))(v10, v21);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v36 = sub_23BDC6010();
      (*(*(v36 - 8) + 16))(a2, a1, v36);
      v37 = *(v20 + 24);
      v38 = type metadata accessor for AQINumericalTemplateModel();
      sub_23BD9CC98(a1 + v37, a2 + v38[5]);
      v61 = sub_23BDC6330();
      v39 = v62;
      sub_23BDC6320();
      v40 = sub_23BDC63F0();
      v59 = v41;
      v60 = v40;
      (*(v63 + 8))(v39, v64);
      v42 = sub_23BDC08E8(v19);
      v44 = v43;
      v46 = v45;
      v47 = v42;
      v49 = v48;
      v50 = sub_23BDC6310();
      v52 = v51;
      result = (*(v16 + 8))(v19, v15);
      v53 = a2 + v38[6];
      v54 = v60;
      *v53 = v61;
      *(v53 + 8) = 0;
      v55 = (a2 + v38[7]);
      v56 = v59;
      *v55 = v54;
      v55[1] = v56;
      v57 = a2 + v38[8];
      *v57 = v44;
      *(v57 + 8) = v46;
      *(v57 + 16) = v47;
      *(v57 + 24) = v49;
      v58 = (a2 + v38[9]);
      *v58 = v50;
      v58[1] = v52;
      return result;
    }
  }

  sub_23BD962D4(v14, &qword_27E1C5CA0, &unk_23BDC9650);
  v23 = sub_23BDC6010();
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  v24 = *(v20 + 24);
  v25 = type metadata accessor for AQINumericalTemplateModel();
  sub_23BD9CC98(a1 + v24, a2 + v25[5]);
  if (qword_27E1C5620 != -1)
  {
    swift_once();
  }

  v26 = qword_27E1C7800;
  v27 = *algn_27E1C7808;
  v28 = dword_27E1C7810;
  v29 = qword_27E1C7818;
  v64 = qword_27E1C7818;
  v30 = a2 + v25[6];
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = (a2 + v25[7]);
  *v31 = 0;
  v31[1] = 0;
  v32 = a2 + v25[8];
  *v32 = v26;
  *(v32 + 8) = v27;
  *(v32 + 16) = v28;
  *(v32 + 24) = v29;
  v33 = (a2 + v25[9]);
  *v33 = 0;
  v33[1] = 0;

  v34 = v64;

  return v34;
}

double sub_23BDBEE4C@<D0>(uint64_t a1@<X8>)
{
  sub_23BD97BB4();
  v2 = MEMORY[0x277D84F90];
  v3 = 8;
  v4 = &qword_284E8CD98;
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;

    sub_23BDC6830();
    v8 = sub_23BDC6540();
    v10 = v9;
    v11 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23BDA1C2C(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_23BDA1C2C((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v11;
    v4 += 3;
    --v3;
  }

  while (v3);
  sub_23BD9628C(&qword_27E1C5DE8, &unk_23BDC99B0);
  swift_arrayDestroy();
  v15.n128_u64[0] = 0x4045000000000000;
  v16 = sub_23BDC0718(v2, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_23BD9D208(v23);
  v24 = type metadata accessor for AQINumericalTemplateModel();
  v25 = a1 + v24[5];
  sub_23BD9D20C(v24);
  v26 = a1 + v24[6];
  *v26 = 42;
  *(v26 + 8) = 0;
  *(a1 + v24[7]) = xmmword_23BDC9940;
  v27 = a1 + v24[8];
  *v27 = v16;
  *(v27 + 8) = v18;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  result = 2533054.62;
  *(a1 + v24[9]) = xmmword_23BDC9950;
  return result;
}

unint64_t sub_23BDBF014(uint64_t a1)
{
  result = sub_23BDBF03C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDBF03C()
{
  result = qword_27E1C5DE0;
  if (!qword_27E1C5DE0)
  {
    type metadata accessor for AQINumericalTemplateModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5DE0);
  }

  return result;
}

uint64_t type metadata accessor for AQINumericalTemplateModel()
{
  result = qword_27E1C5DF0;
  if (!qword_27E1C5DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDBF0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDBF214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDBF31C()
{
  sub_23BDC6010();
  if (v0 <= 0x3F)
  {
    sub_23BDC6590();
    if (v1 <= 0x3F)
    {
      sub_23BD9D15C(319, &qword_27E1C59C8);
      if (v2 <= 0x3F)
      {
        sub_23BD9D15C(319, &qword_27E1C59D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BDBF400()
{
  type metadata accessor for AQINumericalTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC0568(&unk_27E1C5E08, v1, type metadata accessor for AQINumericalTemplateFormatter);
  *&xmmword_27E1C77F0 = v0;
  *(&xmmword_27E1C77F0 + 1) = result;
  return result;
}

id sub_23BDBF4E0(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  v6 = objc_opt_self();
  v7 = [v6 textProviderWithText_];

  v8 = type metadata accessor for AQINumericalTemplateModel();
  v9 = (a1 + *(v8 + 24));
  if (*(v9 + 8) == 1)
  {
    v10 = objc_opt_self();
    v11 = v7;
    v12 = [v10 systemCyanColor];
    [v11 setTintColor_];

    sub_23BDC6600();
  }

  else
  {
    v13 = *v9;
    [v7 setTintColor_];
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v14 = sub_23BDC66C0();

  v15 = [v6 textProviderWithText_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBBA70]) initWithLine1TextProvider:v7 line2TextProvider:v15];
  return v16;
}

id sub_23BDBF734(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDBFAB0(a1, v5);
  v6 = sub_23BDBA204(&v5[v2[5]], v5[v2[6] + 8]);
  v7 = [objc_opt_self() systemCyanColor];
  [v6 setTintColor_];

  sub_23BDBFB14(v5);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E1C5B70;
  v9 = sub_23BDC66C0();
  v10 = sub_23BDC66C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  if (!v11)
  {
    sub_23BDC66F0();
    v11 = sub_23BDC66C0();
  }

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v13 = a1 + v2[6];
  if (*(v13 + 8))
  {
    v14 = sub_23BDC6600();
  }

  else
  {
    v28 = *v13;
    sub_23BD9CD8C();
    v14 = sub_23BDC6870();
  }

  v16 = v14;
  v17 = v15;
  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  v18 = sub_23BDC69C0();
  swift_setDeallocating();
  v19 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v20 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v11 arguments:v18];

  v21 = (a1 + v2[7]);
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  v24 = sub_23BDC66C0();

  v25 = [objc_opt_self() textProviderWithText_];

  v26 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v6 body1TextProvider:v20 body2TextProvider:v25];
  return v26;
}

uint64_t sub_23BDBFAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AQINumericalTemplateModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBFB14(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDBFB70(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v7 = (a1 + *(type metadata accessor for AQINumericalTemplateModel() + 24));
  if (v7[1])
  {
    v8 = sub_23BDC6600();
  }

  else
  {
    v17 = *v7;
    sub_23BD9CD8C();
    v8 = sub_23BDC6870();
  }

  v10 = v8;
  v11 = v9;
  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  v12 = sub_23BDC69C0();
  swift_setDeallocating();
  v13 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v14 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v5 arguments:v12];

  v15 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider_];
  return v15;
}

id sub_23BDBFDC4(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel();
  v3 = (a1 + *(v2 + 24));
  if ((v3[1] & 1) != 0 || (v4 = (a1 + *(v2 + 28)), (v5 = v4[1]) == 0))
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v20 = qword_27E1C5B70;
    v21 = sub_23BDC66C0();
    v22 = sub_23BDC66C0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    sub_23BDC66F0();
  }

  else
  {
    v6 = *v3;
    v7 = *v4;
    v8 = qword_27E1C55D0;
    v9 = v4[1];

    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_27E1C5B70;
    v11 = sub_23BDC66C0();
    v12 = sub_23BDC66C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_23BDC8C50;
    sub_23BD9CD8C();
    v15 = sub_23BDC6870();
    v17 = v16;
    v18 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v19 = sub_23BD97C54();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 64) = v19;
    *(v14 + 72) = v7;
    *(v14 + 80) = v5;
    sub_23BDC6700();
  }

  v24 = sub_23BDC66C0();

  v25 = [objc_opt_self() textProviderWithText_];

  v26 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v26;
}

id sub_23BDC00F4(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel();
  v3 = (a1 + *(v2 + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 4);
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v7 = sub_23BDC6770();
  sub_23BD96820(0, &qword_27E1C5A68, 0x277CCABB0);
  v8 = sub_23BDC6770();
  v9 = objc_opt_self();
  LODWORD(v10) = v6;
  [v9 gaugeProviderWithStyle:0 gaugeColors:v7 gaugeColorLocations:v8 fillFraction:v10];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v11 = qword_27E1C5B70;
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_23BDC66F0();
    v14 = sub_23BDC66C0();
  }

  v15 = objc_opt_self();
  v16 = [v15 textProviderWithText_];

  [v16 setTintColor_];
  v17 = (a1 + *(v2 + 24));
  if (v17[1])
  {
    sub_23BDC6600();
  }

  else
  {
    v21 = *v17;
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v18 = sub_23BDC66C0();

  v19 = [v15 textProviderWithText_];

  return v19;
}

id sub_23BDC0384(uint64_t a1, Class *a2)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1C5B70;
  v5 = sub_23BDC66C0();
  v6 = sub_23BDC66C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_23BDC66F0();
    v7 = sub_23BDC66C0();
  }

  v8 = objc_opt_self();
  v9 = [v8 textProviderWithText_];

  v10 = (a1 + *(type metadata accessor for AQINumericalTemplateModel() + 24));
  if (v10[1])
  {
    sub_23BDC6600();
  }

  else
  {
    v15 = *v10;
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v11 = sub_23BDC66C0();

  v12 = [v8 textProviderWithText_];

  v13 = [objc_allocWithZone(*a2) initWithLine1TextProvider:v9 line2TextProvider:v12];
  return v13;
}

uint64_t sub_23BDC0568(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23BDC05B0()
{
  v0 = sub_23BDC05DC();
  qword_27E1C7800 = v1;
  *algn_27E1C7808 = v2;
  dword_27E1C7810 = LODWORD(v0);
  qword_27E1C7818 = v3;
}

float sub_23BDC05DC()
{
  sub_23BD9628C(&qword_27E1C5C80, qword_23BDC9A30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9A20;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 grayColor];
  *(v0 + 40) = [v1 grayColor];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23BDC9A20;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v3 = *MEMORY[0x277CBB6C8];
  v4 = [v1 whiteColor];
  return v3;
}

uint64_t sub_23BDC0718(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v16 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16 * v3 + 16);
    v6 = (a1 + 40);
    v7 = *(a1 + 16);
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      MEMORY[0x23EEBD070]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23BDC6790();
      }

      sub_23BDC67A0();
      v10 = v17;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      MEMORY[0x23EEBD070]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23BDC6790();
      }

      sub_23BDC67A0();

      v6 += 2;
      --v7;
    }

    while (v7);
    MEMORY[0x23EEBCE60](a1, v2);
    v12 = *(v4 + 16 * v3);
  }

  else
  {
    MEMORY[0x23EEBCE60](a2);
    return MEMORY[0x277D84F90];
  }

  return v10;
}

float sub_23BDC08E8(uint64_t a1)
{
  v2 = sub_23BDC6480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BDC6450();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BDC63E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = a1;
  sub_23BDC6340();
  sub_23BDC63D0();
  (*(v13 + 8))(v16, v12);
  v17 = sub_23BDC6440();
  (*(v8 + 8))(v11, v7);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_23BD97BB4();
    v21 = *(v3 + 16);
    v20 = v3 + 16;
    v40 = v21;
    v41 = v19;
    v22 = *(v20 + 64);
    v38[0] = v17;
    v23 = v17 + ((v22 + 32) & ~v22);
    v39 = *(v20 + 56);
    v24 = MEMORY[0x277D84F90];
    v42 = v20;
    do
    {
      v40(v6, v23, v2);
      sub_23BDC6460();
      v25 = sub_23BDC6830();
      sub_23BDC6470();
      (*(v20 - 8))(v6, v2);
      v26 = sub_23BDC6540();
      v28 = v27;
      v29 = v26;
      v30 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_23BDA1C2C(0, *(v24 + 2) + 1, 1, v24);
      }

      v32 = *(v24 + 2);
      v31 = *(v24 + 3);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_23BDA1C2C((v31 > 1), v32 + 1, 1, v24);
      }

      *(v24 + 2) = v32 + 1;
      v33 = &v24[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v29;
      v23 += v39;
      --v18;
    }

    while (v18);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v34.n128_f64[0] = sub_23BDC6330();
  sub_23BDC0718(v24, v34);
  v36 = v35;

  return v36;
}

__n128 sub_23BDC0C88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BDC0C94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BDC0CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BDC0D2C()
{
  type metadata accessor for WindTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC3598(&unk_27E1C5E50, v1, type metadata accessor for WindTemplateFormatter);
  *&xmmword_27E1C7820 = v0;
  *(&xmmword_27E1C7820 + 1) = result;
  return result;
}

id sub_23BDC0E0C(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v11 + 28), v10);
    v12 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v6, v2);
      (*(v13 + 8))(v10, v12);
      v32 = v29;
      sub_23BD96334(&v32);
      v31 = v30;
      sub_23BD96334(&v31);
      v20 = sub_23BDC66C0();

      v21 = objc_opt_self();
      v22 = [v21 textProviderWithText_];

      v23 = objc_opt_self();
      v17 = v22;
      v24 = [v23 systemCyanColor];
      [v17 setTintColor_];

      v25 = sub_23BDC66C0();

      v26 = [v21 textProviderWithText_];

      v19 = [objc_allocWithZone(MEMORY[0x277CBBA70]) initWithLine1TextProvider:v17 line2TextProvider:v26];
      goto LABEL_6;
    }

    sub_23BDC11E0(v10);
  }

  sub_23BDC6600();
  v14 = sub_23BDC66C0();

  v15 = [objc_opt_self() textProviderWithText_];

  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemCyanColor];
  [v17 setTintColor_];

  v19 = [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
LABEL_6:

  return v19;
}

uint64_t sub_23BDC11E0(uint64_t a1)
{
  v2 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDC1248(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = sub_23BDC6590();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WindTemplateModel();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_23BDC1818(a1, v19, type metadata accessor for WindTemplateModel);
  sub_23BDC1818(&v19[v16[5]], v15, MEMORY[0x277D2C7F0]);
  sub_23BDBC79C(&v19[v16[7]], v11);
  v20 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v45 = *(v20 - 8);
  v49 = *(v45 + 48);
  v21 = v49(v11, 1, v20) == 1;
  sub_23BDC11E0(v11);
  v22 = sub_23BDBA204(v15, v21);
  sub_23BDC1880(v15, MEMORY[0x277D2C7F0]);
  v23 = [objc_opt_self() systemCyanColor];
  v51 = v22;
  [v22 setTintColor_];

  sub_23BDC1880(v19, type metadata accessor for WindTemplateModel);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v24 = qword_27E1C5B70;
  v25 = sub_23BDC66C0();
  v26 = sub_23BDC66C0();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23BDC8C40;
  v29 = v50;
  if (*(v50 + v16[6]) == 16)
  {
    v30 = sub_23BDC6600();
  }

  else
  {
    v30 = sub_23BDC6490();
  }

  v32 = v30;
  v33 = v31;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_23BD97C54();
  *(v28 + 32) = v32;
  *(v28 + 40) = v33;
  sub_23BDC6700();

  v34 = sub_23BDC66C0();

  v35 = objc_opt_self();
  v36 = [v35 textProviderWithText_];

  sub_23BDBC79C(v29 + v16[7], v9);
  if (v49(v9, 1, v20) == 1)
  {
    sub_23BDC11E0(v9);
    sub_23BDC6600();
  }

  else
  {
    v37 = v46;
    sub_23BDC6070();
    sub_23BDC5F10();
    (*(v47 + 8))(v37, v48);
    (*(v45 + 8))(v9, v20);
  }

  v38 = sub_23BDC66C0();

  v39 = [v35 textProviderWithText_];

  v40 = objc_allocWithZone(MEMORY[0x277CBBA08]);
  v41 = v51;
  v42 = [v40 initWithHeaderTextProvider:v51 body1TextProvider:v36 body2TextProvider:v39];

  return v42;
}

uint64_t sub_23BDC1818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDC1880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23BDC18E0(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) == 16)
  {
    goto LABEL_4;
  }

  v12 = sub_23BDC6490();
  v14 = v13;
  sub_23BDBC79C(a1 + *(v11 + 28), v10);
  v15 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {

    sub_23BDC11E0(v10);
LABEL_4:
    sub_23BDC6600();
    goto LABEL_8;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v6, v2);
  (*(v16 + 8))(v10, v15);
  v30 = v28[1];
  sub_23BD96334(&v30);
  v29 = v28[2];
  sub_23BD96334(&v29);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1C5B70;
  v18 = sub_23BDC66C0();
  v19 = sub_23BDC66C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23BDC8C50;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_23BD97C54();
  *(v21 + 64) = v23;
  *(v21 + 32) = v12;
  *(v21 + 40) = v14;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 72) = v28[0];
  sub_23BDC6700();

LABEL_8:
  v24 = sub_23BDC66C0();

  v25 = [objc_opt_self() textProviderWithText_];

  v26 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider_];
  return v26;
}

id sub_23BDC1CB4(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v38 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) == 16)
  {
    goto LABEL_4;
  }

  v12 = sub_23BDC6490();
  v14 = v13;
  sub_23BDBC79C(a1 + *(v11 + 28), v10);
  v15 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {

    sub_23BDC11E0(v10);
LABEL_4:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v17 = qword_27E1C5B70;
    v18 = sub_23BDC66C0();
    v19 = sub_23BDC66C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = sub_23BDC66F0();
    v23 = v22;

    goto LABEL_10;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v6, v2);
  (*(v16 + 8))(v10, v15);
  v43 = v40;
  sub_23BD96334(&v43);
  v42 = v41;
  sub_23BD96334(&v42);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v24 = qword_27E1C5B70;
  v25 = sub_23BDC66C0();
  v26 = sub_23BDC66C0();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23BDC9180;
  v29 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v30 = sub_23BD97C54();
  *(v28 + 64) = v30;
  *(v28 + 32) = v12;
  *(v28 + 40) = v14;
  *(v28 + 96) = v29;
  *(v28 + 104) = v30;
  *(v28 + 72) = v39;
  v31 = sub_23BDA61BC();
  *(v28 + 136) = v29;
  *(v28 + 144) = v30;
  *(v28 + 112) = v31;
  *(v28 + 120) = v32;
  v21 = sub_23BDC6700();
  v23 = v33;

LABEL_10:
  v38[0] = v21;
  v38[1] = v23;
  sub_23BD97C00();
  sub_23BDC6860();

  v34 = sub_23BDC66C0();

  v35 = [objc_opt_self() textProviderWithText_];

  v36 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v36;
}

id sub_23BDC218C(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v11 + 28), v10);
    v12 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v6, v2);
      (*(v13 + 8))(v10, v12);
      v29 = v26;
      sub_23BD96334(&v29);
      v28 = v27;
      sub_23BD96334(&v28);
      v17 = sub_23BDC66C0();

      v18 = objc_opt_self();
      v19 = [v18 textProviderWithText_];

      v20 = sub_23BDC66C0();

      v15 = [v18 textProviderWithText_];

      v16 = [objc_allocWithZone(MEMORY[0x277CBB7A8]) initWithLine1TextProvider:v19 line2TextProvider:v15];
      goto LABEL_6;
    }

    sub_23BDC11E0(v10);
  }

  sub_23BDC6600();
  v14 = sub_23BDC66C0();

  v15 = [objc_opt_self() textProviderWithText_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBB798]) initWithTextProvider_];
LABEL_6:

  v21 = objc_opt_self();
  v22 = v16;
  v23 = [v21 systemCyanColor];
  [v22 setTintColor_];

  return v22;
}

id sub_23BDC2514(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v11 + 28), v10);
    v12 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v6, v2);
      (*(v13 + 8))(v10, v12);
      v34 = v31;
      sub_23BD96334(&v34);
      v33 = v32;
      sub_23BD96334(&v33);
      v20 = sub_23BDC66C0();

      v21 = objc_opt_self();
      v22 = [v21 textProviderWithText_];

      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 whiteColor];
      [v24 setTintColor_];

      v26 = sub_23BDC66C0();

      v27 = [v21 textProviderWithText_];

      v17 = v27;
      v28 = [v23 whiteColor];
      [v17 setTintColor_];

      v19 = [objc_allocWithZone(MEMORY[0x277CBB808]) initWithLine1TextProvider:v24 line2TextProvider:v17];
      goto LABEL_6;
    }

    sub_23BDC11E0(v10);
  }

  sub_23BDC6600();
  v14 = sub_23BDC66C0();

  v15 = [objc_opt_self() textProviderWithText_];

  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  [v17 setTintColor_];

  v19 = [objc_allocWithZone(MEMORY[0x277CBB7F8]) initWithTextProvider_];
LABEL_6:

  return v19;
}

id sub_23BDC2928(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  sub_23BDBC79C(a1 + *(v11 + 28), v10);
  v12 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_23BDC11E0(v10);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v14 = qword_27E1C5B70;
    v15 = sub_23BDC66C0();
    v16 = sub_23BDC66C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23BDC8C40;
    v19 = sub_23BDA61BC();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_23BD97C54();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_23BDC6700();
  }

  else
  {
    sub_23BDC6070();
    sub_23BDC5F10();
    (*(v3 + 8))(v6, v2);
    (*(v13 + 8))(v10, v12);
  }

  v22 = sub_23BDC66C0();

  v23 = objc_opt_self();
  v24 = [v23 textProviderWithText_];

  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 systemCyanColor];
  [v26 setTintColor_];

  if (*(a1 + *(v11 + 24)) == 16)
  {
    sub_23BDC6600();
  }

  else
  {
    sub_23BDC6490();
  }

  v28 = sub_23BDC66C0();

  v29 = [v23 textProviderWithText_];

  v30 = [objc_allocWithZone(MEMORY[0x277CBB900]) initWithInnerTextProvider:v26 outerTextProvider:v29];
  return v30;
}

uint64_t sub_23BDC2D68(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v33 = sub_23BDA61BC();
  v12 = v11;
  v13 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v13 + 24)) == 16)
  {
    v14 = sub_23BDC6600();
  }

  else
  {
    v14 = sub_23BDC6490();
  }

  v16 = v14;
  v17 = v15;
  sub_23BDBC79C(a1 + *(v13 + 28), v10);
  v18 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    sub_23BDC11E0(v10);
    v20 = sub_23BDC6600();
    v22 = v21;
  }

  else
  {
    sub_23BDC6070();
    sub_23BDC5F20();
    (*(v3 + 8))(v6, v2);
    (*(v19 + 8))(v10, v18);
    v20 = v36;
    v22 = v37;
    v41 = v38;
    sub_23BD96334(&v41);
    v40 = v39;
    sub_23BD96334(&v40);
  }

  sub_23BD9628C(&qword_27E1C5E28, &qword_23BDC9AC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC9180;
  v24 = *MEMORY[0x277D2C770];
  *(inited + 32) = sub_23BDC66F0();
  *(inited + 40) = v25;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v26 = *MEMORY[0x277D2C778];
  *(inited + 64) = sub_23BDC66F0();
  *(inited + 72) = v27;
  *(inited + 80) = v20;
  *(inited + 88) = v22;
  v28 = *MEMORY[0x277D2C780];
  *(inited + 96) = sub_23BDC66F0();
  *(inited + 104) = v29;
  *(inited + 112) = v33;
  *(inited + 120) = v12;
  v30 = sub_23BD983CC(inited);
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5E30, &qword_23BDC9AD0);
  swift_arrayDestroy();
  v35 = v30;
  sub_23BD9628C(&qword_27E1C5E38, &qword_23BDC9AD8);
  sub_23BD9628C(&qword_27E1C5E40, &unk_23BDC9AE0);
  if (swift_dynamicCast())
  {
    return v34;
  }

  else
  {
    return 0;
  }
}

void *sub_23BDC3108(uint64_t a1, unint64_t *a2, uint64_t *a3, Class *a4)
{
  sub_23BD96820(0, a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  if (sub_23BDC2D68(a1))
  {
    sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
    v8 = sub_23BDC6670();
  }

  else
  {
    v8 = 0;
  }

  [v7 setMetadata_];

  v9 = [objc_allocWithZone(*a4) initWithImageProvider_];
  v10 = sub_23BDB1C20();

  return v10;
}

id sub_23BDC3210(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for WindTemplateModel();
  if (*(a1 + *(v11 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v11 + 28), v10);
    v12 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v6, v2);
      (*(v13 + 8))(v10, v12);
      v29 = v26;
      sub_23BD96334(&v29);
      v28 = v27;
      sub_23BD96334(&v28);
      v21 = sub_23BDC66C0();

      v22 = objc_opt_self();
      v18 = [v22 textProviderWithText_];

      v23 = sub_23BDC66C0();

      v19 = [v22 textProviderWithText_];

      v20 = [objc_allocWithZone(MEMORY[0x277CBB760]) initWithLine1TextProvider:v18 line2TextProvider:v19];
      goto LABEL_6;
    }

    sub_23BDC11E0(v10);
  }

  sub_23BDC6600();
  v14 = sub_23BDC66C0();

  v15 = [objc_opt_self() textProviderWithText_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBB750]) initWithTextProvider_];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemCyanColor];
  [v18 setTintColor_];
  v20 = v18;
LABEL_6:

  return v20;
}

uint64_t sub_23BDC3598(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDC35E0(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  result = *&aModulars[8 * a1];
  v3 = *&aDgcirculdgrect[8 * a1 + 24];
  return result;
}

double sub_23BDC3614()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9AF0;
  *(v0 + 32) = xmmword_23BDC9B00;
  *(v0 + 48) = xmmword_23BDC9B10;
  *(v0 + 64) = xmmword_23BDC9B20;
  *(v0 + 80) = xmmword_23BDC9830;
  *(v0 + 96) = xmmword_23BDC9840;
  *&result = 11;
  *(v0 + 112) = xmmword_23BDC9850;
  *(v0 + 128) = *MEMORY[0x277CBB668];
  return result;
}

double sub_23BDC36A0()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9B30;
  *(v0 + 32) = xmmword_23BDC9B00;
  *(v0 + 48) = xmmword_23BDC9B10;
  *(v0 + 64) = xmmword_23BDC9B20;
  *&result = 7;
  *(v0 + 80) = xmmword_23BDC9830;
  *(v0 + 96) = xmmword_23BDC9840;
  v2 = *MEMORY[0x277CBB668];
  *(v0 + 112) = 12;
  *(v0 + 120) = v2;
  return result;
}

uint64_t sub_23BDC3724()
{
  off_27E1C5E60 = *sub_23BDC6620();
}

uint64_t sub_23BDC3758@<X0>(void *a1@<X8>)
{
  v82 = a1;
  v1 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v81 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v83 = &v80 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v86 = &v80 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v80 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v80 - v11;
  v13 = sub_23BDC6010();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  if (qword_27E1C5630 != -1)
  {
    swift_once();
  }

  v21 = *(*off_27E1C5E60 + 136);
  v22 = *off_27E1C5E60 + 136;
  v87 = v21(0, 0, 0);
  v84 = v23;
  v93 = MEMORY[0x277D84F90];
  sub_23BD9D208(v87);
  v24 = sub_23BDC5F80();
  MEMORY[0x28223BE20](v24);
  *(&v80 - 2) = &v93;
  sub_23BDC5FD0();
  v25 = *(v14 + 8);
  v25(v18, v13);
  v25(v20, v13);
  v92 = MEMORY[0x277D84F90];
  v21(0x3FE3333333333333, 0, 1);
  sub_23BDC60B0();
  v26 = sub_23BDC60C0();
  v27 = *(v26 - 8);
  v88 = v27[7];
  v89 = (v27 + 7);
  v88(v12, 0, 1, v26);
  v28 = sub_23BDC66C0();

  v29 = sub_23BDC66C0();
  v90 = v27[6];
  v91 = (v27 + 6);
  v30 = 0;
  if (v90(v12, 1, v26) != 1)
  {
    v30 = sub_23BDC60A0();
    (v27[1])(v12, v26);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v28 middleString:v29 bottomString:0 isDay:1 timeZone:v30];

  MEMORY[0x23EEBD070]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v79 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23BDC6790();
  }

  sub_23BDC67A0();
  v21(0x3FD3333333333333, 0, 1);
  v31 = v93;
  if (v93[2] < 2uLL)
  {
    __break(1u);
LABEL_29:
    sub_23BDC6790();
    goto LABEL_12;
  }

  v33 = v93[6];
  v32 = v93[7];

  v34 = v85;
  sub_23BDC60B0();
  v88(v34, 0, 1, v26);
  v35 = sub_23BDC66C0();

  v36 = sub_23BDC66C0();
  v37 = sub_23BDC66C0();

  if (v90(v34, 1, v26) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_23BDC60A0();
    (v27[1])(v34, v26);
  }

  v22 = v86;
  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v35 middleString:v36 bottomString:v37 isDay:1 timeZone:v38];

  MEMORY[0x23EEBD070]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_29;
  }

LABEL_12:
  sub_23BDC67A0();
  if (v31[2] < 3uLL)
  {
    __break(1u);
LABEL_31:
    sub_23BDC6790();
    goto LABEL_17;
  }

  v39 = v31[8];
  v40 = v31[9];

  sub_23BDC60B0();
  v88(v22, 0, 1, v26);
  v41 = sub_23BDC66C0();
  v42 = sub_23BDC66C0();
  v43 = sub_23BDC66C0();

  v44 = v90(v22, 1, v26);
  v80 = v27;
  if (v44 == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_23BDC60A0();
    (v27[1])(v22, v26);
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v41 middleString:v42 bottomString:v43 isDay:1 timeZone:v45];

  MEMORY[0x23EEBD070]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

LABEL_17:
  sub_23BDC67A0();
  if (v31[2] < 4uLL)
  {
    __break(1u);
LABEL_33:
    sub_23BDC6790();
    goto LABEL_22;
  }

  v46 = v31[10];
  v47 = v31[11];

  v48 = v83;
  sub_23BDC60B0();
  v88(v48, 0, 1, v26);
  v49 = sub_23BDC66C0();
  v50 = sub_23BDC66C0();
  v51 = sub_23BDC66C0();

  if (v90(v48, 1, v26) == 1)
  {
    v52 = 0;
    v27 = v80;
  }

  else
  {
    v52 = sub_23BDC60A0();
    v27 = v80;
    (v80)[1](v48, v26);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v49 middleString:v50 bottomString:v51 isDay:1 timeZone:v52];

  MEMORY[0x23EEBD070]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

LABEL_22:
  sub_23BDC67A0();
  if (v31[2] < 5uLL)
  {
    __break(1u);
LABEL_35:
    sub_23BDC6790();
    goto LABEL_27;
  }

  v53 = v31[12];
  v54 = v31[13];

  v55 = v81;
  sub_23BDC60B0();
  v88(v55, 0, 1, v26);
  v56 = sub_23BDC66C0();

  v57 = sub_23BDC66C0();
  v58 = sub_23BDC66C0();

  if (v90(v55, 1, v26) == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_23BDC60A0();
    (v27[1])(v55, v26);
  }

  LOBYTE(v26) = 1;
  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v56 middleString:v57 bottomString:v58 isDay:1 timeZone:v59];

  MEMORY[0x23EEBD070]();
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_27:
  sub_23BDC67A0();
  v60 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v61 = sub_23BDC6770();

  v62 = [v60 initWithEntries_];

  v63 = *(**sub_23BDC6620() + 136);

  v64 = v63(0x3FE3333333333333, 0, 1);
  v66 = v65;

  v67 = type metadata accessor for ChanceRainRectangularTemplateModel();
  v68 = v82;
  v69 = v82 + v67[5];
  sub_23BD9D208(v67);
  v70 = type metadata accessor for ChanceRainTemplateModel();
  v71 = &v69[v70[5]];
  sub_23BD9D20C(v70);
  v72 = &v69[v70[6]];
  *v72 = 0x3FE3333333333333;
  v72[8] = 0;
  v73 = &v69[v70[7]];
  *v73 = v64;
  v73[1] = v66;
  v69[v70[8]] = v26;
  v74 = &v69[v70[9]];
  *v74 = 0xD000000000000013;
  *(v74 + 1) = 0x800000023BDC7AF0;
  v75 = v68 + v67[6];
  v76 = sub_23BDC6000();
  v77 = v68 + v67[7];
  sub_23BD9D20C(v76);

  *v68 = v62;
  return result;
}

uint64_t sub_23BDC4350(uint64_t a1, uint64_t *a2)
{
  if (qword_27E1C55D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1C5B78;
  v4 = sub_23BDC5FA0();
  v5 = [v3 stringFromDate_];

  v6 = sub_23BDC66F0();
  v8 = v7;

  v9 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_23BDA1B20(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_23BDA1B20((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 16 * v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  return result;
}

uint64_t sub_23BDC4474(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5E68, type metadata accessor for ChanceRainRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ChanceRainRectangularTemplateModel()
{
  result = qword_27E1C5E70;
  if (!qword_27E1C5E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDC4534(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ChanceRainTemplateModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BDC46B4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChanceRainTemplateModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDC4820()
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChanceRainTemplateModel();
    if (v2 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v3 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDC492C(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5B98, type metadata accessor for ChanceRainRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDC4984(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5E80, type metadata accessor for ChanceRainRectangularTemplateModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDC49DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDC4A24()
{
  type metadata accessor for AQINonNumericalTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC5678(&qword_27E1C5E90, v1, type metadata accessor for AQINonNumericalTemplateFormatter);
  *&xmmword_27E1C7830 = v0;
  *(&xmmword_27E1C7830 + 1) = result;
  return result;
}

id sub_23BDC4B04(uint64_t a1)
{
  v5 = type metadata accessor for AQINonNumericalTemplateModel();
  v6 = *(a1 + *(v5 + 32));
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v1 = v5;
    v2 = v8 & ~(v8 >> 63);
    v3 = *(a1 + *(v5 + 36));
    if (!(v3 >> 62))
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v9 = sub_23BDC6930();
LABEL_4:
  if (v2 >= v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEBD1D0](v2, v3);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v10 = (a1 + *(v1 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_23BDC66C0();
  v14 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 whiteColor];
  [v16 setTintColor_];

  v18 = [objc_allocWithZone(MEMORY[0x277CBBA50]) initWithImageProvider_];
  return v18;
}

id sub_23BDC4C90(uint64_t a1)
{
  v2 = type metadata accessor for AQINonNumericalTemplateModel();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC4EF0(a1, v5);
  v6 = sub_23BDBA204(&v5[v2[5]], v5[v2[11]]);
  v7 = [objc_opt_self() systemCyanColor];
  [v6 setTintColor_];

  sub_23BDC4F54(v5);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E1C5B70;
  v9 = sub_23BDC66C0();
  v10 = sub_23BDC66C0();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  if (!v11)
  {
    sub_23BDC66F0();
    v11 = sub_23BDC66C0();
  }

  v12 = objc_opt_self();
  v13 = [v12 textProviderWithText_];

  v14 = (a1 + v2[7]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_23BDC66C0();
  v18 = [v12 textProviderWithText_];

  v19 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v6 body1TextProvider:v13 body2TextProvider:v18];
  return v19;
}

uint64_t sub_23BDC4EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AQINonNumericalTemplateModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDC4F54(uint64_t a1)
{
  v2 = type metadata accessor for AQINonNumericalTemplateModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDC4FB0(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v7 = (a1 + *(type metadata accessor for AQINonNumericalTemplateModel() + 28));
  v9 = *v7;
  v8 = v7[1];
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v9;
  *(inited + 40) = v8;

  v10 = sub_23BDC69C0();
  swift_setDeallocating();
  v11 = *(inited + 16);
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v12 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v5 arguments:v10];

  v13 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v13;
}

uint64_t sub_23BDC51D4(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBB698];
  v4 = type metadata accessor for AQINonNumericalTemplateModel();
  v5 = v4;
  v6 = *(a2 + *(v4 + 36));
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v43 = *(a2 + *(v4 + 36));
    }

    v8 = sub_23BDC6930();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + *(v5 + 32));
  v11 = v10 / v9;
  if (v11 <= 0.0)
  {
    v11 = 0.0;
  }

  v12 = fminf(v11, 1.0);
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v13 = sub_23BDC6770();
  v14 = objc_opt_self();
  *&v15 = v12;
  [v14 gaugeProviderWithStyle:v3 gaugeColors:v13 gaugeColorLocations:0 fillFraction:v15];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v16 = qword_27E1C5B70;
  v17 = sub_23BDC66C0();
  v18 = sub_23BDC66C0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  if (!v19)
  {
    sub_23BDC66F0();
    v19 = sub_23BDC66C0();
  }

  v20 = [objc_opt_self() textProviderWithText_];

  if (__OFSUB__(v10, 1))
  {
    __break(1u);
LABEL_36:
    v44 = v20;
    v24 = MEMORY[0x23EEBD1D0](v19, v6);
    goto LABEL_20;
  }

  v19 = (v10 - 1) & ~((v10 - 1) >> 63);
  if (v7)
  {
    result = sub_23BDC6930();
    if (v19 >= result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= result)
    {
LABEL_15:
      v22 = objc_opt_self();
      v23 = v20;
      v24 = [v22 whiteColor];
      goto LABEL_20;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (v19 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = *(v6 + 8 * v19 + 32);
  v26 = v20;
  v24 = v25;
LABEL_20:
  v27 = v24;
  [v20 setTintColor_];

  v28 = (a2 + *(v5 + 24));
  v29 = *v28;
  v30 = v28[1];
  v31 = sub_23BDC66C0();
  v32 = [objc_opt_self() symbolImageProviderWithSystemName_];

  if (v7)
  {
    result = sub_23BDC6930();
    if (v19 >= result)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < result)
  {
LABEL_24:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x23EEBD1D0](v19, v6);
      goto LABEL_27;
    }

    if (v19 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v6 + 8 * v19 + 32);
      goto LABEL_27;
    }

LABEL_39:
    __break(1u);
    return result;
  }

LABEL_22:
  v33 = [objc_opt_self() whiteColor];
LABEL_27:
  v34 = v33;
  [v32 setTintColor_];

  v35 = [objc_opt_self() currentDevice];
  if (v35)
  {
    v36 = v35;
    v37 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:v35 identitySizeClass:2];
    [v36 screenScale];
    [v37 scaledValue_];
    v40 = v39;
    if (a1 == 12)
    {
      CLKComplicationGraphicExtraLargeCircularScalingFactor();
      v40 = v40 * v41;
    }

    v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v32 setOverridePointSize_];
  }

  return v20;
}

uint64_t sub_23BDC5678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_23BDC5764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Container();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BDC57BC()
{
  sub_23BD9628C(&qword_27E1C5EA0, &qword_23BDC9D28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9D00;
  *(v0 + 32) = type metadata accessor for AQIDataSource();
  *(v0 + 40) = type metadata accessor for ChanceRainDataSource(0);
  *(v0 + 48) = type metadata accessor for UVDataSource();
  *(v0 + 56) = type metadata accessor for WindDataSource();
  *(v0 + 64) = type metadata accessor for WeatherDataSource();
  *(v0 + 72) = type metadata accessor for ConditionDataSource();
  return v0;
}

char *sub_23BDC58F0(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications14WindDataSource_rectangularFormatter;
  if (qword_27E1C5610 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C77E0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for WindDataSource();
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v14, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C5628;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v13 = xmmword_27E1C7820;
  swift_unknownObjectRetain();

  v11 = *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter];
  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v13;

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23BDC5AC8()
{
  v1 = [v0 family];
  v2 = &OBJC_IVAR____TtC20WeatherComplications14WindDataSource_rectangularFormatter;
  if (v1 != 11)
  {
    v2 = &OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  }

  v3 = &v0[*v2];
  v4 = *v3;
  v5 = *(v3 + 1);
  return swift_unknownObjectRetain();
}

id sub_23BDC5BFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WindDataSource()
{
  result = qword_27E1C5EB0;
  if (!qword_27E1C5EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDC5CDC(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v7 = sub_23BDC6630();
  v8 = sub_23BDC6810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23BD93000, v7, v8, "Migrating to widget.", v9, 2u);
    MEMORY[0x23EEBD7D0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v13 intent:0];

  (*(a1 + 16))(a1, v14);
}

double sub_23BDC6F20(double result)
{
  if (!atomic_load(dword_27E1C5EC0))
  {
    return sub_23BDC6F44(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_23BDC6F44(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoTimeKit.framework/NanoTimeKit", 0);
  atomic_store(1u, dword_27E1C5EC0);
  return a1;
}