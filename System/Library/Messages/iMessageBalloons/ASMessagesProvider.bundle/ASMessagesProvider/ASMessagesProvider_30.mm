uint64_t sub_363208(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = sub_76A860();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (sub_76A860() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v7 = sub_363908();
    result = swift_endAccess();
    if (!v7)
    {
      __break(1u);
      return result;
    }

    [v7 removeFromSuperview];
    swift_beginAccess();
    sub_BD88(&qword_950BD8);
    sub_767470();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_BD88(&qword_950BD8);
  sub_767450();
  swift_endAccess();
  swift_beginAccess();
  v7 = v8;
  sub_769440();
  if (*(&dword_10 + (*&v1[v3] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v3] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  [v1 addSubview:v7];
LABEL_13:

  return sub_363208(a1);
}

uint64_t sub_363604()
{
  ObjectType = swift_getObjectType();
  v17 = sub_7664F0();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F8B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_75F8C0();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_14139C(v13);

  if (qword_93CDA8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v5, qword_99D428);
  (*(v6 + 16))(v8, v14, v5);
  sub_75F880();
  sub_75D650();
  sub_75F870();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

unint64_t sub_363908()
{
  if (!(*v0 >> 62))
  {
    result = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_363C60();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_76A860();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_362334(result, sub_45EDF0);
      }
    }

    else
    {
      v2 = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_362334(result, sub_45EDF0);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_76A860();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_3639AC@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView()
{
  result = qword_950B88;
  if (!qword_950B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_363AC8()
{
  sub_363B68();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_363B68()
{
  if (!qword_950B98)
  {
    sub_133D8(&qword_950BA0);
    sub_363BD8();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_950B98);
    }
  }
}

unint64_t sub_363BD8()
{
  result = qword_950BA8;
  if (!qword_950BA8)
  {
    sub_133D8(&qword_950BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950BA8);
  }

  return result;
}

uint64_t sub_363C60()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_45EDF0(v1);
    v1 = result;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    v4 = v3 - 1;
    result = *(&stru_20.cmd + 8 * v4 + (v1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_363CC4(unint64_t a1, uint64_t a2)
{
  v46 = sub_765240();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_765120();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  v54 = sub_7570A0();
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_76A860();
  }

  else
  {
    v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    goto LABEL_28;
  }

  v56 = _swiftEmptyArrayStorage;
  v53 = v16;
  result = sub_76A7C0();
  if (v53 < 0)
  {
    __break(1u);
    return result;
  }

  v50 = v15;
  v37[1] = a2;
  v19 = 0;
  v51 = (v7 + 8);
  v52 = a1 & 0xC000000000000001;
  v20 = (v13 + 48);
  v47 = (v13 + 8);
  v48 = (v13 + 32);
  v39 = "F0F19AnnotationImageView";
  v43 = (v4 + 8);
  v38 = xmmword_77E280;
  v44 = a1;
  v49 = v6;
  v42 = (v13 + 48);
  do
  {
    v21 = v54;
    if (v52)
    {
      sub_76A770();
    }

    else
    {
    }

    sub_765380();
    sub_765110();
    (*v51)(v9, v6);
    sub_757090();

    if ((*v20)(v12, 1, v21) == 1)
    {
      sub_10A2C(v12, &unk_93FD30);
LABEL_7:
      sub_7670D0();
      swift_allocObject();
      sub_7670B0();
      goto LABEL_8;
    }

    v22 = v50;
    (*v48)(v50, v12, v21);
    v23 = sub_757070();
    if (!v24)
    {
      (*v47)(v22, v21);
LABEL_26:
      v6 = v49;
      goto LABEL_7;
    }

    v25 = v23;
    v26 = v24;
    if ((sub_765180() & 1) == 0)
    {

      (*v47)(v50, v21);
      goto LABEL_26;
    }

    v27.value.super.super.isa = 0;
    v28 = sub_765170(v27);
    if (qword_93DC58 != -1)
    {
      swift_once();
    }

    v29 = qword_95B098;
    v30 = v28;
    v31 = sub_769210();
    v32 = [objc_opt_self() imageNamed:v31 inBundle:v29 withConfiguration:v30];

    if (!v32)
    {
      v41 = v30;
      if (qword_93DEF0 != -1)
      {
        swift_once();
      }

      v33 = sub_768FF0();
      v40 = sub_BE38(v33, qword_9A0400);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = v38;
      sub_768540();
      v55[3] = &type metadata for String;
      v55[0] = v25;
      v55[1] = v26;

      sub_7685E0();
      sub_10A2C(v55, &unk_93FBD0);
      sub_768EA0();

      v32 = [objc_allocWithZone(UIImage) init];
      v30 = v41;
    }

    (*v47)(v50, v54);
    [v32 size];
    if (qword_93CDA8 != -1)
    {
      swift_once();
    }

    v34 = sub_75F8B0();
    sub_BE38(v34, qword_99D428);
    sub_75F890();
    v35 = v45;
    sub_765250();
    sub_765210();
    (*v43)(v35, v46);
    sub_769D70();
    sub_7670D0();
    swift_allocObject();
    sub_7670B0();

    v6 = v49;
    v20 = v42;
LABEL_8:

    ++v19;
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
  }

  while (v53 != v19);
  v17 = v56;
LABEL_28:
  sub_1411E4(v17);

  if (qword_93CDA8 != -1)
  {
    swift_once();
  }

  v36 = sub_75F8B0();
  sub_BE38(v36, qword_99D428);
  sub_75F860();
}

char *sub_364550(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell()
{
  result = qword_950C08;
  if (!qword_950C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36492C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_75CFE0();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_93DEA8 != -1)
      {
        swift_once();
      }

      v25 = qword_9A0310;
    }

    else
    {
      if (qword_93DEA0 != -1)
      {
        swift_once();
      }

      v25 = qword_9A02F8;
    }

    v27 = sub_BE38(v14, v25);
    sub_C1D58(v27, v23);
    if (qword_93DEB0 != -1)
    {
      swift_once();
    }

    v28 = sub_BE38(v14, qword_9A0328);
    sub_C1D58(v28, v13);
    v29 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_93DE98 != -1)
      {
        swift_once();
      }

      v26 = qword_9A02E0;
    }

    else
    {
      if (qword_93DE90 != -1)
      {
        swift_once();
      }

      v26 = qword_9A02C8;
    }

    v30 = sub_BE38(v14, v26);
    sub_C1D58(v30, v23);
    v29 = 1;
  }

  (*(v15 + 56))(v13, v29, 1, v14);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v14, qword_9A0148);
  v32 = v20;
  sub_C1D58(v31, v20);
  sub_C1D58(v23, v17);
  sub_366920(v13, v10);
  v33 = sub_75CFD0();
  v34 = *(v33 - 8);
  v45 = v10;
  v46 = v7;
  v35 = v34;
  (*(v34 + 56))(v7, 1, 1, v33);
  v36 = v47;
  v37 = v48;
  (*(v3 + 104))(v47, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v48);
  sub_396E8();
  v44 = sub_769FB0();
  sub_10A2C(v13, &qword_9439E0);
  sub_C1DBC(v23);
  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v39 = v38[8];
  v40 = v32;
  v41 = v49;
  sub_C1E18(v40, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v17, v41 + v38[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v45, v41 + v38[6]);
  *(v41 + v38[7]) = 0;
  *(v41 + v39) = 0;
  *(v41 + v38[9]) = 1;
  *(v41 + v38[14]) = 0x4030000000000000;
  *(v41 + v38[12]) = 0;
  *(v41 + v38[13]) = v44;
  v42 = v46;
  (*(v3 + 32))(v41 + v38[11], v36, v37);
  if ((*(v35 + 48))(v42, 1, v33) != 1)
  {
    return (*(v35 + 32))(v41 + v38[10], v42, v33);
  }

  sub_10A2C(v42, &qword_9439D8);
  return (*(v35 + 104))(v41 + v38[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v33);
}

uint64_t sub_364F64()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_75CFE0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v34 = &v28 - v17;
  sub_161DC(v0, qword_99D450);
  v32 = sub_BE38(v0, qword_99D450);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v34);
  if (qword_93DE20 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v12, qword_9A0178);
  sub_C1D58(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v21 = sub_75CFD0();
  v22 = *(v21 - 8);
  v30 = v15;
  v31 = v11;
  v23 = v22;
  v29 = *(v22 + 104);
  v29(v8, v20, v21);
  (*(v23 + 56))(v8, 0, 1, v21);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v35);
  sub_396E8();
  v24 = sub_769FB0();
  v33 = v8;
  v25 = v0[8];
  sub_C1E18(v34, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v30, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v31, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v25] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v24;
  v26 = v33;
  (*(v3 + 32))(&v2[v0[11]], v5, v35);
  if ((*(v23 + 48))(v26, 1, v21) == 1)
  {
    sub_10A2C(v26, &qword_9439D8);
    v29(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v21);
  }

  else
  {
    (*(v23 + 32))(&v2[v0[10]], v26, v21);
  }

  return sub_C1E18(v2, v32, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3654BC()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75CFE0();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_161DC(v0, qword_99D480);
  v29 = sub_BE38(v0, qword_99D480);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v31);
  if (qword_93DEB8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v12, qword_9A0340);
  sub_C1D58(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_75CFD0();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v32);
  sub_396E8();
  v23 = sub_769FB0();
  v30 = v8;
  v24 = v0[8];
  sub_C1E18(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v28, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10A2C(v25, &qword_9439D8);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_C1E18(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3659BC()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75CFE0();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_161DC(v0, qword_99D498);
  v29 = sub_BE38(v0, qword_99D498);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v31);
  if (qword_93DEC0 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v12, qword_9A0358);
  sub_C1D58(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_75CFD0();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v32);
  sub_396E8();
  v23 = sub_769FB0();
  v30 = v8;
  v24 = v0[8];
  sub_C1E18(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v28, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10A2C(v25, &qword_9439D8);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_C1E18(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_365EE4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v38 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_75CFE0();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v39 = v34 - v23;
  sub_161DC(v7, a2);
  v37 = sub_BE38(v7, a2);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v18, qword_9A0148);
  sub_C1D58(v24, v39);
  if (*a3 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v18, v38);
  sub_C1D58(v25, v21);
  v26 = *(v19 + 56);
  v35 = v17;
  v26(v17, 1, 1, v18);
  v27 = sub_75CFD0();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v14, 1, 1, v27);
  v29 = v36;
  (*(v10 + 104))(v40, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v36);
  sub_396E8();
  v30 = sub_769FB0();
  v38 = v14;
  v31 = v7[8];
  sub_C1E18(v39, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v35, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v31] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v30;
  v32 = v38;
  (*(v10 + 32))(&v9[v7[11]], v40, v29);
  if ((*(v28 + 48))(v32, 1, v27) == 1)
  {
    sub_10A2C(v32, &qword_9439D8);
    (*(v28 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v27);
  }

  else
  {
    (*(v28 + 32))(&v9[v7[10]], v32, v27);
  }

  return sub_C1E18(v9, v37, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3663E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_75CFE0();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v5 - 8);
  v7 = (v37 - v6);
  v8 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v8 - 8);
  v10 = (v37 - v9);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v18 = sub_75A890();

  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v11, qword_9A0148);
  v41 = v17;
  sub_C1D58(v19, v17);
  v43 = v14;
  sub_5E6F94(a1, v14);
  sub_5E7754(v10);
  v20 = *(v12 + 56);
  v45 = v10;
  v20(v10, 0, 1, v11);
  if (v18)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v39 = v21;
  if (sub_7699D0())
  {
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v23 = *v22;
  v24 = sub_75CFD0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v37[1] = v25 + 104;
  v38 = v26;
  v26(v7, v23, v24);
  (*(v25 + 56))(v7, 0, 1, v24);
  v27 = sub_7699D0();
  v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v27 & 1) == 0)
  {
    v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v29 = v44;
  v30 = v40;
  v31 = v42;
  (*(v44 + 104))(v40, *v28, v42);
  sub_396E8();
  v32 = sub_769FB0();
  v33 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v7;
  v34 = v33[8];
  sub_C1E18(v41, a2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v43, a2 + v33[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v45, a2 + v33[6]);
  *(a2 + v33[7]) = 0;
  *(a2 + v34) = 0;
  *(a2 + v33[9]) = v39;
  *(a2 + v33[14]) = 0x4030000000000000;
  *(a2 + v33[12]) = 0;
  *(a2 + v33[13]) = v32;
  v35 = v46;
  (*(v29 + 32))(a2 + v33[11], v30, v31);
  if ((*(v25 + 48))(v35, 1, v24) != 1)
  {
    return (*(v25 + 32))(a2 + v33[10], v35, v24);
  }

  sub_10A2C(v35, &qword_9439D8);
  return v38(a2 + v33[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v24);
}

uint64_t sub_366920(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9439E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TodayCardLabelsView()
{
  result = qword_950CC8;
  if (!qword_950CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_366A60()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *(*(v0 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange);
  if (v2)
  {

    v2(v3);
    sub_F704(v2);
    v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v4 = *(*(v0 + qword_950C90) + v1);
  if (v4)
  {

    v4(v5);
    sub_F704(v4);
    v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v6 = *(*(v0 + qword_950CA0) + v1);
  if (v6)
  {

    v6(v7);

    sub_F704(v6);
  }
}

void sub_366B5C(uint64_t a1, char a2)
{
  v4 = sub_765B10();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_36A25C(&qword_9409B0, &type metadata accessor for TodayCard.Style);
    sub_769430();
    sub_769430();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (sub_76A950())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_36860C();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_36860C();
  }
}

uint64_t sub_366D68()
{
  v0 = sub_368D84();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_769240();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7B5CC(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_7B5CC((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_BD88(&unk_947FF0);
  sub_5FBA8();
  v16 = sub_7691A0();

  return v16;
}

void sub_366F68()
{
  if (qword_93CDD8 != -1)
  {
    swift_once();
  }

  v0 = qword_950C18;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_950C20 = v6;
}

id sub_3670BC()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_950C38 = result;
  return result;
}

void sub_367128()
{
  if (qword_93CE00 != -1)
  {
    swift_once();
  }

  v0 = qword_950C40;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_950C48 = v4;
}

void sub_36723C(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredFontDescriptorWithTextStyle:v7];
  v9 = [v8 fontDescriptorWithSymbolicTraits:32770];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [v10 fontWithDescriptor:v9 size:0.0];

    v8 = v9;
  }

  else
  {
    v11 = [v10 fontWithDescriptor:v8 size:0.0];
  }

  *a4 = v11;
}

char *sub_367388(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = sub_768C60();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_950C78] = 7;
  v3[qword_950C80] = 7;
  v7 = qword_950C98;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_950CA8] = 0;
  v3[qword_950CB8] = 0;
  v3[qword_950CC0] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_950CB0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_950C70];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_BD88(&qword_950D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
  *(inited + 32) = 5;
  v21 = qword_93CDF0;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_950C30;
  *(inited + 40) = qword_950C30;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_93CE28;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_950C68;
  *(inited + 120) = qword_950C68;
  *(inited + 128) = 4;
  v26 = qword_93CE18;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_950C58;
  *(inited + 136) = qword_950C58;
  v29 = sub_10D278(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_BD88(&qword_950D20);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_950C90] = sub_726C3C(v29, v24);
  v33 = sub_10D278(_swiftEmptyArrayStorage);
  if (qword_93CE08 != -1)
  {
    swift_once();
  }

  v34 = qword_950C48;
  objc_allocWithZone(v31);
  *&v3[qword_950CA0] = sub_726C3C(v33, v34);
  v35 = sub_10D278(_swiftEmptyArrayStorage);
  if (qword_93CDE0 != -1)
  {
    swift_once();
  }

  v36 = qword_950C20;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_950C88] = sub_726C3C(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_950C90;
  *(*&v38[qword_950C90] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_950C88];
  v42 = qword_950C88;
  v73 = qword_950C88;
  *(v41 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_950CA0];
  v44 = qword_950CA0;
  v72 = qword_950CA0;
  *(v43 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  sub_BE70(0, &qword_93E540);
  v46 = v45;
  v47 = sub_769FF0();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v50 = sub_769FD0();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v52 = sub_769FF0();
  [v51 setTextColor:v52];

  v53 = qword_950C98;
  [*&v38[qword_950C98] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0);
  sub_10A2C(&v86, &unk_93FBD0);
  sub_769E70();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0);
  sub_10A2C(&v86, &unk_93FBD0);
  sub_769E70();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0);
  sub_10A2C(&v86, &unk_93FBD0);
  sub_769E70();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0);
  sub_10A2C(&v86, &unk_93FBD0);
  sub_769E70();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_BD88(&qword_9477F0);
  v67 = swift_allocObject();
  v76 = xmmword_77B6D0;
  *(v67 + 16) = xmmword_77B6D0;
  *(v67 + 32) = sub_767B80();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = sub_7676F0();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v38;
}

id sub_367E48()
{
  v1 = v0;
  v2 = *&v0[qword_950C88];
  v3 = qword_950C78;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_950C78];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_7275FC(v4, v5);
  v6 = *&v1[qword_950C90];
  v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_7275FC(v7, v8);
  v9 = *&v1[qword_950CA0];
  v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_7275FC(v10, v11);

  return [v1 setNeedsLayout];
}

double sub_367EFC()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_950C78];
  v2 = *&v0[qword_950C88];
  if ([*&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_950C90], (objc_msgSend(*&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_950C90];
    v5 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_950CA8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_950CA8] != 1)
      {
        v10 = *&v0[qword_950C98];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

id sub_3680EC()
{
  v1 = v0;
  v2 = *&v0[qword_950C88];
  v3 = &v0[qword_950CB0];
  v4 = *&v0[qword_950CB0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_950C90];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_950CA0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_36851C()
{
  v1 = *(v0 + qword_950C88);
  v2 = *(v0 + qword_950CC0);
  v3 = &OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_950CA0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_950C90);
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_950CA0);
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_3685C4(void *a1)
{
  v1 = a1;
  sub_3680EC();
}

void sub_36860C()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    sub_769240();
    v1 = sub_769210();

    v2 = [*&v0[qword_950C88] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_950CA0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_950C88] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_950CA0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_368778@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_950C70 + 16);
  v21 = *(v1 + qword_950C70);
  v3 = *(v1 + qword_950C70 + 32);
  v4 = *(v1 + qword_950C88);
  v5 = *(v1 + qword_950C90);
  v6 = *(v1 + qword_950C70 + 40);
  v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_950C98);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_BE70(0, &qword_949D90);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_950CA0);
  v16 = *(v1 + qword_950CA8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_36A138();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_34698(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_368924(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

void sub_368A40(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

void sub_368B5C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

id sub_368C78(void *a1)
{
  v1 = a1;
  sub_366D68();
  v3 = v2;

  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_368CF0(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_769240();
    v6 = a1;
    a3 = sub_769210();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

void *sub_368D84()
{
  sub_BD88(&unk_93F5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_78D690;
  v2 = *(v0 + qword_950C88);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_950C90);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_950CA0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = sub_76A770())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      if (v5)
      {
LABEL_18:
        v11 = sub_76A770();
        goto LABEL_9;
      }
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = sub_76A770();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = sub_76A860();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 16);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = sub_76A7C0();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = sub_76A770();
      }

      else
      {
        v18 = *(v21 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_3690FC(void *a1)
{
  v1 = a1;
  v2 = sub_368D84();
  sub_1413E4(v2);

  v3.super.isa = sub_769450().super.isa;

  return v3.super.isa;
}

void sub_369184(void *a1, uint64_t a2, Class isa, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_769460();
    v8 = a1;
    isa = sub_769450().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, isa);
}

uint64_t sub_369258()
{
}

uint64_t sub_369320(uint64_t a1)
{
}

uint64_t sub_3693F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_36943C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3694C8(uint64_t a1)
{
  v2 = sub_75F730();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_950D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  sub_36A1EC(a1, &v35 - v10);
  v12 = *(v3 + 48);
  v13 = v12(v11, 1, v2);
  v36 = v3;
  if (v13 == 1)
  {
    sub_10A2C(v11, &qword_950D30);
    v14 = 0;
  }

  else
  {
    sub_75F720();
    sub_36A25C(&unk_94A340, &type metadata accessor for StringCharacteristics);
    v14 = sub_76A520();
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v11, v2);
  }

  sub_36A1EC(a1, v8);
  if (v12(v8, 1, v2) != 1)
  {
    sub_75F700();
    sub_36A25C(&unk_94A340, &type metadata accessor for StringCharacteristics);
    v17 = sub_76A520();
    v18 = *(v36 + 8);
    v18(v5, v2);
    v18(v8, v2);
    if (v14)
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }

    if ((v14 | v17))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10A2C(v8, &qword_950D30);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v16 = 0x4042000000000000;
    goto LABEL_12;
  }

  v16 = 0x404A000000000000;
LABEL_12:
  v19 = *&v16;
LABEL_13:
  v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v20 setMaximumLineHeight:v19];
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_93CDF8;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_950C38;
  v25 = sub_BE70(0, &qword_93F900);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v26 = sub_BE70(0, &unk_959BA0);
  *(inited + 80) = v20;
  *(inited + 104) = v26;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v27 = objc_allocWithZone(NSNumber);
  v28 = v24;
  v29 = NSParagraphStyleAttributeName;
  v30 = v20;
  v31 = kCTBaselineOffsetAttributeName;
  v32 = [v27 initWithDouble:{fmin(v19 + -43.0, 0.0)}];
  *(inited + 144) = sub_BE70(0, &qword_945820);
  *(inited + 120) = v32;
  v33 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();

  return v33;
}

unint64_t sub_3699E0(uint64_t *a1, void **a2)
{
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = NSFontAttributeName;
  v5 = *a1;
  v6 = NSFontAttributeName;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  v8 = sub_BE70(0, &qword_93F900);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v9 = objc_allocWithZone(NSParagraphStyle);
  v10 = v7;
  v11 = NSParagraphStyleAttributeName;
  v12 = [v9 init];
  v13 = sub_BE70(0, &qword_940F48);
  *(inited + 80) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v14 = objc_allocWithZone(NSNumber);
  v15 = kCTBaselineOffsetAttributeName;
  v16 = [v14 initWithDouble:0.0];
  *(inited + 144) = sub_BE70(0, &qword_945820);
  *(inited + 120) = v16;
  v17 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  return v17;
}

id sub_369B90(_BYTE *a1)
{
  v3 = *&a1[qword_950C70 + 32];
  v4 = a1[qword_950C70 + 40];
  v5 = &v1[qword_950C70];
  v6 = *&a1[qword_950C70 + 16];
  *v5 = *&a1[qword_950C70];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_950CA8] = a1[qword_950CA8];
  v7 = *&v1[qword_950C90];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_950C88];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_950C88];
  v10 = *(v50 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_950C90];
  v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_950C98];
  v46 = v24;
  v47 = *&a1[qword_950C98];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_950CA0];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_950CA0];
  v29 = *(v28 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_950CB0 + 88];
  v40 = &v1[qword_950CB0];
  v41 = *&a1[qword_950CB0 + 8];
  v42 = *&a1[qword_950CB0 + 24];
  v45 = *&a1[qword_950CB0 + 40];
  v43 = *&a1[qword_950CB0 + 56];
  *v48 = *&a1[qword_950CB0 + 72];
  *v40 = *&a1[qword_950CB0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_3680EC();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_36860C();

  return [v1 setNeedsLayout];
}

void sub_36A074()
{
  *(v0 + qword_950C78) = 7;
  *(v0 + qword_950C80) = 7;
  v1 = qword_950C98;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_950CA8) = 0;
  *(v0 + qword_950CB8) = 0;
  *(v0 + qword_950CC0) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_36A138()
{
  result = qword_950D28;
  if (!qword_950D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D28);
  }

  return result;
}

uint64_t sub_36A18C()
{
  sub_BEB8(v0 + 80);
  if (*(v0 + 144))
  {
    sub_BEB8(v0 + 120);
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_36A1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_950D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36A25C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_36A2C0()
{
  result = qword_950D38;
  if (!qword_950D38)
  {
    sub_7626F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D38);
  }

  return result;
}

uint64_t sub_36A318(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_955640);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = sub_7626D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BD88(&qword_94DDC0);
  v10 = sub_768F90();
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v11 = v34[0];
  sub_7626E0();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = sub_768F90();
    sub_758BB0();
    v16 = sub_BE70(0, &qword_940340);
    v17 = sub_769970();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    sub_758B60();

    sub_BEB8(v34);
    sub_768F00();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = sub_769590();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_798FB0;
LABEL_7:
    sub_54A098(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = sub_769590();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_798FA0;
    goto LABEL_7;
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v27 = sub_768FF0();
  *&v33 = sub_BE38(v27, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  v28 = sub_768F90();
  sub_758BB0();
  v29 = sub_BE70(0, &qword_940340);
  v30 = sub_769970();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  sub_758B60();

  sub_BEB8(v34);
  sub_768F00();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_36A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_7687C0();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_758B80();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_36AA48, 0, 0);
}

uint64_t sub_36AA48()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  sub_758BB0();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_36AB44;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_36AB44()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_36AD78;
  }

  else
  {
    v5 = sub_36ACB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_36ACB4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_36AD78()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_B1B4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_7685E0();
  sub_BDD0((v0 + 2));
  sub_768EA0();

  sub_768F50();

  v5 = v0[1];

  return v5();
}

uint64_t sub_36AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = sub_7687C0();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_758B80();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_36B0CC, 0, 0);
}

uint64_t sub_36B0CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  sub_758BB0();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_36B1E0;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_36B1E0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_36B414;
  }

  else
  {
    v5 = sub_36B350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_36B350()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_36B414()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_B1B4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_7685E0();
  sub_BDD0((v0 + 2));
  sub_768EA0();

  sub_768F50();

  v5 = v0[1];

  return v5();
}

uint64_t sub_36B63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_758B90();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_BE70(0, &qword_940340);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v13);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_36C1F8();
    swift_allocError();
    sub_768F50();
  }
}

uint64_t sub_36B8EC(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = sub_758B40();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75F340();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_760280();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_765490();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = sub_7570A0();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_759E30();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_BE70(0, &qword_9434E0);
  v34 = v21;
  v25 = v21;
  sub_768790();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v26 = sub_758AD0();
  sub_72D7A8(v26, 1, v32);
  sub_768F00();
}

uint64_t sub_36BDD8()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_36BF48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_36BFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_14FCC;

  return sub_36AFA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_36C08C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_36C0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_254BD8;

  return sub_36A928(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_36C1B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_36C1F8()
{
  result = qword_950D40;
  if (!qword_950D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D40);
  }

  return result;
}

uint64_t sub_36C24C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_36C2B0()
{
  result = qword_950D48;
  if (!qword_950D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D48);
  }

  return result;
}

unint64_t sub_36C320()
{
  result = qword_950D50;
  if (!qword_950D50)
  {
    sub_75E510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D50);
  }

  return result;
}

uint64_t sub_36C380(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_758B40();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75F340();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760280();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_765490();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = sub_7570A0();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_759E30();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_75E510();
  v32 = v28;

  sub_768790();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v23 = sub_758AD0();
  v24 = sub_72D7A8(v23, 1, v31);

  return v24;
}

uint64_t sub_36C850@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v60 = sub_75CFE0();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = sub_BD88(&unk_948010);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = sub_759810();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_75CFD0();
  v54 = *(v27 - 8);
  v55 = v27;
  (*(v54 + 56))(v6, 1, 1);
  v50 = v24;
  sub_1ED18(v24, v21, &unk_948010);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10A2C(v21, &unk_948010);
    v28 = 0;
  }

  else
  {
    v28 = sub_7597B0();
    (*(v26 + 8))(v21, v25);
  }

  v29 = v18;
  sub_5E740C(v28, v18);

  if (qword_93DE38 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v11, qword_9A01C0);
  v31 = v51;
  (*(v12 + 56))(v51, 1, 1, v11);
  v32 = v49;
  sub_C1D58(v29, v49);
  v33 = v52;
  sub_C1D58(v30, v52);
  v47 = v29;
  v34 = v53;
  sub_1ED18(v31, v53, &qword_9439E0);
  v35 = v6;
  v36 = v6;
  v37 = v57;
  sub_1ED18(v36, v57, &qword_9439D8);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v58 + 104))(v59, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v60);
  sub_396E8();
  v48 = sub_769FB0();
  sub_10A2C(v35, &qword_9439D8);
  sub_10A2C(v31, &qword_9439E0);
  sub_C1DBC(v47);
  sub_10A2C(v50, &unk_948010);
  v41 = type metadata accessor for TitleHeaderView.Style(0);
  v42 = v41[8];
  v43 = v56;
  sub_15CEA0(v32, v56);
  sub_15CEA0(v33, v43 + v41[5]);
  sub_15CF04(v34, v43 + v41[6]);
  *(v43 + v41[7]) = 0;
  *(v43 + v42) = 1;
  *(v43 + v41[9]) = 0;
  *(v43 + v41[14]) = 0x4030000000000000;
  *(v43 + v41[12]) = 0;
  *(v43 + v41[13]) = v48;
  (*(v39 + 32))(v43 + v41[11], v38, v40);
  v45 = v54;
  v44 = v55;
  if ((*(v54 + 48))(v37, 1, v55) != 1)
  {
    return (*(v45 + 32))(v43 + v41[10], v37, v44);
  }

  sub_10A2C(v37, &qword_9439D8);
  return (*(v45 + 104))(v43 + v41[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v44);
}

uint64_t sub_36CF0C()
{

  sub_13238(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_36CF70()
{
  sub_BD88(&qword_950EE0);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_77E280;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_10EC1C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_950EE8);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_BD88(&qword_950EF0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_77B6D0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_BD88(&qword_950EF8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_BD88(&qword_950F00);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_10ED08(v8);
  swift_setDeallocating();
  sub_36D1C0(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_36D228();
  isa = sub_7690E0().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_36D1C0(uint64_t a1)
{
  v2 = sub_BD88(&qword_945400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_36D228()
{
  result = qword_93E948;
  if (!qword_93E948)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93E948);
  }

  return result;
}

id sub_36D2C0(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    swift_unknownObjectWeakInit();
    a2(0);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setHidden:1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong addSubview:v7];
    }

    swift_unknownObjectWeakDestroy();
    v10 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_36D3A4(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setHidden:1];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setHidden:0];
    v7 = [v1 contentView];
    sub_2630C();
    sub_75D650();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame:{v9, v11, v13, v15}];
  }

LABEL_4:
}

id sub_36D4B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___standardLinkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___presentationLinkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v12;
}

void sub_36D6E0()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    sub_2630C();
    sub_75D650();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t type metadata accessor for LinkCollectionViewCell()
{
  result = qword_950F48;
  if (!qword_950F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_36D90C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_36D9AC()
{
  v36 = sub_75EAB0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75EAC0();
  sub_161DC(v5, qword_99D4E0);
  v33 = sub_BE38(v5, qword_99D4E0);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99D4F8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_766CA0();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_B1B4(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_766CB0();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v6, qword_99D510);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_766CB0();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v40);
  v19(v21, v4, v1);
  sub_766CB0();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_75EAA0();
}

char *sub_36DF78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99D4F8);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_75BB20();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel] = sub_75BB10();
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v18, qword_99D510);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_75BB10();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_36EA8C(v39, v39);

  return v39;
}

uint64_t sub_36E530()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_7664F0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75EAC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75EAE0();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99D4E0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_75BB20();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_75EAD0();
  sub_75EA90();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_36E894(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1)
  {
    return sub_36EA8C(v2, v2);
  }

  if ((sub_7699F0() ^ v5))
  {
    return sub_36EA8C(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_7699D0() & 1;

  result = sub_7699D0();
  if ((result & 1) != v7)
  {
    return sub_36EA8C(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell()
{
  result = qword_950F90;
  if (!qword_950F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_36EA8C(void *a1, uint64_t a2)
{
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_7699D0();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_75BA90();
    v12(v8, v11, v4);
    return sub_75BA90();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

id sub_36EC2C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_99D538];
  v12 = sub_759210();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_99D530] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell()
{
  result = qword_950FC8;
  if (!qword_950FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36EE20()
{
  sub_759050();
  sub_759210();
  sub_36EF10(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_36EEB8(uint64_t a1)
{
  result = sub_36EF10(&qword_951150, type metadata accessor for FramedArtworkCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_36EF10(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_36EF58(uint64_t a1, int *a2)
{
  v30[0] = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v30[4] == v30[2] && v30[5] == v30[3])
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_76A950();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_6C330C(a1, v30[0]);
    }
  }

  v17 = COERCE_DOUBLE(sub_36FBC8(a1, v30[0]));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77D9F0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_36F37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_75B660();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_764930();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_BD88(&unk_94F1F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v81 == v79 && v82 == v80)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_5:
    v29 = v67;
    sub_75DAA0();
    swift_getKeyPath();
    v30 = v68;
    sub_768750();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_3706DC(&qword_9439F8, &type metadata accessor for ShelfBackground);
    v34 = sub_7691C0();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_6;
  }

  v64 = sub_76A950();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_5;
  }

LABEL_6:
  v36 = sub_769240();
  v39 = v76;
  v38 = v77;
  if (v36 == v76 && v37 == v77)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v42 = sub_BD88(&qword_951300);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_15D000(&qword_951308, &qword_951300);
    v78 = sub_B1B4(v43);
    v44 = sub_769240();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView();
    sub_769BD0();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

    goto LABEL_16;
  }

  v41 = sub_76A950();

  if (v41 & v28)
  {
    goto LABEL_13;
  }

LABEL_9:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_769BC0() == v39 && v40 == v38)
  {
  }

  else
  {
    v53 = sub_76A950();

    if ((v53 & 1) == 0)
    {
      return sub_6BED78(v39, v38, a3, v65, v78);
    }
  }

  v54 = sub_BD88(&qword_9512F0);
  v55 = v78;
  v78[3] = v54;
  v55[4] = sub_15D000(&qword_9512F8, &qword_9512F0);
  v78 = sub_B1B4(v55);
  sub_769BC0();
  sub_769BD0();
  v56 = v74;
  v57 = v75;
  v58 = a3;
  v59 = v73;
  (*(v75 + 16))(v73, v58, v74);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v60, v59, v56);
LABEL_16:
  sub_763760();
  return result;
}

uint64_t sub_36FBC8(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_7656C0();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764930();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_75DA60();
      sub_765BE0();
      sub_765630();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView();
      v31 = sub_50F5C0(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_76A950();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_6BFEFC(v22, v37);
}

double *sub_370048()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_BD88(&unk_94F1F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_6C3644();
  v20 = v11;
  if (sub_4AD020())
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    else
    {
      v13 = sub_76A950();
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);

      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    v15 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_769BC0();
    v16 = sub_769210();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    sub_769440();
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    return v20;
  }

  return v11;
}

uint64_t sub_370414()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_370500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_370538()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_370610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6C1E64(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_3706DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_370728()
{
  v0 = sub_7580D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_764CF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7586A0())
  {
    sub_BD88(&unk_944300);
    sub_768900();
    sub_768ED0();
    v11 = v0;
    swift_getObjectType();
    sub_7586E0();
    sub_764F00();

    sub_758330();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    sub_7586E0();
    sub_764E00();

    sub_758230();
    v8 = sub_758080();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v3, v11);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

__n128 sub_370988(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_3709B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3709FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_370A68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_370A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_370AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_370B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_370B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_370BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v54 = sub_75E800();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_75E820();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_75E840();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_75E850();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_76A920();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  result = sub_75E810();
  v60 = v2;
  v14 = *(v2 + 120);
  v46 = *(v14 + 16);
  if (v46)
  {
    v15 = 0;
    v16 = v14 + 32;
    v57 = (v11 + 8);
    v44 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v43 = (v7 + 104);
    v42 = (v5 + 104);
    v41 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v40 = v56 + 8;
    v39 = (v5 + 8);
    v38 = (v7 + 8);
    v37 = (v9 + 8);
    v36 = xmmword_77B6D0;
    v45 = v14;
    v17 = v49;
    while (v15 < *(v14 + 16))
    {
      *v65 = v15;
      result = sub_371864(v16, &v65[8]);
      if (*&v66[8])
      {
        v26 = *v65;
        *v65 = *&v65[8];
        *&v65[16] = *v66;
        *v66 = *&v66[8];
        *&v66[16] = *&v66[24];
        *&v66[32] = *&v66[40];
        *&v66[48] = v67;
        v27 = 24;
        if (!v26)
        {
          v27 = 64;
        }

        v28 = 40;
        if (v26)
        {
          v28 = 0;
        }

        sub_B170((v60 + v28), *(v60 + v27));
        v29 = v58;
        sub_33964();
        sub_766700();
        v31 = v30;
        v32 = *v57;
        (*v57)(v29, v59);
        v33 = 0;
        if (v26 == *(v14 + 16) - 1)
        {
          sub_B170((v60 + 80), *(v60 + 104));
          v34 = v58;
          sub_33964();
          sub_766700();
          v33 = v35;
          v32(v34, v59);
        }

        ++v15;
        v18 = v50;
        (*v43)(v17, v44, v50);
        v19 = v51;
        v20 = v52;
        (*v42)(v51, v41, v52);
        v64[3] = &type metadata for CGFloat;
        v64[4] = &protocol witness table for CGFloat;
        v64[0] = v31;
        v63[3] = &type metadata for CGFloat;
        v63[4] = &protocol witness table for CGFloat;
        v63[0] = v33;
        sub_BD88(&qword_9417E0);
        v21 = v56;
        v22 = swift_allocObject();
        *(v22 + 16) = v36;
        sub_75E7D0();
        v62 = v22;
        sub_3718CC();
        sub_BD88(&qword_9417F0);
        sub_7DCC8();
        v23 = v53;
        v24 = v54;
        sub_76A5A0();
        v25 = v47;
        sub_75E830();
        (*(v21 + 8))(v23, v24);
        (*v39)(v19, v20);
        (*v38)(v17, v18);
        sub_34630(v63);
        sub_BEB8(v64);
        sub_75E860();
        (*v37)(v25, v48);
        result = sub_37189C(v65);
        v16 += 80;
        v14 = v45;
        if (v46 != v15)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_371388(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75E870();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_370BF0(a1, v16);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v30 = v16;
  sub_75E7C0();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_371864(v19, v39);
      sub_33B80(&v41, &v36);
      if (v37)
      {
        sub_34698(&v36, v38);
        sub_B170(v39, v40);
        sub_766520();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_B170(v38, v38[3]);
        sub_33964();
        sub_766700();
        (*(v12 + 8))(v14, v11);
        v42.origin.x = v21;
        v42.origin.y = v23;
        v42.size.width = v25;
        v42.size.height = v27;
        CGRectGetWidth(v42);
        v43.origin.x = v21;
        v43.origin.y = v23;
        v43.size.width = v25;
        v43.size.height = v27;
        CGRectGetHeight(v43);
        v44.origin.x = v33;
        v44.origin.y = v34;
        v44.size.width = v35;
        v44.size.height = a5;
        CGRectGetMidX(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetMinY(v45);
        sub_B170(v39, v40);
        sub_766530();
        sub_37189C(v39);
        sub_BEB8(v38);
      }

      else
      {
        sub_37189C(v39);
        sub_34630(&v36);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v31 + 8))(v30, v32);
}

void sub_37172C(uint64_t a1)
{
  v3 = sub_75E870();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + 120) + 16))
  {
    sub_370BF0(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_75E7B0();
    (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_3718CC()
{
  result = qword_9417E8;
  if (!qword_9417E8)
  {
    sub_75E800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9417E8);
  }

  return result;
}

double sub_371970()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E490();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75E4B0();
  sub_371D7C(&qword_94F768, &type metadata accessor for ProductReviewAction);
  sub_75C750();
  if (v28[1])
  {
    sub_75E4A0();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v10 = v9;
      (*(v1 + 8))(v3, v0);
      v11 = sub_527DE4();
      sub_2FCFA8(v11, v10);
      v13 = v12;
      swift_unknownObjectRelease();

LABEL_13:

      return v13;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v28[0] = type metadata accessor for ProductReviewActionsView();
      v14 = sub_75E4D0();
      v15 = sub_75E4C0();
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v17 = v16;
      v19 = v18;
      (*(v1 + 8))(v3, v0);
      sub_527DE4();
      if (v14)
      {

        v20 = sub_764C60();
        v22 = v21;

        if (v15)
        {
LABEL_7:

          v23 = sub_764C60();
          v25 = v24;

LABEL_12:
          sub_480530(v20, v22, v23, v25, v28[0], v17, v19);
          v13 = v26;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v20 = 0;
        v22 = 0;
        if (v15)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v25 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_371D7C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_371DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_BD88(&qword_946810);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_769050();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_134D8(v26, v34);
  sub_BD88(&unk_944DA0);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_769060();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_372104(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_BD88(&unk_944D90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_BD88(&qword_944D88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_134D8(a1, v21);
  sub_BD88(&unk_944DA0);
  sub_75B1B0();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_768FA0();
    sub_768B30();
    sub_1B2A9C(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_372310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_944D90);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_BD88(&qword_944D88);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_134D8(a1, v73);
  sub_BD88(&unk_944DA0);
  sub_764C80();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v64 = v21;
  sub_768B30();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  sub_764C60();
  sub_75BA70();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView];
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v28 = sub_76A520();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_764C30();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_BE70(0, &qword_93E540);
    v35 = sub_769FD0();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_3DB210(v36);
  v38 = type metadata accessor for Accessory();
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_2512A8(v40, v67);
  sub_10A2C(v40, &qword_93FF90);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == &dword_0 + 1 || (sub_75F9C0(), v45 = sub_76A520(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_764C70();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_24F274();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_75F9C0();
  v58 = sub_76A520();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_3729D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_BD88(&unk_948730);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_75FA00();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7664A0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_7674E0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_767510();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_944D90);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_BD88(&qword_944D88);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_134D8(a1, v95);
  sub_BD88(&unk_944DA0);
  sub_764F90();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_768FA0();
    v75 = v33;
    sub_768B30();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_766CA0();
    v97 = &protocol witness table for StaticDimension;
    sub_B1B4(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_B1B4(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_766CB0();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_7674F0();
    v39 = v90;
    sub_75F9B0();
    sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_76A520();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_FB88C(v44, &v46[v45], &qword_94C3F0);
      swift_endAccess();
      sub_276DA8();
      sub_10A2C(v44, &qword_94C3F0);
      v47 = v90;
      sub_75F9C0();
      v48 = v91;
      LOBYTE(v45) = sub_76A520();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_7674A0();
        sub_B170(v95, v96);
        sub_766710();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_BEB8(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_FB88C(v52, &v46[v54], &qword_94C3F0);
      swift_endAccess();
      sub_276DA8();
      sub_10A2C(v52, &qword_94C3F0);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_75F990();
      v57 = v91;
      v58 = sub_76A520();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_BD88(&unk_948740);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_758C70();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_75BD30();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_BD88(&unk_9457F0);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_765870();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_4A18A4(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10A2C(v72, &unk_9457D0);
    v62[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v62 setNeedsLayout];
    sub_10A2C(v70, &unk_94AC40);
    sub_10A2C(v68, &unk_9457E0);
    sub_10A2C(v66, &unk_94A780);
    sub_10A2C(v64, &unk_948730);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_373778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_BD88(&unk_944D90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_BD88(&qword_944D88);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_134D8(a1, v28);
  sub_BD88(&unk_944DA0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_37399C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a6;
  v10 = sub_BD88(&unk_944D90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_BD88(&qword_944D88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_134D8(a1, v26);
  sub_BD88(&unk_944DA0);
  sub_759DF0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_768FA0();
    sub_768B30();
    v19 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_56FA00(v19);

    v20 = v25;
    v21 = [v25 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_56F8F4(v23);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_373C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_BD88(&qword_944D88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0);
  sub_75A3E0();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_768FA0();
    sub_768B30();
    v18 = sub_38CEC0(&qword_944E58, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_373E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v46 = a2;
  v47 = a6;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&qword_944EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  v18 = sub_BD88(&unk_95CF90);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v48 = &v44 - v19;
  v20 = sub_BD88(&unk_944D90);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = sub_BD88(&qword_944D88);
  v50 = *(v24 - 8);
  v51 = v24;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  sub_134D8(a1, v57);
  sub_BD88(&unk_944DA0);
  sub_75A600();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v46, v20);
    sub_768FA0();
    sub_768B30();
    v28 = [v47 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_75A5F0();
    v29 = sub_75B260();

    v45 = v26;
    if (v29)
    {
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v30 = sub_BE38(v12, qword_99CA78);
      sub_FCD60(v30, v17);
      v31 = *v17;
      v32 = v29;

      *v17 = v29;
      sub_FCD60(v17, v14);
      sub_BD88(&qword_93FBE0);
      v33 = v48;
      sub_7592F0();

      sub_FCDC4(v17);
    }

    else
    {
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v34 = sub_BE38(v12, qword_99CA78);
      sub_FCD60(v34, v17);
      sub_BD88(&qword_93FBE0);
      v33 = v48;
      sub_7592F0();
    }

    v35 = v53;
    v36 = sub_75A5F0();
    v37 = v52;
    (*(v52 + 16))(v11, v33, v35);
    (*(v37 + 56))(v11, 0, 1, v35);
    sub_5F8FA0(v36, v11, v49);

    sub_10A2C(v11, &qword_944EA0);
    v38 = sub_75A5E0();
    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = ObjectType;
    v56.receiver = v7;
    v56.super_class = ObjectType;
    objc_msgSendSuper2(&v56, "setBackgroundColor:", v38);
    v41 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
    v55.receiver = v7;
    v55.super_class = v40;
    v42 = v41;
    v43 = objc_msgSendSuper2(&v55, "backgroundColor");
    sub_759070();

    [v7 setNeedsLayout];

    (*(v37 + 8))(v33, v35);
    return (*(v50 + 8))(v45, v51);
  }

  return result;
}

uint64_t sub_3744A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_7623A0();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_BD88(&unk_9457F0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_763750();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948730);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_BD88(&unk_944D90);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_BD88(&qword_944D88);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_134D8(a1, v67);
  sub_BD88(&unk_944DA0);
  sub_75AAB0();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_768FA0();
    sub_768B30();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_75AA50();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_76A860();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_5:
        v34 = v32;
        sub_75A110();
        sub_768900();
        sub_768ED0();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = v35;

        sub_533B34(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_75AA90();
        v40 = sub_75AA70();
        v41 = sub_75AA60();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_38CEC0(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
        sub_760940();
        v42 = sub_BD88(&unk_948740);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_38CEC0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_760940();
        sub_1DFEBC(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10A2C(v20, &unk_948730);
        sub_761230();
        sub_768900();
        sub_768ED0();
        v46 = v67[0];
        sub_75AA80();
        sub_75AAA0();
        v47 = sub_761190();
        swift_allocObject();
        v48 = v46;
        v49 = sub_761170();
        sub_38CEC0(&unk_9513A0, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_761180();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_B33C8(v67, &v33[v50], &unk_93FBD0);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_374E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_BD88(&unk_944D90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_BD88(&qword_944D88);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_134D8(a1, v43);
  sub_BD88(&unk_944DA0);
  sub_757BA0();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v21 = v39[1];
    sub_320474(v20, a3, a4, a5, a6);
    sub_757B90();
    v22 = sub_764EF0();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x80000000007CF0F0;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_75B750(v44, v45);
      sub_BD88(&unk_944E30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77B6D0;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_FA4CC();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_769270();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_769210();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_769210();

      v31 = [v29 initWithString:v30];

      v32 = sub_769210();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_BD88(&unk_944E40);
      v37 = sub_76A470();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_3752F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_BD88(&unk_944D90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_BD88(&qword_944D88);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_134D8(a1, v28);
  sub_BD88(&unk_944DA0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_375514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_BD88(&unk_944D90);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_768B20();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_76A480();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_134D8(v38, v39);
  sub_BD88(&unk_944DA0);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_768B30();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_3758CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_BD88(&unk_944D90);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_768B20();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_134D8(v20, v25);
  sub_BD88(&unk_944DA0);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_768B30();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_375B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_375C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_375CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_375D58(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-v13];
  v15 = sub_BD88(&qword_943FD0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23[-v17];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_768FA0();
  sub_769060();
  v19 = v24;
  ObjectType = swift_getObjectType();
  v21 = sub_271EC(a2, v19, a7, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v21;
}

double sub_375FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3762E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376360(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_BD88(&qword_946810);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_BD88(&qword_943FD0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_768FA0();
  sub_769060();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_5DF100(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_37656C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  v15 = sub_BD88(&qword_943FD0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v20[-v17];
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0);
  sub_758770();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_768FA0();
  sub_769060();
  sub_4309AC(v21, a7);
  (*(v16 + 8))(v18, v15);

  return a2;
}

double sub_3767E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3769B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_946810);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_BD88(&qword_943FD0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_768FA0();
  sub_769060();
  sub_765E60();
  sub_765E30();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  return v14;
}

double sub_376B7C(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_BD88(&qword_946810);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-v9];
  v11 = sub_BD88(&qword_943FD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  sub_134D8(a1, v17);
  sub_BD88(&unk_944DA0);
  sub_75B1B0();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a4, v7);
  sub_768FA0();
  sub_769060();
  v15 = sub_1B4888(a2);
  (*(v12 + 8))(v14, v11);

  return v15;
}

double sub_376DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-v11];
  v13 = sub_BD88(&qword_943FD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-v15];
  sub_134D8(a1, v19);
  sub_BD88(&unk_944DA0);
  sub_765430();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a3, v9);
  sub_768FA0();
  sub_769060();
  v17 = sub_50025C(v20, a6, 1);
  (*(v14 + 8))(v16, v13);

  return v17;
}

double sub_377284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3773D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_377450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3775A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_37761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3776D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_377820(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_BD88(&qword_950670);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768B30();
  sub_280A0();
  sub_768AF0();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_3779DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&qword_946810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_BD88(&qword_943FD0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_768FA0();
  sub_769060();
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v15 = sub_766690();
  sub_BE38(v15, qword_99D338);
  sub_766660();
  (*(v11 + 8))(v14, v10);
  return a1;
}

double sub_377BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_377D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

void sub_377E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_946810);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_BD88(&qword_943FD0);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_768FA0();
  sub_769060();
  sub_76A840();
  __break(1u);
}

double sub_377FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_946810);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_BD88(&qword_943FD0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_768FA0();
  sub_769060();
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v13 = sub_75D510();
  sub_BE38(v13, qword_99D278);
  sub_75D530();
  sub_38CEC0(&qword_94F368, &type metadata accessor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v14 = sub_767510();
  sub_BE38(v14, qword_99D290);
  sub_769DD0();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return v16;
}

double sub_378320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3783D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_378470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3784EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3785A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3786D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_BD88(&qword_951438);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_758A00();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v32);
  sub_BD88(&unk_944DA0);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_769060();
  v23 = sub_38CEC0(&unk_951440, type metadata accessor for AnnotationCollectionViewCell);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_378A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_378B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_378BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_378C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_BD88(&qword_943FD0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_768FA0();
  sub_769060();
  sub_5367D4(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_378E2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_BD88(&qword_946810);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_BD88(&qword_943FD0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_768FA0();
  sub_769060();
  sub_5A6D14(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_378FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3790A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3791B8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_BD88(&qword_946810);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-v14];
  v16 = sub_BD88(&qword_943FD0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v24[-v18];
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  swift_dynamicCast();
  (*(v13 + 16))(v15, a4, v12);
  sub_768FA0();
  sub_769060();
  v20 = v25;
  ObjectType = swift_getObjectType();
  v22 = sub_59D5F0(a2, v20, a7, v7, ObjectType);
  (*(v17 + 8))(v19, v16);

  return v22;
}

double sub_379490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3795E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379674(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_BD88(&qword_946810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_BD88(&qword_943FD0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0);
  sub_759DF0();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_768FA0();
  sub_769060();
  v21 = sub_571A34(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_3798A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3799F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379AA8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_BD88(&qword_946810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_BD88(&qword_943FD0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_134D8(a1, v30);
  sub_BD88(&unk_944DA0);
  sub_758700();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_768FA0();
  sub_769060();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_379D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_379E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_37A0B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&qword_946810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_BD88(&qword_943FD0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_768FA0();
  sub_769060();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();
  v15 = sub_6B2178(a1);
  (*(v11 + 8))(v14, v10);
  return v15;
}

double sub_37A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_37A4B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_BD88(&qword_944D88);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768FA0();
  sub_768B30();
  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t sub_37A660(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_BD88(&qword_944D88);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768FA0();
  sub_768B30();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_37A7EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v47 = v46 - v8;
  v9 = sub_766690();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_946810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - v15;
  v17 = sub_BD88(&qword_943FD0);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0);
  sub_759490();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_768FA0();
  v48 = v19;
  sub_769060();
  if ((sub_759430() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (sub_759480())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v10 + 8))(v12, v9);
    sub_759430();
  }

  v20 = sub_759450();
  v21 = [v20 length];

  if (v21 >= 1)
  {
    sub_759460();
    if (v22)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v23 = sub_7666D0();
      sub_BE38(v23, qword_99F640);
      v24 = sub_7653B0();
      v52 = v24;
      v53 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
      v25 = sub_B1B4(aBlock);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();
    }

    v26 = sub_759450();
    v46[1] = a4;
    v27 = [a4 traitCollection];
    v28 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v26];
    v29 = [v26 length];
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = v27;
    *(v30 + 32) = v28;
    *(v30 + 40) = 1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_119AC;
    *(v31 + 24) = v30;
    v53 = sub_2636C;
    v54 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v52 = &unk_88ED60;
    v32 = _Block_copy(aBlock);
    v33 = v27;
    v34 = v28;

    [v26 enumerateAttributesInRange:0 options:v29 usingBlock:{0x100000, v32}];

    _Block_release(v32);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    else
    {
      v35 = qword_93DA10;
      v26 = v34;
      if (v35 == -1)
      {
LABEL_12:
        v36 = sub_7666D0();
        v37 = sub_BE38(v36, qword_99F628);
        v38 = *(v36 - 8);
        v39 = v47;
        (*(v38 + 16))(v47, v37, v36);
        (*(v38 + 56))(v39, 0, 1, v36);
        v40 = sub_7653B0();
        v52 = v40;
        v53 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
        v41 = sub_B1B4(aBlock);
        (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v39, &unk_93E530);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v42 = sub_766CA0();
        sub_BE38(v42, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v42, qword_9A09D0);
        sub_7666F0();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_769D90();
  v44 = v43;
  (*(v49 + 8))(v48, v50);

  return v44;
}

uint64_t sub_37B170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_37B188(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = sub_75ABC0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_75ABE0();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762D10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_946810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v39 = sub_BD88(&qword_943FD0);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v18 = &v36 - v17;
  sub_134D8(a1, v51);
  sub_BD88(&unk_944DA0);
  sub_7654E0();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_768FA0();
  v36 = v18;
  sub_769060();
  sub_7654D0();
  v19 = sub_7654C0();
  sub_BE70(0, &qword_93F900);
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  sub_BE38(v20, qword_99E9F8);
  v45 = a4;
  v21 = [a4 traitCollection];
  v22 = sub_769E10();

  v23 = sub_7653B0();
  v51[3] = v23;
  v51[4] = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v24 = sub_B1B4(v51);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  sub_765C30();
  sub_BEB8(v51);
  sub_762D00();
  sub_762CE0();
  (*(v10 + 8))(v12, v9);
  if ((v19 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v26 = sub_7670D0();
    swift_allocObject();
    v27 = sub_7670B0();
    *(&v49 + 1) = v26;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    *&v48 = v27;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  v28 = v45;
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_BE38(v40, qword_99B278);
  (*(v38 + 16))(v41, v30, v29);
  sub_134D8(v51, v47);
  sub_6D310(&v48, v46);
  v31 = v42;
  sub_75ABD0();
  [v28 pageMarginInsets];
  sub_769DA0();
  sub_38CEC0(&qword_951400, &type metadata accessor for FootnoteLayout);
  v32 = v44;
  sub_7665A0();
  sub_769DC0();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_BEB8(v51);
  (*(v37 + 8))(v36, v39);
  sub_10A2C(&v48, &unk_943B10);

  return v34;
}

double sub_37B928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = sub_760530();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_760550();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_762D10();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - v13;
  v46 = sub_BD88(&qword_943FD0);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = v41 - v15;
  sub_134D8(a1, v59);
  sub_BD88(&unk_944DA0);
  sub_75CB00();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  v44 = v16;
  sub_769060();
  v17 = v59[5];
  v18 = sub_BE70(0, &qword_93F900);
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v42 = sub_7666D0();
  sub_BE38(v42, qword_99F208);
  v19 = [a4 traitCollection];
  v20 = sub_769E10();

  sub_75CAF0();
  v21 = sub_7653B0();
  v59[3] = v21;
  v22 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v59[4] = v22;
  v23 = sub_B1B4(v59);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v41[1] = v17;
  v26 = *(v25 + 104);
  v53 = a4;
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  v27 = v20;
  v41[0] = v18;
  v28 = v27;
  sub_765C30();
  sub_BEB8(v59);
  v43 = v28;
  sub_762D00();
  sub_762CE0();
  v29 = *(v55 + 8);
  v55 += 8;
  v29(v10, v54);
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  sub_BE38(v42, qword_99F220);
  v30 = [v53 traitCollection];
  v31 = sub_769E10();

  sub_75CAE0();
  v58[3] = v21;
  v58[4] = v22;
  v32 = sub_B1B4(v58);
  v26(v32, v24, v21);
  v33 = v31;
  sub_765C30();
  sub_BEB8(v58);
  sub_762D00();
  sub_762CE0();
  v29(v10, v54);
  if (qword_93CA88 != -1)
  {
    swift_once();
  }

  v34 = v48;
  v35 = sub_BE38(v48, qword_99CAC0);
  (*(v47 + 16))(v49, v35, v34);
  sub_134D8(v59, v57);
  sub_134D8(v58, v56);
  v36 = v50;
  sub_760540();
  sub_38CEC0(&unk_951380, &type metadata accessor for PrivacyDefinitionLayout);
  v37 = v52;
  sub_7665A0();
  v39 = v38;

  (*(v51 + 8))(v36, v37);
  sub_BEB8(v58);
  sub_BEB8(v59);
  (*(v45 + 8))(v44, v46);

  return v39;
}

double sub_37C140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = a4;
  v85 = sub_762D10();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v71 - v8;
  __chkstk_darwin(v9);
  v78 = &v71 - v10;
  v76 = sub_75E890();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_7609C0();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7609A0();
  v94 = *(v13 - 8);
  __chkstk_darwin(v13);
  v89 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v71 - v16;
  v17 = sub_765C90();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = sub_BD88(&qword_946810);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v92 = sub_BD88(&qword_943FD0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v28 = &v71 - v27;
  sub_134D8(a1, v101);
  sub_BD88(&unk_944DA0);
  sub_75D1C0();
  swift_dynamicCast();
  (*(v24 + 16))(v26, a2, v23);
  sub_768FA0();
  v90 = v28;
  sub_769060();
  v29 = v101[5];
  v30 = sub_75D180();
  if (*(v30 + 16))
  {
    v31 = v18;
    v32 = v88;
    v73 = v31;
    v33 = *(v31 + 16);
    v34 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v86 = v22;
    v87 = v17;
    v33(v22, v34, v17);

    if (qword_93C800 != -1)
    {
      swift_once();
    }

    v35 = sub_BE38(v13, qword_99BE50);
    v36 = *(v94 + 16);
    v37 = v93;
    v36(v93, v35, v13);
    v38 = [v32 traitCollection];
    v39 = sub_769A00();

    if (v39)
    {
      v71 = v13;
      v36(v89, v37, v13);
      v33(v74, v86, v87);
      v40 = v29;
      sub_75D1A0();
      v41 = [v32 traitCollection];
      v42 = sub_7699D0();

      v43 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v42 & 1) == 0)
      {
        v43 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v75 + 104))(v77, *v43, v76);
      v44 = sub_75E8A0();
      v45 = objc_allocWithZone(v44);
      v46 = sub_75E880();
      v101[3] = v44;
      v101[4] = &protocol witness table for UIView;
      v101[0] = v46;
      v47 = sub_75D1B0();
      v102._object = 0x80000000007CF0B0;
      v102._countAndFlagsBits = 0xD000000000000032;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      sub_761130(v102, v47, v103);
      v48 = sub_BE70(0, &qword_93F900);
      if (qword_93D830 != -1)
      {
        swift_once();
      }

      v77 = sub_7666D0();
      sub_BE38(v77, qword_99F088);
      v76 = v48;
      sub_769E00();
      v49 = sub_7653B0();
      v100[3] = v49;
      v75 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
      v100[4] = v75;
      v50 = sub_B1B4(v100);
      v51 = *(*(v49 - 8) + 104);
      LODWORD(v74) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72 = v51;
      v51(v50);
      sub_765C30();
      sub_BEB8(v100);
      v52 = v78;
      sub_762D00();
      sub_762CE0();
      v53 = *(v84 + 8);
      v54 = v85;
      v53(v52, v85);
      v55 = [v32 traitCollection];
      sub_13F070();
      v84 = v40;

      if (qword_93D838 != -1)
      {
        swift_once();
      }

      sub_BE38(v77, qword_99F0A0);
      sub_769E00();
      v99[3] = v49;
      v99[4] = v75;
      v56 = sub_B1B4(v99);
      v72(v56, v74, v49);
      sub_765C30();
      sub_BEB8(v99);
      v57 = v79;
      sub_762D00();
      sub_762CE0();
      v53(v57, v54);
      sub_75D190();
      if (qword_93D840 != -1)
      {
        swift_once();
      }

      sub_BE38(v77, qword_99F0B8);
      sub_769E00();
      v98[3] = v49;
      v98[4] = v75;
      v58 = sub_B1B4(v98);
      v72(v58, v74, v49);
      sub_765C30();
      sub_BEB8(v98);
      v59 = v81;
      sub_762D00();
      sub_762CE0();
      v53(v59, v54);
      v97 = 0;
      v96 = 0u;
      v95 = 0u;
      v60 = v80;
      sub_7609B0();
      sub_38CEC0(&unk_9463E0, &type metadata accessor for AchievementSummaryLayout);
      v61 = v83;
      sub_7665A0();
      v63 = v62;
      (*(v82 + 8))(v60, v61);
      (*(v94 + 8))(v93, v71);
      (*(v73 + 8))(v86, v87);
    }

    else
    {
      [v32 pageContainerSize];
      if (v65 >= v64)
      {
        v67 = v87;
        v66 = v93;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v66 = v93;
        v67 = v87;
      }

      v68 = v86;
      sub_760970();
      v63 = v69;
      (*(v94 + 8))(v66, v13);
      (*(v73 + 8))(v68, v67);
    }
  }

  else
  {

    v63 = 0.0;
  }

  (*(v91 + 8))(v90, v92);

  return v63;
}

double sub_37CEC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_BD88(&qword_946810);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_BD88(&qword_943FD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-v13];
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0);
  sub_75CC50();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_768FA0();
  sub_769060();
  v15 = sub_75CC20();
  v17 = v16;
  v18 = sub_75CC40();
  v19 = sub_75CC30();
  swift_getObjectType();
  v20 = sub_35BEE0(v15, v17, v18, v19, a4);

  (*(v12 + 8))(v14, v11);

  return v20;
}

double sub_37D134(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_BD88(&qword_946810);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_BD88(&qword_943FD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_75A270();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_768FA0();
  sub_769060();
  v18 = v24[5];
  sub_BD88(&unk_943590);
  sub_768900();
  sub_768ED0();
  v23[1] = v18;
  sub_758C30();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_440B18(v19, v20, a6, a3);
  sub_B3204(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_37D3DC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_76A920();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_766690();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_BD88(&qword_946810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_BD88(&qword_943FD0);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_134D8(a1, &v106);
  sub_BD88(&unk_944DA0);
  sub_7648E0();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_768FA0();
  v90 = v20;
  sub_769060();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x80000000007CC420;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_75B750(v110, v111);
  v24 = sub_3A5CC8(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_93CE60 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_99D650;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_99D6A8;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D548;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_93CE50 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D5A0;
  }

  else
  {
    if (qword_93CE58 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D5F8;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_72018(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_3A5D14(&v106);

  *&v97 = v21;
  sub_7648B0();
  v37 = v36;
  v38 = sub_BE70(0, &qword_93F900);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v94 = sub_7666D0();
  v39 = sub_BE38(v94, qword_99D700);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_769E10();

  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_93C2E0;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_99A440 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_BE70(0, &qword_940F48);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_769210();
  type metadata accessor for Key(0);
  sub_38CEC0(&qword_93EC10, type metadata accessor for Key);
  v50.super.isa = sub_7690E0().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_10D028(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_769210();
    v56 = sub_7690E0().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_72078(v102);
  }

  else
  {

    sub_72078(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_7653B0();
  v100 = v66;
  v67 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v101 = v67;
  v68 = sub_B1B4(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_765C30();
  sub_BEB8(v99);
  sub_762CA0();
  sub_10A2C(v65, &unk_93E530);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v71 = sub_766CA0();
  sub_BE38(v71, qword_99D730);
  sub_766720();
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_99D748);
  sub_7666F0();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_7648C0();
  if (v72)
  {
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    sub_BE38(v94, qword_99D718);
    v100 = v66;
    v101 = v67;
    v73 = sub_B1B4(v99);
    v70(v73, v69, v66);
    sub_765C30();
    sub_BEB8(v99);
    v74 = v98;
    sub_762CB0();

    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D760);
    sub_766720();
    v75 = v74;
    v76 = v93;
    v77 = &unk_90D000;
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D778);
    sub_7666F0();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &unk_90D000;
  }

  if (sub_7648D0())
  {
    sub_765260();
    sub_765260();
    sub_7666A0();
    if ((sub_7648A0() & 1) == 0)
    {
      [v75 v77[511]];
      [v75 v77[511]];
    }

    sub_766660();
    v78 = v95;
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D790);
    v79 = v82;
    sub_766470();
    sub_766700();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_37E3A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_BD88(&qword_946810);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v28 = sub_BD88(&qword_943FD0);
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  sub_134D8(a1, &v30);
  sub_BD88(&unk_944DA0);
  sub_764C80();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_768FA0();
  sub_769060();
  v14 = v33;
  swift_getObjectType();
  v15 = [a4 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == &dword_0 + 1)
  {
    [a4 pageMarginInsets];
  }

  v29 = v14;

  sub_BD88(&unk_952540);
  if (swift_dynamicCast())
  {
    sub_B170(&v30, *(&v31 + 1));
    v17 = sub_762A20();
    sub_BEB8(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10A2C(&v30, &unk_9513E0);
    v17 = 0;
  }

  v18 = sub_764C60();
  v20 = v19;
  v21 = sub_764C70();
  if (v21)
  {
  }

  v22 = sub_3DB210(a4);
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v23 = sub_759B00();
  v24 = sub_BE38(v23, qword_99BBB0);
  v25 = sub_251BC4(v24, a4, v18, v20, v21 != 0, v22, v17 & 1);

  (*(v11 + 8))(v13, v28);

  return v25;
}

double sub_37E7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_BD88(&qword_943FD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15];
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_758700();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  v17 = v25;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for AppEventView();
  v22 = sub_650A20(v20, v17, a5, a3, v21, ObjectType);
  (*(v14 + 8))(v16, v13);

  return v22;
}

uint64_t sub_37E9E8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - v13;
  v15 = sub_BD88(&qword_93F730);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0);
  sub_765940();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_769060();
  v18 = aBlock[6];
  sub_280A0();
  v39 = v15;
  v37 = v17;
  sub_769030();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v36 = sub_765890();
  }

  else
  {
    v36 = LOBYTE(aBlock[0]);
  }

  v19 = sub_7658D0();
  v35[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v35[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_266A8;
  *(v25 + 24) = v24;
  aBlock[4] = sub_26694;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_88EE78;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v30 = v28;
    [a6 pageMarginInsets];
    sub_334D4C(v28, v36 & 1, a6, v31, v32, v33, v34, a3, a4);

    sub_3B1248(v35[0], a6);
    (*(v38 + 8))(v37, v39);
  }

  return result;
}

double sub_37EE50(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v112 = a5;
  ObjectType = a2;
  v7 = sub_75CBF0();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762D10();
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7666D0();
  v107 = *(v11 - 8);
  v108 = v11;
  __chkstk_darwin(v11);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75BE90();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v109 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = sub_75CBD0();
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = sub_BD88(&qword_946810);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28 = sub_BD88(&qword_943FD0);
  v90 = *(v28 - 8);
  v91 = v28;
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_134D8(a1, v119);
  sub_BD88(&unk_944DA0);
  sub_759650();
  swift_dynamicCast();
  (*(v25 + 16))(v27, ObjectType, v24);
  v31 = v112;
  sub_768FA0();
  v89 = v30;
  sub_769060();
  v32 = v119[5];
  v33 = sub_759640();
  sub_759610();
  ObjectType = swift_getObjectType();
  sub_827CC(v33, v18, v31, v23);

  v34 = *(v14 + 8);
  v88 = v18;
  v34(v18, v13);
  v35 = sub_7670D0();
  swift_allocObject();
  v36 = sub_7670B0();
  swift_allocObject();
  v85 = sub_7670B0();
  swift_allocObject();
  v84 = sub_7670B0();
  v102 = v23;
  sub_75CBB0();
  v111 = v35;
  v37 = v109;
  swift_allocObject();
  v38 = sub_7670B0();
  sub_759610();
  v39 = (*(v14 + 88))(v37, v13);
  v86 = v36;
  v83 = v38;
  if (v39 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v39 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v39 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v46 = v106;
      if (qword_93D880 != -1)
      {
        swift_once();
      }

      v47 = v108;
      v48 = sub_BE38(v108, qword_99F178);
      (*(v107 + 16))(v46, v48, v47);
      v45 = 4;
      goto LABEL_13;
    }

    v42 = v106;
    if (qword_93D878 != -1)
    {
      swift_once();
    }

    v43 = v108;
    v44 = sub_BE38(v108, qword_99F160);
    (*(v107 + 16))(v42, v44, v43);
    v34(v37, v13);
    goto LABEL_9;
  }

  if (qword_93D878 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v40 = v108;
    v41 = sub_BE38(v108, qword_99F160);
    (*(v107 + 16))(v106, v41, v40);
LABEL_9:
    v45 = 1;
LABEL_13:
    v109 = v45;
    sub_BE70(0, &qword_93F900);
    v49 = v112;
    v50 = [v112 traitCollection];
    v51 = sub_769E10();

    sub_759620();
    v52 = sub_7653B0();
    v119[3] = v52;
    v98 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
    v119[4] = v98;
    v53 = sub_B1B4(v119);
    v105 = v32;
    v54 = *(v52 - 8);
    v55 = *(v54 + 104);
    v97 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v95 = v54 + 104;
    v96 = v55;
    v55(v53);
    v56 = v51;
    sub_765C30();
    sub_BEB8(v119);
    v57 = v99;
    v82 = v56;
    sub_762D00();
    sub_762CE0();
    v58 = v101;
    v32 = v100[1];
    v32(v57, v101);
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    sub_BE38(v108, qword_99F190);
    v59 = [v49 traitCollection];
    v60 = sub_769E10();

    sub_759630();
    v118[3] = v52;
    v118[4] = v98;
    v61 = sub_B1B4(v118);
    v96(v61, v97, v52);
    v62 = v60;
    sub_765C30();
    sub_BEB8(v118);
    sub_762D00();
    sub_762CE0();
    v32(v57, v58);
    v63 = sub_7595F0();
    v64 = v63;
    if (v63 >> 62)
    {
      v74 = v63;
      v75 = sub_76A860();
      v64 = v74;
      v65 = v75;
      v100 = v62;
      if (!v75)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v65 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
      v100 = v62;
      if (!v65)
      {
        goto LABEL_29;
      }
    }

    v66 = v64;
    v109 = type metadata accessor for PrivacyCategoryView();
    if (v65 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v67 = 0;
  v68 = v66;
  v69 = _swiftEmptyArrayStorage;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v70 = sub_76A770();
    }

    else
    {
      v70 = *(v68 + 8 * v67 + 32);
    }

    v71 = sub_4DBE18(v70, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_7AE30(0, *(v69 + 2) + 1, 1, v69);
    }

    v73 = *(v69 + 2);
    v72 = *(v69 + 3);
    if (v73 >= v72 >> 1)
    {
      v69 = sub_7AE30((v72 > 1), v73 + 1, 1, v69);
    }

    ++v67;

    v116 = v111;
    v117 = &protocol witness table for LayoutViewPlaceholder;
    *&v115 = v71;
    *(v69 + 2) = v73 + 1;
    sub_10914(&v115, &v69[5 * v73 + 4]);
    v68 = v66;
  }

  while (v65 != v67);
LABEL_29:

  v76 = [v112 traitCollection];
  sub_767500();

  v77 = v111;
  swift_allocObject();
  v78 = sub_7670B0();
  (*(v103 + 16))(v87, v102, v104);
  v116 = v77;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  *&v115 = v86;
  v114[23] = v77;
  v114[24] = &protocol witness table for LayoutViewPlaceholder;
  v114[19] = &protocol witness table for LayoutViewPlaceholder;
  v114[20] = v85;
  v114[18] = v77;
  v114[14] = &protocol witness table for LayoutViewPlaceholder;
  v114[15] = v84;
  v114[13] = v77;
  v114[9] = &protocol witness table for LayoutViewPlaceholder;
  v114[10] = v78;
  ObjectType = v78;
  v114[8] = v77;
  v114[5] = v83;
  sub_134D8(v119, v114);
  sub_134D8(v118, &v113);

  sub_759610();
  v79 = v92;
  sub_75CBE0();
  sub_38CEC0(&qword_951450, &type metadata accessor for PrivacyTypeLayout);
  v80 = v94;
  sub_7665A0();

  (*(v93 + 8))(v79, v80);
  sub_BEB8(v118);
  sub_BEB8(v119);
  (*(v107 + 8))(v106, v108);
  (*(v103 + 8))(v102, v104);
  (*(v90 + 8))(v89, v91);

  return a3;
}

double sub_37FBFC(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v48 = a5;
  v40 = a4;
  v41 = a3;
  v37 = sub_76A920();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_7664A0();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_7674E0();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767510();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75FA00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_946810);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v45 = sub_BD88(&qword_943FD0);
  v42 = *(v45 - 8);
  v22 = __chkstk_darwin(v45);
  v24 = &v35 - v23;
  (*(v19 + 16))(v21, v41, v18, v22);
  sub_768FA0();
  v41 = v24;
  sub_769060();
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_76A520();
  v25 = v17;
  v26 = v38;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v39);
  *v9 = UIFontTextStyleBody;
  v27 = v44;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v44);
  v51 = sub_766CA0();
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(v50);
  v49[3] = v27;
  v49[4] = &protocol witness table for FontSource;
  v28 = sub_B1B4(v49);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v43;
    sub_7674F0();
    sub_7674A0();
    (*(v46 + 8))(v30, v47);
    sub_B170(v50, v51);
    v31 = v35;
    sub_33964();
    v32 = v48;
    sub_766700();
    (*(v36 + 8))(v31, v37);
    sub_BEB8(v50);
  }

  else
  {
    v33 = v43;
    sub_7674F0();
    v32 = v48;
    sub_7674D0();
    (*(v46 + 8))(v33, v47);
  }

  swift_getObjectType();
  sub_277BF8(v32);
  (*(v42 + 8))(v41, v45);
  return a1;
}

double sub_38036C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v32 = a3;
  v5 = sub_76A920();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_767510();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_946810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v31 = sub_BD88(&qword_943FD0);
  v18 = *(v31 - 8);
  v19 = __chkstk_darwin(v31);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  sub_768FA0();
  sub_769060();
  swift_getObjectType();
  sub_27A378(a4, v13);
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = sub_76A520();
  (*(v8 + 8))(v10, v7);
  v22 = sub_27BC08(a4);
  if (v17)
  {
    v23 = v22;
    sub_7674A0();
    sub_B170(v35, v35[3]);
    v24 = v27;
    sub_33964();
    sub_766700();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
    sub_BEB8(v35);
  }

  else
  {
    sub_769DD0();
    v23 = v25;
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
  }

  return v23;
}

double sub_380820(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_76A920();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766690();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_946810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_BD88(&qword_943FD0);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0);
  sub_75A2D0();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_768FA0();
  v63 = v23;
  sub_769060();
  if ((sub_759430() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_75A2C0();
  v26 = v66;
  if (v25)
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_759430();
    if ((sub_759430() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_765260();
      sub_7666A0();
      sub_766650();
      v29(v16, v13);
    }
  }

  v30 = sub_759450();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_759460();
    if (v32)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v33 = sub_7666D0();
      sub_BE38(v33, qword_99F640);
      v34 = sub_7653B0();
      v68 = v34;
      v69 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
      v35 = sub_B1B4(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();

      if (qword_93E250 != -1)
      {
        swift_once();
      }

      v36 = sub_766CA0();
      sub_BE38(v36, qword_9A09B8);
      sub_766470();
      sub_766700();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_93E260 != -1)
      {
        swift_once();
      }

      sub_BE38(v36, qword_9A09E8);
      sub_766470();
      sub_766700();
      v37(v26, v38);
      if (qword_93E258 != -1)
      {
        swift_once();
      }

      sub_BE38(v36, qword_9A09D0);
      sub_766470();
      sub_766700();
      v37(v26, v38);
    }

    v39 = sub_759450();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_266A8;
    *(v44 + 24) = v43;
    v69 = sub_26694;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v68 = &unk_88EF68;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_93DA10;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_7666D0();
        v50 = sub_BE38(v49, qword_99F628);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_7653B0();
        v68 = v53;
        v69 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
        v54 = sub_B1B4(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v52, &unk_93E530);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v55 = sub_766CA0();
        sub_BE38(v55, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v55, qword_9A09D0);
        sub_7666F0();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_769D90();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_381410(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_75E410();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75E430();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_762D10();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_946810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v40 = sub_BD88(&qword_943FD0);
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = &v39 - v21;
  sub_134D8(a1, v48);
  sub_BD88(&unk_944DA0);
  sub_75A3E0();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_768FA0();
  sub_769060();
  sub_BE70(0, &qword_93F900);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  sub_BE38(v23, qword_99F130);
  v24 = [v46 traitCollection];
  v25 = sub_769E10();

  sub_75A3D0();
  sub_759CE0();

  v26 = sub_758EC0();

  v27 = sub_7653B0();
  v49 = v27;
  v50 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v28 = sub_B1B4(v48);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  v29 = v26;
  v30 = v25;
  sub_765C30();
  sub_BEB8(v48);
  sub_762CD0();
  sub_762CE0();
  (*(v13 + 8))(v15, v39);
  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_BE38(v42, qword_99FFD0);
  (*(v41 + 16))(v43, v32, v31);
  v33 = v49;
  v34 = v50;
  v35 = sub_B170(v48, v49);
  v47[3] = v33;
  v47[4] = *(v34 + 8);
  v36 = sub_B1B4(v47);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  sub_75E420();
  sub_38CEC0(&unk_94E500, &type metadata accessor for PrivacyFooterLayout);
  v37 = v45;
  sub_7665A0();

  (*(v44 + 8))(v12, v37);
  (*(v20 + 8))(v22, v40);
  sub_BEB8(v48);

  return a3;
}

unint64_t sub_381A90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v69 = a3;
  v70 = sub_762D10();
  v53 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_75E460();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_75E480();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7666D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_946810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v61 = sub_BD88(&qword_943FD0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v20 = &v52 - v19;
  sub_134D8(a1, v78);
  sub_BD88(&unk_944DA0);
  sub_75A420();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v57 = v20;
  sub_769060();
  v21 = v81;
  sub_BE70(0, &qword_93F900);
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v11, qword_99F118);
  v23 = [v66 traitCollection];
  v71 = sub_769E10();

  (*(v12 + 16))(v14, v22, v11);
  v55 = type metadata accessor for DynamicTypeLinkedLabel();
  v24 = objc_allocWithZone(v55);
  v25 = sub_4ECF40(v14, 0, 0);
  sub_75A410();
  v26 = sub_759CF0();
  v27 = sub_22A974(v26, sub_38CF18);

  v28 = sub_759CE0();
  v54 = v25;
  sub_4ED3B8(v28, 0, v27);

  result = sub_75A400();
  v30 = result;
  if (result >> 62)
  {
    v51 = result;
    result = sub_76A860();
    v30 = v51;
    v31 = result;
  }

  else
  {
    v31 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  }

  v56 = v21;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v68 = v30 & 0xC000000000000001;
    v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v33 = (v53 + 8);
    v34 = _swiftEmptyArrayStorage;
    v69 = v30;
    do
    {
      if (v68)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_762FE0();
      sub_759CE0();

      v35 = v71;
      v36 = sub_758EC0();

      v37 = sub_7653B0();
      v79 = v37;
      v80 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
      v38 = sub_B1B4(v78);
      (*(*(v37 - 8) + 104))(v38, v67, v37);
      v39 = v36;
      v40 = v35;
      sub_765C30();
      sub_BEB8(v78);
      sub_762CD0();
      sub_762CE0();
      (*v33)(v8, v70);
      sub_134D8(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_7B08C(0, *(v34 + 2) + 1, 1, v34);
      }

      v42 = *(v34 + 2);
      v41 = *(v34 + 3);
      if (v42 >= v41 >> 1)
      {
        v34 = sub_7B08C((v41 > 1), v42 + 1, 1, v34);
      }

      ++v32;

      sub_BEB8(v78);
      *(v34 + 2) = v42 + 1;
      sub_10914(&v75, &v34[5 * v42 + 4]);
    }

    while (v31 != v32);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v43 = [v66 traitCollection];
  sub_767500();

  v44 = sub_7670D0();
  swift_allocObject();
  v45 = sub_7670B0();
  if (qword_93D2A8 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_BE38(v60, qword_99E0C0);
  (*(v58 + 16))(v62, v47, v46);
  sub_75A3F0();
  v79 = v55;
  v80 = &protocol witness table for UIView;
  v78[0] = v54;
  v48 = v54;
  sub_14038C(v34);

  v76 = v44;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  *&v75 = v45;
  v73 = v44;
  v72 = v45;
  swift_retain_n();
  v49 = v63;
  sub_75E470();
  sub_38CEC0(&unk_9513C0, &type metadata accessor for PrivacyHeaderLayout);
  v50 = v65;
  sub_7665A0();

  (*(v64 + 8))(v49, v50);
  (*(v59 + 8))(v57, v61);
}

double sub_3824E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_75E670();
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75E690();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_946810);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v28 = sub_BD88(&qword_943FD0);
  v16 = *(v28 - 8);
  v17 = __chkstk_darwin(v28);
  v19 = &v27 - v18;
  (*(v13 + 16))(v15, a2, v12, v17);
  sub_768FA0();
  sub_769060();
  sub_6443F4(a4, v8);
  swift_getObjectType();
  sub_6456A8();
  v20 = sub_7670D0();
  swift_allocObject();
  v21 = sub_7670B0();
  v34 = v20;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v21;
  swift_allocObject();
  v22 = sub_7670B0();
  v31 = v20;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v22;
  sub_75E680();
  sub_38CEC0(&qword_95CFA0, &type metadata accessor for SmallBreakoutLayout);
  v23 = v29;
  sub_7665A0();
  v25 = v24;
  (*(v9 + 8))(v11, v23);
  (*(v16 + 8))(v19, v28);
  return v25;
}

double sub_38287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v26 = a3;
  v28 = sub_758FD0();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_946810);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_BD88(&qword_943FD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_134D8(a1, &v29);
  sub_BD88(&unk_944DA0);
  sub_75AAB0();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_768FA0();
  sub_769060();
  sub_761230();
  sub_768900();
  sub_768ED0();
  v18 = v29;
  sub_761210();
  if (sub_758FA0())
  {
    v19 = sub_75AA80();
  }

  else
  {
    v19 = sub_75AAA0();
  }

  v21 = v19;
  v22 = v20;
  v23 = v27;
  swift_getObjectType();
  v24 = sub_145CB4(v21, v22, v23);

  (*(v7 + 8))(v9, v28);
  (*(v15 + 8))(v17, v14);

  return v24;
}

double sub_382BB4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v54 = sub_75EAC0();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_75EAE0();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_762D10();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_946810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v55 = sub_BD88(&qword_943FD0);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = v49 - v17;
  sub_134D8(a1, &v69);
  sub_BD88(&unk_944DA0);
  sub_75AB70();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_768FA0();
  v51 = v18;
  sub_769060();
  v19 = v72;
  [a5 pageMarginInsets];
  sub_769DA0();
  v20 = [a5 traitCollection];
  LOBYTE(v13) = sub_7699D0();

  v21 = 4;
  if ((v13 & 1) == 0)
  {
    v21 = 1;
  }

  v60 = v21;
  v50 = v19;
  sub_75AB60();
  v49[1] = v22;
  v23 = sub_BE70(0, &qword_93F900);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  sub_BE38(v24, qword_99D4F8);
  v25 = [a5 traitCollection];
  sub_769E10();

  v26 = sub_7653B0();
  v61 = a5;
  v27 = v26;
  v70 = v26;
  v28 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v71 = v28;
  v29 = sub_B1B4(&v69);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v31 = *(v27 - 8);
  v49[0] = v23;
  v32 = *(v31 + 104);
  v32(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_765C30();
  sub_BEB8(&v69);
  sub_762D00();
  sub_762CE0();
  v33 = *(v63 + 8);
  v63 += 8;
  v33(v12, v62);
  v50 = sub_75AB50();
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v24, qword_99D510);
  v34 = [v61 traitCollection];
  sub_769E10();

  v67 = v27;
  v68 = v28;
  v35 = sub_B1B4(v66);
  v32(v35, v30, v27);
  sub_765C30();
  sub_BEB8(v66);
  sub_762D00();
  sub_762CE0();
  v33(v12, v62);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = sub_BE38(v54, qword_99D4E0);
  (*(v52 + 16))(v56, v37, v36);
  v38 = v70;
  v39 = v71;
  v40 = sub_B170(&v69, v70);
  v65[3] = v38;
  v65[4] = *(v39 + 8);
  v41 = sub_B1B4(v65);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v67;
  v43 = v68;
  v44 = sub_B170(v66, v67);
  v64[3] = v42;
  v64[4] = *(v43 + 8);
  v45 = sub_B1B4(v64);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v46 = v57;
  sub_75EAD0();
  sub_38CEC0(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout);
  v47 = v59;
  sub_7665A0();
  (*(v58 + 8))(v46, v47);
  (*(v53 + 8))(v51, v55);
  sub_BEB8(v66);
  sub_BEB8(&v69);

  return a3;
}

double sub_3834B0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_75AC60();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_946810);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_BD88(&qword_943FD0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_134D8(a1, v26);
  sub_BD88(&unk_944DA0);
  sub_75AC90();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  if (sub_75AC20())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_75AC80();
  v22 = [v19 traitCollection];
  sub_75AC40();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_3837AC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_BD88(&qword_943FD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_134D8(a1, v19);
  sub_BD88(&unk_944DA0);
  sub_75B610();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  v17 = v19[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v19[0] = sub_4DBE18(v17, a5);
  sub_7670D0();
  sub_7665A0();
  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_383A14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_BD88(&qword_946810);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v11 = sub_BD88(&qword_943FD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_768FA0();
  sub_769060();
  v15 = v21;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v18 = sub_271EC(v17, v15, a4, ObjectType);
  (*(v12 + 8))(v14, v11);

  return v18;
}

double sub_383C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = sub_763560();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_763590();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7604B0();
  __chkstk_darwin(v10 - 8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_7604D0();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_762D10();
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_946810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v41 = sub_BD88(&qword_943FD0);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  sub_134D8(a1, v59);
  sub_BD88(&unk_944DA0);
  sub_75C8C0();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_768FA0();
  v39 = v21;
  sub_769060();
  v51 = a4;
  v22 = [a4 traitCollection];
  v23 = sub_7670D0();
  swift_allocObject();
  v24 = sub_7670B0();
  sub_75C8B0();
  sub_BE70(0, &qword_93F900);
  if (qword_93DAD0 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  sub_BE38(v25, qword_99F868);
  sub_769E10();
  v26 = sub_7653B0();
  v37 = v22;
  v27 = v26;
  v59[3] = v26;
  v59[4] = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v28 = sub_B1B4(v59);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_765C30();
  sub_BEB8(v59);
  sub_762D00();
  sub_762CE0();
  (*(v13 + 8))(v15, v38);
  sub_75C870();
  v29 = v44;
  sub_763570();
  (*(v42 + 8))(v9, v43);
  sub_28F39C(v29, v51, v45);
  (*(v46 + 8))(v29, v48);
  swift_allocObject();
  v30 = sub_7670B0();
  v57 = v23;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v30;
  sub_134D8(v59, v55);
  v53 = v23;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v24;

  v31 = v47;
  sub_7604C0();
  sub_38CEC0(&unk_951390, &type metadata accessor for LargeHeroBreakoutLayout);
  v32 = v50;
  sub_7665A0();
  v34 = v33;

  (*(v49 + 8))(v31, v32);
  sub_BEB8(v59);
  (*(v40 + 8))(v39, v41);

  return v34;
}

double sub_384418(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_BD88(&qword_943FD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0);
  sub_75F8F0();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  v17 = sub_75F8D0();
  if (v18)
  {
    v19 = sub_75F8E0();
    if (v19 >> 62)
    {
      v20 = sub_76A860();
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_755CB8(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_384694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v25 = sub_762D10();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_946810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v24 = sub_BD88(&qword_943FD0);
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v23 - v14;
  sub_134D8(a1, v27);
  sub_BD88(&unk_944DA0);
  sub_75D8F0();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  sub_75D8E0();
  sub_BE70(0, &qword_93F900);
  if (qword_93D788 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  sub_BE38(v16, qword_99EE90);
  v17 = [v26 traitCollection];
  sub_769E10();

  v18 = sub_7653B0();
  v28 = v18;
  v29 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v19 = sub_B1B4(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  sub_765C30();
  sub_BEB8(v27);
  sub_762D00();
  sub_762CE0();
  (*(v6 + 8))(v8, v25);
  sub_B170(v27, v28);
  sub_7665B0();
  v21 = v20;
  (*(v13 + 8))(v15, v24);
  sub_BEB8(v27);

  return v21;
}

double sub_384AEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a4;
  v6 = sub_762760();
  __chkstk_darwin(v6 - 8);
  v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762780();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_762D10();
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_946810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - v15;
  v17 = sub_BD88(&qword_943FD0);
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  sub_134D8(a1, v74);
  sub_BD88(&unk_944DA0);
  sub_75FC20();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_768FA0();
  v42 = v19;
  sub_769060();
  v56 = v74[5];
  sub_75FBE0();
  v20 = sub_BE70(0, &qword_93F900);
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v55 = sub_7666D0();
  sub_BE38(v55, qword_99FA48);
  v21 = [v49 traitCollection];
  sub_769E10();

  v22 = sub_7653B0();
  v74[3] = v22;
  v54 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature);
  v74[4] = v54;
  v23 = sub_B1B4(v74);
  v24 = *(*(v22 - 8) + 104);
  v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = v24;
  v24(v23);
  sub_765C30();
  v50 = v20;
  sub_BEB8(v74);
  sub_762D00();
  sub_762CE0();
  v51 = *(v10 + 8);
  v51(v12, v57);
  sub_75FBF0();
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v55, qword_99FA60);
  v25 = v49;
  v26 = [v49 traitCollection];
  sub_769E10();

  v73[3] = v22;
  v73[4] = v54;
  v27 = sub_B1B4(v73);
  v52(v27, v53, v22);
  sub_765C30();
  sub_BEB8(v73);
  sub_762D00();
  sub_762CE0();
  v51(v12, v57);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v55, qword_99FA78);
  v28 = [v25 traitCollection];
  sub_769E10();

  v72[3] = v22;
  v72[4] = v54;
  v29 = sub_B1B4(v72);
  v52(v29, v53, v22);
  sub_765C30();
  sub_BEB8(v72);
  sub_762D00();
  sub_762CE0();
  v51(v12, v57);
  v30 = sub_7670D0();
  swift_allocObject();
  v31 = sub_7670A0();
  v32 = swift_allocObject();
  v32[2] = v56;
  v32[3] = v25;
  v32[4] = v41[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v33 = sub_767090();
  sub_48E270(v25, v45);
  v71 = 0;
  *&v69[40] = 0u;
  v70 = 0u;
  sub_134D8(v74, v69);
  sub_134D8(v73, &v68);
  sub_134D8(v72, &v67);
  v65 = v30;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v31;

  v34 = [v25 traitCollection];
  sub_767500();

  swift_allocObject();
  v35 = sub_7670B0();
  v62 = v30;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v61 = v35;
  v59 = v30;
  v58 = v33;

  v36 = v46;
  sub_762770();
  sub_38CEC0(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout);
  v37 = v48;
  sub_7665A0();
  v39 = v38;

  (*(v47 + 8))(v36, v37);
  sub_BEB8(v72);
  sub_BEB8(v73);
  sub_BEB8(v74);
  (*(v43 + 8))(v42, v44);

  return v39;
}

double sub_385450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_76A920();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767510();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75FA00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_946810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v32 = sub_BD88(&qword_943FD0);
  v18 = *(v32 - 8);
  v19 = __chkstk_darwin(v32);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  sub_768FA0();
  sub_769060();
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = sub_76A520();
  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  sub_321BC4(a4, v9);
  type metadata accessor for InAppPurchaseLockupView();
  v22 = sub_1F1030(a4);
  if (v17)
  {
    v23 = v22;
    sub_7674A0();
    sub_B170(v35, v35[3]);
    v24 = v27;
    sub_33964();
    sub_766700();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
    sub_BEB8(v35);
  }

  else
  {
    sub_769DD0();
    v23 = v25;
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
  }

  return v23;
}

uint64_t sub_385908(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_BD88(&qword_9440C8);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_BD88(&unk_951310);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = sub_765EE0();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_944D90);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_BD88(&qword_944D88);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0);
  sub_761C30();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    sub_768FA0();
    sub_768B30();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    sub_761C20();
    v40 = v19;
    sub_761BE0();
    sub_761C10();
    sub_761C00();
    sub_761BF0();
    v32 = v46;
    v33 = sub_761BD0();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_D3794;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_BD88(&qword_9440D0);
    sub_D37B4();
    v37 = v48;
    sub_767F90();
    sub_767FF0();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_16194(&unk_951370, &qword_9440C8);
    sub_B1B4(v53);
    sub_767F80();
    (*(v50 + 8))(v37, v38);
    sub_769AE0();

    (*(v43 + 8))(v28, v44);
    sub_10A2C(v32, &unk_951310);
    sub_10A2C(v10, &unk_951310);
    sub_10A2C(v13, &unk_951310);
    sub_10A2C(v16, &unk_951310);
    sub_10A2C(v40, &unk_951310);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_385EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_BD88(&qword_944D88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0);
  sub_758700();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    sub_768FA0();
    sub_768B30();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_386104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_BD88(&unk_944D90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_BD88(&qword_944D88);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    sub_768FA0();
    sub_768B30();
    sub_75B370();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      sub_765860();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_38634C(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_BD88(&qword_944D88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_75CC50();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
    v15 = v2;
    sub_75CC20();
    v16 = sub_769210();

    [v14 setText:v16];

    sub_75CC40();
    v17 = sub_75CC10();
    v18 = sub_759CF0();
    v19 = sub_22A974(v18, sub_30AE4);

    v20 = sub_759CE0();
    v23[0] = v9;
    sub_4ED3B8(v20, v17, v19);

    v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
    v22 = sub_75CC00();
    [v21 setTintColor:v22];

    *&v15[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = sub_75CC30();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v23[0]);
  }

  return result;
}

uint64_t sub_386688(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_BD88(&qword_944D88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  sub_134D8(a1, v19);
  sub_BD88(&unk_944DA0);
  sub_75A270();
  result = swift_dynamicCast();
  if (result)
  {
    v17[1] = v2;
    v14 = v18;
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    sub_BD88(&unk_943590);
    sub_768900();
    sub_768ED0();
    v18 = v14;
    sub_758C30();

    v15 = v19[0];
    if ((~v19[0] & 0xF000000000000007) != 0)
    {
      v16 = v19[1];
    }

    else
    {

      v16 = 0;
      v15 = v14;
    }

    sub_4408AC(v15, v16);
    sub_B3204(v15, v16);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_386914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = sub_764A60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_BD88(&qword_944D88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_134D8(a1, v29);
  sub_BD88(&unk_944DA0);
  sub_764890();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    sub_768FA0();
    sub_768B30();
    sub_764870();
    if (v18)
    {
      v19 = sub_769210();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    sub_764A20();
    sub_38CEC0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v21 = sub_76A520();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = sub_764880();
      v23 = &v20[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_359B6C();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_386C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_BD88(&unk_948720);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_766690();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_944D90);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_BD88(&qword_944D88);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0);
  sub_7648E0();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    sub_768FA0();
    sub_768B30();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView];
    v24 = sub_7648B0();
    sub_3A39A4(v24, v25);
    v26 = sub_7648C0();
    sub_3A4118(v26, v27);
    v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] = sub_7648A0() & 1;
    sub_3A4508();
    if (sub_7648D0())
    {
      sub_765260();
      sub_765260();
      sub_7666A0();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v9, &v23[v28], &unk_948720);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_BE70(0, &qword_93E550);
      sub_75D650();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      sub_766660();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v9, &v23[v42], &unk_948720);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_3871F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_BD88(&unk_944D90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_BD88(&qword_944D88);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_134D8(a1, v18);
  sub_BD88(&unk_944DA0);
  sub_758700();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    sub_768FA0();
    sub_768B30();
    sub_650D38(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_387418(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_BD88(&qword_944D88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0);
  sub_7654E0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
    v15 = sub_7654C0();
    v16 = v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_14F5D4(v16);
    v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
    sub_7654D0();
    v18 = sub_769210();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_3876BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[0] = a5;
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_BD88(&qword_950670);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0);
  sub_765940();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    sub_768B30();
    sub_3B1A58(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_3878C8(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_BD88(&unk_948730);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = sub_75CA40();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_7593D0();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948710);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = sub_75A6B0();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_BD88(&unk_948720);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = sub_75A6E0();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_75DC30();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_944D90);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_BD88(&qword_944D88);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_134D8(a1, v108);
  sub_BD88(&unk_944DA0);
  sub_765BB0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  sub_768FA0();
  v104 = v43;
  sub_768B30();
  v85[1] = v45;
  sub_765B90();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v46 = sub_766690();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v47 = v105;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v48 = v108[0];
  sub_764B40();
  v49 = v97;
  sub_764BD0();
  v50 = sub_7570A0();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  sub_764B90();
  v52 = v99;
  sub_764B80();
  type metadata accessor for VideoView();
  sub_38CEC0(&qword_93F500, type metadata accessor for VideoView);
  v96 = v48;
  v53 = sub_75C340();
  sub_10A2C(v52, &unk_948710);
  sub_10A2C(v51, &unk_948710);
  sub_10A2C(v49, &unk_93FD30);
  sub_10A2C(v108, &unk_9443A0);
  v54 = *(v85[0] + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_BE70(0, &qword_93E550);
      v59 = v54;
      v60 = sub_76A1C0();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    sub_75CCD0();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_940598] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v69 = sub_765BA0();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    sub_765B80();
    sub_6B0E70(v71);
    v72 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
    v73 = sub_BD88(&unk_948740);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = sub_758C70();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = sub_75BD30();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_BD88(&unk_9457F0);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = sub_765870();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_4A18A4(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10A2C(v82, &unk_9457D0);
    v83[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v83 setNeedsLayout];

    sub_10A2C(v80, &unk_94AC40);
    sub_10A2C(v78, &unk_9457E0);
    sub_10A2C(v76, &unk_94A780);
    sub_10A2C(v74, &unk_948730);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}