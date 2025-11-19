uint64_t sub_1001F4CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = sub_10076F13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076B96C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  sub_10076295C();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F5CC();
  v33[1] = v58;
  sub_100016E2C(a2, &v58, &unk_1009434C0);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_10000A5D4(&qword_10094D7A8);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000CFBC(&v58, &unk_1009434C0);
  }

  swift_getObjectType();
  sub_10076294C();
  sub_10075EE2C();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  sub_10076292C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_100085204();
  v25 = v3;
  *v10 = sub_10077068C();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = sub_10076F16C();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_10094FFF8;
    v49 = xmmword_100950008;
    v50 = xmmword_100950018;
    v46 = xmmword_10094FFD8;
    v47 = xmmword_10094FFE8;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_10094FFD8;
    v59 = xmmword_10094FFE8;
    v61 = xmmword_100950008;
    v62 = xmmword_100950018;
    v51 = qword_100950028;
    v57 = v45;
    v63 = qword_100950028;
    v60 = xmmword_10094FFF8;
    sub_100016E2C(&v46, v38, &unk_1009505F0);
    xmmword_10094FFF8 = v54;
    xmmword_100950008 = v55;
    xmmword_100950018 = v56;
    qword_100950028 = v57;
    xmmword_10094FFD8 = v52;
    xmmword_10094FFE8 = v53;
    sub_10000CFBC(&v58, &unk_1009505F0);
    v28 = sub_10000A5D4(&unk_1009428E0);
    sub_1001F9960(&v40, v38);
    v29 = v36;
    v30 = v37;
    sub_10076F5AC();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10000CFBC(v29, &unk_100943200);
    }

    else
    {

      sub_100263BF0(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_10094FFF8;
    v38[3] = xmmword_100950008;
    v38[4] = xmmword_100950018;
    v39 = qword_100950028;
    v38[0] = xmmword_10094FFD8;
    v38[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v46;
    xmmword_10094FFE8 = v47;
    xmmword_10094FFF8 = v48;
    xmmword_100950008 = v49;
    xmmword_100950018 = v50;
    qword_100950028 = v51;
    sub_10000CFBC(v38, &unk_1009505F0);

    return sub_1001F99BC(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F52D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_10076F90C();
  sub_10000CFBC(v13, &unk_1009434C0);
  sub_10000CFBC(&v14, &unk_1009434C0);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  sub_10076F98C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10000CFBC(&v14, &unk_1009434C0);
  sub_100770B9C();
  return (v11)(v10, v4);
}

id sub_1001F54A0(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isEnabled") != v2)
  {
    sub_1001EA5C8(v2);
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "setEnabled:", v2);
}

uint64_t sub_1001F5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_10000A5D4(&unk_100946750);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1001F3A18(a1, a2, a3, a4, v16, a8);
  return sub_10000CFBC(v16, &qword_10094F730);
}

void sub_1001F5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_10000A5D4(&unk_100946750);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1001F3A18(a1, a2, 0, 0, v11, a5);
  sub_10000CFBC(v11, &qword_10094F730);
  v13 = sub_10076FF6C();
  [v5 accessibilityShowText:v13];
}

uint64_t sub_1001F57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_10000A5D4(&unk_100946750);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_1001F4464(a1, a2, a3, a4, v14, a6);
  return sub_10000CFBC(v14, &qword_10094F730);
}

uint64_t sub_1001F5900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_10000A5D4(&unk_100946750);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1001F4464(a1, a2, 0, 0, v8, a3);
  return sub_10000CFBC(v8, &qword_10094F730);
}

uint64_t sub_1001F5A78()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076FF9C();

  return v3;
}

void sub_1001F5AE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setAccessibilityLabel:v3];
}

void (*sub_1001F5B4C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001F2548(v2);
  return sub_100019FCC;
}

uint64_t sub_1001F5C94(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v54 = v13;
  v55 = a4;
  v14 = sub_10000DB7C(v53);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&a2[v15], v51);
  sub_10000CF78(v51, v52);
  DynamicType = swift_getDynamicType();
  sub_10000CF78(v53, v54);
  v17 = swift_getDynamicType();
  sub_10000CF78(v53, v54);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = sub_100767A5C();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1001F96DC(&a2[v15], v53);
  swift_endAccess();
  v50.receiver = a2;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "frame");
  if (CGRectIsEmpty(v56))
  {
    sub_10000A570(&a2[v15], aBlock);
    sub_10000CF78(aBlock, v45);
    v19 = sub_1007679FC();
    sub_10000CD74(aBlock);
    if (v19)
    {
      if (DynamicType != v17)
      {
        sub_1001E8324();
      }

      goto LABEL_28;
    }
  }

  v41 = a7;
  sub_10000A570(&a2[v15], aBlock);
  sub_10000CF78(aBlock, v45);
  if (sub_100767A1C())
  {
    v20 = a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000CD74(aBlock);
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CD74(aBlock);
  }

  sub_10000A570(&a2[v15], aBlock);
  sub_10000CF78(aBlock, v45);
  v21 = sub_100767A0C();
  sub_10000CD74(aBlock);
  if (v21)
  {
LABEL_11:
    v22 = objc_opt_self();
    [v22 begin];
    v42 = 1;
    [v22 setDisableActions:1];
    goto LABEL_13;
  }

  v42 = 0;
LABEL_13:
  sub_10000CF78(v51, v52);
  sub_1001F9A80(&qword_10094D5D0, type metadata accessor for OfferButton);
  sub_100767A7C();
  if (DynamicType != v17)
  {
    sub_1001E8324();
  }

  sub_10000CF78(v53, v54);
  sub_100767A3C();
  if (a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v49.receiver = a2;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v36 = &a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v42)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000CF78(v51, v52);
  sub_100767A2C();
  v24 = v23;
  v26 = v25;
  sub_10000CF78(v53, v54);
  sub_100767A2C();
  v29 = v26 == v28 && v24 == v27;
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    v30 = [a2 superview];
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  v32 = objc_opt_self();
  v33 = a2;
  v34 = v30;
  if ([v32 areAnimationsEnabled])
  {
    v46 = a6;
    v47 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v45 = v41;
    v35 = _Block_copy(aBlock);

    [v32 animateWithDuration:v35 animations:0.3];

    _Block_release(v35);
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v33 setNeedsLayout];
  if (v29)
  {
    [v33 layoutIfNeeded];
  }

  else
  {
    v48.receiver = v33;
    v48.super_class = ObjectType;
    objc_msgSendSuper2(&v48, "invalidateIntrinsicContentSize");
    v40 = &v33[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v40 = 0;
    *(v40 + 1) = 0;
    v40[16] = 1;
    [v34 setNeedsLayout];
    [v34 layoutIfNeeded];
  }

  if (v42)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000CD74(v51);
  return sub_10000CD74(v53);
}

uint64_t sub_1001F62E8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10076A48C();
  v43 = v5;
  v44 = &protocol witness table for IndeterminateProgressConfiguration;
  v42[0] = a1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&a2[v6], v40);
  sub_10000CF78(v40, v41);
  DynamicType = swift_getDynamicType();
  sub_10000CF78(v42, v5);
  v8 = swift_getDynamicType();
  sub_10000CF78(v42, v43);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = sub_100767A5C();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1001F96DC(&a2[v6], v42);
  swift_endAccess();
  v39.receiver = a2;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "frame");
  if (CGRectIsEmpty(v45))
  {
    sub_10000A570(&a2[v6], aBlock);
    sub_10000CF78(aBlock, v34);
    v10 = sub_1007679FC();
    sub_10000CD74(aBlock);
    if (v10)
    {
      if (DynamicType != v8)
      {
        sub_1001E8324();
      }

      goto LABEL_28;
    }
  }

  sub_10000A570(&a2[v6], aBlock);
  sub_10000CF78(aBlock, v34);
  if (sub_100767A1C())
  {
    v11 = a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000CD74(aBlock);
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CD74(aBlock);
  }

  sub_10000A570(&a2[v6], aBlock);
  sub_10000CF78(aBlock, v34);
  v12 = sub_100767A0C();
  sub_10000CD74(aBlock);
  if (v12)
  {
LABEL_11:
    v13 = objc_opt_self();
    [v13 begin];
    v32 = 1;
    [v13 setDisableActions:1];
    goto LABEL_13;
  }

  v32 = 0;
LABEL_13:
  sub_10000CF78(v40, v41);
  sub_1001F9A80(&qword_10094D5D0, type metadata accessor for OfferButton);
  sub_100767A7C();
  if (DynamicType != v8)
  {
    sub_1001E8324();
  }

  sub_10000CF78(v42, v43);
  sub_100767A3C();
  if (a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v38.receiver = a2;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v27 = &a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v32)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000CF78(v40, v41);
  sub_100767A2C();
  v15 = v14;
  v17 = v16;
  sub_10000CF78(v42, v43);
  sub_100767A2C();
  v20 = v17 == v19 && v15 == v18;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    v21 = [a2 superview];
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  v23 = objc_opt_self();
  v24 = a2;
  v25 = v21;
  if ([v23 areAnimationsEnabled])
  {
    v35 = sub_1001F9EE8;
    v36 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v34 = &unk_10088CCD8;
    v26 = _Block_copy(aBlock);

    [v23 animateWithDuration:v26 animations:0.3];

    _Block_release(v26);
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v24 setNeedsLayout];
  if (v20)
  {
    [v24 layoutIfNeeded];
  }

  else
  {
    v37.receiver = v24;
    v37.super_class = ObjectType;
    objc_msgSendSuper2(&v37, "invalidateIntrinsicContentSize");
    v31 = &v24[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v31 = 0;
    *(v31 + 1) = 0;
    v31[16] = 1;
    [v25 setNeedsLayout];
    [v25 layoutIfNeeded];
  }

  if (v32)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000CD74(v40);
  return sub_10000CD74(v42);
}

id sub_1001F6900(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v66 = a1;
  v67 = sub_100769A4C();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100945590);
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v64 = &v53 - v8;
  v9 = sub_1007628DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_10076443C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v53 - v20;
  __chkstk_darwin(v21);
  v56 = &v53 - v22;
  __chkstk_darwin(v23);
  v59 = &v53 - v24;
  __chkstk_darwin(v25);
  v60 = &v53 - v26;
  __chkstk_darwin(v27);
  v61 = &v53 - v28;
  v69 = a2;
  sub_100769A1C();
  v70 = v4;
  v58 = [v4 traitCollection];
  v29 = *(v10 + 104);
  v29(v12, enum case for OfferEnvironment.arcadeProductPage(_:), v9);
  LOBYTE(a2) = sub_1007628BC();
  v30 = *(v10 + 8);
  v30(v12, v9);
  if (a2)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A61C(v16, qword_10099CA98);
    v32 = v59;
    (*(v17 + 16))(v59, v31, v16);

    goto LABEL_14;
  }

  v29(v12, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v9);
  v33 = sub_1007628BC();
  v53 = v30;
  v30(v12, v9);
  if (v33)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v34 = qword_10099CA80;
LABEL_13:
    v35 = sub_10000A61C(v16, v34);
    v32 = v59;
    (*(v17 + 16))(v59, v35, v16);

    v30 = v53;
    goto LABEL_14;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v34 = qword_10099CA68;
    goto LABEL_13;
  }

  v29(v12, enum case for OfferEnvironment.navigationBar(_:), v9);
  v41 = sub_1007628BC();
  v30 = v53;
  v53(v12, v9);
  if (v41)
  {
    v42 = v58;
    v32 = v59;
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A61C(v16, qword_100944CE8);
    (*(v17 + 16))(v32, v43, v16);
  }

  else
  {
    v44 = v58;
    v45 = sub_10077071C();
    v32 = v59;
    if (v57)
    {
      if (v45)
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v46 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v46 = qword_100944CA0;
      }

      v48 = sub_10000A61C(v16, v46);
      v49 = v54;
      (*(v17 + 16))(v54, v48, v16);
      v50 = v56;
      (*(v17 + 32))(v56, v49, v16);
      sub_10076C13C();

      (*(v17 + 8))(v50, v16);
    }

    else
    {
      if (v45)
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v47 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v47 = qword_100944CA0;
      }

      v51 = sub_10000A61C(v16, v47);
      v52 = v55;
      (*(v17 + 16))(v55, v51, v16);

      (*(v17 + 32))(v32, v52, v16);
    }
  }

LABEL_14:
  v36 = *(v17 + 32);
  v37 = v60;
  v36(v60, v32, v16);
  v30(v15, v9);
  v36(v61, v37, v16);
  (*(v62 + 16))(v64, v66, v63);
  (*(v65 + 16))(v68, v69, v67);
  sub_10076A48C();
  swift_allocObject();
  sub_10076A47C();

  v39 = v70;
  sub_1001F62E8(v38, v70);

  return [v39 accessibilityShowLoading];
}

void sub_1001F71A4(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v85 = a3;
  v109 = a2;
  v94 = sub_100769A4C();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100945590);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = sub_1007628DC();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = sub_10076443C();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = sub_10076622C();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = sub_10076B96C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&qword_10094D7A0);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_10000A5D4(&unk_10094A8C0);

      sub_10076F5AC();

      if (v111)
      {
        swift_getObjectType();
        sub_100766ACC();
        sub_10075EE2C();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        sub_10075ED1C();
        swift_unknownObjectRelease();
        v42 = sub_10075EBAC();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = sub_10075EBAC();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_100016E2C(v41, v36, &qword_10094D7A0);
    sub_10075EBAC();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10000CFBC(v36, &qword_10094D7A0);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = sub_10075EB1C();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_1001E7ED0(v48);
    sub_100769A1C();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = sub_1007628BC();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_10093F550 != -1)
      {
        swift_once();
      }

      v54 = qword_10099CA98;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = sub_1007628BC();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_10093F548 != -1)
        {
          swift_once();
        }

        v54 = qword_10099CA80;
      }

      else
      {
        v57 = sub_1007628AC();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = sub_1007628BC();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_10093F558 != -1)
            {
              swift_once();
            }

            v70 = sub_10000A61C(v55, qword_100944CE8);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = sub_10077071C();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_10093F520 != -1)
                {
                  swift_once();
                }

                v73 = qword_100944C88;
              }

              else
              {
                v72 = v93;
                if (qword_10093F528 != -1)
                {
                  swift_once();
                }

                v73 = qword_100944CA0;
              }

              v76 = sub_10000A61C(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              sub_10076C13C();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_10093F520 != -1)
                {
                  swift_once();
                }

                v75 = qword_100944C88;
              }

              else
              {
                v74 = v93;
                if (qword_10093F528 != -1)
                {
                  swift_once();
                }

                v75 = qword_100944CA0;
              }

              v79 = sub_10000A61C(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_10093F540 != -1)
        {
          swift_once();
        }

        v54 = qword_10099CA68;
      }
    }

    v58 = sub_10000A61C(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    sub_10076621C();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_1001F5C94(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_10088CD10, sub_1001F9EE8, &unk_10088CD28);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:a4];

    sub_10000CFBC(v108, &qword_10094D7A0);
  }
}

void sub_1001F7FE8(uint64_t a1, uint64_t a2, int a3)
{
  v147 = a3;
  v182 = a1;
  v5 = sub_10076731C();
  v172 = *(v5 - 8);
  v173 = v5;
  __chkstk_darwin(v5);
  v170 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v143 - v8;
  v9 = sub_100769A4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766CDC();
  __chkstk_darwin(v13 - 8);
  v169 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10075F78C();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v143 - v17;
  v18 = sub_10000A5D4(&qword_100945590);
  v179 = *(v18 - 8);
  v180 = v18;
  __chkstk_darwin(v18);
  v181 = &v143 - v19;
  v185 = sub_1007628DC();
  v175 = *(v185 - 8);
  __chkstk_darwin(v185);
  v177 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v184 = &v143 - v22;
  __chkstk_darwin(v23);
  v176 = &v143 - v24;
  v178 = sub_10076443C();
  v183 = *(v178 - 8);
  __chkstk_darwin(v178);
  v145 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v143 - v27;
  __chkstk_darwin(v28);
  v146 = &v143 - v29;
  __chkstk_darwin(v30);
  v162 = &v143 - v31;
  __chkstk_darwin(v32);
  v163 = &v143 - v33;
  __chkstk_darwin(v34);
  v166 = &v143 - v35;
  __chkstk_darwin(v36);
  v148 = &v143 - v37;
  __chkstk_darwin(v38);
  v155 = &v143 - v39;
  __chkstk_darwin(v40);
  v154 = &v143 - v41;
  __chkstk_darwin(v42);
  v156 = &v143 - v43;
  __chkstk_darwin(v44);
  v157 = &v143 - v45;
  v161 = sub_100764F4C();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v159 = &v143 - v48;
  v49 = sub_10076B96C();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000A5D4(&qword_10094D7A0);
  __chkstk_darwin(v53 - 8);
  v55 = &v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v186 = &v143 - v57;
  v58 = *&v3[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties];
  if (v58)
  {
    v151 = v12;
    v152 = v10;
    v153 = v9;
    v174 = a2;
    v59 = v3;
    if (swift_weakLoadStrong())
    {
      sub_10000A5D4(&unk_10094A8C0);

      sub_10076F5CC();

      swift_getObjectType();
      sub_100766ACC();
      sub_10075EE2C();
      swift_unknownObjectRelease();
      (*(v50 + 8))(v52, v49);
      swift_getObjectType();
      v60 = v186;
      sub_10075ED1C();
      swift_unknownObjectRelease();
      v61 = sub_10075EBAC();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    }

    else
    {
      v61 = sub_10075EBAC();
      v60 = v186;
      (*(*(v61 - 8) + 56))(v186, 1, 1, v61);
    }

    sub_100016E2C(v60, v55, &qword_10094D7A0);
    sub_10075EBAC();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v55, 1, v61) == 1)
    {
      sub_10000CFBC(v55, &qword_10094D7A0);
      v63 = 0;
    }

    else
    {
      v63 = sub_10075EB8C();
      (*(v62 + 8))(v55, v61);
    }

    v64 = v59;
    v65 = v184;
    v150 = v58;
    v66 = objc_opt_self();
    [v66 begin];
    v149 = v66;
    [v66 setDisableActions:1];
    v67 = v174;
    v68 = (v175 + 104);
    v69 = (v175 + 8);
    v70 = v176;
    v175 += 8;
    if (v63)
    {
      sub_100769A1C();
      v184 = [v64 traitCollection];
      v71 = *v68;
      v72 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v73 = sub_1007628BC();
      v74 = *v69;
      v74(v65, v72);
      v143 = v64;
      if (v73)
      {
        v75 = v67;
        if (qword_10093F568 != -1)
        {
          swift_once();
        }

        v76 = v178;
        v77 = sub_10000A61C(v178, qword_10099CAB0);
        v78 = v183;
        v79 = v155;
        (*(v183 + 16))(v155, v77, v76);

        v80 = v78;
        v81 = v185;
      }

      else
      {
        v71(v65, enum case for OfferEnvironment.navigationBar(_:), v72);
        v95 = sub_1007628BC();
        v74(v65, v72);
        v81 = v72;
        if (v95 & 1) != 0 && (v96 = sub_10076C04C(), v187[3] = v96, v187[4] = sub_1001F9A80(&qword_100943230, &type metadata accessor for Feature), v97 = sub_10000DB7C(v187), (*(*(v96 - 8) + 104))(v97, enum case for Feature.glass_offer_button_2025A(_:), v96), LOBYTE(v96) = sub_10076C90C(), sub_10000CD74(v187), (v96))
        {
          v75 = v67;
          if (qword_10093F560 != -1)
          {
            swift_once();
          }

          v76 = v178;
          v98 = sub_10000A61C(v178, qword_100944D00);
          v99 = v183;
          v79 = v155;
          (*(v183 + 16))(v155, v98, v76);

          v80 = v99;
        }

        else
        {
          if (sub_10077071C())
          {
            v76 = v178;
            v75 = v67;
            if (qword_10093F538 != -1)
            {
              swift_once();
            }

            v102 = qword_100944CD0;
          }

          else
          {
            v76 = v178;
            v75 = v67;
            if (qword_10093F530 != -1)
            {
              swift_once();
            }

            v102 = qword_100944CB8;
          }

          v105 = sub_10000A61C(v76, v102);
          v106 = v183;
          v107 = v148;
          (*(v183 + 16))(v148, v105, v76);

          v80 = v106;
          v79 = v155;
          (*(v106 + 32))(v155, v107, v76);
        }
      }

      v108 = *(v80 + 32);
      v109 = v154;
      v108(v154, v79, v76);
      v110 = v156;
      v108(v156, v109, v76);
      v74(v70, v81);
      v108(v157, v110, v76);
      (*(v179 + 16))(v181, v182, v180);
      v111 = v164;
      v112 = v75;
      sub_100769A2C();
      v113 = v167;
      v114 = v165;
      v115 = v168;
      (*(v167 + 104))(v165, enum case for OfferStyle.disabled(_:), v168);
      sub_10075F77C();
      v116 = *(v113 + 8);
      v116(v114, v115);
      v116(v111, v115);
      (*(v152 + 16))(v151, v112, v153);
      sub_100766CBC();
      v117 = v159;
      sub_100764F3C();
      v118 = v160;
      v119 = v158;
      v120 = v161;
      (*(v160 + 16))(v158, v117, v161);
      v64 = v143;
      sub_1001F5C94(v119, v143, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_10088CC20, sub_1001F9938, &unk_10088CC38);
      (*(v118 + 8))(v117, v120);
      v121 = &selRef_accessibilityShowPaused;
    }

    else
    {
      sub_100769A1C();
      v82 = [v64 traitCollection];
      v83 = *v68;
      v84 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v85 = sub_1007628BC();
      v86 = *v69;
      (*v69)(v65, v84);
      if (v85)
      {
        if (qword_10093F550 != -1)
        {
          swift_once();
        }

        v87 = v178;
        v88 = sub_10000A61C(v178, qword_10099CA98);
        v89 = v183;
        v90 = v162;
        (*(v183 + 16))(v162, v88, v87);

        v91 = v153;
        v92 = v185;
        v93 = v86;
        v94 = v174;
      }

      else
      {
        v83(v65, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v84);
        v100 = sub_1007628BC();
        (v86)(v65, v84);
        v93 = v86;
        if (v100)
        {
          v90 = v162;
          if (qword_10093F548 != -1)
          {
            swift_once();
          }

          v87 = v178;
          v101 = sub_10000A61C(v178, qword_10099CA80);
          v89 = v183;
          (*(v183 + 16))(v90, v101, v87);

          v91 = v153;
          v92 = v185;
          v94 = v174;
        }

        else
        {
          v103 = v82;
          if (sub_1007628AC())
          {
            v90 = v162;
            v94 = v174;
            if (qword_10093F540 != -1)
            {
              swift_once();
            }

            v87 = v178;
            v104 = sub_10000A61C(v178, qword_10099CA68);
            v89 = v183;
            (*(v183 + 16))(v90, v104, v87);

            v91 = v153;
            v92 = v185;
          }

          else
          {
            v176 = v93;
            v123 = v184;
            v122 = v185;
            v83(v184, enum case for OfferEnvironment.navigationBar(_:), v185);
            v124 = sub_1007628BC();
            v125 = v123;
            v93 = v176;
            v126 = v122;
            (v176)(v125, v122);
            v94 = v174;
            if (v124)
            {
              v92 = v126;
              v91 = v153;
              v87 = v178;
              if (qword_10093F558 != -1)
              {
                swift_once();
              }

              v127 = sub_10000A61C(v87, qword_100944CE8);
              v89 = v183;
              v90 = v162;
              (*(v183 + 16))(v162, v127, v87);
            }

            else
            {
              v128 = sub_10077071C();
              v91 = v153;
              v87 = v178;
              if (v147)
              {
                if (v128)
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_10093F520 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_100944C88;
                }

                else
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_10093F528 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_100944CA0;
                }

                v132 = sub_10000A61C(v87, v130);
                v133 = v144;
                (*(v129 + 16))(v144, v132, v87);
                v134 = v146;
                (*(v129 + 32))(v146, v133, v87);
                v90 = v162;
                sub_10076C13C();
                v89 = v183;

                (*(v89 + 8))(v134, v87);
              }

              else
              {
                if (v128)
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_10093F520 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100944C88;
                }

                else
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_10093F528 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100944CA0;
                }

                v135 = sub_10000A61C(v87, v131);
                v136 = v145;
                (*(v89 + 16))(v145, v135, v87);

                v90 = v162;
                (*(v89 + 32))(v162, v136, v87);
              }

              v93 = v176;
            }
          }
        }
      }

      v137 = *(v89 + 32);
      v138 = v163;
      v137(v163, v90, v87);
      (v93)(v177, v92);
      v137(v166, v138, v87);
      (*(v179 + 16))(v181, v182, v180);
      (*(v152 + 16))(v151, v94, v91);
      v139 = v171;
      sub_10076730C();
      v141 = v172;
      v140 = v173;
      v142 = v170;
      (*(v172 + 16))(v170, v139, v173);
      sub_1001F5C94(v142, v64, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_10088CC70, sub_1001F9EE8, &unk_10088CC88);
      (*(v141 + 8))(v139, v140);
      v121 = &selRef_accessibilityShowRedownload;
    }

    [v64 *v121];
    [v149 commit];

    sub_10000CFBC(v186, &qword_10094D7A0);
  }
}

uint64_t *sub_1001F96DC(uint64_t *result, uint64_t *a2)
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

uint64_t sub_1001F98F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F9948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F9A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094D5D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F9A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F9AC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001F9B00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001F9B38()
{
  v1 = *(sub_10000A5D4(&unk_100946760) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10000A5D4(&unk_100946750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_10000A5D4(&qword_100945590);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_1001F9D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100946760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F9D90(uint64_t a1)
{
  v3 = *(sub_10000A5D4(&unk_100946760) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10000A5D4(&unk_100946750) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  return sub_1001F2968(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

unint64_t sub_1001F9F00()
{
  result = qword_10094D7C8;
  if (!qword_10094D7C8)
  {
    sub_10076A94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7C8);
  }

  return result;
}

uint64_t sub_1001F9F58(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F2EC();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = sub_10076FD4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_1009412E8;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v11, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v29._object = 0x80000001007D9650;
    v29._countAndFlagsBits = 0xD000000000000038;
    sub_10076F2CC(v29);
    *(&v28 + 1) = sub_1001FAA54();
    *&v27 = v16;
    v17 = v16;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v30._countAndFlagsBits = 0x745368747561202CLL;
    v30._object = 0xEE00203A73757461;
    sub_10076F2CC(v30);
    v18 = [v17 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v28 + 1) = v19;
    *&v27 = v18;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_10076F2CC(v31);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    sub_10076FCBC();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v21 = sub_10000A61C(v11, qword_1009A2600);
    (*(v12 + 16))(v14, v21, v11);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x80000001007D9610;
    sub_10076F2CC(v32);
    v27 = 0u;
    v28 = 0u;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v33._countAndFlagsBits = 0x3A726F727265202CLL;
    v33._object = 0xE900000000000020;
    sub_10076F2CC(v33);
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_1007716EC();
      v24 = &type metadata for String;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&v28 = 0;
    }

    *&v27 = v22;
    *(&v27 + 1) = v23;
    *(&v28 + 1) = v24;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_10076F2CC(v34);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v12 + 8))(v14, v11);
    sub_1001FA9E0();
    swift_allocError();
    *v25 = 1;
    sub_10076FCAC();
  }
}

void sub_1001FA544(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001FA5D4()
{
  sub_10000A5D4(&qword_100942C70);
  v0 = sub_10076FCEC();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v3 = sub_10076FD4C();
    sub_10000A61C(v3, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_1001FAA34;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1001FA544;
    v11[3] = &unk_10088CE38;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076FD4C();
    sub_10000A61C(v8, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_1001FA9E0();
    swift_allocError();
    *v9 = 0;
    sub_10076FCAC();
  }

  return v0;
}

unint64_t sub_1001FA9E0()
{
  result = qword_10094D7D0;
  if (!qword_10094D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7D0);
  }

  return result;
}

uint64_t sub_1001FAA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001FAA54()
{
  result = qword_10094D7D8;
  if (!qword_10094D7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094D7D8);
  }

  return result;
}

unint64_t sub_1001FAAB4()
{
  result = qword_10094D7E0;
  if (!qword_10094D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7E0);
  }

  return result;
}

unint64_t sub_1001FAB0C()
{
  result = qword_10094D7E8;
  if (!qword_10094D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7E8);
  }

  return result;
}

unint64_t sub_1001FAB64()
{
  result = qword_10094D7F0;
  if (!qword_10094D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7F0);
  }

  return result;
}

uint64_t sub_1001FABBC()
{
  v0 = sub_10000A5D4(&qword_10094D880);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10075DA7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10075D72C();
  sub_10000DB18(v5, qword_10099D900);
  sub_10000A61C(v5, qword_10099D900);
  sub_10075DA5C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10075D71C();
}

uint64_t sub_1001FAD4C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_10000A5D4(&qword_10094D878);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10000A5D4(&qword_10094D880);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_10075DA7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_10076FF5C();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  sub_10076FF4C();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10076FF3C(v15);
  sub_10075D5EC();
  sub_10076FF2C(v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10076FF3C(v16);
  sub_10075DA6C();
  sub_10076FF4C();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10076FF3C(v17);
  sub_10075D5EC();
  sub_10076FF2C(v14);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10076FF3C(v18);
  sub_10075DA6C();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_10075D62C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_10075D63C();
}

uint64_t sub_1001FB038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001FC3F4;

  return sub_1001FC094(a1);
}

uint64_t sub_1001FB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1001FB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1001FB254;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1001FB254(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1001FB358()
{
  result = qword_10094D7F8;
  if (!qword_10094D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7F8);
  }

  return result;
}

unint64_t sub_1001FB3B0()
{
  result = qword_10094D800;
  if (!qword_10094D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D800);
  }

  return result;
}

unint64_t sub_1001FB408()
{
  result = qword_10094D808;
  if (!qword_10094D808)
  {
    sub_10000CE78(&qword_10094D810);
    sub_1001FB3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D808);
  }

  return result;
}

uint64_t sub_1001FB48C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FB708();
  *v5 = v2;
  v5[1] = sub_100025A64;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1001FB540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1001FB600()
{
  result = qword_10094D818;
  if (!qword_10094D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D818);
  }

  return result;
}

unint64_t sub_1001FB658()
{
  result = qword_10094D820;
  if (!qword_10094D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D820);
  }

  return result;
}

unint64_t sub_1001FB6B0()
{
  result = qword_10094D828;
  if (!qword_10094D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D828);
  }

  return result;
}

unint64_t sub_1001FB708()
{
  result = qword_10094D830;
  if (!qword_10094D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D830);
  }

  return result;
}

unint64_t sub_1001FB76C()
{
  result = qword_10094D838;
  if (!qword_10094D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D838);
  }

  return result;
}

uint64_t sub_1001FB7C0()
{
  v0 = sub_10000A5D4(&qword_10094D890);
  __chkstk_darwin(v0);
  sub_1000B8AA8();
  sub_10075D6FC();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_10075D6EC(v2);
  swift_getKeyPath();
  sub_10000A5D4(&qword_10094D898);
  sub_10075D6DC();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_10075D6EC(v3);
  return sub_10075D70C();
}

unint64_t sub_1001FB8E0()
{
  result = qword_10094D840;
  if (!qword_10094D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D840);
  }

  return result;
}

unint64_t sub_1001FB938()
{
  result = qword_10094D848;
  if (!qword_10094D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D848);
  }

  return result;
}

unint64_t sub_1001FB990()
{
  result = qword_10094D850;
  if (!qword_10094D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D850);
  }

  return result;
}

uint64_t sub_1001FB9E4()
{
  sub_1001FC014();
  v1 = sub_10075D6BC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001FBA50@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093FAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_10075D72C();
  v3 = sub_10000A61C(v2, qword_10099D900);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1001FBAFC()
{
  result = qword_10094D858;
  if (!qword_10094D858)
  {
    sub_10000CE78(&qword_10094D860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D858);
  }

  return result;
}

uint64_t sub_1001FBB60(uint64_t a1)
{
  v2 = sub_1000B8AA8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FBBB0()
{
  result = qword_10094D868;
  if (!qword_10094D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D868);
  }

  return result;
}

uint64_t sub_1001FBC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100025A64;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1001FBCCC(uint64_t a1)
{
  v2 = sub_1001FB990();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1001FBD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001FBD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FBDC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v7 = sub_10075DA7C();
  __chkstk_darwin(v7 - 8);
  sub_10000A5D4(&qword_10094D870);
  sub_10075DA5C();
  v8 = sub_10075D61C();

  sub_10075DA5C();
  v9 = sub_10075D61C();

  sub_10075DA5C();
  v10 = sub_10075D61C();

  sub_10075D5FC();
  sub_10075D5FC();
  if (a3)
  {
    v11 = a1;
  }

  else
  {
    sub_10077145C(33);

    v11 = a1;
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_1007700CC(v14);
  }

  sub_10075D5FC();

  *a4 = v11;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  return result;
}

unint64_t sub_1001FC014()
{
  result = qword_10094D888;
  if (!qword_10094D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D888);
  }

  return result;
}

uint64_t sub_1001FC068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10075D60C();
  *a1 = result;
  return result;
}

uint64_t sub_1001FC094(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10075DA7C();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1001FC124, 0, 0);
}

uint64_t sub_1001FC124()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1004BBC48(0, v2, 0);
    sub_10000A5D4(&qword_10094D870);
    v3 = (v1 + 40);
    do
    {
      v14 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_10075DA5C();
      v6 = sub_10075D61C();

      sub_10075DA5C();
      v7 = sub_10075D61C();

      sub_10075DA5C();
      v8 = sub_10075D61C();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      sub_10075D5FC();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x80000001007D96B0;
      sub_10075D5FC();
      sub_10077145C(33);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_1007700CC(v16);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x80000001007D96D0;
      sub_10075D5FC();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004BBC48((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[5 * v10];
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      v3 += 2;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell()
{
  result = qword_10094D8C8;
  if (!qword_10094D8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FC4F0()
{
  if (qword_10093F670 != -1)
  {
    swift_once();
  }

  v0 = sub_10075E77C();
  sub_10000A61C(v0, qword_10099CD70);
  return sub_10075E6EC();
}

void sub_1001FC560()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView;
  v3 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10075FB6C();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10075FD2C();
  sub_1001FC6B8(&qword_100941820, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_1001FC660(uint64_t a1)
{
  result = sub_1001FC6B8(&qword_10094D8D8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC6B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001FC8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FC9B0(uint64_t a1, void *a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075E0AC();
  sub_10076830C();
  sub_1001FCBEC();
  sub_100761A7C();
  v8 = sub_10076B59C();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_100561E0C(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10076B59C();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1001E17A0(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10076B59C();
    v20 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

unint64_t sub_1001FCBEC()
{
  result = qword_10094D928;
  if (!qword_10094D928)
  {
    sub_10076830C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D928);
  }

  return result;
}

uint64_t sub_1001FCC44(uint64_t a1)
{
  sub_10076830C();
  sub_1001FCBEC();
  if (sub_100761A9C() <= a1 || (sub_100761A4C() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100761A8C();
  if (sub_10062B9AC(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001FCD20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100946740);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  __asm { FMOV            V0.2D, #16.0 }

  sub_10000A5D4(&unk_100943120);
  type metadata accessor for UIEdgeInsets(0);
  return sub_10075FDEC();
}

uint64_t sub_1001FCDCC()
{
  v0 = sub_10000A5D4(&unk_10094D980);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&unk_100946740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = sub_1007675FC();
  sub_10000DB18(v5, qword_10099D948);
  sub_10000A61C(v5, qword_10099D948);
  if (qword_10093FAB8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v1, qword_10099D918);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_10000A5D4(&unk_100943120);
  sub_10000A5D4(&qword_100962590);
  sub_10075FDEC();
  return sub_1007675DC();
}

char *sub_1001FD010(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = sub_10076341C();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100940D80 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1678);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = sub_1007626BC();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = sub_1007626AC();
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100940D88 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A1690);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = sub_1007626AC();
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100940D90 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v23, qword_1009A16A8);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = sub_1007626AC();
  if (qword_10093FAC8 != -1)
  {
    swift_once();
  }

  v34 = sub_1007675FC();
  v35 = sub_10000A61C(v34, qword_10099D948);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_10093F908;
  v41 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10076BCFC();
  v43 = sub_10000A61C(v42, qword_10099D5B8);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  sub_10075F97C();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_1000325F0();
  v51 = v50;
  v52 = sub_100770CFC();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = sub_100770CFC();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = sub_100770CFC();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == 2)
  {
    v64 = sub_100770D5C();
  }

  else
  {
    v64 = sub_100770D2C();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_10000A5D4(&unk_100945BF0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100783DD0;
  *(v66 + 32) = sub_10076E4CC();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v36;
}

void sub_1001FD9F0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_1000325F0();
  if (v3 == 2)
  {
    v4 = sub_100770D5C();
  }

  else
  {
    v4 = sub_100770D2C();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_1001FDAF0()
{
  ObjectType = swift_getObjectType();
  v25 = sub_10076D1FC();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007675FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076761C();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = sub_10076546C();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = sub_1007626BC();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    sub_10076760C();
    [v0 bounds];
    sub_1007675BC();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell()
{
  result = qword_10094D968;
  if (!qword_10094D968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FE044()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_1007675FC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001FE130()
{
  v29 = sub_10076771C();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100940D80 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1678);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = sub_1007626BC();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100940D88 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_1009A1690);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100940D90 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v12, qword_1009A16A8);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

void sub_1001FE5D4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void *sub_1001FE6B0@<X0>(char a1@<W0>, char a2@<W2>, void *a3@<X8>)
{
  v6 = sub_10076443C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100945BD0);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_10076D1AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4064C00000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x406DC00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4038000000000000;
      a3[18] = &type metadata for Double;
      a3[19] = &protocol witness table for Double;
      a3[15] = 0x4026000000000000;
      a3[23] = &type metadata for Double;
      a3[24] = &protocol witness table for Double;
      a3[20] = 0x4038000000000000;
      a3[28] = &type metadata for Double;
      a3[29] = &protocol witness table for Double;
      a3[25] = 0x402E000000000000;
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v16 = sub_10000A61C(v6, qword_10099CA68);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_10076441C();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v19;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      a3[48] = &type metadata for Double;
      a3[49] = &protocol witness table for Double;
      a3[45] = 0x4028000000000000;
      a3[35] = 0;
      *(a3 + 18) = xmmword_100795070;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4069000000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x4074A00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4035000000000000;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v37 = sub_10076D3DC();
      v77 = sub_10000A61C(v37, qword_1009A1FD8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_10076D9AC();
      a3[18] = v70;
      a3[19] = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_10000DB7C(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_10076D9BC();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10000A5D4(&unk_100943120);
      v42 = v72;
      sub_10075FDFC();
      sub_10075FE2C();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      a3[28] = v70;
      a3[29] = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_10000DB7C(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_10076D9BC();
      v71 = v41;
      v41(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_10000A61C(v79, qword_10099CA68);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_10076441C();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v52;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      a3[48] = v43;
      a3[49] = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_10000DB7C(v87);
      v46(v53, v15, v12);
      sub_10076D9BC();
      result = v71(v15, v12);
      a3[35] = 0;
      *(a3 + 18) = xmmword_100795070;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v21 = sub_10076D3DC();
      v77 = sub_10000A61C(v21, qword_1009A1FD8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_10076D9AC();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_10000DB7C(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_10076D9BC();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10000A5D4(&unk_100943120);
      sub_10075FDFC();
      sub_10075FE2C();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_10000DB7C(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_10076D9BC();
      v70 = v25;
      v25(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_10000A61C(v79, qword_10099CA68);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_10076441C();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_10000DB7C(v84);
      (v72)(v35, v15, v12);
      sub_10076D9BC();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v54 = sub_10076D3DC();
      v81 = sub_10000A61C(v54, qword_1009A1FD8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_10076D9AC();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_10000DB7C(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_10076D9BC();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_10000DB7C(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_10076D9BC();
      v60(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_10000A61C(v79, qword_10099CA68);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_10076441C();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_10000DB7C(v84);
      v59(v67, v15, v12);
      sub_10076D9BC();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_100795080;
    *&v87[37] = xmmword_100795080;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1001FF5C8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_10076443C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v32 = sub_10000A61C(v8, qword_10099CA68);
      (*(v9 + 16))(v11, v32, v8);
      sub_10076441C();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100012498(&v36, a3);
      *(a3 + 80) = xmmword_1007950D0;
      *(a3 + 96) = xmmword_1007950E0;
      v21 = xmmword_100795080;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A61C(v8, qword_10099CA68);
    (*(v9 + 16))(v11, v23, v8);
    sub_10076441C();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007950F0;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007950C0;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v27 = sub_10000A61C(v8, qword_10099CA68);
    (*(v9 + 16))(v11, v27, v8);
    sub_10076441C();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007950B0;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_10093F540 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v8, qword_10099CA68);
  (*(v9 + 16))(v11, v12, v8);
  sub_10076441C();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_100795090;
  v21 = xmmword_1007950A0;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_1001FFAC0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_10000A5D4(&unk_1009467F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = &v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_1009413E0 != -1)
    {
      swift_once();
    }

    v22 = qword_1009A2828;
  }

  else
  {
    if (qword_1009413D8 != -1)
    {
      swift_once();
    }

    v22 = qword_1009A2810;
  }

  v23 = a1;
  v24 = sub_10000A61C(v11, v22);
  sub_1000A9194(v24, v13);
  sub_100201F18(v13, v16);
  sub_10000A5D4(&unk_100943120);
  sub_10075FE0C();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView] = sub_1006389FC(v19);
  v26 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton] = sub_1001E89B8(0);
  sub_10076313C();
  v27 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_100940E68 != -1)
    {
      swift_once();
    }

    v28 = qword_1009A1930;
  }

  else
  {
    if (qword_100940E58 != -1)
    {
      swift_once();
    }

    v28 = qword_1009A1900;
  }

  v29 = sub_10000A61C(v5, v28);
  v30 = v38;
  (*(v6 + 16))(v38, v29, v5);
  (*(v6 + 32))(v10, v30, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_10076311C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton] = v27;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v31 = v27;
  v32 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor:v35];

  v36 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v34 addSubview:*&v34[v36]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton]];
  [*&v34[v36] addSubview:v31];

  return v34;
}

uint64_t sub_1002000B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_10077071C();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_1007706EC();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_1001FE6B0(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100016F40(0, &qword_1009441F0);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
      v84 = sub_10076313C();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100201FD0(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_1007706EC();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1001FF5C8(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100016F40(0, &qword_1009441F0);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
      v54 = sub_10076313C();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100201F7C(v67);
    }

    sub_10076D1DC();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_1002006B0(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton);

    [v4 setAlpha:a1];
  }
}

id sub_100200738(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v150 = a8;
  v134 = a7;
  v149 = a6;
  v136 = a5;
  v135 = a4;
  v12 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v12 - 8);
  v129 = &v118 - v13;
  v130 = sub_10076F7FC();
  v131 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10076BEDC();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10076D39C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076BF6C();
  __chkstk_darwin(v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100764A1C();
  v152 = *(v19 - 8);
  v153 = v19;
  __chkstk_darwin(v19);
  v151 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10076D3DC();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v22 - 8);
  v146 = &v118 - v23;
  v143 = sub_100768FEC();
  v139 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946750);
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25);
  v142 = &v118 - v26;
  v27 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v27 - 8);
  v140 = &v118 - v28;
  v29 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v29 - 8);
  v132 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  v39 = sub_10075F9EC();
  v147 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v42 - 8);
  v44 = &v118 - v43;
  v45 = sub_100764A7C();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10000A5D4(&unk_1009467F0);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_1006098B0(v46, v44, v150);

    sub_10000CFBC(v44, &unk_10094C040);
  }

  sub_100764A2C();
  if (!v48)
  {
    v147 = sub_100764A3C();
    v120 = sub_100764A6C();
    sub_100764A4C();
    v53 = sub_100764A5C();
    v54 = &v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v56 = v136;
    *v54 = v135;
    *(v54 + 1) = v56;
    sub_1000167E0(v55);
    v57 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];

    v58 = sub_10076FF6C();

    [v57 setTitle:v58 forState:0];

    [v57 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v119 = v53;
    if (v53)
    {
      sub_100766A7C();
      v59 = sub_1007628DC();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v38, 0, 1, v59);
      sub_1002025FC(v38, v35);
      if ((*(v60 + 88))(v35, v59) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_100940E68 != -1)
        {
          swift_once();
        }

        v61 = v138;
        v62 = sub_10000A61C(v138, qword_1009A1930);
        v63 = v137;
        v64 = v122;
        (*(v137 + 16))(v122, v62, v61);
        (*(v63 + 56))(v64, 0, 1, v61);
        sub_10076311C();
        v66 = v150;
        v65 = v151;
LABEL_28:
        v81 = sub_10000A5D4(&qword_100945590);
        v82 = v140;
        (*(*(v81 - 8) + 56))(v140, 1, 1, v81);
        v83 = v139;
        v84 = v143;
        (*(v139 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
        (*(v83 + 56))(v146, 1, 1, v84);
        sub_1002025B4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
        v85 = v142;
        sub_10076759C();
        sub_1001F12C8(v119, v147, v120, v82, v85, v66, 0, 0);

        (*(v144 + 8))(v85, v145);
        sub_10000CFBC(v82, &unk_100946760);
        v73 = v152;
        goto LABEL_29;
      }

      (*(v60 + 8))(v35, v59);
    }

    else
    {
      v74 = sub_1007628DC();
      (*(*(v74 - 8) + 56))(v38, 1, 1, v74);
      sub_10000CFBC(v38, &unk_1009492A0);
    }

    v65 = v151;
    if (v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] == 1)
    {
      v66 = v150;
      if (qword_100940E68 != -1)
      {
        swift_once();
      }

      v75 = qword_1009A1930;
    }

    else
    {
      v66 = v150;
      if (qword_100940E58 != -1)
      {
        swift_once();
      }

      v75 = qword_1009A1900;
    }

    v76 = v138;
    v77 = sub_10000A61C(v138, v75);
    v78 = v137;
    v79 = v133;
    (*(v137 + 16))(v133, v77, v76);
    v80 = v132;
    (*(v78 + 32))(v132, v79, v76);
    (*(v78 + 56))(v80, 0, 1, v76);
    sub_10076311C();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v67 = v49;

  if (v67)
  {
    [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v67];
  }

  v68 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton] setHidden:v68];
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton] setHidden:v68];
  [v8 setNeedsLayout];

  v69 = *&v8[v50];
  if (v69)
  {
    v70 = *(v69 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
    (*(v147 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_10075F9FC();
    swift_allocObject();
    v71 = v70;
    v72 = sub_10075F9BC();
    sub_10050C274(v72, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v65 = v151;
  v73 = v152;
LABEL_29:
  v86 = sub_100202024(v9, v9, a1, a2);
  v88 = v87;
  sub_100764A8C();
  v89 = v153;
  v90 = (*(v73 + 88))(v65, v153);
  if (v90 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v73 + 96))(v65, v89);
    v91 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v91 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    v92 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v93 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v94 = v91;
    if (v93)
    {
      [v93 removeFromSuperview];
      v95 = *&v9[v92];
    }

    else
    {
      v95 = 0;
    }

    *&v9[v92] = v91;
    v110 = v91;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v73 + 96))(v65, v89);
    v96 = *v65;
    v97 = v65[1];
    v98 = v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] == 1;
    v99 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v100 = sub_100517380(v98);
    v101 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v102 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v102 = *&v9[v101];
    }

    *&v9[v101] = v100;
    v110 = v100;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    *&v110[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator] = v134;

    *&v110[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon] = v96;

    v111 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v110[v111] = v97;

    *&v110[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader] = v149;

    sub_100517950(v86, v88);

    goto LABEL_47;
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v73 + 96))(v65, v89);
    sub_1007660AC();
    v104 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10076BEFC();
    v105 = v123;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v124 + 8))(v105, v125);
    v106 = v126;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v127 + 8))(v106, v128);
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v104 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    v107 = v129;
    sub_10076609C();
    v108 = v131;
    v109 = v130;
    if ((*(v131 + 48))(v107, 1, v130) == 1)
    {
      sub_10000CFBC(v107, &qword_1009492E0);
    }

    else
    {
      v113 = v121;
      (*(v108 + 32))();
      if (v134)
      {
        sub_1007660EC();
      }

      (*(v131 + 8))(v113, v109);
    }

    v114 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v115 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v116 = v104;
    if (v115)
    {
      [v115 removeFromSuperview];
      v117 = *&v9[v114];
    }

    else
    {
      v117 = 0;
    }

    *&v9[v114] = v104;
    v110 = v104;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v73 + 8))(v65, v89);
  return [v9 setNeedsLayout];
}

unint64_t sub_100201EC4()
{
  result = qword_10094D9F8;
  if (!qword_10094D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D9F8);
  }

  return result;
}

uint64_t sub_100201F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100202024(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_10077071C();

  if (v14)
  {
    v62 = v9;
    v15 = a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_1007706EC();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v86);
        [a2 bounds];
        v21 = CGRectGetWidth(v87);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_1001FE6B0(v18, v15, v66);
    v29 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v65 = type metadata accessor for LinkableHeaderView();
      v61 = &protocol witness table for UIView;
    }

    else
    {
      v65 = 0;
      v61 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v63 = v8;
    v64 = a1;
    if (v33)
    {
      v60 = sub_100016F40(0, &qword_1009441F0);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v60 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v79 = &protocol witness table for UIView;
    v78 = v48;
    v77 = v47;
    v49 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
    v81 = type metadata accessor for OfferButton();
    v82 = &protocol witness table for UIView;
    v80 = v49;
    v50 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
    v84 = sub_10076313C();
    v85 = &protocol witness table for UIView;
    v83 = v50;
    memcpy(v67, v66, 0x190uLL);
    v67[50] = v29;
    v68 = 0;
    v69 = 0;
    v70 = v65;
    v71 = v61;
    v72 = v33;
    v74 = 0;
    v73 = 0;
    v75 = v60;
    v76 = v34;
    sub_10000CF78(v67, v67[3]);
    v51 = v33;
    v52 = v47;
    v53 = v49;
    v54 = v50;
    v55 = v29;
    sub_1000FF02C();
    v56 = v64;
    sub_10076D40C();
    v57 = v63;
    v58 = *(v62 + 8);
    v58(v12, v63);
    sub_10020266C(v56, v67, a3, a4);
    sub_10000CF78(&v67[5], v67[8]);
    sub_1000FF02C();
    sub_10076D40C();
    v58(v12, v57);
    sub_100201FD0(v67);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_1007706EC();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v88);
        [a2 bounds];
        v28 = CGRectGetWidth(v89);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1001FF5C8(v25, v22, v66, a3);
    v30 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_10076DDDC();
    v36 = v30;
    v37 = sub_10076DDCC();
    v67[42] = &protocol witness table for LayoutViewPlaceholder;
    v67[41] = v35;
    v67[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v67[47] = &protocol witness table for UIView;
    v67[46] = v39;
    v67[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v69 = &protocol witness table for UIView;
    v68 = v41;
    v67[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
    v43 = sub_10076313C();
    v74 = &protocol witness table for UIView;
    v73 = v43;
    v70 = v42;
    memcpy(v67, v66, 0x108uLL);
    v67[33] = v30;
    v67[34] = 0;
    v67[35] = 0;
    v67[36] = v31;
    v67[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_1002029F4(a1, v67, a3);
    sub_100201F7C(v67);
  }

  return a3;
}

uint64_t sub_1002025B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002025FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009492A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10020266C(uint64_t a1, void *a2, double a3, double a4)
{
  *&v29 = a2 + 35;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 20, a2[23]);
  sub_1000FF02C();
  sub_10076D40C();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_10000CF78(a2 + 15, a2[18]);
  sub_1000FF02C();
  sub_10076D40C();
  v16 = v15;
  v14(v11, v8);
  sub_10000CF78(a2 + 25, a2[28]);
  sub_1000FF02C();
  sub_10076D40C();
  v18 = v17;
  v14(v11, v8);
  sub_10000A570((a2 + 30), v38);
  v19 = *(v29 + 32);
  v20 = *(v29 + 16);
  v28 = *v29;
  v29 = v20;
  sub_10000A570((a2 + 40), &v41);
  sub_10000A570((a2 + 45), &v42);
  v37[0] = v16;
  v37[1] = v13;
  v37[2] = v18;
  v37[3] = v13;
  v39 = v29;
  *&v38[40] = v28;
  v40 = v19;
  sub_100202CC0(v37, v33);
  sub_10000A570((a2 + 60), &v34);
  sub_10000A570((a2 + 65), &v35);
  sub_10000A570((a2 + 70), &v36);
  sub_10000CF78(a2 + 10, a2[13]);
  sub_1000FF02C();
  sub_10076D40C();
  v22 = v21;
  v14(v11, v8);
  sub_100203024(a3, a1, v33);
  v24 = a4 - v22 - v23;
  sub_100102958((a2 + 50), &v30);
  if (v31)
  {
    sub_100012498(&v30, v32);
    sub_10000CF78(v32, v32[3]);
    sub_10076D2BC();
    v26 = v25;
    sub_10020332C(v33);
    sub_100203380(v37);
    v24 = v24 - v26;
    sub_10000CD74(v32);
  }

  else
  {
    sub_10020332C(v33);
    sub_100203380(v37);
    sub_10000CFBC(&v30, &unk_10094DA00);
  }

  return v24;
}

double sub_1002029F4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10000A570(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10000A570(a2 + 184, &v28);
  sub_10000A570(a2 + 224, &v29);
  v25[1] = v16;
  v25[0] = v17;
  v27 = v14;
  *&v26[40] = v15;
  sub_1002033D4(v25, v21);
  sub_10000A570(a2 + 344, &v22);
  sub_10000A570(a2 + 384, &v23);
  sub_10000A570(a2 + 424, &v24);
  sub_10000CF78(a2, *(a2 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100202D1C(a3, a1, v21);
  sub_100102958(a2 + 264, &v18);
  if (v19)
  {
    sub_100012498(&v18, v20);
    sub_10000CF78(v20, v20[3]);
    sub_10076D2BC();
    sub_10000CD74(v20);
  }

  else
  {
    sub_10000CFBC(&v18, &unk_10094DA00);
  }

  sub_10000CF78((a2 + 40), *(a2 + 64));
  sub_1000FF02C();
  sub_10076D40C();
  v12(v9, v6);
  sub_100203430(v21);
  sub_100203484(v25);
  return a3;
}

double sub_100202D1C(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a3 + 23, a3[26]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 18, a3[21]);
  sub_1000FF02C();
  sub_10076D40C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000CF78(a3 + 28, a3[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 4, a3[7]);
    sub_1000FF02C();
    sub_10076D40C();
    v9(v8, v5);
  }

  sub_10000CF78(a3 + 33, a3[36]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 33, a3[36]);
    sub_10076D2BC();
  }

  sub_10000CF78(a3 + 28, a3[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 33, a3[36]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(a3 + 13, a3[16]);
      sub_1000FF02C();
      sub_10076D40C();
      v9(v8, v5);
    }
  }

  return a1;
}

double sub_100203024(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a3 + 24, a3[27]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 19, a3[22]);
  sub_1000FF02C();
  sub_10076D40C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000CF78(a3 + 29, a3[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 4, a3[7]);
    sub_1000FF02C();
    sub_10076D40C();
    v9(v8, v5);
  }

  sub_10000CF78(a3 + 34, a3[37]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 34, a3[37]);
    sub_10076D2BC();
  }

  sub_10000CF78(a3 + 29, a3[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 34, a3[37]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(a3 + 14, a3[17]);
      sub_1000FF02C();
      sub_10076D40C();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t MetadataRibbonTagViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v0 = sub_100768FCC();

  return sub_10000A61C(v0, static MetadataRibbonTagViewLayout.Metrics.standard);
}

char *sub_10020353C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100768FCC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, static MetadataRibbonTagViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  v20 = sub_1007668DC();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel] = sub_10076269C();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  sub_1000325F0();
  v30 = v29;
  v31 = sub_100770D1C();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics], v11);
  v33 = v32;
  v34 = sub_100768FBC();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v36 = sub_10076715C();
  v37 = sub_10000A61C(v36, qword_10099CE38);
  v41[3] = v36;
  v41[4] = sub_10018CD1C();
  v38 = sub_10000DB7C(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_1007625FC();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_10020396C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100768FCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100768FDC();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics], v5);
  v14 = v13;
  sub_100768F7C();
  sub_10076422C();
  sub_100768F9C();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_100203F00()
{
  sub_10076438C();
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_100203F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_100203FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_1002040D8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002041A4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100204264()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002042A8(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100204358@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_1002043C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

uint64_t sub_100204490()
{
  v0 = sub_10000A5D4(&unk_100942850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100768FCC();
  sub_10000DB18(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120);
  sub_10075FECC();
  sub_100768FAC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonTagViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_100768FCC();
  v3 = sub_10000A61C(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonTagView()
{
  result = qword_10094DA48;
  if (!qword_10094DA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002046CC()
{
  sub_100768FCC();
  if (v0 <= 0x3F)
  {
    sub_100038324();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002047C0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_100768FCC();
  v3 = sub_10000A61C(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_100204940(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = sub_100768FCC();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100768FDC();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076DA7C();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076DD3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10076DD2C();
  sub_10076D84C();
  v28 = v2;
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v19 = sub_10076715C();
  v20 = sub_10000A61C(v19, qword_10099CE38);
  v39[3] = v19;
  v39[4] = sub_10018CD1C();
  v21 = sub_10000DB7C(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_10076DC8C();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_10000CD74(v39);
  sub_100768FBC();
  sub_10076DD1C();
  v22(v14, v8);
  sub_10076438C();
  (*(v9 + 16))(v14, v17, v8);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v29 + 8))(v7, v30);
  sub_10000A570(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  sub_100768F7C();
  sub_100768F8C();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_10000CD74(v39);
  v22(v17, v8);
  return v25;
}

uint64_t sub_100204E34()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v5 = swift_allocObject();
  v28 = xmmword_1007841E0;
  *(v5 + 16) = xmmword_1007841E0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000001007D9A80;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_1002057F8;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_10077140C();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_1005BF804(0xD000000000000018, 0x80000001007D9AA0, 0, 0, sub_100205188, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100785D70;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_10075DDAC();
  v17 = sub_10075DD8C();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000001007D9AC0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_100205188(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_10039F52C(a2, a3, 10);
        v38 = v37;

        if (v38)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v39 = a2;
        v40 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v39 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v39;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v39 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_1007714BC();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v41 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_10076FE4C();
          }

          else
          {
            v30 = sub_1000FD520(_swiftEmptyArrayStorage);
          }

          v39 = 0x62734435625378;
          v40 = 0xE700000000000000;
          sub_10000A5D4(&qword_100966CF0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_100783DD0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v42._countAndFlagsBits = sub_10076FFCC();
          sub_1007700CC(v42);

          v32 = v39;
          v33 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v30;
          sub_10024A448(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_10076FE3C().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_1002055E8(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_10076A3DC();
  sub_10000A5D4(&unk_100947120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  sub_10076A3EC();
  sub_10077140C();
  v5 = sub_10076B96C();
  *(inited + 96) = v5;
  v6 = sub_10000DB7C((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_1000FCED4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B20);
  isa = sub_10076FE3C().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_100205768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002057C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10020581C()
{
  v0 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_10076B96C();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController();
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_1007695BC();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10000CFBC(v2, &qword_100942A80);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_100205D6C;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088D0A0;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_100205CE4()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100205D6C()
{
  v1 = *(sub_10076B96C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1002055E8(v2);
}

uint64_t sub_100205DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100205DE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A1078);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_10076D9AC();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  sub_10076D9BC();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v29);
  v14 = v23;
  v23(v13, v3, v0);
  sub_10076D9BC();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v28);
  v14(v16, v3, v0);
  sub_10076D9BC();
  v15(v3, v0);
  unk_10094DB08 = 0u;
  qword_10094DB18 = 0;
  xmmword_10094DAF8 = 0u;
  sub_10003F19C(&v38, &unk_10094DA80);
  sub_10003F19C(&v35, &unk_10094DAA8);
  sub_10003F19C(&v32, &unk_10094DAD0);
  return sub_100206B8C(v29, &xmmword_10094DAF8);
}

char *sub_1002061F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v14, qword_1009A1078);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v18] = sub_10050BDFC(v17, 0, 0);
  v21 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v30 = qword_100940950;
  v31 = *&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v11, qword_1009A0A20);
  sub_100206DD0(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_100206E98(v13);
  v36 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider];
  sub_100206DD0(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_100206E34(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_100206E98(v13);
  v42 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_10020666C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_10076D1FC();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v21);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  sub_10076422C();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_100036810(v21);
}

double sub_100206880(uint64_t a1, double a2)
{
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v14);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider);
  v6 = type metadata accessor for DividerView(0);
  v14[23] = v6;
  v14[24] = &protocol witness table for UIView;
  v14[20] = v5;
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
  v14[28] = type metadata accessor for DynamicTypeLinkedLabel();
  v14[29] = &protocol witness table for UILabel;
  v14[25] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider);
  v14[33] = v6;
  v14[34] = &protocol witness table for UIView;
  v14[30] = v8;
  swift_getObjectType();
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_1007561B8(a2, a1, v14);
  sub_100036810(v14);
  return v12;
}

double sub_100206A58(double a1)
{
  type metadata accessor for DividerView(0);
  if (qword_100940950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DividerView.Style(0);
  sub_10000A61C(v2, qword_1009A0A20);
  swift_getObjectType();
  sub_1005AA920();
  return a1;
}

uint64_t sub_100206B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100206BFC()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v2, qword_1009A1078);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v6) = sub_10050BDFC(v5, 0, 0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100206DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206E98(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100206EF4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100206F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100206F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100206F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100207000(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100207014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100207034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void *sub_10020707C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v126 = a2;
  v8 = sub_10076D65C();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = sub_10076DFEC();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = sub_10076DFFC();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_100102958((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_100012498(&v138, v147);
    sub_10000CF78(v147, v148);
    sub_10076D2DC();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    sub_10076E00C();
    v43 = v118;
    sub_10076D63C();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_10000DB7C(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    sub_10076D64C();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_10000CD74(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    sub_10076D2DC();
    sub_100208138(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_10000DB7C(v56);
    sub_10076D64C();

    sub_10000CD74(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_10000CD74(v147);
  }

  sub_1001029C8(&v138);
  LODWORD(v114) = v35;
  sub_10076D63C();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  sub_10076D2DC();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = a3;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_10000DB7C(&v138);
  sub_10076E00C();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  sub_10076D5FC();

  sub_10000CD74(&v138);
  sub_100208138(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_100208170;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    sub_10076D2DC();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    sub_10076D2DC();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  sub_10076E00C();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_10000DB7C(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_100208138(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    sub_10076D2DC();
    sub_100208138(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_10000DB7C(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007841E0;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = sub_10076DEEC();
  [v114 measurementsWithFitting:v91 in:{a3, a4}];
  v93 = v92;

  sub_10000CF78((v75 + 64), *(v75 + 88));
  result = sub_10076D6FC();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_10000DB7C(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = sub_10076D67C();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v136);
    sub_10076D66C();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v135);
    sub_10076D66C();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v134);
    sub_10076D66C();
    v148 = sub_10076E04C();
    v149 = &protocol witness table for Margins;
    sub_10000DB7C(v147);
    sub_10076E05C();
    sub_100208138(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100207E9C(uint64_t a1, uint64_t a2)
{
  sub_10076D5BC();
  sub_10000CF78((a2 + 64), *(a2 + 88));
  if (sub_10076D20C())
  {
    [*(a2 + 56) isHidden];
  }

  return sub_10076D5AC();
}

double sub_100207FA0(void *a1, double a2, double a3)
{
  sub_10020707C(a1, v6, a2, a3);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_100208044(void *a1, double a2, double a3, double a4, double a5)
{
  sub_10020707C(a1, v6, a4, a5);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0EC();
  return sub_10000CD74(v6);
}

__n128 sub_1002080E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1002081B8(uint64_t a1)
{
  sub_10000CD74(v1 + 80);
  if (*(v1 + 144))
  {
    sub_10000CD74(v1 + 120);
  }

  return _swift_deallocObject(v1, a1, 7);
}

id sub_100208298(void *a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B23C();
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset];
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension];
  v10 = [v2 traitCollection];
  if (a1)
  {
    v11 = [a1 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tabBar];

      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v46.origin.x = v15;
      v46.origin.y = v17;
      v46.size.width = v19;
      v46.size.height = v21;
      Height = CGRectGetHeight(v46);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (result)
    {
      v25 = result;
      [result bounds];
      v27 = v26;
      v29 = v28;

      result = [a1 view];
      if (result)
      {
        v30 = result;
        if (v29 - v8 - Height < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v29 - v8 - Height;
        }

        a1 = v27;
        [result bounds];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v47.origin.x = v32;
        v47.origin.y = v34;
        v47.size.width = v36;
        v47.size.height = v38;
        CGRectGetWidth(v47);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (0.0 - v8 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0 - v8;
  }

LABEL_14:
  sub_10020B56C(v10, v7, v9, a1, *&v23, 0);

  (*(v5 + 8))(v7, v4);
  v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v40 = [*&v39[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] text];
  if (v40)
  {
    v41 = v40;
    sub_10076FF9C();
  }

  v42 = sub_10077002C();

  if ((v42 & 1) == 0 || *&v39[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    [v2 frame];
    return [v39 sizeThatFits:{v43, v44}];
  }

  return result;
}

id sub_1002085F0(void *a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 tabBar];

      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Height = CGRectGetHeight(v31);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result bounds];
    v26 = v25;
    v22 = v27;

    v21 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0.0;
    Height = 0.0;
  }

  if (v22 - *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v22 - *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] - Height;
  }

  v29 = [v2 traitCollection];
  sub_10076B23C();
  sub_10020B56C(v29, v8, v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension], v21, *&v28, 0);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10020882C()
{
  v0 = sub_10000A5D4(&qword_10094DC30);
  sub_10000DB18(v0, qword_10094DB70);
  sub_10000A61C(v0, qword_10094DB70);
  return sub_10075FE8C();
}

char *sub_1002088B0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v58);
  v59 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B21C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  sub_10076B23C();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_10020B8F0(&qword_10094DC28, 255, &type metadata accessor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (v65 != v63 || v66 != v64)
  {
    v17 = sub_10077167C();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v57;
    if ((v17 & 1) == 0 || (v57 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v19 = 0;
    v20 = 0x404E000000000000;
    goto LABEL_9;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = v57;
  if (v57)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = 0;
  v19 = 1;
LABEL_9:
  v21 = v60;
  v65 = v20;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = sub_100453600(&v65);
  v62.receiver = v23;
  v62.super_class = v22;
  v25 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v61.receiver = v4;
  v61.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_1003BBB08(v21);
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v29;
  v32 = v29;
  sub_100453A30(v31);

  sub_1004526E4();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView];
  sub_10000A5D4(&unk_100942870);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100785D70;
  sub_100016F40(0, &qword_100942F10);
  v38 = v36;
  *(v37 + 32) = sub_100770E4C(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = sub_100770E4C(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v37;

  sub_1001C05B8();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
  v44 = qword_100940890;
  v45 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A61C(v58, qword_1009A0830);
  v47 = v59;
  sub_1001162A4(v46, v59);
  (*((swift_isaMask & *v45) + 0x1C8))(v47);

  v48 = *&v26[v43];
  v49 = &v48[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v49 = sub_1002091B8;
  v49[1] = 0;
  v50 = v48;

  [*&v50[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v51 = *&v26[v43];
  v52 = [v33 clearColor];
  [v51 setBackgroundColor:v52];

  v53 = *&v26[v43];
  [v26 addSubview:v53];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + qword_1009602C8 + 8) = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_1002091F4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF6C();
    [v3 removeObserver:v0 forKeyPath:v4 context:&unk_10094DB60];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_100209360(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10076FF9C();
    v11 = v10;

    if (!a2)
    {
      if (!v11)
      {
        return;
      }

      v14 = *(v5 + v6);
      v15 = 0;
      goto LABEL_14;
    }

    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_20:

        return;
      }

      v13 = sub_10077167C();

      if (v13)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  v14 = *(v5 + v6);
  v15 = sub_10076FF6C();

LABEL_14:
  [v14 setText:v15];

  [v2 invalidateIntrinsicContentSize];
  v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
  if (v16)
  {

    v16(v17);

    sub_1000167E0(v16);
  }
}

void (*sub_100209528(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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
  return sub_1002095C8;
}

void sub_1002095C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_10020B8F0(&qword_100942810, 255, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v16 = v3;
    sub_100453A30(v15);

    if (v3)
    {
      *&v16[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_10020B8F0(&qword_100942810, 255, type metadata accessor for VideoView);
    v10 = v3;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100016F40(0, &qword_1009441F0);
      v13 = v4;
      v14 = sub_100770EEC();

      if (v14)
      {
        [v10 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v18 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
  v19 = v3;
  sub_100453A30(v18);

  if (v3)
  {
    *&v19[qword_1009602C8 + 8] = &off_10088D2D8;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_10020989C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setTarget:v0];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAction:"mute"];
  }

  sub_100209924();
}

void sub_100209924()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10076481C();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1007611EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v46[-v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v49 = v8;
  v50 = v4;
  v51 = v2;
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v18)
  {
    v52 = Strong;
    v48 = v1;
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_1009602F0);
      if (v20)
      {
        v47 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
        v21 = v9;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v47 = 1;
        v21 = v9;
      }

      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v18;
        v25 = sub_10076922C();
        v26 = qword_1009A2558;
        v27 = (v53 + 16);
        v28 = (v53 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_1007647CC();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_10076479C();
        }

        (*v28)(v7, v5);
        sub_1007611BC();
        sub_10020B8F0(&unk_1009603F0, 255, &type metadata accessor for VideoControls);
        v30 = v49;
        v31 = sub_10077124C();
        v32 = *(v21 + 8);
        v32(v11, v30);
        v32(v14, v30);
        v29 = 1;
        [v52 setHidden:(v31 & 1) == 0];
        goto LABEL_18;
      }

LABEL_15:
      v29 = 1;
      [v52 setHidden:1];
LABEL_18:
      v33 = v48;
      if (v47)
      {
        v34 = &enum case for SystemImage.speakerSlashFill(_:);
      }

      else
      {
        v29 = 0;
        v34 = &enum case for SystemImage.speakerWave3Fill(_:);
      }

      if (v29)
      {
        v35 = 0xD00000000000002CLL;
      }

      else
      {
        v35 = 0xD00000000000002ALL;
      }

      if (v29)
      {
        v36 = 0xD00000000000002BLL;
      }

      else
      {
        v36 = 0xD000000000000029;
      }

      if (v29)
      {
        v37 = "on.Unmute.LargeContentTitle";
      }

      else
      {
        v37 = "eExtension10MuteButton";
      }

      v39 = v50;
      v38 = v51;
      if (v29)
      {
        v40 = "on.Mute.LargeContentTitle";
      }

      else
      {
        v40 = "on.Mute.AccessibilityLabel";
      }

      (*(v51 + 104))(v50, *v34, v48);
      v41 = v52;
      v42 = sub_10076046C();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v55._object = (v40 | 0x8000000000000000);
      v55._countAndFlagsBits = v36;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      sub_1007622EC(v55, v57);
      v43 = sub_10076FF6C();

      [v41 setTitle:v43];

      v44 = v41;
      v56._object = (v37 | 0x8000000000000000);
      v56._countAndFlagsBits = v35;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      sub_1007622EC(v56, v58);
      v45 = sub_10076FF6C();

      [v44 setAccessibilityLabel:v45];

      return;
    }

    Strong = v52;
  }
}

void sub_100209EF4()
{
  v1 = sub_10076688C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007668CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v9)
  {
    type metadata accessor for VideoView();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_1009602F0);
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        [v14 setMuted:{objc_msgSend(v14, "isMuted") ^ 1}];
        v15 = [v14 isMuted];
        [v11 updateAudioSessionCategoryWithIsAudioOn:v15 ^ 1];
        (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
        v16 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
        if (!v15)
        {
          v16 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
        }

        (*(v2 + 104))(v4, *v16, v1);
        sub_1005EFAB8(v8, v4);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_10020A1BC(uint64_t a1, NSString a2, uint64_t a3, Class isa, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_10003F0D4(a3, v26);
    v18 = v27;
    if (v27)
    {
      v19 = sub_10000CF78(v26, v27);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_10077165C();
      (*(v20 + 8))(v23, v18);
      sub_10000CD74(v26);
      if (!isa)
      {
LABEL_13:
        v25.receiver = v5;
        v25.super_class = ObjectType;
        objc_msgSendSuper2(&v25, "observeValueForKeyPath:ofObject:change:context:", a2, v24, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v24 = 0;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10020B8F0(&qword_100941C68, 255, type metadata accessor for NSKeyValueChangeKey);
    isa = sub_10076FE3C().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_10077167C() & 1) == 0 || a5 != &unk_10094DB60)
  {
    a2 = sub_10076FF6C();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = sub_10076FF9C();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  sub_100209360(v12, v17);
}

uint64_t sub_10020A5DC(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView) + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      sub_10076FF9C();
    }

    v8 = sub_10077002C();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = sub_10076FF9C();
      v14 = v13;
      if (v12 == sub_10076FF9C() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = sub_10077167C();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_10020A784(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    if ((sub_10020A5DC(v3, v4) & 1) != 0 && ([v1 invalidateIntrinsicContentSize], (v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) != 0))
    {

      v5(v6);

      sub_1000167E0(v5);
    }

    else
    {
    }
  }
}

id sub_10020A8D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076B21C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v51 - v9;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v20 = [*&v19[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] text];
  if (v20)
  {
    v21 = v20;
    sub_10076FF9C();
  }

  v22 = sub_10077002C();

  if ((v22 & 1) != 0 && !*&v19[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    v26 = 0.0;
    goto LABEL_8;
  }

  [v1 frame];
  [v19 sizeThatFits:{v23, v24}];
  v26 = v25;
  if (v25 <= 0.0)
  {
LABEL_8:
    [v19 setHidden:1];
    goto LABEL_9;
  }

  v55.origin.x = v12;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = v12;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = v18;
  v28 = CGRectGetMaxY(v56) - v26;
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v19 setFrame:{MinX, v28, CGRectGetWidth(v57), v26}];
  [v19 setHidden:0];
LABEL_9:
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  v29 = CGRectGetMinX(v58);
  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v12;
  v61.origin.y = v14;
  v61.size.width = v16;
  v61.size.height = v18;
  Height = CGRectGetHeight(v61);
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
  [v33 setFrame:{v29, MinY, Width, Height - v26}];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10076B23C();
  (*(v4 + 104))(v6, enum case for Uber.Style.above(_:), v3);
  sub_10020B8F0(&qword_10094DC28, 255, &type metadata accessor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (*&v52 == v51[0] && v53 == v51[1])
  {
    v42 = *(v4 + 8);
    v42(v6, v3);
    v42(v10, v3);
  }

  else
  {
    v43 = sub_10077167C();
    v44 = *(v4 + 8);
    v44(v6, v3);
    v44(v10, v3);

    if ((v43 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView];
  [v45 setHidden:0];
  if (qword_10093FAE0 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A5D4(&qword_10094DC30);
  sub_10000A61C(v46, qword_10094DB70);
  sub_10075FE9C();
  v47 = v52;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  v48 = CGRectGetMinX(v62);
  v63.origin.x = v35;
  v63.origin.y = v37;
  v63.size.width = v39;
  v63.size.height = v41;
  v49 = CGRectGetMinY(v63);
  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  return [v45 setFrame:{v48, v49, CGRectGetWidth(v64), v47}];
}

id sub_10020AE90(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *(*(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v8)
    {
      type metadata accessor for VideoView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        LOBYTE(v8) = [v7 isDescendantOfView:v9];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    [v3 bounds];
    v12.x = a2;
    v12.y = a3;
    if (!CGRectContainsPoint(v13, v12) || (swift_getObjectType(), !((swift_conformsToProtocol2() != 0) | v8 & 1)))
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_10020B094()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

void sub_10020B104(void *a1)
{
  v2 = a1;
  sub_100454524(a1);

  if (a1)
  {
    *&v2[qword_1009602C8 + 8] = &off_10088D2D8;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_10020B1BC(uint64_t **a1))()
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
  v2[4] = sub_100209528(v2);
  return sub_100019A4C;
}

uint64_t sub_10020B230()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10020B8F0(&qword_10094DC20, v1, type metadata accessor for UberHeaderView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10020B2A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10020B8F0(&qword_10094DC20, v5, type metadata accessor for UberHeaderView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10020B330(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10020B8F0(&qword_10094DC20, v3, type metadata accessor for UberHeaderView);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10020B3EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

void sub_10020B56C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = sub_10076D39C();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094DC18);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v31 = a6;
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5;
  }

  v30 = v17;
  v18 = sub_10077071C();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = sub_10076B21C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == 2 && v19 == 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        sub_10076D3AC();
        v25 = sub_10076D2FC();
        (*(v28 + 8))(v12, v29);
        if (v25)
        {
          v26 = [objc_opt_self() mainScreen];
          [v26 scale];
        }
      }
    }

    else
    {
      sub_10000CFBC(v16, &qword_10094DC18);
    }
  }
}

uint64_t sub_10020B8F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double sub_10020B938(void *a1, char a2)
{
  v4 = sub_10000A5D4(&qword_10094DC18);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10076B21C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = sub_10077071C();
  v15 = [a1 userInterfaceIdiom];
  v16 = [a1 horizontalSizeClass];
  v17 = *(v5 + 88);
  *v7 = v14 & 1;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  (*(v9 + 16))(&v7[v17], v12, v8);
  v18 = (*(v9 + 88))(&v7[v17], v8);
  if (v18 == v13)
  {
    (*(v9 + 8))(v12, v8);
    if (v15 == 1 && v16 == 2)
    {
      v19 = (a2 & 1) == 0;
      result = 350.0;
      v21 = 410.0;
    }

    else
    {
      v19 = (a2 & 1) == 0;
      result = 200.0;
      v21 = 260.0;
    }

    if (!v19)
    {
      return v21;
    }

    return result;
  }

  if (v18 != enum case for Uber.Style.inline(_:))
  {
    (*(v9 + 8))(v12, v8);
    sub_10000CFBC(v7, &qword_10094DC18);
    return 0.0;
  }

  if (v16 == 1)
  {
    if (v14)
    {
      (*(v9 + 8))(v12, v8);
      return 480.0;
    }

    goto LABEL_19;
  }

  if (v16 != 2 || v15 != 1)
  {
LABEL_19:
    (*(v9 + 8))(v12, v8);
    return 0.0;
  }

  (*(v9 + 8))(v12, v8);
  result = 769.0;
  if ((v14 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_10020BC34()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10020BD30()
{
  v54 = sub_10076172C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076174C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076997C();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000A5D4(&qword_10094DC40);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v42 = &v41 - v3;
  v49 = sub_10076C38C();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076664C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000A5D4(&unk_1009520A0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v19 = v42;
  (*(v12 + 8))(v14, v11);

  sub_1007633DC();
  v50 = v6;
  sub_10076331C();
  swift_getKeyPath();
  v20 = v43;
  sub_10076338C();

  sub_10076C2FC();
  (*(v45 + 8))(v20, v49);
  v21 = sub_100630CB4();
  sub_10000A570(v69, v68);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C1AC();
  swift_dynamicCast();
  v22 = *(v61 + 16);
  v49 = v10;
  v22(v44, v10, v62);
  sub_10076FCFC();
  v23 = v19;
  sub_10076FDBC();
  sub_10076C19C();
  v24 = sub_10076C18C();
  sub_10005312C();
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_1009A0FE8);
  v26 = [v21 traitCollection];
  v27 = sub_100770B3C();

  v28 = sub_10076C04C();
  v68[3] = v28;
  v68[4] = sub_10020C8A8(&qword_100943230, &type metadata accessor for Feature);
  v29 = sub_10000DB7C(v68);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  sub_10076C90C();
  sub_10000CD74(v68);
  v31 = v46;
  sub_10076996C();
  sub_10076994C();
  (*(v47 + 8))(v31, v48);
  if ((v24 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v32 = sub_10076DDDC();
    swift_allocObject();
    v33 = sub_10076DDBC();
    *(&v66 + 1) = v32;
    v67 = &protocol witness table for LayoutViewPlaceholder;
    *&v65 = v33;
  }

  else
  {
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
  }

  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v34 = v54;
  v35 = sub_10000A61C(v54, qword_10099D1B0);
  (*(v53 + 16))(v55, v35, v34);
  sub_10000A570(v68, v64);
  sub_100102958(&v65, v63);
  v36 = v58;
  sub_10076173C();
  [v21 pageMarginInsets];
  sub_100770ACC();
  sub_10020C8A8(&qword_1009566E0, &type metadata accessor for FootnoteLayout);
  v37 = v60;
  sub_10076D2AC();
  sub_100770AEC();
  v39 = v38;

  swift_unknownObjectRelease();
  (*(v59 + 8))(v36, v37);
  sub_10000CD74(v68);
  (*(v56 + 8))(v23, v57);
  (*(v51 + 8))(v50, v52);
  (*(v61 + 8))(v49, v62);
  sub_10000CD74(v69);
  sub_1001029C8(&v65);

  return v39;
}

uint64_t sub_10020C8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10020C900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D6>, double a5@<D7>)
{
  v29[3] = a3;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076C36C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  v19 = sub_10000A5D4(&qword_100942C40);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v21 = a1;
  v23 = v29 - v22;
  sub_10020D478(v21, v29 - v22);
  sub_10020D478(a2, &v23[*(v20 + 56)]);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v31)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v14 + 104))(v18, *v24, v13);
  swift_getKeyPath();
  sub_10076F49C();

  v25 = (*(v10 + 88))(v12, v9);
  *&v29[1] = a4;
  *&v29[2] = a5;
  if (v25 == enum case for Shelf.ContentType.footnote(_:) || v25 == enum case for Shelf.ContentType.quote(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.appShowcase(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.banner(_:) || v25 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_18;
  }

  if (v25 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    (*(v14 + 16))(v30, v18, v13);
    if (qword_100940580 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v25 == enum case for Shelf.ContentType.arcadeFooter(_:) || v25 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
LABEL_18:
    (*(v14 + 16))(v30, v18, v13);
    if (qword_100941288 == -1)
    {
LABEL_19:

      sub_10076C33C();
      (*(v14 + 8))(v18, v13);
      return sub_10020D4EC(v23);
    }

LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v26 = enum case for Shelf.ContentType.appPromotion(_:);
  v27 = v25;
  (*(v14 + 16))(v30, v18, v13);
  if (v27 == v26)
  {
    if (qword_10093FCE8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v14 + 8))(v18, v13);
  sub_10020D4EC(v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10020CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076C36C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  v12 = sub_10000A5D4(&qword_100942C40);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v18[-v14];
  sub_10020D478(a2, &v18[-v14]);
  sub_10020D478(a3, &v15[*(v13 + 56)]);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v16 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v18[15])
  {
    v16 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v16, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v6 + 8))(v11, v5);
  return sub_10020D4EC(v15);
}

uint64_t sub_10020D240()
{
  sub_10020D424();

  return sub_1007620BC();
}

uint64_t sub_10020D324()
{
  sub_10020D424();

  return sub_1007620AC();
}

unint64_t sub_10020D424()
{
  result = qword_10094DC48;
  if (!qword_10094DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094DC48);
  }

  return result;
}

uint64_t sub_10020D478(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009499A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020D4EC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10020D558(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = sub_10076BF6C();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel;
  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1D38);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_1007626BC());
  *&v5[v20] = sub_1007626AC();
  v25 = type metadata accessor for IconSilhouetteView();
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_1000325F0();
  v30 = sub_100770DBC();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_10020D8EC()
{
  v1 = v0;
  v2 = sub_10076BF6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView();
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  sub_10076BF3C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel];
  sub_10076422C();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  sub_10076422C();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  sub_10076422C();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_10020DC18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconSilhouetteView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView()
{
  result = qword_10094DC80;
  if (!qword_10094DC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020DD20()
{
  result = sub_10076BF6C();
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

void sub_10020DDCC()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = sub_10076BF6C();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel;
  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1D38);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10020E078()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940D98 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A16C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v16[1] = v6 + 16;
  v17 = v7;
  v7(v3, v5, v4);
  v8 = enum case for FontSource.useCase(_:);
  v16[0] = v1[13];
  (v16[0])(v3, enum case for FontSource.useCase(_:), v0);
  v9 = sub_10076D9AC();
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v24);
  v22 = v0;
  v23 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(&v21);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_10076D9BC();
  v12 = v1[1];
  v12(v3, v0);
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v4, qword_1009A16F0);
  v17(v3, v13, v4);
  (v16[0])(v3, v8, v0);
  v22 = v9;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(&v18);
  v11(v14, v3, v0);
  sub_10076D9BC();
  v12(v3, v0);
  v19 = sub_10076D67C();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v18);
  sub_10076D66C();
  qword_10099DA80 = &type metadata for Double;
  unk_10099DA88 = &protocol witness table for Double;
  qword_10099DA68 = 0x4028000000000000;
  xmmword_10099D9E0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_10003F19C(&v24, &unk_10099D9F0);
  sub_10003F19C(&v21, &unk_10099DA18);
  result = sub_10003F19C(&v18, &unk_10099DA40);
  byte_10099DA90 = 1;
  return result;
}

char *sub_10020E3C4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v9 - 8);
  v66 = &v58 - v10;
  v11 = sub_10075FEEC();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  *&v4[v22] = xmmword_10099D9E0;
  v62 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  v67 = v4;
  if (qword_100940D98 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A16C0);
  v25 = *(v23 - 8);
  v61 = *(v25 + 16);
  v61(v19, v24, v23);
  v60 = *(v25 + 56);
  v60(v19, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v28 = sub_1007626BC();
  v59 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v67[v62] = sub_1007626AC();
  v62 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v23, qword_1009A16F0);
  v61(v19, v31, v23);
  v60(v19, 0, 1, v23);
  v27(v16, v26, v59);
  v32 = objc_allocWithZone(v29);
  v33 = sub_1007626AC();
  v34 = v67;
  *&v67[v62] = v33;
  *&v34[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v68.receiver = v34;
  v68.super_class = v35;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView;
  v38 = *&v36[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView];
  sub_1000325F0();
  v39 = v36;
  v40 = v38;
  sub_100770D5C();
  sub_10075FB8C();

  v41 = *&v36[v37];
  v42 = v63;
  sub_1007638FC();
  sub_10075FD1C();

  (*(v64 + 8))(v42, v65);
  v43 = qword_10093F910;
  v44 = *&v36[v37];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10076BCFC();
  v46 = sub_10000A61C(v45, qword_10099D5D0);
  v47 = *(v45 - 8);
  v48 = v66;
  (*(v47 + 16))(v66, v46, v45);
  (*(v47 + 56))(v48, 0, 1, v45);
  sub_10075FCDC();

  v49 = [v39 contentView];
  [v49 addSubview:*&v36[v37]];

  v50 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  v51 = *&v39[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias];
  sub_100770E7C();

  [*&v39[v50] setNumberOfLines:1];
  v52 = [v39 contentView];
  [v52 addSubview:*&v39[v50]];

  v53 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  v54 = *&v39[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName];
  v55 = sub_100770D1C();
  [v54 setTextColor:v55];

  [*&v39[v53] setNumberOfLines:1];
  v56 = [v39 contentView];

  [v56 addSubview:*&v39[v53]];
  return v39;
}

uint64_t sub_10020EB6C()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  sub_10020F09C(&xmmword_10099D9E0, v18);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView];
  v18[26] = sub_10075FD2C();
  v18[27] = &protocol witness table for UIView;
  v18[23] = v7;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias];
  v19 = sub_1007626BC();
  v20 = &protocol witness table for UILabel;
  v18[28] = v8;
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName];
  v22 = v19;
  v23 = &protocol witness table for UILabel;
  v21 = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v1 bounds];
  LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_10020F0F8(v18);
}

id sub_10020ED7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LargeGameCenterPlayerCollectionViewCell()
{
  result = qword_10094DCB8;
  if (!qword_10094DCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020EE74()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10020EF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_10020EFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_10020F01C(uint64_t a1)
{
  result = sub_10020F044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020F044()
{
  result = qword_10094DCC8;
  if (!qword_10094DCC8)
  {
    type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094DCC8);
  }

  return result;
}

void sub_10020F14C()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  v9 = *(*(v8 - 8) + 56);
  v27 = v0;
  v9(v0 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  *(v27 + v10) = xmmword_10099D9E0;
  v23 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  if (qword_100940D98 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A16C0);
  v13 = *(v11 - 8);
  v22 = *(v13 + 16);
  v22(v6, v12, v11);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v24 = v16;
  v25 = v1;
  v17(v26, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_1007626BC();
  v19 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_1007626AC();
  v23 = OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v11, qword_1009A16F0);
  v22(v6, v20, v11);
  v14(v6, 0, 1, v11);
  v17(v26, v15, v25);
  v21 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10020F528(uint64_t a1)
{
  sub_10000A5D4(&unk_100942870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100784DC0;
  *(v2 + 32) = sub_1002102BC();
  *(v2 + 40) = sub_10020F698(a1);
  *(v2 + 48) = sub_10021074C();
  return v2;
}

void sub_10020F5A0(char a1)
{
  byte_10094DCD0 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_10020F66C(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020F698(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100785D70;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_10020F9BC;
  *(v8 + 112) = 0;
  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  sub_10077140C();
  *(v7 + 32) = v8;
  v14 = v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  strcpy((v17 + 56), "Show Recents");
  *(v17 + 69) = 0;
  *(v17 + 70) = -5120;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = sub_100210DC8;
  *(v17 + 104) = v16;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  sub_10077140C();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v13(v5, v27);
  *(v21 + 16) = v22;
  *(v21 + 24) = v24;
  strcpy((v21 + 32), "Search Focus");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = v14;
  return v21;
}

void sub_10020F9BC()
{
  sub_1007694AC();
  sub_10076F5CC();
  sub_10076949C();
}

void sub_10020FA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100210DD0(a3);
  }
}

uint64_t sub_10020FA60()
{
  if (qword_10093FAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_10094DCE8;
  v9 = *&qword_10094DCF8;
  v7 = xmmword_10094DCD8;
  v10 = qword_10094DD08;
  v11 = xmmword_10094DCD8;
  v0 = qword_10094DCF8;
  sub_1000B8A4C(&v11, &v6);
  v1 = v0;

  v2 = sub_100210050();
  v4 = v3;
  sub_1000B8AFC(&v11);

  if (v4)
  {
    return 0x20746C7561666544;
  }

  v6 = v2;
  return sub_10077163C();
}

void sub_10020FB78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_10039F52C(a2, a3, 10);
        v13 = v29;

LABEL_65:
        if (v13)
        {
          v9 = 0;
        }

        goto LABEL_67;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v30[0] = a2;
        v30[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v20 = v30 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v25 = v30;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v14 = v30 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_1007714BC();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v17 = v7 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v9 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v4)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v23 = *v7 - 48;
                if (v23 > 9)
                {
                  goto LABEL_63;
                }

                v24 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_63;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v9 = 0;
          LOBYTE(v4) = 1;
          goto LABEL_64;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_63;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_63;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v4) = 0;
LABEL_64:
            v13 = v4;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v9 = 0;
  v13 = 1;
LABEL_67:
  if (qword_10093FAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100210158(v9, v13 & 1);
  swift_endAccess();
}

uint64_t sub_10020FEE0@<X0>(uint64_t a1@<X8>)
{
  if (byte_10094DD10 != 2)
  {
    return sub_10077140C();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10020FF68()
{
  if (qword_10093FAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100210158(0, 1);
  result = swift_endAccess();
  byte_10094DD10 = 2;
  return result;
}

id sub_10020FFF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100210050()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_10076FF6C();
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
    sub_10000CD64(v8, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_10000A5D4(&unk_1009434C0);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v6 ^ 1;
  v3(v8, &v9);
  if (BYTE8(v8[0]))
  {
    return v1;
  }

  else
  {
    return *&v8[0];
  }
}

void sub_100210158(uint64_t a1, char a2)
{
  v8 = a1;
  v9 = a2 & 1;
  v3 = *(v2 + 32);
  (*(v2 + 40))(&v6, &v8);
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1007716BC();
  }

  v5 = sub_10076FF6C();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

id sub_100210208()
{
  result = [objc_opt_self() standardUserDefaults];
  *&xmmword_10094DCD8 = 0xD00000000000001ELL;
  *(&xmmword_10094DCD8 + 1) = 0x80000001007D9EB0;
  *&xmmword_10094DCE8 = 0;
  BYTE8(xmmword_10094DCE8) = 1;
  qword_10094DCF8 = result;
  unk_10094DD00 = sub_10021028C;
  qword_10094DD08 = 0;
  return result;
}

uint64_t sub_10021028C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*(result + 8) & 1) != 0 || (v2 = *result, *result <= 1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1002102BC()
{
  v0 = sub_10075DDBC();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007841E0;
  v38 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  v33 = 28271;
  v34 = 0xE200000000000000;
  sub_10077140C();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 56) = 28271;
  *(v4 + 64) = 0xE200000000000000;
  *(v4 + 80) = sub_100210D48;
  *(v4 + 88) = v3;
  v5 = v36;
  *(v4 + 16) = v35;
  *(v4 + 32) = v5;
  *(v4 + 48) = v37;
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  v33 = 6710895;
  v34 = 0xE300000000000000;
  sub_10077140C();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 56) = 6710895;
  *(v7 + 64) = 0xE300000000000000;
  *(v7 + 80) = sub_100210D48;
  *(v7 + 88) = v6;
  v8 = v36;
  *(v7 + 16) = v35;
  *(v7 + 32) = v8;
  *(v7 + 48) = v37;
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  v9 = v38;
  type metadata accessor for MenuDebugSetting();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000014;
  *(v10 + 64) = 0x80000001007D9ED0;
  *(v10 + 72) = v9;
  *(v10 + 80) = sub_10020F60C;
  *(v10 + 88) = 0;
  sub_10075DDAC();
  v11 = sub_10075DD8C();
  v13 = v12;
  v14 = v29;
  v15 = *(v28 + 8);
  v15(v2, v29);
  v33 = v11;
  v34 = v13;
  sub_10077140C();
  v16 = v36;
  *(v10 + 16) = v35;
  *(v10 + 32) = v16;
  *(v10 + 48) = v37;
  v17 = 28271;
  if (byte_10094DCD0)
  {
    v17 = 6710895;
  }

  v18 = 0xE200000000000000;
  if (byte_10094DCD0)
  {
    v18 = 0xE300000000000000;
  }

  v33 = v17;
  v34 = v18;

  sub_10077140C();
  v19 = *(v10 + 72);
  v32 = &v35;

  sub_10061C2F8(sub_10002D89C, v31, v19);

  sub_10000CFBC(&v35, &qword_100943310);
  v20 = v30;
  *(v30 + 32) = v10;
  *&v35 = v20;
  sub_1000F99AC(_swiftEmptyArrayStorage);
  v21 = v35;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_10075DDAC();
  v23 = sub_10075DD8C();
  v25 = v24;
  v15(v2, v14);
  *(v22 + 16) = v23;
  *(v22 + 24) = v25;
  strcpy((v22 + 32), "Search Landing");
  *(v22 + 47) = -18;
  *(v22 + 48) = v21;
  return v22;
}

void *sub_10021074C()
{
  v35 = sub_10075DDBC();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784DC0;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v4 = sub_1005BF804(0x6E6F697469736F50, 0xE800000000000000, sub_10020FA60, 0, sub_10020FB78, 0);
  v33 = v3;
  *(v3 + 32) = v4;
  v41 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  v36 = 0x6465726564726F62;
  v37 = 0xE800000000000000;
  sub_10077140C();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 56) = 0x6465726564726F62;
  *(v6 + 64) = 0xE800000000000000;
  *(v6 + 80) = sub_100210D38;
  *(v6 + 88) = v5;
  v7 = v39;
  *(v6 + 16) = v38;
  *(v6 + 32) = v7;
  *(v6 + 48) = v40;
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  v36 = 0x64656C6C6966;
  v37 = 0xE600000000000000;
  sub_10077140C();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  *(v9 + 56) = 0x64656C6C6966;
  *(v9 + 64) = 0xE600000000000000;
  *(v9 + 80) = sub_100210D38;
  *(v9 + 88) = v8;
  v10 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v10;
  *(v9 + 48) = v40;
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  v11 = v41;
  type metadata accessor for MenuDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Display Style");
  *(v12 + 70) = -4864;
  *(v12 + 72) = v11;
  *(v12 + 80) = sub_10020FEE0;
  *(v12 + 88) = 0;
  sub_10075DDAC();
  v13 = sub_10075DD8C();
  v15 = v14;
  v16 = *(v0 + 8);
  v34 = v0 + 8;
  v16(v2, v35);
  *&v38 = v13;
  *(&v38 + 1) = v15;
  v17 = sub_10077140C();
  if (byte_10094DD10 == 2)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    v18 = 0x6465726564726F62;
    if (byte_10094DD10)
    {
      v18 = 0x64656C6C6966;
    }

    v19 = 0xE800000000000000;
    if (byte_10094DD10)
    {
      v19 = 0xE600000000000000;
    }

    v36 = v18;
    v37 = v19;
    v17 = sub_10077140C();
  }

  v32 = 0x80000001007D9E70;
  __chkstk_darwin(v17);
  *(&v31 - 2) = &v38;

  sub_10061C2F8(sub_10002CB98, (&v31 - 4), v11);

  sub_10000CFBC(&v38, &qword_100943310);
  v20 = v33;
  *(v33 + 40) = v12;
  type metadata accessor for ActionDebugSetting();
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000010;
  *(v21 + 64) = 0x80000001007D9E90;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_10020FF68;
  *(v21 + 112) = 0;
  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v25 = v35;
  v16(v2, v35);
  *&v38 = v22;
  *(&v38 + 1) = v24;
  sub_10077140C();
  *(v20 + 48) = v21;
  type metadata accessor for DebugSection();
  v26 = swift_allocObject();
  sub_10075DDAC();
  v27 = sub_10075DD8C();
  v29 = v28;
  v16(v2, v25);
  v26[2] = v27;
  v26[3] = v29;
  v26[4] = 0xD000000000000019;
  v26[5] = v32;
  v26[6] = v20;
  return v26;
}

uint64_t sub_100210D50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100210D88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100210DD0(uint64_t a1)
{
  v142 = sub_10076397C();
  v144 = *(v142 - 1);
  __chkstk_darwin(v142);
  v141 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10000A5D4(&unk_1009428E0);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v91 - v3;
  v4 = sub_10000A5D4(&qword_100944528);
  __chkstk_darwin(v4 - 8);
  v128 = v91 - v5;
  v6 = sub_10076F3DC();
  __chkstk_darwin(v6 - 8);
  v127 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10075F65C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100765F6C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100766EDC();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v122 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v143 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v13 - 8);
  v119 = v91 - v14;
  v115 = sub_10076C15C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100765B3C();
  __chkstk_darwin(v16 - 8);
  v113 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10076B66C();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076B6EC();
  __chkstk_darwin(v107);
  v110 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1007621EC();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v108 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076A83C();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10076941C();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v136 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v23 - 8);
  v145 = v91 - v24;
  v25 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v25 - 8);
  v135 = v91 - v26;
  v27 = sub_10000A5D4(&qword_100944530);
  __chkstk_darwin(v27 - 8);
  v134 = v91 - v28;
  v29 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v29 - 8);
  v99 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = v91 - v32;
  v33 = sub_10076034C();
  __chkstk_darwin(v33 - 8);
  v94 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v35 - 8);
  v92 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v93 = v91 - v38;
  v39 = sub_10000A5D4(&qword_100944540);
  __chkstk_darwin(v39 - 8);
  v133 = v91 - v40;
  v41 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v41 - 8);
  v43 = v91 - v42;
  v44 = sub_10076B5BC();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10075DDBC();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007694AC();
  v132 = a1;
  sub_10076F5CC();
  v52 = v150;
  sub_10000A5D4(&unk_100942870);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1007841E0;
  sub_10075DDAC();
  v53 = sub_10075DD8C();
  v55 = v54;
  (*(v49 + 8))(v51, v48);
  *&v146 = v53;
  *(&v146 + 1) = v55;
  sub_10077140C();
  v56 = *(v45 + 104);
  v95 = v47;
  v56(v47, enum case for Shelf.ContentType.action(_:), v44);
  v57 = *(v45 + 56);
  v96 = v43;
  v57(v43, 1, 1, v44);
  v58 = sub_10076042C();
  (*(*(v58 - 8) + 56))(v133, 1, 1, v58);
  v105 = v52;
  v59 = sub_10076948C();
  v60 = *(v59 + 16);
  if (v60)
  {
    v149 = _swiftEmptyArrayStorage;
    sub_1004BBAE4(0, v60, 0);
    v61 = v149;
    v140 = *(v144 + 16);
    v62 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v91[1] = v59;
    v63 = v59 + v62;
    v64 = *(v144 + 72);
    v144 += 16;
    v138 = (v144 - 8);
    v139 = v64;
    do
    {
      v65 = v141;
      v66 = v142;
      v140(v141, v63, v142);
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      sub_10076396C();
      sub_10076F4DC();
      v67 = sub_10076F7FC();
      (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
      v68 = sub_10076B90C();
      swift_allocObject();
      v69 = sub_10076B8CC();
      (*v138)(v65, v66);
      v149 = v61;
      v71 = v61[2];
      v70 = v61[3];
      if (v71 >= v70 >> 1)
      {
        sub_1004BBAE4((v70 > 1), v71 + 1, 1);
        v61 = v149;
      }

      *(&v147 + 1) = v68;
      v148 = sub_1000560B0(&qword_100956710, &type metadata accessor for Action);
      *&v146 = v69;
      v61[2] = v71 + 1;
      sub_100012498(&v146, &v61[5 * v71 + 4]);
      v63 += v139;
      --v60;
    }

    while (v60);
  }

  v72 = sub_10076029C();
  v73 = *(*(v72 - 8) + 56);
  v73(v93, 1, 1, v72);
  v73(v92, 1, 1, v72);
  sub_1007602DC();
  sub_10076041C();
  swift_allocObject();
  v144 = sub_1007603EC();
  v74 = sub_10075DB7C();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v77 = (v75 + 56);
  v140 = v74;
  v76(v137, 1, 1, v74);
  v141 = v77;
  v142 = v76;
  v78 = sub_100762DCC();
  (*(*(v78 - 8) + 56))(v134, 1, 1, v78);
  v79 = sub_10075DD7C();
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  v80 = sub_10076F7FC();
  (*(*(v80 - 8) + 56))(v145, 1, 1, v80);
  v76(v99, 1, 1, v74);
  (*(v97 + 104))(v136, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v98);
  (*(v100 + 104))(v106, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v101);
  (*(v103 + 104))(v108, enum case for ShelfBackground.none(_:), v104);
  sub_10000A5D4(&qword_100944548);
  swift_allocObject();
  sub_10076F18C();
  *&v146 = _swiftEmptyArrayStorage;
  sub_1000560B0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  sub_10000A5D4(&unk_1009564D0);
  sub_1000560F8();
  sub_1007712CC();
  (*(v109 + 104))(v112, enum case for Shelf.ContentsMetadata.none(_:), v111);
  sub_100765B2C();
  sub_10076B7BC();
  swift_allocObject();
  v81 = v137;
  *(v102 + 32) = sub_10076B73C();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  (*(v114 + 104))(v116, enum case for FlowPage.page(_:), v115);
  (v142)(v81, 1, 1, v140);
  v82 = sub_10076096C();
  (*(*(v82 - 8) + 56))(v119, 1, 1, v82);
  v146 = 0u;
  v147 = 0u;
  sub_10076F4DC();
  (*(v117 + 104))(v122, enum case for FlowPresentationContext.infer(_:), v118);
  (*(v120 + 104))(v123, enum case for FlowAnimationBehavior.infer(_:), v121);
  (*(v124 + 104))(v126, enum case for FlowOrigin.inapp(_:), v125);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v83 = sub_10075F5EC();
  v150 = 0u;
  v151 = 0u;
  sub_10076F3CC();
  v84 = sub_10076F39C();
  (*(*(v84 - 8) + 56))(v128, 1, 1, v84);
  v85 = sub_10075FFEC();
  swift_allocObject();
  v86 = sub_10075FFDC();
  *(&v151 + 1) = v85;
  *&v150 = v86;
  sub_10075F58C();
  sub_10000CFBC(&v150, &unk_1009434C0);
  v87 = v129;
  v88 = v131;
  v89 = v132;
  sub_10076F5CC();
  sub_100263C24(v83, 1, v89, v87);

  return (*(v130 + 8))(v87, v88);
}