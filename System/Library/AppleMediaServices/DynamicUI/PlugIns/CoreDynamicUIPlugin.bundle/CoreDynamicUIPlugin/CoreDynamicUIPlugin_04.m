unint64_t sub_65444()
{
  result = qword_C6448;
  if (!qword_C6448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C6448);
  }

  return result;
}

unint64_t sub_65488()
{
  result = qword_C6458;
  if (!qword_C6458)
  {
    sub_65444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6458);
  }

  return result;
}

uint64_t sub_654E8()
{
  swift_weakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_6551C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_6558C()
{

  return swift_once();
}

uint64_t sub_655AC()
{

  return swift_once();
}

id sub_65630()
{
  v3 = *(v1 + 2024);

  return [v0 v3];
}

id sub_6569C(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_656BC()
{
}

uint64_t sub_656DC()
{
  swift_beginAccess();
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_CD08(v0 + 7, v1);
  v4 = *(v1 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  (*(v2 + 8))(v8, v1, v2);
  (*(v4 + 8))(v6, v1);
  sub_8EEE4();
  return sub_4F30(v8);
}

uint64_t sub_65810(uint64_t *a1)
{
  swift_beginAccess();
  sub_59DF8((v1 + 56), a1);
  swift_endAccess();
  sub_656DC();
  return sub_4F30(a1);
}

uint64_t sub_6586C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v23 = a7;
  v24 = a5;
  v22 = a4;
  v25 = sub_332C(&qword_C6588);
  sub_42F8();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  sub_332C(&qword_C6590);
  swift_allocObject();
  *(v7 + 32) = sub_8E724();
  swift_allocObject();
  *(v7 + 40) = sub_8E724();
  swift_allocObject();
  *(v7 + 48) = sub_8E724();
  sub_332C(&qword_C6428);
  swift_allocObject();
  v18 = sub_8EEF4();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 96) = v18;
  *(v7 + 104) = a1;
  sub_13D04(a4, v7 + 56);
  *(v7 + 112) = a6;
  *(v7 + 120) = v23;
  swift_allocObject();
  swift_weakInit();
  sub_332C(&qword_C6598);
  sub_2F934(&qword_C65A0, &qword_C6598);

  v19 = a3;

  sub_8F084();
  sub_8F094();

  sub_4F30(v22);
  sub_4F30(v26);
  (*(v14 + 8))(v17, v25);
  return v7;
}

uint64_t sub_65B18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_13D04(a1, v3);
    sub_65810(v3);
  }

  return result;
}

uint64_t sub_65B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8EE74();
  sub_42F8();
  __chkstk_darwin(v6);
  sub_8814();
  v23 = sub_8EEA4();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  sub_41558();
  v13 = sub_8F7D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_66804;
  aBlock[5] = v15;
  sub_66850();
  sub_66838(COERCE_DOUBLE(1107296256));
  aBlock[2] = v16;
  aBlock[3] = &unk_BA978;
  v17 = _Block_copy(aBlock);

  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_6681C();
  sub_2F934(v18, v19);
  sub_8F944();
  sub_8F7E4();
  _Block_release(v17);

  v20 = sub_66870();
  v21(v20);
  return (*(v8 + 8))(v12, v23);
}

uint64_t sub_65E10()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_31898(v0);
    sub_332C(&qword_C65A8);
    sub_2F934(&qword_C65B0, &qword_C65A8);
    sub_8E704();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_332C(&qword_C65A8);
    sub_2F934(&qword_C65B0, &qword_C65A8);
    sub_8E704();
  }

  return result;
}

uint64_t sub_65FC4(uint64_t a1, char a2)
{
  sub_8EE74();
  sub_42F8();
  v30 = v5;
  __chkstk_darwin(v6);
  sub_8814();
  sub_8EEA4();
  sub_42F8();
  v28 = v8;
  v29 = v7;
  __chkstk_darwin(v7);
  sub_8814();
  v11 = v10 - v9;
  v12 = type metadata accessor for Shelf();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = 40;
  if ((a2 & 0xFE) == 0)
  {
    v15 = 32;
  }

  v16 = *(v2 + v15);
  sub_41558();
  swift_retain_n();
  v17 = sub_8F7D4();
  sub_59D94(a1, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  sub_5F588(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = sub_66738;
  aBlock[5] = v19;
  sub_66850();
  sub_66838(COERCE_DOUBLE(1107296256));
  aBlock[2] = v20;
  aBlock[3] = &unk_BA928;
  v21 = _Block_copy(aBlock);

  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_6681C();
  sub_2F934(v22, v23);
  sub_8F944();
  sub_8F7E4();
  _Block_release(v21);

  v24 = sub_66870();
  v25(v24);
  return (*(v28 + 8))(v11, v29);
}

uint64_t sub_662C0(uint64_t a1, uint64_t a2)
{
  sub_332C(&qword_C4D00);
  v3 = *(type metadata accessor for Shelf() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_92E10;
  sub_59D94(a2, v5 + v4);
  sub_332C(&qword_C65A8);
  sub_2F934(&qword_C65B0, &qword_C65A8);
  sub_8E714();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_92E10;
  sub_59D94(a2, v6 + v4);
  sub_8E714();
}

uint64_t sub_66488@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShelvesPresenter.ReplaceSolution.discard<A>(_:);
  v3 = sub_332C(&qword_C65B8);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_66508()
{

  sub_4F30(v0 + 56);

  return v0;
}

uint64_t sub_66568()
{
  sub_66508();

  return _swift_deallocClassInstance(v0, 121, 7);
}

uint64_t sub_665C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66600()
{
  v1 = type metadata accessor for Shelf();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_8F204();
  if (!sub_33C0(v0 + v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_66738()
{
  v1 = *(type metadata accessor for Shelf() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_662C0(v2, v3);
}

uint64_t sub_6679C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_667B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_66884(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B7110;
  v7._object = a2;
  v4 = sub_8FB14(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_668D8(char a1)
{
  if (a1)
  {
    return 0x7265746F6F66;
  }

  else
  {
    return 0x726564616568;
  }
}

_BYTE *storeEnumTagSinglePayload for ShelfPageCollectionSupplementaryItemPlacement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x669CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_66A08()
{
  result = qword_C65C0;
  if (!qword_C65C0)
  {
    sub_3D10(&qword_C65C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C65C0);
  }

  return result;
}

uint64_t sub_66A90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_66884(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_66AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_668D8(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_66B04()
{
  result = qword_C65D0;
  if (!qword_C65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C65D0);
  }

  return result;
}

uint64_t sub_66B58(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = a1;

  sub_66C64();

  return v2;
}

void sub_66C64()
{
  v2 = *(v0 + 16);
  v3 = sub_8F5F4();
  v5 = v4;
  v6 = UICollectionElementKindSectionHeader;
  sub_66DE8(v3, v5);
  if (v1)
  {
  }

  else
  {

    sub_67C9C();
    swift_getObjCClassFromMetadata();
    v7 = sub_8F5C4();

    sub_67DA0();

    v8 = sub_8F5F4();
    v10 = v9;
    v11 = UICollectionElementKindSectionFooter;
    sub_66DE8(v8, v10);

    v12 = sub_8F5C4();

    sub_67DA0();

    type metadata accessor for TextComponent();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = sub_8F5C4();
    [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];
  }
}

uint64_t sub_66DE8(uint64_t a1, uint64_t a2)
{
  v4 = 0x48646570756F7267;
  if (sub_8F5F4() == a1 && v5 == a2)
  {
    goto LABEL_12;
  }

  v7 = sub_8FB54();

  if (v7)
  {
    return v4;
  }

  v4 = 0x46646570756F7267;
  if (sub_8F5F4() == a1 && v8 == a2)
  {
LABEL_12:

    return v4;
  }

  v10 = sub_8FB54();

  if ((v10 & 1) == 0)
  {
    sub_67168();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 2;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_66F70()
{
  sub_66F48();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_66FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_66DE8(a3, a4);
  if (!v5)
  {
    v13 = v10;
    v14 = v11;
    v15 = *(v6 + 16);
    v16 = sub_8F5C4();
    v23 = v13;
    v25 = v14;
    v17 = sub_8F5C4();
    isa = sub_8E144().super.isa;
    v19 = [v15 dequeueReusableSupplementaryViewOfKind:v16 withReuseIdentifier:v17 forIndexPath:isa];

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      a2 = v20;

      sub_671BC(a3, a4, v24);
      sub_8F814();
    }

    else
    {

      sub_67168();
      swift_allocError();
      *v21 = a3;
      *(v21 + 8) = a4;
      v22 = v25;
      *(v21 + 16) = v23;
      *(v21 + 24) = v22;
      *(v21 + 32) = 1;
      swift_willThrow();
    }
  }

  return a2;
}

unint64_t sub_67168()
{
  result = qword_C6688;
  if (!qword_C6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6688);
  }

  return result;
}

uint64_t sub_671BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_8EA24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  if (sub_8F5F4() == a1 && v10 == a2)
  {

    goto LABEL_13;
  }

  v12 = sub_8FB54();

  if (v12)
  {
LABEL_13:
    sub_8E964();
    swift_getKeyPath();
    sub_332C(&unk_C67B0);
    sub_8F044();

    v21 = v19;
    *v22 = *v20;
    *&v22[9] = *&v20[9];
    goto LABEL_14;
  }

  if (sub_8F5F4() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_8FB54();

    if ((v15 & 1) == 0)
    {
      sub_67168();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = a2;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 2;
      swift_willThrow();
    }
  }

  sub_8E954();
  swift_getKeyPath();
  sub_332C(&unk_C67B0);
  sub_8F044();

  v21 = v19;
  *v22 = *v20;
  *&v22[9] = *&v20[9];
LABEL_14:

  sub_59CD4(&v21);
  sub_8EA04();
  a3[3] = v6;
  a3[4] = &protocol witness table for UIListContentConfiguration;
  v18 = sub_4ED0(a3);
  return (*(v7 + 32))(v18, v9, v6);
}

id sub_67478(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v38 = a4;
  v46 = sub_332C(&qword_C6340);
  v37 = *(v46 - 8);
  __chkstk_darwin(v46);
  v35 = &v30 - v7;
  v8 = type metadata accessor for Text();
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v4;
  v11 = *(v4 + 16);
  v12 = sub_8F5C4();
  isa = sub_8E144().super.isa;
  v14 = [v11 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:isa];

  v15 = type metadata accessor for TextComponent();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v31 = v16;
    v33 = v15;
    v34 = v5;
    swift_getKeyPath();
    if (a3)
    {
      v32 = UIFontTextStyleFootnote;
      sub_332C(&unk_C67B0);
      sub_67DC4();

      v42 = v44;
      *v43 = *v45;
      *&v43[9] = *&v45[9];

      sub_59CD4(&v42);
      v17 = 1953460070;
    }

    else
    {
      v32 = UIFontTextStyleSubheadline;
      sub_332C(&unk_C67B0);
      sub_67DC4();

      *v43 = *v45;
      *&v43[9] = *&v45[9];
      v42 = v44;

      sub_59CD4(&v42);
      v17 = 1684104552;
    }

    v19 = [objc_opt_self() ams_secondaryText];
    v20 = sub_8E684();
    *&v45[8] = v20;
    *&v45[16] = &protocol witness table for FontSource;
    v21 = sub_4ED0(&v44);
    v22 = v32;
    *v21 = v32;
    (*(*(v20 - 8) + 104))();
    sub_8E4D4();
    *&v45[8] = &type metadata for DynamicPlainText;
    *&v45[16] = &protocol witness table for DynamicPlainText;
    *&v44 = swift_allocObject();
    sub_67B38(&v42, v44 + 16);
    sub_332C(&unk_C67B0);
    sub_8F054();
    v40 = sub_8F974();
    v41 = v23;
    sub_17A94(v39);
    v47._countAndFlagsBits = 45;
    v47._object = 0xE100000000000000;
    sub_8F654(v47);
    v48._countAndFlagsBits = v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    v48._object = 0xE600000000000000;
    sub_8F654(v48);

    v39[0] = v40;
    v39[1] = v41;
    sub_8F9B4();
    v24 = *(v8 + 28);
    v25 = sub_8F204();
    sub_33E8(&v10[v24], 1, 1, v25);
    v26 = &v10[*(v8 + 32)];
    *(v26 + 4) = 0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    sub_9520(&v44, (v10 + 16));
    *v10 = 0;
    *(v10 + 4) = 256;
    *&v45[8] = v8;
    *&v45[16] = sub_67BF8(&qword_C4C10, type metadata accessor for Text);
    v27 = sub_4ED0(&v44);
    sub_67B94(v10, v27);
    v28 = v35;
    sub_8F074();
    sub_67BF8(&qword_C6690, type metadata accessor for TextComponent);
    v14 = v31;
    sub_8E3D4();

    (*(v37 + 8))(v28, v46);
    sub_67C40(v10);
    sub_2C218(&v42);
  }

  else
  {

    sub_67168();
    swift_allocError();
    *v18 = a3 & 1;
    *(v18 + 8) = xmmword_97BB0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_67AE0()
{

  if (*(v0 + 80))
  {
    sub_4F30(v0 + 56);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_67B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_67C40(uint64_t a1)
{
  v2 = type metadata accessor for Text();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_67C9C()
{
  result = qword_C6698;
  if (!qword_C6698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C6698);
  }

  return result;
}

__n128 sub_67CEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_67D00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_67D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id sub_67DA0()
{
  v6 = *(v4 + 24);

  return [v0 v6];
}

uint64_t sub_67DC4()
{

  return sub_8F044();
}

void sub_67E34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v49 = a7;
  v55 = a5;
  v56 = a4;
  v54 = a1;
  ObjectType = swift_getObjectType();
  sub_332C(&qword_C6768);
  sub_42F8();
  v51 = v12;
  v52 = v11;
  sub_41B68();
  __chkstk_darwin(v13);
  v50 = &v48 - v14;
  v15 = sub_8EF24();
  sub_42F8();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_8814();
  v21 = v20 - v19;
  swift_unknownObjectWeakInit();
  v22 = &v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculatorInsets];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController__viewDidLayoutSubviews];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_visibleBoundsCalculator];
  *v25 = 0;
  v25[1] = 0;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content] = 0;
  v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_isScrolled] = 0;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___layoutProvider] = 0;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_currentOffsetY] = 0;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_pageCount] = 0;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_previousIndex] = 0;
  sub_332C(&qword_C6770);
  sub_8F174();
  sub_8F394();
  v26 = v57;
  sub_8F4D4();
  swift_unknownObjectRetain();
  v48 = v26;
  v27 = sub_8F494();
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculator] = v27;
  v57 = v27;

  sub_8EF04();
  v28 = sub_8F154();
  (*(v17 + 8))(v21, v15);
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_objectGraph] = v28;
  v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_preferredPocketStyle] = a6;
  v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_placement] = a2;
  if (!a2)
  {
    v33 = [objc_allocWithZone(type metadata accessor for ShelfPageBodyCollectionView()) init];
    sub_6F728(v33);
    v34 = 1684104552;
LABEL_6:
    v31 = v34 | 0x6853726500000000;
    v32 = 0xEB00000000666C65;
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v35 = [objc_allocWithZone(type metadata accessor for ShelfPageFooterCollectionView()) init];
    sub_6F728(v35);
    v34 = 1953460070;
    goto LABEL_6;
  }

  v29 = [objc_allocWithZone(type metadata accessor for ShelfPageBodyCollectionView()) init];
  sub_6F728(v29);
  v31 = 0x6C65685379646F62;
  v32 = 0xE900000000000066;
LABEL_7:
  sub_6EFF8(v31, v32, v30);
  v36 = v56;
  sub_332C(&qword_C6778);
  swift_allocObject();

  v57 = sub_8F244();
  sub_332C(&qword_C6780);
  swift_allocObject();
  sub_2F934(&qword_C6788, &qword_C6778);
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_statePresenter] = sub_8E854();
  v37 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView;
  v38 = *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView];
  type metadata accessor for ShelfPageCollectionCellProvider();
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_cellProvider] = sub_605AC(v38, a3);
  v39 = *&v7[v37];
  type metadata accessor for ShelfPageCollectionSupplementaryViewProvider();
  swift_allocObject();
  swift_retain_n();
  v40 = v38;
  *&v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_supplementaryViewProvider] = sub_66B58(v39, a3);
  sub_13D04(v36, &v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_spacingModel]);
  v41 = &v7[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_shelfBehavior];
  v42 = BYTE1(v49);
  *v41 = v49;
  v41[1] = v42 & 1;
  v43 = type metadata accessor for ShelfPageCollectionViewController();
  v58.receiver = v7;
  v58.super_class = v43;
  v44 = objc_msgSendSuper2(&v58, "init");
  sub_13EC8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_332C(&qword_C6790);
  sub_2F934(&qword_C6798, &qword_C6790);
  v45 = v44;
  sub_8F084();
  v46 = v50;
  sub_8F094();

  sub_4F30(&v57);
  (*(v51 + 8))(v46, v52);
  sub_332C(&unk_C67A0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_92300;
  *(v47 + 32) = sub_8EB14();
  *(v47 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v47 + 48) = sub_8E944();
  *(v47 + 56) = &protocol witness table for UITraitLegibilityWeight;
  *(v47 + 64) = sub_8EA34();
  *(v47 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_13EC8();
  *(swift_allocObject() + 16) = ObjectType;
  sub_8F7B4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_4F30(v36);
  sub_41B74();
}

void sub_684E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_13D04(a1, v4);
    sub_688CC(v4);
  }
}

void sub_68548(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) collectionViewLayout];
  [v1 invalidateLayout];
}

void sub_685A8()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculatorInsets);
  v2 = *&UIEdgeInsetsZero.bottom;
  *v1 = *&UIEdgeInsetsZero.top;
  v1[1] = v2;
  v3 = (v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController__viewDidLayoutSubviews);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_visibleBoundsCalculator);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_isScrolled) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___layoutProvider) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_currentOffsetY) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_previousIndex) = 0;
  sub_8FAA4();
  __break(1u);
}

uint64_t sub_686B4()
{
  [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) bounds];
  sub_8F874();
  return sub_8F474();
}

uint64_t sub_68724()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content;
  if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content);
  }

  else
  {
    v2 = sub_68C78();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_68788()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___layoutProvider;
  if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___layoutProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___layoutProvider);
  }

  else
  {
    v3 = v0;
    v4 = sub_68724();
    v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_spacingModel;
    swift_beginAccess();
    sub_13D04(v3 + v5, v8);
    v6 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculator);
    type metadata accessor for ShelfPageCollectionViewLayoutProvider();
    swift_allocObject();
    v2 = sub_6F938(v4, v8, v6);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_68870()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_spacingModel;
  swift_beginAccess();
  sub_13D04(v0 + v1, v3);
  sub_69FEC(v3);
  return sub_4F30(v3);
}

uint64_t sub_688CC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_spacingModel;
  swift_beginAccess();
  sub_59DF8((v1 + v3), a1);
  swift_endAccess();
  sub_68870();
  return sub_4F30(a1);
}

void sub_68938()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShelfPageCollectionViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];
}

void sub_68A18()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ShelfPageCollectionViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_69DE4();
}

uint64_t sub_68A98()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ShelfPageCollectionViewController();
  objc_msgSendSuper2(&v4, "viewDidLayoutSubviews");
  result = sub_686B4();
  v2 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController__viewDidLayoutSubviews];
  if (v2)
  {

    v2(v3);
    return sub_13CA0(v2);
  }

  return result;
}

uint64_t sub_68BB4(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ShelfPageCollectionViewController();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return sub_8F4C4();
}

uint64_t sub_68C78()
{
  sub_332C(&qword_C6838);
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);
  sub_13EC8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = v1;
  v3 = sub_8E784();
  v4 = 0;
  v5 = 0;
  v27 = v0;
  do
  {
    v6 = v4;
    v7 = v3;
    v8 = *(&unk_B7188 + v5 + 32);
    sub_13EC8();
    v9 = swift_allocObject();
    swift_weakInit();
    sub_13EC8();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    *(v11 + 32) = v8;
    v3 = v7;
    sub_8E744();

    v4 = 1;
    v5 = &def_4BB18 + 1;
  }

  while ((v6 & 1) == 0);
  sub_332C(&unk_C6840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_92310;
  *(inited + 32) = sub_8F5F4();
  *(inited + 40) = v13;
  v26 = sub_8F5F4();
  v15 = v14;
  *(inited + 48) = v26;
  *(inited + 56) = v14;
  v16 = *(inited + 32);
  v17 = *(inited + 40);
  sub_13EC8();
  v18 = swift_allocObject();
  swift_weakInit();
  sub_13EC8();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v16;
  v20[5] = v17;
  swift_bridgeObjectRetain_n();
  sub_8E744();

  swift_setDeallocating();

  sub_7549C();
  sub_13EC8();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_13EC8();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v26;
  v23[5] = v15;

  sub_8E744();

  if (*(v27 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_placement) && *(v27 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_placement) != 1)
  {
  }

  else
  {
    v24 = sub_8FB54();

    if ((v24 & 1) == 0)
    {
      return v7;
    }
  }

  sub_8E734();
  return v7;
}

uint64_t sub_69098(uint64_t a1, objc_class *a2, void *a3)
{
  v6 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_332C(&unk_C67B0);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    sub_60BF4();
    v14 = sub_605C4(a1, a2, a3);

    sub_68724(v15);
    sub_8E774();

    if (sub_33C0(v8, 1, v9) == 1)
    {

      sub_13E24(v8, &qword_C6A40);
    }

    else
    {
      v16 = v22;
      (*(v22 + 32))(v11, v8, v9);
      swift_getKeyPath();
      sub_8F044();

      v27 = v25;
      v28[0] = v26[0];
      *(v28 + 9) = *(v26 + 9);
      sub_59CD4(&v27);
      if (BYTE1(v27) - 1 <= 1)
      {
        v17 = objc_opt_self();
        v18 = v14;
        v19 = [v17 ams_componentBackground];
        [v18 setBackgroundColor:v19];

        sub_888BC(0.0);
      }

      swift_getKeyPath();
      sub_8F044();

      v25 = v23;
      v26[0] = v24[0];
      *(v26 + 9) = *(v24 + 9);
      sub_59CD4(&v25);
      if (v25 == 2 || (v25 & 1) != 0)
      {
      }

      else
      {

        sub_8E734();
      }

      (*(v16 + 8))(v11, v9);
    }

    return v14;
  }

  else
  {
    result = sub_8FAA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_69620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v26 = a6;
  v23 = a5;
  v25 = sub_332C(&unk_C67D0);
  v7 = *(v25 - 8);
  v8 = __chkstk_darwin(v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_332C(&unk_C67B0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v23 - v18;
  v24 = a2;
  sub_8E774();
  if (sub_33C0(v15, 1, v16) == 1)
  {
    sub_13E24(v15, &qword_C6A40);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_8E894();

      v20 = v25;
      (*(v7 + 32))(v12, v10, v25);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v21 = sub_67478(v19, v24, v26 & 1, v12);

        (*(v7 + 8))(v12, v20);
        (*(v17 + 8))(v19, v16);
        return v21;
      }

      (*(v7 + 8))(v12, v20);
    }

    (*(v17 + 8))(v19, v16);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_8F9E4(47);
  v30._object = 0x80000000000A08A0;
  v30._countAndFlagsBits = 0xD00000000000002DLL;
  sub_8F654(v30);
  v27 = v26 & 1;
  sub_8FA64();
  result = sub_8FAA4();
  __break(1u);
  return result;
}

uint64_t sub_69A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27._countAndFlagsBits = a6;
  v27._object = a7;
  v24 = a5;
  v26 = sub_332C(&unk_C67D0);
  v8 = *(v26 - 8);
  v9 = __chkstk_darwin(v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_332C(&unk_C67B0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v24 - v19;
  v25 = a2;
  sub_8E774();
  if (sub_33C0(v16, 1, v17) == 1)
  {
    sub_13E24(v16, &qword_C6A40);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_8E894();

      v21 = v26;
      (*(v8 + 32))(v13, v11, v26);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = sub_66FC8(v20, v25, v27._countAndFlagsBits, v27._object);

        (*(v8 + 8))(v13, v21);
        (*(v18 + 8))(v20, v17);
        return v22;
      }

      (*(v8 + 8))(v13, v21, v27._countAndFlagsBits, v27._object);
    }

    (*(v18 + 8))(v20, v17);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_8F9E4(42);

  v28 = 0xD000000000000028;
  v29 = 0x80000000000A0870;
  sub_8F654(v27);
  result = sub_8FAA4();
  __break(1u);
  return result;
}

void sub_69DE4()
{
  v1 = sub_8E324();
  sub_42F8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  sub_69F48();
  v8 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView];
  [v8 setCommonDelegate:v0];
  v9 = [v0 view];
  [v9 addSubview:v8];

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v7, enum case for FlagKeys.Solarium(_:), v1);
    v10 = sub_8E314();
    (*(v3 + 8))(v7, v1);
    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  sub_892C0(v11 & 1);
}

void sub_69F48()
{
  sub_68788()[3] = &off_BAAE8;
  swift_unknownObjectWeakAssign();

  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);

  v2 = sub_6F98C();

  [v1 setCollectionViewLayout:v2];
}

void sub_69FEC(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);
  v4 = [v3 _hiddenPocketEdges];
  if (*(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_placement) && *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_placement) != 1)
  {
  }

  else
  {
    v5 = sub_8FB54();

    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_preferredPocketStyle);
  if (v6 == 2)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    goto LABEL_10;
  }

  v7 = sub_8FB54();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    v9 = sub_68788();
    swift_beginAccess();
    sub_59DF8(v9 + 4, a1);
    goto LABEL_13;
  }

LABEL_10:
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

  v8 = sub_68788();
  sub_13D04(a1, &v11);
  sub_8E624();
  v12 = &type metadata for BoxedLayoutCollectionSpacingModel;
  v13 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
  *&v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0x58uLL);
  swift_beginAccess();
  sub_4F30((v8 + 4));
  sub_3A94(&v11, (v8 + 4));
LABEL_13:
  swift_endAccess();

  v10 = [v3 collectionViewLayout];
  [v10 invalidateLayout];
}

id sub_6A2E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_6A434(uint64_t a1, Swift::Int a2, void *a3)
{
  v5 = v3;
  v126 = a3;
  v139 = a2;
  v129 = sub_8F1E4();
  sub_42F8();
  v132 = v7;
  __chkstk_darwin(v8);
  sub_8814();
  sub_6F710(v10 - v9);
  v128 = sub_8E134();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_8814();
  sub_6F710(v15 - v14);
  v16 = sub_332C(&qword_C6A40);
  v17 = sub_41B1C(v16);
  __chkstk_darwin(v17);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v18);
  sub_6F710(&v124 - v19);
  v147 = sub_332C(&unk_C67B0);
  sub_42F8();
  v137 = v20;
  sub_41B68();
  __chkstk_darwin(v21);
  sub_6F748();
  v22 = sub_332C(&qword_C3598);
  v23 = sub_41B1C(v22);
  __chkstk_darwin(v23);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v24);
  sub_4290();
  __chkstk_darwin(v25);
  sub_6F710(&v124 - v26);
  v159 = sub_8F204();
  sub_42F8();
  v136 = v27;
  __chkstk_darwin(v28);
  sub_42D0();
  sub_4290();
  __chkstk_darwin(v29);
  sub_4290();
  __chkstk_darwin(v30);
  sub_6F710(&v124 - v31);
  v32 = sub_8E194();
  sub_42F8();
  v141 = v33;
  __chkstk_darwin(v34);
  sub_8814();
  v37 = v36 - v35;
  v38 = sub_332C(&unk_C67C0);
  sub_41B1C(v38);
  sub_41B68();
  __chkstk_darwin(v39);
  sub_6F710(&v124 - v40);
  v161 = sub_332C(&qword_C6340);
  sub_42F8();
  v42 = v41;
  sub_41B68();
  __chkstk_darwin(v43);
  v45 = &v124 - v44;
  v163 = a1;
  v46 = a1;
  v47 = v4;
  v48 = sub_35028(v46);
  v49 = &selRef_viewDidAppear_;
  v164 = v5;
  v162 = v48;
  if (v48)
  {
    v50 = 0;
    v144 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculator;
    v51 = (v163 & 0xC000000000000001);
    v153 = v163 & 0xFFFFFFFFFFFFFF8;
    v145 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController____lazy_storage___content;
    v160 = (v141 + 8);
    v157 = v42 + 32;
    v152 = (v136 + 32);
    v131 = v137 + 32;
    v125 = v12 + 8;
    v151 = v136 + 8;
    v130 = v137 + 8;
    v124 = v132 + 8;
    v156 = v42 + 8;
    v143 = v37;
    v140 = v47;
    v155 = v163 & 0xC000000000000001;
    v142 = v32;
    v150 = v45;
    do
    {
      if (v51)
      {
        v52 = sub_8F9F4();
      }

      else
      {
        if (v50 >= *(v153 + 16))
        {
          goto LABEL_54;
        }

        v52 = *(v163 + 8 * v50 + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v165 = v50 + 1;
      sub_68724();
      v53 = [v52 v49[7]];
      sub_6F7DC();

      sub_6F7B8();
      sub_8E754();

      v54 = *v160;
      v55 = sub_6F7AC();
      v54(v55);
      v56 = v161;
      sub_6F758(v5, 1, v161);
      if (v63)
      {
        swift_unknownObjectRelease();
        sub_13E24(v5, &unk_C67C0);
        v5 = v164;
      }

      else
      {
        v57 = v32;
        sub_6F6FC();
        v58(v45, v5, v56);
        swift_getKeyPath();
        v59 = v158;
        v51 = v56;
        sub_8F044();
        v60 = v59;

        v61 = v59;
        v62 = v159;
        sub_6F758(v61, 1, v159);
        if (v63)
        {
          sub_6F6FC();
          v64(v45, v56);
          swift_unknownObjectRelease();
          sub_13E24(v60, &qword_C3598);
          v5 = v164;
          v32 = v57;
          v49 = &selRef_viewDidAppear_;
        }

        else
        {
          v149 = *v152;
          v149(v154, v60, v62);
          v51 = &selRef_viewDidAppear_;
          v65 = [v52 indexPath];
          sub_6F7DC();

          v5 = v164;
          sub_6DCE4(&v166);
          v32 = v57;
          (v54)(v37, v57);
          if ((v167 & 1) == 0)
          {
            v148 = *&v5[v144];

            v68 = [v52 indexPath];
            sub_6F7DC();

            sub_6F7B8();
            sub_8E774();

            v69 = sub_6F7AC();
            v54(v69);
            v70 = v147;
            sub_6F758(v5, 1, v147);
            v49 = &selRef_viewDidAppear_;
            if (v63)
            {
              v71 = v5;
              v72 = &qword_C6A40;
            }

            else
            {
              sub_6F6FC();
              v73 = v140;
              v74(v140, v5, v70);
              swift_getKeyPath();
              v75 = v138;
              sub_8F044();
              v76 = v75;

              v77 = v75;
              v78 = v159;
              sub_6F758(v77, 1, v159);
              if (!v79)
              {
                v84 = v135;
                v149(v135, v76, v78);

                v85 = sub_8E764();

                v86 = [v85 collectionViewLayout];

                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (v87)
                {
                  v149 = v86;
                  v51 = v87;
                  v88 = [v87 _orthogonalScrollingSections];
                  if (!v88)
                  {
                    goto LABEL_56;
                  }

                  v89 = v88;
                  v90 = v127;
                  sub_8E114();

                  v91 = v139;
                  v92 = sub_8E124(v139);
                  sub_6F6FC();
                  v93(v90, v128);
                  v45 = v150;
                  if (v92)
                  {
                    [v51 _orthogonalScrollingLayoutRectForSection:v91];
                    v51 = v148;
                    sub_8F464();
                    sub_6F7B8();
                    sub_8F1F4();
                    v94 = sub_8F454();

                    sub_6F6FC();
                    v95(v92, v129);
                    sub_6F6FC();
                    sub_6F77C();
                    v96();
                    v97 = sub_6F6DC();
                    v98(v97);
                    sub_6F7C4();
                    if (v94)
                    {
                    }

                    v5 = v164;
                  }

                  else
                  {
                    sub_8F4B4();

                    sub_6F6FC();
                    sub_6F77C();
                    v102();
                    v103 = sub_6F6DC();
                    v104(v103);
                    v5 = v164;
                    sub_6F7C4();
                  }

                  goto LABEL_25;
                }

                sub_6F6FC();
                v99(v84, v78);
                v100 = sub_6F6DC();
                v101(v100);
LABEL_24:
                v5 = v164;
                v45 = v150;
                sub_6F7C4();
LABEL_25:
                sub_8F464();
                swift_unknownObjectRelease();

                sub_6F6FC();
                sub_6F77C();
                v81();
                sub_6F6FC();
                v82(v45, v161);
                v37 = v143;
                v32 = v142;
                goto LABEL_26;
              }

              sub_6F6FC();
              v80(v73, v70);
              v71 = v76;
              v72 = &qword_C3598;
            }

            sub_13E24(v71, v72);
            goto LABEL_24;
          }

          swift_unknownObjectRelease();
          sub_6F6FC();
          sub_6F77C();
          v66();
          sub_6F6FC();
          v45 = v150;
          v67(v150, v161);
          v49 = &selRef_viewDidAppear_;
        }

        sub_6F7C4();
      }

LABEL_26:
      ++v50;
      sub_6F7D0();
    }

    while (v165 != v83);
  }

  sub_68724();
  sub_8E174();
  v105 = v133;
  sub_8E774();

  v106 = *(v141 + 8);
  v107 = sub_6F7AC();
  v106(v107);
  v108 = v147;
  sub_6F758(v105, 1, v147);
  if (v63)
  {
    sub_13E24(v105, &qword_C6A40);
    v109 = v134;
    sub_33E8(v134, 1, 1, v159);
LABEL_42:
    sub_13E24(v109, &qword_C3598);
    return;
  }

  swift_getKeyPath();
  v109 = v134;
  sub_8F044();

  v110 = sub_6F71C();
  v111(v110, v108);
  v112 = v159;
  sub_6F758(v109, 1, v159);
  if (v113)
  {
    goto LABEL_42;
  }

  (*(v136 + 32))(v146, v109, v112);
  v114 = [v126 container];
  [v114 contentSize];
  swift_unknownObjectRelease();
  sub_6F7B8();
  sub_8F1F4();
  sub_8F4A4();
  (*(v132 + 8))(v114, v129);
  sub_6F7D0();
  if (v115)
  {
    sub_6F7D0();
    if (v116 < 1)
    {
      goto LABEL_55;
    }

    v117 = 0;
    v118 = v163 & 0xC000000000000001;
    do
    {
      if (v118)
      {
        v119 = sub_8F9F4();
      }

      else
      {
        v119 = *(v163 + 8 * v117 + 32);
        swift_unknownObjectRetain();
      }

      v120 = [v119 indexPath];
      sub_6F7DC();

      sub_6DCE4(&v168);
      v121 = sub_6F7AC();
      v106(v121);
      if ((v169 & 1) == 0)
      {
        sub_8F4B4();
      }

      ++v117;
      swift_unknownObjectRelease();
      sub_6F7D0();
    }

    while (v122 != v117);
  }

  sub_6F77C();
  v123();
}

void sub_6B3FC(uint64_t a1)
{
  sub_686B4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector:"collectionViewDidScroll:"])
    {
      [v3 collectionViewDidScroll:a1];
    }

    swift_unknownObjectRelease();
  }

  sub_6B480();
}

void sub_6B480()
{
  [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView] contentOffset];
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_currentOffsetY] = v1;
  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_isScrolled;
  if (v1 > 0.0 != v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_isScrolled])
  {
    v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_isScrolled] = v1 > 0.0;
    v3 = [v0 parentViewController];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ShelfPageCollectionLayoutViewController();
      v5 = swift_dynamicCastClass();
      if (v5 && (v6 = [v5 parentViewController]) != 0)
      {
        v8 = v6;
        type metadata accessor for ShelfPageViewController();
        if (swift_dynamicCastClass())
        {
          sub_7E48C(v0[v2], 1);
        }

        v7 = v8;
      }

      else
      {
        v7 = v4;
      }
    }
  }
}

void sub_6B610(uint64_t a1)
{
  sub_6B704();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector:"collectionView:didEndDisplayingItemAtIndexPath:"])
    {
      isa = sub_8E144().super.isa;
      [v3 collectionView:a1 didEndDisplayingItemAtIndexPath:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_6B704()
{
  v1 = sub_8F1E4();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v3 - 8);
  v44 = &v35 - v4;
  v5 = sub_332C(&unk_C67B0);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v43 = &v35 - v6;
  v7 = sub_332C(&qword_C3598);
  v8 = __chkstk_darwin(v7 - 8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_8F204();
  v48 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v35 - v15;
  v16 = sub_332C(&unk_C67C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - v17;
  v19 = sub_332C(&qword_C6340);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v35 - v21;
  sub_68724();
  sub_8E754();

  if (sub_33C0(v18, 1, v19) == 1)
  {
    v23 = &unk_C67C0;
    v24 = v18;
    return sub_13E24(v24, v23);
  }

  (*(v20 + 32))(v22, v18, v19);
  swift_getKeyPath();
  sub_8F044();

  if (sub_33C0(v11, 1, v12) == 1)
  {
    (*(v20 + 8))(v22, v19);
    v23 = &qword_C3598;
    v24 = v11;
    return sub_13E24(v24, v23);
  }

  v36 = *(v48 + 32);
  v36(v47, v11, v12);
  v26 = v12;
  v37 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_impressionsCalculator);

  v27 = v44;
  sub_8E774();

  v28 = v46;
  if (sub_33C0(v27, 1, v46) == 1)
  {
    v29 = &qword_C6A40;
  }

  else
  {
    v30 = v43;
    (*(v45 + 32))();
    swift_getKeyPath();
    v27 = v42;
    sub_8F044();

    if (sub_33C0(v27, 1, v12) != 1)
    {
      v32 = v38;
      v36(v38, v27, v12);
      v33 = v39;
      sub_8F1F4();
      v34 = sub_8F454();
      (*(v40 + 8))(v33, v41);
      v12 = v26;
      (*(v48 + 8))(v32, v26);
      (*(v45 + 8))(v30, v46);
      if (v34)
      {
      }

      goto LABEL_11;
    }

    (*(v45 + 8))(v30, v28);
    v29 = &qword_C3598;
  }

  sub_13E24(v27, v29);
LABEL_11:
  v31 = v47;
  sub_8F484();

  (*(v48 + 8))(v31, v12);
  return (*(v20 + 8))(v22, v19);
}

void sub_6BE8C(uint64_t a1, int a2)
{
  v4 = v2;
  v70 = a2;
  sub_332C(&qword_C67E8);
  sub_42F8();
  v73 = v7;
  v74 = v6;
  sub_41B68();
  __chkstk_darwin(v8);
  v10 = v66 - v9;
  v11 = sub_332C(&qword_C6A40);
  sub_41B1C(v11);
  sub_41B68();
  __chkstk_darwin(v12);
  v14 = v66 - v13;
  v15 = sub_332C(&unk_C67B0);
  sub_42F8();
  v72 = v16;
  sub_41B68();
  __chkstk_darwin(v17);
  v19 = v66 - v18;
  v20 = sub_332C(&unk_C67C0);
  sub_41B1C(v20);
  sub_41B68();
  __chkstk_darwin(v21);
  v23 = v66 - v22;
  sub_332C(&qword_C6340);
  sub_42F8();
  v75 = v25;
  v76 = v24;
  sub_41B68();
  __chkstk_darwin(v26);
  sub_6F748();
  v27 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);
  isa = sub_8E144().super.isa;
  v77 = [v27 cellForItemAtIndexPath:isa];

  if (!v77)
  {
    goto LABEL_28;
  }

  v71 = a1;
  swift_getObjectType();
  v29 = sub_61924(v77);
  if (v29)
  {
    v68 = v30;
    v69 = v3;
    v31 = v29;
    sub_6C698(v23);
    v32 = v76;
    sub_6F758(v23, 1, v76);
    if (v35)
    {

      sub_13E24(v23, &unk_C67C0);
LABEL_28:
      sub_41B74();
      return;
    }

    (*(v75 + 32))(v69, v23, v32);
    sub_68724();
    sub_8E774();

    sub_6F758(v14, 1, v15);
    if (v35)
    {
      sub_13E24(v14, &qword_C6A40);
      v36 = v31;
    }

    else
    {
      (*(v72 + 32))(v19, v14, v15);
      v36 = v31;
      swift_getObjectType();
      v37 = sub_61924(v31);
      if (v37)
      {
        v39 = v37;
        v66[1] = v38;
        swift_getKeyPath();
        v67 = v77;
        sub_8F044();

        sub_6F788();
        v40 = v69;
        if (v80 - 1 >= 2)
        {
          if (v80)
          {
            swift_getObjectType();
            v78 = v39;
            sub_6F738();
            v63 = v62();
            sub_6C898(v27, v71, (v63 & 1) == 0);

            v64 = sub_6F770();
            v65(v64);
          }

          else
          {
            v58 = sub_6F770();
            v59(v58);
          }
        }

        else
        {
          swift_getObjectType();
          v79 = v39;
          sub_6F738();
          if (v41())
          {
            v42 = v67;

            v43 = sub_6F770();
            v44(v43);
            v45 = sub_6F71C();
LABEL_26:
            v47(v45, v46);
            goto LABEL_28;
          }

          sub_6CFEC(v27, v71);

          v60 = sub_6F770();
          v61(v60);
        }

LABEL_18:
        ObjectType = swift_getObjectType();
        sub_8E874();
        (*(v68 + 24))(v40, v10, *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_objectGraph), ObjectType);
        (*(v73 + 8))(v10, v74);
        Strong = swift_unknownObjectWeakLoadStrong();
        v52 = v76;
        if (Strong)
        {
          v53 = Strong;
          if ([Strong respondsToSelector:"collectionView:didSelectItemAtIndexPath:"])
          {
            v54 = sub_8E144().super.isa;
            [v53 collectionView:v27 didSelectItemAtIndexPath:v54];
            swift_unknownObjectRelease();

            v52 = v76;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        type metadata accessor for ListItemComponent();
        if (swift_dynamicCastClass())
        {
          if (![v36 isSelected])
          {
            v56 = sub_6F71C();
            v57(v56, v52);

            goto LABEL_28;
          }

          v55 = sub_8E144().super.isa;
          [v27 deselectItemAtIndexPath:v55 animated:1];

          v45 = sub_6F71C();
          v46 = v52;
        }

        else
        {

          v45 = sub_6F71C();
          v46 = v52;
        }

        goto LABEL_26;
      }

      v48 = sub_6F770();
      v49(v48);
    }

    v40 = v69;
    goto LABEL_18;
  }

  sub_41B74();
}

uint64_t sub_6C698@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_332C(&unk_C67C0);
  __chkstk_darwin(v2 - 8);
  v4 = __src - v3 + 32;
  sub_68724();
  sub_8E754();

  v5 = sub_332C(&qword_C6340);
  if (sub_33C0(v4, 1, v5) == 1)
  {
    sub_13E24(v4, &unk_C67C0);
    memset(__src, 0, sizeof(__src));
    goto LABEL_7;
  }

  sub_8F064();
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_332C(&qword_C67E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_7;
  }

  if (!*__src)
  {
LABEL_7:
    sub_13E24(__src, &qword_C59E8);
    v6 = a1;
    v7 = 1;
    return sub_33E8(v6, v7, 1, v5);
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_13D04(&__dst[16], __src);
  sub_8F074();
  sub_5303C(__dst);
  v6 = a1;
  v7 = 0;
  return sub_33E8(v6, v7, 1, v5);
}

uint64_t sub_6C898(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v7 = sub_332C(&unk_C67F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42[-v9];
  v11 = sub_332C(&unk_C67C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42[-v12];
  v14 = sub_332C(&qword_C6340);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42[-v16];
  v44 = a2;
  sub_6C698(v13);
  if (sub_33C0(v13, 1, v14) == 1)
  {
    sub_13E24(v13, &unk_C67C0);
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v18 = sub_8E304();
    sub_4D6C(v18, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v47 = type metadata accessor for ShelfPageCollectionViewController();
    v45 = v4;
    v19 = v4;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&v45);
    v47 = &type metadata for String;
    v45 = 0xD000000000000048;
    v46 = 0x80000000000A0790;
    sub_8E264();
    sub_13E24(&v45, &unk_C3EB0);
    v34 = sub_8E194();
    v47 = v34;
    v35 = sub_4ED0(&v45);
    (*(*(v34 - 8) + 16))(v35, v44, v34);
    sub_8E264();
    sub_13E24(&v45, &unk_C3EB0);
    sub_8E2E4();
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_8E864();
  v22 = v43;
  v23 = sub_6EAAC(v17, v43 & 1, v10);
  (*(v8 + 8))(v10, v7);
  if ((v23 & 1) == 0)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v24 = v4;
  isa = sub_8E144().super.isa;
  v26 = [a1 cellForItemAtIndexPath:isa];

  if (v26)
  {
    swift_getObjectType();
    v27 = sub_61924(v26);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      ObjectType = swift_getObjectType();
      v45 = v29;
      (*(v30 + 16))(v22 & 1, ObjectType, v30);
      v32 = v45;
      sub_6F210(v32, v24, ObjectType, v30);

      return (*(v15 + 8))(v17, v14);
    }
  }

  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v36 = sub_8E304();
  sub_4D6C(v36, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v47 = type metadata accessor for ShelfPageCollectionViewController();
  v45 = v4;
  v37 = v4;
  v38 = AMSLogKey();
  if (v38)
  {
    v39 = v38;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v45);
  v47 = &type metadata for String;
  v45 = 0xD00000000000004ELL;
  v46 = 0x80000000000A07E0;
  sub_8E264();
  sub_13E24(&v45, &unk_C3EB0);
  v40 = sub_8E194();
  v47 = v40;
  v41 = sub_4ED0(&v45);
  (*(*(v40 - 8) + 16))(v41, v44, v40);
  sub_8E264();
  sub_13E24(&v45, &unk_C3EB0);
  sub_8E2E4();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_6CFEC(void *a1, uint64_t a2)
{
  v5 = sub_332C(&unk_C67F0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = sub_332C(&unk_C67B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - v13;
  sub_68724();
  sub_8E774();

  if (sub_33C0(v10, 1, v11) == 1)
  {
    return sub_13E24(v10, &qword_C6A40);
  }

  v35 = v5;
  (*(v12 + 32))(v14, v10, v11);
  swift_getKeyPath();
  sub_8F044();

  v39 = v37;
  *v40 = v38[0];
  *&v40[9] = *(v38 + 9);
  sub_59CD4(&v39);
  switch(v40[24])
  {
    case 1:
    case 2:
    case 3:
      v16 = sub_8FB54();

      if ((v16 & 1) == 0)
      {
        v34 = a1;
        if (qword_C2CE0 != -1)
        {
          swift_once();
        }

        v17 = sub_8E304();
        v32 = sub_4D6C(v17, qword_D0378);
        sub_332C(&unk_C3920);
        v31[1] = *(*(sub_8E2A4() - 8) + 72);
        *(swift_allocObject() + 16) = xmmword_92310;
        *(&v38[0] + 1) = type metadata accessor for ShelfPageCollectionViewController();
        *&v37 = v2;
        v33 = v2;
        v18 = AMSLogKey();
        if (v18)
        {
          v19 = v18;
          sub_8F5F4();
        }

        sub_8E284();

        sub_4F30(&v37);
        sub_8E244();
        sub_8E2E4();

        sub_332C(&qword_C6800);
        v20 = swift_allocBox();
        v22 = v21;
        v23 = sub_8E194();
        sub_33E8(v22, 1, 1, v23);
        v24 = v33;
        v25 = sub_8E864();
        v32 = v31;
        __chkstk_darwin(v25);
        v26 = v34;
        v31[-6] = v24;
        v31[-5] = v26;
        v31[-4] = a2;
        v31[-3] = v14;
        v31[-2] = v22;
        v27 = v35;
        sub_8F0F4();
        (*(v36 + 8))(v7, v27);
        v28 = swift_allocObject();
        v28[2] = v20;
        v28[3] = v26;
        v28[4] = v24;
        v29 = v24;

        v30 = v26;
        sub_6E8D4(sub_6F11C, v28);
      }

      break;
    default:

      break;
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_6D5C0(void *a1, uint64_t a2)
{
  sub_332C(&unk_C67D0);
  sub_42F8();
  v50 = v6;
  v51 = v5;
  sub_41B68();
  __chkstk_darwin(v7);
  v49 = &v44 - v8;
  v9 = sub_332C(&qword_C6A40);
  sub_41B1C(v9);
  sub_41B68();
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_332C(&unk_C67B0);
  sub_42F8();
  v48 = v14;
  sub_41B68();
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_332C(&unk_C67C0);
  sub_41B1C(v18);
  sub_41B68();
  __chkstk_darwin(v19);
  sub_6F748();
  v20 = sub_332C(&qword_C6340);
  sub_42F8();
  v22 = v21;
  sub_41B68();
  __chkstk_darwin(v23);
  v25 = &v44 - v24;
  isa = sub_8E144().super.isa;
  v52 = a1;
  v27 = [a1 cellForItemAtIndexPath:isa];

  if (!v27)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  if (!sub_61924(v27))
  {

    goto LABEL_7;
  }

  v45 = v28;
  v46 = v22;
  v29 = a2;
  v30 = v53;
  sub_6C698(v2);
  sub_6F758(v2, 1, v20);
  if (v31)
  {

    sub_13E24(v2, &unk_C67C0);
    goto LABEL_7;
  }

  (*(v46 + 32))(v25, v2, v20);
  sub_68724();
  v44 = v29;
  sub_8E774();

  sub_6F758(v12, 1, v13);
  if (v31)
  {
    sub_13E24(v12, &qword_C6A40);
    v33 = v46;
LABEL_15:
    ObjectType = swift_getObjectType();
    v36 = v49;
    sub_8E884();
    v37 = (*(v45 + 32))(v25, v36, *(v30 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_objectGraph), ObjectType);
    v38 = sub_6F71C();
    v39(v38);
    if (v37)
    {
      goto LABEL_22;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      if ([Strong respondsToSelector:"collectionView:shouldHighlightItemAtIndexPath:"])
      {
        v42 = sub_8E144().super.isa;
        [v41 collectionView:v52 shouldHighlightItemAtIndexPath:v42];
        swift_unknownObjectRelease();

        v27 = v42;
LABEL_22:

        (*(v33 + 8))(v25, v20);
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    sub_6F738();
    v43(ObjectType);
    goto LABEL_22;
  }

  v32 = v48;
  (*(v48 + 32))(v17, v12, v13);
  swift_getKeyPath();
  sub_8F044();

  sub_6F788();
  v33 = v46;
  switch(v54)
  {
    case 1:
    case 2:
    case 3:
      v34 = sub_8FB54();

      (*(v32 + 8))(v17, v13);
      if (v34)
      {
        goto LABEL_14;
      }

      (*(v33 + 8))(v25, v20);

      break;
    default:

      (*(v32 + 8))(v17, v13);
LABEL_14:
      v30 = v53;
      goto LABEL_15;
  }

LABEL_7:
  sub_41B74();
}

void sub_6DCE4(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);
  isa = sub_8E144().super.isa;
  v5 = [v3 cellForItemAtIndexPath:isa];

  if (v5)
  {
    [v5 frame];
    v13 = v6;
    v14 = v7;
    v12 = v8;
    v15 = v9;

    *&v11 = v12;
    *&v10 = v13;
    *(&v10 + 1) = v14;
    *(&v11 + 1) = v15;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5 == 0;
}

uint64_t sub_6DDA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v41 = a3;
  v40 = a2;
  v6 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_332C(&unk_C67B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v52 = sub_8E194();
  v37 = *(v52 - 8);
  v13 = __chkstk_darwin(v52);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  if (*(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_shelfBehavior + 1) & 1) != 0 || (*(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_shelfBehavior))
  {
    swift_getKeyPath();
    sub_8F044();

    v50 = v48;
    *v51 = *v49;
    *&v51[9] = *&v49[9];
    sub_59CD4(&v50);
    v18 = v40;
    switch(v51[24])
    {
      case 1:

        goto LABEL_27;
      default:
        v26 = sub_8FB54();

        if (v26)
        {
LABEL_27:
          v27 = [v18 numberOfItemsInSection:sub_8E184()];
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v28 = v27;
          v20 = v52;
          if (v27)
          {
            v29 = 0;
            v30 = (v37 + 8);
            do
            {
              sub_8E184();
              sub_8E164();
              sub_6C898(v18, v15, 0);
              v20 = v52;
              (*v30)(v15, v52);
              ++v29;
            }

            while (v28 != v29);
          }
        }

        else
        {
          v20 = v52;
        }

        break;
    }
  }

  else
  {
    v19 = [v40 numberOfSections];
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    v20 = v52;
    v38 = v19;
    if (v19)
    {
      v21 = 0;
      v43 = (v10 + 32);
      v42 = (v10 + 8);
      v44 = (v37 + 8);
      do
      {
        v45 = [v40 numberOfItemsInSection:v21];
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v22 = 0;
        v39 = v21 + 1;
        while (2)
        {
          if (v45 != v22)
          {
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              JUMPOUT(0x6E568);
            }

            sub_8E164();
            sub_68724();
            sub_8E774();

            if (sub_33C0(v8, 1, v9) != 1)
            {
              v23 = a1;
              (*v43)(v12, v8, v9);
              swift_getKeyPath();
              sub_8F044();

              v50 = v48;
              *v51 = *v49;
              *&v51[9] = *&v49[9];
              sub_59CD4(&v50);
              switch(v51[24])
              {
                case 1:
                case 2:
                case 3:
                  v24 = sub_8FB54();

                  if (v24)
                  {
                    goto LABEL_23;
                  }

                  swift_getKeyPath();
                  sub_8F044();

                  v48 = v46;
                  *v49 = v47[0];
                  *&v49[9] = *(v47 + 9);
                  sub_59CD4(&v48);
                  switch(v49[24])
                  {
                    case 1:

                      goto LABEL_18;
                    default:
                      v25 = sub_8FB54();

                      if (v25)
                      {
LABEL_18:
                        sub_6F1B8();
                        if ((sub_8F5B4() & 1) == 0)
                        {
                          sub_6C898(v40, v17, 0);
                        }
                      }

                      (*v42)(v12, v9);
                      v20 = v52;
                      (*v44)(v17, v52);
                      ++v22;
                      a1 = v23;
                      break;
                  }

                  continue;
                default:

LABEL_23:
                  (*v42)(v12, v9);
                  v20 = v52;
                  (*v44)(v17, v52);
                  a1 = v23;
                  goto LABEL_24;
              }
            }

            v20 = v52;
            (*v44)(v17, v52);
            sub_13E24(v8, &qword_C6A40);
          }

          break;
        }

LABEL_24:
        v21 = v39;
      }

      while (v39 != v38);
    }
  }

  v31 = v20;
  v32 = v36;
  sub_13E24(v36, &qword_C6800);
  v33 = v41;
  (*(v37 + 16))(v32, v41, v31);
  sub_33E8(v32, 0, 1, v31);
  return sub_6C898(v40, v33, 1);
}

uint64_t sub_6E598(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_332C(&qword_C6800);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_8E194();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_20154(v12, v7, &qword_C6800);
  if (sub_33C0(v7, 1, v8) == 1)
  {
    return sub_13E24(v7, &qword_C6800);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = *(a3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_visibleBoundsCalculator);
  sub_13C90(v14);
  v15 = sub_6E7C0(v11, v14);
  sub_13CA0(v14);
  if (!v15)
  {
    isa = sub_8E144().super.isa;
    [a2 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:1];
  }

  return (*(v9 + 8))(v11, v8);
}

BOOL sub_6E7C0(uint64_t a1, void (*a2)(void))
{
  v7 = v2;
  isa = sub_8E144().super.isa;
  v10 = [v2 layoutAttributesForItemAtIndexPath:isa];

  if (!v10)
  {
    return 0;
  }

  [v10 frame];
  sub_656BC();
  [v7 convertRect:objc_msgSend(v7 toView:{"superview"), v3, v4, v5, v6}];
  sub_656BC();
  if (a2)
  {
    a2();
  }

  else
  {
    [v7 bounds];
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return CGRectContainsRect(*&v11, v16);
}

void sub_6E8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [*(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView) collectionViewLayout];
  [v6 invalidateLayout];

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_6F128;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_3FD30;
  v15 = &unk_BAB70;
  v9 = _Block_copy(&v12);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v16 = sub_6F188;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_88960;
  v15 = &unk_BABC0;
  v11 = _Block_copy(&v12);
  sub_13C90(a1);

  [v7 animateWithDuration:134 delay:v9 options:v11 animations:0.2 completion:0.0];
  _Block_release(v11);
  _Block_release(v9);
}

uint64_t sub_6EAAC(uint64_t a1, int a2, uint64_t a3)
{
  v26 = a3;
  v22 = a2;
  v23 = a1;
  v27 = sub_332C(&unk_C6820);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v21[-v4];
  v6 = sub_8E304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v10 = sub_4D6C(v6, qword_D0378);
  (*(v7 + 16))(v9, v10, v6);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v30 = type metadata accessor for ShelfPageCollectionViewController();
  v28 = v3;
  v11 = v3;
  v12 = AMSLogKey();
  v24 = v5;
  if (v12)
  {
    v13 = v12;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v28);
  v30 = &type metadata for String;
  v28 = 0x676E696C67676F54;
  v29 = 0xE900000000000020;
  sub_8E264();
  sub_13E24(&v28, &unk_C3EB0);
  sub_332C(&qword_C6340);
  sub_8F054();
  v32 = sub_8F974();
  v33 = v14;
  sub_17A94(&v28);
  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  sub_8F654(v34);
  v15 = (v22 & 1) == 0;
  v22 &= 1u;
  if (v22)
  {
    v16._countAndFlagsBits = 28271;
  }

  else
  {
    v16._countAndFlagsBits = 6710895;
  }

  if (v15)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  v16._object = v17;
  sub_8F654(v16);

  v30 = &type metadata for String;
  v28 = v32;
  v29 = v33;
  sub_8E264();
  sub_13E24(&v28, &unk_C3EB0);
  sub_8E2E4();

  (*(v7 + 8))(v9, v6);
  sub_8F054();
  v18 = v24;
  sub_8F514();
  sub_332C(&unk_C67F0);
  sub_EB50();
  sub_8F0E4();
  if (!v22)
  {
    if (v32 != 2)
    {
      v19 = 2;
      goto LABEL_17;
    }

LABEL_15:
    (*(v25 + 8))(v18, v27);
    return 0;
  }

  if (!v32)
  {
    goto LABEL_15;
  }

  v19 = 0;
LABEL_17:
  v30 = &type metadata for CellState;
  v31 = sub_6F53C();
  LOBYTE(v28) = v19;
  sub_8F0D4();
  (*(v25 + 8))(v18, v27);
  sub_4F30(&v28);
  return 1;
}

void sub_6EF80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController_collectionView);

    [v2 layoutIfNeeded];
  }
}

void sub_6EFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8F5C4();

  [a3 setAccessibilityIdentifier:v4];
}

uint64_t sub_6F05C()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_6F0D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6F130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6F148()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6F188()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_6F1B8()
{
  result = qword_C6808;
  if (!qword_C6808)
  {
    sub_8E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6808);
  }

  return result;
}

uint64_t sub_6F210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setNeedsLayout];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_6F4B4;
  *(v8 + 24) = v7;
  v19[4] = sub_6F4D0;
  v19[5] = v8;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_67E0C;
  v19[3] = &unk_BAC38;
  v9 = _Block_copy(v19);
  v10 = a1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v12 = [v10 contentView];
    v13 = [v12 subviews];

    sub_6F4F8();
    v14 = sub_8F6C4();

    result = sub_35028(v14);
    if (!result)
    {
LABEL_9:
    }

    v15 = result;
    if (result >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = sub_8F9F4();
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        [v6 transitionWithView:v17 duration:5243014 options:0 animations:0 completion:0.2];
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6F47C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_6F4F8()
{
  result = qword_C6818;
  if (!qword_C6818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C6818);
  }

  return result;
}

unint64_t sub_6F53C()
{
  result = qword_C6830;
  if (!qword_C6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6830);
  }

  return result;
}

uint64_t sub_6F590()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_6F5E8()
{
  swift_weakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_6F61C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_6F678()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6F788()
{
  v2 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 192);
  *(v0 - 128) = v2;
  *(v0 - 119) = *(v0 - 167);

  return sub_59CD4(v0 - 144);
}

uint64_t sub_6F7DC()
{

  return sub_8E154();
}

void *sub_6F7F4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  v14 = &_swiftEmptyArrayStorage;
  v7 = a3 + 32;
  v11 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v12;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = v4(&v13, v8);
    if (v3)
    {
      v10 = v12;

      return v10;
    }

    ++v5;
    v8 += 40;
    if (v13)
    {
      sub_8F6A4();
      if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8F6E4();
      }

      result = sub_8F6F4();
      v12 = v14;
      v5 = v9;
      v7 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_6F938(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[9] = a1;
  v3[10] = a3;
  sub_3A94(a2, (v3 + 4));
  return v3;
}

id sub_6F98C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  return sub_7207C(sub_72264, v0);
}

uint64_t sub_6F9F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_332C(&qword_C6A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-1] - v4;
  v6 = sub_332C(&unk_C67B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-1] - v8;
  v10 = sub_8E194();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_8E174();

  sub_8E774();

  if (sub_33C0(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_getKeyPath();
    sub_8F044();

    v19 = v17;
    v20[0] = v18[0];
    *(v20 + 9) = *(v18 + 9);
    sub_59CD4(&v19);
    if (BYTE1(v19) > 2u)
    {
      v14 = sub_6FD84();
    }

    else
    {
      v14 = sub_70030(v9, v13, a2);
    }

    v15 = v14;

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    return v15;
  }

  sub_13E24(v5, &qword_C6A40);
  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  sub_8F9E4(39);

  *&v19 = 0xD000000000000025;
  *(&v19 + 1) = 0x80000000000A0B40;
  sub_7226C();
  v21._countAndFlagsBits = sub_8FB24();
  sub_8F654(v21);

  result = sub_8FAA4();
  __break(1u);
  return result;
}

uint64_t sub_6FD84()
{
  v29 = sub_8EAA4();
  sub_42F8();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_8814();
  v5 = v4 - v3;
  v28 = sub_8EAB4();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = sub_8EA94();
  sub_42F8();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_8814();
  v18 = v17 - v16;
  v19 = sub_8EB04();
  sub_42F8();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_8814();
  v25 = v24 - v23;
  (*(v14 + 104))(v18, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v12);
  sub_8EAC4();
  (*(v7 + 104))(v11, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v28);
  sub_8EAE4();
  (*(v1 + 104))(v5, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v29);
  sub_8EAD4();
  sub_CE5C(0, &unk_C69B0);
  v26 = sub_8F864();
  (*(v21 + 8))(v25, v19);
  return v26;
}

id sub_70030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_332C(&unk_C67B0);
  sub_8F054();
  sub_71D50(&v15, v12);
  sub_17A94(&v15);
  swift_getKeyPath();
  sub_72300();

  swift_getKeyPath();
  sub_8F044();

  v15 = v13;
  v16[0] = v14[0];
  *(v16 + 9) = *(v14 + 9);
  v6 = sub_701C4(v10, &v15, v12, a3);

  sub_59CD4(&v15);
  swift_getKeyPath();
  sub_72300();

  v13 = v10;
  v14[0] = *v11;
  *(v14 + 9) = *&v11[9];
  v7 = sub_70C08(v6, &v13, v12);

  sub_59CD4(&v13);
  v8 = sub_712C0(v7, a1, a2, v12, a3);

  sub_4F30(v12);
  return v8;
}

void *sub_701C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_weakInit();
  v11[2] = v8;
  v11[3] = a2;
  v11[4] = a4;
  v11[5] = a3;
  v9 = sub_6F7F4(sub_721D4, v11, a1);

  return v9;
}

uint64_t sub_70268@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v31 = a4;
  v38 = a3;
  v8 = sub_8E304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    *a5 = 0;
    return result;
  }

  v13 = result;
  sub_13D04(a1, v34);
  sub_332C(&qword_C67E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
  }

  v30 = v8;
  sub_721F4(v36, v34);
  v14 = v34[0];
  if (v34[0])
  {
    sub_5303C(v34);
    v15 = sub_61924(v14);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      if (*(a2 + 2))
      {
        v19 = sub_8FB54();

        if ((v19 & 1) == 0)
        {
          sub_CD08(a1, a1[3]);
          sub_8F114();
          if (swift_dynamicCast())
          {
            v20 = v32;
            v21 = v33;
          }

          else
          {
            v20 = 0;
            v21 = 0xE000000000000000;
          }

          v22 = sub_7085C(v17, v18, v31, v38, v20, v21);

          goto LABEL_15;
        }
      }

      else
      {
      }

      v22 = sub_707E4(v17, v18, v38);
LABEL_15:

      *a5 = v22;
      return sub_13E24(v36, &qword_C59E8);
    }
  }

  else
  {
    sub_13E24(v34, &qword_C59E8);
  }

  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v23 = v30;
  v24 = sub_4D6C(v30, qword_D0378);
  (*(v9 + 16))(v11, v24, v23);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v35 = type metadata accessor for ShelfPageCollectionViewLayoutProvider();
  v34[0] = v13;

  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v34);
  sub_8E244();
  sub_721F4(v36, v34);
  v27 = v34[0];
  if (v34[0])
  {
    sub_5303C(v34);
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    sub_13E24(v34, &qword_C59E8);
    MetatypeMetadata = 0;
    v34[2] = 0;
    v34[1] = 0;
  }

  v34[0] = v27;
  v35 = MetatypeMetadata;
  sub_8E264();
  sub_13E24(v34, &unk_C3EB0);
  sub_8E2D4();

  (*(v9 + 8))(v11, v30);
  result = sub_8FAA4();
  __break(1u);
  return result;
}

id sub_707E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a2 + 8))(a3);
  v4 = [objc_opt_self() itemWithLayoutSize:v3];

  return v4;
}

id sub_7085C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3[3];
  v13 = a3[4];
  sub_CD08(a3, v12);
  v14 = (*(v13 + 72))(a5, a6, a4, v12, v13);
  if (!v14)
  {
    v14 = (*(a2 + 16))(a4, a1, a2);
  }

  v15 = v14;
  v16 = [objc_opt_self() itemWithLayoutSize:v14];
  sub_CE5C(0, &unk_C6A30);
  v17 = objc_opt_self();
  v18 = sub_70B88([v17 flexibleSpacing:0.0], 0, objc_msgSend(v17, "flexibleSpacing:", 0.0), 0);
  [v16 setEdgeSpacing:v18];

  v19 = a3[3];
  v20 = a3[4];
  sub_CD08(a3, v19);
  v21 = (*(v20 + 16))(v19, v20);
  v22 = a3[3];
  v23 = a3[4];
  sub_CD08(a3, v22);
  [v16 setContentInsets:{0.0, v21, 0.0, (*(v23 + 24))(v22, v23)}];
  v24 = objc_opt_self();
  v25 = [objc_opt_self() fractionalWidthDimension:1.0];
  v26 = [v15 heightDimension];
  v27 = [objc_opt_self() sizeWithWidthDimension:v25 heightDimension:v26];

  sub_332C(&qword_C44A0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_93AC0;
  *(v28 + 32) = v16;
  sub_CE5C(0, &qword_C6A28);
  v29 = v16;
  isa = sub_8F6B4().super.isa;

  v31 = [v24 verticalGroupWithLayoutSize:v27 subitems:isa];

  return v31;
}

id sub_70B88(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [swift_getObjCClassFromMetadata() spacingForLeading:a1 top:a2 trailing:a3 bottom:a4];

  return v8;
}

id sub_70C08(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_35028(a1))
  {
    if (*(a2 + 2) == 1)
    {
    }

    else
    {
      v13 = sub_8FB54();

      if ((v13 & 1) == 0)
      {
        v14 = sub_70F48(a1);
        goto LABEL_8;
      }
    }

    v14 = sub_70E2C();
LABEL_8:
    v15 = v14;
    v16 = objc_opt_self();
    v17 = a3[3];
    v18 = a3[4];
    sub_CD08(a3, v17);
    v19 = *(v18 + 8);
    v9 = v15;
    v19(v17, v18);
    v11.super.isa = [v16 fixedSpacing:?];
    [v9 setInterItemSpacing:v11.super.isa];
    v12 = v9;
    goto LABEL_9;
  }

  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:0.0];
  v8 = [v6 absoluteDimension:0.0];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = objc_opt_self();
  sub_CE5C(0, &qword_C6A28);
  v11.super.isa = sub_8F6B4().super.isa;
  v12 = [v10 verticalGroupWithLayoutSize:v9 subitems:v11.super.isa];
LABEL_9:

  return v12;
}

id sub_70E2C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  v2 = [v0 estimatedDimension:200.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = objc_opt_self();
  sub_CE5C(0, &qword_C6A28);
  isa = sub_8F6B4().super.isa;
  v6 = [v4 verticalGroupWithLayoutSize:v3 subitems:isa];

  return v6;
}

id sub_70F48(uint64_t a1)
{
  v2 = sub_35028(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = 10.0;
  while (v2 != v3)
  {
    if (v4)
    {
      v6 = sub_8F9F4();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = [v6 layoutSize];
    v9 = [v8 widthDimension];

    [v9 dimension];
    v11 = v10;

    v5 = v5 + v11;
    ++v3;
  }

  if (!v2)
  {
    goto LABEL_29;
  }

  sub_88838(0, v4 == 0, a1);
  if (!v4)
  {
    v12 = *(a1 + 32);
    goto LABEL_12;
  }

LABEL_30:
  v12 = sub_8F9F4();
LABEL_12:
  v32 = v12;
  v13 = 1;
  while (v2 != v13)
  {
    if (v4)
    {
      v14 = sub_8F9F4();
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_26;
    }

    v16 = [v32 layoutSize];
    v17 = [v16 heightDimension];

    [v17 dimension];
    v19 = v18;

    v20 = [v15 layoutSize];
    v21 = [v20 heightDimension];

    [v21 dimension];
    v23 = v22;

    if (v19 < v23)
    {

      ++v13;
      v32 = v15;
    }

    else
    {

      ++v13;
    }
  }

  v24 = [objc_opt_self() estimatedDimension:v5];
  v25 = [v32 layoutSize];
  v26 = [v25 heightDimension];

  v27 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v26];
  v28 = objc_opt_self();
  sub_CE5C(0, &qword_C6A28);
  isa = sub_8F6B4().super.isa;
  v30 = [v28 horizontalGroupWithLayoutSize:v27 subitems:isa];

  return v30;
}

id sub_712C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a3;
  v9 = sub_8E194();
  sub_42F8();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  swift_getKeyPath();
  sub_332C(&unk_C67B0);
  sub_8F044();

  v28 = aBlock;
  v29[0] = *v27;
  *(v29 + 9) = *&v27[9];
  if (BYTE1(aBlock) - 1 > 1)
  {
    v16 = sub_71708(a1);
  }

  else
  {
    v16 = sub_71804(v15, &v28, a5);
  }

  v17 = v16;
  sub_71AB0(&v28);
  sub_CE5C(0, &qword_C69A8);
  isa = sub_8F6B4().super.isa;

  [v17 setBoundarySupplementaryItems:isa];

  if ((BYTE2(v28) & 1) == 0)
  {
    [v17 setOrthogonalScrollingBehavior:1];
  }

  sub_59CD4(&v28);
  v19 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v19 + 24) = *(v6 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v11 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v11 + 32))(v21 + v20, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *&v27[16] = sub_71FC8;
  *&v27[24] = v21;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *v27 = sub_7164C;
  *&v27[8] = &unk_BADA0;
  v22 = _Block_copy(&aBlock);

  [v17 setVisibleItemsInvalidationHandler:v22];
  _Block_release(v22);
  return v17;
}

uint64_t sub_715B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = sub_8E184();
    sub_6A434(a1, v5, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_7164C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  sub_332C(&qword_C6A20);
  v9 = sub_8F6C4();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

id sub_71708(uint64_t a1)
{
  v1 = [objc_opt_self() sectionWithGroup:a1];
  sub_722CC();
  v2 = sub_722F0();
  v4 = v3(v2);
  sub_722CC();
  v5 = sub_722F0();
  v7 = v6(v5);
  sub_722CC();
  v8 = sub_722F0();
  v10 = v9(v8);
  sub_722CC();
  v11 = sub_722F0();
  [v1 setContentInsets:{v4, v7, v10, v12(v11)}];
  return v1;
}

void *sub_71804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v4 = sub_8EA54();
  __chkstk_darwin(v4 - 8);
  sub_8814();
  v5 = sub_8EB04();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = sub_8EA94();
  sub_42F8();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  (*(v14 + 104))(v26 - v19, **(&off_BAE18 + *(a2 + 1)), v12);
  v21 = *(v14 + 16);
  v21(v18, v20, v12);
  sub_8EAC4();
  v21(v18, v20, v12);
  sub_8EA44();
  sub_8EA84();
  sub_8EAF4();
  sub_CE5C(0, &unk_C69B0);
  v22 = sub_8F864();
  [v22 contentInsets];
  v24 = v23;
  [v22 contentInsets];
  [v22 setContentInsets:{8.0, v24, 26.0}];
  (*(v7 + 8))(v11, v5);
  (*(v14 + 8))(v20, v12);
  return v22;
}

void *sub_71AB0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 estimatedDimension:44.0];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  if (*(a1 + 32))
  {
    sub_CE5C(0, &qword_C69A8);
    sub_71CB0(v5, 5.0, 10.0, 0x726564616568, 0xE600000000000000, 1);
    sub_8F6A4();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_8F6E4();
    }

    sub_8F6F4();
  }

  if (*(a1 + 16))
  {
    sub_CE5C(0, &qword_C69A8);
    sub_71CB0(v5, 5.0, -26.0, 0x7265746F6F66, 0xE600000000000000, 5);
    sub_8F6A4();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_8F6E4();
    }

    sub_8F6F4();
  }

  return &_swiftEmptyArrayStorage;
}

id sub_71CB0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_8F5C4();

  v11 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v10 alignment:a6 absoluteOffset:{a2, a3}];

  return v11;
}

uint64_t sub_71D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_E3B0(a1, v9);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    sub_13D04(v2 + 32, v9);
    v4 = v10;
    v5 = v11;
    sub_CD08(v9, v10);
    (*(v5 + 64))(v7, v8, v4, v5);

    return sub_4F30(v9);
  }

  else
  {
    swift_beginAccess();
    return sub_13D04(v2 + 32, a2);
  }
}

uint64_t sub_71E48()
{
  sub_8B1C(v0 + 16);
  sub_4F30(v0 + 32);

  return v0;
}

uint64_t sub_71E80()
{
  sub_71E48();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_71ED8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_71F10()
{
  v1 = sub_8E194();
  sub_42F8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_71FC8(uint64_t a1, void *a2)
{
  sub_8E194();

  return sub_715B4(a1, a2);
}

uint64_t sub_72064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_7207C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_72120;
  v6[3] = &unk_BADF0;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  return v4;
}

id sub_72120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_7219C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_721F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C59E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_7226C()
{
  result = qword_C6A48;
  if (!qword_C6A48)
  {
    sub_8E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A48);
  }

  return result;
}

uint64_t sub_72300()
{

  return sub_8F044();
}

uint64_t sub_72334(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_332C(&qword_C3F70);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_332C(&qword_C6400);
      v11 = *(a3 + 24);
    }

    return sub_33C0(a1 + v11, a2, v10);
  }
}

void *sub_72438(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_332C(&qword_C3F70);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_332C(&qword_C6400);
      v10 = *(a4 + 24);
    }

    return sub_33E8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ShelfPageDestination()
{
  result = qword_C6AA8;
  if (!qword_C6AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_72564()
{
  sub_72638();
  if (v0 <= 0x3F)
  {
    sub_7269C(319, &qword_C6AC8, &type metadata accessor for JSServiceRequest);
    if (v1 <= 0x3F)
    {
      sub_7269C(319, &qword_C6AD0, type metadata accessor for ShelfPage);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_72638()
{
  if (!qword_C6AB8)
  {
    sub_3D10(&qword_C6AC0);
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C6AB8);
    }
  }
}

void sub_7269C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_115E4();
    v4 = sub_8F924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_726EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v106 = a1;
  v93 = a3;
  sub_8F004();
  sub_42F8();
  v97 = v4;
  v98 = v3;
  __chkstk_darwin(v3);
  sub_42BC();
  v90 = v5;
  v6 = sub_332C(&qword_C6400);
  __chkstk_darwin(v6 - 8);
  sub_42D0();
  v92 = v7;
  v9 = __chkstk_darwin(v8);
  v11 = &v88 - v10;
  __chkstk_darwin(v9);
  v94 = &v88 - v12;
  v13 = sub_332C(&qword_C3F70);
  __chkstk_darwin(v13 - 8);
  sub_42D0();
  v95 = v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v88 - v17;
  __chkstk_darwin(v16);
  v20 = &v88 - v19;
  v21 = sub_332C(&qword_C33A8);
  __chkstk_darwin(v21 - 8);
  v23 = &v88 - v22;
  sub_8EFE4();
  sub_42F8();
  v102 = v24;
  v103 = v25;
  __chkstk_darwin(v24);
  sub_42D0();
  v89 = v26;
  v28 = __chkstk_darwin(v27);
  v30 = &v88 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v88 - v32;
  __chkstk_darwin(v31);
  v35 = &v88 - v34;
  v99 = type metadata accessor for ShelfPageDestination();
  sub_4248();
  __chkstk_darwin(v36);
  sub_42BC();
  v104 = v37;
  IsRunningInternalBuild = deviceIsRunningInternalBuild();
  v91 = v11;
  if (!IsRunningInternalBuild || ([objc_opt_self() isRunningUnitTests] & 1) != 0)
  {
    v39 = 0;
    goto LABEL_4;
  }

  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_11;
  }

  sub_8EF94();
  v48 = sub_8F4F4();
  if (sub_33C0(v23, 1, v48) == 1)
  {
    sub_3410(v23, &qword_C33A8);
LABEL_11:
    sub_8F504();
    sub_73914();
    sub_73630(v49, v50);
    sub_559DC();
    *v51 = 0x666E496775626564;
    v51[1] = 0xE90000000000006FLL;
    v51[2] = v99;
    sub_BBB0();
    (*(v52 + 104))();
    swift_willThrow();
    sub_73938();
    v53(v35);

    v39 = 0;
    v96 = 0;
    goto LABEL_4;
  }

  sub_332C(&qword_C7480);
  v85 = v96;
  v39 = sub_8F4E4();
  v96 = v85;
  sub_BBB0();
  (*(v86 + 8))(v23, v48);
  sub_73938();
  v87(v35);
LABEL_4:
  *v104 = v39;
  sub_8EFF4();
  if (sub_8EFB4())
  {
LABEL_7:
    sub_8F504();
    sub_73914();
    sub_73630(v41, v42);
    sub_115E4();
    sub_559DC();
    strcpy(v43, "serviceRequest");
    v43[15] = -18;
    v44 = v99;
    *(v43 + 2) = v99;
    sub_BBB0();
    (*(v45 + 104))();
    swift_willThrow();
    sub_73938();
    v100 = v46;
    (v46)(v33);

    v47 = sub_8E514();
    sub_33E8(v20, 1, 1, v47);
    v96 = 0;
    goto LABEL_13;
  }

  sub_73464(v33, v101, v18);
  v40 = sub_8E514();
  if (sub_33C0(v18, 1, v40) == 1)
  {
    sub_3410(v18, &qword_C3F70);
    goto LABEL_7;
  }

  sub_73938();
  v100 = v54;
  (v54)(v33);
  sub_73788(v18, v20, &type metadata accessor for JSServiceRequest);
  sub_33E8(v20, 0, 1, v40);
  v44 = v99;
LABEL_13:
  v55 = *(v44 + 20);
  sub_2F1DC(v20, v104 + v55, &qword_C3F70);
  sub_8EFF4();
  v56 = sub_8EFB4();
  v57 = v102;
  if (v56)
  {
LABEL_16:
    sub_8F504();
    sub_73914();
    sub_73630(v60, v61);
    sub_115E4();
    sub_559DC();
    *v62 = 0x6B63617065646973;
    v62[1] = 0xE800000000000000;
    v62[2] = v44;
    sub_BBB0();
    (*(v63 + 104))();
    swift_willThrow();
    sub_7392C();
    v64();

    v65 = type metadata accessor for ShelfPage();
    v66 = v94;
    sub_33E8(v94, 1, 1, v65);
    goto LABEL_18;
  }

  v58 = type metadata accessor for ShelfPage();
  (*(v103 + 16))(v89, v30, v57);
  (*(v97 + 16))(v90, v101, v98);
  sub_73630(&qword_C6B08, type metadata accessor for ShelfPage);
  v59 = v91;
  sub_8F1B4();
  if (sub_33C0(v59, 1, v58) == 1)
  {
    sub_3410(v59, &qword_C6400);
    v44 = v99;
    goto LABEL_16;
  }

  sub_7392C();
  v67();
  v68 = v59;
  v66 = v94;
  sub_73788(v68, v94, type metadata accessor for ShelfPage);
  sub_33E8(v66, 0, 1, v58);
  v44 = v99;
LABEL_18:
  v69 = *(v44 + 24);
  v70 = v104;
  sub_2F1DC(v66, v104 + v69, &qword_C6400);
  v71 = v95;
  sub_2ACE8(v70 + v55, v95, &qword_C3F70);
  v72 = sub_8E514();
  if (sub_33C0(v71, 1, v72) != 1)
  {
    sub_7392C();
    v80();
    v81 = &qword_C3F70;
    v82 = v71;
LABEL_26:
    sub_3410(v82, v81);
    sub_73788(v70, v93, type metadata accessor for ShelfPageDestination);
    return (*(v97 + 8))(v101, v98);
  }

  sub_3410(v71, &qword_C3F70);
  v73 = v70 + v69;
  v74 = v92;
  sub_2ACE8(v73, v92, &qword_C6400);
  v75 = type metadata accessor for ShelfPage();
  if (sub_33C0(v74, 1, v75) != 1)
  {
    sub_7392C();
    v83();
    v81 = &qword_C6400;
    v82 = v74;
    goto LABEL_26;
  }

  sub_3410(v74, &qword_C6400);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v76 = sub_8E304();
  sub_4D6C(v76, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v105[3] = v44;
  v77 = sub_4ED0(v105);
  sub_73674(v70, v77);
  v78 = AMSLogKey();
  if (v78)
  {
    v79 = v78;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v105);
  sub_8E244();
  sub_8E2D4();

  sub_736D8();
  sub_559DC();
  swift_willThrow();
  v100(v106, v102);
  sub_7372C(v70);
  return (*(v97 + 8))(v101, v98);
}

uint64_t sub_73330@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_332C(&qword_C3720);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_8EF34();
  v5 = sub_8F144();
  if (sub_33C0(v4, 1, v5) == 1)
  {
    result = sub_3410(v4, &qword_C3720);
    v7 = 0;
  }

  else
  {
    v7 = sub_8F134();
    result = (*(*(v5 - 8) + 8))(v4, v5);
  }

  *a1 = v7;
  return result;
}

uint64_t sub_73464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8E4F4();
  v13 = sub_8E514();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_73630(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_115E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_73674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_736D8()
{
  result = qword_C6B10;
  if (!qword_C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B10);
  }

  return result;
}

uint64_t sub_7372C(uint64_t a1)
{
  v2 = type metadata accessor for ShelfPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_73788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_4248();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ShelfPageDestination.DecodingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x73884);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_738C0()
{
  result = qword_C6B18;
  if (!qword_C6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B18);
  }

  return result;
}

uint64_t sub_73944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_73998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_739F8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  v1 = objc_msgSendSuper2(&v3, "init");
  [v1 setContentInsetAdjustmentBehavior:2];
  [v1 setScrollEnabled:0];

  return v1;
}

id sub_73A90(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  v3 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setContentInsetAdjustmentBehavior:2];
    [v5 setScrollEnabled:0];
  }

  return v4;
}

id sub_73B44(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);
  [v11 setContentInsetAdjustmentBehavior:2];
  [v11 setScrollEnabled:0];

  return v11;
}

id sub_73C90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  return objc_msgSendSuper2(&v2, "contentSize");
}

id sub_73D24(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  objc_msgSendSuper2(&v6, "setContentSize:", a1, a2);
  return [v2 invalidateIntrinsicContentSize];
}

CGFloat sub_73DC4()
{
  v1 = [v0 collectionViewLayout];
  [v1 collectionViewContentSize];

  return UIViewNoIntrinsicMetric;
}

id sub_73E2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPageFooterCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char **sub_73E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72[1] = a3;
  v73 = a4;
  v8 = sub_8E324();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = [objc_allocWithZone(AMSUICommonStackView) init];
  v12 = *(a1 + 8);
  v75 = v8;
  if (v12 == 1)
  {
    v13 = objc_allocWithZone(sub_8E4B4());
    v14 = sub_8E4A4();
    v8 = &selRef_viewDidAppear_;
    v15 = [v14 layer];
    v16 = [objc_opt_self() ams_mediaBorder];
    v17 = [v16 CGColor];

    [(SEL *)v15 setBorderColor:v17];
    v18 = [v14 layer];

    [v18 setBorderWidth:1.0];
    sub_899E0(1.0);
    if (a2)
    {
      v8 = *&stru_108.segname[(swift_isaMask & *v14) + 16];

      (v8)(v19, a5);
    }

    v20 = sub_759A8();
    [v20 v21];
  }

  else
  {
    v76[5] = *a1;
    v76[6] = v12;
    v22 = *(a1 + 32);
    v77 = *(a1 + 16);
    v78 = v22;
    v23 = [objc_allocWithZone(AMSUICommonImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v23 heightAnchor];
    if (!_UISolariumEnabled() || (v25 = sub_75988(), v26(v25), sub_8E314(), v27 = sub_75974(), v28(v27, v8), v29 = 28.0, (v11 & 1) == 0))
    {
      v29 = 30.0;
    }

    v30 = [v24 constraintEqualToConstant:v29];

    [v30 setActive:1];
    v31 = [v23 widthAnchor];

    if ((_UISolariumEnabled() & 1) == 0 || (v32 = sub_75988(), v33(v32), sub_8E314(), v34 = sub_75974(), v35(v34, v8), v36 = 28.0, (v11 & 1) == 0))
    {
      v36 = 30.0;
    }

    v37 = [v31 constraintEqualToConstant:v36];

    [v37 setActive:1];
    if ((_UISolariumEnabled() & 1) == 0 || (v38 = sub_75988(), v39(v38), sub_8E314(), v40 = sub_75974(), v41(v40, v8), v42 = 28.0, (v11 & 1) == 0))
    {
      v42 = 30.0;
    }

    [objc_opt_self() scale];
    sub_5C520(v42, v42);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = sub_CE5C(0, &qword_C3F30);
    v44 = sub_8F7D4();
    v76[3] = v43;
    v76[4] = &protocol witness table for OS_dispatch_queue;
    v76[0] = v44;
    sub_8F3C4();

    sub_4F30(v76);
    v45 = sub_759A8();
    [v45 v46];
  }

  v47 = [objc_allocWithZone(AMSUICommonLabel) init];
  v48 = v47;
  if (*(a1 + 8) == 1 || !*(a1 + 40))
  {
    v55 = v47;
    v56 = _UISolariumEnabled();
    v54 = v75;
    if (v56 && (v57 = sub_75988(), v58(v57), sub_8E314(), v59 = sub_75974(), v60(v59, v54), (v11 & 1) != 0))
    {
      v61 = &UIFontTextStyleHeadline;
    }

    else
    {
      v61 = &UIFontTextStyleSubheadline;
    }

    v62 = *v61;
    v63 = [objc_opt_self() _preferredFontForTextStyle:v62 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryLarge];

    [v55 setFont:v63];
    if (v73)
    {
      v53 = sub_8F5C4();
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v49 = objc_opt_self();
    v50 = v48;
    v51 = [v49 _preferredFontForTextStyle:UIFontTextStyleHeadline variant:1024 maximumContentSizeCategory:UIContentSizeCategoryLarge];
    v52 = v50;
    v15 = &selRef_viewDidAppear_;
    [v52 setFont:v51];

    v53 = sub_8F5C4();
    v54 = v75;
  }

  [v48 setText:v53];

  v64 = v48;
  [v64 setTextAlignment:1];
  v65 = [objc_opt_self() ams_primaryText];
  [v64 setTextColor:v65];

  v66 = v8;
  [v66 v15[63]];
  if (!_UISolariumEnabled() || (v67 = sub_75988(), v68(v67), v69 = sub_8E314(), (*(v9 + 8))(v11, v54), v70 = 10.0, (v69 & 1) == 0))
  {
    v70 = 8.0;
  }

  [v66 setSpacing:v70];
  [v66 setAxis:0];

  return v66;
}

void sub_7464C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setImage:v1];
  }
}

uint64_t sub_746B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_74988(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (LOBYTE(__dst[2]))
  {
    if (LOBYTE(__dst[2]) == 1)
    {
      v5 = sub_749E4(__dst, a4);
    }

    else
    {
      v10 = qword_98258[SLOBYTE(__dst[16])];
      sub_CE5C(0, &qword_C44A8);
      sub_CE5C(0, &qword_C4F58);
      sub_75314(__dst, v19);
      v11 = swift_allocObject();
      memcpy((v11 + 16), v19, 0x98uLL);
      *(v11 + 168) = a4;

      v22.value.super.super.isa = sub_8F8C4();
      v22.is_nil = 0;
      v12.super.super.isa = sub_8F794(v10, v22, v23).super.super.isa;
      isa = v12.super.super.isa;
      v14 = __dst[1];
      if (__dst[1])
      {
        v15 = v12.super.super.isa;
        v14 = sub_8F5C4();
      }

      else
      {
        v16 = v12.super.super.isa;
      }

      [(objc_class *)isa setAccessibilityLabel:v14, 0, 0, 0, sub_75968, v11];

      [(objc_class *)isa setIsAccessibilityElement:1];
      sub_418C(&__dst[11], v19);
      v17 = *(&v19[1] + 1) != 0;
      sub_13E24(v19, &qword_C2DE0);
      [(objc_class *)isa setEnabled:v17];
      [(objc_class *)isa setHidesSharedBackground:LOBYTE(__dst[10])];
      sub_332C(&qword_C6B48);
      *&v19[0] = isa;
      v5 = sub_8F3E4();
    }

    v9 = v5;
  }

  else
  {
    v19[0] = *&__src[3];
    v19[1] = *&__src[5];
    v19[2] = *&__src[7];
    v6 = sub_73E84(v19, __dst[9], __dst[17], __dst[18], a4);
    v7 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v6];
    [v7 setHidesSharedBackground:LOBYTE(__dst[10])];
    sub_332C(&qword_C6B48);
    v8 = v7;
    v9 = sub_8F3E4();
  }

  sub_75374(__dst);
  return v9;
}

uint64_t sub_749E4(uint64_t a1, uint64_t a2)
{
  sub_332C(&qword_C6B48);
  v4 = sub_8F444();
  sub_74AF4(a1);
  sub_75314(a1, __src);
  v5 = swift_allocObject();
  memcpy(v5 + 2, __src, 0x98uLL);
  v5[21] = a2;
  v5[22] = v4;
  sub_CE5C(0, &qword_C3F30);

  v6 = sub_8F7D4();
  sub_755C0(v6, sub_75490, v5);

  return v4;
}

uint64_t sub_74AF4(uint64_t a1)
{
  v2 = sub_332C(&qword_C40D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  if (*(a1 + 72))
  {
    sub_332C(&qword_C6B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_92300;
    v6 = objc_opt_self();

    *(inited + 32) = [v6 mainBundle];
    if (qword_C2C78 != -1)
    {
LABEL_16:
      swift_once();
    }

    v7 = qword_D0318;
    *(inited + 40) = qword_D0318;
    v8 = qword_C2C70;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_D0310;
    *(inited + 48) = qword_D0310;
    v11 = &_swiftEmptyArrayStorage;
    v24[0] = &_swiftEmptyArrayStorage;
    v12 = v10;
    for (i = 0; i != 3; ++i)
    {
      if (i > 2)
      {
        __break(1u);
        goto LABEL_16;
      }

      v14 = *(inited + 8 * i + 32);
      if (v14)
      {
        v15 = v14;
        sub_8F6A4();
        if (*(&dword_10 + (v24[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_8F6E4();
        }

        sub_8F6F4();
        v11 = v24[0];
      }
    }

    swift_setDeallocating();
    sub_754EC(&qword_C6B70);
    sub_CE5C(0, &qword_C6B68);
    sub_8F174();
    sub_8F394();
    v16 = v24[0];

    sub_8E424();
    sub_8E434();
    v17 = sub_8E0F4();
    result = sub_33C0(v4, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_757E8(v24);
      sub_332C(&qword_C6B50);
      sub_8E0C4(v19);
      v21 = v20;
      (*(*(v17 - 8) + 8))(v4, v17);
      sub_75534(v21, v11, v16);

      v22 = sub_8F424();

      return v22;
    }
  }

  else
  {
    sub_332C(&qword_C6B50);
    sub_75794();
    swift_allocError();
    return sub_8F3D4();
  }

  return result;
}

void sub_74E70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_CE5C(0, &qword_C44A8);
  v7 = *(a3 + 136);
  v8 = *(a3 + 144);
  sub_CE5C(0, &qword_C4F58);
  sub_75314(a3, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x98uLL);
  *(v9 + 168) = a4;
  v10 = v6;

  v16.is_nil = sub_8F8C4();
  v19.value._countAndFlagsBits = v7;
  v19.value._object = v8;
  v16.value.super.isa = v6;
  v17.value.super.super.isa = 0;
  v11.super.super.isa = sub_8F7A4(v19, v16, v17, v18).super.super.isa;
  v12 = *(a3 + 8);
  v13 = v11.super.super.isa;
  if (v12)
  {
    v12 = sub_8F5C4();
  }

  [(objc_class *)v11.super.super.isa setAccessibilityLabel:v12, 0, 0, 0, sub_75774, v9];

  [(objc_class *)v11.super.super.isa setIsAccessibilityElement:1];
  sub_418C(a3 + 88, __src);
  v14 = __src[3] != 0;
  sub_13E24(__src, &qword_C2DE0);
  [(objc_class *)v11.super.super.isa setEnabled:v14];
  [(objc_class *)v11.super.super.isa setHidesSharedBackground:*(a3 + 80)];
  __src[0] = v11.super.super.isa;
  sub_8F414();
}

uint64_t sub_75070(uint64_t a1, uint64_t a2)
{
  v4 = sub_8E5D4();
  __chkstk_darwin(v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8F264();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E5F4();
  sub_8F174();
  sub_8F394();
  v11 = *&v14[0];
  sub_8F394();
  (*(v8 + 16))(v6, v10, v7);
  v12 = sub_332C(&unk_C5850);
  sub_33E8(v6, 0, 1, v12);
  memset(v14, 0, sizeof(v14));
  v15 = -1;
  (*(*v11 + 216))(a1, v6, a2, v14);

  sub_13E24(v14, &qword_C3940);
  sub_CE00(v6);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_7529C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_418C(a2 + 88, &v5);
  if (!v6)
  {
    return sub_13E24(&v5, &qword_C2DE0);
  }

  sub_3A94(&v5, v7);
  sub_75070(v7, a3);
  return sub_4F30(v7);
}

uint64_t sub_753C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_75408()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 128))
  {
    sub_4F30(v0 + 104);
  }

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_7549C()
{
  swift_arrayDestroy();
  v0 = sub_75998();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_754EC(uint64_t *a1)
{
  sub_332C(a1);
  swift_arrayDestroy();
  v1 = sub_75998();

  return _swift_deallocClassInstance(v1, v2, v3);
}

id sub_75534(uint64_t a1, uint64_t a2, void *a3)
{
  sub_CE5C(0, &qword_C3AF0);
  isa = sub_8F6B4().super.isa;

  v6 = [a3 fetchImageWithURL:a1 searchBundles:isa];

  return v6;
}

uint64_t sub_755C0(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_CE5C(0, &qword_C3F30);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_8F3C4();

  return sub_4F30(v10);
}

uint64_t sub_756C4()
{

  v0 = sub_75998();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_756F4()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 128))
  {
    sub_4F30(v0 + 104);
  }

  return _swift_deallocObject(v0, 176, 7);
}

unint64_t sub_75794()
{
  result = qword_C6B58;
  if (!qword_C6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShelfPageNavigationBarButtonProvider.ButtonDecodingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x758D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_75914()
{
  result = qword_C6B80;
  if (!qword_C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B80);
  }

  return result;
}

uint64_t sub_759BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(type metadata accessor for Shelf() - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    v10 = *v9 == a2 && v9[1] == a3;
    if (v10 || (sub_8FB54() & 1) != 0)
    {
      v11 = v6;
      goto LABEL_11;
    }

    ++v6;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

void sub_75AB8()
{
  sub_41B8C();
  v123 = v0;
  v3 = v2;
  v115 = 0;
  v4 = type metadata accessor for ShelfPage();
  sub_4248();
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  v9 = sub_332C(&qword_C6170);
  sub_41B1C(v9);
  sub_41B68();
  __chkstk_darwin(v10);
  v12 = &v110 - v11;
  v122 = type metadata accessor for Shelf();
  sub_42F8();
  v111 = v13;
  __chkstk_darwin(v14);
  sub_42D0();
  v119 = v15;
  sub_43E04();
  __chkstk_darwin(v16);
  v18 = (&v110 - v17);
  v19 = sub_332C(&qword_C6400);
  v20 = sub_41B1C(v19);
  __chkstk_darwin(v20);
  sub_42D0();
  v113 = v21;
  sub_43E04();
  __chkstk_darwin(v22);
  sub_43E74();
  v114 = v23;
  sub_43E04();
  __chkstk_darwin(v24);
  sub_43E74();
  v112 = v25;
  sub_43E04();
  v27 = __chkstk_darwin(v26);
  v29 = &v110 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v110 - v31;
  __chkstk_darwin(v30);
  sub_7B0A4();
  __chkstk_darwin(v33);
  v35 = (&v110 - v34);
  v36 = &unk_D0000;
  switch(v3)
  {
    case 1:
      v117 = v8;
      v40 = v4;
      v41 = v123;
      *(v123 + 16) = 1;
      swift_beginAccess();
      v42 = *(v41 + 24);
      v121 = *(v42 + 16);
      v43 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
      v44 = v42;

      v120 = v43;
      sub_7B08C();
      v45 = 0;
      v46 = (v44 + 40);
      v118 = v4;
      v116 = v44;
      while (2)
      {
        if (v121 != v45)
        {
          if (v45 >= *(v44 + 16))
          {
            __break(1u);
          }

          else
          {
            v48 = *(v46 - 1);
            v47 = *v46;
            sub_CD4C(v123 + v120, v29, &qword_C6400);
            if (sub_33C0(v29, 1, v40))
            {
              sub_3410(v29, &qword_C6400);
              sub_7B068();
              sub_33E8(v49, v50, v51, v122);
LABEL_11:
              sub_3410(v12, &qword_C6170);
LABEL_12:
              v46 += 2;
              ++v45;
              continue;
            }

            sub_7AFC0();
            v52 = v117;
            sub_7AD20(v29, v117, v53);

            sub_3410(v29, &qword_C6400);
            sub_5F390(v48, v47, 1, v12);
            sub_7AF78();
            sub_78AD0(v52, v54);
            if (sub_33C0(v12, 1, v122) == 1)
            {

              v44 = v116;
              goto LABEL_11;
            }

            sub_7AFA8();
            sub_7ACC0(v12, v119, v55);
            v56 = sub_76C34();
            v58 = v57;
            v59 = sub_7B034(v56, v57);
            if (sub_33C0(v59, v60, v40))
            {
LABEL_16:
              v64 = sub_7B040();
              (v56)(v64);
              v65 = sub_76C34();
              v67 = v66;
              v68 = sub_7B034(v65, v66);
              if (sub_33C0(v68, v69, v118))
              {
                v70 = sub_7B040();
                (v65)(v70);
                v71 = v119;
              }

              else
              {
                sub_7A76C(sub_345F0);
                v72 = *(*(v67 + 8) + 16);
                sub_7A70C(v72, sub_345F0);
                *(*(v67 + 8) + 16) = v72 + 1;
                sub_7AFF0();
                v71 = v119;
                sub_7AD20(v119, v73, v74);
                v75 = sub_7B040();
                (v65)(v75);
              }

              sub_7AF90();
              sub_78AD0(v71, v76);
              v40 = v118;
              v44 = v116;
              goto LABEL_12;
            }

            v61 = v115;
            v62 = sub_7A934(v58, v48, v47);
            v63 = *(*v58 + 16);
            if (v63 >= v62)
            {
              v115 = v61;
              sub_7A7C8(v62, v63);
              goto LABEL_16;
            }
          }

          __break(1u);
          JUMPOUT(0x76490);
        }

        break;
      }

      *(v123 + 24) = &_swiftEmptyArrayStorage;

      v36 = &unk_D0000;
      goto LABEL_38;
    case 2:
      goto LABEL_38;
    case 3:
      goto LABEL_48;
    default:
      v37 = v123;
      *(v123 + 16) = 0;
      v38 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
      sub_7B08C();
      sub_CD4C(v37 + v38, v35, &qword_C6400);
      if (sub_7B050(v35))
      {
        v39 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v39 = *v35;
      }

      sub_3410(v35, &qword_C6400);
      v125 = v39;
      sub_CD4C(v123 + v38, v1, &qword_C6400);
      v77 = &_swiftEmptyArrayStorage;
      if (!sub_7B050(v1))
      {
        v77 = *(v1 + 8);
      }

      sub_3410(v1, &qword_C6400);
      sub_31898(v77);
      v78 = sub_76C34();
      v80 = v79;
      v81 = sub_7B034(v78, v79);
      if (!sub_33C0(v81, v82, v4))
      {
        *v80 = v125;
      }

      (v78)(v124, 0);
      sub_CD4C(v123 + v38, v32, &qword_C6400);
      if (sub_7B050(v32))
      {
        sub_3410(v32, &qword_C6400);
LABEL_28:
        v83 = &_swiftEmptyArrayStorage;
        goto LABEL_35;
      }

      v84 = *(v32 + 1);

      sub_3410(v32, &qword_C6400);
      v85 = *(v84 + 16);
      if (!v85)
      {

        goto LABEL_28;
      }

      v118 = v4;
      v124[0] = &_swiftEmptyArrayStorage;
      sub_529A0(0, v85, 0);
      v83 = v124[0];
      v86 = *(v111 + 80);
      v122 = v84;
      v87 = v84 + ((v86 + 32) & ~v86);
      v88 = *(v111 + 72);
      do
      {
        sub_7AFF0();
        sub_7AD20(v87, v18, v89);
        v91 = *v18;
        v90 = v18[1];

        sub_7AF90();
        sub_78AD0(v18, v92);
        v124[0] = v83;
        v94 = v83[2];
        v93 = v83[3];
        if (v94 >= v93 >> 1)
        {
          sub_529A0((v93 > 1), v94 + 1, 1);
          v83 = v124[0];
        }

        v83[2] = v94 + 1;
        v95 = &v83[2 * v94];
        *(v95 + 4) = v91;
        *(v95 + 5) = v90;
        v87 += v88;
        --v85;
      }

      while (v85);

      v4 = v118;
LABEL_35:
      swift_beginAccess();
      sub_31988(v83);
      swift_endAccess();
      v96 = sub_76C34();
      v98 = v97;
      v99 = sub_7B034(v96, v97);
      if (!sub_33C0(v99, v100, v4))
      {
        *(v98 + 8) = &_swiftEmptyArrayStorage;
      }

      (v96)(v124, 0);
      v36 = &unk_D0000;
LABEL_38:
      v101 = v123;
      v102 = v36[115];
      sub_7B08C();
      v103 = v112;
      sub_CD4C(v101 + v102, v112, &qword_C6400);
      if (sub_7B050(v103))
      {
        v104 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v104 = *(v103 + 16);
      }

      v105 = v114;
      sub_3410(v103, &qword_C6400);
      sub_CD4C(v123 + v102, v105, &qword_C6400);
      if (sub_7B050(v105))
      {
        v106 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v106 = *v105;
      }

      sub_3410(v105, &qword_C6400);
      v107 = v123 + v102;
      v108 = v113;
      sub_CD4C(v107, v113, &qword_C6400);
      if (sub_7B050(v108))
      {
        v109 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v109 = *(v108 + 8);
      }

      sub_3410(v108, &qword_C6400);
      sub_65B84(v104, v106, v109);

LABEL_48:
      sub_41B74();
      return;
  }
}

void sub_764A0()
{
  sub_41B8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v65 = v4;
  v6 = sub_332C(&qword_C6400);
  v7 = sub_41B1C(v6);
  __chkstk_darwin(v7);
  sub_42D0();
  v76 = v8;
  sub_43E04();
  __chkstk_darwin(v9);
  sub_43E74();
  v73 = v10;
  sub_43E04();
  __chkstk_darwin(v11);
  sub_43E74();
  v72 = v12;
  sub_43E04();
  __chkstk_darwin(v13);
  sub_43E74();
  v70 = v14;
  sub_43E04();
  __chkstk_darwin(v15);
  v69 = &v65 - v16;
  v17 = sub_332C(&qword_C6220);
  sub_41B1C(v17);
  sub_41B68();
  __chkstk_darwin(v18);
  v68 = &v65 - v19;
  v20 = sub_8F264();
  v21 = sub_41B1C(v20);
  __chkstk_darwin(v21);
  sub_8814();
  v67 = v23 - v22;
  v24 = sub_8F194();
  sub_42F8();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_42D0();
  v66 = v28;
  sub_43E04();
  __chkstk_darwin(v29);
  v31 = &v65 - v30;
  *(v0 + 16) = 3;
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  sub_332C(&qword_C6DE0);
  sub_7B074();
  *(v0 + 40) = sub_8F534();
  sub_332C(&qword_C6598);
  sub_7B074();
  *(v0 + 48) = sub_8EEF4();
  sub_332C(&qword_C6DE8);
  sub_7B074();
  *(v0 + 56) = sub_8F534();
  sub_332C(&qword_C6DF0);
  sub_7B074();
  *(v0 + 64) = sub_8F534();
  sub_332C(&qword_C6DF8);
  sub_7B074();
  *(v0 + 72) = sub_8F534();
  v32 = type metadata accessor for ShelfPage();
  sub_7B068();
  sub_33E8(v33, v34, v35, v32);
  v36 = (v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_lastItemId);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  sub_7AD20(v5, v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination, type metadata accessor for ShelfPageDestination);
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_objectGraph) = v3;
  sub_8F234();
  sub_8F174();

  sub_8F394();
  v37 = v79[0];
  sub_8F394();
  v74 = v31;
  v75 = v26;
  v38 = *(v26 + 16);
  v77 = v24;
  v38(v66, v31, v24);
  sub_332C(&qword_C6770);

  v78 = v3;
  sub_8F394();
  sub_8F254();
  swift_unknownObjectRelease();
  sub_8F034();
  sub_7B068();
  sub_33E8(v39, v40, v41, v42);
  sub_8F2B4();
  sub_7B074();
  v71 = v37;
  v43 = v65;
  v44 = sub_8F274();
  v45 = v69;
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_metricsPresenter) = v44;
  v46 = *(type metadata accessor for ShelfPageDestination() + 24);
  sub_CD4C(v43 + v46, v45, &qword_C6400);
  sub_7B008(v45);
  if (v47)
  {
    sub_3410(v45, &qword_C6400);
    v49 = 0;
  }

  else
  {
    sub_5EEB8(v45 + 40, v79);
    sub_7AF78();
    sub_78AD0(v45, v48);
    v49 = v79[1];

    sub_5EEF0(v79);
  }

  v50 = v70;
  sub_CD4C(v43 + v46, v70, &qword_C6400);
  sub_7B008(v50);
  v51 = v72;
  if (v47)
  {
    sub_3410(v50, &qword_C6400);
    v53 = [objc_opt_self() ams_clear];
  }

  else
  {
    sub_5EEB8(v50 + 40, v79);
    sub_7AF78();
    sub_78AD0(v50, v52);
    v53 = v79[2];
    sub_5EEF0(v79);
  }

  sub_CD4C(v43 + v46, v51, &qword_C6400);
  sub_7B008(v51);
  if (v47)
  {
    sub_3410(v51, &qword_C6400);
    v83[3] = &type metadata for DefaultLayoutModel;
    v83[4] = &protocol witness table for DefaultLayoutModel;
  }

  else
  {
    sub_5EEB8(v51 + 40, v79);
    sub_7AF78();
    sub_78AD0(v51, v54);
    sub_13D04(v80, v82);
    sub_5EEF0(v79);
    sub_3A94(v82, v83);
  }

  v55 = v73;
  sub_CD4C(v43 + v46, v73, &qword_C6400);
  sub_7B008(v55);
  if (v47)
  {
    sub_3410(v55, &qword_C6400);
    v57 = 0;
  }

  else
  {
    sub_5EEB8(v55 + 40, v79);
    sub_7AF78();
    sub_78AD0(v55, v56);
    v57 = v81;

    sub_5EEF0(v79);
  }

  v58 = v43 + v46;
  v59 = v76;
  sub_CD4C(v58, v76, &qword_C6400);
  sub_7B008(v59);
  if (v47)
  {
    sub_3410(v59, &qword_C6400);
    v61 = 2;
  }

  else
  {
    sub_5EEB8(v59 + 40, v79);
    sub_7AF78();
    sub_78AD0(v59, v60);
    v61 = v80[56];
    sub_5EEF0(v79);
  }

  sub_13D04(v83, v79);
  v62 = *(v1 + 48);
  type metadata accessor for ShelfPageCollectionPresenter();
  swift_allocObject();

  v63 = sub_6586C(v78, v49, v53, v79, v62, v57, v61);

  sub_7AFD8();
  sub_78AD0(v43, v64);
  (*(v75 + 8))(v74, v77);
  sub_4F30(v83);
  *(v1 + 32) = v63;
  sub_41B74();
}

uint64_t sub_76C98()
{

  sub_7AFD8();
  sub_78AD0(v0 + v1, v2);

  sub_3410(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage, &qword_C6400);

  return v0;
}

uint64_t sub_76D50()
{
  sub_76C98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_76DD0()
{
  type metadata accessor for ShelfPageDestination();
  if (v0 <= 0x3F)
  {
    sub_76ED4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_76ED4()
{
  if (!qword_C6AD0)
  {
    type metadata accessor for ShelfPage();
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C6AD0);
    }
  }
}

uint64_t sub_76F54(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_76F8C()
{
  sub_77014();
  if (v0 <= 0x3F)
  {
    sub_7703C();
    if (v1 <= 0x3F)
    {
      sub_770EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_77014()
{
  result = qword_C6D88;
  if (!qword_C6D88)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_C6D88);
  }

  return result;
}

void sub_7703C()
{
  if (!qword_C6D90)
  {
    sub_3D10(&unk_C3EF0);
    sub_3D10(&qword_C40D0);
    sub_3D10(&qword_C6D98);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_C6D90);
    }
  }
}

ValueMetadata *sub_770EC()
{
  result = qword_C6DA0;
  if (!qword_C6DA0)
  {
    result = &type metadata for LoadingViewController.Style;
    atomic_store(&type metadata for LoadingViewController.Style, &qword_C6DA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShelfPagePresenter.FooterLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x771E0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_7721C()
{
  result = qword_C6DD0;
  if (!qword_C6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6DD0);
  }

  return result;
}

void sub_772B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_41B8C();
  a19 = v21;
  a20 = v22;
  type metadata accessor for ShelfPagePresenter.State(0);
  sub_4248();
  __chkstk_darwin(v23);
  sub_8814();
  v26 = (v25 - v24);
  v27 = sub_332C(&qword_C6400);
  sub_41B1C(v27);
  sub_41B68();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  type metadata accessor for ShelfPage();
  sub_4248();
  __chkstk_darwin(v31);
  sub_8814();
  v34 = v33 - v32;
  sub_8F2B4();
  sub_8F2C4();
  v35 = v20 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
  v36 = type metadata accessor for ShelfPageDestination();
  sub_CD4C(v35 + *(v36 + 24), v30, &qword_C6400);
  if (sub_7B050(v30) == 1)
  {
    sub_3410(v30, &qword_C6400);
    *v26 = 0;
    swift_storeEnumTagMultiPayload();
    sub_8F524();
    v37 = type metadata accessor for ShelfPagePresenter.State;
    v38 = v26;
  }

  else
  {
    sub_7ACC0(v30, v34, type metadata accessor for ShelfPage);
    sub_774A0(v34);
    sub_7AF78();
    v38 = v34;
  }

  sub_78AD0(v38, v37);
  sub_77954();
  sub_41B74();
}

uint64_t sub_774A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ShelfPagePresenter.State(0);
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_332C(&qword_C6220);
  __chkstk_darwin(v7 - 8);
  v9 = v26 - v8;
  v10 = sub_332C(&qword_C6400);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  if (*(*(a1 + 16) + 16) || *(*a1 + 16) || *(*(a1 + 8) + 16))
  {
    v26[2] = v4;
    v27 = v6;
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v13 = sub_8E304();
    v26[1] = sub_4D6C(v13, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v28[3] = type metadata accessor for ShelfPagePresenter(0);
    v28[0] = v2;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v28);
    sub_8E244();
    sub_8E2E4();

    sub_7AD20(a1, v12, type metadata accessor for ShelfPage);
    v16 = type metadata accessor for ShelfPage();
    sub_33E8(v12, 0, 1, v16);
    v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
    swift_beginAccess();
    sub_78B28(v12, v2 + v17);
    swift_endAccess();
    v18 = *(v16 + 36);
    v19 = sub_8F034();
    (*(*(v19 - 8) + 16))(v9, a1 + v18, v19);
    sub_33E8(v9, 0, 1, v19);
    sub_8F2A4();
    LOBYTE(v28[0]) = *(a1 + 40);
    sub_8F524();
    sub_8F524();
    sub_8EEE4();
    if (*(*a1 + 16))
    {
      *(v2 + 16) = 3;
    }

    else
    {
      *(v2 + 16) = 2;
      sub_75AB8();
    }

    v20 = v27;
    swift_storeEnumTagMultiPayload();
    sub_8F524();
    return sub_78AD0(v20, type metadata accessor for ShelfPagePresenter.State);
  }

  else
  {
    v23 = *(a1 + 104);
    v22 = *(a1 + 112);
    sub_78B98();
    v24 = swift_allocError();
    *v25 = v23;
    v25[1] = v22;

    sub_780E4(v24);
  }
}

uint64_t sub_77954()
{
  v1 = v0;
  v2 = sub_332C(&qword_C3F70);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-1] - v3;
  v5 = sub_8E514();
  __chkstk_darwin(v5);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
  v9 = type metadata accessor for ShelfPageDestination();
  sub_CD4C(v8 + *(v9 + 20), v4, &qword_C3F70);
  if (sub_33C0(v4, 1, v5) == 1)
  {
    sub_3410(v4, &qword_C3F70);
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v10 = sub_8E304();
    sub_4D6C(v10, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v22 = type metadata accessor for ShelfPagePresenter(0);
    v21[0] = v1;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v21);
    sub_8E244();
    sub_8E2E4();
  }

  else
  {
    sub_7ACC0(v4, v7, &type metadata accessor for JSServiceRequest);
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v13 = sub_8E304();
    sub_4D6C(v13, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v22 = type metadata accessor for ShelfPagePresenter(0);
    v21[0] = v1;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v21);
    sub_8E244();
    v22 = v5;
    v17 = sub_4ED0(v21);
    sub_7AD20(v7, v17, &type metadata accessor for JSServiceRequest);
    sub_8E264();
    sub_3410(v21, &unk_C3EB0);
    sub_8E2E4();

    sub_8F174();
    sub_8F394();
    type metadata accessor for ShelfPage();
    sub_7AD80(&qword_C6B08, type metadata accessor for ShelfPage);
    sub_8E674();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v18 = sub_41558();

    v19 = sub_8F7D4();
    v22 = v18;
    v23 = &protocol witness table for OS_dispatch_queue;
    v21[0] = v19;
    sub_8F3C4();

    sub_78AD0(v7, &type metadata accessor for JSServiceRequest);
    sub_4F30(v21);
  }
}

uint64_t sub_78024(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_774A0(a1);
  }

  return result;
}

uint64_t sub_78084(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_780E4(a1);
  }

  return result;
}

uint64_t sub_780E4(uint64_t a1)
{
  v3 = sub_332C(&qword_C3F70);
  __chkstk_darwin(v3 - 8);
  v42 = &v38 - v4;
  v43 = type metadata accessor for ShelfPagePresenter.State(0);
  v5 = __chkstk_darwin(v43);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v38 - v8);
  v10 = sub_332C(&qword_C50D0);
  __chkstk_darwin(v10 - 8);
  v38 = &v38 - v11;
  v12 = sub_8F364();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v14 = sub_8E304();
  sub_4D6C(v14, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  v49 = type metadata accessor for ShelfPagePresenter(0);
  v48[0] = v1;
  v44 = v1;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v48);
  sub_8E244();
  swift_getErrorValue();
  v17 = v46;
  v18 = v47;
  v49 = v47;
  v19 = sub_4ED0(v48);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_8E264();
  sub_3410(v48, &unk_C3EB0);
  sub_8E2E4();

  v45 = a1;
  swift_errorRetain();
  sub_332C(&unk_C3EF0);
  if (swift_dynamicCast())
  {
    v21 = v48[0];
    v20 = v48[1];
    sub_8F174();
    v22 = v39;
    v23 = v41;
    sub_8F394();
    if (v20)
    {
      v24 = v40;
    }

    else
    {
      type metadata accessor for Localizations();
      v24 = v40;
      v36 = v38;
      (*(v40 + 16))(v38, v22, v23);
      sub_33E8(v36, 0, 1, v23);
      v21 = sub_4D2D0(0xD000000000000015, 0x800000000009F4F0, v36);
      v20 = v37;
      sub_3410(v36, &qword_C50D0);
    }

    *v9 = v21;
    v9[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_8F524();
    sub_78AD0(v9, type metadata accessor for ShelfPagePresenter.State);
    return (*(v24 + 8))(v22, v23);
  }

  else
  {
    v25 = v44;
    v26 = sub_332C(&qword_C6E08);
    v27 = *(v26 + 48);
    *v7 = a1;
    v28 = v25 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
    v29 = type metadata accessor for ShelfPageDestination();
    v30 = v42;
    sub_CD4C(v28 + *(v29 + 20), v42, &qword_C3F70);
    v31 = sub_8E514();
    if (sub_33C0(v30, 1, v31) == 1)
    {
      swift_errorRetain();
      sub_3410(v30, &qword_C3F70);
      v32 = sub_8E0F4();
      sub_33E8(v7 + v27, 1, 1, v32);
    }

    else
    {
      sub_CD4C(v30 + *(v31 + 24), v7 + v27, &qword_C40D0);
      swift_errorRetain();
      sub_78AD0(v30, &type metadata accessor for JSServiceRequest);
    }

    v33 = (v7 + *(v26 + 64));
    v34 = swift_allocObject();
    swift_weakInit();
    *v33 = sub_78C24;
    v33[1] = v34;
    swift_storeEnumTagMultiPayload();

    sub_8F524();
    sub_78AD0(v7, type metadata accessor for ShelfPagePresenter.State);
  }
}

uint64_t sub_787A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_787F8();
  }

  return result;
}

uint64_t sub_787F8()
{
  v1 = type metadata accessor for ShelfPagePresenter.State(0);
  __chkstk_darwin(v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v4 = sub_8E304();
  sub_4D6C(v4, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v8[3] = type metadata accessor for ShelfPagePresenter(0);
  v8[0] = v0;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v8);
  sub_8E244();
  sub_8E2E4();

  *v3 = 0;
  swift_storeEnumTagMultiPayload();
  sub_8F524();
  sub_78AD0(v3, type metadata accessor for ShelfPagePresenter.State);
  return sub_77954();
}

uint64_t sub_78AD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_78B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C6400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_78B98()
{
  result = qword_C6E00;
  if (!qword_C6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E00);
  }

  return result;
}

uint64_t sub_78BEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_78C2C(char a1, char a2)
{
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v5 = sub_8E304();
  sub_4D6C(v5, qword_D0378);
  sub_332C(&unk_C3920);
  v6 = sub_8E2A4();
  sub_13EB8(v6);
  sub_7B028();
  *(swift_allocObject() + 16) = xmmword_932C0;
  v11 = type metadata accessor for ShelfPagePresenter(0);
  v10[0] = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v10);
  sub_8E244();
  v11 = &type metadata for Bool;
  LOBYTE(v10[0]) = a1 & 1;
  sub_8E264();
  sub_3410(v10, &unk_C3EB0);
  sub_8E244();
  v11 = &type metadata for ActivityShelfPageAction.Style;
  LOBYTE(v10[0]) = a2;
  sub_8E264();
  sub_3410(v10, &unk_C3EB0);
  sub_8E2E4();

  if (a1)
  {
    return sub_78E78(a2);
  }

  else
  {
    return sub_78F4C();
  }
}

uint64_t sub_78E78(char a1)
{
  v2 = type metadata accessor for ShelfPagePresenter.State(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *v4 = v5;
  }

  else
  {
    *v4 = 0;
  }

  swift_storeEnumTagMultiPayload();
  sub_8F524();
  return sub_78AD0(v4, type metadata accessor for ShelfPagePresenter.State);
}

uint64_t sub_78F4C()
{
  v0 = type metadata accessor for ShelfPagePresenter.State(0);
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_8F524();
  return sub_78AD0(v2, type metadata accessor for ShelfPagePresenter.State);
}

void sub_78FEC()
{
  sub_41B8C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v103 = v7;
  v9 = v8;
  v11 = v10;
  v95 = type metadata accessor for Shelf();
  sub_4248();
  v13 = __chkstk_darwin(v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = &v87 - v16;
  v102 = type metadata accessor for ShelfPage();
  sub_4248();
  __chkstk_darwin(v17);
  sub_8814();
  v90 = v19 - v18;
  v20 = sub_332C(&qword_C6400);
  v21 = sub_41B1C(v20);
  __chkstk_darwin(v21);
  sub_42D0();
  v92 = v22;
  sub_43E04();
  __chkstk_darwin(v23);
  v25 = &v87 - v24;
  v26 = sub_332C(&qword_C6170);
  v27 = sub_41B1C(v26);
  __chkstk_darwin(v27);
  sub_42D0();
  v93 = v28;
  sub_43E04();
  __chkstk_darwin(v29);
  sub_7B0A4();
  v31 = __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v32 = *(v2 + 16);
  v89 = v15;
  v91 = &v87 - v33;
  v99 = v34;
  if (!v32)
  {
    if (v6 > 1u)
    {
    }

    else
    {
      v35 = sub_8FB54();

      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v6 = 1;
  }

LABEL_7:
  v106 = 0;
  v36 = v103;
  if (v11)
  {
    v37 = *(v11 + 16);
    for (i = (v11 + 32); v37; --v37)
    {
      sub_79AF8(i, v2, v9, v36, v6, &v106);
      i += 5;
    }
  }

  v101 = v6;
  if ((v4 & 1) == 0 || (v39 = v106, v106 < 1))
  {
LABEL_21:
    v53 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
    sub_7B08C();
    v54 = v2 + v53;
    v55 = v92;
    sub_CD4C(v54, v92, &qword_C6400);
    if (sub_33C0(v55, 1, v102))
    {
      sub_3410(v55, &qword_C6400);
      v56 = v93;
      sub_7B068();
      sub_33E8(v57, v58, v59, v95);
    }

    else
    {
      sub_7AFC0();
      v60 = v90;
      sub_7AD20(v55, v90, v61);
      sub_3410(v55, &qword_C6400);
      v56 = v93;
      sub_5F390(v9, v36, v6, v93);
      sub_7AF78();
      sub_78AD0(v60, v62);
      if (sub_33C0(v56, 1, v95) != 1)
      {
        sub_7AFA8();
        v67 = v56;
        v68 = v89;
        sub_7ACC0(v67, v89, v69);
        sub_65FC4(v68, v6);
        sub_7AF90();
        sub_78AD0(v68, v70);
LABEL_29:
        sub_41B74();
        return;
      }
    }

    sub_3410(v56, &qword_C6170);
    if (qword_C2CE0 != -1)
    {
      sub_13E98();
    }

    v63 = sub_8E304();
    sub_4D6C(v63, qword_D0378);
    sub_332C(&unk_C3920);
    v64 = sub_8E2A4();
    sub_13EB8(v64);
    sub_7B028();
    *(swift_allocObject() + 16) = xmmword_935F0;
    v105 = type metadata accessor for ShelfPagePresenter(0);
    v104[0] = v2;

    v65 = AMSLogKey();
    if (v65)
    {
      v66 = v65;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v104);
    sub_8E244();
    sub_8E244();
    v105 = &type metadata for String;
    v104[0] = v9;
    v104[1] = v103;

    sub_8E264();
    sub_3410(v104, &unk_C3EB0);
    sub_8E244();
    v105 = &type metadata for Shelf.Placement;
    LOBYTE(v104[0]) = v101;
    sub_8E264();
    sub_3410(v104, &unk_C3EB0);
    sub_8E2E4();

    goto LABEL_29;
  }

  v40 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
  sub_7B08C();
  sub_CD4C(v2 + v40, v25, &qword_C6400);
  if (sub_33C0(v25, 1, v102))
  {
    sub_3410(v25, &qword_C6400);
    v41 = v91;
    sub_7B068();
    v42 = v95;
    sub_33E8(v43, v44, v45, v95);
  }

  else
  {
    sub_7AFC0();
    v46 = v90;
    sub_7AD20(v25, v90, v47);
    sub_3410(v25, &qword_C6400);
    v41 = v91;
    sub_5F390(v9, v36, v6, v91);
    sub_7AF78();
    sub_78AD0(v46, v48);
    v42 = v95;
  }

  v49 = v99;
  sub_CD4C(v41, v99, &qword_C6170);
  if (sub_33C0(v49, 1, v42) == 1)
  {
    sub_3410(v49, &qword_C6170);
    v50 = 0;
  }

  else
  {
    v51 = *&v49[*(v42 + 24)];

    sub_7AF90();
    sub_78AD0(v49, v52);
    v50 = *(v51 + 16);
  }

  if (v50 < v39)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    sub_13E98();
    goto LABEL_32;
  }

  if (v39 == v50)
  {
LABEL_20:
    sub_3410(v91, &qword_C6170);
    goto LABEL_21;
  }

  if (qword_C2CE0 != -1)
  {
    goto LABEL_51;
  }

LABEL_32:
  if (v39 < v50)
  {
    v99 = "f for placement.";
    v98 = sub_8E304();
    v97 = xmmword_92300;
    v100 = v9;
    v88 = v1;
    v96 = v50;
    while (1)
    {
      sub_4D6C(v98, qword_D0378);
      sub_332C(&unk_C3920);
      v71 = sub_8E2A4();
      sub_13EB8(v71);
      sub_7B028();
      *(swift_allocObject() + 16) = v97;
      v105 = type metadata accessor for ShelfPagePresenter(0);
      v104[0] = v2;

      v72 = AMSLogKey();
      if (v72)
      {
        v73 = v72;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(v104);
      sub_8E244();
      v105 = &type metadata for Int;
      v104[0] = v39;
      sub_8E264();
      sub_3410(v104, &unk_C3EB0);
      sub_8E2E4();

      v74 = sub_76C34();
      v76 = sub_7B034(v74, v75);
      if (sub_33C0(v76, v77, v102))
      {
        (v74)(v104, 0);
        LOBYTE(v6) = v101;
        v9 = v100;
        v36 = v103;
        v78 = v96;
      }

      else
      {
        v9 = v100;
        v36 = v103;
        LOBYTE(v6) = v101;
        sub_5F390(v100, v103, v101, v1);
        v79 = v95;
        if (sub_33C0(v1, 1, v95) == 1)
        {
          sub_3410(v1, &qword_C6170);
        }

        else
        {
          sub_7AFA8();
          v80 = v1;
          v1 = v94;
          sub_7ACC0(v80, v94, v81);
          v50 = *(v79 + 24);
          v82 = *(v1 + v50);
          if (*(v82 + 16))
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_7A8F8(v82);
              v82 = v86;
            }

            v83 = *(v82 + 16);
            if (!v83)
            {
              __break(1u);
              goto LABEL_50;
            }

            v84 = v83 - 1;
            sub_4F30(v82 + 40 * v83 - 8);
            *(v82 + 16) = v84;
            v9 = v100;
            v1 = v94;
            *(v94 + v50) = v82;
            sub_5F654(v1, v6);
          }

          sub_7AF90();
          sub_78AD0(v1, v85);
          v1 = v88;
        }

        v78 = v96;
        (v74)(v104, 0);
      }

      if (v78 == ++v39)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_79AF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_76C34();
  v14 = v13;
  v15 = type metadata accessor for ShelfPage();
  if (!sub_33C0(v14, 1, v15))
  {
    sub_5F208(a1, a3, a4, a5);
  }

  (v12)(v27, 0);
  v24 = a4;
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v16 = sub_8E304();
  sub_4D6C(v16, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_98280;
  v28 = type metadata accessor for ShelfPagePresenter(0);
  v27[0] = a2;

  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v27);
  sub_8E244();
  v29 = a6;
  v19 = *a6;
  v28 = &type metadata for Int;
  v27[0] = v19;
  sub_8E264();
  sub_3410(v27, &unk_C3EB0);
  sub_8E244();
  sub_CD08(a1, a1[3]);
  v28 = &type metadata for AnyHashable;
  v27[0] = swift_allocObject();
  sub_8F114();
  sub_8E264();
  sub_3410(v27, &unk_C3EB0);
  sub_8E244();
  v28 = &type metadata for String;
  v27[0] = a3;
  v27[1] = v24;

  sub_8E264();
  sub_3410(v27, &unk_C3EB0);
  sub_8E244();
  v28 = &type metadata for Shelf.Placement;
  LOBYTE(v27[0]) = a5;
  sub_8E264();
  sub_3410(v27, &unk_C3EB0);
  sub_8E2E4();

  sub_CD08(a1, a1[3]);
  sub_8F114();
  if (swift_dynamicCast())
  {
    v20 = v25;
    v21 = v26;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = (a2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_lastItemId);
  *v22 = v20;
  v22[1] = v21;

  if (__OFADD__(*v29, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v29;
  }

  return result;
}

void sub_79F5C()
{
  sub_41B8C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_8E224();
  v8 = sub_41B1C(v7);
  __chkstk_darwin(v8);
  sub_8814();
  v9 = sub_332C(&qword_C6400);
  sub_41B1C(v9);
  sub_41B68();
  __chkstk_darwin(v10);
  v12 = v38 - v11;
  v13 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
  sub_7B08C();
  sub_CD4C(v0 + v13, v12, &qword_C6400);
  v14 = type metadata accessor for ShelfPage();
  if (sub_33C0(v12, 1, v14))
  {
    sub_3410(v12, &qword_C6400);
    if (qword_C2CE0 != -1)
    {
      sub_13E98();
    }

    v15 = sub_8E304();
    sub_4D6C(v15, qword_D0378);
    sub_332C(&unk_C3920);
    v16 = sub_8E2A4();
    sub_13EB8(v16);
    sub_7B028();
    *(swift_allocObject() + 16) = xmmword_92310;
    v40[3] = type metadata accessor for ShelfPagePresenter(0);
    v40[0] = v0;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v40);
    sub_8E214();
    v41._countAndFlagsBits = 0xD000000000000046;
    v41._object = 0x80000000000A0DB0;
    sub_8E204(v41);
    v40[3] = &type metadata for ReplaceNavigationBarItemShelfPageAction.NavigationBarKind;
    sub_8E1F4();
    sub_3410(v40, &unk_C3EB0);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_8E204(v42);
    sub_8E234();
    sub_8E2D4();

    goto LABEL_32;
  }

  sub_7ADD8((v12 + 136), v39);
  sub_3410(v12, &qword_C6400);
  memcpy(v40, v39, 0x2C3uLL);
  if (v2)
  {
    if (v4)
    {
      sub_3410(&v40[60], &qword_C5BA0);
      v19 = &v40[60];
    }

    else
    {
      sub_3410(&v40[40], &qword_C5BA0);
      v19 = &v40[40];
    }

    sub_74988(v6, v19);
    goto LABEL_18;
  }

  v20 = v40[59];
  if (!v40[59])
  {
    if (qword_C2CE0 != -1)
    {
      sub_13E98();
    }

    v27 = sub_8E304();
    sub_4D6C(v27, qword_D0378);
    sub_332C(&unk_C3920);
    v28 = sub_8E2A4();
    sub_13EB8(v28);
    sub_7B028();
    *(swift_allocObject() + 16) = xmmword_92310;
    v39[3] = type metadata accessor for ShelfPagePresenter(0);
    v39[0] = v0;

    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v39);
    sub_8E244();
    sub_8E2D4();
    goto LABEL_30;
  }

  if (*(v40[59] + 16) <= v4)
  {
    v31 = qword_C2CE0;

    if (v31 == -1)
    {
LABEL_26:
      v32 = sub_8E304();
      v38[1] = sub_4D6C(v32, qword_D0378);
      sub_332C(&unk_C3920);
      v33 = sub_8E2A4();
      sub_13EB8(v33);
      sub_7B028();
      *(swift_allocObject() + 16) = xmmword_92310;
      v39[3] = type metadata accessor for ShelfPagePresenter(0);
      v39[0] = v0;

      v34 = AMSLogKey();
      if (v34)
      {
        v35 = v34;
        sub_8F5F4();
      }

      sub_8E284();

      sub_4F30(v39);
      sub_8E214();
      v43._countAndFlagsBits = 0xD000000000000042;
      v43._object = 0x80000000000A0E40;
      sub_8E204(v43);
      v39[3] = &type metadata for Int;
      v39[0] = v4;
      sub_8E1F4();
      sub_3410(v39, &unk_C3EB0);
      v44._object = 0x80000000000A0E90;
      v44._countAndFlagsBits = 0xD000000000000016;
      sub_8E204(v44);
      v36 = *(v20 + 16);

      v39[3] = &type metadata for Int;
      v39[0] = v36;
      sub_8E1F4();
      sub_3410(v39, &unk_C3EB0);
      v45._countAndFlagsBits = 32;
      v45._object = 0xE100000000000000;
      sub_8E204(v45);
      sub_8E234();
      sub_8E2D4();
LABEL_30:

LABEL_31:
      sub_7AE34(v40);
LABEL_32:
      sub_41B74();
      return;
    }

LABEL_35:
    sub_13E98();
    goto LABEL_26;
  }

  v21 = v20;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  sub_7A90C(v20);
  v21 = v37;
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_14:
  if (*(v21 + 16) > v4)
  {
    sub_7AE88(v6, v21 + 152 * v4 + 32);

    v40[59] = v21;
LABEL_18:
    v22 = sub_76C34();
    v24 = v23;
    v25 = sub_7B034(v22, v23);
    if (!sub_33C0(v25, v26, v14))
    {
      sub_7AEE4(v40, v24 + 136);
    }

    (v22)(v39, 0);
    sub_8F524();
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_7A70C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_7A76C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_7A7C8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_340B4();
  v8 = *v2;
  v9 = *(type metadata accessor for Shelf() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_33E3C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_7A934(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Shelf();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v16 = (&v34 - v15);
  v17 = *a1;

  result = sub_759BC(v17, a2, a3);
  if (v3)
  {
  }

  v36 = v11;
  v37 = a3;
  v40 = a2;
  if (v19)
  {
    v20 = *(v17 + 16);

    return v20;
  }

  v34 = 0;
  v35 = a1;
  v38 = result;
  v21 = result + 1;
  v22 = v37;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v39 = v8;
  while (1)
  {
    v23 = *(v17 + 16);
    if (v21 == v23)
    {

      return v38;
    }

    if (v21 >= v23)
    {
      break;
    }

    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = v17 + v24;
    v26 = *(v8 + 72);
    v27 = v26 * v21;
    sub_7AD20(v17 + v24 + v26 * v21, v16, type metadata accessor for Shelf);
    if (*v16 == v40 && v16[1] == v22)
    {
      result = sub_78AD0(v16, type metadata accessor for Shelf);
      goto LABEL_16;
    }

    v29 = sub_8FB54();
    result = sub_78AD0(v16, type metadata accessor for Shelf);
    if (v29)
    {
      v22 = v37;
LABEL_16:
      v8 = v39;
      goto LABEL_27;
    }

    v30 = v38;
    if (v21 == v38)
    {
      v22 = v37;
    }

    else
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *(v17 + 16);
      if (v38 >= v31)
      {
        goto LABEL_31;
      }

      v32 = v26 * v38;
      result = sub_7AD20(v25 + v32, v14, type metadata accessor for Shelf);
      if (v21 >= v31)
      {
        goto LABEL_32;
      }

      sub_7AD20(v25 + v27, v36, type metadata accessor for Shelf);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_7A920();
        v17 = v33;
      }

      v22 = v37;
      result = sub_7AC5C(v36, v17 + v24 + v32);
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_7AC5C(v14, v17 + v24 + v27);
      *v35 = v17;
      v30 = v38;
    }

    v8 = v39;
    v38 = v30 + 1;
LABEL_27:
    ++v21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_7AC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7ACC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_4248();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_7AD20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_4248();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7AD80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7AF40()
{
  sub_4F30(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7B050(uint64_t a1)
{

  return sub_33C0(a1, 1, v1);
}

uint64_t sub_7B074()
{

  return swift_allocObject();
}

uint64_t sub_7B08C()
{

  return swift_beginAccess();
}

uint64_t sub_7B0B8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(swift_allocObject() + 16) = v2;
  sub_80110(a1, &v4, &qword_C6E70);
  if (v5)
  {
    sub_3A94(&v4, v6);
    sub_CD08(v6, v6[3]);
    sub_8F104();

    return sub_4F30(v6);
  }

  else
  {

    sub_3410(&v4, &qword_C6E70);
    sub_7B1E0();
  }
}

uint64_t sub_7B1E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_8F3A4() & 1) == 0)
    {
      sub_8F414();
    }
  }

  return result;
}

void sub_7B240(void *a1@<X8>)
{
  sub_332C(&qword_C6400);
  sub_41B68();
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_presenter);
  v7 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_presentedPage;
  sub_802B4();
  swift_beginAccess();
  sub_80110(v6 + v7, v5, &qword_C6400);
  v8 = type metadata accessor for ShelfPage();
  if (sub_80250(v8))
  {
    sub_3410(v5, &qword_C6400);
    bzero(a1, 0x1D8uLL);
    a1[59] = 1;
    bzero(a1 + 60, 0xE3uLL);
  }

  else
  {
    sub_7ADD8((v5 + 136), a1);
    sub_3410(v5, &qword_C6400);
  }
}

uint64_t sub_7B374(uint64_t a1)
{
  sub_80110(a1, v9, &qword_C6160);
  if (v9[59] == 1)
  {
    v2 = sub_801F8();
    sub_3410(v2, v3);
    return sub_3410(v9, &qword_C6160);
  }

  else
  {
    memcpy(__dst, v9, 0x2C3uLL);
    v5 = sub_76C34();
    v7 = v6;
    v8 = type metadata accessor for ShelfPage();
    if (!sub_80250(v8))
    {
      sub_7AEE4(__dst, v7 + 136);
    }

    (v5)(v9, 0);
    sub_3410(a1, &qword_C6160);
    return sub_7AE34(__dst);
  }
}

void sub_7B480(uint64_t a1)
{
  if (a1)
  {
    [v1 unsetChildViewController:a1];
  }

  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController;
  if (*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController])
  {
    [v1 setChildViewController:?];
  }

  v3 = [v1 view];
  [v3 setUserInteractionEnabled:*&v1[v2] == 0];
}

void sub_7B524(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController) = a1;
  v2 = a1;
  sub_7B480(v3);
}

void sub_7B584()
{
  sub_41B8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_8F324();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = (v11 - v10);
  sub_4C52C();
  v13 = sub_8F364();
  sub_42F8();
  v26 = v14;
  __chkstk_darwin(v15);
  sub_8814();
  v18 = v17 - v16;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController) = 0;
  v19 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_preloadingCompletionPromise;
  sub_332C(&qword_C7470);
  *(v0 + v19) = sub_8F444();
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_navigationBarAppearance) = 5;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_presenter) = v5;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_objectGraph) = v3;
  v20 = objc_allocWithZone(type metadata accessor for ShelfPageCollectionLayoutViewController());
  swift_retain_n();
  swift_retain_n();
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_collectionLayoutViewController) = sub_622F8(v5, v3);
  sub_8F174();
  sub_8F394();
  sub_8E5B4();

  v21 = sub_8E5A4();

  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter) = v21;
  if (v21)
  {
    *v12 = 1;
    (*(v8 + 104))(v12, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v6);
    sub_80204();
    v23 = *(v22 + 152);

    v23(v12);

    (*(v8 + 8))(v12, v6);
  }

  type metadata accessor for ShelfPageViewController();
  sub_802B4();
  objc_msgSendSuper2(v24, v25);

  (*(v26 + 8))(v18, v13);
  sub_41B74();
}

void sub_7B864()
{
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController) = 0;
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_preloadingCompletionPromise;
  sub_332C(&qword_C7470);
  *(v0 + v1) = sub_8F444();
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_navigationBarAppearance) = 5;
  sub_8FAA4();
  __break(1u);
}

id sub_7B970()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    sub_80210();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ShelfPageViewController();
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

uint64_t sub_7BAA8()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    sub_80210();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 title];
      if (v5)
      {
        v6 = v5;
        v4 = sub_8F5F4();

        goto LABEL_8;
      }

      return 0;
    }
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfPageViewController();
  v3 = objc_msgSendSuper2(&v8, "title");
  if (!v3)
  {
    return 0;
  }

  v2 = v3;
  v4 = sub_8F5F4();
LABEL_8:

  return v4;
}

void sub_7BC14(uint64_t a1, uint64_t a2)
{
  v4 = [v2 parentViewController];
  if (!v4)
  {
LABEL_4:
    if (a2)
    {
      sub_80244();
      v6 = sub_8F5C4();
    }

    else
    {
      v6 = 0;
    }

    v8.receiver = v2;
    v8.super_class = type metadata accessor for ShelfPageViewController();
    objc_msgSendSuper2(&v8, "setTitle:", v6);

    return;
  }

  v5 = v4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    goto LABEL_4;
  }

  if (a2)
  {
    sub_80244();
    v7 = sub_8F5C4();
  }

  else
  {
    v7 = 0;
  }

  [v5 setTitle:v7];
}

void sub_7BD28()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v1 setBackgroundColor:v2];
}

void sub_7BE08(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", a1);
  v3 = [v1 navigationItem];
  sub_7CDD4();
}

void sub_7BFA8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter])
  {
    sub_80204();
    (*(v4 + 184))();
  }

  sub_8F284();
}

void sub_7C090(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter])
  {
    sub_80204();
    (*(v4 + 192))();
  }

  sub_8F2B4();
  sub_8F2E4();
}

void sub_7C188(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter])
  {
    sub_80204();
    (*(v4 + 176))();
  }

  sub_8F2B4();
  sub_8F2D4();
  v5 = [v2 navigationItem];
  sub_7CDD4();
}

uint64_t sub_7C2B0(char a1)
{
  v2 = v1;
  sub_8F304();
  sub_42F8();
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter])
  {
    sub_8F2F4();
    sub_80204();
    (*(v8 + 200))(v7);
    v9 = sub_80244();
    v10(v9);
  }

  sub_8F2F4();
  sub_8F294();
  v11 = sub_80244();
  return v12(v11);
}

void sub_7C458()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ShelfPageViewController();
  objc_msgSendSuper2(&v7, "viewWillLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_collectionLayoutViewController] view];
  v2 = [v0 view];
  [v2 bounds];
  sub_802A0();

  sub_8021C();
  v3 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_overlayViewController];
  if (v3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      [v6 bounds];
      sub_802A0();

      sub_8021C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_7C5B4()
{
  sub_332C(&qword_C6400);
  sub_41B68();
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  sub_7C714();
  sub_7C794();
  v4 = [v0 view];
  v5 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_presenter];
  v6 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
  v7 = type metadata accessor for ShelfPageDestination();
  sub_80110(v5 + v6 + *(v7 + 24), v3, &qword_C6400);
  v8 = type metadata accessor for ShelfPage();
  if (sub_80250(v8) == 1)
  {
    sub_3410(v3, &qword_C6400);
    v9 = 0;
  }

  else
  {

    sub_801B0();
    sub_7F99C(v3, v10);
    v9 = sub_8F5C4();
  }

  [v4 setAccessibilityIdentifier:v9];
}

id sub_7C714()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_collectionLayoutViewController];
  v2 = [v1 view];
  [v2 setAlpha:0.0];

  return [v0 setChildViewController:v1];
}

void sub_7C794()
{
  sub_41B8C();
  sub_332C(&qword_C6EA8);
  sub_42F8();
  v23 = v2;
  v24 = v1;
  sub_41B68();
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  sub_332C(&qword_C6EB0);
  sub_42F8();
  v20 = v6;
  v21 = v5;
  sub_41B68();
  __chkstk_darwin(v7);
  v19 = &v18 - v8;
  v9 = sub_332C(&qword_C6EB8);
  sub_42F8();
  v11 = v10;
  sub_41B68();
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  v18 = v0;
  sub_13EC8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_802C0();
  sub_332C(v15);
  sub_2F934(&qword_C6EC0, &qword_C6DE0);

  sub_8F084();
  sub_8F094();

  sub_4F30(v25);
  (*(v11 + 8))(v14, v9);
  sub_13EC8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_332C(&qword_C6DE8);
  sub_2F934(&qword_C6EC8, &qword_C6DE8);

  sub_8F084();
  v16 = v19;
  sub_8F094();

  sub_4F30(v25);
  (*(v20 + 8))(v16, v21);
  sub_13EC8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_332C(&qword_C6DF0);
  sub_2F934(&qword_C6ED0, &qword_C6DF0);

  sub_8F084();
  v17 = v22;
  sub_8F094();

  sub_4F30(v25);
  (*(v23 + 8))(v17, v24);
  sub_41B74();
}

void sub_7CBE0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7CD2C(v1);
  }
}

void sub_7CC3C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7ADD8(a1, v5);
    sub_7B374(v5);
    v4 = [v3 navigationItem];
    sub_7CDD4();
  }
}

void sub_7CCD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_7ECB0();
  }
}

void sub_7CD2C(char a1)
{
  v3 = [v1 view];
  v4 = objc_opt_self();
  v5 = &selRef_ams_primaryGroupedBackground;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_ams_defaultPlatformBackgroundColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];
}

void sub_7CDD4()
{
  sub_41B8C();
  v1 = v0;
  v3 = v2;
  v4 = [v0 navigationController];
  if (!v4)
  {
    goto LABEL_75;
  }

  v5 = v4;
  sub_7B240(__src);
  if (*&__src[472] == 1)
  {

    sub_3410(__src, &qword_C6160);
    goto LABEL_75;
  }

  memcpy(__dst, __src, 0x2C3uLL);
  v6 = LOBYTE(__dst[19]);
  if (sub_5A790(__dst[19]) == 0x6E6564646968 && v7 == 0xE600000000000000)
  {

    goto LABEL_11;
  }

  v9 = sub_8FB54();

  if (v9)
  {
LABEL_11:
    v10 = [v5 isNavigationBarHidden];
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:
  *(*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_collectionLayoutViewController] + OBJC_IVAR____TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController_adjustmentsScrollViewInsets) = v10;
  sub_64770();
  v11 = [v5 navigationBar];
  if (sub_5A790(v6) == 0x656772616CLL && v12 == 0xE500000000000000)
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_8FB54();
  }

  [v11 setPrefersLargeTitles:v14 & 1];

  v81 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_objectGraph];
  v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_navigationBarAppearance] = v6;
  if (v6 >= 5)
  {
    v15 = &selRef_ams_configureWithDefaultBackground;
  }

  else
  {
    v15 = (&off_BB3E0)[v6];
  }

  [v3 *v15];
  sub_332C(&qword_C6E78);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_92E10;
  *(v16 + 32) = sub_7E20C(0, v81, 1);
  v17 = &_swiftEmptyArrayStorage;
  *__src = &_swiftEmptyArrayStorage;
  if (*(v16 + 32))
  {

    sub_8F6A4();
    v18 = *(&dword_18 + (*__src & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (*__src & 0xFFFFFFFFFFFFFF8)) >= v18 >> 1)
    {
      sub_80294(v18);
      sub_8F6E4();
    }

    sub_8F6F4();
    v17 = *__src;
  }

  swift_setDeallocating();
  sub_754D8();
  v89 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_92E10;
  *(v19 + 32) = sub_7E20C(0, v81, 0);
  v20 = &_swiftEmptyArrayStorage;
  *__src = &_swiftEmptyArrayStorage;
  if (*(v19 + 32))
  {

    sub_8F6A4();
    v21 = *(&dword_18 + (*__src & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (*__src & 0xFFFFFFFFFFFFFF8)) >= v21 >> 1)
    {
      sub_80294(v21);
      sub_8F6E4();
    }

    sub_802C0();
    sub_8F6F4();
    v20 = *__src;
  }

  swift_setDeallocating();
  sub_754D8();
  v88 = v20;
  if (__dst[81])
  {
    v22 = sub_8F5C4();
  }

  else
  {
    v22 = 0;
  }

  [v3 setTitle:v22];

  sub_80110(&__dst[82], v87, &qword_C6E80);
  v23 = &swift_arrayDestroy_ptr;
  v24 = &selRef_viewDidAppear_;
  v80 = v5;
  if (LOBYTE(v87[3]) == 0xFF)
  {
    sub_3410(v87, &qword_C6E80);
    goto LABEL_57;
  }

  *__src = v87[0];
  *&__src[16] = v87[1];
  *&__src[32] = v87[2];
  *&__src[48] = v87[3];
  sub_7FF88(__src, &v82);
  if (v86)
  {
    sub_3A94(&v82, &v92);
    v25 = [objc_opt_self() ams_primaryText];
    v26 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v27 = objc_allocWithZone(sub_8E374());
    v28 = sub_8E364();
    (*(&stru_158.size + (swift_isaMask & *v28)))(&v92, v81);
    v29 = *(&stru_B8.reserved2 + (swift_isaMask & *v28));
    v24 = v28;
    v29(v87);
    v30 = *(&v87[1] + 1);
    v78 = v3;
    if (*(&v87[1] + 1))
    {
      v31 = *&v87[2];
      sub_CD08(v87, *(&v87[1] + 1));
      (*(v31 + 16))(v30, v31);
      v33 = v32;
      sub_4F30(v87);
      if (v33)
      {
        sub_801F8();
        v30 = sub_8F5C4();
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      sub_3410(v87, &unk_C55C0);
    }

    v23 = &swift_arrayDestroy_ptr;
    [(SEL *)v24 setAccessibilityLabel:v30];

    sub_332C(&qword_C6B48);
    *&v87[0] = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v24];
    sub_8F3E4();
    sub_7FFE4(__src, v87);
    v40 = swift_allocObject();
    v41 = v87[1];
    *(v40 + 16) = v87[0];
    *(v40 + 32) = v41;
    *(v40 + 48) = v87[2];
    *(v40 + 64) = v87[3];
    v42 = sub_CE5C(0, &qword_C3F30);
    v43 = sub_8F7D4();
    *(&v87[1] + 1) = v42;
    *&v87[2] = &protocol witness table for OS_dispatch_queue;
    *&v87[0] = v43;
    sub_801C8();
    sub_8F3C4();

    sub_4F30(v87);
    v44 = BYTE2(__dst[88]);
    switch(BYTE2(__dst[88]))
    {
      case 1:

        goto LABEL_44;
      case 3:
        goto LABEL_51;
      default:
        v45 = sub_8FB54();

        if (v45)
        {
LABEL_44:
          sub_8F6A4();
          v46 = *(&dword_18 + (v89 & 0xFFFFFFFFFFFFFF8));
          if (*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)) >= v46 >> 1)
          {
            goto LABEL_78;
          }

          goto LABEL_45;
        }

        if (v44)
        {
          v23 = &swift_arrayDestroy_ptr;
          if (v44 != 1)
          {

            goto LABEL_53;
          }
        }

        else
        {
          v23 = &swift_arrayDestroy_ptr;
        }

        v47 = sub_8FB54();

        if ((v47 & 1) == 0)
        {
LABEL_51:
          [v3 setTitleView:*(v24 + direct field offset for DynamicLabel.label)];

          sub_4F30(&v92);
          sub_800A4(__src);

LABEL_56:
          v24 = &selRef_viewDidAppear_;
          goto LABEL_57;
        }

LABEL_53:
        sub_8F6A4();
        v48 = *(&dword_18 + (v88 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)) >= v48 >> 1)
        {
          sub_80294(v48);
          sub_8F6E4();
        }

        sub_8F6F4();
        v20 = v88;

        sub_4F30(&v92);
        sub_800A4(__src);
        goto LABEL_56;
    }
  }

  v93 = v83;
  v94 = v84;
  v92 = v82;
  v95 = v85;
  sub_802B4();
  v39 = sub_73E84(v34, v35, v36, v37, v38);

  [v3 setTitleView:v39];

  sub_800A4(__src);
  while (1)
  {
LABEL_57:
    v49 = [v5 viewControllers];
    sub_CE5C(0, &qword_C44B0);
    sub_80210();
    v50 = sub_8F6C4();

    v51 = sub_35028(v50);

    v79 = v20;
    if (v51 < 2)
    {
      [v3 setBackBarButtonItem:0];
      [v3 setHidesBackButton:0];
      goto LABEL_74;
    }

    sub_80110(&__dst[20], v87, &qword_C60F0);
    if (*(&v87[0] + 1) == 1)
    {
      break;
    }

    memcpy(__src, v87, 0x98uLL);
    if (__src[16])
    {
      if (__src[16] == 1)
      {
        v52 = sub_749E4(__src, v81);
      }

      else
      {
        sub_CE5C(0, &qword_C44A8);
        sub_CE5C(0, &qword_C4F58);
        sub_75314(__src, v87);
        v58 = swift_allocObject();
        memcpy((v58 + 16), v87, 0x98uLL);
        *(v58 + 168) = v81;

        sub_802B4();
        sub_8F8C4();
        v59 = sub_80210();
        v96.is_nil = 0;
        v60.super.super.isa = sub_8F794(v59, v96, v97).super.super.isa;
        isa = v60.super.super.isa;
        v62 = *&__src[8];
        if (*&__src[8])
        {
          v63 = v60.super.super.isa;
          v62 = sub_8F5C4();
        }

        else
        {
          v64 = v60.super.super.isa;
        }

        [(objc_class *)isa setAccessibilityLabel:v62, 0, 0, 0, sub_7FF7C, v58];

        [(objc_class *)isa setIsAccessibilityElement:1];
        sub_80110(&__src[88], v87, &qword_C2DE0);
        v20 = *(&v87[1] + 1) != 0;
        sub_3410(v87, &qword_C2DE0);
        [(objc_class *)isa setEnabled:v20];
        [(objc_class *)isa setHidesSharedBackground:__src[80]];
        sub_332C(&qword_C6B48);
        *&v87[0] = isa;
        v52 = sub_8F3E4();
      }

      v57 = v52;
    }

    else
    {
      v87[0] = *&__src[24];
      v87[1] = *&__src[40];
      v87[2] = *&__src[56];
      v53 = sub_73E84(v87, *&__src[72], *&__src[136], *&__src[144], v81);
      v54 = v23;
      v55 = v53;
      v56 = [objc_allocWithZone(v54[237]) v24[57]];
      [v56 setHidesSharedBackground:__src[80]];
      sub_332C(&qword_C6B48);
      v82 = v56;
      v20 = v56;
      v57 = sub_8F3E4();
    }

    sub_7FBE4(0, v17);
    if (sub_30AC8(v17) < 0)
    {
      __break(1u);
    }

    else
    {
      v65 = sub_35028(v17);
      v66 = v65 + 1;
      if (!__OFADD__(v65, 1))
      {

        sub_34128(v66, 1);
        sub_7FA7C(0, 0, 1, v57);
        v17 = v89;
        [v3 setHidesBackButton:1];

        sub_75374(__src);
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_78:
    sub_80294(v46);
    sub_8F6E4();
LABEL_45:
    sub_8F6F4();
    v17 = v89;

    sub_4F30(&v92);
    sub_800A4(__src);
    v5 = v80;
    v3 = v78;
    v24 = &selRef_viewDidAppear_;
    v23 = &swift_arrayDestroy_ptr;
  }

  sub_3410(v87, &qword_C60F0);
  if (LOBYTE(__dst[39]) != 2)
  {
    [v3 setHidesBackButton:__dst[39] & 1];
  }

LABEL_74:
  *__src = v17;
  v67 = sub_801F8();
  sub_332C(v67);
  sub_332C(&qword_C6E90);
  sub_801E0();
  sub_2F934(v68, &qword_C6E88);
  sub_2F934(&qword_C6EA0, &qword_C6B48);
  sub_8F374();

  sub_13EC8();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v1;
  v71 = sub_CE5C(0, &qword_C3F30);
  v72 = v1;
  v73 = sub_8F7D4();
  *&__src[24] = v71;
  *&__src[32] = &protocol witness table for OS_dispatch_queue;
  *__src = v73;
  sub_801C8();
  sub_8F3C4();

  sub_4F30(__src);
  *__src = v79;
  sub_8F374();

  sub_13EC8();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v72;
  v76 = v72;
  v77 = sub_8F7D4();
  *&__src[24] = v71;
  *&__src[32] = &protocol witness table for OS_dispatch_queue;
  *__src = v77;
  sub_8F3C4();

  sub_4F30(__src);
  sub_7AE34(__dst);
LABEL_75:
  sub_41B74();
}

id sub_7DE08(void **a1, uint64_t a2)
{
  v4 = sub_8E324();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  result = _UISolariumEnabled();
  if (result)
  {
    (*(v5 + 104))(v7, enum case for FlagKeys.Solarium(_:), v4);
    v10 = sub_8E314();
    result = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      return [v8 setHidesSharedBackground:*(a2 + 49)];
    }
  }

  return result;
}

void sub_7DF40(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7FCA4(v1, 1, Strong);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = sub_7FD30(v4, &selRef_leftBarButtonItems);
    if (v5)
    {
      v6 = v5;
      v7 = sub_35028(v5);
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {

          return;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_8F9F4();
        }

        else
        {
          if (i >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v11 = [v9 customView];
        if (v11)
        {
          v12 = v11;
          [v11 setAlpha:sub_7EAC8(0)];
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

void sub_7E0A8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7FDA0(v1, Strong);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = sub_7FD30(v4, &selRef_rightBarButtonItems);
    if (v5)
    {
      v6 = v5;
      v7 = sub_35028(v5);
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {

          return;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_8F9F4();
        }

        else
        {
          if (i >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v11 = [v9 customView];
        if (v11)
        {
          v12 = v11;
          [v11 setAlpha:sub_7EAC8(0)];
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

uint64_t sub_7E20C(uint64_t a1, uint64_t a2, char a3)
{
  sub_7B240(__src);
  if (__src[59] == 1)
  {
    v5 = &qword_C6160;
    v6 = __src;
  }

  else
  {
    memcpy(__dst, __src, 0x2C3uLL);
    v7 = 480;
    if (a3)
    {
      v7 = 320;
    }

    sub_80110(&__dst[v7], v12, &qword_C5BA0);
    if (v13 != 1)
    {
      sub_54354(v12, __src);
      sub_13EC8();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a3 & 1;
      v8 = sub_746B0(__src, sub_7FE9C, v10, a2);

      sub_543EC(__src);
      sub_7AE34(__dst);

      return v8;
    }

    sub_7AE34(__dst);
    v5 = &qword_C5BA0;
    v6 = v12;
  }

  sub_3410(v6, v5);
  return 0;
}

uint64_t sub_7E38C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_7B240(__src);
    if (__src[59] == 1)
    {

      return sub_3410(__src, &qword_C6160);
    }

    else
    {
      memcpy(__dst, __src, 0x2C3uLL);
      if (a3)
      {
        v7 = 320;
      }

      else
      {
        v7 = 480;
      }

      sub_3410(&__dst[v7], &qword_C5BA0);
      sub_74988(a1, &__dst[v7]);
      sub_7ADD8(__dst, __src);
      sub_7B374(__src);

      return sub_7AE34(__dst);
    }
  }

  return result;
}

void sub_7E48C(char a1, char a2)
{
  v3 = v2;
  v6 = sub_8E324();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  if (a2)
  {
    v13 = objc_opt_self();
    sub_13EC8();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1 & 1;
    v35 = sub_7FE90;
    v36 = v15;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    sub_41AB8();
    v33 = v16;
    v34 = &unk_BB2C8;
    v17 = _Block_copy(&aBlock);

    [v13 animateWithDuration:134 delay:v17 options:0 animations:0.2 completion:{0.0, aBlock, v32}];
    _Block_release(v17);
  }

  else
  {
    v18 = sub_802CC();
    sub_7E8E0(a1 & 1, v18);
  }

  if (!_UISolariumEnabled() || ((*(v8 + 104))(v12, enum case for FlagKeys.Solarium(_:), v6), v19 = sub_8E314(), (*(v8 + 8))(v12, v6), (v19 & 1) == 0))
  {
    v20 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_navigationBarAppearance);
    if (v20 != 5)
    {
      if (sub_5A790(v20) == 0xD000000000000019 && 0x800000000009D870 == v21)
      {
      }

      else
      {
        v23 = sub_8FB54();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      v24 = [objc_allocWithZone(UINavigationBarAppearance) init];
      [v24 configureWithTransparentBackground];
      v25 = v24;
      if (a1)
      {
        v26 = [objc_opt_self() systemBackgroundColor];
        v25 = [v26 colorWithAlphaComponent:0.96];

        [v24 setBackgroundColor:v25];
      }

      v27 = sub_802CC();
      v28 = v24;
      [v27 setScrollEdgeAppearance:v28];

      v29 = sub_802CC();
      [v29 setStandardAppearance:v28];

      v30 = sub_802CC();
      [v30 setCompactAppearance:v28];
    }
  }
}

void sub_7E82C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationItem];
    }

    else
    {
      v7 = 0;
    }

    sub_7E8E0(a2 & 1, v7);
  }
}

void sub_7E8E0(char a1, void *a2)
{
  if (a2)
  {
    v19 = a2;
    v7 = sub_7FC3C(v19, &selRef_leftBarButtonItems);
    if (v7)
    {
      v8 = v7;
      sub_35028(v7);
      sub_8026C();
      while (1)
      {
        if (v2 == v3)
        {

          goto LABEL_14;
        }

        if (v5)
        {
          sub_802C0();
          v9 = sub_8F9F4();
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            goto LABEL_31;
          }

          v9 = *(v8 + 8 * v3 + 32);
        }

        v10 = v9;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v11 = [v9 customView];
        if (v11)
        {
          v12 = v11;
          [v11 setAlpha:sub_7EAC8(a1 & 1)];
        }

        ++v3;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
LABEL_14:
      v13 = sub_7FC3C(v19, &selRef_rightBarButtonItems);
      if (v13)
      {
        v14 = v13;
        sub_35028(v13);
        sub_8026C();
        while (v2 != v3)
        {
          if (v5)
          {
            sub_802C0();
            v15 = sub_8F9F4();
          }

          else
          {
            if (v3 >= *(v4 + 16))
            {
              goto LABEL_33;
            }

            v15 = *(v14 + 8 * v3 + 32);
          }

          v16 = v15;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_32;
          }

          v17 = [v15 customView];
          if (v17)
          {
            v18 = v17;
            [v17 setAlpha:sub_7EAC8(a1 & 1)];
          }

          ++v3;
        }
      }
    }
  }
}

double sub_7EAC8(char a1)
{
  sub_7B240(v7);
  if (v7[59] != 1)
  {
    memcpy(__dst, v7, 0x2C3uLL);
    v3 = __dst[632];
    switch(__dst[632])
    {
      case 1:
        goto LABEL_7;
      case 2:
        sub_80280();
LABEL_7:
        v4 = sub_8FB54();

        if ((v4 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      case 3:
LABEL_8:
        if (a1)
        {
          if (v3 != 1)
          {
            if (v3 != 2)
            {
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          sub_801F8();
          v6 = sub_8FB54();

          if (v6)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v3 == 1)
          {
LABEL_16:

LABEL_17:
            sub_7AE34(__dst);
            return 0.0;
          }

          if (v3 == 2)
          {
            sub_80280();
            v5 = sub_8FB54();

            sub_7AE34(__dst);
            result = 1.0;
            if (v5)
            {
              return 0.0;
            }

            return result;
          }
        }

LABEL_19:
        sub_7AE34(__dst);
        return 1.0;
      default:

        goto LABEL_19;
    }
  }

  sub_3410(v7, &qword_C6160);
  return 0.0;
}

void sub_7ECB0()
{
  sub_41B8C();
  v95 = v1;
  sub_8F314();
  sub_42F8();
  v84 = v3;
  v85 = v2;
  __chkstk_darwin(v2);
  sub_8814();
  v83 = v5 - v4;
  sub_332C(&qword_C6400);
  sub_41B68();
  __chkstk_darwin(v6);
  v93 = &v82 - v7;
  sub_4C52C();
  v92.super_class = type metadata accessor for ShelfPage();
  sub_4248();
  __chkstk_darwin(v8);
  sub_8814();
  v94 = v10 - v9;
  sub_4C52C();
  sub_8EE74();
  sub_42F8();
  v90 = v12;
  v91 = v11;
  __chkstk_darwin(v11);
  sub_8814();
  v88 = v14 - v13;
  sub_4C52C();
  v89 = sub_8EEA4();
  sub_42F8();
  v87 = v15;
  __chkstk_darwin(v16);
  sub_8814();
  v86 = v18 - v17;
  v19 = sub_4C52C();
  v96 = type metadata accessor for ShelfPagePresenter.State(v19);
  sub_4248();
  v21 = __chkstk_darwin(v20);
  v92.receiver = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v82 - v24;
  __chkstk_darwin(v23);
  v27 = &v82 - v26;
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v28 = sub_8E304();
  sub_4D6C(v28, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  *(&v98 + 1) = type metadata accessor for ShelfPageViewController();
  *&v97 = v0;
  v29 = v0;
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&v97);
  sub_8E244();
  *(&v98 + 1) = v96;
  v32 = sub_4ED0(&v97);
  v33 = v95;
  sub_7F8D4(v95, v32);
  sub_8E264();
  sub_3410(&v97, &unk_C3EB0);
  sub_8E2E4();

  sub_7F8D4(v33, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  super_class = v92.super_class;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v42 = sub_332C(&qword_C6E08);
      v43 = &v27[*(v42 + 64)];
      v44 = *v43;
      v45 = v43[1];
      sub_3410(&v27[*(v42 + 48)], &qword_C40D0);
      v46 = objc_allocWithZone(type metadata accessor for ErrorViewController());
      swift_errorRetain();

      sub_13C90(v44);
      v47 = sub_801F8();
      sub_3D85C(v47, v48, 0, v44, v45, v49, v50, v51, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, v100, v101, v102);
      v53 = v52;
      *(v52 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_automaticRetry) = 0;
      v54 = v52;
      sub_7B524(v53);

      sub_13CA0(v44);

      goto LABEL_11;
    case 2:
      v40 = *v27;
      v41 = objc_allocWithZone(type metadata accessor for LoadingViewController());
      v39 = sub_4C558(v40);
      goto LABEL_9;
    case 3:
      v39 = 0;
      goto LABEL_9;
    default:
      v36 = objc_allocWithZone(type metadata accessor for AlertViewController());
      v37 = sub_801F8();
      v39 = sub_D178(v37, v38);
LABEL_9:
      sub_7B524(v39);
LABEL_11:
      sub_7F8D4(v33, v25);
      v55 = swift_getEnumCaseMultiPayload();
      sub_80198();
      sub_7F99C(v25, v56);
      if (v55 == 3)
      {
        sub_CE5C(0, &qword_C3F30);
        v57 = sub_8F7D4();
        sub_13EC8();
        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v99 = sub_7FA28;
        v100 = v58;
        *&v97 = _NSConcreteStackBlock;
        *(&v97 + 1) = 1107296256;
        sub_41AB8();
        *&v98 = v59;
        *(&v98 + 1) = &unk_BB228;
        v60 = _Block_copy(&v97);

        v61 = v86;
        sub_8EE94();
        *&v97 = &_swiftEmptyArrayStorage;
        sub_29A60();
        sub_332C(&unk_C50C0);
        sub_801E0();
        sub_2F934(v62, &unk_C50C0);
        v63 = v88;
        v33 = v95;
        v64 = v91;
        sub_8F944();
        sub_8F7E4();
        _Block_release(v60);

        (*(v90 + 8))(v63, v64);
        (*(v87 + 8))(v61, v89);
      }

      receiver = v92.receiver;
      sub_7F8D4(v33, v92.receiver);
      v66 = swift_getEnumCaseMultiPayload();
      v67 = v94;
      switch(v66)
      {
        case 1:

          v69 = sub_332C(&qword_C6E08);
          v70 = *(v69 + 48);
          sub_13CA0(*&receiver[*(v69 + 64)]);
          sub_3410(&receiver[v70], &qword_C40D0);
          goto LABEL_16;
        case 2:
          goto LABEL_17;
        case 3:
          goto LABEL_16;
        default:
          sub_80198();
          sub_7F99C(receiver, v68);
LABEL_16:
          v99 = 0;
          v97 = 0u;
          v98 = 0u;
          sub_7B0B8(&v97);
          sub_3410(&v97, &qword_C6E70);
LABEL_17:
          v71 = *&v29[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_presenter];
          v72 = OBJC_IVAR____TtC19CoreDynamicUIPlugin18ShelfPagePresenter_destination;
          v73 = v71 + v72 + *(type metadata accessor for ShelfPageDestination() + 24);
          v74 = v93;
          sub_80110(v73, v93, &qword_C6400);
          if (sub_33C0(v74, 1, super_class) == 1)
          {
            sub_3410(v74, &qword_C6400);
          }

          else
          {
            sub_7F938(v74, v67);
            if (*&v29[OBJC_IVAR____TtC19CoreDynamicUIPlugin23ShelfPageViewController_pageRenderPresenter])
            {
              v75 = *(super_class + 9);
              sub_8F034();
              sub_4248();
              v77 = v83;
              (*(v76 + 16))(v83, v67 + v75);
              (*(v84 + 104))(v77, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v85);
              sub_80204();
              (*(v78 + 160))(v77);
              v79 = sub_80244();
              v80(v79);
            }

            sub_801B0();
            sub_7F99C(v67, v81);
          }

          sub_41B74();
          return;
      }
  }
}