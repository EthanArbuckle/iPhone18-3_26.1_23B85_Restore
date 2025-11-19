void sub_E2ED8()
{
  v1 = sub_E2F24();
  [v0 setMenu:v1];
}

Class sub_E2F24()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *&v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_7;
  }

  v1 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v2 = Strong;
  swift_beginAccess();
  sub_E452C(v2 + v1, &v29);

  if (!*(&v30 + 1))
  {
LABEL_7:
    sub_69198(&v29, &unk_3C2550);
    return 0;
  }

  sub_68D1C(&v29, v34);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    sub_68CD0(v34);
    return 0;
  }

  v4 = v3;
  sub_DA510();
  sub_6620C(&qword_3C0248);
  sub_2C4DB8();
  v6 = v29;
  sub_691F8(v34, &v29);
  v7 = type metadata accessor for ContextActionDataModel.Asset();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(&v29, &v8[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v9[40] = 3;
  v33.receiver = v8;
  v33.super_class = v7;
  v10 = objc_msgSendSuper2(&v33, "init");
  sub_68CD0(&v29);
  v11 = objc_allocWithZone(type metadata accessor for ContextActionDataModel());
  v12 = ContextActionDataModel.init(asset:sourceView:)(v10, 0);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v29 = xmmword_2E8270;
  v30 = 0u;
  v31 = 0u;
  v13 = ContextActionSource.key.getter();
  v15 = v14;
  sub_C12F8(&v29);
  v32[3] = &type metadata for String;
  v32[0] = v13;
  v32[1] = v15;
  v16 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_CEFB8(v32, &v12[v16]);
  swift_endAccess();
  sub_72084(v34, v34[3]);
  v17 = sub_2BF3B8();
  v19 = v18;
  v20 = &v12[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  swift_beginAccess();
  *v20 = v17;
  v20[1] = v19;

  v21 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  v12[v21] = 1;
  v22 = [v6 menuElementsForViewController:v4 dataModel:v12];
  sub_66278(0, &qword_3BDC60);
  v23 = sub_2C5B28();

  if (v23 >> 62)
  {
    sub_66278(0, &qword_3C0240);

    v24 = sub_2C6388();
  }

  else
  {

    sub_2C65F8();
    sub_66278(0, &qword_3C0240);
    v24 = v23;
  }

  v25 = sub_E334C(v24);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v26.value = 0;
  isa = sub_2C5F58(v36, v37, v35, v26, 0xFFFFFFFFFFFFFFFFLL, v25, v28).super.super.isa;

  swift_unknownObjectRelease();

  sub_68CD0(v34);
  return isa;
}

uint64_t sub_E334C(uint64_t a1)
{
  sub_6620C(&qword_3BFDD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2E9480;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v9[4] = sub_E4614;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_E4010;
  v9[3] = &unk_38D810;
  v6 = _Block_copy(v9);

  v7 = [v3 elementWithUncachedProvider:v6];
  _Block_release(v6);
  *(v2 + 32) = v7;
  return v2;
}

uint64_t sub_E34AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v85 = a2;
  v86 = a1;
  v68 = sub_6620C(&qword_3BD858);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v60 - v4;
  v65 = sub_6620C(&qword_3BD1B0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v60 - v5;
  v80 = sub_2C4D28();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v84 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2C22F8();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C2208();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2C2178();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2C4BF8();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v60 - v12;
  v13 = sub_2BEB28();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BF048();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2BF088();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v86(v87);
  }

  v26 = Strong;
  v61 = v14;
  v27 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_sourceViewController;
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
LABEL_9:
    sub_69198(&v92, &unk_3C2550);
    return v86(v87);
  }

  v60 = v27;
  v62 = v26;
  v29 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v30 = v28;
  swift_beginAccess();
  sub_E452C(v30 + v29, &v92);

  if (!*(&v93 + 1))
  {

    goto LABEL_9;
  }

  sub_68D1C(&v92, v95);
  (*(v18 + 104))(v20, enum case for ClickData.TargetType.button(_:), v17);
  (*(v61 + 104))(v16, enum case for LinkActionType.click(_:), v13);
  sub_2BF058();
  v31 = v62;
  sub_2ADDC8(v24, &v89);
  (*(v22 + 8))(v24, v21);
  if (v90)
  {
    sub_68D1C(&v89, &v92);
    sub_72084(v95, v95[3]);
    sub_2BF3B8();
    v32 = v70;
    v33 = v69;
    v34 = v73;
    (*(v70 + 104))(v69, enum case for Metrics.TargetType.button(_:), v73);
    v35 = v74;
    v36 = v71;
    v37 = v76;
    (*(v74 + 104))(v71, enum case for Metrics.ClickActionType.more(_:), v76);
    v38 = v75;
    sub_2C22A8();
    v39 = v81;
    sub_2C2118();

    (*(v77 + 8))(v38, v78);
    (*(v35 + 8))(v36, v37);
    (*(v32 + 8))(v33, v34);
    v40 = v39;
    v41 = v82;
    v42 = v83;
    (*(v82 + 16))(v72, v39, v83);
    sub_6620C(&qword_3BC240);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2E3F30;
    sub_691F8(&v92, v43 + 32);
    v44 = v84;
    sub_2C4D18();
    v45 = v80;
    v90 = v80;
    v91 = &protocol witness table for CompoundAction;
    v46 = sub_720C8(&v89);
    v47 = v79;
    (*(v79 + 16))(v46, v44, v45);
    v48 = v62;
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      sub_DA510();
      v51 = v63;
      v52 = v65;
      sub_2C4DB8();
      sub_2C5228();
      sub_2C4DB8();
      v78 = v88;
      v53 = v66;
      sub_2C5218();
      v54 = v67;
      v55 = v68;
      (*(v67 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v68);
      sub_2C4F28();

      v56 = v53;
      v40 = v81;
      v57 = v55;
      v42 = v83;
      (*(v54 + 8))(v56, v57);
      v41 = v82;
      v58 = v52;
      v44 = v84;
      (*(v64 + 8))(v51, v58);
    }

    else
    {
    }

    (*(v47 + 8))(v44, v45);
    (*(v41 + 8))(v40, v42);
    sub_68CD0(&v92);
    sub_68CD0(&v89);
  }

  else
  {

    sub_69198(&v89, &unk_3BDC90);
  }

  sub_68CD0(v95);
  return v86(v87);
}

uint64_t sub_E4010(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_E466C, v4);
}

void sub_E40A4(uint64_t a1, uint64_t a2)
{
  sub_66278(0, &qword_3C0240);
  isa = sub_2C5B18().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_E4120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMenuBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E4178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2C5C18();
  *(v4 + 24) = sub_2C5C08();
  v6 = sub_2C5BB8();

  return _swift_task_switch(sub_E4210, v6, v5);
}

uint64_t sub_E4210()
{
  v1 = *(v0 + 16);

  v2 = sub_E2F24();
  [v1 setMenu:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_E43C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_E4178(a1, v4, v5, v6);
}

uint64_t sub_E4478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_E2940(a1, v4, v5, v6);
}

uint64_t sub_E452C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3C2550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E459C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E45D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E461C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E4634()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_E4684()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_E4A14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E470C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_E4848(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_E4A14()
{
  if (!qword_3C02D8)
  {
    sub_2C54D8();
    v0 = sub_2C5B98();
    if (!v1)
    {
      atomic_store(v0, &qword_3C02D8);
    }
  }
}

BOOL sub_E4A6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3895C0;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  return v4 != 0;
}

uint64_t sub_E4AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E4B28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E4B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_E4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL sub_E4C74@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E4A6C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_E4CEC@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E4A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E4D20@<X0>(_BYTE *a1@<X8>)
{
  result = static Shelf.ValidationError.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E4D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_E4DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_E4DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  type metadata accessor for IntentResultWithMetrics.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_2C64E8();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v26 = &v20 - v6;
  v23 = *(a2 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntentResultWithMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_691F8(a1, &v27);
  v14 = v28;
  sub_2C5CD8();
  if (!v14)
  {
    v20 = v11;
    v28 = v10;
    (*(v23 + 32))(v13, v9, a2);
    sub_72084(a1, a1[3]);
    sub_2C67A8();
    sub_6620C(&qword_3C02E0);
    sub_E5304();
    v15 = v22;
    sub_2C6458();
    if (v27)
    {
      v19 = v27;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    (*(v21 + 8))(v26, v15);
    v16 = v25;
    v17 = v20;
    *&v13[*(v28 + 36)] = v19;
    (*(v17 + 32))(v16, v13);
  }

  return sub_68CD0(a1);
}

unint64_t sub_E5304()
{
  result = qword_3C02E8[0];
  if (!qword_3C02E8[0])
  {
    sub_718D4(&qword_3C02E0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C02E8);
  }

  return result;
}

uint64_t SeriesRoomListHeaderComponentModel.segmentedControlViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3C0370);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double SeriesRoomListHeaderComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SeriesRoomListHeaderComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2C5018();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata accessor for SeriesRoomListHeaderComponentModel()
{
  result = qword_3C03D8;
  if (!qword_3C03D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E55AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0370);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E5638(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0370);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_E56B4()
{
  sub_E5720();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_E5720()
{
  if (!qword_3C03E8)
  {
    type metadata accessor for SeriesRoomListHeaderSegmentedItem();
    sub_E57B4(&unk_3C03F0, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v0 = sub_2C1C68();
    if (!v1)
    {
      atomic_store(v0, &qword_3C03E8);
    }
  }
}

uint64_t sub_E57B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.contextMenuProvider(_:)()
{
  swift_getKeyPath();
  sub_2C3E78();
}

uint64_t EnvironmentValues.contextMenuProvider.getter()
{
  sub_E5A78();

  return sub_2C3108();
}

uint64_t sub_E5A14(uint64_t a1)
{
  sub_691F8(a1, v3);
  sub_691F8(v3, &v2);
  sub_E5A78();
  sub_2C3118();
  return sub_68CD0(v3);
}

unint64_t sub_E5A78()
{
  result = qword_3C0420;
  if (!qword_3C0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0420);
  }

  return result;
}

uint64_t EnvironmentValues.contextMenuProvider.setter(uint64_t a1)
{
  sub_691F8(a1, v3);
  sub_E5A78();
  sub_2C3118();
  return sub_68CD0(a1);
}

uint64_t View.contextMenuProvider(from:)()
{
  swift_getKeyPath();
  sub_6620C(&qword_3BF730);
  sub_2C4E28();
  sub_2C5668();
  sub_2C3E78();

  return sub_68CD0(v1);
}

void View.contextMenuSourceViewController(from:)()
{
  sub_6620C(&qword_3BCE30);
  sub_2C4DB8();
  type metadata accessor for NavigationProvider();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2C3E78();
}

uint64_t (*sub_E5D38())()
{
  sub_E61A4();
  sub_2C3108();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_E63F4;
}

double sub_E5DC0@<D0>(_OWORD *a1@<X8>)
{
  sub_E61A4();
  sub_2C3108();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_E5E10@<D0>(_OWORD *a1@<X8>)
{
  sub_E61A4();
  sub_2C3108();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_E5E60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_E63B4;
    *(v4 + 24) = v3;
  }

  sub_77DF4(v1);
  sub_E61A4();
  return sub_2C3118();
}

uint64_t sub_E5F28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E5F60@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_E5FAC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.contextMenuProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_E5A78();
  sub_2C3108();
  return sub_E6084;
}

void sub_E6084(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_691F8(*a1, v2 + 40);
    sub_691F8(v2 + 40, v2 + 80);
    sub_2C3118();
    sub_68CD0(v2 + 40);
  }

  else
  {
    sub_691F8(*a1, v2 + 40);
    sub_2C3118();
  }

  sub_68CD0(v2);

  free(v2);
}

void (*EnvironmentValues.contextMenuSourceViewController.getter())(void *__return_ptr, uint64_t)
{
  sub_E61A4();
  v0 = sub_2C3108();
  v1 = v3;
  if (!v3)
  {
    return 0;
  }

  v3(&v3, v0);
  sub_77BDC(v1);
  return v3;
}

unint64_t sub_E61A4()
{
  result = qword_3C0428;
  if (!qword_3C0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0428);
  }

  return result;
}

uint64_t sub_E6240(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_718D4(a2);
  sub_2C2A08();
  sub_E62D8(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_E62D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E634C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E6384@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

__n128 sub_E63F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_E6414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E645C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_E64B8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, v25[2] + 1, 1);
          v25 = v41;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        v25[2] = v28 + 1;
        v38 = v25;
        v24(v25 + v15 + v28 * v16, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

void sub_E67A0(uint64_t a1@<X8>)
{
  v85 = a1;
  v91 = sub_6620C(&qword_3C0478);
  __chkstk_darwin(v91);
  v90 = &v85 - v2;
  v3 = sub_6620C(&qword_3C0480);
  __chkstk_darwin(v3 - 8);
  v104 = (&v85 - v4);
  v103 = sub_2BF7F8();
  v115 = *(v103 - 8);
  __chkstk_darwin(v103);
  v89 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_6620C(&qword_3C0488);
  __chkstk_darwin(v98);
  v97 = &v85 - v6;
  v7 = sub_6620C(&qword_3C0490);
  __chkstk_darwin(v7 - 8);
  v102 = &v85 - v8;
  v101 = sub_2BF208();
  v112 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BE588();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v106 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v13 - 8);
  v109 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = *(v1 + 16);
  v125 = &_swiftEmptySetSingleton;
  v19 = *(v18 + 16);
  v105 = v10;
  if (!v19)
  {
    v111 = _swiftEmptyArrayStorage;
LABEL_15:
    v28 = v111;
    v29 = v111[2];
    if (!v29)
    {
LABEL_65:

      v84 = type metadata accessor for FinishedSeriesHighlight(0);
      (*(*(v84 - 8) + 56))(v85, 1, 1, v84);
      return;
    }

    v99 = 0;
    v114 = v111 + 4;
    v113 = (v11 + 48);
    v110 = (v11 + 32);
    v100 = (v112 + 7);
    v107 = (v11 + 8);
    v95 = (v115 + 56);
    v88 = (v115 + 32);
    v87 = (v115 + 16);
    v86 = (v115 + 8);
    v94 = (v112 + 4);
    v93 = (v112 + 2);
    v92 = (v112 + 1);
    v30 = v106;
    v31 = v109;
    while (1)
    {
      if (v29 > v28[2])
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      --v29;
      sub_691F8(&v114[5 * v29], &v123);
      sub_72084(&v123, v124);
      sub_2BF978();
      if ((*v113)(v31, 1, v10) != 1)
      {
        break;
      }

      sub_69198(v31, &qword_3BC418);
LABEL_18:
      sub_68CD0(&v123);
      if (!v29)
      {
        goto LABEL_65;
      }
    }

    v115 = v29;
    v108 = *v110;
    v108(v30, v31, v10);
    sub_72084(&v123, v124);
    v32 = v30;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v34 = sub_2C60B8();
    v112 = &v85;
    v35 = *(v34 - 8);
    __chkstk_darwin(v34);
    v37 = &v85 - v36;
    sub_2BF388();
    v38 = v10;
    v39 = *(AssociatedTypeWitness - 8);
    if ((*(v39 + 48))(v37, 1, AssociatedTypeWitness) == 1)
    {
      (*v107)(v32, v38);
      (*(v35 + 8))(v37, v34);
      v116 = 0u;
      v117 = 0u;
      v118 = 0;
      v10 = v38;
      v30 = v32;
    }

    else
    {
      v120 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_720C8(&v119);
      (*(v39 + 32))();
      sub_2BF578();
      sub_68CD0(&v119);
      if (*(&v117 + 1))
      {
        sub_68D1C(&v116, &v122);
        sub_691F8(&v122, &v116);
        sub_6620C(&qword_3C0498);
        v40 = v102;
        v41 = v101;
        v42 = swift_dynamicCast();
        v43 = *v100;
        v44 = v104;
        v45 = v103;
        v10 = v105;
        v30 = v106;
        v28 = v111;
        if (v42)
        {
          v43(v40, 0, 1, v41);
          v46 = v96;
          (*v94)(v96, v40, v41);
          (*v93)(v97, v46, v41);
          swift_storeEnumTagMultiPayload();
          v120 = sub_2BF228();
          AssociatedConformanceWitness = sub_EF588(&qword_3C04A8, &type metadata accessor for BookSeriesInfo);
          sub_720C8(&v119);
          sub_2BF218();
          (*v92)(v46, v41);
        }

        else
        {
          v43(v40, 1, 1, v41);
          sub_69198(v40, &qword_3C0490);
          sub_691F8(&v122, &v116);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_68CD0(&v122);
            (*v107)(v30, v10);
            (*v95)(v44, 1, 1, v45);
            v47 = v44;
            v48 = &qword_3C0480;
            goto LABEL_28;
          }

          (*v95)(v44, 0, 1, v45);
          v49 = v89;
          (*v88)(v89, v44, v45);
          (*v87)(v90, v49, v45);
          swift_storeEnumTagMultiPayload();
          v120 = sub_2BF6F8();
          AssociatedConformanceWitness = sub_EF588(&qword_3C04A0, &type metadata accessor for AudiobookSeriesInfo);
          sub_720C8(&v119);
          sub_2BF6E8();
          (*v86)(v49, v45);
        }

        sub_72084(&v119, v120);
        if (sub_2BF348())
        {
          sub_72084(&v123, v124);
          v50 = sub_2BF998();
          v52 = v51;
          sub_72084(&v119, v120);
          v53 = sub_2BF2C8();
          v55 = v54;
          sub_68CD0(&v122);
          if (v55)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53;
          }

          v57 = __OFSUB__(v56, 1);
          v58 = v56 - 1;
          if (v57)
          {
            goto LABEL_69;
          }

          if ((v52 & 1) == 0 && v50 == v58)
          {

            v79 = v85;
            sub_691F8(&v119, v85);
            v80 = type metadata accessor for FinishedSeriesHighlight(0);
            v81 = v79 + *(v80 + 20);
            v82 = v30;
            v83 = v10;
LABEL_64:
            v108(v81, v82, v83);
            sub_68CD0(&v119);
            (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
            sub_68CD0(&v123);
            return;
          }

          (*v107)(v30, v10);
LABEL_40:
          sub_68CD0(&v119);
        }

        else
        {
          v59 = v125;
          sub_72084(&v119, v120);
          v60 = sub_2BF3B8();
          v62 = v61;
          v29 = v115;
          if (*(v59 + 2))
          {
            v63 = v60;
            sub_2C6738();
            sub_2C5958();
            v64 = sub_2C6778();
            v65 = -1 << v59[32];
            v66 = v64 & ~v65;
            if ((*&v59[((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v66))
            {
              v67 = ~v65;
              while (1)
              {
                v68 = (*(v59 + 6) + 16 * v66);
                v69 = *v68 == v63 && v68[1] == v62;
                if (v69 || (sub_2C65B8() & 1) != 0)
                {
                  break;
                }

                v66 = (v66 + 1) & v67;
                if (((*&v59[((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v66) & 1) == 0)
                {
                  goto LABEL_50;
                }
              }

              sub_68CD0(&v122);
              v30 = v106;
              (*v107)(v106, v10);
              sub_68CD0(&v119);
              v31 = v109;
              goto LABEL_18;
            }
          }

LABEL_50:

          sub_72084(&v119, v120);
          v70 = v99;
          sub_2BF328();
          if (!v70)
          {
            swift_getAssociatedTypeWitness();
            sub_6620C(&qword_3BC2C8);
            v71 = sub_2C6358();

            v72 = v71 + 32;
            v73 = -*(v71 + 16);
            v74 = -1;
            while (v73 + v74 != -1)
            {
              if (++v74 >= *(v71 + 16))
              {
                goto LABEL_67;
              }

              sub_691F8(v72, &v116);
              sub_72084(&v116, *(&v117 + 1));
              v75 = sub_2BF918();
              if (v75 == 2)
              {
                v99 = 0;

                sub_68CD0(&v116);
                goto LABEL_61;
              }

              v76 = v75;
              v72 += 40;
              sub_68CD0(&v116);
              if ((v76 & 1) == 0)
              {
                v99 = 0;

LABEL_61:
                sub_72084(&v119, v120);
                v77 = sub_2BF3B8();
                sub_2B364C(&v116, v77, v78);

                sub_68CD0(&v122);
                v30 = v106;
                v10 = v105;
                (*v107)(v106, v105);
                goto LABEL_40;
              }
            }

            sub_68CD0(&v122);

            v79 = v85;
            sub_691F8(&v119, v85);
            v80 = type metadata accessor for FinishedSeriesHighlight(0);
            v81 = v79 + *(v80 + 20);
            v82 = v106;
            v83 = v105;
            goto LABEL_64;
          }

          sub_68CD0(&v122);
          v30 = v106;
          (*v107)(v106, v10);
          sub_68CD0(&v119);

          v99 = 0;
        }

        goto LABEL_29;
      }

      v30 = v106;
      v10 = v105;
      (*v107)(v106, v105);
    }

    v28 = v111;
    v47 = &v116;
    v48 = &qword_3BDAC8;
LABEL_28:
    sub_69198(v47, v48);
LABEL_29:
    v31 = v109;
    v29 = v115;
    goto LABEL_18;
  }

  v20 = 0;
  v21 = v18 + 32;
  v111 = _swiftEmptyArrayStorage;
  while (v20 < *(v18 + 16))
  {
    sub_691F8(v21, &v116);
    sub_72084(&v116, *(&v117 + 1));
    v22 = sub_2BF9B8();
    if (v22 == 2 || (v22 & 1) == 0 || (sub_72084(&v116, *(&v117 + 1)), sub_2BF978(), v23 = (*(v11 + 48))(v17, 1, v10), sub_69198(v17, &qword_3BC418), v23 == 1))
    {
      sub_68CD0(&v116);
    }

    else
    {
      sub_68D1C(&v116, &v123);
      v24 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_64808(0, v24[2] + 1, 1);
        v24 = v122;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        sub_64808((v26 > 1), v27 + 1, 1);
        v24 = v122;
      }

      v24[2] = v27 + 1;
      v111 = v24;
      sub_68D1C(&v123, &v24[5 * v27 + 4]);
      v10 = v105;
    }

    ++v20;
    v21 += 40;
    if (v19 == v20)
    {
      goto LABEL_15;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_E79E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3C04C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v6 = sub_2BF4A8();
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BF408();
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v5;
  v16 = a1;
  v18 = &v49 - v17;
  v19 = v8;
  v21 = *v1;
  v20 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = *(v1 + 32);
  v26 = v1[5];
  v25 = v1[6];
  v58 = v27;
  v59 = v16;
  v57 = v19;
  if (v25 == 2)
  {
    v49 = 2;
    v50 = v26;
    v51 = v24;
    v52 = v22;
    v53 = v20;
    v54 = v21;
    v55 = v15;
    v56 = v14;
    v28 = *(v23 + 16);
    result = v23 + 32;
    v61 = enum case for ContentKind.audiobook(_:);
    v60 = (v13 + 104);
    v30 = (v13 + 8);
    v62 = -v28;
    v31 = -1;
    while (1)
    {
      if (v62 + v31 == -1)
      {
        v15 = v55;
        v14 = v56;
        v20 = v53;
        v21 = v54;
        v22 = v52;
        LOBYTE(v24) = v51;
        v25 = v49;
        v26 = v50;
        goto LABEL_8;
      }

      if (++v31 >= *(v23 + 16))
      {
        break;
      }

      v32 = result + 40;
      sub_691F8(result, &v63);
      sub_72084(&v63, v66);
      sub_2BF8E8();
      (*v60)(v11, v61, v9);
      v33 = sub_2BF3F8();
      v34 = *v30;
      (*v30)(v11, v9);
      v34(v18, v9);
      sub_68CD0(&v63);
      result = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v35 = v14;
    v36 = v15;
    v63 = v21;
    v64 = v20;
    v65 = v23;
    v66 = v22;
    LOBYTE(v67) = v24;
    v68 = v26;
    v69 = v25;
    v37 = v25;
    sub_E7E5C();
    if ((v39 & 1) == 0)
    {
      v62 = v38;
      v63 = v21;
      v64 = v20;
      v65 = v23;
      v66 = v22;
      LOBYTE(v67) = v24;
      v68 = v26;
      v69 = v37;
      v40 = v36;
      sub_E8404(v36);
      v41 = v35;
      v42 = v58;
      if ((*(v35 + 48))(v40, 1, v58) != 1)
      {
        v44 = v57;
        v45 = *(v41 + 32);
        v45(v57, v40, v42);
        v46 = type metadata accessor for LongestAudiobookHighlight(0);
        v47 = *(v46 + 20);
        v48 = v59;
        v45((v59 + v47), v44, v42);
        (*(v41 + 56))(v48 + v47, 0, 1, v42);
        *v48 = v62;
        *(v48 + 8) = 0;
        return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
      }

      sub_69198(v40, &qword_3C04C8);
    }

LABEL_11:
    v43 = type metadata accessor for LongestAudiobookHighlight(0);
    return (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  }

  return result;
}

void sub_E7E5C()
{
  v1 = sub_6620C(&qword_3C04C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_2BF4A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v45 - v8;
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v13 = __chkstk_darwin(v11);
  v14 = &v45 - v12;
  v15 = *(v0 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    v18 = (v5 + 56);
    v52 = (v5 + 32);
    v19 = _swiftEmptyArrayStorage;
    v48 = (v5 + 56);
    v49 = &v45 - v12;
    do
    {
      sub_691F8(v17, v55);
      sub_68D1C(v55, v54);
      sub_6620C(&qword_3BC2C8);
      v20 = swift_dynamicCast();
      (*v18)(v3, v20 ^ 1u, 1, v4);
      if ((*(v5 + 6))(v3, 1, v4) == 1)
      {
        sub_69198(v3, &qword_3C04C8);
      }

      else
      {
        v21 = *v52;
        (*v52)(v14, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_5BE90(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_5BE90(v22 > 1, v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        v24 = &v19[((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v23];
        v14 = v49;
        v21(v24, v49, v4);
        v18 = v48;
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v25 = *(v19 + 2);
  if (v25)
  {
    v26 = 0;
    v52 = (v5 + 32);
    v46 = (v5 + 8);
    v27 = _swiftEmptyArrayStorage;
    v48 = v25;
    v49 = v5;
    v28 = v50;
    v47 = v5 + 16;
    while (v26 < *(v19 + 2))
    {
      v29 = (v5[80] + 32) & ~v5[80];
      v30 = *(v5 + 9);
      (*(v5 + 2))(v28, &v19[v29 + v30 * v26], v4, v13);
      sub_2BF488();
      if (v31)
      {
        (*v46)(v28, v4);
      }

      else
      {
        v32 = *v52;
        (*v52)(v53, v28, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v55[0] = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_648AC(0, *(v27 + 2) + 1, 1);
          v27 = *&v55[0];
        }

        v35 = *(v27 + 2);
        v34 = *(v27 + 3);
        if (v35 >= v34 >> 1)
        {
          sub_648AC(v34 > 1, v35 + 1, 1);
          v27 = *&v55[0];
        }

        *(v27 + 2) = v35 + 1;
        v32(&v27[v29 + v35 * v30], v53, v4);
        v5 = v49;
        v28 = v50;
        v25 = v48;
      }

      if (v25 == ++v26)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_24:

    *&v55[0] = v27;
    sub_6620C(&qword_3C04D8);
    sub_EF5D0(&qword_3C04E0, &qword_3C04D8);
    v36 = sub_2C5D28();
    if (v36)
    {
      LODWORD(v53) = v36;
      v37 = 0;
      v38 = 0;
      v39 = *(v27 + 2);
      while (v39 != v37)
      {
        if (v37 >= *(v27 + 2))
        {
          goto LABEL_35;
        }

        v40 = v51;
        (*(v5 + 2))(v51, &v27[((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * v37], v4);
        v41 = sub_2BF488();
        if (v42)
        {
          goto LABEL_36;
        }

        v43 = v41;
        ++v37;
        (*(v5 + 1))(v40, v4);
        v44 = __OFADD__(v38, v43);
        v38 += v43;
        if (v44)
        {
          __break(1u);
          break;
        }
      }
    }
  }
}

uint64_t sub_E8404@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v3 - 8);
  v99 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v88 - v6;
  __chkstk_darwin(v7);
  v103 = &v88 - v8;
  v101 = sub_2BE588();
  v92 = *(v101 - 8);
  __chkstk_darwin(v101);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v88 - v11;
  v12 = sub_6620C(&qword_3C04C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v88 - v13;
  v15 = sub_2BF4A8();
  __chkstk_darwin(v15);
  v105 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v88 - v18;
  __chkstk_darwin(v19);
  v104 = &v88 - v20;
  __chkstk_darwin(v21);
  v110 = &v88 - v22;
  __chkstk_darwin(v23);
  v25 = &v88 - v24;
  __chkstk_darwin(v26);
  v106 = &v88 - v27;
  __chkstk_darwin(v28);
  v98 = &v88 - v29;
  v32 = __chkstk_darwin(v30);
  v89 = &v88 - v33;
  v34 = *(v1 + 16);
  v35 = *(v34 + 16);
  v109 = v31;
  v88 = a1;
  if (v35)
  {
    v36 = v34 + 32;
    v37 = (v31 + 56);
    v38 = (v31 + 48);
    v39 = (v31 + 32);
    v111 = _swiftEmptyArrayStorage;
    v40 = &qword_3BC2C8;
    v107 = (v31 + 32);
    v108 = v25;
    do
    {
      sub_691F8(v36, &v113);
      sub_68D1C(&v113, v112);
      sub_6620C(v40);
      v41 = swift_dynamicCast();
      (*v37)(v14, v41 ^ 1u, 1, v15);
      if ((*v38)(v14, 1, v15) == 1)
      {
        sub_69198(v14, &qword_3C04C8);
      }

      else
      {
        v42 = v40;
        v43 = *v39;
        (*v39)(v25, v14, v15);
        v44 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_5BE90(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        v111 = v44;
        if (v46 >= v45 >> 1)
        {
          v111 = sub_5BE90(v45 > 1, v46 + 1, 1, v111);
        }

        v47 = v111;
        v111[2] = v46 + 1;
        v48 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v46;
        v39 = v107;
        v25 = v108;
        v43(v48, v108, v15);
        v40 = v42;
      }

      v36 += 40;
      --v35;
    }

    while (v35);
  }

  else
  {
    v111 = _swiftEmptyArrayStorage;
  }

  v49 = v111;
  v50 = v111[2];
  if (!v50)
  {

    return (*(v109 + 56))(v88, 1, 1, v15);
  }

  v51 = v109;
  v52 = *(v109 + 16);
  v93 = ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v53 = v93 + v111;
  v107 = v52;
  v108 = (v109 + 16);
  result = (v52)(v106, v93 + v111, v15, v32);
  if (v50 == 1)
  {
LABEL_14:
    v55 = *(v51 + 32);
    v56 = v98;
    v55(v98, v106, v15);
    v57 = v89;
    v97 = v51 + 32;
    v96 = v55;
    v58 = (v55)(v89, v56, v15);
    __chkstk_darwin(v58);
    *(&v88 - 2) = v57;
    sub_E64B8(sub_EF4E4, (&v88 - 4), v49, &type metadata accessor for AudiobookInfo, sub_648AC);
    v110 = v59;
    v60 = *(v59 + 2);
    if (!v60)
    {

      v63 = 1;
      v62 = v88;
      goto LABEL_31;
    }

    v106 = v93 + v110;
    result = (v107)(v104);
    v61 = v102;
    if (v60 == (&dword_0 + 1))
    {
LABEL_16:

      v62 = v88;
      v96(v88, v104, v15);
      v63 = 0;
LABEL_31:
      (*(v51 + 56))(v62, v63, 1, v15);
      return (*(v51 + 8))(v89, v15);
    }

    v73 = v92;
    v111 = (v92 + 48);
    v92 += 8;
    v74 = (v51 + 8);
    v75 = 1;
    v100 = v60;
    v93 = (v73 + 32);
    v91 = (v51 + 8);
    while (1)
    {
      if (v75 >= *(v110 + 2))
      {
        goto LABEL_44;
      }

      v76 = v107;
      (v107)(v61, &v106[*(v51 + 72) * v75], v15);
      (v76)(v105, v104, v15);
      sub_EF588(&qword_3C04D0, &type metadata accessor for AudiobookInfo);
      v77 = v103;
      sub_2BF978();
      v78 = *v111;
      v79 = v101;
      if ((*v111)(v77, 1, v101) != 1)
      {
        v80 = v94;
        v98 = *v93;
        (v98)(v94, v103, v79);
        v81 = v95;
        sub_2BF978();
        if (v78(v81, 1, v79) != 1)
        {
          v84 = v90;
          (v98)(v90, v81, v79);
          v83 = sub_2BE508();
          v85 = *v92;
          (*v92)(v84, v79);
          v85(v80, v79);
          v74 = v91;
          goto LABEL_41;
        }

        (*v92)(v80, v79);
        v77 = v81;
        v74 = v91;
      }

      sub_69198(v77, &qword_3BC418);
      v82 = v99;
      sub_2BF978();
      v83 = v78(v82, 1, v79) != 1;
      sub_69198(v82, &qword_3BC418);
LABEL_41:
      v86 = *v74;
      (*v74)(v105, v15);
      v51 = v109;
      if (v83)
      {
        v87 = v104;
        v86(v104, v15);
        v61 = v102;
        result = (v96)(v87, v102, v15);
      }

      else
      {
        v61 = v102;
        result = (v86)(v102, v15);
      }

      if (v100 == ++v75)
      {
        goto LABEL_16;
      }
    }
  }

  v64 = (v51 + 8);
  v100 = (v51 + 32);
  v65 = 1;
  v66 = v110;
  while (v65 < v49[2])
  {
    (v107)(v66, &v53[*(v51 + 72) * v65], v15);
    v68 = sub_2BF488();
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    v71 = sub_2BF488();
    if (v72)
    {
      if ((v70 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v70 >= v71)
    {
LABEL_29:
      result = (*v64)(v110, v15);
      goto LABEL_20;
    }

    v67 = v106;
    (*v64)(v106, v15);
    result = (*v100)(v67, v110, v15);
LABEL_20:
    ++v65;
    v49 = v111;
    if (v50 == v65)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_E8F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2BF408();
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + 32);
  v15 = v1[5];
  v16 = v1[6];
  if (v16 == 2)
  {
    v32 = 2;
    v33 = v15;
    v34 = v14;
    v35 = v13;
    v36 = v11;
    v37 = v10;
    v38 = a1;
    v17 = *(v12 + 16);
    result = v12 + 32;
    v40 = enum case for ContentKind.audiobook(_:);
    v39 = (v7 + 104);
    v19 = (v7 + 8);
    v41 = -v17;
    v20 = -1;
    while (1)
    {
      if (v41 + v20 == -1)
      {
        v10 = v37;
        a1 = v38;
        v13 = v35;
        v11 = v36;
        LOBYTE(v14) = v34;
        v15 = v33;
        v16 = v32;
        goto LABEL_8;
      }

      if (++v20 >= *(v12 + 16))
      {
        break;
      }

      v21 = v12;
      v22 = result + 40;
      sub_691F8(result, v49);
      sub_72084(v49, v50);
      sub_2BF8E8();
      (*v39)(v5, v40, v3);
      sub_EF588(&qword_3C04B0, &type metadata accessor for ContentKind);
      v23 = sub_2C5878();
      v24 = *v19;
      (*v19)(v5, v3);
      v24(v9, v3);
      sub_68CD0(v49);
      result = v22;
      v12 = v21;
      if (v23)
      {
        v25 = type metadata accessor for LongestBookHighlight(0);
        return (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v49[0] = v10;
    v49[1] = v11;
    v49[2] = v12;
    v50 = v13;
    LOBYTE(v51) = v14;
    v52 = v15;
    v53 = v16;
    v26 = v15;
    v27 = v16;
    v41 = sub_E92B0();
    v42 = v10;
    v29 = v28;
    v43 = v11;
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v26;
    v48 = v27;
    v30 = type metadata accessor for LongestBookHighlight(0);
    sub_E9760(a1 + *(v30 + 20));
    *a1 = v41;
    *(a1 + 8) = v29 & 1;
    return (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  }

  return result;
}

uint64_t sub_E92B0()
{
  v1 = sub_6620C(&qword_3BDCC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = sub_2BF258();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v10 = &v46 - v8;
  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v14 = (v5 + 7);
    v15 = (v5 + 6);
    v48 = (v5 + 4);
    v16 = _swiftEmptyArrayStorage;
    v17 = &qword_3BC2C8;
    v46 = &v46 - v8;
    v47 = v5;
    do
    {
      sub_691F8(v13, v51);
      sub_68D1C(v51, v50);
      sub_6620C(v17);
      v18 = swift_dynamicCast();
      (*v14)(v3, v18 ^ 1u, 1, v4);
      if ((*v15)(v3, 1, v4) == 1)
      {
        sub_69198(v3, &qword_3BDCC0);
      }

      else
      {
        v19 = v17;
        v20 = *v48;
        (*v48)(v49, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_5BFBC(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        v23 = v16;
        if (v22 >= v21 >> 1)
        {
          v23 = sub_5BFBC(v21 > 1, v22 + 1, 1, v16);
        }

        *(v23 + 16) = v22 + 1;
        v16 = v23;
        v24 = v23 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v47[9] * v22;
        v5 = v47;
        v20(v24, v49, v4);
        v17 = v19;
        v10 = v46;
      }

      v13 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v25 = v16[2];
  if (v25)
  {
    v28 = v5[2];
    v26 = v5 + 2;
    v27 = v28;
    v29 = *(v26 + 64);
    v47 = v16;
    v30 = v16 + ((v29 + 32) & ~v29);
    v49 = v26[7];
    v31 = _swiftEmptyArrayStorage;
    v48 = v28;
    (v28)(v10, v30, v4, v9);
    while (1)
    {
      v32 = sub_2BF248();
      v34 = v33;
      (*(v26 - 1))(v10, v4);
      if ((v34 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_5BEB8(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_5BEB8((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        *&v31[8 * v37 + 32] = v32;
        v27 = v48;
      }

      v30 = &v49[v30];
      if (!--v25)
      {
        break;
      }

      (v27)(v10, v30, v4, v35);
    }
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  *&v51[0] = v31;
  sub_6620C(&qword_3BDEF8);
  sub_EF5D0(&qword_3C04C0, &qword_3BDEF8);
  *&result = COERCE_DOUBLE(sub_2C5D28());
  if (result)
  {
    v39 = *(v31 + 2);
    if (v39)
    {
      v40 = 0;
      v41 = 32;
      v42 = *(v31 + 2);
      while (1)
      {
        v43 = *&v31[v41];
        v44 = __OFADD__(v40, v43);
        v40 += v43;
        if (v44)
        {
          break;
        }

        v41 += 8;
        if (!--v42)
        {

          v45 = v40;
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {

      v45 = 0.0;
LABEL_32:
      *&result = v45 / v39;
    }
  }

  else
  {

    *&result = 0.0;
  }

  return result;
}

uint64_t sub_E9760@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v3 - 8);
  v99 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v88 - v6;
  __chkstk_darwin(v7);
  v103 = &v88 - v8;
  v101 = sub_2BE588();
  v92 = *(v101 - 8);
  __chkstk_darwin(v101);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v88 - v11;
  v12 = sub_6620C(&qword_3BDCC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v88 - v13;
  v15 = sub_2BF258();
  __chkstk_darwin(v15);
  v105 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v88 - v18;
  __chkstk_darwin(v19);
  v104 = &v88 - v20;
  __chkstk_darwin(v21);
  v110 = &v88 - v22;
  __chkstk_darwin(v23);
  v25 = &v88 - v24;
  __chkstk_darwin(v26);
  v106 = &v88 - v27;
  __chkstk_darwin(v28);
  v98 = &v88 - v29;
  v32 = __chkstk_darwin(v30);
  v89 = &v88 - v33;
  v34 = *(v1 + 16);
  v35 = *(v34 + 16);
  v109 = v31;
  v88 = a1;
  if (v35)
  {
    v36 = v34 + 32;
    v37 = (v31 + 56);
    v38 = (v31 + 48);
    v39 = (v31 + 32);
    v111 = _swiftEmptyArrayStorage;
    v40 = &qword_3BC2C8;
    v107 = (v31 + 32);
    v108 = v25;
    do
    {
      sub_691F8(v36, &v113);
      sub_68D1C(&v113, v112);
      sub_6620C(v40);
      v41 = swift_dynamicCast();
      (*v37)(v14, v41 ^ 1u, 1, v15);
      if ((*v38)(v14, 1, v15) == 1)
      {
        sub_69198(v14, &qword_3BDCC0);
      }

      else
      {
        v42 = v40;
        v43 = *v39;
        (*v39)(v25, v14, v15);
        v44 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_5BFBC(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        v111 = v44;
        if (v46 >= v45 >> 1)
        {
          v111 = sub_5BFBC(v45 > 1, v46 + 1, 1, v111);
        }

        v47 = v111;
        v111[2] = v46 + 1;
        v48 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v46;
        v39 = v107;
        v25 = v108;
        v43(v48, v108, v15);
        v40 = v42;
      }

      v36 += 40;
      --v35;
    }

    while (v35);
  }

  else
  {
    v111 = _swiftEmptyArrayStorage;
  }

  v49 = v111;
  v50 = v111[2];
  if (!v50)
  {

    return (*(v109 + 56))(v88, 1, 1, v15);
  }

  v51 = v109;
  v52 = *(v109 + 16);
  v93 = ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v53 = v93 + v111;
  v107 = v52;
  v108 = (v109 + 16);
  result = (v52)(v106, v93 + v111, v15, v32);
  if (v50 == 1)
  {
LABEL_14:
    v55 = *(v51 + 32);
    v56 = v98;
    v55(v98, v106, v15);
    v57 = v89;
    v97 = v51 + 32;
    v96 = v55;
    v58 = (v55)(v89, v56, v15);
    __chkstk_darwin(v58);
    *(&v88 - 2) = v57;
    sub_E64B8(sub_EF494, (&v88 - 4), v49, &type metadata accessor for BookInfo, sub_648F0);
    v110 = v59;
    v60 = *(v59 + 2);
    if (!v60)
    {

      v63 = 1;
      v62 = v88;
      goto LABEL_31;
    }

    v106 = v93 + v110;
    result = (v107)(v104);
    v61 = v102;
    if (v60 == (&dword_0 + 1))
    {
LABEL_16:

      v62 = v88;
      v96(v88, v104, v15);
      v63 = 0;
LABEL_31:
      (*(v51 + 56))(v62, v63, 1, v15);
      return (*(v51 + 8))(v89, v15);
    }

    v73 = v92;
    v111 = (v92 + 48);
    v92 += 8;
    v74 = (v51 + 8);
    v75 = 1;
    v100 = v60;
    v93 = (v73 + 32);
    v91 = (v51 + 8);
    while (1)
    {
      if (v75 >= *(v110 + 2))
      {
        goto LABEL_44;
      }

      v76 = v107;
      (v107)(v61, &v106[*(v51 + 72) * v75], v15);
      (v76)(v105, v104, v15);
      sub_EF588(&qword_3C04B8, &type metadata accessor for BookInfo);
      v77 = v103;
      sub_2BF978();
      v78 = *v111;
      v79 = v101;
      if ((*v111)(v77, 1, v101) != 1)
      {
        v80 = v94;
        v98 = *v93;
        (v98)(v94, v103, v79);
        v81 = v95;
        sub_2BF978();
        if (v78(v81, 1, v79) != 1)
        {
          v84 = v90;
          (v98)(v90, v81, v79);
          v83 = sub_2BE508();
          v85 = *v92;
          (*v92)(v84, v79);
          v85(v80, v79);
          v74 = v91;
          goto LABEL_41;
        }

        (*v92)(v80, v79);
        v77 = v81;
        v74 = v91;
      }

      sub_69198(v77, &qword_3BC418);
      v82 = v99;
      sub_2BF978();
      v83 = v78(v82, 1, v79) != 1;
      sub_69198(v82, &qword_3BC418);
LABEL_41:
      v86 = *v74;
      (*v74)(v105, v15);
      v51 = v109;
      if (v83)
      {
        v87 = v104;
        v86(v104, v15);
        v61 = v102;
        result = (v96)(v87, v102, v15);
      }

      else
      {
        v61 = v102;
        result = (v86)(v102, v15);
      }

      if (v100 == ++v75)
      {
        goto LABEL_16;
      }
    }
  }

  v64 = (v51 + 8);
  v100 = (v51 + 32);
  v65 = 1;
  v66 = v110;
  while (v65 < v49[2])
  {
    (v107)(v66, &v53[*(v51 + 72) * v65], v15);
    v68 = sub_2BF248();
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    v71 = sub_2BF248();
    if (v72)
    {
      if ((v70 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v70 >= v71)
    {
LABEL_29:
      result = (*v64)(v110, v15);
      goto LABEL_20;
    }

    v67 = v106;
    (*v64)(v106, v15);
    result = (*v100)(v67, v110, v15);
LABEL_20:
    ++v65;
    v49 = v111;
    if (v50 == v65)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_EA2C8()
{
  v1 = sub_6620C(&qword_3C0468);
  __chkstk_darwin(v1 - 8);
  v89 = &v74 - v2;
  v88 = type metadata accessor for GenreHighlight(0);
  v79 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v74 - v5;
  __chkstk_darwin(v6);
  v78 = &v74 - v7;
  __chkstk_darwin(v8);
  v81 = (&v74 - v9);
  v10 = sub_6620C(&qword_3C0470);
  __chkstk_darwin(v10 - 8);
  v12 = &v74 - v11;
  v93 = sub_2BFAC8();
  v13 = *(v93 - 8);
  __chkstk_darwin(v93);
  v102 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_2BE588();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v74 - v22;
  v23 = *(v0 + 16);
  v24 = *(v0 + 32);
  v25 = sub_68070(_swiftEmptyArrayStorage);
  v106 = v25;
  v26 = *(v23 + 16);
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v23 + 32;
  v28 = (v19 + 48);
  v29 = 0x3631303031;
  if (!v24)
  {
    v29 = 0;
  }

  v99 = v29;
  v100 = (v19 + 32);
  v30 = 0xE500000000000000;
  if (!v24)
  {
    v30 = 0;
  }

  v98 = v30;
  v97 = (v13 + 48);
  v92 = (v13 + 32);
  v84 = (v19 + 16);
  v83 = (v13 + 16);
  v96 = (v19 + 8);
  v91 = (v13 + 8);
  v82 = xmmword_2E3F30;
  v31 = v93;
  v32 = v95;
  v85 = v12;
  v101 = v28;
  v90 = v18;
  do
  {
    sub_691F8(v27, &v104);
    sub_72084(&v104, v105);
    sub_2BF978();
    if ((*v28)(v17, 1, v18) == 1)
    {
      sub_69198(v17, &qword_3BC418);
    }

    else
    {
      (*v100)(v32, v17, v18);
      sub_72084(&v104, v105);
      sub_2BF3A8();

      if ((*v97)(v12, 1, v31) == 1)
      {
        (*v96)(v32, v18);
        sub_69198(v12, &qword_3C0470);
      }

      else
      {
        v33 = v102;
        (*v92)(v102, v12, v31);
        v34 = sub_2BFAA8();
        if (v35)
        {
          v36 = v35;
          v37 = v106;
          v38 = *(v106 + 16);
          v94 = v34;
          if (v38 && (v39 = sub_5D228(v34, v35), (v40 & 1) != 0))
          {
            v41 = *(v37 + 56) + *(v79 + 72) * v39;
            v76 = type metadata accessor for GenreHighlight;
            v77 = v36;
            v42 = v78;
            sub_6925C(v41, v78, type metadata accessor for GenreHighlight);
            v43 = v81;
            sub_692C4(v42, v81, type metadata accessor for GenreHighlight);
            v44 = v88;
            v45 = v43 + *(v88 + 24);
            v46 = v95;
            v47 = sub_2BE508();
            v48 = *v84;
            v75 = *v84;
            if (v47)
            {
              v49 = v45;
            }

            else
            {
              v49 = v46;
            }

            v48(v80, v49, v18);
            v50 = *v43;
            sub_6620C(&qword_3BC2C0);
            inited = swift_initStackObject();
            *(inited + 16) = v82;
            sub_691F8(&v104, inited + 32);
            v103 = v50;

            sub_10F628(inited);
            v52 = v103;
            v53 = v86;
            (*v83)(&v86[*(v44 + 20)], v102, v93);
            v54 = v80;
            v75(&v53[*(v44 + 24)], v80, v18);
            *v53 = v52;
            v55 = v87;
            v56 = v76;
            sub_6925C(v53, v87, v76);
            v57 = v89;
            sub_ED618(v55, v94, v77, v89);

            v58 = v57;
            v31 = v93;
            sub_69198(v58, &qword_3C0468);
            sub_EF3F4(v53, v56);
            v59 = *v96;
            (*v96)(v54, v18);
            v32 = v95;
            (*v91)(v102, v31);
            v59(v32, v18);
            sub_EF3F4(v81, v56);
          }

          else
          {
            sub_6620C(&qword_3BC2C0);
            v60 = swift_allocObject();
            *(v60 + 16) = v82;
            sub_691F8(&v104, v60 + 32);
            v61 = v36;
            v62 = v88;
            v63 = v86;
            (*v83)(&v86[*(v88 + 20)], v102, v31);
            v64 = v95;
            (*v84)(v63 + *(v62 + 24), v95, v90);
            *v63 = v60;
            v65 = v87;
            sub_6925C(v63, v87, type metadata accessor for GenreHighlight);
            v66 = v89;
            sub_ED618(v65, v94, v61, v89);
            v18 = v90;

            sub_69198(v66, &qword_3C0468);
            v67 = v63;
            v32 = v64;
            v31 = v93;
            sub_EF3F4(v67, type metadata accessor for GenreHighlight);
            (*v91)(v102, v31);
            (*v96)(v64, v18);
          }

          v12 = v85;
        }

        else
        {
          (*v91)(v33, v31);
          v32 = v95;
          (*v96)(v95, v18);
        }
      }

      v28 = v101;
    }

    sub_68CD0(&v104);
    v27 += 40;
    --v26;
  }

  while (v26);
  v68 = v106;
  v69 = *(v106 + 16);
  if (v69)
  {
    while (1)
    {
      v70 = sub_9E238(v69, 0);
      sub_EF0E8(&v104, v70 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v69, v68);
      v72 = v71;
      swift_bridgeObjectRetain_n();
      v25 = sub_EF3EC();
      if (v72 == v69)
      {
        break;
      }

      __break(1u);
LABEL_26:
      v68 = v25;
      v69 = *(v25 + 16);
      if (!v69)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:

    v70 = _swiftEmptyArrayStorage;
  }

  v104 = v70;
  sub_ECC18(&v104);
  swift_bridgeObjectRelease_n();
  return v104;
}

BOOL sub_EADB8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v2 != v3)
  {
    return v3 < v2;
  }

  type metadata accessor for GenreHighlight(0);
  sub_2BE588();
  sub_EF588(&qword_3BC440, &type metadata accessor for Date);
  if ((sub_2C5878() & 1) == 0)
  {
    return sub_2BE508() & 1;
  }

  v4 = sub_2BFAB8();
  v6 = v5;
  if (v4 == sub_2BFAB8() && v6 == v7)
  {

    return 0;
  }

  else
  {
    v9 = sub_2C65B8();

    return v9 & 1;
  }
}

uint64_t sub_EAF0C@<X0>(uint64_t a1@<X8>)
{
  v234 = a1;
  v248 = sub_6620C(&qword_3C0450);
  v237 = *(v248 - 8);
  __chkstk_darwin(v248);
  v240 = &v229 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v242 = &v229 - v4;
  __chkstk_darwin(v5);
  v230 = &v229 - v6;
  __chkstk_darwin(v7);
  v245 = &v229 - v8;
  __chkstk_darwin(v9);
  v244 = &v229 - v10;
  __chkstk_darwin(v11);
  v243 = &v229 - v12;
  __chkstk_darwin(v13);
  v241 = &v229 - v14;
  __chkstk_darwin(v15);
  v232 = &v229 - v16;
  __chkstk_darwin(v17);
  v231 = &v229 - v18;
  __chkstk_darwin(v19);
  v246 = &v229 - v20;
  v21 = sub_6620C(&qword_3C0458);
  __chkstk_darwin(v21 - 8);
  v233 = &v229 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v235 = &v229 - v24;
  v25 = sub_6620C(&qword_3C0460);
  __chkstk_darwin(v25 - 8);
  v236 = &v229 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v229 - v28;
  __chkstk_darwin(v30);
  v251 = &v229 - v31;
  v32 = type metadata accessor for TopAuthorHighlightData(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v270 = &v229 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v260 = &v229 - v36;
  __chkstk_darwin(v37);
  v259 = &v229 - v38;
  __chkstk_darwin(v39);
  v252 = &v229 - v40;
  __chkstk_darwin(v41);
  v258 = &v229 - v42;
  v43 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v43 - 8);
  v45 = &v229 - v44;
  v46 = sub_2BE588();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v239 = &v229 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v238 = &v229 - v50;
  __chkstk_darwin(v51);
  v257 = (&v229 - v52);
  __chkstk_darwin(v53);
  v281 = (&v229 - v54);
  v279 = sub_2BF518();
  v55 = *(v279 - 8);
  __chkstk_darwin(v279);
  v278 = &v229 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v1 + 16);
  v58 = sub_68258(_swiftEmptyArrayStorage);
  v59 = *(v57 + 16);
  v271 = v32;
  v269 = v46;
  v268 = v33;
  v229 = v47;
  v250 = v59;
  if (!v59)
  {
LABEL_43:
    sub_ECCC0(v58);
    v130 = v129;
    v131 = 1 << *(v129 + 32);
    v132 = -1;
    if (v131 < 64)
    {
      v132 = ~(-1 << v131);
    }

    v133 = v132 & *(v129 + 64);
    v280 = v129;
    v276 = 0;
    if (v133)
    {
      v134 = 0;
      v135 = __clz(__rbit64(v133));
      v136 = (v133 - 1) & v133;
      v277 = (v131 + 63) >> 6;
      v278 = (v129 + 64);
      v137 = v232;
LABEL_51:
      v143 = v130[7];
      v144 = (v130[6] + 16 * v135);
      v146 = *v144;
      v145 = v144[1];
      v279 = *(v268 + 72);
      v147 = v231;
      sub_6925C(v143 + v279 * v135, &v231[*(v248 + 48)], type metadata accessor for TopAuthorHighlightData);
      *v147 = v146;
      v147[1] = v145;
      v148 = v147;
      v149 = v246;
      sub_EF33C(v148, v246);

      if (v136)
      {
        goto LABEL_54;
      }

LABEL_55:
      while (1)
      {
        v150 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          goto LABEL_94;
        }

        if (v150 >= v277)
        {

          v141 = v235;
          sub_EF33C(v149, v235);
          v168 = 0;
          v139 = v248;
          v140 = v236;
          goto LABEL_62;
        }

        v136 = *&v278[8 * v150];
        ++v134;
        if (v136)
        {
          while (1)
          {
            v151 = __clz(__rbit64(v136));
            v136 &= v136 - 1;
            v152 = v151 | (v150 << 6);
            v153 = v130[7];
            v154 = (v130[6] + 16 * v152);
            v156 = *v154;
            v155 = v154[1];
            v157 = v248;
            v158 = v241;
            sub_6925C(v153 + v152 * v279, &v241[*(v248 + 48)], type metadata accessor for TopAuthorHighlightData);
            *v158 = v156;
            v158[1] = v155;
            sub_EF33C(v158, v137);
            v159 = v243;
            sub_6932C(v246, v243, &qword_3C0450);

            v160 = v159 + *(v157 + 48);
            v161 = v137;
            v162 = v271;
            v163 = *(v160 + *(v271 + 20));

            sub_EF3F4(v160, type metadata accessor for TopAuthorHighlightData);
            v281 = *(v163 + 16);

            v164 = v244;
            sub_6932C(v161, v244, &qword_3C0450);

            v165 = v164 + *(v157 + 48);
            v166 = *(v165 + *(v162 + 20));

            sub_EF3F4(v165, type metadata accessor for TopAuthorHighlightData);
            v167 = *(v166 + 16);

            if (v281 >= v167)
            {
              sub_69198(v161, &qword_3C0450);
              v134 = v150;
              v137 = v161;
              v149 = v246;
              v130 = v280;
              if (!v136)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v149 = v246;
              sub_69198(v246, &qword_3C0450);
              sub_EF33C(v161, v149);
              v134 = v150;
              v137 = v161;
              v130 = v280;
              if (!v136)
              {
                goto LABEL_55;
              }
            }

LABEL_54:
            v150 = v134;
          }
        }
      }
    }

    v138 = 0;
    v139 = v248;
    v140 = v236;
    v141 = v235;
    v137 = v232;
    while (((v131 + 63) >> 6) - 1 != v133)
    {
      v134 = v133 + 1;
      v142 = *(v129 + 72 + 8 * v133);
      v138 -= 64;
      ++v133;
      if (v142)
      {
        v277 = (v131 + 63) >> 6;
        v278 = (v129 + 64);
        v136 = (v142 - 1) & v142;
        v135 = __clz(__rbit64(v142)) - v138;
        v130 = v280;
        goto LABEL_51;
      }
    }

    v168 = 1;
LABEL_62:
    v169 = v237;
    v170 = v237 + 56;
    v171 = *(v237 + 56);
    (v171)(v141, v168, 1, v139);

    v172 = *(v169 + 48);
    v237 = v169 + 48;
    v173 = (v172)(v141, 1, v139);
    v174 = v271;
    if (v173 == 1)
    {
      sub_69198(v141, &qword_3C0458);
      v175 = 1;
    }

    else
    {

      sub_692C4(v141 + *(v139 + 48), v140, type metadata accessor for TopAuthorHighlightData);
      v175 = 0;
    }

    v176 = *(v268 + 56);
    v273 = (v268 + 56);
    v272 = v176;
    v177 = (v176)(v140, v175, 1, v174);
    __chkstk_darwin(v177);
    *(&v229 - 2) = v140;
    sub_ECE20(sub_EF3AC, (&v229 - 4), v58);
    v179 = v178;
    v180 = *(v178 + 8);
    v279 = (v178 + 64);
    v181 = 1 << v178[32];
    v182 = -1;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    v183 = v182 & v180;
    if (v183)
    {
      v266 = v172;
      v267 = v171;
      v270 = v170;
      v184 = 0;
      v185 = __clz(__rbit64(v183));
      v186 = (v183 - 1) & v183;
      v187 = (v181 + 63) >> 6;
LABEL_73:
      v193 = *(v178 + 7);
      v194 = (*(v178 + 6) + 16 * v185);
      v196 = *v194;
      v195 = v194[1];
      v276 = *(v268 + 72);
      v197 = v230;
      sub_6925C(v193 + v276 * v185, &v230[*(v248 + 48)], type metadata accessor for TopAuthorHighlightData);
      *v197 = v196;
      v197[1] = v195;
      v198 = v197;
      v199 = v245;
      sub_EF33C(v198, v245);
      v275 = (v229 + 16);
      v274 = (v229 + 8);

      v277 = v187;
      v278 = v179;
      while (v186)
      {
        v200 = v184;
LABEL_81:
        v201 = __clz(__rbit64(v186));
        v186 &= v186 - 1;
        v202 = v201 | (v200 << 6);
        v203 = (*(v179 + 6) + 16 * v202);
        v205 = *v203;
        v204 = v203[1];
        v206 = *(v179 + 7) + v202 * v276;
        v207 = *(v248 + 48);
        v208 = v248;
        v281 = type metadata accessor for TopAuthorHighlightData;
        v209 = v240;
        sub_6925C(v206, &v240[v207], type metadata accessor for TopAuthorHighlightData);
        *v209 = v205;
        v209[1] = v204;
        v210 = v242;
        sub_EF33C(v209, v242);
        v211 = v210;
        v212 = v243;
        sub_6932C(v211, v243, &qword_3C0450);

        v213 = v212 + *(v208 + 48);
        v214 = v271;
        v215 = *(v271 + 24);
        v280 = *v275;
        v216 = v238;
        v217 = v269;
        (v280)(v238, v213 + v215, v269);
        v218 = v281;
        sub_EF3F4(v213, v281);
        v219 = v244;
        sub_6932C(v245, v244, &qword_3C0450);

        v220 = v219 + *(v248 + 48);
        v221 = v220 + *(v214 + 24);
        v222 = v239;
        (v280)(v239, v221, v217);
        sub_EF3F4(v220, v218);
        v223 = sub_2BE508();
        v224 = *v274;
        (*v274)(v222, v217);
        (v224)(v216, v217);
        if (v223)
        {
          v199 = v245;
          sub_69198(v245, &qword_3C0450);
          sub_EF33C(v242, v199);
          v184 = v200;
        }

        else
        {
          sub_69198(v242, &qword_3C0450);
          v184 = v200;
          v199 = v245;
        }

        v174 = v271;
        v187 = v277;
        v179 = v278;
      }

      while (1)
      {
        v200 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          goto LABEL_95;
        }

        if (v200 >= v187)
        {

          v225 = v199;
          v191 = v233;
          sub_EF33C(v225, v233);
          v226 = 0;
          v189 = v234;
          v190 = v248;
          v171 = v267;
          v172 = v266;
          goto LABEL_84;
        }

        v186 = *(v279 + 8 * v200);
        ++v184;
        if (v186)
        {
          goto LABEL_81;
        }
      }
    }

    v188 = 0;
    v189 = v234;
    v190 = v248;
    v191 = v233;
    while (((v181 + 63) >> 6) - 1 != v183)
    {
      v184 = v183 + 1;
      v192 = *&v178[8 * v183 + 72];
      v188 -= 64;
      ++v183;
      if (v192)
      {
        v266 = v172;
        v267 = v171;
        v270 = v170;
        v186 = (v192 - 1) & v192;
        v185 = __clz(__rbit64(v192)) - v188;
        v187 = (v181 + 63) >> 6;
        goto LABEL_73;
      }
    }

    v226 = 1;
LABEL_84:
    (v171)(v191, v226, 1, v190);

    if ((v172)(v191, 1, v190) == 1)
    {
      sub_69198(v191, &qword_3C0458);
      v227 = 1;
    }

    else
    {

      sub_692C4(v191 + *(v190 + 48), v189, type metadata accessor for TopAuthorHighlightData);
      v227 = 0;
    }

    (v272)(v189, v227, 1, v174);
    sub_69198(v236, &qword_3C0460);
  }

  v249 = v57 + 32;
  v280 = v55 + 16;
  v274 = (v47 + 48);
  v267 = (v47 + 32);
  v266 = (v47 + 16);
  v262 = (v33 + 56);
  v264 = (v47 + 8);
  v273 = (v55 + 8);
  v265 = xmmword_2E3F30;
  v263 = v45;
  v60 = v57;
  v61 = 0;
  v261 = v29;
  v272 = v55;
  v247 = v60;
  while (1)
  {
    if (v61 >= *(v60 + 16))
    {
      goto LABEL_96;
    }

    v253 = v61;
    sub_691F8(v249 + 40 * v61, &v283);
    sub_72084(&v283, v284);
    v62 = sub_2BFA88();
    if (!v62)
    {
      goto LABEL_4;
    }

    v64 = v278;
    v63 = v279;
    v277 = *(v62 + 16);
    if (v277)
    {
      break;
    }

LABEL_3:

    v60 = v247;
LABEL_4:
    v61 = v253 + 1;
    sub_68CD0(&v283);
    if (v61 == v250)
    {
      goto LABEL_43;
    }
  }

  v65 = 0;
  v276 = v62 + ((v55[80] + 32) & ~v55[80]);
  v275 = v62;
  while (v65 < *(v62 + 16))
  {
    v66 = *(v55 + 2);
    v66(v64, v276 + *(v55 + 9) * v65, v63);
    sub_72084(&v283, v284);
    sub_2BF978();
    if ((*v274)(v45, 1, v46) != 1)
    {
      (*v267)(v281, v45, v46);
      v67 = sub_2BF4F8();
      if (v58[2])
      {
        v69 = sub_5D228(v67, v68);
        v71 = v70;

        if (v71)
        {
          v72 = v58[7];
          v73 = v271;
          v254 = *(v268 + 72);
          v74 = v72 + v254 * v69;
          v255 = type metadata accessor for TopAuthorHighlightData;
          v75 = v252;
          sub_6925C(v74, v252, type metadata accessor for TopAuthorHighlightData);
          v76 = v258;
          sub_692C4(v75, v258, type metadata accessor for TopAuthorHighlightData);
          v77 = v76 + *(v73 + 24);
          v78 = v281;
          v79 = sub_2BE508();
          v80 = *v266;
          if (v79)
          {
            v81 = v77;
          }

          else
          {
            v81 = v78;
          }

          v82 = v257;
          v80(v257, v81, v46);
          v256 = v58;
          v83 = v259;
          v66(v259, v278, v279);
          v84 = *(v76 + *(v73 + 20));
          sub_6620C(&qword_3BC2C0);
          inited = swift_initStackObject();
          *(inited + 16) = v265;
          sub_691F8(&v283, inited + 32);
          v282 = v84;

          sub_10F628(inited);
          v86 = v282;
          v80(v83 + *(v73 + 24), v82, v269);
          *(v83 + *(v73 + 20)) = v86;
          v87 = v256;
          sub_6925C(v83, v260, v255);
          v88 = sub_2BF4F8();
          v90 = v89;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v282 = v87;
          v92 = sub_5D228(v88, v90);
          v94 = v87[2];
          v95 = (v93 & 1) == 0;
          v96 = __OFADD__(v94, v95);
          v97 = v94 + v95;
          if (v96)
          {
            goto LABEL_93;
          }

          v98 = v93;
          if (v87[3] >= v97)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_32;
            }

            v124 = v92;
            sub_63A00();
            v92 = v124;
            v58 = v282;
            if ((v98 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_33:
            v119 = v92 * v254;
            v120 = v251;
            sub_692C4(v58[7] + v92 * v254, v251, type metadata accessor for TopAuthorHighlightData);
            sub_692C4(v260, v58[7] + v119, type metadata accessor for TopAuthorHighlightData);
            (*v262)(v120, 0, 1, v271);
          }

          else
          {
            sub_5F3A8(v97, isUniquelyReferenced_nonNull_native);
            v92 = sub_5D228(v88, v90);
            if ((v98 & 1) != (v99 & 1))
            {
              goto LABEL_98;
            }

LABEL_32:
            v58 = v282;
            if (v98)
            {
              goto LABEL_33;
            }

LABEL_39:
            v58[(v92 >> 6) + 8] |= 1 << v92;
            v125 = (v58[6] + 16 * v92);
            *v125 = v88;
            v125[1] = v90;
            sub_692C4(v260, v58[7] + v92 * v254, type metadata accessor for TopAuthorHighlightData);
            v126 = v58[2];
            v96 = __OFADD__(v126, 1);
            v127 = v126 + 1;
            if (v96)
            {
              goto LABEL_97;
            }

            v58[2] = v127;
            v120 = v251;
            (*v262)(v251, 1, 1, v271);
          }

          sub_69198(v120, &qword_3C0460);
          sub_EF3F4(v259, type metadata accessor for TopAuthorHighlightData);
          v128 = *v264;
          v46 = v269;
          (*v264)(v257, v269);
          sub_EF3F4(v258, type metadata accessor for TopAuthorHighlightData);
          v128(v281, v46);
          v64 = v278;
          v63 = v279;
          (*v273)(v278, v279);
LABEL_42:
          v45 = v263;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v100 = v270;
      v66(v270, v278, v279);
      sub_6620C(&qword_3BC2C0);
      v101 = swift_allocObject();
      *(v101 + 16) = v265;
      sub_691F8(&v283, v101 + 32);
      v102 = v271;
      (*v266)(v100 + *(v271 + 24), v281, v46);
      v103 = v102;
      *(v100 + *(v102 + 20)) = v101;
      v104 = sub_2BF4F8();
      v106 = v105;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v282 = v58;
      v109 = sub_5D228(v104, v106);
      v110 = v58[2];
      v111 = (v108 & 1) == 0;
      v112 = v110 + v111;
      if (__OFADD__(v110, v111))
      {
        goto LABEL_91;
      }

      v113 = v108;
      if (v58[3] >= v112)
      {
        if (v107)
        {
          if ((v108 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_63A00();
          if ((v113 & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        sub_5F3A8(v112, v107);
        v114 = sub_5D228(v104, v106);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_98;
        }

        v109 = v114;
        if ((v113 & 1) == 0)
        {
LABEL_35:
          v58 = v282;
          v282[(v109 >> 6) + 8] |= 1 << v109;
          v121 = (v58[6] + 16 * v109);
          *v121 = v104;
          v121[1] = v106;
          sub_692C4(v270, v58[7] + *(v268 + 72) * v109, type metadata accessor for TopAuthorHighlightData);
          v46 = v269;
          (*v264)(v281, v269);
          v64 = v278;
          v63 = v279;
          (*v273)(v278, v279);
          v122 = v58[2];
          v96 = __OFADD__(v122, 1);
          v123 = v122 + 1;
          if (v96)
          {
            goto LABEL_92;
          }

          v58[2] = v123;
          v118 = 1;
          v117 = v261;
          goto LABEL_37;
        }
      }

      v58 = v282;
      v116 = *(v268 + 72) * v109;
      v117 = v261;
      sub_692C4(v282[7] + v116, v261, type metadata accessor for TopAuthorHighlightData);
      sub_692C4(v270, v58[7] + v116, type metadata accessor for TopAuthorHighlightData);
      v46 = v269;
      (*v264)(v281, v269);
      v64 = v278;
      v63 = v279;
      (*v273)(v278, v279);
      v118 = 0;
LABEL_37:
      (*v262)(v117, v118, 1, v103);
      sub_69198(v117, &qword_3C0460);
      goto LABEL_42;
    }

    (*v273)(v64, v63);
    sub_69198(v45, &qword_3BC418);
LABEL_10:
    v55 = v272;
    v62 = v275;
    if (v277 == ++v65)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_2C6678();
  __break(1u);
  return result;
}

BOOL sub_EC97C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_6620C(&qword_3C0460);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_6620C(&qword_3C0450);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v24 - v13);
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  sub_6925C(a2, &v24 + *(v9 + 56) - v13, type metadata accessor for TopAuthorHighlightData);
  sub_6932C(v14, v11, &qword_3C0450);

  v17 = &v11[*(v9 + 56)];
  v18 = type metadata accessor for TopAuthorHighlightData(0);
  v19 = *(v17 + *(v18 + 20));

  sub_EF3F4(v17, type metadata accessor for TopAuthorHighlightData);
  v20 = *(v19 + 16);

  sub_6932C(v25, v7, &qword_3C0460);
  if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
  {
    sub_69198(v14, &qword_3C0450);
    sub_69198(v7, &qword_3C0460);
    return 0;
  }

  else
  {
    v22 = *&v7[*(v18 + 20)];

    sub_EF3F4(v7, type metadata accessor for TopAuthorHighlightData);
    v23 = *(v22 + 16);

    sub_69198(v14, &qword_3C0450);
    return v20 == v23;
  }
}

void sub_ECC18(void **a1)
{
  v2 = *(type metadata accessor for GenreHighlight(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_111AA4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_ED834(v5);
  *a1 = v3;
}

void sub_ECCC0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_ED510(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_ECFA0(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_ECE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_ED588(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_ED2D0(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_ECFA0(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v45 = sub_6620C(&qword_3C0450);
  __chkstk_darwin(v45);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = (&v34 - v6);
  v7 = type metadata accessor for TopAuthorHighlightData(0);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v9 = 0;
  v46 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v38 = v16;
  v39 = v11;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v47 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v46[7];
    v22 = (v46[6] + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = v40;
    v26 = *(v41 + 72);
    v37 = v20;
    sub_6925C(v21 + v26 * v20, v40, type metadata accessor for TopAuthorHighlightData);
    v27 = v43;
    *v43 = v23;
    *(v27 + 8) = v24;
    v28 = v45;
    sub_6925C(v25, v27 + *(v45 + 48), type metadata accessor for TopAuthorHighlightData);
    v29 = v44;
    sub_6932C(v27, v44, &qword_3C0450);
    swift_bridgeObjectRetain_n();

    v30 = v29 + *(v28 + 48);
    v31 = *(v30 + *(v42 + 20));

    sub_EF3F4(v30, type metadata accessor for TopAuthorHighlightData);
    v32 = *(v31 + 16);

    sub_69198(v27, &qword_3C0450);
    sub_EF3F4(v25, type metadata accessor for TopAuthorHighlightData);

    v16 = v38;
    v11 = v39;
    v15 = v47;
    if (v32 >= 2)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:
        sub_61918(v35, v34, v36, v46);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_ED2D0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v5 = type metadata accessor for TopAuthorHighlightData(0);
  v33 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v7 = 0;
  v35 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v36 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v7 << 6);
    v20 = v35[7];
    v21 = (v35[6] + 16 * v19);
    v22 = v21[1];
    v37[0] = *v21;
    v37[1] = v22;
    v23 = *(v33 + 72);
    v31 = v19;
    sub_6925C(v20 + v23 * v19, v15, type metadata accessor for TopAuthorHighlightData);

    v24 = v38;
    v25 = v34(v37, v15);
    sub_EF3F4(v15, type metadata accessor for TopAuthorHighlightData);

    v38 = v24;
    if (v24)
    {
      return;
    }

    v13 = v36;
    if (v25)
    {
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_61918(v29, v28, v30, v35);
        return;
      }
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_16;
    }

    v18 = v9[v7];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v36 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_ED510(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_ECFA0(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_ED588(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_ED2D0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_ED618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_5D228(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_5F36C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_5D228(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_2C6678();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v26 = v13;
    sub_639C4();
    v13 = v26;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_62DF4(v13, a2, a3, a1, v12);
    v27 = type metadata accessor for GenreHighlight(0);
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7];
  v21 = v13;
  v22 = type metadata accessor for GenreHighlight(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 72) * v21;
  sub_692C4(v20 + v24, a4, type metadata accessor for GenreHighlight);
  sub_692C4(a1, v12[7] + v24, type metadata accessor for GenreHighlight);
  result = (*(v23 + 56))(a4, 0, 1, v22);
LABEL_11:
  *v6 = v12;
  return result;
}

void sub_ED834(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for GenreHighlight(0);
        v6 = sub_2C5B68();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GenreHighlight(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_EDCE8(v8, v9, a1, v4);
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
    sub_ED960(0, v2, 1, a1);
  }
}

void sub_ED960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for GenreHighlight(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v39 = v8;
    v40 = -v19;
    v21 = a1 - a3;
    v41 = v18;
    v32 = v19;
    v22 = v18 + v19 * a3;
    v38 = v10;
LABEL_6:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_6925C(v22, v17, type metadata accessor for GenreHighlight);
      sub_6925C(v20, v13, type metadata accessor for GenreHighlight);
      v23 = *(*v17 + 16);
      v24 = *(*v13 + 16);
      if (v23 == v24)
      {
        sub_2BE588();
        sub_EF588(&qword_3BC440, &type metadata accessor for Date);
        if (sub_2C5878())
        {
          v25 = sub_2BFAB8();
          v27 = v26;
          if (v25 == sub_2BFAB8() && v27 == v28)
          {

            sub_EF3F4(v13, type metadata accessor for GenreHighlight);
            sub_EF3F4(v17, type metadata accessor for GenreHighlight);
            v10 = v38;
LABEL_5:
            a3 = v37 + 1;
            v20 = v36 + v32;
            v21 = v35 - 1;
            v22 = v34 + v32;
            if (v37 + 1 == v33)
            {
              return;
            }

            goto LABEL_6;
          }

          v29 = sub_2C65B8();

          v10 = v38;
        }

        else
        {
          v29 = sub_2BE508();
        }
      }

      else
      {
        v29 = v24 < v23;
      }

      sub_EF3F4(v13, type metadata accessor for GenreHighlight);
      sub_EF3F4(v17, type metadata accessor for GenreHighlight);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      sub_692C4(v22, v10, type metadata accessor for GenreHighlight);
      swift_arrayInitWithTakeFrontToBack();
      sub_692C4(v10, v20, type metadata accessor for GenreHighlight);
      v20 += v40;
      v22 += v40;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_EDCE8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v8 = type metadata accessor for GenreHighlight(0);
  v138 = *(v8 - 8);
  __chkstk_darwin(v8);
  v130 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v121 - v11;
  __chkstk_darwin(v12);
  v14 = &v121 - v13;
  __chkstk_darwin(v15);
  v17 = &v121 - v16;
  __chkstk_darwin(v18);
  v20 = &v121 - v19;
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v139 = a3;
  if (*(a3 + 8) < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_115:
    a4 = *v128;
    if (!*v128)
    {
      goto LABEL_157;
    }

    a3 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = a3;
    }

    else
    {
LABEL_151:
      v116 = sub_111978(a3);
    }

    v144 = v116;
    a3 = *(v116 + 2);
    if (a3 >= 2)
    {
      while (*v139)
      {
        v117 = *&v116[16 * a3];
        v118 = v116;
        v119 = *&v116[16 * a3 + 24];
        sub_EE958(*v139 + *(v138 + 72) * v117, *v139 + *(v138 + 72) * *&v116[16 * a3 + 16], *v139 + *(v138 + 72) * v119, a4);
        if (v5)
        {
          goto LABEL_129;
        }

        if (v119 < v117)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_111978(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_145;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_1118EC(a3 - 1);
        v116 = v144;
        a3 = *(v144 + 2);
        if (a3 <= 1)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_155;
    }

    goto LABEL_129;
  }

  v28 = *(a3 + 8);
  v123 = v27;
  v124 = &v121 - v26;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v127 = a4;
  v141 = v8;
  v122 = v20;
  v137 = v23;
  v135 = v14;
  while (1)
  {
    v140 = v28;
    v131 = v30;
    if (v29 + 1 < v28)
    {
      v31 = *v139;
      a3 = *(v138 + 72);
      v32 = v29;
      v33 = *v139 + a3 * (v29 + 1);
      v142 = type metadata accessor for GenreHighlight;
      v34 = v124;
      sub_6925C(v33, v124, type metadata accessor for GenreHighlight);
      v134 = v31;
      v35 = v31 + a3 * v32;
      v36 = v123;
      sub_6925C(v35, v123, v142);
      LODWORD(v136) = sub_EADB8(v34, v36);
      if (!v5)
      {
        v126 = 0;
        sub_EF3F4(v36, type metadata accessor for GenreHighlight);
        sub_EF3F4(v124, type metadata accessor for GenreHighlight);
        v125 = v32;
        v37 = v32 + 2;
        v38 = v134 + a3 * (v32 + 2);
        v39 = v122;
        v40 = a3;
        v142 = a3;
        do
        {
          if (v140 == v37)
          {
            v47 = v140;
            goto LABEL_20;
          }

          sub_6925C(v38, v23, type metadata accessor for GenreHighlight);
          sub_6925C(v33, v39, type metadata accessor for GenreHighlight);
          v41 = *(*v23 + 16);
          v42 = *(*v39 + 16);
          if (v41 == v42)
          {
            sub_2BE588();
            sub_EF588(&qword_3BC440, &type metadata accessor for Date);
            if (sub_2C5878())
            {
              v43 = sub_2BFAB8();
              v45 = v44;
              if (v43 == sub_2BFAB8() && v45 == v46)
              {

                a3 = 0;
              }

              else
              {
                a3 = sub_2C65B8();
              }
            }

            else
            {
              a3 = sub_2BE508();
            }
          }

          else
          {
            a3 = v42 < v41;
          }

          v14 = v135;
          sub_EF3F4(v39, type metadata accessor for GenreHighlight);
          v23 = v137;
          sub_EF3F4(v137, type metadata accessor for GenreHighlight);
          ++v37;
          v40 = v142;
          v38 += v142;
          v33 += v142;
        }

        while (((v136 ^ a3) & 1) == 0);
        v47 = v37 - 1;
LABEL_20:
        v5 = v126;
        a4 = v127;
        v29 = v125;
        if (v136)
        {
          if (v47 < v125)
          {
            goto LABEL_150;
          }

          if (v125 < v47)
          {
            a3 = v40 * (v47 - 1);
            v48 = v47 * v40;
            v140 = v47;
            v49 = v47;
            v50 = v125;
            v51 = v125 * v40;
            do
            {
              if (v50 != --v49)
              {
                v52 = *v139;
                if (!*v139)
                {
                  goto LABEL_154;
                }

                sub_692C4(v52 + v51, v130, type metadata accessor for GenreHighlight);
                if (v51 < a3 || v52 + v51 >= v52 + v48)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v51 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_692C4(v130, v52 + a3, type metadata accessor for GenreHighlight);
                v40 = v142;
              }

              ++v50;
              a3 -= v40;
              v48 -= v40;
              v51 += v40;
            }

            while (v50 < v49);
            v5 = v126;
            a4 = v127;
            v47 = v140;
            v29 = v125;
          }
        }

        goto LABEL_34;
      }

      sub_EF3F4(v36, type metadata accessor for GenreHighlight);
      sub_EF3F4(v124, type metadata accessor for GenreHighlight);
LABEL_129:

      return;
    }

    v47 = v29 + 1;
LABEL_34:
    v53 = v139[1];
    if (v47 >= v53)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v47, v29))
    {
      goto LABEL_147;
    }

    if (v47 - v29 >= a4)
    {
LABEL_43:
      v55 = v47;
      if (v47 < v29)
      {
        goto LABEL_146;
      }

      goto LABEL_44;
    }

    if (__OFADD__(v29, a4))
    {
      goto LABEL_148;
    }

    if ((v29 + a4) >= v53)
    {
      v54 = v139[1];
    }

    else
    {
      v54 = v29 + a4;
    }

    if (v54 < v29)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v47 == v54)
    {
      goto LABEL_43;
    }

    v125 = v29;
    v126 = v5;
    v101 = *(v138 + 72);
    v102 = *v139 + v101 * (v47 - 1);
    v103 = -v101;
    v104 = v29 - v47;
    v142 = *v139;
    v129 = v101;
    v105 = (v142 + v47 * v101);
    v132 = v54;
LABEL_97:
    v140 = v47;
    v133 = v105;
    v134 = v104;
    v106 = v105;
    v136 = v102;
    v107 = v102;
LABEL_98:
    sub_6925C(v106, v17, type metadata accessor for GenreHighlight);
    sub_6925C(v107, v14, type metadata accessor for GenreHighlight);
    v108 = *(*v17 + 16);
    v109 = *(*v14 + 16);
    if (v108 != v109)
    {
      a4 = v109 < v108;
      goto LABEL_105;
    }

    sub_2BE588();
    sub_EF588(&qword_3BC440, &type metadata accessor for Date);
    if ((sub_2C5878() & 1) == 0)
    {
      break;
    }

    v110 = sub_2BFAB8();
    v112 = v111;
    v113 = sub_2BFAB8();
    a3 = v114;
    if (v110 != v113 || v112 != v114)
    {
      a4 = sub_2C65B8();

      goto LABEL_105;
    }

    a4 = type metadata accessor for GenreHighlight;
    sub_EF3F4(v14, type metadata accessor for GenreHighlight);
    sub_EF3F4(v17, type metadata accessor for GenreHighlight);
LABEL_96:
    v47 = v140 + 1;
    v102 = v136 + v129;
    v104 = v134 - 1;
    v105 = &v133[v129];
    v55 = v132;
    if (v140 + 1 != v132)
    {
      goto LABEL_97;
    }

    v29 = v125;
    v5 = v126;
    if (v132 < v125)
    {
      goto LABEL_146;
    }

LABEL_44:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v131;
    }

    else
    {
      v30 = sub_5BFE4(0, *(v131 + 2) + 1, 1, v131);
    }

    a4 = *(v30 + 2);
    v56 = *(v30 + 3);
    a3 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      v30 = sub_5BFE4((v56 > 1), a4 + 1, 1, v30);
    }

    *(v30 + 2) = a3;
    v57 = &v30[16 * a4];
    *(v57 + 4) = v29;
    *(v57 + 5) = v55;
    v58 = *v128;
    if (!*v128)
    {
      goto LABEL_156;
    }

    v132 = v55;
    if (a4)
    {
      while (2)
      {
        v59 = a3 - 1;
        if (a3 >= 4)
        {
          v64 = &v30[16 * a3 + 32];
          v65 = *(v64 - 64);
          v66 = *(v64 - 56);
          v70 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          if (v70)
          {
            goto LABEL_133;
          }

          v69 = *(v64 - 48);
          v68 = *(v64 - 40);
          v70 = __OFSUB__(v68, v69);
          v62 = v68 - v69;
          v63 = v70;
          if (v70)
          {
            goto LABEL_134;
          }

          v71 = &v30[16 * a3];
          v73 = *v71;
          v72 = *(v71 + 1);
          v70 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v70)
          {
            goto LABEL_136;
          }

          v70 = __OFADD__(v62, v74);
          v75 = v62 + v74;
          if (v70)
          {
            goto LABEL_139;
          }

          if (v75 >= v67)
          {
            v93 = &v30[16 * v59 + 32];
            v95 = *v93;
            v94 = *(v93 + 1);
            v70 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v70)
            {
              goto LABEL_143;
            }

            if (v62 < v96)
            {
              v59 = a3 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v63)
            {
              goto LABEL_135;
            }

            v76 = &v30[16 * a3];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_138;
            }

            v82 = &v30[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_142;
            }

            if (v80 + v85 < v62)
            {
              goto LABEL_77;
            }

            if (v62 < v85)
            {
              v59 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v60 = *(v30 + 4);
            v61 = *(v30 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
            goto LABEL_63;
          }

          v86 = &v30[16 * a3];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_77:
          if (v81)
          {
            goto LABEL_137;
          }

          v89 = &v30[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_140;
          }

          if (v92 < v80)
          {
            break;
          }
        }

        a4 = v59 - 1;
        if (v59 - 1 >= a3)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v139)
        {
          goto LABEL_153;
        }

        v97 = v30;
        a3 = *&v30[16 * a4 + 32];
        v98 = *&v30[16 * v59 + 40];
        sub_EE958(*v139 + *(v138 + 72) * a3, *v139 + *(v138 + 72) * *&v30[16 * v59 + 32], *v139 + *(v138 + 72) * v98, v58);
        if (v5)
        {
          goto LABEL_129;
        }

        if (v98 < a3)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v99 = v97;
        }

        else
        {
          v99 = sub_111978(v97);
        }

        if (a4 >= *(v99 + 2))
        {
          goto LABEL_132;
        }

        v100 = &v99[16 * a4];
        *(v100 + 4) = a3;
        *(v100 + 5) = v98;
        v144 = v99;
        sub_1118EC(v59);
        v30 = v144;
        a3 = *(v144 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v139[1];
    v29 = v132;
    a4 = v127;
    v23 = v137;
    if (v132 >= v28)
    {
      goto LABEL_115;
    }
  }

  a4 = sub_2BE508();
LABEL_105:
  a3 = type metadata accessor for GenreHighlight;
  sub_EF3F4(v14, type metadata accessor for GenreHighlight);
  sub_EF3F4(v17, type metadata accessor for GenreHighlight);
  if ((a4 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (v142)
  {
    a4 = type metadata accessor for GenreHighlight;
    a3 = v143;
    sub_692C4(v106, v143, type metadata accessor for GenreHighlight);
    swift_arrayInitWithTakeFrontToBack();
    sub_692C4(a3, v107, type metadata accessor for GenreHighlight);
    v107 += v103;
    v106 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_EE958(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a3;
  v7 = type metadata accessor for GenreHighlight(0);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_80;
  }

  v20 = v58 - a2;
  if (v58 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_81;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = a4;
  v55 = v7;
  if (v21 < v20 / v19)
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v22;
    v59 = a4 + v22;
    if (v22 < 1 || a2 >= v58)
    {
      goto LABEL_78;
    }

    v56 = v19;
    while (1)
    {
      sub_6925C(a2, v17, type metadata accessor for GenreHighlight);
      sub_6925C(a4, v13, type metadata accessor for GenreHighlight);
      v26 = *(*v17 + 16);
      v27 = *(*v13 + 16);
      if (v26 == v27)
      {
        sub_2BE588();
        sub_EF588(&qword_3BC440, &type metadata accessor for Date);
        if (sub_2C5878())
        {
          v28 = sub_2BFAB8();
          v30 = v29;
          if (v28 == sub_2BFAB8() && v30 == v31)
          {

            sub_EF3F4(v13, type metadata accessor for GenreHighlight);
            sub_EF3F4(v17, type metadata accessor for GenreHighlight);
            v19 = v56;
            goto LABEL_34;
          }

          v32 = sub_2C65B8();

          v19 = v56;
        }

        else
        {
          v32 = sub_2BE508();
        }
      }

      else
      {
        v32 = v27 < v26;
      }

      sub_EF3F4(v13, type metadata accessor for GenreHighlight);
      sub_EF3F4(v17, type metadata accessor for GenreHighlight);
      if (v32)
      {
        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
        goto LABEL_42;
      }

LABEL_34:
      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = a4 + v19;
      a4 += v19;
LABEL_42:
      a1 += v19;
      v61 = a1;
      if (a4 >= v57 || a2 >= v58)
      {
        goto LABEL_78;
      }
    }
  }

  v23 = v20 / v19 * v19;
  v57 = v15;
  if (a4 < a2 || a2 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v24 = v58;
  }

  else
  {
    v24 = v58;
    if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v33 = a4 + v23;
  if (v23 < 1)
  {
    goto LABEL_77;
  }

  v34 = -v19;
  v35 = v33;
  v56 = v9;
  v52 = -v19;
  v53 = a4;
  while (2)
  {
    while (2)
    {
      v36 = a2;
      a2 += v34;
      v49 = v33;
      v50 = a2;
      v54 = v36;
      while (1)
      {
        if (v36 <= a1)
        {
          v61 = v36;
          v59 = v49;
          goto LABEL_78;
        }

        v37 = v24;
        v51 = v33;
        v58 = v35 + v34;
        v38 = a2;
        v39 = v57;
        sub_6925C(v35 + v34, v57, type metadata accessor for GenreHighlight);
        sub_6925C(v38, v9, type metadata accessor for GenreHighlight);
        v40 = *(*v39 + 16);
        v41 = *(*v9 + 16);
        if (v40 != v41)
        {
          v46 = v41 < v40;
LABEL_60:
          v47 = v53;
          a2 = v38;
          goto LABEL_63;
        }

        sub_2BE588();
        sub_EF588(&qword_3BC440, &type metadata accessor for Date);
        if ((sub_2C5878() & 1) == 0)
        {
          v46 = sub_2BE508();
          goto LABEL_60;
        }

        v42 = sub_2BFAB8();
        v44 = v43;
        if (v42 == sub_2BFAB8() && v44 == v45)
        {

          v46 = 0;
        }

        else
        {
          v46 = sub_2C65B8();
        }

        a2 = v50;
        v47 = v53;
LABEL_63:
        v34 = v52;
        v24 = v37 + v52;
        sub_EF3F4(v56, type metadata accessor for GenreHighlight);
        sub_EF3F4(v57, type metadata accessor for GenreHighlight);
        if (v46)
        {
          break;
        }

        v33 = v58;
        if (v37 < v35 || v24 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v9 = v56;
        }

        else
        {
          v9 = v56;
          if (v37 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v35 = v33;
        v36 = v54;
        if (v58 <= v47)
        {
          a2 = v54;
          goto LABEL_77;
        }
      }

      if (v37 >= v54 && v24 < v54)
      {
        v9 = v56;
        v33 = v51;
        if (v37 != v54)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v35 <= v47)
        {
          goto LABEL_77;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v9 = v56;
    v33 = v51;
    if (v35 > v47)
    {
      continue;
    }

    break;
  }

LABEL_77:
  v61 = a2;
  v59 = v33;
LABEL_78:
  sub_11198C(&v61, &v60, &v59);
}

void sub_EF0E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for GenreHighlight(0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_6925C(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for GenreHighlight);
      v23 = v22;
      v24 = v30;
      sub_692C4(v23, v30, type metadata accessor for GenreHighlight);
      sub_692C4(v24, a2, type metadata accessor for GenreHighlight);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_EF33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF3F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_EF514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v5 = v4;
  v7 = v3 == a2();
  v8 = v7 & ~v6;
  if (v5)
  {
    v8 = v6;
  }

  return v8 & 1;
}

uint64_t sub_EF588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EF5D0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_EF694()
{
  if (!qword_3C0550)
  {
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0550);
    }
  }
}

uint64_t sub_EF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a3 + 20);
  v7 = sub_6620C(a4);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t sub_EF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a4 + 20);
  v8 = sub_6620C(a5);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, a2, a2, v8);
}

void sub_EF850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_EF694();
  if (v7 <= 0x3F)
  {
    sub_EF8EC(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_EF8EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C60B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_EF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BE588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_EFA14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2BE588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_EFAB8()
{
  result = sub_7848C();
  if (v1 <= 0x3F)
  {
    result = sub_2BE588();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_EFB50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BFAC8();
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
      v13 = sub_2BE588();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_EFC88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2BFAC8();
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
      v13 = sub_2BE588();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_EFDD8()
{
  if (!qword_3C0718)
  {
    sub_718D4(&qword_3BC2C8);
    v0 = sub_2C5B98();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0718);
    }
  }
}

uint64_t sub_EFE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BF518();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2BE588();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_EFF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2BF518();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2BE588();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_F00D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      result = sub_2BE588();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void ConvertRectFromGlobalHandler.callAsFunction(rect:)(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong view];
    if (v10)
    {
      v11 = v10;
      [v10 convertRect:0 fromView:{a1, a2, a3, a4}];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_3BB780 != -1)
    {
      swift_once();
    }

    v12 = sub_2C00B8();
    sub_57AD8(v12, qword_3C2F30);
    v13 = sub_2C0098();
    v14 = sub_2C5DD8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Failed to convert given frame to the one relative to the page's coordinate system becasue HostingViewController is nil.", v15, 2u);
    }
  }
}

__n128 sub_F0328(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_F034C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F0394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F03F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6620C(&qword_3C41D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_6620C(&qword_3C08D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;

  sub_2BEC58();
  sub_69130(v7, v4, &qword_3C41D0);
  v11 = sub_2BEC68();
  v12 = *(v11 - 8);
  v13 = 1;
  if ((*(v12 + 48))(v4, 1, v11) != 1)
  {
    (*(v12 + 32))(v10, v4, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v13 = 0;
  }

  v14 = sub_2BE7E8();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v10, v13, 1, v14);
  v16 = *(v15 + 48);
  if (v16(v10, 1, v14) != 1)
  {
    return sub_F3138(v10, a1);
  }

  (*(v12 + 56))(a1, 1, 1, v11);
  result = (v16)(v10, 1, v14);
  if (result != 1)
  {
    return sub_69198(v10, &qword_3C08D0);
  }

  return result;
}

uint64_t sub_F071C()
{
  sub_2C1328();
  sub_72084(v1, v1[3]);
  sub_2BF3B8();
  sub_2C61A8();
  return sub_68CD0(v1);
}

double sub_F07A8@<D0>(uint64_t a1@<X8>)
{
  sub_6932C(v1, v5, &qword_3BE370);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_F0834(uint64_t a1)
{
  v2 = sub_F3ED0(&qword_3C09D0, type metadata accessor for RecommendationItemComponentModel);

  return LibraryAssetStateRequiring.assetIDsToObserveState.getter(a1, v2);
}

uint64_t sub_F08A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 20), &v9 - v6, &qword_3BF898);
  return sub_69130(v7, a2, &qword_3BDF58);
}

Swift::Int sub_F096C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_F0A58()
{
  sub_2C5958();
}

Swift::Int sub_F0B30()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_F0C18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F3E54(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_F0C48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656372756F736572;
  v5 = 0xE500000000000000;
  v6 = 0x6575676573;
  v7 = 0x80000000003005E0;
  v8 = 0xD00000000000001ELL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000000003004A0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D65744964656573;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_F0CF0()
{
  v1 = *v0;
  v2 = 0x656372756F736572;
  v3 = 0x6575676573;
  v4 = 0xD00000000000001ELL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D65744964656573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_F0D94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F3E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F0DC8(uint64_t a1)
{
  v2 = sub_F2B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F0E04(uint64_t a1)
{
  v2 = sub_F2B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_F0E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_2C4BD8();
  __chkstk_darwin(v3 - 8);
  v68 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C0820);
  __chkstk_darwin(v5 - 8);
  v69 = v63 - v6;
  v7 = sub_6620C(&qword_3C0828);
  __chkstk_darwin(v7 - 8);
  v71 = v63 - v8;
  v9 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v9 - 8);
  v67 = v63 - v10;
  v11 = sub_6620C(&qword_3C0830);
  __chkstk_darwin(v11 - 8);
  v73 = v63 - v12;
  v13 = sub_6620C(&qword_3C0838);
  __chkstk_darwin(v13 - 8);
  v72 = v63 - v14;
  v76 = sub_6620C(&qword_3C07F0);
  v74 = *(v76 - 1);
  __chkstk_darwin(v76);
  v75 = v63 - v15;
  v79 = sub_6620C(&qword_3C0840);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v17 = v63 - v16;
  v18 = type metadata accessor for RecommendationItemComponentModel();
  __chkstk_darwin(v18);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v89 = 0;
  v87 = 0u;
  v88 = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  sub_A9708(&v87, v20, &unk_3BDC90);
  v21 = *(v18 + 20);
  v22 = sub_2C5018();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v82 = v21;
  v66 = v24;
  v24(&v20[v21], 1, 1, v22);
  v83 = v18;
  v26 = *(v18 + 24);
  v27 = sub_2C5658();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v84 = v26;
  v81 = v20;
  v30 = &v20[v26];
  v31 = (v28 + 56);
  v29(v30, 1, 1, v27);
  v32 = a1[3];
  v93 = a1;
  sub_72084(a1, v32);
  sub_F2B58();
  v78 = v17;
  v33 = v80;
  sub_2C67A8();
  if (v33)
  {
    v37 = v81;
LABEL_4:
    sub_68CD0(v93);
    sub_69198(v37, &qword_3BE370);
    sub_69198(v37 + v82, &qword_3BF898);
    return sub_69198(v37 + v84, &qword_3C0820);
  }

  v63[1] = v25;
  v64 = v22;
  v65 = v29;
  v80 = v27;
  v34 = v77;
  LOBYTE(v87) = 0;
  sub_F2AF4();
  v35 = v75;
  v36 = v76;
  sub_2C64A8();
  v39 = sub_2C1078();
  (*(v74 + 8))(v35, v36);
  sub_2BF768();
  v37 = v81;
  if (!*(&v88 + 1))
  {
    sub_69198(&v87, &unk_3C2550);
    v41 = sub_2C6238();
    v80 = swift_allocError();
    v43 = v42;
    sub_2C6408();
    v44 = sub_2C1668();
    sub_F3ED0(&qword_3C0818, &type metadata accessor for ListItemDecodingError);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for ListItemDecodingError.invalidMAPIResource(_:), v44);
    sub_2C6228();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.dataCorrupted(_:), v41);
    swift_willThrow();

    (*(v34 + 8))(v78, v79);
    goto LABEL_4;
  }

  v75 = v31;
  v76 = v39;
  sub_693D0(&v87, v92);
  v40 = v83;
  sub_2C12A8();
  sub_6620C(&qword_3C0858);
  v85 = 1;
  sub_F2BAC();
  sub_2C6458();
  if (v86[1] == 1)
  {
    sub_69198(v86, &qword_3C0878);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
  }

  else
  {
    sub_6932C(v86, &v87, &qword_3C0850);
    sub_69198(v86, &qword_3C0858);
  }

  v46 = v73;
  sub_6932C(&v87, v37 + *(v40 + 32), &qword_3C0850);
  v47 = sub_6620C(&qword_3C0880);
  v85 = 2;
  sub_F2D08();
  sub_2C6458();
  if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
  {
    v48 = &qword_3C0830;
    v49 = v46;
  }

  else
  {
    v50 = v72;
    sub_6932C(v46, v72, &qword_3C0838);
    sub_69198(v46, &qword_3C0880);
    v51 = sub_2C1398();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1, v51) != 1)
    {
      sub_2C1388();
      (*(v52 + 8))(v50, v51);
      goto LABEL_17;
    }

    v48 = &qword_3C0838;
    v49 = v50;
  }

  sub_69198(v49, v48);
  memset(v86, 0, 40);
LABEL_17:
  sub_69198(v37, &qword_3BE370);
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0;
  sub_A9708(v86, v37, &unk_3BDC90);
  sub_6620C(&qword_3C0898);
  v85 = 3;
  sub_F2E40();
  sub_2C6458();
  if (LOBYTE(v86[0]) == 3)
  {
    v53 = 1;
  }

  else
  {
    v53 = (LOBYTE(v86[0]) == 2) | LOBYTE(v86[0]);
  }

  v54 = v71;
  *(v37 + *(v40 + 36)) = v53 & 1;
  v55 = sub_6620C(&qword_3BF898);
  LOBYTE(v86[0]) = 4;
  sub_F2F40();
  sub_2C6458();
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {
    sub_69198(v54, &qword_3C0828);
    v56 = v67;
    v66(v67, 1, 1, v64);
  }

  else
  {
    v56 = v67;
    sub_6932C(v54, v67, &qword_3BDF58);
    sub_69198(v54, &qword_3BF898);
  }

  v57 = v80;
  sub_A9708(v56, v37 + v82, &qword_3BDF58);
  sub_6620C(&qword_3C08C8);
  v58 = *(sub_2C5648() - 8);
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2E3F30;
  v61 = (v60 + v59);
  *v61 = 0xD000000000000037;
  v61[1] = 0x80000000003035E0;
  (*(v58 + 104))();
  sub_2C4BC8();
  v62 = v69;
  sub_2C5638();

  sub_69198(&v87, &qword_3C0850);
  sub_68CD0(v92);
  (*(v77 + 8))(v78, v79);
  v65(v62, 0, 1, v57);
  sub_A9708(v62, v37 + v84, &qword_3C0820);
  sub_F3078(v37, v70);
  sub_68CD0(v93);
  return sub_F30DC(v37);
}

uint64_t sub_F1F00()
{
  sub_6620C(&qword_3BC020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_F3ED0(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v0 + 72) = sub_F3ED0(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t type metadata accessor for RecommendationItemComponentModel()
{
  result = qword_3C0930;
  if (!qword_3C0930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F2068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F73616572;
  v5 = 0x8000000000300510;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000000300510;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656372756F736572;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6E6F73616572;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656372756F736572;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

Swift::Int sub_F215C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_F2200()
{
  sub_2C5958();
}

Swift::Int sub_F2290()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_F2330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F3E08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_F2360(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F73616572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000000300510;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656372756F736572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_F23C0()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_F241C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F3E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F2444(uint64_t a1)
{
  v2 = sub_F2A24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F2480(uint64_t a1)
{
  v2 = sub_F2A24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_F24BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_6620C(&qword_3C07F0);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_6620C(&qword_3C07F8);
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  sub_72084(a1, a1[3]);
  sub_F2A24();
  sub_2C67A8();
  if (v2)
  {
    goto LABEL_3;
  }

  v10 = v6;
  v11 = v38;
  v36 = a1;
  sub_6620C(&qword_3BDB00);
  LOBYTE(v39) = 2;
  sub_F2A78();
  sub_2C64A8();
  v12 = v9;
  v13 = v41[0];
  v14 = v41[1];
  LOBYTE(v41[0]) = 1;
  v33 = sub_2C6468();
  v35 = v15;
  v34 = v13;
  LOBYTE(v41[0]) = 0;
  sub_F2AF4();
  v16 = v10;
  sub_2C64A8();
  v19 = sub_2C1078();
  (*(v11 + 8))(v16, v4);
  sub_2BF768();
  if (!v40)
  {

    sub_69198(&v39, &unk_3C2550);
    v27 = sub_2C6238();
    swift_allocError();
    v29 = v28;
    v38 = sub_2C6408();
    v30 = v12;
    v31 = sub_2C1668();
    sub_F3ED0(&qword_3C0818, &type metadata accessor for ListItemDecodingError);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for ListItemDecodingError.invalidMAPIResource(_:), v31);
    sub_2C6228();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.dataCorrupted(_:), v27);
    swift_willThrow();

    (*(v46 + 8))(v30, v7);
    a1 = v36;
LABEL_3:
    v17 = a1;
    return sub_68CD0(v17);
  }

  sub_693D0(&v39, v41);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  sub_691F8(v41, v44);

  if (v14)
  {
    v20 = v34;
  }

  else
  {
    v20 = 0;
  }

  v21 = v12;
  v22 = v7;
  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  sub_68CD0(v41);
  (*(v46 + 8))(v21, v22);
  *&v42 = v20;
  *(&v42 + 1) = v23;
  v24 = v44[1];
  v25 = v37;
  *(v37 + 32) = v44[0];
  *(v25 + 48) = v24;
  *(v25 + 64) = v45;
  v26 = v43;
  *v25 = v42;
  *(v25 + 16) = v26;
  v17 = v36;
  return sub_68CD0(v17);
}

unint64_t sub_F2A24()
{
  result = qword_3C0800;
  if (!qword_3C0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0800);
  }

  return result;
}

unint64_t sub_F2A78()
{
  result = qword_3C0808;
  if (!qword_3C0808)
  {
    sub_718D4(&qword_3BDB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0808);
  }

  return result;
}

unint64_t sub_F2AF4()
{
  result = qword_3C0810;
  if (!qword_3C0810)
  {
    sub_718D4(&qword_3C07F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0810);
  }

  return result;
}

unint64_t sub_F2B58()
{
  result = qword_3C0848;
  if (!qword_3C0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0848);
  }

  return result;
}

unint64_t sub_F2BAC()
{
  result = qword_3C0860;
  if (!qword_3C0860)
  {
    sub_718D4(&qword_3C0858);
    sub_F2C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0860);
  }

  return result;
}

unint64_t sub_F2C30()
{
  result = qword_3C0868;
  if (!qword_3C0868)
  {
    sub_718D4(&qword_3C0850);
    sub_F2CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0868);
  }

  return result;
}

unint64_t sub_F2CB4()
{
  result = qword_3C0870;
  if (!qword_3C0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0870);
  }

  return result;
}

unint64_t sub_F2D08()
{
  result = qword_3C0888;
  if (!qword_3C0888)
  {
    sub_718D4(&qword_3C0880);
    sub_F2D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0888);
  }

  return result;
}

unint64_t sub_F2D8C()
{
  result = qword_3C0890;
  if (!qword_3C0890)
  {
    sub_718D4(&qword_3C0838);
    sub_F3ED0(&qword_3BD868, &type metadata accessor for CodeAnyActionModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0890);
  }

  return result;
}

unint64_t sub_F2E40()
{
  result = qword_3C08A0;
  if (!qword_3C08A0)
  {
    sub_718D4(&qword_3C0898);
    sub_F2EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C08A0);
  }

  return result;
}

unint64_t sub_F2EC4()
{
  result = qword_3C08A8;
  if (!qword_3C08A8)
  {
    sub_718D4(&qword_3C08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C08A8);
  }

  return result;
}

unint64_t sub_F2F40()
{
  result = qword_3C08B8;
  if (!qword_3C08B8)
  {
    sub_718D4(&qword_3BF898);
    sub_F2FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C08B8);
  }

  return result;
}

unint64_t sub_F2FC4()
{
  result = qword_3C08C0;
  if (!qword_3C08C0)
  {
    sub_718D4(&qword_3BDF58);
    sub_F3ED0(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C08C0);
  }

  return result;
}

uint64_t sub_F3078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationItemComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F30DC(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationItemComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F3138(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE7E8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s18LifecycleEventKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18LifecycleEventKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_F3310(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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

  v9 = sub_6620C(&qword_3BF898);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_6620C(&qword_3C0820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_2C1348();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_F34B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
    return result;
  }

  v8 = sub_6620C(&qword_3BF898);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3C0820);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_2C1348();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_F3638()
{
  sub_A6360();
  if (v0 <= 0x3F)
  {
    sub_F370C();
    if (v1 <= 0x3F)
    {
      sub_F3770();
      if (v2 <= 0x3F)
      {
        sub_2C1348();
        if (v3 <= 0x3F)
        {
          sub_F37C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F370C()
{
  if (!qword_3C0940)
  {
    sub_718D4(&qword_3BDF58);
    v0 = sub_2C4D38();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0940);
    }
  }
}

void sub_F3770()
{
  if (!qword_3C0948)
  {
    sub_2C5658();
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0948);
    }
  }
}

void sub_F37C8()
{
  if (!qword_3C0950)
  {
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C0950);
    }
  }
}

unint64_t sub_F38AC()
{
  result = qword_3C0998;
  if (!qword_3C0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0998);
  }

  return result;
}

unint64_t sub_F3904()
{
  result = qword_3C09A0;
  if (!qword_3C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C09A0);
  }

  return result;
}

unint64_t sub_F395C()
{
  result = qword_3C09A8;
  if (!qword_3C09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C09A8);
  }

  return result;
}

unint64_t sub_F39B4()
{
  result = qword_3C09B0;
  if (!qword_3C09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C09B0);
  }

  return result;
}

unint64_t sub_F3A0C()
{
  result = qword_3C09B8;
  if (!qword_3C09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C09B8);
  }

  return result;
}

unint64_t sub_F3A64()
{
  result = qword_3C09C0;
  if (!qword_3C09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C09C0);
  }

  return result;
}

uint64_t sub_F3B00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2BEC68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22[-1] - v8;
  v10 = sub_6620C(&qword_3C41D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22[-1] - v14;
  v16 = type metadata accessor for RecommendationItemComponentModel();
  sub_6932C(v1 + *(v16 + 32), v22, &qword_3C0850);
  if (v22[1])
  {

    sub_2BEC58();
    sub_6932C(v15, v12, &qword_3C41D0);
    v17 = 1;
    if ((*(v4 + 48))(v12, 1, v3) != 1)
    {
      (*(v4 + 32))(v9, v12, v3);
      (*(v4 + 16))(v6, v9, v3);
      sub_2BEB48();
      (*(v4 + 8))(v9, v3);
      v17 = 0;
    }

    sub_69198(v15, &qword_3C41D0);
    v18 = sub_2BEB58();
    (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
    return sub_F3EA0(v22);
  }

  else
  {
    sub_69198(v22, &qword_3C0850);
    v20 = sub_2BEB58();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

uint64_t sub_F3E08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389558;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F3E54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3896B0;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F3ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F3F18()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PageRootView() + 28));
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

uint64_t sub_F4068()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PageRootView() + 32));
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

uint64_t sub_F41B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3C0BF8);
  __chkstk_darwin(v6 - 8);
  v50 = &v44 - v7;
  v8 = sub_2C5268();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v44 - v11;
  v12 = type metadata accessor for Page();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C2098();
  v54 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a1, a1[3]);
  sub_2C4A78();
  sub_6620C(&qword_3C0C00);
  sub_6620C(&qword_3C0C08);
  if (!swift_dynamicCast())
  {
    return (*(v13 + 56))(a3, 1, 1, v12);
  }

  v48 = v13;
  sub_68D1C(v55, v58);
  v44 = a2;
  sub_2C4DB8();
  v19 = v18;
  if (qword_3BB840 != -1)
  {
    swift_once();
  }

  v20 = sub_2C00B8();
  sub_57AD8(v20, qword_3C3158);
  sub_691F8(v58, v56);
  v21 = sub_2C0098();
  v22 = sub_2C5DE8();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v15;
  v47 = a3;
  v46 = v12;
  v45 = v16;
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v55[0] = v26;
    *v25 = 136315138;
    sub_72084(v56, v57);
    v27 = sub_2C4A88();
    v29 = v28;
    sub_68CD0(v56);
    v30 = sub_5CCF4(v27, v29, v55);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v21, v22, "Trying to synchronously resolve page intent %s for initial page rendering", v25, 0xCu);
    sub_68CD0(v26);
    v19 = v18;
  }

  else
  {

    sub_68CD0(v56);
  }

  sub_72084(v58, v58[3]);
  sub_2C2068();
  v32 = v48;
  v33 = v19;
  sub_691F8(v58, v56);
  v34 = sub_2C0098();
  v35 = sub_2C5DE8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v55[0] = v37;
    *v36 = 136315138;
    sub_72084(v56, v57);
    v38 = sub_2C4A88();
    v40 = v39;
    sub_68CD0(v56);
    v41 = sub_5CCF4(v38, v40, v55);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v34, v35, "Successfully resolved page intent %s for initial page rendering", v36, 0xCu);
    sub_68CD0(v37);

    (*(v54 + 8))(v33, v45);
  }

  else
  {

    (*(v54 + 8))(v33, v45);
    sub_68CD0(v56);
  }

  v42 = v47;
  v43 = v46;
  sub_FAF30(v24, v47, type metadata accessor for Page);
  (*(v32 + 56))(v42, 0, 1, v43);
  return sub_68CD0(v58);
}

uint64_t sub_F4CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageContent.ContentType(0);
  __chkstk_darwin(v3);
  v5 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  PageContent.contentType.getter(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = a1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *v5;
      v8 = sub_6620C(&qword_3C0C40);
      v102 = &v87;
      v9 = *(v8 - 8);
      __chkstk_darwin(v8);
      v11 = &v87 - v10;
      v12 = type metadata accessor for PageRootView();
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      __chkstk_darwin(v12 - 8);
      sub_FB160(v1, &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageRootView);
      v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v16 = swift_allocObject();
      sub_FAF30(&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PageRootView);
      sub_F6728(v7, sub_FD254, v16, v11);

      v17 = sub_6620C(&qword_3C0C48);
      v18 = __chkstk_darwin(v17);
      (*(v9 + 16))(&v87 - v19, v11, v8, v18);
      swift_storeEnumTagMultiPayload();
      sub_6620C(&qword_3C0A60);
      sub_F8828();
      v20 = sub_718D4(&qword_3C0AF0);
      v21 = sub_718D4(&qword_3BBA48);
      v22 = sub_F8DB0();
      v104 = v21;
      v105 = v22;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v104 = v20;
      v105 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_2C33C8();

      return (*(v9 + 8))(v11, v8);
    }

    else
    {
      v43 = sub_6620C(&qword_3C0C60);
      v102 = &v87;
      v98 = *(v43 - 8);
      v99 = v43;
      __chkstk_darwin(v43);
      v100 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      __chkstk_darwin(v45);
      v96 = &v87 - v46;
      v47 = sub_6620C(&qword_3BBA60);
      v91 = &v87;
      v97 = v47;
      v95 = *(v47 - 8);
      __chkstk_darwin(v47);
      v93 = &v87 - v48;
      sub_2BFC18();
      v49 = type metadata accessor for PageRootView();
      v94 = &v87;
      v50 = *(v49 - 8);
      v51 = *(v50 + 64);
      __chkstk_darwin(v49 - 8);
      sub_FB160(v1, &v87 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageRootView);
      sub_2C5C18();
      v52 = sub_2C5C08();
      v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v52;
      *(v54 + 24) = &protocol witness table for MainActor;
      sub_FAF30(&v87 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v53, type metadata accessor for PageRootView);
      v92 = sub_2C5C58();
      v55 = *(v92 - 8);
      v56 = *(v55 + 64);
      __chkstk_darwin(v92);
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
      v58 = &v87 - v57;
      sub_2C5C28();
      if (sub_2BC804(2, 26, 4, 0))
      {
        v88 = sub_2C2928();
        v89 = &v87;
        v87 = *(v88 - 8);
        __chkstk_darwin(v88);
        v60 = &v87 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        v104 = 0;
        v105 = 0xE000000000000000;
        sub_2C61F8(17);

        v104 = 0xD00000000000002BLL;
        v105 = 0x8000000000303620;
        v103 = 65;
        v106._countAndFlagsBits = sub_2C6568();
        sub_2C5978(v106);

        v90 = &v87;
        v62 = __chkstk_darwin(v61);
        v63 = &v87 - v57;
        v64 = &v87 - v57;
        v65 = v92;
        (*(v55 + 16))(v63, v64, v92, v62);
        sub_2C2918();
        (*(v55 + 8))(v58, v65);
        v66 = v96;
        v67 = v97;
        (*(v95 + 32))(v96, v93, v97);
        v68 = sub_6620C(&qword_3BBA68);
        (*(v87 + 32))(&v66[*(v68 + 36)], v60, v88);
      }

      else
      {
        v69 = sub_6620C(&qword_3BBA70);
        v66 = v96;
        v70 = &v96[*(v69 + 36)];
        v71 = sub_2C2808();
        (*(v55 + 32))(&v70[*(v71 + 20)], &v87 - v57, v92);
        *v70 = &unk_2EA880;
        *(v70 + 1) = v54;
        v67 = v97;
        (*(v95 + 32))(v66, v93, v97);
      }

      v73 = v98;
      v72 = v99;
      v74 = v100;
      (*(v98 + 32))(v100, v66, v99);
      v96 = sub_6620C(&qword_3C0A60);
      v97 = &v87;
      __chkstk_darwin(v96);
      v76 = &v87 - v75;
      v77 = sub_6620C(&qword_3C0C58);
      v78 = __chkstk_darwin(v77);
      (*(v73 + 16))(&v87 - v79, v74, v72, v78);
      swift_storeEnumTagMultiPayload();
      sub_6620C(&qword_3C0A78);
      v80 = sub_72B74(&qword_3C0A68, &qword_3BBA60);
      v104 = v67;
      v105 = v80;
      swift_getOpaqueTypeConformance2();
      sub_F8924();
      sub_2C33C8();
      v81 = sub_6620C(&qword_3C0C48);
      __chkstk_darwin(v81);
      sub_6932C(v76, &v87 - v82, &qword_3C0A60);
      swift_storeEnumTagMultiPayload();
      sub_6620C(&qword_3C0C40);
      sub_F8828();
      v83 = sub_718D4(&qword_3C0AF0);
      v84 = sub_718D4(&qword_3BBA48);
      v85 = sub_F8DB0();
      v104 = v84;
      v105 = v85;
      v86 = swift_getOpaqueTypeConformance2();
      v104 = v83;
      v105 = v86;
      swift_getOpaqueTypeConformance2();
      sub_2C33C8();
      sub_69198(v76, &qword_3C0A60);
      return (*(v73 + 8))(v100, v72);
    }
  }

  else
  {
    v25 = sub_6620C(&qword_3C0C50);
    v102 = &v87;
    __chkstk_darwin(v25 - 8);
    v27 = &v87 - v26;
    sub_69130(v5, &v87 - v26, &qword_3C0C50);
    v28 = sub_6620C(&qword_3C0A78);
    v100 = &v87;
    __chkstk_darwin(v28);
    v30 = &v87 - v29;
    sub_F5DB8(v27, &v87 - v29);
    v98 = sub_6620C(&qword_3C0A60);
    v99 = &v87;
    __chkstk_darwin(v98);
    v32 = &v87 - v31;
    v33 = sub_6620C(&qword_3C0C58);
    __chkstk_darwin(v33);
    sub_6932C(v30, &v87 - v34, &qword_3C0A78);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0C60);
    v35 = sub_718D4(&qword_3BBA60);
    v36 = sub_72B74(&qword_3C0A68, &qword_3BBA60);
    v104 = v35;
    v105 = v36;
    swift_getOpaqueTypeConformance2();
    sub_F8924();
    sub_2C33C8();
    v37 = sub_6620C(&qword_3C0C48);
    v97 = &v87;
    __chkstk_darwin(v37);
    sub_6932C(v32, &v87 - v38, &qword_3C0A60);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0C40);
    sub_F8828();
    v39 = sub_718D4(&qword_3C0AF0);
    v40 = sub_718D4(&qword_3BBA48);
    v41 = sub_F8DB0();
    v104 = v40;
    v105 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v104 = v39;
    v105 = v42;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    sub_69198(v32, &qword_3C0A60);
    sub_69198(v30, &qword_3C0A78);
    return sub_69198(v27, &qword_3C0C50);
  }
}

uint64_t sub_F5CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = type metadata accessor for HostProxy.Event(0);
  v3[4] = swift_task_alloc();
  sub_2C5C18();
  v3[5] = sub_2C5C08();
  v5 = sub_2C5BB8();

  return _swift_task_switch(sub_FD25C, v5, v4);
}

uint64_t sub_F5DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for PageRootView();
  v4 = v3 - 8;
  v81 = *(v3 - 8);
  v80 = *(v81 + 64);
  __chkstk_darwin(v3);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_6620C(&qword_3C0C68);
  __chkstk_darwin(v69);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v66 - v8;
  v10 = sub_6620C(&qword_3C0C70);
  __chkstk_darwin(v10 - 8);
  v12 = &v66 - v11;
  v13 = sub_6620C(&qword_3C0C50);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v67 = &v66 - v14;
  v73 = sub_6620C(&qword_3C0AA0);
  __chkstk_darwin(v73);
  v17 = &v66 - v16;
  v78 = sub_6620C(&qword_3C0A90);
  __chkstk_darwin(v78);
  v71 = &v66 - v18;
  v19 = type metadata accessor for Page();
  v20 = *(v19 - 8);
  v70 = v19 - 8;
  v75 = v20;
  v74 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v72 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v66 - v23);
  sub_2C44C8();
  sub_6932C(a1, v15, &qword_3C0C50);
  type metadata accessor for PageContent(0);
  sub_6620C(&qword_3C0B28);
  v25 = v83;
  sub_2C4398();
  v66 = *(v25 + *(v4 + 28));
  v26 = type metadata accessor for HostProxy(0);
  v77 = sub_FB0D4(&qword_3BCB70, type metadata accessor for HostProxy);

  v76 = v26;
  *v17 = sub_2C2568();
  v17[8] = v27 & 1;
  v28 = type metadata accessor for PageView();
  v29 = v28[5];
  *&v17[v29] = swift_getKeyPath();
  sub_6620C(&qword_3C0C78);
  swift_storeEnumTagMultiPayload();
  v30 = v28[6];
  *&v17[v30] = swift_getKeyPath();
  sub_6620C(&qword_3C0C80);
  swift_storeEnumTagMultiPayload();
  v31 = &v17[v28[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v17[v28[8]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v28[9];
  *&v17[v33] = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  v34 = &v17[v28[12]];
  v84 = 0x3FF0000000000000;
  sub_2C4368();
  v35 = *(&v86 + 1);
  *v34 = v86;
  *(v34 + 1) = v35;
  v36 = sub_2C1EC8();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_6932C(v9, v68, &qword_3C0C68);
  sub_2C4368();
  sub_69198(v9, &qword_3C0C68);
  v37 = &v17[v28[14]];
  type metadata accessor for CGPoint(0);
  v84 = 0;
  v85 = 0;
  sub_2C4368();
  v38 = v87;
  *v37 = v86;
  *(v37 + 2) = v38;
  v39 = &v17[v28[15]];
  LOBYTE(v84) = 0;
  sub_2C4368();
  v40 = *(&v86 + 1);
  *v39 = v86;
  *(v39 + 1) = v40;
  v41 = v67;
  sub_6932C(v67, &v17[v28[10]], &qword_3C0C50);
  sub_6932C(v12, &v17[v28[11]], &qword_3C0C70);
  type metadata accessor for PaginationController();
  v42 = v66;
  sub_2C4DB8();
  sub_69198(v12, &qword_3C0C70);
  sub_69198(v41, &qword_3C0C50);
  *&v17[v28[16]] = v86;
  *&v17[v28[17]] = v42;
  v43 = v42;
  type metadata accessor for PageHeightValue();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  sub_2BE728();
  v84 = v44;
  sub_2C4368();
  v45 = v86;
  *&v17[*(sub_6620C(&qword_3C0AB8) + 36)] = v45;
  v46 = v70;
  v47 = sub_2BEF68();
  v48 = &v17[*(v73 + 36)];
  *v48 = v47;
  v48[1] = v49;
  v48[2] = v43;
  sub_F8B6C();

  v50 = v71;
  sub_2C3DA8();
  sub_69198(v17, &qword_3C0AA0);
  v52 = *v24;
  v51 = v24[1];
  v53 = v79;
  sub_FB160(v83, v79, type metadata accessor for PageRootView);
  v54 = v72;
  sub_FB160(v24, v72, type metadata accessor for Page);
  v55 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v56 = (v80 + *(v75 + 80) + v55) & ~*(v75 + 80);
  v57 = swift_allocObject();
  sub_FAF30(v53, v57 + v55, type metadata accessor for PageRootView);
  sub_FAF30(v54, v57 + v56, type metadata accessor for Page);
  v58 = (v50 + *(v78 + 36));
  v59 = sub_6620C(&qword_3C0AD8);

  sub_2C5C28();
  v60 = (v58 + *(v59 + 40));
  *v60 = v52;
  v60[1] = v51;
  *v58 = &unk_2EA950;
  v58[1] = v57;
  sub_F8A78();
  v61 = v82;
  sub_2C3CB8();
  sub_69198(v50, &qword_3C0A90);
  LOBYTE(v59) = *(v24 + *(v46 + 44));
  v62 = sub_2C2568();
  LOBYTE(v57) = v63;
  sub_FC380(v24, type metadata accessor for Page);
  v64 = v61 + *(sub_6620C(&qword_3C0A88) + 36);
  *v64 = v62;
  *(v64 + 8) = v57 & 1;
  *(v64 + 9) = v59;
  result = sub_6620C(&qword_3C0A78);
  *(v61 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_F6728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v48 = sub_6620C(&qword_3C0AF0);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v43 - v8;
  v9 = sub_6620C(&qword_3BBA48);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for PageRootView();
  v13 = *(v4 + *(v12 + 20));
  v14 = type metadata accessor for PageErrorView();
  v15 = v14[8];
  *&v11[v15] = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v16 = v14[9];
  *&v11[v16] = swift_getKeyPath();
  sub_6620C(&qword_3C0C88);
  swift_storeEnumTagMultiPayload();
  v17 = &v11[v14[10]];
  LOBYTE(v52) = 0;

  sub_2C4368();
  v18 = v54;
  *v17 = v53;
  *(v17 + 1) = v18;
  *v11 = a1;
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v13;
  swift_errorRetain();
  swift_errorRetain();

  v19 = sub_1896C0(a1);
  v11[8] = v19;
  v47 = v9;
  v20 = &v11[*(v9 + 36)];
  *v20 = 0x676150726F727245;
  *(v20 + 1) = 0xE900000000000065;
  *(v20 + 2) = v13;
  v21 = *(v12 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_FB160(v4, &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageRootView);
  sub_2C5C18();

  v23 = sub_2C5C08();
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_FAF30(&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PageRootView);
  v26 = sub_2C5C58();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v43 - v29;
  sub_2C5C28();
  if (sub_2BC804(2, 26, 4, 0))
  {
    v45 = sub_2C2928();
    v46 = &v43;
    v44 = *(v45 - 8);
    __chkstk_darwin(v45);
    v43 = &v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_2C61F8(17);

    v53 = 0xD00000000000002BLL;
    v54 = 0x8000000000303620;
    v52 = 149;
    v55._countAndFlagsBits = sub_2C6568();
    sub_2C5978(v55);

    v33 = __chkstk_darwin(v32);
    (*(v27 + 16))(&v43 - v29, &v43 - v29, v26, v33);
    v34 = v43;
    sub_2C2918();
    (*(v27 + 8))(v30, v26);
    v35 = v49;
    sub_69130(v11, v49, &qword_3BBA48);
    v36 = sub_6620C(&qword_3BBA50);
    (*(v44 + 32))(v35 + *(v36 + 36), v34, v45);
  }

  else
  {
    v37 = sub_6620C(&qword_3BBA58);
    v35 = v49;
    v38 = (v49 + *(v37 + 36));
    v39 = sub_2C2808();
    (*(v27 + 32))(&v38[*(v39 + 20)], &v43 - v29, v26);
    *v38 = &unk_2EA9C0;
    *(v38 + 1) = v25;
    sub_69130(v11, v35, &qword_3BBA48);
  }

  v40 = sub_F8DB0();
  v53 = v47;
  v54 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_2C3DA8();
  return (*(v50 + 8))(v35, v41);
}

uint64_t PageRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_6620C(&qword_3C09D8);
  __chkstk_darwin(v2 - 8);
  v100 = &v75 - v3;
  v4 = sub_6620C(&qword_3C09E0);
  v5 = *(v4 - 8);
  v98 = v4;
  v99 = v5;
  __chkstk_darwin(v4);
  v97 = &v75 - v6;
  v7 = type metadata accessor for PageRootView();
  v96 = *(v7 - 8);
  v95 = *(v96 + 8);
  v83 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v103 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BEE48();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v90 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_6620C(&qword_3C09E8);
  v11 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - v12;
  v13 = type metadata accessor for PageContent.PageInfo(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C09F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v75 - v18;
  v20 = sub_6620C(&qword_3C09F8);
  __chkstk_darwin(v20 - 8);
  v22 = &v75 - v21;
  v23 = sub_6620C(&qword_3C0A00);
  v79 = v23;
  __chkstk_darwin(v23);
  v25 = &v75 - v24;
  v89 = sub_6620C(&qword_3C0A08);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v75 - v26;
  v86 = sub_6620C(&qword_3C0A10) - 8;
  __chkstk_darwin(v86);
  v102 = &v75 - v27;
  v85 = sub_6620C(&qword_3C0A18) - 8;
  __chkstk_darwin(v85);
  v87 = &v75 - v28;
  v94 = sub_6620C(&qword_3C0A20);
  __chkstk_darwin(v94);
  v93 = &v75 - v29;
  sub_F4CC0(v19);
  v30 = v1;
  sub_F79C4(v22);
  sub_69198(v19, &qword_3C09F0);
  v80 = v25;
  sub_F7E9C(v25);
  sub_69198(v22, &qword_3C09F8);
  KeyPath = swift_getKeyPath();
  v31 = &v25[*(v23 + 36)];
  v32 = *(sub_6620C(&qword_3C0A28) + 28);
  v77 = sub_6620C(&qword_3BEF90);
  sub_2C4378();
  v33 = v14;
  v34 = *(v14 + 44);
  v35 = v11;
  v36 = *(v11 + 16);
  v37 = &v16[v34];
  v38 = v16;
  v39 = v82;
  v40 = v84;
  v36(v82, v37, v84);
  sub_FC380(v38, type metadata accessor for PageContent.PageInfo);
  sub_2BFC48();
  (*(v35 + 8))(v39, v40);
  v41 = sub_2C1448();
  (*(*(v41 - 8) + 56))(v31 + v32, 0, 1, v41);
  *v31 = KeyPath;
  sub_2C4378();
  v42 = *(v38 + *(v33 + 40));
  sub_FC380(v38, type metadata accessor for PageContent.PageInfo);
  v44 = v90;
  v43 = v91;
  v45 = &enum case for HostingControllerVisibilityStateManager.State.hidden(_:);
  if (!v42)
  {
    v45 = &enum case for HostingControllerVisibilityStateManager.State.visible(_:);
  }

  v46 = v92;
  (*(v91 + 104))(v90, *v45, v92);
  sub_F84B8();
  v47 = v81;
  v48 = v80;
  sub_2C3DC8();
  (*(v43 + 8))(v44, v46);
  sub_69198(v48, &qword_3C0A00);
  *&v104[0] = *(sub_F3F18() + 16);

  sub_6620C(&qword_3BCE08);
  sub_72B74(&qword_3BCE10, &qword_3BCE08);
  v49 = sub_2C2408();

  v50 = v30;
  v51 = v103;
  sub_FB160(v30, v103, type metadata accessor for PageRootView);
  v52 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v53 = swift_allocObject();
  v96 = type metadata accessor for PageRootView;
  sub_FAF30(v51, v53 + v52, type metadata accessor for PageRootView);
  v54 = v102;
  (*(v88 + 32))(v102, v47, v89);
  v55 = v86;
  *(v54 + *(v86 + 60)) = v49;
  v56 = (v54 + *(v55 + 64));
  *v56 = sub_F973C;
  v56[1] = v53;
  v76 = v50;
  v57 = v97;
  sub_2C1478();
  v58 = v85;
  sub_72B74(&qword_3C0B30, &qword_3C09E0);
  v59 = v87;
  v60 = v98;
  sub_2C2448();
  (*(v99 + 8))(v57, v60);
  v61 = v103;
  sub_FB160(v50, v103, type metadata accessor for PageRootView);
  v62 = swift_allocObject();
  v63 = v96;
  sub_FAF30(v61, v62 + v52, v96);
  sub_69130(v102, v59, &qword_3C0A10);
  v64 = (v59 + *(v58 + 64));
  *v64 = sub_FA604;
  v64[1] = v62;
  sub_FB160(v76, v61, type metadata accessor for PageRootView);
  v65 = swift_allocObject();
  sub_FAF30(v61, v65 + v52, v63);
  sub_FE110(0, 0, sub_FA754, v65, v104);
  v66 = v59;
  v67 = v93;
  sub_69130(v66, v93, &qword_3C0A18);
  v68 = (v67 + *(v94 + 36));
  v69 = v104[1];
  *v68 = v104[0];
  v68[1] = v69;
  v68[2] = v104[2];
  v70 = enum case for PresentationSource.stack(_:);
  v71 = sub_2BFE88();
  v72 = *(v71 - 8);
  v73 = v100;
  (*(v72 + 104))(v100, v70, v71);
  (*(v72 + 56))(v73, 0, 1, v71);
  sub_FAAB0();
  sub_2C3A88();
  sub_69198(v73, &qword_3C09D8);
  return sub_69198(v67, &qword_3C0A20);
}

uint64_t type metadata accessor for PageRootView()
{
  result = qword_3C0BA8;
  if (!qword_3C0BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F79C4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_6620C(&qword_3C0B08);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v28 = &v26 - v3;
  v27 = sub_2C4478();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C0C30);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_6620C(&qword_3C0C38);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90);
  sub_2C4378();
  sub_691F8(v18, v32);
  sub_FC380(v18, type metadata accessor for PageContent.PageInfo);
  sub_2C4398();
  swift_getKeyPath();
  sub_2C44E8();

  sub_69198(v9, &qword_3C0C30);
  sub_2C4468();
  sub_2C46F8();
  (*(v4 + 8))(v6, v27);
  sub_2C4518();

  sub_69198(v12, &qword_3C0C38);
  v19 = sub_72084(v32, v32[3]);
  v20 = __chkstk_darwin(v19);
  (*(v22 + 16))(&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  type metadata accessor for Page();
  v23 = v28;
  sub_2C4C88();
  sub_6620C(&qword_3C09F0);
  sub_F871C();
  sub_72B74(&qword_3C0B10, &qword_3C0B08);
  v24 = v29;
  sub_2C3B48();
  (*(v30 + 8))(v23, v24);
  sub_69198(v15, &qword_3C0C38);
  return sub_68CD0(v32);
}

uint64_t sub_F7E9C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_6620C(&qword_3C0C20);
  __chkstk_darwin(v2);
  v4 = &v34 - v3;
  v5 = sub_2C4E58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_6620C(&qword_3C0C28);
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v34 - v10;
  sub_2C4DB8();
  if (v43 == 1)
  {
    v12 = sub_2C2228();
    v37 = v13;
    v38 = v12;
    sub_2C4DB8();
    sub_6620C(&qword_3C09F8);
    v14 = sub_F871C();
    v40 = v4;
    v15 = v14;
    v16 = sub_718D4(&qword_3C09F0);
    v35 = v9;
    v36 = v16;
    v17 = v16;
    v39 = v2;
    v18 = sub_718D4(&qword_3C0B08);
    v34 = v1;
    v19 = v18;
    v20 = sub_72B74(&qword_3C0B10, &qword_3C0B08);
    v43 = v17;
    v44 = v19;
    v45 = v15;
    v46 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = sub_FB0D4(&qword_3BD4F0, type metadata accessor for Page);
    sub_2C29F8();

    (*(v6 + 8))(v8, v5);
    v23 = v35;
    v24 = v41;
    (*(v35 + 16))(v40, v11, v41);
    swift_storeEnumTagMultiPayload();
    v25 = sub_718D4(&qword_3C0A48);
    v43 = v36;
    v44 = v25;
    v45 = v15;
    v46 = OpaqueTypeConformance2;
    v47 = v22;
    swift_getOpaqueTypeConformance2();
    sub_F8E6C();
    sub_2C33C8();
    return (*(v23 + 8))(v11, v24);
  }

  else
  {
    sub_6932C(v1, v4, &qword_3C09F8);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C09F8);
    v27 = sub_718D4(&qword_3C09F0);
    v28 = sub_718D4(&qword_3C0A48);
    v29 = sub_F871C();
    v30 = sub_718D4(&qword_3C0B08);
    v31 = sub_72B74(&qword_3C0B10, &qword_3C0B08);
    v43 = v27;
    v44 = v30;
    v45 = v29;
    v46 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = sub_FB0D4(&qword_3BD4F0, type metadata accessor for Page);
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v32;
    v47 = v33;
    swift_getOpaqueTypeConformance2();
    sub_F8E6C();
    return sub_2C33C8();
  }
}

uint64_t sub_F83E8(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C0C18);
  __chkstk_darwin(v2 - 8);
  sub_6932C(a1, &v5 - v3, &qword_3C0C18);
  return sub_2C2D18();
}

unint64_t sub_F84B8()
{
  result = qword_3C0A30;
  if (!qword_3C0A30)
  {
    sub_718D4(&qword_3C0A00);
    sub_F8570();
    sub_72B74(&qword_3C0B20, &qword_3C0A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A30);
  }

  return result;
}

unint64_t sub_F8570()
{
  result = qword_3C0A38;
  if (!qword_3C0A38)
  {
    sub_718D4(&qword_3C0A40);
    sub_718D4(&qword_3C09F0);
    sub_718D4(&qword_3C0A48);
    sub_F871C();
    sub_718D4(&qword_3C0B08);
    sub_72B74(&qword_3C0B10, &qword_3C0B08);
    swift_getOpaqueTypeConformance2();
    sub_FB0D4(&qword_3BD4F0, type metadata accessor for Page);
    swift_getOpaqueTypeConformance2();
    sub_F8E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A38);
  }

  return result;
}

unint64_t sub_F871C()
{
  result = qword_3C0A50;
  if (!qword_3C0A50)
  {
    sub_718D4(&qword_3C09F0);
    sub_F8828();
    sub_718D4(&qword_3C0AF0);
    sub_718D4(&qword_3BBA48);
    sub_F8DB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A50);
  }

  return result;
}

unint64_t sub_F8828()
{
  result = qword_3C0A58;
  if (!qword_3C0A58)
  {
    sub_718D4(&qword_3C0A60);
    sub_718D4(&qword_3BBA60);
    sub_72B74(&qword_3C0A68, &qword_3BBA60);
    swift_getOpaqueTypeConformance2();
    sub_F8924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A58);
  }

  return result;
}

unint64_t sub_F8924()
{
  result = qword_3C0A70;
  if (!qword_3C0A70)
  {
    sub_718D4(&qword_3C0A78);
    sub_F89B0();
    sub_F8D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A70);
  }

  return result;
}

unint64_t sub_F89B0()
{
  result = qword_3C0A80;
  if (!qword_3C0A80)
  {
    sub_718D4(&qword_3C0A88);
    sub_718D4(&qword_3C0A90);
    sub_F8A78();
    swift_getOpaqueTypeConformance2();
    sub_F8D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A80);
  }

  return result;
}

unint64_t sub_F8A78()
{
  result = qword_3C0A98;
  if (!qword_3C0A98)
  {
    sub_718D4(&qword_3C0A90);
    sub_718D4(&qword_3C0AA0);
    sub_F8B6C();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C0AD0, &qword_3C0AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0A98);
  }

  return result;
}

unint64_t sub_F8B6C()
{
  result = qword_3C0AA8;
  if (!qword_3C0AA8)
  {
    sub_718D4(&qword_3C0AA0);
    sub_F8BF8();
    sub_B3728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AA8);
  }

  return result;
}

unint64_t sub_F8BF8()
{
  result = qword_3C0AB0;
  if (!qword_3C0AB0)
  {
    sub_718D4(&qword_3C0AB8);
    sub_FB0D4(&qword_3C0AC0, type metadata accessor for PageView);
    sub_F8CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AB0);
  }

  return result;
}

unint64_t sub_F8CB4()
{
  result = qword_3C0AC8;
  if (!qword_3C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AC8);
  }

  return result;
}

unint64_t sub_F8D08()
{
  result = qword_3C0AE0;
  if (!qword_3C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AE0);
  }

  return result;
}

unint64_t sub_F8D5C()
{
  result = qword_3C0AE8;
  if (!qword_3C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AE8);
  }

  return result;
}

unint64_t sub_F8DB0()
{
  result = qword_3C0AF8;
  if (!qword_3C0AF8)
  {
    sub_718D4(&qword_3BBA48);
    sub_FB0D4(&qword_3C0B00, type metadata accessor for PageErrorView);
    sub_B3728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0AF8);
  }

  return result;
}

unint64_t sub_F8E6C()
{
  result = qword_3C0B18;
  if (!qword_3C0B18)
  {
    sub_718D4(&qword_3C09F8);
    sub_F871C();
    sub_718D4(&qword_3C09F0);
    sub_718D4(&qword_3C0B08);
    sub_72B74(&qword_3C0B10, &qword_3C0B08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0B18);
  }

  return result;
}

uint64_t sub_F8F90(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_2BEE78();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BEE48();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3BC238);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v37 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_FB160(a1, v14, type metadata accessor for HostProxy.Event);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_FC380(v14, type metadata accessor for HostProxy.Event);
  }

  v21 = v14[*(sub_6620C(&qword_3BEFC0) + 48)];
  (*(v16 + 32))(v20, v14, v15);
  if (sub_2C16E8())
  {
    v33 = v21;
    sub_F4068();
    sub_2BEE98();

    (*(v6 + 104))(v8, enum case for HostingControllerVisibilityStateManager.State.visible(_:), v5);
    sub_FB0D4(&qword_3C0C10, &type metadata accessor for HostingControllerVisibilityStateManager.State);
    sub_2C5A88();
    sub_2C5A88();
    if (v41 == v39 && v42 == v40)
    {
      v22 = *(v6 + 8);
      v22(v8, v5);
      v22(v11, v5);
    }

    else
    {
      LODWORD(v32) = sub_2C65B8();
      v25 = *(v6 + 8);
      v25(v8, v5);
      v25(v11, v5);

      if ((v32 & 1) == 0)
      {
        v24 = 0;
        goto LABEL_11;
      }
    }

    sub_F4068();
    v27 = v34;
    v26 = v35;
    v28 = v36;
    (*(v35 + 104))(v34, enum case for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.onDisappear(_:), v36);
    sub_2BEEB8();

    (*(v26 + 8))(v27, v28);
    v24 = 1;
LABEL_11:
    v21 = v33;
    goto LABEL_12;
  }

  v24 = 0;
LABEL_12:
  PageContent.update(with:animated:)(v20, v21);
  if (v24)
  {
    sub_F4068();
    v30 = v34;
    v29 = v35;
    v31 = v36;
    (*(v35 + 104))(v34, enum case for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.onAppear(_:), v36);
    sub_2BEEB8();

    (*(v29 + 8))(v30, v31);
  }

  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_F973C(uint64_t a1)
{
  v3 = *(type metadata accessor for PageRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_F8F90(a1, v4);
}

uint64_t sub_F97AC()
{
  v0 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v0);
  sub_6620C(&qword_3BEF90);
  sub_2C4378();
  sub_6620C(&qword_3C09E8);
  sub_2BFC58(0);
  sub_12AC84();
  return sub_2C4388();
}

uint64_t sub_F988C()
{
  v1 = type metadata accessor for PageRootView();
  v82 = *(*(v1 - 8) + 80);
  v83 = v1;
  v80 = *(*(v1 - 8) + 64);
  v81 = (v82 + 16) & ~v82;
  v84 = v0;
  v2 = v0 + v81;
  sub_68CD0(v0 + v81);
  v3 = type metadata accessor for PageContent.PageInfo(0);
  v4 = v0 + v81 + v3[5];
  v5 = type metadata accessor for Page();
  v6 = *(*(v5 - 1) + 48);
  v85 = v6;
  if (!v6(v4, 1, v5))
  {

    v7 = v5[5];
    v8 = sub_2BFDD8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }

    v11 = v5[6];
    if (!v10(v4 + v11, 1, v8))
    {
      (*(v9 + 8))(v4 + v11, v8);
    }

    v12 = v5[7];
    v13 = sub_2C1A28();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
    v14 = v5[8];
    v15 = sub_2C1A68();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
    v16 = v5[10];
    v17 = sub_2C15F8();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v4 + v16, 1, v17))
    {
      (*(v18 + 8))(v4 + v16, v17);
    }

    v19 = v5[17];
    v20 = sub_2BEF78();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);

    v21 = v5[19];
    v22 = sub_2C4BB8();
    (*(*(v22 - 8) + 8))(v4 + v21, v22);

    v6 = v85;
    if (*(v4 + v5[25] + 8))
    {
    }
  }

  v23 = v2 + v3[6];
  if (!v6(v23, 1, v5))
  {

    v24 = v5[5];
    v25 = sub_2BFDD8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    v28 = v5[6];
    if (!v27(v23 + v28, 1, v25))
    {
      (*(v26 + 8))(v23 + v28, v25);
    }

    v29 = v5[7];
    v30 = sub_2C1A28();
    (*(*(v30 - 8) + 8))(v23 + v29, v30);
    v31 = v5[8];
    v32 = sub_2C1A68();
    (*(*(v32 - 8) + 8))(v23 + v31, v32);
    v33 = v5[10];
    v34 = sub_2C15F8();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v23 + v33, 1, v34))
    {
      (*(v35 + 8))(v23 + v33, v34);
    }

    v36 = v5[17];
    v37 = sub_2BEF78();
    (*(*(v37 - 8) + 8))(v23 + v36, v37);

    v38 = v5[19];
    v39 = sub_2C4BB8();
    (*(*(v39 - 8) + 8))(v23 + v38, v39);

    v6 = v85;
    if (*(v23 + v5[25] + 8))
    {
    }
  }

  v40 = v2 + v3[7];
  if (!v6(v40, 1, v5))
  {

    v41 = v5[5];
    v42 = sub_2BFDD8();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (!v44(v40 + v41, 1, v42))
    {
      (*(v43 + 8))(v40 + v41, v42);
    }

    v45 = v5[6];
    if (!v44(v40 + v45, 1, v42))
    {
      (*(v43 + 8))(v40 + v45, v42);
    }

    v46 = v5[7];
    v47 = sub_2C1A28();
    (*(*(v47 - 8) + 8))(v40 + v46, v47);
    v48 = v5[8];
    v49 = sub_2C1A68();
    (*(*(v49 - 8) + 8))(v40 + v48, v49);
    v50 = v5[10];
    v51 = sub_2C15F8();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(v40 + v50, 1, v51))
    {
      (*(v52 + 8))(v40 + v50, v51);
    }

    v53 = v5[17];
    v54 = sub_2BEF78();
    (*(*(v54 - 8) + 8))(v40 + v53, v54);

    v55 = v5[19];
    v56 = sub_2C4BB8();
    (*(*(v56 - 8) + 8))(v40 + v55, v56);

    v6 = v85;
    if (*(v40 + v5[25] + 8))
    {
    }
  }

  v57 = v3[9];
  v58 = sub_6620C(&qword_3C09E8);
  (*(*(v58 - 8) + 8))(v2 + v57, v58);
  v59 = v2 + v3[10];
  if (!v6(v59, 1, v5))
  {

    v60 = v5[5];
    v61 = sub_2BFDD8();
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (!v63(v59 + v60, 1, v61))
    {
      (*(v62 + 8))(v59 + v60, v61);
    }

    v64 = v5[6];
    if (!v63(v59 + v64, 1, v61))
    {
      (*(v62 + 8))(v59 + v64, v61);
    }

    v65 = v5[7];
    v66 = sub_2C1A28();
    (*(*(v66 - 8) + 8))(v59 + v65, v66);
    v67 = v5[8];
    v68 = sub_2C1A68();
    (*(*(v68 - 8) + 8))(v59 + v67, v68);
    v69 = v5[10];
    v70 = sub_2C15F8();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v59 + v69, 1, v70))
    {
      (*(v71 + 8))(v59 + v69, v70);
    }

    v72 = v5[17];
    v73 = sub_2BEF78();
    (*(*(v73 - 8) + 8))(v59 + v72, v73);

    v74 = v5[19];
    v75 = sub_2C4BB8();
    (*(*(v75 - 8) + 8))(v59 + v74, v75);

    if (*(v59 + v5[25] + 8))
    {
    }
  }

  sub_6620C(&qword_3BEF90);

  v76 = v2 + *(type metadata accessor for PageContent(0) + 20);
  v77 = sub_2C0368();
  v78 = *(v77 - 8);
  if (!(*(v78 + 48))(v76, 1, v77))
  {
    (*(v78 + 8))(v76, v77);
  }

  sub_6620C(&qword_3C0B28);

  return _swift_deallocObject(v84, v81 + v80, v82 | 7);
}

uint64_t sub_FA604()
{
  type metadata accessor for PageRootView();

  return sub_F97AC();
}

uint64_t sub_FA674()
{
  v0 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v0);
  sub_6620C(&qword_3BEF90);
  sub_2C4378();
  sub_6620C(&qword_3C09E8);
  sub_2BFC58(1);
  sub_12AC84();
  return sub_2C4388();
}

uint64_t sub_FA758(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for HostProxy.Event(0);
  v2[5] = swift_task_alloc();
  sub_2C5C18();
  v2[6] = sub_2C5C08();
  v4 = sub_2C5BB8();

  return _swift_task_switch(sub_FA820, v4, v3);
}

uint64_t sub_FA820()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = *(v2 + *(type metadata accessor for Page() + 36));
  sub_F3F18();

  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  sub_2C23D8();

  sub_FC380(v1, type metadata accessor for HostProxy.Event);

  v4 = v0[1];

  return v4();
}

uint64_t sub_FA910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = type metadata accessor for HostProxy.Event(0);
  v3[4] = swift_task_alloc();
  sub_2C5C18();
  v3[5] = sub_2C5C08();
  v5 = sub_2C5BB8();

  return _swift_task_switch(sub_FA9D8, v5, v4);
}

uint64_t sub_FA9D8()
{
  v1 = *(v0 + 32);

  sub_F3F18();

  *v1 = 0;
  swift_storeEnumTagMultiPayload();
  sub_2C23D8();

  sub_FC380(v1, type metadata accessor for HostProxy.Event);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_FAAB0()
{
  result = qword_3C0B38;
  if (!qword_3C0B38)
  {
    sub_718D4(&qword_3C0A20);
    sub_72B74(&qword_3C0B40, &qword_3C0A18);
    sub_FAB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0B38);
  }

  return result;
}

unint64_t sub_FAB68()
{
  result = qword_3C0B48;
  if (!qword_3C0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0B48);
  }

  return result;
}

uint64_t sub_FABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageContent(0);
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

uint64_t sub_FACBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PageContent(0);
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

void sub_FAD74()
{
  type metadata accessor for PageContent(319);
  if (v0 <= 0x3F)
  {
    sub_2C4E28();
    if (v1 <= 0x3F)
    {
      sub_2C1498();
      if (v2 <= 0x3F)
      {
        sub_FAE78(319, &unk_3C0BB8, type metadata accessor for HostProxy);
        if (v3 <= 0x3F)
        {
          sub_FAE78(319, &qword_3BFBB8, &type metadata accessor for HostingControllerVisibilityStateManager);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_FAE78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_FAECC()
{
  sub_718D4(&qword_3C0A20);
  sub_FAAB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_FAF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_FAFF8()
{
  v2 = *(type metadata accessor for PageRootView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_88BE0;

  return sub_F5CF0(v4, v5, v0 + v3);
}

uint64_t sub_FB0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FB124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C58();
  *a1 = result & 1;
  return result;
}

uint64_t sub_FB160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FB1C8()
{
  v106 = type metadata accessor for PageRootView();
  v108 = *(*(v106 - 8) + 80);
  v1 = *(*(v106 - 8) + 64);
  v2 = type metadata accessor for Page();
  v3 = *(v2 - 1);
  v4 = *(v3 + 80);
  v107 = *(v3 + 64);
  v109 = v0;
  v105 = (v108 + 16) & ~v108;
  v5 = v0 + v105;
  sub_68CD0(v0 + v105);
  v6 = type metadata accessor for PageContent.PageInfo(0);
  v7 = v0 + v105 + v6[5];
  v8 = *(v3 + 48);
  v110 = v8;
  v111 = v4;
  if (!v8(v7, 1, v2))
  {
    v102 = v1;

    v9 = v2[5];
    v10 = sub_2BFDD8();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (!v12(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v13 = v2[6];
    if (!v12(v7 + v13, 1, v10))
    {
      (*(v11 + 8))(v7 + v13, v10);
    }

    v14 = v2[7];
    v15 = sub_2C1A28();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
    v16 = v2[8];
    v17 = sub_2C1A68();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
    v18 = v2[10];
    v19 = sub_2C15F8();
    v20 = *(v19 - 8);
    v1 = v102;
    if (!(*(v20 + 48))(v7 + v18, 1, v19))
    {
      (*(v20 + 8))(v7 + v18, v19);
    }

    v21 = v2[17];
    v22 = sub_2BEF78();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);

    v23 = v2[19];
    v24 = sub_2C4BB8();
    (*(*(v24 - 8) + 8))(v7 + v23, v24);

    v8 = v110;
    v4 = v111;
    if (*(v7 + v2[25] + 8))
    {
    }
  }

  v25 = v5 + v6[6];
  if (!v8(v25, 1, v2))
  {
    v103 = v1;

    v26 = v2[5];
    v27 = sub_2BFDD8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (!v29(v25 + v26, 1, v27))
    {
      (*(v28 + 8))(v25 + v26, v27);
    }

    v30 = v2[6];
    if (!v29(v25 + v30, 1, v27))
    {
      (*(v28 + 8))(v25 + v30, v27);
    }

    v31 = v2[7];
    v32 = sub_2C1A28();
    (*(*(v32 - 8) + 8))(v25 + v31, v32);
    v33 = v2[8];
    v34 = sub_2C1A68();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v2[10];
    v36 = sub_2C15F8();
    v37 = *(v36 - 8);
    v1 = v103;
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v38 = v2[17];
    v39 = sub_2BEF78();
    (*(*(v39 - 8) + 8))(v25 + v38, v39);

    v40 = v2[19];
    v41 = sub_2C4BB8();
    (*(*(v41 - 8) + 8))(v25 + v40, v41);

    v8 = v110;
    v4 = v111;
    if (*(v25 + v2[25] + 8))
    {
    }
  }

  v42 = v1 + v4;
  v43 = v5 + v6[7];
  if (!v8(v43, 1, v2))
  {
    v104 = v1 + v4;

    v44 = v2[5];
    v45 = sub_2BFDD8();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (!v47(v43 + v44, 1, v45))
    {
      (*(v46 + 8))(v43 + v44, v45);
    }

    v48 = v2[6];
    if (!v47(v43 + v48, 1, v45))
    {
      (*(v46 + 8))(v43 + v48, v45);
    }

    v49 = v2[7];
    v50 = sub_2C1A28();
    (*(*(v50 - 8) + 8))(v43 + v49, v50);
    v51 = v2[8];
    v52 = sub_2C1A68();
    (*(*(v52 - 8) + 8))(v43 + v51, v52);
    v53 = v2[10];
    v54 = sub_2C15F8();
    v55 = *(v54 - 8);
    v4 = v111;
    if (!(*(v55 + 48))(v43 + v53, 1, v54))
    {
      (*(v55 + 8))(v43 + v53, v54);
    }

    v56 = v2[17];
    v57 = sub_2BEF78();
    (*(*(v57 - 8) + 8))(v43 + v56, v57);

    v58 = v2[19];
    v59 = sub_2C4BB8();
    (*(*(v59 - 8) + 8))(v43 + v58, v59);

    v8 = v110;
    v42 = v104;
    if (*(v43 + v2[25] + 8))
    {
    }
  }

  v60 = v105 + v42;
  v61 = v6[9];
  v62 = sub_6620C(&qword_3C09E8);
  (*(*(v62 - 8) + 8))(v5 + v61, v62);
  v63 = v5 + v6[10];
  if (!v8(v63, 1, v2))
  {

    v64 = v2[5];
    v65 = sub_2BFDD8();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (!v67(v63 + v64, 1, v65))
    {
      (*(v66 + 8))(v63 + v64, v65);
    }

    v68 = v2[6];
    if (!v67(v63 + v68, 1, v65))
    {
      (*(v66 + 8))(v63 + v68, v65);
    }

    v69 = v2[7];
    v70 = sub_2C1A28();
    (*(*(v70 - 8) + 8))(v63 + v69, v70);
    v71 = v2[8];
    v72 = sub_2C1A68();
    (*(*(v72 - 8) + 8))(v63 + v71, v72);
    v73 = v2[10];
    v74 = sub_2C15F8();
    v75 = *(v74 - 8);
    v4 = v111;
    if (!(*(v75 + 48))(v63 + v73, 1, v74))
    {
      (*(v75 + 8))(v63 + v73, v74);
    }

    v76 = v2[17];
    v77 = sub_2BEF78();
    (*(*(v77 - 8) + 8))(v63 + v76, v77);

    v78 = v2[19];
    v79 = sub_2C4BB8();
    (*(*(v79 - 8) + 8))(v63 + v78, v79);

    if (*(v63 + v2[25] + 8))
    {
    }
  }

  v80 = v60 & ~v4;
  sub_6620C(&qword_3BEF90);

  v81 = v5 + *(type metadata accessor for PageContent(0) + 20);
  v82 = sub_2C0368();
  v83 = *(v82 - 8);
  if (!(*(v83 + 48))(v81, 1, v82))
  {
    (*(v83 + 8))(v81, v82);
  }

  sub_6620C(&qword_3C0B28);

  v84 = v109 + v80;

  v85 = v2[5];
  v86 = sub_2BFDD8();
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  if (!v88(v109 + v80 + v85, 1, v86))
  {
    (*(v87 + 8))(v84 + v85, v86);
  }

  v89 = v2[6];
  if (!v88(v84 + v89, 1, v86))
  {
    (*(v87 + 8))(v84 + v89, v86);
  }

  v90 = v2[7];
  v91 = sub_2C1A28();
  (*(*(v91 - 8) + 8))(v84 + v90, v91);
  v92 = v2[8];
  v93 = sub_2C1A68();
  (*(*(v93 - 8) + 8))(v84 + v92, v93);
  v94 = v2[10];
  v95 = sub_2C15F8();
  v96 = *(v95 - 8);
  if (!(*(v96 + 48))(v84 + v94, 1, v95))
  {
    (*(v96 + 8))(v84 + v94, v95);
  }

  v97 = v2[17];
  v98 = sub_2BEF78();
  (*(*(v98 - 8) + 8))(v84 + v97, v98);

  v99 = v2[19];
  v100 = sub_2C4BB8();
  (*(*(v100 - 8) + 8))(v84 + v99, v100);

  if (*(v84 + v2[25] + 8))
  {
  }

  return _swift_deallocObject(v109, v80 + v107, v108 | v4 | 7);
}

uint64_t sub_FC250()
{
  v2 = *(type metadata accessor for PageRootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Page() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_7100C;

  return sub_FA758(v0 + v3, v0 + v6);
}

uint64_t sub_FC380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FC3E8()
{
  v1 = type metadata accessor for PageRootView();
  v82 = *(*(v1 - 8) + 80);
  v83 = v1;
  v80 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v84 = v0;
  v81 = (v82 + 32) & ~v82;
  v2 = v0 + v81;
  sub_68CD0(v0 + v81);
  v3 = type metadata accessor for PageContent.PageInfo(0);
  v4 = v0 + v81 + v3[5];
  v5 = type metadata accessor for Page();
  v6 = *(*(v5 - 1) + 48);
  v85 = v6;
  if (!v6(v4, 1, v5))
  {

    v7 = v5[5];
    v8 = sub_2BFDD8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }

    v11 = v5[6];
    if (!v10(v4 + v11, 1, v8))
    {
      (*(v9 + 8))(v4 + v11, v8);
    }

    v12 = v5[7];
    v13 = sub_2C1A28();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
    v14 = v5[8];
    v15 = sub_2C1A68();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
    v16 = v5[10];
    v17 = sub_2C15F8();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v4 + v16, 1, v17))
    {
      (*(v18 + 8))(v4 + v16, v17);
    }

    v19 = v5[17];
    v20 = sub_2BEF78();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);

    v21 = v5[19];
    v22 = sub_2C4BB8();
    (*(*(v22 - 8) + 8))(v4 + v21, v22);

    v6 = v85;
    if (*(v4 + v5[25] + 8))
    {
    }
  }

  v23 = v2 + v3[6];
  if (!v6(v23, 1, v5))
  {

    v24 = v5[5];
    v25 = sub_2BFDD8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    v28 = v5[6];
    if (!v27(v23 + v28, 1, v25))
    {
      (*(v26 + 8))(v23 + v28, v25);
    }

    v29 = v5[7];
    v30 = sub_2C1A28();
    (*(*(v30 - 8) + 8))(v23 + v29, v30);
    v31 = v5[8];
    v32 = sub_2C1A68();
    (*(*(v32 - 8) + 8))(v23 + v31, v32);
    v33 = v5[10];
    v34 = sub_2C15F8();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v23 + v33, 1, v34))
    {
      (*(v35 + 8))(v23 + v33, v34);
    }

    v36 = v5[17];
    v37 = sub_2BEF78();
    (*(*(v37 - 8) + 8))(v23 + v36, v37);

    v38 = v5[19];
    v39 = sub_2C4BB8();
    (*(*(v39 - 8) + 8))(v23 + v38, v39);

    v6 = v85;
    if (*(v23 + v5[25] + 8))
    {
    }
  }

  v40 = v2 + v3[7];
  if (!v6(v40, 1, v5))
  {

    v41 = v5[5];
    v42 = sub_2BFDD8();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (!v44(v40 + v41, 1, v42))
    {
      (*(v43 + 8))(v40 + v41, v42);
    }

    v45 = v5[6];
    if (!v44(v40 + v45, 1, v42))
    {
      (*(v43 + 8))(v40 + v45, v42);
    }

    v46 = v5[7];
    v47 = sub_2C1A28();
    (*(*(v47 - 8) + 8))(v40 + v46, v47);
    v48 = v5[8];
    v49 = sub_2C1A68();
    (*(*(v49 - 8) + 8))(v40 + v48, v49);
    v50 = v5[10];
    v51 = sub_2C15F8();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(v40 + v50, 1, v51))
    {
      (*(v52 + 8))(v40 + v50, v51);
    }

    v53 = v5[17];
    v54 = sub_2BEF78();
    (*(*(v54 - 8) + 8))(v40 + v53, v54);

    v55 = v5[19];
    v56 = sub_2C4BB8();
    (*(*(v56 - 8) + 8))(v40 + v55, v56);

    v6 = v85;
    if (*(v40 + v5[25] + 8))
    {
    }
  }

  v57 = v3[9];
  v58 = sub_6620C(&qword_3C09E8);
  (*(*(v58 - 8) + 8))(v2 + v57, v58);
  v59 = v2 + v3[10];
  if (!v6(v59, 1, v5))
  {

    v60 = v5[5];
    v61 = sub_2BFDD8();
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (!v63(v59 + v60, 1, v61))
    {
      (*(v62 + 8))(v59 + v60, v61);
    }

    v64 = v5[6];
    if (!v63(v59 + v64, 1, v61))
    {
      (*(v62 + 8))(v59 + v64, v61);
    }

    v65 = v5[7];
    v66 = sub_2C1A28();
    (*(*(v66 - 8) + 8))(v59 + v65, v66);
    v67 = v5[8];
    v68 = sub_2C1A68();
    (*(*(v68 - 8) + 8))(v59 + v67, v68);
    v69 = v5[10];
    v70 = sub_2C15F8();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v59 + v69, 1, v70))
    {
      (*(v71 + 8))(v59 + v69, v70);
    }

    v72 = v5[17];
    v73 = sub_2BEF78();
    (*(*(v73 - 8) + 8))(v59 + v72, v73);

    v74 = v5[19];
    v75 = sub_2C4BB8();
    (*(*(v75 - 8) + 8))(v59 + v74, v75);

    if (*(v59 + v5[25] + 8))
    {
    }
  }

  sub_6620C(&qword_3BEF90);

  v76 = v2 + *(type metadata accessor for PageContent(0) + 20);
  v77 = sub_2C0368();
  v78 = *(v77 - 8);
  if (!(*(v78 + 48))(v76, 1, v77))
  {
    (*(v78 + 8))(v76, v77);
  }

  sub_6620C(&qword_3C0B28);

  return _swift_deallocObject(v84, v81 + v80, v82 | 7);
}