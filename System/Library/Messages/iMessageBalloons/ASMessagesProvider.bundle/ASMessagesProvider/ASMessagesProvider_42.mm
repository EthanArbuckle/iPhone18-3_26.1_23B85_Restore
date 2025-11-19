uint64_t sub_4B6FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_134D8(a1, v8);
  sub_BD88(&unk_944DA0);
  sub_765030();
  if (swift_dynamicCast() || (sub_75C050(), swift_dynamicCast()))
  {

    sub_BEB8(v8);
    v3 = enum case for FlowPreviewDestination.ContentType.source(_:);
    v4 = sub_75FB00();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  else
  {
    v6 = enum case for FlowPreviewDestination.ContentType.flowDestination(_:);
    v7 = sub_75FB00();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    return sub_BEB8(v8);
  }
}

uint64_t sub_4B70E0()
{
  v34 = sub_757640();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v1 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_93FF28);
  __chkstk_darwin(v2 - 8);
  v32 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_BD88(&unk_959540);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  v15 = Strong;
  sub_762D30();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    v16 = &qword_93FF28;
    v17 = v9;
LABEL_8:
    sub_10A2C(v17, v16);
    goto LABEL_9;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_768760();
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v11 + 8))(v13, v10);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v16 = &qword_956C58;
    v17 = &v37;
    goto LABEL_8;
  }

  sub_10914(&v37, v40);
  sub_768760();
  sub_765B70();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_B170(v40, v41);
    v20 = sub_75F350();
    (*(v11 + 8))(v13, v10);
    goto LABEL_33;
  }

  (*(v11 + 8))(v13, v10);

  sub_BEB8(v40);
LABEL_9:
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    (*(v11 + 56))(v6, 1, 1, v10);
    goto LABEL_16;
  }

  v19 = v18;
  sub_7575D0();
  sub_7575B0();
  sub_762D30();

  (*(v33 + 8))(v1, v34);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
LABEL_16:
    sub_10A2C(v6, &qword_93FF28);
    goto LABEL_17;
  }

  sub_BD88(&qword_956C60);
  if (!swift_dynamicCast())
  {
LABEL_17:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_18;
  }

  if (!*(&v44 + 1))
  {
LABEL_18:
    sub_10A2C(&v43, &qword_956C48);
    goto LABEL_19;
  }

  sub_10914(&v43, v40);
  sub_B170(v40, v41);
  sub_7575C0();
  sub_761290();
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956C50);
  if (swift_dynamicCast())
  {
    sub_10914(v35, &v43);
    sub_B170(&v43, *(&v44 + 1));
    v20 = sub_75F350();
    sub_BEB8(&v43);
LABEL_33:
    sub_BEB8(v40);
    return v20;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_10A2C(v35, &qword_956C58);
  sub_BEB8(v40);
LABEL_19:
  sub_7634F0();
  sub_7688F0();
  if (v40[0])
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = v32;
      sub_762D30();

      if ((*(v11 + 48))(v23, 1, v10) == 1)
      {

        v24 = &qword_93FF28;
        v25 = v23;
LABEL_23:
        sub_10A2C(v25, v24);
        return 0;
      }

      sub_768760();
      (*(v11 + 8))(v23, v10);
      sub_BD88(&unk_944DA0);
      v26 = sub_75DDB0();
      if (swift_dynamicCast())
      {
        v27 = v43;
        v41 = v26;
        v42 = sub_4B8114(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult);
        v40[0] = v27;

        v28 = sub_7634B0();
        sub_BEB8(v40);
        if (v28)
        {
          sub_7609E0();
          sub_BD88(&qword_9498C0);
          sub_BD88(&qword_956C50);
          if (swift_dynamicCast())
          {
            sub_10914(&v37, &v43);
            sub_B170(&v43, *(&v44 + 1));
            v29 = sub_75F350();

            sub_BEB8(&v43);
            return v29;
          }

          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v24 = &qword_956C58;
          v25 = &v37;
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

id sub_4B7958(uint64_t a1)
{
  v2 = sub_BD88(&qword_963790);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_BD88(&qword_93FF28);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v16 = Strong;
  v17 = v5;
  v18 = v6;
  v33 = a1;
  sub_762D30();

  v19 = sub_BD88(&unk_959540);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10A2C(v14, &qword_93FF28);
    v6 = v18;
    v5 = v17;
LABEL_4:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_5;
  }

  sub_768760();
  (*(v20 + 8))(v14, v19);
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_93F908);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v6 = v18;
    v5 = v17;
    goto LABEL_5;
  }

  v6 = v18;
  v5 = v17;
  if (!*(&v35 + 1))
  {
LABEL_5:
    sub_10A2C(&v34, &qword_93F910);
    goto LABEL_6;
  }

  sub_10914(&v34, v37);
  sub_B170(v37, v37[3]);
  sub_760470();
  v25 = sub_75ACC0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_10A2C(v11, &unk_955F20);
  }

  else
  {
    v31 = sub_75ACA0();
    (*(v26 + 8))(v11, v25);
    if (v31)
    {
      if (qword_93E100 != -1)
      {
        swift_once();
      }

      v32 = qword_9A0850;
      sub_BEB8(v37);
      return v32;
    }
  }

  sub_BEB8(v37);
LABEL_6:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_7575D0();
    sub_762D50();

    v23 = sub_BD88(&unk_94F1F0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_10A2C(v4, &qword_963790);
    }

    else
    {
      swift_getKeyPath();
      sub_768750();

      (*(v24 + 8))(v4, v23);
      if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
      {
        (*(v6 + 96))(v8, v5);
        v27 = *v8;
        v28 = *(sub_BD88(&unk_959640) + 48);
        v29 = sub_75EDA0();
        (*(*(v29 - 8) + 8))(&v8[v28], v29);
        return v27;
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return [objc_opt_self() clearColor];
}

uint64_t sub_4B7F74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_4B804C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1ED18(a2, &v4, &unk_93FBD0);

  sub_7690A0();
  return sub_10A2C(&v3, &unk_959590);
}

uint64_t sub_4B8114(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_4B815C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_presenter] = a1;
  v8 = objc_allocWithZone(UIPickerView);

  v9 = [v8 init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_countryPicker] = v9;
  v10 = [objc_allocWithZone(UIPickerView) init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_languagePicker] = v10;
  sub_75C560();
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v4, qword_99F658);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_submitButton] = sub_75C550();
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_backToUSButton] = sub_75C550();
  v13 = type metadata accessor for DebugStorefrontPickerViewController();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_4B9368(&qword_956DA0);
  v15 = v14;
  sub_762F00();

  return v15;
}

id sub_4B83F0()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [v1 pageMarginInsets];
  [v3 setLayoutMargins:?];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_countryPicker];
  [result addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_languagePicker];
  [result addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_submitButton];
  [result addSubview:v12];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_backToUSButton];
  [result addSubview:v14];

  [v8 setDelegate:v1];
  [v8 setDataSource:v1];
  [v10 setDelegate:v1];
  [v10 setDataSource:v1];
  [v8 selectRow:sub_762EE0() inComponent:0 animated:0];
  [v10 selectRow:sub_762EF0() inComponent:0 animated:0];
  v15 = sub_769210();
  [v12 setTitle:v15 forState:0];

  v16 = [v12 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment:1];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result;
  v19 = [result tintColor];

  [v12 setBackgroundColor:v19];
  v20 = [v5 whiteColor];
  [v12 setTitleColor:v20 forState:0];

  v21 = [v5 whiteColor];
  [v12 setTitleColor:v21 forState:2];

  [v12 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
  [v12 addTarget:v1 action:"setStorefront" forControlEvents:64];
  [v12 _setCornerRadius:10.0];
  sub_4B8DFC();
  v22 = sub_769210();
  [v14 setTitle:v22 forState:0];

  v23 = [v14 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment:1];
  }

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = [result tintColor];

    [v14 setBackgroundColor:v26];
    v27 = [v5 whiteColor];
    [v14 setTitleColor:v27 forState:0];

    v28 = [v5 whiteColor];
    [v14 setTitleColor:v28 forState:2];

    [v14 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
    [v14 addTarget:v1 action:"setStorefrontToUS" forControlEvents:64];
    return [v14 _setCornerRadius:10.0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_4B89C4()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_countryPicker];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    [v4 sizeThatFits:{v5, v6}];
    v8 = v7;
    sub_75D650();
    MinX = CGRectGetMinX(v41);
    sub_75D650();
    v10 = CGRectGetMinY(v42) + 20.0;
    sub_75D650();
    [v4 setFrame:{MinX, v10, CGRectGetWidth(v43), v8}];
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_languagePicker];
    sub_75D650();
    [v11 sizeThatFits:{v12, v13}];
    v15 = v14;
    sub_75D650();
    v16 = CGRectGetMinX(v44);
    [v4 frame];
    MaxY = CGRectGetMaxY(v45);
    sub_75D650();
    [v11 setFrame:{v16, MaxY, CGRectGetWidth(v46), v15}];
    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_submitButton];
    sub_75D650();
    [v18 measurementsWithFitting:v3 in:{v19, v20}];
    v22 = v21;
    sub_75D650();
    v23 = CGRectGetMinX(v47);
    [v11 frame];
    v24 = CGRectGetMaxY(v48) + 20.0;
    sub_75D650();
    Width = CGRectGetWidth(v49);
    [v18 titleEdgeInsets];
    v27 = v22 + v26;
    [v18 titleEdgeInsets];
    [v18 setFrame:{v23, v24, Width, v27 + v28}];
    v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_backToUSButton];
    sub_75D650();
    [v29 measurementsWithFitting:v3 in:{v30, v31}];
    v33 = v32;
    sub_75D650();
    v34 = CGRectGetMinX(v50);
    [v18 frame];
    v35 = CGRectGetMaxY(v51) + 10.0;
    sub_75D650();
    v36 = CGRectGetWidth(v52);
    [v29 titleEdgeInsets];
    v38 = v33 + v37;
    [v29 titleEdgeInsets];
    [v29 setFrame:{v34, v35, v36, v38 + v39}];
  }
}

void sub_4B8DFC()
{
  v1 = v0;
  v2 = sub_762E80();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v2 & 1;
  *(v4 + 24) = v2 & 1;
  v15 = sub_4B93E0;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_23F0CC;
  v14 = &unk_893708;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v15 = sub_4B942C;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_3D6D80;
  v14 = &unk_893758;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:0.2];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_4B91E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4B9368(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugStorefrontPickerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B93A8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_4B93E0()
{
  v1 = 0.4;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_submitButton) setAlpha:v1];
}

uint64_t sub_4B9414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4B944C()
{
  sub_BE70(0, &qword_94AB00);
  if (sub_76A1C0())
  {
    return sub_762EC0();
  }

  if (sub_76A1C0())
  {
    return sub_762ED0();
  }

  return 0;
}

uint64_t sub_4B94F0()
{
  sub_BE70(0, &qword_94AB00);
  if (sub_76A1C0())
  {
    return sub_762F10();
  }

  if (sub_76A1C0())
  {
    return sub_762F20();
  }

  return 0;
}

uint64_t sub_4B95AC()
{
  sub_BE70(0, &qword_94AB00);
  if (sub_76A1C0())
  {
    return sub_762EA0();
  }

  result = sub_76A1C0();
  if (result)
  {
    return sub_762EB0();
  }

  return result;
}

uint64_t sub_4B9660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4B96AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4B9744(uint64_t a1, uint64_t a2)
{
  v4 = sub_766430();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = sub_764CF0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_BD88(&qword_94DDC0);
  v15 = sub_768F90();
  sub_757FB0();
  v16 = sub_764C90();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_BD88(&unk_944300);
    sub_768900();
    v54 = a2;
    sub_768ED0();
    swift_getObjectType();
    sub_757FB0();
    v18 = sub_758330();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = sub_7581E0();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = sub_757F90();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    sub_768BA0();
    sub_768B90();
    v25 = v60;
    sub_766420();
    sub_769AD0();
    v26 = sub_768B90();
    sub_766410();

    sub_BD88(&unk_93F5C0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_77D9F0;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_BE70(0, &qword_945820);
    v50 = v28;
    v29.super.isa = sub_769450().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_4BAFA4(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_4BB0C8(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_4BB100;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_716130;
    aBlock[3] = &unk_893828;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v23 = sub_768FF0();
    sub_BE38(v23, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_4BAF50();
    swift_allocError();
    *v24 = 0;
    sub_768F50();
  }

  return v15;
}

void sub_4B9E38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = sub_764CF0();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75E270();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_769AC0();
  sub_768BA0();
  v22 = sub_768B90();
  sub_766410();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      sub_764C60();
      sub_757FB0();
      sub_757F80();
      sub_764C30();
      sub_764C10();
      sub_757FC0();
      swift_allocObject();
      v37 = sub_757FA0();
      sub_72D7C0(v37, 1, v44);
      sub_768F00();

      return;
    }

    v21 = a12;
    if (qword_93DF00 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!sub_76A860())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = sub_768FF0();
    sub_BE38(v38, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77DC20;
    sub_768540();
    v51 = sub_BE70(0, &qword_945820);
    aBlock = v21;
    v39 = v21;
    sub_768550();
    sub_BDD0(&aBlock);
    sub_768540();
    sub_768EA0();

    sub_4BAF50();
    swift_allocError();
    *v40 = 1;
    sub_768F50();

    return;
  }

  v24 = sub_76A770();
  v23 = v46;
LABEL_7:
  sub_757F80();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    sub_769240();

    sub_768790();
    sub_3DF774(_swiftEmptyArrayStorage);
    sub_762B00();
    swift_allocObject();
    sub_762AF0();

    v29 = v44;
    sub_72D820(v28, 1, v44);

    v30 = objc_opt_self();
    sub_4BAFA4(a9, v54);
    v31 = swift_allocObject();
    sub_4BB0C8(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_4BB3C0;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_4BACD4;
    v51 = &unk_8938C8;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_4BAFA4(a9, v54);
    v34 = swift_allocObject();
    sub_4BB0C8(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_4BB208;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_4BACD4;
    v51 = &unk_893878;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_4BA5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_768380();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7683C0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v25 = sub_768FF0();
    sub_BE38(v25, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v29 = sub_764CF0();
    sub_B1B4(aBlock);
    sub_757FB0();
    sub_768550();
    sub_BDD0(aBlock);
    sub_768EA0();

    sub_BD88(&qword_94DDC0);
    sub_4BAF50();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_BE70(0, &qword_940340);
    v19 = sub_769970();
    sub_4BAFA4(v3, v32);
    v20 = swift_allocObject();
    sub_4BB0C8(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_4BB2E8;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    v29 = &unk_893918;
    v21 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_4BB2F4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    sub_769980();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v22 = sub_768FF0();
    sub_BE38(v22, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v29 = sub_764CF0();
    sub_B1B4(aBlock);
    sub_757FB0();
    sub_768550();
    sub_BDD0(aBlock);
    sub_768EA0();

    sub_BD88(&qword_94DDC0);
    sub_4BAF50();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return sub_768F20();
  }

  sub_BD88(&qword_94DDC0);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return sub_768F30();
}

uint64_t sub_4BACD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_4BAD28(uint64_t a1, uint64_t a2)
{
  v3 = sub_75B9A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v11._object = 0x80000000007E4200;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_75B750(v11, v13);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x80000000007E4220;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_75B750(v12, v14);
  sub_768790();
  (*(v4 + 104))(v6, enum case for AlertActionStyle.normal(_:), v3);
  sub_758F90();
  swift_allocObject();
  v8 = sub_758F60();
  sub_72D838(v8, 1, a2);
}

unint64_t sub_4BAF50()
{
  result = qword_956DA8;
  if (!qword_956DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956DA8);
  }

  return result;
}

uint64_t sub_4BAFDC()
{
  v1 = sub_766430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_4BB100(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_766430() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_4B9E38(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_4BB1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4BB20C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4BB25C(uint64_t a1)
{
  sub_4BA5F4(a1, *(v1 + 32), *(v1 + 40));
  sub_768F00();
}

uint64_t sub_4BB2A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4BB2F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4BB350()
{
  result = qword_956DB0;
  if (!qword_956DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956DB0);
  }

  return result;
}

unint64_t sub_4BB3D8()
{
  result = qword_956DB8;
  if (!qword_956DB8)
  {
    sub_7594F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956DB8);
  }

  return result;
}

uint64_t sub_4BB430()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7594E0();
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

uint64_t sub_4BB538@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    v12 = v11;
    v13 = qword_99FE60;
LABEL_9:
    v14 = sub_BE38(v11, v13);
    a1[3] = v12;
    a1[4] = &protocol witness table for StaticDimension;
    v15 = sub_B1B4(a1);
    return (*(*(v12 - 8) + 16))(v15, v14, v12);
  }

  if (v10 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    v12 = v11;
    v13 = qword_99FE48;
    goto LABEL_9;
  }

  sub_99FF4(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_4BB810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v12 = sub_766CA0();
    v13 = sub_BE38(v12, qword_99FE48);
    a2[3] = v12;
    a2[4] = &protocol witness table for StaticDimension;
    v14 = sub_B1B4(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_9B330(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_4BBA84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_BD88(&qword_963790);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_75DA50();
  sub_353788(v7);
  v8 = sub_BD88(&unk_94F1F0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v9 = sub_766CA0();
    v10 = sub_BE38(v9, qword_99FE78);
    a1[3] = v9;
    a1[4] = &protocol witness table for StaticDimension;
    v11 = sub_B1B4(a1);
    return (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    sub_4BBC40();
    sub_761E00();
    return sub_353788(v4);
  }
}

unint64_t sub_4BBC40()
{
  result = qword_956DC0;
  if (!qword_956DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956DC0);
  }

  return result;
}

uint64_t sub_4BBC98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_4BBCF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_4BBDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4BC04C(&qword_941360, type metadata accessor for ProductRatingsCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_4BBE58()
{
  v0 = sub_764A60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_765430();
  sub_4BC04C(&qword_94A7B8, &type metadata accessor for Ratings);
  result = sub_75C750();
  v8 = v12;
  if (v12)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_764A00();
    sub_4BC04C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v9 = sub_76A520();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    sub_5DBCB4(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_4BC04C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BC094()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_4AB724(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_4BC1D4()
{
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_38D174();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_4AB724(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

id sub_4BC2E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v156 = sub_760260();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v164 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v166 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v136 - v15;
  __chkstk_darwin(v16);
  v160 = &v136 - v17;
  v18 = sub_BD88(&qword_950D30);
  __chkstk_darwin(v18 - 8);
  v161 = &v136 - v19;
  v20 = sub_BD88(&unk_955AA0);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v136 - v22;
  v159 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView];
  v27[qword_950C78] = v25;
  sub_367E48();
  v28 = sub_7656C0();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = sub_765A20();
  if (v32)
  {
    v33 = a1;
    v34 = v167;
    sub_4BEA5C(v32, v33, v25, a3, v167);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v165 = v25;
  v157 = v27;
  v147 = a3;
  sub_765B20();
  v37 = sub_75B060();

  v153 = v37;
  v149 = v11;
  v148 = v12;
  if (v37)
  {
    v38 = sub_39ED38;
    if (v165 == 4)
    {
      v38 = sub_64A6C;
    }

    v143 = v38;
    v144 = sub_756A94;
    v39 = sub_39ED38;
    if (v165 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v145 = v39;
  }

  else if (v165 == 4)
  {
    v143 = sub_64A6C;
    v144 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v145 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v145 = sub_39ED38;
    v144 = sub_756A94;
    v143 = sub_39ED38;
  }

  v40 = sub_765B50();
  v152 = v41;
  v142 = sub_765B40();
  v158 = v42;
  v139 = sub_765A10();
  v150 = v43;
  v44 = v161;
  sub_765A80();
  v45 = sub_75F730();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = sub_765A60();
  v154 = v47;
  sub_765B30();
  sub_765AA0();
  v48 = sub_765B60();
  v146 = v31;
  v141 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  sub_760120();
  if (!swift_dynamicCastClass())
  {
    sub_763470();
    if (swift_dynamicCastClass())
    {
      sub_763450();
      goto LABEL_20;
    }

LABEL_22:
    v140 = 0;
    v151 = 0;
    goto LABEL_23;
  }

  sub_760110();
LABEL_20:
  v140 = sub_764EF0();
  v151 = v49;

LABEL_23:
  v50 = v165;
  v51 = v157;
  v157[qword_950CA8] = v153 & 1;
  v52 = *&v51[qword_950C90];
  *(v52 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_950C88];
  sub_728444(v40, v152);
  v54 = sub_760250();
  v55 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      sub_769240();
    }

    v59 = v157;
    v60 = sub_7692D0();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v173 = sub_A922C;
        v174 = v65;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v138 = v60;
        v171 = sub_23F0CC;
        v172 = &unk_893C58;
        v137 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v173 = sub_A9238;
        v174 = v67;
        v59 = v157;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v171 = sub_3D6D80;
        v172 = &unk_893CA8;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v138;

        v70 = v62;
        v71 = v137;
        [v70 animateWithDuration:0 delay:v137 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v157;
  }

  v72 = &v59[qword_950CB0];
  *v72 = v143;
  v72[1] = 0;
  v72[2] = v144;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v145;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_234F64;
  v72[11] = 0;

  sub_3680EC();
  v73 = v154;
  v74 = v52;
  if (v158)
  {
    if (v153)
    {
      if (v165 != 4)
      {
        sub_3694C8(v161);
        v75 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v75) setMinimumScaleFactor:0.75];
        v76 = objc_allocWithZone(NSAttributedString);
        v77 = sub_769210();
        type metadata accessor for Key(0);
        sub_4C1FC4(&qword_93EC10, type metadata accessor for Key);
        isa = sub_7690E0().super.isa;

        v79 = [v76 initWithString:v77 attributes:isa];

        v74 = v52;
        v80 = *(v52 + v75);
        v59 = v157;
        [v80 setAttributedText:v79];

        goto LABEL_53;
      }
    }

    else if (v165 != 4)
    {
      sub_3699BC();
      goto LABEL_45;
    }

    sub_369998();
LABEL_45:
    LODWORD(v145) = v165 != 4;
    v81 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v82 = *(v52 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v83 = objc_allocWithZone(NSAttributedString);
    v84 = v82;
    v85 = sub_769210();
    type metadata accessor for Key(0);
    sub_4C1FC4(&qword_93EC10, type metadata accessor for Key);
    v86 = sub_7690E0().super.isa;
    v74 = v52;

    v87 = [v83 initWithString:v85 attributes:v86];

    [v84 setAttributedText:v87];
    [*(v52 + v81) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v81) setMinimumScaleFactor:0.0];
    [*(v52 + v81) setAttributedText:0];
    if (v145 & 1 | ((v153 & 1) == 0) || !v151)
    {
      v59 = v157;
      v73 = v154;
      if (v150 && v157[qword_950C80] == 4)
      {
        if (v165 == 4)
        {
          sub_72853C(v142, v158, v139, v150);
        }

        else
        {
          sub_72853C(v139, v150, v142, v158);
        }
      }

      else
      {
        sub_728444(v142, v158);
      }
    }

    else
    {
      sub_728444(v140, v151);
      v59 = v157;
      v73 = v154;
    }
  }

LABEL_53:
  v88 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v89 = *(v74 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v90 = [v89 text];
  if (v90 || (v90 = [*(v74 + v88) attributedText]) != 0)
  {

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v165;
  [v89 setHidden:v91];

  [v59 setNeedsLayout];
  v93 = *&v59[qword_950C98];
  [v93 setImage:0];
  [v93 setHidden:1];
  if (v92 != 4 && (sub_760230() & 1) == 0 && v73)
  {
    v98 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v98 = v141 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v98 == 0;
    v94 = *&v59[qword_950CA0];
    v95 = &v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v96 = *&v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v94 = *&v59[qword_950CA0];
  v95 = &v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v96 = *&v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v73)
  {
    v97 = 1;
LABEL_64:
    v99 = v96;
    v73 = sub_769210();
    goto LABEL_66;
  }

  v99 = v96;
  v97 = 1;
LABEL_66:
  [v99 setText:v73];

  if (v97 == [*v95 isHidden] || (v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v95 setHidden:v97];
  }

  else
  {
    if (!v97)
    {
      [*v95 setAlpha:0.0];
      v100 = objc_opt_self();
      [v100 inheritedAnimationDuration];
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v94;
      v173 = sub_A8FE4;
      v174 = v103;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_23F0CC;
      v172 = &unk_893BB8;
      v104 = _Block_copy(&aBlock);
      v105 = v94;

      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v173 = sub_A9004;
      v174 = v106;
      v59 = v157;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_3D6D80;
      v172 = &unk_893C08;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      [v100 animateWithDuration:0 delay:v104 options:v107 animations:v102 completion:0.0];
      _Block_release(v107);
      _Block_release(v104);
    }

    [*v95 setHidden:v97];
    v94[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v94 setNeedsLayout];
  }

  v34 = v167;
  v11 = v149;
  v109 = v160;
  sub_366B5C(v160, 1);
  [v59 setNeedsLayout];

  (*(v155 + 8))(v164, v156);
  v12 = v148;
  (*(v148 + 8))(v109, v11);
  sub_10A2C(v161, &qword_950D30);
  [v5 setNeedsLayout];
  v35 = v147;
  LODWORD(v36) = v165;
  v31 = v146;
LABEL_73:
  sub_73B940(v31, v35, v36, v34);
  v110 = v166;
  if (*&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
  {
    v111 = v31;
    v112 = v12;
    v113 = v36;
    v36 = v11;
    v114 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 16);
    swift_unknownObjectRetain();
    v117 = v116(v115, v114);
    swift_unknownObjectRelease();
    v118 = [v117 layer];

    if (v5[v159] == 6)
    {
      v119 = v5;
      v120 = [v5 traitCollection];
      v121 = sub_769A00();

      if (v121)
      {
        v122 = 12;
      }

      else
      {
        v122 = 15;
      }
    }

    else
    {
      v119 = v5;
      v122 = 12;
    }

    [v118 setMaskedCorners:v122];

    v11 = v36;
    LOBYTE(v36) = v113;
    v12 = v112;
    v5 = v119;
    v31 = v111;
    v110 = v166;
  }

  v162 = v5;
  sub_765B30();
  (*(v12 + 104))(v110, enum case for TodayCard.Style.white(_:), v11);
  sub_4C1FC4(&qword_9409B0, &type metadata accessor for TodayCard.Style);
  sub_769430();
  v123 = v110;
  sub_769430();
  if (aBlock == v175 && v170 == v176)
  {
    v124 = v31;
    v125 = 1;
  }

  else
  {
    v124 = v31;
    if (sub_76A950())
    {
      v125 = 1;
    }

    else
    {
      v125 = 2;
    }
  }

  v126 = *(v12 + 8);
  v126(v123, v11);
  v126(v168, v11);

  v127 = v162;
  [v162 setOverrideUserInterfaceStyle:v125];
  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v128;
  *(v130 + 24) = v129;
  *(v130 + 32) = v124;
  *(v130 + 40) = v36;
  *(v130 + 48) = ObjectType;
  v131 = &v127[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock];
  v132 = *&v127[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock];
  *v131 = sub_4C1EF8;
  v131[1] = v130;

  sub_F704(v132);
  v133 = *v131;
  if (*v131)
  {

    (v133)(v134);

    sub_F704(v133);
  }

  else
  {
  }

  return [v127 setNeedsLayout];
}

id sub_4BD964(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_955AA0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView] + qword_950C78) = v10;
    sub_367E48();
  }

  v13 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_5FC64(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v9, &v3[v14]);
  swift_endAccess();
  sub_369B90(*&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_4BE7DC(a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style + 8);

  sub_3069CC(v22, v23);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView);

  sub_BE70(0, &qword_945800);
  isa = sub_769450().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

uint64_t sub_4BDC84(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay))
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView();
  sub_4C1FC4(&qword_956E50, type metadata accessor for TodayCardLabelsView);
  v7 = v6;
  sub_76A6E0();
  sub_75A0B0();
  return sub_1EB60(v9);
}

id sub_4BDDB8()
{
  v1 = v0;
  sub_4BC1D4();
  [*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView) + qword_950C98) setImage:0];
  sub_72872C();
  sub_72872C();
  sub_72872C();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  v4 = *v2;
  if (*v2)
  {

    v4(v5);
    sub_F704(v4);
  }

  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer);
  sub_38D174();
  v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v6 setHidden:0];
  v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_4BDF04(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_950C80) = result;
    *(*(v2 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

char *sub_4BDF9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView;
  v46[0] = sub_39ED38;
  v46[1] = 0;
  v46[2] = sub_756A94;
  v46[3] = 0;
  v46[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[5] = 0;
  v46[6] = sub_39ED38;
  v46[7] = 0;
  v46[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[9] = 0;
  v46[10] = sub_234F64;
  v46[11] = 0;
  v47 = 0x4000000000000000uLL;
  v48 = 0;
  v49 = 0x4018000000000000;
  v50 = 0;
  v51 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[v11] = sub_367388(v46, &v47);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v4[v13] = sub_30712C(&off_87EAC0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode] = 0;
  v16 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
  v18 = sub_7656C0();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning] = 0;
  v19 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType] = 0;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView;
  v23 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  v24 = v21;
  v25 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v26 = [v25 layer];
  [v26 setMaskedCorners:12];

  [*&v25[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v27 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType];
  if (v27)
  {
    v28 = *&v21[v22];
    v29 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType];
    *&v28[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType] = v27;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v32 = v24[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
    v31 = *&v21[v22];
    if (v32 == 6 && (v33 = [v24 traitCollection], v34 = sub_769A00(), v33, (v34 & 1) == 0))
    {
      v35 = &kCAGradientLayerRadial;
    }

    else
    {
      v35 = &kCAGradientLayerAxial;
    }

    v36 = *v35;
    v29 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType];
    *&v31[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType] = v36;
    v30 = v36;
  }

  sub_3076A4();
  [v24 addSubview:*&v21[v22]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer]];
  sub_BD88(&qword_9477F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_77B6D0;
  *(v37 + 32) = sub_7676E0();
  *(v37 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_769F40();
  swift_unknownObjectRelease();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_77B6D0;
  *(v38 + 32) = sub_767B80();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v39 = [v24 traitCollection];
  LOBYTE(v38) = sub_7699F0();

  v40 = *&v21[v22];
  v41 = 0.13962634;
  if (v38)
  {
    v41 = -0.13962634;
  }

  v42 = *(v40 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle);
  *(v40 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle) = v41;
  if (v41 != v42)
  {
    sub_3079B8();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_77B6D0;
  *(v43 + 32) = sub_7676F0();
  *(v43 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v24;
}

void sub_4BE560()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_continuousCornerRadius");
  v5 = v4;
  [v3 _setContinuousCornerRadius:?];
  v6 = [v3 layer];
  [v6 setMaskedCorners:12];

  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v5];
  v7 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
  {
    v8 = *(v7 + 1);
    v9 = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(v9, v8);
    swift_unknownObjectRelease();
    v20.receiver = v1;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v11 _setContinuousCornerRadius:?];

    if (*v7)
    {
      v12 = *(v7 + 1);
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v15 = v14(v13, v12);
      swift_unknownObjectRelease();
      v16 = [v15 layer];

      if (v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v17 = [v1 traitCollection];
        v18 = sub_769A00();

        if (v18)
        {
          v19 = 12;
        }

        else
        {
          v19 = 15;
        }
      }

      else
      {
        v19 = 12;
      }

      [v16 setMaskedCorners:v19];
    }
  }
}

id sub_4BE7DC(id result)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_4BE8E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView) + qword_950CC0) = *(v0 + v2);
  sub_36851C();
}

uint64_t sub_4BEA5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v10 = a3;
  v11 = sub_760260();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_765B10();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v69 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v57 - v16;
  if (v10 == 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = a3;
  }

  v19 = [v6 traitCollection];
  sub_7ED24(v18, a4, v19);
  sub_2A6324(v18);
  v65 = sub_765330();

  v20 = [v6 traitCollection];
  sub_7ED24(a3, a4, v20);
  sub_2A6324(a3);
  v21 = sub_765330();

  v67 = v6;
  v22 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView];
  v23 = &v22[qword_950C70];
  v24 = *&v22[qword_950C70];
  v25 = *&v22[qword_950C70 + 32];
  v26 = v22[qword_950C70 + 40];
  v63 = v21;
  sub_75DEF0();
  *v23 = v24;
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = 0x402C000000000000;
  *(v23 + 4) = v25;
  v23[40] = v26;
  [v22 setNeedsLayout];
  v29 = qword_950C98;
  v30 = [*&v22[qword_950C98] image];
  v68 = sub_765A60();
  v32 = v31;
  v58 = v17;
  sub_765B30();
  v66 = a2;
  sub_765AA0();
  v33 = qword_950C88;
  [*(*&v22[qword_950C88] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setText:0];
  v34 = qword_950C90;
  [*(*&v22[qword_950C90] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setText:0];
  v35 = *&v22[v29];
  v57 = v30;
  [v35 setImage:v30];
  v36 = qword_950CA0;
  v37 = *(*&v22[qword_950CA0] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v38 = v37;
  if (v32)
  {
    v39 = sub_769210();
  }

  else
  {
    v39 = 0;
  }

  [v37 setText:v39];

  [*(*&v22[v33] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v22[v34] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setHidden:1];
  [*&v22[v29] setHidden:0];
  v40 = *(*&v22[v36] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v41 = v70;
  v42 = sub_760230();
  v43 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v43 = v68 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  if (v42)
  {
    v44 = 1;
  }

  if (v32)
  {
    v45 = v44;
  }

  else
  {
    v45 = 1;
  }

  [v40 setHidden:v45];

  sub_3680EC();
  v46 = v59;
  v47 = v60;
  (*(v59 + 104))(v69, enum case for TodayCard.Style.white(_:), v60);
  sub_4C1FC4(&qword_9409B0, &type metadata accessor for TodayCard.Style);
  v48 = v58;
  sub_769430();
  sub_769430();
  if (v71[0] == v72 && v71[1] == v73)
  {
    v49 = 1;
  }

  else if (sub_76A950())
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = *(v46 + 8);
  v50(v69, v47);

  [v22 setOverrideUserInterfaceStyle:v49];
  sub_36860C();
  [v22 setNeedsLayout];

  (*(v61 + 8))(v41, v62);
  v50(v48, v47);
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v51 = v67;
  v52 = v65;
  *&v67[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey] = v65;

  v72 = v22;
  type metadata accessor for TodayCardLabelsView();
  sub_4C1FC4(&qword_956E50, type metadata accessor for TodayCardLabelsView);
  v53 = v22;
  sub_76A6E0();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v52;
  v55[4] = v66;

  sub_75A040();

  sub_10A2C(v71, &unk_9443A0);

  [v51 setNeedsLayout];
}

void sub_4BF1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = sub_4C1408(a3, v6);
      sub_4BE7DC(v7);
      v8 = [v5 traitCollection];
      v9 = sub_4C1670();
      v11 = v10;

      v12 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView;
      v13 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
      sub_307E98(a3, v9, v11);

      v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType];
      if (v14)
      {
        v15 = *&v5[v12];
        v16 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType];
        *&v15[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType] = v14;
        v17 = v14;
        v18 = v15;
      }

      else
      {
        v19 = v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
        v18 = *&v5[v12];
        if (v19 == 6 && (v20 = [v5 traitCollection], v21 = sub_769A00(), v20, (v21 & 1) == 0))
        {
          v22 = &kCAGradientLayerRadial;
        }

        else
        {
          v22 = &kCAGradientLayerAxial;
        }

        v23 = *v22;
        v16 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType];
        *&v18[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType] = v23;
        v17 = v23;
      }

      sub_3076A4();
      [v5 setNeedsLayout];
    }

    else
    {
    }
  }
}

void sub_4BF3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_760260();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      sub_75DF50();
      sub_4C1FC4(&qword_956E58, &type metadata accessor for ArtworkLoaderConfig);
      v20 = sub_7691C0();

      if (v20)
      {
        if (a4)
        {
          v21 = 0;
        }

        else
        {
          v21 = a1;
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = &unk_90D000;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView);

          v26 = sub_765A60();
          v28 = v27;
          sub_765B30();
          v29 = v28;
          sub_765AA0();
          v48 = qword_950C88;
          [*(*&v25[qword_950C88] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_950C90;
          [*(*&v25[qword_950C90] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_950C98;
          v31 = *&v25[qword_950C98];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_950CA0;
          v33 = *(*&v25[qword_950CA0] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = sub_769210();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
          v37 = sub_760230();
          v38 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v38 = v46 & 0xFFFFFFFFFFFFLL;
          }

          v39 = v38 == 0;
          if (v37)
          {
            v39 = 1;
          }

          v48 = v35;
          if (v35)
          {
            v40 = v39;
          }

          else
          {
            v40 = 1;
          }

          [v36 setHidden:v40];

          sub_3680EC();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_4C1FC4(&qword_9409B0, &type metadata accessor for TodayCard.Style);
          sub_769430();
          sub_769430();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (sub_76A950())
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v43 = *(v41 + 8);
          v43(v13, v11);

          [v25 setOverrideUserInterfaceStyle:v42];
          sub_36860C();
          v23 = &unk_90D000;
          [v25 setNeedsLayout];

          (*(v51 + 8))(v53, v52);
          v43(v16, v11);

          v21 = v49;
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          [v44 v23[463]];
        }
      }
    }
  }
}

uint64_t sub_4BF968()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory;
  sub_4C0ED8(v2, v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory], &v25);
  v4 = v28;

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView];
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer];
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind];
  v8 = v1[v3];
  v9 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind + 8];
  v10 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_originalSizeCategory];
  v11 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  *&v35 = v4;
  *(&v35 + 1) = v5;
  *v36 = v6;
  *&v36[8] = v7;
  v36[16] = v9;
  v36[17] = v8;
  v36[18] = v10;
  v36[19] = v11;
  v36[20] = 0;
  v29 = v25;
  v30 = v26;
  *(v33 + 13) = *&v36[13];
  v32 = v35;
  v33[0] = *v36;
  v31 = v27;
  v12 = v5;
  v13 = v6;
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  sub_11CCCC(v22, v15, v17, v19, v21);

  sub_4BFB0C();
  return sub_A91BC(v34);
}

void sub_4BFB0C()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_5FC64(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10A2C(v4, &unk_955AA0);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = sub_7699C0(v73, v75).super.isa;

          sub_7E8B0(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      v59 = sub_138D34(v58, &xmmword_99A9B0, 1);
      sub_769A00();
      sub_7697D0();
      v61 = v60;
      sub_769A00();
      sub_7697D0();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_367EFC();
      }

      if (v18 >= v64)
      {
        v47 = v64;
      }

      else
      {
        v47 = v18;
      }

      goto LABEL_40;
    }

LABEL_8:
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_367EFC();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = sub_769240();
      v26 = v25;
      if (v24 == sub_769240() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = sub_769A00();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = sub_76A950();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10A2C(v7, &unk_955AA0);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = sub_7699C0(v72, v74).super.isa;

        sub_7E8B0(v40, v15, v44);
        v41 = v45;

        (*(v9 + 8))(v15, v8);
      }
    }

    if (v41 < v21 && v16 == 2)
    {
      v47 = v41;
    }

    else
    {
      v47 = v21;
    }

LABEL_40:
    sub_4C1918(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer] frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = sub_769A00(), v52, (v53 & 1) == 0))
  {
    Width = 570.0;
  }

  else
  {
    v80.origin.x = v29;
    v80.origin.y = v31;
    v80.size.width = v33;
    v80.size.height = v35;
    Width = CGRectGetWidth(v80);
  }

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = sub_769A00(), v67, (v68 & 1) == 0))
  {
    Height = 325.0;
  }

  else
  {
    v84.origin.x = v29;
    v84.origin.y = v31;
    v84.size.width = v33;
    v84.size.height = v35;
    Height = CGRectGetHeight(v84);
  }

  [v48 setFrame:{MinX, v50, Width, Height}];
}

id sub_4C030C(uint64_t a1, double a2, double a3)
{
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    swift_unknownObjectRelease();
    [v4 convertPoint:v11 toCoordinateSpace:{a2, a3}];
    v13 = v12;
    v15 = v14;
    if ([v11 pointInside:a1 withEvent:?])
    {
      v16 = [v11 hitTest:a1 withEvent:{v13, v15}];

      return v16;
    }
  }

  return 0;
}

uint64_t type metadata accessor for TodayCardInfoLayerView()
{
  result = qword_956E38;
  if (!qword_956E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4C06DC()
{
  sub_2491AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_4C07E4()
{
  result = qword_956E48;
  if (!qword_956E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956E48);
  }

  return result;
}

uint64_t sub_4C0850(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_4C08A0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_4C08CC()
{
  swift_weakAssign();
}

void sub_4C0948(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = sub_7699F0();

    v8 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_3079B8();
    }
  }
}

id sub_4C0A24(char *a1)
{
  sub_4BE560();
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v2)
  {

    v2(v3);
    sub_F704(v2);
  }

  return [a1 setNeedsLayout];
}

uint64_t sub_4C0AA4(uint64_t a1)
{
  v2 = sub_765B10();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0.1;
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TodayCard.Style.dark(_:))
  {
    v10 = &selRef_whiteColor;
    v8 = 0.16;
LABEL_9:
    v11 = [objc_opt_self() *v10];
    v12 = [v11 colorWithAlphaComponent:v8];

    return v12;
  }

  if (v7 == enum case for TodayCard.Style.light(_:))
  {
LABEL_8:
    v10 = &selRef_blackColor;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_76A730(44);

  v14 = 0xD00000000000002ALL;
  v15 = 0x80000000007CF650;
  v16._countAndFlagsBits = sub_765B00();
  sub_769370(v16);

  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_4C0CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer];
  sub_38D174();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = v10;
    v13 = v10;

    [v13 setAnchorPoint:{0.0, 1.0}];
    v14 = *&v7[v11];
    if (v14)
    {
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      [v14 setTransform:v21];
    }

    [v7 addSubview:v13];
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "overrideUserInterfaceStyle")}];
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];
    v15 = [v13 layer];
    if (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = sub_769A00();

      if (v17)
      {
        v18 = 12;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v18 = 12;
    }

    [v15 setMaskedCorners:v18];
    swift_unknownObjectRelease();
  }

  return [v3 setNeedsLayout];
}

double sub_4C0ED8@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_769A00())
  {
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    v6 = sub_138D34(a1, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    v9 = v8;
    sub_769A00();
    sub_7697D0();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    v17 = sub_138D34(a1, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    v24 = v23;
    sub_769A00();
    sub_7697D0();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      v7 = sub_138D34(a1, &xmmword_99A9B0, 1);
      sub_769A00();
      sub_7697D0();
      v20 = v19;
      sub_769A00();
      sub_7697D0();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_93C328 != -1)
    {
      swift_once();
    }

    v18 = sub_138D34(a1, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    v28 = v27;
    sub_769A00();
    sub_7697D0();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_7A02E0;
  result = 353.0;
  *(a3 + 40) = xmmword_7A02F0;
  return result;
}

void sub_4C11B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_39ED38;
  v12[1] = 0;
  v12[2] = sub_756A94;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_39ED38;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_234F64;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *(v0 + v2) = sub_367388(v12, &v13);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_30712C(&off_87EAC0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_pageGrid;
  v9 = sub_7656C0();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_4C1408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = sub_760260();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v8 = sub_760220();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !sub_765B60())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = sub_769A00();

  if (v12)
  {
    sub_765AA0();
    v13 = sub_760220();
    v9(v7, v4);
    if ((v13 & 1) == 0 && sub_765B60() && (, type metadata accessor for TodayCardOverlayReusePool(), sub_7688F0(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = sub_769A00(), v15, (v16 & 1) != 0)))
  {
    sub_765AA0();
    v17 = sub_760240();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    sub_765AA0();
    v18 = sub_760240();
    v9(v7, v4);
    if (v18)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }
}

id sub_4C1670()
{
  sub_765B20();
  sub_757810();
  if (!swift_dynamicCastClass())
  {

    v7 = sub_765B20();
    sub_75B090();
    sub_BD88(&qword_947B48);
    if (swift_dynamicCast())
    {
      sub_10914(v5, v8);
      sub_B170(v8, v8[3]);
      if (sub_7618A0())
      {

        if (qword_93C9E0 != -1)
        {
          swift_once();
        }

        v1 = qword_99C950;

        sub_BEB8(v8);
        return v1;
      }

      sub_BEB8(v8);
    }

    else
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_10A2C(v5, &qword_947B50);
    }

    if (qword_93C9D0 != -1)
    {
      swift_once();
    }

    v1 = xmmword_99C930;

    return v1;
  }

  v0 = sub_757800();
  sub_BD88(&unk_93F5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77D9F0;
  sub_BE70(0, &qword_94E5C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
  if (result)
  {
    *(v1 + 32) = result;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_77D9F0;
    result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
    if (result)
    {
      *(v4 + 32) = result;

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_4C1918(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory];
  v6 = 0.174532925;
  if (v5 == 4)
  {
    v16 = 48.0;
    goto LABEL_23;
  }

  if (v5 != 6)
  {
    goto LABEL_11;
  }

  v7 = [a1 traitCollection];
  v8 = sub_769A00();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = sub_769240();
  v11 = v10;
  if (v9 == sub_769240() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = sub_76A950();

  if (v14)
  {
    *&v15 = 100.0;
  }

  else
  {
LABEL_11:
    *&v15 = 80.0;
  }

LABEL_12:
  v16 = *&v15;
  v17 = a1[v4];
  if (v17 == 4)
  {
    goto LABEL_23;
  }

  if (v17 != 6)
  {
    goto LABEL_21;
  }

  v18 = [a1 traitCollection];
  v19 = sub_769A00();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_76A950();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = sub_769240();
    v29 = v28;
    if (v27 == sub_769240() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_76A950();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = sub_769A00();

      if ((v34 & 1) == 0)
      {
        v35 = 385.0;
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  [a1 bounds];
  v35 = CGRectGetWidth(v58) * 0.5;
LABEL_34:
  v36 = v35 * tan(v6);
  [a1 bounds];
  v37 = ceil(v36 + v16 + CGRectGetHeight(v59) - a2);
  v38 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = sub_769A00();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = sub_769240();
        v43 = v42;
        if (v41 == sub_769240() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = sub_76A950();

        if (v45)
        {
          goto LABEL_42;
        }
      }

      [a1 bounds];
      CGRectGetMinX(v63);
      [a1 bounds];
      CGRectGetHeight(v64);
      v51 = [a1 traitCollection];
      [a1 bounds];
      sub_769CA0();
      MinX = v52;
      v48 = v53;
      v55 = v54;
      v57 = v56;

      v50 = v57;
      Width = v55;
      goto LABEL_46;
    }
  }

LABEL_42:
  [a1 bounds];
  MinX = CGRectGetMinX(v60);
  [a1 bounds];
  v47 = CGRectGetHeight(v61) - v37;
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  [a1 bounds];
  Width = CGRectGetWidth(v62);
  v50 = v37;
LABEL_46:
  [v38 setFrame:{MinX, v48, Width, v50}];
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_3079B8();
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_3079B8();
}

uint64_t sub_4C1E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4C1EB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4C1F0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4C1F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4C1F64(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_4C1FC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4C2044()
{
  result = qword_956E60;
  if (!qword_956E60)
  {
    sub_75D4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956E60);
  }

  return result;
}

uint64_t sub_4C209C(void *a1)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 success])
  {
    (*(v3 + 104))(v6, enum case for ActionOutcome.performed(_:), v2);
    sub_768F60();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = [a1 error];
    sub_4C262C();
    swift_allocError();
    *v9 = v8;
    sub_768F50();
  }
}

uint64_t sub_4C2220()
{
  v0 = sub_75D4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  sub_BD88(&qword_94DDC0);
  v7 = sub_768F90();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_32CF48(Strong);

  sub_75D4B0();
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 88))(v3, v0);
  if (v10 == enum case for FamilyCircleAction.EventType.initiate(_:))
  {
    v11 = *(v1 + 8);
    v12 = FACircleEventTypeInitiate;
    v11(v6, v0);
  }

  else
  {
    v13 = *(v1 + 8);
    if (v10 == enum case for FamilyCircleAction.EventType.addFamilyMember(_:))
    {
      v12 = FACircleEventTypeAddFamilyMemberV3;
      v14 = v6;
    }

    else
    {
      v12 = FACircleEventTypeInitiate;
      v13(v6, v0);
      v14 = v3;
    }

    v13(v14, v0);
  }

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType:v12];

  sub_75D480();
  v16 = sub_769210();

  [v15 setClientName:v16];

  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  [v15 setClientBundleID:v18];
  if (sub_75D490())
  {
    v19.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v15 setAdditionalParameters:v19.super.isa];

  v20 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v9];
  aBlock[4] = sub_4C260C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_123860;
  aBlock[3] = &unk_893D78;
  v21 = _Block_copy(aBlock);

  [v20 performWithContext:v15 completion:v21];
  _Block_release(v21);

  return v7;
}

uint64_t sub_4C2614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4C262C()
{
  result = qword_956E68;
  if (!qword_956E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956E68);
  }

  return result;
}

uint64_t sub_4C2680(uint64_t *a1, unsigned int a2)
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

uint64_t sub_4C26DC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_4C273C(uint64_t a1)
{
  v38 = sub_757710();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_143D3C(0, v5, 0);
    v43 = v44;
    v7 = a1 + 56;
    result = sub_76A5B0();
    v8 = result;
    v9 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v5;
    v33 = v3;
    v34 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v12 = v37;
      v13 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v8, v38);
      v14 = sub_757700();
      v41 = v15;
      v42 = v14;
      v40 = sub_7576F0();
      v17 = v16;
      result = (*(v3 + 8))(v12, v13);
      v18 = v43;
      v44 = v43;
      v20 = v43[2];
      v19 = v43[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_143D3C((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      v18[2] = v20 + 1;
      v21 = &v18[4 * v20];
      v22 = v41;
      v21[4] = v42;
      v21[5] = v22;
      v21[6] = v40;
      v21[7] = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v34;
      v23 = *(v34 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        v3 = v33;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1F38B4(v8, v39, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1F38B4(v8, v39, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v32)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int sub_4C2A54()
{
  sub_76AA30();
  sub_769330();
  sub_769330();
  return sub_76AA80();
}

uint64_t sub_4C2ABC()
{
  sub_769330();

  return sub_769330();
}

Swift::Int sub_4C2B0C()
{
  sub_76AA30();
  sub_769330();
  sub_769330();
  return sub_76AA80();
}

uint64_t sub_4C2B70(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_76A950(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_76A950();
    }
  }

  return result;
}

uint64_t sub_4C2C14()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FF0();
  qword_99DFB8 = result;
  return result;
}

uint64_t sub_4C2C58()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_956E70 = v5;
  return result;
}

uint64_t sub_4C2D50()
{
  v34 = sub_761CB0();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766CA0();
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v25 - v8;
  __chkstk_darwin(v9);
  v37 = &v25 - v10;
  v11 = sub_761CE0();
  sub_161DC(v11, qword_956E78);
  v32 = sub_BE38(v11, qword_956E78);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v45 = 0x4024000000000000;
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99EAA0);
  v14 = *(v12 - 8);
  v30 = *(v14 + 16);
  v15 = v14 + 16;
  v30(v4, v13, v12);
  v28 = v15;
  v29 = enum case for FontSource.useCase(_:);
  v36 = v2[13];
  v36(v4);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v42);
  v17 = v2[2];
  v17(v16, v4, v1);
  v27 = v17;
  sub_766CB0();
  v26 = v2[1];
  v26(v4, v1);
  v18 = v30;
  v30(v4, v13, v12);
  v19 = v29;
  (v36)(v4, v29, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v42);
  v17(v20, v4, v1);
  sub_766CB0();
  v21 = v26;
  v26(v4, v1);
  v18(v4, v13, v12);
  (v36)(v4, v19, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v42);
  v27(v22, v4, v1);
  sub_766CB0();
  v21(v4, v1);
  v44 = &protocol witness table for Double;
  v43 = &type metadata for Double;
  v42[0] = 0x4024000000000000;
  if (qword_93D220 != -1)
  {
    swift_once();
  }

  v23 = qword_956E70;
  [v23 contentInsets];

  (*(v33 + 104))(v35, enum case for PlatformSelectorViewLayout.Metrics.AccessoryAlignment.inline(_:), v34);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39 = 0x402C000000000000;
  return sub_761CC0();
}

char *sub_4C32F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v15 = &ObjectType - v14;
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges] = 0;
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v53 = sub_BE38(v18, qword_99EAA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v15, v53, v18);
  v54 = *(v19 + 56);
  v54(v15, 0, 1, v18);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = *(v10 + 104);
  v56(v12);
  v55 = sub_75BB20();
  v21 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel] = sub_75BB10();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v22 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel] = sub_75BB10();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v23 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel] = sub_75BB10();
  v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView] = v24;
  v58.receiver = v4;
  v58.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  sub_BD88(&unk_93F5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_78D690;
  v27 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  *(inited + 32) = v27;
  v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel];
  *(inited + 40) = v28;
  v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel];
  *(inited + 48) = v29;
  v30 = inited & 0xC000000000000001;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = sub_76A770();
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (qword_93D218 != -1)
  {
    swift_once();
  }

  [v36 setTextColor:{qword_99DFB8, ObjectType}];
  [v31 addSubview:v36];

  if (v30)
  {
    v37 = sub_76A770();
  }

  else
  {
    v37 = *(inited + 40);
  }

  v38 = v37;
  if (qword_93D218 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_99DFB8];
  [v31 addSubview:v38];

  if (v30)
  {
    v39 = sub_76A770();
  }

  else
  {
    v39 = *(inited + 48);
  }

  v40 = v39;
  if (qword_93D218 != -1)
  {
    swift_once();
  }

  v41 = qword_99DFB8;
  [v40 setTextColor:qword_99DFB8];
  [v31 addSubview:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView;
  [*&v31[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView] setTintColor:v41];
  v43 = *&v31[v42];
  v44 = v31;
  [v44 addSubview:v43];
  [v44 layoutMargins];
  v46 = v45;
  [v44 layoutMargins];
  v48 = v47;
  [v44 layoutMargins];
  [v44 setLayoutMargins:{v46, 0.0, v48}];
  v49 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v44 action:"didTapSelectorView"];

  [v44 addGestureRecognizer:v49];
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v44 selector:"smartInvertDidChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  sub_BE70(0, &qword_941EC8);
  sub_769A40();
  sub_769F40();

  swift_unknownObjectRelease();

  return v44;
}

void sub_4C3A90()
{
  swift_getObjectType();
  v1 = sub_75C420();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images))
    {
      v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images);
      v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits);
      if (v13)
      {
        v48 = v9;
        v49 = v0;
        v46 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text);
        swift_getObjectType();

        swift_unknownObjectRetain();
        v50 = sub_4C4AF8(v12, v13);
        if (qword_93D228 != -1)
        {
          swift_once();
        }

        v14 = sub_761CE0();
        v45 = sub_BE38(v14, qword_956E78);
        sub_761CD0();
        sub_B170(v54, v54[3]);
        sub_33964();
        v51 = v13;
        sub_766700();
        v16 = v15;
        (*(v8 + 8))(v11, v48);
        v17 = sub_4C4E08(v12, v16);

        sub_BEB8(v54);
        sub_BD88(&unk_956F00);
        v18 = *(v2 + 72);
        v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v37 = swift_allocObject();
        v20 = v37 + v19;
        v21 = *(v2 + 104);
        v42 = enum case for BadgeDisplayStyle.above(_:);
        (v21)(v37 + v19);
        v44 = v18;
        v39 = enum case for BadgeDisplayStyle.inline(_:);
        (v21)(v20 + v18);
        v22 = v20 + 2 * v18;
        *v22 = v17;
        *(v22 + 8) = 0;
        v43 = enum case for BadgeDisplayStyle.left(_:);
        v21();
        v40 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
        v41 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel;
        v25 = *(v2 + 16);
        v23 = v2 + 16;
        v24 = v25;
        v26 = (v23 + 72);
        v38 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel;
        v48 = v23;
        v27 = (v23 - 8);
        v28 = 3;
        v36[1] = v20;
        v47 = v1;
        while (1)
        {
          v24(v6, v20, v1);
          v33 = v53;
          v24(v53, v6, v1);
          v34 = (*v26)(v33, v1);
          if (v34 == v43)
          {
            v29 = v49;
            v30 = v41;
          }

          else if (v34 == v42)
          {
            v29 = v49;
            v30 = v40;
          }

          else
          {
            if (v34 != v39)
            {
              v35 = *v27;
              v31 = *(v49 + v40);
              v35(v53, v1);
              goto LABEL_9;
            }

            v29 = v49;
            v30 = v38;
          }

          v31 = *(v29 + v30);
LABEL_9:

          swift_unknownObjectRetain();
          v32 = sub_761C90();

          swift_unknownObjectRelease();
          [v31 setAttributedText:v32];

          v1 = v47;
          (*v27)(v6, v47);
          v20 += v44;
          if (!--v28)
          {

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_4C419C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761CE0();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_761D00();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C420();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v31 - v17;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v16);
  sub_75C410();
  v19 = *(v10 + 16);
  v19(v14, v18, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for BadgeDisplayStyle.left(_:))
  {
    v21 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel;
LABEL_7:
    v22 = *&v0[v21];
    goto LABEL_8;
  }

  if (v20 == enum case for BadgeDisplayStyle.above(_:))
  {
    v21 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
    goto LABEL_7;
  }

  if (v20 == enum case for BadgeDisplayStyle.inline(_:))
  {
    v21 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel;
    goto LABEL_7;
  }

  v29 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  v30 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v30;
  v22 = v29;
  v32(v14, v9);
LABEL_8:
  sub_4C469C();
  if (qword_93D228 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v4, qword_956E78);
  (*(v34 + 16))(v35, v23, v4);
  v19(v33, v18, v9);
  v46 = sub_75BB20();
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView];
  v43 = sub_BE70(0, &qword_949D90);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v22;
  v26 = v24;
  sub_761CF0();
  sub_75D650();
  v27 = v39;
  sub_761CA0();

  (*(v40 + 8))(v27, v41);
  (*(v36 + 8))(v8, v37);
  return (*(v10 + 8))(v18, v9);
}

id sub_4C469C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
  sub_75BB20();
  v2 = v1;
  v3 = sub_76A1C0();

  [v2 setHidden:(v3 & 1) == 0];
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel);
  v5 = sub_76A1C0();

  [v4 setHidden:(v5 & 1) == 0];
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel);
  v7 = sub_76A1C0();

  return [v6 setHidden:(v7 & 1) == 0];
}

uint64_t sub_4C47E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_4C47F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

id sub_4C4844()
{
  v1 = sub_75C420();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_75C410();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for BadgeDisplayStyle.left(_:))
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithTwoColumnsLabel;
  }

  else if (v8 == enum case for BadgeDisplayStyle.above(_:))
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
  }

  else
  {
    if (v8 != enum case for BadgeDisplayStyle.inline(_:))
    {
      v12 = *(v2 + 8);
      v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
      v12(v4, v1);
      return v13;
    }

    v9 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_descriptionWithBadgesInlineLabel;
  }

  v10 = *(v0 + v9);

  return v10;
}

uint64_t sub_4C4AF8(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BE70(0, &qword_93F900);
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  sub_BE38(v8, qword_99EAA0);
  v9 = [a2 traitCollection];
  v10 = sub_769E10();

  v17[1] = sub_BE70(0, &qword_9562D0);

  v17[0] = [a2 traitCollection];
  if (qword_93D228 != -1)
  {
    swift_once();
  }

  v11 = sub_761CE0();
  sub_BE38(v11, qword_956E78);
  sub_761CD0();
  sub_B170(v18, v18[3]);
  sub_33964();
  sub_766700();
  (*(v4 + 8))(v6, v3);
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_252F70(inited + 32);
  v15 = sub_769A70();

  sub_BEB8(v18);
  return v15;
}

double sub_4C4E08(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v7 size];
      v11 = v10;

      v6 = v6 + v11 + a2;
      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0.0;
}

char *sub_4C4F08(unint64_t a1)
{
  v25 = sub_758720();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    v19 = (v2 + 8);
    v20 = i;
    v21 = a1;
    while (v23)
    {
      sub_76A770();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v7 = v24;
      sub_75A300();
      v26 = sub_758710();
      v9 = v8;
      (*v19)(v7, v25);
      v10 = sub_75A330();
      v12 = v11;
      v13 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_7BEA0(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_7BEA0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[32 * v15];
      *(v16 + 4) = v26;
      *(v16 + 5) = v9;
      *(v16 + 6) = v10;
      *(v16 + 7) = v12;
      v27 = v13;
      v2 = sub_75A2F0();
      v17 = sub_4C273C(v2);

      sub_10A5CC(v17);

      ++v5;
      a1 = v21;
      if (v6 == v20)
      {
        return v27;
      }
    }

    if (v5 >= *(v22 + 16))
    {
      goto LABEL_16;
    }

    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_4C5190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_4C51D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_4C522C()
{
  result = qword_956F10;
  if (!qword_956F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956F10);
  }

  return result;
}

double sub_4C52C8()
{
  sub_75A5A0();
  sub_4C5388(&qword_956F18, &type metadata accessor for RoundedButton);
  sub_75C750();
  if (!v2)
  {
    return 0.0;
  }

  sub_527DE4();
  v0 = sub_5BC1E8();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_4C5388(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4C53D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_761120();
  (*(a3 + 8))(a2, a3);
  sub_768900();
  sub_768ED0();

  sub_7610B0();
}

void sub_4C5474(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_4C5630(a2, a3);
}

uint64_t sub_4C54EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_4C55E8(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_4C5630(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  sub_761120();
  sub_768880();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    sub_7610A0();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (sub_761110())
      {
        sub_761070();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_127C1C();
  v10 = sub_769460();

  if (!(v10 >> 62))
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = sub_76A860();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_4C58AC(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

unint64_t sub_4C5924()
{
  result = qword_9415F0;
  if (!qword_9415F0)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9415F0);
  }

  return result;
}

double sub_4C597C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_527DE4();
  swift_getObjectType();
  sub_5DF100(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_4C5AC0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_99DFC0);
  sub_BE38(v4, qword_99DFC0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

id sub_4C5D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader) = v7;

    return sub_4F2E74(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4C5F54()
{
  if (qword_93D230 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_99DFC0);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_B1B4(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_7685C0();
  sub_BDD0(v4);
  sub_768EA0();
}

uint64_t sub_4C6178(unint64_t *a1)
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

double *sub_4C63CC()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchBar();
  v1 = objc_msgSendSuper2(&v8, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_BE70(0, &unk_949C60);
    v3 = sub_769460();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v3;
  v4 = UIKeyInputEscape;
  v10._object = 0x80000000007D4410;
  v10._countAndFlagsBits = 0xD000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_75B750(v10, v11);
  v5 = sub_769210();

  v6 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v5];

  sub_769440();
  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return v9;
}

void sub_4C6624()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v29._object = 0x80000000007E4560;
    v29._countAndFlagsBits = 0xD000000000000012;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_75B750(v29, v31);
    v3 = sub_769210();
    sub_BD88(&qword_940F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_BE70(0, &qword_93F900);
    *(inited + 40) = v2;
    v5 = NSFontAttributeName;
    v6 = v2;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_252F70(inited + 32);
    type metadata accessor for Key(0);
    sub_206144();
    isa = sub_7690E0().super.isa;

    [v3 sizeWithAttributes:isa];
    v9 = v8;

    v10 = [v0 searchTextField];
    v11 = [v0 searchTextField];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v10 textRectForBounds:{v13, v15, v17, v19}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    if (ceil(v9) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x80000000007E4580;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_75B750(v30, v32);
    }

    v28 = sub_769210();

    [v0 setPlaceholder:v28];
  }
}

id sub_4C68E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4C6AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&qword_956028);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  if (a2)
  {
    v9 = sub_758DA0();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_75E320();
    sub_10A2C(v8, &qword_956028);
  }
}

void *sub_4C6C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_758DC0();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v7;
  v8 = sub_758DA0();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v9;
  v10 = sub_758CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v79 = a3;
  v19 = sub_75E2E0();
  if (*(v19 + 16) && (v20 = sub_66456C(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = sub_6670E0(a2, v22);
  }

  else
  {

    v23 = 0;
  }

  sub_758CD0();
  v24 = *(v11 + 104);
  v62 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
  v24(v15);
  sub_4C90EC(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_769430();
  v80 = v10;
  sub_769430();
  if (v83 != v81 || (v25 = v23, v84 != v82))
  {
    v25 = sub_76A950() & v23;
  }

  v75 = v11;
  v26 = *(v11 + 8);
  v27 = v15;
  v28 = v80;
  v26(v27, v80);
  v60 = v11 + 8;
  v59 = v26;
  v26(v18, v28);

  v68 = v25 ^ 1;
  sub_758D70();
  if (v29)
  {
    v30 = sub_769210();

    v67 = [objc_opt_self() systemImageNamed:v30];
  }

  else
  {
    v67 = 0;
  }

  v31 = sub_758D90();
  v65 = v32;
  v66 = v31;
  v64 = v23 & 1;
  v63 = sub_BE70(0, &qword_955FA0);
  v33 = v71;
  v34 = *(v71 + 16);
  v35 = v69;
  v61 = a2;
  v36 = v72;
  v34(v69, a2, v72);
  v37 = v76;
  v38 = v77;
  v39 = v73;
  (*(v76 + 16))(v73, a1, v77);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v37 + 80);
  v42 = v70 + v41 + v40;
  v70 = a1;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  *(v44 + 16) = v68 & 1;
  *(v44 + 24) = v79;
  (*(v33 + 32))(v44 + v40, v35, v36);
  (*(v37 + 32))(v44 + v43, v39, v38);
  v45 = v67;

  v46 = sub_76A1F0();
  v47 = v78;
  sub_758CD0();
  v48 = v80;
  v49 = (*(v75 + 88))(v47, v80);
  if (v49 == enum case for PageFacets.Facet.DisplayType.toggle(_:))
  {
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v50 = v46;
    v85._countAndFlagsBits = sub_758D40();
    sub_769370(v85);

    v51 = sub_769210();

    [v50 setAccessibilityIdentifier:v51];

    goto LABEL_18;
  }

  if (v49 == v62 || v49 == enum case for PageFacets.Facet.DisplayType.multipleSelection(_:))
  {
    v52 = sub_758D60();
    if (!v53)
    {
LABEL_19:

      return v46;
    }

    v54 = v52;
    v55 = v53;
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v56 = v46;
    v86._countAndFlagsBits = v54;
    v86._object = v55;
    sub_769370(v86);

    v51 = sub_769210();

    [v56 setAccessibilityIdentifier:v51];

LABEL_18:
    goto LABEL_19;
  }

  v59(v47, v48);
  return v46;
}

uint64_t sub_4C7318(uint64_t a1)
{
  v2 = sub_758DA0();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_758DC0();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_758CA0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_947488);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_758DD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_75E280();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10A2C(v14, &qword_947488);
    return 0;
  }

  v71 = v16;
  (*(v16 + 32))(v18, v14, v15);
  result = sub_758CB0();
  v51 = *(result + 16);
  if (!v51)
  {

    v22 = v71;
LABEL_41:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v50 = v15;
  v20 = 0;
  v55 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v54 = v59 + 16;
  v64 = v68 + 16;
  v21 = (v68 + 8);
  v79 = v75 + 16;
  v80 = (v75 + 8);
  v52 = (v59 + 8);
  v81 = v7;
  v22 = v71;
  v57 = v8;
  v69 = v18;
  v70 = v10;
  v53 = result;
  v56 = (v68 + 8);
  while (v20 < *(result + 16))
  {
    v24 = *(v59 + 72);
    v58 = v20;
    (*(v59 + 16))(v60, v55 + v24 * v20, v61);
    result = sub_758C90();
    v67 = *(result + 16);
    if (v67)
    {
      v25 = 0;
      v26 = *(v68 + 80);
      v65 = result;
      v66 = result + ((v26 + 32) & ~v26);
      while (v25 < *(result + 16))
      {
        (*(v68 + 16))(v10, v66 + *(v68 + 72) * v25, v8);
        if ((sub_758CF0() & 1) == 0)
        {
          v63 = v25;
          v27 = sub_75E2E0();
          if (*(v27 + 16))
          {
            v28 = sub_66456C(v10);
            if (v29)
            {
              v30 = *(*(v27 + 56) + 8 * v28);

              result = sub_758DB0();
              v31 = result;
              v74 = *(result + 16);
              if (v74)
              {
                v32 = 0;
                v72 = result + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                v73 = result;
                v77 = v30 + 56;
                v78 = v30;
                while (v32 < *(v31 + 16))
                {
                  v33 = *(v75 + 72);
                  v34 = *(v75 + 16);
                  v34(v7, v72 + v33 * v32, v2);
                  v35 = sub_758CE0();
                  v36 = *(v35 + 16);
                  v76 = v32;
                  if (v36 && (sub_4C90EC(&qword_956018, &type metadata accessor for PageFacets.Facet.Option), v37 = sub_769150(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
                  {
                    v40 = ~v38;
                    do
                    {
                      v34(v4, *(v35 + 48) + v39 * v33, v2);
                      sub_4C90EC(&qword_956020, &type metadata accessor for PageFacets.Facet.Option);
                      v41 = sub_7691C0();
                      (*v80)(v4, v2);
                      if (v41)
                      {
                        break;
                      }

                      v39 = (v39 + 1) & v40;
                    }

                    while (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v78;
                  if (*(v78 + 16))
                  {
                    sub_4C90EC(&qword_956018, &type metadata accessor for PageFacets.Facet.Option);
                    v7 = v81;
                    v43 = sub_769150();
                    v44 = -1 << *(v42 + 32);
                    v45 = v43 & ~v44;
                    if ((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                    {
                      v46 = ~v44;
                      while (1)
                      {
                        v34(v4, *(v78 + 48) + v45 * v33, v2);
                        sub_4C90EC(&qword_956020, &type metadata accessor for PageFacets.Facet.Option);
                        v47 = sub_7691C0();
                        v48 = *v80;
                        (*v80)(v4, v2);
                        if (v47)
                        {
                          break;
                        }

                        v45 = (v45 + 1) & v46;
                        if (((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                        {
                          v7 = v81;
                          goto LABEL_36;
                        }
                      }

                      v7 = v81;
                      result = (v48)(v81, v2);
                      v10 = v70;
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      if ((v41 & 1) == 0)
                      {

                        (*v56)(v10, v57);
                        (*v52)(v60, v61);
                        (*(v22 + 8))(v18, v50);
                        return 1;
                      }
                    }

                    else
                    {
                      v48 = *v80;
LABEL_36:
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      result = (v48)(v7, v2);
                      v10 = v70;
                    }
                  }

                  else
                  {
                    v7 = v81;
                    result = (*v80)(v81, v2);
                    v10 = v70;
                    v22 = v71;
                    v18 = v69;
                    v31 = v73;
                  }

                  v32 = v76 + 1;
                  if (v76 + 1 == v74)
                  {

                    v8 = v57;
                    v21 = v56;
                    goto LABEL_11;
                  }
                }

                __break(1u);
                break;
              }
            }
          }

LABEL_11:
          v25 = v63;
        }

        ++v25;
        (*v21)(v10, v8);
        result = v65;
        if (v25 == v67)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:

    v23 = v58 + 1;
    (*v52)(v60, v61);
    v20 = v23;
    result = v53;
    if (v23 == v51)
    {

      v15 = v50;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Class sub_4C7CF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v129 = a4;
  v130 = a3;
  v97 = sub_759950();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_758CC0();
  v125 = *(v6 - 8);
  __chkstk_darwin(v6);
  v127 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v93 - v9;
  v123 = sub_758DC0();
  v99 = *(v123 - 8);
  __chkstk_darwin(v123);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_758CA0();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_947488);
  __chkstk_darwin(v13 - 8);
  v128 = (&v93 - v14);
  v98 = sub_758DD0();
  v109 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75EF50();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = _swiftEmptyArrayStorage;
  (*(v17 + 104))(v20, enum case for ArcadeSeeAllGamesPage.DisplayStyle.default(_:), v16, v18);
  sub_4C90EC(&qword_947420, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_769430();
  sub_769430();
  if (v131 != v133 || v132 != v134)
  {
    sub_76A950();
  }

  (*(v17 + 8))(v20, v16);

  v138._object = 0x80000000007E4630;
  v138._countAndFlagsBits = 0xD000000000000021;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  sub_75B750(v138, v142);
  v21 = sub_769210();

  v22 = [objc_opt_self() systemImageNamed:v21];

  sub_BE70(0, &qword_955FA0);

  v23 = sub_76A1F0();
  sub_769440();
  if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v93 = v23;
    sub_769500();
    v24 = v135;
    v25 = v128;
    sub_75E280();
    v23 = v109;
    v26 = v98;
    if (v109[6](v25, 1, v98) == 1)
    {
      sub_10A2C(v25, &qword_947488);
      goto LABEL_74;
    }

    (*(v23 + 32))(v94, v25, v26);
    v27 = sub_758CB0();
    v105 = *(v27 + 16);
    if (!v105)
    {
      break;
    }

    v28 = 0;
    v104 = v27 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v103 = v108 + 16;
    v102 = v108 + 8;
    v122 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
    v121 = (v125 + 104);
    v120 = (v125 + 8);
    v29 = (v99 + 8);
    v117 = v6;
    v30 = v123;
    v101 = v27;
    v118 = (v99 + 8);
    v119 = v99 + 16;
    v100 = a1;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        goto LABEL_79;
      }

      v124 = v24;
      v31 = v108;
      v32 = *(v108 + 72);
      v113 = v28;
      v33 = v106;
      v34 = v107;
      (*(v108 + 16))(v106, v104 + v32 * v28, v107);
      v35 = sub_758C90();
      (*(v31 + 8))(v33, v34);
      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

      v24 = v124;
LABEL_10:
      v28 = v113 + 1;
      v23 = v109;
      v27 = v101;
      if (v113 + 1 == v105)
      {

        v26 = v98;
        goto LABEL_73;
      }
    }

    v23 = 0;
    v37 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v110 = v35;
    v130 = v35 + v37;
    v38 = *(v99 + 72);
    v128 = *(v99 + 16);
    v129 = v38;
    v24 = v124;
    v111 = v36;
    v128(v11, v130, v30);
    while (1)
    {
      if (sub_758CF0())
      {
        goto LABEL_16;
      }

      v124 = v24;
      v125 = v23;
      v39 = sub_758DB0();
      v40 = *(v39 + 16);
      if (v40)
      {
        v131 = _swiftEmptyArrayStorage;
        sub_76A7C0();
        v41 = *(sub_758DA0() - 8);
        v42 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v43 = *(v41 + 72);
        do
        {
          sub_4C6C2C(v11, v42, a1);
          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
          v42 += v43;
          --v40;
        }

        while (v40);

        v44 = v131;
        v6 = v117;
      }

      else
      {

        v44 = _swiftEmptyArrayStorage;
      }

      sub_758CD0();
      (*v121)(v127, v122, v6);
      sub_4C90EC(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType);
      sub_769430();
      sub_769430();
      if (v131 == v133 && v132 == v134)
      {
        v45 = *v120;
        (*v120)(v127, v6);
        v45(v126, v6);

        goto LABEL_28;
      }

      v46 = sub_76A950();
      v47 = *v120;
      (*v120)(v127, v6);
      v47(v126, v6);

      if ((v46 & 1) == 0)
      {
        break;
      }

LABEL_28:
      if (sub_758D00())
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = (&dword_0 + 1);
        if (!(v44 >> 62))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_758D50();
        v49 = v52;
        v50 = 0;
        if (!(v44 >> 62))
        {
LABEL_32:

          sub_76A960();
          sub_BE70(0, &qword_944330);
          v51 = v44;
          goto LABEL_33;
        }
      }

      sub_BE70(0, &qword_944330);

      v51 = sub_76A850();

LABEL_33:

      sub_BE70(0, &qword_944338);
      v139._countAndFlagsBits = v48;
      v139._object = v49;
      v143.value._countAndFlagsBits = 0;
      v143.value._object = 0;
      v136.value.super.isa = 0;
      v136.is_nil = 0;
      v53.value = v50;
      v54.super.super.isa = sub_769E30(v139, v143, v136, v53, 0xFFFFFFFFFFFFFFFFLL, v51, v92).super.super.isa;
      v55 = sub_758D10();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        v131 = 0x2D7465636166;
        v132 = 0xE600000000000000;
        v59 = v54.super.super.isa;
        v140._countAndFlagsBits = v57;
        v140._object = v58;
        sub_769370(v140);

        v60 = sub_769210();

        [(objc_class *)v59 setAccessibilityIdentifier:v60];
      }

      v61 = v54.super.super.isa;
      sub_769440();
      v29 = v118;
      if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v24 = v135;
      v30 = v123;
      v23 = v125;
LABEL_16:
      ++v23;
      (*v29)(v11, v30);
      if (v23 == v36)
      {

        goto LABEL_10;
      }

      v128(v11, v130 + v129 * v23, v30);
    }

    if (v44 >> 62)
    {
      sub_BE70(0, &qword_944330);

      v62 = sub_76A850();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_76A960();
      sub_BE70(0, &qword_944330);

      v62 = v44;
    }

    v24 = v124;
    v63 = v62 >> 62;
    v116 = v62;
    if (v62 >> 62)
    {
      v64 = sub_76A860();
    }

    else
    {
      v64 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
    }

    v23 = v24 >> 62;
    if (!(v24 >> 62))
    {
      v65 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      v66 = v65 + v64;
      if (__OFADD__(v65, v64))
      {
        goto LABEL_77;
      }

LABEL_44:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v23)
        {
          v67 = v24 & 0xFFFFFFFFFFFFFF8;
          if (v66 > *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
LABEL_50:
            v24 = sub_76A780();
            v67 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v114 = v64;
          v23 = *(v67 + 16);
          v68 = (*(v67 + 24) >> 1) - v23;
          v115 = v67;
          if (v63)
          {
            v6 = v116;
            v71 = sub_76A860();
            if (!v71)
            {
              goto LABEL_14;
            }

            v72 = v71;
            v73 = sub_76A860();
            if (v68 < v73)
            {
              goto LABEL_81;
            }

            if (v72 < 1)
            {
              goto LABEL_83;
            }

            v112 = v73;
            v124 = v24;
            v74 = v115 + 8 * v23 + 32;
            sub_4C8E5C();
            v75 = 0;
            v76 = v116;
            do
            {
              sub_BD88(&qword_956FD0);
              v77 = sub_10B6BC(&v131, v75, v76);
              v79 = *v78;
              (v77)(&v131, 0);
              *(v74 + 8 * v75++) = v79;
            }

            while (v72 != v75);
            v6 = v117;
            a1 = v100;
            v36 = v111;
            v24 = v124;
            v70 = v112;
LABEL_61:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            if (v70 < v114)
            {
              goto LABEL_78;
            }

            if (v70 > 0)
            {
              v80 = *(v115 + 16);
              v81 = __OFADD__(v80, v70);
              v82 = v80 + v70;
              if (v81)
              {
                goto LABEL_80;
              }

              *(v115 + 16) = v82;
            }
          }

          else
          {
            v69 = *(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8));
            if (v69)
            {
              v6 = v117;
              if (v68 < v69)
              {
                goto LABEL_82;
              }

              sub_BE70(0, &qword_944330);
              v70 = v69;
              swift_arrayInitWithCopy();
              goto LABEL_61;
            }

LABEL_14:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            v6 = v117;
            if (v114 > 0)
            {
              goto LABEL_78;
            }
          }

          v135 = v24;
          goto LABEL_16;
        }
      }

      else if (!v23)
      {
        goto LABEL_50;
      }

      sub_76A860();
      goto LABEL_50;
    }

    v83 = sub_76A860();
    v66 = v83 + v64;
    if (!__OFADD__(v83, v64))
    {
      goto LABEL_44;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    sub_7694C0();
  }

LABEL_73:
  (*(v23 + 8))(v94, v26);
LABEL_74:
  v84 = v97;
  v85 = v96;
  v86 = v95;
  v87 = sub_4C7318(a1);
  v88 = &enum case for SystemImage.line3HorizontalDecreaseCircleFill(_:);
  if ((v87 & 1) == 0)
  {
    v88 = &enum case for SystemImage.line3HorizontalDecreaseCircle(_:);
  }

  (*(v85 + 104))(v86, *v88, v84);
  sub_BE70(0, &qword_944338);
  v137.value.super.isa = sub_759930();
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v144.value._countAndFlagsBits = 0;
  v144.value._object = 0;
  v137.is_nil = 0;
  v89.value = (&dword_0 + 1);
  isa = sub_769E30(v141, v144, v137, v89, 0xFFFFFFFFFFFFFFFFLL, v24, v92).super.super.isa;

  (*(v85 + 8))(v86, v84);
  return isa;
}

unint64_t sub_4C8E5C()
{
  result = qword_956FD8;
  if (!qword_956FD8)
  {
    sub_133D8(&qword_956FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956FD8);
  }

  return result;
}

uint64_t sub_4C8EC0()
{
  v1 = sub_758DA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_758DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_4C9010(uint64_t a1)
{
  v3 = *(sub_758DA0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_758DC0();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_4C6AEC(a1, v5, v6, v1 + v4);
}

uint64_t sub_4C90EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4C9134()
{
  v1 = sub_758FD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_957130);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore);
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  v16 = v13;
  v17 = sub_769210();
  [v15 setObject:v16 forKey:v17];

  sub_757290();
  v18 = sub_7572A0();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v34(v10, 0, 1, v18);
  sub_4CB518(v10);
  sub_761210();
  v20 = sub_758FA0();
  (*(v2 + 8))(v4, v1);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = [v11 ams_activeiTunesAccount];
  v22 = [v21 ams_DSID];

  v23 = [v14 standardUserDefaults];
  v24 = sub_38F7F4();

  if (v22)
  {
    if (v24)
    {
      sub_BE70(0, &qword_945820);
      v25 = v22;
      v26 = sub_76A1C0();

      v27 = v26 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v27 = 1;
  }

  else
  {
    if (v24)
    {
      v27 = 1;
      goto LABEL_7;
    }

    v27 = 0;
  }

LABEL_10:
  v28 = [v14 standardUserDefaults];
  v29 = v35;
  sub_38F698(v35);

  LODWORD(v28) = (*(v19 + 48))(v29, 1, v18);
  sub_10A2C(v29, &unk_957130);
  if (v28 == 1 || (v27 & 1) != 0)
  {
    v30 = v22;
    v31 = [v14 standardUserDefaults];
    v32 = v30;
    v33 = sub_769210();
    [v31 setObject:v32 forKey:v33];

    sub_757290();
    v34(v10, 0, 1, v18);
    sub_4CB6F8(v10);
  }
}

uint64_t sub_4C95A4()
{
  v1 = sub_BD88(&unk_957130);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_769210();
  [v7 setObject:v8 forKey:v9];

  sub_757290();
  v10 = sub_7572A0();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_4CB8D8(v4);
}

uint64_t sub_4C971C()
{
  v1 = sub_BD88(&unk_957130);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_769210();
  [v7 setObject:v8 forKey:v9];

  sub_757290();
  v10 = sub_7572A0();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_4CB268(v4);
}

void sub_4C9894(uint64_t a1)
{
  v2 = sub_760B50();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v11[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_canCreateFamily] = v8;
    }
  }

  else if (v7 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = *v6;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v13[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v14[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isFamilyOrganizer] = v12;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_4C9B28()
{
  if (qword_93C308 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_99A548);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_B1B4(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_7685C0();
  sub_10A2C(v4, &unk_93FBD0);
  sub_768EA0();
}

uint64_t sub_4C9CF4(uint64_t a1, void *a2)
{
  v5 = sub_BD88(&unk_957130);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_7572A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_4CB448(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &unk_957130);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_BE70(0, &qword_94AB00);
  if (sub_76A1C0())
  {
    sub_757290();
    sub_757210();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_4C9FB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_BD88(&unk_957130);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = sub_758FD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x80000000007CE0B0 == a2 || (sub_76A950() & 1) != 0)
  {
    sub_761210();
    v14 = sub_758FA0();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x80000000007CE0D0 == a2 || (sub_76A950() & 1) != 0)
  {
    sub_761210();
    v14 = sub_758FC0();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (sub_76A950() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x80000000007E46D0 == a2 || (sub_76A950() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (sub_76A950() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x80000000007CD790 == a2 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000000007E4810 == a2 || (sub_76A950() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x80000000007E4830 == a2 || (sub_76A950() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_38EF9C(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_38F0F8();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x80000000007E4850 == a2 || (sub_76A950() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_38F1F0(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_38F34C();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x80000000007E4870 == a2 || (sub_76A950() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_38F444(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_38F5A0();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x80000000007E48A0 == a2 || (sub_76A950() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_38F698(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_38F7F4();
LABEL_36:
    v24 = v23;

    v25 = sub_4C9CF4(v9, v24);
    v27 = v26;

    sub_10A2C(v9, &unk_957130);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x80000000007E48D0 != a2) && (sub_76A950() & 1) == 0)
  {
    v46 = sub_4CBAB8();
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_38F444(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_38F5A0();

  v38 = COERCE_DOUBLE(sub_4C9CF4(v9, v37));
  LOBYTE(v36) = v39;

  sub_10A2C(v9, &unk_957130);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_38F698(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_38F7F4(), v41, v43 = COERCE_DOUBLE(sub_4C9CF4(v9, v42)), v45 = v44, v42, sub_10A2C(v9, &unk_957130), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_4CA8F4()
{
  v0 = sub_768380();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7683C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v8 = sub_769970();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_4CB4F0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_893F00;
  v10 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_4CAB8C()
{
  v0 = sub_75FAC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_75FAB0();
    sub_75FAA0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = sub_BE70(0, &qword_940340);
    v7 = sub_769970();
    v8[3] = v6;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = v7;
    sub_768F10();

    (*(v1 + 8))(v3, v0);
    sub_BEB8(v8);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate()
{
  result = qword_957120;
  if (!qword_957120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4CB1D8()
{
  result = sub_768940();
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

uint64_t sub_4CB268(uint64_t a1)
{
  v2 = sub_BD88(&unk_957130);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_4CB448(a1, v7);
  sub_4CB448(v7, v4);
  v9 = sub_7572A0();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_757220().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_769210();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10A2C(a1, &unk_957130);
  return sub_10A2C(v7, &unk_957130);
}

uint64_t sub_4CB448(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_957130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4CB4B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4CB4F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4CB518(uint64_t a1)
{
  v2 = sub_BD88(&unk_957130);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_4CB448(a1, v7);
  sub_4CB448(v7, v4);
  v9 = sub_7572A0();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_757220().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_769210();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10A2C(a1, &unk_957130);
  return sub_10A2C(v7, &unk_957130);
}

uint64_t sub_4CB6F8(uint64_t a1)
{
  v2 = sub_BD88(&unk_957130);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_4CB448(a1, v7);
  sub_4CB448(v7, v4);
  v9 = sub_7572A0();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_757220().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_769210();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10A2C(a1, &unk_957130);
  return sub_10A2C(v7, &unk_957130);
}

uint64_t sub_4CB8D8(uint64_t a1)
{
  v2 = sub_BD88(&unk_957130);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_4CB448(a1, v7);
  sub_4CB448(v7, v4);
  v9 = sub_7572A0();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_757220().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_769210();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10A2C(a1, &unk_957130);
  return sub_10A2C(v7, &unk_957130);
}

uint64_t sub_4CBAB8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_769240();
  }

  v2 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v3 = sub_769210();
  v4 = sub_769210();

  v5 = [v2 initWithPropertyName:v3 bundleID:v4];

  v12[0] = 0;
  v6 = [v5 fetchEligibilityWithError:v12];
  if (v12[0])
  {
    v7 = qword_93C308;
    v8 = v12[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_768FF0();
    sub_BE38(v9, qword_99A548);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v12[3] = sub_BE70(0, &unk_957140);
    v12[0] = v8;
    v10 = v8;
    sub_7685C0();
    sub_10A2C(v12, &unk_93FBD0);
    sub_768EA0();
  }

  if (v6 == &dword_0 + 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 != &dword_0 + 1);
  }
}

uint64_t sub_4CBDBC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_7667D0();
    swift_getWitnessTable();
    v0 = sub_767490();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

void sub_4CBFA4(char *a1)
{
  (*(*(*(&stru_20.filesize + (swift_isaMask & *a1)) - 8) + 8))(&a1[*(&stru_20.nsects + (swift_isaMask & *a1))], *(&stru_20.filesize + (swift_isaMask & *a1)));
  sub_F704(*&a1[*&stru_68.sectname[swift_isaMask & *a1]]);

  swift_unknownObjectRelease();

  v2 = *(&stru_68.reserved2 + (swift_isaMask & *a1));
  swift_getAssociatedTypeWitness();
  sub_7667D0();
  swift_getWitnessTable();
  v3 = sub_767490();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *&a1[*&stru_B8.segname[(swift_isaMask & *a1) + 8]];
}

uint64_t sub_4CC1DC()
{
  result = [v0 isTracking];
  if ((result & 1) == 0)
  {
    result = [v0 isDragging];
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      sub_7667D0();
      swift_getWitnessTable();
      sub_767490();
      sub_767430();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_4CC300(void *a1)
{
  v2 = sub_756CE0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v6 = a1;
  sub_4CC1DC();

  return (*(v3 + 8))(v5, v2);
}

id sub_4CC3E8(char a1)
{
  [v1 setContentSize:{0.0, 0.0}];
  *(v1 + *(&stru_68.reloff + (swift_isaMask & *v1))) = a1;
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_4CC474(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == &dword_0 + 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *(&stru_68.reloff + (swift_isaMask & *v1))) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_4CC5C0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_4CC474(a3);
}

id sub_4CC62C(void *a1)
{
  v1 = a1;
  v2 = sub_4CC660();

  return v2;
}

id sub_4CC660()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

void sub_4CC698(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_4CC6EC(a3);
}

id sub_4CC6EC(id a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "semanticContentAttribute");
  v7.receiver = v1;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, "setSemanticContentAttribute:", a1);
  if (v4 != a1)
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == &dword_0 + 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *(&stru_68.reloff + (swift_isaMask & *v1))) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_4CC814(void *a1)
{
  sub_BD88(&qword_941C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77B6D0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000040;
  *(v2 + 40) = 0x80000000007E4B50;
  v3 = a1;
  sub_76A690();
}

double sub_4CC8C4(void *a1)
{
  v1 = a1;
  v2 = sub_4CC908();

  return v2;
}

CGFloat sub_4CC908()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *(&stru_20.filesize + (swift_isaMask & *v0));
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, &v0[*(&stru_20.nsects + (v2 & v1))], v3);
  (*(*(&stru_20.maxprot + (v2 & v1)) + 24))(v8, v3);
  (*(v4 + 8))(v6, v3);
  return UIViewNoIntrinsicMetric;
}

CGFloat sub_4CCA9C(uint64_t a1, CGFloat Width)
{
  v4 = swift_isaMask & *v2;
  v5 = *(&stru_20.filesize + v4);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - v8;
  if (Width < COERCE_DOUBLE(1))
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v7 = swift_isaMask & *v2;
  }

  (*(v6 + 16))(v9, &v2[*(v7 + 96)], v5);
  (*(*(v4 + 88) + 24))(v20, v5);
  (*(v6 + 8))(v9, v5);
  return Width;
}

double sub_4CCCE0(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = sub_4CCA9C(v3, a2);

  return v4;
}

uint64_t sub_4CCD34()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *(&stru_20.filesize + (swift_isaMask & *v0));
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = *(&stru_20.nsects + (v3 & v2));
  v9 = *(v5 + 16);
  v9(v15 - v6, &v1[v8], v4);
  v10 = *(&stru_20.maxprot + (v3 & v2));
  v11 = (*(v10 + 32))(v4, v10);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v9(v7, &v1[v8], v4);
  (*(v10 + 24))(v15, v4, v10);
  result = (v12)(v7, v4);
  v14 = ceil(v11 / v15[9]);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_4CCF38(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(&stru_20.filesize + v3);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(a1).n128_u64[0];
  v8 = v42 - v7;
  result = [v1 contentSize];
  if (v11 == 0.0 && v10 == 0.0)
  {
    v12 = sub_4CCD34();
    v13 = *(&stru_20.nsects + (swift_isaMask & *v1));
    v47 = *(v5 + 16);
    v42[1] = v5 + 16;
    v43 = v13;
    v14 = v13;
    v47(v8, v1 + v13, v4);
    v49 = *(v3 + 88);
    v15 = v49 + 24;
    v16 = *(v49 + 24);
    v16(v50, v4);
    v48 = v15;
    v17 = v16;
    v18 = *(v5 + 8);
    v44 = v16;
    v45 = v18;
    v18(v8, v4);
    v19 = v50[9];
    v20 = v47;
    v47(v8, v1 + v14, v4);
    v17(v51, v4, v49);
    v21 = v45;
    v45(v8, v4);
    v46 = v5 + 8;
    v22 = *&v51[1];
    v20(v8, v1 + v43, v4);
    v23 = v44;
    v44(v52, v4, v49);
    v21(v8, v4);
    v24 = v22 + *&v52[3] + 0.0;
    v25 = v43;
    v26 = v20;
    v20(v8, v1 + v43, v4);
    v23(v53, v4, v49);
    v27 = v45;
    v45(v8, v4);
    v28 = v24 + *&v53[4] * v12;
    v26(v8, v1 + v25, v4);
    v29 = v49;
    v30 = v44;
    v44(v54, v4, v49);
    v27(v8, v4);
    v31 = v28 + (v12 + -1.0) * *&v54[6];
    v32 = v47;
    v47(v8, v1 + v25, v4);
    v30(v55, v4, v29);
    v33 = v45;
    v45(v8, v4);
    v34 = v55[0];
    v32(v8, v1 + v25, v4);
    v35 = v49;
    v36 = v44;
    v44(v56, v4, v49);
    v33(v8, v4);
    v37 = v34 + *&v56[2] + 0.0;
    v38 = v43;
    v47(v8, v1 + v43, v4);
    v36(v57, v4, v35);
    v39 = v45;
    v45(v8, v4);
    v40 = v37 + *&v57[5] * v19;
    v47(v8, v1 + v38, v4);
    v44(v58, v4, v49);
    v39(v8, v4);
    result = sub_4CD4C0([v1 setContentSize:{v31, v40 + (v19 + -1.0) * *&v58[7]}]);
    v41 = (v1 + *(&stru_68.flags + (swift_isaMask & *v1)));
    if ((v41[2] & 1) == 0)
    {
      result = [v2 setContentOffset:{*v41, v41[1]}];
      *v41 = 0.0;
      v41[1] = 0.0;
      *(v41 + 16) = 1;
      if (*(v2 + *&stru_68.segname[(swift_isaMask & *v2) + 16]))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_75ADD0();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_4CD4C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *(&stru_20.filesize + (swift_isaMask & *v1));
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v26 - v8;
  v10 = *(v6 + 16);
  v28 = *(&stru_20.nsects + (v4 & v3));
  v29 = v10;
  (v10)(v9, v2 + v28, v5, v7);
  v11 = *(&stru_20.maxprot + (v4 & v3));
  v12 = *(v11 + 24);
  v12(v30, v5, v11);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *&v30[4] + *&v30[6];
  [v2 frame];
  Width = CGRectGetWidth(v33);
  result = [v2 contentInset];
  v18 = ceil((Width - v17) / v14);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v13;
  v19 = v12;
  v20 = v18;
  v21 = *(v2 + *&stru_68.segname[(swift_isaMask & *v2) - 8]);
  if (*(v2 + *&stru_68.segname[swift_isaMask & *v2]) == 1)
  {
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (!v22)
    {
      if (v23 + 0x4000000000000000 >= 0)
      {
        v24 = 2 * v23;
        v29(v9, v2 + v28, v5);
        v19(v31, v5, v11);
        result = v27(v9, v5);
        if ((v24 * v32) >> 64 == (v24 * v32) >> 63)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = 2 * v21;
  v29(v9, v2 + v28, v5);
  v19(v31, v5, v11);
  result = v27(v9, v5);
  if ((v25 * v32) >> 64 != (v25 * v32) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v20, v25 * v32))
  {
LABEL_12:
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    sub_7667D0();
    swift_getWitnessTable();
    sub_767490();
    sub_767440();
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_4CD8E0(uint64_t a1, double a2)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *(&stru_20.filesize + (swift_isaMask & *v2));
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47 - v13;
  [v3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 16);
  v54 = *(&stru_20.nsects + (swift_isaMask & *v3));
  v55 = v23;
  v23(v14, v3 + v54, v7);
  v24 = *(&stru_20.maxprot + (v6 & v5));
  v25 = *(v24 + 32);
  v26 = v25(v7, v24);
  v53 = *(v8 + 8);
  v53(v14, v7);
  if (v26 >= 1)
  {
    v59.origin.x = v16;
    v59.origin.y = v18;
    v59.size.width = v20;
    v59.size.height = v22;
    if (!CGRectIsEmpty(v59))
    {
      v50 = v24 + 32;
      v51 = v25;
      v48 = v10;
      v27 = v54;
      v55(v14, v3 + v54, v7);
      v28 = *(v24 + 24);
      v28(v56, v7, v24);
      v29 = v53;
      v53(v14, v7);
      v30 = v56[4] + v56[6];
      v31 = v3 + v27;
      v32 = v55;
      v55(v14, v31, v7);
      v28(v57, v7, v24);
      v29(v14, v7);
      v49 = v57[9];
      v32(v14, v3 + v54, v7);
      v28(v58, v7, v24);
      v29(v14, v7);
      v33 = *&v58[3];
      v34 = 0.0;
      if (a2 >= 0.0)
      {
        v34 = a2;
      }

      v35 = v34 + *&v58[1];
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      v37 = floor(v35 / v30);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = floor((v35 + Width - v33) / v30);
          if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v38 > -9.22337204e18)
            {
              if (v38 < 9.22337204e18)
              {
                v39 = v37;
                v40 = v38;
                if (v52)
                {
                  v41 = *(v3 + *&stru_68.segname[(swift_isaMask & *v3) - 8]);
                  v42 = __OFSUB__(v39, v41);
                  v39 -= v41;
                  v43 = v51;
                  if (v42)
                  {
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v42 = __OFADD__(v40, v41);
                  v40 += v41;
                  if (v42)
                  {
LABEL_29:
                    __break(1u);
                    return;
                  }

                  v44 = v49;
                }

                else
                {
                  v43 = v51;
                  v44 = v49;
                }

                if ((v39 * v44) >> 64 == (v39 * v44) >> 63)
                {
                  v52 = v39 * v44;
                  v45 = v3 + v54;
                  v46 = v48;
                  v55(v48, v45, v7);
                  v43(v7, v24);
                  v53(v46, v7);
                  if ((v40 * v44) >> 64 == (v40 * v44) >> 63)
                  {
                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_4CDE30()
{
  v1 = swift_isaMask & *v0;
  v2 = *(&stru_20.filesize + v1);
  v3 = *(v2 - 8);
  result = __chkstk_darwin();
  v6 = v32 - v5;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v0;
  v8 = *(v1 + 96);
  v10 = v3 + 16;
  v9 = *(v3 + 16);
  v38 = result;
  v43 = v9;
  v9(v6, v0 + v8, v2);
  v11 = *(v1 + 88);
  v12 = (*(v11 + 32))(v2, v11);
  v14 = *(v3 + 8);
  v13 = v3 + 8;
  v41 = v14;
  result = (v14)(v6, v2);
  if (v12 <= v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43(v6, v7 + v8, v2);
  v36 = v10;
  v42 = v8;
  v15 = v7;
  v39 = v7;
  v40 = v13;
  v16 = *(v11 + 24);
  v16(v44, v2, v11);
  v17 = v41;
  v41(v6, v2);
  v18 = v15 + v42;
  v19 = v43;
  v43(v6, v18, v2);
  v16(v45, v2, v11);
  v17(v6, v2);
  v20 = v42;
  v19(v6, &v39[v42], v2);
  v16(v46, v2, v11);
  result = (v41)(v6, v2);
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v47;
  v21 = v39;
  v43(v6, &v39[v20], v2);
  v34 = v16;
  v35 = v11 + 24;
  v16(v48, v2, v11);
  v22 = v41;
  result = (v41)(v6, v2);
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32[1] = v38 % v49;
  v33 = v38 / v33;
  v37 = v11;
  if (v33 < 1)
  {
    v24 = v42;
    v26 = v43;
    v25 = v34;
    if (v38 % v49)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = v38 % v49;
    v43(v6, &v21[v42], v2);
    v34(v50, v2, v11);
    v22(v6, v2);
    if (v23)
    {
      v24 = v42;
      v21 = v39;
      v25 = v34;
LABEL_9:
      v43(v6, &v21[v24], v2);
      v25(v51, v2, v37);
      v41(v6, v2);
      v24 = v42;
      v26 = v43;
      v43(v6, &v21[v42], v2);
      goto LABEL_12;
    }

    v24 = v42;
    v26 = v43;
    v21 = v39;
    v25 = v34;
  }

  v26(v6, &v21[v24], v2);
LABEL_12:
  v25(v52, v2, v37);
  result = (v41)(v6, v2);
  if ((v53 & 1) == 0)
  {
    return result;
  }

  v26(v6, &v21[v24], v2);
  v27 = v37;
  v25(v54, v2, v37);
  v28 = v41;
  result = (v41)(v6, v2);
  if (!v55)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if ((v38 + 1) % v55)
  {
    v29 = v27;
    v30 = v21;
    v31 = v29;
    v43(v6, &v30[v42], v2);
    v25(v56, v2, v31);
    return v28(v6, v2);
  }

  return result;
}

void sub_4CE408()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(&stru_20.filesize + (swift_isaMask & *v1));
  v59 = *(v3 - 8);
  __chkstk_darwin(ObjectType);
  v62 = v47 - v4;
  v7 = *(&stru_20.maxprot + (v6 & v5));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  *&v8 = __chkstk_darwin(AssociatedTypeWitness).n128_u64[0];
  v65 = v47 - v9;
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v69, "layoutSubviews", v8);
  sub_4CCF38(v10);
  [v1 contentOffset];
  sub_4CD8E0(1, v11);
  v13 = v12;
  v15 = v14;
  v16 = *&stru_B8.sectname[swift_isaMask & *v1];
  swift_beginAccess();
  v57 = v16;
  v17 = *(v1 + v16);
  v63 = v7;
  v61 = v3;
  v56 = swift_getAssociatedTypeWitness();
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v48 = *(&stru_68.reloff + (swift_isaMask & *v1));
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (v20)
  {
LABEL_10:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(*(v17 + 48) + ((v22 << 9) | (8 * v24)));
    if ((*(v1 + v48) & 1) == 0 && v25 >= v13 && v25 < v15)
    {
      continue;
    }

    sub_4CEB64(v25);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_10;
    }
  }

  if (v13 == v15)
  {
LABEL_17:
    *(v1 + v48) = 0;
    return;
  }

  if (v15 < v13)
  {
    goto LABEL_35;
  }

  if (v13 < v15)
  {
    v27 = *v1;
    v66 = *(&stru_20.nsects + (swift_isaMask & *v1));
    v28 = v1 + *&stru_B8.segname[(swift_isaMask & v27) - 8];
    v47[0] = v1 + *&stru_B8.segname[swift_isaMask & v27];
    v60 = (v59 + 2);
    v53 = v63 + 40;
    ++v59;
    v52 = v63 + 56;
    v47[1] = v63 + 72;
    v51 = (v64 + 8);
    v54 = v15;
    v49 = v1;
    v50 = v28;
    do
    {
      swift_beginAccess();
      v67 = v13;
      sub_769130();
      v29 = v68;
      swift_endAccess();
      if (v29)
      {
      }

      else
      {
        v64 = sub_4CF03C(v13);
        v30 = v61;
        v31 = *v60;
        v32 = v62;
        (*v60)(v62, v1 + v66, v61);
        v33 = v63;
        v34 = v65;
        (*(v63 + 40))(v13, v30, v63);
        v35 = *v59;
        (*v59)(v32, v30);
        v36 = v1 + v66;
        v37 = v50;
        v58 = v31;
        v31(v32, v36, v30);
        v38 = v64;
        (*(v33 + 56))(v34, v13, v64, v30, v33);
        v39 = v30;
        v40 = v35;
        v35(v32, v39);
        if ((v37[8] & 1) != 0 || v13 != *v37)
        {
          v15 = v54;
          if (*(v47[0] + 8))
          {
            (*v51)(v65, AssociatedTypeWitness);

            v1 = v49;
          }

          else
          {
            v1 = v49;
            if (v13 == *v47[0])
            {
              v45 = v61;
              v44 = v62;
              v58(v62, v49 + v66, v61);
              v46 = v65;
              (*(v63 + 72))(2, v38, v65, v45);

              v40(v44, v45);
              (*v51)(v46, AssociatedTypeWitness);
            }

            else
            {
              (*v51)(v65, AssociatedTypeWitness);
            }
          }
        }

        else
        {
          v1 = v49;
          v42 = v61;
          v41 = v62;
          v58(v62, v49 + v66, v61);
          v43 = v65;
          (*(v63 + 72))(1, v38, v65, v42);

          v40(v41, v42);
          (*v51)(v43, AssociatedTypeWitness);
          v15 = v54;
        }
      }

      ++v13;
    }

    while (v15 != v13);
    goto LABEL_17;
  }

LABEL_36:
  __break(1u);
}

void sub_4CEB64(uint64_t a1)
{
  v2 = v1;
  v4 = *(&stru_20.maxprot + (swift_isaMask & *v1));
  v5 = *(&stru_20.filesize + (swift_isaMask & *v1));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = v31 - v7;
  v37 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v12;
  v38 = a1;
  v39 = a1;
  swift_beginAccess();
  v35 = v4;
  v13 = swift_getAssociatedTypeWitness();
  sub_769120();
  sub_769110();
  swift_endAccess();
  v14 = v40;
  if (v40)
  {
    v15 = &v1[*&stru_B8.segname[(swift_isaMask & *v1) - 8]];
    if ((v15[8] & 1) == 0 && *v15 == v38 || (v16 = &v1[*&stru_B8.segname[swift_isaMask & *v1]], (v16[8] & 1) == 0) && *v16 == v38)
    {
      v17 = *(&stru_20.nsects + (swift_isaMask & *v1));
      v31[0] = AssociatedTypeWitness;
      v18 = v37;
      v19 = *(v37 + 16);
      v32 = v40;
      v20 = v36;
      v19(v36, &v2[v17], v5);
      v21 = &v2[v17];
      v22 = v10;
      v19(v10, v21, v5);
      v31[1] = v13;
      v23 = v34;
      v24 = v35;
      v25 = v33;
      (*(v35 + 40))(v38, v5, v35);
      v26 = *(v18 + 8);
      v26(v22, v5);
      (*(v24 + 72))(0, v32, v25, v5, v24);
      (*(v23 + 8))(v25, v31[0]);
      v27 = v20;
      v14 = v32;
      v26(v27, v5);
    }

    v40 = v14;
    swift_beginAccess();
    sub_7667D0();
    swift_getWitnessTable();
    sub_767490();
    v28 = sub_767470();
    swift_endAccess();
    if (v28)
    {
      v29 = v36;
      v30 = v37;
      (*(v37 + 16))(v36, &v2[*(&stru_20.nsects + (swift_isaMask & *v2))], v5);
      (*(v35 + 64))(v14, v5);

      (*(v30 + 8))(v29, v5);
    }

    else
    {
    }
  }
}

id sub_4CF03C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *(&stru_20.filesize + (swift_isaMask & v4));
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v19 - v8;
  swift_beginAccess();
  v10 = *(&stru_20.maxprot + (v5 & v4));
  swift_getAssociatedTypeWitness();
  sub_7667D0();
  swift_getWitnessTable();
  sub_767490();
  sub_767460();
  swift_endAccess();
  v11 = v21;
  if (v21)
  {
    v12 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, &v2[*(&stru_20.nsects + (swift_isaMask & *v2))], v6);
    v13 = (*(v10 + 48))(v6, v10);
    (*(v7 + 8))(v9, v6);
    v12 = v13;
    [v2 addSubview:v12];
    v11 = 0;
  }

  v14 = v11;
  v15 = v12;
  sub_4CDE30();
  [v15 setFrame:?];
  [v15 setAutoresizingMask:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  [v15 setSemanticContentAttribute:{objc_msgSendSuper2(&v20, "semanticContentAttribute")}];
  v17 = [v15 layer];
  [v17 setFlipsHorizontalAxis:{objc_msgSend(v15, "effectiveUserInterfaceLayoutDirection") == &dword_0 + 1}];

  v21 = v15;
  v19[1] = a1;
  swift_beginAccess();
  sub_769120();
  sub_769140();
  swift_endAccess();
  return v15;
}

void sub_4CF3AC(void *a1)
{
  v1 = a1;
  sub_4CE408();
}

uint64_t sub_4CF3F4(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = *(&stru_20.filesize + (swift_isaMask & *v3));
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v33 - v11;
  sub_4CCF38(v13);
  v15 = v10 + 16;
  v14 = *(v10 + 16);
  v39 = *(&stru_20.nsects + (swift_isaMask & *v3));
  v40 = v14;
  v14(v12, &v3[v39], v9);
  v16 = *(&stru_20.maxprot + (v8 & v7));
  v17 = *(v16 + 24);
  v17(v41, v9, v16);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *v41;
  v20 = *&v41[1];
  [v4 contentSize];
  v48.size.width = v21;
  v48.size.height = v22;
  v48.origin.x = v20;
  v48.origin.y = v19;
  v47.x = a2;
  v47.y = a3;
  if (!CGRectContainsPoint(v48, v47))
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v37 = v16;
  v38 = v18;
  v17(v42, v9, v16);
  result = v38(v12, v9);
  v24 = floor((a2 - v20) / (*&v42[4] + *&v42[6]));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  if (v24 < 0 || sub_4CCD34() <= v25)
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v17(v43, v9, v37);
  result = v38(v12, v9);
  v26 = floor((a3 - v19) / (*&v43[5] + *&v43[7]));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v12;
  v28 = v40;
  if (v26 < 0)
  {
    return 0;
  }

  v35 = v25;
  v36 = v26;
  v29 = v39;
  v33[1] = v15;
  v40(v27, &v4[v39], v9);
  v30 = v37;
  v34 = v17;
  v17(v44, v9, v37);
  v31 = v38;
  v38(v27, v9);
  if (v44[9] <= v36)
  {
    return 0;
  }

  v28(v27, &v4[v29], v9);
  v34(v45, v9, v30);
  result = v31(v27, v9);
  v32 = v35 * v46;
  if ((v35 * v46) >> 64 != (v35 * v46) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_4CF838()
{
  [v0 contentOffset];
  sub_4CD8E0(0, v1);
  v4 = (v3 - v2);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_7CD74(v3 - v2, 0);
    if (sub_4D0D50(v8, (v7 + 4), v4, v5, v6) != v4)
    {
      __break(1u);
    }
  }
}

void sub_4CF8D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *(&stru_20.maxprot + (swift_isaMask & v2));
  v6 = *(&stru_20.filesize + (swift_isaMask & v2));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*&stru_B8.segname[(v3 & v2) - 8]];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_769130();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(1, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_4CFCA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *(&stru_20.maxprot + (swift_isaMask & v2));
  v6 = *(&stru_20.filesize + (swift_isaMask & v2));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*&stru_B8.segname[v3 & v2]];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_769130();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(2, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_4D007C(uint64_t a1, char a2)
{
  sub_4D17D8();
  v5 = v2 + *&stru_B8.segname[swift_isaMask & *v2];
  *v5 = a1;
  v5[8] = a2 & 1;

  sub_4CFCA8();
}

void sub_4D00F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&stru_B8.segname[(swift_isaMask & *v2) + 8];
  v7 = *(v2 + v6);
  if (!v7 || [v7 phase] == &dword_0 + 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == &dword_4)
  {
    v9 = sub_74E4B8(a1);
    if (v9)
    {
      v10 = v9;
      [v9 locationInView:v2];
      v12 = v11;
      v14 = v13;
      v15 = [v2 hitTest:a2 withEvent:?];
      if (v15 && (sub_BE70(0, &qword_93E550), v16 = v15, v17 = v2, v18 = sub_76A1C0(), v16, v17, (v18 & 1) != 0) || (v19 = sub_4D1B78(v15), (v19 & 1) == 0))
      {
        v20 = 0;
        v22 = 1;
      }

      else
      {
        v20 = sub_4CF3F4(v19, v12, v14);
        v22 = v21;
      }

      sub_4D1470();
      v23 = v3 + *&stru_B8.segname[(swift_isaMask & *v3) - 8];
      *v23 = v20;
      v23[8] = v22 & 1;
      sub_4CF8D4();

      v24 = *(v3 + v6);
      *(v3 + v6) = v10;
    }
  }

  sub_4D07A8(v3, a1, a2, &selRef_touchesBegan_withEvent_);
}

void sub_4D0308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *(&stru_20.filesize + (swift_isaMask & v5));
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = v33 - v9;
  v11 = *(&stru_20.maxprot + (v6 & v5));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v33 - v15;
  v17 = *&stru_B8.segname[(v6 & v5) + 8];
  v18 = *(v3 + v17);
  if (v18)
  {
    v37 = v14;
    v19 = v18;
    if ((sub_666B98(v19, a1) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = *(v3 + v17);
    *(v3 + v17) = 0;

    v21 = v3 + *&stru_B8.segname[(swift_isaMask & *v3) - 8];
    if (v21[8] & 1) != 0 || (v36 = *v21, ([v3 isDragging]))
    {
      sub_4D1470();
      v22 = v3 + *&stru_B8.segname[(swift_isaMask & *v3) - 8];
      *v22 = 0;
      v22[8] = 1;
      sub_4CF8D4();
      sub_4D17D8();
      v23 = v3 + *&stru_B8.segname[swift_isaMask & *v3];
      *v23 = 0;
      v23[8] = 1;
      sub_4CFCA8();
      goto LABEL_6;
    }

    sub_4D1470();
    v24 = v3 + *&stru_B8.segname[(swift_isaMask & *v3) - 8];
    *v24 = 0;
    v24[8] = 1;
    sub_4CF8D4();
    sub_4D17D8();
    v25 = v3 + *&stru_B8.segname[swift_isaMask & *v3];
    *v25 = v36;
    v25[8] = 0;
    sub_4CFCA8();
    v26 = swift_isaMask & *v3;
    v27 = v3 + *&stru_68.sectname[v26];
    v35 = *v27;
    if (!v35)
    {
      goto LABEL_6;
    }

    v33[1] = *(v27 + 1);
    (*(v8 + 16))(v10, v3 + *(v26 + 96), v7);
    v28 = *(v11 + 40);
    v33[2] = v11 + 40;
    v34 = v28;

    v34(v36, v7, v11);
    (*(v8 + 8))(v10, v7);
    v29 = v35;
    v30 = v35(v16, v36);
    (*(v13 + 8))(v16, v37);
    if (v30)
    {
      sub_4D1470();
      v31 = v3 + *&stru_B8.segname[(swift_isaMask & *v3) - 8];
      *v31 = 0;
      v31[8] = 1;
      sub_4CF8D4();
      sub_4D17D8();
      v32 = v3 + *&stru_B8.segname[swift_isaMask & *v3];
      *v32 = 0;
      v32[8] = 1;
      sub_4CFCA8();
    }

    sub_F704(v29);
  }

LABEL_7:
  sub_4D07A8(v3, a1, v38, &selRef_touchesEnded_withEvent_);
}

void sub_4D07A8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  isa = sub_769630().super.isa;
  v8.receiver = a1;
  v8.super_class = type metadata accessor for HorizontalShelfView();
  objc_msgSendSuper2(&v8, *a4, isa, a3);
}

uint64_t sub_4D089C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_4D094C(uint64_t a1, uint64_t a2)
{
  v5 = *&stru_B8.segname[(swift_isaMask & *v2) + 8];
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  sub_4D1470();
  v7 = v2 + *&stru_B8.segname[(swift_isaMask & *v2) - 8];
  *v7 = 0;
  v7[8] = 1;
  sub_4CF8D4();
  sub_4D17D8();
  v8 = v2 + *&stru_B8.segname[swift_isaMask & *v2];
  *v8 = 0;
  v8[8] = 1;
  sub_4CFCA8();
  sub_4D07A8(v2, a1, a2, &selRef_touchesCancelled_withEvent_);
}

uint64_t sub_4D0AE8()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_4D0B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_769150();

  return sub_4D0BC8(a1, v6, a2, a3);
}

unint64_t sub_4D0BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_7691C0();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_4D0D50(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_4D0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_769510())
  {
    sub_76A8C0();
    v13 = sub_76A8B0();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_769530();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_7694F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_76A760();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_4D0B6C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_4D10D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_7667D0();
  __chkstk_darwin(v5);
  v6 = (v1 + *&stru_68.sectname[v3 & v2]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + *&stru_68.segname[(swift_isaMask & *v1) - 8]) = 1;
  *(v1 + *&stru_68.segname[swift_isaMask & *v1]) = 0;
  v7 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  v8 = objc_allocWithZone(sub_75FA60());
  *(v1 + v7) = sub_75FA50();
  v9 = (v1 + *&stru_68.segname[(swift_isaMask & *v1) + 16]);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + *(&stru_68.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_68.offset + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_68.reloff + (swift_isaMask & *v1))) = 0;
  v10 = v1 + *(&stru_68.flags + (swift_isaMask & *v1));
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_7667C0();
  swift_getWitnessTable();
  sub_767480();
  v11 = *&stru_B8.sectname[swift_isaMask & *v1];
  swift_getTupleTypeMetadata2();
  v12 = sub_7694D0();
  v13 = sub_4D0DEC(v12, &type metadata for Int, AssociatedTypeWitness, &protocol witness table for Int);

  *(v1 + v11) = v13;
  v14 = v1 + *&stru_B8.segname[(swift_isaMask & *v1) - 8];
  *v14 = 0;
  v14[8] = 1;
  v15 = v1 + *&stru_B8.segname[swift_isaMask & *v1];
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *&stru_B8.segname[(swift_isaMask & *v1) + 8]) = 0;
  sub_76A840();
  __break(1u);
}

void sub_4D1470()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *(&stru_20.maxprot + (swift_isaMask & *v0));
  v4 = *(&stru_20.filesize + (swift_isaMask & *v0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = &v0[*&stru_B8.segname[(v2 & v1) - 8]];
  if ((v15[8] & 1) == 0)
  {
    v25 = v12;
    v26 = v11;
    v16 = *v15;
    swift_beginAccess();
    v27 = v16;
    swift_getAssociatedTypeWitness();
    sub_769130();
    v17 = v28;
    if (v28)
    {
      swift_endAccess();
      v18 = *(&stru_20.nsects + (swift_isaMask & *v0));
      v23 = v16;
      v24 = AssociatedTypeWitness;
      v19 = *(v6 + 16);
      v19(v14, &v0[v18], v4);
      v19(v9, &v0[v18], v4);
      v20 = v25;
      (*(v3 + 40))(v23, v4, v3);
      v21 = *(v6 + 8);
      v21(v9, v4);
      (*(v3 + 72))(0, v17, v20, v4, v3);

      (*(v26 + 8))(v20, v24);
      v21(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_4D17D8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *(&stru_20.maxprot + (swift_isaMask & *v0));
  v4 = *(&stru_20.filesize + (swift_isaMask & *v0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = &v0[*&stru_B8.segname[v2 & v1]];
  if ((v15[8] & 1) == 0)
  {
    v29 = v12;
    v30 = v11;
    v16 = *v15;
    swift_beginAccess();
    v31 = v16;
    swift_getAssociatedTypeWitness();
    sub_769130();
    v17 = v32;
    if (v32)
    {
      swift_endAccess();
      v18 = *v0;
      v19 = &v0[*&stru_B8.segname[(swift_isaMask & *v0) - 8]];
      v20 = *v19;
      v27 = v19[8];
      v26 = v16 == v20;
      v21 = *(&stru_20.nsects + (swift_isaMask & v18));
      v28 = AssociatedTypeWitness;
      v25 = v16;
      v22 = *(v6 + 16);
      v22(v14, &v0[v21], v4);
      v22(v9, &v0[v21], v4);
      v23 = v29;
      (*(v3 + 40))(v25, v4, v3);
      v24 = *(v6 + 8);
      v24(v9, v4);
      (*(v3 + 72))(v26 & ~v27, v17, v23, v4, v3);

      (*(v30 + 8))(v23, v28);
      v24(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

unint64_t sub_4D1B78(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  swift_getAssociatedTypeWitness();
  while (1)
  {
    v5 = swift_dynamicCastUnknownClass();
    v4 = v5 != 0;
    if (v5)
    {
      break;
    }

    type metadata accessor for HorizontalShelfView();
    if (swift_dynamicCastClass())
    {
      break;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      if ([v6 isTracking])
      {
        break;
      }
    }

    v4 = [v3 superview];

    v3 = v4;
    if (!v4)
    {
      return v4;
    }
  }

  return v4;
}

void sub_4D1CB4(double *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v37 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_4CF838();
  v15 = v14;

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = *a1;
    v18 = swift_unknownObjectUnownedLoadStrong();
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    Width = CGRectGetWidth(v40);
    if (v17 > 0.0)
    {
      v28 = Width;
      v29 = swift_unknownObjectUnownedLoadStrong();
      [v29 contentSize];
      v31 = v30;

      if (v17 < v31 - v28)
      {
        v32 = swift_unknownObjectUnownedLoadStrong();
        (*(v10 + 16))(v12, &v32[*(&stru_20.nsects + (swift_isaMask & *v32))], v9);
        (*(*(*&v8 + 88) + 24))(v37, v9);

        (*(v10 + 8))(v12, v9);
        v33 = v38 + v39;
        v34 = a2;
        if (a2 == 0.0)
        {
          v34 = v4[3];
        }

        v35 = fmod(v17, v38 + v39);
        if (v34 >= 0.0)
        {
          v36 = v33 - v35 + *a1;
        }

        else
        {
          v36 = *a1 - v35;
        }

        *a1 = v36;
        v4[3] = a2;
        v4[4] = a3;
      }
    }
  }
}

id sub_4D1F98(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  if (qword_93D248 != -1)
  {
    swift_once();
  }

  v11 = sub_766690();
  v12 = sub_BE38(v11, qword_99E010);
  (*(*(v11 - 8) + 16))(&v4[v10], v12, v11);
  swift_unknownObjectWeakInit();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong _setContinuousCornerRadius:20.0];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v13 contentView];
    [v18 addSubview:v17];
  }

  return v13;
}

uint64_t sub_4D2144(void *a1)
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
      sub_2630C();
      v5 = sub_76A1C0();
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

void sub_4D21F8(void *a1)
{
  sub_4D3418();
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

void (*sub_4D22A8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33VideoTodayBrickCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_4D22FC;
}

void sub_4D22FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_4D3418();
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
    sub_4D3418();
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

uint64_t sub_4D24C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = sub_BD88(&unk_948710);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v7;
  v8 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v8 - 8);
  v48 = &v44 - v9;
  v10 = sub_75A6B0();
  __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  v14 = sub_BD88(&unk_948720);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_75A6E0();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75DC30();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_766690();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_595214();
  v27 = sub_765B20();
  sub_75E700();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
  }

  v55[0] = v28;
  v29 = [v26 traitCollection];
  v30 = sub_7618A0();

  if (!v30)
  {
  }

  v31 = sub_764BC0();
  sub_765260();
  sub_7666A0();
  v32 = OBJC_IVAR____TtC18ASMessagesProvider33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  swift_beginAccess();
  (*(v23 + 40))(&v26[v32], v25, v22);
  swift_endAccess();
  (*(v45 + 104))(v19, enum case for VideoFillMode.scaleAspectFill(_:), v17);
  v45 = v31;
  sub_765260();
  sub_7666A0();
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v33 = v51;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v34 = v55[0];
  sub_764B40();
  v35 = v48;
  sub_764BD0();
  v36 = sub_7570A0();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v49;
  sub_764B90();
  v38 = v50;
  sub_764B80();
  type metadata accessor for VideoView();
  sub_4D34E8(&qword_93F500, type metadata accessor for VideoView);
  v47 = v34;
  v39 = sub_75C340();
  sub_10A2C(v38, &unk_948710);
  sub_10A2C(v37, &unk_948710);
  sub_10A2C(v35, &unk_93FD30);
  sub_10A2C(v55, &unk_9443A0);
  sub_4D3418();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = [v26 contentView];
    [v42 addSubview:v41];

    [v26 setNeedsLayout];
  }

  sub_75A110();
  sub_768880();
  sub_4D2C24();

  return (*(v52 + 8))(v33, v53);
}

void sub_4D2C24()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764BC0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC18ASMessagesProvider33VideoTodayBrickCollectionViewCell_videoAspectRatio;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v8], v2);
    LOBYTE(v8) = sub_7665E0();
    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      if (qword_93D240 != -1)
      {
        swift_once();
      }

      v10 = qword_99DFF8;
    }

    else
    {
      if (qword_93D238 != -1)
      {
        swift_once();
      }

      v10 = qword_99DFE0;
    }

    sub_BE38(v2, v10);
    [v1 bounds];
    sub_766610();
    sub_765260();
    sub_7666A0();
    sub_766600();
    v9(v5, v2);
    sub_765330();
    type metadata accessor for VideoView();
    sub_4D34E8(&unk_93F530, type metadata accessor for VideoView);
    sub_75A050();
  }

  else
  {
  }
}

uint64_t sub_4D2F1C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  v2 = sub_766690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for VideoTodayBrickCollectionViewCell()
{
  result = qword_9572D8;
  if (!qword_9572D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4D3064()
{
  result = sub_766690();
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

uint64_t (*sub_4D3110(uint64_t **a1))()
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
  v2[4] = sub_4D22A8(v2);
  return sub_246E0;
}

uint64_t sub_4D3180()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_4D31F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_4D3280(uint64_t *a1))()
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
  sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_21028;
}