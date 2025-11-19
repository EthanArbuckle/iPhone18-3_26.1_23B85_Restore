uint64_t sub_100535E70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = [Strong isCloud], swift_unknownObjectRelease(), (v2 & 1) == 0))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3 || (v4 = [v3 isLocal], swift_unknownObjectRelease(), (v4 & 1) == 0))
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = [v5 isStore];
        swift_unknownObjectRelease();
        if (v6)
        {
          return 0;
        }
      }
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = [v7 isSample];
    swift_unknownObjectRelease();
    if (v8)
    {
      return 0;
    }
  }

  v9 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    return 0;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    return 1;
  }

  v12 = [v11 isPreordered];
  swift_unknownObjectRelease();
  return v12 ^ 1;
}

uint64_t sub_100535FB4(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a2 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload);
  *(a2 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload) = v2 & 1;
  sub_100534CC4(v3);
  sub_100017E74();
  swift_allocObject();
  swift_weakInit();

  sub_1007A2CD4();
}

uint64_t sub_100536074()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005353C0();
  }

  return result;
}

uint64_t sub_1005360CC()
{
  v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10002B130(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_listener);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10053619C(uint64_t a1)
{
  v25 = a1;
  v1 = sub_1007A1C54();
  v28 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1C24();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1007A1CC4();
  v24 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  sub_1007A1CB4();
  *v10 = 1;
  (*(v8 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v7);
  sub_1007A1D14();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_100017E74();
  v19 = sub_1007A2D74();
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1005367DC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A22170;
  v21 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v21);

  (*(v28 + 8))(v3, v1);
  (*(v26 + 8))(v6, v27);
  return (v18)(v17, v24);
}

uint64_t _s5Books14BuyButtonStateO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0D448;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100536614()
{
  result = qword_100AE9070;
  if (!qword_100AE9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9070);
  }

  return result;
}

uint64_t type metadata accessor for BuyButtonInteractor()
{
  result = qword_100AE90B0;
  if (!qword_100AE90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005366CC()
{
  result = sub_10079ACE4();
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

uint64_t storeEnumTagSinglePayload for BookReaderToolbarPopover(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

Swift::Int sub_100536828(Swift::UInt64 a1, char a2)
{
  sub_1007A3C04();
  if (a2)
  {
    sub_1007A3C24(0);
  }

  else
  {
    sub_1007A3C24(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_1007A3C34(v4);
  }

  return sub_1007A3C44();
}

void sub_1005368A4()
{
  if (*(v0 + 8) == 1)
  {
    sub_1007A3C24(0);
  }

  else
  {
    v1 = *v0;
    sub_1007A3C24(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_1007A3C34(v2);
  }
}

Swift::Int sub_1005368F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1007A3C04();
  if (v2 == 1)
  {
    sub_1007A3C24(0);
  }

  else
  {
    sub_1007A3C24(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_1007A3C34(v3);
  }

  return sub_1007A3C44();
}

uint64_t sub_100536968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1005369A0()
{
  result = qword_100AE9168;
  if (!qword_100AE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9168);
  }

  return result;
}

uint64_t sub_100536A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005369A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100536A68()
{
  sub_100536AA8();
  sub_10079C834();
  return v1;
}

unint64_t sub_100536AA8()
{
  result = qword_100AE9170;
  if (!qword_100AE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9170);
  }

  return result;
}

char *sub_100536B0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079B3D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_textField;
  type metadata accessor for SidebarTextField();
  *&v2[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = &v2[OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_configuration];
  v9[3] = type metadata accessor for SidebarTextFieldContentConfiguration();
  v9[4] = sub_100538210();
  v10 = sub_1002256EC(v9);
  sub_100538268(a1, v10);
  sub_10000A7C4(0, &qword_100AE9200);
  (*(v5 + 16))(v7, a1, v4);
  *&v2[OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_listContentView] = sub_1007A2DE4();
  v11 = type metadata accessor for SidebarTextFieldContentView();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100536D64();
  [*&v12[OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_textField] addTarget:v12 action:"_editingDidEndOnExit" forControlEvents:0x80000];

  sub_1005381B4(a1);
  return v12;
}

void sub_100536D64()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_listContentView];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_textField];
  [v0 addSubview:v2];
  v3 = [v1 textLayoutGuide];
  if (v3)
  {
    v36 = v3;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100813130;
    v5 = [v1 leadingAnchor];
    v6 = [v0 safeAreaLayoutGuide];
    v7 = [v6 leadingAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:-2.0];
    *(v4 + 32) = v8;
    v9 = [v1 trailingAnchor];
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 trailingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v4 + 40) = v12;
    v13 = [v1 topAnchor];
    v14 = [v0 safeAreaLayoutGuide];
    v15 = [v14 topAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v4 + 48) = v16;
    v17 = [v1 bottomAnchor];
    v18 = [v0 safeAreaLayoutGuide];
    v19 = [v18 bottomAnchor];

    v20 = [v17 constraintEqualToAnchor:v19];
    *(v4 + 56) = v20;
    v21 = [v2 leadingAnchor];
    v22 = [v36 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v4 + 64) = v23;
    v24 = [v2 trailingAnchor];
    v25 = [v0 safeAreaLayoutGuide];
    v26 = [v25 trailingAnchor];

    v27 = [v24 constraintEqualToAnchor:v26 constant:-9.0];
    *(v4 + 72) = v27;
    v28 = [v2 topAnchor];
    v29 = [v0 safeAreaLayoutGuide];
    v30 = [v29 topAnchor];

    v31 = [v28 constraintEqualToAnchor:v30 constant:2.0];
    *(v4 + 80) = v31;
    v32 = [v2 bottomAnchor];
    v33 = [v0 safeAreaLayoutGuide];
    v34 = [v33 bottomAnchor];

    v35 = [v32 constraintEqualToAnchor:v34 constant:-2.0];
    *(v4 + 88) = v35;
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v37 activateConstraints:isa];
  }
}

uint64_t sub_1005372BC()
{
  v1 = v0;
  v62 = sub_10079B2F4();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079B3D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1001F1160(&qword_100AE91E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for SidebarTextFieldContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_configuration;
  swift_beginAccess();
  sub_100009864(v1 + v17, v65);
  sub_1001F1160(&qword_100AE91E8);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v12, 0, 1, v13);
    sub_100538150(v12, v16);
    v59 = v5;
    v63 = v16;
    v20 = *(v5 + 16);
    v20(v9, v63, v4);
    v58 = objc_opt_self();
    v21 = [v58 clearColor];
    v22 = sub_10079B304();
    sub_10079B2E4();
    v22(v65, 0);
    v23 = *(v1 + OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_listContentView);
    v65[3] = v4;
    v65[4] = &protocol witness table for UIListContentConfiguration;
    v24 = sub_1002256EC(v65);
    v57 = v9;
    v60 = v4;
    v20(v24, v9, v4);
    v25 = v63;
    sub_1007A2DD4();
    v26 = *(v1 + OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_textField);
    [v26 setDelegate:swift_unknownObjectWeakLoadStrong()];
    swift_unknownObjectRelease();
    sub_10079B314();
    v27 = sub_10079B2B4();
    v29 = v64 + 8;
    v28 = *(v64 + 8);
    v30 = v62;
    v28(v3, v62);
    [v26 setFont:v27];

    sub_10079B394();
    v31 = v29;
    if (v32)
    {
      v33 = sub_1007A2214();
    }

    else
    {
      v33 = 0;
    }

    [v26 setPlaceholder:v33];

    v35 = *(v25 + *(v13 + 24));
    [v26 setUserInteractionEnabled:*(v25 + *(v13 + 24))];
    if ([v26 isFirstResponder])
    {
      v36 = [v58 systemBackgroundColor];
      v37 = *(v13 + 28);
      v64 = v31;
      v38 = *(v25 + v37);
      v39 = objc_opt_self();
      v40 = [v39 traitCollectionWithUserInterfaceStyle:v38];
      v41 = v3;
      v42 = v23;
      v43 = [v36 resolvedColorWithTraitCollection:v40];

      [v26 setBackgroundColor:v43];
      v44 = v61;
      sub_10079B274();
      sub_10079B314();
      (*(v59 + 8))(v44, v60);
      v45 = sub_10079B2D4();
      v28(v41, v30);
      v46 = [v39 traitCollectionWithUserInterfaceStyle:v38];
      v47 = [v45 resolvedColorWithTraitCollection:v46];

      [v26 setTextColor:v47];
      v23 = v42;
    }

    else
    {
      v48 = [v58 clearColor];
      [v26 setBackgroundColor:v48];

      v49 = sub_10063FF9C();
      [v26 setAttributedText:v49];

      if (v35)
      {
        [v26 becomeFirstResponder];
      }
    }

    v50 = [v23 subviews];
    sub_10000A7C4(0, &qword_100AD7620);
    v51 = sub_1007A25E4();

    if (v51 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v53 = 0;
      while (1)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v54 = sub_1007A3784();
        }

        else
        {
          if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v54 = *(v51 + 8 * v53 + 32);
        }

        v55 = v54;
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        sub_10000A7C4(0, &qword_100AE91F0);
        if ([v55 isKindOfClass:swift_getObjCClassFromMetadata()])
        {

          [v55 setIsAccessibilityElement:0];

          goto LABEL_26;
        }

        ++v53;
        if (v56 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:

LABEL_26:
    (*(v59 + 8))(v57, v60);
    return sub_1005381B4(v63);
  }

  else
  {
    v19(v12, 1, 1, v13);
    return sub_1005380E8(v12);
  }
}

uint64_t sub_100537B38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_configuration;
  swift_beginAccess();
  return sub_100009864(v1 + v3, a1);
}

uint64_t sub_100537B90(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC5Books27SidebarTextFieldContentView_configuration;
  swift_beginAccess();
  sub_100537ECC((v1 + v3), a1);
  swift_endAccess();
  sub_1005372BC();
  return sub_1000074E0(a1);
}

uint64_t (*sub_100537BFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100537C60;
}

uint64_t sub_100537C60(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1005372BC();
  }

  return result;
}

id sub_100537E70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t *sub_100537ECC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1005380E8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE91E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100538150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarTextFieldContentConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005381B4(uint64_t a1)
{
  v2 = type metadata accessor for SidebarTextFieldContentConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100538210()
{
  result = qword_100AE91F8;
  if (!qword_100AE91F8)
  {
    type metadata accessor for SidebarTextFieldContentConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE91F8);
  }

  return result;
}

uint64_t sub_100538268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarTextFieldContentConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static EventReporter.setupLibraryAnalyticsDataProvider()()
{
  sub_100798004();
  sub_100538318();
  return sub_100797F84();
}

unint64_t sub_100538318()
{
  result = qword_100AE9208;
  if (!qword_100AE9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9208);
  }

  return result;
}

void sub_10053836C(id a1, SEL a2)
{
  sub_100798004();
  sub_100538318();
  sub_100797F84();
}

id sub_1005383BC(int a1, id a2)
{
  result = [a2 newUIMenuElement];
  if (result)
  {
    v3 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id ToolbarUIButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ToolbarUIButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id ToolbarUIButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToolbarUIButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void *ToolbarButton.symbolTintColor.getter()
{
  v1 = OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ToolbarButton.symbolTintColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setTintColor:v5];
}

void (*ToolbarButton.symbolTintColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1005387C8;
}

void sub_1005387C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3 + 24) setTintColor:*(*(v3 + 24) + *(v3 + 32))];
  }

  free(v3);
}

uint64_t ToolbarButton.size.getter()
{
  v1 = OBJC_IVAR____TtC5Books13ToolbarButton_size;
  swift_beginAccess();
  return *(v0 + v1);
}

id ToolbarButton.size.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5Books13ToolbarButton_size;
  swift_beginAccess();
  v1[v3] = a1 & 1;
  return [v1 setNeedsLayout];
}

id (*ToolbarButton.size.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10053892C;
}

id sub_10053892C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t ToolbarButton.inheritsSymbolConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC5Books13ToolbarButton_inheritsSymbolConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ToolbarButton.inheritsSymbolConfiguration.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5Books13ToolbarButton_inheritsSymbolConfiguration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ToolbarButton.highlightEnabled.getter()
{
  v1 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id ToolbarButton.highlightEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer);
  if (v4)
  {
    [v4 setEnabled:a1 & 1];
    a1 = *(v1 + v3);
  }

  return [*(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightView) setHidden:(a1 & 1) == 0];
}

void (*ToolbarButton.highlightEnabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100538BD4;
}

void sub_100538BD4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer);
    if (v5)
    {
      [v5 setEnabled:*(v4 + v3[4])];
      v4 = v3[3];
    }

    [*(v4 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightView) setHidden:(*(v4 + v3[4]) & 1) == 0];
  }

  free(v3);
}

_BYTE *ToolbarButton.init(size:style:type:)(char a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor] = 0;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_size] = 1;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_type] = 1;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_style] = 1;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_inheritsSymbolConfiguration] = 1;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_highlightEnabled] = 1;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_isHovering] = 0;
  v3[OBJC_IVAR____TtC5Books13ToolbarButton_hasKey] = 0;
  v20 = OBJC_IVAR____TtC5Books13ToolbarButton_backgroundView;
  type metadata accessor for BackdropView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [v4 layer];
  [v5 setCornerRadius:6.0];

  v6 = [v4 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  [v4 setUserInteractionEnabled:0];
  [v4 setClipsToBounds:1];
  [v4 setAutoresizingMask:18];
  v7 = [objc_allocWithZone(UIView) init];
  v8 = objc_opt_self();
  v9 = [v8 secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v9];

  [v7 setUserInteractionEnabled:0];
  [v7 setAutoresizingMask:18];
  [v4 bounds];
  [v7 setFrame:?];
  [v4 addSubview:v7];

  *&v3[v20] = v4;
  v10 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightView;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = [v8 clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  [v13 setCornerRadius:6.0];

  v14 = [v11 layer];
  [v14 setCornerCurve:kCACornerCurveContinuous];

  [v11 setUserInteractionEnabled:0];
  [v11 setAutoresizingMask:18];
  *&v3[v10] = v11;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for ToolbarButton();
  v15 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15[OBJC_IVAR____TtC5Books13ToolbarButton_style] = a2;
  v16 = OBJC_IVAR____TtC5Books13ToolbarButton_size;
  swift_beginAccess();
  v15[v16] = a1 & 1;
  v15[OBJC_IVAR____TtC5Books13ToolbarButton_type] = a3;
  v17 = v15;
  sub_100539090(v18);

  return v17;
}

id sub_100539090(double a1)
{
  v2 = v1;
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  v3 = [objc_allocWithZone(UIHoverGestureRecognizer) initWithTarget:v1 action:"didHover:"];
  v4 = *&v1[OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer];
  *&v1[OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer] = v3;
  v5 = v3;

  if (v5)
  {
    [v2 addGestureRecognizer:v5];
  }

  v6 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightView;
  v7 = *&v2[OBJC_IVAR____TtC5Books13ToolbarButton_highlightView];
  [v2 bounds];
  [v7 setFrame:?];

  v8 = sub_10053A4D8();
  [v2 setTitleColor:v8 forState:0];

  v9 = sub_10053A4D8();
  [v2 setTintColor:v9];

  [v2 setAdjustsImageWhenHighlighted:0];
  top = 0.0;
  [v2 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  v11 = [v2 traitCollection];
  [v11 displayScale];
  v13 = v12;

  left = 1.0;
  if (v13 == 1.0)
  {
    [v2 setTitleEdgeInsets:{0.0, 0.0, 1.0, 0.0}];
    bottom = 0.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v2 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  [v2 setImageEdgeInsets:{top, left, bottom, right}];
  [v2 setContentMode:4];
  v17 = [v2 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setLineBreakMode:4];
  }

  v19 = *&v2[v6];
  result = [v2 imageView];
  if (result)
  {
    v21 = result;
    [v2 insertSubview:v19 belowSubview:result];

    v22 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v22];

    if (v2[OBJC_IVAR____TtC5Books13ToolbarButton_style])
    {
      if (v2[OBJC_IVAR____TtC5Books13ToolbarButton_style] != 1)
      {
        [v2 insertSubview:*&v2[OBJC_IVAR____TtC5Books13ToolbarButton_backgroundView] atIndex:0];
        sub_100539FE8();
      }
    }

    else
    {
      v23 = [objc_opt_self() effectWithStyle:8];
      v24 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v23];

      v25 = v24;
      [v2 bounds];
      [v25 setFrame:?];
      [v25 setUserInteractionEnabled:0];
      [v25 setClipsToBounds:1];
      v26 = [v25 layer];
      [v26 setCornerRadius:6.0];

      [v25 setAutoresizingMask:18];
      [v2 insertSubview:v25 atIndex:0];
    }

    v27 = [objc_opt_self() defaultCenter];
    [v27 addObserver:v2 selector:"accessibilityContrastChanged" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];

    sub_10000A7C4(0, &qword_100AE15B0);
    sub_1007A2E04();
    sub_1007A3104();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ToolbarButton.sendActions(for:)(UIControlEvents a1)
{
  if ((a1 & 0x40) != 0)
  {
    if (!*(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_type))
    {
      v3 = [v1 isSelected] ^ 1;
      goto LABEL_6;
    }

    if (*(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_type) != 1)
    {
      v3 = 1;
LABEL_6:
      [v1 setSelected:v3];
    }
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v4, "sendActionsForControlEvents:", a1);
}

void ToolbarButton.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100401D3C(a1);
  if (v4)
  {
    v5 = v4;
    [v4 locationInView:v2];
    v7 = v6;
    v9 = v8;
    [v2 bounds];
    v13.x = v7;
    v13.y = v9;
    if (CGRectContainsPoint(v14, v13))
    {
      if (!*(v2 + OBJC_IVAR____TtC5Books13ToolbarButton_type))
      {
        v10 = [v2 isSelected] ^ 1;
        goto LABEL_7;
      }

      if (*(v2 + OBJC_IVAR____TtC5Books13ToolbarButton_type) != 1)
      {
        v10 = 1;
LABEL_7:
        [v2 setSelected:v10];
      }
    }
  }

  sub_10000A7C4(0, &qword_100AE2248);
  sub_10053B0B4();
  isa = sub_1007A2824().super.isa;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v12, "touchesEnded:withEvent:", isa, a2);
}

void sub_100539810()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer);
  if (v1)
  {
    v2 = v1;
    [v2 setEnabled:!UIAccessibilityIsReduceTransparencyEnabled()];
  }

  v3 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightView;
  v4 = [*(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightView) layer];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v6 = 0.0;
  if (IsReduceTransparencyEnabled)
  {
    v6 = 1.0;
  }

  [v4 setBorderWidth:v6];

  v7 = [*(v0 + v3) layer];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (*(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_hasKey) == 1)
    {
      v8 = sub_10053A4D8();
    }

    else
    {
      v8 = [objc_opt_self() quaternaryLabelColor];
    }

    v9 = v8;
    v10 = [v8 CGColor];

    [v7 setBorderColor:v10];
  }

  else
  {
    v10 = 0;
    [v7 setBorderColor:0];
  }
}

id sub_100539A34(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 _userInterfaceActiveAppearance];

  v5 = v4 == 1;
  v6 = OBJC_IVAR____TtC5Books13ToolbarButton_hasKey;
  v1[OBJC_IVAR____TtC5Books13ToolbarButton_hasKey] = v5;
  v7 = OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8)
  {
    v9 = *&v1[v7];
  }

  else
  {
    v9 = sub_10053A4D8();
    v8 = 0;
  }

  v10 = v8;
  [v1 setTintColor:v9];

  v11 = [*&v1[OBJC_IVAR____TtC5Books13ToolbarButton_highlightView] layer];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (v1[v6] == 1)
    {
      v12 = sub_10053A4D8();
    }

    else
    {
      v12 = [objc_opt_self() quaternaryLabelColor];
    }

    v14 = v12;
    v13 = [v12 CGColor];
  }

  else
  {
    v13 = 0;
  }

  [v11 setBorderColor:v13];

  v15 = [v1 traitCollection];
  v16 = [v15 userInterfaceStyle];

  if (!a1 || v16 != [a1 userInterfaceStyle])
  {
    sub_100539FE8();
  }

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  if (!a1 || (result = [a1 displayScale], v19 != v21))
  {
    v22 = [v1 traitCollection];
    [v22 displayScale];
    v24 = v23;

    left = 1.0;
    if (v24 == 1.0)
    {
      top = 0.0;
      [v1 setTitleEdgeInsets:{0.0, 0.0, 1.0, 0.0}];
      bottom = 0.0;
      right = 0.0;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      [v1 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
    }

    [v1 setImageEdgeInsets:{top, left, bottom, right}];
    return [v1 setNeedsLayout];
  }

  return result;
}

void ToolbarButton.isEnabled.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v5, "setEnabled:", a1 & 1);
  if ([v1 isEnabled])
  {
    v3 = sub_10053A4D8();
  }

  else
  {
    v3 = [objc_opt_self() tertiaryLabelColor];
  }

  v4 = v3;
  [v1 setTitleColor:v3 forStates:0];
}

Swift::Void __swiftcall ToolbarButton.setImage(_:for:)(UIImage_optional _, UIControlState a2)
{
  v3 = *&_.is_nil;
  isa = _.value.super.isa;
  if (_.value.super.isa && [(objc_class *)_.value.super.isa isSymbolImage]&& (v5 = OBJC_IVAR____TtC5Books13ToolbarButton_inheritsSymbolConfiguration, swift_beginAccess(), v2[v5] == 1))
  {
    v6 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:16.0];
    v7 = [(objc_class *)isa imageByApplyingSymbolConfiguration:v6];
  }

  else
  {
    v7 = isa;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v8, "setImage:forState:", v7, v3);
}

void sub_100539FE8()
{
  if (v0[OBJC_IVAR____TtC5Books13ToolbarButton_style] != 2)
  {
    return;
  }

  v1 = [*&v0[OBJC_IVAR____TtC5Books13ToolbarButton_backgroundView] subviews];
  sub_10000A7C4(0, &qword_100AD7620);
  v2 = sub_1007A25E4();

  if (v2 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1007A3784();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 layer];

  v6 = [v0 traitCollection];
  [v6 userInterfaceStyle];

  sub_1007A2254();
  v7 = sub_1007A2214();

  [v5 setCompositingFilter:v7];
}

void sub_10053A1C8(void *a1)
{
  v2 = [a1 state];
  if ((v2 - 1) <= 3)
  {
    *(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_isHovering) = 0x101u >> (8 * (v2 - 1));
    v3 = *(v1 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightView);
    v4 = sub_10053A354();
    [v3 setBackgroundColor:v4];
  }
}

id sub_10053A354()
{
  if ([v0 isHighlighted] & 1) != 0 || (objc_msgSend(v0, "isSelected") & 1) != 0 || (*(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_isHovering))
  {
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceStyle];

    if (v2 == 1)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }

    if (*(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_isHovering))
    {
      v4 = 0.05;
    }

    else
    {
      v4 = 0.0;
    }

    if ([v0 isHighlighted])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      v6 = 0.15;
      if (!IsReduceTransparencyEnabled)
      {
        v6 = 0.05;
      }

      v4 = v4 + v6;
    }

    if ([v0 isSelected])
    {
      v4 = v4 + 0.05;
    }

    v7 = objc_allocWithZone(UIColor);

    return [v7 initWithWhite:v3 alpha:v4];
  }

  else
  {
    v9 = [objc_opt_self() clearColor];

    return v9;
  }
}

id sub_10053A4D8()
{
  if ((v0[OBJC_IVAR____TtC5Books13ToolbarButton_hasKey] & 1) == 0)
  {
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v8 = v0[OBJC_IVAR____TtC5Books13ToolbarButton_style];
      v7 = objc_opt_self();
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    v2 = [objc_opt_self() labelColor];
    v3 = [v2 colorWithAlphaComponent:0.55];
LABEL_12:
    v9 = v3;

    return v9;
  }

  if (![v0 isHighlighted])
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 1)
    {
      v6 = v0[OBJC_IVAR____TtC5Books13ToolbarButton_style];
      v7 = objc_opt_self();
      if (v6)
      {
LABEL_8:
        v1 = [v7 secondaryLabelColor];
        goto LABEL_14;
      }

LABEL_13:
      v1 = [v7 labelColor];
      goto LABEL_14;
    }

    v2 = [objc_opt_self() labelColor];
    v3 = [v2 colorWithAlphaComponent:0.8];
    goto LABEL_12;
  }

  v1 = [objc_opt_self() labelColor];
LABEL_14:

  return v1;
}

id sub_10053A6BC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ToolbarButton();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_10053A708(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ToolbarButton();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_10053A7A4(char a1, SEL *a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v11, *a2, a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC5Books13ToolbarButton_highlightView];
  v6 = sub_10053A354();
  [v5 setBackgroundColor:v6];

  v7 = OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8)
  {
    v9 = *&v2[v7];
  }

  else
  {
    v9 = sub_10053A4D8();
    v8 = 0;
  }

  v10 = v8;
  [v2 setTintColor:v9];
}

uint64_t ToolbarButton.intrinsicContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolbarButton();
  objc_msgSendSuper2(&v2, "intrinsicContentSize");
  return swift_beginAccess();
}

void sub_10053AA24()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightView);
}

id sub_10053AA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id _s5Books15ToolbarUIButtonC22contextMenuInteraction_016configurationForE10AtLocationSo09UIContextE13ConfigurationCSgSo0keF0C_So7CGPointVtF_0()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books15ToolbarUIButton_tuiMenu];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = objc_opt_self();
    v15 = sub_10053B284;
    v16 = v2;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1005272AC;
    v14 = &unk_100A22460;
    v4 = _Block_copy(&v11);
    v5 = v1;
  }

  else
  {
    v6 = [v0 menu];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v3 = objc_opt_self();
    v15 = sub_10053B254;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1005272AC;
    v14 = &unk_100A22410;
    v4 = _Block_copy(&v11);
  }

  v9 = [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
  return v9;
}

void _s5Books13ToolbarButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_hoverRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_symbolTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_size) = 1;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_type) = 1;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_style) = 1;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_inheritsSymbolConfiguration) = 1;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_highlightEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC5Books13ToolbarButton_hasKey) = 0;
  v12 = OBJC_IVAR____TtC5Books13ToolbarButton_backgroundView;
  type metadata accessor for BackdropView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [v1 layer];
  [v2 setCornerRadius:6.0];

  v3 = [v1 layer];
  [v3 setCornerCurve:kCACornerCurveContinuous];

  [v1 setUserInteractionEnabled:0];
  [v1 setClipsToBounds:1];
  [v1 setAutoresizingMask:18];
  v4 = [objc_allocWithZone(UIView) init];
  v5 = objc_opt_self();
  v6 = [v5 secondarySystemBackgroundColor];
  [v4 setBackgroundColor:v6];

  [v4 setUserInteractionEnabled:0];
  [v4 setAutoresizingMask:18];
  [v1 bounds];
  [v4 setFrame:?];
  [v1 addSubview:v4];

  *(v0 + v12) = v1;
  v7 = OBJC_IVAR____TtC5Books13ToolbarButton_highlightView;
  v8 = [objc_allocWithZone(UIView) init];
  v9 = [v5 clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 layer];
  [v10 setCornerRadius:6.0];

  v11 = [v8 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  [v8 setUserInteractionEnabled:0];
  [v8 setAutoresizingMask:18];
  *(v0 + v7) = v8;
  sub_1007A38A4();
  __break(1u);
}

unint64_t sub_10053B0B4()
{
  result = qword_100AE9270;
  if (!qword_100AE9270)
  {
    sub_10000A7C4(255, &qword_100AE2248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9270);
  }

  return result;
}

unint64_t sub_10053B120()
{
  result = qword_100AE9278;
  if (!qword_100AE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9278);
  }

  return result;
}

unint64_t sub_10053B178()
{
  result = qword_100AE9280;
  if (!qword_100AE9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9280);
  }

  return result;
}

unint64_t sub_10053B1D0()
{
  result = qword_100AE9288;
  if (!qword_100AE9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9288);
  }

  return result;
}

void *sub_10053B254()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10053B2A4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE92E0);
  v1 = sub_100008B98(v0, qword_100AE92E0);
  if (qword_100AD1880 != -1)
  {
    swift_once();
  }

  v2 = sub_100008B98(v0, qword_100B23598);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10053B36C(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v6 = Strong;
    __chkstk_darwin(Strong);
    v5[2] = &v6;
    if ((sub_10058D090(sub_10053DD00, v5, v1) & 1) == 0)
    {
      v4 = *&v3[OBJC_IVAR____TtC5Books24SinglePageViewController_contentView];
      [v4 removeFromSuperview];
    }
  }
}

id sub_10053B4D4()
{
  sub_1007A3744(34);

  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result frame];

    type metadata accessor for CGRect(0);
    v3._countAndFlagsBits = sub_1007A22E4();
    sub_1007A23D4(v3);

    v4._countAndFlagsBits = 2629676;
    v4._object = 0xE300000000000000;
    sub_1007A23D4(v4);

    v5._countAndFlagsBits = sub_100721B28();
    sub_1007A23D4(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_1007A23D4(v6);
    return 0xD00000000000001ALL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10053B6A4()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for SinglePageViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v0 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 setClipsToBounds:1];

  type metadata accessor for AlwaysPassthroughView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  [v8 setAutoresizingMask:18];
  v19 = [v3 clearColor];
  [v8 setBackgroundColor:v19];

  v20 = [v0 view];
  if (v20)
  {
    v21 = v20;
    [v20 addSubview:v8];

    v22 = *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_contentContainerView];
    *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_contentContainerView] = v8;

    v23 = sub_10053B9A4(2);
    v24 = *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController];
    *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController] = v23;
    v25 = v23;

    v26 = sub_10053B9A4(67);
    v27 = *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController];
    *&v0[OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController] = v26;
    v28 = v26;

    sub_10053BC74();
    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10053B9A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AE9378);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  sub_1002B6F38(a1, 1, &v28 - v6);
  v7[*(v5 + 44)] = sub_10079D294();
  v8 = objc_allocWithZone(sub_1001F1160(&qword_100AE9380));
  v9 = sub_10079CBC4();
  v10 = [v9 view];
  v11 = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

  v12 = v10;
  [v10 setClipsToBounds:1];
  [v12 setAutoresizingMask:18];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor:v13];

  [v2 addChildViewController:v9];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  result = [v9 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  [v15 addSubview:result];

  result = [v9 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  [result bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame:{v20, v22, v24, v26}];
  result = [v9 view];
  if (result)
  {
    v27 = result;
    [result setAutoresizingMask:18];

    [v9 didMoveToParentViewController:v2];
    v11 = v12;
LABEL_8:

    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_10053BC74()
{
  v1 = sub_1007A0F74();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AEB380);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController);
  if (v9)
  {
    v10 = [v9 view];
    if (!v10)
    {
      __break(1u);
      goto LABEL_15;
    }

    v11 = v10;
    [v10 setHidden:1];
  }

  v12 = *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController);
  if (!v12)
  {
    return;
  }

  v13 = [v12 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (*(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_enabled) == 1 && (v15 = *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel), *(v15 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) == 1))
  {
    v16 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
    swift_beginAccess();
    sub_1000077D8(v15 + v16, v8, &unk_100AEB380);
    if ((*(v2 + 48))(v8, 1, v1))
    {
      sub_100007840(v8, &unk_100AEB380);
      v17 = 0;
    }

    else
    {
      (*(v2 + 16))(v4, v8, v1);
      sub_100007840(v8, &unk_100AEB380);
      v18 = sub_1007A0F54();
      (*(v2 + 8))(v4, v1);
      v19 = *(v18 + 16);

      v17 = v19 == 1;
    }
  }

  else
  {
    v17 = 1;
  }

  [v14 setHidden:v17];
}

void sub_10053BF24(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController);
  if (v3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v8 = v4;
      v5 = *(v1 + OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController);
      if (v5)
      {
        v6 = [v5 view];
        if (v6)
        {
          v7 = v6;
          if ([v6 isHidden] != (a1 & 1))
          {
            [v7 setHidden:a1 & 1];
          }

          if ([v8 isHidden] != (a1 & 1))
          {
            [v8 setHidden:a1 & 1];
          }
        }
      }
    }
  }
}

void sub_10053C030(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Books24SinglePageViewController_contentContainerView);
  if (v2)
  {
    v3 = v1;
    v21 = v2;
    v5 = [a1 superview];
    if (!v5 || (v6 = v5, sub_10025D2FC(), v7 = v21, v8 = sub_1007A3184(), v6, v7, (v8 & 1) == 0))
    {
      [v21 addSubview:a1];
      [a1 setAutoresizingMask:36];
      v9 = OBJC_IVAR____TtC5Books24SinglePageViewController_contentView;
      [*(v3 + OBJC_IVAR____TtC5Books24SinglePageViewController_contentView) removeFromSuperview];
      v10 = *(v3 + v9);
      *(v3 + v9) = a1;
      v11 = a1;
    }

    [v21 bounds];
    [a1 setFrame:?];
    if (qword_100AD1810 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AE92E0);
    v13 = a1;
    v14 = sub_10079ACC4();
    v15 = sub_1007A29A4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      [v13 frame];
      type metadata accessor for CGRect(0);
      v18 = sub_1007A22E4();
      v20 = sub_1000070F4(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "adding content view w frame %s", v16, 0xCu);
      sub_1000074E0(v17);
    }

    else
    {
    }
  }
}

id sub_10053C2BC()
{
  v1 = v0;
  v101 = sub_10079FD44();
  v2 = *(v101 - 8);
  __chkstk_darwin(v101);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE9370);
  __chkstk_darwin(v5);
  v103 = &v93 - v6;
  v7 = sub_1007A0F44();
  v100 = *(v7 - 8);
  __chkstk_darwin(v7);
  v99 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v9 - 8);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_1007A0F74();
  v21 = *(v20 - 8);
  v105 = v20;
  v106 = v21;
  v22 = __chkstk_darwin(v20);
  v104 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 view];
  if (result)
  {
    v25 = result;
    v96 = v4;
    [result bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v97 = OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController;
    v34 = [*&v1[OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController] view];
    [v34 setFrame:{v27, v29, v31, v33}];

    if (qword_100AD1810 != -1)
    {
      swift_once();
    }

    v35 = sub_10079ACE4();
    sub_100008B98(v35, qword_100AE92E0);
    v36 = sub_10079ACC4();
    v37 = sub_1007A29A4();
    v38 = os_log_type_enabled(v36, v37);
    v102 = v2;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v94 = v5;
      v93 = v13;
      v40 = v16;
      v41 = v39;
      v42 = swift_slowAlloc();
      v95 = v1;
      v43 = v7;
      v44 = v42;
      v111[0] = v42;
      *v41 = 136315138;
      v107 = v27;
      v108 = v29;
      v109 = v31;
      v110 = v33;
      type metadata accessor for CGRect(0);
      v45 = sub_1007A22E4();
      v47 = sub_1000070F4(v45, v46, v111);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "headerFrame now %s", v41, 0xCu);
      sub_1000074E0(v44);
      v7 = v43;
      v1 = v95;

      v16 = v40;
      v13 = v93;
      v5 = v94;
    }

    v48 = OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel;
    v49 = *&v1[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
    v50 = OBJC_IVAR____TtC5Books17PageCurlViewModel_spread;
    swift_beginAccess();
    sub_1000077D8(v49 + v50, v19, &unk_100AEB380);
    if ((*(v106 + 48))(v19, 1, v105) == 1)
    {
      return sub_100007840(v19, &unk_100AEB380);
    }

    (*(v106 + 32))(v104, v19, v105);
    v51 = *(sub_1007A0F54() + 16);

    if (v51 != 2)
    {
      return (*(v106 + 8))(v104, v105);
    }

    result = [v1 view];
    if (result)
    {
      v52 = result;
      [result bounds];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v95 = v48;
      v61 = *&v1[v48];
      v62 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
      swift_beginAccess();
      sub_1000077D8(v61 + v62, v16, &qword_100AE6A10);
      v63 = sub_1007A0F54();
      v64 = *(v63 + 16);
      if (v64)
      {
        v66 = v99;
        v65 = v100;
        (*(v100 + 16))(v99, v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v100 + 72) * (v64 - 1), v7);

        sub_1007A0F34();
        (*(v65 + 8))(v66, v7);
        v67 = v101;
        v68 = v102;
      }

      else
      {

        v67 = v101;
        v68 = v102;
        (*(v102 + 56))(v13, 1, 1, v101);
      }

      v69 = *(v5 + 48);
      v70 = v16;
      v71 = v16;
      v72 = v103;
      sub_1000077D8(v70, v103, &qword_100AE6A10);
      v73 = v72;
      sub_1000077D8(v13, v72 + v69, &qword_100AE6A10);
      v74 = *(v68 + 48);
      if (v74(v73, 1, v67) == 1)
      {
        sub_100007840(v13, &qword_100AE6A10);
        v75 = v103;
        sub_100007840(v71, &qword_100AE6A10);
        v76 = v74(v75 + v69, 1, v67);
        v77 = &selRef_textContainer;
        v78 = v95;
        if (v76 == 1)
        {
          sub_100007840(v75, &qword_100AE6A10);
          v79 = 1;
LABEL_20:
          v86 = *&v78[v1];
          if ((v79 ^ *(v86 + OBJC_IVAR____TtC5Books17PageCurlViewModel_rightToLeft)))
          {
            v54 = v54 - v58;
          }

          if (*(v86 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide))
          {
            v87 = *&v1[v97];
            if (v87)
            {
              v88 = [v87 v77[364]];
              if (v88)
              {
                v89 = v88;
                [v88 setFrame:{v54, v56, v58 + v58, v60}];
              }
            }
          }

          v90 = *&v1[OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController];
          if (v90)
          {
            v91 = [v90 v77[364]];
            if (v91)
            {
              v92 = v91;
              [v91 setFrame:{v54, v56, v58 + v58, v60}];
            }
          }

          return (*(v106 + 8))(v104, v105);
        }
      }

      else
      {
        v101 = v71;
        v80 = v98;
        sub_1000077D8(v73, v98, &qword_100AE6A10);
        if (v74(v73 + v69, 1, v67) != 1)
        {
          v81 = v102;
          v82 = v73 + v69;
          v83 = v96;
          (*(v102 + 32))(v96, v82, v67);
          sub_10053DD54(&unk_100AEB800);
          v84 = v67;
          v79 = sub_1007A2124();
          v85 = *(v81 + 8);
          v85(v83, v84);
          sub_100007840(v13, &qword_100AE6A10);
          sub_100007840(v101, &qword_100AE6A10);
          v85(v80, v84);
          sub_100007840(v73, &qword_100AE6A10);
          v77 = &selRef_textContainer;
          v78 = v95;
          goto LABEL_20;
        }

        sub_100007840(v13, &qword_100AE6A10);
        v75 = v103;
        sub_100007840(v101, &qword_100AE6A10);
        (*(v102 + 8))(v80, v67);
        v77 = &selRef_textContainer;
        v78 = v95;
      }

      sub_100007840(v75, &qword_100AE9370);
      v79 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10053CD30()
{
  v1 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v1 - 8);
  v3 = v58 - v2;
  if (qword_100AD1810 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  v5 = sub_100008B98(v4, qword_100AE92E0);
  v6 = v0;
  v7 = sub_10079ACC4();
  v8 = sub_1007A29A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v9 = 67109378;
    *(v9 + 4) = *(*&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel] + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle);

    *(v9 + 8) = 2080;
    v59 = *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
    v60 = *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 16];
    type metadata accessor for CGRect(0);
    v11 = sub_1007A22E4();
    v13 = sub_1000070F4(v11, v12, &v62);

    *(v9 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "updateView: showTitle? %{BOOL}d contentRect: %s", v9, 0x12u);
    sub_1000074E0(v10);
  }

  else
  {
  }

  sub_10053C2BC();
  v14 = OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v38 = OBJC_IVAR____TtC5Books24SinglePageViewController_contentView;
    v39 = *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentView];
    if (v39)
    {
      [v39 removeFromSuperview];
      v40 = *&v6[v38];
      *&v6[v38] = 0;
    }

    v41 = [v6 view];
    if (v41)
    {
      v42 = v41;
      v43 = [objc_opt_self() clearColor];
      [v42 setBackgroundColor:v43];

      v44 = [v6 view];
      if (v44)
      {
        v45 = v44;
        [v44 setFrame:{*&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 8], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 16], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 24]}];

        goto LABEL_22;
      }

LABEL_28:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = Strong;
  v17 = [v6 view];
  if (!v17)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = 0.0;
  if (v6[OBJC_IVAR____TtC5Books24SinglePageViewController_enabled])
  {
    v19 = 1.0;
  }

  [v17 setAlpha:v19];

  v20 = [v6 view];
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = v20;
  v58[1] = v5;
  v22 = OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor;
  [v20 setBackgroundColor:*&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor]];

  if (*(*&v6[v14] + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) == 1)
  {
    type metadata accessor for AlwaysPassthroughView();
    v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v24 = *&v6[v22];
    v25 = v23;
    [v25 setBackgroundColor:v24];
    v26 = &v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect];
    [v25 setFrame:{*&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 8], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 16], *&v6[OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect + 24]}];
    v27 = [objc_allocWithZone(CAPortalLayer) init];
    v28 = [v16 layer];
    [v27 setSourceLayer:v28];

    v29 = [v25 layer];
    [v29 addSublayer:v27];

    v30 = *&v6[v22];
    v31 = v26[2];
    v32 = v26[3];
    v33 = type metadata accessor for PageFramedContentSnapshotView();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC5Books29PageFramedContentSnapshotView_snapshotView] = v25;
    v61.receiver = v34;
    v61.super_class = v33;
    v35 = v25;
    v36 = v30;
    v37 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, v31, v32);
    [v37 setBackgroundColor:v36];
    [v37 addSubview:v35];
    [v35 frame];
    [v35 setFrame:{0.0, 0.0}];

    sub_10053C030(v37);
    [v27 setMatchesPosition:1];

LABEL_21:
    goto LABEL_22;
  }

  sub_10053C030(v16);
  v46 = *&v6[v14];
  v47 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
  swift_beginAccess();
  sub_1000077D8(v46 + v47, v3, &qword_100AE6A10);
  v48 = sub_10079FD44();
  if ((*(*(v48 - 8) + 48))(v3, 1, v48) != 1)
  {
    sub_100007840(v3, &qword_100AE6A10);
    sub_10053BF24(1);
    goto LABEL_21;
  }

  sub_100007840(v3, &qword_100AE6A10);
LABEL_22:
  v49 = v6;
  v50 = sub_10079ACC4();
  v51 = sub_1007A29A4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    *v52 = 136315138;

    v54 = sub_100721B28();
    v56 = v55;

    v57 = sub_1000070F4(v54, v56, &v62);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "updateView for %s", v52, 0xCu);
    sub_1000074E0(v53);
  }
}

void sub_10053D46C()
{
  if (qword_100AD1810 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE92E0);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;

    v7 = sub_100721B28();
    v9 = v8;

    v10 = sub_1000070F4(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Curl begin with %s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  v11 = [v2 view];
  if (v11)
  {
    v12 = v11;
    [v11 setAlpha:1.0];

    if (v2[OBJC_IVAR____TtC5Books24SinglePageViewController_enabled] == 1)
    {
      sub_10053BF24((*(*&v2[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel] + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle) & 1) == 0);
    }

    v13 = *&v2[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
    if (*(v13 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *(v13 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = v14;
    sub_10053CD30();
  }

  else
  {
    __break(1u);
  }
}

void sub_10053D6A0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books24SinglePageViewController_contentView;
  v5 = *&v2[OBJC_IVAR____TtC5Books24SinglePageViewController_contentView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
    *&v2[v4] = 0;
  }

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    sub_10053BC74();
    v10 = *&v2[OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel];
    *(v10 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live) = a1 & 1;
    *(v10 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState) = 0;
    if (qword_100AD1810 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE92E0);
    v12 = v2;
    oslog = sub_10079ACC4();
    v13 = sub_1007A29A4();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;

      v16 = sub_100721B28();
      v18 = v17;

      v19 = sub_1000070F4(v16, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Curl ended with %s)", v14, 0xCu);
      sub_1000074E0(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10053D8E4()
{
  v1 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_10079FD44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_1007A0F04();
  v14 = v8[6];
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
  }

  else
  {
    v21 = v8[4];
    v21(v13, v6, v7);
    v16 = *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_viewModel);
    v17 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
    swift_beginAccess();
    sub_1000077D8(v16 + v17, v3, &qword_100AE6A10);
    if (v14(v3, 1, v7) != 1)
    {
      v21(v10, v3, v7);
      sub_10053DD54(&unk_100AF4240);
      v18 = sub_1007A20D4();
      v19 = v8[1];
      v19(v10, v7);
      v19(v13, v7);
      return v18 & 1;
    }

    (v8[1])(v13, v7);
    v15 = v3;
  }

  sub_100007840(v15, &qword_100AE6A10);
  v18 = 0;
  return v18 & 1;
}

id sub_10053DBFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SinglePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053DD54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10079FD44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10053DD98()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_contentRect);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR____TtC5Books24SinglePageViewController_pageBackgroundColor;
  *(v0 + v2) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_curlSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_contentContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_sampleHeaderChromeViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5Books24SinglePageViewController_titleChromeViewController) = 0;
  sub_1007A38A4();
  __break(1u);
}

unint64_t sub_10053DE78()
{
  result = qword_100AE9388;
  if (!qword_100AE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9388);
  }

  return result;
}

id sub_10053DEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v7 = sub_100796CF4();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1007A21D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = sub_100540118(a1);
  [v20 additionalSafeAreaInsets];
  [v20 setAdditionalSafeAreaInsets:?];

  result = [v20 collectionView];
  if (result)
  {
    v22 = result;
    v36 = a1;
    v23 = v39;
    sub_10053E2A4(a1, result, v37, v38, v39, a5);
    sub_100540398(a1, v23);
    v39 = v22;
    sub_1007A2154();
    v24 = v12;
    sub_100796C94();
    v25 = v14;
    v26 = *(v14 + 16);
    v27 = v13;
    v26(v16, v19, v13);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v30 = v40;
    v31 = v12;
    v32 = v41;
    (*(v40 + 16))(v9, v31, v41);
    sub_1007A22D4();
    (*(v30 + 8))(v24, v32);
    (*(v25 + 8))(v19, v27);
    v33 = sub_1007A2214();

    v34 = v39;
    [v39 setAccessibilityLabel:v33];

    sub_1001F1160(&qword_100AE93A0);
    sub_10079D224();

    v35 = v42;
    swift_unknownObjectWeakAssign();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10053E2A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = sub_1001F1160(&qword_100AE93A0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v28 - v15;
  (*(v13 + 16))(v28 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = objc_allocWithZone(sub_1001F1160(&qword_100AE93B8));
  v20 = a2;
  v21 = sub_10079B434();
  v22 = sub_10079B484();
  sub_1001F1160(&qword_100AE93C0);
  sub_10079B474();
  v22(v29, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;

  v24 = sub_10079B484();
  sub_10079B464();
  v24(v29, 0);
  sub_10079D224();
  v25 = v28[1];
  v26 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v27 = *&v25[v26];
  *&v25[v26] = v21;
}

id sub_10053E564(void *a1)
{
  sub_100540BCC();
  [a1 additionalSafeAreaInsets];

  return [a1 setAdditionalSafeAreaInsets:?];
}

id sub_10053E5D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = objc_allocWithZone(_s11CoordinatorCMa());

  result = sub_10051EB3C(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_10053E634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100542590();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10053E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100542590();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10053E6FC()
{
  sub_100542590();
  sub_10079D194();
  __break(1u);
}

uint64_t sub_10053E728(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v35 = a2;
  v29 = a1;
  v34 = sub_1001F1160(&qword_100AE93A0);
  v3 = *(v34 - 8);
  v31 = *(v3 + 64);
  __chkstk_darwin(v34);
  v32 = &v28 - v4;
  v5 = sub_1001F1160(&qword_100AE93E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_10079B564();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079B544();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10079B5A4();
  v16 = *(v30 - 8);
  v17 = __chkstk_darwin(v30);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v12, v17);
  sub_10079B574();
  sub_10079B594();
  v20 = sub_10065AA10(v29);
  if (v20 <= 1)
  {
    if (v20)
    {
      _UISolariumEnabled();
    }

    v21 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
    goto LABEL_7;
  }

  v21 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:);
  if (v20 - 2 < 2)
  {
LABEL_7:
    (*(v9 + 104))(v7, *v21, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    goto LABEL_8;
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:), v8);
LABEL_8:
  sub_10079B584();
  v22 = v32;
  v23 = v34;
  (*(v3 + 16))(v32, v33, v34);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + v24, v22, v23);
  sub_10079B534();
  sub_10000A7C4(0, &qword_100AE93F0);
  v26 = sub_1007A2FC4();
  (*(v16 + 8))(v19, v30);
  return v26;
}

id sub_10053EBA8()
{
  sub_1001F1160(&qword_100AE93A0);
  sub_10079D224();
  v0 = sub_1005213EC();

  if (v0)
  {
    sub_1001F1160(&unk_100AD8160);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100811390;
    *(v1 + 32) = v0;
    sub_10000A7C4(0, &qword_100AE93F8);
    v2 = v0;
    isa = sub_1007A25D4().super.isa;

    v0 = [objc_opt_self() configurationWithActions:isa];
  }

  return v0;
}

uint64_t sub_10053ECB4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[3];
  v37 = a3[2];
  *v38 = v3;
  *&v38[15] = *(a3 + 63);
  v4 = a3[1];
  v35 = *a3;
  v36 = v4;
  sub_1001F1160(&qword_100AE93A0);
  sub_10079D224();
  v5 = v31;
  v6 = v35;
  v7 = v36;
  if ((v38[18] >> 6) > 1u)
  {
    v23 = v31;
    v9 = *(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v36) << 16)) << 32);
    v10 = *(&v36 + 1);
    v11 = *&v38[16] | (v38[18] << 16);
    if (v38[18] >> 6 != 2)
    {
      v31 = v35;
      LOBYTE(v32) = v36;
      BYTE7(v32) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v36) << 16)) << 32)) >> 48;
      *(&v32 + 5) = *(&v36 + 5);
      *(&v32 + 1) = *(&v36 + 1);
      *(&v32 + 1) = *(&v36 + 1);
      v33 = v37;
      *v34 = *v38;
      v34[18] = BYTE2(v11) & 0x3F;
      *&v34[16] = *&v38[16];
      v22 = *v38;
      v21 = v37;
      sub_100529328(&v35, &v27);

      sub_100529328(&v35, &v27);
      type metadata accessor for SidebarLabelListCell();
      v8 = sub_1007A2C04();
      v29 = v33;
      *v30 = *v34;
      *&v30[15] = *&v34[15];
      v27 = v31;
      v28 = v32;
      sub_100007840(&v27, &qword_100AE8CD8);
      v15 = v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item;
      v31 = *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item);
      v17 = *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 32);
      v16 = *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 48);
      v18 = *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 63);
      v32 = *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 16);
      *&v34[15] = v18;
      v33 = v17;
      *v34 = v16;
      *v15 = v6;
      *(v15 + 16) = v7;
      *(v15 + 23) = BYTE6(v9);
      *(v15 + 21) = WORD2(v9);
      *(v15 + 17) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = v21;
      *(v15 + 48) = v22;
      *(v15 + 66) = BYTE2(v11) & 0x3F;
      *(v15 + 64) = v11;
      sub_100007840(&v31, &qword_100AE8CD8);
      sub_10079D224();

      v19 = v24;
      *(v8 + OBJC_IVAR____TtC5Books20SidebarLabelListCell_inlineEditingDelegate + 8) = &off_100A21A80;
      swift_unknownObjectWeakAssign();

      return v8;
    }

    v27 = v35;
    LOBYTE(v28) = v36;
    BYTE7(v28) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v36) << 16)) << 32)) >> 48;
    *(&v28 + 5) = *(&v36 + 5);
    *(&v28 + 1) = *(&v36 + 1);
    *(&v28 + 1) = *(&v36 + 1);
    v29 = v37;
    *v30 = *v38;
    v30[18] = BYTE2(v11) & 0x3F;
    *&v30[16] = *&v38[16];

    sub_100529328(&v35, &v31);
    type metadata accessor for SidebarLabelListCell();
    v8 = sub_1007A2C04();

    v33 = v29;
    *v34 = *v30;
    *&v34[15] = *&v30[15];
    v31 = v6;
    v32 = v28;
    v12 = &qword_100AE8CD8;
    v13 = &v31;
    goto LABEL_15;
  }

  if (v38[18] >> 6)
  {
    *&v27 = v35;

    sub_100529328(&v35, &v31);
    sub_10000A7C4(0, &qword_100AE8C80);
    type metadata accessor for SidebarViewModel.SearchFieldModel(0);
    v8 = sub_1007A2C04();
    sub_10049F8FC(&v35);
    sub_1007A2E94();
    if (*(&v32 + 1))
    {
      sub_1001F1160(&qword_100AE91E8);
      if (swift_dynamicCast())
      {
        if (v24)
        {
          sub_1005422E8(&v24, &v27);
          sub_10079D224();
          v14 = v31;
          swift_unknownObjectWeakAssign();

          *(&v32 + 1) = &type metadata for SidebarSearchFieldContentConfiguration;
          *&v33 = sub_100542344();
          *&v31 = swift_allocObject();
          sub_10040727C(&v27, v31 + 16);
          sub_1007A2EA4();

          sub_100542398(&v27);
          return v8;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
      }
    }

    else
    {

      sub_100007840(&v31, &qword_100AED110);
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    v12 = &qword_100AE93D8;
    v13 = &v24;
LABEL_15:
    sub_100007840(v13, v12);
    return v8;
  }

  *&v27 = v35;
  *(&v27 + 1) = *(&v35 + 1);
  LOBYTE(v28) = v36 & 1;

  sub_100529328(&v35, &v31);
  sub_10000A7C4(0, &qword_100AE8C78);
  v8 = sub_1007A2C04();

  sub_10049F8FC(&v35);
  return v8;
}

BOOL sub_10053F230(__int128 *a1)
{
  v1 = a1[1];
  v26 = *a1;
  v27 = v1;
  *&v28[31] = *(a1 + 63);
  v2 = a1[3];
  *v28 = a1[2];
  *&v28[16] = v2;
  v3 = v28[34] >> 6;
  if ((v3 - 2) >= 2)
  {
    if (v3)
    {
      v24 = type metadata accessor for SidebarViewModel.SearchFieldModel(0);
      v25 = sub_100542290();
      v21 = v26;
    }

    else
    {
      v24 = &type metadata for SidebarViewModel.HeaderModel;
      v25 = sub_100529188();
      LOBYTE(v21) = v26;
      v22 = *(&v26 + 1);
      v23 = v27 & 1;
    }
  }

  else
  {
    v4 = *&v28[24];
    v6 = *(&v27 + 1);
    v5 = *v28;
    v7 = (*(&v27 + 1) << 8) | ((*(&v27 + 5) | (BYTE7(v27) << 16)) << 40) | v27;
    v8 = v28[32] & 1;
    v9 = v28[33] & 1;
    v10 = v28[34] & 1;
    v24 = &type metadata for SidebarViewModel.ItemModel;
    v25 = sub_1005290E0();
    v11 = swift_allocObject();
    v21 = v11;
    *(v11 + 16) = v26;
    *(v11 + 32) = v7;
    *(v11 + 40) = v6;
    *(v11 + 48) = v5;
    *(v11 + 56) = *&v28[8];
    *(v11 + 72) = v4;
    *(v11 + 80) = v8;
    *(v11 + 81) = v9;
    *(v11 + 82) = v10;
  }

  sub_100529328(&v26, v15);
  sub_1001F1160(&qword_100AE8D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (v28[34] >> 6) > 2u;
  }

  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v16[0] = *v20;
  *(v16 + 15) = *&v20[15];
  v12 = v17;

  sub_100529134(v15);
  if (v12 == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL))
  {

    return 0;
  }

  v14 = sub_1007A3AB4();

  result = 0;
  if ((v14 & 1) == 0)
  {
    return (v28[34] >> 6) > 2u;
  }

  return result;
}

uint64_t sub_10053F464(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v2 = sub_1001F1160(&qword_100AE9390);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - v4;
  v6 = sub_1001F1160(&qword_100AE93C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  sub_1001F1160(&qword_100AE93D0);
  result = sub_10079B424();
  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v45 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v43 = v7 + 8;
    v44 = v7 + 16;
    v14 = (v3 + 8);
    v34 = v6;
    v35 = v5;
    v36 = v2;
    v37 = v12;
    v38 = result;
    v39 = v7;
    v32 = v9;
    v33 = v14;
    while (v13 < *(v11 + 16))
    {
      (*(v7 + 16))(v9, v45 + *(v7 + 72) * v13, v6);
      sub_10079B5C4();
      (*(v7 + 8))(v9, v6);
      v15 = sub_10079B4F4();
      (*v14)(v5, v2);
      sub_1005420D4();
      result = sub_1007A2604();
      if ((result & 1) == 0)
      {
        v16 = 0;
        v17 = *(v15 + 16);
        v18 = v15 - 40;
        v19 = _swiftEmptyArrayStorage;
LABEL_8:
        v20 = v18 + 72 * v16;
        while (1)
        {
          if (v17 == v16)
          {

            v46 = v19;
            v47 = 0u;
            v48 = 0u;
            v49 = 0;
            v50 = 5;
            sub_10079B8C4();

            v11 = v38;
            v7 = v39;
            v12 = v37;
            goto LABEL_4;
          }

          if (v16 >= *(v15 + 16))
          {
            break;
          }

          ++v16;
          v21 = (v20 + 72);
          v22 = *(v20 + 138) >> 6;
          v20 += 72;
          if (v22 > 2)
          {
            v23 = v18;
            v24 = *v21;
            v25 = v21[1];
            v26 = v21[3];
            v41 = v21[2];
            v42 = v24;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10066C0D4(0, *(v19 + 2) + 1, 1, v19);
              v19 = result;
            }

            v28 = *(v19 + 2);
            v27 = *(v19 + 3);
            if (v28 >= v27 >> 1)
            {
              result = sub_10066C0D4((v27 > 1), v28 + 1, 1, v19);
              v18 = v23;
              v19 = result;
            }

            else
            {
              v18 = v23;
            }

            *(v19 + 2) = v28 + 1;
            v29 = &v19[48 * v28];
            v30 = v41;
            *(v29 + 4) = v42;
            *(v29 + 5) = v25;
            *(v29 + 6) = v30;
            *(v29 + 7) = v26;
            *(v29 + 8) = 0;
            v29[72] = -3;
            v5 = v35;
            v2 = v36;
            v6 = v34;
            v9 = v32;
            v14 = v33;
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (++v13 == v12)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_10053F854(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v46 = result + 32;
  v47 = a2 + 32;
  v53 = v4;
  v54 = v5;
  while (1)
  {
    if (v3 == v4)
    {
      v57 = 0;
      v58 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v59 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 16711422;
      v12 = v4;
      goto LABEL_8;
    }

    if (v3 >= v4)
    {
      break;
    }

    v13 = (v47 + 72 * v3);
    v14 = v13[3];
    v65 = v13[2];
    *v66 = v14;
    *&v66[15] = *(v13 + 63);
    v15 = v13[1];
    v63 = *v13;
    v64 = v15;
    v16 = __OFADD__(v3, 1);
    v12 = v3 + 1;
    if (v16)
    {
      goto LABEL_51;
    }

    v6 = *(&v63 + 1);
    v8 = *(&v64 + 1);
    v17 = v64;
    v59 = v65;
    v57 = v63;
    v58 = *(&v65 + 1);
    v10 = *&v66[8];
    v9 = *v66;
    v11 = *&v66[16] | (v66[18] << 16);
    result = sub_100529328(&v63, v60);
    v7 = v17;
    v5 = v54;
LABEL_8:
    v56 = v12;
    if (v2 == v5)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 16711422;
      v55 = v5;
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_50;
      }

      v27 = v46 + 72 * v2;
      v28 = *(v27 + 48);
      v65 = *(v27 + 32);
      *v66 = v28;
      *&v66[15] = *(v27 + 63);
      v29 = *(v27 + 16);
      v63 = *v27;
      v64 = v29;
      v16 = __OFADD__(v2, 1);
      v30 = v2 + 1;
      if (v16)
      {
        goto LABEL_52;
      }

      v55 = v30;
      v52 = v11;
      v48 = *(&v63 + 1);
      v49 = v64;
      v50 = v63;
      v51 = v10;
      v31 = v9;
      v32 = *(&v64 + 1);
      v23 = *(&v65 + 1);
      v33 = v65;
      v34 = *&v66[8];
      v35 = *v66;
      v26 = *&v66[16] | (v66[18] << 16);
      v36 = v6;
      v37 = v8;
      v38 = v7;
      sub_100529328(&v63, v60);
      v25 = v34;
      v24 = v35;
      v19 = v48;
      v20 = v49;
      v21 = v32;
      v9 = v31;
      v7 = v38;
      v8 = v37;
      v6 = v36;
      v22 = v33;
      v18 = v50;
      v10 = v51;
      v11 = v52;
    }

    v39 = v26 & 0xFEFEFE;
    if ((~v11 & 0xFEFEFE) == 0)
    {
      if (v39 == 16711422)
      {
        return 1;
      }

      *&v63 = v18;
      *(&v63 + 1) = v19;
      *&v64 = v20;
      *(&v64 + 1) = v21;
      *&v65 = v22;
      *(&v65 + 1) = v23;
      *v66 = v24;
      *&v66[8] = v25;
      *&v66[16] = v26;
      v40 = HIWORD(v26);
LABEL_45:
      v66[18] = v40;
      v45 = &v63;
LABEL_46:
      sub_100007840(v45, &qword_100AE8CD0);
      return 0;
    }

    v40 = HIWORD(v11);
    if (v39 == 16711422)
    {
      *&v63 = v57;
      *(&v63 + 1) = v6;
      *&v64 = v7;
      *(&v64 + 1) = v8;
      *&v65 = v59;
      *(&v65 + 1) = v58;
      *v66 = v9;
      *&v66[8] = v10;
      *&v66[16] = v11;
      goto LABEL_45;
    }

    v60[0] = v57;
    v60[1] = v6;
    v60[2] = v7;
    v60[3] = v8;
    v60[4] = v59;
    v60[5] = v58;
    v60[6] = v9;
    v60[7] = v10;
    v62 = BYTE2(v11);
    v61 = v11;
    *&v63 = v18;
    *(&v63 + 1) = v19;
    *&v64 = v20;
    *(&v64 + 1) = v21;
    *&v65 = v22;
    *(&v65 + 1) = v23;
    *v66 = v24;
    *&v66[8] = v25;
    *&v66[16] = v26;
    v41 = (v11 >> 22) & 3;
    v66[18] = BYTE2(v26);
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        if ((v26 & 0xC00000) != 0x800000)
        {
          goto LABEL_40;
        }
      }

      else if (((v26 >> 22) & 3) != 3)
      {
        goto LABEL_40;
      }

      if (v57 != v18 || v6 != v19) && (v42 = v21, v43 = v7, v44 = sub_1007A3AB4(), v21 = v42, v7 = v43, (v44 & 1) == 0) || (v7 != v20 || v8 != v21) && (sub_1007A3AB4() & 1) == 0 || (v59 != v22 || v58 != v23) && (sub_1007A3AB4() & 1) == 0 || ((v11 ^ v26) & 1) != 0 || (((v26 & 0x100 ^ v11 & 0xFFFF00) >> 8))
      {
LABEL_40:
        sub_100007840(&v63, &qword_100AE8CD0);
        v45 = v60;
        goto LABEL_46;
      }

      sub_100007840(v60, &qword_100AE8CD0);
      result = sub_100007840(&v63, &qword_100AE8CD0);
      if (((v26 ^ v11) & 0x10000) != 0)
      {
        return 0;
      }
    }

    else if (v41)
    {
      if ((v26 & 0xC00000) != 0x400000)
      {
        goto LABEL_40;
      }

      sub_100007840(v60, &qword_100AE8CD0);
      result = sub_100007840(&v63, &qword_100AE8CD0);
      if (v57 != v18)
      {
        return 0;
      }
    }

    else
    {
      if ((v26 & 0xFFFFFF) >= 0x400000)
      {
        goto LABEL_40;
      }

      sub_100007840(v60, &qword_100AE8CD0);
      result = sub_100007840(&v63, &qword_100AE8CD0);
      if (v18 != v57)
      {
        return 0;
      }
    }

    v4 = v53;
    v5 = v54;
    v2 = v55;
    v3 = v56;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

__n128 sub_10053FD28@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10053FDE4(__int128 *a1)
{
  v2 = a1[3];
  v15[2] = a1[2];
  v15[3] = v2;
  v15[4] = a1[4];
  v16 = *(a1 + 80);
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[2];
  v5 = a1[4];
  v12 = a1[3];
  v13 = v5;
  v14 = *(a1 + 80);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  v11 = v4;

  sub_100542128(v15, v8);
  return sub_10079B9B4();
}

uint64_t sub_10053FEAC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10053FF2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_10053FFA8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100540028()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

id sub_10054009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_100540118(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE93A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1005423EC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054009C;
  aBlock[3] = &unk_100A22668;
  v10 = _Block_copy(aBlock);
  v11 = [v9 initWithSectionProvider:v10];
  _Block_release(v10);

  v12 = [objc_allocWithZone(UICollectionViewController) initWithCollectionViewLayout:v11];

  result = [v12 collectionView];
  if (result)
  {
    v14 = result;
    sub_10079D224();
    v15 = aBlock[0];
    [v14 setDelegate:aBlock[0]];

    sub_10079D224();
    v16 = aBlock[0];
    [v14 setDropDelegate:aBlock[0]];

    [v14 setAllowsMultipleSelectionDuringEditing:1];
    [v14 setSpringLoaded:1];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100540398(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v59 = sub_10079B564();
  v2 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v50 - v5;
  v61 = sub_1001F1160(&qword_100AE9390);
  v6 = *(v61 - 8);
  __chkstk_darwin(v61);
  v8 = &v50 - v7;
  v9 = sub_1001F1160(&qword_100AE9398);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  sub_1001F1160(&qword_100AE93A0);
  sub_10079D224();
  v13 = v78;
  v14 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v15 = *&v13[v14];
  v16 = v15;

  if (v15)
  {
    sub_100542198();
    v60 = sub_1005420D4();
    sub_10079B414();
    v17._rawValue = &off_100A0D528;
    sub_10079B3F4(v17);
    sub_10079B444();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v18 = v78;
    v19 = *(v78 + 16);
    if (v19)
    {
      v50 = v12;
      v51 = v10;
      v52 = v9;
      v68 = (v6 + 8);
      v65 = enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:);
      v55 = (v2 + 104);
      v53 = enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
      v54 = (v2 + 8);
      v20 = v19 - 1;
      v21 = 32;
      v67 = xmmword_10080B690;
      v66 = 254;
      v22 = v61;
      v56 = v16;
      v69 = v78;
      while (1)
      {
        v78 = *(v18 + v21);
        v23 = *(v18 + v21 + 16);
        v24 = *(v18 + v21 + 32);
        v25 = *(v18 + v21 + 48);
        *&v81[15] = *(v18 + v21 + 63);
        v80 = v24;
        *v81 = v25;
        v79 = v23;
        sub_100529328(&v78, &v74);
        sub_10079B524();
        v26 = v78;
        if (v81[18] >> 6 == 1)
        {
          sub_1001F1160(&unk_100AE0A60);
          v42 = swift_allocObject();
          v43 = v80;
          v44 = *v81;
          v45 = v78;
          *(v42 + 48) = v79;
          *(v42 + 64) = v43;
          *(v42 + 80) = v44;
          *(v42 + 95) = *&v81[15];
          *(v42 + 16) = v67;
          *(v42 + 32) = v45;
          v76 = 0u;
          v77[0] = 0u;
          v74 = 0u;
          v75 = 0u;
          BYTE2(v77[1]) = v66;
          LOWORD(v77[1]) = -258;

          sub_10079B504();

          LOBYTE(v74) = 0;
        }

        else
        {
          if (v81[18] >> 6)
          {
            sub_1001F1160(&unk_100AE0A60);
            v46 = swift_allocObject();
            v47 = v80;
            v48 = *v81;
            v49 = v78;
            *(v46 + 48) = v79;
            *(v46 + 64) = v47;
            *(v46 + 80) = v48;
            *(v46 + 95) = *&v81[15];
            *(v46 + 16) = v67;
            *(v46 + 32) = v49;
            v76 = 0u;
            v77[0] = 0u;
            v74 = 0u;
            v75 = 0u;
            BYTE2(v77[1]) = v66;
            LOWORD(v77[1]) = -258;
            sub_100529328(&v78, &v70);
            sub_10079B504();

            goto LABEL_16;
          }

          v64 = v20;
          v27 = *(&v78 + 1);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4();

          v63 = sub_1006584CC(v74 == 2, v26, v27);
          v28 = v65;
          if (v26 - 2 >= 2)
          {
            v28 = v53;
            if (v26)
            {
              _UISolariumEnabled();
              v28 = v53;
            }
          }

          v29 = *v55;
          v30 = v57;
          v31 = v59;
          (*v55)(v57, v28, v59);
          v32 = v58;
          v29(v58, v65, v31);
          LOBYTE(v29) = sub_10079B554();
          v33 = *v54;
          (*v54)(v32, v31);
          v33(v30, v31);
          if (v29)
          {
            sub_1001F1160(&unk_100AE0A60);
            v34 = swift_allocObject();
            v35 = v80;
            *(v34 + 48) = v79;
            *(v34 + 64) = v35;
            *(v34 + 80) = *v81;
            *(v34 + 95) = *&v81[15];
            v36 = v78;
            *(v34 + 16) = v67;
            *(v34 + 32) = v36;
            v76 = 0u;
            v77[0] = 0u;
            v74 = 0u;
            v75 = 0u;
            BYTE2(v77[1]) = v66;
            LOWORD(v77[1]) = -258;

            v22 = v61;
            sub_10079B504();

            v37 = swift_allocObject();
            v38 = v80;
            v39 = *v81;
            v40 = v78;
            *(v37 + 48) = v79;
            *(v37 + 64) = v38;
            *(v37 + 80) = v39;
            *(v37 + 95) = *&v81[15];
            *(v37 + 16) = v67;
            *(v37 + 32) = v40;

            v41._rawValue = v37;
            sub_10079B514(v41);

            v72 = v80;
            v73[0] = *v81;
            *(v73 + 15) = *&v81[15];
            v70 = v78;
            v71 = v79;

            sub_10079B504();

            v76 = v72;
            v77[0] = v73[0];
            *(v77 + 15) = *(v73 + 15);
            v74 = v70;
            v75 = v71;
            sub_100007840(&v74, &qword_100AE8CD0);
          }

          else
          {
            v76 = 0u;
            v77[0] = 0u;
            v74 = 0u;
            v75 = 0u;
            LOWORD(v77[1]) = -258;
            BYTE2(v77[1]) = v66;
            v22 = v61;
            sub_10079B504();
          }

          v16 = v56;
          v20 = v64;
          LOBYTE(v74) = v26;
        }

        sub_10079B494();
LABEL_16:
        sub_10049F8FC(&v78);
        (*v68)(v8, v22);
        v18 = v69;
        if (!v20)
        {

          v10 = v51;
          v9 = v52;
          v12 = v50;
          goto LABEL_20;
        }

        --v20;
        v21 += 72;
      }
    }

LABEL_20:
    (*(v10 + 8))(v12, v9);
  }
}

void sub_100540BCC()
{
  v0 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v0 - 8);
  v2 = &v127 - v1;
  v146 = sub_1001F1160(&qword_100AE9390);
  v175 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v163 = &v127 - v5;
  v6 = sub_100796E74();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v127 - v11;
  __chkstk_darwin(v12);
  v140 = &v127 - v13;
  __chkstk_darwin(v14);
  v139 = &v127 - v15;
  __chkstk_darwin(v16);
  v138 = &v127 - v17;
  v165 = sub_10079B564();
  v174 = *(v165 - 8);
  __chkstk_darwin(v165);
  v144 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = &v127 - v20;
  __chkstk_darwin(v21);
  v155 = &v127 - v22;
  v172 = sub_1001F1160(&qword_100AE9398);
  v167 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v127 - v23;
  sub_1001F1160(&qword_100AE93A0);
  sub_10079D224();
  v24 = v177;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return;
  }

  v26 = [Strong collectionView];
  if (!v26)
  {

    return;
  }

  v173 = v26;
  v136 = v9;
  sub_10079D224();
  v27 = v177;
  v28 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v29 = *&v27[v28];
  v176 = v29;

  if (!v29)
  {

    return;
  }

  v156 = v7;
  v197 = _swiftEmptyArrayStorage;
  v198 = _swiftEmptyArrayStorage;
  v162 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v177)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v185 = v177;
    v186 = v178;
    v183 = v181;
    v184 = v182;
    v187 = v179;
    v188[0] = *v180;
    if ((~*&v180[16] & 0xFEFEFE) != 0)
    {
      v193 = v185;
      v194 = v186;
      v195 = v187;
      *v196 = v188[0];
      *&v196[16] = *&v180[16];
      v196[18] = v180[18];
      v177 = v185;
      v178 = v186;
      v179 = v187;
      *v180 = v188[0];
      v181 = v183;
      v182 = v184;
      sub_100529328(&v193, &v189);
      sub_100007840(&v177, &qword_100AE8CC0);
      v30 = sub_10066BB24(0, 1, 1, _swiftEmptyArrayStorage);
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        goto LABEL_95;
      }

      goto LABEL_10;
    }

    v177 = v185;
    v178 = v186;
    v179 = v187;
    *v180 = v188[0];
    v181 = v183;
    v182 = v184;
    sub_100007840(&v177, &qword_100AE8CC0);
    v162 = _swiftEmptyArrayStorage;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (!v177)
    {
      sub_10079D224();
      v38 = v177;
      v39 = *(v177 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
      v40 = v39;

      if (v39)
      {
        [v40 endEditing:1];
        if (([v40 isEditing] & 1) == 0)
        {
          sub_1005E16F8(0);
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v169 = v177;
    v41 = v177 == 2;
    v42 = Strong;
    v143 = v41 ^ [v42 isEditing];
    if (v143 == 1)
    {
      [v42 setEditing:v169 == 2 animated:1];
    }

    v43 = [v42 navigationController];
    v44 = v42;
    v45 = v43;
    v134 = v44;

    v46 = v6;
    if (v45)
    {
      v47 = [v45 topViewController];

      if (v47)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        v48 = v177;
        v49 = v177 != 0;
        if (v49 != [v47 isEditing])
        {
          [v47 setEditing:v48 != 0 animated:1];
        }
      }
    }

    swift_getKeyPath();
    Strong = swift_getKeyPath();
    sub_10079B9A4();

    v50 = v177;
    v51 = *(v177 + 16);
    v168 = v6;
    v166 = v2;
    if (v51)
    {
      v52 = 0;
      v161 = (v174 + 104);
      v160 = (v174 + 8);
      v33 = enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:);
      v149 = v167 + 1;
      v133 = v156 + 16;
      v153 = enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
      v132 = v156 + 32;
      v129 = v156 + 8;
      v53 = v51 - 1;
      v135 = _swiftEmptyArrayStorage;
      v32 = 32;
      v151 = v143;
      LODWORD(v162) = v143;
      v150 = v177;
      v159 = enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:);
      v142 = (v175 + 8);
      v148 = v51 - 1;
      v137 = xmmword_10080B690;
      while (1)
      {
        v177 = *(v50 + v32);
        v54 = *(v50 + v32 + 16);
        v55 = *(v50 + v32 + 32);
        v56 = *(v50 + v32 + 48);
        *&v180[15] = *(v50 + v32 + 63);
        v179 = v55;
        *v180 = v56;
        v178 = v54;
        if (((v180[18] << 16) & 0xC00000) != 0)
        {
          goto LABEL_71;
        }

        v57 = v177;
        v175 = v178;
        v167 = *(&v177 + 1);

        sub_10079B4C4();
        LOBYTE(v193) = v57;
        v58 = sub_10079B404();
        v59 = v33;
        v157 = v57 - 2;
        if ((v57 - 2) >= 2)
        {
          v59 = v153;
          if (v57)
          {
            _UISolariumEnabled();
            v59 = v153;
          }
        }

        v174 = v57;
        v60 = *v161;
        v61 = v155;
        v62 = v165;
        (*v161)(v155, v59, v165);
        v63 = v164;
        v158 = v60;
        v60(v164, v33, v62);
        v64 = sub_10079B554();
        v65 = *v160;
        (*v160)(v63, v62);
        v65(v61, v62);
        if (v64)
        {
          v66 = *(v58 + 16);
          v33 = v159;
          Strong = v167;
          if (v66)
          {
            v67 = *(v58 + 48);
            v68 = *(v58 + 80);
            v195 = *(v58 + 64);
            *v196 = v68;
            *&v196[15] = *(v58 + 95);
            v193 = *(v58 + 32);
            v194 = v67;
            sub_100529328(&v193, &v189);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v6 = v174;
            if (!isUniquelyReferenced_nonNull_native || (v66 - 1) > *(v58 + 24) >> 1)
            {
              v58 = sub_10066BB24(isUniquelyReferenced_nonNull_native, v66, 1, v58);
            }

            sub_10049F8FC(v58 + 32);
            v70 = *(v58 + 16);
            memmove((v58 + 32), (v58 + 104), 72 * v70 - 72);
            *(v58 + 16) = v70 - 1;
            if (((v196[18] << 16) & 0xC00000) != 0)
            {
              sub_10049F8FC(&v193);
              sub_10049F8FC(&v177);
              (*v149)(v171, v172);

              goto LABEL_57;
            }

            v71 = *(&v193 + 1);
            v72 = v194;

            v58 = v71;
          }

          else
          {
            v72 = 1;
            v6 = v174;
          }
        }

        else
        {
          v72 = 1;
          v33 = v159;
          v6 = v174;
          Strong = v167;
        }

        if (v169 == 2)
        {
          sub_100658778(v6, Strong);
          sub_10048452C(v73);
        }

        Strong = sub_1006584CC(v169 == 2, v6, Strong);
        sub_1005420D4();
        if ((sub_1007A2604() & 1) == 0 && (sub_10053F854(Strong, v58) & 1) == 0)
        {
          if (v169 == 2)
          {
            v147 = v58;
            goto LABEL_60;
          }

LABEL_48:
          v74 = *(v58 + 16);
          v75 = Strong[2];
          v147 = v58;
          if (v74 == v75)
          {
            v154 = v72;
            v76 = [v173 indexPathsForSelectedItems];
            if (v76)
            {
              v77 = v76;
              v131 = sub_1007A25E4();

              if (*(v131 + 16))
              {
                v152 = Strong;
                v78 = v156;
                v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
                v130 = *(v156 + 16);
                v128 = v79;
                v130(v139, v131 + v79, v168);

                v80 = *(v78 + 32);
                v81 = v138;
                v82 = v168;
                v131 = v80;
                v80(v138, v139, v168);
                v130(v140, v81, v82);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v135 = sub_10066B92C(0, v135[2] + 1, 1, v135);
                }

                v84 = v135[2];
                v83 = v135[3];
                v85 = v156;
                v130 = (v84 + 1);
                if (v84 >= v83 >> 1)
                {
                  v135 = sub_10066B92C(v83 > 1, v84 + 1, 1, v135);
                }

                v86 = *(v85 + 8);
                v87 = v168;
                v86(v138, v168);
                v88 = v135;
                v135[2] = v130;
                (v131)(v88 + v128 + *(v156 + 72) * v84, v140, v87);
                v198 = v88;
                v72 = v154;
                Strong = v152;
                goto LABEL_60;
              }
            }

            v72 = v154;
          }

LABEL_60:
          v89 = v65;
          v152 = Strong;
          v154 = v72;
          sub_10079B524();
          v90 = v33;
          if (v157 >= 2)
          {
            v90 = v153;
            if (v6)
            {
              _UISolariumEnabled();
              v90 = v153;
            }
          }

          v91 = v144;
          v92 = v165;
          v93 = v158;
          v158(v144, v90, v165);
          v94 = v164;
          v93(v164, v33, v92);
          v95 = sub_10079B554();
          v89(v94, v92);
          v89(v91, v92);
          if (v95)
          {
            sub_1001F1160(&unk_100AE0A60);
            v96 = swift_allocObject();
            v97 = v179;
            v98 = *v180;
            v99 = v177;
            *(v96 + 48) = v178;
            *(v96 + 64) = v97;
            *(v96 + 80) = v98;
            *(v96 + 95) = *&v180[15];
            *(v96 + 16) = v137;
            *(v96 + 32) = v99;
            v195 = 0u;
            *v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            v196[18] = -2;
            *&v196[16] = -258;
            v100 = v167;

            v101 = v146;
            sub_10079B504();

            v6 = v174;
            LOBYTE(v193) = v174;
            sub_10079B4B4();
            *&v189 = v6;
            *(&v189 + 1) = v100;
            *&v190 = v175 & 1;
            BYTE2(v192[1]) = BYTE2(v141) & 1;
            LODWORD(v175) = v141 & 0x10101;
            LOWORD(v192[1]) = v141 & 0x101;

            v102 = sub_10079B4E4();
            v195 = v191;
            *v196 = v192[0];
            *&v196[15] = *(v192 + 15);
            v193 = v189;
            v194 = v190;
            sub_10049F8FC(&v193);
            if ((v102 | v151))
            {
              LODWORD(v162) = v102 ^ 1 | v162;
              v103 = swift_allocObject();
              v104 = v179;
              v105 = *v180;
              v106 = v177;
              *(v103 + 48) = v178;
              *(v103 + 64) = v104;
              *(v103 + 80) = v105;
              *(v103 + 95) = *&v180[15];
              *(v103 + 16) = v137;
              *(v103 + 32) = v106;

              v107._rawValue = v103;
              v108 = v163;
              sub_10079B514(v107);
            }

            else
            {
              LODWORD(v162) = 0;
              v108 = v163;
            }

            v187 = v179;
            v188[0] = *v180;
            *(v188 + 15) = *&v180[15];
            v185 = v177;
            v186 = v178;

            sub_10079B504();

            v191 = v187;
            v192[0] = v188[0];
            *(v192 + 15) = *(v188 + 15);
            v189 = v185;
            v190 = v186;
            sub_100007840(&v189, &qword_100AE8CD0);
            Strong = v142;
            (*v142)(v145, v101);
            v141 = v175;
            v109 = v108;
          }

          else
          {
            v195 = 0u;
            *v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            *&v196[16] = -258;
            v196[18] = -2;
            v101 = v146;
            v109 = v163;
            sub_10079B504();

            Strong = v142;
            v6 = v174;
          }

          LOBYTE(v193) = v6;
          sub_10079B494();
          sub_10049F8FC(&v177);
          (*Strong)(v109, v101);
          (*v149)(v171, v172);

          v46 = v168;
          v2 = v166;
          v50 = v150;
          v33 = v159;
          goto LABEL_70;
        }

        if (v143)
        {
          LODWORD(v162) = 1;
          v151 = 1;
          if (v169 == 2)
          {
            v147 = v58;
            v151 = 1;
            goto LABEL_60;
          }

          goto LABEL_48;
        }

        sub_10049F8FC(&v177);
        (*v149)(v171, v172);

        LODWORD(v162) = 0;
        v151 = 0;
LABEL_57:
        v46 = v168;
        v2 = v166;
        v50 = v150;
LABEL_70:
        v53 = v148;
LABEL_71:
        if (v53 == v52)
        {

          v32 = v197;
          goto LABEL_76;
        }

        ++v52;
        v31 = *(v50 + 16);
        v32 += 72;
        if (v52 >= v31)
        {
          goto LABEL_94;
        }
      }
    }

    v32 = v162;
LABEL_76:
    v175 = *(v32 + 16);
    if (!v175)
    {
      break;
    }

    v33 = 0;
    v110 = v32 + 32;
    v6 = (v156 + 48);
    v111 = (v156 + 32);
    Strong = _swiftEmptyArrayStorage;
    while (1)
    {
      v31 = *(v32 + 16);
      if (v33 >= v31)
      {
        break;
      }

      v177 = *v110;
      v112 = *(v110 + 16);
      v113 = *(v110 + 32);
      v114 = *(v110 + 48);
      *&v180[15] = *(v110 + 63);
      v179 = v113;
      *v180 = v114;
      v178 = v112;
      v195 = v113;
      *v196 = v114;
      *&v196[15] = *&v180[15];
      v193 = v177;
      v194 = v112;
      sub_100529328(&v177, &v189);
      sub_10079B4D4();
      sub_10049F8FC(&v177);
      if ((*v6)(v2, 1, v46) == 1)
      {
        sub_100007840(v2, &qword_100AECD00);
      }

      else
      {
        v115 = v46;
        v116 = *v111;
        (*v111)(v170, v2, v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          Strong = sub_10066B92C(0, Strong[2] + 1, 1, Strong);
        }

        v118 = Strong[2];
        v117 = Strong[3];
        if (v118 >= v117 >> 1)
        {
          Strong = sub_10066B92C(v117 > 1, v118 + 1, 1, Strong);
        }

        Strong[2] = (v118 + 1);
        v119 = v168;
        v116(Strong + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v118, v170, v168);
        v46 = v119;
        v2 = v166;
      }

      ++v33;
      v110 += 72;
      if (v175 == v33)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    v30 = sub_10066BB24((v31 > 1), v33, 1, v30);
LABEL_10:
    *(v30 + 2) = v33;
    v34 = &v30[72 * v32];
    *(v34 + 2) = v193;
    v35 = v194;
    v36 = v195;
    v37 = *v196;
    *(v34 + 95) = *&v196[15];
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    *(v34 + 3) = v35;
    v162 = v30;
    v197 = v30;
  }

  Strong = _swiftEmptyArrayStorage;
LABEL_88:

  sub_100484CB4(Strong);
  v175 = v198;
  v120 = v198[2];
  v121 = v136;
  if (v120)
  {
    v122 = *(v156 + 16);
    v123 = (v175 + ((*(v156 + 80) + 32) & ~*(v156 + 80)));
    v124 = *(v156 + 72);
    v125 = (v156 + 8);
    do
    {
      v122(v121, v123, v46);
      isa = sub_100796DF4().super.isa;
      (*v125)(v121, v46);
      [v173 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      v123 += v124;
      --v120;
    }

    while (v120);
  }
}

unint64_t sub_1005420D4()
{
  result = qword_100AE93A8;
  if (!qword_100AE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE93A8);
  }

  return result;
}

uint64_t sub_100542128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE8CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100542198()
{
  result = qword_100AE93B0;
  if (!qword_100AE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE93B0);
  }

  return result;
}

uint64_t sub_1005421EC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_1001F1160(&qword_100AE93A0);

  return sub_10053ECB4(a1, a2, a3);
}

unint64_t sub_100542290()
{
  result = qword_100AE8D98;
  if (!qword_100AE8D98)
  {
    type metadata accessor for SidebarViewModel.SearchFieldModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8D98);
  }

  return result;
}

unint64_t sub_100542344()
{
  result = qword_100AE93E0;
  if (!qword_100AE93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE93E0);
  }

  return result;
}

uint64_t sub_1005423EC(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1001F1160(&qword_100AE93A0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10053E728(a1, a2, v6);
}

uint64_t sub_100542480()
{
  v1 = sub_1001F1160(&qword_100AE93A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100542514()
{
  sub_1001F1160(&qword_100AE93A0);

  return sub_10053EBA8();
}

unint64_t sub_100542590()
{
  result = qword_100AE9400;
  if (!qword_100AE9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9400);
  }

  return result;
}

uint64_t sub_1005425E4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE9410);
  sub_100008B98(v0, qword_100AE9410);
  return sub_10079ACD4();
}

uint64_t sub_100542664()
{
  v1 = OBJC_IVAR___BKAppAccountActionHandler____lazy_storage___isSignedIn;
  v2 = *(v0 + OBJC_IVAR___BKAppAccountActionHandler____lazy_storage___isSignedIn);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() sharedProvider];
    LOBYTE(v2) = [v3 isUserSignedInToiTunes];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_1005427A0(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___BKAppAccountActionHandler____lazy_storage___isSignedIn] = 2;
  *&v3[OBJC_IVAR___BKAppAccountActionHandler_sceneManager] = a1;
  *&v3[OBJC_IVAR___BKAppAccountActionHandler_accountController] = a2;
  *&v3[OBJC_IVAR___BKAppAccountActionHandler_accountsProvider] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v13, "init");
  [v10 addObserver:v11 accountTypes:{1, v13.receiver, v13.super_class}];

  return v11;
}

id sub_10054287C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR___BKAppAccountActionHandler_accountsProvider] removeObserver:v0 accountTypes:1];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005429B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_100542A4C, v6, v5);
}

uint64_t sub_100542A4C()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() sharedProvider];
  v3 = [v2 isUserSignedInToiTunes];

  *(v1 + OBJC_IVAR___BKAppAccountActionHandler____lazy_storage___isSignedIn) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100542C28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_10000AE20(a2, v18);
  v6 = v19;
  if (v19)
  {
    v7 = sub_10000E3E8(v18, v19);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1007A3AA4();
    (*(v8 + 8))(v11, v6);
    sub_1000074E0(v18);
  }

  else
  {
    v12 = 0;
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  if ((sub_100796E94() & 1) == 0)
  {
    v15 = sub_100796E94();
    if ((v15 & v13 & 1) == 0)
    {
      v14 = (v15 ^ 1) & v13;
      return v14 & 1;
    }

    goto LABEL_8;
  }

  if (v13)
  {
LABEL_8:
    v14 = sub_100542664();
    return v14 & 1;
  }

  v14 = 0;
  return v14 & 1;
}

void sub_100542E70(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v31 = sub_1007A21D4();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "validateCommand:", a1, v15);
  v32 = a1;
  [a1 action];
  if (sub_100796E94())
  {
    sub_100542664();
    v29 = v11;
    v30 = v5;
    sub_1007A2154();
    sub_100796C94();
    v18 = v31;
    (*(v11 + 16))(v13, v17, v31);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v5 + 16))(v7, v10, v4);
    sub_1007A22D4();
    v24 = v32;
    (*(v30 + 8))(v10, v4);
    (*(v29 + 8))(v17, v18);
    v25 = sub_1007A2214();

    [v24 setTitle:v25];

    v26 = sub_1007A2214();

    v27 = [objc_opt_self() systemImageNamed:v26];

    [v24 setImage:v27];
  }

  else if (sub_100796E94())
  {
    v20 = sub_100542664();
    v21 = v32;
    v22 = [v32 attributes];
    if (v20)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v23 = v22 | 4;
    }

    [v21 setAttributes:v23];
  }
}

void sub_100543390(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 bk_window];
  v4 = [v2 jsa_topMostViewControllerForWindow:v3];

  v5 = [a1 machineAuthorizationService];
  sub_100472D44(0, v4, 0, 0, 0);
}

void sub_100543484(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 bk_window];
  v4 = [v2 jsa_topMostViewControllerForWindow:v3];

  v5 = [a1 machineAuthorizationService];
  sub_1004720F4(1, v4, 0, 0, 0, 0);
}

void sub_10054357C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v9 = a1;
  }

  v10 = *&a1[OBJC_IVAR___BKAppAccountActionHandler_sceneManager];
  v12[4] = a4;
  v12[5] = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100201C54;
  v12[3] = a5;
  v11 = _Block_copy(v12);
  [v10 requestPrimaryScene:v11];
  _Block_release(v11);
  sub_100007840(v13, &unk_100AD5B40);
}

uint64_t sub_100543678()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  if (sub_100542664())
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE9410);
    v6 = sub_10079ACC4();
    v7 = sub_1007A2994();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Attempt to Sign Out", v8, 2u);
    }

    v9 = sub_1007A2744();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v11 = sub_1007A26E4();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;

    v13 = &unk_10082F780;
    v14 = v4;
    v15 = v12;
  }

  else
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AE9410);
    v17 = sub_10079ACC4();
    v18 = sub_1007A2994();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Attempt to Sign In", v19, 2u);
    }

    v20 = *(v1 + OBJC_IVAR___BKAppAccountActionHandler_accountController);
    v21 = sub_1007A2744();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_1007A26F4();
    v22 = v20;
    v23 = sub_1007A26E4();
    v15 = swift_allocObject();
    v15[2] = v23;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v22;
    v13 = &unk_10082F770;
    v14 = v4;
  }

  sub_1003457A0(0, 0, v14, v13, v15);
}

uint64_t sub_1005439EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100543A84, v6, v5);
}

uint64_t sub_100543A84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___BKAppAccountActionHandler_accountController);
    v0[10] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100543B94;

    return AccountController.signOut()();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100543B94(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 96) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_100543CDC, v5, v4);
}

uint64_t sub_100543CDC()
{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE9410);
    v3 = sub_10079ACC4();
    v4 = sub_1007A2994();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 72);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Sign out succeeded";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v8, v7, 2u);
    }
  }

  else
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AE9410);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    v10 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 72);
    if (v10)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Sign out failed";
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100543E98()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100543F4C;

  return AccountController.signIn(enableAccountCreation:)(1);
}

uint64_t sub_100543F4C(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1007A2694();
    v7 = v6;
    v8 = sub_10054429C;
  }

  else
  {

    *(v4 + 48) = a1 & 1;
    v5 = sub_1007A2694();
    v7 = v9;
    v8 = sub_1005440EC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1005440EC()
{
  v1 = *(v0 + 48);

  if (v1 == 1)
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE9410);
    v3 = sub_10079ACC4();
    v4 = sub_1007A2994();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Sign in succeeded";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_100AD1818 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE9410);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Sign in failed, no error provided";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10054429C()
{

  if (qword_100AD1818 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE9410);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_1007967C4();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sign in failed, error: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100544590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100543E98();
}

uint64_t sub_100544644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005439EC(a1, v4, v5, v6);
}

uint64_t sub_100544700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1005429B4(a1, v4, v5, v6);
}

uint64_t sub_1005447BC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE9470);
  sub_100008B98(v0, qword_100AE9470);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A3404();
}

uint64_t BookReaderHostLayoutController.frame.setter(double a1, double a2, double a3, double a4)
{
  result = sub_100546144(0x656D617266, 0xE500000000000000);
  if (result)
  {
    result = sub_10079B904();
    if (v7 != a3 || v8 != a4)
    {
      return sub_10079B914();
    }
  }

  return result;
}

void (*BookReaderHostLayoutController.frame.modify(uint64_t *a1))(double **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  sub_10079B904();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100544A68;
}

uint64_t BookReaderHostLayoutController.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = v4 + OBJC_IVAR___REBookReaderHostLayoutController_capturedSafeAreaInsets;
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = 0;
  result = sub_100546144(0x6165724165666173, 0xEE00737465736E49);
  if ((result & 1) != 0 && *(v4 + OBJC_IVAR___REBookReaderHostLayoutController_isInForeground) == 1)
  {
    result = sub_10079B904();
    v12 = v13 == a1 && v14 == a2 && v15 == a3;
    if (!v12 || v16 != a4)
    {
      return sub_10079B914();
    }
  }

  return result;
}

void (*BookReaderHostLayoutController.safeAreaInsets.modify(uint64_t *a1))(double **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  sub_10079B904();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100544CF0;
}

void sub_100544D08(double **a1, uint64_t a2, void (*a3)(double, double, double, double))
{
  v3 = *a1;
  a3(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v3);
}

void BookReaderHostLayoutController.traitCollection.setter(id a1)
{
  if (sub_100546144(0x6C6F437469617274, 0xEF6E6F697463656CLL) && (sub_10079B904(), sub_10000A7C4(0, &qword_100AE15B0), v2 = sub_1007A3184(), v7, (v2 & 1) == 0))
  {
    a1 = a1;
    sub_10079B914();
  }

  else
  {
    if (qword_100AD1820 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AE9470);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "#userInterfaceStyle: Ignoring trait collection change during system snapshot", v6, 2u);
    }
  }
}

void (*BookReaderHostLayoutController.traitCollection.modify(uint64_t a1))(void **a1, char a2)
{
  *(a1 + 8) = v1;
  sub_10079B904();
  return sub_100545010;
}

void sub_100545010(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    BookReaderHostLayoutController.traitCollection.setter(v3);
  }

  else
  {
    BookReaderHostLayoutController.traitCollection.setter(v2);
  }
}

double BookReaderHostLayoutController.defaultStatusBarHeight.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong window], v1, !v2))
  {
    v2 = [objc_opt_self() _applicationKeyWindow];
  }

  v3 = [v2 windowScene];

  v4 = [v3 statusBarManager];
  if (v4)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6 || (v7 = v6, v8 = [v6 window], v7, !v8))
    {
      v8 = [objc_opt_self() _applicationKeyWindow];
    }

    v9 = [v5 _statusBarOrientationForWindow:v8];

    [v4 defaultStatusBarHeightInOrientation:v9];
    v11 = v10;
  }

  else
  {
    if (qword_100AD1820 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AE9470);
    v4 = sub_10079ACC4();
    v13 = sub_1007A29B4();
    v11 = 0.0;
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, v13, "Failed to get status bar height. statusBarManager is nil", v14, 2u);
    }
  }

  return v11;
}

uint64_t sub_1005452F4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong, v4 = [Strong window], v3, !v4))
  {
    v5 = [objc_opt_self() _applicationKeyWindow];
    if (!v5)
    {
LABEL_8:
      if (qword_100AD1820 != -1)
      {
        swift_once();
      }

      v9 = sub_10079ACE4();
      sub_100008B98(v9, qword_100AE9470);
      v10 = sub_10079ACC4();
      v11 = sub_1007A29B4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Missing WindowScene, window or windowScene are nil", v12, 2u);
      }

      return *(v1 + OBJC_IVAR___REBookReaderHostLayoutController_sceneIsSnapshotting);
    }

    v4 = v5;
  }

  v6 = [v4 windowScene];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 _isPerformingSystemSnapshot];

  if (v7)
  {
    return 1;
  }

  return *(v1 + OBJC_IVAR___REBookReaderHostLayoutController_sceneIsSnapshotting);
}

id BookReaderHostLayoutController.__allocating_init(viewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [v3 initWithView:result];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BookReaderHostLayoutController.init(viewController:)(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [v1 initWithView:result];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100545708(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v13 = &v10[OBJC_IVAR___REBookReaderHostLayoutController_capturedSafeAreaInsets];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR___REBookReaderHostLayoutController_sceneIsSnapshotting] = 0;
  *&v10[OBJC_IVAR___REBookReaderHostLayoutController_cancellables] = &_swiftEmptySetSingleton;
  v10[OBJC_IVAR___REBookReaderHostLayoutController_isInForeground] = 1;
  sub_1001F1160(&qword_100ADECC8);
  swift_allocObject();
  *&v10[OBJC_IVAR___REBookReaderHostLayoutController_edgeInsetsSubject] = sub_10079B924();
  sub_1001F1160(&qword_100ADECD8);
  swift_allocObject();
  *&v10[OBJC_IVAR___REBookReaderHostLayoutController_frameSubject] = sub_10079B924();
  v28 = a9;
  v29 = a10;
  swift_allocObject();
  *&v10[OBJC_IVAR___REBookReaderHostLayoutController_safeAreaInsetsSubject] = sub_10079B924();
  [a1 copyWithZone:0];
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10000A7C4(0, &qword_100AE15B0);
  swift_dynamicCast();
  sub_1001F1160(&qword_100AE94B8);
  swift_allocObject();
  *&v10[OBJC_IVAR___REBookReaderHostLayoutController_traitCollectionSubject] = sub_10079B924();
  swift_unknownObjectWeakAssign();
  v27.receiver = v10;
  v27.super_class = type metadata accessor for BookReaderHostLayoutController();
  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  v18 = _UISceneWillBeginSystemSnapshotSequence;
  v28 = 0u;
  v29 = 0u;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001811C(v18, &v28, sub_100546A3C, v19);

  sub_1000230BC(&v28);

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v20 = [v15 defaultCenter];
  v21 = _UISceneDidCompleteSystemSnapshotSequence;
  v28 = 0u;
  v29 = 0u;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001811C(v21, &v28, sub_100546A5C, v22);

  sub_1000230BC(&v28);

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v23 = [v15 defaultCenter];
  v24 = UIWindowDidRotateNotification;
  v28 = 0u;
  v29 = 0u;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001811C(v24, &v28, sub_100546A7C, v25);

  sub_1000230BC(&v28);

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return v16;
}

void sub_100545C28(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___REBookReaderHostLayoutController_sceneIsSnapshotting] = a3;
  }
}

void sub_100545C84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((sub_1005452F4() & 1) == 0)
    {
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        sub_100796574();
        if (!*&v33.size.height)
        {

          sub_1000230BC(&v33);
          return;
        }

        sub_10000A7C4(0, &qword_100AD5B98);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        sub_10079B904();
        v4 = v32;
        [v4 frame];
        v34.origin.x = v5;
        v34.origin.y = v6;
        v34.size.width = v7;
        v34.size.height = v8;
        if (CGRectEqualToRect(v33, v34))
        {

          return;
        }

        v9 = v4;
        v10 = [v3 window];
        if (v10)
        {
          v11 = v10;
          v12 = sub_1007A3184();

          if (v12)
          {
            if (qword_100AD1820 != -1)
            {
              swift_once();
            }

            v13 = sub_10079ACE4();
            sub_100008B98(v13, qword_100AE9470);
            v9 = v9;
            v14 = v1;
            v15 = sub_10079ACC4();
            v16 = sub_1007A29A4();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *v17 = 136315394;
              sub_10079B904();
              v18 = sub_1007A3064();
              v20 = sub_1000070F4(v18, v19, &v32);

              *(v17 + 4) = v20;
              *(v17 + 12) = 2080;
              [v9 frame];
              v21 = sub_1007A3064();
              v23 = sub_1000070F4(v21, v22, &v32);

              *(v17 + 14) = v23;
              _os_log_impl(&_mh_execute_header, v15, v16, "currentFrame:%s != windowFrame:%s - updating to new window frame", v17, 0x16u);
              swift_arrayDestroy();
            }

            [v9 frame];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;

            BookReaderHostLayoutController.frame.setter(v25, v27, v29, v31);
            goto LABEL_22;
          }
        }

        else
        {
        }

LABEL_22:
        return;
      }
    }
  }
}

Swift::Void __swiftcall BookReaderHostLayoutController.willEnterForeground()()
{
  *(v0 + OBJC_IVAR___REBookReaderHostLayoutController_isInForeground) = 1;
  v1 = (v0 + OBJC_IVAR___REBookReaderHostLayoutController_capturedSafeAreaInsets);
  if ((*(v0 + OBJC_IVAR___REBookReaderHostLayoutController_capturedSafeAreaInsets + 32) & 1) == 0)
  {
    v3 = v1[2];
    v2 = v1[3];
    v5 = *v1;
    v4 = v1[1];
    sub_10079B904();
    v7 = v5 == v8 && v4 == v9 && v3 == v10;
    if (!v7 || v2 != v11)
    {
      sub_10079B914();
    }
  }
}

BOOL sub_100546144(uint64_t a1, unint64_t a2)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005452F4();
  if (v8)
  {
    v22 = a1;
    v9 = [objc_opt_self() currentTraitCollection];
    v10 = [v9 description];

    v11 = sub_1007A2254();
    v13 = v12;

    if (qword_100AD1820 != -1)
    {
      swift_once();
    }

    sub_100008B98(v4, qword_100AE9470);
    sub_10079ACB4();

    v14 = sub_10079ACC4();
    v15 = sub_1007A29D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = v5;
      v17 = v16;
      v23 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = sub_1000070F4(v11, v13, &v23);

      *(v17 + 4) = v18;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1000070F4(v22, a2, &v23);
      _os_log_impl(&_mh_execute_header, v14, v15, "Seed: %s Performing system snapshotting -- not updated %{public}s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v21 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return (v8 & 1) == 0;
}

id BookReaderHostLayoutController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderHostLayoutController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100546588(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_1001F1160(a2);
  sub_1005469E8(a4, a2);
  return sub_10079BA14();
}

uint64_t sub_100546670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  sub_1001F1160(a4);
  sub_1005469E8(a6, a4);
  return sub_10079BA14();
}

uint64_t BookReaderHostLayoutController.description.getter()
{
  sub_1007A3744(82);
  v11 = 0;
  v12 = 0xE000000000000000;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BookReaderHostLayoutController();
  v1 = objc_msgSendSuper2(&v10, "description");
  v2 = sub_1007A2254();
  v4 = v3;

  v13._countAndFlagsBits = v2;
  v13._object = v4;
  sub_1007A23D4(v13);

  v14._object = 0x80000001008DBF50;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_1007A23D4(v14);
  sub_10079B904();
  type metadata accessor for UIEdgeInsets(0);
  sub_1007A3894();
  v15._countAndFlagsBits = 0x617266202020200ALL;
  v15._object = 0xEC000000203A656DLL;
  sub_1007A23D4(v15);
  sub_10079B904();
  type metadata accessor for CGRect(0);
  sub_1007A3894();
  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x80000001008DBF70;
  sub_1007A23D4(v16);
  sub_10079B904();
  sub_1007A3894();
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0x80000001008DBF90;
  sub_1007A23D4(v17);
  sub_10079B904();
  v5 = [0 description];
  v6 = sub_1007A2254();
  v8 = v7;

  v18._countAndFlagsBits = v6;
  v18._object = v8;
  sub_1007A23D4(v18);

  return v11;
}

uint64_t sub_1005469E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100546A84(void *a1)
{
  v2 = sub_1007A2214();
  v3 = [a1 dataForKey:v2];

  if (v3)
  {
    v4 = sub_1007969D4();
    v6 = v5;

    sub_100796464();
    swift_allocObject();
    sub_100796454();
    sub_1001F1160(&qword_100AE9558);
    sub_10054864C(&qword_100AE9560, &qword_100AE9568);
    sub_100796444();

    if (qword_100AD1558 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100B232C8);
    v12 = sub_10079ACC4();
    v13 = sub_1007A2994();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "got cached genre recommendations", v14, 2u);
    }

    sub_10000ADCC(v4, v6);

    return v16;
  }

  else
  {
    if (qword_100AD1558 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100B232C8);
    v8 = sub_10079ACC4();
    v9 = sub_1007A2994();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "have no cached genre recommendations", v10, 2u);
    }

    return 0;
  }
}

uint64_t sub_100546E68()
{
  v1[2] = v0;
  sub_1001F1160(&qword_100AE3178);
  v1[3] = swift_task_alloc();
  v2 = sub_10079A734();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_10079A854();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_100799BB4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1001F1160(&unk_100AE9570);
  v1[15] = swift_task_alloc();
  v5 = sub_10079A344();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005470FC, 0, 0);
}

uint64_t sub_1005470FC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    sub_100548584(*(v1 + 16), *(v1 + 24));
    os_unfair_lock_unlock((v1 + 28));
    if (v2)
    {
LABEL_3:

      v3 = v0[1];

      return v3(v2);
    }
  }

  else
  {
    v5 = v0[19];
    v6 = v0[2];
    *(v1 + 24) = 1;
    sub_100548584(v2, 0);
    os_unfair_lock_unlock((v1 + 28));
    v7 = sub_1007A2744();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = v6;
    sub_1003457A0(0, 0, v5, &unk_10082F910, v8);

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v10 = v0[15];
  v11 = (v0[2] + OBJC_IVAR____TtC5Books26GenreRecommendationManager_service);
  v12 = v11[3];
  v13 = v11[4];
  sub_10000E3E8(v11, v12);
  v14 = enum case for GenreRecommendationSource.onDevicePersonalization(_:);
  v15 = sub_10079A304();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v10, v14, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  sub_10079A334();
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_100547404;
  v18 = v0[18];

  return dispatch thunk of GenreRecommendationServiceType.fetchRecommendedGenres(request:)(v18, v12, v13);
}

uint64_t sub_100547404(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100547890;
  }

  else
  {
    v7 = sub_100547578;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100547578()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[5];
    sub_1003BD640(0, v2, 0);
    v6 = *(v3 + 16);
    v3 += 16;
    v25 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v26 = v6;
    v7 = v1 + v25;
    v24 = *(v3 + 56);
    v23 = enum case for Book.MediaType.ebook(_:);
    v22 = (v4 + 8);
    v20 = (v3 + 16);
    v21 = (v3 - 8);
    do
    {
      v29 = v2;
      v8 = v0[13];
      v28 = v0[11];
      v9 = v0[9];
      v10 = v0[6];
      v27 = v0[7];
      v11 = v0[3];
      v12 = v0[4];
      v26(v8, v7);
      sub_100799B94();
      sub_10079A824();
      (*(v5 + 104))(v10, v23, v12);
      sub_10079A804();
      v13 = sub_10079A834();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      sub_10079A814();
      (*v22)(v9, v27);
      sub_100799BA4();
      sub_100799B84();
      (*v21)(v8, v28);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003BD640(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[14];
      v17 = v0[11];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      (*v20)(_swiftEmptyArrayStorage + v25 + v15 * v24, v16, v17);
      v7 += v24;
      v2 = v29 - 1;
    }

    while (v29 != 1);
  }

  v18 = v0[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100547890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100547A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_1001F1160(&qword_100AE3178);
  v4[4] = swift_task_alloc();
  v5 = sub_10079A734();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_10079A854();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = sub_100799BB4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1001F1160(&unk_100AE9570);
  v4[16] = swift_task_alloc();
  v8 = sub_10079A344();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_100547C68, 0, 0);
}

uint64_t sub_100547C68()
{
  v1 = v0[16];
  v2 = (v0[3] + OBJC_IVAR____TtC5Books26GenreRecommendationManager_service);
  v3 = v2[3];
  v4 = v2[4];
  sub_10000E3E8(v2, v3);
  v5 = sub_10079A304();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10079A334();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100547D94;
  v7 = v0[19];

  return dispatch thunk of GenreRecommendationServiceType.fetchRecommendedGenres(request:)(v7, v3, v4);
}

uint64_t sub_100547D94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  (*(v3[18] + 8))(v3[19], v3[17]);
  if (v1)
  {
    v5 = sub_1005483BC;
  }

  else
  {
    v5 = sub_100547F04;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100547F04()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[6];
    sub_1003BD640(0, v2, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = *(v3 + 16);
    v3 += 16;
    v38 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v39 = v7;
    v8 = v1 + v38;
    v37 = *(v3 + 56);
    v36 = enum case for Book.MediaType.ebook(_:);
    v34 = (v4 + 8);
    v35 = (v5 + 104);
    v32 = (v3 + 16);
    v33 = (v3 - 8);
    do
    {
      v42 = v2;
      v43 = v6;
      v9 = v0[14];
      v41 = v0[12];
      v10 = v0[10];
      v11 = v0[7];
      v40 = v0[8];
      v13 = v0[4];
      v12 = v0[5];
      v14 = v0;
      v39(v9, v8);
      sub_100799B94();
      sub_10079A824();
      (*v35)(v11, v36, v12);
      sub_10079A804();
      v15 = sub_10079A834();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v6 = v43;
      sub_10079A814();
      (*v34)(v10, v40);
      sub_100799BA4();
      sub_100799B84();
      (*v33)(v9, v41);
      v17 = v43[2];
      v16 = v43[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003BD640(v16 > 1, v17 + 1, 1);
        v6 = v43;
      }

      v18 = v14[15];
      v19 = v14[12];
      v6[2] = v17 + 1;
      (*v32)(v6 + v38 + v17 * v37, v18, v19);
      v8 += v37;
      v2 = v42 - 1;
      v0 = v14;
    }

    while (v42 != 1);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v20 = v0[22];
  sub_100796494();
  swift_allocObject();
  sub_100796484();
  v0[2] = v6;
  sub_1001F1160(&qword_100AE9558);
  sub_10054864C(&qword_100AE9580, &qword_100AE9588);
  v21 = sub_100796474();
  if (v20)
  {

    v23 = *(v0[3] + OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock);
    os_unfair_lock_lock((v23 + 28));
    *(v23 + 24) = 0;
    os_unfair_lock_unlock((v23 + 28));
  }

  else
  {
    v25 = v21;
    v26 = v22;
    v27 = v0[3];

    v28 = *(v27 + OBJC_IVAR____TtC5Books26GenreRecommendationManager_defaults);
    isa = sub_1007969C4().super.isa;
    v30 = sub_1007A2214();
    [v28 setObject:isa forKey:v30];

    v31 = *(v27 + OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock);
    *(swift_task_alloc() + 16) = v6;
    os_unfair_lock_lock(v31 + 7);
    sub_100548718(&v31[4]);
    os_unfair_lock_unlock(v31 + 7);
    sub_10000ADCC(v25, v26);
  }

  v24 = v0[1];

  v24();
}

uint64_t sub_1005483BC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 28));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100548570(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100548584(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100548598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100547A0C(a1, v4, v5, v6);
}

uint64_t sub_10054864C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(&qword_100AE9558);
    sub_1005486D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005486D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100799BB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100548718(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100548570(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 2;
}

void sub_10054876C(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  v8 = sub_10079AB24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = a1;
  v21[3] = a2;

  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  sub_1007A23D4(v22);
  v12 = 0xEE007265766F4364;
  v13 = 0x6574616572746E75;
  v14 = 0xEC0000007265766FLL;
  v15 = 0x436E6F6349707061;
  if (a3 != 2)
  {
    v15 = 0xD000000000000010;
    v14 = 0x80000001008DC130;
  }

  if (a3)
  {
    v13 = 0x706F72646B636162;
    v12 = 0xE800000000000000;
  }

  if (a3 <= 1u)
  {
    v16._countAndFlagsBits = v13;
  }

  else
  {
    v16._countAndFlagsBits = v15;
  }

  if (a3 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  v16._object = v17;
  sub_1007A23D4(v16);

  v23._countAndFlagsBits = 64;
  v23._object = 0xE100000000000000;
  sub_1007A23D4(v23);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a4 < 9.22337204e18)
  {
    v21[1] = a4;
    v24._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v24);

    v25._countAndFlagsBits = 120;
    v25._object = 0xE100000000000000;
    sub_1007A23D4(v25);
    v18 = sub_1007A2214();

    sub_10079AAF4();
    isa = sub_10079AAE4().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 stringByAppendingPathExtensionForType:isa];

    sub_1007A2254();
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100548A04()
{
  v0 = sub_1007969B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009A38(v4, qword_100AE9590);
  sub_100008B98(v0, qword_100AE9590);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_100796974();
  sub_100796954();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100548B60()
{
  v0 = sub_1007969B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009A38(v4, qword_100AE95A8);
  sub_100008B98(v0, qword_100AE95A8);
  if (qword_100AD1828 != -1)
  {
    swift_once();
  }

  v5 = sub_100008B98(v0, qword_100AE9590);
  (*(v1 + 16))(v3, v5, v0);
  sub_100796954();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100548CC0@<X0>(uint64_t a1@<X8>)
{
  v29 = 1;
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  if (qword_100AD1830 != -1)
  {
    swift_once();
  }

  v4 = sub_1007969B4();
  v5 = sub_100008B98(v4, qword_100AE95A8);
  sub_100796984();
  v6 = sub_1007A2214();

  v7 = [v3 fileExistsAtPath:v6 isDirectory:&v29];

  if (v7)
  {
    return (*(*(v4 - 8) + 16))(a1, v5, v4);
  }

  if (qword_100AD1840 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AE95C8);
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();
  v28 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    sub_10054A1C0();
    v14 = sub_1007A3A74();
    v16 = sub_1000070F4(v14, v15, &v30);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating caches directory for cover at %s", v12, 0xCu);
    sub_1000074E0(v13);
  }

  v17 = [v2 defaultManager];
  sub_100796944(v18);
  v20 = v19;
  v30 = 0;
  v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v21)
  {
    v22 = v30;
    v23 = [v2 defaultManager];
    sub_100796984();
    v24 = sub_1007A2214();

    v25 = [v23 fileExistsAtPath:v24 isDirectory:&v29];

    a1 = v28;
    if (v25)
    {
      return (*(*(v4 - 8) + 16))(a1, v5, v4);
    }

    sub_10054A16C();
    swift_allocError();
    *v26 = 0;
  }

  else
  {
    v27 = v30;
    sub_1007967D4();
  }

  return swift_willThrow();
}

void sub_10054905C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_100AE95C0 = v2;
}

id sub_1005490C0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1007969B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  if (qword_100AD1838 != -1)
  {
    swift_once();
  }

  v18[3] = a3;
  sub_10054876C(a1, a2, a3, *&qword_100AE95C0);
  sub_100548CC0(v9);
  sub_100796954();

  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = [objc_opt_self() defaultManager];
  sub_100796984();
  v15 = sub_1007A2214();

  v16 = [v14 fileExistsAtPath:v15];

  v13(v12, v6);
  return v16;
}

void sub_100549538(uint64_t a1, unint64_t a2, int a3, CGImage *a4, void (**a5)(char *, uint64_t), uint64_t *a6)
{
  v107 = a4;
  v105 = *a5;
  v10 = sub_10079AB24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007969B4();
  v95 = *(v13 - 8);
  __chkstk_darwin(v13);
  v94 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = &v93 - v16;
  __chkstk_darwin(v17);
  v104 = &v93 - v18;
  if (qword_100AD1840 != -1)
  {
    swift_once();
  }

  v19 = sub_10079ACE4();
  v20 = sub_100008B98(v19, qword_100AE95C8);

  v103 = v20;
  v21 = sub_10079ACC4();
  v22 = sub_1007A29D4();

  v23 = os_log_type_enabled(v21, v22);
  v98 = v10;
  v100 = v11;
  if (v23)
  {
    v101 = a6;
    v102 = v13;
    v24 = a3;
    v25 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v25 = 136315394;
    v99 = a1;
    *(v25 + 4) = sub_1000070F4(a1, a2, &v109);
    *(v25 + 12) = 2080;
    v26 = 0xEE007265766F4364;
    v96 = v24;
    v27 = 0x436E6F6349707061;
    v28 = 0xEC0000007265766FLL;
    if (v24 != 2)
    {
      v27 = 0xD000000000000010;
      v28 = 0x80000001008DC130;
    }

    v29 = 0x706F72646B636162;
    if (v24)
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v29 = 0x6574616572746E75;
    }

    if (v24 <= 1u)
    {
      v30 = v29;
    }

    else
    {
      v30 = v27;
    }

    if (v24 <= 1u)
    {
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = sub_1000070F4(v30, v31, &v109);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saving cached image. (assetID: '%s', type: %s)", v25, 0x16u);
    swift_arrayDestroy();

    a6 = v101;
    v13 = v102;
    a1 = v99;
    a3 = v96;
  }

  else
  {
  }

  v33 = [(CGImage *)v107 CGImage];
  v34 = v108;
  if (v33)
  {
    v107 = v33;
    if (qword_100AD1838 != -1)
    {
      swift_once();
    }

    sub_10054876C(a1, a2, a3, *&qword_100AE95C0);
    v35 = v106;
    sub_100548CC0(v34);
    v36 = v34;
    v37 = v35;
    if (v35)
    {
    }

    else
    {
      v96 = a3;
      v99 = a1;
      v101 = a6;
      sub_100796954();

      v48 = v95;
      v49 = *(v95 + 8);
      v108 = (v95 + 8);
      v106 = v49;
      v49(v36, v13);
      sub_100796944(v50);
      v102 = v13;
      v52 = v51;
      v53 = v97;
      sub_10079AAF4();
      sub_10079AAC4();
      v55 = v100 + 8;
      v54 = *(v100 + 8);
      v54(v53, v98);
      v56 = sub_1007A2214();

      v57 = CGImageDestinationCreateWithURL(v52, v56, 1uLL, 0);

      if (v57)
      {
        v58 = v107;
        CGImageDestinationAddImage(v57, v107, 0);
        if (CGImageDestinationFinalize(v57))
        {
          v106(v104, v102);

          return;
        }

        v77 = sub_10079ACC4();
        v78 = sub_1007A29B4();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v79 = 136315394;
          *(v79 + 4) = sub_1000070F4(v99, a2, &v109);
          *(v79 + 12) = 2080;
          v80 = 0xEE007265766F4364;
          v81 = 0x436E6F6349707061;
          v82 = 0xEC0000007265766FLL;
          if (v96 != 2)
          {
            v81 = 0xD000000000000010;
            v82 = 0x80000001008DC130;
          }

          v83 = 0x706F72646B636162;
          if (v96)
          {
            v80 = 0xE800000000000000;
          }

          else
          {
            v83 = 0x6574616572746E75;
          }

          if (v96 <= 1u)
          {
            v84 = v83;
          }

          else
          {
            v84 = v81;
          }

          if (v96 <= 1u)
          {
            v85 = v80;
          }

          else
          {
            v85 = v82;
          }

          v86 = sub_1000070F4(v84, v85, &v109);

          *(v79 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v77, v78, "Failed to write cached image file. (assetID: '%s', type: %s)", v79, 0x16u);
          swift_arrayDestroy();
        }

        v87 = v102;
        v88 = v104;
        sub_10054A16C();
        v37 = swift_allocError();
        *v89 = 3;
        swift_willThrow();

        v106(v88, v87);
        a6 = v101;
      }

      else
      {
        v105 = v54;
        v100 = v55;
        v60 = v94;
        v61 = v102;
        (*(v48 + 16))(v94, v104, v102);

        v62 = sub_10079ACC4();
        v63 = sub_1007A29B4();

        v64 = v61;
        if (os_log_type_enabled(v62, v63))
        {
          v65 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v109 = v103;
          *v65 = 136315650;
          *(v65 + 4) = sub_1000070F4(v99, a2, &v109);
          *(v65 + 12) = 2080;
          v66 = v97;
          sub_10079AAF4();
          v67 = sub_10079AAC4();
          v69 = v68;
          v105(v66, v98);
          v70 = sub_1000070F4(v67, v69, &v109);

          *(v65 + 14) = v70;
          *(v65 + 22) = 2080;
          sub_10054A1C0();
          v71 = sub_1007A3A74();
          v73 = v72;
          v74 = v60;
          v75 = v106;
          v106(v74, v64);
          v76 = sub_1000070F4(v71, v73, &v109);

          *(v65 + 24) = v76;
          _os_log_impl(&_mh_execute_header, v62, v63, "Failed to create destination in CGImageDestinationCreateWithURL. (assetID: '%s', type: %s, url: %s", v65, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v90 = v60;
          v75 = v106;
          v106(v90, v61);
        }

        a6 = v101;
        v91 = v107;
        sub_10054A16C();
        v37 = swift_allocError();
        *v92 = 2;
        swift_willThrow();

        v75(v104, v64);
      }
    }
  }

  else
  {

    v38 = sub_10079ACC4();
    v39 = sub_1007A29B4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_1000070F4(a1, a2, &v109);
      *(v40 + 12) = 2080;
      v41 = 0xEE007265766F4364;
      v42 = 0x436E6F6349707061;
      v43 = 0xEC0000007265766FLL;
      if (a3 != 2)
      {
        v42 = 0xD000000000000010;
        v43 = 0x80000001008DC130;
      }

      v44 = 0x706F72646B636162;
      if (a3)
      {
        v41 = 0xE800000000000000;
      }

      else
      {
        v44 = 0x6574616572746E75;
      }

      if (a3 <= 1u)
      {
        v45 = v44;
      }

      else
      {
        v45 = v42;
      }

      if (a3 <= 1u)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      v47 = sub_1000070F4(v45, v46, &v109);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Can't save cached image without cgImage. (assetID: '%s', type: %s)", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10054A16C();
    v37 = swift_allocError();
    *v59 = 1;
    swift_willThrow();
  }

  *a6 = v37;
}

uint64_t sub_10054A0EC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE95C8);
  sub_100008B98(v0, qword_100AE95C8);
  return sub_10079ACD4();
}

unint64_t sub_10054A16C()
{
  result = qword_100AE96A0;
  if (!qword_100AE96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE96A0);
  }

  return result;
}

unint64_t sub_10054A1C0()
{
  result = qword_100AF26B0;
  if (!qword_100AF26B0)
  {
    sub_1007969B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF26B0);
  }

  return result;
}

void _sSo13BKAppDelegateC5BooksE29clearWidgetImageCacheIfNeededyyF_0()
{
  v0 = sub_1007969B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v41 = [v4 bu_groupUserDefaults];
  v5 = sub_1007A2214();
  v6 = [v41 integerForKey:v5];

  if (!v6)
  {
    v7 = [v4 standardUserDefaults];
    v8 = sub_1007A2214();
    [v7 integerForKey:v8];

    isa = sub_1007A2884().super.super.isa;
    v10 = sub_1007A2214();
    [v41 setValue:isa forKey:v10];
  }

  v11 = sub_1007A2214();
  v12 = [v41 integerForKey:v11];

  if (v12 > 3)
  {
    v30 = v41;
  }

  else
  {
    if (qword_100AD1830 != -1)
    {
      swift_once();
    }

    v13 = sub_100008B98(v0, qword_100AE95A8);
    (*(v1 + 16))(v3, v13, v0);
    v42 = 1;
    v14 = objc_opt_self();
    v15 = [v14 defaultManager];
    sub_100796984();
    v16 = sub_1007A2214();

    v17 = [v15 fileExistsAtPath:v16 isDirectory:&v42];

    if (v17)
    {
      v18 = [v14 defaultManager];
      sub_100796944(v19);
      v21 = v20;
      v43 = 0;
      v22 = [v18 removeItemAtURL:v20 error:&v43];

      if (v22)
      {
        v23 = v43;
        v24 = sub_1007A2884().super.super.isa;
        v25 = sub_1007A2214();
        [v41 setValue:v24 forKey:v25];

        if (qword_100AD1840 != -1)
        {
          swift_once();
        }

        v26 = sub_10079ACE4();
        sub_100008B98(v26, qword_100AE95C8);
        v27 = sub_10079ACC4();
        v28 = sub_1007A29D4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          *(v29 + 4) = 4;
          _os_log_impl(&_mh_execute_header, v27, v28, "Successfully deleted previous image cache folder. Updated current cache folder version to %ld.", v29, 0xCu);
        }

        else
        {
        }

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        v31 = v43;
        sub_1007967D4();

        swift_willThrow();
        (*(v1 + 8))(v3, v0);
        if (qword_100AD1840 != -1)
        {
          swift_once();
        }

        v32 = sub_10079ACE4();
        sub_100008B98(v32, qword_100AE95C8);
        swift_errorRetain();
        v33 = sub_10079ACC4();
        v34 = sub_1007A29B4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v43 = v36;
          *v35 = 136315138;
          swift_getErrorValue();
          v37 = sub_1007A3B84();
          v39 = sub_1000070F4(v37, v38, &v43);

          *(v35 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v33, v34, "Failed to delete previous image cache folder: %s", v35, 0xCu);
          sub_1000074E0(v36);
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v1 + 8))(v3, v0);
    }
  }
}

unint64_t sub_10054A898()
{
  result = qword_100AE96A8;
  if (!qword_100AE96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE96A8);
  }

  return result;
}

Swift::Int sub_10054A8EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1007A3C04();
  sub_1007A3C14(v1);
  sub_1007A3C14(v2);
  sub_1007A3C14(v3);
  return sub_1007A3C44();
}

void sub_10054A95C()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  sub_1007A3C14(*v0);
  sub_1007A3C14(v1);
  sub_1007A3C14(v2);
}

uint64_t getEnumTagSinglePayload for AudiobookLocationMovement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiobookLocationMovement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

Swift::Int sub_10054AA3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1007A3C04();
  sub_1007A3C14(v1);
  sub_1007A3C14(v2);
  sub_1007A3C14(v3);
  return sub_1007A3C44();
}

BOOL sub_10054AAA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

unint64_t sub_10054AAE8()
{
  result = qword_100AE96B0;
  if (!qword_100AE96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE96B0);
  }

  return result;
}

unint64_t sub_10054AB60()
{
  result = qword_100AE96B8;
  if (!qword_100AE96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE96B8);
  }

  return result;
}

unint64_t sub_10054ABB8()
{
  result = qword_100AE96C0;
  if (!qword_100AE96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE96C0);
  }

  return result;
}

uint64_t type metadata accessor for ReadingLoupeButtonView()
{
  result = qword_100AE9728;
  if (!qword_100AE9728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054AC80()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    sub_10054AD98(319, &unk_100AD8BE8, type metadata accessor for BookReaderViewModel, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      sub_10054AD98(319, &unk_100AE9738, &type metadata accessor for ReadingLoupeVisibilityState, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10054AD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10054AE18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10079CCC4();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD8E60);
  __chkstk_darwin(v8);
  v10 = &v87 - v9;
  v89 = sub_1001F1160(&qword_100AE9778);
  __chkstk_darwin(v89);
  v12 = &v87 - v11;
  v90 = sub_1001F1160(&qword_100AE9780);
  __chkstk_darwin(v90);
  v94 = &v87 - v13;
  v93 = sub_1001F1160(&qword_100AE9788);
  __chkstk_darwin(v93);
  v15 = &v87 - v14;
  v16 = v1;
  v17 = *v1;
  if (*v1)
  {
    v95 = v5;
    v88 = v15;
    v96 = v3;
    v97 = a1;
    v18 = qword_100AD17D0;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    sub_10054B8A4(v10);
    sub_10079E474();
    sub_10079BE54();
    v20 = &v10[*(v8 + 36)];
    v21 = v101;
    *v20 = v100;
    *(v20 + 1) = v21;
    *(v20 + 2) = v102;
    v22 = sub_10079E414();
    __chkstk_darwin(v22);
    sub_1001F1160(&qword_100AE9790);
    sub_10054EC18();
    sub_10054EE4C();
    v23 = v16;
    sub_10079DC54();
    sub_100007840(v10, &qword_100AD8E60);
    *&v12[*(sub_1001F1160(&qword_100AE97D8) + 36)] = 256;
    v24 = sub_10079D2A4();
    sub_10079BBA4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v12[*(sub_1001F1160(&qword_100AE97E0) + 36)];
    *v33 = v24;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    v34 = sub_10079D2C4();
    sub_10079BBA4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v12[*(sub_1001F1160(&qword_100AE97E8) + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    v44 = sub_10079D2E4();
    sub_10079BBA4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = &v12[*(sub_1001F1160(&qword_100AE97F0) + 36)];
    *v53 = v44;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    v54 = sub_10079D2B4();
    sub_10079BBA4();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = &v12[*(sub_1001F1160(&qword_100AE97F8) + 36)];
    *v63 = v54;
    *(v63 + 1) = v56;
    *(v63 + 2) = v58;
    *(v63 + 3) = v60;
    *(v63 + 4) = v62;
    v63[40] = 0;
    v12[*(sub_1001F1160(&qword_100AE9800) + 36)] = 0;
    v64 = &v12[*(v89 + 36)];
    v65 = sub_1001F1160(&qword_100AD8D10);
    sub_10079C444();
    if (qword_100AD1648 != -1)
    {
      swift_once();
    }

    v66 = qword_100B23378;
    v67 = *(sub_10079C3D4() + 20);
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = sub_10079C9E4();
    (*(*(v69 - 8) + 104))(v64 + v67, v68, v69);
    *v64 = v66;
    v64[1] = v66;
    *(v64 + *(v65 + 36)) = 0;
    sub_10079C454();
    sub_10054EF04();
    sub_10054FD90(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    v70 = v94;
    v71 = v92;
    sub_10079D6F4();
    (*(v91 + 8))(v7, v71);
    sub_100007840(v12, &qword_100AE9778);
    v72 = *(v90 + 36);
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = v19;
    sub_10079B9A4();

    v74 = sub_10079BC44();
    (*(*(v74 - 8) + 56))(v70 + v72, 0, 1, v74);
    type metadata accessor for ReadingLoupeButtonView();
    sub_1001F1160(&qword_100AD8B70);
    sub_10079E304();
    v75 = v99;
    swift_getKeyPath();
    v92 = v23;
    v99 = v75;
    sub_10054FD90(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v76 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v77 = v95;
    sub_10054F5DC(v75 + v76, v95, type metadata accessor for BookReaderChromeState);

    v78 = v96;
    LODWORD(v76) = *(v77 + *(v96 + 60));
    sub_100437D94(v77);
    if (v76)
    {
      v79 = 1.0;
    }

    else
    {
      v79 = 0.0;
    }

    v80 = v88;
    sub_10020B3C8(v70, v88, &qword_100AE9780);
    *(v80 + *(v93 + 36)) = v79;
    if (qword_100AD13F8 != -1)
    {
      swift_once();
    }

    v81 = qword_100B22FF8;
    sub_10079E304();
    v82 = v98;
    swift_getKeyPath();
    v98 = v82;
    sub_100797A14();

    v83 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_10054F5DC(v82 + v83, v77, type metadata accessor for BookReaderChromeState);

    LOBYTE(v82) = *(v77 + *(v78 + 60));
    sub_100437D94(v77);
    v84 = v97;
    sub_10020B3C8(v80, v97, &qword_100AE9788);
    v85 = v84 + *(sub_1001F1160(&qword_100AE9840) + 36);
    *v85 = v81;
    *(v85 + 8) = v82;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10054FD90(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10054B8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_10079C914();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10079E584();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AE97B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v33 = sub_1001F1160(&qword_100AE97A8);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v30 - v12;
  v14 = sub_1001F1160(&qword_100AE97A0);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v31 = &v30 - v16;
  v43 = v2;
  v42 = v2;
  sub_1001F1160(&qword_100AE9848);
  sub_1001F1160(&qword_100AE9850);
  sub_10054F3EC();
  sub_100005920(&qword_100AE9860, &qword_100AE9850);
  sub_10079D534();
  sub_10079E574();
  v17 = sub_100005920(&qword_100AE97B8, &qword_100AE97B0);
  sub_10079DCB4();
  (*(v32 + 8))(v7, v34);
  (*(v9 + 8))(v11, v8);
  v18 = v36;
  sub_10079C904();
  v44 = v8;
  v45 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_10054FD90(&qword_100AE97C0, &type metadata accessor for IconOnlyLabelStyle);
  v21 = v31;
  v22 = v33;
  v23 = v39;
  sub_10079D674();
  v24 = v18;
  v25 = v23;
  (*(v40 + 8))(v24, v23);
  (*(v35 + 8))(v13, v22);
  type metadata accessor for ChromeStyle();
  sub_10054FD90(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v26 = sub_10079C484();
  v48 = v26;
  v49 = v27;
  v44 = v22;
  v45 = v25;
  v46 = OpaqueTypeConformance2;
  v47 = v20;
  swift_getOpaqueTypeConformance2();
  sub_10054EDF8();
  v28 = v37;
  sub_10079D6B4();

  return (*(v38 + 8))(v21, v28);
}

uint64_t sub_10054BE54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a1;
  v97 = a2;
  v2 = sub_1001F1160(&qword_100AE9870);
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v94 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v73 - v5;
  v101 = sub_1007A1874();
  v93 = *(v101 - 8);
  __chkstk_darwin(v101);
  v92 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReadingLoupeButtonView();
  v8 = *(v7 - 8);
  v82 = v7 - 8;
  v91 = v8;
  v90 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v89 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10079C864();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE9878);
  __chkstk_darwin(v11 - 8);
  v77 = &v73 - v12;
  v13 = sub_100796CF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  v20 = sub_1007A21D4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  v78 = sub_1001F1160(&qword_100AE9880);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v28 = &v73 - v27;
  v80 = sub_1001F1160(&qword_100AE9888);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v73 - v29;
  v98 = sub_1001F1160(&qword_100AE9890);
  __chkstk_darwin(v98);
  v76 = &v73 - v30;
  v88 = sub_1001F1160(&qword_100AE9898);
  v100 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v99 = &v73 - v33;
  sub_1007A2154();
  sub_100796C94();
  (*(v21 + 16))(v23, v26, v20);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v14 + 16))(v16, v19, v13);
  v36 = sub_1007A22D4();
  v38 = v37;
  (*(v14 + 8))(v19, v13);
  (*(v21 + 8))(v26, v20);
  v104 = v36;
  v105 = v38;
  v73 = sub_1001F1160(&qword_100AE96C8);
  v39 = v84;
  sub_10079E014();
  sub_1001F1160(&qword_100AE98A0);
  v75 = &type metadata accessor for ReadingLoupeVisibilityState;
  sub_10054FD90(&qword_100AE98A8, &type metadata accessor for ReadingLoupeVisibilityState);
  sub_10054F4E4();
  sub_100206ECC();
  sub_10079E114();
  v40 = sub_100005920(&qword_100AE98B8, &qword_100AE9880);
  v41 = v74;
  v42 = v78;
  sub_10079D854();
  (*(v79 + 8))(v28, v42);
  v43 = v83;
  sub_10079C854();
  v104 = v42;
  v105 = v40;
  swift_getOpaqueTypeConformance2();
  v44 = v76;
  v45 = v80;
  v46 = v85;
  sub_10079D704();
  (*(v86 + 8))(v43, v46);
  (*(v81 + 8))(v41, v45);
  sub_1001F1160(&qword_100AD8B70);
  sub_10079E304();
  swift_unknownObjectRetain();

  swift_getObjectType();
  v47 = sub_1007A1414();
  swift_unknownObjectRelease();
  v48 = v89;
  sub_10054F5DC(v39, v89, type metadata accessor for ReadingLoupeButtonView);
  v49 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v50 = swift_allocObject();
  sub_10054F644(v48, v50 + v49);
  v51 = v98;
  *(v44 + *(v98 + 52)) = v47;
  v52 = (v44 + *(v51 + 56));
  *v52 = sub_10054F6A8;
  v52[1] = v50;
  v53 = v39;
  v54 = v92;
  sub_10079DFF4();
  sub_10054F5DC(v39, v48, type metadata accessor for ReadingLoupeButtonView);
  v55 = swift_allocObject();
  sub_10054F644(v48, v55 + v49);
  sub_100005920(&qword_100AE98C0, &qword_100AE9890);
  sub_10054FD90(&qword_100AE98C8, v75);
  v56 = v99;
  v57 = v54;
  v58 = v101;
  sub_10079DC24();

  (*(v93 + 8))(v57, v58);
  sub_100007840(v44, &qword_100AE9890);
  v103 = v53;
  sub_1001F1160(&qword_100ADB860);
  sub_100005920(&qword_100AEE360, &qword_100ADB860);
  v59 = v102;
  sub_10079E2C4();
  v60 = *(v100 + 16);
  v61 = v87;
  v62 = v88;
  v60(v87, v56, v88);
  v63 = v94;
  v64 = v95;
  v65 = *(v95 + 16);
  v66 = v59;
  v67 = v96;
  v65(v94, v66, v96);
  v68 = v97;
  v60(v97, v61, v62);
  v69 = sub_1001F1160(&qword_100AE98D0);
  v65(&v68[*(v69 + 48)], v63, v67);
  v70 = *(v64 + 8);
  v70(v102, v67);
  v71 = *(v100 + 8);
  v71(v99, v62);
  v70(v63, v67);
  return (v71)(v61, v62);
}

uint64_t sub_10054CB28()
{
  sub_1007A1864();
  sub_1001F1160(&qword_100AE98D8);
  sub_1007A1874();
  sub_1001F1160(&qword_100AE98E0);
  sub_100005920(&qword_100AE98E8, &qword_100AE98D8);
  sub_10054FD90(&qword_100AE98A8, &type metadata accessor for ReadingLoupeVisibilityState);
  swift_getOpaqueTypeConformance2();
  sub_10054FD90(&qword_100AE98F0, &type metadata accessor for ReadingLoupeVisibilityState);
  return sub_10079E274();
}

uint64_t sub_10054CCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007A1854();
  sub_100206ECC();
  v4 = sub_10079D5D4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a2 + *(sub_1001F1160(&qword_100AD1DA0) + 36);
  v12 = sub_1007A1874();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  result = sub_1001F1160(&qword_100AD1DA8);
  *(v11 + *(result + 36)) = 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_10054CDB0(uint64_t a1)
{
  v2 = sub_1007A1874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReadingLoupeButtonView();
  sub_1001F1160(&qword_100AE96C8);
  sub_10079DFF4();
  sub_10054FD90(&qword_100AE98C8, &type metadata accessor for ReadingLoupeVisibilityState);
  v6 = sub_1007A2124();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    (*(v3 + 16))(v5, a1, v2);
    return sub_10079E004();
  }

  return result;
}

uint64_t sub_10054CF34(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1006AC2E8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10054CF8C(uint64_t a1)
{
  v2 = type metadata accessor for ReadingLoupeButtonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1001F1160(&qword_100ADB858);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_10079BB64();
  v8 = sub_10079BB84();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_10054F5DC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingLoupeButtonView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10054F644(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_10079E044();
}

uint64_t sub_10054D164()
{
  v0 = sub_1007A1D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    sub_100017E74();
    swift_unknownObjectRetain();
    *v3 = sub_1007A2D74();
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v7 = sub_1007A1D34();
    result = (*(v1 + 8))(v3, v0);
    if (v7)
    {

      sub_1006B1974(*(v6 + 16));

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10054D2D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  v18 = sub_1007A22D4();
  v20 = v19;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  v25[1] = v18;
  v25[2] = v20;
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_10054D574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v117 = a2;
  v2 = sub_10079CA64();
  v115 = *(v2 - 8);
  v116 = v2;
  __chkstk_darwin(v2);
  v114 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1007A1874();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100796CF4();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v99 - v7;
  v123 = sub_1007A21D4();
  v128 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = &v99 - v10;
  v106 = sub_10079C0E4();
  v105 = *(v106 - 1);
  __chkstk_darwin(v106);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v99 - v13;
  v100 = sub_10079D4D4();
  v15 = *(v100 - 1);
  __chkstk_darwin(v100);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&qword_100AD8DD8);
  __chkstk_darwin(v18 - 8);
  v20 = &v99 - v19;
  v101 = sub_1001F1160(&qword_100AD1CD8);
  __chkstk_darwin(v101);
  v22 = (&v99 - v21);
  v102 = sub_1001F1160(&qword_100AE9868);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v24 = &v99 - v23;
  v119 = sub_1001F1160(&qword_100AE9848);
  __chkstk_darwin(v119);
  v118 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v107 = &v99 - v27;
  __chkstk_darwin(v28);
  v126 = &v99 - v29;
  __chkstk_darwin(v30);
  v108 = &v99 - v31;
  __chkstk_darwin(v32);
  v109 = &v99 - v33;
  sub_10079DF24();
  v34 = enum case for Image.TemplateRenderingMode.template(_:);
  v35 = sub_10079DF74();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v20, v34, v35);
  (*(v36 + 56))(v20, 0, 1, v35);
  v37 = sub_10079DF44();

  sub_100007840(v20, &qword_100AD8DD8);
  v38 = v100;
  (*(v15 + 104))(v17, enum case for Font.TextStyle.body(_:), v100);
  v39 = sub_10079D3A4();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
  sub_10079D3F4();
  v40 = sub_10079D434();
  sub_100007840(v14, &unk_100AD1FC0);
  (*(v15 + 8))(v17, v38);
  KeyPath = swift_getKeyPath();
  v42 = v101;
  v43 = (v22 + *(v101 + 36));
  v44 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v45 = enum case for Image.Scale.large(_:);
  v46 = sub_10079DF84();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  *v22 = v37;
  v22[1] = KeyPath;
  v22[2] = v40;
  v47 = v105;
  v48 = v104;
  v49 = v106;
  (*(v105 + 104))(v104, enum case for DynamicTypeSize.large(_:), v106);
  v50 = sub_1001F1584();
  sub_10079D7D4();
  (*(v47 + 8))(v48, v49);
  sub_100007840(v22, &qword_100AD1CD8);
  v129 = v42;
  v130 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v102;
  sub_10079D944();
  (v103)[1](v24, v51);
  v52 = v120;
  sub_1007A2154();
  v53 = v122;
  sub_100796C94();
  v54 = *(v128 + 16);
  v105 = v128 + 16;
  v106 = v54;
  v55 = v123;
  (v54)(v121, v52, v123);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v104 = ObjCClassFromMetadata;
  v103 = objc_opt_self();
  v57 = [v103 bundleForClass:ObjCClassFromMetadata];
  v58 = v127;
  v101 = *(v127 + 16);
  v102 = v127 + 16;
  v59 = v125;
  (v101)(v124, v53, v125);
  v60 = sub_1007A22D4();
  v62 = v61;
  v63 = *(v58 + 8);
  v127 = v58 + 8;
  v63(v53, v59);
  v64 = *(v128 + 8);
  v128 += 8;
  v100 = v64;
  (v64)(v52, v55);
  v129 = v60;
  v130 = v62;
  sub_100206ECC();
  v65 = sub_10079D5D4();
  v67 = v66;
  LOBYTE(v52) = v68;
  v69 = v107;
  v70 = v118;
  sub_10079C1B4();
  sub_10020B430(v65, v67, v52 & 1);

  sub_100007840(v70, &qword_100AE9848);
  type metadata accessor for ReadingLoupeButtonView();
  sub_1001F1160(&qword_100AD8B70);
  sub_10079E304();
  swift_unknownObjectRetain();

  swift_getObjectType();
  v71 = v110;
  sub_1007A13C4();
  swift_unknownObjectRelease();
  v72 = sub_1007A1844();
  v74 = v73;
  (*(v112 + 8))(v71, v113);
  v129 = v72;
  v130 = v74;
  v75 = sub_10079D5D4();
  v77 = v76;
  LOBYTE(v71) = v78;
  sub_10079C1D4();
  sub_10020B430(v75, v77, v71 & 1);

  sub_100007840(v69, &qword_100AE9848);
  v79 = v120;
  sub_1007A2154();
  v80 = v122;
  sub_100796C94();
  v81 = v123;
  (v106)(v121, v79, v123);
  v82 = [v103 bundleForClass:v104];
  v83 = v125;
  v84 = v80;
  (v101)(v124, v80, v125);
  v85 = sub_1007A22D4();
  v87 = v86;
  v63(v84, v83);
  (v100)(v79, v81);
  v129 = v85;
  v130 = v87;
  v88 = sub_10079D5D4();
  v90 = v89;
  LOBYTE(v62) = v91;
  v92 = v108;
  v93 = v126;
  sub_10079C194();
  sub_10020B430(v88, v90, v62 & 1);

  sub_100007840(v93, &qword_100AE9848);
  v94 = v114;
  sub_10079CA24();
  v95 = v109;
  sub_10079C274();
  v96 = v116;
  v97 = *(v115 + 8);
  v97(v94, v116);
  sub_100007840(v92, &qword_100AE9848);
  sub_10079CA44();
  sub_10079C234();
  v97(v94, v96);
  return sub_100007840(v95, &qword_100AE9848);
}

uint64_t sub_10054E3BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v28 = a3;
  v26 = sub_1001F1160(&qword_100AD8E70);
  __chkstk_darwin(v26);
  v27 = &v25 - v4;
  v5 = sub_10079BC44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a2;
    sub_10079B9A4();

    v13 = *(v6 + 104);
    v13(v8, enum case for ColorScheme.dark(_:), v5);
    v14 = sub_10079BC34();
    v15 = *(v6 + 8);
    v15(v8, v5);
    v15(v11, v5);
    if (v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v13(v8, enum case for ColorScheme.light(_:), v5);
      sub_10079BC34();
      v15(v8, v5);
      v15(v11, v5);
      v16 = sub_10079DE54();
    }

    else
    {

      v16 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v17 = v27;

    sub_10079CFD4();
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    v18 = (v17 + *(sub_1001F1160(&qword_100AE9910) + 36));
    v19 = v30;
    *v18 = v29;
    v18[1] = v19;
    v18[2] = v31;
    KeyPath = swift_getKeyPath();
    v21 = (v17 + *(v26 + 36));
    *v21 = KeyPath;
    v21[1] = v16;
    sub_10079E414();
    sub_1001F1160(&qword_100AE9918);
    sub_1001F1160(&qword_100AE9920);
    sub_10054FC1C();
    sub_10054FDD8();
    sub_10054FFC8();
    v22 = v28;
    sub_10079DC54();

    sub_100007840(v17, &qword_100AD8E70);
    result = sub_1001F1160(&qword_100AE9968);
    v24 = v22 + *(result + 36);
    *v24 = 0xC020000000000000;
    *(v24 + 8) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10054FD90(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10054E8A0@<X0>(uint64_t a1@<X8>)
{
  sub_10079E414();
  sub_1001F1160(&qword_100AD8E70);
  sub_1001F1160(&qword_100AE9940);
  sub_10054FC1C();
  sub_10054FF10();
  sub_10079DC54();
  result = sub_1001F1160(&qword_100AE9918);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10054E998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChromeStyle();
  sub_10054FD90(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v4 = sub_10079C484();
  v6 = v5;
  sub_10055010C(a1, a2);
  v7 = (a2 + *(sub_1001F1160(&qword_100AE9960) + 36));
  *v7 = 0x3FF0000000000000;
  v7[1] = v4;
  v7[2] = v6;
  v8 = (a2 + *(sub_1001F1160(&qword_100AE9920) + 36));
  v9 = *(sub_10079C3D4() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_10079C9E4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  result = sub_1001F1160(&qword_100AD97F8);
  *&v8[*(result + 36)] = 256;
  return result;
}

uint64_t sub_10054EAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E3A4();
  v8 = a2 + *(sub_1001F1160(&qword_100AE9790) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v8 + *(sub_1001F1160(&qword_100AD1D30) + 56)) = 256;
  return sub_10003FDA8(a1, a2);
}

unint64_t sub_10054EC18()
{
  result = qword_100AE9798;
  if (!qword_100AE9798)
  {
    sub_1001F1234(&qword_100AD8E60);
    sub_1001F1234(&qword_100AE97A0);
    sub_1001F1234(&qword_100AE97A8);
    sub_10079C914();
    sub_1001F1234(&qword_100AE97B0);
    sub_100005920(&qword_100AE97B8, &qword_100AE97B0);
    swift_getOpaqueTypeConformance2();
    sub_10054FD90(&qword_100AE97C0, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10054EDF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9798);
  }

  return result;
}

unint64_t sub_10054EDF8()
{
  result = qword_100AE97C8;
  if (!qword_100AE97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE97C8);
  }

  return result;
}

unint64_t sub_10054EE4C()
{
  result = qword_100AE97D0;
  if (!qword_100AE97D0)
  {
    sub_1001F1234(&qword_100AE9790);
    sub_10054EC18();
    sub_100005920(&qword_100AD1D28, &qword_100AD1D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE97D0);
  }

  return result;
}

unint64_t sub_10054EF04()
{
  result = qword_100AE9808;
  if (!qword_100AE9808)
  {
    sub_1001F1234(&qword_100AE9778);
    sub_10054EFBC();
    sub_100005920(&qword_100AD8DC0, &qword_100AD8D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9808);
  }

  return result;
}

unint64_t sub_10054EFBC()
{
  result = qword_100AE9810;
  if (!qword_100AE9810)
  {
    sub_1001F1234(&qword_100AE9800);
    sub_10054F074();
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9810);
  }

  return result;
}

unint64_t sub_10054F074()
{
  result = qword_100AE9818;
  if (!qword_100AE9818)
  {
    sub_1001F1234(&qword_100AE97F8);
    sub_10054F100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9818);
  }

  return result;
}

unint64_t sub_10054F100()
{
  result = qword_100AE9820;
  if (!qword_100AE9820)
  {
    sub_1001F1234(&qword_100AE97F0);
    sub_10054F18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9820);
  }

  return result;
}

unint64_t sub_10054F18C()
{
  result = qword_100AE9828;
  if (!qword_100AE9828)
  {
    sub_1001F1234(&qword_100AE97E8);
    sub_10054F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9828);
  }

  return result;
}

unint64_t sub_10054F218()
{
  result = qword_100AE9830;
  if (!qword_100AE9830)
  {
    sub_1001F1234(&qword_100AE97E0);
    sub_10054F2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9830);
  }

  return result;
}

unint64_t sub_10054F2A4()
{
  result = qword_100AE9838;
  if (!qword_100AE9838)
  {
    sub_1001F1234(&qword_100AE97D8);
    sub_1001F1234(&qword_100AD8E60);
    sub_1001F1234(&qword_100AE9790);
    sub_10054EC18();
    sub_10054EE4C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD1D38, &qword_100AD1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9838);
  }

  return result;
}

unint64_t sub_10054F3EC()
{
  result = qword_100AE9858;
  if (!qword_100AE9858)
  {
    sub_1001F1234(&qword_100AE9848);
    sub_1001F1234(&qword_100AD1CD8);
    sub_1001F1584();
    swift_getOpaqueTypeConformance2();
    sub_10054FD90(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9858);
  }

  return result;
}

unint64_t sub_10054F4E4()
{
  result = qword_100AE98B0;
  if (!qword_100AE98B0)
  {
    sub_1001F1234(&qword_100AE98A0);
    sub_1007A1874();
    sub_10054FD90(&qword_100AE98A8, &type metadata accessor for ReadingLoupeVisibilityState);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE98B0);
  }

  return result;
}

uint64_t sub_10054F5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054F644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingLoupeButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054F6A8(uint64_t a1)
{
  type metadata accessor for ReadingLoupeButtonView();

  return sub_10054CDB0(a1);
}

uint64_t sub_10054F718(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReadingLoupeButtonView();

  return sub_10054CF34(a1, a2);
}

uint64_t sub_10054F7A0()
{
  v1 = (type metadata accessor for ReadingLoupeButtonView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  swift_unknownObjectWeakDestroy();
  v3 = v1[9];
  v4 = sub_1001F1160(&qword_100AD8B70);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[10];
  v6 = sub_1007A1874();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1001F1160(&qword_100AE96C8);

  return swift_deallocObject();
}

uint64_t sub_10054F908()
{
  type metadata accessor for ReadingLoupeButtonView();

  return sub_10054D164();
}

unint64_t sub_10054F978()
{
  result = qword_100AE98F8;
  if (!qword_100AE98F8)
  {
    sub_1001F1234(&qword_100AE9840);
    sub_10054FA30();
    sub_100005920(&qword_100AD74E0, &qword_100AD74E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE98F8);
  }

  return result;
}

unint64_t sub_10054FA30()
{
  result = qword_100AE9900;
  if (!qword_100AE9900)
  {
    sub_1001F1234(&qword_100AE9788);
    sub_10054FABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9900);
  }

  return result;
}

unint64_t sub_10054FABC()
{
  result = qword_100AE9908;
  if (!qword_100AE9908)
  {
    sub_1001F1234(&qword_100AE9780);
    sub_1001F1234(&qword_100AE9778);
    sub_10079CCC4();
    sub_10054EF04();
    sub_10054FD90(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD6CE0, &qword_100ADB270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9908);
  }

  return result;
}

unint64_t sub_10054FC1C()
{
  result = qword_100AE9928;
  if (!qword_100AE9928)
  {
    sub_1001F1234(&qword_100AD8E70);
    sub_10054FCD4();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9928);
  }

  return result;
}

unint64_t sub_10054FCD4()
{
  result = qword_100AE9930;
  if (!qword_100AE9930)
  {
    sub_1001F1234(&qword_100AE9910);
    sub_10054FD90(&qword_100ADC328, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9930);
  }

  return result;
}

uint64_t sub_10054FD90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10054FDD8()
{
  result = qword_100AE9938;
  if (!qword_100AE9938)
  {
    sub_1001F1234(&qword_100AE9918);
    sub_1001F1234(&qword_100AD8E70);
    sub_1001F1234(&qword_100AE9940);
    sub_10054FC1C();
    sub_10054FF10();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD1D38, &qword_100AD1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9938);
  }

  return result;
}

unint64_t sub_10054FF10()
{
  result = qword_100AE9948;
  if (!qword_100AE9948)
  {
    sub_1001F1234(&qword_100AE9940);
    sub_10054FC1C();
    sub_100005920(&qword_100AD1D28, &qword_100AD1D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9948);
  }

  return result;
}

unint64_t sub_10054FFC8()
{
  result = qword_100AE9950;
  if (!qword_100AE9950)
  {
    sub_1001F1234(&qword_100AE9920);
    sub_100550080();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9950);
  }

  return result;
}

unint64_t sub_100550080()
{
  result = qword_100AE9958;
  if (!qword_100AE9958)
  {
    sub_1001F1234(&qword_100AE9960);
    sub_10054FC1C();
    sub_10020AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9958);
  }

  return result;
}

uint64_t sub_10055010C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD8E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10055017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E3A4();
  v8 = a2 + *(sub_1001F1160(&qword_100AE9940) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v8 + *(sub_1001F1160(&qword_100AD1D30) + 56)) = 256;
  return sub_10055010C(a1, a2);
}

unint64_t sub_1005502A8()
{
  result = qword_100AE9970;
  if (!qword_100AE9970)
  {
    sub_1001F1234(&qword_100AE9968);
    sub_1001F1234(&qword_100AD8E70);
    sub_1001F1234(&qword_100AE9918);
    sub_1001F1234(&qword_100AE9920);
    sub_10054FC1C();
    sub_10054FDD8();
    sub_10054FFC8();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE9978, &unk_100AE9980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9970);
  }

  return result;
}

unint64_t CurrentLocationPersistenceService.__allocating_init(managedObjectContext:bookProvider:annotationModifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  ObjectType = swift_getObjectType();
  v11 = swift_getObjectType();

  return sub_100554CBC(a1, a2, a4, v9, ObjectType, v11, a3);
}

uint64_t CurrentLocationPersistenceService.persistedLocation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100550548@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1005505C8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10079B9B4();
}

uint64_t CurrentLocationPersistenceService.persistedLocation.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_10079B9B4();
}

void (*CurrentLocationPersistenceService.persistedLocation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10079B994();
  return sub_1002E6F80;
}

uint64_t CurrentLocationPersistenceService.$persistedLocation.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE99A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&qword_100AE9998);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CurrentLocationPersistenceService.$persistedLocation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001F1160(&qword_100AE99A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService__persistedLocation;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&qword_100AE9998);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

uint64_t _s5Books33CurrentLocationPersistenceServiceC010_persistedC07Combine9PublishedV9PublisherVy8BookEPUB09PersistedC6EntityC_Gvg_0()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AE9998);
  sub_10079B974();
  return swift_endAccess();
}

unint64_t CurrentLocationPersistenceService.init(managedObjectContext:bookProvider:annotationModifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  return sub_100554CBC(a1, a2, a4, v4, ObjectType, v10, a3);
}

id sub_100550AF0()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v32 - v10;
  v11 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v11 - 8);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  sub_100552D0C(&v32 - v17);
  result = [v0 annotationUuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = result;
  v21 = sub_1007A2254();
  v34 = v22;
  v35 = v21;

  sub_100555990(v18, v15);
  v23 = sub_10079FD44();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) != 1)
  {
    v33 = sub_10079FD14();
    (*(v24 + 8))(v15, v23);
    goto LABEL_6;
  }

  sub_100007840(v15, &qword_100AE6A10);
  result = [v1 plLocationRangeStart];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v25 = result;
  v33 = [result integerValue];

LABEL_6:
  v26 = [v1 annotationLocation];
  if (v26)
  {
    v27 = v26;
    sub_1007A2254();
  }

  sub_100555990(v18, v37);
  v28 = [v1 locationModificationDate];
  if (v28)
  {
    v29 = v28;
    sub_100796B64();

    v30 = *(v6 + 32);
    v30(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v30(v36, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_100796A84();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_100007840(v4, &unk_100ADB5C0);
    }
  }

  [v1 readingProgress];
  [v1 readingProgressHighWaterMark];
  sub_1007A1154();
  swift_allocObject();
  v31 = sub_1007A1144();
  sub_100007840(v18, &qword_100AE6A10);
  return v31;
}

Swift::Void __swiftcall CurrentLocationPersistenceService.start()()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_10051C634;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003323D0;
  v5[3] = &unk_100A22C60;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 performBlock:v3];
  _Block_release(v3);
}

void sub_100551078(char *a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1007A2214();
  v41 = [v2 initWithEntityName:v3];

  v4 = objc_opt_self();
  v5 = &a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity];
  sub_10000E3E8(&a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity], *&a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity + 24]);
  sub_10079ECA4();
  v6 = sub_1007A2214();

  v7 = [v4 predicateForGlobalAnnotationWithAssetID:v6];

  [v41 setPredicate:v7];
  sub_1001F1160(&unk_100AD8160);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100811390;
  v9 = objc_allocWithZone(NSSortDescriptor);
  v10 = sub_1007A2214();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;

  [v41 setSortDescriptors:isa];

  [v41 setFetchLimit:1];
  v13 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v41 managedObjectContext:*&a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC] sectionNameKeyPath:0 cacheName:0];
  v14 = OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC;
  v15 = *&a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC];
  *&a1[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC] = v13;

  v16 = *&a1[v14];
  if (v16)
  {
    v42 = 0;
    if ([v16 performFetch:&v42])
    {
      v17 = v42;
      v18 = *&a1[v14];
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v28 = v42;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AF40B0);
      v30 = a1;
      swift_errorRetain();
      v31 = sub_10079ACC4();
      v32 = sub_1007A29B4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v33 = 136446466;
        swift_getErrorValue();
        v34 = sub_1007A3B84();
        v36 = sub_1000070F4(v34, v35, &v42);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2082;
        sub_10000E3E8(v5, *(v5 + 3));
        v37 = sub_10079ECF4();
        v39 = sub_1000070F4(v37, v38, &v42);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to fetch #globalAnnotation annotations for FRC: %{public}s for:%{public}s", v33, 0x16u);
        swift_arrayDestroy();

        v18 = *&a1[v14];
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v18 = *&a1[v14];
        if (!v18)
        {
LABEL_19:

          return;
        }
      }
    }

    v40 = v18;
    [v40 setDelegate:a1];

    goto LABEL_19;
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v19 = sub_10079ACE4();
  sub_100008B98(v19, qword_100AF40B0);
  v20 = a1;
  v21 = sub_10079ACC4();
  v22 = sub_1007A29B4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136446210;
    sub_10000E3E8(v5, *(v5 + 3));
    v25 = sub_10079ECF4();
    v27 = sub_1000070F4(v25, v26, &v42);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unable to initialize annotation FRC for:%{public}s", v23, 0xCu);
    sub_1000074E0(v24);
  }

  else
  {
  }
}

void sub_1005516B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(id), uint64_t a8, char a9, uint64_t a10)
{
  if (a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007A3784();
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v14 = *(a1 + 32);
      if (a3)
      {
LABEL_5:

        if (a7(v14))
        {
          if ((a9 & 1) == 0 && (a10 & 0x100000000) == 0)
          {
            LODWORD(v15) = a10;
            [v14 updateReadingProgressAndBumpHighWaterMarkToProgress:v15];
          }

          isa = sub_100796AF4().super.isa;
          [v14 setUserModificationDate:isa];

          a3();
        }

        sub_100007020(a3);
        return;
      }
    }
  }

  if (qword_100AD1B58 != -1)
  {
LABEL_22:
    swift_once();
  }

  v17 = sub_10079ACE4();
  sub_100008B98(v17, qword_100AF40B0);

  oslog = sub_10079ACC4();
  v18 = sub_1007A29B4();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1000070F4(a5, a6, &v22);
    _os_log_impl(&_mh_execute_header, oslog, v18, "Failed to fetch or create #globalAnnotation annotation for %{public}s", v19, 0xCu);
    sub_1000074E0(v20);
  }
}

uint64_t sub_100551914(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_10000A7C4(0, &qword_100AECB40);
    v6 = sub_1007A25E4();
  }

  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1002427EC;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v7(v6, a3, v8, v9);
  sub_100007020(v8);
}

void CurrentLocationPersistenceService.update(pageLocation:progress:updateDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v8;
  v9 = &v38 - ((&v8[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079FD44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  if (*(v3 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookInstanceHasClosed))
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AF40B0);
    v47 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v47, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v47, v14, "Attempting Location update after close", v15, 2u);
    }

    v16 = v47;
  }

  else
  {
    v44 = a3;
    v45 = a2;
    v17 = (v3 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity);
    v43 = v6;
    sub_10000E3E8((v3 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity), *(v3 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity + 24));
    v39 = v3;
    v18 = sub_10079ECF4();
    v20 = v19;
    v40 = v7;
    v41 = v9;
    sub_10000E3E8(v17, v17[3]);
    v42 = sub_10079EC84();
    (*(v11 + 16))(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v10);
    v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v22 = swift_allocObject();
    (*(v11 + 32))(v22 + v21, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v23 = (v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v18;
    v23[1] = v20;
    sub_10000E3E8(v17, v17[3]);
    v24 = sub_10079ECF4();
    v26 = v25;
    v46 = *(v39 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationModifier);
    sub_1001F1160(&unk_100AE0B30);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10080B690;
    sub_10000E3E8(v17, v17[3]);
    *(v27 + 32) = sub_10079ECA4();
    *(v27 + 40) = v28;
    isa = sub_1007A25D4().super.isa;

    v30 = v40;
    v31 = v41;
    v32 = v43;
    (*(v40 + 16))(v41, v44, v43);
    v33 = v30;
    v34 = (*(v30 + 80) + 57) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    *(v35 + 24) = v26;
    *(v35 + 32) = sub_1005555D4;
    *(v35 + 40) = v22;
    *(v35 + 48) = v42 & 1;
    v36 = BYTE4(v45);
    *(v35 + 52) = v45;
    *(v35 + 56) = v36 & 1;
    (*(v33 + 32))(v35 + v34, v31, v32);
    aBlock[4] = sub_100555674;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100551914;
    aBlock[3] = &unk_100A22CD8;
    v37 = _Block_copy(aBlock);

    [v46 modifyGlobalAnnotationsWithAssetIDs:isa type:1 performBlock:v37];
    _Block_release(v37);
  }
}

uint64_t sub_100551F28(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v78 = a4;
  v75 = a3;
  v6 = sub_10079FD44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v74 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v76 = &v65[-v10];
  __chkstk_darwin(v11);
  v72 = &v65[-v12];
  v13 = sub_1001F1160(&qword_100AE9370);
  __chkstk_darwin(v13);
  v15 = &v65[-v14];
  v16 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v16 - 8);
  v18 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v65[-v20];
  __chkstk_darwin(v22);
  v24 = &v65[-v23];
  v25 = sub_10055287C();
  if (v26 >> 60 == 15)
  {
    return 0;
  }

  v70 = v25;
  v71 = v26;
  v67 = a1;
  sub_100552D0C(v24);
  v27 = *(v7 + 16);
  v77 = a2;
  v68 = v27;
  v27(v21, a2, v6);
  (*(v7 + 56))(v21, 0, 1, v6);
  v28 = *(v13 + 48);
  v73 = v24;
  sub_100555990(v24, v15);
  sub_100555990(v21, &v15[v28]);
  v29 = *(v7 + 48);
  v30 = v29(v15, 1, v6);
  v69 = v7;
  if (v30 == 1)
  {
    sub_100007840(v21, &qword_100AE6A10);
    v31 = v29(&v15[v28], 1, v6);
    v32 = v73;
    if (v31 == 1)
    {
      sub_100007840(v15, &qword_100AE6A10);
      v33 = v77;
LABEL_15:
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v52 = sub_10079ACE4();
      sub_100008B98(v52, qword_100AF40B0);
      v53 = v74;
      v68(v74, v33, v6);
      v54 = v78;

      v55 = sub_10079ACC4();
      v56 = sub_1007A29D4();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v69;
      if (v57)
      {
        v59 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v59 = 136446466;
        sub_100555AC4(&qword_100AE9A40, &type metadata accessor for PageLocation);
        v60 = sub_1007A3A74();
        v61 = v53;
        v63 = v62;
        (*(v58 + 8))(v61, v6);
        v64 = sub_1000070F4(v60, v63, &v79);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2082;
        *(v59 + 14) = sub_1000070F4(v75, v54, &v79);
        _os_log_impl(&_mh_execute_header, v55, v56, "Skipping update of identical #globalAnnotation annotation to:%{public}s for:%{public}s", v59, 0x16u);
        swift_arrayDestroy();

        sub_10028FDA0(v70, v71);
      }

      else
      {
        sub_10028FDA0(v70, v71);

        (*(v58 + 8))(v53, v6);
      }

      sub_100007840(v32, &qword_100AE6A10);
      return 0;
    }

    goto LABEL_7;
  }

  sub_100555990(v15, v18);
  if (v29(&v15[v28], 1, v6) == 1)
  {
    sub_100007840(v21, &qword_100AE6A10);
    (*(v7 + 8))(v18, v6);
    v32 = v73;
LABEL_7:
    sub_100007840(v15, &qword_100AE9370);
    v33 = v77;
    v34 = v67;
    goto LABEL_8;
  }

  v50 = v72;
  (*(v7 + 32))(v72, &v15[v28], v6);
  sub_100555AC4(&unk_100AEB800, &type metadata accessor for PageLocation);
  v66 = sub_1007A2124();
  v51 = *(v7 + 8);
  v51(v50, v6);
  sub_100007840(v21, &qword_100AE6A10);
  v51(v18, v6);
  sub_100007840(v15, &qword_100AE6A10);
  v32 = v73;
  v33 = v77;
  v34 = v67;
  if (v66)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100AF40B0);
  v36 = v76;
  v68(v76, v33, v6);
  v37 = v78;

  v38 = sub_10079ACC4();
  v39 = sub_1007A29D4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v40 = 136446466;
    sub_100555AC4(&qword_100AE9A40, &type metadata accessor for PageLocation);
    v41 = sub_1007A3A74();
    v43 = v42;
    (*(v69 + 8))(v36, v6);
    v44 = sub_1000070F4(v41, v43, &v79);
    v32 = v73;

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_1000070F4(v75, v37, &v79);
    _os_log_impl(&_mh_execute_header, v38, v39, "Updating #globalAnnotation annotation to:%{public}s for:%{public}s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v69 + 8))(v36, v6);
  }

  v46 = v70;
  v45 = v71;
  isa = sub_1007969C4().super.isa;
  [v34 setPlUserData:isa];

  v48 = [objc_allocWithZone(NSNumber) initWithInteger:sub_10079FD14()];
  [v34 setPlLocationRangeStart:v48];

  [v34 setAnnotationLocation:0];
  [v34 setAvoidSync];
  sub_10028FDA0(v46, v45);
  sub_100007840(v32, &qword_100AE6A10);
  return 1;
}

uint64_t sub_10055287C()
{
  v0 = [objc_allocWithZone(NSNumber) initWithInteger:sub_10079FD14()];
  v1 = sub_10000A7C4(0, &qword_100AD6750);
  v25 = v1;
  *&v24 = v0;
  sub_1000076D4(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F4B78(v23, 0x6C616E6964726FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v25 = &type metadata for String;
  strcpy(&v24, "BKLocation");
  BYTE11(v24) = 0;
  HIDWORD(v24) = -369098752;
  sub_1000076D4(&v24, v23);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F4B78(v23, 0x7373616C63, 0xE500000000000000, v3);
  v25 = sub_1001F1160(&qword_100AD6710);
  *&v24 = _swiftEmptyDictionarySingleton;
  sub_1000076D4(&v24, v23);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F4B78(v23, 0x7265707573, 0xE500000000000000, v4);
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:sub_10079FCF4()];
  v25 = v1;
  *&v24 = v5;
  sub_1000076D4(&v24, v23);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F4B78(v23, 0x7366664F65676170, 0xEA00000000007465, v6);
  v25 = &type metadata for String;
  strcpy(&v24, "BKPageLocation");
  HIBYTE(v24) = -18;
  sub_1000076D4(&v24, v23);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F4B78(v23, 0x7373616C63, 0xE500000000000000, v7);
  v8 = objc_opt_self();
  isa = sub_1007A2024().super.isa;

  *&v24 = 0;
  v10 = [v8 dataWithPropertyList:isa format:200 options:0 error:&v24];

  v11 = v24;
  if (v10)
  {
    v12 = sub_1007969D4();
  }

  else
  {
    v13 = v11;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AF40B0);
    swift_errorRetain();
    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v24 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_1007A3B84();
      v21 = sub_1000070F4(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Exception encoding to plUserData: %s", v17, 0xCu);
      sub_1000074E0(v18);
    }

    else
    {
    }

    return 0;
  }

  return v12;
}