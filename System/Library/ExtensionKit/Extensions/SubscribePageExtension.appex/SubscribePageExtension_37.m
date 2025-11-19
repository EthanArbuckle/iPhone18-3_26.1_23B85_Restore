id sub_100432A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100432A8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100432AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100432B0C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10000C518(&unk_100923210);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_10000C518(&qword_10092F310);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = sub_1007524F4();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100742CF4();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007493D4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10074A304();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = sub_10074F4D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "Size Class 6 (Full Width)";

  sub_1004316FC(&v51, v54);

  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_1004316FC(&v51, v54);

  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = sub_100741264();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_100743FE4();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  sub_1007525F4();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v25 = sub_100742C84();
  v51 = 0u;
  v52 = 0u;
  sub_1007524E4();
  v26 = sub_1007524B4();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = sub_100743684();
  swift_allocObject();
  v28 = sub_100743674();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  sub_100742C24();
  sub_1000277BC(&v51);
  sub_100752764();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  sub_100752D34();
  sub_1003C1424(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

uint64_t sub_10043334C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell();
      v2 = &unk_100932FB8;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      break;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell();
      v2 = &unk_1009295A0;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      break;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
      v2 = &unk_100937FB0;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      break;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
      v2 = &unk_100937FC8;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      break;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell();
      v2 = &unk_100937FC0;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      break;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell();
      v2 = &unk_100937FB8;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      break;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell();
      v2 = &unk_100937FA8;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      break;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
      v2 = &unk_100937FA0;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      break;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
      v2 = &unk_100937F98;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      break;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
      v2 = &unk_100937F90;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
      break;
    default:
      sub_100754644();
      __break(1u);
      JUMPOUT(0x100433580);
  }

  sub_1004335B8(v2, v3);
  return v1;
}

uint64_t sub_1004335B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_100747C14();
  __chkstk_darwin(v0 - 8);
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  return sub_10074F6A4();
}

uint64_t sub_1004336F0()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_10074F654();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000C518(&qword_100923230);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v56 = &v42 - v14;
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  sub_10000C518(&qword_100923E90);
  v17 = *(sub_10074F584() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_1007A7250;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  v21 = v12;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  v50 = v9;
  sub_10074F614();
  v52 = v20;
  v55 = v16;
  sub_10074F544();
  v58 = 0x3FF0000000000000;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_10074F544();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  sub_10074F614();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v35 = v43;
  v36 = v32;
  sub_10074F544();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_1007535A4();
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  sub_10074F544();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v40 = v43;
  sub_10074F544();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100980370 = v47;
  return result;
}

uint64_t sub_1004340AC()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10074F654();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_10000C518(&qword_100923E90);
  v11 = *(sub_10074F584() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_1007A7250;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x3FF0000000000000;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_10074F544();
  v20 = 0x3FF0000000000000;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  sub_1007535A4();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v16[1] = v10;
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100980378 = v17;
  return result;
}

uint64_t sub_1004348E8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100747B74();
  if (result)
  {
    if (a1())
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v9 = sub_100750B04();
      v10 = sub_10000D0FC(v9, qword_1009820F8);
      a2[3] = v9;
      a2[4] = &protocol witness table for StaticDimension;
      v11 = sub_10000D134(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_100747B84();
      sub_10074F5B4();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      a2[3] = &type metadata for CGFloat;
      a2[4] = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_100434AF4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v2 = sub_100750B04();
  v3 = sub_10000D0FC(v2, qword_1009820C8);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_10000D134(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

double sub_100434BB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v7 = sub_1007469A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007539E4())
  {

    v11 = sub_1007539D4();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a3;
    v14 = v13;
    swift_weakInit();
    (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v20 = a1;
    v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v8 + 32))(v17 + v15, v10, v7);
    *(v17 + v16) = v19[0];
    *(a4 + 24) = sub_10000C518(&qword_100934200);
    *(a4 + 32) = sub_10036B194();
    sub_10000D134(a4);

    sub_10074D744();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_100434DF4(uint64_t a1)
{
  v1 = sub_10055BE28(a1);
  sub_1004A0098(v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100434E3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100434E74()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100434F4C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_100434FE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_100980380;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_100980388;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_100980388]];

  return v20;
}

uint64_t sub_100435220@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100980380;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100435278(uint64_t a1)
{
  v3 = qword_100980380;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100435338()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_100980388];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_1004353A4(void *a1)
{
  v1 = a1;
  sub_100435338();
}

uint64_t sub_1004353EC()
{
  type metadata accessor for ScrollablePillView();
  swift_dynamicCastClass();
  return sub_100750B24();
}

double sub_100435450(void *a1)
{
  v1 = a1;
  sub_1004353EC();
  v3 = v2;

  return v3;
}

uint64_t sub_1004354A4()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

void sub_100435548(void *a1)
{
  v1 = a1;
  sub_1004354A4();
}

id sub_100435590(void *a1)
{
  v1 = a1;
  v2 = sub_1004355D4();

  return v2;
}

uint64_t sub_1004357C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_100747534();
  v6 = sub_100747564();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_100435934(uint64_t a1)
{
  sub_100027FAC(a1 + qword_100980380);
  v2 = *(a1 + qword_100980388);
}

void sub_1004359C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_100980380;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_100980388;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_100754644();
  __break(1u);
}

id sub_100435ADC(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_1002F8264();
  v145 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_1002F8340();
  v9 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100753094();
    v14 = v13;

    v15 = sub_10074F024();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_10074F024();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_1007481C4();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_10074F024();
    if (v22)
    {
      v23 = v22;
      v24 = sub_100748174();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_100754754();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_10074F054();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_100753094();
  v30 = v29;

  v31 = sub_10074F054();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_10074F054();
    if (v35)
    {
      v36 = sub_100753064();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_100754754();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_10074F034();
  sub_1004FA340(v37);
  v38 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_100753094();
    v43 = v42;

    v44 = sub_10074EFF4();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_10074EFF4();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_1007481C4();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_10074EFF4();
    if (v49)
    {
      v50 = v49;
      v51 = sub_100748174();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_100754754();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_100753094();
    v57 = v56;

    v58 = sub_10074F004();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_10074F004();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_1007481C4();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_10074F004();
    if (v63)
    {
      v64 = v63;
      v65 = sub_100748174();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_100754754();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_10074F044();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_100748174();

  sub_100753864();
  v69 = sub_1007481E4();
  sub_100748184();
  v70 = objc_allocWithZone(v69);
  v71 = sub_1007481F4();
  v72 = *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_1007481C4();
      v81 = v80;

      v82 = sub_1007481C4();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_100754754();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_1002616E0(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_1007481C4();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_1007481C4();
    v76 = v75;

    v77 = sub_10074F044();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v143 = v74;
  }

  else
  {
    v77 = sub_10074F044();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v143 = 0;
  }

  v87 = v77;
  v88 = sub_1007481C4();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v143 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_100754754();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_10074F044();
    sub_1002616E0(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_10074F064())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse] = 0;
    sub_1002F8110(v105);
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel] setText:0];
    sub_10025FCF0(0, 0);
    goto LABEL_119;
  }

  v93 = sub_10074F744();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_100748174();

  v96 = v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse] = 1;
  sub_1002F8110(v96);
  v97 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_10074F754();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_100753094();
  v102 = v101;

  v103 = sub_10074F754();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_10074F754();
    if (v116)
    {
      v117 = sub_100753064();
    }

    else
    {
      v117 = 0;
    }

    [v97 setText:v117];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v139 = sub_100754754();

  if ((v139 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_100753864();
  v118 = sub_1007481E4();
  sub_100748184();
  v119 = objc_allocWithZone(v118);
  v120 = sub_1007481F4();
  v121 = *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  if (v6[v145] != 1)
  {
    if (v121)
    {
      v128 = v121;
      v129 = sub_1007481C4();
      v131 = v130;

      v132 = sub_1007481C4();
      if (v131)
      {
        if (v129 == v132 && v131 == v133)
        {

          goto LABEL_119;
        }

        v140 = sub_100754754();

        if (v140)
        {
          goto LABEL_164;
        }

LABEL_151:
        v138 = v120;
        sub_1002616E0(v120);

        goto LABEL_119;
      }
    }

    else
    {
      sub_1007481C4();
    }

    goto LABEL_151;
  }

  if (v121)
  {
    v122 = v121;
    v123 = sub_1007481C4();
    v125 = v124;

    v126 = sub_10074F744();
    if (!v126)
    {
      if (v125)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v127 = v126;
    v146 = v95;
  }

  else
  {
    v134 = sub_10074F744();
    if (!v134)
    {
      goto LABEL_164;
    }

    v127 = v134;
    v146 = v95;
    v125 = 0;
    v123 = 0;
  }

  v135 = sub_1007481C4();
  v137 = v136;

  if (v125)
  {
    if (v137)
    {
      if (v123 == v135 && v125 == v137)
      {

        goto LABEL_119;
      }

      v142 = sub_100754754();

      v95 = v146;
      if (v142)
      {
        goto LABEL_164;
      }

LABEL_162:
      v141 = sub_10074F744();
      sub_1002616E0(v141);

      goto LABEL_119;
    }

    v95 = v146;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v146;
  if (v137)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_10074EFE4();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      *v111 = sub_1004380BC;
      v111[1] = v110;

      sub_1000164A8(v112);
      v113 = &v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      v114 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      *v113 = sub_1004380BC;
      v113[1] = v110;
      sub_1000164A8(v114);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_1002F77C8();

  return [v6 setNeedsLayout];
}

uint64_t sub_100436780(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100052F00(v6);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1004368B8(uint64_t a1, int a2, int a3, void *a4)
{
  v157 = a4;
  v150 = a3;
  v163 = a2;
  v5 = sub_10000C518(&unk_100938110);
  v159 = *(v5 - 8);
  v160 = v5;
  __chkstk_darwin(v5);
  v158 = v142 - v6;
  v7 = sub_10074B5F4();
  v151 = *(v7 - 8);
  v152 = v7;
  __chkstk_darwin(v7);
  v153 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074B614();
  v10 = *(v9 - 8);
  v155 = v9;
  v156 = v10;
  __chkstk_darwin(v9);
  v154 = v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750BD4();
  v161 = *(v12 - 8);
  v162 = v12;
  __chkstk_darwin(v12);
  v169 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v179 = v142 - v15;
  __chkstk_darwin(v16);
  v180 = v142 - v17;
  __chkstk_darwin(v18);
  v181 = v142 - v19;
  __chkstk_darwin(v20);
  v182 = v142 - v21;
  __chkstk_darwin(v22);
  v178 = v142 - v23;
  __chkstk_darwin(v24);
  v183 = v142 - v25;
  __chkstk_darwin(v26);
  v172 = v142 - v27;
  v28 = sub_100750E94();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v148 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v149 = v142 - v32;
  __chkstk_darwin(v33);
  v35 = v142 - v34;
  __chkstk_darwin(v36);
  v177 = v142 - v37;
  __chkstk_darwin(v38);
  v145 = v142 - v39;
  __chkstk_darwin(v40);
  v146 = v142 - v41;
  __chkstk_darwin(v42);
  v168 = v142 - v43;
  __chkstk_darwin(v44);
  v143 = v142 - v45;
  __chkstk_darwin(v46);
  v144 = v142 - v47;
  __chkstk_darwin(v48);
  v174 = v142 - v49;
  __chkstk_darwin(v50);
  v175 = v142 - v51;
  __chkstk_darwin(v52);
  v176 = v142 - v53;
  __chkstk_darwin(v54);
  v184 = v142 - v55;
  __chkstk_darwin(v56);
  v58 = v142 - v57;
  __chkstk_darwin(v59);
  v167 = v142 - v60;
  __chkstk_darwin(v61);
  v63 = v142 - v62;
  __chkstk_darwin(v64);
  v66 = v142 - v65;
  __chkstk_darwin(v67);
  v69 = v142 - v68;
  __chkstk_darwin(v70);
  v173 = v142 - v71;
  v72 = sub_10074F064();
  if (v72)
  {
  }

  v164 = v72;
  v170 = v58;
  v186 = a1;
  v166 = v35;
  sub_100750E84();
  if (qword_100921108 != -1)
  {
    swift_once();
  }

  v187 = sub_100750534();
  sub_10000D0FC(v187, qword_100981050);
  sub_100750E54();
  v73 = v29;
  v75 = v29 + 8;
  v74 = *(v29 + 8);
  v74(v63, v28);
  v76 = v28;
  v77 = v163;
  v142[3] = ~v163;
  sub_100750E74();
  v74(v66, v76);
  v78 = (v77 & 1) == 0;
  v79 = v76;
  if (v78)
  {
    v80 = 4;
  }

  else
  {
    v80 = 0;
  }

  v142[2] = v80;
  sub_100750E64();
  v189 = v75;
  v74(v69, v76);
  v81 = sub_10074F024();
  if (v81)
  {
    v82 = v81;
    sub_1007481C4();
  }

  v171 = v74;
  v83 = *(v73 + 16);
  v185 = v73 + 16;
  v188 = v83;
  v83(v63, v173, v76);
  sub_100750BB4();
  sub_100750BF4();
  v147 = sub_100750F34();
  swift_allocObject();
  v165 = sub_100750EF4();
  v84 = v184;
  sub_100750E84();
  if (qword_100921120 != -1)
  {
    swift_once();
  }

  v85 = sub_10000D0FC(v187, qword_100981098);
  v86 = v170;
  v142[1] = v85;
  sub_100750E54();
  v87 = v171;
  v171(v84, v79);
  sub_100750E74();
  v87(v86, v79);
  v88 = v167;
  sub_100750E64();
  v87(v63, v79);
  sub_10074F054();
  v89 = v88;
  v90 = v188;
  v188(v63, v89, v79);
  sub_100750BB4();
  v91 = v184;
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921128 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v187, qword_1009810B0);
  sub_100750E54();
  v87(v91, v79);
  sub_100750E74();
  v87(v86, v79);
  sub_100750E64();
  v87(v63, v79);
  v92 = sub_10074EFF4();
  if (v92)
  {
    v93 = v92;
    sub_1007481C4();

    v90 = v188;
  }

  v90(v63, v176, v79);
  sub_100750BB4();
  sub_100750BF4();
  v94 = v184;
  sub_100750E84();
  if (qword_100921130 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v187, qword_1009810C8);
  v95 = v170;
  sub_100750E54();
  v87(v94, v79);
  sub_100750E74();
  v87(v95, v79);
  sub_100750E64();
  v87(v63, v79);
  v96 = sub_10074F004();
  if (v96)
  {
    v97 = v96;
    sub_1007481C4();

    v188(v63, v175, v79);
  }

  else
  {
    v90(v63, v175, v79);
  }

  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921118 != -1)
  {
    swift_once();
  }

  v98 = sub_10000D0FC(v187, qword_100981080);
  v99 = v143;
  v142[0] = v98;
  sub_100750E54();
  v87(v63, v79);
  v100 = v144;
  sub_100750E74();
  v87(v99, v79);
  sub_100750E64();
  v87(v100, v79);
  v101 = sub_10074F044();
  if (v101)
  {
    v102 = v101;
    sub_1007481C4();
  }

  v103 = v188;
  v188(v63, v174, v79);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v104 = v187;
  if (qword_100921110 != -1)
  {
    v141 = v187;
    swift_once();
    v104 = v141;
  }

  sub_10000D0FC(v104, qword_100981068);
  v105 = v145;
  sub_100750E54();
  v106 = v171;
  v171(v63, v79);
  v107 = v146;
  sub_100750E74();
  v106(v105, v79);
  v108 = v168;
  sub_100750E64();
  v106(v107, v79);
  v199._object = 0x80000001007766B0;
  v199._countAndFlagsBits = 0xD000000000000012;
  v200._countAndFlagsBits = 0;
  v200._object = 0xE000000000000000;
  sub_1007458B4(v199, v200);
  v103(v63, v108, v79);
  sub_100750BB4();
  sub_100750BF4();
  v109 = v184;
  sub_100750E84();
  v110 = v170;
  sub_100750E54();
  v106(v109, v79);
  sub_100750E74();
  v106(v110, v79);
  sub_100750E64();
  v106(v63, v79);
  v111 = sub_10074F064();
  v112 = v169;
  if (v111)
  {
    sub_10074F754();
  }

  v188(v63, v177, v79);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v113 = v148;
  sub_100750E54();
  v106(v63, v79);
  v114 = v149;
  sub_100750E74();
  v106(v113, v79);
  v115 = v166;
  sub_100750E64();
  v106(v114, v79);
  if (sub_10074F064())
  {
    v116 = sub_10074F744();

    if (v116)
    {
      sub_1007481C4();
    }
  }

  v188(v63, v115, v79);
  sub_100750BB4();
  sub_100750BF4();
  v117 = v112;
  if (qword_100920868 != -1)
  {
    swift_once();
  }

  v118 = v152;
  v119 = sub_10000D0FC(v152, qword_10097F818);
  (*(v151 + 16))(v153, v119, v118);
  v120 = v162;
  v198[3] = v162;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v121 = sub_10000D134(v198);
  v122 = v161;
  v123 = *(v161 + 16);
  v123(v121, v172, v120);
  v197[3] = v120;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v124 = sub_10000D134(v197);
  v123(v124, v183, v120);
  v196[3] = v120;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_10000D134(v196);
  v123(v125, v178, v120);
  v195[3] = v120;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000D134(v195);
  v123(v126, v182, v120);
  v194[3] = v120;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_10000D134(v194);
  v123(v127, v181, v120);
  v193[3] = v120;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_10000D134(v193);
  v123(v128, v180, v120);
  v192[3] = v120;
  v192[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000D134(v192);
  v123(v129, v179, v120);
  v191[3] = v120;
  v191[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000D134(v191);
  v123(v130, v117, v120);
  v190 = v165;
  sub_100750434();
  v131 = v154;
  sub_10074B604();
  v132 = [v157 traitCollection];
  sub_1002F8C3C();
  v133 = v158;
  v134 = v155;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v135 = v160;
  sub_100751254();
  v137 = v136;

  (*(v159 + 8))(v133, v135);
  (*(v156 + 8))(v131, v134);
  v138 = *(v122 + 8);
  v138(v169, v120);
  v139 = v171;
  v171(v166, v79);
  v138(v179, v120);
  v139(v177, v79);
  v138(v180, v120);
  v139(v168, v79);
  v138(v181, v120);
  v139(v174, v79);
  v138(v182, v120);
  v139(v175, v79);
  v138(v178, v120);
  v139(v176, v79);
  v138(v183, v120);
  v139(v167, v79);
  v138(v172, v120);
  v139(v173, v79);
  return v137;
}

double sub_100437CBC(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920880 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C518(&unk_1009249B0);
  sub_10000D0FC(v6, qword_10097F840);
  v31 = a1;
  sub_100743464();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_100920878 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_10097F838;
  v33.value._rawValue = 0;
  isa = sub_1007537C4(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_100743AE4();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_100743AE4();

  v17(v5, v2);
  sub_100753F34();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

uint64_t sub_10043807C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004380C4()
{
  v0 = sub_10000C518(&qword_1009381D8);
  sub_100039C50(v0, qword_100938120);
  sub_10000D0FC(v0, qword_100938120);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for UIRectEdge(0);
  return sub_100743474();
}

void sub_100438168(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_100752AC4();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] = v15;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_10074F3E4();
  *(&v66 + 1) = v18;
  v67 = sub_1002968B4();
  v19 = sub_10000D134(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_10074FC74();
  sub_10000C620(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100920C30 != -1)
  {
    swift_once();
  }

  v36 = sub_10000C518(&qword_1009381D8);
  sub_10000D0FC(v36, qword_100938120);
  v63 = v22;
  v37 = v22;
  sub_100743464();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView;
  v40 = qword_100920470;
  v41 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10074F0C4();
  v43 = sub_10000D0FC(v42, qword_10097E110);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_100743014();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_100742FF4();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_100752A84();
  sub_10000C8CC(&v65, &unk_100923520);
  sub_100753C74();

  (*(v59 + 8))(v8, v60);
  sub_10000C518(&unk_1009249D0);
  v51 = swift_allocObject();
  v60 = xmmword_1007A5A00;
  *(v51 + 16) = xmmword_1007A5A00;
  *(v51 + 32) = sub_100751544();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_100753A34();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_1007516F4();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_100753A34();

  swift_unknownObjectRelease();
}

void sub_100438A2C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 layoutDirection];

    if (v6 == [a2 layoutDirection])
    {
    }

    else
    {
      v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v7)
      {
        v8 = qword_100920C30;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = sub_10000C518(&qword_1009381D8);
        sub_10000D0FC(v10, qword_100938120);
        v11 = v4;
        sub_100743464();

        [v9 setEdges:v12];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100438B88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10043B9C0();
  }
}

void sub_100438BDC(char a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10000C824(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10000C888(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_10000C620(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_10043B870(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_100438E1C()
{
  v1 = sub_10074F6E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_10074F704();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_100920060 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_10074F5C4();
  v29 = v28;
  LOBYTE(v26) = sub_1007537E4();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_10043BBC0(v34);
  (*(v37 + 8))(v12, v25);
}

void *sub_100439330()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_1000B83FC();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1004393B4(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_10043BC88;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1003ED3AC;
      v17[3] = &unk_100875F30;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100439558(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_100439744(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_10043BC1C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100875EE0;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1004398F8()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_100438E1C();
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_100439A40()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_1000B83FC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_100192D68();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_100192DEC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_10043BB74;
      *(v36 + 24) = v26;
      v46 = sub_1000C0C28;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_10011B528;
      v45 = &unk_100875E40;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_10043BB8C;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1003ED3AC;
          v45 = &unk_100875E68;
          v40 = _Block_copy(&v42);

          v46 = sub_10043BB90;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1003ED3AC;
          v45 = &unk_100875E90;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_10043A050(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_10043BAA0(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_10043BAA0(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_10043A268()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_1000B83FC();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_100192D68();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_100192DEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10043B928;
  *(v22 + 24) = v12;
  v34 = sub_100045E0C;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10011B528;
  v33 = &unk_100875D78;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_10043B988;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003ED3AC;
    v33 = &unk_100875DC8;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_10043B990;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003ED3AC;
    v33 = &unk_100875DF0;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10043A728(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1002E6A08();
  v4 = [a3 presentedViewController];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_10043A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {

        v9(v10);

        sub_1000164A8(v9);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_10043AA20(void *a1)
{
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10000C824(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10000C888(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_10000C620(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_10043B870(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10000C518(&unk_1009231A0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007A7210;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_100439330();
      if (v18 >> 62)
      {
        sub_100009D34();
        v19 = sub_100754654();
      }

      else
      {

        sub_100754764();
        sub_100009D34();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_1008674B0;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_10043B870(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10000C824(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10000C888(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_10000C620(&v27);
      }

      break;
  }
}

void sub_10043AE80(void *a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10000C518(&unk_1009231A0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1007A7210;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_100439330();
        if (v24 >> 62)
        {
          sub_100009D34();
          v25 = sub_100754654();
        }

        else
        {

          sub_100754764();
          sub_100009D34();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_1008674B0;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_10043B870(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10000C518(&unk_1009231A0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007A7210;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_100439330();
        if (v42 >> 62)
        {
          sub_100009D34();
          v43 = sub_100754654();
        }

        else
        {

          sub_100754764();
          sub_100009D34();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_1008674D8;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10000C824(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10000C888(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_10000C620(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10000C824(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10000C888(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_10000C620(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_10043B870(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_10043B6E0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures);
    v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] = v1;
    sub_100438BDC(v4);
  }
}

uint64_t sub_10043B870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043B8E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10043B930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10043B948()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10043B9C0()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_10043BAA0(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_10043BBE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043BC40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10043BC94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043BCCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10043BD54(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *((swift_isaMask & *v3) + 0x60);
  v25 = *(a1 + 8);
  v26 = *(a1 + 24);
  v7 = a1[1];
  v24 = a1[2];
  v6 = v24;
  v8 = *(a1 + 6);
  v9 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  *(v5 + 6) = v8;
  v19 = *a1;
  v20 = v9;
  v21 = a1[2];
  v22 = *(a1 + 6);
  v23 = v8;
  objc_allocWithZone(sub_10000C518(&qword_100938210));

  sub_1000C0664(&v24, v18);
  sub_100016B4C(&v25, v18, &qword_100938218);
  sub_100016B4C(&v23, v18, &qword_1009273A0);
  *(v3 + *((swift_isaMask & *v3) + 0x68)) = sub_100751D54();
  v17.receiver = v3;
  v17.super_class = sub_10000C518(&qword_100938208);
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = [v10 navigationItem];
  if (a3)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle:v12];

  v13 = [v10 navigationItem];
  sub_100016C60(0, &qword_100925250);
  isa = sub_100753294().super.isa;

  [v13 setRightBarButtonItems:isa];

  v15 = [v10 navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  return v10;
}

void *sub_10043BFDC(uint64_t a1)
{
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B3D4();
  sub_100752754();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_100752074();
  v30 = v36;
  v7 = v37;
  v33 = sub_10000C518(&unk_1009231A0);
  v8 = swift_allocObject();
  v32 = xmmword_1007A5CF0;
  *(v8 + 16) = xmmword_1007A5CF0;
  sub_100016C60(0, &qword_100925250);
  sub_100016C60(0, &qword_100929CC0);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_100753FF4();
  v41.is_nil = 0;
  *(v8 + 32) = sub_100753634(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_1000D3CDC;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10000C518(&qword_100938208));
  v10 = sub_10043BD54(&v36, 0x7363697274654DLL, 0xE700000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x800000010077C720;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_10043CBD8;
  v12[13] = v11;

  *&v30 = v10;

  sub_100741484();
  v13 = sub_100741464();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_1007544E4();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x800000010077C740;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x800000010077C760;
  *(v17 + 96) = 0;
  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_1007544E4();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A7210;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_100741484();
  v24 = sub_100741464();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

uint64_t sub_10043C4A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10074B3B4();
  }

  return result;
}

uint64_t sub_10043C500(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = sub_100742CF4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007493D4();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074A304();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752614();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = sub_10074F4D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10000C518(&unk_100923210);
  v43 = a2;
  sub_1007526C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_100052F00(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = sub_100741264();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = sub_100743FE4();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10000C518(&qword_100938208);
  v44 = v39;
  v30 = v39;
  sub_1007525F4();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v31 = sub_100742C84();
  sub_1003C1424(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_10043CB00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043CB58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043CB98()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10043CBF4()
{
  result = qword_100938220;
  if (!qword_100938220)
  {
    sub_100746354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938220);
  }

  return result;
}

uint64_t sub_10043CC54(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_100742CF4();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007493D4();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10074F4D4();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = sub_100741264();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_100743FE4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_100746354();
  v32 = v28;

  sub_1007525F4();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v23 = sub_100742C84();
  v24 = sub_10052AD94(v23, 1, v31);

  return v24;
}

uint64_t sub_10043D124(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100016C60(0, &qword_100922300);
      v5 = sub_100753FC4();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_10043D1E8(void *a1)
{
  sub_10043E964();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_10043D298(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10043D2EC;
}

void sub_10043D2EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10043E964();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_10043E964();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_10043D414(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100747CD4();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_100752A74();
  sub_10000C8CC(v28, &unk_100923520);
  sub_10000C8CC(v29, &unk_100923520);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_10043D818()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_100743384(v15, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_10093CB50);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_10043E964();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = 0;

  sub_10028864C();
  v12 = &v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_10043DA0C()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_100750504();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1007504C4();
    v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_10043DD30(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v5 = a1;
      v6 = v5;
      if (v4 == 1 && ([v5 size], v8 = v7, objc_msgSend(v6, "size"), v9 < v8) && (v10 = objc_msgSend(v6, "CGImage")) != 0)
      {
        v11 = v10;
        [v6 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];

        v14 = v13;
      }

      else
      {
        v14 = v6;
      }

      v15 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v16 = v14;
      v17 = v15;
      v19.value.super.isa = v14;
      v19.is_nil = 1;
      sub_1007432F4(v19, v18);
    }
  }
}

id sub_10043DEA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell()
{
  result = qword_100938250;
  if (!qword_100938250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043DFDC()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_100747D94();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_10043E0EC(uint64_t **a1))()
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
  v2[4] = sub_10043D298(v2);
  return sub_1000181A8;
}

uint64_t sub_10043E15C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10043E1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10043E21C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10043E34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10043E3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_100747D94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007504F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v27);
  sub_10000C518(&unk_100923100);
  sub_100746024();
  result = swift_dynamicCast();
  if (result)
  {
    v26[2] = v26[3];
    v18 = sub_100746014();
    if (v18)
    {
      v19 = v18;
      v26[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v26[0] = v19;
        v22 = qword_100982288;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v21[v22], v9);
        sub_100747CE4();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v24 = [v3 contentView];
          [v24 bounds];

          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          type metadata accessor for VideoView();
          sub_10043E34C(&unk_100923110, type metadata accessor for VideoView);
          sub_100744204();

          return (*(v14 + 8))(v16, v13);
        }

        sub_10000C8CC(v8, &unk_1009281D0);
      }

      else
      {
      }
    }

    if (sub_100746004())
    {
      if ((*(v3 + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_10074F114() & 1) == 0)
      {
        v25 = [v3 contentView];
        [v25 bounds];

        v23 = [v3 contentView];
        [v23 bounds];
      }

      else
      {
        v23 = [v3 contentView];
        [v23 bounds];
      }

      sub_10074F374();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_10000C8CC(v27, &unk_1009276E0);
    }
  }

  return result;
}

void sub_10043E964()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10043E34C(&qword_1009230E0, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_10043D124(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_10043EA34()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  sub_1007433C4();
  sub_10043E34C(&qword_100926DB8, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_1007544E4();
  sub_100744264();
  sub_100016994(v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + qword_10093CB50);

    sub_100016C60(0, &qword_10092BFC0);
    sub_1003EB7E4();
    v6 = v5;
    sub_1007544E4();
    sub_100744264();

    return sub_100016994(v7);
  }

  return result;
}

uint64_t sub_10043EB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10043EC80()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10043ED80()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v8 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v7 = *v8;
LABEL_11:
    if (!v7)
    {
      return;
    }

LABEL_12:
    if (*v8)
    {
LABEL_13:

      v11 = sub_100753064();

LABEL_17:
      [v1 setText:v11];

      [v0 setNeedsLayout];
      return;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  v4 = sub_100753094();
  v6 = v5;

  v8 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v7 = *v8;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!v7)
  {

    if (*v8)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v4 != *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle] || v7 != v6)
  {
    v10 = sub_100754754();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }
}

id sub_10043EF04()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef_viewSafeAreaInsetsDidChange;
    if (v11)
    {
    }

    else
    {
      v14 = qword_100920FB8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_100750534();
      v16 = sub_10000D0FC(v15, qword_100980C60);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(sub_100745C84());
      v19 = sub_100745C74();
      v20 = sub_100753064();
      [v19 setText:v20];

      v21 = qword_10091FE48;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_10097CAE8];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_10043F3AC(v22);
      v12 = &selRef_viewSafeAreaInsetsDidChange;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[482]];
    [v26 overrideUserInterfaceStyle];

    sub_100753094();
    v27 = sub_100753064();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = sub_100753064();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_10043F3AC(void *a1)
{
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    sub_100752A74();
    sub_10000C8CC(v14, &unk_100923520);
    sub_10000C8CC(v15, &unk_100923520);
    sub_100753C74();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_10043F554(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10043F5F0;
}

void sub_10043F5F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_100441260(&qword_1009230E0, type metadata accessor for VideoView);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300);
        v8 = v3;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v2;
    v16 = v2;
    sub_10057A514(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_100441260(&qword_1009230E0, type metadata accessor for VideoView);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300);
        v13 = v3;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v2;
    v18 = v2;
    sub_10057A514(v19);

    v17 = v19;
  }
}

char *sub_10043F838(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10074AB44();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_1007441C4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = sub_1007469A4();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10074F7B4();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(sub_1007441E4());
  *&v5[v27] = sub_1007441B4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100920FB0 != -1)
  {
    swift_once();
  }

  v33 = sub_100750534();
  v34 = sub_10000D0FC(v33, qword_100980C48);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(sub_100745C84());
  *&v5[v32] = sub_100745C74();
  v37 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_100154454(0);
  v39 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_1007433C4();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *&v5[v49] = v50;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v51 contentView];
  [v53 _setCornerRadius:20.0];

  v54 = [v51 contentView];
  [v54 setClipsToBounds:1];

  v55 = [v51 contentView];
  sub_100016C60(0, &qword_100923500);
  v56 = sub_100753E34();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView];
  sub_10000C518(&unk_1009231A0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007A7210;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v61;

  sub_100037ED0();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = sub_100753DD4();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView];
  v73 = sub_100753DD4();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  sub_100752A74();
  sub_10000C8CC(&v91, &unk_100923520);
  sub_10000C8CC(&v96, &unk_100923520);
  sub_100753C74();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  sub_100752A74();
  sub_10000C8CC(&v91, &unk_100923520);
  sub_10000C8CC(&v96, &unk_100923520);
  sub_100753C74();

  v78(v76, v77);
  return v51;
}

uint64_t sub_100440490()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747A14();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747A34();
  v40 = *(v8 - 8);
  v41 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "layoutSubviews", v9);
  [v1 bounds];
  v35[1] = v7;
  sub_10043EBD4();
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView];
  v65 = type metadata accessor for GradientView();
  v66 = &protocol witness table for UIView;
  v64 = v11;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v62 = type metadata accessor for MediaView();
  v63 = &protocol witness table for UIView;
  v61 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView];
  v59 = sub_1007441E4();
  v60 = &protocol witness table for UIView;
  v58 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v14)
  {
    v15 = sub_1007433C4();
    v16 = &protocol witness table for UIView;
    v17 = v14;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v17;
  v56 = v15;
  v57 = v16;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v19 = sub_100745C84();
  v51 = v19;
  v52 = &protocol witness table for UILabel;
  v50 = v18;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton];
  v48 = type metadata accessor for OfferButton();
  v49 = &protocol witness table for UIView;
  v47 = v20;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (v21)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v43 = 0;
    v44 = 0;
  }

  v42 = v21;
  v45 = v19;
  v46 = v22;
  v23 = v14;
  v24 = v18;
  v25 = v20;
  v26 = v21;
  v11;
  v27 = v12;
  v28 = v13;
  v29 = v39;
  sub_100747A24();
  v30 = [v1 contentView];
  [v30 bounds];

  v31 = v36;
  sub_1007479E4();
  (*(v37 + 8))(v31, v38);
  sub_10000C518(&unk_10092F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  [v1 bounds];
  v33 = CGRectGetHeight(v68) + -88.0;
  [v1 bounds];
  *(inited + 32) = v33 / CGRectGetHeight(v69);
  *(inited + 40) = 0x3FF0000000000000;
  sub_100037D2C(inited);
  return (*(v40 + 8))(v29, v41);
}

id sub_10044090C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
  sub_100743344();

  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v6);

  sub_1005791C8();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v8);

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    sub_100743344();
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  sub_10043ED80();
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  [v12 setHidden:1];
  [v12 setText:0];
  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText];
  *v13 = 0;
  *(v13 + 1) = 0;

  return sub_10043EF04();
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell()
{
  result = qword_1009382B0;
  if (!qword_1009382B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100440D2C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100440DF0()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_100440E60(void *a1)
{
  sub_10057AF88(a1);
}

uint64_t (*sub_100440EB8(uint64_t **a1))()
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
  v2[4] = sub_10043F554(v2);
  return sub_1000181A8;
}

uint64_t sub_100440F28()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100440F9C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100441028(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004410E4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_100441260(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004412A8()
{
  v1 = v0;
  v43 = sub_10074AB44();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_1007441C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = sub_10074F7B4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(sub_1007441E4());
  *(v1 + v17) = sub_1007441B4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100920FB0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100980C48);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(sub_100745C84());
  *(v1 + v22) = sub_100745C74();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_100154454(0);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_1007433C4();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100441944()
{
  sub_10000C518(&unk_100939A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A79C0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0);
  result = swift_arrayDestroy();
  qword_1009382D8 = v1;
  return result;
}

void sub_100441B58(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10000C518(&unk_1009231A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A7210;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_100441C94(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_100920C38;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0);
  isa = sub_100752F34().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_100441FD8();
  return v14;
}

id sub_100441FD8()
{
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_100442148(v2, v3);
    v5 = v4;
    sub_10014D2B8();

    isa = sub_100753294().super.isa;

    [v1 setLocations:isa];

    sub_1001578EC(v5);

    v7 = sub_100753294().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_100442148(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10000C518(&unk_1009231A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5CF0;
  sub_10014D2B8();
  *(v7 + 32) = sub_100753F94(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    if (qword_100920C40 != -1)
    {
      swift_once();
    }

    sub_1004A00E0(v10);
    if ((*(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }

    if (qword_100920C48 != -1)
    {
      swift_once();
    }

    sub_1004A00E0(v18);
  }

  sub_100753F94(1.0);
  sub_100753284();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  return v20;
}

id sub_10044258C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004425F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_10000C518(&qword_100932470);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &ObjectType - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton];
    v14 = qword_100920CE0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_100980560;
    v16 = sub_10074ECB4();
    sub_1004928FC(v15, v16, v17);

    v18 = sub_1007541F4();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    sub_100754224();
    [v13 setHidden:{0, ObjectType}];
    v31 = a1;
    sub_10074ECD4();
    sub_100752764();
    sub_100442A94();
    sub_100752684();

    v19 = sub_10000C518(&unk_100933080);
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_100195594(v8, &v3[v20]);
    swift_endAccess();
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton] setHidden:{1, v10, ObjectType}];
  }

  if (a2)
  {
    v21 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton];
    v22 = qword_100920CE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_100980568;
    v24 = sub_10074ECB4();
    sub_1004928FC(v23, v24, v25);

    v26 = sub_1007541F4();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    sub_100754224();
    [v21 setHidden:0];
    v31 = a2;
    sub_10074ECD4();
    sub_100752764();
    sub_100442A94();
    sub_100752684();

    v27 = sub_10000C518(&unk_100933080);
    (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    v28 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_100195594(v8, &v3[v28]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v3 setNeedsLayout];
}

unint64_t sub_100442A94()
{
  result = qword_100928558;
  if (!qword_100928558)
  {
    sub_10074ECD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928558);
  }

  return result;
}

void sub_100442AEC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] = v12;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_100920470;
    v22 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_10074F0C4();
    v24 = sub_10000D0FC(v23, qword_10097E110);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    sub_100743014();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    sub_100742FF4();

    v28 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_100442F98()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_1009207D8 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  sub_10074F5C4();
  sub_1007537E4();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_10010FD98(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  sub_100753AC4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_1005153A8(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController();
    if (swift_dynamicCastClass())
    {
      v49 = sub_10065EF24();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    sub_100753AC4();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_10010FD98(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_10044364C(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_100445164;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1003ED3AC;
    v11[3] = &unk_100876180;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_100443784(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_100443948(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100445100;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100876130;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100443AFC()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_100442F98();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100443DB0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_10044502C(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_10044502C(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_100445024;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_1008760E0;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100444138(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_100444280(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

void sub_1004443D0()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_100445004;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1003ED3AC;
    v6[3] = &unk_100876090;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

void sub_1004444FC(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1004446D8()
{
  v6 = [v0 presentedViewController];
  sub_100032B70();
  sub_10000C518(&qword_1009383A0);
  if (swift_dynamicCast())
  {
    sub_100012160(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000C888(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_10000C620(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000C8CC(v4, &qword_1009383A8);
  }
}

uint64_t sub_1004447C8()
{
  v6 = [v0 presentedViewController];
  sub_100032B70();
  sub_10000C518(&qword_1009383A0);
  if (swift_dynamicCast())
  {
    sub_100012160(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000C888(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_10000C620(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000C8CC(v4, &qword_1009383A8);
  }
}

void sub_100444954(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_10000C824(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_10000C888(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_10000C620(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_10000C824(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_10000C888(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_10000C620(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_10043B870(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_10000C518(&unk_1009231A0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007A7210;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_1008674D8;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_10043B870(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100444FCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044500C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10044502C(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_100445124()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10044518C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v10, qword_100981758);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel();
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_10004DA8C(v13, 0, 0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v10, qword_100981770);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_10004DA8C(v13, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel];
  sub_10000D198();
  v29 = v28;
  v30 = sub_100753DF4();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel];
  v33 = sub_100753DF4();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1004454D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel();
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_100445664(v14, v13, v17);
  sub_10000C620(v13);
  sub_10000C620(v14);
  sub_10000C888(v17, v17[3]);
  sub_1007477B4();
  sub_100751124();
  (*(v4 + 8))(v7, v3);
  return sub_10000C620(v17);
}

uint64_t sub_100445664@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v89 = sub_100748884();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v102 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100750304();
  v113 = *(v110 - 8);
  __chkstk_darwin(v110);
  v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007488A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007488C4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092C0B8);
  v15 = *(sub_1007488D4() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v91 = *(v15 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5620;
  v92 = v17;
  v106 = v17 + v16;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10000C888(a1, v19);
  v122 = v19;
  v21 = *(v18 + 8);
  v22 = v12;
  v23 = v14;
  v123 = v21;
  v24 = sub_10000D134(&v121);
  (*(*(v19 - 8) + 16))(v24, v20, v19);
  v25 = *(v22 + 104);
  v109 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v111 = v11;
  v108 = v22 + 104;
  v107 = v25;
  v25(v14);
  v112 = v8;
  v26 = v8 + 104;
  v27 = *(v8 + 104);
  v28 = v10;
  v105 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v88 = v7;
  v104 = v26;
  v103 = v27;
  v27(v10);
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100981758);
  v31 = *(v29 - 8);
  v32 = v101;
  v86 = *(v31 + 16);
  v85 = v31 + 16;
  v86(v101, v30, v29);
  v33 = v113;
  v34 = *(v113 + 104);
  v84 = enum case for FontSource.useCase(_:);
  v35 = v110;
  v83 = v113 + 104;
  v82 = v34;
  v34(v32);
  v81 = sub_100750B04();
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_10000D134(&v118);
  *(&v116 + 1) = v35;
  v117 = &protocol witness table for FontSource;
  v36 = sub_10000D134(&v115);
  v37 = *(v33 + 16);
  v80 = v33 + 16;
  v79 = v37;
  v37(v36, v32, v35);
  sub_100750B14();
  v38 = *(v33 + 8);
  v113 = v33 + 8;
  v78 = v38;
  v38(v32, v35);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v39 = sub_10000C518(&unk_100931370);
  v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v41 = v40 + *(v4 + 72);
  v75 = *(v4 + 80);
  v76 = v39;
  v74 = v41;
  v42 = swift_allocObject();
  v73 = xmmword_1007A5A00;
  *(v42 + 16) = xmmword_1007A5A00;
  v77 = v40;
  sub_100748864();
  v114 = v42;
  v43 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v44 = sub_10000C518(&unk_100931380);
  v45 = sub_1001C4F00();
  v46 = v102;
  v98 = v44;
  v96 = v45;
  v47 = v89;
  v100 = v43;
  sub_1007543A4();
  sub_1007488B4();
  v48 = *(v4 + 8);
  v94 = v4 + 8;
  v99 = v48;
  v48(v46, v47);
  sub_1000F4268(&v115);
  v49 = v112 + 8;
  v50 = v88;
  v97 = *(v112 + 8);
  v97(v28, v88);
  v51 = *(v22 + 8);
  v52 = v22 + 8;
  v53 = v111;
  v95 = v51;
  v87 = v52;
  v51(v23, v111);
  sub_10000C620(&v118);
  sub_10000C620(&v121);
  v54 = v47;
  v55 = v23;
  v56 = v90[3];
  v57 = v90[4];
  v58 = sub_10000C888(v90, v56);
  v122 = v56;
  v123 = *(v57 + 8);
  v59 = sub_10000D134(&v121);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  v107(v55, v109, v53);
  v103(v28, v105, v50);
  v60 = v28;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v61 = sub_10000D0FC(v29, qword_100981770);
  v62 = v101;
  v86(v101, v61, v29);
  v63 = v110;
  v82(v62, v84, v110);
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_10000D134(&v118);
  *(&v116 + 1) = v63;
  v117 = &protocol witness table for FontSource;
  v64 = sub_10000D134(&v115);
  v79(v64, v62, v63);
  sub_100750B14();
  v78(v62, v63);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v65 = swift_allocObject();
  *(v65 + 16) = v73;
  sub_100748864();
  v114 = v65;
  v66 = v102;
  sub_1007543A4();
  sub_1007488B4();
  v99(v66, v54);
  sub_1000F4268(&v115);
  v97(v60, v50);
  v67 = v111;
  v112 = v49;
  v95(v55, v111);
  sub_10000C620(&v118);
  sub_10000C620(&v121);
  v68 = sub_100750F34();
  swift_allocObject();
  v69 = sub_100750F14();
  v122 = v68;
  v123 = &protocol witness table for LayoutViewPlaceholder;
  v121 = v69;
  v103(v60, v105, v50);
  v119 = &type metadata for CGFloat;
  v120 = &protocol witness table for CGFloat;
  v117 = 0;
  v118 = 0x4032000000000000;
  v115 = 0u;
  v116 = 0u;
  v114 = _swiftEmptyArrayStorage;
  sub_1007543A4();
  v107(v55, v109, v67);
  sub_1007488B4();
  v95(v55, v67);
  v99(v66, v54);
  sub_1000F4268(&v115);
  v97(v60, v50);
  sub_10000C620(&v118);
  sub_10000C620(&v121);
  v70 = sub_1007488F4();
  v71 = v93;
  v93[3] = v70;
  v71[4] = sub_1001C5D68(&qword_10092C0D0, &type metadata accessor for _VerticalFlowLayout);
  v71[5] = sub_1001C5D68(&qword_10092C0D8, &type metadata accessor for _VerticalFlowLayout);
  sub_10000D134(v71);
  return sub_100748894();
}

double sub_100446380()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel);
  v10 = type metadata accessor for DynamicTypeLinkedLabel();
  v11 = &protocol witness table for UILabel;
  v8[4] = &protocol witness table for UILabel;
  v9[0] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel);
  v8[3] = v10;
  v8[0] = v2;
  v3 = v1;
  v4 = v2;
  sub_100445664(v9, v8, v12);
  sub_10000C620(v8);
  sub_10000C620(v9);
  sub_10000C888(v12, v12[3]);
  sub_100750404();
  v6 = v5;
  sub_10000C620(v12);
  return v6;
}

void sub_100446588()
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v6 = sub_10000D0FC(v1, qword_100981758);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel();
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_10004DA8C(v4, 0, 0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v1, qword_100981770);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_10004DA8C(v4, 0, 0);
  sub_100754644();
  __break(1u);
}

void *sub_100446780(uint64_t a1, int a2)
{
  v5 = sub_1007504F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100744FF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = _swiftEmptyArrayStorage;
  sub_100745004();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v109) = a2;
    v45 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v110 = v6;
      v111 = v5;
      (*(v10 + 96))(v12, v9);
      v46 = *v12;
      sub_10000C518(&unk_10093E480);
      inited = swift_initStackObject();
      v106 = xmmword_1007A5A00;
      *(inited + 16) = xmmword_1007A5A00;
      v48 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v49 = v48;
      v50 = sub_1001A92FC(inited);
      swift_setDeallocating();
      sub_1004478D4(inited + 32);
      v51 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v52 = sub_10055E148(v2, a1, v50);
      sub_100753284();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v107 = v52;
      sub_100753344();
      v108 = v46;
      v53 = sub_10074B7C4();
      v54 = swift_initStackObject();
      *(v54 + 16) = v106;
      *(v54 + 32) = v49;
      v55 = v54 + 32;
      v56 = sub_1001A92FC(v54);
      swift_setDeallocating();
      sub_1004478D4(v55);
      v57 = type metadata accessor for ArtworkActivityItemProvider();
      v58 = objc_allocWithZone(v57);
      v59 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
      v117 = 0;
      sub_10000C518(&qword_1009383E8);
      swift_allocObject();
      *&v58[v59] = sub_10074E044();
      *&v58[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v53;
      *&v58[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = v45;

      sub_10074F2A4();
      sub_100750504();
      sub_1007504E4();
      (*(v110 + 8))(v8, v111);
      sub_10074F2A4();
      sub_100753B74();
      *&v58[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
      if (qword_100921E00 != -1)
      {
        swift_once();
      }

      v60 = qword_100947648;

      sub_1004477E4(v56, v60);
      *&v58[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v61;
      v58[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v109 & 1;
      v62 = [objc_allocWithZone(UIImage) init];
      v115.receiver = v58;
      v115.super_class = v57;
      v63 = objc_msgSendSuper2(&v115, "initWithPlaceholderItem:", v62);

      sub_10000C518(&unk_1009231A0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1007A5CF0;
      *(v64 + 32) = *&v63[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
      v65 = v63;

      v66._rawValue = v64;
      sub_100744224(v66);

      v67 = v65;
      sub_100753284();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v28 = v119;
      v68 = sub_10074B784();
      v69 = v107;
      if (!v68)
      {

        return v28;
      }

      v70 = v68;
      v71 = type metadata accessor for NotesMetadataActivityItemProvider();
      v72 = objc_allocWithZone(v71);
      *&v72[OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1007C17B0;
      *&v72[OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider_metadata] = v70;

      v73 = sub_100753064();
      v114.receiver = v72;
      v114.super_class = v71;
      v74 = objc_msgSendSuper2(&v114, "initWithPlaceholderItem:", v73);

      v75 = v74;
      sub_100753284();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return _swiftEmptyArrayStorage;
    }

    v111 = v5;
    (*(v10 + 96))(v12, v9);
    v76 = *v12;
    v77 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v78 = sub_10055E148(v2, a1, &_swiftEmptySetSingleton);
    sub_100753284();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    v109 = v78;
    v110 = v6;
    sub_100753344();
    v79 = sub_100741824();
    v81 = v80;
    v82 = type metadata accessor for TextActivityItemProvider();
    v83 = objc_allocWithZone(v82);
    v84 = &v83[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text];
    *v84 = v79;
    v84[1] = v81;
    v85 = qword_100920B88;

    if (v85 != -1)
    {
      swift_once();
    }

    v86 = qword_1009366B8;

    sub_1004477E4(&_swiftEmptySetSingleton, v86);
    *&v83[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_excludedActivityTypes] = v87;
    v88 = sub_100753064();

    v118.receiver = v83;
    v118.super_class = v82;
    v89 = objc_msgSendSuper2(&v118, "initWithPlaceholderItem:", v88);

    v27 = v89;
    sub_100753284();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v28 = v119;
    v90 = sub_100741834();
    if (v90)
    {
      v91 = v90;
      v108 = v76;
      sub_10000C518(&unk_10093E480);
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_1007A5A00;
      v93 = UIActivityTypeSaveToNotes;
      *(v92 + 32) = UIActivityTypeSaveToNotes;
      v94 = v93;
      v107 = sub_1001A92FC(v92);
      swift_setDeallocating();
      sub_1004478D4(v92 + 32);
      v95 = type metadata accessor for ArtworkActivityItemProvider();
      v96 = objc_allocWithZone(v95);
      v97 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
      v117 = 0;
      sub_10000C518(&qword_1009383E8);
      swift_allocObject();

      *&v96[v97] = sub_10074E044();
      *&v96[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v91;
      *&v96[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

      sub_10074F2A4();
      sub_100750504();
      sub_1007504E4();
      (*(v110 + 8))(v8, v111);
      sub_10074F2A4();
      sub_100753B74();
      *&v96[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
      if (qword_100921E00 != -1)
      {
        swift_once();
      }

      v98 = qword_100947648;

      sub_1004477E4(v107, v98);
      *&v96[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v99;
      v96[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v100 = [objc_allocWithZone(UIImage) init];
      v116.receiver = v96;
      v116.super_class = v95;
      v101 = objc_msgSendSuper2(&v116, "initWithPlaceholderItem:", v100);

      sub_10000C518(&unk_1009231A0);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1007A5CF0;
      *(v102 + 32) = *&v101[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
      v103 = v101;

      v104._rawValue = v102;
      sub_100744224(v104);

      v44 = v103;
      sub_100753284();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v111 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_10055E148(v2, a1, &_swiftEmptySetSingleton);
  sub_100753284();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  v109 = v15;
  v110 = v6;
  sub_100753344();
  v16 = sub_10074B744();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_100920B88;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1009366B8;

  sub_1004477E4(&_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = sub_100753064();

  v113.receiver = v20;
  v113.super_class = v19;
  v26 = objc_msgSendSuper2(&v113, "initWithPlaceholderItem:", v25);

  v27 = v26;
  sub_100753284();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v28 = v119;
  v29 = sub_10074B754();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_10000C518(&unk_10093E480);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1007A5A00;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  v108 = sub_1001A92FC(v31);
  swift_setDeallocating();
  sub_1004478D4(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
  v117 = 0;
  sub_10000C518(&qword_1009383E8);
  swift_allocObject();

  *&v35[v36] = sub_10074E044();
  *&v35[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

  sub_10074F2A4();
  sub_100750504();
  sub_1007504E4();
  (*(v110 + 8))(v8, v111);
  sub_10074F2A4();
  sub_100753B74();
  *&v35[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
  if (qword_100921E00 != -1)
  {
    swift_once();
  }

  v37 = qword_100947648;

  sub_1004477E4(v108, v37);
  *&v35[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v38;
  v35[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v39 = [objc_allocWithZone(UIImage) init];
  v112.receiver = v35;
  v112.super_class = v34;
  v40 = objc_msgSendSuper2(&v112, "initWithPlaceholderItem:", v39);

  sub_10000C518(&unk_1009231A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007A5CF0;
  *(v41 + 32) = *&v40[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
  v42 = v40;

  v43._rawValue = v41;
  sub_100744224(v43);

  v44 = v42;
  sub_100753284();
  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

LABEL_37:
  sub_100753344();

LABEL_38:

  return v119;
}

void sub_1004477E4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1001A717C(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1004478D4(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100447930()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_100980418);
  sub_10000D0FC(v0, qword_100980418);
  return sub_100752664();
}

char *sub_1004479A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_100752854();
  sub_100752824();
  if (qword_100920C50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000C518(&unk_100947360);
  sub_10000D0FC(v10, qword_100980418);
  sub_100752534();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_100016C60(0, &qword_100923500);
  v19 = v18;
  v20 = sub_100753E04();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_100447CA4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v0 bounds];
  return [v3 setFrame:?];
}

uint64_t sub_100447DA8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView();
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  sub_100743344();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  sub_100743344();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_100117B24(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_100447F60(uint64_t a1)
{
  v136 = a1;
  v113 = sub_1007504F4();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1007457B4();
  v130 = *(v2 - 8);
  __chkstk_darwin(v2);
  v114 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v115 = (&v107 - v5);
  __chkstk_darwin(v6);
  v110 = &v107 - v7;
  v131 = sub_10000C518(&qword_100932568);
  __chkstk_darwin(v131);
  v128 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  v12 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v16 - 8);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v107 - v19;
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v23 = sub_10000C518(&qword_1009245B0);
  __chkstk_darwin(v23 - 8);
  v109 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v127 = &v107 - v26;
  __chkstk_darwin(v27);
  v126 = &v107 - v28;
  __chkstk_darwin(v29);
  v108 = &v107 - v30;
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  sub_1007442C4();
  sub_100752764();
  v37 = v137;
  sub_100752D34();
  v129 = v138;
  v38 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v132 = v38;
  sub_100016B4C(&v37[v38], v22, &unk_100924290);
  v124 = v13;
  v39 = *(v13 + 48);
  v134 = v12;
  v119 = v13 + 48;
  v118 = v39;
  v40 = v39(v22, 1, v12);
  v125 = v15;
  if (v40)
  {
    sub_10000C8CC(v22, &unk_100924290);
    v41 = v130;
    v42 = *(v130 + 56);
    v43 = (v130 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 1, 1, v2);
    v44 = *(v41 + 16);
    v45 = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_100052C34(v22, v15);
    sub_10000C8CC(v22, &unk_100924290);
    v41 = v130;
    v44 = *(v130 + 16);
    v45 = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v36, v15, v2);
    sub_100052BD8(v15);
    v42 = *(v41 + 56);
    v43 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 0, 1, v2);
  }

  v133 = v44;
  v135 = v45;
  v44(v33, v136, v2);
  v121 = v42;
  v120 = v43;
  v42(v33, 0, 1, v2);
  v46 = *(v131 + 48);
  sub_100016B4C(v36, v11, &qword_1009245B0);
  sub_100016B4C(v33, &v11[v46], &qword_1009245B0);
  v47 = v41;
  v48 = *(v41 + 48);
  v49 = v48(v11, 1, v2);
  v117 = v48;
  v116 = v41 + 48;
  if (v49 == 1)
  {
    sub_10000C8CC(v33, &qword_1009245B0);
    sub_10000C8CC(v36, &qword_1009245B0);
    v50 = v41;
    if (v48(&v11[v46], 1, v2) == 1)
    {
      sub_10000C8CC(v11, &qword_1009245B0);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      v56 = v134;
      goto LABEL_18;
    }
  }

  else
  {
    v107 = v36;
    v57 = v108;
    sub_100016B4C(v11, v108, &qword_1009245B0);
    if (v48(&v11[v46], 1, v2) != 1)
    {
      v69 = v41;
      v70 = v110;
      (*(v41 + 32))(v110, &v11[v46], v2);
      sub_10044A17C(&qword_100940610, &type metadata accessor for ShelfBackground);
      v71 = sub_100753014();
      v72 = *(v47 + 8);
      v72(v70, v2);
      sub_10000C8CC(v33, &qword_1009245B0);
      sub_10000C8CC(v107, &qword_1009245B0);
      v72(v57, v2);
      v50 = v69;
      v56 = v134;
      sub_10000C8CC(v11, &qword_1009245B0);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      if (v71)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10000C8CC(v33, &qword_1009245B0);
    sub_10000C8CC(v107, &qword_1009245B0);
    v50 = v41;
    (*(v41 + 8))(v57, v2);
  }

  sub_10000C8CC(v11, &qword_100932568);
  v51 = v127;
  v52 = v128;
  v54 = v126;
  v55 = v133;
LABEL_10:
  v58 = *&v137[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  v59 = v115;
  v55(v115, v136, v2);
  v60 = (*(v50 + 88))(v59, v2);
  if (v60 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v50 + 96))(v59, v2);
    v61 = *(sub_10000C518(&qword_100940630) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10044A17C(&unk_1009384D0, type metadata accessor for InteractiveBackgroundContentView);
    sub_100744274();
    sub_100743344();
    [v137 frame];
    v62 = v111;
    sub_100750504();
    sub_100750474();
    (*(v112 + 8))(v62, v113);
    sub_10074F374();
    v63 = sub_10074F1E4();
    [v58 setBackgroundColor:v63];

    v56 = v134;
    v54 = v126;
    v51 = v127;
    sub_100744204();
    v53 = v125;
    v55 = v133;

    v52 = v128;

    v64 = sub_100748E34();
    (*(*(v64 - 8) + 8))(v115 + v61, v64);
  }

  else
  {
    if (v60 == enum case for ShelfBackground.color(_:))
    {
      (*(v50 + 96))(v59, v2);
      v65 = *v59;
      v66 = *(sub_10000C518(&unk_100930940) + 48);
      sub_100743344();
      [v58 setBackgroundColor:v65];

      v55 = v133;
      v67 = sub_100748E34();
      v68 = v59 + v66;
      v56 = v134;
      v51 = v127;
      (*(*(v67 - 8) + 8))(v68, v67);
    }

    else
    {
      v73 = v59;
      sub_100743344();
      sub_100016C60(0, &qword_100923500);
      v74 = sub_100753E04();
      [v58 setBackgroundColor:v74];

      v75 = v73;
      v56 = v134;
      (*(v50 + 8))(v75, v2);
    }

    v53 = v125;
  }

LABEL_18:
  v76 = v122;
  sub_100016B4C(&v137[v132], v122, &unk_100924290);
  if (v118(v76, 1, v56))
  {
    sub_10000C8CC(v76, &unk_100924290);
    v77 = 1;
  }

  else
  {
    sub_100052C34(v76, v53);
    sub_10000C8CC(v76, &unk_100924290);
    v55(v54, v53 + *(v56 + 28), v2);
    sub_100052BD8(v53);
    v77 = 0;
  }

  v78 = v121;
  v121(v54, v77, 1, v2);
  v127 = *(v56 + 28);
  v55(v51, v136 + v127, v2);
  v78(v51, 0, 1, v2);
  v79 = *(v131 + 48);
  sub_100016B4C(v54, v52, &qword_1009245B0);
  sub_100016B4C(v51, v52 + v79, &qword_1009245B0);
  v80 = v117;
  if (v117(v52, 1, v2) == 1)
  {
    sub_10000C8CC(v51, &qword_1009245B0);
    sub_10000C8CC(v54, &qword_1009245B0);
    v81 = v80(v52 + v79, 1, v2);
    v82 = v130;
    if (v81 == 1)
    {
      sub_10000C8CC(v52, &qword_1009245B0);
      goto LABEL_35;
    }
  }

  else
  {
    v83 = v109;
    sub_100016B4C(v52, v109, &qword_1009245B0);
    if (v80(v52 + v79, 1, v2) != 1)
    {
      v82 = v130;
      v94 = v52 + v79;
      v95 = v110;
      (*(v130 + 32))(v110, v94, v2);
      sub_10044A17C(&qword_100940610, &type metadata accessor for ShelfBackground);
      v96 = v54;
      v97 = sub_100753014();
      v98 = *(v82 + 8);
      v98(v95, v2);
      sub_10000C8CC(v51, &qword_1009245B0);
      sub_10000C8CC(v96, &qword_1009245B0);
      v98(v83, v2);
      sub_10000C8CC(v128, &qword_1009245B0);
      v84 = v114;
      if (v97)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10000C8CC(v51, &qword_1009245B0);
    sub_10000C8CC(v54, &qword_1009245B0);
    v82 = v130;
    (*(v130 + 8))(v83, v2);
  }

  sub_10000C8CC(v52, &qword_100932568);
  v84 = v114;
LABEL_27:
  v85 = *&v137[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  v133(v84, (v136 + v127), v2);
  v86 = (*(v82 + 88))(v84, v2);
  if (v86 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v82 + 96))(v84, v2);
    v87 = *(sub_10000C518(&qword_100940630) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10044A17C(&unk_1009384D0, type metadata accessor for InteractiveBackgroundContentView);
    sub_100744274();
    sub_100743344();
    [v137 frame];
    v88 = v111;
    sub_100750504();
    sub_100750474();
    (*(v112 + 8))(v88, v113);
    sub_10074F374();
    v89 = sub_10074F1E4();
    [v85 setBackgroundColor:v89];

    sub_100744204();

    v90 = sub_100748E34();
    (*(*(v90 - 8) + 8))(v84 + v87, v90);
  }

  else if (v86 == enum case for ShelfBackground.color(_:))
  {
    (*(v82 + 96))(v84, v2);
    v91 = *v84;
    v92 = *(sub_10000C518(&unk_100930940) + 48);
    sub_100743344();
    [v85 setBackgroundColor:v91];

    v93 = sub_100748E34();
    (*(*(v93 - 8) + 8))(v84 + v92, v93);
  }

  else
  {
    sub_100743344();
    sub_100016C60(0, &qword_100923500);
    v99 = sub_100753E04();
    [v85 setBackgroundColor:v99];

    (*(v82 + 8))(v84, v2);
  }

LABEL_35:
  v100 = v136;
  v101 = v137;
  v102 = v134;
  [*&v137[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v136 + *(v134 + 20))];

  v103 = v100;
  v104 = v123;
  sub_100052C34(v103, v123);
  (*(v124 + 56))(v104, 0, 1, v102);
  v105 = v132;
  swift_beginAccess();
  sub_100117B24(v104, &v101[v105]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView()
{
  result = qword_100938430;
  if (!qword_100938430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004493DC()
{
  sub_1000501F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100449480@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_100016B4C(v3 + v4, a1, &unk_100924290);
}

char *sub_100449510(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView;
  sub_1007433C4();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_100449904(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView);
  *a1 = sub_100743334();
  return sub_100449958;
}

void sub_100449958(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_100743344();
  }

  else
  {
    sub_100743344();
  }
}

id sub_1004499EC()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10074FC14().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000C518(&unk_1009259C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 56) = sub_100016C60(0, &qword_1009384C8);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_100753294().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016C60(0, &qword_100923500);
  v13 = sub_100753F24(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_100449D6C()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10074FC14().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000C518(&unk_1009259C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 56) = sub_100016C60(0, &qword_1009384C8);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_100753294().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016C60(0, &qword_100923500);
  v13 = sub_100753F24(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_10044A0D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10044A17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10044A1C4()
{
  v1 = v0;
  sub_100752854();
  sub_100752824();
  if (qword_100920C50 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&unk_100947360);
  sub_10000D0FC(v2, qword_100980418);
  sub_100752534();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = sub_100754644();
  __break(1u);
  return result;
}

uint64_t sub_10044A380(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_10000C888(v5 + 10, *(v5 + 13));
  v43 = v14;
  sub_100753AA4();
  sub_100751244();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_10000C888(v5 + 15, *(v5 + 18));
  sub_100751254();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_10000C888(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  sub_100753AA4();
  sub_100751244();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_10000C888(v5 + 25, *(v5 + 28));
  sub_100750434();
  sub_10000C888(v51, v52);
  sub_100753AA4();
  sub_100751244();
  sub_10000C620(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_10000C888(v5 + 20, *(v5 + 23));
  sub_100751254();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_10000C888(v5 + 20, *(v5 + 23));
  sub_100753AA4();
  sub_100751244();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_10013F6DC(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_10000C888(v5 + 30, *(v5 + 33));
  sub_100750434();
  sub_10000C888(v51, v52);
  sub_100753AA4();
  sub_100751244();
  sub_10000C620(v51);
  sub_1000746BC((v5 + 328), &v49);
  if (v50)
  {
    sub_100012160(&v49, v51);
    sub_1000746BC((v5 + 288), &v47);
    if (v48)
    {
      sub_100012160(&v47, &v49);
      sub_1000746BC((v5 + 368), &v45);
      if (v46)
      {
        sub_100012160(&v45, &v47);
        sub_10000C888(v51, v52);
        sub_100751254();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_10000C888(&v49, v50);
        sub_100753AA4();
        sub_100751244();
        sub_10000C888(v51, v52);
        sub_100751244();
        sub_10000C888(&v47, v48);
        sub_100753AA4();
        sub_100751244();
        sub_10000C620(&v47);
        sub_10000C620(&v49);
        return sub_10000C620(v51);
      }

      sub_10007485C(&v45);
      sub_10000C620(&v49);
    }

    else
    {
      sub_10007485C(&v47);
    }

    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(&v49);
  }

  sub_1000746BC((v5 + 288), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(v51);
  }

  sub_1000746BC((v5 + 328), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(v51);
  }

  sub_1000746BC((v5 + 288), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    return sub_10000C620(v51);
  }

  return sub_10007485C(v51);
}

uint64_t sub_10044ABF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10044AC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10044ACF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10044AD14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10044AD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_10044AE18(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_1009218A0 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_1009825D8;
  v29.value._rawValue = 0;
  isa = sub_1007537C4(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = sub_100743AE4();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = sub_100743AE4();

  v15(v6, v2);
  sub_100753F34();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_10044B15C(void *a1)
{
  if (qword_100921898 != -1)
  {
    swift_once();
  }

  v2 = qword_1009825D0;
  if (sub_100753944())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_10044B1D8(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_100072194(v3, a2);

  return v4;
}

double sub_10044B250(uint64_t a1, void *a2, int a3)
{
  v92 = a3;
  v98 = a2;
  v4 = sub_1007511D4();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750954();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = v75 - v9;
  v10 = sub_100750304();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v81 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100750E94();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = sub_100750BD4();
  v91 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v75 - v23;
  __chkstk_darwin(v25);
  v27 = v75 - v26;
  v28 = sub_10074F464();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    type metadata accessor for ProductNoRatingsView();
    v32 = v98;
    swift_getObjectType();
    v33 = sub_1000FB270(v30, v31, v32);
  }

  else
  {
    v75[0] = v15;
    v75[1] = v18;
    v97 = v27;
    v78 = v21;
    sub_10074F454();
    v35 = v34;
    v36 = objc_allocWithZone(NSNumber);
    LODWORD(v37) = v35;
    v106.value.super.super.isa = [v36 initWithFloat:v37];
    isa = v106.value.super.super.isa;
    v106.is_nil = 1;
    sub_10074B984(v106, v39);
    v41 = v40;

    v77 = v19;
    v96 = v24;
    v75[2] = a1;
    if (!v41)
    {
      sub_10074F454();
      sub_100753464();
    }

    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v43 = NSKernAttributeName;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v44 = objc_allocWithZone(NSAttributedString);
    v45 = sub_100753064();

    type metadata accessor for Key(0);
    sub_10044C078(&qword_1009276F0, type metadata accessor for Key);
    v46 = sub_100752F34().super.isa;

    v47 = [v44 initWithString:v45 attributes:v46];

    v76 = v47;
    v48 = v75[0];
    sub_100750E84();
    if (qword_100921890 != -1)
    {
      swift_once();
    }

    v49 = sub_10000C518(&qword_100923C40);
    sub_10000D0FC(v49, qword_1009825B8);
    v101[0] = [v98 snapshotPageTraitEnvironment];
    v50 = v81;
    sub_100743464();
    swift_unknownObjectRelease();
    sub_100750E54();
    v52 = v83;
    v51 = v84;
    (*(v83 + 8))(v50, v84);
    (*(v80 + 8))(v48, v82);
    sub_100750BB4();
    sub_100750C14();
    v81 = sub_100750F34();
    swift_allocObject();
    v82 = sub_100750EF4();
    v53 = v88;
    if (qword_1009210F0 != -1)
    {
      swift_once();
    }

    v54 = sub_10000D0FC(v51, qword_100981008);
    v55 = v85;
    (*(v52 + 16))(v85, v54, v51);
    v57 = v86;
    v56 = v87;
    (*(v86 + 104))(v55, enum case for FontSource.useCase(_:), v87);
    v58 = sub_1007502E4();
    (*(v57 + 8))(v55, v56);
    v107._object = 0x800000010077CE70;
    v107._countAndFlagsBits = 0xD000000000000012;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    sub_10074B194(v107, 5, v109);
    sub_100750944();
    sub_100750934();
    v59 = v90;
    v60 = v89[1];
    v60(v53, v90);
    sub_100750BB4();
    sub_100750BE4();
    v61 = sub_10074F434();
    v108._countAndFlagsBits = 0xD000000000000013;
    v108._object = 0x800000010076D9F0;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    sub_10074B194(v108, v61, v110);
    sub_100750944();
    v89 = v58;
    sub_100750934();
    v60(v53, v59);
    sub_100750BB4();
    sub_100750BE4();
    swift_allocObject();
    v90 = sub_100750EF4();
    v62 = v91;
    if (qword_100921888 != -1)
    {
      swift_once();
    }

    sub_10004B858(&xmmword_1009824D8, v101);
    v63 = v77;
    v102[3] = v77;
    v102[4] = &protocol witness table for LabelPlaceholder;
    v64 = sub_10000D134(v102);
    v65 = *(v62 + 16);
    v65(v64, v97, v63);
    v100 = v82;
    sub_100750434();
    v103[3] = v63;
    v103[4] = &protocol witness table for LabelPlaceholder;
    v66 = sub_10000D134(v103);
    v65(v66, v96, v63);
    v104[3] = v63;
    v104[4] = &protocol witness table for LabelPlaceholder;
    v67 = sub_10000D134(v104);
    v68 = v78;
    v65(v67, v78, v63);
    v99 = v90;
    sub_100750434();
    v105 = v92 & 1;
    v69 = [v98 traitCollection];
    v70 = v93;
    sub_10004ADF0();
    v71 = v95;
    sub_100751254();
    v33 = v72;

    (*(v94 + 8))(v70, v71);
    sub_10044C0C0(v101);
    v73 = *(v62 + 8);
    v73(v68, v63);
    v73(v96, v63);
    v73(v97, v63);
  }

  return v33;
}

double sub_10044BD70()
{
  v0 = sub_10074EAB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F474();
  sub_10044C078(&qword_1009384E8, &type metadata accessor for Ratings);
  sub_1007468B4();
  if (!v18)
  {
    return 0.0;
  }

  v17 = v18;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  v11 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074EA54();
  sub_10044C078(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v12 = sub_100754324();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  sub_10044B250(v17, v11, v12 & 1);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_10044C078(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10044C114(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_100753114();

  return (v2 & 1) == 0;
}

double sub_10044C160(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100743854();
  v10 = sub_100743844();
  v11 = sub_10030E050(v9, v10, a7, 0.0, 0.0, a1);

  return v11;
}

uint64_t sub_10044C288(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10044C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_1007504F4();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  v15 = sub_100743844();
  v86 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v82 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = sub_100743854();
  v19 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork];
  v71 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_10011CDA8(v20, v19);

  v22 = &off_100932000;
  v23 = &stru_1008F2000;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = sub_100743854();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v27 = v74;
  v28 = v83;
  if (v26)
  {
    v78 = v26;
    v29 = 0;
    v79 = sub_100743864();
    v80 = v25 & 0xC000000000000001;
    v73 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25;
    v72 = v25 + 32;
    v76 = (v11 + 2);
    v77 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v69 = a5;
    v68 = v10;
    v70 = v6;
    while (1)
    {
      if (v80)
      {
        v23 = sub_100754574();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v73 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v72 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      sub_10074F2A4();
      sub_100750504();
      v25 = *&v6[v86];
      v84 = v23;
      if (v25)
      {

        v31 = sub_1007444C4();

        if (v31)
        {
          v32 = *&v6[v71];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            v22 = sub_100754664();
          }

          else
          {
            v22 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = v22 != v33;
            if (v22 == v33)
            {
LABEL_28:

              v6 = v70;
              a5 = v69;
              v10 = v68;
              v27 = v74;
              v28 = v83;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = sub_100754574();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = sub_100754664();
                goto LABEL_5;
              }
            }

            a5 = sub_10074F114();

            ++v33;
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_1002898DC(v34, v10);

      v35 = v10[8];
      v36 = v10[10];
      sub_100024440(v10);
      result = *&v6[v82];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v39 = v38;
      if (v23)
      {
        if (sub_100750444())
        {
          (*v76)(v85, v28, v27);
        }

        else
        {
          sub_100750484();
        }

        v40 = 1;
      }

      else
      {
        (*v76)(v85, v28, v27);
        v40 = sub_100750444();
      }

      v41 = [a5 traitCollection];
      v42 = sub_1007537B4();

      if (v42)
      {
        [a5 pageMarginInsets];
        v44 = v43;
        [a5 pageMarginInsets];
        v46 = v44 + v45;
        PageTraitEnvironment.pageColumnMargin.getter();
        v48 = v39 - (v46 + v47 + v47);
        v49 = v47 * 0.0;
        v50 = v48 * 0.333333333;
      }

      else
      {
        if (v40)
        {
          v51 = 2.0;
        }

        else
        {
          v51 = 1.0;
        }

        if (v40)
        {
          v52 = 3.0;
        }

        else
        {
          v52 = 1.0;
        }

        [a5 pageMarginInsets];
        v54 = v53;
        [a5 pageMarginInsets];
        v56 = v54 + v55;
        PageTraitEnvironment.pageColumnMargin.getter();
        v58 = v39 - (v56 + (v52 + -1.0) * v57);
        v49 = (v51 + -1.0) * v57;
        v50 = v51 / v52 * v58;
      }

      v59 = v49 + v50;
      v60 = [a5 traitCollection];
      sub_1007537B4();

      v61 = v85;
      sub_1007504C4();
      v62 = v59 - (v35 + v36);
      sub_1007504C4();
      v64 = v63;
      v22 = v77;
      v65 = *v77;
      (*v77)(v61, v27);
      v28 = v83;
      v65(v83, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100254FF4(0, v11[2] + 1, 1, v11);
      }

      v23 = v11[2];
      v66 = v11[3];
      v25 = v23 + 1;
      if (v23 >= v66 >> 1)
      {
        v11 = sub_100254FF4((v66 > 1), v23 + 1, 1, v11);
      }

      v11[2] = v25;
      v67 = &v11[3 * v23];
      *(v67 + 4) = v84;
      v67[5] = v62;
      *(v67 + 6) = v64;
      if (v29 == v78)
      {

        v23 = 0x1008F2000;
        v22 = &off_100932000;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*(v22[199] + v6) *(v23 + 664)];
  }

  return result;
}

unint64_t sub_10044CA58()
{
  result = qword_100938538;
  if (!qword_100938538)
  {
    sub_1007438F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938538);
  }

  return result;
}

void sub_10044CAB0(uint64_t a1, uint64_t a2)
{
  v90 = sub_100742CF4();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1007493D4();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10074A304();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v9 - 8);
  v83 = &v77 - v10;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v80 = &v77 - v12;
  v78 = sub_10074F4D4();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100746374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007438B4();
  v18 = sub_100746364();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_10074ECB4();
    v20 = v19;
    sub_1007438D4();
    v22 = v21;
    if (v20)
    {
      v23 = sub_100753064();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = sub_100753064();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1007438D4();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v95 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = sub_1007438C4();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = sub_100754664();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (sub_1007438A4())
    {
      sub_100743884();
      if (!v70)
      {
        v109._countAndFlagsBits = 0x432E6E6F69746341;
        v109._object = 0xED00006C65636E61;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        sub_1007458B4(v109, v110);
      }

      v71 = sub_100753064();

      v72 = [objc_opt_self() actionWithTitle:v71 style:1 handler:0];

      v73 = v95;
      [v95 addAction:v72];
      [v73 setPreferredAction:v72];
    }

    v107 = 0;
    aBlock = 0u;
    v106 = 0u;
    (*(v77 + 104))(v79, enum case for FlowPage.viewController(_:), v78);
    v74 = sub_100741264();
    (*(*(v74 - 8) + 56))(v80, 1, 1, v74);
    v75 = sub_100743FE4();
    (*(*(v75 - 8) + 56))(v83, 1, 1, v75);
    v104 = sub_10044D908();
    v103 = v95;
    v102 = v95;
    sub_1007525F4();
    (*(v81 + 104))(v87, enum case for FlowPresentationContext.infer(_:), v82);
    (*(v85 + 104))(v89, enum case for FlowAnimationBehavior.infer(_:), v86);
    (*(v88 + 104))(v91, enum case for FlowOrigin.inapp(_:), v90);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v76 = sub_100742C84();
    sub_10052AD94(v76, 1, a2);

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v97 = v28 & 0xFFFFFFFFFFFFFF8;
  v98 = v28 & 0xC000000000000001;
  v96 = &v106;
  v92 = "Rating.Max.Caption";
  v94 = v28;
  v93 = v29;
  while (1)
  {
    if (v98)
    {
      v31 = sub_100754574();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v97 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != sub_100743874();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v100 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = sub_1007438E4();
    v101 = v32;
    v102 = v31;
    if ((v38 & 1) == 0)
    {
      sub_10074ECB4();
      if (v47)
      {

        v48 = sub_100753064();
      }

      else
      {

        v48 = 0;
      }

      v107 = sub_10044D8C0;
      v108 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v106 = sub_10073EFC4;
      *(&v106 + 1) = &unk_1008763A0;
      v54 = _Block_copy(&aBlock);

      v55 = [objc_opt_self() actionWithTitle:v48 style:v100 handler:v54];
      goto LABEL_40;
    }

    v39 = sub_100743894();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = sub_100753064();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = sub_10074ECC4();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((sub_10074F1C4() & 1) == 0)
    {
      if (sub_10074F1D4())
      {
        v45 = sub_100743AC4();

LABEL_23:
        v99 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v99 = 0;
      goto LABEL_38;
    }

    v51 = sub_10056028C(v50, 0);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 imageWithRenderingMode:2];

      v99 = [v53 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v99 = 0;
    }

    v56 = v99;
LABEL_38:
    v57 = a1;
    v58 = a2;
    v59 = [objc_allocWithZone(UIViewController) init];
    v60 = sub_10074ECB4();
    v62 = v61;
    v63 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v64 = sub_100507CD0(v60, v62, v99);
    [v59 setView:v64];

    v65 = [v59 view];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    [v65 intrinsicContentSize];
    v68 = v67;

    [v59 setPreferredContentSize:{0.0, v68}];
    v69 = objc_opt_self();
    v107 = sub_10044D8C0;
    v108 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_10044D80C;
    *(&v106 + 1) = &unk_1008763C8;
    v54 = _Block_copy(&aBlock);
    v48 = v59;

    v55 = [v69 _actionWithContentViewController:v48 style:v100 handler:v54];

    a2 = v58;
    a1 = v57;
    v28 = v94;
    v29 = v93;
LABEL_40:
    _Block_release(v54);

    if (v55)
    {
      [v95 addAction:v55];
    }

    ++v30;
    if (v101 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_10044D80C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10044D880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10044D8C0()
{
  sub_10052AB60(*(v0 + 16), 1, *(v0 + 24));
}

uint64_t sub_10044D8F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10044D908()
{
  result = qword_100938540;
  if (!qword_100938540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100938540);
  }

  return result;
}

uint64_t sub_10044D95C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10074FB64();
  sub_10074E184();
  if (swift_dynamicCastClass())
  {
    v12 = sub_10044DE78();
    v13 = sub_10074E174();
    sub_10006AF98(v13, a4);

    v14 = sub_10074F704();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v11, v5 + v16);
    swift_endAccess();
    sub_1005F3E54(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10074FA74();
      if (!v19)
      {
        sub_10000D198();
        v19 = sub_100753E64();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_10044DBF0(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v5);
  sub_10000C518(&unk_100923100);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    sub_10074FB64();

    sub_10074E184();
    if (swift_dynamicCastClass())
    {
      v3 = sub_10044DE78();
      v4 = sub_10074E174();
      sub_10044E928(v4, a2, v3);
    }

    else
    {
    }
  }
}

void sub_10044DCE4()
{
  v0 = sub_10044DE78();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v2 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();

  v3 = *(*&v0[v1] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10004D658();
  v4 = v3;
  sub_100744274();
}

void (*sub_10044DDB0(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_10044E91C;
}

id sub_10044DE78()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_10044DEF8(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_10044DE78();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_100752A74();
  sub_10000C8CC(v19, &unk_100923520);
  sub_10000C8CC(v20, &unk_100923520);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_10044E158()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_10044E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_10006D514(a4, a5);
  return v7;
}

void sub_10044E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0);
      sub_10074FBB4();
      if (swift_dynamicCast())
      {
        sub_10074FB64();

        sub_1007451E4();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_10044E6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_100938580;
  if (!qword_100938580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044E7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10044DE78();
  sub_1002EF4D8(a1, a2);
}

uint64_t sub_10044E81C()
{
  v0 = sub_10044DE78();
  v1 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10044E864()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044E89C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044E8D4()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10044E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_10074DFB4();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10000C824(v12, &v11);

  sub_10000C518(&unk_100923100);
  if (swift_dynamicCast())
  {
    sub_10074DFA4();
    v6 = sub_10074EF24();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_100055D54(&v11);
      sub_10074F374();
      v8 = *(*(a3 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_1007433C4();
      sub_10004D658();
      v9 = v8;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v12);
}

uint64_t sub_10044EAD4()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100980438);
  sub_10000D0FC(v4, qword_100980438);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

id sub_10044ED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader) = v7;

    return sub_100456C70(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044EF68()
{
  if (qword_100920C58 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100980438);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752424();
  sub_1000277BC(v4);
  sub_100752D04();
}

uint64_t sub_10044F18C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpsellGridViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044F1CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_1006CE2EC(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

uint64_t sub_10044F358(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v43 = a3;
  v42 = a2;
  v10 = sub_10074FB54();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A2E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v17 = sub_10074A2A4();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    result = sub_10074FBA4();
    if (result)
    {
      v19 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_100752754();
      v41 = v47[0];
      if (v47[0])
      {
        v39 = v10;
        (*(a6 + 8))(a5, a6);
        v21 = v20;
        sub_1007463A4();
        if ((v21 & 1) != 0 || (v22 = sub_100746394(), v22 != sub_100746394()))
        {
          v23 = sub_1007463A4();
          v24 = sub_1006CE170(v23);
          ObjectType = v19;
          v25 = a5;
          v27 = v26;
          v28 = *(a6 + 32);
          swift_unknownObjectRetain();
          v29 = v28(v25, a6);
          (*(a6 + 80))(v24, v27, v29, v30, v25, a6);
          swift_unknownObjectRelease();
          v31 = sub_1007463A4();
          (*(a6 + 16))(v31, 0, v25, a6);
          v32 = v27;
          a5 = v25;
          v19 = ObjectType;
          (*(a6 + 40))(v24, v32, a5, a6);
          swift_unknownObjectRelease();
        }

        v33 = *(a6 + 64);

        v33(v34, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v36 = v35;
          ObjectType = swift_getObjectType();
          v47[3] = sub_1007463B4();
          v47[4] = sub_100295B84();
          v47[0] = v19;

          sub_10074FB74();
          sub_1007442C4();
          sub_100752764();
          v37 = v45;
          sub_100752D34();
          (*(v36 + 112))(v47, v37, v42, v12, v43, v46, ObjectType, v36);
          swift_unknownObjectRelease();

          (*(v44 + 8))(v12, v39);
          sub_10000C620(v47);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}