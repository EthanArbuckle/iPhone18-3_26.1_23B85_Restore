uint64_t sub_FD16C()
{
  v2 = *(type metadata accessor for PageRootView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_88BE0;

  return sub_FA910(v4, v5, v0 + v3);
}

uint64_t View.onHotReload(willReload:didReload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_77DF4(a1);
  sub_77DF4(a3);
  sub_FE110(a1, a2, a3, a4, &v11);
  v14 = *(&v13 + 1);
  v8 = v12;
  v9 = v11;
  sub_2C40E8();
  sub_77E80(v9);
  sub_77E80(v8);

  return sub_FE1E0(&v14);
}

uint64_t sub_FD370()
{
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  return *(v0 + 16);
}

uint64_t sub_FD3E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_FD458(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_FE4A4();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_FD52C()
{
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  return *(v0 + 24);
}

uint64_t sub_FD59C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_FD614(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_FE4A4();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_FD6E8()
{
  v1 = v0;
  sub_2C01F8();
  v2 = sub_2C01D8();
  sub_2C01C8();

  v3 = OBJC_IVAR____TtC11BookStoreUIP33_B56EEE055FCC7B8C902F085A95BD0E2817HotReloadObserver___observationRegistrar;
  v4 = sub_2BE738();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_FD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_2C5C18();
  v6[6] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_FD844, v8, v7);
}

uint64_t sub_FD844()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_FE4A4();
  sub_2BE6F8();

  v0[2] = v1;
  swift_getKeyPath();
  sub_2BE718();

  v3 = *(v1 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[4];
    v7 = v0[3];
    *(v1 + 16) = v5;
    v0[2] = v7;
    swift_getKeyPath();
    sub_2BE708();

    v6(v8);
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_FD9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_2C5C18();
  v6[6] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_FDA64, v8, v7);
}

uint64_t sub_FDA64()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_FE4A4();
  sub_2BE6F8();

  v0[2] = v1;
  swift_getKeyPath();
  sub_2BE718();

  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[4];
    v7 = v0[3];
    *(v1 + 24) = v5;
    v0[2] = v7;
    swift_getKeyPath();
    sub_2BE708();

    v6(v8);
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_FDBE8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a4);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_2C5C58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_2C5C18();
  swift_retain_n();

  v18 = sub_2C5C08();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a1;
  v19[5] = a7;
  v19[6] = v16;
  sub_249B98(0, 0, v14, a8, v19);
}

uint64_t sub_FDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  v31 = a2;
  v30 = sub_6620C(&qword_3C0E00);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v23 - v4;
  v6 = *(v2 + 40);
  v33 = *(v2 + 32);
  v5 = v33;
  v34 = v6;
  v28 = sub_6620C(&qword_3C0E08);
  sub_2C4378();
  v7 = v38;
  swift_getKeyPath();
  v33 = v7;
  sub_FE4A4();
  sub_2BE6F8();

  v8 = *(v7 + 16);

  v33 = v8;
  v9 = *v3;
  v11 = *(v3 + 24);
  v26 = *(v3 + 16);
  v10 = v26;
  v24 = v9;
  v25 = v11;
  v38 = v6;
  v12 = swift_allocObject();
  v13 = *(v3 + 16);
  v12[1] = *v3;
  v12[2] = v13;
  v12[3] = *(v3 + 32);
  sub_77DF4(v9);
  sub_77DF4(v10);

  sub_FE530(&v38, &v37);
  v14 = sub_6620C(&qword_3C0E18);
  v15 = sub_FE5A0();
  sub_2C40F8();

  v33 = v5;
  v34 = v6;
  sub_2C4378();
  v16 = v37;
  swift_getKeyPath();
  v33 = v16;
  sub_2BE6F8();

  v17 = *(v16 + 24);

  v37 = v17;
  v18 = swift_allocObject();
  v19 = *(v3 + 16);
  v18[1] = *v3;
  v18[2] = v19;
  v18[3] = *(v3 + 32);
  sub_77DF4(v24);
  sub_77DF4(v26);

  sub_FE530(&v38, &v33);
  v33 = v14;
  v34 = &type metadata for Int;
  v35 = v15;
  v36 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  v20 = v30;
  v21 = v27;
  sub_2C40F8();

  return (*(v32 + 8))(v21, v20);
}

uint64_t sub_FE110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for HotReloadObserver();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_2BE728();
  sub_2C01F8();
  v11 = sub_2C01D8();

  sub_2C01E8();

  result = sub_2C4368();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v13;
  a5[5] = v14;
  return result;
}

uint64_t sub_FE1E0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C0C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HotReloadObserver()
{
  result = qword_3C0CC8;
  if (!qword_3C0CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FE29C()
{
  result = sub_2BE738();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_FE33C()
{
  sub_2C2A08();
  sub_FAB68();
  return swift_getWitnessTable();
}

uint64_t sub_FE3A0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_FE3B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_FE400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_FE4A4()
{
  result = qword_3C0E10;
  if (!qword_3C0E10)
  {
    type metadata accessor for HotReloadObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0E10);
  }

  return result;
}

uint64_t sub_FE500()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_FE530(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_FE5A0()
{
  result = qword_3C0E20;
  if (!qword_3C0E20)
  {
    sub_718D4(&qword_3C0E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0E20);
  }

  return result;
}

uint64_t sub_FE630()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_FE690()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_FE6D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FE724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_FD9C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_FE7EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_FE834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_FD7A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_FE8FC()
{
  sub_718D4(&qword_3C0E00);
  sub_718D4(&qword_3C0E18);
  sub_FE5A0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

Class sub_FEA10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  type metadata accessor for Key(0);
  sub_FED08();
  v3.super.isa = sub_2C57C8().super.isa;

  return v3.super.isa;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB19TitleFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3154();
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  LOBYTE(v7) = 1;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB21MessageFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3204(UIFontWeightMedium);
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  *(&v6 + 1) = 0x4010000000000000;
  LOBYTE(v7) = 0;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB26ConfirmLabelFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3204(UIFontWeightSemibold);
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  LOBYTE(v7) = 1;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

unint64_t sub_FED08()
{
  result = qword_3BC040;
  if (!qword_3BC040)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC040);
  }

  return result;
}

void *_sSo24BSUINavigationControllerC11BookStoreUIE27navigationBarFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = UIFontDescriptorSystemDesignSerif;
  *&v3 = UIFontDescriptorSystemDesignSerif;
  *(&v3 + 1) = UIFontWeightBold;
  v4[0] = 0;
  *&v4[8] = xmmword_2EABC0;
  v4[24] = 0;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 256;
  LOBYTE(v7) = 1;
  v1 = TextAttributesBuilder.build()();
  v8[2] = *&v4[16];
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = v3;
  v8[1] = *v4;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINavigationControllerC11BookStoreUIE32largeNavigationBarFontAttributes4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(void *a1)
{
  v1 = _s11BookStoreUI21ToolKitTextAttributesV13toolbarHeader4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(a1);
  LOBYTE(v4) = 1;
  *&v5 = 0;
  BYTE8(v5) = 1;
  *&v6 = 0;
  *(&v6 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v7) = 256;
  LOBYTE(v8) = 1;
  *(&v8 + 1) = v1;
  v2 = TextAttributesBuilder.build()();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v9[0] = 0uLL;
  v9[1] = v4;
  sub_FED60(v9);
  return v2;
}

uint64_t sub_FF060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BE400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_6620C(&qword_3BD588);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_6620C(&qword_3C0E28);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_FF22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BC7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BE400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_6620C(&qword_3BD588);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_6620C(&qword_3C0E28);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_FF410()
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v1 <= 0x3F)
    {
      sub_FF518(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        sub_FF56C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_FF518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_FF56C()
{
  if (!qword_3C0E98)
  {
    sub_718D4(&unk_3C0EA0);
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0E98);
    }
  }
}

__n128 sub_FF650@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C0EE8);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = sub_2C3328();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_6620C(&qword_3C0EF0);
  sub_FF798(a1, v2, &v7[*(v8 + 44)]);
  sub_2C46A8();
  sub_2C2AD8();
  sub_101A64(v7, a2);
  v9 = a2 + *(sub_6620C(&qword_3C0EF8) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_FF798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a3;
  v96 = type metadata accessor for ShortDividerStyle(0);
  __chkstk_darwin(v96);
  v95 = (&v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C4548();
  v93 = *(v6 - 8);
  v94 = v6;
  __chkstk_darwin(v6);
  v91 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_6620C(&qword_3C0F00);
  __chkstk_darwin(v92);
  v98 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v79 - v10;
  v11 = sub_2C0D48();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v86 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v13 - 8);
  v84 = &v79 - v14;
  v85 = sub_2C3918();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2C0978();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DescriptionHeaderComponent(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = sub_6620C(&qword_3C0F08);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v90 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v79 - v25;
  *v26 = sub_2C3328();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = sub_6620C(&qword_3C0F10);
  sub_100154(a1, a2, &v26[*(v27 + 44)]);
  v28 = a2;
  sub_102F4C(a2, &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DescriptionHeaderComponent);
  v29 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v30 = swift_allocObject();
  sub_101DBC(&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v31 = *(v22 + 44);
  v89 = v26;
  v32 = &v26[v31];
  *v32 = sub_10152C;
  *(v32 + 1) = 0;
  *(v32 + 2) = sub_101E20;
  *(v32 + 3) = v30;
  v33 = (a1 + *(type metadata accessor for DescriptionHeaderComponentModel() + 32));
  v34 = v33[1];
  if (v34)
  {
    v100 = *v33;
    v101 = v34;
    sub_7212C();

    v35 = sub_2C3A48();
    v37 = v36;
    v39 = v38;
    v79 = v28;
    sub_29AD08(v17);
    v40 = v83;
    v41 = v80;
    v42 = v85;
    (*(v83 + 104))(v80, enum case for Font.TextStyle.footnote(_:), v85);
    v43 = sub_2C3848();
    v44 = v84;
    (*(*(v43 - 8) + 56))(v84, 1, 1, v43);
    sub_2C3868();
    sub_2C38A8();
    sub_69198(v44, &qword_3BCB28);
    (*(v40 + 8))(v41, v42);
    (*(v81 + 8))(v17, v82);
    v45 = sub_2C39E8();
    v47 = v46;
    LOBYTE(v44) = v48;
    sub_72180(v35, v37, v39 & 1);

    v49 = v86;
    sub_29A87C(v86);
    v50 = sub_2C0D08();
    (*(v87 + 8))(v49, v88);
    v100 = v50;
    v51 = sub_2C39A8();
    v53 = v52;
    LOBYTE(v35) = v54;
    v56 = v55;
    sub_72180(v45, v47, v44 & 1);

    v57 = v35 & 1;
    v58 = v51;
    v59 = v53;
    sub_BE2CC(v51, v53, v35 & 1);
    v88 = v56;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v88 = 0;
  }

  v60 = v91;
  sub_2C4538();
  KeyPath = swift_getKeyPath();
  v62 = v95;
  *v95 = KeyPath;
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  sub_101970(&qword_3C0F20, &type metadata accessor for Divider);
  sub_101970(&qword_3C0F28, type metadata accessor for ShortDividerStyle);
  v63 = v97;
  v64 = v94;
  sub_2C3EB8();
  sub_102FB4(v62, type metadata accessor for ShortDividerStyle);
  (*(v93 + 8))(v60, v64);
  v65 = sub_2C37B8();
  sub_2C24D8();
  v66 = v63 + *(v92 + 36);
  *v66 = v65;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68;
  *(v66 + 24) = v69;
  *(v66 + 32) = v70;
  *(v66 + 40) = 0;
  v71 = v89;
  v72 = v90;
  sub_6932C(v89, v90, &qword_3C0F08);
  v73 = v98;
  sub_101E94(v63, v98);
  v74 = v99;
  sub_6932C(v72, v99, &qword_3C0F08);
  v75 = sub_6620C(&qword_3C0F30);
  v76 = (v74 + *(v75 + 48));
  *v76 = v58;
  v76[1] = v59;
  v77 = v88;
  v76[2] = v57;
  v76[3] = v77;
  sub_101E94(v73, v74 + *(v75 + 64));
  sub_BE288(v58, v59, v57, v77);
  sub_BE2DC(v58, v59, v57, v77);
  sub_101F04(v63);
  sub_69198(v71, &qword_3C0F08);
  sub_101F04(v73);
  sub_BE2DC(v58, v59, v57, v77);
  return sub_69198(v72, &qword_3C0F08);
}

uint64_t sub_100154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v149 = a2;
  v142 = a3;
  v141 = sub_2C3308();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2C3918();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BEC80);
  __chkstk_darwin(v6 - 8);
  v140 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v137 = &v119 - v9;
  v10 = sub_2C0D48();
  v147 = *(v10 - 8);
  __chkstk_darwin(v10);
  v146 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v12 - 8);
  v144 = &v119 - v13;
  v14 = sub_2C0978();
  v145 = *(v14 - 8);
  __chkstk_darwin(v14);
  v143 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_6620C(&qword_3C0F38);
  __chkstk_darwin(v125);
  v17 = (&v119 - v16);
  v128 = sub_6620C(&qword_3C0F40);
  __chkstk_darwin(v128);
  v19 = &v119 - v18;
  v130 = sub_6620C(&qword_3C0F48);
  __chkstk_darwin(v130);
  v21 = &v119 - v20;
  v126 = sub_6620C(&qword_3C0F50);
  __chkstk_darwin(v126);
  v23 = &v119 - v22;
  v24 = sub_6620C(&qword_3C0F58);
  __chkstk_darwin(v24);
  v26 = &v119 - v25;
  v127 = sub_6620C(&qword_3C0F60);
  __chkstk_darwin(v127);
  v28 = &v119 - v27;
  v29 = sub_6620C(&qword_3C0F68);
  __chkstk_darwin(v29 - 8);
  v132 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v148 = &v119 - v32;
  v129 = type metadata accessor for DescriptionHeaderComponentModel();
  v33 = *(a1 + *(v129 + 36));
  v136 = v10;
  v131 = v14;
  if (v33)
  {
    if (v33 != 1)
    {
      sub_2C46A8();
      sub_2C2708();
      v79 = v156;
      v80 = v157;
      v81 = v158;
      v82 = v159;
      LOBYTE(v150) = 1;
      v155 = v157;
      v154 = v159;
      *v21 = 0;
      v21[8] = 1;
      *(v21 + 2) = v79;
      v21[24] = v80;
      *(v21 + 4) = v81;
      v21[40] = v82;
      *(v21 + 3) = v160;
      swift_storeEnumTagMultiPayload();
      sub_6620C(&qword_3C0F70);
      sub_1029EC();
      sub_102EAC();
      sub_2C33C8();
      goto LABEL_7;
    }

    v122 = sub_2C42B8();
    type metadata accessor for DescriptionHeaderComponent(0);
    v123 = v19;
    v124 = v24;
    v34 = v143;
    sub_29AD08(v143);
    v35 = sub_2C3848();
    v36 = v144;
    (*(*(v35 - 8) + 56))(v144, 1, 1, v35);
    v121 = sub_2C3898();
    sub_69198(v36, &qword_3BCB28);
    (*(v145 + 8))(v34, v14);
    KeyPath = swift_getKeyPath();
    v37 = v146;
    sub_29A87C(v146);
    v38 = sub_2C0CF8();
    (*(v147 + 8))(v37, v10);
    v39 = swift_getKeyPath();
    v40 = a1;
    v41 = (v17 + *(sub_6620C(&qword_3C0FE8) + 36));
    v42 = *(sub_6620C(&qword_3BD7E8) + 28);
    v43 = enum case for Image.Scale.large(_:);
    v44 = sub_2C42D8();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v45 = KeyPath;
    *v17 = v122;
    v17[1] = v45;
    v17[2] = v121;
    v17[3] = v39;
    v17[4] = v38;
    LOBYTE(v39) = sub_2C3768();
    sub_2C24D8();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v17 + *(sub_6620C(&qword_3C0FD8) + 36);
    *v54 = v39;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    LOBYTE(v39) = sub_2C3778();
    sub_2C24D8();
    v55 = v17 + *(v125 + 36);
    *v55 = v39;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    sub_102C58();
    v60 = v123;
    sub_2C3F88();
    sub_69198(v17, &qword_3C0F38);
    sub_6932C(v60, v23, &qword_3C0F40);
    swift_storeEnumTagMultiPayload();
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &unk_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &unk_2EAD68, sub_102C58);
    sub_2C33C8();
    sub_6932C(v26, v21, &qword_3C0F58);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0F70);
    sub_1029EC();
    sub_102EAC();
    a1 = v40;
    sub_2C33C8();
    sub_69198(v26, &qword_3C0F58);
    v61 = v60;
    v62 = &qword_3C0F40;
  }

  else
  {
    sub_101244(a1);
    v63 = sub_2C3768();
    sub_2C24D8();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = &v28[*(sub_6620C(&qword_3C0F90) + 36)];
    *v72 = v63;
    *(v72 + 1) = v65;
    *(v72 + 2) = v67;
    *(v72 + 3) = v69;
    *(v72 + 4) = v71;
    v72[40] = 0;
    v73 = sub_2C3778();
    sub_2C24D8();
    v74 = &v28[*(v127 + 36)];
    *v74 = v73;
    *(v74 + 1) = v75;
    *(v74 + 2) = v76;
    *(v74 + 3) = v77;
    *(v74 + 4) = v78;
    v74[40] = 0;
    sub_6932C(v28, v23, &qword_3C0F60);
    swift_storeEnumTagMultiPayload();
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &unk_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &unk_2EAD68, sub_102C58);
    sub_2C33C8();
    sub_6932C(v26, v21, &qword_3C0F58);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0F70);
    sub_1029EC();
    sub_102EAC();
    sub_2C33C8();
    sub_69198(v26, &qword_3C0F58);
    v61 = v28;
    v62 = &qword_3C0F60;
  }

  sub_69198(v61, v62);
LABEL_7:
  v83 = (a1 + *(v129 + 28));
  v84 = v83[1];
  v150 = *v83;
  v151 = v84;
  sub_7212C();

  v130 = sub_2C3A48();
  v86 = v85;
  v88 = v87;
  v129 = v89;
  type metadata accessor for DescriptionHeaderComponent(0);
  v90 = v143;
  sub_29AD08(v143);
  v91 = v134;
  v92 = v133;
  v93 = v135;
  (*(v134 + 104))(v133, enum case for Font.TextStyle.title2(_:), v135);
  v94 = enum case for Font.Design.serif (_:);
  v95 = sub_2C3848();
  v96 = *(v95 - 8);
  v97 = v144;
  (*(v96 + 104))(v144, v94, v95);
  (*(v96 + 56))(v97, 0, 1, v95);
  sub_2C38A8();
  sub_69198(v97, &qword_3BCB28);
  (*(v91 + 8))(v92, v93);
  sub_2C3808();

  (*(v145 + 8))(v90, v131);
  v98 = v130;
  v99 = sub_2C39E8();
  v101 = v100;
  LOBYTE(v91) = v102;
  sub_72180(v98, v86, v88 & 1);

  v103 = v146;
  sub_29A87C(v146);
  v104 = sub_2C0CB8();
  (*(v147 + 8))(v103, v136);
  v150 = v104;
  v105 = sub_2C39A8();
  v107 = v106;
  LOBYTE(v98) = v108;
  v110 = v109;
  sub_72180(v99, v101, v91 & 1);

  v150 = v105;
  v151 = v107;
  v152 = v98 & 1;
  v153 = v110;
  v111 = v138;
  sub_2C32B8();
  v112 = v137;
  sub_2C3FE8();
  (*(v139 + 8))(v111, v141);
  sub_72180(v105, v107, v98 & 1);

  v113 = v148;
  v114 = v132;
  sub_6932C(v148, v132, &qword_3C0F68);
  v115 = v140;
  sub_6932C(v112, v140, &qword_3BEC80);
  v116 = v142;
  sub_6932C(v114, v142, &qword_3C0F68);
  v117 = sub_6620C(&qword_3C1008);
  sub_6932C(v115, v116 + *(v117 + 48), &qword_3BEC80);
  sub_69198(v112, &qword_3BEC80);
  sub_69198(v113, &qword_3C0F68);
  sub_69198(v115, &qword_3BEC80);
  return sub_69198(v114, &qword_3C0F68);
}

uint64_t sub_101244(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C1010);
  __chkstk_darwin(v2);
  v4 = v17 - v3;
  v5 = type metadata accessor for AppleBooksReviewIcon(0);
  __chkstk_darwin(v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2C0D48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for DescriptionHeaderComponentModel() + 40);
  v13 = *(v12 + 8);
  if (!v13 || (v14 = *(v12 + 16), v17[1] = *v12, v17[2] = v13, v17[3] = v14, v18 = *(v12 + 24), sub_29A87C(v11), v15 = sub_147DBC(), (*(v9 + 8))(v11, v8), !v15))
  {
    sub_29A87C(v11);
    v15 = sub_2C0D08();
    (*(v9 + 8))(v11, v8);
  }

  *v7 = swift_getKeyPath();
  sub_6620C(&qword_3C0C88);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v5 + 20)) = v15;
  sub_102F4C(v7, v4, type metadata accessor for AppleBooksReviewIcon);
  swift_storeEnumTagMultiPayload();
  sub_101970(&qword_3C0FB8, type metadata accessor for AppleBooksReviewIcon);
  sub_2C33C8();
  return sub_102FB4(v7, type metadata accessor for AppleBooksReviewIcon);
}

uint64_t sub_10152C@<X0>(void *a1@<X8>)
{
  v2 = sub_2C3418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C3578();
  sub_2C2748();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_101638(CGFloat *a1)
{
  v2 = sub_6620C(&unk_3C0EA0);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = sub_6620C(&qword_3C0C68);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v18.origin.x = *a1;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  CGRectGetMinY(v18);
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = v13;
  v19.size.height = v14;
  CGRectGetMaxY(v19);
  sub_2C1E98();
  v15 = sub_2C1EC8();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  type metadata accessor for DescriptionHeaderComponent(0);
  sub_29B100(v4);
  sub_6932C(v10, v7, &qword_3C0C68);
  sub_2C44D8();
  sub_69198(v4, &unk_3C0EA0);
  return sub_69198(v10, &qword_3C0C68);
}

uint64_t sub_101850()
{
  __chkstk_darwin(v0);
  sub_102F4C(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DescriptionHeaderComponent);
  sub_101970(&qword_3C0ED8, type metadata accessor for DescriptionHeaderComponent);
  return sub_2BFD18();
}

uint64_t sub_101970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101AF4()
{
  v1 = type metadata accessor for DescriptionHeaderComponent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0D48();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_6620C(&qword_3C0C88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2C0978();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0C98();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[7];
  sub_6620C(&qword_3C0F18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(sub_6620C(&unk_3C0EA0) + 32);
    v14 = sub_2C1EC8();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_101DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionHeaderComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101E20(CGFloat *a1)
{
  type metadata accessor for DescriptionHeaderComponent(0);

  return sub_101638(a1);
}

uint64_t sub_101E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101F04(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C0F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101F6C()
{
  v1 = v0;
  v2 = sub_2C3178();
  v11 = 1;
  sub_102138(&v19);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v12 = v19;
  v17[1] = v20;
  v17[2] = v21;
  v17[3] = v22;
  v18 = v23;
  v17[0] = v19;
  sub_6932C(&v12, &v7, &qword_3C1148);
  sub_69198(v17, &qword_3C1148);
  *&v10[23] = v13;
  *&v10[39] = v14;
  *&v10[55] = v15;
  *&v10[71] = v16;
  *&v10[7] = v12;
  v3 = v11;
  v4 = *(v1 + *(type metadata accessor for AppleBooksReviewIcon(0) + 20));
  KeyPath = swift_getKeyPath();
  *&v8[17] = *&v10[16];
  *&v8[33] = *&v10[32];
  *&v8[49] = *&v10[48];
  *&v8[64] = *&v10[63];
  v7 = v2;
  v8[0] = v3;
  *&v8[1] = *v10;
  *&v9 = KeyPath;
  *(&v9 + 1) = v4;

  sub_6620C(&qword_3C1150);
  sub_1034F0();
  sub_2C3F88();
  v23 = *&v8[48];
  v24 = *&v8[64];
  v25 = v9;
  v19 = v7;
  v20 = *v8;
  v21 = *&v8[16];
  v22 = *&v8[32];
  return sub_69198(&v19, &qword_3C1150);
}

uint64_t sub_102138@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2C3918();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C0978();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2C42B8();
  sub_29AD08(v12);
  sub_2C37C8();
  v28 = sub_2C3808();

  v13 = *(v10 + 8);
  v13(v12, v9);
  KeyPath = swift_getKeyPath();
  v26 = sub_2C42B8();
  sub_29AD08(v12);
  (*(v6 + 104))(v8, enum case for Font.TextStyle.largeTitle(_:), v5);
  v14 = sub_2C3848();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v25 = sub_2C38A8();
  sub_69198(v4, &qword_3BCB28);
  (*(v6 + 8))(v8, v5);
  v13(v12, v9);
  v15 = swift_getKeyPath();
  v16 = sub_2C42B8();
  sub_29AD08(v12);
  sub_2C37C8();
  v17 = sub_2C3808();

  v13(v12, v9);
  v18 = swift_getKeyPath();
  v19 = v28;
  v20 = v26;
  v21 = KeyPath;
  *a1 = v29;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v20;
  v22 = v25;
  a1[4] = v15;
  a1[5] = v22;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v17;
}

double sub_10250C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_29A87C(v5);
  v6 = sub_2C0CF8();
  (*(v3 + 8))(v5, v2);
  sub_2C46A8();
  sub_2C2708();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  v7 = *&v10[16];
  *(a1 + 10) = *v10;
  *a1 = v6;
  *(a1 + 8) = 256;
  *(a1 + 26) = v7;
  result = *&v10[32];
  *(a1 + 42) = *&v10[32];
  *(a1 + 56) = *&v10[46];
  return result;
}

double sub_102648@<D0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  v6 = sub_2C2AA8();
  __chkstk_darwin(v6 - 8);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 28);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_2C31A8();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = a2;
  v8[1] = a3;
  sub_2C2A98();
  sub_102FB4(v8, &type metadata accessor for RoundedRectangle);
  result = *&v16;
  v14 = v17;
  *a1 = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v18;
  return result;
}

uint64_t sub_102774@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShapeRole.separator(_:);
  v3 = sub_2C4748();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_102804(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2C2468();
  return sub_10288C;
}

void sub_10288C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1028D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1038E4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10293C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1038E4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1029A0(uint64_t a1)
{
  v2 = sub_1038E4();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_1029EC()
{
  result = qword_3C0F78;
  if (!qword_3C0F78)
  {
    sub_718D4(&qword_3C0F58);
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &unk_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &unk_2EAD68, sub_102C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0F78);
  }

  return result;
}

unint64_t sub_102B00()
{
  result = qword_3C0F98;
  if (!qword_3C0F98)
  {
    sub_718D4(&qword_3C0FA0);
    sub_102B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0F98);
  }

  return result;
}

unint64_t sub_102B84()
{
  result = qword_3C0FA8;
  if (!qword_3C0FA8)
  {
    sub_718D4(&qword_3C0FB0);
    sub_101970(&qword_3C0FB8, type metadata accessor for AppleBooksReviewIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FA8);
  }

  return result;
}

uint64_t sub_102CB8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_102D3C()
{
  result = qword_3C0FE0;
  if (!qword_3C0FE0)
  {
    sub_718D4(&qword_3C0FE8);
    sub_102DF4();
    sub_72B74(&qword_3BD800, &qword_3BD7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FE0);
  }

  return result;
}

unint64_t sub_102DF4()
{
  result = qword_3C0FF0;
  if (!qword_3C0FF0)
  {
    sub_718D4(&qword_3C0FF8);
    sub_88554();
    sub_72B74(&qword_3BCB00, &qword_3BCB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FF0);
  }

  return result;
}

unint64_t sub_102EAC()
{
  result = qword_3C1000;
  if (!qword_3C1000)
  {
    sub_718D4(&qword_3C0F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1000);
  }

  return result;
}

uint64_t sub_102F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_102FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_103028(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC7C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1030B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC7C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_103130()
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1031CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BE400);
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

    return (v10 + 1);
  }
}

uint64_t sub_1032A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BE400);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10336C()
{
  sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_103400()
{
  result = qword_3C1138;
  if (!qword_3C1138)
  {
    sub_718D4(&qword_3C0EF8);
    sub_72B74(&qword_3C1140, &qword_3C0EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1138);
  }

  return result;
}

unint64_t sub_1034F0()
{
  result = qword_3C1158;
  if (!qword_3C1158)
  {
    sub_718D4(&qword_3C1150);
    sub_72B74(&qword_3C1160, &qword_3C1168);
    sub_72B74(&qword_3BCB00, &qword_3BCB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1158);
  }

  return result;
}

unint64_t sub_1035E8()
{
  result = qword_3C1170;
  if (!qword_3C1170)
  {
    sub_718D4(&qword_3C1178);
    sub_72B74(&qword_3C1180, &qword_3C1188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1170);
  }

  return result;
}

uint64_t sub_1036E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    sub_101970(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1037E0()
{
  result = qword_3C11B0;
  if (!qword_3C11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11B0);
  }

  return result;
}

unint64_t sub_103838()
{
  result = qword_3C11B8;
  if (!qword_3C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11B8);
  }

  return result;
}

unint64_t sub_103890()
{
  result = qword_3C11C0;
  if (!qword_3C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11C0);
  }

  return result;
}

unint64_t sub_1038E4()
{
  result = qword_3C11C8;
  if (!qword_3C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11C8);
  }

  return result;
}

uint64_t AssetActionModifyRequest.storeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyRequest_storeID);

  return v1;
}

uint64_t AssetActionModifyRequest.collectionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID);

  return v1;
}

uint64_t AssetActionModifyResponse.collectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle);

  return v1;
}

id sub_103BE8()
{

  v0 = sub_2C5888();

  return v0;
}

uint64_t AssetActionModifyResponse.assetID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyResponse_assetID);

  return v1;
}

id sub_103CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[*a6];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[*a7];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[*a8] = a5;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_103D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[*a6];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v8[*a7];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v8[*a8] = a5;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t NavigationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_10407C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 isInCard];
  return v3;
}

BOOL sub_104104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong presentingViewController];

  if (v1)
  {
  }

  return v1 != 0;
}

void sub_1041B8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_104204(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_104294;
}

void sub_104294(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10431C(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong *a1];

  return v3;
}

void sub_104380(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];

  [v5 pushViewController:a1 animated:a2 & 1];
}

void sub_104418(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_1044BC(char a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_10454C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

void sub_1045C0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

void sub_104624(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_6620C(&qword_3BC1F8);
    isa = sub_2C5B18().super.isa;
    v8 = sub_2C57C8().super.isa;
    [v6 presentFeedsInCards:isa focusedIndex:a2 animated:a3 & 1 options:v8 completion:0];
  }
}

void sub_104708(char a1, uint64_t a2)
{
  v4 = sub_104EB0();
  [v4 popCardsAnimated:a1 & 1 reason:a2];
}

void sub_10476C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong presentingViewController], v3, v4) && (v5 = objc_msgSend(v4, "presentedViewController"), v4, v5) && (sub_104FA4(), v6 = sub_2C5E58(), v5, v6) || (v7 = swift_unknownObjectWeakLoadStrong()) != 0 && (v8 = v7, sub_104FA4(), v6 = sub_2C5E58(), v8, v6))
  {
    aBlock[4] = ContextActionItemCoverProvider.init();
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_750DC;
    aBlock[3] = &unk_38E0C0;
    v9 = _Block_copy(aBlock);
    [v6 popAllCardsAnimated:a1 & 1 completion:v9];
    _Block_release(v9);
  }
}

void sub_1048E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong presentingViewController], v1, v2) && (v3 = objc_msgSend(v2, "presentedViewController"), v2, v3) && (sub_104FA4(), v4 = sub_2C5E58(), v3, v4) || (v5 = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = v5, sub_104FA4(), v4 = sub_2C5E58(), v6, v4))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];

      if (v9)
      {
        if ([v9 bc_canCloseAsset])
        {
          v16 = sub_104B30;
          v17 = 0;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_750DC;
          v15 = &unk_38E110;
          v10 = _Block_copy(&aBlock);
          [v9 bc_closeToAssetWithCardStackViewController:v4 completion:v10];

          _Block_release(v10);
          return;
        }
      }
    }

    v16 = ContextActionItemCoverProvider.init();
    v17 = 0;
    aBlock = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_750DC;
    v15 = &unk_38E0E8;
    v11 = _Block_copy(&aBlock);
    [v4 popAllCardsAnimated:1 completion:v11];

    _Block_release(v11);
  }
}

void sub_104B3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong presentingViewController], v1, v2) && (v3 = objc_msgSend(v2, "presentedViewController"), v2, v3) && (sub_104FA4(), v4 = sub_2C5E58(), v3, v4) || (v5 = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = v5, sub_104FA4(), v4 = sub_2C5E58(), v6, v4))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];

      if (v9)
      {
        if ([v9 bc_canCloseAsset])
        {
          aBlock[4] = sub_104DB4;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_750DC;
          aBlock[3] = &unk_38E138;
          v10 = _Block_copy(aBlock);
          [v9 bc_closeAssetWithCardStackViewController:v4 completion:v10];
          _Block_release(v10);
          v11 = v4;
LABEL_17:

          return;
        }
      }
    }

    if (qword_3BB7E8 != -1)
    {
      swift_once();
    }

    v12 = sub_2C00B8();
    sub_57AD8(v12, qword_3C3068);
    v11 = sub_2C0098();
    v13 = sub_2C5DD8();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v11, v13, "We should not even have the menu item if card stack is not presented from an asset", v14, 2u);
    }

    v9 = v4;
    goto LABEL_17;
  }
}

void sub_104DC0(const char *a1)
{
  if (qword_3BB7E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C3068);
  oslog = sub_2C0098();
  v3 = sub_2C5DE8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_104EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong presentingViewController], v1, !v2) || (v3 = objc_msgSend(v2, "presentedViewController"), v2, !v3) || (sub_104FA4(), v4 = sub_2C5E58(), v3, (result = v4) == 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      sub_104FA4();
      v7 = sub_2C5E58();

      return v7;
    }
  }

  return result;
}

unint64_t sub_104FA4()
{
  result = qword_3C1250;
  if (!qword_3C1250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C1250);
  }

  return result;
}

uint64_t sub_104FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NavigationProvider.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

id sub_105060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 isInCard];
  return v3;
}

BOOL sub_1050EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong presentingViewController];

  if (v1)
  {
  }

  return v1 != 0;
}

id sub_105160()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong transitionCoordinator];

  return v1;
}

void sub_10520C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];

  [v5 pushViewController:a1 animated:a2 & 1];
}

void sub_1052A8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_105350(char a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = [Strong navigationController];
}

void sub_1053E4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

void sub_10545C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

void sub_1054C4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_6620C(&qword_3BC1F8);
    isa = sub_2C5B18().super.isa;
    v8 = sub_2C57C8().super.isa;
    [v6 presentFeedsInCards:isa focusedIndex:a2 animated:a3 & 1 options:v8 completion:0];
  }
}

void sub_1055AC(char a1, uint64_t a2)
{
  v4 = sub_104EB0();
  [v4 popCardsAnimated:a1 & 1 reason:a2];
}

void sub_105614(char a1)
{
  v2 = sub_104EB0();
  if (v2)
  {
    v3 = v2;
    v5[4] = ContextActionItemCoverProvider.init();
    v5[5] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_750DC;
    v5[3] = &unk_38E1F0;
    v4 = _Block_copy(v5);
    [v3 popAllCardsAnimated:a1 & 1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_105724@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_105C1C()
{
  sub_2C2A08();
  sub_B3728();
  return swift_getWitnessTable();
}

void sub_105CAC()
{
  v1 = sub_105D38(*v0, v0[1]);
  sub_6620C(&qword_3C1390);
  sub_106018();
  sub_2C3DD8();
}

id sub_105D38(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v20 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v20);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2BEF28();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_2BF028();
  sub_2C4DB8();
  v13 = v21;
  v14 = sub_2BF008();
  sub_2C4DB8();
  sub_77D40(v12, v9);
  LinkData.init(actionOrigin:)(v9, v6);
  sub_10607C(&qword_3C13A0);
  sub_10607C(&qword_3C13A8);
  v15 = v19;
  sub_2BEFE8();
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  *v3 = v14;
  swift_storeEnumTagMultiPayload();
  v16 = v14;
  sub_2C23D8();

  sub_C2C98(v3);
  (*(v4 + 8))(v6, v15);
  sub_E05A4(v12);

  return v16;
}

unint64_t sub_106018()
{
  result = qword_3C1398;
  if (!qword_3C1398)
  {
    sub_718D4(&qword_3C1390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1398);
  }

  return result;
}

uint64_t sub_10607C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2BEF28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1060C0()
{
  sub_718D4(&qword_3C1390);
  sub_106018();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_106124@<X0>(void (*a1)(uint64_t, uint64_t)@<X1>, uint64_t (*a2)()@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10)
{
  v291 = a7;
  v287 = a6;
  v257 = a4;
  v256 = a3;
  v294 = a2;
  v293 = a1;
  v243 = a8;
  v234 = sub_2BE5C8();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for Page();
  __chkstk_darwin(v241);
  v242 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_2C1A68();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v247 = &v224 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_2C1A28();
  v246 = *(v260 - 8);
  __chkstk_darwin(v260);
  v245 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_6620C(&qword_3C1590);
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v236 = &v224 - v15;
  v16 = sub_6620C(&qword_3C1598);
  __chkstk_darwin(v16 - 8);
  v271 = &v224 - v17;
  v280 = sub_2C4BB8();
  v273 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_2BEF78();
  v272 = *(v279 - 8);
  __chkstk_darwin(v279);
  v283 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v20 - 8);
  v275 = &v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v276 = &v224 - v23;
  __chkstk_darwin(v24);
  v268 = &v224 - v25;
  v270 = sub_2BFDD8();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v267 = &v224 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_6620C(&qword_3C15A0);
  v259 = *(v263 - 8);
  __chkstk_darwin(v263);
  v277 = &v224 - v27;
  v281 = type metadata accessor for SeriesRoomPageIntent();
  v28 = *(v281 - 8);
  __chkstk_darwin(v281);
  v265 = v29;
  v266 = (&v224 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v262 = sub_6620C(&qword_3C15A8);
  v258 = *(v262 - 8);
  __chkstk_darwin(v262);
  v274 = &v224 - v30;
  v284 = sub_2BE828();
  v252 = *(v284 - 1);
  __chkstk_darwin(v284);
  v235 = (&v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v261 = (&v224 - v33);
  v34 = sub_2C4BF8();
  __chkstk_darwin(v34 - 8);
  v244 = &v224 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v264 = &v224 - v37;
  v288 = sub_2BE8F8();
  v282 = *(v288 - 8);
  __chkstk_darwin(v288);
  v255 = &v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v285 = &v224 - v40;
  v41 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v41 - 8);
  v251 = &v224 - v42;
  *&v250 = sub_2BF4E8();
  v248 = *(v250 - 8);
  __chkstk_darwin(v250);
  v249 = (&v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_6620C(&qword_3C15B0);
  __chkstk_darwin(v44 - 8);
  v46 = &v224 - v45;
  v47 = sub_6620C(&qword_3C15B8);
  __chkstk_darwin(v47 - 8);
  v49 = &v224 - v48;
  v50 = sub_6620C(&qword_3BE238);
  __chkstk_darwin(v50 - 8);
  v253 = &v224 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v224 - v53;
  v289 = sub_2BF738();
  v290 = *(v289 - 8);
  __chkstk_darwin(v289);
  v254 = &v224 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = &v224 - v57;
  v59 = type metadata accessor for Shelf();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59 - 8);
  v286 = &v224 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v64 = &v224 - v63;
  v65 = *a5;
  sub_2BF788();
  if (!*(&v297 + 1))
  {
    sub_69198(&v296, &qword_3BDAD0);
    sub_112480();
    swift_allocError();
    return swift_willThrow();
  }

  v294 = v28;
  sub_68D1C(&v296, &v299);
  if (v65 == 3)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  v67 = v300;
  v68 = v301;
  sub_72084(&v299, v300);
  v69 = v292;
  SeriesInfo.getPromotionState()(v67, v68, &v296);
  if (v69)
  {
    return sub_68CD0(&v299);
  }

  LODWORD(v293) = v66;
  static Shelf.seriesHeader(from:seriesPromotionState:with:)(&v299, &v296, v291, v64);
  v292 = 0;
  v230 = a10;
  sub_9150C(&v296);
  v71 = sub_5C10C(0, 1, 1, _swiftEmptyArrayStorage);
  v72 = v71;
  v74 = v71[2];
  v73 = v71[3];
  if (v74 >= v73 >> 1)
  {
    v72 = sub_5C10C(v73 > 1, v74 + 1, 1, v71);
  }

  v72[2] = v74 + 1;
  v75 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v231 = v72;
  v228 = v75;
  v76 = *(v60 + 72);
  sub_112864(v64, v72 + v75 + v76 * v74, type metadata accessor for Shelf);
  LOBYTE(v296) = v293;
  sub_6932C(v287, v54, &qword_3BE238);
  v77 = v290;
  v78 = v290 + 48;
  v79 = *(v290 + 48);
  v80 = v289;
  v81 = v79(v54, 1, v289);
  v229 = v79;
  if (v81 == 1)
  {
    sub_72084(&v299, v300);
    v80 = v289;
    sub_2BF2E8();
    v82 = v79(v54, 1, v80);
    v83 = v292;
    if (v82 != 1)
    {
      sub_69198(v54, &qword_3BE238);
    }
  }

  else
  {
    (*(v77 + 32))(v58, v54, v80);
    v83 = v292;
  }

  LOBYTE(v302) = 0;
  sub_10F2E8(v230, v46, type metadata accessor for SeriesRoomPageIntent);
  (*(v294 + 7))(v46, 0, 1, v281);
  sub_108BC4(&v299, v46, v49);
  sub_69198(v46, &qword_3C15B0);
  v84 = type metadata accessor for SeriesRoomListHeaderComponentModel();
  (*(*(v84 - 8) + 56))(v49, 0, 1, v84);
  sub_1514BC(&v299, &v296, v58, &v302, v49, 0, v286);
  if (v83)
  {
    sub_69198(v49, &qword_3C15B8);
    (*(v290 + 8))(v58, v80);

    return sub_68CD0(&v299);
  }

  sub_69198(v49, &qword_3C15B8);
  v85 = *(v290 + 8);
  v226 = v290 + 8;
  v225 = v85;
  v85(v58, v80);
  v86 = v231;
  v88 = v231[2];
  v87 = v231[3];
  if (v88 >= v87 >> 1)
  {
    v86 = sub_5C10C(v87 > 1, v88 + 1, 1, v231);
  }

  v89 = v249;
  v249 = a9;
  v86[2] = v88 + 1;
  v231 = v86;
  sub_112864(v286, v86 + v228 + v88 * v76, type metadata accessor for Shelf);
  v302 = &_swiftEmptyDictionarySingleton;
  sub_72084(&v299, v300);
  v90 = sub_2B7E40();
  v91 = (v248 + 8);
  v292 = 0;
  v227 = v78;
  if (v90)
  {
    sub_2BF5B8();
    sub_2BF5A8();
  }

  else
  {
    sub_2BF428();
    sub_2BF418();
  }

  v92 = sub_2BF4D8();
  v94 = v93;
  (*v91)(v89, v250);
  v95 = type metadata accessor for JSAction();
  *(&v297 + 1) = v95;
  AssociatedConformanceWitness = sub_10F240(&qword_3BD470, type metadata accessor for JSAction);
  v96 = sub_720C8(&v296);
  sub_2C4BE8();
  sub_6620C(&qword_3BC8E0);
  inited = swift_initStackObject();
  v250 = xmmword_2E15C0;
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  sub_72084(&v299, v300);
  *(inited + 48) = sub_2BF3B8();
  *(inited + 56) = v98;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1701869940;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v92;
  *(inited + 104) = v94;
  v99 = sub_6759C(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC318);
  swift_arrayDestroy();
  v100 = sub_2BF088();
  v101 = *(*(v100 - 8) + 56);
  v102 = v251;
  v101(v251, 1, 1, v100);
  v103 = v95[7];
  v101(v96 + v103, 1, 1, v100);
  v104 = v96 + v95[5];
  strcpy(v104, "RecentlyViewed");
  v104[15] = -18;
  *(v96 + v95[6]) = v99;
  sub_71FB4(v102, v96 + v103);
  sub_1B6158(&v296, 0);
  v105 = v300;
  v106 = v301;
  sub_72084(&v299, v300);
  v107 = v285;
  sub_2B7838(v105, v106, v285);
  sub_2C4BE8();
  v228 = sub_6620C(&qword_3BC240);
  v108 = swift_allocObject();
  *(v108 + 16) = v250;
  v109 = v300;
  v110 = v301;
  sub_72084(&v299, v300);
  v111 = v261;
  sub_2B7838(v109, v110, v261);
  v252 = *(v252 + 104);
  (v252)(v111, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v284);
  v112 = sub_2BE858();
  *(v108 + 56) = v112;
  v113 = sub_10F240(&qword_3CA250, &type metadata accessor for AppAnalyticsAction);
  *(v108 + 64) = v113;
  sub_720C8((v108 + 32));
  sub_2BE838();
  v248 = *(sub_6620C(&qword_3C15C8) + 48);
  v114 = v288;
  v111[3] = v288;
  v281 = sub_10F240(&qword_3C15D0, &type metadata accessor for SeriesData);
  v111[4] = v281;
  v286 = sub_10F240(&qword_3C15D8, &type metadata accessor for SeriesData);
  v111[5] = v286;
  v115 = sub_720C8(v111);
  v116 = v282 + 16;
  v251 = *(v282 + 16);
  (v251)(v115, v107, v114);
  v117 = enum case for ScenePhase.active(_:);
  v118 = sub_2C2508();
  v119 = v113;
  v120 = v252;
  (*(*(v118 - 8) + 104))(v111 + v248, v117, v118);
  v120(v111, enum case for AppAnalyticsAction.Type.popData(_:), v284);
  *(v108 + 96) = v112;
  *(v108 + 104) = v113;
  sub_720C8((v108 + 72));
  sub_2BE838();
  v121 = sub_2C4D28();
  *(&v297 + 1) = v121;
  AssociatedConformanceWitness = &protocol witness table for CompoundAction;
  sub_720C8(&v296);
  sub_2C4D18();
  sub_1B6158(&v296, 3);
  if (v293)
  {
    v122 = v288;
    v123 = v281;
    v111[3] = v288;
    v111[4] = v123;
    v111[5] = v286;
    v124 = sub_720C8(v111);
    (v251)(v124, v285, v122);
    v120(v111, enum case for AppAnalyticsAction.Type.pushData(_:), v284);
    *(&v297 + 1) = v112;
    AssociatedConformanceWitness = v119;
    sub_720C8(&v296);
    sub_2BE838();
  }

  else
  {
    v224 = v121;
    v248 = v116;
    v264 = v119;
    v125 = v281;
    sub_2C4BE8();
    v126 = swift_allocObject();
    *(v126 + 16) = v250;
    sub_72084(&v299, v300);
    v127 = sub_2BF3B8();
    v129 = v128;
    sub_72084(&v299, v300);
    sub_2BF2C8();
    v131 = v130;
    sub_72084(&v299, v300);
    if (v131)
    {
      v132 = sub_2BF2F8();
    }

    else
    {
      v132 = sub_2BF2C8();
    }

    v134 = v235;
    *v235 = v127;
    v134[1] = v129;
    v134[2] = v132;
    *(v134 + 24) = v133 & 1;
    v135 = v284;
    v136 = v252;
    (v252)(v134, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v284);
    v137 = v264;
    *(v126 + 56) = v112;
    *(v126 + 64) = v137;
    sub_720C8((v126 + 32));
    sub_2BE838();
    v138 = v288;
    v139 = v261;
    v261[3] = v288;
    v139[4] = v125;
    v139[5] = v286;
    v140 = sub_720C8(v139);
    (v251)(v140, v285, v138);
    v136(v139, enum case for AppAnalyticsAction.Type.pushData(_:), v135);
    *(v126 + 96) = v112;
    *(v126 + 104) = v137;
    sub_720C8((v126 + 72));
    sub_2BE838();
    *(&v297 + 1) = v224;
    AssociatedConformanceWitness = &protocol witness table for CompoundAction;
    sub_720C8(&v296);
    sub_2C4D18();
  }

  sub_1B6158(&v296, 2);
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  v141 = v296;
  v142 = v249;
  v143 = v249[3];
  v144 = v249[4];
  sub_72084(v249, v143);
  sub_72084(&v299, v300);
  v145 = sub_2BF3B8();
  v147 = v146;
  v148 = *(v144 + 40);

  v291 = v141;
  v149 = v148(v145, v147, v141, v143, v144);

  v295 = v149;
  sub_691F8(&v299, &v296);
  v284 = type metadata accessor for SeriesRoomPageIntent;
  v150 = v266;
  sub_10F2E8(v230, v266, type metadata accessor for SeriesRoomPageIntent);
  v151 = *(v294 + 80);
  v252 = (v151 + 56) & ~v151;
  v152 = swift_allocObject();
  sub_68D1C(&v296, v152 + 16);
  v294 = type metadata accessor for SeriesRoomPageIntent;
  sub_112864(v150, v152 + ((v151 + 56) & ~v151), type metadata accessor for SeriesRoomPageIntent);
  sub_6620C(&qword_3C15E0);
  v264 = sub_6620C(&qword_3BD478);
  v261 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_72B74(&qword_3C15E8, &qword_3C15E0);
  sub_2C2418();

  v153 = v142[3];
  v154 = v142[4];
  sub_72084(v142, v153);
  sub_72084(&v299, v300);
  v155 = sub_2BF3B8();
  v157 = v156;
  v158 = *(v154 + 48);
  v159 = v291;

  v160 = v158(v155, v157, v159, v153, v154);

  v295 = v160;
  sub_691F8(&v299, &v296);
  v161 = v266;
  sub_10F2E8(v230, v266, v284);
  v162 = v252;
  v163 = swift_allocObject();
  sub_68D1C(&v296, v163 + 16);
  sub_112864(v161, v163 + v162, v294);
  sub_6620C(&qword_3C15F0);
  sub_72B74(&qword_3C15F8, &qword_3C15F0);
  sub_2C2418();

  sub_72084(&v299, v300);
  sub_2BF3C8();
  v164 = v267;
  sub_2BFDC8();

  v165 = v268;
  sub_1969C0(&v299, v268);
  v166 = *(v272 + 16);
  v265 = v272 + 16;
  v264 = v166;
  (v166)(v283, v256, v279);
  v167 = *(v273 + 16);
  v284 = (v273 + 16);
  v266 = v167;
  (v167)(v278, v257, v280);
  sub_6620C(&qword_3BC1A0);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_2E3F30;
  v169 = v300;
  v170 = v301;
  sub_72084(&v299, v300);
  v171 = v281;
  *(v168 + 56) = v288;
  *(v168 + 64) = v171;
  *(v168 + 72) = v286;
  v286 = v168;
  v172 = sub_720C8((v168 + 32));
  sub_2B7838(v169, v170, v172);
  v173 = v269;
  v174 = *(v269 + 16);
  v175 = v276;
  v176 = v270;
  v174(v276, v164, v270);
  (*(v173 + 56))(v175, 0, 1, v176);
  sub_6932C(v165, v275, &qword_3BEF80);
  v294 = v302;
  v177 = *(sub_6620C(&qword_3C1600) + 48);
  v178 = v271;
  v174(v271, v164, v176);
  sub_6932C(v165, v178 + v177, &qword_3BEF80);
  v179 = enum case for ToolbarPrincipalType.series(_:);
  v180 = sub_2C15F8();
  v181 = *(v180 - 8);
  (*(v181 + 104))(v178, v179, v180);
  (*(v181 + 56))(v178, 0, 1, v180);
  LOBYTE(v296) = 0;
  v182 = v300;
  v183 = v301;
  sub_72084(&v299, v300);
  v184 = v255;
  sub_2B7838(v182, v183, v255);
  LOBYTE(v295) = v293;
  v185 = v253;
  sub_6932C(v287, v253, &qword_3BE238);
  v186 = v289;
  v187 = v229;
  if (v229(v185, 1, v289) == 1)
  {
    sub_72084(&v299, v300);
    v188 = v254;
    sub_2BF2E8();
    v189 = v187(v185, 1, v186);
    v190 = v285;
    v191 = v292;
    if (v189 != 1)
    {
      sub_69198(v185, &qword_3BE238);
    }
  }

  else
  {
    v188 = v254;
    (*(v290 + 32))(v254, v185, v186);
    v190 = v285;
    v191 = v292;
  }

  v192 = sub_20CB14(&v299, &v296, v184, &v295, v188);
  v193 = v288;
  if (v191)
  {

    v225(v188, v186);
    v194 = *(v282 + 8);
    v194(v184, v193);
    sub_69198(v271, &qword_3C1598);
    sub_69198(v275, &qword_3BEF80);
    sub_69198(v276, &qword_3BEF80);
    (*(v273 + 8))(v278, v280);
    (*(v272 + 8))(v283, v279);
    sub_69198(v268, &qword_3BEF80);
    (*(v269 + 8))(v267, v270);
    (*(v259 + 8))(v277, v263);
    (*(v258 + 8))(v274, v262);
    v194(v190, v193);
    return sub_68CD0(&v299);
  }

  v290 = v192;
  v292 = 0;
  v225(v188, v186);
  v195 = *(v282 + 8);
  v282 += 8;
  v293 = v195;
  v195(v184, v193);
  sub_72B74(&qword_3C1608, &qword_3C15A8);
  sub_72B74(&qword_3C1610, &qword_3C15A0);
  v196 = v236;
  sub_2C2428();
  sub_72B74(&qword_3C1618, &qword_3C1590);
  v197 = v238;
  v289 = sub_2C2408();
  (*(v237 + 8))(v196, v197);
  sub_72084(&v299, v300);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = sub_2C60B8();
  v200 = *(v199 - 8);
  __chkstk_darwin(v199);
  v202 = &v224 - v201;
  sub_2BF388();
  v203 = *(AssociatedTypeWitness - 8);
  v204 = (*(v203 + 48))(v202, 1, AssociatedTypeWitness);
  if (v204 == 1)
  {
    (*(v200 + 8))(v202, v199);
    AssociatedConformanceWitness = 0;
    v296 = 0u;
    v297 = 0u;
  }

  else
  {
    *(&v297 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v205 = sub_720C8(&v296);
    (*(v203 + 32))(v205, v202, AssociatedTypeWitness);
  }

  sub_69198(&v296, &qword_3BDAC8);
  (*(v246 + 104))(v245, enum case for NavigationBarTitleStyle.automatic(_:), v260);
  sub_2C1A58();
  v206 = v241;
  v207 = v242;
  v208 = &v242[*(v241 + 96)];
  *v208 = 0;
  *(v208 + 1) = 0;
  v209 = v207 + v206[25];
  *(v209 + 4) = 0;
  *v209 = 0u;
  *(v209 + 1) = 0u;
  *&v296 = sub_2BEF68();
  *(&v296 + 1) = v210;
  v303._countAndFlagsBits = 45;
  v303._object = 0xE100000000000000;
  sub_2C5978(v303);
  v211._countAndFlagsBits = sub_2BEF58();
  if (v211._object)
  {
    object = v211._object;
  }

  else
  {
    v213 = v232;
    sub_2BE5B8();
    v214 = sub_2BE598();
    object = v215;
    (*(v233 + 8))(v213, v234);
    v211._countAndFlagsBits = v214;
  }

  LODWORD(v287) = v204 != 1;
  v211._object = object;
  sub_2C5978(v211);

  v216 = *(&v296 + 1);
  *v207 = v296;
  v207[1] = v216;
  (v264)(v207 + v206[17], v283, v279);
  *(v207 + v206[18]) = v286;
  *(v207 + v206[14]) = 0;
  *(v207 + v206[15]) = v231;
  (v266)(v207 + v206[19], v278, v280);
  v217 = (v207 + v206[16]);
  *v217 = 0;
  v217[1] = 0;
  sub_6932C(v276, v207 + v206[5], &qword_3BEF80);
  sub_6932C(v275, v207 + v206[6], &qword_3BEF80);
  v218 = v246;
  v219 = v245;
  (*(v246 + 16))(v207 + v206[7], v245, v260);
  v220 = v239;
  v221 = v247;
  v222 = v240;
  (*(v239 + 16))(v207 + v206[8], v247, v240);
  *(v207 + v206[9]) = 1;
  *(v207 + v206[21]) = v294;
  v223 = v271;
  sub_6932C(v271, v207 + v206[10], &qword_3C1598);
  *(v207 + v206[11]) = _swiftEmptyArrayStorage;
  *(v207 + v206[12]) = v290;
  *(v207 + v206[13]) = 0;
  *(v207 + v206[22]) = v289;
  *(v207 + v206[23]) = 0;
  *(v207 + v206[20]) = v287;
  sub_17E898();

  (*(v220 + 8))(v221, v222);
  (*(v218 + 8))(v219, v260);
  sub_69198(v223, &qword_3C1598);
  sub_69198(v275, &qword_3BEF80);
  sub_69198(v276, &qword_3BEF80);
  (*(v273 + 8))(v278, v280);
  (*(v272 + 8))(v283, v279);
  sub_69198(v268, &qword_3BEF80);
  (*(v269 + 8))(v267, v270);
  (*(v259 + 8))(v277, v263);
  (*(v258 + 8))(v274, v262);
  v293(v285, v288);
  sub_112864(v207, v243, type metadata accessor for Page);
  return sub_68CD0(&v299);
}

uint64_t sub_108BC4@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v227 = a3;
  v4 = sub_6620C(&qword_3C1628);
  __chkstk_darwin(v4 - 8);
  v224 = &v183 - v5;
  v6 = sub_2BF628();
  v231 = *(v6 - 8);
  v232 = v6;
  __chkstk_darwin(v6);
  v229 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_2BF408();
  v216 = *(v230 - 8);
  __chkstk_darwin(v230);
  v205 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v228 = &v183 - v10;
  __chkstk_darwin(v11);
  v192 = &v183 - v12;
  v13 = sub_6620C(&qword_3C1630);
  __chkstk_darwin(v13 - 8);
  v186 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v191 = &v183 - v16;
  v17 = sub_6620C(&qword_3C15B0);
  __chkstk_darwin(v17 - 8);
  v222 = &v183 - v18;
  v19 = type metadata accessor for SeriesRoomPageIntent();
  v221 = *(v19 - 1);
  __chkstk_darwin(v19);
  v207 = (&v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v187 = &v183 - v22;
  __chkstk_darwin(v23);
  v210 = &v183 - v24;
  v25 = sub_6620C(&qword_3BF478);
  __chkstk_darwin(v25 - 8);
  v204 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v215 = &v183 - v28;
  __chkstk_darwin(v29);
  v201 = &v183 - v30;
  __chkstk_darwin(v31);
  v236 = &v183 - v32;
  v238 = sub_2BF368();
  v235 = *(v238 - 8);
  __chkstk_darwin(v238);
  v206 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v188 = &v183 - v35;
  __chkstk_darwin(v36);
  v203 = &v183 - v37;
  __chkstk_darwin(v38);
  v202 = &v183 - v39;
  __chkstk_darwin(v40);
  v42 = &v183 - v41;
  v43 = type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  v220 = *(v43 - 8);
  __chkstk_darwin(v43);
  v226 = &v183 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v190 = &v183 - v46;
  __chkstk_darwin(v47);
  v189 = &v183 - v48;
  __chkstk_darwin(v49);
  v184 = &v183 - v50;
  __chkstk_darwin(v51);
  v185 = (&v183 - v52);
  __chkstk_darwin(v53);
  v219 = &v183 - v54;
  __chkstk_darwin(v55);
  v57 = &v183 - v56;
  sub_72084(a1, a1[3]);
  v237 = v43;
  v234 = v57;
  sub_2BF288();
  sub_72084(a1, a1[3]);
  v58 = sub_2BF3B8();
  v218 = v59;
  v60 = a1[3];
  v225 = a1;
  sub_72084(a1, v60);
  v61 = v42;
  sub_2BF278();
  v62 = v235;
  v63 = *(v235 + 56);
  v64 = v238;
  v214 = v235 + 56;
  v213 = v63;
  v63(v236, 1, 1, v238);
  v65 = &v57[*(v43 + 32)];
  v65[3] = v19;
  v200 = sub_10F240(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent);
  v65[4] = v200;
  v66 = sub_720C8(v65);
  v67 = v19[9];
  v68 = enum case for Metrics.NavigationType.forward(_:);
  v69 = sub_2C21F8();
  v70 = *(v69 - 8);
  v71 = *(v70 + 104);
  v196 = v68;
  v195 = v69;
  v194 = v71;
  v193 = v70 + 104;
  (v71)(v66 + v67, v68);
  v217 = v19[8];
  v72 = sub_2BF8D8();
  v73 = sub_2C1AE8();
  v74 = v218;
  *v66 = v58;
  v66[1] = v74;
  v75 = v62;
  v76 = *(v62 + 16);
  v77 = v66 + v19[5];
  v218 = v62 + 16;
  v208 = v76;
  v76(v77, v61, v64);
  v78 = (v66 + v19[6]);
  *v78 = 0;
  v78[1] = 0;
  v233 = v19;
  v79 = v236;
  sub_6932C(v236, v66 + v19[7], &qword_3BF478);
  v197 = v72;
  v80 = v219;
  v81 = sub_2C1AE8();
  sub_69198(v79, &qword_3BF478);
  v82 = *(v75 + 8);
  v209 = v61;
  v212 = v75 + 8;
  v211 = v82;
  v82(v61, v64);

  *(v66 + v217) = v81;
  v83 = v237;
  v84 = v234;
  *v234 = 0;
  *(v84 + 8) = 0;
  v85 = v83[5];
  v86 = sub_2BFDD8();
  v87 = *(v86 - 8);
  v199 = *(v87 + 56);
  v198 = v87 + 56;
  v199(v84 + v85, 1, 1, v86);
  *(v84 + v83[6]) = 0;
  sub_10F2E8(v84, v80, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v88 = sub_5C158(0, 1, 1, _swiftEmptyArrayStorage);
  v90 = v88[2];
  v89 = v88[3];
  if (v90 >= v89 >> 1)
  {
    v88 = sub_5C158(v89 > 1, v90 + 1, 1, v88);
  }

  v88[2] = v90 + 1;
  v91 = (*(v220 + 80) + 32) & ~*(v220 + 80);
  v220 = *(v220 + 72);
  sub_112864(v80, v88 + v91 + v220 * v90, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v92 = v222;
  sub_6932C(v223, v222, &qword_3C15B0);
  v93 = v233;
  v94 = (*(v221 + 48))(v92, 1, v233);
  v95 = v238;
  v96 = v224;
  v97 = v225;
  if (v94 == 1)
  {
    sub_69198(v92, &qword_3C15B0);
  }

  else
  {
    v98 = v92;
    v99 = v210;
    sub_112864(v98, v210, type metadata accessor for SeriesRoomPageIntent);
    v100 = (v99 + v93[6]);
    if (v100[1])
    {
      v223 = v100[1];
      v217 = v91;
      v222 = *v100;
      v101 = v95;
      v102 = v201;
      sub_6932C(v99 + v93[7], v201, &qword_3BF478);
      v103 = v235;
      if ((*(v235 + 48))(v102, 1, v101) != 1)
      {
        v232 = v88;
        v116 = v202;
        (*(v103 + 32))(v202, v102, v101);
        v117 = v203;
        v118 = v208;
        v208(v203, v116, v101);
        v119 = v188;
        v118(v188, v117, v101);
        v120 = (*(v103 + 88))(v119, v101);
        v121 = v101;
        v183 = v86;
        if (v120 == enum case for SeriesType.audiobook(_:))
        {
          v122 = v216;
          v123 = v191;
          v124 = v230;
          (*(v216 + 104))(v191, enum case for ContentKind.audiobook(_:), v230);
          (*(v122 + 56))(v123, 0, 1, v124);

          v125 = v186;
          v88 = v232;
          v91 = v217;
        }

        else
        {
          v122 = v216;
          v125 = v186;
          v88 = v232;
          v91 = v217;
          v124 = v230;
          v123 = v191;
          if (v120 == enum case for SeriesType.book(_:))
          {
            (*(v216 + 104))(v191, enum case for ContentKind.regularBook(_:), v230);
            (*(v122 + 56))(v123, 0, 1, v124);
          }

          else
          {
            (*(v216 + 56))(v191, 1, 1, v230);

            v211(v188, v121);
          }
        }

        sub_6932C(v123, v125, &qword_3C1630);
        if ((*(v122 + 48))(v125, 1, v124) == 1)
        {

          sub_69198(v123, &qword_3C1630);
          v155 = v211;
          v211(v203, v121);
          v155(v202, v121);
          sub_10F288(v210, type metadata accessor for SeriesRoomPageIntent);
          sub_69198(v125, &qword_3C1630);
          goto LABEL_32;
        }

        (*(v122 + 32))(v192, v125, v124);
        v156 = v208;
        v208(v209, v203, v121);
        sub_72084(v97, v97[3]);
        v157 = sub_2BF3B8();
        v231 = v158;
        v232 = v157;
        sub_72084(v97, v97[3]);
        v159 = v236;
        v160 = v237;
        v161 = v233;
        v162 = v238;
        sub_2BF278();
        v213(v159, 0, 1, v162);
        v163 = v187;
        v194(&v187[v161[9]], v196, v195);
        v235 = v161[8];
        v229 = sub_2C1AE8();
        v164 = v223;
        *v163 = v222;
        *(v163 + 1) = v164;
        v165 = v209;
        v156(&v163[v161[5]], v209, v162);
        v166 = &v163[v161[6]];
        v167 = v231;
        *v166 = v232;
        *(v166 + 1) = v167;
        sub_6932C(v159, &v163[v161[7]], &qword_3BF478);
        v168 = sub_2C1AE8();
        sub_69198(v159, &qword_3BF478);
        v211(v165, v162);

        *&v163[v235] = v168;
        v169 = v230;
        v170 = v185;
        (*(v216 + 16))(v185 + v160[7], v192, v230);
        v171 = (v170 + v160[8]);
        v172 = v200;
        v171[3] = v161;
        v171[4] = v172;
        v173 = sub_720C8(v171);
        sub_10F2E8(v163, v173, type metadata accessor for SeriesRoomPageIntent);
        *v170 = 0;
        v170[1] = 0;
        v199(v170 + v160[5], 1, 1, v183);
        *(v170 + v160[6]) = 0;
        v174 = v184;
        sub_10F2E8(v170, v184, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v176 = v88[2];
        v175 = v88[3];
        if (v176 >= v175 >> 1)
        {
          v88 = sub_5C158(v175 > 1, v176 + 1, 1, v88);
        }

        v91 = v217;
        v177 = v191;
        v178 = v220;
        sub_10F288(v185, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        (*(v216 + 8))(v192, v169);
        sub_69198(v177, &qword_3C1630);
        v179 = v238;
        v180 = v211;
        v211(v203, v238);
        v180(v202, v179);
        sub_10F288(v210, type metadata accessor for SeriesRoomPageIntent);
        v88[2] = v176 + 1;
        sub_112864(v174, v88 + v91 + v176 * v178, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v154 = v187;
        goto LABEL_31;
      }

      sub_10F288(v99, type metadata accessor for SeriesRoomPageIntent);
      sub_69198(v102, &qword_3BF478);
      v95 = v101;
      v91 = v217;
    }

    else
    {
      sub_10F288(v99, type metadata accessor for SeriesRoomPageIntent);
    }
  }

  sub_72084(v97, v97[3]);
  sub_2BF2B8();
  v105 = v231;
  v104 = v232;
  if ((*(v231 + 48))(v96, 1, v232) != 1)
  {
    v183 = v86;
    v217 = v91;
    (*(v105 + 32))(v229, v96, v104);
    v106 = v215;
    v107 = v213;
    v213(v215, 1, 1, v95);
    v108 = v228;
    sub_2BF608();
    v109 = v216;
    v110 = v205;
    v111 = v108;
    v112 = v230;
    v223 = *(v216 + 16);
    v224 = (v216 + 16);
    v223(v205, v111, v230);
    v113 = (*(v109 + 88))(v110, v112);
    if (v113 == enum case for ContentKind.audiobook(_:))
    {
      sub_69198(v106, &qword_3BF478);
      v114 = v235;
      (*(v235 + 104))(v106, enum case for SeriesType.audiobook(_:), v95);
      v107(v106, 0, 1, v95);
      v115 = v204;
    }

    else
    {
      v115 = v204;
      if (v113 == enum case for ContentKind.regularBook(_:))
      {
        v106 = v215;
        sub_69198(v215, &qword_3BF478);
        v114 = v235;
        (*(v235 + 104))(v106, enum case for SeriesType.book(_:), v95);
        v107 = v213;
        v213(v106, 0, 1, v95);
      }

      else
      {
        (*(v109 + 8))(v110, v230);
        v106 = v215;
        v107 = v213;
        v114 = v235;
      }
    }

    sub_6932C(v106, v115, &qword_3BF478);
    if ((*(v114 + 48))(v115, 1, v95) == 1)
    {
      (*(v109 + 8))(v228, v230);
      sub_69198(v106, &qword_3BF478);
      (*(v231 + 8))(v229, v232);
      sub_69198(v115, &qword_3BF478);
      v91 = v217;
      goto LABEL_32;
    }

    v126 = *(v114 + 32);
    v127 = v107;
    v128 = v206;
    v126(v206, v115, v95);
    v235 = sub_2BF618();
    v222 = v129;
    v130 = v208;
    v208(v209, v128, v95);
    sub_72084(v97, v97[3]);
    v221 = sub_2BF3B8();
    v132 = v131;
    sub_72084(v97, v97[3]);
    v133 = v236;
    v134 = v233;
    v135 = v238;
    sub_2BF278();
    v127(v133, 0, 1, v135);
    v136 = v207;
    v194(v207 + v134[9], v196, v195);
    v225 = v134[8];
    v137 = sub_2C1AE8();
    v138 = v222;
    *v136 = v235;
    v136[1] = v138;
    v139 = v209;
    v130(v136 + v134[5], v209, v135);
    v140 = (v136 + v134[6]);
    *v140 = v221;
    v140[1] = v132;
    sub_6932C(v133, v136 + v134[7], &qword_3BF478);
    v141 = sub_2C1AE8();
    sub_69198(v133, &qword_3BF478);
    v142 = v139;
    v143 = v135;
    v211(v142, v135);

    *(v225 + v136) = v141;
    v144 = v237;
    v145 = v230;
    v146 = v189;
    v223(&v189[v237[7]], v228, v230);
    v147 = (v146 + v144[8]);
    v148 = v200;
    v147[3] = v134;
    v147[4] = v148;
    v149 = sub_720C8(v147);
    sub_10F2E8(v136, v149, type metadata accessor for SeriesRoomPageIntent);
    *v146 = 0;
    v146[1] = 0;
    v199(v146 + v144[5], 1, 1, v183);
    *(v146 + v144[6]) = 0;
    v150 = v190;
    sub_10F2E8(v146, v190, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v152 = v88[2];
    v151 = v88[3];
    if (v152 >= v151 >> 1)
    {
      v88 = sub_5C158(v151 > 1, v152 + 1, 1, v88);
    }

    v91 = v217;
    v153 = v220;
    sub_10F288(v146, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v211(v206, v143);
    (*(v216 + 8))(v228, v145);
    sub_69198(v215, &qword_3BF478);
    (*(v231 + 8))(v229, v232);
    v88[2] = v152 + 1;
    sub_112864(v150, v88 + v91 + v152 * v153, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v154 = v207;
LABEL_31:
    sub_10F288(v154, type metadata accessor for SeriesRoomPageIntent);
    v84 = v234;
    goto LABEL_32;
  }

  sub_69198(v96, &qword_3C1628);
LABEL_32:
  v181 = v88[2];
  v239[0] = v88 + v91;
  v239[1] = v181;
  sub_10F9B4(v239);
  sub_10F2E8(v84, v226, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_10F240(&unk_3C03F0, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_2C1C38();
  return sub_10F288(v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
}

uint64_t sub_10A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v8 = sub_2C4BF8();
  __chkstk_darwin(v8 - 8);
  sub_691F8(a2, v13);
  v14[3] = type metadata accessor for SeriesRoomPageIntent();
  v14[4] = sub_10F240(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent);
  v9 = sub_720C8(v14);
  sub_10F2E8(a3, v9, type metadata accessor for SeriesRoomPageIntent);
  v13[40] = 0;
  sub_2C4BE8();
  v12[3] = &type metadata for SeriesListShelfUpdateIntent;
  v12[4] = sub_112718();
  v12[0] = swift_allocObject();
  sub_1127B4(v13, v12[0] + 16);
  v10 = sub_2BF088();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for Page();
  type metadata accessor for Shelf();
  sub_10F240(&qword_3BD4F0, type metadata accessor for Page);
  sub_10F240(&qword_3BD4F8, type metadata accessor for Shelf);
  sub_2C10E8();
  return sub_112810(v13);
}

uint64_t SeriesRoomPageIntentImplementation.performSync(_:objectGraph:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v37 = type metadata accessor for Page();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BFEC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_2C4BB8();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2BEF78();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BE238);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  sub_6620C(&qword_3BDAC0);
  sub_2C4DB8();
  v18 = v48;
  v17 = v49;
  sub_72084((v47 + 1), v48);
  v39 = a1;
  v19 = *a1;
  v20 = a1[1];
  v51 = 4;
  (*(v17 + 16))(v50, v19, v20, &v51, v18, v17);
  sub_68CD0(v47 + 1);
  if (v50[3] || ([objc_opt_self() isOffline] & 1) == 0)
  {
    sub_6620C(&qword_3BE240);
    v38 = a2;
    sub_2C4DB8();
    v23 = v48;
    v24 = v49;
    sub_72084((v47 + 1), v48);
    (*(v24 + 24))(v47, v19, v20, v23, v24);
    v25 = v48;
    v26 = v49;
    sub_72084((v47 + 1), v48);
    (*(v26 + 32))(v19, v20, v25, v26);

    sub_2BEF48();
    v27 = type metadata accessor for SeriesRoomPageIntent();
    v28 = sub_2C54D8();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    v29 = v13;
    v30 = v39;
    v31 = v40;
    sub_2C2108();
    sub_69198(v8, &qword_3BFEC0);
    v33 = v45;
    v32 = v46;
    sub_106124(*(v30 + *(v27 + 32)), 0, v29, v31, v47, v16, v38, v45, (v47 + 1), v30);
    if (v32)
    {
      (*(v43 + 8))(v31, v44);
      (*(v41 + 8))(v29, v42);
      sub_69198(v16, &qword_3BE238);
      sub_69198(v50, &qword_3BDAC8);
      v51 = v32;
      swift_errorRetain();
      sub_6620C(&unk_3BF5A0);
      if (swift_dynamicCast())
      {

        (*(v35 + 56))(v36, 1, 1, v37);
      }
    }

    else
    {
      (*(v43 + 8))(v31, v44);
      (*(v41 + 8))(v29, v42);
      sub_69198(v16, &qword_3BE238);
      sub_69198(v50, &qword_3BDAC8);
      v34 = v36;
      sub_112864(v33, v36, type metadata accessor for Page);
      (*(v35 + 56))(v34, 0, 1, v37);
    }

    return sub_68CD0(v47 + 1);
  }

  else
  {
    sub_10AFE0();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
    return sub_69198(v50, &qword_3BDAC8);
  }
}

unint64_t sub_10AFE0()
{
  result = qword_3C13B0;
  if (!qword_3C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C13B0);
  }

  return result;
}

unint64_t sub_10B050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = sub_6620C(&qword_3BE238);
  __chkstk_darwin(v4 - 8);
  v45 = &v39 - v5;
  v6 = sub_2BF4E8();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BF368();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&unk_3C43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9090;
  *(inited + 32) = 0x4449736569726573;
  v44 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v13 = *v2;
  v14 = v2[1];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7954736569726573;
  *(inited + 88) = 0xEA00000000006570;
  v39 = type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent(0);
  (*(v9 + 104))(v11, enum case for SeriesType.audiobook(_:), v8);
  sub_10F240(&qword_3C1560, &type metadata accessor for SeriesType);

  v43 = v3;
  sub_2C5A88();
  sub_2C5A88();
  if (v50 == v48 && v51 == v49)
  {
    (*(v9 + 8))(v11, v8);

LABEL_5:
    sub_2BF5B8();
    v16 = v40;
    sub_2BF5A8();
    goto LABEL_7;
  }

  v15 = sub_2C65B8();
  (*(v9 + 8))(v11, v8);

  if (v15)
  {
    goto LABEL_5;
  }

  sub_2BF428();
  v16 = v40;
  sub_2BF418();
LABEL_7:
  v17 = v45;
  v18 = sub_2BF4D8();
  v20 = v19;
  (*(v41 + 8))(v16, v42);
  *(inited + 96) = v18;
  *(inited + 104) = v20;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7344496D616461;
  *(inited + 136) = 0xE700000000000000;
  v21 = v39;
  v22 = v43;
  v23 = *(v43 + *(v39 + 24));
  v24 = sub_6620C(&qword_3BCA70);
  v25 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v25 = v23;
  }

  *(inited + 144) = v25;
  *(inited + 168) = v24;
  *(inited + 176) = 0x6564724F74726F73;
  *(inited + 184) = 0xE900000000000072;
  sub_6932C(v22 + *(v21 + 28), v17, &qword_3BE238);
  v26 = sub_2BF738();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v17, 1, v26);

  if (v28 == 1)
  {
    sub_69198(v17, &qword_3BE238);
    v29 = (inited + 192);
    *(inited + 216) = &type metadata for String;
LABEL_13:
    *v29 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_14;
  }

  v30 = sub_2BF728();
  v32 = v31;
  (*(v27 + 8))(v17, v26);
  v29 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v32)
  {
    goto LABEL_13;
  }

  *v29 = v30;
LABEL_14:
  *(inited + 200) = v32;
  v33 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220);
  swift_arrayDestroy();
  v50 = v33;
  sub_6620C(&qword_3BD860);
  v34 = sub_2C6658();
  v35 = [objc_opt_self() valueWithObject:v34 inContext:v46];
  swift_unknownObjectRelease();
  v36 = sub_6620C(&qword_3C13F8);
  v37 = v47;
  v47[3] = v36;
  result = sub_111BE4();
  v37[4] = result;
  *v37 = v35;
  return result;
}

void sub_10B658(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Page();
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1568);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BF8D8();
  v13 = sub_2C1AE8();
  v20 = a1;
  v21 = v13;
  sub_72084(a1, a1[3]);
  sub_11242C();
  sub_2C67A8();
  if (v2)
  {
    v15 = v21;
    sub_68CD0(v20);
  }

  else
  {
    v14 = v18;
    LOBYTE(v23) = 0;
    sub_10F240(&qword_3C1578, type metadata accessor for Page);
    sub_2C64A8();
    sub_112864(v6, v12, type metadata accessor for Page);
    sub_6620C(&qword_3BF498);
    v22 = 1;
    sub_72B74(&qword_3BF4A0, &qword_3BF498);
    sub_2C64A8();

    *&v12[*(v10 + 20)] = v23;
    sub_6620C(&qword_3C1580);
    v22 = 2;
    sub_72B74(&qword_3C1588, &qword_3C1580);
    v16 = v19;
    sub_2C64A8();
    (*(v14 + 8))(v9, v16);
    *&v12[*(v10 + 24)] = v23;
    sub_10F2E8(v12, v17, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_68CD0(v20);
    sub_10F288(v12, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
  }
}

uint64_t sub_10BA94()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x737465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_10BAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1129E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10BB10(uint64_t a1)
{
  v2 = sub_11242C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10BB4C(uint64_t a1)
{
  v2 = sub_11242C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesRoomPageIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[74] = a3;
  v3[73] = a2;
  v3[72] = a1;
  v4 = type metadata accessor for Page();
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v5 = sub_2C4BB8();
  v3[80] = v5;
  v3[81] = *(v5 - 8);
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v6 = sub_2BEF78();
  v3[84] = v6;
  v3[85] = *(v6 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  sub_6620C(&qword_3BFEC0);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage(0);
  v3[91] = swift_task_alloc();
  v3[92] = sub_6620C(&qword_3C13B8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v7 = sub_2BF368();
  v3[95] = v7;
  v3[96] = *(v7 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent(0);
  v3[99] = swift_task_alloc();
  v8 = sub_2BF738();
  v3[100] = v8;
  v3[101] = *(v8 - 8);
  v3[102] = swift_task_alloc();
  sub_6620C(&qword_3BE238);
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v9 = sub_2C4C48();
  v3[106] = v9;
  v3[107] = *(v9 - 8);
  v3[108] = swift_task_alloc();
  v10 = sub_6620C(&qword_3C13C0);
  v3[109] = v10;
  v3[110] = *(v10 - 8);
  v3[111] = swift_task_alloc();
  v11 = sub_2C4E88();
  v3[112] = v11;
  v3[113] = *(v11 - 8);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  sub_6620C(&qword_3C13C8);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  sub_6620C(&qword_3C13D0);
  v3[119] = swift_task_alloc();
  v12 = sub_2C54A8();
  v3[120] = v12;
  v3[121] = *(v12 - 8);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v13 = sub_6620C(&qword_3BE240);
  v14 = swift_task_alloc();
  v3[124] = v14;
  *v14 = v3;
  v14[1] = sub_10C1BC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 8, v13, v13);
}

uint64_t sub_10C1BC()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v2 = sub_10E490;
  }

  else
  {
    v2 = sub_10C2D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10C2D0()
{
  v1 = v0[73];
  sub_6620C(&qword_3BDAC0);
  sub_2C4E28();
  sub_2C5668();
  v2 = v0[21];
  v3 = v0[22];
  sub_72084(v0 + 18, v2);
  v4 = *v1;
  v0[126] = *v1;
  v5 = v1[1];
  v0[127] = v5;
  v0[70] = 4;
  v8 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  v0[128] = v6;
  *v6 = v0;
  v6[1] = sub_10C468;

  return v8(v0 + 13, v4, v5, v0 + 70, v2, v3);
}

uint64_t sub_10C468()
{

  return _swift_task_switch(sub_10C564, 0, 0);
}

uint64_t sub_10C564()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  sub_68CD0(v0 + 144);
  sub_2C4E18();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 984);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  if (v5 == 1)
  {
    (*(v7 + 104))(v6, enum case for PageIntentInstrumentation.notInstrumented(_:), *(v0 + 960));
    if (v4(v9, 1, v8) != 1)
    {
      sub_69198(*(v0 + 952), &qword_3C13D0);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 952), *(v0 + 960));
  }

  v10 = *(v0 + 976);
  v11 = *(v0 + 968);
  v12 = *(v0 + 960);
  (*(v11 + 16))(v10, *(v0 + 984), v12);
  v13 = (*(v11 + 88))(v10, v12);
  if (v13 == enum case for PageIntentInstrumentation.primaryData(_:))
  {
    v14 = *(v0 + 976);
    v15 = *(v0 + 944);
    v16 = *(v0 + 904);
    v17 = *(v0 + 896);
    (*(*(v0 + 968) + 96))(v14, *(v0 + 960));
    (*(v16 + 32))(v15, v14, v17);
    (*(v16 + 56))(v15, 0, 1, v17);
  }

  else if (v13 == enum case for PageIntentInstrumentation.secondaryData(_:))
  {
    v18 = *(v0 + 976);
    v19 = *(v0 + 968);
    v20 = *(v0 + 960);
    (*(*(v0 + 904) + 56))(*(v0 + 944), 1, 1, *(v0 + 896));
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v21 = enum case for PageIntentInstrumentation.notInstrumented(_:);
    v22 = v13;
    (*(*(v0 + 904) + 56))(*(v0 + 944), 1, 1, *(v0 + 896));
    if (v22 != v21)
    {
      (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    }
  }

  v23 = *(v0 + 936);
  v24 = *(v0 + 904);
  v25 = *(v0 + 896);
  sub_6932C(*(v0 + 944), v23, &qword_3C13C8);
  v26 = *(v24 + 48);
  *(v0 + 1032) = v26;
  *(v0 + 1040) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v26(v23, 1, v25) == 1)
  {
    sub_69198(*(v0 + 936), &qword_3C13C8);
  }

  else
  {
    (*(*(v0 + 904) + 32))(*(v0 + 920), *(v0 + 936), *(v0 + 896));
    if (qword_3BB948 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 920);
    v28 = *(v0 + 904);
    v29 = *(v0 + 888);
    v30 = *(v0 + 880);
    v31 = *(v0 + 872);
    v32 = *(v0 + 864);
    v33 = *(v0 + 856);
    v44 = *(v0 + 848);
    v45 = *(v0 + 896);
    v34 = *(v0 + 584);
    v35 = sub_57AD8(v31, qword_3E8978);
    (*(v30 + 16))(v29, v35, v31);
    if (*(v34 + *(type metadata accessor for SeriesRoomPageIntent() + 32)) | *(v0 + 128))
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(v0 + 58) = v36;
    sub_2C4E78();
    sub_2C4C38();
    sub_111B90();
    sub_2C4EC8();

    (*(v33 + 8))(v32, v44);
    (*(v30 + 8))(v29, v31);
    (*(v28 + 8))(v27, v45);
  }

  v37 = *(v0 + 88);
  v38 = *(v0 + 96);
  sub_72084((v0 + 64), v37);
  v46 = (*(v38 + 64) + **(v38 + 64));
  v39 = swift_task_alloc();
  *(v0 + 1048) = v39;
  *v39 = v0;
  v39[1] = sub_10CAE4;
  v40 = *(v0 + 1016);
  v41 = *(v0 + 1008);
  v42 = *(v0 + 840);

  return v46(v42, v41, v40, v37, v38);
}

uint64_t sub_10CAE4()
{

  return _swift_task_switch(sub_10CBE0, 0, 0);
}

uint64_t sub_10CBE0()
{
  v1 = *(v0 + 11);
  v2 = *(v0 + 12);
  sub_72084(v0 + 8, v1);
  v7 = (*(v2 + 56) + **(v2 + 56));
  v3 = swift_task_alloc();
  *(v0 + 132) = v3;
  *v3 = v0;
  v3[1] = sub_10CD14;
  v4 = *(v0 + 127);
  v5 = *(v0 + 126);

  return v7(v0 + 57, v5, v4, v1, v2);
}

uint64_t sub_10CD14()
{

  return _swift_task_switch(sub_10CE10, 0, 0);
}

uint64_t sub_10CE10()
{
  *(v0 + 59) = *(v0 + 57);
  sub_6932C(v0 + 104, v0 + 224, &qword_3BDAC8);
  if (!*(v0 + 248))
  {
    sub_69198(v0 + 224, &qword_3BDAC8);
LABEL_7:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  sub_68D1C((v0 + 224), v0 + 184);
  sub_2BF7A8();
  if (!*(v0 + 448))
  {
    sub_69198(v0 + 424, &qword_3BDAD0);
    sub_68CD0(v0 + 184);
    goto LABEL_7;
  }

  v1 = *(v0 + 1000);
  sub_68D1C((v0 + 424), v0 + 384);
  sub_72084((v0 + 384), *(v0 + 408));
  sub_2BF328();
  if (v1)
  {
    v2 = *(v0 + 984);
    v3 = *(v0 + 968);
    v4 = *(v0 + 960);
    v5 = *(v0 + 944);
    sub_69198(*(v0 + 840), &qword_3BE238);
    sub_69198(v5, &qword_3C13C8);
    (*(v3 + 8))(v2, v4);
    sub_68CD0(v0 + 384);
    sub_68CD0(v0 + 184);
    sub_69198(v0 + 104, &qword_3BDAC8);
    sub_68CD0(v0 + 64);

    v58 = *(v0 + 8);

    return v58();
  }

  v31 = *(v0 + 840);
  v32 = *(v0 + 832);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8);
  v35 = sub_2C6358();

  sub_1F9C0C(v35);

  sub_6932C(v31, v32, &qword_3BE238);
  v36 = *(v33 + 48);
  v37 = v36(v32, 1, v34);
  v38 = *(v0 + 816);
  v39 = *(v0 + 808);
  v40 = *(v0 + 800);
  if (v37 == 1)
  {
    v69 = *(v0 + 832);
    sub_72084((v0 + 184), *(v0 + 208));
    v41 = sub_2BF6C8();
    v42 = &enum case for SeriesListSortOrder.ascending(_:);
    if ((v41 & 1) == 0)
    {
      v42 = &enum case for SeriesListSortOrder.popular(_:);
    }

    (*(v39 + 104))(v38, *v42, v40);
    if (v36(v69, 1, v40) != 1)
    {
      sub_69198(*(v0 + 832), &qword_3BE238);
    }
  }

  else
  {
    (*(v39 + 32))(*(v0 + 816), *(v0 + 832), *(v0 + 800));
  }

  v43 = *(v0 + 816);
  v44 = *(v0 + 808);
  v45 = *(v0 + 800);
  v46 = sub_2BF708();

  (*(v44 + 8))(v43, v45);
  v47 = *(v46 + 16);
  if (v47 >= 0xA)
  {
    v48 = 10;
  }

  else
  {
    v48 = *(v46 + 16);
  }

  if (v47)
  {
    v49 = v46 + 32;
    sub_649D4(0, v48, 0);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_691F8(v49, v0 + 464);
      sub_72084((v0 + 464), *(v0 + 488));
      v50 = sub_2BF3B8();
      v52 = v51;
      sub_68CD0(v0 + 464);
      v54 = _swiftEmptyArrayStorage[2];
      v53 = _swiftEmptyArrayStorage[3];
      if (v54 >= v53 >> 1)
      {
        sub_649D4((v53 > 1), v54 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v54 + 1;
      v55 = &_swiftEmptyArrayStorage[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v49 += 40;
      --v48;
    }

    while (v48);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v56 = *(v0 + 408);
  v57 = *(v0 + 416);
  sub_72084((v0 + 384), v56);
  SeriesInfo.getPromotionState()(v56, v57, v0 + 16);
  if (*(v0 + 56) == 4)
  {
    sub_68D1C((v0 + 16), v0 + 504);
    sub_72084((v0 + 504), *(v0 + 528));
    *(v0 + 544) = sub_2BF3B8();
    *(v0 + 552) = v59;
    v60 = swift_task_alloc();
    *(v60 + 16) = v0 + 544;
    v61 = sub_10F908(sub_111B38, v60, _swiftEmptyArrayStorage);

    if ((v61 & 1) == 0)
    {
      sub_72084((v0 + 504), *(v0 + 528));
      v62 = sub_2BF3B8();
      v64 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_5BB78(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v66 = *(v6 + 2);
      v65 = *(v6 + 3);
      if (v66 >= v65 >> 1)
      {
        v6 = sub_5BB78((v65 > 1), v66 + 1, 1, v6);
      }

      *(v6 + 2) = v66 + 1;
      v67 = &v6[16 * v66];
      *(v67 + 4) = v62;
      *(v67 + 5) = v64;
    }

    sub_68CD0(v0 + 504);
  }

  else
  {
    sub_9150C(v0 + 16);
  }

  sub_68CD0(v0 + 384);
  sub_68CD0(v0 + 184);
LABEL_8:
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 584);
  v11 = type metadata accessor for SeriesRoomPageIntent();
  *(v0 + 1064) = v11;
  (*(v8 + 16))(v7, v10 + *(v11 + 20), v9);
  if (!*(v6 + 2))
  {

    v6 = 0;
    if (*(v0 + 128))
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_6932C(*(v0 + 840), *(v0 + 824), &qword_3BE238);
    goto LABEL_13;
  }

  if (!*(v0 + 128))
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *(v0 + 824);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  (*(v13 + 104))(v12, enum case for SeriesListSortOrder.releaseDate(_:), v14);
  (*(v13 + 56))(v12, 0, 1, v14);
LABEL_13:
  v15 = *(v0 + 1016);
  v16 = *(v0 + 824);
  v17 = *(v0 + 792);
  v18 = *(v0 + 784);
  v19 = *(v0 + 776);
  v20 = *(v0 + 768);
  v21 = *(v0 + 760);
  *v17 = *(v0 + 1008);
  *(v17 + 1) = v15;
  (*(v20 + 32))(&v17[v18[5]], v19, v21);
  *&v17[v18[6]] = v6;
  sub_69130(v16, &v17[v18[7]], &qword_3BE238);
  v22 = [objc_opt_self() sharedInstance];
  *(v0 + 1072) = v22;
  *(v0 + 568) = v22;
  v23 = swift_task_alloc();
  *(v0 + 1080) = v23;
  v24 = sub_10F1F4();
  v25 = sub_10F240(&qword_3C13D8, sub_10F1F4);
  v26 = sub_10F240(&qword_3C13E0, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
  *v23 = v0;
  v23[1] = sub_10D86C;
  v27 = *(v0 + 792);
  v28 = *(v0 + 784);
  v29 = *(v0 + 744);
  v30 = *(v0 + 592);

  return CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(v29, v27, v30, v24, v28, v25, v26);
}

uint64_t sub_10D86C()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_10E688;
  }

  else
  {
    v3 = sub_10D990;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10D990()
{
  v70 = v0;
  v68 = (v0 + 64);
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_69130(*(v0 + 744), v1, &qword_3C13B8);
  sub_10F2E8(v1, v3, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
  v4 = *(v1 + *(v2 + 36));
  v5 = *(v4 + 16);
  v6 = sub_2C54D8();
  v7 = *(v6 - 8);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(*(v0 + 712), v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 1032);
  v10 = *(v0 + 944);
  v11 = *(v0 + 928);
  v12 = *(v0 + 896);
  (*(v7 + 56))(*(v0 + 712), v8, 1, v6);
  sub_6932C(v10, v11, &qword_3C13C8);
  if (v9(v11, 1, v12) == 1)
  {
    sub_69198(*(v0 + 928), &qword_3C13C8);
  }

  else
  {
    (*(*(v0 + 904) + 32))(*(v0 + 912), *(v0 + 928), *(v0 + 896));
    sub_2C4C38();
    if (qword_3BB938 != -1)
    {
      swift_once();
    }

    v13 = sub_6620C(&qword_3C13E8);
    sub_57AD8(v13, qword_3E8948);
    sub_2C4E78();
    sub_2C4EA8();

    if (qword_3BB940 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 912);
    v15 = *(v0 + 904);
    v16 = *(v0 + 896);
    v17 = *(v0 + 864);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    sub_57AD8(v13, qword_3E8960);
    sub_2C4E78();
    sub_2C4EA8();

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v65 = *(v0 + 1088);
  v53 = *(v0 + 59);
  v62 = *(v0 + 840);
  v20 = *(v0 + 728);
  v21 = *(v0 + 720);
  v22 = *(v0 + 696);
  v23 = *(v0 + 664);
  v56 = *(v0 + 632);
  v59 = *(v0 + 592);
  v24 = *(v0 + 584);

  sub_2BEF48();
  sub_2C2108();
  v25 = *(v20 + *(v21 + 20));
  v26 = *(v20 + *(v21 + 24));
  v69[0] = v53;
  sub_106124(v25, v26, v22, v23, v69, v62, v59, v56, v68, v24);
  if (v65)
  {
    v27 = *(v0 + 968);
    v54 = *(v0 + 960);
    v57 = *(v0 + 984);
    v28 = *(v0 + 944);
    v29 = *(v0 + 840);
    v30 = *(v0 + 792);
    v60 = *(v0 + 728);
    v63 = *(v0 + 752);
    v31 = *(v0 + 712);
    v32 = *(v0 + 696);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    (*(v33 + 8))(v32, v34);
    sub_10EEA0(v28);
    sub_69198(v31, &qword_3BFEC0);
    sub_10F288(v30, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
    sub_69198(v29, &qword_3BE238);
    sub_69198(v28, &qword_3C13C8);
    (*(v27 + 8))(v57, v54);
    sub_10F288(v60, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_69198(v63, &qword_3C13B8);
    sub_69198(v0 + 104, &qword_3BDAC8);
    sub_68CD0(v68);

    v35 = *(v0 + 8);
  }

  else
  {
    v66 = *(v0 + 696);
    v36 = *(v0 + 680);
    v37 = *(v0 + 672);
    v38 = *(v0 + 664);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    if (*(*(*(v0 + 728) + *(*(v0 + 600) + 60)) + 16))
    {
      sub_10F2E8(*(v0 + 632), *(v0 + 624), type metadata accessor for Page);

      sub_10F67C(v43, sub_5C10C, type metadata accessor for Shelf);
      sub_17E898();
      sub_10F288(v41, type metadata accessor for Page);
      (*(v39 + 8))(v38, v40);
      (*(v36 + 8))(v66, v37);
    }

    else
    {
      (*(v39 + 8))(*(v0 + 664), *(v0 + 640));
      (*(v36 + 8))(v66, v37);
      sub_112864(v41, v42, type metadata accessor for Page);
    }

    v61 = *(v0 + 984);
    v44 = *(v0 + 968);
    v45 = *(v0 + 944);
    v55 = *(v0 + 840);
    v58 = *(v0 + 960);
    v46 = *(v0 + 792);
    v64 = *(v0 + 728);
    v67 = *(v0 + 752);
    v47 = *(v0 + 712);
    v48 = *(v0 + 632);
    v49 = *(v0 + 608);
    v50 = *(v0 + 600);
    v51 = *(v0 + 576);
    sub_112864(*(v0 + 624), v48, type metadata accessor for Page);
    sub_112864(v48, v51, type metadata accessor for Page);
    (*(v49 + 56))(v51, 0, 1, v50);
    sub_10EEA0(v45);
    sub_69198(v47, &qword_3BFEC0);
    sub_10F288(v46, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
    sub_69198(v55, &qword_3BE238);
    sub_69198(v45, &qword_3C13C8);
    (*(v44 + 8))(v61, v58);
    sub_10F288(v64, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_69198(v67, &qword_3C13B8);
    sub_69198(v0 + 104, &qword_3BDAC8);
    sub_68CD0(v68);

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_10E490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E688()
{
  v37 = v0;
  if (*(*(v0 + 584) + *(*(v0 + 1064) + 24) + 8))
  {
    sub_6932C(v0 + 104, v0 + 304, &qword_3BDAC8);
    if (*(v0 + 328))
    {
      v1 = *(v0 + 1064);
      v33 = *(v0 + 59);
      v34 = *(v0 + 840);
      v2 = *(v0 + 704);
      v3 = *(v0 + 688);
      v4 = *(v0 + 656);
      v29 = *(v0 + 616);
      v31 = *(v0 + 592);
      v5 = *(v0 + 584);
      sub_68D1C((v0 + 304), v0 + 264);

      sub_2BEF48();
      v6 = sub_2C54D8();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      sub_2C2108();
      sub_69198(v2, &qword_3BFEC0);
      sub_691F8(v0 + 264, v0 + 344);
      v7 = *(v5 + *(v1 + 32));
      v36[0] = v33;
      sub_106124(v7, 0, v3, v4, v36, v34, v31, v29, (v0 + 64), v5);
      v8 = *(v0 + 968);
      v30 = *(v0 + 960);
      v32 = *(v0 + 984);
      v27 = *(v0 + 840);
      v28 = *(v0 + 944);
      v9 = *(v0 + 792);
      v10 = *(v0 + 688);
      v11 = *(v0 + 680);
      v12 = *(v0 + 672);
      v13 = *(v0 + 656);
      v14 = *(v0 + 648);
      v15 = *(v0 + 640);
      v26 = *(v0 + 616);
      v23 = *(v0 + 608);
      v35 = *(v0 + 600);
      v25 = *(v0 + 576);

      sub_69198(v0 + 344, &qword_3BDAC8);
      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
      sub_68CD0(v0 + 264);
      sub_10F288(v9, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
      sub_69198(v27, &qword_3BE238);
      sub_69198(v28, &qword_3C13C8);
      (*(v8 + 8))(v32, v30);
      sub_112864(v26, v25, type metadata accessor for Page);
      (*(v23 + 56))(v25, 0, 1, v35);
      sub_69198(v0 + 104, &qword_3BDAC8);
      sub_68CD0(v0 + 64);

      v24 = *(v0 + 8);
      goto LABEL_6;
    }

    sub_69198(v0 + 304, &qword_3BDAC8);
  }

  v16 = *(v0 + 984);
  v17 = *(v0 + 968);
  v18 = *(v0 + 960);
  v19 = *(v0 + 944);
  v20 = *(v0 + 840);
  v21 = *(v0 + 792);
  swift_willThrow();
  sub_10F288(v21, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
  sub_69198(v20, &qword_3BE238);
  sub_69198(v19, &qword_3C13C8);
  (*(v17 + 8))(v16, v18);
  sub_69198(v0 + 104, &qword_3BDAC8);
  sub_68CD0(v0 + 64);

  v24 = *(v0 + 8);
LABEL_6:

  return v24();
}

uint64_t sub_10EEA0(uint64_t a1)
{
  v2 = sub_2C4C48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C13C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2C4E88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v8, &qword_3C13C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_69198(v8, &qword_3C13C8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2C4C38();
  if (qword_3BB938 != -1)
  {
    swift_once();
  }

  v14 = sub_6620C(&qword_3C13E8);
  sub_57AD8(v14, qword_3E8948);
  sub_2C4E78();
  sub_2C4E98();

  if (qword_3BB940 != -1)
  {
    swift_once();
  }

  sub_57AD8(v14, qword_3E8960);
  sub_2C4E78();
  sub_2C4E98();

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10F1F4()
{
  result = qword_3BD330;
  if (!qword_3BD330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BD330);
  }

  return result;
}

uint64_t sub_10F240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10F288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10F2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return SeriesRoomPageIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

unint64_t BATracker.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithObject:v2 inContext:a1];
  a2[3] = sub_6620C(&qword_3C13F8);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v4;
  return result;
}

unint64_t sub_10F488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithObject:*v2 inContext:a1];
  a2[3] = sub_6620C(&qword_3C13F8);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_10F510(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_5BA74(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10F67C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10F7E8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_6620C(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10F908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_10F9B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_2C6548(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SeriesRoomListHeaderSegmentedItem();
        v6 = sub_2C5B68();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10FFC0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10FAE0(0, v2, 1, a1);
  }
}

void sub_10FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2BF408();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v37 - v12;
  v57 = type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  __chkstk_darwin(v57);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v37 - v15;
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  v40 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v55 = (v9 + 88);
    v56 = (v9 + 16);
    v54 = enum case for ContentKind.pdf(_:);
    v51 = enum case for ContentKind.audiobook(_:);
    v47 = enum case for ContentKind.regularBook(_:);
    v46 = enum case for ContentKind.manga(_:);
    v45 = enum case for ContentKind.unknownBook(_:);
    v38 = v21;
    v39 = (v9 + 8);
    v22 = v20 + v21 * (a3 - 1);
    v48 = -v21;
    v49 = v20;
    v23 = a1 - a3;
    v24 = v20 + v21 * a3;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    while (1)
    {
      sub_10F2E8(v24, v19, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F2E8(v22, v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v25 = *v56;
      v26 = v19;
      v27 = &v19[*(v57 + 28)];
      v28 = v52;
      (*v56)(v52, v27, v8);
      v29 = *v55;
      v30 = (*v55)(v28, v8);
      if (v30 == v54)
      {
        goto LABEL_7;
      }

      if (v30 == v51)
      {
        v31 = 1;
        goto LABEL_14;
      }

      if (v30 == v47)
      {
        goto LABEL_11;
      }

      if (v30 != v46)
      {
        break;
      }

      v31 = 2;
LABEL_14:
      v32 = v53;
      v25(v53, (v58 + *(v57 + 28)), v8);
      v33 = v29(v32, v8);
      if (v33 == v54)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = v26;
        goto LABEL_26;
      }

      v19 = v26;
      if (v33 == v51)
      {
        v34 = 1;
        goto LABEL_26;
      }

      if (v33 == v47)
      {
LABEL_19:
        v34 = 0;
        goto LABEL_26;
      }

      if (v33 == v46)
      {
        v34 = 2;
      }

      else
      {
        if (v33 == v45)
        {
          goto LABEL_19;
        }

        (*v39)(v53, v8);
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_26:
      sub_10F288(v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F288(v19, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v31 >= v34)
      {
        goto LABEL_4;
      }

      if (!v49)
      {
        __break(1u);
        return;
      }

      v35 = v50;
      sub_112864(v24, v50, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_112864(v35, v22, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v22 += v48;
      v24 += v48;
      if (__CFADD__(v23++, 1))
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = v43 + v38;
        v23 = v42 - 1;
        v24 = v41 + v38;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    if (v30 != v45)
    {
      (*v39)(v52, v8);
LABEL_7:
      v31 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_11:
    v31 = 0;
    goto LABEL_14;
  }
}

void sub_10FFC0(unint64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v5 = v4;
  v140 = a1;
  v8 = sub_2BF408();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v162 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v161 = &v135 - v12;
  __chkstk_darwin(v13);
  v135 = &v135 - v14;
  __chkstk_darwin(v15);
  v149 = &v135 - v16;
  v168 = type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  v17 = *(v168 - 8);
  __chkstk_darwin(v168);
  v143 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v135 - v20;
  __chkstk_darwin(v21);
  v169 = &v135 - v22;
  __chkstk_darwin(v23);
  v164 = &v135 - v24;
  __chkstk_darwin(v25);
  v157 = &v135 - v26;
  __chkstk_darwin(v27);
  v154 = &v135 - v28;
  __chkstk_darwin(v29);
  v137 = &v135 - v30;
  __chkstk_darwin(v31);
  v136 = &v135 - v32;
  v33 = *(a3 + 1);
  if (v33 < 1)
  {
    v36 = a3;
    v35 = _swiftEmptyArrayStorage;
LABEL_139:
    v9 = *v140;
    if (!*v140)
    {
      goto LABEL_180;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_141;
  }

  v34 = 0;
  v166 = (v9 + 88);
  v167 = (v9 + 16);
  v165 = enum case for ContentKind.pdf(_:);
  v163 = enum case for ContentKind.audiobook(_:);
  v158 = enum case for ContentKind.regularBook(_:);
  v156 = enum case for ContentKind.manga(_:);
  v153 = enum case for ContentKind.unknownBook(_:);
  v144 = (v9 + 8);
  v35 = _swiftEmptyArrayStorage;
  v36 = a3;
  v141 = a3;
  v152 = v17;
  v139 = a4;
LABEL_4:
  v151 = v35;
  if (v34 + 1 >= v33)
  {
    v47 = v34 + 1;
    goto LABEL_47;
  }

  v155 = v33;
  v37 = v17;
  v38 = *v36;
  v39 = *(v37 + 72);
  v9 = *v36 + v39 * (v34 + 1);
  v40 = v136;
  sub_10F2E8(v9, v136, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v150 = v38;
  v41 = v38 + v39 * v34;
  v42 = v34;
  v43 = v137;
  sub_10F2E8(v41, v137, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  LODWORD(v159) = sub_13A064(v40, v43);
  if (v5)
  {
    sub_10F288(v43, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v40, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    goto LABEL_152;
  }

  sub_10F288(v43, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_10F288(v40, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v138 = v42;
  v44 = v42 + 2;
  v45 = v150 + v39 * (v42 + 2);
  v150 = 0;
  v36 = v135;
  v46 = v39;
  v17 = v39;
  while (1)
  {
    v47 = v155;
    if (v155 == v44)
    {
      break;
    }

    v50 = v154;
    sub_10F2E8(v45, v154, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F2E8(v9, v157, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v51 = *v167;
    v52 = v50 + *(v168 + 28);
    v53 = v149;
    (*v167)(v149, v52, v8);
    v54 = *v166;
    v55 = (*v166)(v53, v8);
    if (v55 == v165)
    {
      goto LABEL_13;
    }

    if (v55 == v163)
    {
      v56 = 1;
      goto LABEL_20;
    }

    if (v55 == v158)
    {
      goto LABEL_17;
    }

    if (v55 != v156)
    {
      if (v55 != v153)
      {
        (*v144)(v149, v8);
LABEL_13:
        v56 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_20;
      }

LABEL_17:
      v56 = 0;
      goto LABEL_20;
    }

    v56 = 2;
LABEL_20:
    v51(v36, v157 + *(v168 + 28), v8);
    v57 = v54(v36, v8);
    if (v57 != v165)
    {
      if (v57 == v163)
      {
        v48 = 1;
        goto LABEL_10;
      }

      if (v57 == v158)
      {
        goto LABEL_24;
      }

      if (v57 == v156)
      {
        v48 = 2;
        goto LABEL_10;
      }

      if (v57 == v153)
      {
LABEL_24:
        v48 = 0;
        goto LABEL_10;
      }

      (*v144)(v36, v8);
    }

    v48 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    sub_10F288(v157, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v154, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v49 = v56 >= v48;
    ++v44;
    v46 = v17;
    v45 += v17;
    v9 += v17;
    v5 = v150;
    v35 = v151;
    if (((v159 ^ v49) & 1) == 0)
    {
      v47 = v44 - 1;
      break;
    }
  }

  a4 = v139;
  v34 = v138;
  if ((v159 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (v47 < v138)
  {
    goto LABEL_173;
  }

  if (v138 >= v47)
  {
LABEL_45:
    v36 = v141;
    v17 = v152;
    goto LABEL_47;
  }

  v58 = v46 * (v47 - 1);
  v59 = v47 * v46;
  v155 = v47;
  v60 = v47;
  v61 = v138;
  v62 = v138 * v46;
  do
  {
    if (v61 != --v60)
    {
      v63 = *v141;
      if (!*v141)
      {
        goto LABEL_177;
      }

      v9 = v63 + v62;
      sub_112864(v63 + v62, v143, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v62 < v58 || v9 >= v63 + v59)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v62 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      sub_112864(v143, v63 + v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v46 = v17;
    }

    ++v61;
    v58 -= v46;
    v59 -= v46;
    v62 += v46;
  }

  while (v61 < v60);
  v5 = v150;
  v35 = v151;
  v36 = v141;
  v17 = v152;
  a4 = v139;
  v34 = v138;
  v47 = v155;
LABEL_47:
  v64 = *(v36 + 1);
  if (v47 >= v64)
  {
    goto LABEL_56;
  }

  if (__OFSUB__(v47, v34))
  {
    goto LABEL_170;
  }

  if (v47 - v34 >= a4)
  {
LABEL_56:
    v9 = v47;
    if (v47 < v34)
    {
      goto LABEL_169;
    }

    goto LABEL_57;
  }

  if (__OFADD__(v34, a4))
  {
    goto LABEL_171;
  }

  if (v34 + a4 >= v64)
  {
    v9 = *(v36 + 1);
  }

  else
  {
    v9 = v34 + a4;
  }

  if (v9 < v34)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    v35 = sub_111978(v35);
LABEL_141:
    v170 = v35;
    v130 = *(v35 + 16);
    if (v130 >= 2)
    {
      while (*v36)
      {
        v131 = *(v35 + 16 * v130);
        v132 = v35;
        v133 = *(v35 + 16 * (v130 - 1) + 32);
        v35 = *(v35 + 16 * (v130 - 1) + 40);
        sub_110ED0(*v36 + *(v17 + 72) * v131, *v36 + *(v17 + 72) * v133, *v36 + *(v17 + 72) * v35, v9);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v35 < v131)
        {
          goto LABEL_167;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_111978(v132);
        }

        if (v130 - 2 >= *(v132 + 2))
        {
          goto LABEL_168;
        }

        v134 = &v132[16 * v130];
        *v134 = v131;
        *(v134 + 1) = v35;
        v170 = v132;
        sub_1118EC(v130 - 1);
        v35 = v170;
        v130 = *(v170 + 16);
        if (v130 <= 1)
        {
          goto LABEL_152;
        }
      }

      goto LABEL_178;
    }

LABEL_152:

    return;
  }

  if (v47 == v9)
  {
    goto LABEL_56;
  }

  v150 = v5;
  v111 = *v36;
  v112 = *(v17 + 72);
  v113 = *v36 + v112 * (v47 - 1);
  v114 = -v112;
  v138 = v34;
  v115 = v34 - v47;
  v159 = v111;
  v142 = v112;
  v116 = v111 + v47 * v112;
  v117 = v168;
  v145 = v9;
  while (2)
  {
    v155 = v47;
    v146 = v116;
    v118 = v116;
    v147 = v115;
    v148 = v113;
LABEL_111:
    v119 = v164;
    sub_10F2E8(v118, v164, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F2E8(v113, v169, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v120 = *v167;
    v121 = v119 + *(v117 + 28);
    v122 = v161;
    (*v167)(v161, v121, v8);
    v123 = *v166;
    v124 = (*v166)(v122, v8);
    if (v124 == v165)
    {
LABEL_112:
      v125 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_119;
    }

    if (v124 == v163)
    {
      v125 = 1;
      goto LABEL_119;
    }

    if (v124 == v158)
    {
LABEL_116:
      v125 = 0;
    }

    else
    {
      if (v124 != v156)
      {
        if (v124 != v153)
        {
          (*v144)(v161, v8);
          goto LABEL_112;
        }

        goto LABEL_116;
      }

      v125 = 2;
    }

LABEL_119:
    v126 = v162;
    v120(v162, v169 + *(v168 + 28), v8);
    v127 = v123(v126, v8);
    if (v127 == v165)
    {
LABEL_120:
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_127;
    }

    if (v127 == v163)
    {
      v17 = 1;
      goto LABEL_127;
    }

    if (v127 == v158)
    {
LABEL_124:
      v17 = 0;
    }

    else
    {
      if (v127 != v156)
      {
        if (v127 != v153)
        {
          (*v144)(v162, v8);
          goto LABEL_120;
        }

        goto LABEL_124;
      }

      v17 = 2;
    }

LABEL_127:
    sub_10F288(v169, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v164, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    if (v125 >= v17)
    {
      v117 = v168;
LABEL_109:
      v47 = v155 + 1;
      v113 = v148 + v142;
      v115 = v147 - 1;
      v116 = v146 + v142;
      v9 = v145;
      if (v155 + 1 != v145)
      {
        continue;
      }

      v5 = v150;
      v35 = v151;
      v36 = v141;
      v34 = v138;
      if (v145 < v138)
      {
        goto LABEL_169;
      }

LABEL_57:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_5BFE4(0, *(v35 + 16) + 1, 1, v35);
      }

      v9 = *(v35 + 16);
      v66 = *(v35 + 24);
      v67 = v9 + 1;
      if (v9 >= v66 >> 1)
      {
        v35 = sub_5BFE4((v66 > 1), v9 + 1, 1, v35);
      }

      *(v35 + 16) = v67;
      v68 = v35 + 16 * v9;
      v69 = v145;
      *(v68 + 32) = v34;
      *(v68 + 40) = v69;
      if (!*v140)
      {
        goto LABEL_179;
      }

      if (!v9)
      {
LABEL_3:
        v33 = *(v36 + 1);
        v34 = v145;
        a4 = v139;
        v17 = v152;
        if (v145 >= v33)
        {
          goto LABEL_139;
        }

        goto LABEL_4;
      }

      v17 = *v140;
      while (1)
      {
        v9 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v35 + 32);
          v71 = *(v35 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_77:
          if (v73)
          {
            goto LABEL_158;
          }

          v86 = (v35 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_161;
          }

          v92 = (v35 + 32 + 16 * v9);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_165;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v9 = v67 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v96 = (v35 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_91:
        if (v91)
        {
          goto LABEL_160;
        }

        v99 = v35 + 16 * v9;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_163;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_98:
        v107 = v9 - 1;
        if (v9 - 1 >= v67)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v36)
        {
          goto LABEL_176;
        }

        v108 = *(v35 + 32 + 16 * v107);
        v109 = *(v35 + 32 + 16 * v9 + 8);
        sub_110ED0(*v36 + *(v152 + 72) * v108, *v36 + *(v152 + 72) * *(v35 + 32 + 16 * v9), *v36 + *(v152 + 72) * v109, v17);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v109 < v108)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_111978(v35);
        }

        if (v107 >= *(v35 + 16))
        {
          goto LABEL_155;
        }

        v110 = v35 + 16 * v107;
        *(v110 + 32) = v108;
        *(v110 + 40) = v109;
        v170 = v35;
        sub_1118EC(v9);
        v35 = v170;
        v67 = *(v170 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v35 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_156;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_157;
      }

      v81 = (v35 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_159;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_162;
      }

      if (v85 >= v77)
      {
        v103 = (v35 + 32 + 16 * v9);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_166;
        }

        if (v72 < v106)
        {
          v9 = v67 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    break;
  }

  v117 = v168;
  if (v159)
  {
    v128 = v160;
    sub_112864(v118, v160, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_112864(v128, v113, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v113 += v114;
    v118 += v114;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_109;
    }

    goto LABEL_111;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

void sub_110ED0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = sub_2BF408();
  v8 = *(v86 - 8);
  __chkstk_darwin(v86);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v68 - v11;
  __chkstk_darwin(v12);
  v81 = &v68 - v13;
  __chkstk_darwin(v14);
  v80 = &v68 - v15;
  v87 = type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  __chkstk_darwin(v87);
  v83 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v82 = &v68 - v18;
  __chkstk_darwin(v19);
  v85 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = (&v68 - v22);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_103;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_104;
  }

  v26 = (a2 - a1) / v24;
  v90 = a1;
  v89 = a4;
  if (v26 < v25 / v24)
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = (a4 + v27);
    v88 = a4 + v27;
    if (v27 < 1 || a2 >= a3)
    {
      goto LABEL_101;
    }

    v83 = (v8 + 16);
    v30 = (v8 + 88);
    LODWORD(v82) = enum case for ContentKind.pdf(_:);
    LODWORD(v76) = enum case for ContentKind.audiobook(_:);
    v74 = enum case for ContentKind.regularBook(_:);
    LODWORD(v73) = enum case for ContentKind.manga(_:);
    v72 = enum case for ContentKind.unknownBook(_:);
    v71 = (v8 + 8);
    v77 = v24;
    v78 = a3;
    while (1)
    {
      v31 = a2;
      v32 = v84;
      sub_10F2E8(a2, v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F2E8(a4, v85, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v33 = *v83;
      v34 = v32 + *(v87 + 28);
      v35 = v80;
      v36 = v86;
      (*v83)(v80, v34, v86);
      v37 = *v30;
      v38 = (*v30)(v35, v36);
      v39 = a4;
      if (v38 == v82)
      {
        goto LABEL_22;
      }

      if (v38 == v76)
      {
        v40 = 1;
        goto LABEL_29;
      }

      if (v38 == v74)
      {
        goto LABEL_26;
      }

      if (v38 != v73)
      {
        break;
      }

      v40 = 2;
LABEL_29:
      v41 = v86;
      v42 = v81;
      v33(v81, &v85[*(v87 + 28)], v86);
      v43 = v37(v42, v41);
      if (v43 == v82)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = v77;
      }

      else
      {
        v45 = v77;
        if (v43 == v76)
        {
          v44 = 1;
        }

        else
        {
          if (v43 != v74)
          {
            if (v43 == v73)
            {
              v44 = 2;
              goto LABEL_41;
            }

            if (v43 != v72)
            {
              (*v71)(v81, v86);
              v44 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          v44 = 0;
        }
      }

LABEL_41:
      sub_10F288(v85, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F288(v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v40 >= v44)
      {
        a4 = &v45[v39];
        a2 = v31;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v78;
        }

        else
        {
          v46 = v78;
          if (a1 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = &v45[v39];
      }

      else
      {
        a2 = &v45[v31];
        if (a1 < v31 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v39;
          v46 = v78;
        }

        else
        {
          v46 = v78;
          if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v39;
        }
      }

      a1 += v45;
      v90 = a1;
      if (a4 >= v79 || a2 >= v46)
      {
        goto LABEL_101;
      }
    }

    if (v38 != v72)
    {
      (*v71)(v80, v86);
LABEL_22:
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_29;
    }

LABEL_26:
    v40 = 0;
    goto LABEL_29;
  }

  v28 = v25 / v24 * v24;
  if (a4 < a2 || a2 + v28 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v47 = a4 + v28;
  if (v28 < 1)
  {
    goto LABEL_100;
  }

  v48 = -v24;
  v84 = (v8 + 88);
  v85 = (v8 + 16);
  LODWORD(v81) = enum case for ContentKind.pdf(_:);
  v74 = enum case for ContentKind.audiobook(_:);
  v72 = enum case for ContentKind.regularBook(_:);
  LODWORD(v71) = enum case for ContentKind.manga(_:);
  v70 = enum case for ContentKind.unknownBook(_:);
  v68 = (v8 + 8);
  v49 = v47;
  v75 = a4;
  v76 = v48;
  while (2)
  {
    while (2)
    {
      v69 = v47;
      v50 = a2;
      a2 += v48;
      v78 = v50;
      while (1)
      {
        if (v50 <= a1)
        {
          v90 = v50;
          v88 = v69;
          goto LABEL_101;
        }

        v51 = a3;
        v73 = v47;
        v52 = v49 + v48;
        v53 = v82;
        sub_10F2E8(v49 + v48, v82, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v54 = a2;
        sub_10F2E8(a2, v83, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v55 = v86;
        v56 = *v85;
        v57 = v53 + *(v87 + 28);
        v58 = v77;
        (*v85)(v77, v57, v86);
        v59 = *v84;
        v60 = (*v84)(v58, v55);
        if (v60 == v81)
        {
          goto LABEL_65;
        }

        if (v60 == v74)
        {
          v61 = 1;
          goto LABEL_68;
        }

        if (v60 != v72)
        {
          if (v60 == v71)
          {
            v61 = 2;
            goto LABEL_68;
          }

          if (v60 != v70)
          {
            (*v68)(v77, v86);
LABEL_65:
            v61 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_68:
            v80 = v61;
            goto LABEL_69;
          }
        }

        v80 = 0;
LABEL_69:
        v62 = v86;
        v63 = v79;
        v56(v79, v83 + *(v87 + 28), v86);
        v64 = v59(v63, v62);
        if (v64 == v81)
        {
          v65 = 0x7FFFFFFFFFFFFFFFLL;
          a2 = v54;
          v48 = v76;
          goto LABEL_85;
        }

        a2 = v54;
        v48 = v76;
        if (v64 == v74)
        {
          v65 = 1;
          goto LABEL_85;
        }

        if (v64 == v72)
        {
LABEL_76:
          v65 = 0;
          goto LABEL_85;
        }

        if (v64 == v71)
        {
          v65 = 2;
        }

        else
        {
          if (v64 == v70)
          {
            goto LABEL_76;
          }

          (*v68)(v79, v86);
          v65 = 0x7FFFFFFFFFFFFFFFLL;
        }

LABEL_85:
        a3 = v51 + v48;
        sub_10F288(v83, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        sub_10F288(v82, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        if (v80 < v65)
        {
          break;
        }

        v47 = v52;
        v66 = v75;
        if (v51 < v49 || a3 >= v49)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v51 != v49)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v49 = v52;
        v50 = v78;
        if (v52 <= v66)
        {
          a2 = v78;
          goto LABEL_100;
        }
      }

      v67 = v75;
      if (v51 >= v78 && a3 < v78)
      {
        v47 = v73;
        if (v51 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v49 <= v67)
        {
          goto LABEL_100;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v47 = v73;
    if (v49 > v67)
    {
      continue;
    }

    break;
  }

LABEL_100:
  v90 = a2;
  v88 = v47;
LABEL_101:
  sub_1119BC(&v90, &v89, &v88, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
}

uint64_t sub_1118EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_111978(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1119BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_111AE0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8() & 1;
  }
}

uint64_t sub_111B38(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8() & 1;
  }
}

unint64_t sub_111B90()
{
  result = qword_3C13F0;
  if (!qword_3C13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C13F0);
  }

  return result;
}

unint64_t sub_111BE4()
{
  result = qword_3C1400;
  if (!qword_3C1400)
  {
    sub_718D4(&qword_3C13F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1400);
  }

  return result;
}

uint64_t sub_111D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BF368();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE238);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_111E58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2BF368();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE238);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_111F88()
{
  sub_2BF368();
  if (v0 <= 0x3F)
  {
    sub_112064();
    if (v1 <= 0x3F)
    {
      sub_112360(319, &qword_3C1480, &type metadata accessor for SeriesListSortOrder, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_112064()
{
  if (!qword_3C1478)
  {
    sub_718D4(&qword_3BCA70);
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C1478);
    }
  }
}

uint64_t sub_1120DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1121AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_112264()
{
  type metadata accessor for Page();
  if (v0 <= 0x3F)
  {
    sub_112360(319, &unk_3BF538, &type metadata accessor for MSeries, &type metadata accessor for _MResourceDecoder_OrNil);
    if (v1 <= 0x3F)
    {
      sub_112360(319, &unk_3C1520, &type metadata accessor for MAsset, &type metadata accessor for _MResourceDecoder_Many);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_112360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1123D8()
{
  result = qword_3C1558;
  if (!qword_3C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1558);
  }

  return result;
}

unint64_t sub_11242C()
{
  result = qword_3C1570;
  if (!qword_3C1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1570);
  }

  return result;
}

unint64_t sub_112480()
{
  result = qword_3C15C0;
  if (!qword_3C15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C15C0);
  }

  return result;
}

uint64_t sub_1124D8(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesRoomPageIntent() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_10A6B0(a1, v1 + 16, v4);
}

uint64_t sub_11255C()
{
  v1 = type metadata accessor for SeriesRoomPageIntent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  sub_68CD0(v0 + 16);
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_2BF368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = v1[7];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_2C21F8();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

unint64_t sub_112718()
{
  result = qword_3C1620;
  if (!qword_3C1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1620);
  }

  return result;
}

uint64_t sub_11276C()
{
  sub_68CD0(v0 + 16);
  if (*(v0 + 88))
  {
    sub_68CD0(v0 + 64);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_112864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1128E0()
{
  result = qword_3C1638;
  if (!qword_3C1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1638);
  }

  return result;
}

unint64_t sub_112938()
{
  result = qword_3C1640;
  if (!qword_3C1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1640);
  }

  return result;
}

unint64_t sub_112990()
{
  result = qword_3C1648;
  if (!qword_3C1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1648);
  }

  return result;
}

uint64_t sub_1129E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000303A70 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_112B04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_113C10(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_112CEC()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SeriesRoomListHeaderComponent() + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_113C80(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t SeriesRoomListHeaderComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v2 = sub_6620C(&qword_3C1650);
  __chkstk_darwin(v2 - 8);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v49 - v5;
  v6 = sub_2C0C68();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C0C98();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C1778();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C0370);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v51 = sub_6620C(&qword_3C1658);
  v21 = __chkstk_darwin(v51);
  v23 = &v49 - v22;
  (*(v18 + 16))(v20, v50, v17, v21);
  sub_112CEC();
  (*(v14 + 104))(v16, enum case for SegmentedControlStyle.label(_:), v13);
  type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  sub_113768(&unk_3C03F0, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_2C1138();
  LOBYTE(v20) = sub_2C3768();
  sub_112B04(v12);
  sub_2C0C78();
  v24 = *(v58 + 8);
  v58 += 8;
  v24(v12, v57);
  sub_2C0C28();
  v25 = v53;
  v26 = *(v52 + 8);
  v26(v8, v53);
  sub_2C24D8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v23[*(sub_6620C(&qword_3C1660) + 36)];
  *v35 = v20;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v20) = sub_2C3778();
  sub_112B04(v12);
  sub_2C0C78();
  v24(v12, v57);
  sub_2C0BF8();
  v26(v8, v25);
  sub_2C24D8();
  v36 = &v23[*(v51 + 36)];
  *v36 = v20;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = enum case for DynamicTypeSize.large(_:);
  v42 = sub_2C29C8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v45 = v54;
  v44(v54, v41, v42);
  v46 = *(v43 + 56);
  v46(v45, 0, 1, v42);
  v47 = v55;
  v44(v55, enum case for DynamicTypeSize.xxxLarge(_:), v42);
  v46(v47, 0, 1, v42);
  sub_1134BC(&qword_3C1668, &qword_3C1658, &unk_2EB720, sub_11348C);
  sub_2C3CF8();
  sub_69198(v47, &qword_3C1650);
  sub_69198(v45, &qword_3C1650);
  return sub_69198(v23, &qword_3C1658);
}

uint64_t sub_1134BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_113540()
{
  result = qword_3C1678;
  if (!qword_3C1678)
  {
    sub_718D4(&qword_3C1680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1678);
  }

  return result;
}

uint64_t type metadata accessor for SeriesRoomListHeaderComponent()
{
  result = qword_3C16F0;
  if (!qword_3C16F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_113768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1137B0()
{
  __chkstk_darwin(v0);
  sub_113BAC(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_113768(&unk_3C8590, type metadata accessor for SeriesRoomListHeaderComponent);
  return sub_2BFD18();
}

uint64_t sub_113888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BD588);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_113964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BD588);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_113A2C()
{
  sub_85768();
  if (v0 <= 0x3F)
  {
    sub_113AB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_113AB0()
{
  if (!qword_3C1700)
  {
    sub_718D4(&qword_3BDB00);
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3C1700);
    }
  }
}

uint64_t sub_113B14()
{
  sub_718D4(&qword_3C1658);
  sub_1134BC(&qword_3C1668, &qword_3C1658, &unk_2EB720, sub_11348C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_113BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesRoomListHeaderComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_113C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_113C80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_113C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2BE9B8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_2C14C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  *a3 = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ShelfView();
  v15 = v14[5];
  *(a3 + v15) = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  v16 = v14[6];
  *(a3 + v16) = swift_getKeyPath();
  sub_6620C(&qword_3BECA0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v14[7];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  (*(v8 + 104))(v13, enum case for ShelfGridBreakpoint.xs(_:), v7);
  (*(v8 + 16))(v11, v13, v7);
  sub_2C4368();
  (*(v8 + 8))(v13, v7);
  v18 = a3 + v14[9];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a3 + v14[10];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a3 + v14[11];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v14[12];
  *(a3 + v21) = swift_getKeyPath();
  sub_6620C(&qword_3C1910);
  swift_storeEnumTagMultiPayload();
  v22 = a3 + v14[13];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a3 + v14[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a3 + v14[15];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = a3 + v14[16];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v14[17];
  *(a3 + v26) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08);
  swift_storeEnumTagMultiPayload();
  v27 = a3 + v14[18];
  *v27 = swift_getKeyPath();
  v27[40] = 0;
  v28 = a3 + v14[19];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  v28[16] = 0;
  sub_2BE998();
  sub_2BE818();
  v29 = a3 + v14[21];
  *v29 = swift_getKeyPath();
  *(v29 + 4) = 0;
  *(v29 + 2) = 0;
  sub_125868(a1, a3 + v14[22], type metadata accessor for Shelf);
  return sub_69130(a2, a3 + v14[23], &qword_3BDE70);
}

uint64_t sub_114154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6932C(v2, &v14 - v9, &qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_114354@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3C8530);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView();
  sub_6932C(v1 + *(v10 + 20), v9, &unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0D48();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_11455C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BECA0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView();
  sub_6932C(v1 + *(v10 + 24), v9, &qword_3BECA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C29C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_114764()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView() + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1148B4()
{
  v16 = sub_2C30F8();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3BECA0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_2C29C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShelfView();
  sub_6932C(v0 + *(v11 + 24), v6, &qword_3BECA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_2C5DD8();
    v12 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_2C29B8();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_114B40()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView() + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114C98()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView() + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114DF0()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView() + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114F48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1910);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShelfView();
  sub_6932C(v1 + *(v10 + 48), v9, &qword_3C1910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_69130(v9, a1, &qword_3C1880);
  }

  sub_2C5DD8();
  v12 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_115130()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView() + 52));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2C5DD8();
  v8 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  sub_71AF4(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_11528C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView() + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1153E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfView();
  sub_6932C(v1 + *(v7 + 60), v10, &qword_3BDFE0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void *sub_11555C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ShelfView() + 64);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1156BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDD08);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView();
  sub_6932C(v1 + *(v10 + 68), v9, &qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BF0B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1158C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfView();
  result = sub_6932C(v1 + *(v7 + 72), v11, &qword_3C1C88);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_115A40()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ShelfView() + 76);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_113C80(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t ShelfView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v3 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v3 - 8);
  v119 = &v84 - v4;
  v5 = sub_2BE9B8();
  v121 = *(v5 - 8);
  v122 = v5;
  __chkstk_darwin(v5);
  v120 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1730);
  __chkstk_darwin(v7 - 8);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v84 - v10;
  v103 = sub_2C0D48();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2C2548();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_6620C(&qword_3C1738);
  __chkstk_darwin(v104);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v84 - v15;
  v98 = sub_6620C(&qword_3C1740);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v84 - v16;
  v125 = sub_6620C(&qword_3C1748);
  __chkstk_darwin(v125);
  v95 = &v84 - v17;
  v18 = sub_6620C(&qword_3C1750);
  v117 = *(v18 - 8);
  v118 = v18;
  __chkstk_darwin(v18);
  v124 = &v84 - v19;
  v116 = sub_6620C(&qword_3C1758);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v84 - v20;
  v113 = sub_6620C(&qword_3C1760);
  __chkstk_darwin(v113);
  v112 = &v84 - v21;
  v110 = sub_6620C(&qword_3C1768);
  __chkstk_darwin(v110);
  v108 = &v84 - v22;
  v111 = sub_2BFE68();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Shelf();
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_116C34(v28);
  sub_117140(v24);
  sub_117518();
  sub_1177C4();
  v106 = v28;
  v126 = v28;
  v127 = v1;
  v107 = v24;
  v128 = v24;
  v90 = sub_6620C(&qword_3C1770);
  v29 = sub_718D4(&qword_3C8300);
  v30 = sub_72B74(&unk_3C8340, &qword_3C8300);
  v129 = v29;
  v130 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = sub_718D4(&qword_3C1778);
  v87 = sub_718D4(&qword_3C1780);
  v86 = sub_2C4E28();
  v85 = sub_718D4(&qword_3C1788);
  v84 = sub_718D4(&qword_3C1790);
  v31 = sub_2C1FA8();
  v32 = sub_718D4(&qword_3C1798);
  v33 = sub_2BED28();
  v34 = sub_718D4(&qword_3C17A0);
  v35 = sub_718D4(&qword_3C17A8);
  v36 = sub_718D4(&qword_3C17B0);
  v37 = sub_72B74(&qword_3C17B8, &qword_3C17B0);
  v129 = v36;
  v130 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_118844();
  v40 = sub_118898();
  v129 = v34;
  v130 = &type metadata for IsInPPTPredicate;
  v131 = v35;
  v132 = v38;
  v41 = v93;
  v133 = v39;
  v134 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_12598C(&qword_3C17D8, &type metadata accessor for SectionExposureEvent);
  v129 = v32;
  v130 = v33;
  v131 = v42;
  v132 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_12598C(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
  v129 = v84;
  v130 = v31;
  v131 = v44;
  v132 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v129 = v85;
  v130 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v129 = v87;
  v130 = v86;
  v131 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v129 = v88;
  v130 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v94;
  sub_2C4598();
  v92 = type metadata accessor for ShelfView();
  v50 = (v2 + *(v92 + 22));
  v51 = v97;
  v104 = v2;
  sub_114354(v97);
  LOBYTE(v38) = sub_2C1B78();
  (*(v102 + 8))(v51, v103);
  v52 = v100;
  v53 = &enum case for ColorScheme.dark(_:);
  if ((v38 & 1) == 0)
  {
    v53 = &enum case for ColorScheme.light(_:);
  }

  v54 = v99;
  v55 = v101;
  (*(v100 + 104))(v99, *v53, v101);
  KeyPath = swift_getKeyPath();
  v57 = v95;
  v58 = &v95[*(v125 + 36)];
  v59 = sub_6620C(&qword_3BE860);
  (*(v52 + 32))(v58 + *(v59 + 28), v54, v55);
  *v58 = KeyPath;
  (*(v96 + 32))(v57, v49, v98);
  sub_6932C(v50 + *(v26 + 44), v41, &qword_3C1730);
  v60 = sub_2C22F8();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v41, 1, v60) == 1)
  {
    v63 = v105;
    sub_2C22B8();
    if (v62(v41, 1, v60) != 1)
    {
      sub_69198(v41, &qword_3C1730);
    }
  }

  else
  {
    v63 = v105;
    (*(v61 + 32))(v105, v41, v60);
  }

  (*(v61 + 56))(v63, 0, 1, v60);
  v64 = sub_122658();
  sub_2C3C08();
  sub_69198(v63, &qword_3C1730);
  sub_69198(v57, &qword_3C1748);
  v65 = *(v92 + 23);
  v67 = *v50;
  v66 = v50[1];
  swift_bridgeObjectRetain_n();
  v68 = v120;
  sub_2BE9A8();
  sub_6620C(&qword_3BC020);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2E3F30;
  v70 = v119;
  sub_6932C(v104 + v65, v119, &qword_3BDE70);
  v71 = sub_2BEA28();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    sub_69198(v70, &qword_3BDE70);
    *(v69 + 32) = 0u;
    *(v69 + 48) = 0u;
    *(v69 + 64) = 0u;
  }

  else
  {
    *(v69 + 56) = v71;
    *(v69 + 64) = sub_12598C(&unk_3C0030, &type metadata accessor for SectionData);
    *(v69 + 72) = sub_12598C(&unk_3C43F0, &type metadata accessor for SectionData);
    v73 = sub_720C8((v69 + 32));
    (*(v72 + 32))(v73, v70, v71);
  }

  v129 = v125;
  v130 = v64;
  swift_getOpaqueTypeConformance2();
  v74 = v114;
  v75 = v118;
  v76 = v124;
  sub_2C3D88();

  (*(v121 + 8))(v68, v122);
  (*(v117 + 8))(v76, v75);
  v77 = swift_getKeyPath();
  v78 = v112;
  (*(v115 + 32))(v112, v74, v116);
  v79 = (v78 + *(v113 + 36));
  *v79 = v77;
  v79[1] = v67;
  v79[2] = v66;
  v80 = v108;
  sub_69130(v78, v108, &qword_3C1760);
  v81 = (v80 + *(v110 + 52));
  *v81 = v67;
  v81[1] = v66;
  sub_69130(v80, v123, &qword_3C1768);
  v82 = *(v109 + 8);

  v82(v107, v111);
  return sub_1259D4(v106, type metadata accessor for Shelf);
}

uint64_t sub_116C34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Shelf();
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BF0B8();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *(type metadata accessor for ShelfView() + 88);
  v10 = sub_11555C();
  v42 = v8;
  sub_1156BC(v8);
  sub_1158C4(v59);
  v11 = sub_1218A8();
  v38 = v5;
  sub_124CA8(v9, v5, type metadata accessor for Shelf);
  v39 = v3;
  v12 = *(v9 + *(v3 + 68));
  v13 = *(v12 + 16);
  if (v13)
  {
    v41 = v11;
    v36 = v6;
    v37 = a1;
    v58 = _swiftEmptyArrayStorage;
    result = sub_64698(0, v13, 0);
    v15 = 0;
    v16 = v12 + 32;
    v17 = v58;
    v18 = *(v12 + 16);
    v44 = v12;
    v45 = v18;
    v43 = v13;
    while (v45 != v15)
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_15;
      }

      sub_691F8(v16, v54);
      v52 = v15;
      sub_68D1C(v54, v53);
      sub_691F8(v53, &v55);
      sub_6620C(&qword_3BC278);
      sub_6620C(&qword_3BC1D8);
      if (swift_dynamicCast())
      {
        sub_68D1C(&v46, v49);
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v19 = v50;
        v20 = v51;
        sub_8C564(v49, v50);
        sub_25707C(v15, v10, &v55, v42, v59, v41, v19, v20, &v46);
        sub_69198(&v55, &qword_3BE008);
        v21 = *(&v47 + 1);
        v22 = v48;
        v23 = sub_72084(&v46, *(&v47 + 1));
        *(&v56 + 1) = v21;
        v57 = *(v22 + 8);
        v24 = sub_720C8(&v55);
        (*(*(v21 - 8) + 16))(v24, v23, v21);
        sub_68CD0(&v46);
        sub_68CD0(v49);
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        sub_69198(&v46, &qword_3C1C78);
        sub_691F8(v53, &v55);
      }

      sub_69198(&v52, &qword_3C1C80);
      v58 = v17;
      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_64698((v25 > 1), v26 + 1, 1);
      }

      ++v15;
      v27 = *(&v56 + 1);
      v28 = v57;
      v29 = sub_8C564(&v55, *(&v56 + 1));
      v30 = __chkstk_darwin(v29);
      v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32, v30);
      sub_24EE68(v26, v32, &v58, v27, v28);
      result = sub_68CD0(&v55);
      v17 = v58;
      v16 += 40;
      v12 = v44;
      if (v43 == v15)
      {

        v6 = v36;
        a1 = v37;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_13:
    v34 = v38;
    v35 = *(v39 + 68);

    *(v34 + v35) = v17;
    sub_125868(v34, a1, type metadata accessor for Shelf);
    sub_69198(v59, &unk_3BDDB8);
    return (*(v40 + 8))(v42, v6);
  }

  return result;
}

uint64_t sub_117140@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_2C0BB8();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C0C98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C1C70);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_2BFE68();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for ShelfView() + 88);
  v17 = type metadata accessor for Shelf();
  sub_6932C(v16 + *(v17 + 48), v11, &qword_3C1C70);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &qword_3C1C70);
    sub_114154(v8);
    sub_2C0BE8();
    (*(v6 + 8))(v8, v5);
    sub_2C0BA8();
    (*(v25 + 8))(v4, v26);
    return sub_2BFE38();
  }

  else
  {
    v23 = v5;
    v24 = v1;
    v19 = *(v13 + 32);
    v19(v15, v11, v12);
    sub_2BFE58();
    if (v20 & 1) != 0 || (sub_2BFE28(), (v21))
    {
      sub_114154(v8);
      sub_2C0BE8();
      (*(v6 + 8))(v8, v23);
      sub_2C0BA8();
      (*(v25 + 8))(v4, v26);
      sub_2BFE58();
      sub_2BFE28();
      sub_2BFE48();
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      return (v19)(v27, v15, v12);
    }
  }
}

uint64_t sub_117518()
{
  v0 = sub_2C0E48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_6620C(&qword_3C8300);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6 - 8];
  type metadata accessor for ShelfView();
  type metadata accessor for Shelf();
  sub_2C1CD8();
  sub_691F8(v12, v11);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(v12, v11);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C68);
  if (swift_dynamicCast())
  {
    sub_68CD0(v10);
  }

  (*(v1 + 104))(v3, enum case for PageMarginType.padding(_:), v0);
  sub_72B74(&unk_3C8340, &qword_3C8300);
  sub_2C3C28();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_68CD0(v12);
}

uint64_t sub_1177C4()
{
  v0 = sub_2C0E48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_6620C(&qword_3C8300);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6 - 8];
  type metadata accessor for ShelfView();
  type metadata accessor for Shelf();
  sub_2C1C88();
  sub_691F8(v12, v11);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(v12, v11);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C68);
  if (swift_dynamicCast())
  {
    sub_68CD0(v10);
  }

  (*(v1 + 104))(v3, enum case for PageMarginType.padding(_:), v0);
  sub_72B74(&unk_3C8340, &qword_3C8300);
  sub_2C3C28();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_68CD0(v12);
}

uint64_t sub_117A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v97 = sub_2C5118();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2C0A78();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C1920);
  __chkstk_darwin(v9 - 8);
  v88 = &v70 - v10;
  v83 = sub_2C1FA8();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_6620C(&qword_3C17B0);
  __chkstk_darwin(v71);
  v13 = &v70 - v12;
  v14 = sub_6620C(&qword_3C17A0);
  v73 = *(v14 - 8);
  __chkstk_darwin(v14);
  v70 = &v70 - v15;
  v75 = sub_6620C(&qword_3C1798);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v98 = &v70 - v16;
  v78 = sub_6620C(&qword_3C1790);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - v17;
  v103 = sub_6620C(&qword_3C1788);
  v79 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v70 - v18;
  v85 = sub_6620C(&qword_3C1780);
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v102 = &v70 - v19;
  v87 = sub_6620C(&qword_3C1778);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v70 - v20;
  v90 = a3;
  sub_118A10(a1, a2, a3, v13);
  v72 = type metadata accessor for ShelfView();
  v21 = (a2 + *(v72 + 88));
  v22 = *v21;
  v23 = v21[1];
  v24 = a2 + *(v72 + 84);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 9);
  v28 = *(v24 + 16);
  *&v109 = v25;
  BYTE8(v109) = v26;
  BYTE9(v109) = v27;
  *&v110 = v28;

  v29 = PageNamespace.wrappedValue.getter();
  LODWORD(a1) = sub_2C3648();
  sub_2C47C8();
  v31 = v30;
  v33 = v32;
  v34 = &v13[*(sub_6620C(&qword_3C1928) + 36)];
  v101 = v22;
  *v34 = v22;
  *(v34 + 1) = v23;
  *(v34 + 2) = v29;
  *(v34 + 6) = a1;
  *(v34 + 4) = v31;
  *(v34 + 5) = v33;
  v34[48] = 1;
  v35 = type metadata accessor for Shelf();
  v36 = *(v35 + 40);
  v37 = v71;
  v38 = *(v71 + 52);
  v100 = v23;

  sub_68D34(v21 + v36, &v13[v38]);
  v39 = sub_72B74(&qword_3C17B8, &qword_3C17B0);
  v40 = v70;
  sub_2C3C98();
  sub_69198(v13, &qword_3C17B0);
  v93 = a2;
  v104 = a2;
  v41 = sub_6620C(&qword_3C17A8);
  *&v109 = v37;
  *(&v109 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_118844();
  v44 = sub_118898();
  sub_2C4128();
  (v73[1])(v40, v14);
  v71 = v35;
  v45 = *(v35 + 28);
  v73 = v21;
  if (*(v21 + v45) == 1)
  {
    sub_2BED28();
  }

  v46 = sub_2BED28();
  *&v109 = v14;
  *(&v109 + 1) = &type metadata for IsInPPTPredicate;
  *&v110 = v41;
  *(&v110 + 1) = OpaqueTypeConformance2;
  v111 = v43;
  v112 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_12598C(&qword_3C17D8, &type metadata accessor for SectionExposureEvent);
  v49 = v76;
  v50 = v75;
  v51 = v98;
  sub_2C3D98();
  (*(v74 + 8))(v51, v50);
  v105 = v101;
  v106 = v100;

  sub_2C61A8();
  v52 = v80;
  sub_2C1BF8();
  v105 = v50;
  v106 = v46;
  v107 = v47;
  v108 = v48;
  v98 = swift_getOpaqueTypeConformance2();
  v53 = sub_12598C(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
  v54 = v78;
  v55 = v83;
  sub_2C3BD8();
  (*(v81 + 8))(v52, v55);
  sub_69198(&v109, &qword_3BE008);
  (*(v77 + 8))(v49, v54);
  sub_6620C(&qword_3C17F8);
  v56 = v88;
  sub_2C4398();
  v57 = v89;
  sub_2C0AA8();
  sub_11BF30();
  sub_2BFE28();
  *&v109 = v54;
  *(&v109 + 1) = v55;
  *&v110 = v98;
  *(&v110 + 1) = v53;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v103;
  v60 = v99;
  sub_2C3C68();
  (*(v91 + 8))(v57, v92);
  sub_69198(v56, &qword_3C1920);
  (*(v79 + 8))(v60, v59);
  v61 = sub_114764();
  __chkstk_darwin(v61);
  sub_2C4DB8();
  if (v109 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v62 = sub_2C4E28();
  *&v109 = v103;
  *(&v109 + 1) = v58;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v84;
  v65 = v85;
  v66 = v102;
  sub_2C3AD8();

  (*(v82 + 8))(v66, v65);

  v109 = 0u;
  v110 = 0u;
  v108 = &type metadata for String;
  v105 = v101;
  v106 = v100;
  v67 = v94;
  sub_2C50D8();
  sub_69198(&v109, qword_3C0250);
  sub_69198(&v105, qword_3C0250);
  *&v109 = v65;
  *(&v109 + 1) = v62;
  *&v110 = v63;
  swift_getOpaqueTypeConformance2();
  v68 = v87;
  sub_2C3B08();
  (*(v95 + 8))(v67, v97);
  return (*(v86 + 8))(v64, v68);
}

unint64_t sub_118844()
{
  result = qword_3C17C0;
  if (!qword_3C17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17C0);
  }

  return result;
}

unint64_t sub_118898()
{
  result = qword_3C17C8;
  if (!qword_3C17C8)
  {
    sub_718D4(&qword_3C17A8);
    sub_718D4(&qword_3C17B0);
    sub_72B74(&qword_3C17B8, &qword_3C17B0);
    swift_getOpaqueTypeConformance2();
    sub_12598C(&qword_3C17D0, type metadata accessor for OnStoreProductPagePPTModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17C8);
  }

  return result;
}

uint64_t type metadata accessor for ShelfView()
{
  result = qword_3C1860;
  if (!qword_3C1860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_118A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v303 = a3;
  v311 = a2;
  *&v322 = a1;
  v316 = a4;
  v284 = sub_2C36B8();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v280 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v278 = &v215 - v6;
  v281 = sub_6620C(&qword_3C1948);
  v279 = *(v281 - 8);
  __chkstk_darwin(v281);
  v277 = &v215 - v7;
  v307 = sub_6620C(&qword_3C1950);
  __chkstk_darwin(v307);
  v287 = &v215 - v8;
  v305 = sub_6620C(&qword_3C1958);
  __chkstk_darwin(v305);
  v306 = &v215 - v9;
  v315 = sub_6620C(&qword_3C1960);
  __chkstk_darwin(v315);
  v308 = &v215 - v10;
  v246 = sub_6620C(&qword_3C1968);
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v247 = &v215 - v11;
  v289 = sub_6620C(&qword_3C1970);
  v249 = *(v289 - 8);
  __chkstk_darwin(v289);
  v248 = &v215 - v12;
  v290 = sub_6620C(&qword_3C1978);
  v251 = *(v290 - 8);
  __chkstk_darwin(v290);
  v250 = &v215 - v13;
  v239 = sub_2C14C8();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v237 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_6620C(&qword_3C1980);
  __chkstk_darwin(v285);
  v288 = &v215 - v15;
  v310 = type metadata accessor for ShelfView();
  v300 = *(v310 - 8);
  __chkstk_darwin(v310);
  v275 = &v215 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = v16;
  __chkstk_darwin(v17);
  v301 = &v215 - v18;
  v19 = sub_2C0A78();
  __chkstk_darwin(v19 - 8);
  v242 = &v215 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_2BFE68();
  v298 = *(v299 - 8);
  __chkstk_darwin(v299);
  v319 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Shelf();
  __chkstk_darwin(v22);
  *&v318 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_6620C(&qword_3C1988);
  v241 = *(v276 - 8);
  __chkstk_darwin(v276);
  v240 = &v215 - v24;
  v282 = sub_6620C(&qword_3C1990);
  v244 = *(v282 - 8);
  __chkstk_darwin(v282);
  v243 = &v215 - v25;
  v304 = sub_6620C(&qword_3C1998);
  __chkstk_darwin(v304);
  v286 = &v215 - v26;
  v235 = sub_2C28A8();
  v229 = *(v235 - 8);
  __chkstk_darwin(v235);
  v234 = &v215 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_6620C(&qword_3C19A0);
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v224 = &v215 - v28;
  v231 = sub_6620C(&qword_3C19A8);
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v226 = &v215 - v29;
  v233 = sub_6620C(&qword_3C19B0);
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v230 = &v215 - v30;
  v274 = sub_6620C(&qword_3C19B8);
  __chkstk_darwin(v274);
  v236 = &v215 - v31;
  v269 = sub_2C1318();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v267 = &v215 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v266 = &v215 - v34;
  v312 = sub_6620C(&qword_3C19C0);
  __chkstk_darwin(v312);
  v314 = &v215 - v35;
  v271 = sub_6620C(&qword_3C19C8);
  __chkstk_darwin(v271);
  v272 = &v215 - v36;
  v313 = sub_6620C(&qword_3C19D0);
  __chkstk_darwin(v313);
  v273 = &v215 - v37;
  v294 = sub_2C1958();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_2BFD68();
  v265 = *(v321 - 8);
  __chkstk_darwin(v321);
  v309 = &v215 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_2BFE18();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  *&v317 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v262 = &v215 - v42;
  __chkstk_darwin(v43);
  v261 = &v215 - v44;
  v45 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v45 - 8);
  v254 = &v215 - v46;
  v47 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v47 - 8);
  v256 = &v215 - v48;
  v297 = sub_2C5258();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v215 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_6620C(&qword_3C8300);
  v253 = *(v291 - 8);
  __chkstk_darwin(v291);
  v252 = &v215 - v50;
  v258 = sub_6620C(&qword_3C19D8);
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v255 = &v215 - v51;
  v260 = sub_6620C(&qword_3C19E0);
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v53 = &v215 - v52;
  v54 = sub_6620C(&qword_3C19E8);
  __chkstk_darwin(v54);
  v56 = &v215 - v55;
  v57 = sub_6620C(&qword_3C19F0);
  __chkstk_darwin(v57);
  v59 = &v215 - v58;
  v270 = sub_6620C(&qword_3C19F8);
  __chkstk_darwin(v270);
  v61 = &v215 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v64 = &v215 - v63;
  v65 = sub_6620C(&qword_3C1A00);
  __chkstk_darwin(v65 - 8);
  v67 = &v215 - v66;
  v68 = type metadata accessor for ContentUnavailableComponentModel();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  __chkstk_darwin(v70);
  v74 = *(*(v322 + *(v72 + 68)) + 16);
  v320 = v72;
  if (v74)
  {
    goto LABEL_4;
  }

  v215 = v73;
  v216 = v54;
  v221 = v53;
  v217 = v57;
  v222 = v56;
  v218 = v59;
  v219 = v61;
  v223 = &v215 - v71;
  v220 = v64;
  sub_6932C(v322 + *(v72 + 64), v67, &qword_3C1A00);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    sub_69198(v67, &qword_3C1A00);
LABEL_4:
    v75 = v311;
    v321 = v311 + *(v310 + 88);
    v76 = sub_2C0A98();
    v77 = swift_conformsToProtocol2();
    if (v77 && v76 && ((*(v77 + 8))(v76, v77) & 1) != 0 && (v78 = v266, sub_2C1338(), v79 = v267, sub_2C1308(), sub_12598C(&qword_3C1B80, &type metadata accessor for ListItemViewModel.PerfHacks), v80 = v269, v81 = sub_2C6138(), v82 = *(v268 + 8), v82(v79, v80), v83 = (v82)(v78, v80), (v81 & 1) == 0))
    {
      __chkstk_darwin(v83);
      sub_6620C(&qword_3C1B88);
      sub_124970();
      v202 = v224;
      sub_2C3948();
      v203 = sub_72B74(&qword_3C1B28, &qword_3C19A0);
      v204 = v226;
      v205 = v227;
      sub_2C3FB8();
      (*(v225 + 8))(v202, v205);
      v206 = v234;
      sub_2C2898();
      *&v323 = v205;
      *(&v323 + 1) = v203;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v208 = v230;
      v209 = v231;
      v210 = v235;
      sub_2C4158();
      (*(v229 + 8))(v206, v210);
      (*(v228 + 8))(v204, v209);
      v211 = v295;
      sub_2C5248();
      *&v323 = v209;
      *(&v323 + 1) = v210;
      *&v324 = OpaqueTypeConformance2;
      *(&v324 + 1) = &protocol witness table for PlainListStyle;
      swift_getOpaqueTypeConformance2();
      v100 = v236;
      v212 = v233;
      sub_2C3A98();
      (*(v296 + 8))(v211, v297);
      (*(v232 + 8))(v208, v212);
      KeyPath = swift_getKeyPath();
      v214 = v100 + *(v274 + 36);
      *v214 = KeyPath;
      *(v214 + 8) = 1;
      v125 = &qword_3C19B8;
      sub_6932C(v100, v272, &qword_3C19B8);
      swift_storeEnumTagMultiPayload();
      sub_12439C();
      sub_1245E8();
      v126 = v273;
      sub_2C33C8();
      v193 = &qword_3C19D0;
      sub_6932C(v126, v314, &qword_3C19D0);
    }

    else
    {
      if (sub_2C0AE8())
      {
        if (sub_2C2348())
        {
          sub_124CA8(v322, v318, type metadata accessor for Shelf);
          sub_11BBB4(v317);
          (*(v298 + 16))(v319, v303, v299);
          sub_2C0AA8();
          v84 = v301;
          sub_124CA8(v75, v301, type metadata accessor for ShelfView);
          v85 = (*(v300 + 80) + 16) & ~*(v300 + 80);
          v86 = swift_allocObject();
          sub_125868(v84, v86 + v85, type metadata accessor for ShelfView);
          sub_6620C(&qword_3C1B70);
          sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf);
          v87 = sub_718D4(&qword_3C1B78);
          v88 = sub_718D4(&qword_3BDF60);
          v89 = sub_72B74(&unk_3C8340, &qword_3C8300);
          *&v323 = v291;
          *(&v323 + 1) = v89;
          v90 = swift_getOpaqueTypeConformance2();
          *&v323 = v88;
          *(&v323 + 1) = v90;
          v91 = swift_getOpaqueTypeConformance2();
          *&v323 = v87;
          *(&v323 + 1) = v91;
          swift_getOpaqueTypeConformance2();
          v92 = v240;
          sub_2C0848();
          v93 = v295;
          sub_2C5248();
          v94 = sub_72B74(&qword_3C1AD8, &qword_3C1988);
          v95 = v243;
          v96 = v276;
          sub_2C3A98();
          (*(v296 + 8))(v93, v297);
          (*(v241 + 8))(v92, v96);
          v97 = v244;
          v98 = v282;
          (*(v244 + 16))(v288, v95, v282);
          swift_storeEnumTagMultiPayload();
          *&v323 = v96;
          *(&v323 + 1) = v94;
          swift_getOpaqueTypeConformance2();
          v99 = sub_72B74(&qword_3C1AE0, &qword_3C1970);
          *&v323 = v289;
          *(&v323 + 1) = v99;
          swift_getOpaqueTypeConformance2();
          v100 = v286;
          sub_2C33C8();
          (*(v97 + 8))(v95, v98);
        }

        else
        {
          sub_6620C(&qword_3C17F8);
          v170 = v237;
          sub_2C4378();
          (*(v238 + 8))(v170, v239);
          sub_124CA8(v322, v318, type metadata accessor for Shelf);
          (*(v298 + 16))(v319, v303, v299);
          v171 = v301;
          sub_124CA8(v75, v301, type metadata accessor for ShelfView);
          v172 = (*(v300 + 80) + 16) & ~*(v300 + 80);
          v173 = swift_allocObject();
          sub_125868(v171, v173 + v172, type metadata accessor for ShelfView);
          (*(v245 + 104))(v247, enum case for ShelfCollage2.Layout.collageSwoosh<A, B>(_:), v246);
          *&v322 = sub_6620C(&qword_3C1B48);
          sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf);
          v174 = sub_718D4(&qword_3C1B50);
          v175 = sub_718D4(&qword_3C1B58);
          v176 = sub_718D4(&qword_3C1B60);
          v177 = sub_718D4(&qword_3C1B68);
          v178 = sub_718D4(&qword_3BDF60);
          v179 = sub_72B74(&unk_3C8340, &qword_3C8300);
          *&v323 = v291;
          *(&v323 + 1) = v179;
          v180 = swift_getOpaqueTypeConformance2();
          *&v323 = v178;
          *(&v323 + 1) = v180;
          v181 = swift_getOpaqueTypeConformance2();
          *&v323 = v177;
          *(&v323 + 1) = v181;
          v182 = swift_getOpaqueTypeConformance2();
          *&v323 = v176;
          *(&v323 + 1) = v182;
          v183 = swift_getOpaqueTypeConformance2();
          *&v323 = v175;
          *(&v323 + 1) = v183;
          v184 = swift_getOpaqueTypeConformance2();
          *&v323 = v174;
          *(&v323 + 1) = v184;
          swift_getOpaqueTypeConformance2();
          v185 = v248;
          sub_2C09D8();
          v186 = v295;
          sub_2C5248();
          v187 = sub_72B74(&qword_3C1AE0, &qword_3C1970);
          v188 = v250;
          v189 = v289;
          sub_2C3A98();
          (*(v296 + 8))(v186, v297);
          (*(v249 + 8))(v185, v189);
          v190 = v251;
          v191 = v290;
          (*(v251 + 16))(v288, v188, v290);
          swift_storeEnumTagMultiPayload();
          v192 = sub_72B74(&qword_3C1AD8, &qword_3C1988);
          *&v323 = v276;
          *(&v323 + 1) = v192;
          swift_getOpaqueTypeConformance2();
          *&v323 = v189;
          *(&v323 + 1) = v187;
          swift_getOpaqueTypeConformance2();
          v100 = v286;
          sub_2C33C8();
          (*(v190 + 8))(v188, v191);
        }

        v125 = &qword_3C1998;
        sub_6932C(v100, v306, &qword_3C1998);
        swift_storeEnumTagMultiPayload();
        sub_123ED4();
        sub_124034();
        v126 = v308;
      }

      else
      {
        sub_124CA8(v322, v318, type metadata accessor for Shelf);
        v101 = v292;
        sub_11F890(v292);
        sub_2C0AD8();
        (*(v293 + 8))(v101, v294);
        sub_11BBB4(v317);
        (*(v298 + 16))(v319, v303, v299);
        v102 = v301;
        sub_124CA8(v75, v301, type metadata accessor for ShelfView);
        v103 = (*(v300 + 80) + 16) & ~*(v300 + 80);
        *&v322 = swift_allocObject();
        sub_125868(v102, v322 + v103, type metadata accessor for ShelfView);
        v104 = v275;
        sub_124CA8(v75, v275, type metadata accessor for ShelfView);
        v105 = swift_allocObject();
        sub_125868(v104, v105 + v103, type metadata accessor for ShelfView);
        v311 = sub_6620C(&qword_3C1A08);
        v310 = sub_6620C(&qword_3C1A10);
        sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf);
        v106 = sub_718D4(&qword_3C1A18);
        v107 = sub_718D4(&qword_3C1A20);
        v108 = sub_718D4(&qword_3C1A28);
        v109 = sub_718D4(&qword_3C1A30);
        v110 = sub_718D4(&qword_3C1A38);
        v111 = sub_123910(&qword_3C1A40, &qword_3C1A38, &unk_2EBE20, sub_1239C0);
        *&v323 = v110;
        *(&v323 + 1) = v111;
        v112 = swift_getOpaqueTypeConformance2();
        *&v323 = v109;
        *(&v323 + 1) = v112;
        v113 = swift_getOpaqueTypeConformance2();
        *&v323 = v108;
        *(&v323 + 1) = v113;
        v114 = swift_getOpaqueTypeConformance2();
        *&v323 = v107;
        *(&v323 + 1) = v114;
        v115 = swift_getOpaqueTypeConformance2();
        *&v323 = v106;
        *(&v323 + 1) = v115;
        swift_getOpaqueTypeConformance2();
        sub_123AD4();
        v116 = v277;
        sub_2BFF78();
        v117 = v278;
        sub_2C36A8();
        *(&v324 + 1) = sub_2C36D8();
        *&v325 = &protocol witness table for ViewAlignedScrollTargetBehavior;
        sub_720C8(&v323);
        v118 = v283;
        v119 = v284;
        (*(v283 + 16))(v280, v117, v284);
        sub_2C36C8();
        (*(v118 + 8))(v117, v119);
        v100 = v287;
        v120 = v281;
        sub_2BFF68();
        (*(v279 + 8))(v116, v120);
        sub_68CD0(&v323);
        v121 = swift_getKeyPath();
        v122 = sub_2C4A08();
        v123 = v100 + *(v307 + 36);
        *v123 = v121;
        *(v123 + 8) = v122;
        *(v123 + 16) = v124 & 1;
        v125 = &qword_3C1950;
        sub_6932C(v100, v306, &qword_3C1950);
        swift_storeEnumTagMultiPayload();
        sub_123ED4();
        sub_124034();
        v126 = v308;
      }

      sub_2C33C8();
      v193 = &qword_3C1960;
      sub_6932C(v126, v314, &qword_3C1960);
    }

    swift_storeEnumTagMultiPayload();
    sub_124310();
    sub_1247B0();
    sub_2C33C8();
    sub_69198(v126, v193);
    return sub_69198(v100, v125);
  }

  v127 = v223;
  sub_125868(v67, v223, type metadata accessor for ContentUnavailableComponentModel);
  *(&v324 + 1) = v68;
  *&v325 = sub_12598C(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel);
  v128 = sub_720C8(&v323);
  sub_124CA8(v127, v128, type metadata accessor for ContentUnavailableComponentModel);
  sub_9F8B8();
  v129 = v252;
  sub_2BFCA8();
  v130 = v215;
  sub_124CA8(v127, v215, type metadata accessor for ContentUnavailableComponentModel);
  v131 = v295;
  sub_2C5238();
  v132 = v254;
  sub_6932C(v130 + *(v68 + 44), v254, &qword_3BF898);
  v133 = v132;
  v134 = v256;
  sub_69130(v133, v256, &qword_3BDF58);
  v135 = sub_72B74(&unk_3C8340, &qword_3C8300);
  v136 = v255;
  v137 = v291;
  sub_2C3A98();
  sub_69198(v134, &qword_3BDF58);
  *&v322 = *(v296 + 8);
  v138 = v297;
  (v322)(v131, v297);
  sub_1259D4(v130, type metadata accessor for ContentUnavailableComponentModel);
  (*(v253 + 8))(v129, v137);
  v139 = (v311 + *(v310 + 88));
  sub_2C5248();
  *&v323 = v137;
  *(&v323 + 1) = v135;
  swift_getOpaqueTypeConformance2();
  v319 = v139;
  v140 = v258;
  sub_2C3A98();
  (v322)(v131, v138);
  (*(v257 + 8))(v136, v140);
  v141 = sub_2C3788();
  v142 = v261;
  sub_11BBB4(v261);
  sub_2BFDF8();
  v144 = v143;
  v145 = *(v263 + 8);
  v146 = v142;
  v147 = v264;
  v145(v146, v264);
  v148 = 0uLL;
  v322 = 0u;
  v149 = 0uLL;
  if ((v144 & 1) == 0)
  {
    sub_2C24D8();
    *(&v149 + 1) = v150;
    *(&v148 + 1) = v151;
  }

  v317 = v149;
  v318 = v148;
  v152 = v222;
  (*(v259 + 32))(v222, v221, v260);
  v153 = v152 + *(v216 + 36);
  *v153 = v141;
  *(v153 + 24) = v317;
  *(v153 + 8) = v318;
  *(v153 + 40) = v144 & 1;
  v154 = sub_2C37A8();
  v155 = v262;
  sub_11BBB4(v262);
  sub_2BFE08();
  v157 = v156;
  v145(v155, v147);
  v158 = 0uLL;
  v159 = v321;
  v160 = v265;
  v161 = v218;
  if ((v157 & 1) == 0)
  {
    sub_2C24D8();
    *(&v158 + 1) = v162;
    *(&v164 + 1) = v163;
    v322 = v164;
  }

  v318 = v158;
  sub_69130(v222, v161, &qword_3C19E8);
  v165 = v161 + *(v217 + 36);
  *v165 = v154;
  *(v165 + 24) = v318;
  *(v165 + 8) = v322;
  *(v165 + 40) = v157 & 1;
  v166 = v292;
  sub_11F890(v292);
  v167 = v309;
  sub_2C0AD8();
  (*(v293 + 8))(v166, v294);
  v168 = sub_11528C();
  LOBYTE(v166) = sub_2BFD48(v168 & 1);
  (*(v160 + 8))(v167, v159);
  if ((v166 & 1) == 0 || (v169 = sub_2C0A98(), !swift_conformsToProtocol2()) || !v169)
  {
    sub_11BF30();
  }

  v195 = v220;
  v196 = v219;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v161, v196, &qword_3C19F0);
  v197 = (v196 + *(v270 + 36));
  v198 = v328;
  v197[4] = v327;
  v197[5] = v198;
  v197[6] = v329;
  v199 = v324;
  *v197 = v323;
  v197[1] = v199;
  v200 = v326;
  v197[2] = v325;
  v197[3] = v200;
  sub_69130(v196, v195, &qword_3C19F8);
  sub_6932C(v195, v272, &qword_3C19F8);
  swift_storeEnumTagMultiPayload();
  sub_12439C();
  sub_1245E8();
  v201 = v273;
  sub_2C33C8();
  sub_6932C(v201, v314, &qword_3C19D0);
  swift_storeEnumTagMultiPayload();
  sub_124310();
  sub_1247B0();
  sub_2C33C8();
  sub_69198(v201, &qword_3C19D0);
  sub_69198(v195, &qword_3C19F8);
  return sub_1259D4(v223, type metadata accessor for ContentUnavailableComponentModel);
}

uint64_t sub_11BAD4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy);
  v2 = sub_2C2568();
  v4 = v3;

  v6 = sub_25AF0C(v5, 0, v2, v4 & 1, &_swiftEmptyDictionarySingleton);

  *a1 = v6;
  return result;
}

uint64_t sub_11BBB4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_6620C(&qword_3C1880);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = sub_2C1A68();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C1958();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BFD68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShelfView();
  type metadata accessor for Shelf();
  sub_11F890(v8);
  sub_2C0AD8();
  (*(v6 + 8))(v8, v5);
  v13 = sub_11528C();
  v14 = sub_2BFD48(v13 & 1);
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    v15 = sub_2C0A98();
    if (swift_conformsToProtocol2())
    {
      if (v15)
      {
        return sub_2BFDE8();
      }
    }
  }

  v16 = v23;
  sub_114F48(v23);
  v18 = v24;
  v17 = v25;
  if ((*(v24 + 48))(v16, 1, v25) == 1)
  {
    sub_69198(v16, &qword_3C1880);
    return sub_2BFDE8();
  }

  v20 = v22;
  (*(v18 + 32))(v22, v16, v17);
  sub_114C98();
  sub_114B40();
  sub_2C1A38();
  sub_2BFDE8();
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_11BF30()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C1910);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_6620C(&qword_3C1880);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ShelfView();
  sub_6932C(v0 + *(v11 + 48), v7, &qword_3C1910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_69130(v7, v10, &qword_3C1880);
  }

  else
  {
    sub_2C5DD8();
    v12 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = sub_2C1A68();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_69198(v10, &qword_3C1880);
    return 0;
  }

  else
  {
    sub_114DF0();
    sub_2C1A48();
    v17 = v16;
    (*(v14 + 8))(v10, v13);
    return v17;
  }
}

uint64_t sub_11C238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_6620C(&qword_3C1BF0);
  __chkstk_darwin(v7);
  v12[1] = *(a1 + *(type metadata accessor for Shelf() + 68));

  sub_6620C(&qword_3C1938);
  sub_72B74(&qword_3C1BF8, &qword_3C1938);
  sub_2BFF38();
  swift_getKeyPath();
  sub_124CA8(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_125868(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShelfView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_125768;
  *(v10 + 24) = v9;
  sub_6620C(&qword_3C1BA0);
  sub_72B74(&qword_3C1C00, &qword_3C1BF0);
  sub_1249F4();
  return sub_2C4558();
}

double sub_11C4F4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v82 = a4;
  v6 = sub_2C5118();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v8 - 8);
  v77 = &v58 - v9;
  v78 = sub_2C5258();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2BE9B8();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C1A60);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = sub_6620C(&qword_3C1BC8);
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v59 = &v58 - v16;
  v65 = sub_6620C(&qword_3C1BC0);
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v18 = &v58 - v17;
  v67 = sub_6620C(&qword_3C1BB8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v58 - v19;
  v70 = sub_6620C(&qword_3C1C08);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v58 - v20;
  v83 = sub_6620C(&qword_3C1BA8);
  __chkstk_darwin(v83);
  v74 = &v58 - v21;
  v73 = sub_6620C(&qword_3C1C10);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v58 - v22;
  sub_691F8(a2, &v89);
  sub_9F8B8();
  sub_2BFCA8();
  KeyPath = swift_getKeyPath();
  v24 = v14;
  v25 = &v14[*(v12 + 36)];
  *v25 = KeyPath;
  v25[1] = a1;
  sub_691F8(a2, v85);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C18);
  if (swift_dynamicCast())
  {
    v26 = *(&v87 + 1);
    v27 = v88;
    v28 = sub_72084(&v86, *(&v87 + 1));
    *(&v90 + 1) = v26;
    v91 = *(v27 + 8);
    v29 = sub_720C8(&v89);
    (*(*(v26 - 8) + 16))(v29, v28, v26);
    sub_68CD0(&v86);
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_69198(&v86, &qword_3C1C20);
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
  }

  sub_1153E4(&v86);
  v30 = sub_1239F0();
  v31 = v59;
  sub_2C3CE8();
  sub_68CD0(&v86);
  sub_69198(v24, &qword_3C1A60);
  sub_69198(&v89, &qword_3BDFA0);
  *&v89 = v12;
  *(&v89 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3D08();
  (*(v58 + 8))(v31, v15);
  *&v89 = v15;
  *(&v89 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v63;
  v35 = v65;
  sub_2C3D78();
  (*(v60 + 8))(v18, v35);
  sub_72084(a2, a2[3]);
  sub_2C4CF8();
  sub_72084(a2, a2[3]);
  v36 = v61;
  sub_2C4CE8();
  *&v89 = v35;
  *(&v89 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v68;
  v38 = v67;
  sub_2C3D88();

  (*(v62 + 8))(v36, v64);
  (*(v66 + 8))(v34, v38);
  v39 = sub_2C46A8();
  v41 = v40;
  v42 = v74;
  v43 = &v74[*(v83 + 36)];
  v44 = v75;
  sub_2C5238();
  sub_72084(a2, a2[3]);
  v45 = v77;
  sub_2C57B8();
  sub_2C3A98();
  sub_69198(v45, &qword_3BDF58);
  (*(v76 + 8))(v44, v78);
  v46 = &v43[*(sub_6620C(&qword_3C1BD8) + 36)];
  *v46 = v39;
  v46[1] = v41;
  (*(v69 + 32))(v42, v37, v70);
  sub_72084(a2, a2[3]);
  swift_getDynamicType();
  sub_2C67E8();
  sub_72084(a2, a2[3]);
  sub_2C4CB8();
  v47 = sub_2C6178();
  v49 = v48;
  sub_68D90(&v89);
  *(&v90 + 1) = &type metadata for String;
  *&v89 = v47;
  *(&v89 + 1) = v49;
  v50 = (v84 + *(type metadata accessor for ShelfView() + 88));
  v52 = *v50;
  v51 = v50[1];
  *(&v87 + 1) = &type metadata for String;
  *&v86 = v52;
  *(&v86 + 1) = v51;

  v53 = v79;
  sub_2C5108();

  sub_69198(&v86, qword_3C0250);
  sub_69198(&v89, qword_3C0250);
  sub_124AE8();
  v54 = v71;
  sub_2C3B08();
  (*(v80 + 8))(v53, v81);
  sub_69198(v42, &qword_3C1BA8);
  v55 = v82;
  (*(v72 + 32))(v82, v54, v73);
  v56 = v55 + *(sub_6620C(&qword_3C1BA0) + 36);
  *(v56 + 32) = 0;
  result = 0.0;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  return result;
}

uint64_t sub_11D0C8@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy);
  v3 = sub_2C2568();
  v5 = v4;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = sub_25AF0C(KeyPath, 0, v3, v5 & 1, &_swiftEmptyDictionarySingleton);

  v10 = sub_25B3B8(v9);

  v11 = sub_25AC84(v6, 0, v7, 0, v10);

  v12 = sub_25B190(v8, 0, v11);

  *a1 = v12;
  return result;
}

uint64_t sub_11D290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_6620C(&qword_3C8300);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = sub_6620C(&qword_3BDF60);
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v22 = sub_6620C(&qword_3C1B78);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v19 - v13;
  sub_691F8(a1, &v27);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(a1, &v27);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3BDF98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
  }

  sub_1153E4(v24);
  v15 = sub_72B74(&unk_3C8340, &qword_3C8300);
  sub_2C3CE8();
  sub_68CD0(v24);
  (*(v7 + 8))(v9, v6);
  sub_69198(v25, &qword_3BDFA0);
  sub_72084(a1, a1[3]);
  sub_2C57B8();
  v27 = v6;
  v28 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3C18();
  sub_69198(v5, &qword_3BDF58);
  (*(v21 + 8))(v12, v10);
  v27 = v10;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_2C3C78();
  return (*(v20 + 8))(v14, v17);
}

uint64_t sub_11D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v67 = a3;
  v4 = sub_2BE9B8();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v6 - 8);
  v62 = &v45 - v7;
  v63 = sub_2C5258();
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C1168();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = sub_6620C(&qword_3C8300);
  v45 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v50 = sub_6620C(&qword_3BDF60);
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v20 = &v45 - v19;
  v51 = sub_6620C(&qword_3C1B68);
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v22 = &v45 - v21;
  v55 = sub_6620C(&qword_3C1B60);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v45 - v23;
  v61 = sub_6620C(&qword_3C1B58);
  v57 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = &v45 - v24;
  v60 = sub_6620C(&qword_3C1B50);
  v58 = *(v60 - 8);
  v25 = __chkstk_darwin(v60);
  v54 = &v45 - v26;
  v27 = *(v10 + 16);
  v27(v15, a1, v9, v25);
  sub_9F8B8();
  sub_2BFC98();
  (v27)(v12, a1, v9);
  sub_6620C(&qword_3BDF98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
  }

  sub_1153E4(v70);
  v28 = sub_72B74(&unk_3C8340, &qword_3C8300);
  sub_2C3CE8();
  sub_68CD0(v70);
  (*(v45 + 8))(v18, v16);
  sub_69198(&v71, &qword_3BDFA0);
  sub_2C1148();
  sub_2C1158();
  v29 = v56;
  sub_2C5238();
  sub_72084(&v71, *(&v72 + 1));
  v30 = v62;
  sub_2C57B8();
  v70[0] = v16;
  v70[1] = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v50;
  sub_2C3A98();
  sub_69198(v30, &qword_3BDF58);
  (*(v59 + 8))(v29, v63);
  (*(v46 + 8))(v20, v32);
  sub_68CD0(&v71);
  sub_2C1158();
  *&v71 = v32;
  *(&v71 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v47;
  v35 = v51;
  sub_2C3D08();
  (*(v48 + 8))(v22, v35);
  sub_2C1158();
  *&v71 = v35;
  *(&v71 + 1) = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v53;
  v38 = v55;
  sub_2C3D78();
  (*(v49 + 8))(v34, v38);
  sub_2C1148();
  sub_72084(&v71, *(&v72 + 1));
  sub_2C4CF8();
  sub_2C1148();
  sub_72084(v70, v70[3]);
  v39 = v64;
  sub_2C4CE8();
  v68 = v38;
  v69 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v54;
  v42 = v61;
  sub_2C3D88();

  (*(v65 + 8))(v39, v66);
  (*(v57 + 8))(v37, v42);
  sub_68CD0(v70);
  sub_68CD0(&v71);
  *&v71 = v42;
  *(&v71 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v60;
  sub_2C3C78();
  return (*(v58 + 8))(v41, v43);
}