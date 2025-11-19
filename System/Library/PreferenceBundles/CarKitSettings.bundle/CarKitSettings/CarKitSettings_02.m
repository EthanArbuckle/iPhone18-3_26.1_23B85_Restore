uint64_t sub_449F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_44A80()
{
  sub_1D648(&qword_7C168, &qword_53F70);
  sub_44858();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_44AE4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB38;

  return sub_42A38(a1, a2, v6);
}

id sub_44B94(void *a1)
{
  v2 = sub_4A6AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (result)
  {
    v8 = result;
    sub_4A68C();

    sub_4A65C();
    (*(v3 + 8))(v6, v2);
    result = [a1 certificateSerialNumber];
    if (result)
    {
      v9 = result;
      v10 = sub_4A64C();
      v12 = v11;

      v13 = objc_allocWithZone(CRHomeScreenPersistenceManager);
      v14 = sub_4B5EC();

      isa = sub_4A63C().super.isa;
      v16 = [v13 initWithVehicleId:v14 certificateSerial:isa];

      sub_1475C(v10, v12);
      type metadata accessor for CRWidgetSettingsModel();
      return sub_19E1C(v16, &off_6ED48);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_44D50(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_44E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_44E58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_44EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_44EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7C198, &qword_53F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_44F34(uint64_t a1)
{
  v2 = type metadata accessor for CRHomeScreenLayoutView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypedIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_4A7FC();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_4A81C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

id sub_45044(double a1)
{
  [v1 size];
  v4 = v3;
  v6 = v5;
  [v1 cornerRadius];
  v8 = v7;
  v9 = [v1 fontStyle];
  v10 = [v1 margins];
  v11 = [objc_allocWithZone(CHSWidgetMetrics) initWithSize:v9 cornerRadius:v10 scaleFactor:objc_msgSend(v1 fontStyle:"dynamicTextSupport") margins:v4 supportsDynamicText:{v6, v8, a1}];

  return v11;
}

uint64_t sub_4512C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_4ACDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_14628(&qword_7B310, &qword_52AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_45314(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_4AA3C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_4B7FC();
    v16 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_45314(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7B310, &qword_52AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45384()
{
  v1 = (v0 + *(type metadata accessor for BlurView() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_15A8C(*v1);
  return v2;
}

uint64_t type metadata accessor for BlurView()
{
  result = qword_7D790;
  if (!qword_7D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45414(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BlurView() + 20));
  v6 = v5[1];
  result = sub_15AD4(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_454A4()
{
  v1 = sub_4AA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  sub_4512C(v22 - v7);
  (*(v2 + 104))(v6, enum case for ColorScheme.dark(_:), v1);
  v9 = sub_4AA2C();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  if (v9)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [objc_opt_self() effectWithStyle:v11];
  v13 = sub_4AB4C();
  v14 = sub_4AFFC();
  v22[1] = v12;
  v22[2] = v13;
  v23 = v14;
  v15 = (v0 + *(type metadata accessor for BlurView() + 20));
  v16 = *v15;
  v17 = v15[1];
  if (*v15)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_45854;
  }

  else
  {
    v19 = nullsub_2;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  sub_15A8C(v16);
  sub_14628(&qword_7C288, qword_541C8);
  sub_45774();
  sub_4B18C();
}

uint64_t sub_45714()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4574C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_45774()
{
  result = qword_7C290;
  if (!qword_7C290)
  {
    sub_1D648(&qword_7C288, qword_541C8);
    sub_45800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C290);
  }

  return result;
}

unint64_t sub_45800()
{
  result = qword_7C298;
  if (!qword_7C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C298);
  }

  return result;
}

uint64_t sub_45854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_4587C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BlurView();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_458E8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_45948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_45994(a1, a4);
  result = type metadata accessor for BlurView();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_45994(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7B4F0, qword_52E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_45A34()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

uint64_t sub_45AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_45FC0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_45B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_45FC0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_45BC4()
{
  sub_45FC0();
  sub_4AE4C();
  __break(1u);
}

uint64_t sub_45C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14628(&qword_7B4F0, qword_52E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_45CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14628(&qword_7B4F0, qword_52E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_45DAC()
{
  sub_2ACAC();
  if (v0 <= 0x3F)
  {
    sub_45E30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_45E30()
{
  if (!qword_7C2F8)
  {
    sub_1D648(&unk_7C300, &qword_54320);
    v0 = sub_4B92C();
    if (!v1)
    {
      atomic_store(v0, &qword_7C2F8);
    }
  }
}

uint64_t sub_45EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_45EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_45F5C()
{
  sub_1D648(&qword_7C288, qword_541C8);
  sub_45774();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_45FC0()
{
  result = qword_7C330;
  if (!qword_7C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C330);
  }

  return result;
}

id CRSettingsHeaderCell.updateConfiguration(using:)()
{
  v1 = sub_14628(&qword_7C338, qword_54370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-1] - v4;
  sub_461A4();
  sub_4AF0C();
  sub_4AFFC();
  v8[3] = v1;
  v8[4] = sub_2C958(&qword_7C340, &qword_7C338, qword_54370);
  sub_2B2C0(v8);
  sub_4AEFC();
  (*(v2 + 8))(v5, v1);
  sub_4B81C();
  return [v0 setSelectionStyle:0];
}

unint64_t sub_461A4()
{
  result = qword_7D7A0[0];
  if (!qword_7D7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_7D7A0);
  }

  return result;
}

id CRSettingsHeaderCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_4B5EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id CRSettingsHeaderCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_4B5EC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id CRSettingsHeaderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_4B5EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CRSettingsHeaderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_4B5EC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id CRSettingsHeaderCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

double sub_468C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_4AD8C();
  v42 = 0;
  sub_46BC4(&v25);
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v59[12] = v37;
  v59[13] = v38;
  v59[14] = v39;
  v59[8] = v33;
  v59[9] = v34;
  v59[10] = v35;
  v59[11] = v36;
  v59[4] = v29;
  v59[5] = v30;
  v59[6] = v31;
  v59[7] = v32;
  v59[0] = v25;
  v59[1] = v26;
  v58 = v40;
  v60 = v40;
  v59[2] = v27;
  v59[3] = v28;
  sub_2BC3C(&v43, &v24, &qword_7C370, &qword_54408);
  sub_1E284(v59, &qword_7C370, &qword_54408);
  *&v41[199] = v55;
  *&v41[215] = v56;
  *&v41[231] = v57;
  *&v41[135] = v51;
  *&v41[151] = v52;
  *&v41[167] = v53;
  *&v41[183] = v54;
  *&v41[71] = v47;
  *&v41[87] = v48;
  *&v41[103] = v49;
  *&v41[119] = v50;
  *&v41[7] = v43;
  *&v41[23] = v44;
  *&v41[39] = v45;
  v41[247] = v58;
  *&v41[55] = v46;
  v3 = v42;
  v4 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v5 = sub_4B25C();
  v6 = sub_4AFFC();
  v7 = (a1 + *(sub_14628(&qword_7C378, &qword_54410) + 36));
  v8 = *(sub_4AB7C() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = sub_4AD7C();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #28.0 }

  *v7 = _Q0;
  *&v7[*(sub_14628(&qword_7C380, &qword_54418) + 36)] = 256;
  v16 = *&v41[208];
  *(a1 + 209) = *&v41[192];
  *(a1 + 225) = v16;
  *(a1 + 241) = *&v41[224];
  v17 = *&v41[144];
  *(a1 + 145) = *&v41[128];
  *(a1 + 161) = v17;
  v18 = *&v41[176];
  *(a1 + 177) = *&v41[160];
  *(a1 + 193) = v18;
  v19 = *&v41[80];
  *(a1 + 81) = *&v41[64];
  *(a1 + 97) = v19;
  v20 = *&v41[112];
  *(a1 + 113) = *&v41[96];
  *(a1 + 129) = v20;
  v21 = *&v41[16];
  *(a1 + 17) = *v41;
  *(a1 + 33) = v21;
  result = *&v41[32];
  v23 = *&v41[48];
  *(a1 + 49) = *&v41[32];
  *a1 = v2;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = v3;
  *(a1 + 257) = *&v41[240];
  *(a1 + 65) = v23;
  *(a1 + 265) = v25;
  *(a1 + 268) = *(&v25 + 3);
  *(a1 + 272) = v5;
  *(a1 + 280) = v6;
  return result;
}

uint64_t sub_46BC4@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v1 = sub_4B2EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRSettingsHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass:ObjCClassFromMetadata];
  v9 = sub_4B5EC();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    v11 = v10;
    sub_4B2CC();
    (*(v2 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v1);
    v12 = sub_4B2FC();

    (*(v2 + 8))(v5, v1);
    v86 = v12;

    v85 = 1;
  }

  else
  {
    v86 = 0;
    v85 = 0;
  }

  v13 = [v7 bundleForClass:ObjCClassFromMetadata];
  v80._countAndFlagsBits = 0xE000000000000000;
  v155.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v155.value._object = 0xEB00000000656C62;
  v153._countAndFlagsBits = 0xD000000000000017;
  v153._object = 0x800000000005BC40;
  v14.super.isa = v13;
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  v15 = sub_4A5FC(v153, v155, v14, v157, v80);
  v17 = v16;

  v137 = v15;
  v138 = v17;
  v84 = sub_2A3CC();
  v18 = sub_4B0FC();
  v83 = ObjCClassFromMetadata;
  v20 = v19;
  v22 = v21;
  sub_4B08C();
  v23 = sub_4B0DC();
  v82 = v7;
  v24 = v23;
  v26 = v25;
  LOBYTE(v15) = v27;

  sub_2BCB4(v18, v20, v22 & 1);

  sub_4B06C();
  v28 = sub_4B0AC();
  v30 = v29;
  v32 = v31;
  sub_2BCB4(v24, v26, v15 & 1);

  LODWORD(v137) = sub_4AEDC();
  v92 = sub_4B0CC();
  v93 = v33;
  v90 = v34;
  v36 = v35;
  sub_2BCB4(v28, v30, v32 & 1);

  v91 = sub_4AFEC();
  sub_4AA1C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v88 = v36 & 1;
  LOBYTE(v120[0]) = v36 & 1;
  LOBYTE(v112) = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v137) = 1;
  v45 = [v82 bundleForClass:v83];
  v81._countAndFlagsBits = 0xE000000000000000;
  v154._object = 0x800000000005BC60;
  v154._countAndFlagsBits = 0xD000000000000015;
  v156.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v156.value._object = 0xEB00000000656C62;
  v46.super.isa = v45;
  v158._countAndFlagsBits = 0;
  v158._object = 0xE000000000000000;
  v47 = sub_4A5FC(v154, v156, v46, v158, v81);
  v49 = v48;

  v137 = v47;
  v138 = v49;
  v50 = sub_4B0FC();
  v52 = v51;
  v54 = v53;
  sub_4B03C();
  v55 = sub_4B0DC();
  v84 = v55;
  v57 = v56;
  LOBYTE(v20) = v58;
  v60 = v59;

  sub_2BCB4(v50, v52, v54 & 1);

  v61 = sub_4AFEC();
  sub_4AA1C();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  LOBYTE(v137) = v20 & 1;
  LOBYTE(v120[0]) = 0;
  LODWORD(v15) = sub_4AEEC();
  v70 = swift_getKeyPath();
  LOBYTE(v137) = 1;
  *&v104 = v92;
  *(&v104 + 1) = v90;
  LOBYTE(v105) = v88;
  *(&v105 + 1) = *v102;
  DWORD1(v105) = *&v102[3];
  *(&v105 + 1) = v93;
  LOBYTE(v106) = v91;
  *(&v106 + 1) = *v101;
  DWORD1(v106) = *&v101[3];
  *(&v106 + 1) = v38;
  *&v107 = v40;
  *(&v107 + 1) = v42;
  *&v108 = v44;
  BYTE8(v108) = 0;
  HIDWORD(v108) = *&v103[3];
  *(&v108 + 9) = *v103;
  v109 = KeyPath;
  v110 = 0;
  v111 = 1;
  v96[102] = 1;
  *&v96[86] = KeyPath;
  *&v96[70] = v108;
  *&v96[54] = v107;
  *&v96[38] = v106;
  *&v96[22] = v105;
  *&v96[6] = v104;
  *&v112 = v55;
  *(&v112 + 1) = v57;
  LOBYTE(v113) = v20 & 1;
  DWORD1(v113) = *&v98[3];
  *(&v113 + 1) = *v98;
  *(&v113 + 1) = v60;
  LOBYTE(v114) = v61;
  DWORD1(v114) = *&v97[3];
  *(&v114 + 1) = *v97;
  *(&v114 + 1) = v63;
  *&v115 = v65;
  *(&v115 + 1) = v67;
  *&v116 = v69;
  BYTE8(v116) = 0;
  BYTE11(v116) = v100;
  *(&v116 + 9) = v99;
  HIDWORD(v116) = v15;
  v117 = v70;
  v118 = 0;
  v119 = 1;
  v95[103] = 1;
  *&v95[87] = v70;
  *&v95[71] = v116;
  *&v95[55] = v115;
  *&v95[39] = v114;
  *&v95[23] = v113;
  *&v95[7] = v112;
  v71 = v86;

  sub_2BC3C(&v104, &v137, &qword_7C388, &qword_54450);
  sub_2BC3C(&v112, &v137, &qword_7C390, &qword_54458);

  v72 = *&v96[32];
  v73 = v87;
  *(v87 + 66) = *&v96[48];
  v74 = *&v96[80];
  *(v73 + 82) = *&v96[64];
  *(v73 + 98) = v74;
  v75 = *&v96[16];
  *(v73 + 18) = *v96;
  *(v73 + 34) = v75;
  *(v73 + 50) = v72;
  v76 = *&v95[32];
  *(v73 + 169) = *&v95[48];
  v77 = *&v95[80];
  *(v73 + 185) = *&v95[64];
  *(v73 + 201) = v77;
  v78 = *&v95[16];
  *(v73 + 121) = *v95;
  *(v73 + 137) = v78;
  v94 = 0;
  *v73 = v71;
  *(v73 + 8) = 0;
  *(v73 + 16) = v85;
  *(v73 + 113) = *&v96[95];
  *(v73 + 217) = *&v95[96];
  *(v73 + 153) = v76;
  *(v73 + 232) = 0x4024000000000000;
  *(v73 + 240) = 0;
  v120[0] = v84;
  v120[1] = v57;
  v121 = v20 & 1;
  *&v122[3] = *&v98[3];
  *v122 = *v98;
  v123 = v60;
  v124 = v61;
  *&v125[3] = *&v97[3];
  *v125 = *v97;
  v126 = v63;
  v127 = v65;
  v128 = v67;
  v129 = v69;
  v130 = 0;
  v132 = v100;
  v131 = v99;
  v133 = v15;
  v134 = v70;
  v135 = 0;
  v136 = 1;
  sub_1E284(v120, &qword_7C390, &qword_54458);
  v137 = v92;
  v138 = v90;
  v139 = v88;
  *v140 = *v102;
  *&v140[3] = *&v102[3];
  v141 = v93;
  v142 = v91;
  *v143 = *v101;
  *&v143[3] = *&v101[3];
  v144 = v38;
  v145 = v40;
  v146 = v42;
  v147 = v44;
  v148 = 0;
  *&v149[3] = *&v103[3];
  *v149 = *v103;
  v150 = KeyPath;
  v151 = 0;
  v152 = 1;
  sub_1E284(&v137, &qword_7C388, &qword_54450);
}

uint64_t sub_47420@<X0>(uint64_t a1@<X8>)
{
  result = sub_4ACAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_47454(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_4ACBC();
}

unint64_t sub_47488()
{
  result = qword_7C398;
  if (!qword_7C398)
  {
    sub_1D648(&qword_7C378, &qword_54410);
    sub_47540();
    sub_2C958(&qword_7C3D0, &qword_7C380, &qword_54418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C398);
  }

  return result;
}

unint64_t sub_47540()
{
  result = qword_7C3A0;
  if (!qword_7C3A0)
  {
    sub_1D648(&qword_7C3A8, &qword_54460);
    sub_2C958(&qword_7C3B0, &qword_7C3B8, &qword_54468);
    sub_2C958(&qword_7C3C0, &qword_7C3C8, &unk_54470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C3A0);
  }

  return result;
}

uint64_t sub_47640()
{
  v1 = sub_4A6AC();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = sub_4BA3C();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  sub_4B6FC();
  v0[9] = sub_4B6EC();
  v8 = sub_4B6DC();
  v0[10] = v8;
  v0[11] = v7;

  return _swift_task_switch(sub_47798, v8, v7);
}

uint64_t sub_47798()
{
  v1 = *(v0 + 64);
  sub_4BABC();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_47864;
  v3 = *(v0 + 64);

  return sub_48440(10000000000000000, 0, 0, 0, 1);
}

uint64_t sub_47864()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_479FC;
  }

  else
  {
    v10 = sub_47A84;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_479FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_47A84()
{
  v1 = v0[9];
  v2 = v0[5];

  sub_14628(&qword_7B060, &unk_53070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_52910;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_54480;
  sub_4A69C();
  v5 = sub_488F8();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_29;
  }

  v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v45 = v3;
  v46 = v4;
  if (v7)
  {
    result = sub_4B9FC();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v4 = v6 & 0xC000000000000001;
      sub_4B91C();
      v9 = 0;
      while (1)
      {
        if (v4)
        {
          v10 = sub_4B9AC();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            v7 = sub_4BA5C();
            goto LABEL_3;
          }

          if (v9 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        ++v9;
        v3 = sub_4000C(v10);
        sub_4B9DC();
        v11 = _swiftEmptyArrayStorage[2];
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
        if (v7 == v9)
        {

          v4 = v46;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_14:
  v12 = v0;
  v15 = v0 + 4;
  v14 = v0[4];
  v13 = v15[1];
  v17 = v12[2];
  v16 = v12[3];
  v43 = v12;
  v18 = objc_allocWithZone(CRSWidgetStack);
  isa = sub_4A66C().super.isa;
  v6 = sub_4B91C();
  v20 = sub_4B68C().super.isa;

  v21 = [v18 initWithID:isa widgets:v20];

  v3 = *(v16 + 8);
  (v3)(v13, v17);
  *(v4 + 32) = v21;
  sub_4A69C();
  v22 = sub_488F8();
  v23 = v22;
  v42 = v3;
  if (v22 >> 62)
  {
    v24 = sub_4BA5C();
    if (v24)
    {
      goto LABEL_16;
    }

LABEL_31:

    v0 = v43;
    goto LABEL_32;
  }

  v24 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_16:
  result = sub_4B9FC();
  if (v24 < 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v25 = 0;
  v4 = v23 & 0xFFFFFFFFFFFFFF8;
  v0 = v43;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = sub_4B9AC();
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    ++v25;
    v3 = sub_4000C(v26);
    sub_4B9DC();
    v27 = _swiftEmptyArrayStorage[2];
    sub_4BA0C();
    sub_4BA1C();
    sub_4B9EC();
  }

  while (v24 != v25);

  v4 = v46;
LABEL_32:
  v28 = v0[8];
  v29 = v0[4];
  v44 = v0[5];
  v30 = v0[2];
  v31 = objc_allocWithZone(CRSWidgetStack);
  v32 = sub_4A66C().super.isa;
  v33 = sub_4B68C().super.isa;

  v34 = [v31 initWithID:v32 widgets:v33];

  v42(v29, v30);
  *(v4 + 40) = v34;
  v35 = objc_allocWithZone(CRSWidgetStackRow);
  sub_16F40(0, &qword_7B088, CRSWidgetStack_ptr);
  v36 = sub_4B68C().super.isa;

  v37 = [v35 initWithStacks:v36];

  *(v45 + 32) = v37;
  v38 = objc_allocWithZone(CRSWidgetLayoutState);
  sub_16F40(0, &qword_7AD40, CRSWidgetStackRow_ptr);
  v39 = sub_4B68C().super.isa;

  v40 = [v38 initWithShowWidgets:1 showWallpaper:1 showSuggestions:1 smartRotate:1 widgetStackRows:v39];

  v41 = v0[1];

  return v41(v40);
}

uint64_t sub_47F9C()
{
  v1 = sub_14628(&qword_7AD18, &qword_52750);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_4B72C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1A384(0, 0, v4, &unk_544B8, v6);
}

uint64_t sub_480A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_481B8;

  return v9();
}

uint64_t sub_481B8(void *a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
  }

  else
  {
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_482E8()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1EE48;

  return v6();
}

uint64_t sub_48440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_4BA2C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_48540, 0, 0);
}

uint64_t sub_48540()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_4BA3C();
  v7 = sub_4928C(&qword_7BC68, &type metadata accessor for ContinuousClock);
  sub_4BA9C();
  sub_4928C(&qword_7BC70, &type metadata accessor for ContinuousClock.Instant);
  sub_4BA4C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_486D0;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_486D0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_4888C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_4888C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_488F8()
{
  v0 = sub_4A6AC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v65 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_14628(&qword_7BBD8, &unk_54520);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v58 - v5;
  v7 = sub_14628(&qword_7BBE0, &unk_53740);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v58 - v9;
  sub_14628(&qword_7B060, &unk_53070);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_54490;
  v12 = v11;
  v59 = v11;
  v13 = type metadata accessor for CRWidgetModel();
  v14 = sub_4B8BC();
  sub_4A7FC();
  sub_4A7FC();
  v15 = sub_14628(&qword_7BBE8, &unk_54530);
  v16 = *(v15 - 8);
  v60 = *(v16 + 56);
  v63 = v16 + 56;
  v64 = v15;
  v60(v6, 0, 1, v15);
  v58[3] = v14;
  v17 = sub_4B8AC();
  v18 = objc_allocWithZone(CHSWidget);
  v19 = sub_4B5EC();
  v20 = [v18 initWithExtensionIdentity:v17 kind:v19 family:1 intent:0 activityIdentifier:0];

  v21 = v65;
  sub_1F818();
  v22 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v61 = v13;
  *(v12 + 32) = sub_3F7E8(v21, v20, v22);
  v58[4] = "r.widget.dailyForecast";
  v58[1] = v10;
  sub_4A7FC();
  v62 = "ers.WidgetExtension";
  sub_4A7FC();
  v23 = v60;
  v60(v6, 0, 1, v15);
  v24 = sub_4B8AC();
  v58[2] = "com.apple.reminders";
  v25 = objc_allocWithZone(CHSWidget);
  v26 = sub_4B5EC();
  v27 = [v25 initWithExtensionIdentity:v24 kind:v26 family:1 intent:0 activityIdentifier:0];

  v28 = v65;
  sub_1F818();
  v29 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v30 = sub_3F7E8(v28, v27, v29);
  v31 = v59;
  *(v59 + 40) = v30;
  sub_4A7FC();
  sub_4A7FC();
  v32 = v64;
  v23(v6, 0, 1, v64);
  v33 = sub_4B8AC();
  v34 = objc_allocWithZone(CHSWidget);
  v35 = sub_4B5EC();
  v36 = [v34 initWithExtensionIdentity:v33 kind:v35 family:1 intent:0 activityIdentifier:0];

  v37 = v65;
  sub_1F818();
  v38 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  *(v31 + 48) = sub_3F7E8(v37, v36, v38);
  sub_4A7FC();
  sub_4A7FC();
  v39 = v60;
  v60(v6, 0, 1, v32);
  v40 = sub_4B8AC();
  v41 = objc_allocWithZone(CHSWidget);
  v42 = sub_4B5EC();
  v43 = [v41 initWithExtensionIdentity:v40 kind:v42 family:1 intent:0 activityIdentifier:0];

  v44 = v65;
  sub_1F818();
  v45 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  v46 = sub_3F7E8(v44, v43, v45);
  v47 = v59;
  *(v59 + 56) = v46;
  sub_4A7FC();
  sub_4A7FC();
  v39(v6, 0, 1, v64);
  v48 = sub_4B8AC();
  v49 = objc_allocWithZone(CHSWidget);
  v50 = sub_4B5EC();
  v51 = [v49 initWithExtensionIdentity:v48 kind:v50 family:1 intent:0 activityIdentifier:0];

  sub_1F818();
  v52 = variable initialization expression of CARSpinnerHeaderView.isSpinning();
  *(v47 + 64) = sub_3F7E8(v44, v51, v52);
  sub_4A7FC();
  sub_4A7FC();
  v39(v6, 0, 1, v64);
  v53 = sub_4B8AC();
  v54 = objc_allocWithZone(CHSWidget);
  v55 = sub_4B5EC();
  v56 = [v54 initWithExtensionIdentity:v53 kind:v55 family:1 intent:0 activityIdentifier:0];

  sub_1F818();
  *(v47 + 72) = sub_3F7E8(v44, v56, 1);
  return v47;
}

uint64_t sub_490F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_49134()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB38;

  return sub_480A4(v3, v4, v5, v2);
}

uint64_t sub_491EC(uint64_t a1)
{
  v2 = sub_14628(&qword_7AD18, &qword_52750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_49254()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4928C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_49328()
{
  sub_4BACC();
  sub_4BADC(0);
  return sub_4BAEC();
}

Swift::Int sub_4936C()
{
  sub_4BACC();
  sub_4BADC(0);
  return sub_4BAEC();
}

unint64_t sub_493B0()
{
  result = qword_7C490;
  if (!qword_7C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7C490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CarPlayFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_494E4()
{
  v0 = sub_4A93C();
  sub_4969C(v0, qword_7DA88);
  sub_495BC(v0, qword_7DA88);
  return sub_4A92C();
}

uint64_t sub_49558()
{
  if (qword_7D9C0 != -1)
  {
    swift_once();
  }

  v0 = sub_4A93C();

  return sub_495BC(v0, qword_7DA88);
}

uint64_t sub_495BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_495F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D9C0 != -1)
  {
    swift_once();
  }

  v2 = sub_4A93C();
  v3 = sub_495BC(v2, qword_7DA88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_4969C(uint64_t a1, uint64_t *a2)
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

id sub_49728()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_7D9D0 = result;
  return result;
}

uint64_t sub_497F0()
{
  v0 = sub_4A8CC();
  sub_4969C(v0, qword_7DAB8);
  sub_495BC(v0, qword_7DAB8);
  if (qword_7D9C8 != -1)
  {
    swift_once();
  }

  v1 = qword_7D9D0;
  return sub_4A8BC();
}

uint64_t sub_499E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_4A8CC();
  sub_4969C(v3, a2);
  sub_495BC(v3, a2);
  if (qword_7D9C8 != -1)
  {
    swift_once();
  }

  v4 = qword_7D9D0;
  return sub_4A8BC();
}

uint64_t sub_49AA8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_4A8CC();

  return sub_495BC(v3, a2);
}

uint64_t sub_49B20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_4A8CC();
  v6 = sub_495BC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

BOOL sub_49BDC(int a1, int a2, int a3)
{
  if (qword_7DA10 == -1)
  {
    v3 = dword_7DA00 < a1;
    if (dword_7DA00 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_4A5AC();
    a2 = v6;
    a3 = v5;
    v3 = dword_7DA00 < a1;
    if (dword_7DA00 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_7DA04 > a2)
  {
    return 1;
  }

  if (dword_7DA04 < a2)
  {
    return 0;
  }

  return dword_7DA08 >= a3;
}

uint64_t sub_49C9C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_7DA18 == -1)
  {
    if (qword_7DA20)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_4A5C4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_7DA20)
    {
      return _availability_version_check();
    }
  }

  if (qword_7DA10 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_4A5AC();
    a3 = v10;
    a4 = v9;
    v8 = dword_7DA00 < v11;
    if (dword_7DA00 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_7DA04 > a3)
      {
        return 1;
      }

      if (dword_7DA04 >= a3)
      {
        return dword_7DA08 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_7DA00 < a2;
  if (dword_7DA00 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_49E30(uint64_t result)
{
  v1 = qword_7DA20;
  if (qword_7DA20)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_7DA20 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_7DA00, &dword_7DA04, &dword_7DA08);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_4A164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "CARBluetoothLEDiscoverer no peripheral for %@", &v2, 0xCu);
}

void sub_4A1DC(void *a1, NSObject *a2)
{
  v4 = [a1 name];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "CARBluetoothLEDiscoverer peripheral: %@ didUpdateName: %@", &v5, 0x16u);
}

void sub_4A2A0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to save vehicle %@", &v3, 0xCu);
}

void sub_4A31C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to delete vehicle %@", &v3, 0xCu);
}

void sub_4A3F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "pairing failed %@", &v2, 0xCu);
}

void sub_4A4A0(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unsupported pairing style %@", &v4, 0xCu);
}