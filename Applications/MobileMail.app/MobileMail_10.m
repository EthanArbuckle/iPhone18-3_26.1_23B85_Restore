unint64_t sub_1002EF0C8()
{
  v2 = qword_1006D8488;
  if (!qword_1006D8488)
  {
    sub_10025CAA4(&qword_1006D8468);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8488);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002EF150(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1002EF194()
{
  v2 = qword_1006D84C0;
  if (!qword_1006D84C0)
  {
    sub_10025CAA4(&qword_1006D8470);
    sub_1002EF0C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D84C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002EF238(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL sub_1002EF2C8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return a1 == 1;
}

unint64_t sub_1002EF3B4()
{
  v2 = qword_1006D84C8;
  if (!qword_1006D84C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D84C8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1002EF500@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002EF2C8(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1002EF53C(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v6 = (*(*(type metadata accessor for IndexingSpeedView() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v5 - v6;
  v12 = __chkstk_darwin(v7);
  v11 = v3;
  v10 = v2;
  sub_10025C9B0(&qword_1006D84D0);

  sub_1002EA434(v7, v8, v9);
  return UIHostingController.__allocating_init(rootView:)();
}

unint64_t sub_1002EF6C4()
{
  v2 = qword_1006D84D8;
  if (!qword_1006D84D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D84D8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002EF778()
{
  v4 = sub_1002EF8A8();
  if (v0 <= 0x3F)
  {
    v4 = type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      v4 = sub_1002EF944();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1002EF8A8()
{
  v4 = qword_1006D8548;
  if (!qword_1006D8548)
  {
    type metadata accessor for Date();
    v3 = type metadata accessor for State();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8548);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1002EF944()
{
  v4 = qword_1006D8550;
  if (!qword_1006D8550)
  {
    type metadata accessor for IndexingSpeedView.IndexingData();
    v3 = type metadata accessor for Array();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8550);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1002EF9E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002EFAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1002EFD28()
{
  v3 = type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1002EFE18(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1002EFE2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002EFF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1002F0134()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for IndexingSpeedViewFactory();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_1002F01D8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndexingSpeedViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002F0278()
{
  v2 = qword_1006D8650;
  if (!qword_1006D8650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F030C()
{
  v2 = qword_1006D8658;
  if (!qword_1006D8658)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002F03C0(uint64_t a1)
{
  sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1002F0408()
{
  v2 = qword_1006D8678;
  if (!qword_1006D8678)
  {
    sub_10025CAA4(&qword_1006D8428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F0490()
{
  v2 = qword_1006D8680;
  if (!qword_1006D8680)
  {
    sub_10025CAA4(&qword_1006D8670);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F05F4()
{
  v2 = qword_1006D8688;
  if (!qword_1006D8688)
  {
    type metadata accessor for IndexingSpeedView.IndexingData();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8688);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002F0674(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1002F06AC()
{
  v2 = qword_1006D8698;
  if (!qword_1006D8698)
  {
    sub_10025CAA4(&qword_1006D8668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F073C()
{
  v2 = qword_1006D86A8;
  if (!qword_1006D86A8)
  {
    sub_10025CAA4(&qword_1006D86A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D86A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F07C4()
{
  v2 = qword_1006D86B0;
  if (!qword_1006D86B0)
  {
    sub_10025CAA4(&qword_1006D8660);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D86B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002F084C(uint64_t a1)
{
  v3 = *(sub_10025C9B0(&qword_1006D84A8) + 44);
  v4 = sub_10025C9B0(&qword_1006D84B0);
  v5 = *(*(v4 - 8) + 8);
  v5();
  v1 = sub_10025C9B0(&qword_1006D84B8);
  (v5)(a1 + v3 + *(v1 + 48), v4);
  return a1;
}

uint64_t sub_1002F0920(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1002EF238(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1002F09A8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(sub_10025C9B0(&qword_1006D84A8) + 44);
  v6 = sub_10025C9B0(&qword_1006D84B0);
  v7 = *(*(v6 - 8) + 16);
  v7();
  v2 = sub_10025C9B0(&qword_1006D84B8);
  (v7)(a2 + v4 + *(v2 + 48), a1 + v4 + *(v2 + 48), v6);
  return a2;
}

unint64_t sub_1002F0AB4()
{
  v2 = qword_1006D86D0;
  if (!qword_1006D86D0)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D86D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002F0B34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = sub_10025C9B0(&qword_1006D86B8);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_1002F0BE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = sub_10025C9B0(&qword_1006D86B8);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

unint64_t sub_1002F0C9C()
{
  v2 = qword_1006D86D8;
  if (!qword_1006D86D8)
  {
    type metadata accessor for DatePickerComponents();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D86D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F0D1C()
{
  v2 = qword_1006D86E0;
  if (!qword_1006D86E0)
  {
    sub_10025CAA4(&qword_1006D84B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D86E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002F0DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v8 = a1;
  v11 = 0;
  v10 = sub_1002F0F70;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v2 = sub_10025C9B0(&unk_1006D8720);
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = &v7 - v7;
  v12 = 0;
  v18 = type metadata accessor for UIBackgroundConfiguration();
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v8);
  v17 = &v7 - v9;
  v21 = &v7 - v9;
  v20 = v3;
  v19 = v4;
  static UIBackgroundConfiguration.clear()();
  UIConfigurationColorTransformer.init(_:)();
  v5 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  return (*(v14 + 32))(v16, v17, v18);
}

id sub_1002F0F70()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

uint64_t sub_1002F0FC0(uint64_t a1)
{
  v20 = a1;
  v22 = v1;
  swift_getObjectType();
  v33 = 0;
  v32 = 0;
  v19 = (*(*(sub_10025C9B0(&qword_1006DBCA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v21 = v12 - v19;
  v33 = v3;
  v32 = v2;
  _objc_retain(v2);
  sub_1002F0DA4(v20, v21);
  v4 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v4 - 8) + 56))(v21, 0, 1);
  UICollectionViewCell.backgroundConfiguration.setter();
  v5 = v22;
  _objc_release(v22);
  _objc_retain(v5);
  _objc_retain(v5);
  UICollectionViewCell.contentConfiguration.getter();
  if (v28)
  {
    v13 = v27;
    v18 = v24;
    sub_1002F171C(v27, v24);
    sub_10000B0D8(v13);
    _objc_release(v22);
    v15 = v25;
    v16 = v26;
    sub_10027EC3C(v18, v25);
    v14 = type metadata accessor for UICellConfigurationState();
    v17 = v23;
    v23[3] = v14;
    v23[4] = &protocol witness table for UICellConfigurationState;
    v6 = sub_10026AC9C(v23);
    (*(*(v14 - 8) + 16))(v6, v20);
    v30 = v15;
    v31 = v16;
    sub_10026AC9C(v29);
    dispatch thunk of UIContentConfiguration.updated(for:)();
    sub_1000160F4(v17);
    sub_1000160F4(v18);
  }

  else
  {
    sub_10000B0D8(v27);
    _objc_release(v22);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    v31 = 0;
  }

  UICollectionViewCell.contentConfiguration.setter();
  v7 = v22;
  _objc_release(v22);
  _objc_retain(v7);
  [v7 setFocusEffect:0];
  _objc_release(v7);
  v12[1] = sub_1002F16B4();
  v8 = UICellConfigurationState.isFocused.getter();
  sub_100305184(v8 & 1);

  v12[2] = sub_1002F16B4();
  v9 = UICellConfigurationState.isHighlighted.getter();
  sub_100305350(v9 & 1);

  v12[3] = sub_1002F16B4();
  v10 = UICellConfigurationState.isSelected.getter();
  sub_10030551C(v10 & 1);
}

id sub_1002F144C()
{
  result = sub_1002F146C();
  qword_1006EFFA0 = result;
  return result;
}

id sub_1002F146C()
{
  sub_1002F3580();
  v1 = sub_10025C704();
  [v1 setDateStyle:0];
  [v1 setTimeStyle:1];
  return v1;
}

uint64_t *sub_1002F14E0()
{
  if (qword_1006D5EB8 != -1)
  {
    swift_once();
  }

  return &qword_1006EFFA0;
}

void *sub_1002F1540()
{
  v1 = *sub_1002F14E0();
  _objc_retain(v1);
  return v1;
}

id sub_1002F1580()
{
  result = sub_1002F15A0();
  qword_1006EFFA8 = result;
  return result;
}

id sub_1002F15A0()
{
  sub_1002F3580();
  v1 = sub_10025C704();
  [v1 setDateStyle:4];
  [v1 setTimeStyle:0];
  return v1;
}

uint64_t *sub_1002F1614()
{
  if (qword_1006D5EC0 != -1)
  {
    swift_once();
  }

  return &qword_1006EFFA8;
}

void *sub_1002F1674()
{
  v1 = *sub_1002F1614();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1002F16B4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_viewState);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002F171C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1002F1788(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_viewState);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1002F18B8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_searchItem);
  swift_beginAccess();
  sub_1002F191C(v3, a1);
  return swift_endAccess();
}

void *sub_1002F191C(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.InstantAnswer();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006DBC30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1002F1A44(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006DBC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1002F191C(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_1002F1B2C(v4, v5);
  swift_endAccess();
  sub_1002F1878();
  return sub_1002F1D54(v7);
}

void *sub_1002F1B2C(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.InstantAnswer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&unk_1006DBC30);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&unk_1006DBC30);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1002F1D54(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id (*sub_1002F1DFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002F1E6C;
}

id sub_1002F1E6C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1002F1878();
}

uint64_t sub_1002F1F28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1002F1FF0()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*sub_1002F2070(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_actionDelegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

id sub_1002F2188()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002F2260(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_1002F22FC();
  _objc_release(a1);
}

id sub_1002F22FC()
{
  v6 = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer;
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer);
  swift_beginAccess();
  if (*v7)
  {
    v2 = *&v5[v6];
    _objc_retain(v2);
    swift_endAccess();
    v3 = [v2 message];
    _objc_release(v2);
    v4 = v3;
  }

  else
  {
    swift_endAccess();
    v4 = 0;
  }

  sub_1002F25EC(v4);
  return [v5 setNeedsUpdateConfiguration];
}

id (*sub_1002F23F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002F2468;
}

id sub_1002F2468(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1002F22FC();
}

uint64_t sub_1002F2524()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_messageListItem);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1002F25EC(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_messageListItem);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1002F26D8(uint64_t a1)
{
  v20 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = sub_10025C9B0(&qword_1006D8740);
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v28 = &isa - v19;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v21 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v20);
  v22 = &isa - v21;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v24 = &isa - v23;
  v31 = &isa - v23;
  v30 = v5;
  v29 = v1;
  sub_1002F29E4(v5, v6);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_1002A70C0(v28);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v7 = v22;
    (*(v25 + 32))(v24, v28, v27);
    v11 = *sub_1002F14E0();
    _objc_retain(v11);
    (*(v25 + 16))(v7, v24, v27);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = *(v25 + 8);
    v13 = v25 + 8;
    v14(v22, v27);
    v12 = [v11 stringFromDate:isa];
    _objc_release(isa);
    _objc_release(v11);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v8;
    _objc_release(v12);
    v14(v24, v27);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}

void *sub_1002F29E4(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D8740);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1002F2B0C(uint64_t a1)
{
  v20 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = sub_10025C9B0(&qword_1006D8740);
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v28 = &isa - v19;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v21 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v20);
  v22 = &isa - v21;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v24 = &isa - v23;
  v31 = &isa - v23;
  v30 = v5;
  v29 = v1;
  sub_1002F29E4(v5, v6);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_1002A70C0(v28);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v7 = v22;
    (*(v25 + 32))(v24, v28, v27);
    v11 = *sub_1002F1614();
    _objc_retain(v11);
    (*(v25 + 16))(v7, v24, v27);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = *(v25 + 8);
    v13 = v25 + 8;
    v14(v22, v27);
    v12 = [v11 stringFromDate:isa];
    _objc_release(isa);
    _objc_release(v11);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v8;
    _objc_release(v12);
    v14(v24, v27);
    v17 = v15;
    v18 = v16;
  }

  return v17;
}

char *sub_1002F2E18(double a1, double a2, double a3, double a4)
{
  v21 = 0;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v9 = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_viewState;
  type metadata accessor for InstantAnswerView.State();
  v8 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  v7 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  v4 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  *v9 = sub_1003056E8(v8 & 1, v7 & 1, v4 & 1);
  v10 = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_searchItem;
  v5 = type metadata accessor for SearchItem.InstantAnswer();
  (*(*(v5 - 8) + 56))(&v21[v10], 1);
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer] = 0;
  *&v21[OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_messageListItem] = 0;
  v16.receiver = v21;
  v16.super_class = type metadata accessor for InstantAnswerCollectionViewCell();
  v15 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  _objc_retain(v15);
  v21 = v15;
  _objc_release(v15);
  return v15;
}

char *sub_1002F3048(void *a1)
{
  v13 = 0;
  v12 = a1;
  v7 = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_viewState;
  type metadata accessor for InstantAnswerView.State();
  v6 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  v5 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  v1 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  *v7 = sub_1003056E8(v6 & 1, v5 & 1, v1 & 1);
  v8 = OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_searchItem;
  v2 = type metadata accessor for SearchItem.InstantAnswer();
  (*(*(v2 - 8) + 56))(&v13[v8], 1);
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_instantAnswer] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail31InstantAnswerCollectionViewCell_messageListItem] = 0;
  v11.receiver = v13;
  v11.super_class = type metadata accessor for InstantAnswerCollectionViewCell();
  v10 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  if (v10)
  {
    _objc_retain(v10);
    v13 = v10;
    _objc_release(a1);
    _objc_release(v13);
    return v10;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id sub_1002F3278()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstantAnswerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstantAnswerCollectionViewCell()
{
  v1 = qword_1006D8830;
  if (!qword_1006D8830)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002F33E0()
{
  updated = sub_1002F34E4();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1002F34E4()
{
  v4 = qword_1006D8840;
  if (!qword_1006D8840)
  {
    type metadata accessor for SearchItem.InstantAnswer();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8840);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1002F3580()
{
  v2 = qword_1006D8848;
  if (!qword_1006D8848)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D8848);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1002F35E4(uint64_t a1)
{
  v48 = a1;
  v34.super_class = swift_getObjectType();
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v42 = 0;
  v35 = type metadata accessor for UICellConfigurationState();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = &isa - v38;
  v40 = (*(*(sub_10025C9B0(&unk_1006DBC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v41 = &isa - v40;
  v43 = type metadata accessor for SearchItem.InstantAnswer();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v47 = &isa - v46;
  v61 = &isa - v46;
  v49 = type metadata accessor for DateComponents();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v53 = &isa - v52;
  v54 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v55 = &isa - v54;
  v60 = v4;
  v59 = v1;
  _objc_retain(v1);
  v58 = sub_1002F2188();
  if (v58)
  {
    v30 = &v58;
    v31 = v58;
    _objc_retain(v58);
    sub_10026A58C(v30);
    _objc_release(v34.receiver);
    v32 = [v31 flight];
    _objc_release(v31);
    v33 = v32;
  }

  else
  {
    sub_10026A58C(&v58);
    _objc_release(v34.receiver);
    v33 = 0;
  }

  v29 = v33;
  if (v33)
  {
    v28 = v29;
    v27 = v29;
    v56 = v29;
    v26 = [v29 departureDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = [v27 arrivalDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = [v27 departureAirportCode];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v5;
    v20 = [v27 arrivalAirportCode];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v7;
    sub_1002F3D94(v55, v53, v18, v21, v6, v7);

    _objc_release(v20);

    _objc_release(v22);
    v25 = *(v50 + 8);
    v24 = v50 + 8;
    v25(v53, v49);
    _objc_release(v23);
    v25(v55, v49);
    _objc_release(v26);
    _objc_release(v27);
  }

  else
  {
    _objc_retain(v34.receiver);
    sub_1002F18B8(v41);
    if ((*(v44 + 48))(v41, 1, v43) == 1)
    {
      sub_1002F1D54(v41);
      _objc_release(v34.receiver);
    }

    else
    {
      (*(v44 + 32))(v47, v41, v43);
      _objc_release(v34.receiver);
      SearchItem.InstantAnswer.flightDepartureDateComponents.getter();
      SearchItem.InstantAnswer.flightArrivalDateComponents.getter();
      v13 = SearchItem.InstantAnswer.flightDepartureAirportCode.getter();
      v15 = v8;
      v9 = SearchItem.InstantAnswer.flightArrivalAirportCode.getter();
      v14 = v10;
      sub_1002F3D94(v55, v53, v13, v15, v9, v10);

      v17 = *(v50 + 8);
      v16 = v50 + 8;
      v17(v53, v49);
      v17(v55, v49);
      (*(v44 + 8))(v47, v43);
    }
  }

  v11 = v39;
  _objc_retain(v34.receiver);
  (*(v36 + 16))(v11, v48, v35);
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v36 + 8))(v39, v35);
  v57 = v34;
  objc_msgSendSuper2(&v57, "_bridgedUpdateConfigurationUsingState:", isa);
  _objc_release(isa);
  _objc_release(v34.receiver);
}

uint64_t sub_1002F3D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v204 = &v246;
  v228._object = a6;
  v228._countAndFlagsBits = a5;
  v227._object = a4;
  v227._countAndFlagsBits = a3;
  v230 = a2;
  v236 = a1;
  v219 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v249 = 0u;
  v248 = 0u;
  v247 = 0u;
  v246 = 0u;
  v205 = sub_10025C9B0(&qword_1006D8850);
  v206 = *(v205 - 8);
  v207 = v206;
  v208 = (*(v206 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v209 = &v85 - v208;
  v271 = &v85 - v208;
  v210 = type metadata accessor for Calendar.Component();
  v211 = *(v210 - 8);
  v212 = v211;
  __chkstk_darwin(v210 - 8);
  v213 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = *(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64);
  v7 = __chkstk_darwin(v219);
  v217 = (v215 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = &v85 - v217;
  v8 = __chkstk_darwin(v7);
  v216 = &v85 - v217;
  __chkstk_darwin(v8);
  v238 = &v85 - v217;
  v218 = &v85 - v217;
  v239 = type metadata accessor for Date();
  v220 = v239;
  v221 = *(v239 - 8);
  v237 = v221;
  v222 = v221;
  v223 = *(v221 + 64);
  v9 = __chkstk_darwin(v219);
  v225 = (v223 + 15) & 0xFFFFFFFFFFFFFFF0;
  v224 = &v85 - v225;
  v270 = &v85 - v225;
  __chkstk_darwin(v9);
  v226 = &v85 - v225;
  v269 = &v85 - v225;
  v231 = type metadata accessor for Calendar();
  v232 = *(v231 - 8);
  v233 = v232;
  v234 = *(v232 + 64);
  v10 = __chkstk_darwin(v236);
  v235 = &v85 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v235;
  v267 = v10;
  v266 = v11;
  v264 = v12;
  v265 = v13;
  v262 = v14;
  v263 = v15;
  v261 = v16;
  static Calendar.current.getter();
  Calendar.date(from:)();
  v240 = *(v237 + 48);
  v241 = (v237 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v240(v238, 1, v239) == 1)
  {
    sub_1002A70C0(v218);
    return (*(v233 + 8))(v235, v231);
  }

  v202 = *(v222 + 32);
  v203 = (v222 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v202(v226, v218, v220);
  Calendar.date(from:)();
  if (v240(v216, 1, v220) == 1)
  {
    sub_1002A70C0(v216);
    (*(v222 + 8))(v226, v220);
    return (*(v233 + 8))(v235, v231);
  }

  v202(v224, v216, v220);
  v195 = *(v222 + 16);
  v196 = (v222 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v195(v214, v226, v220);
  v197 = *(v222 + 56);
  v198 = (v222 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v197(v214, 0, 1, v220);
  v17 = sub_1002F2B0C(v214);
  v201 = v18;
  v199 = v17;
  v200 = v18;
  sub_1002A70C0(v214);
  if (!v201)
  {
    v192 = *(v222 + 8);
    v191 = v222 + 8;
    v192(v224, v220);
    v192(v226, v220);
    return (*(v233 + 8))(v235, v231);
  }

  v193 = v199;
  v194 = v200;
  v186 = v200;
  v187 = v199;
  v259 = v199;
  v260 = v200;
  v195(v214, v226, v220);
  v197(v214, 0, 1, v220);
  v19 = sub_1002F26D8(v214);
  v190 = v20;
  v188 = v19;
  v189 = v20;
  sub_1002A70C0(v214);
  if (!v190)
  {

    v183 = *(v222 + 8);
    v182 = v222 + 8;
    v183(v224, v220);
    v183(v226, v220);
    return (*(v233 + 8))(v235, v231);
  }

  v184 = v188;
  v185 = v189;
  v177 = v189;
  v178 = v188;
  v257 = v188;
  v258 = v189;
  v195(v214, v224, v220);
  v197(v214, 0, 1, v220);
  v21 = sub_1002F26D8(v214);
  v181 = v22;
  v179 = v21;
  v180 = v22;
  sub_1002A70C0(v214);
  if (!v181)
  {

    v174 = *(v222 + 8);
    v173 = v222 + 8;
    v174(v224, v220);
    v174(v226, v220);
    return (*(v233 + 8))(v235, v231);
  }

  v175 = v179;
  v176 = v180;
  v166 = v180;
  v167 = v179;
  v255 = v179;
  v256 = v180;
  (*(v212 + 104))(v213, enum case for Calendar.Component.day(_:), v210);
  v168 = Calendar.compare(_:to:toGranularity:)();
  (*(v212 + 8))(v213, v210);
  v254 = v168;
  v23 = type metadata accessor for ComparisonResult();
  v169 = v23;
  v170 = v23;
  v251 = v168;
  v171 = v168;
  v172 = v168;
  if (v168 == -1)
  {
    v152 = 1;
    v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-1", 2uLL, 1);
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;
    v153 = 0;
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v152);
    v154 = v25._countAndFlagsBits;
    v158 = v25._object;
    v157.super.isa = sub_10028FEB4();
    v26 = sub_100015E30();
    v27.value._object = v153;
    v278._countAndFlagsBits = v154;
    v28._countAndFlagsBits = v26;
    v29._countAndFlagsBits = countAndFlagsBits;
    v28._object = v30;
    v29._object = object;
    v156 = v28._object;
    v282.travelTime._countAndFlagsBits = v158;
    v27.value._countAndFlagsBits = v153;
    v160 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v27, v157, v28, v278);

    v162 = static String.+ infix(_:_:)();
    v163 = v31;
    v161 = v162;
    v164 = v31;

    v252 = v162;
    v253 = v163;
    v165._countAndFlagsBits = v161;
    v165._object = v164;
  }

  else if (v172)
  {
    if (v172 == 1)
    {
      v139 = 1;
      v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+1", 2uLL, 1);
      v142 = v32._countAndFlagsBits;
      v146 = v32._object;
      v140 = 0;
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v139);
      v141 = v33._countAndFlagsBits;
      v145 = v33._object;
      v144.super.isa = sub_10028FEB4();
      v34 = sub_100015E30();
      v35.value._object = v140;
      v279._countAndFlagsBits = v141;
      v36._countAndFlagsBits = v34;
      v37._countAndFlagsBits = v142;
      v36._object = v38;
      v37._object = v146;
      v143 = v36._object;
      v282.travelTime._countAndFlagsBits = v145;
      v35.value._countAndFlagsBits = v140;
      v147 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v35, v144, v36, v279);

      v149 = static String.+ infix(_:_:)();
      v150 = v39;
      v148 = v149;
      v151 = v39;

      v252 = v149;
      v253 = v150;
      v165._countAndFlagsBits = v148;
      v165._object = v151;
    }

    else
    {
      v250 = v171;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {

    v252 = v167;
    v253 = v166;
    v165._countAndFlagsBits = v167;
    v165._object = v166;
  }

  v40 = v229;
  v85 = v165;

  v41._countAndFlagsBits = v178;
  v41._object = v177;
  v275 = InstantAnswerView.Model.Airport.init(code:travelTime:)(v227, v41);
  v87 = v275.code._countAndFlagsBits;
  v135 = v275.code._object;
  v88 = v275.travelTime._countAndFlagsBits;
  v136 = v275.travelTime._object;
  *&v248 = v275.code._countAndFlagsBits;
  *(&v248 + 1) = v275.code._object;
  *&v249 = v275.travelTime._countAndFlagsBits;
  *(&v249 + 1) = v275.travelTime._object;

  v276 = InstantAnswerView.Model.Airport.init(code:travelTime:)(v228, v85);
  v89 = v276.code._countAndFlagsBits;
  v133 = v276.code._object;
  v86 = v276.travelTime._countAndFlagsBits;
  v134 = v276.travelTime._object;
  *&v246 = v276.code._countAndFlagsBits;
  *(&v246 + 1) = v276.code._object;
  *&v247 = v276.travelTime._countAndFlagsBits;
  *(&v247 + 1) = v276.travelTime._object;

  v42._countAndFlagsBits = v187;
  v277.code._countAndFlagsBits = v87;
  v277.travelTime._countAndFlagsBits = v88;
  v282.code._countAndFlagsBits = v89;
  v282.code._object = v133;
  v277.code._object = v135;
  v277.travelTime._object = v136;
  v42._object = v186;
  v282.travelTime._object = v134;
  v282.travelTime._countAndFlagsBits = v86;
  v132 = &v272;
  InstantAnswerView.Model.Flight.init(travelDate:departureAirport:arrivalAirport:)(&v272, v42, v277, v282);
  v43 = v204;
  v204[4] = v204[28];
  v44 = v43[29];
  v45 = v43[30];
  v46 = v43[31];
  v43[8] = v43[32];
  v43[7] = v46;
  v43[6] = v45;
  v43[5] = v44;
  v104 = MFImageGlyphInstantAnswersViewMessage;
  v47 = MFImageGlyphInstantAnswersViewMessage;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v48;
  v105 = 1;
  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("View Message", 0xCuLL, 1);
  v91 = v49._countAndFlagsBits;
  v95 = v49._object;
  v106 = "";
  v125 = 0;
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v105);
  v90 = v50._countAndFlagsBits;
  v94 = v50._object;
  v93.super.isa = sub_10028FEB4();
  v51 = sub_100015E30();
  v280._countAndFlagsBits = v90;
  v52.value._object = v125;
  v53._countAndFlagsBits = v51;
  v54._countAndFlagsBits = v91;
  v53._object = v55;
  v54._object = v95;
  v92 = v53._object;
  v282.travelTime._countAndFlagsBits = v94;
  v52.value._countAndFlagsBits = v125;
  v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v52, v93, v53, v280);

  v103 = MSAccessibilityIdentifierInstantAnswersViewMessageButton;
  v56 = MSAccessibilityIdentifierInstantAnswersViewMessageButton;
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v57;
  v114 = &unk_10065A358;
  v115 = 24;
  v113 = 7;
  v102 = swift_allocObject();
  v96 = v102 + 16;
  v58 = v40;
  swift_unknownObjectWeakInit();

  v131 = v273;
  InstantAnswerView.Model.Action.init(iconSymbolName:title:accessibilityIdentifier:handler:)(v97, v98, v99._countAndFlagsBits, v99._object, v100, v101, sub_1002F51F4, v102, v273);
  v59 = v204;
  v60 = v204[33];
  v61 = v204[34];
  v62 = v204[35];
  v204[12] = v204[36];
  v59[11] = v62;
  v59[10] = v61;
  v59[9] = v60;

  v124 = MFImageGlyphInstantAnswersOpenLink;
  v63 = MFImageGlyphInstantAnswersOpenLink;
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v64;
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Link", 9uLL, v105);
  v108 = v65._countAndFlagsBits;
  v112 = v65._object;
  v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v106, v125, v105);
  v107 = v66._countAndFlagsBits;
  v111 = v66._object;
  v110.super.isa = sub_10028FEB4();
  v67 = sub_100015E30();
  v281._countAndFlagsBits = v107;
  v68.value._object = v125;
  v69._countAndFlagsBits = v67;
  v70._countAndFlagsBits = v108;
  v69._object = v71;
  v70._object = v112;
  v109 = v69._object;
  v282.travelTime._countAndFlagsBits = v111;
  v68.value._countAndFlagsBits = v125;
  v119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v68, v110, v69, v281);

  v123 = MSAccessibilityIdentifierInstantAnswersFlightOpenLinkButton;
  v72 = MSAccessibilityIdentifierInstantAnswersFlightOpenLinkButton;
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v73;
  v122 = swift_allocObject();
  v116 = v122 + 16;
  v74 = v40;
  swift_unknownObjectWeakInit();

  v130 = v274;
  InstantAnswerView.Model.Action.init(iconSymbolName:title:accessibilityIdentifier:handler:)(v117, v118, v119._countAndFlagsBits, v119._object, v120, v121, sub_1002F5338, v122, v274);
  v75 = v204;
  v76 = v204[37];
  v77 = v204[38];
  v78 = v204[39];
  v204[16] = v204[40];
  v75[15] = v78;
  v75[14] = v77;
  v75[13] = v76;

  sub_1002F55E8(v132, v245);
  sub_1002F56BC(v131, v244);
  sub_1002F56BC(v130, v243);
  v79 = v40;
  v128 = &v85;
  __chkstk_darwin(v125);
  v80 = v130;
  v81 = v131;
  v126 = &v85 - 3;
  *(&v85 - 4) = v132;
  *(&v85 - 3) = v81;
  v282.travelTime._countAndFlagsBits = v80;
  v282.travelTime._object = v40;
  v127 = type metadata accessor for InstantAnswerView();
  sub_1002F5788();
  UIHostingConfiguration<>.init(content:)();
  sub_1002F5808();
  sub_1002F5864();
  sub_1002F5864();

  v82 = v40;
  v242[3] = v205;
  v242[4] = sub_1002F58B4();
  v129 = v242;
  v83 = sub_10026AC9C(v242);
  (*(v207 + 16))(v83, v209, v205);
  UICollectionViewCell.contentConfiguration.setter();

  (*(v207 + 8))(v209, v205);
  sub_1002F5864();
  sub_1002F5864();
  sub_1002F5808();

  sub_100268744();

  v138 = *(v222 + 8);
  v137 = v222 + 8;
  v138(v224, v220);
  v138(v226, v220);
  return (*(v233 + 8))(v235, v231);
}

void sub_1002F50B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    _objc_retain(Strong);
    v0 = sub_1002F1F28();
    v2 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      _objc_release(Strong);
      swift_getObjectType();
      [v2 didTapViewMessageFor:Strong];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      _objc_release(Strong);
    }

    _objc_release(Strong);
  }
}

void sub_1002F51FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    _objc_retain(Strong);
    v0 = sub_1002F1F28();
    v2 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      _objc_release(Strong);
      swift_getObjectType();
      [v2 didTapCheckInUrlFor:Strong];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      _objc_release(Strong);
    }

    _objc_release(Strong);
  }
}

uint64_t sub_1002F5340@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  __src = a1;
  v18 = a2;
  v20 = a3;
  v29 = a4;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v14 = v44;
  __n = 80;
  memcpy(v44, a1, sizeof(v44));
  v24 = v46;
  memcpy(v46, v44, sizeof(v46));
  v33 = type metadata accessor for InstantAnswerView();
  v16 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(__src);
  v35 = (&v14 - v16);
  v17 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v36 = (&v14 - v17);
  v43 = &v14 - v17;
  v42 = v9;
  v41 = v10;
  v40 = a4;
  sub_1002F55E8(v8, v39);
  v23 = &type metadata for InstantAnswerView.Model.Action;
  v22 = _allocateUninitializedArray<A>(_:)();
  v19 = v11;
  sub_1002F56BC(v18, v38);
  v21 = 64;
  memcpy(v19, v18, 0x40uLL);
  sub_1002F56BC(v20, v37);
  memcpy(v19 + 64, v20, v21);
  v12 = v22;
  sub_1002612B0();
  v26 = v12;
  v27 = __dst;
  memcpy(__dst, v24, __n);
  v48 = v26;
  v28 = v49;
  memcpy(v49, v27, 0x58uLL);
  v49[88] = 0;
  v30 = v45;
  memcpy(v45, v49, 0x59uLL);
  _objc_retain(a4);
  v31 = sub_1002F16B4();
  _objc_release(v29);
  InstantAnswerView.init(model:state:)(v30, v31, v35);
  v34 = sub_1002F5788();
  sub_1002EC85C(v35, v33, v36);
  sub_1002F5C7C(v35);
  sub_1002F5E40(v36, v35);
  sub_1002EC85C(v35, v33, v32);
  sub_1002F5C7C(v35);
  return sub_1002F5C7C(v36);
}

void *sub_1002F55E8(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];

  a2[5] = v5;
  a2[6] = a1[6];
  v7 = a1[7];

  a2[7] = v7;
  a2[8] = a1[8];
  v9 = a1[9];

  result = a2;
  a2[9] = v9;
  return result;
}

void *sub_1002F56BC(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];

  a2[5] = v6;
  v8 = a1[6];
  v9 = a1[7];

  result = a2;
  a2[6] = v8;
  a2[7] = v9;
  return result;
}

unint64_t sub_1002F5788()
{
  v2 = qword_1006D8858;
  if (!qword_1006D8858)
  {
    type metadata accessor for InstantAnswerView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8858);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002F5808()
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002F5864()
{
}

unint64_t sub_1002F58B4()
{
  v2 = qword_1006D8860;
  if (!qword_1006D8860)
  {
    sub_10025CAA4(&qword_1006D8850);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8860);
    return WitnessTable;
  }

  return v2;
}

id sub_1002F593C(double a1, double a2, double a3, double a4)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  v10 = v6;
  v11 = v7;
  v12 = v4;
  v9.receiver = v4;
  v9.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v9, "initWithFrame:", v6, v7);
  _objc_retain(v8);
  v12 = v8;
  _objc_release(v8);
  return v8;
}

id MailDebugForceStatusViewController.init(coder:)(void *a1)
{
  v7 = a1;
  v8 = v1;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v6, "initWithCoder:");
  if (v5)
  {
    _objc_retain(v5);
    v8 = v5;
    _objc_release(a1);
    _objc_release(v8);
    return v5;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t type metadata accessor for InstantAnswerFlightCell()
{
  v1 = qword_1006D8890;
  if (!qword_1006D8890)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002F5C10()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t sub_1002F5C7C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ColorScheme();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v2 = a1 + *(type metadata accessor for InstantAnswerView() + 20);
  sub_1002F5D8C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));

  return a1;
}

uint64_t sub_1002F5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a12 & 1) == 0)
  {
  }
}

void *sub_1002F5E40(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v21 = *a1;

    *a2 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for InstantAnswerView();
  v17 = a2 + v20[5];
  v3 = a1 + v20[5];
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(v3 + 7);
  v13 = *(v3 + 8);
  v14 = *(v3 + 9);
  v15 = *(v3 + 10);
  v16 = v3[88];
  sub_1002F6064(*v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  *v17 = v5;
  *(v17 + 1) = v6;
  *(v17 + 2) = v7;
  *(v17 + 3) = v8;
  *(v17 + 4) = v9;
  *(v17 + 5) = v10;
  *(v17 + 6) = v11;
  *(v17 + 7) = v12;
  *(v17 + 8) = v13;
  *(v17 + 9) = v14;
  *(v17 + 10) = v15;
  v17[88] = v16 & 1;
  v18 = v20[6];
  v19 = *(a1 + v18);

  result = a2;
  *(a2 + v18) = v19;
  *(a2 + v20[7]) = *(a1 + v20[7]);
  return result;
}

uint64_t sub_1002F6064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a12 & 1) == 0)
  {
  }
}

uint64_t sub_1002F6118@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006D88C8);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_1002F61D8(v7, (&v2 - v3));
  Environment.wrappedValue.getter();
  return sub_1002F62AC(v6);
}

void *sub_1002F61D8(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1002F62AC(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1002F6368(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_1002F61D8(v1, (v3 - v3[0]));
  sub_1002F640C(v4, v3[1]);
  return sub_1002F62AC(v5);
}

void *sub_1002F640C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1002F62AC(a2);
    v4 = sub_10025C9B0(&qword_1006D88D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ContentSizeCategory();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t property wrapper backing initializer of InstantAnswerFlightContentView.departureAirportSize()
{
  type metadata accessor for CGSize();
  State.init(wrappedValue:)();
  return v1;
}

double sub_1002F6558()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.getter();

  return v1;
}

uint64_t type metadata accessor for InstantAnswerFlightContentView()
{
  v1 = qword_1006D8AD0;
  if (!qword_1006D8AD0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002F6674()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.setter();
  sub_1002F673C();
}

double sub_1002F6768()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.projectedValue.getter();

  return v1;
}

double sub_1002F6828()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerFlightContentView() + 20));

  return v2;
}

uint64_t sub_1002F687C(uint64_t a1, double a2, double a3)
{

  v4 = v3 + *(type metadata accessor for InstantAnswerFlightContentView() + 20);
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a1;
}

double sub_1002F68E0()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002F6988()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.setter();
  sub_1002F673C();
}

double sub_1002F6A50()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.projectedValue.getter();

  return v1;
}

double sub_1002F6B10()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerFlightContentView() + 24));

  return v2;
}

uint64_t sub_1002F6B64(uint64_t a1, double a2, double a3)
{

  v4 = v3 + *(type metadata accessor for InstantAnswerFlightContentView() + 24);
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a1;
}

double sub_1002F6C0C()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002F6C98()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.setter();
  sub_100044C9C();
}

double sub_1002F6D44()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.projectedValue.getter();

  return v1;
}

double sub_1002F6DE8()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerFlightContentView() + 28));

  return v2;
}

uint64_t sub_1002F6E30(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for InstantAnswerFlightContentView() + 28);
  *v3 = a2;
  *(v3 + 8) = a1;
}

double sub_1002F6E88()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002F6F14()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.setter();
  sub_100044C9C();
}

double sub_1002F6FC0()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.projectedValue.getter();

  return v1;
}

double sub_1002F7064()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerFlightContentView() + 32));

  return v2;
}

uint64_t sub_1002F70AC(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for InstantAnswerFlightContentView() + 32);
  *v3 = a2;
  *(v3 + 8) = a1;
}

void *InstantAnswerFlightContentView.flight.setter(void *a1)
{
  sub_1002F55E8(a1, v5);
  v2 = type metadata accessor for InstantAnswerFlightContentView();
  sub_1002F7188(a1, (v1 + *(v2 + 36)));
  result = a1;
  sub_1002F5808();
  return result;
}

void *sub_1002F7188(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];

  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  a2[6] = a1[6];
  a2[7] = a1[7];

  a2[8] = a1[8];
  a2[9] = a1[9];

  return a2;
}

double sub_1002F72BC()
{
  v4 = type metadata accessor for InstantAnswerFlightContentView();
  v2 = *(v0 + *(v4 + 40));

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.getter();

  State.wrappedValue.getter();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.getter();

  max<A>(_:_:)();
  return v2 + v6 - v5 + *(v3 + *(v4 + 40));
}

uint64_t InstantAnswerFlightContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_1002F7D34;
  v19 = 0;
  v18 = 0;
  v12 = sub_10025C9B0(&qword_1006D88E8);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = static HorizontalAlignment.leading.getter();
  v8 = &v16;
  v17 = v1;
  v9 = sub_10025C9B0(&qword_1006D88F0);
  sub_1002F7D3C();
  VStack.init(alignment:spacing:content:)();
  v13 = sub_1002F7DC4();
  sub_1002EC85C(v14, v12, v15);
  sub_10002C5EC(v14);
  sub_10002CE28(v15, v14);
  sub_1002EC85C(v14, v12, v11);
  sub_10002C5EC(v14);
  return sub_10002C5EC(v15);
}

uint64_t sub_1002F7630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v60 = a1;
  v56 = sub_100300B10;
  v62 = sub_100300BA0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v64 = sub_10025C9B0(&qword_1006D8C20);
  v25 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v68 = &v24 - v25;
  v70 = sub_10025C9B0(&qword_1006D8978);
  v26 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v75 = &v24 - v26;
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v26);
  v77 = &v24 - v27;
  v118 = &v24 - v27;
  v69 = sub_10025C9B0(&qword_1006D8910);
  v28 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v60);
  v76 = &v24 - v28;
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v78 = &v24 - v29;
  v117 = &v24 - v29;
  v116 = v5;
  v6 = (v60 + *(type metadata accessor for InstantAnswerFlightContentView() + 36));
  v30 = *v6;
  v31 = v6[1];

  v32 = v115;
  v115[0] = v30;
  v115[1] = v31;
  sub_1002686CC();
  v111 = Text.init<A>(_:)();
  v112 = v7;
  v113 = v8;
  v114 = v9;
  v34 = v111;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v33 = static Font.footnote.getter();
  v107 = v34;
  v108 = v35;
  v50 = 1;
  v109 = v36 & 1;
  v110 = v37;
  v103 = Text.font(_:)();
  v104 = v10;
  v105 = v11;
  v106 = v12;
  v39 = v103;
  v40 = v10;
  v38 = v11;
  v41 = v12;

  sub_1002EF150(v34, v35, v36 & 1);

  v99 = v39;
  v100 = v40;
  v101 = v38 & 1 & v50;
  v102 = v41;
  v95 = Text.bold()();
  v96 = v13;
  v97 = v14;
  v98 = v15;
  v45 = v95;
  v43 = v13;
  v44 = v14;
  v46 = v15;
  sub_1002EF150(v39, v40, v38 & 1);

  v16 = [objc_opt_self() secondaryLabelColor];
  v17 = Color.init(uiColor:)();
  v42 = &v94;
  v94 = v17;
  v90 = v45;
  v91 = v43;
  v92 = v44 & 1 & v50;
  v93 = v46;
  v86 = Text.foregroundStyle<A>(_:)();
  v87 = v18;
  v88 = v19;
  v89 = v20;
  v47 = v86;
  v48 = v18;
  v49 = v19;
  v51 = v20;
  sub_100268928();
  sub_1002EF150(v45, v43, v44 & 1);

  v54 = v83;
  v83[0] = v47;
  v83[1] = v48;
  v84 = v49 & 1 & v50;
  v85 = v51;
  v53 = MSAccessibilityIdentifierInstantAnswersFlightDepartureDate;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightDepartureDate);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v21;
  View.accessibilityIdentifier(_:)();

  _objc_release(v53);
  sub_1002F03C0(v54);
  v71 = sub_1002FAE38();
  sub_1002EC85C(v76, v69, v78);
  sub_1002FAF5C(v76);
  v59 = static VerticalAlignment.firstTextBaseline.getter();
  v55 = sub_1002F72BC();
  v57 = v80;
  v80[2] = v60;
  v58 = sub_10025C9B0(&qword_1006D8C28);
  sub_100300B18();
  HStack.init(alignment:spacing:content:)();
  v22 = sub_1002FABD0();
  v67 = *v22;
  v61 = v22[1];
  v63 = v79;
  v79[2] = v60;
  v65 = sub_10025C9B0(&qword_1006D8B48);
  v66 = sub_100300BA8();
  sub_1002FDF40();
  View.overlay<A>(alignment:content:)();
  sub_10002EFC0(v68);
  v72 = sub_100300C30();
  sub_1002EC85C(v75, v70, v77);
  sub_10002F430(v75);
  sub_100300D60(v78, v76);
  v74 = v82;
  v82[0] = v76;
  sub_10002FC08(v77, v75);
  v82[1] = v75;
  v81[0] = v69;
  v81[1] = v70;
  v80[4] = v71;
  v80[5] = v72;
  sub_1003A33CC(v74, 2uLL, v81, v73);
  sub_10002F430(v75);
  sub_1002FAF5C(v76);
  sub_10002F430(v77);
  return sub_1002FAF5C(v78);
}

unint64_t sub_1002F7D3C()
{
  v2 = qword_1006D88F8;
  if (!qword_1006D88F8)
  {
    sub_10025CAA4(&qword_1006D88F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D88F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002F7DC4()
{
  v2 = qword_1006D8900;
  if (!qword_1006D8900)
  {
    sub_10025CAA4(&qword_1006D88E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002F7E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v38 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  v60 = 0;
  v24 = sub_10025C9B0(&qword_1006D8C50);
  v26 = *(*(v24 - 8) + 64);
  v3 = __chkstk_darwin(0);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v10 - v28;
  v4 = __chkstk_darwin(v3);
  v27 = v10 - v28;
  __chkstk_darwin(v4);
  v29 = v10 - v28;
  v85 = v10 - v28;
  v46 = type metadata accessor for ContentSizeCategory();
  v30 = v46;
  v31 = *(v46 - 8);
  v45 = v31;
  __chkstk_darwin(v46 - 8);
  v47 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v47;
  v42 = sub_10025C9B0(&qword_1006D8C58);
  v33 = v42;
  v34 = *(*(v42 - 8) + 64);
  v6 = __chkstk_darwin(v42 - 8);
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v10 - v36;
  v35 = v10 - v36;
  __chkstk_darwin(v6);
  v41 = v10 - v36;
  v37 = v10 - v36;
  v84 = v10 - v36;
  v83 = a1;
  v40 = static HorizontalAlignment.leading.getter();
  v51 = a1;
  v39 = sub_10025C9B0(&qword_1006D8C60);
  sub_100300E64();
  VStack.init(alignment:spacing:content:)();
  v43 = sub_100300EEC();
  sub_1002EC85C(v44, v42, v41);
  sub_100031A50(v44);
  sub_1002F6118(v47);
  v50 = ContentSizeCategory.isAccessibilityCategory.getter();
  v48 = *(v45 + 8);
  v49 = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v47, v46);
  if (v50)
  {
    v62 = Spacer.init(minLength:)();
    v63 = v7 & 1;
    v17 = &type metadata for Spacer;
    v18 = &protocol witness table for Spacer;
    sub_1002EC85C(&v62, &type metadata for Spacer, &v64);
    v58 = v64;
    v59 = v65;
    sub_1002EC85C(&v58, v17, &v60);
    v52 = v60;
    v53 = v61;
    v54 = 0;
    sub_1003A3628(&v52, v17, &v55);
    v80 = v55;
    v81 = v56;
    v82 = v57;
    v19 = v55;
    v20 = v56;
    v21 = v57;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v76 = 1;
    sub_1003A3628(&v74, &type metadata for Spacer, &v77);
    v80 = v77;
    v81 = v78;
    v82 = v79;
    v19 = v77;
    v20 = v78;
    v21 = v79;
  }

  v13 = v21;
  v14 = v20;
  v15 = v19;
  sub_1002F6118(v32);
  v16 = ContentSizeCategory.isAccessibilityCategory.getter();
  v48(v32, v30);
  if (v16)
  {
    v12 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v12 = static HorizontalAlignment.leading.getter();
  }

  v10[2] = v12;
  v10[3] = v10;
  __chkstk_darwin(v10);
  v10[0] = &v10[-4];
  v10[-2] = v8;
  v10[1] = sub_10025C9B0(&qword_1006D8C78);
  sub_100300F7C();
  VStack.init(alignment:spacing:content:)();
  v11 = sub_100301004();
  sub_1002EC85C(v27, v24, v29);
  sub_100031D58(v27);
  sub_100031EC4(v37, v35);
  v73[0] = v35;
  v70 = v15;
  v71 = v14;
  v72 = v13 & 1;
  v73[1] = &v70;
  sub_100032478(v29, v25);
  v73[2] = v25;
  v69[0] = v33;
  v69[1] = sub_10025C9B0(&qword_1006D8C90);
  v69[2] = v24;
  v66 = v43;
  v67 = sub_10030108C();
  v68 = v11;
  sub_1003A33CC(v73, 3uLL, v69, v23);
  sub_100031D58(v25);
  sub_100031A50(v35);
  sub_100031D58(v29);
  return sub_100031A50(v37);
}

uint64_t sub_1002F8484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v69 = a1;
  v34 = 0;
  v38 = sub_1002FE7A8;
  v33 = sub_1002F92CC;
  v43 = sub_1003012E8;
  v76 = sub_100301684;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v75 = sub_10025C9B0(&qword_1006D8910);
  v22 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v78 = &v22 - v22;
  v80 = sub_10025C9B0(&qword_1006D8958);
  v23 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v85 = &v22 - v23;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v22 - v23);
  v87 = &v22 - v24;
  v119 = &v22 - v24;
  v46 = type metadata accessor for InstantAnswerFlightContentView();
  v25 = *(v46 - 8);
  v40 = v25;
  v71 = *(v25 + 64);
  v26 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v74 = &v22 - v26;
  v35 = sub_10025C9B0(&qword_1006D8938);
  v27 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = &v22 - v27;
  v42 = sub_10025C9B0(&qword_1006D8CA8);
  v28 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v45 = &v22 - v28;
  v79 = sub_10025C9B0(&qword_1006D8948);
  v30 = *(*(v79 - 8) + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v86 = &v22 - v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v22 - v29);
  v88 = &v22 - v31;
  v118 = &v22 - v31;
  v117 = a1;
  sub_1002F8D40(v4);
  v32 = v89;
  v89[2] = v69;
  v36 = sub_10025C9B0(&qword_1006D8940);
  v37 = sub_1002FDE9C();
  v5 = sub_100301244();
  sub_1002F9400(v38, v32, v33, v34, v35, v36, v37, v5, v45);
  sub_10030025C(v39);
  sub_1002FE9B0(v69, v74);
  v70 = *(v40 + 80);
  v41 = (v70 + 16) & ~v70;
  v72 = 7;
  v44 = swift_allocObject();
  sub_1002FEC78(v74, (v44 + v41));
  v6 = sub_100301364();
  sub_1002F9D58(v43, v44, v42, v6, v86);

  sub_10030140C(v45);
  v81 = sub_1003015DC();
  sub_1002EC85C(v86, v79, v88);
  sub_100032D10(v86);
  v7 = (v69 + *(v46 + 36));
  v47 = v7[3];
  v48 = v7[4];
  v49 = v7[5];

  v50 = v116;
  v116[0] = v48;
  v116[1] = v49;
  sub_1002686CC();
  v112 = Text.init<A>(_:)();
  v113 = v8;
  v114 = v9;
  v115 = v10;
  v52 = v112;
  v53 = v8;
  v54 = v9;
  v55 = v10;
  v51 = static Font.footnote.getter();
  v108 = v52;
  v109 = v53;
  v64 = 1;
  v110 = v54 & 1;
  v111 = v55;
  v104 = Text.font(_:)();
  v105 = v11;
  v106 = v12;
  v107 = v13;
  v59 = v104;
  v57 = v11;
  v58 = v12;
  v60 = v13;

  sub_1002EF150(v52, v53, v54 & 1);

  v14 = [objc_opt_self() secondaryLabelColor];
  v15 = Color.init(uiColor:)();
  v56 = &v103;
  v103 = v15;
  v99 = v59;
  v100 = v57;
  v101 = v58 & 1 & v64;
  v102 = v60;
  v95 = Text.foregroundStyle<A>(_:)();
  v96 = v16;
  v97 = v17;
  v98 = v18;
  v61 = v95;
  v62 = v16;
  v63 = v17;
  v65 = v18;
  sub_100268928();
  sub_1002EF150(v59, v57, v58 & 1);

  v68 = v92;
  v92[0] = v61;
  v92[1] = v62;
  v93 = v63 & 1 & v64;
  v94 = v65;
  v67 = MSAccessibilityIdentifierInstantAnswersFlightDepartureTime;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightDepartureTime);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v19;
  View.accessibilityIdentifier(_:)();

  _objc_release(v67);
  sub_1002F03C0(v68);
  sub_1002FE9B0(v69, v74);
  v73 = (v70 + 16) & ~v70;
  v77 = swift_allocObject();
  sub_1002FEC78(v74, (v77 + v73));
  v20 = sub_1002FAE38();
  sub_1002F9D58(v76, v77, v75, v20, v85);

  sub_1002FAF5C(v78);
  v82 = sub_10030119C();
  sub_1002EC85C(v85, v80, v87);
  sub_1000328F0(v85);
  sub_1000330F0(v88, v86);
  v84 = v91;
  v91[0] = v86;
  sub_1000329C0(v87, v85);
  v91[1] = v85;
  v90[0] = v79;
  v90[1] = v80;
  v89[4] = v81;
  v89[5] = v82;
  sub_1003A33CC(v84, 2uLL, v90, v83);
  sub_1000328F0(v85);
  sub_100032D10(v86);
  sub_1000328F0(v87);
  return sub_100032D10(v88);
}

uint64_t sub_1002F8D40@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v40 = 0;
  v39 = sub_1002FADFC;
  v69 = 0;
  v41 = sub_10025C9B0(&qword_1006D8910);
  v16[0] = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v43 = v16 - v16[0];
  v69 = v1;
  v2 = (v1 + *(type metadata accessor for InstantAnswerFlightContentView() + 36));
  v17 = v2[2];
  v18 = v2[3];
  v16[1] = v2[5];

  v19 = v68;
  v68[0] = v17;
  v68[1] = v18;
  sub_1002686CC();
  v64 = Text.init<A>(_:)();
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v21 = v64;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v20 = static Font.headline.getter();
  v60 = v21;
  v61 = v22;
  v33 = 1;
  v62 = v23 & 1;
  v63 = v24;
  v56 = Text.font(_:)();
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v28 = v56;
  v26 = v6;
  v27 = v7;
  v29 = v8;

  sub_1002EF150(v21, v22, v23 & 1);

  v9 = [objc_opt_self() labelColor];
  v10 = Color.init(uiColor:)();
  v25 = &v55;
  v55 = v10;
  v51 = v28;
  v52 = v26;
  v53 = v27 & 1 & v33;
  v54 = v29;
  v47 = Text.foregroundStyle<A>(_:)();
  v48 = v11;
  v49 = v12;
  v50 = v13;
  v30 = v47;
  v31 = v11;
  v32 = v12;
  v34 = v13;
  sub_100268928();
  sub_1002EF150(v28, v26, v27 & 1);

  v37 = v44;
  v44[0] = v30;
  v44[1] = v31;
  v45 = v32 & 1 & v33;
  v46 = v34;
  v36 = MSAccessibilityIdentifierInstantAnswersFlightDepartureAirport;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightDepartureAirport);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v14;
  View.accessibilityIdentifier(_:)();

  _objc_release(v36);
  sub_1002F03C0(v37);
  v42 = *sub_100305C90();
  sub_1002FAE38();
  View.alignmentGuide(_:computeValue:)();
  return sub_1002FAF5C(v43);
}

uint64_t sub_1002F91F4()
{
  v4 = type metadata accessor for ContentSizeCategory();
  v2 = *(v4 - 8);
  v3 = v4 - 8;
  v1 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v5 = &v1 - v1;
  sub_1002F6118(&v1 - v1);
  v6 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v2 + 8))(v5, v4);
  return (v6 ^ 1) & 1;
}

uint64_t sub_1002F92CC()
{
  sub_1002F9364();
  sub_10025C9B0(&qword_1006D8938);
  sub_1002FDE9C();
  return View.alignmentGuide(_:computeValue:)();
}

uint64_t *sub_1002F9364()
{
  if (qword_1006D5EC8 != -1)
  {
    swift_once();
  }

  return &qword_1006D88A8;
}

uint64_t sub_1002F9400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a9;
  v59 = a1;
  v38 = a2;
  v56 = a3;
  v57 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v10 = v9;
  v58 = v10;
  v39 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v66 = 0;
  v79 = a5;
  v78 = a6;
  v40 = *(a5 - 8);
  v41 = a5 - 8;
  v42 = (v40[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v43 = v25 - v42;
  v44 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v25 - v42);
  v45 = v25 - v44;
  v77 = v25 - v44;
  v46 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v47 = v25 - v46;
  v76 = v25 - v46;
  v48 = *(v16 - 8);
  v49 = v16 - 8;
  v50 = (v48[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v51 = v25 - v50;
  v52 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v50);
  v53 = v25 - v52;
  v54 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v52);
  v55 = v25 - v54;
  v75 = v25 - v54;
  v60 = type metadata accessor for _ConditionalContent();
  v62 = *(*(v60 - 8) + 64);
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __chkstk_darwin(v59);
  v63 = v25 - v61;
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = __chkstk_darwin(v19);
  v65 = v25 - v64;
  v74 = v25 - v64;
  v72 = v20;
  v73 = a2;
  v70 = v21;
  v71 = v22;
  v69 = v23;
  if (v20())
  {
    v56(v58);
    sub_1002EC85C(v53, v35, v55);
    v31 = v48[1];
    v32 = v48 + 1;
    v31(v53, v35);
    v66 = v53;
    v30 = v48[2];
    v29 = v48 + 2;
    v30(v51, v55, v35);
    sub_1002EC85C(v51, v35, v53);
    v31(v51, v35);
    v30(v51, v53, v35);
    sub_1002FCA74(v51, v35, v34, v37, v36, v63);
    v31(v51, v35);
    type metadata accessor for _ConditionalContent.Storage();
    sub_1002FCC64(v63, v65, v35, v34);
    v31(v53, v35);
    v31(v55, v35);
  }

  else
  {
    sub_1002EC85C(v58, v34, v47);
    v26 = v40[2];
    v25[1] = v40 + 2;
    v26(v43, v47, v34);
    sub_1002EC85C(v43, v34, v45);
    v28 = v40[1];
    v27 = v40 + 1;
    v28(v43, v34);
    v26(v43, v45, v34);
    sub_1002FCB6C(v43, v35, v34, v37, v36, v63);
    v28(v43, v34);
    type metadata accessor for _ConditionalContent.Storage();
    sub_1002FCC64(v63, v65, v35, v34);
    v28(v45, v34);
    v28(v47, v34);
  }

  v25[0] = type metadata accessor for _ConditionalContent.Storage();
  sub_1002FCD44(v65, v63, v35, v34);
  v67 = v37;
  v68 = v36;
  swift_getWitnessTable();
  sub_1002EC85C(v63, v60, v33);
  sub_1002FCE24(v63, v35, v34);
  return sub_1002FCE24(v65, v35, v34);
}

uint64_t sub_1002F9C6C()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.setter();
  sub_1002F673C();
}

uint64_t sub_1002F9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v19 = a1;
  v20 = a2;
  v37 = a3;
  v32 = a4;
  v24 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v27 = sub_1002FD5C0;
  v33 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v47 = a3;
  sub_10025CAA4(&qword_1006D8A18);
  v38 = type metadata accessor for ModifiedContent();
  v17 = *(*(v38 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v36 = &v15 - v16;
  v26 = sub_10025C9B0(&qword_1006D8A20);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v20);
  v39 = &v15 - v18;
  v46 = &v15 - v18;
  v44 = v7;
  v45 = v6;
  v43 = v5;

  v8 = swift_allocObject();
  v9 = v20;
  v25 = v8;
  *(v8 + 16) = v19;
  *(v8 + 24) = v9;
  v21 = sub_10025CAA4(&qword_1006D8A28);
  v22 = type metadata accessor for CGSize();
  v23 = sub_1002FD5CC();
  v10 = sub_1002FD66C();
  v42[2] = v21;
  v42[3] = v22;
  v42[4] = v23;
  v42[5] = v10;
  swift_getOpaqueTypeConformance2();
  v11 = GeometryReader.init(content:)();
  v31 = v42;
  v42[0] = v11;
  v42[1] = v12;
  v28 = sub_10025C9B0(&qword_1006D8A40);
  v29 = sub_1002FD850();
  v30 = sub_1002FD828();
  View.background<A>(_:alignment:)();
  sub_100044C9C();
  v13 = sub_1002FD8D8();
  v40 = v32;
  v41 = v13;
  WitnessTable = swift_getWitnessTable();
  sub_1002EC85C(v36, v38, v39);
  sub_10002E068(v36, v37);
  sub_10002E0D8(v39, v36, v37, v38);
  sub_1002EC85C(v36, v38, v34);
  sub_10002E068(v36, v37);
  result = v39;
  sub_10002E068(v39, v37);
  return result;
}

uint64_t sub_1002FA0CC()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.setter();
  sub_100044C9C();
}

uint64_t sub_1002FA19C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v51 = a1;
  v57 = sub_100301120;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v42 = type metadata accessor for InstantAnswerFlightContentView();
  v43 = *(v42 - 8);
  v52 = v43;
  v53 = *(v43 + 64);
  v44 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v55 = &v18 - v44;
  v56 = sub_10025C9B0(&qword_1006D8910);
  v45 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v46 = &v18 - v45;
  v47 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v45);
  v64 = &v18 - v47;
  v61 = sub_10025C9B0(&qword_1006D8958);
  v49 = *(*(v61 - 8) + 64);
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v63 = &v18 - v48;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v48);
  v60 = &v18 - v50;
  v96 = &v18 - v50;
  v95 = a1;
  sub_1002FA7F4();
  sub_1002FE9B0(v51, v55);
  v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v59 = swift_allocObject();
  sub_1002FEC78(v55, (v59 + v54));
  v58 = sub_1002FAE38();
  sub_1002F9D58(v57, v59, v56, v58, v63);

  sub_1002FAF5C(v64);
  v62 = sub_10030119C();
  sub_1002EC85C(v63, v61, v60);
  sub_1000328F0(v63);
  v94 = v64;
  v4 = (v51 + *(v42 + 36));
  v18 = v4[7];
  v19 = v4[8];
  v20 = v4[9];

  v21 = v93;
  v93[0] = v19;
  v93[1] = v20;
  sub_1002686CC();
  v89 = Text.init<A>(_:)();
  v90 = v5;
  v91 = v6;
  v92 = v7;
  v23 = v89;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v22 = static Font.footnote.getter();
  v85 = v23;
  v86 = v24;
  v35 = 1;
  v87 = v25 & 1;
  v88 = v26;
  v81 = Text.font(_:)();
  v82 = v8;
  v83 = v9;
  v84 = v10;
  v30 = v81;
  v28 = v8;
  v29 = v9;
  v31 = v10;

  sub_1002EF150(v23, v24, v25 & 1);

  v11 = [objc_opt_self() secondaryLabelColor];
  v12 = Color.init(uiColor:)();
  v27 = &v80;
  v80 = v12;
  v76 = v30;
  v77 = v28;
  v78 = v29 & 1 & v35;
  v79 = v31;
  v72 = Text.foregroundStyle<A>(_:)();
  v73 = v13;
  v74 = v14;
  v75 = v15;
  v32 = v72;
  v33 = v13;
  v34 = v14;
  v36 = v15;
  sub_100268928();
  sub_1002EF150(v30, v28, v29 & 1);

  v39 = v69;
  v69[0] = v32;
  v69[1] = v33;
  v70 = v34 & 1 & v35;
  v71 = v36;
  v38 = MSAccessibilityIdentifierInstantAnswersFlightArrivalTime;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightArrivalTime);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v16;
  View.accessibilityIdentifier(_:)();

  _objc_release(v38);
  sub_1002F03C0(v39);
  sub_1002EC85C(v46, v56, v64);
  sub_1002FAF5C(v46);
  sub_1000329C0(v60, v63);
  v40 = v68;
  v68[0] = v63;
  sub_100300D60(v64, v46);
  v68[1] = v46;
  v67[0] = v61;
  v67[1] = v56;
  v65 = v62;
  v66 = v58;
  sub_1003A33CC(v40, 2uLL, v67, v41);
  sub_1002FAF5C(v46);
  sub_1000328F0(v63);
  sub_1002FAF5C(v64);
  return sub_1000328F0(v60);
}

uint64_t sub_1002FA7F4()
{
  v51 = 0;
  v1 = v0 + *(type metadata accessor for InstantAnswerFlightContentView() + 36);
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);

  v49 = v13;
  v50 = v14;
  sub_1002686CC();
  v45 = Text.init<A>(_:)();
  v46 = v2;
  v47 = v3;
  v48 = v4;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  static Font.headline.getter();
  v41 = v45;
  v42 = v15;
  v43 = v16 & 1;
  v44 = v17;
  v37 = Text.font(_:)();
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v18 = v5;
  v19 = v6;
  v20 = v7;

  sub_1002EF150(v45, v15, v16 & 1);

  v8 = [objc_opt_self() labelColor];
  v36 = Color.init(uiColor:)();
  v32 = v37;
  v33 = v18;
  v34 = v19 & 1;
  v35 = v20;
  v28 = Text.foregroundStyle<A>(_:)();
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  sub_100268928();
  sub_1002EF150(v32, v18, v19 & 1);

  v25[0] = v28;
  v25[1] = v21;
  v26 = v22 & 1;
  v27 = v23;
  v24 = MSAccessibilityIdentifierInstantAnswersFlightArrivalAirport;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightArrivalAirport);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  View.accessibilityIdentifier(_:)();

  _objc_release(v24);
  return sub_1002F03C0(v25);
}

uint64_t sub_1002FAAE4()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88D8);
  State.wrappedValue.setter();
  sub_1002F673C();
}

uint64_t *sub_1002FABD0()
{
  if (qword_1006D5ED8 != -1)
  {
    swift_once();
  }

  return &qword_1006D88B8;
}

uint64_t sub_1002FAC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v14 = 0;
  v13 = 0;
  v9 = sub_10025C9B0(&qword_1006D8B48);
  v6 = *(*(v9 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v9);
  v11 = &v5 - v5;
  v7 = v5;
  __chkstk_darwin(v3);
  v12 = &v5 - v7;
  v14 = &v5 - v7;
  v13 = a1;
  sub_1002FAD68();
  v10 = sub_1002FDF40();
  sub_1002EC85C(v11, v9, v12);
  sub_100030CFC(v11);
  sub_100031128(v12, v11);
  sub_1002EC85C(v11, v9, v8);
  sub_100030CFC(v11);
  return sub_100030CFC(v12);
}

uint64_t sub_1002FAD68()
{
  static VerticalAlignment.firstTextBaseline.getter();
  sub_10025C9B0(&qword_1006D8A58);
  sub_1002FD968();
  return HStack.init(alignment:spacing:content:)();
}

unint64_t sub_1002FAE38()
{
  v2 = qword_1006D8A08;
  if (!qword_1006D8A08)
  {
    sub_10025CAA4(&qword_1006D8910);
    sub_1002FAEDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FAEDC()
{
  v2 = qword_1006D8A10;
  if (!qword_1006D8A10)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FAF5C(uint64_t a1)
{
  sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v1 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1002FB000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v81 = a2;
  v137 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v185 = 0;
  v184 = 0;
  v167 = 0;
  v166 = 0;
  v82 = sub_10025C9B0(&qword_1006D89B8);
  v83 = *(v82 - 8);
  v84 = v83;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82 - 8);
  v86 = &v27 - v85;
  v202 = &v27 - v85;
  v87 = sub_10025C9B0(&qword_1006D8910);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - 8);
  v89 = &v27 - v88;
  v90 = sub_10025C9B0(&qword_1006D89E8);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90 - 8);
  v92 = &v27 - v91;
  v93 = sub_10025C9B0(&qword_1006D89F0);
  v94 = (*(*(v93 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v93 - 8);
  v95 = &v27 - v94;
  v96 = sub_10025C9B0(&qword_1006D8B50);
  v97 = *(*(v96 - 8) + 64);
  v3 = __chkstk_darwin(v96 - 8);
  v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v27 - v99;
  __chkstk_darwin(v3);
  v100 = &v27 - v99;
  v201 = &v27 - v99;
  v101 = sub_10025C9B0(&qword_1006D89F8);
  v103 = *(*(v101 - 8) + 64);
  v4 = __chkstk_darwin(v137);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v102 = &v27 - v105;
  v5 = __chkstk_darwin(v4);
  v104 = &v27 - v105;
  __chkstk_darwin(v5);
  v106 = &v27 - v105;
  v200 = &v27 - v105;
  v107 = type metadata accessor for InstantAnswerFlightContentView();
  v108 = *(v107 - 8);
  v109 = v108;
  v110 = *(v108 + 64);
  __chkstk_darwin(v107 - 8);
  v111 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10025C9B0(&qword_1006D89A0);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112 - 8);
  v114 = &v27 - v113;
  v115 = sub_10025C9B0(&qword_1006D8B58);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v115 - 8);
  v117 = &v27 - v116;
  v118 = sub_10025C9B0(&qword_1006D89B0);
  v119 = *(*(v118 - 8) + 64);
  v7 = __chkstk_darwin(v118 - 8);
  v121 = (v119 + 15) & 0xFFFFFFFFFFFFFFF0;
  v120 = (&v27 - v121);
  __chkstk_darwin(v7);
  v122 = (&v27 - v121);
  v199 = &v27 - v121;
  v123 = sub_10025C9B0(&qword_1006D8988);
  v124 = *(v123 - 8);
  v125 = v124;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123 - 8);
  v127 = &v27 - v126;
  v198 = &v27 - v126;
  v128 = sub_10025C9B0(&qword_1006D8938);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v128 - 8);
  v130 = &v27 - v129;
  v131 = sub_10025C9B0(&qword_1006D89C8);
  v132 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v131 - 8);
  v133 = &v27 - v132;
  v134 = sub_10025C9B0(&qword_1006D89D0);
  v135 = (*(*(v134 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v134 - 8);
  v136 = &v27 - v135;
  v138 = sub_10025C9B0(&qword_1006D8B60);
  v139 = *(*(v138 - 8) + 64);
  v8 = __chkstk_darwin(v137);
  v141 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = &v27 - v141;
  __chkstk_darwin(v8);
  v142 = &v27 - v141;
  v197 = &v27 - v141;
  v153 = type metadata accessor for ContentSizeCategory();
  v143 = v153;
  v144 = *(v153 - 8);
  v152 = v144;
  __chkstk_darwin(v153 - 8);
  v154 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v154;
  v146 = sub_10025C9B0(&qword_1006D89E0);
  v148 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146 - 8);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = &v27 - v150;
  v10 = __chkstk_darwin(&v27 - v150);
  v149 = (&v27 - v150);
  __chkstk_darwin(v10);
  v151 = (&v27 - v150);
  v196 = &v27 - v150;
  v195 = a1;
  sub_1002F6118(v11);
  v157 = ContentSizeCategory.isAccessibilityCategory.getter();
  v155 = *(v152 + 8);
  v156 = (v152 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v155(v154, v153);
  if (v157)
  {
    sub_1002F8D40(v130);
    v12 = (v80 + *(v107 + 20));
    v65 = *v12;
    v66 = v12[1];
    v67 = v12[2];

    v173 = v65;
    v174 = v66;
    v175 = v67;
    v68 = sub_10025C9B0(&qword_1006D88D8);
    State.wrappedValue.getter();
    v74 = v172;

    v13 = (v80 + *(v107 + 20));
    v69 = *v13;
    v70 = v13[1];
    v71 = v13[2];

    v169 = v69;
    v170 = v70;
    v171 = v71;
    State.wrappedValue.getter();
    v72 = v168;

    v73 = sub_1002FDE9C();
    sub_1002FC38C();
    v78 = 0;
    View.frame(width:height:alignment:)();
    sub_10030025C(v130);
    sub_10030032C();
    sub_1002FC3B0();
    sub_10030025C(v133);
    sub_1003003D0();
    View.hidden()();
    sub_10030025C(v136);
    v77 = sub_100300474();
    sub_1002EC85C(v140, v138, v142);
    sub_10030025C(v140);
    v79 = 1;
    v164 = Spacer.init(minLength:)();
    v165 = v14 & 1;
    v75 = &type metadata for Spacer;
    v76 = &protocol witness table for Spacer;
    sub_1002EC85C(&v164, &type metadata for Spacer, &v166);
    sub_10030051C(v142, v140);
    v163[0] = v140;
    v162 = v167;
    v161 = v166;
    v163[1] = &v161;
    v160[0] = v138;
    v160[1] = v75;
    v158 = v77;
    v159 = v76;
    sub_1003A33CC(v163, 2uLL, v160, v127);
    sub_10030025C(v140);
    sub_1003006F0(v127, v147);
    (*(v125 + 56))(v147, v78, v79, v123);
    sub_1002FE09C();
    sub_1003A3628(v147, v123, v149);
    sub_1002FE124(v147);
    sub_1002FE244(v149, v151);
    sub_10030025C(v127);
    sub_10030025C(v142);
  }

  else
  {
    (*(v125 + 56))(v147, 1, 1, v123);
    sub_1002FE09C();
    sub_1003A3628(v147, v123, v149);
    sub_1002FE124(v147);
    sub_1002FE244(v149, v151);
  }

  v42 = MFImageGlyphInstantAnswersArrowForward;
  v15 = MFImageGlyphInstantAnswersArrowForward;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = Image.init(systemName:)();

  v194[0] = v43;
  v44 = static Font.headline.getter();
  v45 = v194;
  View.font(_:)();

  sub_100268928();
  v193[0] = v194[1];
  v193[1] = v194[2];
  v193[2] = v194[3];
  v16 = [objc_opt_self() secondaryLabelColor];
  v192 = Color.init(uiColor:)();
  v46 = sub_10025C9B0(&qword_1006D8B70);
  sub_1002FE4B8();
  v47 = &v192;
  v48 = v193;
  View.foregroundStyle<A>(_:)();
  sub_100268928();
  sub_1002FE5E4();
  v191[0] = v194[4];
  v191[1] = v194[5];
  v191[2] = v194[6];
  v191[3] = v194[7];
  v52 = MSAccessibilityIdentifierInstantAnswersFlightArrowImage;
  v17 = MSAccessibilityIdentifierInstantAnswersFlightArrowImage;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v18;
  v49 = sub_10025C9B0(&qword_1006D8B90);
  sub_1002FE628();
  v53 = v191;
  View.accessibilityIdentifier(_:)();

  sub_1002FE758();
  v60 = &v27;
  v54 = 24;
  __chkstk_darwin(&v27);
  v55 = &v27 - 4;
  *(&v27 - 2) = v19;
  v59 = &v27;
  __chkstk_darwin(&v27);
  v56 = &v27 - 4;
  *(&v27 - 2) = v20;
  v57 = sub_10025C9B0(&qword_1006D89A8);
  v58 = sub_1002FE7B8();
  v21 = sub_1002FE860();
  sub_1002F9400(sub_1002FE7A8, v55, sub_1002FE7B0, v56, v112, v57, v58, v21, v117);
  sub_1002FE904(v114);
  sub_1002FE9B0(v80, v111);
  v61 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v62 = swift_allocObject();
  sub_1002FEC78(v111, (v62 + v61));
  v22 = sub_1002FEE84();
  sub_1002F9D58(sub_1002FEE08, v62, v115, v22, v120);

  sub_1002FEF2C(v117);
  v63 = sub_1002FF0C4();
  sub_1002EC85C(v120, v118, v122);
  sub_10002E740(v120);
  sub_1002F6118(v145);
  v64 = ContentSizeCategory.isAccessibilityCategory.getter();
  v155(v145, v143);
  if (v64)
  {
    v41 = 1;
    v182 = Spacer.init(minLength:)();
    v183 = v23 & 1;
    v37 = &type metadata for Spacer;
    v38 = &protocol witness table for Spacer;
    sub_1002EC85C(&v182, &type metadata for Spacer, &v184);
    sub_1002FA7F4();
    v24 = (v80 + *(v107 + 24));
    v27 = *v24;
    v28 = v24[1];
    v29 = v24[2];

    v181[9] = v27;
    v181[10] = v28;
    v181[11] = v29;
    v30 = sub_10025C9B0(&qword_1006D88D8);
    State.wrappedValue.getter();
    v36 = v181[7];

    v25 = (v80 + *(v107 + 24));
    v31 = *v25;
    v32 = v25[1];
    v33 = v25[2];

    v181[4] = v31;
    v181[5] = v32;
    v181[6] = v33;
    State.wrappedValue.getter();
    v34 = v181[3];

    v35 = sub_1002FAE38();
    sub_1002FC38C();
    v40 = 0;
    View.frame(width:height:alignment:)();
    sub_1002FAF5C(v89);
    sub_1002FFC08();
    sub_1002FC3B0();
    sub_1002FAF5C(v92);
    sub_1002FFCAC();
    View.hidden()();
    sub_1002FAF5C(v95);
    v39 = sub_1002FFD50();
    sub_1002EC85C(v98, v96, v100);
    sub_1002FAF5C(v98);
    v180 = v185;
    v179 = v184;
    v181[0] = &v179;
    sub_1002FFE70(v100, v98);
    v181[1] = v98;
    v178[0] = v37;
    v178[1] = v96;
    v176 = v38;
    v177 = v39;
    sub_1003A33CC(v181, 2uLL, v178, v86);
    sub_1002FAF5C(v98);
    sub_1002FFFE0(v86, v102);
    (*(v84 + 56))(v102, v40, v41, v82);
    sub_1002FF16C();
    sub_1003A3628(v102, v82, v104);
    sub_1002FF1F4(v102);
    sub_1002FF30C(v104, v106);
    sub_100300194(v86);
    sub_1002FAF5C(v100);
  }

  else
  {
    (*(v84 + 56))(v102, 1, 1, v82);
    sub_1002FF16C();
    sub_1003A3628(v102, v82, v104);
    sub_1002FF1F4(v102);
    sub_1002FF30C(v104, v106);
  }

  sub_1002FF54C(v151, v149);
  v190[0] = v149;
  sub_10002E900(v122, v120);
  v190[1] = v120;
  sub_1002FF83C(v106, v104);
  v190[2] = v104;
  v189[0] = v146;
  v189[1] = v118;
  v189[2] = v101;
  v186 = sub_1002FFAD8();
  v187 = v63;
  v188 = sub_1002FFB70();
  sub_1003A33CC(v190, 3uLL, v189, v81);
  sub_1002FF1F4(v104);
  sub_10002E740(v120);
  sub_1002FE124(v149);
  sub_1002FF1F4(v106);
  sub_10002E740(v122);
  return sub_1002FE124(v151);
}

uint64_t sub_1002FC3EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v9 = a2;
  v15 = sub_100300904;
  v20 = 0;
  v19 = 0;
  v4 = type metadata accessor for InstantAnswerFlightContentView();
  v7 = *(v4 - 8);
  v10 = v7;
  v11 = *(v7 + 64);
  v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v7 - v8;
  v20 = a1;
  v19 = v5;
  v17 = *sub_1002F9364();
  sub_1002FE9B0(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_1002FEC78(v13, (v18 + v12));
  v16 = sub_10025C9B0(&qword_1006D89A0);
  sub_1002FE7B8();
  View.alignmentGuide(_:computeValue:)();
}

double sub_1002FC57C(uint64_t a1, uint64_t a2)
{
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v2 - *(a2 + *(type metadata accessor for InstantAnswerFlightContentView() + 40));
}

uint64_t sub_1002FC5E4()
{
  type metadata accessor for InstantAnswerFlightContentView();

  sub_10025C9B0(&qword_1006D88E0);
  State.wrappedValue.setter();
  sub_100044C9C();
}

double sub_1002FC6E8@<D0>(const void *a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  sub_1002FDFC8(a1, a3);
  v23 = type metadata accessor for InstantAnswerFlightContentView();
  v18 = v23[5];
  v3 = property wrapper backing initializer of InstantAnswerFlightContentView.departureAirportSize();
  v4 = &a3[v18];
  *v4 = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v3;
  v19 = v23[6];
  v7 = property wrapper backing initializer of InstantAnswerFlightContentView.departureAirportSize();
  v8 = &a3[v19];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v7;
  v20 = v23[7];
  v11 = property wrapper backing initializer of InstantAnswerFlightContentView.departureTimeWidth();
  v12 = &a3[v20];
  *v12 = v13;
  *(v12 + 1) = v11;
  v21 = v23[8];
  v14 = property wrapper backing initializer of InstantAnswerFlightContentView.departureTimeWidth();
  v15 = &a3[v21];
  *v15 = v16;
  *(v15 + 1) = v14;
  memcpy(&a3[v23[9]], a2, 0x50uLL);
  result = 8.0;
  *&a3[v23[10]] = 8.0;
  return result;
}

uint64_t sub_1002FC8AC()
{
  sub_1002FD9F0();
  result = HorizontalAlignment.init(_:)();
  qword_1006D88A8 = result;
  return result;
}

uint64_t sub_1002FC950()
{
  sub_1002FDA6C();
  result = VerticalAlignment.init(_:)();
  qword_1006D88B0 = result;
  return result;
}

uint64_t *sub_1002FC984()
{
  if (qword_1006D5ED0 != -1)
  {
    swift_once();
  }

  return &qword_1006D88B0;
}

uint64_t sub_1002FCA00()
{
  sub_1002F9364();
  sub_1002FC984();
  result = Alignment.init(horizontal:vertical:)();
  qword_1006D88B8 = result;
  qword_1006D88C0 = v1;
  return result;
}

uint64_t sub_1002FCA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = type metadata accessor for _ConditionalContent.Storage();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002FCB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = type metadata accessor for _ConditionalContent.Storage();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002FCC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 32))(a2, a1);
  }

  else
  {
    (*(*(a3 - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1002FCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 16))(a2, a1);
  }

  else
  {
    (*(*(a3 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1002FCE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 8))(a1);
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1002FCED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v36 = a1;
  v42 = a2;
  v43 = a3;
  v33 = sub_10030097C;
  v50 = sub_100300A1C;
  v58 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v49 = 0;
  v46 = type metadata accessor for GeometryProxy();
  v29 = *(v46 - 8);
  v30 = v46 - 8;
  v28 = v29;
  v40 = *(v29 + 64);
  v25 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v45 = &v25 - v25;
  v65 = sub_10025C9B0(&qword_1006D8A20);
  v59 = *(v65 - 8);
  v60 = v65 - 8;
  v26 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v36);
  v63 = &v25 - v26;
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v64 = &v25 - v27;
  v78 = &v25 - v27;
  v77 = v6;
  v75 = v7;
  v76 = v8;
  v9 = static Color.clear.getter();
  v35 = v74;
  v74[0] = v9;

  v38 = *(v29 + 16);
  v37 = v29 + 16;
  v38(v45, v36, v46);
  v39 = *(v28 + 80);
  v31 = (v39 + 32) & ~v39;
  v41 = 7;
  v10 = swift_allocObject();
  v11 = v29;
  v12 = v31;
  v13 = v43;
  v14 = v45;
  v15 = v46;
  v32 = v10;
  *(v10 + 16) = v42;
  *(v10 + 24) = v13;
  v48 = *(v11 + 32);
  v47 = v11 + 32;
  v48(v10 + v12, v14, v15);
  v34 = v32;
  View.onAppear(perform:)();
  sub_1003009E8(v33);
  sub_100268928();
  v53 = v73;
  v73[0] = v74[1];
  v73[1] = v74[2];
  v73[2] = v74[3];
  v73[3] = v74[4];
  v73[4] = v74[5];
  GeometryProxy.size.getter();
  v51 = v72;
  v72[0] = v16;
  v72[1] = v17;

  v38(v45, v36, v46);
  v44 = (v39 + 32) & ~v39;
  v18 = swift_allocObject();
  v19 = v43;
  v20 = v44;
  v21 = v45;
  v22 = v46;
  v23 = v48;
  v52 = v18;
  *(v18 + 16) = v42;
  *(v18 + 24) = v19;
  v23(v18 + v20, v21, v22);
  v54 = sub_10025C9B0(&qword_1006D8A28);
  v55 = type metadata accessor for CGSize();
  v56 = sub_1002FD5CC();
  v57 = sub_1002FD66C();
  sub_1002FD80C();
  View.onChange<A>(of:initial:_:)();

  sub_100300AA4(v53);
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v71 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v63, v65, v64);
  v67 = *(v59 + 8);
  v66 = v59 + 8;
  v67(v63, v65);
  (*(v59 + 16))(v63, v64, v65);
  sub_1002EC85C(v63, v65, v61);
  v67(v63, v65);
  return (v67)(v64, v65);
}

unint64_t sub_1002FD5CC()
{
  v2 = qword_1006D8A30;
  if (!qword_1006D8A30)
  {
    sub_10025CAA4(&qword_1006D8A28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FD66C()
{
  v2 = qword_1006D8A38;
  if (!qword_1006D8A38)
  {
    type metadata accessor for CGSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FD6EC(void (*a1)(void))
{

  GeometryProxy.size.getter();
  a1();
}

uint64_t sub_1002FD764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  v3 = GeometryProxy.size.getter();
  a3(v3);
}

unint64_t sub_1002FD850()
{
  v2 = qword_1006D8A48;
  if (!qword_1006D8A48)
  {
    sub_10025CAA4(&qword_1006D8A40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FD8D8()
{
  v2 = qword_1006D8A50;
  if (!qword_1006D8A50)
  {
    sub_10025CAA4(&qword_1006D8A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FD968()
{
  v2 = qword_1006D8A60;
  if (!qword_1006D8A60)
  {
    sub_10025CAA4(&qword_1006D8A58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FD9F0()
{
  v2 = qword_1006D8A68;
  if (!qword_1006D8A68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FDA6C()
{
  v2 = qword_1006D8A70;
  if (!qword_1006D8A70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8A70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FDB6C()
{
  v4 = sub_1002FDCA8();
  if (v0 <= 0x3F)
  {
    v4 = sub_1002FDD44();
    if (v1 <= 0x3F)
    {
      v4 = sub_1002FDDE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1002FDCA8()
{
  v4 = qword_1006D8AE0;
  if (!qword_1006D8AE0)
  {
    type metadata accessor for ContentSizeCategory();
    v3 = type metadata accessor for Environment();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8AE0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1002FDD44()
{
  v4 = qword_1006D8AE8;
  if (!qword_1006D8AE8)
  {
    type metadata accessor for CGSize();
    v3 = type metadata accessor for State();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8AE8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1002FDDE0()
{
  v4 = qword_1006D8AF0;
  if (!qword_1006D8AF0)
  {
    v3 = type metadata accessor for State();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D8AF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1002FDE9C()
{
  v2 = qword_1006D8B38;
  if (!qword_1006D8B38)
  {
    sub_10025CAA4(&qword_1006D8938);
    sub_1002FAE38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FDF40()
{
  v2 = qword_1006D8B40;
  if (!qword_1006D8B40)
  {
    sub_10025CAA4(&qword_1006D8B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B40);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002FDFC8(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1002FE09C()
{
  v2 = qword_1006D8B68;
  if (!qword_1006D8B68)
  {
    sub_10025CAA4(&qword_1006D8988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FE124(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D8988);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v4 = a1 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v4);
    sub_10025C9B0(&qword_1006D8938);
  }

  return a1;
}

_OWORD *sub_1002FE244(_OWORD *a1, _OWORD *a2)
{
  v18 = *(sub_10025C9B0(&qword_1006D8988) - 8);
  if ((*(v18 + 48))(a1, 1))
  {
    v12 = sub_10025C9B0(&qword_1006D89E0);
    memcpy(a2, a1, *(*(v12 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v2 = sub_10025C9B0(&qword_1006D8910);
    v15 = a2 + *(v2 + 36);
    v14 = a1 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 32))(v15, v14);
    v4 = sub_10025C9B0(&qword_1006D8938);
    v5 = a2 + *(v4 + 36);
    v6 = a1 + *(v4 + 36);
    *v5 = *v6;
    *(v5 + 2) = *(v6 + 2);
    v7 = sub_10025C9B0(&qword_1006D89C8);
    memcpy(a2 + *(v7 + 36), a1 + *(v7 + 36), 0x30uLL);
    v8 = sub_10025C9B0(&qword_1006D89D0);
    *(a2 + *(v8 + 36)) = *(a1 + *(v8 + 36));
    v9 = sub_10025C9B0(&qword_1006D89D8);
    v10 = a2 + *(v9 + 48);
    v11 = a1 + *(v9 + 48);
    *v10 = *v11;
    v10[8] = v11[8];
    (*(v18 + 56))();
  }

  return a2;
}

unint64_t sub_1002FE4B8()
{
  v2 = qword_1006D8B78;
  if (!qword_1006D8B78)
  {
    sub_10025CAA4(&qword_1006D8B70);
    sub_1002FE55C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FE55C()
{
  v2 = qword_1006D8B80;
  if (!qword_1006D8B80)
  {
    sub_10025CAA4(&qword_1006D8B88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B80);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002FE5E4()
{
}

unint64_t sub_1002FE628()
{
  v2 = qword_1006D8B98;
  if (!qword_1006D8B98)
  {
    sub_10025CAA4(&qword_1006D8B90);
    sub_1002FE4B8();
    sub_1002FE6D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FE6D0()
{
  v2 = qword_1006D8BA0;
  if (!qword_1006D8BA0)
  {
    sub_10025CAA4(&qword_1006D8BA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BA0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002FE758()
{
}

unint64_t sub_1002FE7B8()
{
  v2 = qword_1006D8BB0;
  if (!qword_1006D8BB0)
  {
    sub_10025CAA4(&qword_1006D89A0);
    sub_1002FE628();
    sub_1002FAEDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FE860()
{
  v2 = qword_1006D8BB8;
  if (!qword_1006D8BB8)
  {
    sub_10025CAA4(&qword_1006D89A8);
    sub_1002FE7B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FE904(uint64_t a1)
{

  v3 = *(sub_10025C9B0(&qword_1006D89A0) + 36);
  v1 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

void *sub_1002FE9B0(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v24 = *a1;

    *a2 = v24;
  }

  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for InstantAnswerFlightContentView();
  v8 = a2 + v23[5];
  v3 = a1 + v23[5];
  *v8 = *v3;
  v9 = *(v3 + 2);

  *(v8 + 2) = v9;
  v10 = a2 + v23[6];
  v4 = a1 + v23[6];
  *v10 = *v4;
  v11 = *(v4 + 2);

  *(v10 + 2) = v11;
  v12 = (a2 + v23[7]);
  v5 = (a1 + v23[7]);
  *v12 = *v5;
  v13 = v5[1];

  v12[1] = v13;
  v14 = (a2 + v23[8]);
  v6 = (a1 + v23[8]);
  *v14 = *v6;
  v15 = v6[1];

  v14[1] = v15;
  v21 = (a2 + v23[9]);
  v20 = (a1 + v23[9]);
  *v21 = *v20;
  v16 = v20[1];

  v21[1] = v16;
  v21[2] = v20[2];
  v17 = v20[3];

  v21[3] = v17;
  v21[4] = v20[4];
  v18 = v20[5];

  v21[5] = v18;
  v21[6] = v20[6];
  v19 = v20[7];

  v21[7] = v19;
  v21[8] = v20[8];
  v22 = v20[9];

  result = a2;
  v21[9] = v22;
  *(a2 + v23[10]) = *(a1 + v23[10]);
  return result;
}

char *sub_1002FEC78(char *a1, char *a2)
{
  v11 = sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ContentSizeCategory();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  v8 = type metadata accessor for InstantAnswerFlightContentView();
  v3 = &a2[v8[5]];
  v4 = &a1[v8[5]];
  *v3 = *v4;
  *(v3 + 2) = *(v4 + 2);
  v5 = &a2[v8[6]];
  v6 = v8[6];
  *v5 = *&a1[v6];
  *(v5 + 2) = *&a1[v6 + 16];
  *&a2[v8[7]] = *&a1[v8[7]];
  *&a2[v8[8]] = *&a1[v8[8]];
  memcpy(&a2[v8[9]], &a1[v8[9]], 0x50uLL);
  result = a2;
  *&a2[v8[10]] = *&a1[v8[10]];
  return result;
}

uint64_t sub_1002FEE08()
{
  type metadata accessor for InstantAnswerFlightContentView();

  return sub_1002FC5E4();
}

unint64_t sub_1002FEE84()
{
  v2 = qword_1006D8BC0;
  if (!qword_1006D8BC0)
  {
    sub_10025CAA4(&qword_1006D8B58);
    sub_1002FE860();
    sub_1002FE7B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FEF2C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {

    v5 = a1 + *(sub_10025C9B0(&qword_1006D89A0) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v5);
    sub_10025C9B0(&qword_1006D89A8);
  }

  return a1;
}

unint64_t sub_1002FF0C4()
{
  v2 = qword_1006D8BC8;
  if (!qword_1006D8BC8)
  {
    sub_10025CAA4(&qword_1006D89B0);
    sub_1002FEE84();
    sub_1002FD8D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FF16C()
{
  v2 = qword_1006D8BD0;
  if (!qword_1006D8BD0)
  {
    sub_10025CAA4(&qword_1006D89B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FF1F4(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006D89B8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v4 = a1 + *(sub_10025C9B0(&qword_1006D89C0) + 48);
    sub_1002EF150(*v4, *(v4 + 8), *(v4 + 16) & 1);

    v5 = v4 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v5);
  }

  return a1;
}

_BYTE *sub_1002FF30C(_BYTE *a1, _BYTE *a2)
{
  v15 = sub_10025C9B0(&qword_1006D89B8);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = sub_10025C9B0(&qword_1006D89F8);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[8] = a1[8];
    v2 = sub_10025C9B0(&qword_1006D89C0);
    v11 = &a2[*(v2 + 48)];
    v12 = &a1[*(v2 + 48)];
    *v11 = *v12;
    v11[1] = v12[1];
    v3 = sub_10025C9B0(&qword_1006D8910);
    v10 = v11 + *(v3 + 36);
    v9 = v12 + *(v3 + 36);
    v4 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v4 - 8) + 32))(v10, v9);
    v5 = sub_10025C9B0(&qword_1006D89E8);
    memcpy(v11 + *(v5 + 36), v12 + *(v5 + 36), 0x30uLL);
    v6 = sub_10025C9B0(&qword_1006D89F0);
    *(v11 + *(v6 + 36)) = *(v12 + *(v6 + 36));
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

void *sub_1002FF54C(uint64_t *a1, void *a2)
{
  v24 = *(sub_10025C9B0(&qword_1006D8988) - 8);
  if ((*(v24 + 48))(a1, 1))
  {
    v11 = sub_10025C9B0(&qword_1006D89E0);
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    v13 = *a1;
    v14 = a1[1];
    v15 = *(a1 + 16);
    sub_1002EF238(*a1, v14, v15 & 1);
    *a2 = v13;
    a2[1] = v14;
    *(a2 + 16) = v15 & 1;
    v16 = a1[3];

    a2[3] = v16;
    v2 = sub_10025C9B0(&qword_1006D8910);
    v18 = a2 + *(v2 + 36);
    v17 = a1 + *(v2 + 36);
    v3 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v3 - 8) + 16))(v18, v17);
    v4 = sub_10025C9B0(&qword_1006D8938);
    v20 = (a2 + *(v4 + 36));
    v5 = (a1 + *(v4 + 36));
    *v20 = *v5;
    v19 = v5[1];
    v21 = v5[2];

    v20[1] = v19;
    v20[2] = v21;
    v6 = sub_10025C9B0(&qword_1006D89C8);
    memcpy(a2 + *(v6 + 36), a1 + *(v6 + 36), 0x30uLL);
    v7 = sub_10025C9B0(&qword_1006D89D0);
    *(a2 + *(v7 + 36)) = *(a1 + *(v7 + 36));
    v8 = sub_10025C9B0(&qword_1006D89D8);
    v9 = a2 + *(v8 + 48);
    v10 = a1 + *(v8 + 48);
    *v9 = *v10;
    v9[8] = v10[8];
    (*(v24 + 56))();
  }

  return a2;
}

_BYTE *sub_1002FF83C(_BYTE *a1, _BYTE *a2)
{
  v19 = sub_10025C9B0(&qword_1006D89B8);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1, 1))
  {
    v7 = sub_10025C9B0(&qword_1006D89F8);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[8] = a1[8];
    v2 = sub_10025C9B0(&qword_1006D89C0);
    v15 = &a2[*(v2 + 48)];
    v16 = &a1[*(v2 + 48)];
    v9 = *v16;
    v10 = *(v16 + 1);
    v11 = v16[16];
    sub_1002EF238(*v16, v10, v11 & 1);
    *v15 = v9;
    *(v15 + 1) = v10;
    v15[16] = v11 & 1;
    v12 = *(v16 + 3);

    *(v15 + 3) = v12;
    v3 = sub_10025C9B0(&qword_1006D8910);
    v14 = &v15[*(v3 + 36)];
    v13 = &v16[*(v3 + 36)];
    v4 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v4 - 8) + 16))(v14, v13);
    v5 = sub_10025C9B0(&qword_1006D89E8);
    memcpy(&v15[*(v5 + 36)], &v16[*(v5 + 36)], 0x30uLL);
    v6 = sub_10025C9B0(&qword_1006D89F0);
    *&v15[*(v6 + 36)] = *&v16[*(v6 + 36)];
    (*(v20 + 56))(a2, 0, 1, v19);
  }

  return a2;
}

unint64_t sub_1002FFAD8()
{
  v2 = qword_1006D8BD8;
  if (!qword_1006D8BD8)
  {
    sub_10025CAA4(&qword_1006D89E0);
    sub_1002FE09C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FFB70()
{
  v2 = qword_1006D8BE0;
  if (!qword_1006D8BE0)
  {
    sub_10025CAA4(&qword_1006D89F8);
    sub_1002FF16C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FFC08()
{
  v2 = qword_1006D8BE8;
  if (!qword_1006D8BE8)
  {
    sub_10025CAA4(&qword_1006D89E8);
    sub_1002FAE38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FFCAC()
{
  v2 = qword_1006D8BF0;
  if (!qword_1006D8BF0)
  {
    sub_10025CAA4(&qword_1006D89F0);
    sub_1002FFC08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FFD50()
{
  v2 = qword_1006D8BF8;
  if (!qword_1006D8BF8)
  {
    sub_10025CAA4(&qword_1006D8B50);
    sub_1002FFCAC();
    sub_1002FFDF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002FFDF8()
{
  v2 = qword_1006D8C00;
  if (!qword_1006D8C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002FFE70(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_1002EF238(*a1, v7, v8 & 1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  v9 = *(a1 + 24);

  *(a2 + 24) = v9;
  v10 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v10, a1 + v10);
  v3 = sub_10025C9B0(&qword_1006D89E8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  v4 = sub_10025C9B0(&qword_1006D89F0);
  result = a2;
  *(a2 + *(v4 + 36)) = *(a1 + *(v4 + 36));
  return result;
}

uint64_t sub_1002FFFE0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v7 = *(sub_10025C9B0(&qword_1006D89C0) + 48);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = *(a1 + v7 + 16);
  sub_1002EF238(v8, v9, v10 & 1);
  v13 = a2 + v7;
  *v13 = v8;
  *(v13 + 8) = v9;
  *(v13 + 16) = v10 & 1;
  v11 = *(a1 + v7 + 24);

  *(v13 + 24) = v11;
  v12 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v7 + v12, a1 + v7 + v12);
  v3 = sub_10025C9B0(&qword_1006D89E8);
  memcpy((a2 + v7 + *(v3 + 36)), (a1 + v7 + *(v3 + 36)), 0x30uLL);
  v4 = sub_10025C9B0(&qword_1006D89F0);
  result = a2;
  *(v13 + *(v4 + 36)) = *(a1 + v7 + *(v4 + 36));
  return result;
}

uint64_t sub_100300194(uint64_t a1)
{
  v3 = a1 + *(sub_10025C9B0(&qword_1006D89C0) + 48);
  sub_1002EF150(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v1 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

uint64_t sub_10030025C(uint64_t a1)
{
  sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v1 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v1 - 8) + 8))(a1 + v3);
  sub_10025C9B0(&qword_1006D8938);

  return a1;
}

unint64_t sub_10030032C()
{
  v2 = qword_1006D8C08;
  if (!qword_1006D8C08)
  {
    sub_10025CAA4(&qword_1006D89C8);
    sub_1002FDE9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003003D0()
{
  v2 = qword_1006D8C10;
  if (!qword_1006D8C10)
  {
    sub_10025CAA4(&qword_1006D89D0);
    sub_10030032C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300474()
{
  v2 = qword_1006D8C18;
  if (!qword_1006D8C18)
  {
    sub_10025CAA4(&qword_1006D8B60);
    sub_1003003D0();
    sub_1002FFDF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10030051C(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  sub_1002EF238(*a1, v9, v10 & 1);
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  v11 = *(a1 + 24);

  *(a2 + 24) = v11;
  v12 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v12, a1 + v12);
  v3 = sub_10025C9B0(&qword_1006D8938);
  v4 = (a1 + *(v3 + 36));
  v14 = (a2 + *(v3 + 36));
  *v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];

  v14[1] = v13;
  v14[2] = v15;
  v5 = sub_10025C9B0(&qword_1006D89C8);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x30uLL);
  v6 = sub_10025C9B0(&qword_1006D89D0);
  result = a2;
  *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
  return result;
}

uint64_t sub_1003006F0(uint64_t a1, uint64_t a2)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  sub_1002EF238(*a1, v12, v13 & 1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  v14 = *(a1 + 24);

  *(a2 + 24) = v14;
  v15 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v15, a1 + v15);
  v3 = sub_10025C9B0(&qword_1006D8938);
  v4 = (a1 + *(v3 + 36));
  v17 = (a2 + *(v3 + 36));
  *v17 = *v4;
  v16 = v4[1];
  v18 = v4[2];

  v17[1] = v16;
  v17[2] = v18;
  v5 = sub_10025C9B0(&qword_1006D89C8);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x30uLL);
  v6 = sub_10025C9B0(&qword_1006D89D0);
  *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
  v7 = sub_10025C9B0(&qword_1006D89D8);
  result = a2;
  v9 = a1 + *(v7 + 48);
  v10 = a2 + *(v7 + 48);
  *v10 = *v9;
  *(v10 + 8) = *(v9 + 8);
  return result;
}

double sub_100300904(uint64_t a1)
{
  v2 = type metadata accessor for InstantAnswerFlightContentView();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1002FC57C(a1, v3);
}

uint64_t sub_10030097C()
{
  type metadata accessor for GeometryProxy();
  v1 = *(v0 + 16);

  return sub_1002FD6EC(v1);
}

uint64_t sub_1003009E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100300A1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GeometryProxy();
  v3 = *(v2 + 16);

  return sub_1002FD764(a1, a2, v3);
}

uint64_t sub_100300AA4(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 24))
  {
  }

  return a1;
}

unint64_t sub_100300B18()
{
  v2 = qword_1006D8C30;
  if (!qword_1006D8C30)
  {
    sub_10025CAA4(&qword_1006D8C28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300BA8()
{
  v2 = qword_1006D8C38;
  if (!qword_1006D8C38)
  {
    sub_10025CAA4(&qword_1006D8C20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300C30()
{
  v2 = qword_1006D8C40;
  if (!qword_1006D8C40)
  {
    sub_10025CAA4(&qword_1006D8978);
    sub_100300BA8();
    sub_100300CD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300CD8()
{
  v2 = qword_1006D8C48;
  if (!qword_1006D8C48)
  {
    sub_10025CAA4(&qword_1006D8A00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100300D60(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1002EF238(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  v8 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_100300E64()
{
  v2 = qword_1006D8C68;
  if (!qword_1006D8C68)
  {
    sub_10025CAA4(&qword_1006D8C60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300EEC()
{
  v2 = qword_1006D8C70;
  if (!qword_1006D8C70)
  {
    sub_10025CAA4(&qword_1006D8C58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100300F7C()
{
  v2 = qword_1006D8C80;
  if (!qword_1006D8C80)
  {
    sub_10025CAA4(&qword_1006D8C78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100301004()
{
  v2 = qword_1006D8C88;
  if (!qword_1006D8C88)
  {
    sub_10025CAA4(&qword_1006D8C50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10030108C()
{
  v2 = qword_1006D8C98;
  if (!qword_1006D8C98)
  {
    sub_10025CAA4(&qword_1006D8C90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8C98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100301120()
{
  type metadata accessor for InstantAnswerFlightContentView();

  return sub_1002FAAE4();
}

unint64_t sub_10030119C()
{
  v2 = qword_1006D8CA0;
  if (!qword_1006D8CA0)
  {
    sub_10025CAA4(&qword_1006D8958);
    sub_1002FAE38();
    sub_1002FD8D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100301244()
{
  v2 = qword_1006D8CB0;
  if (!qword_1006D8CB0)
  {
    sub_10025CAA4(&qword_1006D8940);
    sub_1002FDE9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8CB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003012E8()
{
  type metadata accessor for InstantAnswerFlightContentView();

  return sub_1002F9C6C();
}

unint64_t sub_100301364()
{
  v2 = qword_1006D8CB8;
  if (!qword_1006D8CB8)
  {
    sub_10025CAA4(&qword_1006D8CA8);
    sub_100301244();
    sub_1002FDE9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8CB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10030140C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D8930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v4 = a1 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v2 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v2 - 8) + 8))(v4);
    sub_10025C9B0(&qword_1006D8938);
  }

  else
  {
    sub_1002EF150(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v5 = a1 + *(sub_10025C9B0(&qword_1006D8910) + 36);
    v1 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v1 - 8) + 8))(v5);
    sub_10025C9B0(&qword_1006D8938);

    sub_10025C9B0(&qword_1006D8940);
  }

  return a1;
}

unint64_t sub_1003015DC()
{
  v2 = qword_1006D8CC0;
  if (!qword_1006D8CC0)
  {
    sub_10025CAA4(&qword_1006D8948);
    sub_100301364();
    sub_1002FD8D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8CC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100301684()
{
  type metadata accessor for InstantAnswerFlightContentView();

  return sub_1002FA0CC();
}

void sub_100301700(uint64_t a1)
{
  v48 = a1;
  v49 = v1;
  ObjectType = swift_getObjectType();
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v2 = sub_10025C9B0(&unk_1006DBC30);
  v34 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = &v13 - v34;
  v41 = 0;
  v36 = type metadata accessor for SearchItem.InstantAnswer();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v13 - v39;
  v63 = &v13 - v39;
  v42 = type metadata accessor for DateComponents();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v46 = &v13 - v45;
  v52 = type metadata accessor for UICellConfigurationState();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v47 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v49);
  v4 = &v13 - v47;
  v53 = &v13 - v47;
  v62 = v5;
  v61 = v3;
  _objc_retain(v3);
  (*(v50 + 16))(v4, v48, v52);
  v6.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v7 = v49;
  isa = v6.super.super.isa;
  (*(v50 + 8))(v53, v52);
  v60.receiver = v7;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, "_bridgedUpdateConfigurationUsingState:", isa);
  _objc_release(isa);
  _objc_release(v7);
  _objc_retain(v7);
  v59 = sub_1002F2188();
  if (v59)
  {
    v30 = &v59;
    v31 = v59;
    _objc_retain(v59);
    sub_10026A58C(v30);
    _objc_release(v49);
    v32 = [v31 hotel];
    _objc_release(v31);
    v33 = v32;
  }

  else
  {
    sub_10026A58C(&v59);
    _objc_release(v49);
    v33 = 0;
  }

  v29 = v33;
  if (v33)
  {
    v28 = v29;
    v27 = v29;
    v56 = v29;
    v26 = [v29 checkInDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = [v27 name];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v8;
    v23 = [v27 city];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v10;
    sub_100301E5C(v46, v21, v24, v9, v10);

    _objc_release(v23);

    _objc_release(v25);
    (*(v43 + 8))(v46, v42);
    _objc_release(v26);
    _objc_release(v27);
  }

  else
  {
    _objc_retain(v49);
    sub_1002F18B8(v35);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_1002F1D54(v35);
      _objc_release(v49);
    }

    else
    {
      (*(v37 + 32))(v40, v35, v36);
      _objc_release(v49);
      v19 = SearchItem.InstantAnswer.hotelReservationForAddressLocality.getter();
      v20 = v11;
      if (v11)
      {
        v17 = v19;
        v18 = v20;
        v16 = v20;
        v13 = v19;
        v57 = v19;
        v58 = v20;
        SearchItem.InstantAnswer.hotelCheckinDateComponents.getter();
        v14 = SearchItem.InstantAnswer.hotelReservationForName.getter();
        v15 = v12;
        sub_100301E5C(v46, v14, v12, v13, v16);

        (*(v43 + 8))(v46, v42);
      }

      (*(v37 + 8))(v40, v36);
    }
  }
}

uint64_t sub_100301E5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v105._object = a5;
  v105._countAndFlagsBits = a4;
  v104._object = a3;
  v104._countAndFlagsBits = a2;
  v108 = a1;
  v97 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v123 = 0;
  v122 = 0;
  memset(&v121[6], 0, 48);
  v98 = sub_10025C9B0(&qword_1006D8850);
  v99 = *(v98 - 8);
  v100 = v99;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v102 = &v48 - v101;
  v140 = &v48 - v101;
  v112 = type metadata accessor for Calendar();
  v103 = *(v112 - 8);
  v110 = v103;
  __chkstk_darwin(v112 - 8);
  v111 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10025C9B0(&qword_1006D8740);
  v106 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v108);
  v109 = &v48 - v106;
  v107 = &v48 - v106;
  v139 = v6;
  v137 = v7;
  v138 = v8;
  v135 = v9;
  v136 = v10;
  v134 = v11;
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v110 + 8))(v111, v112);
  v12 = sub_10030281C(v113);
  v115 = v13;
  v117[2] = v12;
  v117[3] = v13;
  v116[2] = sub_100302A9C;
  v116[3] = v117;
  sub_100302B20(sub_100302AF0, v116, v114, &type metadata for Never, &type metadata for String, v14, &v132);

  sub_1002A70C0(v107);
  v95 = v132;
  result = v133;
  v96 = v133;
  if (v133)
  {
    v93 = v95;
    v94 = v96;
    v16 = v113;
    v92 = v96;
    v48 = v95;
    v122 = v95;
    v123 = v96;

    v17._countAndFlagsBits = v48;
    v17._object = v92;
    v91 = &v141;
    InstantAnswerView.Model.Hotel.init(travelDate:name:location:)(&v141, v17, v104, v105);
    *&v121[6] = v141;
    v63 = MFImageGlyphInstantAnswersViewMessage;
    v18 = MFImageGlyphInstantAnswersViewMessage;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v19;
    v64 = 1;
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("View Message", 0xCuLL, 1);
    countAndFlagsBits = v20._countAndFlagsBits;
    object = v20._object;
    v65 = "";
    v84 = 0;
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v64);
    v49 = v21._countAndFlagsBits;
    v53 = v21._object;
    v52.super.isa = sub_10028FEB4();
    v22 = sub_100015E30();
    v144._countAndFlagsBits = v49;
    v23.value._object = v84;
    v24._countAndFlagsBits = v22;
    v25._countAndFlagsBits = countAndFlagsBits;
    v24._object = v26;
    v25._object = object;
    v51 = v24._object;
    v145._object = v53;
    v23.value._countAndFlagsBits = v84;
    v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v23, v52, v24, v144);

    v62 = MSAccessibilityIdentifierInstantAnswersViewMessageButton;
    v27 = MSAccessibilityIdentifierInstantAnswersViewMessageButton;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v28;
    v73 = &unk_10065A500;
    v74 = 24;
    v72 = 7;
    v61 = swift_allocObject();
    v55 = v61 + 16;
    v29 = v16;
    swift_unknownObjectWeakInit();

    v90 = v142;
    InstantAnswerView.Model.Action.init(iconSymbolName:title:accessibilityIdentifier:handler:)(v56, v57, v58._countAndFlagsBits, v58._object, v59, v60, sub_1002F51F4, v61, v142);
    v127 = v142[3];
    v126 = v142[2];
    v125 = v142[1];
    v124 = v142[0];

    v83 = MFImageGlyphInstantAnswersOpenMaps;
    v30 = MFImageGlyphInstantAnswersOpenMaps;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v31;
    v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Maps", 9uLL, v64);
    v67 = v32._countAndFlagsBits;
    v71 = v32._object;
    v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v65, v84, v64);
    v66 = v33._countAndFlagsBits;
    v70 = v33._object;
    v69.super.isa = sub_10028FEB4();
    v34 = sub_100015E30();
    v145._countAndFlagsBits = v66;
    v35.value._object = v84;
    v36._countAndFlagsBits = v34;
    v37._countAndFlagsBits = v67;
    v36._object = v38;
    v37._object = v71;
    v68 = v36._object;
    v145._object = v70;
    v35.value._countAndFlagsBits = v84;
    v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v35, v69, v36, v145);

    v82 = MSAccessibilityIdentifierInstantAnswersHotelOpenMapsButton;
    v39 = MSAccessibilityIdentifierInstantAnswersHotelOpenMapsButton;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v40;
    v81 = swift_allocObject();
    v75 = v81 + 16;
    v41 = v16;
    swift_unknownObjectWeakInit();

    v89 = v143;
    InstantAnswerView.Model.Action.init(iconSymbolName:title:accessibilityIdentifier:handler:)(v76, v77, v78._countAndFlagsBits, v78._object, v79, v80, sub_100302F60, v81, v143);
    v131 = v143[3];
    v130 = v143[2];
    v129 = v143[1];
    v128 = v143[0];

    sub_100303264(v91, v121);
    sub_1002F56BC(v90, v120);
    sub_1002F56BC(v89, v119);
    v42 = v16;
    v87 = &v48;
    __chkstk_darwin(v84);
    v43 = v89;
    v44 = v90;
    v85 = &v48 - 6;
    *(&v48 - 4) = v91;
    *(&v48 - 3) = v44;
    v145._object = v43;
    v47 = v16;
    v86 = type metadata accessor for InstantAnswerView();
    sub_1002F5788();
    UIHostingConfiguration<>.init(content:)();
    sub_100303304();
    sub_1002F5864();
    sub_1002F5864();

    v45 = v16;
    v118[3] = v98;
    v118[4] = sub_1002F58B4();
    v88 = v118;
    v46 = sub_10026AC9C(v118);
    (*(v100 + 16))(v46, v102, v98);
    UICollectionViewCell.contentConfiguration.setter();

    (*(v100 + 8))(v102, v98);
    sub_1002F5864();
    sub_1002F5864();
    sub_100303304();
  }

  return result;
}

uint64_t (*sub_10030281C(void *a1))(uint64_t a1)
{
  _objc_retain(a1);
  v1 = swift_allocObject();
  result = sub_100303468;
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1003028DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v7 = a1;
  v13 = a2;
  v12 = type metadata accessor for Date();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v9 = &v5 - v6;
  v8 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v14 = &v5 - v8;
  (*(v10 + 16))(v2);
  (*(v10 + 32))(v14, v9, v12);
  (*(v10 + 56))(v14, 0, 1, v12);
  v16 = v13(v14);
  v15 = v3;
  sub_1002A70C0(v14);
  return v16;
}

uint64_t sub_100302AA8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_100302B20@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v36 = v17 - v32;
  sub_10026B0F0(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      return v17[0];
    }
  }

  return result;
}

void sub_100302E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    _objc_retain(Strong);
    v0 = sub_1002F1F28();
    v2 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      _objc_release(Strong);
      swift_getObjectType();
      [v2 didTapMapAddressFor:Strong];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      _objc_release(Strong);
    }

    _objc_release(Strong);
  }
}

uint64_t sub_100302F68@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  __src = a1;
  v21 = a2;
  v23 = a3;
  v33 = a4;
  v48 = 0;
  __n = 48;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  v45 = 0;
  v44 = 0;
  memcpy(v49, __src, sizeof(v49));
  v27 = v49[0];
  v28 = v49[1];
  v29 = v49[2];
  v30 = v49[3];
  v31 = v49[4];
  v32 = v49[5];
  v37 = type metadata accessor for InstantAnswerView();
  v20 = *(*(v37 - 8) + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(__src);
  v39 = (&__n - v19);
  v7 = __chkstk_darwin(v6);
  v40 = (&__n - v8);
  v48 = &__n - v8;
  v47[0] = v9;
  v47[1] = v10;
  v47[2] = v29;
  v47[3] = v30;
  v47[4] = v31;
  v47[5] = v11;
  v46 = v12;
  v45 = v13;
  v44 = a4;
  sub_100303264(v7, v43);
  v26 = &type metadata for InstantAnswerView.Model.Action;
  v25 = _allocateUninitializedArray<A>(_:)();
  v22 = v14;
  sub_1002F56BC(v21, v42);
  v24 = 64;
  memcpy(v22, v21, 0x40uLL);
  sub_1002F56BC(v23, v41);
  memcpy(v22 + 64, v23, v24);
  v15 = v25;
  sub_1002612B0();
  v51[0] = v27;
  v51[1] = v28;
  v51[2] = v29;
  v51[3] = v30;
  v51[4] = v31;
  v51[5] = v32;
  v51[6] = v15;
  LOBYTE(v51[11]) = 1;
  v34 = __dst;
  memcpy(__dst, v51, 0x59uLL);
  _objc_retain(a4);
  v35 = sub_1002F16B4();
  _objc_release(v33);
  InstantAnswerView.init(model:state:)(v34, v35, v39);
  v38 = sub_1002F5788();
  sub_1002EC85C(v39, v37, v40);
  sub_1002F5C7C(v39);
  sub_1002F5E40(v40, v39);
  sub_1002EC85C(v39, v37, v36);
  sub_1002F5C7C(v39);
  return sub_1002F5C7C(v40);
}

void *sub_100303264(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];

  a2[3] = v5;
  a2[4] = a1[4];
  v7 = a1[5];

  result = a2;
  a2[5] = v7;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100303304()
{
}

uint64_t type metadata accessor for InstantAnswerHotelCell()
{
  v1 = qword_1006D8CF0;
  if (!qword_1006D8CF0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_100303470@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006D88C8);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_1002F61D8(v7, (&v2 - v3));
  Environment.wrappedValue.getter();
  return sub_1002F62AC(v6);
}

uint64_t sub_100303530(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_1002F61D8(v1, (v3 - v3[0]));
  sub_1002F640C(v4, v3[1]);
  return sub_1002F62AC(v5);
}

uint64_t type metadata accessor for InstantAnswerHotelContentView()
{
  v1 = qword_1006D8D88;
  if (!qword_1006D8D88)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_100303680(void *a1)
{
  sub_100303264(a1, v5);
  v2 = type metadata accessor for InstantAnswerHotelContentView();
  sub_1003036CC(a1, (v1 + *(v2 + 20)));
  result = a1;
  sub_100303304();
  return result;
}

void *sub_1003036CC(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];

  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  return a2;
}

uint64_t sub_10030374C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_100304494;
  v19 = 0;
  v18 = 0;
  v12 = sub_10025C9B0(&qword_1006D8D00);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = static HorizontalAlignment.leading.getter();
  v8 = &v16;
  v17 = v1;
  v9 = sub_10025C9B0(&qword_1006D8D08);
  sub_10030449C();
  VStack.init(alignment:spacing:content:)();
  v13 = sub_100304524();
  sub_1002EC85C(v14, v12, v15);
  sub_1003045AC(v14);
  sub_100304778(v15, v14);
  sub_1002EC85C(v14, v12, v11);
  sub_1003045AC(v14);
  return sub_1003045AC(v15);
}

uint64_t sub_1003038D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v110 = a1;
  v139 = 0;
  v138 = sub_1002FADFC;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v178 = 0;
  v143 = sub_10025C9B0(&qword_1006D8938);
  v76 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v143);
  v145 = &v53 - v76;
  v77 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v76);
  v142 = &v53 - v77;
  v240 = &v53 - v77;
  v140 = sub_10025C9B0(&qword_1006D8910);
  v78 = (*(*(v140 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v110);
  v79 = &v53 - v78;
  v80 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v81 = &v53 - v80;
  v82 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v146 = &v53 - v82;
  v83 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v108 = &v53 - v83;
  v239 = &v53 - v83;
  v238 = v9;
  v109 = type metadata accessor for InstantAnswerHotelContentView();
  v10 = (v110 + *(v109 + 20));
  v84 = *v10;
  v85 = v10[1];

  v86 = v237;
  v237[0] = v84;
  v237[1] = v85;
  v114 = sub_1002686CC();
  v113 = &type metadata for String;
  v233 = Text.init<A>(_:)();
  v234 = v11;
  v235 = v12;
  v236 = v13;
  v88 = v233;
  v89 = v11;
  v90 = v12;
  v91 = v13;
  v87 = static Font.footnote.getter();
  v229 = v88;
  v230 = v89;
  v131 = 1;
  v231 = v90 & 1;
  v232 = v91;
  v225 = Text.font(_:)();
  v226 = v14;
  v227 = v15;
  v228 = v16;
  v93 = v225;
  v94 = v14;
  v92 = v15;
  v95 = v16;

  sub_1002EF150(v88, v89, v90 & 1);

  v221 = v93;
  v222 = v94;
  v223 = v92 & 1 & v131;
  v224 = v95;
  v217 = Text.bold()();
  v218 = v17;
  v219 = v18;
  v220 = v19;
  v99 = v217;
  v97 = v17;
  v98 = v18;
  v100 = v19;
  sub_1002EF150(v93, v94, v92 & 1);

  v120 = MFMailboxUid_ptr;
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = Color.init(uiColor:)();
  v96 = &v216;
  v216 = v21;
  v212 = v99;
  v213 = v97;
  v214 = v98 & 1 & v131;
  v215 = v100;
  v121 = &type metadata for Color;
  v122 = &protocol witness table for Color;
  v208 = Text.foregroundStyle<A>(_:)();
  v209 = v22;
  v210 = v23;
  v211 = v24;
  v101 = v208;
  v102 = v22;
  v103 = v23;
  v104 = v24;
  sub_100268928();
  sub_1002EF150(v99, v97, v98 & 1);

  v107 = v205;
  v205[0] = v101;
  v205[1] = v102;
  v206 = v103 & 1 & v131;
  v207 = v104;
  v106 = MSAccessibilityIdentifierInstantAnswersHotelCheckInDate;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersHotelCheckInDate);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v25;
  v133 = &type metadata for Text;
  v134 = &protocol witness table for Text;
  View.accessibilityIdentifier(_:)();

  _objc_release(v106);
  sub_1002F03C0(v107);
  v141 = sub_1002FAE38();
  sub_1002EC85C(v146, v140, v108);
  sub_1002FAF5C(v146);
  v26 = v110 + *(v109 + 20);
  v111 = *(v26 + 16);
  v112 = *(v26 + 24);

  v203 = v111;
  v204 = v112;
  v199 = Text.init<A>(_:)();
  v200 = v27;
  v201 = v28;
  v202 = v29;
  v116 = v199;
  v117 = v27;
  v118 = v28;
  v119 = v29;
  v115 = static Font.headline.getter();
  v195 = v116;
  v196 = v117;
  v197 = v118 & 1 & v131;
  v198 = v119;
  v191 = Text.font(_:)();
  v192 = v30;
  v193 = v31;
  v194 = v32;
  v126 = v191;
  v124 = v30;
  v125 = v31;
  v127 = v32;

  sub_1002EF150(v116, v117, v118 & 1);

  v33 = [objc_opt_self() labelColor];
  v34 = Color.init(uiColor:)();
  v123 = &v190;
  v190 = v34;
  v186 = v126;
  v187 = v124;
  v188 = v125 & 1 & v131;
  v189 = v127;
  v182 = Text.foregroundStyle<A>(_:)();
  v183 = v35;
  v184 = v36;
  v185 = v37;
  v128 = v182;
  v129 = v35;
  v130 = v36;
  v132 = v37;
  sub_100268928();
  sub_1002EF150(v126, v124, v125 & 1);

  v137 = v179;
  v179[0] = v128;
  v179[1] = v129;
  v180 = v130 & 1 & v131;
  v181 = v132;
  v136 = MSAccessibilityIdentifierInstantAnswersHotelName;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersHotelName);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v38;
  View.accessibilityIdentifier(_:)();

  _objc_release(v136);
  sub_1002F03C0(v137);
  sub_100305C90();
  View.alignmentGuide(_:computeValue:)();
  sub_1002FAF5C(v146);
  v144 = sub_1002FDE9C();
  sub_1002EC85C(v145, v143, v142);
  sub_10030025C(v145);
  v178 = v146;
  v39 = v110 + *(v109 + 20);
  v54 = *(v39 + 32);
  v55 = *(v39 + 40);

  v176 = v54;
  v177 = v55;
  v172 = Text.init<A>(_:)();
  v173 = v40;
  v174 = v41;
  v175 = v42;
  v57 = v172;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v56 = static Font.footnote.getter();
  v168 = v57;
  v169 = v58;
  v69 = 1;
  v170 = v59 & 1;
  v171 = v60;
  v164 = Text.font(_:)();
  v165 = v43;
  v166 = v44;
  v167 = v45;
  v64 = v164;
  v62 = v43;
  v63 = v44;
  v65 = v45;

  sub_1002EF150(v57, v58, v59 & 1);

  v46 = [objc_opt_self() secondaryLabelColor];
  v47 = Color.init(uiColor:)();
  v61 = &v163;
  v163 = v47;
  v159 = v64;
  v160 = v62;
  v161 = v63 & 1 & v69;
  v162 = v65;
  v155 = Text.foregroundStyle<A>(_:)();
  v156 = v48;
  v157 = v49;
  v158 = v50;
  v66 = v155;
  v67 = v48;
  v68 = v49;
  v70 = v50;
  sub_100268928();
  sub_1002EF150(v64, v62, v63 & 1);

  v73 = v152;
  v152[0] = v66;
  v152[1] = v67;
  v153 = v68 & 1 & v69;
  v154 = v70;
  v72 = MSAccessibilityIdentifierInstantAnswersHotelCityName;
  _objc_retain(MSAccessibilityIdentifierInstantAnswersHotelCityName);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v51;
  View.accessibilityIdentifier(_:)();

  _objc_release(v72);
  sub_1002F03C0(v73);
  sub_1002EC85C(v81, v140, v146);
  sub_1002FAF5C(v81);
  sub_100300D60(v108, v81);
  v74 = v151;
  v151[0] = v81;
  sub_100304C94(v142, v145);
  v151[1] = v145;
  sub_100300D60(v146, v79);
  v151[2] = v79;
  v150[0] = v140;
  v150[1] = v143;
  v150[2] = v140;
  v147 = v141;
  v148 = v144;
  v149 = v141;
  sub_1003A33CC(v74, 3uLL, v150, v75);
  sub_1002FAF5C(v79);
  sub_10030025C(v145);
  sub_1002FAF5C(v81);
  sub_1002FAF5C(v146);
  sub_10030025C(v142);
  return sub_1002FAF5C(v108);
}

unint64_t sub_10030449C()
{
  v2 = qword_1006D8D10;
  if (!qword_1006D8D10)
  {
    sub_10025CAA4(&qword_1006D8D08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8D10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100304524()
{
  v2 = qword_1006D8D18;
  if (!qword_1006D8D18)
  {
    sub_10025CAA4(&qword_1006D8D00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8D18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003045AC(uint64_t a1)
{
  v5 = a1 + *(sub_10025C9B0(&qword_1006D8D20) + 44);
  sub_1002EF150(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v6 = sub_10025C9B0(&qword_1006D8910);
  v2 = *(v6 + 36);
  v8 = type metadata accessor for AccessibilityAttachmentModifier();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v2);
  v4 = sub_10025C9B0(&qword_1006D8D28);
  v3 = v5 + *(v4 + 48);
  sub_1002EF150(*v3, *(v3 + 8), *(v3 + 16) & 1);

  (v9)(v3 + *(v6 + 36), v8);
  sub_10025C9B0(&qword_1006D8938);

  v7 = v5 + *(v4 + 64);
  sub_1002EF150(*v7, *(v7 + 8), *(v7 + 16) & 1);

  (v9)(v7 + *(v6 + 36), v8);
  return a1;
}

uint64_t sub_100304778(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_10025C9B0(&qword_1006D8D20) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_1002EF238(v7, v8, v9 & 1);
  v23 = a2 + v6;
  *v23 = v7;
  *(v23 + 8) = v8;
  *(v23 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v23 + 24) = v10;
  v28 = sub_10025C9B0(&qword_1006D8910);
  v11 = *(v28 + 36);
  v32 = type metadata accessor for AccessibilityAttachmentModifier();
  v33 = *(*(v32 - 8) + 16);
  v33(a2 + v6 + v11, a1 + v6 + v11);
  v19 = sub_10025C9B0(&qword_1006D8D28);
  v12 = *(v19 + 48);
  v17 = a1 + v6 + v12;
  v13 = *v17;
  v14 = *(v17 + 8);
  v15 = *(v17 + 16);
  sub_1002EF238(*v17, v14, v15 & 1);
  v18 = a2 + v6 + v12;
  *v18 = v13;
  *(v18 + 8) = v14;
  *(v18 + 16) = v15 & 1;
  v16 = *(v17 + 24);

  *(v18 + 24) = v16;
  (v33)(v18 + *(v28 + 36), v17 + *(v28 + 36), v32);
  v2 = sub_10025C9B0(&qword_1006D8938);
  v3 = (v17 + *(v2 + 36));
  v21 = (v18 + *(v2 + 36));
  *v21 = *v3;
  v20 = v3[1];
  v22 = v3[2];

  v21[1] = v20;
  v21[2] = v22;
  v24 = *(v19 + 64);
  v31 = a1 + v6 + v24;
  v25 = *v31;
  v26 = *(v31 + 8);
  v27 = *(v31 + 16);
  sub_1002EF238(*v31, v26, v27 & 1);
  v30 = a2 + v6 + v24;
  *v30 = v25;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27 & 1;
  v29 = *(v31 + 24);

  *(v30 + 24) = v29;
  (v33)(v30 + *(v28 + 36), v31 + *(v28 + 36), v32);
  return a2;
}

void *sub_100304AFC@<X0>(const void *a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  sub_1002FDFC8(a1, a3);
  v3 = type metadata accessor for InstantAnswerHotelContentView();
  return memcpy(&a3[*(v3 + 20)], a2, 0x30uLL);
}

uint64_t sub_100304BB8()
{
  v2 = sub_1002FDCA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100304C94(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_1002EF238(*a1, v7, v8 & 1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  v9 = *(a1 + 24);

  *(a2 + 24) = v9;
  v10 = *(sub_10025C9B0(&qword_1006D8910) + 36);
  v2 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v2 - 8) + 16))(a2 + v10, a1 + v10);
  v3 = sub_10025C9B0(&qword_1006D8938);
  v4 = (a1 + *(v3 + 36));
  v14 = (a2 + *(v3 + 36));
  *v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];

  result = a2;
  v14[1] = v13;
  v14[2] = v15;
  return result;
}

uint64_t SearchItem.InstantAnswer.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v14 = a1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v11 = 0;
  v12 = (*(*(type metadata accessor for UUID() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v13 = v6 - v12;
  v15 = type metadata accessor for SearchItem.InstantAnswer();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v14);
  v19 = v6 - v18;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v21 = v6 - v20;
  v27 = v6 - v20;
  v26 = v4;
  v23 = [v4 category];
  v22 = [objc_opt_self() instantAnswersCategory];
  v24 = [v23 isGroupedInCategory:?];
  _objc_release(v22);
  _objc_release(v23);
  if ((v24 & 1) != 0 && ((_objc_retain(v14), objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0) ? (_objc_release(v14), v8 = 0) : (v8 = v9), (v7 = v8) != 0))
  {
    v6[2] = v7;
    v6[1] = v7;
    v25 = v7;
    UUID.init()();
    SearchItem.InstantAnswer.init(id:suggestion:)();
    (*(v16 + 32))(v21, v19, v15);
    (*(v16 + 16))(v10, v21, v15);
    (*(v16 + 56))(v10, 0, 1, v15);
    _objc_release(v14);
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    _objc_release(v14);
    return (*(v16 + 56))(v10, 1, 1, v15);
  }
}

uint64_t sub_100305184(int a1)
{
  v20 = a1;
  v16 = a1;
  v23 = 0;
  v17 = 0;
  v24 = a1;
  v18 = &v22;
  swift_beginAccess();
  v19 = *(v1 + 16);
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1003069A8())
  {
    v2 = v15;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v9;
    v4 = __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v5 & 1;
    sub_100306AAC(v4, sub_100306A7C, v7, &type metadata for () + 8, &type metadata for ());
    v14 = v3;

    return v14;
  }

  else
  {
    v9[1] = v21;
    swift_beginAccess();
    *(v15 + 16) = v16 & 1;
    swift_endAccess();
    return v17;
  }
}

uint64_t sub_100305350(int a1)
{
  v20 = a1;
  v16 = a1;
  v23 = 0;
  v17 = 0;
  v24 = a1;
  v18 = &v22;
  swift_beginAccess();
  v19 = *(v1 + 17);
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1003069A8())
  {
    v2 = v15;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v9;
    v4 = __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v5 & 1;
    sub_100306AAC(v4, sub_10030729C, v7, &type metadata for () + 8, &type metadata for ());
    v14 = v3;

    return v14;
  }

  else
  {
    v9[1] = v21;
    swift_beginAccess();
    *(v15 + 17) = v16 & 1;
    swift_endAccess();
    return v17;
  }
}

uint64_t sub_10030551C(int a1)
{
  v20 = a1;
  v16 = a1;
  v23 = 0;
  v17 = 0;
  v24 = a1;
  v18 = &v22;
  swift_beginAccess();
  v19 = *(v1 + 18);
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1003069A8())
  {
    v2 = v15;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v9;
    v4 = __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v5 & 1;
    sub_100306AAC(v4, sub_1003078A4, v7, &type metadata for () + 8, &type metadata for ());
    v14 = v3;

    return v14;
  }

  else
  {
    v9[1] = v21;
    swift_beginAccess();
    *(v15 + 18) = v16 & 1;
    swift_endAccess();
    return v17;
  }
}

MobileMail::InstantAnswerView::Model::Airport __swiftcall InstantAnswerView.Model.Airport.init(code:travelTime:)(Swift::String code, Swift::String travelTime)
{
  countAndFlagsBits = code._countAndFlagsBits;
  object = code._object;

  sub_100268828();
  v2 = object;
  v4 = travelTime._object;
  v3 = travelTime._countAndFlagsBits;
  v5 = countAndFlagsBits;
  result.travelTime._object = v4;
  result.travelTime._countAndFlagsBits = v3;
  result.code._object = v2;
  result.code._countAndFlagsBits = v5;
  return result;
}

void __swiftcall InstantAnswerView.Model.Flight.init(travelDate:departureAirport:arrivalAirport:)(MobileMail::InstantAnswerView::Model::Flight *__return_ptr retstr, Swift::String travelDate, MobileMail::InstantAnswerView::Model::Airport departureAirport, MobileMail::InstantAnswerView::Model::Airport arrivalAirport)
{
  countAndFlagsBits = travelDate._countAndFlagsBits;
  object = travelDate._object;
  v5 = departureAirport.code._countAndFlagsBits;
  v9 = departureAirport.code._object;
  v6 = departureAirport.travelTime._countAndFlagsBits;
  v10 = departureAirport.travelTime._object;
  v7 = arrivalAirport.code._countAndFlagsBits;
  v8 = arrivalAirport.code._object;
  memset(__b, 0, sizeof(__b));
  v19 = countAndFlagsBits;
  v20 = object;
  v15 = v5;
  v16 = v9;
  v17 = v6;
  v18 = v10;
  v13[10] = v7;
  v13[11] = v8;
  travelTime = arrivalAirport.travelTime;

  __b[0]._countAndFlagsBits = countAndFlagsBits;
  __b[0]._object = object;

  __b[1]._countAndFlagsBits = v5;
  __b[1]._object = v9;
  __b[2]._countAndFlagsBits = v6;
  __b[2]._object = v10;

  __b[3]._countAndFlagsBits = v7;
  __b[3]._object = v8;
  __b[4] = arrivalAirport.travelTime;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1002F55E8(__dst, v13);

  sub_1002F5808();
  memcpy(retstr, __dst, sizeof(MobileMail::InstantAnswerView::Model::Flight));
}

void *InstantAnswerView.Model.Action.init(iconSymbolName:title:accessibilityIdentifier:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v19[14] = a1;
  v19[15] = a2;
  v19[12] = a3;
  v19[13] = a4;
  v19[10] = a5;
  v19[11] = a6;
  v19[8] = a7;
  v19[9] = a8;

  __b[0] = a1;
  __b[1] = a2;

  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;

  __b[6] = a7;
  __b[7] = a8;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1002F56BC(__dst, v19);

  sub_1002F5864();
  return memcpy(a9, __dst, 0x40uLL);
}

uint64_t InstantAnswerView.init(model:state:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = a3;
  v13 = a1;
  v12 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v10 = type metadata accessor for InstantAnswerView();
  v9 = (*(*(v10 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v8 - v9);
  v18 = &v8 - v9;
  v17 = __chkstk_darwin(v13);
  v16 = v3;
  swift_getKeyPath();
  Environment.init(_:)();
  v4 = v13;
  *(v14 + v10[7]) = 11.0;
  sub_1003084E8(v4, v15);
  memcpy(v14 + v10[5], v13, 0x59uLL);

  v5 = v14;
  v6 = v11;
  *(v14 + v10[6]) = v12;
  sub_1002F5E40(v5, v6);

  sub_1003085F0(v13);
  return sub_1002F5C7C(v14);
}

uint64_t *sub_100305C90()
{
  if (qword_1006D5EE0 != -1)
  {
    swift_once();
  }

  return &qword_1006EFFD0;
}

void __swiftcall InstantAnswerView.Model.Hotel.init(travelDate:name:location:)(MobileMail::InstantAnswerView::Model::Hotel *__return_ptr retstr, Swift::String travelDate, Swift::String name, Swift::String location)
{
  countAndFlagsBits = travelDate._countAndFlagsBits;
  object = travelDate._object;
  memset(__b, 0, sizeof(__b));

  *&__b[0] = countAndFlagsBits;
  *(&__b[0] + 1) = object;

  __b[1] = name;

  __b[2] = location;

  sub_100303304();
  retstr->travelDate._countAndFlagsBits = countAndFlagsBits;
  retstr->travelDate._object = object;
  retstr->name = name;
  retstr->location = location;
}

uint64_t InstantAnswerView.Model.Action.title.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t InstantAnswerView.Model.Airport.travelTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InstantAnswerView.Model.Action.accessibilityIdentifier.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t InstantAnswerView.Model.Action.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t InstantAnswerView.Model.Action.handler.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t InstantAnswerView.Model.Action.handler.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t InstantAnswerView.Model.Flight.departureAirport.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t InstantAnswerView.Model.Flight.departureAirport.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t InstantAnswerView.Model.Flight.arrivalAirport.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t InstantAnswerView.Model.Flight.arrivalAirport.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t InstantAnswerView.Model.actions.getter()
{
  memcpy(__dst, v0, 0x59uLL);
  if (__dst[11])
  {
    v2 = __dst[6];

    return v2;
  }

  else
  {
    v3 = __dst[10];

    return v3;
  }
}

uint64_t InstantAnswerView.Model.accessibilityIdentifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (__dst[88])
  {
    memcpy(v9, __dst, sizeof(v9));
    v2 = MSAccessibilityIdentifierInstantAnswersHotelCell;
    _objc_retain(MSAccessibilityIdentifierInstantAnswersHotelCell);
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v2);
    return v3;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v4 = MSAccessibilityIdentifierInstantAnswersFlightCell;
    _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightCell);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v4);
    return v5;
  }
}

uint64_t InstantAnswerView.Model.iconSymbolName.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (__dst[88])
  {
    memcpy(v9, __dst, sizeof(v9));
    v2 = MFImageGlyphInstantAnswersHotelIcon;
    _objc_retain(MFImageGlyphInstantAnswersHotelIcon);
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v2);
    return v3;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v4 = MFImageGlyphInstantAnswersFlightIcon;
    _objc_retain(MFImageGlyphInstantAnswersFlightIcon);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v4);
    return v5;
  }
}

uint64_t InstantAnswerView.Model.iconSymbolAccessibilityIdentifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (__dst[88])
  {
    memcpy(v9, __dst, sizeof(v9));
    v2 = MSAccessibilityIdentifierInstantAnswersHotelImageIcon;
    _objc_retain(MSAccessibilityIdentifierInstantAnswersHotelImageIcon);
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v2);
    return v3;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v4 = MSAccessibilityIdentifierInstantAnswersFlightImageIcon;
    _objc_retain(MSAccessibilityIdentifierInstantAnswersFlightImageIcon);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v4);
    return v5;
  }
}

uint64_t sub_100306638()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_100306688(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_1003066F4()
{
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_10030677C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_1003066F4() & 1;
}

uint64_t sub_1003067DC(char *a1)
{
  v2 = *a1;

  sub_100305184(v2 & 1);
}

uint64_t sub_100306838(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = type metadata accessor for ObservationRegistrar();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = __chkstk_darwin(v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + class metadata base offset for KeyPath + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_10030F964();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_100306A04(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  return swift_endAccess();
}

uint64_t sub_100306AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = type metadata accessor for ObservationRegistrar();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = __chkstk_darwin(v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + class metadata base offset for KeyPath + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_10030F964();
  v8 = v22;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

void (*sub_100306CC4(void *a1))(void **a1, char a2)
{
  v8 = sub_100294700(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = type metadata accessor for ObservationRegistrar();
  v5 = *(v7 - 8);
  v6 = sub_100294700(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_100306E7C;
}

void sub_100306E7C(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_100306F08(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_100306F08(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_100306F08(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = type metadata accessor for ObservationRegistrar();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100307044()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_100307094(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1;
  return swift_endAccess();
}

uint64_t sub_1003070E0()
{
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 17);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_100307168@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_1003070E0() & 1;
}

uint64_t sub_1003071C8(char *a1)
{
  v2 = *a1;

  sub_100305350(v2 & 1);
}

uint64_t sub_100307224(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 17) = a2;
  return swift_endAccess();
}

void (*sub_1003072CC(void *a1))(void **a1, char a2)
{
  v8 = sub_100294700(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = type metadata accessor for ObservationRegistrar();
  v5 = *(v7 - 8);
  v6 = sub_100294700(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_100307484;
}

void sub_100307484(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_100307510(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_100307510(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_100307510(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = type metadata accessor for ObservationRegistrar();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_10030764C()
{
  swift_beginAccess();
  v2 = *(v0 + 18);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_10030769C(char a1)
{
  swift_beginAccess();
  *(v1 + 18) = a1;
  return swift_endAccess();
}

uint64_t sub_1003076E8()
{
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 18);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_100307770@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_1003076E8() & 1;
}

uint64_t sub_1003077D0(char *a1)
{
  v2 = *a1;

  sub_10030551C(v2 & 1);
}

uint64_t sub_10030782C(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 18) = a2;
  return swift_endAccess();
}

void (*sub_1003078D4(void *a1))(void **a1, char a2)
{
  v8 = sub_100294700(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = type metadata accessor for ObservationRegistrar();
  v5 = *(v7 - 8);
  v6 = sub_100294700(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_100306838(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_100307A8C;
}

void sub_100307A8C(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_100307B18(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_100307B18(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_100307B18(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = type metadata accessor for ObservationRegistrar();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_10030F964();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100307C54(char a1, char a2, char a3)
{
  ObservationRegistrar.init()();
  sub_1003066D4(a1 & 1, v3 + 16);
  sub_1003066D4(a2 & 1, v3 + 17);
  sub_1003066D4(a3 & 1, v3 + 18);
  return v8;
}

uint64_t type metadata accessor for InstantAnswerView()
{
  v1 = qword_1006D90E0;
  if (!qword_1006D90E0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

BOOL static InstantAnswerView.State.== infix(_:_:)()
{
  v5 = sub_1003066F4();
  v6 = sub_1003066F4() & 1;

  if ((v5 & 1) == v6)
  {
    v3 = sub_1003070E0();
    v4 = (v3 & 1) == (sub_1003070E0() & 1);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v1 = sub_1003076E8();
    v2 = (v1 & 1) == (sub_1003076E8() & 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100307F5C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100307FF8()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = !== infix(_:_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t InstantAnswerView.State.deinit()
{
  v3 = OBJC_IVAR____TtCV10MobileMail17InstantAnswerView5State___observationRegistrar;
  v1 = type metadata accessor for ObservationRegistrar();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1003081E0@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006D8DD0);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_10030FA58(v7, (&v2 - v3));
  Environment.wrappedValue.getter();
  return sub_10030FB2C(v6);
}

uint64_t sub_1003082A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = type metadata accessor for ColorScheme();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = type metadata accessor for EnvironmentValues();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  EnvironmentValues.colorScheme.getter();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_100308430(uint64_t a1)
{
  v3 = a1;
  v1 = type metadata accessor for ColorScheme();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1003084E8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  sub_1002F6064(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  return result;
}

uint64_t sub_100308680(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006D8DD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_10030FA58(v1, (v3 - v3[0]));
  sub_10030FBC8(v4, v3[1]);
  return sub_10030FB2C(v5);
}

uint64_t *InstantAnswerView.model.setter(uint64_t *a1)
{
  sub_1003084E8(a1, v5);
  v2 = type metadata accessor for InstantAnswerView();
  sub_10030FCB4(a1, v1 + *(v2 + 20));
  result = a1;
  sub_1003085F0(a1);
  return result;
}

uint64_t sub_1003087F8()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerView() + 24));

  return v2;
}

uint64_t sub_100308830(uint64_t a1)
{

  *(v1 + *(type metadata accessor for InstantAnswerView() + 24)) = a1;
}

uint64_t sub_1003088A0()
{
  type metadata accessor for InstantAnswerView();

  v3 = sub_1003066F4();

  if (v3)
  {
    v2 = 1;
  }

  else
  {

    v1 = sub_1003076E8();

    v2 = v1;
  }

  return v2 & 1;
}

uint64_t InstantAnswerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = v98;
  v42 = a1;
  v73 = 0;
  v97 = 0;
  v96 = 0;
  v43 = type metadata accessor for DynamicTypeSize();
  v44 = *(v43 - 8);
  v45 = v44;
  __chkstk_darwin(v43 - 8);
  v46 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10025C9B0(&qword_1006D8DD8);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v49 = &v28 - v48;
  v50 = type metadata accessor for ColorScheme();
  v51 = *(v50 - 8);
  v52 = v51;
  __chkstk_darwin(v50 - 8);
  v53 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10025C9B0(&qword_1006D8DD0);
  v54 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v85 = &v28 - v54;
  v55 = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v83 = &v28 - v55;
  v88 = type metadata accessor for InstantAnswerContentView();
  __chkstk_darwin(v88 - 8);
  v91 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10025C9B0(&qword_1006D8DE0);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56 - 8);
  v87 = &v28 - v57;
  v58 = &v28 - v57;
  v59 = sub_10025C9B0(&qword_1006D8DE8);
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59 - 8);
  v61 = &v28 - v60;
  v62 = sub_10025C9B0(&qword_1006D8DF0);
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62 - 8);
  v66 = &v28 - v65;
  v67 = sub_10025C9B0(&qword_1006D8DF8);
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67 - 8);
  v69 = &v28 - v68;
  v70 = sub_10025C9B0(&qword_1006D8E00);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70 - 8);
  v72 = &v28 - v71;
  v74 = sub_10025C9B0(&qword_1006D8E08);
  v76 = *(*(v74 - 8) + 64);
  v6 = __chkstk_darwin(v73);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = &v28 - v78;
  v7 = __chkstk_darwin(v6);
  v77 = &v28 - v78;
  __chkstk_darwin(v7);
  v79 = &v28 - v78;
  v97 = &v28 - v78;
  v96 = v1;
  v8 = type metadata accessor for InstantAnswerView();
  v9 = v80;
  v81 = v8;
  v10 = (v1 + *(v8 + 20));
  v11 = *v10;
  *(v80 + 7) = v10[1];
  v9[6] = v11;
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  *(v9 + 169) = *(v10 + 73);
  v9[10] = v14;
  v9[9] = v13;
  v9[8] = v12;
  v86 = v99;
  sub_1003084E8(v99, &v95);
  sub_1003093D8();
  v84 = sub_10030940C();
  v82 = v15;
  sub_100309448();
  sub_10030947C(v83, v84, v82 & 1, v85, v86, v91);
  KeyPath = swift_getKeyPath();
  v94 = sub_1003088A0() & 1;
  sub_10030FE20();
  View.environment<A>(_:_:)();

  sub_10030FEA0(v91);
  v92 = swift_getKeyPath();
  if (sub_1003088A0())
  {
    (*(v52 + 104))(v53, enum case for ColorScheme.dark(_:), v50);
  }

  else
  {
    sub_1003081E0(v53);
  }

  sub_100310094();
  View.environment<A>(_:_:)();
  (*(v52 + 8))(v53, v50);

  sub_1003101C4(v58);
  (*(v45 + 104))(v46, enum case for DynamicTypeSize.accessibility2(_:), v43);
  sub_1003103A8();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    LODWORD(v27) = 0;
    v26 = 822;
    v25 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  (*(v45 + 16))(v49, v46, v43);
  (*(v45 + 8))(v46, v43);
  v29 = sub_100310428();
  v30 = sub_100310558();
  View.dynamicTypeSize<A>(_:)();
  sub_1003105E0(v49);
  sub_10031063C(v61);
  v93[12] = v59;
  v93[13] = v47;
  v93[14] = v29;
  v93[15] = v30;
  v31 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EF0A4();
  View.padding(_:_:)();
  (*(v64 + 8))(v66, v62);
  v37 = &v28;
  __chkstk_darwin(&v28);
  v33 = &v25;
  v27 = v16;
  v34 = sub_10025C9B0(&qword_1006D8E58);
  v35 = sub_1003108B0();
  v36 = sub_1003109D4();
  sub_1002FD828();
  View.background<A>(alignment:content:)();
  sub_10003389C(v69);
  v17 = v80;
  v18 = (v89 + *(v81 + 20));
  v19 = *v18;
  *(v80 + 1) = v18[1];
  *v17 = v19;
  v20 = v18[2];
  v21 = v18[3];
  v22 = v18[4];
  *(v17 + 73) = *(v18 + 73);
  v17[4] = v22;
  v17[3] = v21;
  v17[2] = v20;
  v38 = v98;
  sub_1003084E8(v98, v93);
  v39 = InstantAnswerView.Model.accessibilityIdentifier.getter();
  v40 = v23;
  sub_1003085F0(v38);
  sub_100310A5C();
  View.accessibilityIdentifier(_:)();

  sub_100033904(v72);
  v41 = sub_100310B8C();
  sub_1002EC85C(v77, v74, v79);
  sub_100033A10(v77);
  sub_100033B7C(v79, v75);
  sub_1002EC85C(v75, v74, v42);
  sub_100033A10(v75);
  return sub_100033A10(v79);
}

uint64_t sub_10030940C()
{
  swift_getKeyPath();
  Environment.init(_:)();
  return v1;
}

double sub_10030947C@<D0>(const void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, const void *a4@<X3>, const void *a5@<X4>, char *a6@<X8>)
{
  sub_1002FDFC8(a1, a6);
  v17 = type metadata accessor for InstantAnswerContentView();
  v6 = &a6[v17[5]];
  *v6 = a2;
  v6[8] = a3 & 1;
  sub_100316D40(a4, &a6[v17[6]]);
  memcpy(&a6[v17[7]], a5, 0x59uLL);
  v15 = v17[8];
  v16 = MFImageGlyphInstantAnswersChevronForward;
  _objc_retain(MFImageGlyphInstantAnswersChevronForward);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = &a6[v15];
  *v8 = v7;
  v8[1] = v9;
  _objc_release(v16);
  *&a6[v17[9]] = 4.0;
  result = 50.0;
  *&a6[v17[10]] = 0x4049000000000000;
  return result;
}

uint64_t sub_10030959C()
{
  sub_100310C34();
  EnvironmentValues.subscript.getter();
  return v1 & 1;
}

uint64_t sub_1003095EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = type metadata accessor for EnvironmentValues();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_10030959C();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5 & 1;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_10030977C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v22 = a1;
  v49 = 0;
  v48 = 0;
  v14 = 0;
  v27 = type metadata accessor for ColorScheme();
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v10 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v25 = &v9 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v26 = &v9 - v11;
  v19 = type metadata accessor for RoundedCornerStyle();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v21 = &v9 - v12;
  v34 = type metadata accessor for RoundedRectangle();
  v13 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v39 = &v9 - v13;
  v41 = sub_10025C9B0(&qword_1006D8E58);
  v15 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v14);
  v43 = &v9 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v44 = &v9 - v16;
  v49 = &v9 - v16;
  v48 = a1;
  v30 = type metadata accessor for InstantAnswerView();
  v20 = *(a1 + *(v30 + 28));
  (*(v17 + 104))(v21, enum case for RoundedCornerStyle.continuous(_:), v19);
  RoundedRectangle.init(cornerRadius:style:)();
  sub_1003081E0(v26);
  v7 = v22;
  (*(v23 + 104))(v25, enum case for ColorScheme.dark(_:), v27);
  v31 = static ColorScheme.== infix(_:_:)();
  v29 = *(v23 + 8);
  v28 = v23 + 8;
  v29(v25, v27);
  v29(v26, v27);
  v32 = *(v7 + *(v30 + 24));

  v33 = sub_100309C2C();

  v38 = &v47;
  v47 = v33;
  v36 = sub_100317344();
  v35 = &type metadata for Color;
  v37 = &protocol witness table for Color;
  v46 = sub_100309DE4();
  v45 = v46;
  sub_100309E08(v38, v46, v34, v35, v36, v37, v43);
  sub_100268928();
  sub_1003173C4(v39);
  v42 = sub_1003109D4();
  sub_1002EC85C(v43, v41, v44);
  sub_100317440(v43);
  sub_1003174E4(v44, v43);
  sub_1002EC85C(v43, v41, v40);
  sub_100317440(v43);
  return sub_100317440(v44);
}

uint64_t sub_100309C2C()
{
  v6 = sub_1003066F4();

  if (v6)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1003076E8();
  }

  if (v5)
  {
    v4 = [objc_opt_self() systemBlueColor];
    _objc_retain(v4);
    v7 = v4;
  }

  else if (sub_1003070E0())
  {
    v3 = [objc_opt_self() systemGray3Color];
    _objc_retain(v3);
    v7 = v3;
  }

  else
  {
    v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    _objc_retain(v2);
    v7 = v2;
  }

  v1 = Color.init(uiColor:)();
  _objc_release(v7);
  return v1;
}

uint64_t sub_100309E08@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a7;
  v14 = a1;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v28 = a2;
  v15 = a2;
  v16 = HIBYTE(a2);
  v27 = a3;
  v26 = a4;
  v12 = *(a4 - 8);
  v13 = a4 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v18 = &v9 - v9;
  v11 = *(v7 - 8);
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v9);
  v23 = &v9 - v10;
  (*(v11 + 16))();
  (*(v12 + 16))(v18, v14, v20);
  v24 = v15;
  v25 = v16;
  return _ShapeView.init(shape:style:fillStyle:)();
}

uint64_t sub_100309FB0@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006D88C8);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_1002F61D8(v7, (&v2 - v3));
  Environment.wrappedValue.getter();
  return sub_1002F62AC(v6);
}

uint64_t sub_10030A070(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_1002F61D8(v1, (v3 - v3[0]));
  sub_1002F640C(v4, v3[1]);
  return sub_1002F62AC(v5);
}

uint64_t sub_10030A114()
{
  v1 = v0 + *(type metadata accessor for InstantAnswerContentView() + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_100310CB0(*v1, v4 & 1);
  sub_10025C9B0(&qword_1006D8E98);
  Environment.wrappedValue.getter();
  sub_100310060(v3, v4 & 1);
  return v5 & 1;
}

uint64_t sub_10030A1C0()
{
  v1 = v0 + *(type metadata accessor for InstantAnswerContentView() + 20);
  v3 = *v1;
  sub_100310CB0(*v1, *(v1 + 8) & 1);
  return v3;
}

uint64_t sub_10030A210(uint64_t a1, char a2)
{
  sub_100310CB0(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for InstantAnswerContentView() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_100310060(v4, v5 & 1);
  return sub_100310060(a1, a2 & 1);
}

uint64_t sub_10030A284@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = sub_10025C9B0(&qword_1006D8DD0);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for InstantAnswerContentView();
  sub_10030FA58((v5[1] + *(v3 + 24)), v1);
  Environment.wrappedValue.getter();
  return sub_10030FB2C(v7);
}

uint64_t sub_10030A388(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_10025C9B0(&qword_1006D8DD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_10030FA58(v2, (&v5 - v6));
  v3 = type metadata accessor for InstantAnswerContentView();
  sub_10030FBC8(v7, (v1 + *(v3 + 24)));
  return sub_10030FB2C(v8);
}

uint64_t *sub_10030A470(uint64_t *a1)
{
  sub_1003084E8(a1, v5);
  v2 = type metadata accessor for InstantAnswerContentView();
  sub_10030FCB4(a1, v1 + *(v2 + 28));
  result = a1;
  sub_1003085F0(a1);
  return result;
}

uint64_t sub_10030A4BC()
{
  v2 = *(v0 + *(type metadata accessor for InstantAnswerContentView() + 32));

  return v2;
}

uint64_t sub_10030A54C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v2 = sub_10025C9B0(&qword_1006D8EA0);
  v28 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v29 = &v8 - v28;
  v37 = v1;
  if (sub_10030A114())
  {
    v25 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v25 = [objc_opt_self() systemBackgroundColor];
  }

  v24 = Color.init(uiColor:)();
  v36 = v24;
  if (sub_10030A114())
  {
    v23 = [objc_opt_self() whiteColor];
  }

  else
  {
    v23 = [objc_opt_self() tintColor];
  }

  v22 = Color.init(uiColor:)();
  v35 = v22;
  v14 = 0;
  v12 = type metadata accessor for InstantAnswerContentView();
  v3 = (v27 + *(v12 + 28));
  v9 = __dst;
  memcpy(__dst, v3, 0x59uLL);
  sub_1003084E8(__dst, v34);
  v11 = InstantAnswerView.Model.iconSymbolName.getter();
  v10 = v4;
  sub_1003085F0(v9);
  v5 = Image.init(systemName:)();
  v17 = &v33;
  v33 = v5;
  v13 = *(v27 + *(v12 + 40));
  v6 = *(*(type metadata accessor for Font.Design() - 8) + 56);
  v15 = 1;
  v6(v29, 1);
  v16 = static Font.system(size:weight:design:)();
  sub_100310CE4(v29);
  View.font(_:)();

  sub_100268928();
  v21 = v32;
  v32[0] = v34[12];
  v32[1] = v34[13];
  v32[2] = v34[14];
  v20 = &v31;
  v31 = v24;
  v18 = &v30;
  v30 = v22;
  v19 = sub_10025C9B0(&qword_1006D8B70);
  sub_1002FE4B8();
  View.foregroundStyle<A, B>(_:_:)();
  sub_1002FE5E4();
}

uint64_t sub_10030A894()
{
  sub_10025C9B0(&qword_1006D8EA8);
  sub_100310D94();
  sub_10030B99C();
  return ViewThatFits.init(in:content:)();
}

uint64_t sub_10030A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v16 = a1;
  v12 = sub_100316260;
  v19 = sub_10031653C;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v24 = sub_10025C9B0(&qword_1006D9450);
  v8 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v29 = &v7 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v8);
  v31 = &v7 - v9;
  v43 = &v7 - v9;
  v23 = sub_10025C9B0(&qword_1006D9458);
  v10 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v30 = &v7 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v32 = &v7 - v11;
  v42 = &v7 - v11;
  v41 = v5;
  v15 = static VerticalAlignment.firstTextBaseline.getter();
  v13 = &v35;
  v36 = v16;
  v14 = sub_10025C9B0(&qword_1006D8F48);
  sub_100316268();
  v17 = 0;
  v18 = 1;
  HStack.init(alignment:spacing:content:)();
  v25 = sub_100316428();
  sub_1002EC85C(v30, v23, v32);
  sub_1003164B0(v30);
  v22 = static HorizontalAlignment.leading.getter();
  v20 = &v33;
  v34 = v16;
  v21 = sub_10025C9B0(&qword_1006D8F60);
  sub_100316544();
  VStack.init(alignment:spacing:content:)();
  v26 = sub_1003165DC();
  sub_1002EC85C(v29, v24, v31);
  sub_100316664(v29);
  sub_1003166F0(v32, v30);
  v28 = v40;
  v40[0] = v30;
  sub_1003167A4(v31, v29);
  v40[1] = v29;
  v39[0] = v23;
  v39[1] = v24;
  v37 = v25;
  v38 = v26;
  sub_1003A33CC(v28, 2uLL, v39, v27);
  sub_100316664(v29);
  sub_1003164B0(v30);
  sub_100316664(v31);
  return sub_1003164B0(v32);
}

uint64_t sub_10030ACBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v10 = a1;
  v15 = 0;
  v14 = sub_10030B03C;
  v32 = 0;
  v31 = 0;
  v26 = sub_10025C9B0(&qword_1006D8F48);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v8 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v10);
  v24 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = &v7 - v9;
  v32 = &v7 - v9;
  v31 = v4;
  v5 = (v10 + *(type metadata accessor for InstantAnswerContentView() + 28));
  v11 = __dst;
  memcpy(__dst, v5, 0x59uLL);
  sub_1003084E8(__dst, v30);
  v12 = InstantAnswerView.Model.actions.getter();
  sub_1003085F0(v11);
  v19 = &v29;
  v29 = v12;
  KeyPath = swift_getKeyPath();
  v16 = sub_10025C9B0(&qword_1006D9498);
  v17 = sub_10025C9B0(&qword_1006D9470);
  v18 = sub_100316858();
  sub_100316300();
  ForEach<>.init(_:id:content:)();
  v23 = sub_100316268();
  sub_1002EC85C(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_1002EC85C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_10030B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v14 = a1;
  v30 = 0;
  v2 = sub_10025C9B0(&qword_1006D88C8);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v19 = &v10 - v11;
  v3 = sub_10025C9B0(&qword_1006D8DD0);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v18 = &v10 - v12;
  v20 = type metadata accessor for InstantAnswerButton();
  v13 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v4 = &v10 - v13;
  v23 = &v10 - v13;
  v25 = sub_10025C9B0(&qword_1006D9470);
  v15 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = (&v10 - v15);
  v16 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v15);
  v28 = (&v10 - v16);
  v30 = &v10 - v16;
  v17 = __dst;
  memcpy(__dst, v6, sizeof(__dst));
  sub_1002F56BC(__dst, v29);
  sub_100309448();
  sub_1003093D8();
  v7 = sub_10030940C();
  sub_10030B334(v18, v19, v7, v8 & 1, v17, v4);
  v21 = __dst[4];
  v22 = __dst[5];

  sub_1003163A8();
  View.accessibilityIdentifier(_:)();

  sub_1003168E0(v23);
  v26 = sub_100316300();
  sub_1002EC85C(v27, v25, v28);
  sub_100316E14(v27);
  sub_100317000(v28, v27);
  sub_1002EC85C(v27, v25, v24);
  sub_100316E14(v27);
  return sub_100316E14(v28);
}

double sub_10030B334@<D0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, char *a6@<X8>)
{
  sub_100316D40(a1, a6);
  v12 = type metadata accessor for InstantAnswerButton();
  sub_1002FDFC8(a2, &a6[v12[5]]);
  v6 = &a6[v12[6]];
  *v6 = a3;
  v6[8] = a4 & 1;
  memcpy(&a6[v12[7]], a5, 0x40uLL);
  result = 0.5;
  *&a6[v12[8]] = 0.5;
  return result;
}

uint64_t sub_10030B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v9 = a1;
  v15 = 0;
  v14 = sub_10030B770;
  v32 = 0;
  v31 = 0;
  v26 = sub_10025C9B0(&qword_1006D8F60);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v24 = &v7 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = &v7 - v8;
  v32 = &v7 - v8;
  v31 = v4;
  v12 = 0;
  v5 = (v9 + *(type metadata accessor for InstantAnswerContentView() + 28));
  v10 = __dst;
  memcpy(__dst, v5, 0x59uLL);
  sub_1003084E8(__dst, v30);
  v11 = InstantAnswerView.Model.actions.getter();
  sub_1003085F0(v10);
  v19 = &v29;
  v29 = v11;
  KeyPath = swift_getKeyPath();
  v16 = sub_10025C9B0(&qword_1006D9498);
  v17 = type metadata accessor for InstantAnswerButton();
  v18 = sub_100316858();
  sub_1003163A8();
  ForEach<>.init(_:id:content:)();
  v23 = sub_100316544();
  sub_1002EC85C(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_1002EC85C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_10030B770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v11 = a1;
  v23 = 0;
  v2 = sub_10025C9B0(&qword_1006D88C8);
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v16 = &v9 - v9;
  v3 = sub_10025C9B0(&qword_1006D8DD0);
  v10 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v15 = &v9 - v10;
  v18 = type metadata accessor for InstantAnswerButton();
  v12 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v20 = &v9 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v21 = (&v9 - v13);
  v23 = &v9 - v13;
  v14 = __dst;
  memcpy(__dst, v5, sizeof(__dst));
  sub_1002F56BC(__dst, v22);
  sub_100309448();
  sub_1003093D8();
  v6 = sub_10030940C();
  sub_10030B334(v15, v16, v6, v7 & 1, v14, v20);
  v19 = sub_1003163A8();
  sub_1002EC85C(v20, v18, v21);
  sub_1003168E0(v20);
  sub_100316A70(v21, v20);
  sub_1002EC85C(v20, v18, v17);
  sub_1003168E0(v20);
  return sub_1003168E0(v21);
}

uint64_t sub_10030B99C()
{
  sub_10025C9B0(&qword_1006D9448);
  inited = swift_initStackObject();
  v9 = sub_100270080(inited, 2);
  v8 = v1;
  *v1 = static Axis.Set.horizontal.getter();
  v8[1] = static Axis.Set.vertical.getter();
  sub_1002700CC();
  v10 = Axis.Set.init(rawValue:)();
  v2 = sub_100270C94();
  v11 = sub_100315FF4(0, v2 & 1, v9);
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v11)
  {
    v7 = v10;
  }

  else
  {
    v7 = Axis.Set.init(rawValue:)();
  }

  v3 = sub_100270C94();
  v6 = sub_100315FF4(1, v3 & 1, v9);

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v6)
  {
    return v7;
  }

  else
  {
    return Axis.Set.init(rawValue:)();
  }
}

uint64_t sub_10030BB24@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = &opaque type descriptor for <<opaque return type of View.bold(_:)>>;
  v35 = 0;
  v22 = 0;
  v11 = type metadata accessor for ColorScheme();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v15 = v6 - v14;
  v16 = sub_10025C9B0(&qword_1006D8EB8);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = v6 - v17;
  v19 = sub_10025C9B0(&qword_1006D8EC0);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = v6 - v20;
  v23 = sub_10025C9B0(&qword_1006D8EC8);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v27 = v6 - v26;
  v35 = v1;
  v2 = (v1 + *(type metadata accessor for InstantAnswerContentView() + 32));
  v28 = *v2;
  v29 = v2[1];

  v34 = Image.init(systemName:)();
  KeyPath = swift_getKeyPath();
  if (sub_10030A114())
  {
    (*(v12 + 104))(v15, enum case for ColorScheme.light(_:), v11);
  }

  else
  {
    sub_10030A284(v15);
  }

  v6[1] = &v34;
  View.environment<A>(_:_:)();
  (*(v12 + 8))(v15, v11);

  sub_100268928();
  v6[2] = static Font.footnote.getter();
  sub_100310E1C();
  View.font(_:)();

  sub_100310EC0(v18);
  v7 = sub_100310F78();
  sub_10030BF50();
  View.bold(_:)();
  sub_100311020(v21);
  v3 = [objc_opt_self() systemGray2Color];
  v4 = Color.init(uiColor:)();
  v8 = &v33;
  v33 = v4;
  v31 = v19;
  v32 = v7;
  swift_getOpaqueTypeConformance2();
  View.foregroundStyle<A>(_:)();
  sub_100268928();
  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_10030BF68@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v26 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v20 = sub_10025C9B0(&qword_1006D8EE0);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v12 - v24;
  v2 = __chkstk_darwin(v12 - v24);
  v23 = v12 - v24;
  __chkstk_darwin(v2);
  v25 = v12 - v24;
  v48 = v12 - v24;
  v27 = sub_10025C9B0(&qword_1006D8EE8);
  v29 = *(*(v27 - 8) + 64);
  v3 = __chkstk_darwin(v26);
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v12 - v31;
  v4 = __chkstk_darwin(v3);
  v30 = v12 - v31;
  __chkstk_darwin(v4);
  v32 = v12 - v31;
  v47 = v12 - v31;
  v40 = type metadata accessor for ContentSizeCategory();
  v33 = *(v40 - 8);
  v39 = v33;
  __chkstk_darwin(v40 - 8);
  v41 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10025C9B0(&qword_1006D8EF0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = v12 - v37;
  __chkstk_darwin(v12 - v37);
  v38 = v12 - v37;
  v46 = v12 - v37;
  v45 = v1;
  sub_100309FB0(v6);
  v42 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v39 + 8))(v41, v40);
  if (v42)
  {
    v16 = static HorizontalAlignment.leading.getter();
    v17 = v12;
    __chkstk_darwin(v12);
    v14 = &v12[-4];
    v12[-2] = v7;
    v15 = sub_10025C9B0(&qword_1006D8FB8);
    sub_100311364();
    VStack.init(alignment:spacing:content:)();
    v18 = sub_10031122C();
    sub_1002EC85C(v30, v27, v32);
    sub_1000375F0(v30);
    v43 = v30;
    sub_100037B14(v32, v28);
    sub_1002EC85C(v28, v27, v30);
    sub_1000375F0(v28);
    sub_100037B14(v30, v28);
    v8 = sub_1003111A4();
    sub_1002FCA74(v28, v27, v20, v18, v8, v36);
    sub_1000375F0(v28);
    sub_100034E30(v36, v38);
    sub_1000375F0(v30);
    sub_1000375F0(v32);
  }

  else
  {
    v12[3] = *sub_100305C90();
    v12[4] = v12;
    __chkstk_darwin(v12);
    v12[1] = &v12[-4];
    v12[-2] = v9;
    v12[2] = sub_10025C9B0(&qword_1006D8EF8);
    sub_10031111C();
    HStack.init(alignment:spacing:content:)();
    v13 = sub_1003111A4();
    sub_1002EC85C(v23, v20, v25);
    sub_100033E08(v23);
    v44 = v23;
    sub_1000343B0(v25, v21);
    sub_1002EC85C(v21, v20, v23);
    sub_100033E08(v21);
    sub_1000343B0(v23, v21);
    v10 = sub_10031122C();
    sub_1002FCB6C(v21, v27, v20, v10, v13, v36);
    sub_100033E08(v21);
    sub_100034E30(v36, v38);
    sub_100033E08(v23);
    sub_100033E08(v25);
  }

  sub_100035AFC(v38, v36);
  sub_1003112B4();
  sub_1002EC85C(v36, v34, v19);
  sub_100036C84(v36);
  return sub_100036C84(v38);
}

uint64_t sub_10030C59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v70 = a1;
  v56 = sub_100313C18;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v74 = 0;
  v27 = sub_10025C9B0(&qword_1006D9368);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v29 = &v15 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v28);
  v31 = &v15 - v30;
  v85 = &v15 - v30;
  v60 = 0;
  v32 = type metadata accessor for InstantAnswerHotelContentView();
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v34 = (&v15 - v33);
  v35 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v33);
  v36 = &v15 - v35;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v35);
  v38 = (&v15 - v37);
  v84 = &v15 - v37;
  v39 = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v40 = &v15 - v39;
  v41 = type metadata accessor for InstantAnswerFlightContentView();
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v43 = (&v15 - v42);
  v44 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v42);
  v45 = &v15 - v44;
  v46 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v44);
  v47 = (&v15 - v46);
  v83 = &v15 - v46;
  v48 = sub_10025C9B0(&qword_1006D93B8);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v50 = &v15 - v49;
  v51 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v49);
  v52 = &v15 - v51;
  v82 = &v15 - v51;
  v62 = sub_10025C9B0(&qword_1006D93C0);
  v53 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v64 = &v15 - v53;
  v66 = sub_10025C9B0(&qword_1006D8FA0);
  v54 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v70);
  v68 = &v15 - v54;
  v55 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v65 = &v15 - v55;
  v81 = &v15 - v55;
  v80 = v10;
  v57 = v73;
  v73[2] = v10;
  v58 = sub_10025C9B0(&qword_1006D93C8);
  v59 = sub_100313C20();
  sub_10030D0FC();
  HStack.init(alignment:spacing:content:)();
  v63 = static Edge.Set.bottom.getter();
  v69 = type metadata accessor for InstantAnswerContentView();
  v61 = *(v70 + *(v69 + 36));
  sub_100313CA8();
  View.padding(_:_:)();
  sub_100038ECC(v64);
  v67 = sub_100313D30();
  sub_1002EC85C(v68, v66, v65);
  sub_100038ECC(v68);
  v11 = (v70 + *(v69 + 28));
  v71 = __dst;
  v72 = 89;
  memcpy(__dst, v11, 0x59uLL);
  sub_1003084E8(__dst, &v79);
  memcpy(__src, v71, v72);
  if (v90)
  {
    v20 = __src[6];
    v21 = v87;
    v87[0] = __src[0];
    v87[1] = __src[1];
    v87[2] = __src[2];
    v87[3] = __src[3];
    v87[4] = __src[4];
    v87[5] = __src[5];
    sub_100304AC8();
    sub_100304AFC(v40, v21, v36);
    v22 = sub_100313DD4();
    sub_1002EC85C(v36, v32, v38);
    sub_100313E54(v36);
    v78 = v36;
    sub_100313F28(v38, v34);
    sub_1002EC85C(v34, v32, v36);
    sub_100313E54(v34);
    sub_100313F28(v36, v34);
    v13 = sub_10031408C();
    sub_1002FCB6C(v34, v41, v32, v13, v22, v50);
    sub_100313E54(v34);
    sub_10031410C(v50, v52);
    sub_100313E54(v36);
    sub_100313E54(v38);
  }

  else
  {
    v24 = v86;
    memcpy(v86, __src, sizeof(v86));
    v23 = __src[10];
    sub_1002FC6B4();
    sub_1002FC6E8(v40, v24, v45);
    v25 = sub_10031408C();
    sub_1002EC85C(v45, v41, v47);
    sub_100314DFC(v45);
    v74 = v45;
    sub_1002FE9B0(v47, v43);
    sub_1002EC85C(v43, v41, v45);
    sub_100314DFC(v43);
    sub_1002FE9B0(v45, v43);
    v12 = sub_100313DD4();
    sub_1002FCA74(v43, v41, v32, v25, v12, v50);
    sub_100314DFC(v43);
    sub_10031410C(v50, v52);
    sub_100314DFC(v45);
    sub_100314DFC(v47);
  }

  sub_10030A894();
  v16 = sub_100313608();
  sub_1002EC85C(v29, v27, v31);
  sub_1003143D0(v29);
  sub_100038FE0(v65, v68);
  v19 = v77;
  v77[0] = v68;
  sub_100314510(v52, v50);
  v77[1] = v50;
  sub_10031496C(v31, v29);
  v77[2] = v29;
  v17 = v76;
  v76[0] = v66;
  v76[1] = v48;
  v76[2] = v27;
  v18 = v75;
  v75[0] = v67;
  v75[1] = sub_100314B20();
  v75[2] = v16;
  sub_1003A33CC(v19, 3uLL, v17, v26);
  sub_1003143D0(v29);
  sub_100314BC8(v50);
  sub_100038ECC(v68);
  sub_1003143D0(v31);
  sub_100314BC8(v52);
  return sub_100038ECC(v65);
}

uint64_t *sub_10030CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v8 = a1;
  v39 = 0;
  v38 = 0;
  v10 = &v33;
  v33 = 0;
  v34 = 0;
  v13 = sub_10025C9B0(&qword_1006D8F68);
  v6 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v19 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v6);
  v21 = &v6 - v7;
  v39 = &v6 - v7;
  v38 = a1;
  sub_10030A54C(v36);
  v9 = v35;
  v35[0] = v36[0];
  v35[1] = v36[1];
  v35[2] = v36[2];
  v35[3] = v36[3];
  v35[4] = v36[4];
  v11 = sub_10025C9B0(&qword_1006D9348);
  v14 = sub_1003134D8();
  v22 = v37;
  sub_1002EC85C(v9, v11, v37);
  sub_100314F4C();
  v31 = Spacer.init(minLength:)();
  v32 = v4 & 1;
  v12 = &type metadata for Spacer;
  v15 = &protocol witness table for Spacer;
  sub_1002EC85C(&v31, &type metadata for Spacer, v10);
  sub_10030BB24(v19);
  v16 = sub_100313690();
  sub_1002EC85C(v19, v13, v21);
  sub_1000391F0(v19);
  v20 = v29;
  sub_100314FA8(v22, v29);
  v18 = v30;
  v30[0] = v20;
  v27 = v33;
  v28 = v34;
  v30[1] = &v27;
  sub_100039280(v21, v19);
  v30[2] = v19;
  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  sub_1003A33CC(v18, 3uLL, v26, v17);
  sub_1000391F0(v19);
  sub_100314F4C();
  sub_1000391F0(v21);
  result = v22;
  sub_100314F4C();
  return result;
}

uint64_t *sub_10030D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v24 = a1;
  v38 = 0;
  v21 = sub_1002FADFC;
  v30 = sub_100315204;
  v37 = sub_1002FADFC;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v36 = &v66;
  v66 = 0;
  v67 = 0;
  v39 = sub_10025C9B0(&qword_1006D8F68);
  v9 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = &v8 - v9;
  v45 = sub_10025C9B0(&qword_1006D8F70);
  v10 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v52 = &v8 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v10);
  v55 = &v8 - v11;
  v77 = &v8 - v11;
  v43 = sub_10025C9B0(&qword_1006D9400);
  v12 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v53 = &v8 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v12);
  v56 = &v8 - v13;
  v76 = &v8 - v13;
  v75 = a1;
  sub_10030A54C(v71);
  v17 = v70;
  v70[0] = v71[0];
  v70[1] = v71[1];
  v70[2] = v71[2];
  v70[3] = v71[3];
  v70[4] = v71[4];
  v16 = static Edge.Set.trailing.getter();
  v35 = 0;
  v14 = *(v24 + *(type metadata accessor for InstantAnswerContentView() + 36));
  v15 = sub_10025C9B0(&qword_1006D9348);
  sub_1003134D8();
  v18 = &v72;
  View.padding(_:_:)();
  sub_100314F4C();
  v19 = __dst;
  v20 = 81;
  memcpy(__dst, v18, 0x51uLL);
  v25 = v69;
  memcpy(v69, __dst, 0x51uLL);
  v23 = *sub_100305C90();
  v22 = sub_10025C9B0(&qword_1006D9408);
  sub_100315054();
  v26 = &v73;
  View.alignmentGuide(_:computeValue:)();
  v5 = v24;
  sub_100314F4C();
  v27 = v79;
  v28 = 112;
  memcpy(v79, v26, sizeof(v79));
  v29 = v68;
  memcpy(v68, v79, sizeof(v68));
  v42 = sub_10025C9B0(&qword_1006D9418);
  v46 = sub_1003150F8();
  v57 = v74;
  sub_1002EC85C(v29, v42, v74);
  sub_10031519C();
  v33 = static HorizontalAlignment.leading.getter();
  v31 = v58;
  v58[2] = v5;
  v32 = sub_10025C9B0(&qword_1006D9428);
  sub_10031520C();
  v34 = 1;
  VStack.init(alignment:spacing:content:)();
  v47 = sub_100315294();
  sub_1002EC85C(v53, v43, v56);
  sub_10031531C(v53);
  v64 = Spacer.init(minLength:)();
  v65 = v6 & 1;
  v44 = &type metadata for Spacer;
  v48 = &protocol witness table for Spacer;
  sub_1002EC85C(&v64, &type metadata for Spacer, v36);
  sub_10030BB24(v41);
  v40 = *sub_100305C90();
  sub_100313690();
  View.alignmentGuide(_:computeValue:)();
  sub_1000391F0(v41);
  v49 = sub_1003156F4();
  sub_1002EC85C(v52, v45, v55);
  sub_100039330(v52);
  v54 = v62;
  sub_100315798(v57, v62);
  v51 = v63;
  v63[0] = v54;
  sub_100315894(v56, v53);
  v63[1] = v53;
  v60 = v66;
  v61 = v67;
  v63[2] = &v60;
  sub_1000393EC(v55, v52);
  v63[3] = v52;
  v59[0] = v42;
  v59[1] = v43;
  v59[2] = v44;
  v59[3] = v45;
  v58[4] = v46;
  v58[5] = v47;
  v58[6] = v48;
  v58[7] = v49;
  sub_1003A33CC(v51, 4uLL, v59, v50);
  sub_100039330(v52);
  sub_10031531C(v53);
  sub_10031519C();
  sub_100039330(v55);
  sub_10031531C(v56);
  result = v57;
  sub_10031519C();
  return result;
}

uint64_t sub_10030D714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v51 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v54 = 0;
  v23 = sub_10025C9B0(&qword_1006D9368);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v25 = &v13 - v24;
  v26 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v24);
  v27 = &v13 - v26;
  v65 = &v13 - v26;
  v44 = 0;
  v28 = type metadata accessor for InstantAnswerHotelContentView();
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v30 = (&v13 - v29);
  v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v29);
  v32 = &v13 - v31;
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v31);
  v34 = (&v13 - v33);
  v64 = &v13 - v33;
  v35 = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v36 = &v13 - v35;
  v37 = type metadata accessor for InstantAnswerFlightContentView();
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v39 = (&v13 - v38);
  v40 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v38);
  v41 = &v13 - v40;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v40);
  v43 = (&v13 - v42);
  v63 = &v13 - v42;
  v45 = sub_10025C9B0(&qword_1006D93B8);
  v47 = *(*(v45 - 8) + 64);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v44);
  v48 = &v13 - v46;
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v50 = &v13 - v49;
  v62 = &v13 - v49;
  v61 = v8;
  v9 = (v51 + *(type metadata accessor for InstantAnswerContentView() + 28));
  v52 = __dst;
  v53 = 89;
  memcpy(__dst, v9, 0x59uLL);
  sub_1003084E8(__dst, &v60);
  memcpy(__src, v52, v53);
  if (v70)
  {
    v16 = __src[6];
    v17 = v67;
    v67[0] = __src[0];
    v67[1] = __src[1];
    v67[2] = __src[2];
    v67[3] = __src[3];
    v67[4] = __src[4];
    v67[5] = __src[5];
    sub_100304AC8();
    sub_100304AFC(v36, v17, v32);
    v18 = sub_100313DD4();
    sub_1002EC85C(v32, v28, v34);
    sub_100313E54(v32);
    v59 = v32;
    sub_100313F28(v34, v30);
    sub_1002EC85C(v30, v28, v32);
    sub_100313E54(v30);
    sub_100313F28(v32, v30);
    v11 = sub_10031408C();
    sub_1002FCB6C(v30, v37, v28, v11, v18, v48);
    sub_100313E54(v30);
    sub_10031410C(v48, v50);
    sub_100313E54(v32);
    sub_100313E54(v34);
  }

  else
  {
    v20 = v66;
    memcpy(v66, __src, sizeof(v66));
    v19 = __src[10];
    sub_1002FC6B4();
    sub_1002FC6E8(v36, v20, v41);
    v21 = sub_10031408C();
    sub_1002EC85C(v41, v37, v43);
    sub_100314DFC(v41);
    v54 = v41;
    sub_1002FE9B0(v43, v39);
    sub_1002EC85C(v39, v37, v41);
    sub_100314DFC(v39);
    sub_1002FE9B0(v41, v39);
    v10 = sub_100313DD4();
    sub_1002FCA74(v39, v37, v28, v21, v10, v48);
    sub_100314DFC(v39);
    sub_10031410C(v48, v50);
    sub_100314DFC(v41);
    sub_100314DFC(v43);
  }

  sub_10030A894();
  v13 = sub_100313608();
  sub_1002EC85C(v25, v23, v27);
  sub_1003143D0(v25);
  sub_100314510(v50, v48);
  v15 = v58;
  v58[0] = v48;
  sub_10031496C(v27, v25);
  v58[1] = v25;
  v14 = v57;
  v57[0] = v45;
  v57[1] = v23;
  v55 = sub_100314B20();
  v56 = v13;
  sub_1003A33CC(v15, 2uLL, v14, v22);
  sub_1003143D0(v25);
  sub_100314BC8(v48);
  sub_1003143D0(v27);
  return sub_100314BC8(v50);
}

uint64_t sub_10030DDD4@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = sub_10025C9B0(&qword_1006D88C8);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for InstantAnswerButton();
  sub_1002F61D8((v5[1] + *(v3 + 20)), v1);
  Environment.wrappedValue.getter();
  return sub_1002F62AC(v7);
}

uint64_t sub_10030DED8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_10025C9B0(&qword_1006D88C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1002F61D8(v2, (&v5 - v6));
  v3 = type metadata accessor for InstantAnswerButton();
  sub_1002F640C(v7, (v1 + *(v3 + 20)));
  return sub_1002F62AC(v8);
}

uint64_t sub_10030DF88()
{
  v1 = v0 + *(type metadata accessor for InstantAnswerButton() + 24);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_100310CB0(*v1, v4 & 1);
  sub_10025C9B0(&qword_1006D8E98);
  Environment.wrappedValue.getter();
  sub_100310060(v3, v4 & 1);
  return v5 & 1;
}

uint64_t sub_10030E034()
{
  v1 = v0 + *(type metadata accessor for InstantAnswerButton() + 24);
  v3 = *v1;
  sub_100310CB0(*v1, *(v1 + 8) & 1);
  return v3;
}

uint64_t sub_10030E084(uint64_t a1, char a2)
{
  sub_100310CB0(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for InstantAnswerButton() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_100310060(v4, v5 & 1);
  return sub_100310060(a1, a2 & 1);
}

uint64_t sub_10030E154@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v35 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  type metadata accessor for RoundedCornerStyle();
  __chkstk_darwin(0);
  v34 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Capsule();
  __chkstk_darwin(v35);
  v37 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BorderedButtonStyle();
  v39 = *(v38 - 8);
  v40 = v39;
  __chkstk_darwin(v38 - 8);
  v41 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10025C9B0(&qword_1006D8FC8);
  v43 = *(v42 - 8);
  v44 = v43;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42 - 8);
  v46 = v11 - v45;
  v47 = sub_10025C9B0(&qword_1006D8FD0);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47 - 8);
  v49 = v11 - v48;
  v50 = sub_10025C9B0(&qword_1006D8FD8);
  v51 = *(v50 - 8);
  v52 = v51;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50 - 8);
  v54 = v11 - v53;
  v64 = v1;
  if (sub_10030DF88())
  {
    v31 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v31 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = Color.init(uiColor:)();
  v63 = v30;
  if (sub_10030DF88())
  {
    v29 = [objc_opt_self() whiteColor];
  }

  else
  {
    v29 = [objc_opt_self() tintColor];
  }

  v5 = v32;
  v28 = Color.init(uiColor:)();
  v19 = v28;
  v62 = v28;
  v20 = type metadata accessor for InstantAnswerButton();
  v6 = v5 + *(v20 + 28);
  v26 = *(v6 + 48);
  v23 = *(v6 + 56);

  v27 = v11;
  v7 = __chkstk_darwin(v28);
  v8 = v30;
  v24 = &v11[-6];
  v11[-4] = v5;
  v11[-3] = v8;
  v11[-2] = v7;
  v25 = sub_10025C9B0(&qword_1006D8FE0);
  v21 = sub_10025CAA4(&qword_1006D8FE8);
  v22 = sub_100311470();
  v9 = sub_100311628();
  v61[1] = v21;
  v61[2] = &unk_10065A7F8;
  v61[3] = v22;
  v61[4] = v9;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();

  if (sub_10030DF88())
  {
    v16 = [objc_opt_self() whiteColor];
    v17 = [v16 colorWithAlphaComponent:*(v32 + *(v20 + 32))];

    v18 = Color.init(uiColor:)();
  }

  else
  {
    v18 = 0;
  }

  v61[0] = v18;
  sub_1003116A4();
  v11[1] = v61;
  View.tint<A>(_:)();
  sub_100268928();
  (*(v44 + 8))(v46, v42);
  BorderedButtonStyle.init()();
  v12 = sub_10031172C();
  v13 = sub_10031185C();
  View.buttonStyle<A>(_:)();
  (*(v40 + 8))(v41, v38);
  sub_100038480(v49);
  sub_10030F320(v34);
  Capsule.init(style:)();
  v57 = v47;
  v58 = v38;
  v59 = v12;
  v60 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1003118DC();
  v56 = sub_100309DE4();
  v55 = v56;
  View.clipShape<A>(_:style:)();
  sub_10031195C(v37);
  (*(v52 + 8))(v54, v50);
}

uint64_t sub_10030E9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v16 = a1;
  v22 = a2;
  v23 = a3;
  v21 = sub_100313ACC;
  v18 = sub_100313AD4;
  v33 = &opaque type descriptor for <<opaque return type of View.labelStyle<A>(_:)>>;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v27 = sub_10025C9B0(&qword_1006D9000);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v11 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v26 = &v10 - v11;
  v29 = sub_10025C9B0(&qword_1006D8FE8);
  v12 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v10 - v12;
  v40 = sub_10025C9B0(&qword_1006D8FE0);
  v34 = *(v40 - 8);
  v35 = v40 - 8;
  v14 = *(v34 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v22);
  v38 = &v10 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v39 = &v10 - v15;
  v56 = &v10 - v15;
  v55 = v6;
  v54 = v5;
  v53 = v7;
  v17 = &v47;
  v48 = v6;

  v19 = &v43;
  v44 = v16;
  v45 = v22;
  v46 = v23;
  v20 = sub_10025C9B0(&qword_1006D93A8);
  sub_100313AE4();
  Label.init(title:icon:)();

  sub_100311518();
  View.multilineTextAlignment(_:)();
  v8 = (*(v24 + 8))(v26, v27);
  nullsub_13(v8);
  v31 = sub_100311470();
  v32 = sub_100311628();
  v30 = &unk_10065A7F8;
  View.labelStyle<A>(_:)();
  sub_100313B88(v28);
  v49 = v29;
  v50 = v30;
  v51 = v31;
  v52 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v38, v40, v39);
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v40);
  (*(v34 + 16))(v38, v39, v40);
  sub_1002EC85C(v38, v40, v36);
  v42(v38, v40);
  return (v42)(v39, v40);
}

uint64_t sub_10030EEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = 0u;
  v47 = 0u;
  v48 = a1;
  v2 = a1 + *(type metadata accessor for InstantAnswerButton() + 28);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);

  v44 = v19;
  v45 = v20;
  sub_1002686CC();
  v40 = Text.init<A>(_:)();
  v41 = v3;
  v42 = v4;
  v43 = v5;
  v21 = v40;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  if (sub_10030DF88())
  {
    v17 = static Color.white.getter();
  }

  else
  {
    v6 = [objc_opt_self() tintColor];
    v17 = Color.init(uiColor:)();
  }

  v39 = v17;
  v35 = v40;
  v36 = v22;
  v37 = v23 & 1;
  v38 = v24;
  v31 = Text.foregroundStyle<A>(_:)();
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  sub_100268928();
  sub_1002EF150(v21, v22, v23 & 1);

  v28[0] = v31;
  v28[1] = v11;
  v29 = v12 & 1;
  v30 = v13;
  sub_1002EC85C(v28, &type metadata for Text, &v46);
  sub_1002F03C0(v28);
  v14 = v46;
  v15 = v47;
  v16 = *(&v47 + 1);
  sub_1002EF238(v46, *(&v46 + 1), v47 & 1);

  v25 = v14;
  v26 = v15 & 1;
  v27 = v16;
  sub_1002EC85C(&v25, &type metadata for Text, a2);
  sub_1002F03C0(&v25);
  return sub_1002F03C0(&v46);
}

void *sub_10030F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[5] = a1;
  v14[4] = a2;
  v14[3] = a3;
  type metadata accessor for InstantAnswerButton();

  v13[5] = Image.init(systemName:)();
  v13[4] = a2;
  v13[3] = a3;
  View.foregroundStyle<A, B>(_:_:)();
  sub_100268928();
  v13[0] = v13[6];
  v13[1] = v13[7];
  v13[2] = v13[8];
  v11 = sub_10025C9B0(&qword_1006D93A8);
  sub_100313AE4();
  sub_1002EC85C(v13, v11, v14);
  sub_1002FE5E4();
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  sub_1002EC85C(v12, v11, a4);
  sub_1002FE5E4();
  result = v14;
  sub_1002FE5E4();
  return result;
}

uint64_t sub_10030F320@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v1 = type metadata accessor for RoundedCornerStyle();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_10030F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v6 = a1;
  v9 = sub_1003119B8;
  v21 = 0;
  v20 = 0;
  v14 = sub_10025C9B0(&qword_1006D9050);
  v7 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v6);
  v16 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v17 = &v6 - v8;
  v21 = &v6 - v8;
  v20 = v4;
  v10 = &v18;
  v19 = v4;
  v11 = sub_10025C9B0(&qword_1006D9058);
  v12 = sub_1003119C0();
  sub_10030D0FC();
  HStack.init(alignment:spacing:content:)();
  v15 = sub_100311A48();
  sub_1002EC85C(v16, v14, v17);
  sub_100311AD0(v16);
  sub_100311BB8(v17, v16);
  sub_1002EC85C(v16, v14, v13);
  sub_100311AD0(v16);
  return sub_100311AD0(v17);
}

uint64_t sub_10030F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v13 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v7 = 0;
  v25 = type metadata accessor for LabelStyleConfiguration.Title();
  v16 = *(v25 - 8);
  v17 = v25 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v22 = &v7 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = &v7 - v9;
  v38 = &v7 - v9;
  v29 = type metadata accessor for LabelStyleConfiguration.Icon();
  v14 = *(v29 - 8);
  v15 = v29 - 8;
  v11 = *(v14 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v29);
  v23 = &v7 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v28 = &v7 - v12;
  v37 = &v7 - v12;
  v36 = a1;
  LabelStyleConfiguration.icon.getter();
  v18 = sub_1003139CC();
  sub_1002EC85C(v23, v29, v28);
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v31(v23, v29);
  LabelStyleConfiguration.title.getter();
  v19 = sub_100313A4C();
  sub_1002EC85C(v22, v25, v24);
  v27 = *(v16 + 8);
  v26 = v16 + 8;
  v27(v22, v25);
  (*(v14 + 16))(v23, v28, v29);
  v21 = v35;
  v35[0] = v23;
  (*(v16 + 16))(v22, v24, v25);
  v35[1] = v22;
  v34[0] = v29;
  v34[1] = v25;
  v32 = v18;
  v33 = v19;
  sub_1003A33CC(v21, 2uLL, v34, v20);
  v27(v22, v25);
  v31(v23, v29);
  v27(v24, v25);
  return (v31)(v28, v29);
}

uint64_t sub_10030F930()
{
  sub_100311CE0();
  result = VerticalAlignment.init(_:)();
  qword_1006EFFD0 = result;
  return result;
}

unint64_t sub_10030F964()
{
  v2 = qword_1006D8DC8;
  if (!qword_1006D8DC8)
  {
    type metadata accessor for InstantAnswerView.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8DC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InstantAnswerView.State()
{
  v1 = qword_1006D9150;
  if (!qword_1006D9150)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_10030FA58(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_10030FB2C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ColorScheme();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_10030FBC8(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_10030FB2C(a2);
    v4 = sub_10025C9B0(&qword_1006D88A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for ColorScheme();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_10030FCB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = *(a1 + 88);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  sub_1002F5D8C(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return a2;
}

uint64_t type metadata accessor for InstantAnswerContentView()
{
  v1 = qword_1006D9248;
  if (!qword_1006D9248)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_10030FE20()
{
  v2 = qword_1006D8E10;
  if (!qword_1006D8E10)
  {
    type metadata accessor for InstantAnswerContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8E10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10030FEA0(uint64_t a1)
{
  sub_10025C9B0(&qword_1006D88D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for ContentSizeCategory();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v5 = type metadata accessor for InstantAnswerContentView();
  sub_100310060(*(a1 + v5[5]), *(a1 + v5[5] + 8) & 1);
  v6 = a1 + v5[6];
  sub_10025C9B0(&qword_1006D88A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for ColorScheme();
    (*(*(v2 - 8) + 8))(v6);
  }

  else
  {
  }

  v3 = a1 + v5[7];
  sub_1002F5D8C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));

  return a1;
}