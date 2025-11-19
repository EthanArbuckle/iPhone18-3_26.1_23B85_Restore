unint64_t sub_10EC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945408);
    v3 = sub_76A8B0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_66523C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10ED08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_9453F8);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, &v11, &qword_945400);
      v5 = v11;
      result = sub_66523C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_13310(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10EE30(uint64_t a1)
{
  v2 = sub_BD88(&qword_9453E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9453E8);
    v7 = sub_76A8B0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9453E0);
      result = sub_6643C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_75AD00();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10F020(uint64_t a1)
{
  v2 = sub_BD88(&qword_9454E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9454E8);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9454E0);
      result = sub_664714(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_768E20();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10914(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10F210(uint64_t a1)
{
  v2 = sub_BD88(&qword_9454D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_9454D8);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9454D0);
      result = sub_664640(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_768DD0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10914(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10F414(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_BD88(a2);
  v4 = sub_76A8B0();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_663D5C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 7);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_663D5C(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10F514(uint64_t a1)
{
  v2 = sub_BD88(&qword_9455A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_955960);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_9455A0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_3DF2F8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_764CF0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10F714(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_BD88(a2);
  v4 = sub_76A8B0();
  v5 = a1[4];
  v6 = a1[5];
  result = sub_663D5C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v6;
    return v4;
  }

  v9 = (a1 + 7);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 8 * result) = v6;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = v9 + 2;
    v5 = *(v9 - 1);
    v14 = *v9;
    v15 = v6;
    result = sub_663D5C(v5);
    v9 = v13;
    v6 = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10F808(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10F868()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FF0();
  byte_99AF70 = 1;
  qword_99AF78 = result;
  return result;
}

uint64_t sub_10F8B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  v13 = sub_75FC90();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = sub_75BB00();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v46.receiver = v5;
  v46.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_BD88(&unk_93F5C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77D9F0;
  *(v25 + 32) = v24;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77D9F0;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_77D9F0;
  *(v29 + 32) = v28;
  sub_BD88(&qword_94DC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = sub_3CFB24(inited);
  swift_setDeallocating();
  sub_BD88(&unk_945390);
  result = swift_arrayDestroy();
  if (v34 >> 62)
  {
    result = sub_76A860();
    v36 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v36; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = sub_76A770();
    }

    else
    {
      v38 = *(v34 + 8 * i + 32);
    }

    v39 = v38;
    [v22 addSubview:{v38, v44}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v40 = *&v22[v23];
  if (qword_93C380 != -1)
  {
    v43 = *&v22[v23];
    swift_once();
    v40 = v43;
  }

  v41 = qword_9455C0;
  [v40 setTintColor:{qword_9455C0, v44}];
  [*&v22[v45] setSemanticContentAttribute:3];
  [*&v22[v45] setTintColor:v41];
  sub_10FD74();
  sub_BD88(&qword_9477F0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_77B6D0;
  *(v42 + 32) = sub_767B80();
  *(v42 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v22;
}

id sub_10FD74()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v8._object = 0x80000000007CF720;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_75B750(v8, v9);
  v2 = sub_769210();

  [v1 setText:v2];

  if (qword_93C380 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_9455C0];
  [v1 setNumberOfLines:1];
  sub_766B40();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v3 = sub_760500();
  v4 = sub_BE38(v3, qword_99BB30);
  v7[3] = v3;
  v7[4] = sub_DC39C();
  v5 = sub_B1B4(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_75BA60();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_10FF10()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A20();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v4 = sub_760500();
  sub_BE38(v4, qword_99BB30);
  v5.super.isa = v3;
  v6.super.isa = sub_7604E0(v5).super.isa;
  v7 = [v2 preferredContentSizeCategory];
  v8 = sub_769B20();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [objc_opt_self() configurationWithFont:v6.super.isa scale:v9];

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v12 = v10;
  [v11 setPreferredSymbolConfiguration:v12];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v12];
}

void sub_110224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_769210();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_11028C(uint64_t a1)
{
  sub_10974(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return sub_767670();
}

id sub_1102E0()
{
  if (qword_93C368 != -1)
  {
    swift_once();
  }

  v1 = qword_99AF78;
  byte_9455B8 = byte_99AF70;
  qword_9455C0 = qword_99AF78;

  return v1;
}

uint64_t sub_110354()
{
  ObjectType = swift_getObjectType();
  v18 = sub_7664F0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763D60();
  __chkstk_darwin(v5 - 8);
  v17 = sub_763D70();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_BE70(0, &qword_949D90);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = sub_75BB20();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_763D50();
  sub_763D20();
  sub_75D650();
  sub_763D40();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_110614()
{
  v1 = sub_763D60();
  __chkstk_darwin(v1 - 8);
  v2 = sub_763D70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v16 = sub_BE70(0, &qword_949D90);
  v17 = &protocol witness table for UIView;
  v15[10] = &protocol witness table for UIView;
  v15[11] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v15[9] = v16;
  v15[6] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v15[4] = sub_75BB20();
  v15[5] = &protocol witness table for UILabel;
  v15[1] = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  sub_763D50();
  sub_763D20();
  sub_763D30();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView()
{
  result = qword_945610;
  if (!qword_945610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_110978()
{
  sub_DBB44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_110A40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0);
}

uint64_t sub_110AA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0);
  return swift_endAccess();
}

uint64_t sub_110B84(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_110C50(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_110D10()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_110D54(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_110E04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0);
}

uint64_t sub_110E6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0);
  return swift_endAccess();
}

double sub_110F60(uint64_t a1, void *a2)
{
  v77 = a2;
  v64 = a1;
  v2 = sub_763D60();
  __chkstk_darwin(v2 - 8);
  v73 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_763D70();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_766D20();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_766C00();
  v80 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  __chkstk_darwin(v9);
  v79 = &v62 - v10;
  v63 = sub_766D70();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767030();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  sub_767020();
  sub_766B40();
  if (qword_93C750 != -1)
  {
    swift_once();
  }

  v23 = sub_760500();
  v24 = sub_BE38(v23, qword_99BB30);
  v88[3] = v23;
  v88[4] = sub_DC39C();
  v25 = sub_B1B4(v88);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  sub_766F80();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_BEB8(v88);
  sub_767010();
  v78 = v13;
  v67 = v14 + 8;
  v66 = v26;
  v26(v19, v13);
  LOBYTE(v27._countAndFlagsBits) = sub_75D700();
  v27._object = 0x80000000007CF720;
  if (v27._countAndFlagsBits)
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    sub_762F40(v27);
  }

  else
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_75B750(v27, v89);
  }

  v28 = v68;
  v29 = *(v14 + 16);
  v68 = v22;
  v29(v19, v22, v78);
  sub_766D50();
  sub_766D90();
  sub_766D40();
  (*(v62 + 8))(v12, v63);
  v30 = v65;
  sub_766BF0();
  v31 = v77;
  v32 = [v77 traitCollection];
  v33.super.isa = sub_769A20();
  isa = v33.super.isa;
  v35.super.isa = sub_7604E0(v33).super.isa;
  v36 = [v32 preferredContentSizeCategory];
  v37 = sub_769B20();

  if (v37)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = [objc_opt_self() configurationWithFont:v35.super.isa scale:v38];

  v40 = v79;
  sub_766BE0();

  v41 = v80;
  v42 = v72;
  v65 = *(v80 + 8);
  v64 = v80 + 8;
  (v65)(v30, v72);
  if (qword_93C370 != -1)
  {
    swift_once();
  }

  v43 = qword_9455A8;
  v44 = *(v41 + 16);
  v80 = v41 + 16;
  v44(v28, v40, v42);
  v45 = v43;
  v46 = v69;
  sub_766D30();
  v47 = [v31 traitCollection];
  sub_766D10();
  v63 = v48;
  v62 = v49;

  v50 = *(v70 + 8);
  v51 = v71;
  v50(v46, v71);
  if (qword_93C378 != -1)
  {
    swift_once();
  }

  v52 = qword_9455B0;
  v44(v28, v40, v42);
  v53 = v52;
  sub_766D30();
  v54 = [v31 traitCollection];
  sub_766D10();

  v50(v46, v51);
  v55 = sub_7670D0();
  swift_allocObject();
  v56 = sub_7670A0();
  swift_allocObject();
  v57 = sub_7670A0();
  v86 = v55;
  v87 = &protocol witness table for LayoutViewPlaceholder;
  v84 = &protocol witness table for LayoutViewPlaceholder;
  v85 = v56;
  v83 = v55;
  v82 = v57;
  sub_134D8(v88, v81);

  sub_763D50();
  v58 = v74;
  sub_763D20();
  sub_763D30();
  v60 = v59;

  (*(v75 + 8))(v58, v76);
  (v65)(v79, v42);
  sub_BEB8(v88);
  v66(v68, v78);
  return v60;
}

id sub_11197C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  LOBYTE(v3._countAndFlagsBits) = sub_75D700();
  v3._object = 0x80000000007CF720;
  if (v3._countAndFlagsBits)
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    sub_762F40(v3);
  }

  else
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_75B750(v3, v15);
  }

  v4 = sub_769210();

  [v2 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_93C378 != -1)
  {
    swift_once();
  }

  v6 = qword_9455B0;
  v7 = [v5 layer];
  [v7 removeAllAnimations];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [v5 setImage:v8];
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_93C370 != -1)
  {
    swift_once();
  }

  v10 = qword_9455A8;
  v11 = [v9 layer];
  [v11 removeAllAnimations];

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return [v9 setImage:v12];
}

uint64_t sub_111B44()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_945620);
  sub_BE38(v0, qword_945620);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_111CA8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v29 = a1;
  sub_75CE20();
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E788);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_766CA0();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_766CB0();
  v25 = v3[1];
  v25(v5, v2);
  sub_75CE50();
  if (qword_93D548 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99E7E8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_766CB0();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_75CEE0();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v32);
  v15(v18, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CE60();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_BE38(v24, qword_99E6E0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v32);
  v28(v21, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  return sub_75CEF0();
}

char *sub_112194(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = sub_75CF00();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = sub_768C60();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_760AD0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_99F568);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(sub_75BB20());
  v81 = v23;
  v34 = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  sub_768C10();
  sub_10A2C(v85, &unk_93FBD0);
  sub_10A2C(v86, &unk_93FBD0);
  sub_769E70();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_11D37C(v43);

  v44 = qword_93C388;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_BE38(v83, qword_945620);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_93D500;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_BE38(v80, qword_99E710);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  sub_75BA40();

  v62 = qword_93D528;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_BE38(v57, qword_99E788);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  sub_75BA40();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_112B88(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = sub_769210();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = sub_769210();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_112D2C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_112EBC(double a1, double a2)
{
  v5 = sub_112FF4(1, a1, a2);
  v6 = sub_112FF4(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = sub_769210();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = sub_769210();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_112FF4(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_BE70(0, &qword_945820);
  isa = sub_76A190(v7 / v8).super.super.isa;
  v10 = sub_76A190(0.3 / v8).super.super.isa;
  v11 = sub_769210();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_BD88(&unk_93F5C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77FA60;
  v16 = 0.0;
  *(v15 + 32) = sub_76A190(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = sub_76A190(1.0);
  v19 = sub_769450().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_BD88(&qword_941C10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_782440;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = sub_769450().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1133D8(char *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

uint64_t sub_113798()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = sub_75D850();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = sub_75CF00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  sub_75D650();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  sub_11E030(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = sub_75CE70();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v35 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v35 = qword_946938;
    }

    v36 = v61;
    v37 = sub_BE38(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v3 + 8))(v39, v36);
  }

  sub_75CDB0();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_F704(v57);
  }

  return result;
}

uint64_t sub_11403C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v201 = a6;
  v209 = a2;
  v11 = a5;
  v12 = sub_7652D0();
  __chkstk_darwin(v12 - 8);
  v200 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_75CF00();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_765240();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_765920();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v190 = &v184 - v18;
  v213 = sub_764CF0();
  v208 = *(v213 - 1);
  __chkstk_darwin(v213);
  v189 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v184 - v21;
  v22 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v22 - 8);
  v207 = &v184 - v23;
  v24 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v24 - 8);
  v206 = &v184 - v25;
  v26 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v26 - 8);
  v205 = &v184 - v27;
  v28 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v28 - 8);
  v204 = &v184 - v29;
  v30 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v30 - 8);
  v203 = &v184 - v31;
  v32 = sub_763750();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v202 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&unk_948730);
  __chkstk_darwin(v35 - 8);
  v211 = &v184 - v36;
  v210 = sub_765B10();
  v216 = *(v210 - 8);
  __chkstk_darwin(v210);
  v188 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v184 - v39;
  v41 = v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v219 = a4;
  v42 = sub_765AE0();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v43 layoutDirection];
  sub_769BB0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v214 = a1;
  v52 = sub_763450();
  v215 = v7;
  v217 = v52;
  v218 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = sub_765AB0();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_BE70(0, &qword_93E540);
    v58 = v55;
    v57 = v57;
    v59 = sub_76A1C0();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_3E31BC();
  v58 = v55;
LABEL_13:

  v61 = v215;
  v62 = v218;
  v63 = *(*(*&v215[v218] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v64 = v219;
  v65 = sub_765AB0();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v67 = sub_765AF0();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = sub_765AF0();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = sub_765AB0();
  [v70 setTextColor:v71];

  v72 = v216;
  v73 = *(v216 + 16);
  v74 = v210;
  v187 = v216 + 16;
  v186 = v73;
  v73(v40, v64, v210);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v185 = v76;
  v77 = v76(v40, v74);
  v184 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v218;
    [*(v61 + v218) setOverrideUserInterfaceStyle:{0, v184}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v218;
      [*(v61 + v218) setOverrideUserInterfaceStyle:{2, v184}];
    }

    else
    {
      v78 = v218;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v218) setOverrideUserInterfaceStyle:{1, v184}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    v80 = sub_765AB0();
    [v79 setTintColor:v80];
  }

  v216 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v202, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v203;
  v82(v203, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_11683C(&unk_944E10, 255, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v211;
  sub_760940();
  v86 = sub_BD88(&unk_948740);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView];
  v88 = sub_764EE0();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v90 = sub_758C70();
  v91 = v204;
  (*(*(v90 - 8) + 56))(v204, 1, 1, v90);
  v92 = sub_75BD30();
  v93 = v205;
  (*(*(v92 - 8) + 56))(v205, 1, 1, v92);
  v94 = sub_BD88(&unk_9457F0);
  v95 = v206;
  (*(*(v94 - 8) + 56))(v206, 1, 1, v94);
  v96 = sub_765870();
  v97 = v207;
  (*(*(v96 - 8) + 56))(v207, 1, 1, v96);
  sub_4A18A4(v217, v89, v85, v209, 1, 0, v91, v93, v97, v95);
  sub_10A2C(v97, &unk_9457D0);
  v89[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v89 setNeedsLayout];
  sub_10A2C(v95, &unk_94AC40);
  sub_10A2C(v93, &unk_9457E0);
  sub_10A2C(v91, &unk_94A780);
  v98 = v212;
  sub_764F00();
  v99 = sub_764DE0();
  v101 = v100;
  v207 = sub_764E40();
  v103 = v102;
  v104 = sub_764E00();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v208;
    v108 = v189;
    (*(v208 + 16))(v189, v106, v213);
    sub_BD88(&unk_944300);
    sub_768900();
    sub_768ED0();
    v110 = aBlock;
    v109 = v221;
    type metadata accessor for CrossLinkPresenter();
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v183 = v110;
    v61 = v215;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v207, v103, v105 & 1, v84, &off_884798, v183, v109);
    (*(v107 + 8))(v212, v213);
    sub_10A2C(v211, &unk_948730);
    v115 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v219;

    v117 = &unk_945000;
    v118 = &selRef_setTextAlignment_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_11EE80(0, 0);

    (*(v208 + 8))(v98, v213);
    sub_10A2C(v85, &unk_948730);
    v117 = &unk_945000;
    v118 = &selRef_setTextAlignment_;
    v116 = v219;
  }

  v120 = v218;
  v121 = *(*(v61 + v218) + v117[304]);
  v122 = *(v121 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = sub_765AF0();
    [v123 v118[1]];

    v121 = *(*&v120[v61] + v117[304]);
  }

  v125 = &OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = sub_765AF0();
  [v127 v118[1]];

  v129 = *(*(*&v120[v61] + v117[304]) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_93D548;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = sub_7666D0();
    v133 = sub_BE38(v132, qword_99E7E8);
    v134 = *(v132 - 8);
    v135 = v190;
    (*(v134 + 16))(v190, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    sub_75BA40();

    v136 = *(*(*&v120[v61] + v117[304]) + *v125);
    v118 = &selRef_setTextAlignment_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = sub_765AB0();
    [v138 v118[1]];

    if (!sub_763460())
    {
      break;
    }

    v212 = *(v61 + v137);
    v140 = sub_7658D0();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v213 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_119AC;
    *(v142 + 24) = v117;
    v224 = sub_2636C;
    v225 = v142;
    aBlock = _NSConcreteStackBlock;
    v221 = 1107296256;
    v222 = sub_10C1C;
    v223 = &unk_8844B8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v213 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v212;
      [v212 setAttributedText:v120];

      v61 = v215;
      v144 = *&v215[v137];
      v145 = v191;
      sub_765930();
      v146 = v192;
      v147 = v193;
      v148 = (*(v192 + 88))(v145, v193);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v218;
        v116 = v219;
      }

      else
      {
        v120 = v218;
        v116 = v219;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_112EBC(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  sub_763450();
  v150 = sub_764EE0();

  if (v150)
  {
    v151 = v194;
    sub_765250();
    v152 = sub_765210();
    (*(v195 + 8))(v151, v196);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v198;
    v156 = v153 + v154;
    v157 = v197;
    v158 = v199;
    (*(v198 + 16))(v197, v156, v199);
    sub_75CDD0();
    (*(v155 + 8))(v157, v158);
    sub_765330();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v159 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_759210();
    sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView);
    v161 = v160;
    sub_75A050();

    v162 = sub_7651A0();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = sub_763440();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_BD88(&unk_93F5C0);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_77D9F0;
    *(v171 + 32) = v168;
    sub_BE70(0, &qword_945800);
    isa = sub_769450().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v188;
  v174 = v210;
  v186(v188, v116, v210);
  v175 = v185(v173, v174);
  if (v175 == HIDWORD(v184) || v175 == v184)
  {
    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:sub_763430() & 1];
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = sub_763440();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_BD88(&unk_93F5C0);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_77D9F0;
    *(v179 + 32) = v177;
    sub_BE70(0, &qword_945800);
    v180 = v177;
    v181 = sub_769450().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v221 = 0xE000000000000000;
  sub_76A730(44);

  aBlock = 0xD00000000000002ALL;
  v221 = 0x80000000007CF650;
  v226._countAndFlagsBits = sub_765B00();
  sub_769370(v226);

  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_115CB4()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_7591B0();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759210();
  sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v12 = v11;
  sub_75A0C0();
}

void sub_115E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v24);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_765B60(), , v13))
      {
        sub_763470();
        if (swift_dynamicCastClass())
        {
          sub_763450();
          sub_764E50();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10A2C(v6, &unk_93FF30);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_75F4B0();

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

    else
    {
    }
  }
}

void sub_1161BC(char *a1, char a2)
{
  if (a2)
  {
    sub_1133D8(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1161F4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4);
}

double sub_116240()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_75CDD0();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1163C4()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_116424(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_1164BC()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_116518(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_1165D8(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_1169AC;
}

void sub_1166A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
  v3 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759050();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
  sub_759210();
  sub_11683C(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_116798(uint64_t a1, uint64_t a2)
{
  result = sub_11683C(&qword_945710, a2, type metadata accessor for TodayCardMarketingLockupOverlayView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11683C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_116884()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1168DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1168F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11692C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_116964()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1169B8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_116AA0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_116BD8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_76A770();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = sub_76A770();
LABEL_26:
        LOBYTE(v4) = sub_7F668(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v18 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_7F668(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_116E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_76A860();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_76A860();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = sub_76A770();
          goto LABEL_25;
        }
      }

      if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_116FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_76A770();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = sub_76A770();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v21 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_11724C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_396E8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_76A770();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_76A770();
LABEL_26:
        v17 = v16;
        v18 = sub_76A1C0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_76A1C0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_76A860();
  }

  result = sub_76A860();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_11748C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_117570(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (a2 >> 62)
  {
    v21 = a3;
    result = sub_76A860();
    a3 = v21;
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    a3(0);
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    v7 = v8;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v19 = a3;
        v20 = sub_76A860();
        a3 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        if (v14)
        {
LABEL_20:
          sub_76A770();
          goto LABEL_25;
        }
      }

      if (v16 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_11ACB0(a4, a5);
      v18 = sub_7691C0();

      if (v18)
      {
        ++v15;
        if (v17 != v7)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11777C(uint64_t a1, uint64_t a2)
{
  v4 = sub_764CF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_11ACB0(&qword_945868, &type metadata accessor for AdamId);
    v22 = sub_7691C0();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_117990(void *a1, char *a2)
{
  v283 = a2;
  v244 = sub_768C60();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v240 = &v231 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v241 = &v231 - v6;
  __chkstk_darwin(v7);
  v242 = &v231 - v8;
  v263 = sub_761CE0();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v264 = &v231 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_761D00();
  v268 = *(v10 - 8);
  __chkstk_darwin(v10);
  v267 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_760AD0();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v260 = &v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v257 = &v231 - v14;
  v266 = sub_75C420();
  v265 = *(v266 - 8);
  __chkstk_darwin(v266);
  v256 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v261 = &v231 - v17;
  __chkstk_darwin(v18);
  v255 = &v231 - v19;
  v254 = sub_76A920();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v252 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_7656C0();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v231 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_759DA0();
  v247 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = &v231 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_764930();
  v272 = *(v278 - 8);
  __chkstk_darwin(v278);
  v233 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_BD88(&qword_945828);
  __chkstk_darwin(v271);
  v279 = &v231 - v24;
  v25 = sub_BD88(&unk_94F1F0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v270 = (&v231 - v27);
  v28 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v28);
  v30 = &v231 - v29;
  v31 = sub_BD88(&qword_963790);
  __chkstk_darwin(v31 - 8);
  v33 = &v231 - v32;
  v34 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v34 - 8);
  v239 = &v231 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v269 = &v231 - v37;
  __chkstk_darwin(v38);
  v276 = &v231 - v39;
  sub_759DF0();
  sub_11ACB0(&qword_945830, &type metadata accessor for ProductMedia);
  v40 = a1;
  result = sub_75C750();
  v42 = v287;
  if (!v287)
  {
    return result;
  }

  v236 = v10;
  v43 = sub_527DE4();
  v44 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = v283;

  sub_56FA00(v44);

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v283 = v43;
  [v43 pageMarginInsets];
  [v45 setSectionInset:?];

  v280 = v2;
  sub_56F8F4(v46);
  v47 = sub_759DE0();
  v48 = sub_759D80();
  v238 = sub_759D90();
  v273 = v49;
  v274 = v42;
  v245 = sub_759DC0();
  v277 = v50;
  v232 = sub_BD88(&unk_93F5C0);
  v51 = swift_allocObject();
  v231 = xmmword_77D9F0;
  *(v51 + 16) = xmmword_77D9F0;
  *(v51 + 32) = v47;
  v281 = v47;

  v282 = v48;
  v234 = sub_117570(v48, v51, &type metadata accessor for MediaPlatform, &qword_945840, &type metadata accessor for MediaPlatform);

  swift_getKeyPath();
  sub_75C7B0();

  sub_2C88C(&v30[*(v28 + 48)], v33);
  v52 = (*(v26 + 48))(v33, 1, v25);
  v275 = v40;
  if (v52 == 1)
  {
    sub_10A2C(v30, &qword_963790);
    sub_10A2C(v33, &qword_963790);
    v53 = v26;
    v54 = v25;
    v55 = v272;
    v56 = v276;
    v57 = v278;
    v237 = v272[7];
    v237(v276, 1, 1, v278);
  }

  else
  {
    swift_getKeyPath();
    v56 = v276;
    sub_768750();

    (*(v26 + 8))(v33, v25);
    v53 = v26;
    v54 = v25;
    v55 = v272;
    v57 = v278;
    v237 = v272[7];
    v237(v56, 0, 1, v278);
    sub_10A2C(v30, &qword_963790);
  }

  swift_getKeyPath();
  v58 = v270;
  sub_75C7B0();

  swift_getKeyPath();
  v59 = v269;
  sub_768750();

  v61 = *(v53 + 8);
  v60 = v53 + 8;
  v61(v58, v54);
  v237(v59, 0, 1, v57);
  v62 = v271[12];
  v63 = v56;
  v64 = v56;
  v65 = v279;
  sub_1ED18(v63, v279, &qword_951BE0);
  sub_1ED18(v59, v65 + v62, &qword_951BE0);
  v66 = v55[6];
  v67 = v66(v65, 1, v57);
  v278 = v282 >> 62;
  if (v67 == 1)
  {
    sub_10A2C(v59, &qword_951BE0);
    v68 = v279;
    sub_10A2C(v64, &qword_951BE0);
    v69 = v66(v68 + v62, 1, v57);
    v70 = v282;
    if (v69 == 1)
    {
      sub_10A2C(v68, &qword_951BE0);
LABEL_22:
      LODWORD(v279) = 0;
      v78 = 1;
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v60 = v239;
  sub_1ED18(v65, v239, &qword_951BE0);
  if (v66(v65 + v62, 1, v57) == 1)
  {
    sub_10A2C(v59, &qword_951BE0);
    v68 = v279;
    sub_10A2C(v276, &qword_951BE0);
    (v55[1])(v60, v57);
    v70 = v282;
LABEL_10:
    sub_10A2C(v68, &qword_945828);
    goto LABEL_11;
  }

  v75 = v233;
  (v55[4])(v233, v65 + v62, v57);
  sub_11ACB0(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
  v76 = sub_7691C0();
  v77 = v55[1];
  v77(v75, v57);
  sub_10A2C(v59, &qword_951BE0);
  sub_10A2C(v276, &qword_951BE0);
  v77(v60, v57);
  sub_10A2C(v65, &qword_951BE0);
  v70 = v282;
  if (v76)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (!v278)
  {
    v71 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
    if (v71)
    {
      goto LABEL_13;
    }

LABEL_24:

    goto LABEL_25;
  }

  v71 = sub_76A860();
  if (!v71)
  {
    goto LABEL_24;
  }

LABEL_13:
  v72 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    __break(1u);
  }

  else if ((v70 & 0xC000000000000001) == 0)
  {
    if ((v72 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v72 < *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)))
    {
      v73 = *(v70 + 8 * v72 + 32);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_89;
  }

  v73 = sub_76A770();
LABEL_18:
  *&v287 = v281;
  if (!v73)
  {
LABEL_25:

    goto LABEL_26;
  }

  *&v284 = v73;
  sub_75A360();
  sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform);
  v74 = sub_7691C0();

  if (v74)
  {
    goto LABEL_22;
  }

LABEL_26:
  v78 = 0;
  LODWORD(v279) = v234 ^ 1;
LABEL_27:
  v79 = v246;
  sub_759DB0();
  v80 = (*(v247 + 88))(v79, v248);
  LODWORD(v276) = v78;
  if (v80 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v263;
    v86 = v280;
    if (v80 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      result = sub_76A940();
      __break(1u);
      return result;
    }

    v87 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
    v88 = *(v280 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
    if (v88)
    {
      [v88 removeFromSuperview];
      v89 = *(v86 + v87);
    }

    else
    {
      v89 = 0;
    }

    *(v86 + v87) = 0;

    [v86 setNeedsLayout];
    v272 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v129 = v249;
    sub_75C7B0();

    sub_765630();
    (*(v250 + 8))(v129, v251);
    if (v279)
    {
      if (qword_93D220 != -1)
      {
        swift_once();
      }

      [qword_956E70 size];
    }

    else
    {
      if (v278)
      {
        v130 = sub_76A860();
      }

      else
      {
        v130 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      }

      if (v130 > 1)
      {
        sub_75A360();
        v131 = swift_allocObject();
        *(v131 + 16) = v231;
        *(v131 + 32) = v281;

        v132 = sub_75A320();

        goto LABEL_64;
      }
    }

    sub_75A360();
    v132 = sub_75A320();
LABEL_64:

    if (qword_93D228 != -1)
    {
      swift_once();
    }

    v133 = sub_BE38(v85, qword_956E78);
    sub_761CD0();
    sub_B170(&v287, *(&v288 + 1));
    v134 = v252;
    sub_33964();
    sub_766700();
    v136 = v135;
    (*(v253 + 8))(v134, v254);
    sub_4C4E08(v132, v136);
    sub_BEB8(&v287);
    if (v132 >> 62)
    {
      sub_76A860();
    }

    v137 = v259;

    v138 = v283;
    sub_75C410();
    v139 = sub_4C4AF8(v132, v138);

    v271 = v139;
    v140 = sub_761C90();
    if (qword_93D638 != -1)
    {
      swift_once();
    }

    v141 = sub_7666D0();
    v142 = sub_BE38(v141, qword_99EAA0);
    v143 = *(v141 - 8);
    v144 = v257;
    (*(v143 + 16))(v257, v142, v141);
    (*(v143 + 56))(v144, 0, 1, v141);
    (*(v258 + 104))(v260, enum case for DirectionalTextAlignment.none(_:), v137);
    v145 = sub_75BB20();
    v146 = objc_allocWithZone(v145);
    v147 = sub_75BB10();
    [v147 setAttributedText:v140];
    v270 = v140;
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v275 = qword_956E70;
    [qword_956E70 size];
    v148 = sub_7670D0();
    swift_allocObject();
    v149 = sub_7670B0();
    (*(v262 + 16))(v264, v133, v85);
    v150 = v265;
    v151 = v256;
    v152 = v266;
    (*(v265 + 16))(v261, v256, v266);
    *(&v288 + 1) = v145;
    v289 = &protocol witness table for UILabel;
    *&v287 = v147;
    *(&v285 + 1) = v148;
    v286 = &protocol witness table for LayoutViewPlaceholder;
    *&v284 = v149;
    v153 = v147;

    v154 = v267;
    sub_761CF0();
    [v283 pageMarginInsets];
    sub_769DA0();
    sub_11ACB0(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout);
    v116 = v236;
    sub_7665A0();
    sub_769DC0();
    v156 = v155;
    v158 = v157;

    (v268[1])(v154, v116);
    (*(v150 + 8))(v151, v152);
    v122 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
    v123 = v280;
    v159 = *(v280 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v159)
    {
      [v159 setFrame:{0.0, 0.0, v156, v158}];
      v125 = v281;
      v126 = v282;
      v121 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_79;
    }

    v127 = [objc_allocWithZone(v272) initWithFrame:{0.0, 0.0, v156, v158}];
    v128 = *(v123 + v122);
    v126 = v282;
    v121 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v128)
    {
      v116 = 0;
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v81 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v82 = v280;
  v83 = *(v280 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
  v60 = v263;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v82 + v81);
  }

  else
  {
    v84 = 0;
  }

  *(v82 + v81) = 0;

  [v82 setNeedsLayout];
  v57 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v90 = v249;
  sub_75C7B0();

  sub_765630();
  (*(v250 + 8))(v90, v251);
  if (v279)
  {
    if (qword_93D220 == -1)
    {
LABEL_36:
      [qword_956E70 size];
      goto LABEL_41;
    }

LABEL_89:
    swift_once();
    goto LABEL_36;
  }

  if (v278)
  {
    v91 = sub_76A860();
  }

  else
  {
    v91 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
  }

  if (v91 > 1)
  {
    sub_75A360();
    v92 = swift_allocObject();
    *(v92 + 16) = v231;
    *(v92 + 32) = v281;

    v93 = sub_75A320();

    goto LABEL_42;
  }

LABEL_41:
  sub_75A360();
  v93 = sub_75A320();
LABEL_42:

  if (qword_93D228 != -1)
  {
    swift_once();
  }

  v94 = sub_BE38(v60, qword_956E78);
  sub_761CD0();
  sub_B170(&v287, *(&v288 + 1));
  v95 = v252;
  sub_33964();
  sub_766700();
  v97 = v96;
  (*(v253 + 8))(v95, v254);
  sub_4C4E08(v93, v97);
  sub_BEB8(&v287);
  if (v93 >> 62)
  {
    sub_76A860();
  }

  v98 = v259;

  v99 = v283;
  sub_75C410();
  v100 = sub_4C4AF8(v93, v99);

  v272 = v100;
  v101 = sub_761C90();
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v270 = v57;
  v102 = sub_7666D0();
  v103 = sub_BE38(v102, qword_99EAA0);
  v104 = *(v102 - 8);
  v105 = v257;
  (*(v104 + 16))(v257, v103, v102);
  (*(v104 + 56))(v105, 0, 1, v102);
  (*(v258 + 104))(v260, enum case for DirectionalTextAlignment.none(_:), v98);
  v106 = sub_75BB20();
  v107 = objc_allocWithZone(v106);
  v108 = sub_75BB10();
  [v108 setAttributedText:v101];
  v271 = v101;
  if (qword_93D220 != -1)
  {
    swift_once();
  }

  v275 = qword_956E70;
  [qword_956E70 size];
  v109 = sub_7670D0();
  swift_allocObject();
  v110 = sub_7670B0();
  (*(v262 + 16))(v264, v94, v60);
  v111 = v265;
  v112 = v255;
  v113 = v266;
  (*(v265 + 16))(v261, v255, v266);
  *(&v288 + 1) = v106;
  v289 = &protocol witness table for UILabel;
  *&v287 = v108;
  *(&v285 + 1) = v109;
  v286 = &protocol witness table for LayoutViewPlaceholder;
  *&v284 = v110;
  v114 = v108;

  v115 = v267;
  sub_761CF0();
  [v283 pageMarginInsets];
  sub_769DA0();
  sub_11ACB0(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout);
  v116 = v236;
  sub_7665A0();
  sub_769DC0();
  v118 = v117;
  v120 = v119;

  (v268[1])(v115, v116);
  (*(v111 + 8))(v112, v113);
  v121 = &OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v123 = v280;
  v124 = *(v280 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v124)
  {
    v127 = [objc_allocWithZone(v270) initWithFrame:{0.0, 0.0, v118, v120}];
    v128 = *(v123 + v122);
    v126 = v282;
    if (!v128)
    {
      v116 = 0;
      goto LABEL_78;
    }

LABEL_75:
    [v128 removeFromSuperview];
    v116 = *(v123 + v122);
LABEL_78:
    v125 = v281;
    *(v123 + v122) = v127;
    v160 = v127;

    v161 = [v123 contentView];
    [v161 addSubview:v160];

    [v123 setNeedsLayout];
    goto LABEL_79;
  }

  [v124 setFrame:{0.0, 0.0, v118, v120}];
  v125 = v281;
  v126 = v282;
LABEL_79:
  v272 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v162 = *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v162)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v163 = swift_dynamicCastClass();
  if (!v163)
  {
    goto LABEL_123;
  }

  v164 = v163;
  if (v279)
  {
    goto LABEL_93;
  }

  if (v278)
  {
    if (sub_76A860() > 1)
    {
      goto LABEL_84;
    }

LABEL_93:

    v166 = 0;
    v165 = v126;
    goto LABEL_94;
  }

  if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)) <= 1)
  {
    goto LABEL_93;
  }

LABEL_84:
  v165 = swift_allocObject();
  *(v165 + 16) = v231;
  *(v165 + 32) = v125;

  v166 = 1;
LABEL_94:
  v270 = v162;
  v167 = sub_4C4F08(v165);

  if (v166)
  {
    v168 = v238;
  }

  else
  {
    v168 = v245;
  }

  v170 = &v164[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text];
  *v170 = v168;
  v170[1] = v169;

  v171 = _swiftEmptyArrayStorage;
  *&v287 = _swiftEmptyArrayStorage;
  v172 = *(v167 + 2);
  v271 = v164;
  if (v172)
  {
    v173 = 0;
    v174 = v167 + 56;
    v267 = v172 - 1;
    v171 = _swiftEmptyArrayStorage;
    v268 = (v167 + 56);
    do
    {
      v269 = v171;
      v175 = &v174[32 * v173];
      v164 = v173;
      while (1)
      {
        if (v164 >= *(v167 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v176 = sub_769210();
        v177 = [objc_opt_self() _systemImageNamed:v176];

        if (v177)
        {
          break;
        }

LABEL_101:
        ++v164;
        v175 += 32;
        if (v172 == v164)
        {
          v164 = v271;
          v171 = v269;
          goto LABEL_113;
        }
      }

      if (qword_93D218 != -1)
      {
        swift_once();
      }

      v178 = [v177 imageWithTintColor:qword_99DFB8];

      if (!v178)
      {
        goto LABEL_101;
      }

      sub_769440();
      if (*(&dword_10 + (v287 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v287 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v173 = v164 + 1;
      sub_769500();
      v171 = v287;
      v179 = v267 == v164;
      v164 = v271;
      v174 = v268;
    }

    while (!v179);
  }

LABEL_113:
  v180 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images;
  *&v164[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images] = v171;

  v181 = *&v164[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView];
  if (v279)
  {
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v182 = v275;
  }

  else
  {
    v182 = 0;
  }

  [v181 setImage:v182];

  v183 = *&v164[v180];
  if (v183)
  {
    if (v183 >> 62)
    {
LABEL_131:
      v184 = sub_76A860();
    }

    else
    {
      v184 = *(&dword_10 + (v183 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v184 = 0;
  }

  *&v164[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges] = v184;
  v185 = v283;
  *&v164[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits] = v283;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_4C3A90();
  [v185 pageMarginInsets];
  [v164 setLayoutMargins:?];
  [v164 setNeedsLayout];
  v287 = 0u;
  v288 = 0u;
  v284 = 0u;
  v285 = 0u;
  v186 = v240;
  sub_768BD0();
  sub_10A2C(&v284, &unk_93FBD0);
  sub_10A2C(&v287, &unk_93FBD0);
  *&v287 = v167;
  *(&v287 + 1) = sub_4C47E8;
  *&v288 = 0;

  sub_BD88(&qword_945848);
  sub_11ABC8();
  v187 = sub_7691A0();
  v189 = v188;

  *(&v288 + 1) = &type metadata for String;
  *&v287 = v187;
  *(&v287 + 1) = v189;
  v190 = v241;
  sub_768C40();
  LOBYTE(v116) = v243 + 8;
  v121 = *(v243 + 8);
  v191 = v244;
  (v121)(v186, v244);
  sub_10A2C(&v287, &unk_93FBD0);
  *&v287 = v167;
  *(&v287 + 1) = sub_4C47F4;
  *&v288 = 0;
  v192 = sub_7691A0();
  v194 = v193;

  *(&v288 + 1) = &type metadata for String;
  *&v287 = v192;
  *(&v287 + 1) = v194;
  v195 = v242;
  sub_768C40();
  (v121)(v190, v191);
  sub_10A2C(&v287, &unk_93FBD0);
  sub_769E70();

  (v121)(v195, v191);
  v123 = v280;
  v125 = v281;
  v126 = v282;
LABEL_123:
  v196 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v197 = *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v197 || (type metadata accessor for PlatformSelectorView(), (v198 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v121 = v198;
  if (v279)
  {
    goto LABEL_133;
  }

  if (v278)
  {
    if (sub_76A860() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v200 = 0;
    v199 = v126;
    goto LABEL_134;
  }

  if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v199 = swift_allocObject();
  *(v199 + 16) = v231;
  *(v199 + 32) = v125;

  v200 = 1;
LABEL_134:
  v270 = v196;
  v269 = v197;
  v126 = sub_4C4F08(v199);

  if (v200)
  {
    v201 = v238;
  }

  else
  {
    v201 = v245;
  }

  if (v200)
  {
    v202 = v273;
  }

  else
  {
    v202 = v277;
  }

  v203 = (v121 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text);
  *v203 = v201;
  v203[1] = v202;

  v204 = _swiftEmptyArrayStorage;
  *&v287 = _swiftEmptyArrayStorage;
  v205 = *(v126 + 16);
  v271 = v121;
  if (v205)
  {
    v196 = 0;
    v206 = (v126 + 56);
    v268 = (v205 - 1);
    v204 = _swiftEmptyArrayStorage;
    v116 = &__NSArray0__struct_ptr;
    v123 = &selRef_absoluteDimension_;
    v273 = (v126 + 56);
    do
    {
      v277 = v204;
      v125 = &v206[32 * v196];
      v121 = v196;
      while (1)
      {
        if (v121 >= *(v126 + 16))
        {
          __break(1u);
          goto LABEL_175;
        }

        v196 = *v125;

        v207 = sub_769210();
        v208 = [objc_opt_self() _systemImageNamed:v207];

        if (v208)
        {
          break;
        }

LABEL_144:
        v121 = (v121 + 1);
        v125 += 4;
        if (v205 == v121)
        {
          v121 = v271;
          v204 = v277;
          goto LABEL_156;
        }
      }

      if (qword_93D218 != -1)
      {
        swift_once();
      }

      v209 = [v208 imageWithTintColor:qword_99DFB8];

      if (!v209)
      {
        goto LABEL_144;
      }

      sub_769440();
      if (*(&dword_10 + (v287 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v287 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v196 = (v121 + 1);
      sub_769500();
      v204 = v287;
      v179 = v268 == v121;
      v121 = v271;
      v206 = v273;
    }

    while (!v179);
  }

LABEL_156:
  v210 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images;
  *(v121 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images) = v204;

  v211 = *(v121 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView);
  if (v279)
  {
    v123 = v280;
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v212 = v275;
  }

  else
  {
    v212 = 0;
    v123 = v280;
  }

  [v211 setImage:v212];

  v213 = *(v121 + v210);
  if (v213)
  {
    if (v213 >> 62)
    {
      goto LABEL_207;
    }

    v214 = *(&dword_10 + (v213 & 0xFFFFFFFFFFFFFF8));
  }

  else
  {
    v214 = 0;
  }

  while (1)
  {
    *(v121 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges) = v214;
    v215 = v283;
    *(v121 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits) = v283;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_4C3A90();
    [v215 pageMarginInsets];
    [v121 setLayoutMargins:?];
    [v121 setNeedsLayout];
    v287 = 0u;
    v288 = 0u;
    v284 = 0u;
    v285 = 0u;
    v216 = v240;
    sub_768BD0();
    sub_10A2C(&v284, &unk_93FBD0);
    sub_10A2C(&v287, &unk_93FBD0);
    *&v287 = v126;
    *(&v287 + 1) = sub_4C47E8;
    *&v288 = 0;

    sub_BD88(&qword_945848);
    sub_11ABC8();
    v217 = sub_7691A0();
    v219 = v218;

    *(&v288 + 1) = &type metadata for String;
    *&v287 = v217;
    *(&v287 + 1) = v219;
    v116 = v241;
    sub_768C40();
    v121 = *(v243 + 8);
    v220 = v244;
    (v121)(v216, v244);
    sub_10A2C(&v287, &unk_93FBD0);
    *&v287 = v126;
    *(&v287 + 1) = sub_4C47F4;
    *&v288 = 0;
    v221 = sub_7691A0();
    v223 = v222;

    *(&v288 + 1) = &type metadata for String;
    *&v287 = v221;
    *(&v287 + 1) = v223;
    v224 = v242;
    sub_768C40();
    (v121)(v116, v220);
    sub_10A2C(&v287, &unk_93FBD0);
    sub_769E70();

    (v121)(v224, v220);
    v125 = v281;
    v126 = v282;
    v196 = v270;
LABEL_166:
    if (v278)
    {
      break;
    }

    v225 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
    if (!v225)
    {
      goto LABEL_176;
    }

LABEL_168:
    if ((v126 & 0xC000000000000001) != 0)
    {

      v121 = sub_76A770();
      *&v287 = v125;
      if (!v121)
      {
        goto LABEL_177;
      }
    }

    else
    {
      if (!*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        v228 = sub_76A770();
LABEL_185:

        *&v287 = v125;
        if (v228)
        {
          *&v284 = v228;
          sub_75A360();
          sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform);
          v226 = sub_7691C0();

          if ((v116 & 1) == 0)
          {
            v229 = 0;
            goto LABEL_193;
          }
        }

        else
        {

          if ((v116 & 1) == 0)
          {
            goto LABEL_196;
          }

          v226 = 0;
        }

LABEL_192:
        v229 = *(v272 + v123) != 0;
LABEL_193:
        *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v229;
        sub_570B6C();
        if ((v226 & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_194:
        v230 = *(v196 + v123) != 0;
        goto LABEL_198;
      }

      v121 = *(v126 + 32);

      *&v287 = v125;
      if (!v121)
      {
        goto LABEL_177;
      }
    }

    *&v284 = v121;
    sub_75A360();
    sub_11ACB0(&qword_945840, &type metadata accessor for MediaPlatform);

    LOBYTE(v116) = sub_7691C0();

    if ((v276 & 1) == 0)
    {

      if (v116)
      {
        v226 = 1;
        goto LABEL_192;
      }

LABEL_189:
      *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_570B6C();
      goto LABEL_194;
    }

LABEL_180:
    v227 = v225 - 1;
    if (__OFSUB__(v225, 1))
    {
      goto LABEL_203;
    }

    if ((v126 & 0xC000000000000001) != 0)
    {
      goto LABEL_204;
    }

    if ((v227 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v227 < *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
    {
      v228 = *(v126 + 8 * v227 + 32);

      goto LABEL_185;
    }

    __break(1u);
LABEL_207:
    v214 = sub_76A860();
  }

LABEL_175:
  v225 = sub_76A860();
  if (v225)
  {
    goto LABEL_168;
  }

LABEL_176:

LABEL_177:
  if (!v276)
  {

    goto LABEL_189;
  }

  if (v225)
  {
    LOBYTE(v116) = 0;
    goto LABEL_180;
  }

LABEL_196:
  *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_570B6C();
LABEL_197:
  v230 = 0;
LABEL_198:
  *(v123 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v230;
  sub_570B80();
  [v123 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_11AA3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_11AAA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_11ABC8()
{
  result = qword_945850;
  if (!qword_945850)
  {
    sub_133D8(&qword_945848);
    sub_11AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945850);
  }

  return result;
}

unint64_t sub_11AC4C()
{
  result = qword_945858;
  if (!qword_945858)
  {
    sub_133D8(&qword_945860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945858);
  }

  return result;
}

uint64_t sub_11ACB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_11ACF8()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_8845E8 + *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = sub_759930();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_11AED4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_tapSize] = xmmword_785760;
  v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_11ACF8();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_11B1EC()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = sub_7699F0();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_11B598()
{
  result = qword_9458E0;
  if (!qword_9458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9458E0);
  }

  return result;
}

void sub_11B5EC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_tapSize) = xmmword_785760;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  sub_76A840();
  __break(1u);
}

char *sub_11B724(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99ECE0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v18] = sub_75BB10();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_75BA90();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_11BBA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_767030();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_766D70();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_767020();
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  sub_BE38(v13, qword_99ECE0);
  sub_766FF0();
  (*(v5 + 8))(v7, v4);
  sub_766D50();

  sub_766D90();
  v14 = [a3 traitCollection];
  sub_766D60();
  v16 = v15;

  (*(v10 + 8))(v12, v9);
  return v16;
}

void sub_11BE1C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider20ProductNoRatingsView_statusLabel;
  if (qword_93D6F8 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99ECE0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

UIColor sub_11C090(double a1, uint64_t a2, UIColor *a3)
{
  sub_396E8();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  v10.super.isa = v7;
  v11.super.isa = v9;
  result.super.isa = sub_76A0C0(v10, v11).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

char *sub_11C168(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_11C58C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView()
{
  result = qword_945948;
  if (!qword_945948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_11C664()
{
  sub_11C704();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_11C704()
{
  if (!qword_945958)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_945958);
    }
  }
}

uint64_t sub_11C75C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_11CAB4(v3 + v4, a1);
}

id sub_11C7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_51DB60();
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_11CAB4(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_11CB24(v9);
    if (v16 == 1)
    {
      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      aBlock[4] = sub_11CC98;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_884640;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_11CB8C(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_11CBF0(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_11CAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CB24(uint64_t a1)
{
  v2 = sub_BD88(&qword_94A490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11CB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11CC60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11CCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_11CCCC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = sub_769A00();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    sub_769CF0();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    sub_766CC0();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  sub_769CA0();
  result = [v28 setFrame:?];
  if (v48)
  {
    sub_769CA0();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_11D210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_11D234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11D27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_11D2F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_11D314(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11D334(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_11D37C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_769B20();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_769B40();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_11D498()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766970();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v16);
  sub_766960();
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E848);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_766CA0();
  v15 = &protocol witness table for StaticDimension;
  sub_B1B4(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_B1B4(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v10);
  sub_766960();
  qword_99AFB8 = 0;
  unk_99AFC0 = 0;
  sub_34698(&v16, &unk_99AFC8);
  sub_34698(&v13, &unk_99AFF0);
  qword_99B020 = 0;
  unk_99B028 = 0;
  qword_99B018 = 2;
  return sub_34698(&v10, &unk_99B030);
}

uint64_t sub_11D6D8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CF00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v4, qword_99B898);
  (*(v5 + 16))(v7, v8, v4);
  sub_75CDD0();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99E848);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_766CA0();
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v19 = sub_766970();
  v20 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v18);
  sub_766960();
  qword_99B058 = v10;
  unk_99B060 = v12;
  sub_34698(&v24, &unk_99B068);
  sub_34698(&v21, &unk_99B090);
  qword_99B0C0 = 0;
  unk_99B0C8 = 0;
  qword_99B0B8 = 3;
  return sub_34698(&v18, &unk_99B0D0);
}

char *sub_11DA20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
  sub_759210();
  *&v4[v15] = sub_759020();
  v46 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_93D560 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99E830);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_75BB20();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_75BB10();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v16, qword_99E848);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_75BB10();
  v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_11E030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_7623A0();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = sub_75D850();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_75CF00();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v23 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v23 = qword_946938;
  }

  v24 = sub_BE38(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_B170(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_75EC20();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_BE2F8();
  v36 = v50;
  sub_760940();
  v37 = v49;
  sub_75D820();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  sub_75D650();
  v39 = v38 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v38 + v40, v57);
    sub_B170(v57, v57[3]);
    sub_760DE0();
    v42 = v41;
    v44 = v43;
    sub_BEB8(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return sub_75CE80();
}

uint64_t sub_11E7E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CF00();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_11E030(v10);
  v11 = [v1 traitCollection];
  v12 = sub_769A00();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_93C3A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_93C3A8 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_11FB04();
  sub_765470();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView();
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_75BB20();
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_11FB58(v39, &v49);
  sub_759210();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_766580();
  sub_11FBB4(v39);

  sub_75D650();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_769A00();

  v32 = v35;
  if (v16)
  {
    sub_12A084(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_12A5C8(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_11FC08(v40);
}

uint64_t sub_11ECC0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_BD88(&unk_94E620);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_784250;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_11EDD8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_BD88(&unk_93F5C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_77B6C0;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

void sub_11EE80(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_11ECC0();
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v7 = *(v4 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v8 = *(v4 + 8 * v5++ + 32);
      if (v8)
      {
        v9 = v8;
        sub_769440();
        if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        v2 = &v34;
        sub_769500();
        v6 = v34;
      }
    }

    v2 = sub_11EDD8();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v6 = sub_11EDD8();
    v10 = sub_11ECC0();
    v11 = 0;
    v2 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v13 = *(v10 + 8 * v11++ + 32);
      if (v13)
      {
        v14 = v13;
        sub_769440();
        if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v2 = v34;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v6 >> 62)
      {
        goto LABEL_59;
      }

      v15 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v20 = sub_76A860();
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_61:
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v2;
    v38 = sub_11FA9C;
    v39 = v30;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_23F0CC;
    v37 = &unk_8847F0;
    v31 = _Block_copy(&v34);

    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    v38 = sub_11FAF4;
    v39 = v32;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_3D6D80;
    v37 = &unk_884840;
    v33 = _Block_copy(&v34);

    [v29 animateWithDuration:4 delay:v31 options:v33 animations:0.33 completion:0.0];
    _Block_release(v33);
    _Block_release(v31);
    return;
  }

  v20 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_33:
  v21 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v22 = sub_76A770();
    }

    else
    {
      if (v21 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_56;
      }

      v22 = *(v2 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 setHidden:0];

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v15 = sub_76A860();
LABEL_21:
    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v17 = sub_76A770();
        }

        else
        {
          if (v16 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_55;
          }

          v17 = *(v6 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_53;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v2 >> 62)
    {
      break;
    }

    v6 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      goto LABEL_64;
    }

LABEL_43:
    v25 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_76A770();
      }

      else
      {
        if (v25 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v26 setAlpha:1.0];
      [v27 setHidden:0];

      ++v25;
      if (v28 == v6)
      {
        goto LABEL_64;
      }
    }
  }

  v6 = sub_76A860();
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_64:
}

void sub_11F424(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); j; j = sub_76A860())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_76A770();
      }

      else
      {
        if (k >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_11F5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (j >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_11F680(void *a1)
{
  sub_75CEB0();
  sub_BEB8((a1 + 15));
  sub_34698(&v6, (a1 + 15));
  v2 = sub_75CE70();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_75CE30();
  a1[12] = result;
  return result;
}

uint64_t sub_11F6DC(void *a1)
{
  sub_75CDD0();
  *a1 = v2;
  a1[1] = v3;
  sub_75CE10();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_BEB8((a1 + 2));
  sub_34698(&v9, (a1 + 2));
  sub_75CEB0();
  sub_BEB8((a1 + 15));
  sub_34698(&v9, (a1 + 15));
  v5 = sub_75CE70();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_75CE30();
  a1[12] = result;
  return result;
}

uint64_t sub_11F878(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_11F934()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v2 = sub_769210();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v4 = sub_769210();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_11FA5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11FAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11FABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_11FB04()
{
  result = qword_9459C8;
  if (!qword_9459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9459C8);
  }

  return result;
}

void sub_11FC64()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
  sub_759210();
  *(v0 + v8) = sub_759020();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_93D560 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99E830);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_75BB20();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_75BB10();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_93D568 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99E848);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_75BB10();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_120000(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = sub_7652D0();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F748);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_75BB20());
  *&v5[v20] = sub_75BB10();
  v25 = type metadata accessor for IconSilhouetteView();
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_396E8();
  v30 = sub_76A090();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_120394()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView();
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  sub_7652A0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel];
  sub_75D650();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  sub_75D650();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  sub_75D650();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_1206C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconSilhouetteView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView()
{
  result = qword_945A00;
  if (!qword_945A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1207C8()
{
  result = sub_7652D0();
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

void sub_120874()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = sub_7652D0();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99F748);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

uint64_t sub_120B20()
{
  sub_BD88(&qword_9452E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
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
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8);
  result = swift_arrayDestroy();
  qword_945A10 = v1;
  return result;
}

uint64_t sub_120D3C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&qword_945A90);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for CGPoint(0);
  return sub_7592C0();
}

char *sub_120DDC(double a1, double a2, double a3, double a4)
{
  v9 = sub_7599B0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView();
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_93C3B0;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0);
  isa = sub_7690E0().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_12189C(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_BD88(&qword_9477F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77B6D0;
  *(v28 + 32) = sub_767B80();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v32);
  return v20;
}

uint64_t sub_1211BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1226FC(v1 + v3, a1);
}

uint64_t sub_121218(uint64_t a1)
{
  v3 = sub_7599B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  sub_1226FC(&v1[v16], v15);
  sub_1226FC(a1, v12);
  sub_1226FC(&v1[v16], v9);
  swift_beginAccess();
  sub_122760(v12, &v1[v16]);
  swift_endAccess();
  sub_1939E8(v9);
  sub_1227C4(v9);
  sub_1227C4(v12);
  sub_1226FC(&v1[v16], v12);
  LOBYTE(v9) = sub_19C74C(v12, v15);
  sub_1227C4(v12);
  if ((v9 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v17], v3);
    sub_12189C(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_1227C4(a1);
  return sub_1227C4(v15);
}

uint64_t sub_121494()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ArcadeHeaderView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_122858;
  *(v3 + 24) = v2;
  v8[4] = sub_2EC28;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1EB578;
  v8[3] = &unk_8848B8;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_121610(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_121744(uint64_t a1, uint64_t a2)
{
  v5 = sub_7599B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191990(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_122550(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_12189C(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = sub_7599B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
    sub_BD88(&qword_941C10);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_77E280;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = sub_769450().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = sub_769210();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
      sub_BD88(&qword_941C10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_77E280;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = sub_769450().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = sub_769210();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
        sub_BD88(&qword_941C10);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_77E280;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = sub_769450().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer];
      sub_BD88(&qword_941C10);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_77E280;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = sub_769450().super.isa;

      [v42 setColors:v59];

      if (qword_93C3B8 != -1)
      {
        swift_once();
      }

      v60 = sub_BD88(&qword_945A90);
      sub_BE38(v60, qword_945A18);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      sub_7592B0();

      [v42 setStartPoint:{v84, v85}];
      if (qword_93C3C0 != -1)
      {
        swift_once();
      }

      sub_BE38(v60, qword_945A30);
      v83 = v62;
      v63 = v62;
      sub_7592B0();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = sub_769210();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_122550(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_12232C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_effect;
  v2 = sub_7599B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeHeaderView_gradientLayer);
}

id sub_1223A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView()
{
  result = qword_945A80;
  if (!qword_945A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1224AC()
{
  result = sub_7599B0();
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

uint64_t sub_122550(uint64_t a1)
{
  v2 = sub_7599B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_396E8();
      v8 = sub_76A0F0();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_1226FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_122760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1227C4(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_122820()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_122870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1228E0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v4, v0);
  qword_945AB0 = sub_768FF0();
  unk_945AB8 = &protocol witness table for OSLogger;
  sub_B1B4(qword_945A98);
  return sub_768FE0();
}

uint64_t sub_122A24(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0);
  v5 = sub_768F90();
  sub_BE70(0, &qword_959CF0);
  sub_768900();
  sub_768ED0();
  v6 = v11[0];
  sub_122BC4(v11[0]);
  sub_123AAC(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_123B34(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_BE70(0, &qword_940340);
  swift_retain_n();

  v9 = sub_769970();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_768F10();

  sub_BEB8(v11);
  return v5;
}

id sub_122BC4(void *a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_945AC8);
  v10 = sub_768F90();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_768F60();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_BE70(0, &qword_940340);
      v25 = sub_769970();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_123C1C;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_8849B0;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_123C40(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_4C874();
      sub_76A5A0();
      v22 = v25;
      sub_769980();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_93C3C8 != -1)
      {
        swift_once();
      }

      sub_B170(qword_945A98, qword_945AB0);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      sub_123B80();
      swift_allocError();
      sub_768F50();
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1230F0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a1;
  v34 = a3;
  v40 = a2;
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_758B40();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75F340();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760280();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7687B0();
  __chkstk_darwin(v16 - 8);
  v17 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v20 - 8);
  v22 = &v31 - v21;
  v23 = sub_765490();
  v26 = __chkstk_darwin(v23);
  if (*v39 == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_7570A0();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_759E30();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v42 = sub_7635D0();
    v41 = v34;

    sub_768790();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v31 + 104))(v35, enum case for FlowAnimationBehavior.infer(_:), v32);
    (*(v33 + 104))(v37, enum case for FlowOrigin.inapp(_:), v36);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v29 = sub_758AD0();
    sub_72D7A8(v29, 1, v38);
    sub_768F00();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_768F60();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1236B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_123C88;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_123860;
  v11 = &unk_8849D8;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_123CB4;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_50614;
  v11 = &unk_884A00;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

void sub_123860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1238C8()
{
  if (qword_93C3C8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_945A98, qword_945AB0);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_B1B4(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_7685C0();
  sub_BDD0(v3);
  sub_768EA0();

  LOBYTE(v3[0]) = 0;
  return sub_768F60();
}

uint64_t sub_123AE4()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_123B80()
{
  result = qword_945AD0;
  if (!qword_945AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945AD0);
  }

  return result;
}

uint64_t sub_123BD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_123C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_123C40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_123CD0()
{
  result = qword_945AD8;
  if (!qword_945AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945AD8);
  }

  return result;
}

char *sub_123D34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_124014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_12407C(uint64_t a1, double a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v24 = a1;
  v25 = sub_762D10();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v29);
  if ((a4 & 1) == 0)
  {
    sub_34630(v30);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
  }

  sub_BE70(0, &qword_93F900);
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  sub_BE38(v13, qword_99EA88);
  v14 = [a5 traitCollection];
  v15 = sub_769E10();

  sub_309E0(v29, v28);
  v16 = sub_7670D0();
  swift_allocObject();
  v17 = sub_767090();
  v28[23] = v16;
  v28[24] = &protocol witness table for LayoutViewPlaceholder;
  v28[20] = v17;
  v18 = sub_7653B0();
  v27[3] = v18;
  v27[4] = sub_9BA34();
  v19 = sub_B1B4(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v15;
  sub_765C30();
  sub_BEB8(v27);

  sub_762D00();
  sub_762CE0();
  (*(v10 + 8))(v12, v25);
  swift_allocObject();
  v21 = sub_767090();
  v28[33] = v16;
  v28[34] = &protocol witness table for LayoutViewPlaceholder;
  v28[30] = v21;
  v22 = sub_34154(a2, a5, v28);

  sub_30A3C(v28);
  sub_30A90(v29);
  return v22;
}

uint64_t sub_1243EC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_75D3C0();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7656A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v14 = v29;
  v15 = sub_7699E0();

  if (v15 & 1) != 0 && (swift_getKeyPath(), sub_75C7B0(), , v16 = v28, v17 = sub_769A00(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), sub_75C7B0(), , sub_7656B0(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = sub_765690(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    sub_75D3D0();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = sub_75D400();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t sub_124794@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A560;
  }

  return sub_BE140(v4, a1);
}

uint64_t sub_124884@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_99A6D0;
  }

  return sub_BE140(v4, a1);
}

double sub_124974()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == &dword_0 + 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1249D8()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_87DCB8;
  if (v2 != &dword_0 + 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = sub_769A00();

    if ((v5 & 1) == 0)
    {
      return &off_87DD18;
    }
  }

  return v3;
}

double sub_124A88(void *a1)
{
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    return 12.0;
  }

  sub_769A00();
  return 112.0;
}

id sub_124AEC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_99A560;
  }

  sub_BE140(v6, v24);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_99A6D0;
  }

  sub_BE140(v10, v24);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    sub_765970();
  }

  v16 = sub_17E84C();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_87DCB8;
  if (v18 != &dword_0 + 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = sub_769A00();

    if ((v21 & 1) == 0)
    {
      v19 = &off_87DD18;
    }
  }

  sub_3066F8(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_124EA0(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_75D850();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (sub_769A00())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == &dword_0 + 1)
  {
    if (qword_93C320 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_99A840;
  }

  else
  {
    if (qword_93C310 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_99A560;
  }

  v25 = v18;
  sub_BE140(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == &dword_0 + 1)
  {
    if (qword_93C338 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99AC90;
  }

  else
  {
    if (qword_93C318 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99A6D0;
  }

  sub_BE140(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_BB4E0(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_BE0EC(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (sub_769A00())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_BE140(v36, &v51);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v37 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v37 = qword_946938;
  }

  v38 = sub_BE38(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    sub_75D800();
    v40 = v39;
    sub_75D800();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_BE0EC(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_125820(v60, v20 + v44, v35))) * 0.5;
  sub_B170(v61, v61[3]);
  sub_7666E0();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_BEB8(v61);
  sub_34698(&v51, v61);
  sub_B170(v58, v58[3]);
  sub_7666E0();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_BEB8(v58);
  sub_34698(&v51, v58);
  sub_BE140(v60, &v51);
  v48 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(&v51, v30 + v48);
  swift_endAccess();
  sub_BE140(v57, &v51);
  v49 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(&v51, v30 + v49);
  swift_endAccess();
  sub_BE0EC(v57);
  return sub_BE0EC(v60);
}

void sub_1254C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = sub_7596A0();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = sub_76A860();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == &dword_0 + 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = sub_7650D0();
  sub_765260();
  sub_7666A0();
  v23 = (v7 + 8);
  if (v22)
  {
    sub_766660();
  }

  else
  {
    sub_766650();
  }

  (*v23)(v9, v6);
}

double sub_125780(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == &dword_0 + 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_125820(void *a1, double a2, double a3)
{
  v6 = 0.0;
  if ((sub_769A00() & 1) == 0)
  {
    sub_B170(a1 + 14, a1[17]);
    sub_766710();
    v8 = v7;
    sub_B170(a1 + 19, a1[22]);
    sub_766710();
    v10 = v8 + v9;
    sub_B170(a1 + 24, a1[27]);
    v11 = [v3 traitCollection];
    sub_766710();
    v13 = v12;

    if (v10 <= a3)
    {
      if (v10 + v13 <= a3)
      {
        return v13 * 0.5;
      }

      else
      {
        return (a3 - v10) * 0.5;
      }
    }
  }

  return v6;
}

id sub_1259BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_125A70(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7593D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_7595E0();
  v15 = sub_7595D0();
  v17 = v16;
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99FA90);
  v20 = sub_48A83C(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  sub_75CD70();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  sub_75CCD0();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_125D4C()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_7573C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  sub_75D650();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_1261A0(&unk_99BE98, v28);
    v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = sub_75BB20();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1261A0(v28, v26);
    v13 = v12;
    sub_757390();
    LOBYTE(v12) = sub_7573A0();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_766A20();
      sub_1261FC(v28);
    }

    else
    {
      sub_1261FC(v28);
      sub_134D8(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_BEB8(v27);
    sub_75D650();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    sub_75D650();
    sub_270D88(v1, v29, v18, v19);
    v21 = v20;
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder];
    sub_75D650();
    MinX = CGRectGetMinX(v32);
    sub_75D650();
    Width = CGRectGetWidth(v33);
    sub_75D650();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_37538(v29);
  }

  return result;
}

id sub_1260FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_126250()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_7595E0();
  v7 = sub_7595D0();
  v9 = v8;
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99FA90);
  v12 = sub_48A83C(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_75CD70();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  sub_75CCD0();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  sub_76A840();
  __break(1u);
}

uint64_t sub_126484()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = sub_765610();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_BD88(&qword_940A70);
  v15 = *(sub_765540() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_780120;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_62634();
  sub_7655B0();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  v47 = v6;
  sub_7655D0();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  sub_765500();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  sub_7655B0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4034000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4034000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  (v30)(v3, v48, v29);
  sub_7697A0();
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4038000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_7655B0();
  v52 = 0x4038000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  sub_7655D0();
  v52 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_945B70 = v39;
  return result;
}

uint64_t sub_126EB8()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_765610();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_BD88(&qword_940A70);
  v16 = *(sub_765540() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_780120;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_62634();
  sub_7655D0();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  v43 = v6;
  sub_7655D0();
  v41 = v15;
  v44 = v12;
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_7697A0();
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v34 = v9;
  sub_765500();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4000000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_945B78 = v39;
  return result;
}

uint64_t sub_1278C4()
{
  sub_127CD8(v0 + OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver()
{
  result = qword_945BB0;
  if (!qword_945BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_12797C()
{
  sub_127A0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_127A0C()
{
  if (!qword_94CAA0)
  {
    sub_757640();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_94CAA0);
    }
  }
}

uint64_t sub_127A98(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v13 = a1;
  sub_127C1C();
  v7 = a1;
  sub_BD88(&qword_945C60);
  if (swift_dynamicCast())
  {
    sub_BEB8(v12);
    sub_75C830();
    v8 = sub_757640();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_757640();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_127C68(v6, v2 + v10);
  return swift_endAccess();
}

unint64_t sub_127C1C()
{
  result = qword_93FF60;
  if (!qword_93FF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93FF60);
  }

  return result;
}

uint64_t sub_127C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94EE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_127CD8(uint64_t a1)
{
  v2 = sub_BD88(&unk_94EE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_127D60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93C3F0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99B138);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_127F3C()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99B138);
  v1 = sub_BE38(v0, qword_99B138);
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99F790);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1280BC()
{
  v1 = v0;
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_BE70(0, &qword_93F900);
  v4 = qword_93C3F0;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  sub_BE38(v6, qword_99B138);
  v7 = [v1 traitCollection];
  v8 = sub_769E10();

  *(inited + 64) = v3;
  *(inited + 40) = v8;
  v9 = sub_10D028(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, qword_940F50);
  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v11 = v10;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered) == 1)
  {
    [v10 setAlignment:1];
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = sub_7699F0();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAlignment:v14];
  }

  v28 = sub_BE70(0, &unk_959BA0);
  *&v27 = v11;
  sub_13310(&v27, v26);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_4592E8(v26, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = v9;
  v29 = v9;
  v18 = NSForegroundColorAttributeName;
  v19 = [v1 tintColor];
  if (v19)
  {
    v20 = v19;
    v28 = sub_BE70(0, &qword_93E540);
    *&v27 = v20;
    sub_13310(&v27, v26);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_4592E8(v26, v18, v21);

    v29 = v17;
  }

  else
  {
    sub_20619C(v18, &v27);

    sub_10A2C(&v27, &unk_93FBD0);
  }

  v22 = objc_allocWithZone(NSAttributedString);

  v23 = sub_769210();

  type metadata accessor for Key(0);
  sub_1293AC(&qword_93EC10, type metadata accessor for Key);
  isa = sub_7690E0().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  sub_75BAC0();
  [v1 setNeedsLayout];
}

uint64_t sub_1284C8()
{
  ObjectType = swift_getObjectType();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1294A4;
  *(v4 + 24) = v3;
  v9[4] = sub_2EC28;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1EB578;
  v9[3] = &unk_884B80;
  v5 = _Block_copy(v9);
  v6 = v0;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_128648(uint64_t a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel);
  sub_75D650();
  [v6 sizeThatFits:{v7, v8}];
  sub_75D650();
  CGRectGetWidth(v13);
  sub_75D650();
  CGRectGetMinX(v14);
  sub_75D650();
  CGRectGetMinY(v15);
  if (qword_93C3E0 != -1)
  {
    swift_once();
  }

  v9 = sub_766CA0();
  sub_BE38(v9, qword_99B108);
  sub_766470();
  v10 = [v6 traitCollection];
  sub_766C70();

  [v6 firstBaselineFromTop];
  (*(v3 + 8))(v5, v2);
  sub_75D650();
  sub_769D20();
  return [v6 setFrame:?];
}

void sub_12892C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel];
  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v4];
      v8 = [v4 length];
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_129434;
      *(v10 + 24) = v9;
      v14[4] = sub_12944C;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_2157DC;
      v14[3] = &unk_884B08;
      v11 = _Block_copy(v14);
      v12 = v7;
      v13 = v6;

      [v4 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v8 usingBlock:{0x100000, v11}];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        [v2 setAttributedText:v12];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_128BC0()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text];
  *v1 = 0;
  *(v1 + 1) = 0;

  sub_1280BC();
  v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered] = 0;
  sub_1280BC();
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_F704(v3);
}

void sub_128DE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_760AD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_tapGestureRecognizer] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered] = 0;
  v10 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
  *v11 = 0;
  v11[1] = 0;
  if (qword_93C3F0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99B138);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v15 = objc_allocWithZone(sub_75BB20());
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel] = sub_75BB10();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_titleLabel];
  v19 = v16;
  [v19 addSubview:v18];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"buttonTapped"];
  v21 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_tapGestureRecognizer];
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_tapGestureRecognizer] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = *&v16[v17];
    [v23 addGestureRecognizer:v22];

    [*&v16[v17] setUserInteractionEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_129114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_93C3F0 != -1)
    {
      swift_once();
    }

    v2 = sub_7666D0();
    sub_BE38(v2, qword_99B138);
    v3 = sub_7653B0();
    v6[3] = v3;
    v6[4] = sub_1293AC(&qword_93F9B0, &type metadata accessor for Feature);
    v4 = sub_B1B4(v6);
    (*(*(v3 - 8) + 104))(v4, enum case for Feature.measurement_with_labelplaceholder(_:), v3);
    sub_765C30();
    sub_BEB8(v6);
    sub_762CB0();
    if (qword_93C3E0 != -1)
    {
      swift_once();
    }

    v5 = sub_766CA0();
    sub_BE38(v5, qword_99B108);
    sub_766720();
    if (qword_93C3E8 != -1)
    {
      swift_once();
    }

    sub_BE38(v5, qword_99B120);
    sub_7666F0();
  }
}

uint64_t sub_1293AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1293F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_129454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_12946C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1294CC()
{
  v0 = sub_75CAF0();
  sub_3253C8(v0, v1);
  v2 = sub_75CAE0();

  return sub_3253D4(v2, v3);
}

double sub_1295B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = sub_760530();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_760550();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_762D10();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F08();
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v35 = sub_7666D0();
  sub_BE38(v35, qword_99F208);
  v11 = [a4 traitCollection];
  v44 = a4;
  v12 = v11;
  v13 = sub_769E10();

  sub_75CAF0();
  v14 = sub_7653B0();
  v49[3] = v14;
  v15 = sub_129BF8(&qword_93F9B0, &type metadata accessor for Feature);
  v34[1] = a1;
  v16 = v15;
  v49[4] = v15;
  v17 = sub_B1B4(v49);
  v18 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v19 = *(*(v14 - 8) + 104);
  v19(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  v20 = v13;
  v34[0] = v10;
  v21 = v20;
  sub_765C30();
  sub_BEB8(v49);
  v36 = v21;
  sub_762D00();
  sub_762CE0();
  v22 = *(v45 + 8);
  v45 += 8;
  v22(v9, v43);
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  sub_BE38(v35, qword_99F220);
  v23 = [v44 traitCollection];
  v24 = sub_769E10();

  sub_75CAE0();
  v48[3] = v14;
  v48[4] = v16;
  v25 = sub_B1B4(v48);
  v19(v25, v18, v14);
  v26 = v24;
  sub_765C30();
  sub_BEB8(v48);
  sub_762D00();
  sub_762CE0();
  v22(v9, v43);
  if (qword_93CA88 != -1)
  {
    swift_once();
  }

  v27 = v38;
  v28 = sub_BE38(v38, qword_99CAC0);
  (*(v37 + 16))(v39, v28, v27);
  sub_134D8(v49, v47);
  sub_134D8(v48, v46);
  v29 = v40;
  sub_760540();
  sub_129BF8(&unk_951380, &type metadata accessor for PrivacyDefinitionLayout);
  v30 = v42;
  sub_7665A0();
  v32 = v31;

  (*(v41 + 8))(v29, v30);
  sub_BEB8(v48);
  sub_BEB8(v49);
  return v32;
}

uint64_t sub_129BF8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_129C40(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_7692D0();

  return (v2 & 1) == 0;
}

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_10914(a1, a5 + 16);
  sub_10914(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_10914(a4, a5 + 120);
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_11FB58(a1, a6 + 160);
  sub_B170(a2, a2[3]);
  sub_766580();
  sub_11FBB4(a1);
  sub_10914(a3, a6 + 40);
  sub_10914(a4, a6 + 80);
  sub_10914(a5, a6 + 120);

  return sub_BEB8(a2);
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = [a1 traitCollection];
  v12 = sub_769A00();

  if (v12)
  {

    return sub_12A084(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_12A5C8(a2, a3, a4, a5, a6);
  }
}

uint64_t TodayCardLockupLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  sub_BEB8(v1 + 16);

  return sub_10914(a1, v1 + 16);
}

uint64_t CrossLinkLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 56);

  return sub_10914(a1, v1 + 56);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 120);

  return sub_10914(a1, v1 + 120);
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t sub_12A084@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v28 = a1;
  v27 = sub_7664F0();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_7673B0();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinY = CGRectGetMinY(v32);
  sub_B170(v5, *(v5 + 3));
  if ((sub_766540() & 1) == 0)
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    MinX = CGRectGetMinX(v33);
    v20 = v5[20];
    v21 = v5[21];
    sub_B170(v5, *(v5 + 3));
    sub_769D20();
    sub_766530();
    v34.origin.x = MinX;
    v34.origin.y = MinY;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetMaxY(v34);
    sub_B170(v5 + 22, *(v5 + 25));
    sub_33964();
    sub_766700();
    (*(v15 + 8))(v17, v14);
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  sub_B170(v5 + 5, *(v5 + 8));
  sub_769D20();
  sub_766530();
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxY(v38);
  sub_B170(v5 + 35, *(v5 + 38));
  sub_33964();
  sub_766700();
  (*(v15 + 8))(v17, v14);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  sub_769D20();
  sub_134D8((v5 + 10), v31);
  sub_134D8((v5 + 15), v30);
  sub_134D8((v5 + 27), v29);
  sub_767390();
  sub_7673A0();
  (*(v26 + 8))(v11, v27);
  sub_7664B0();
  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_12A5C8@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v29 = a1;
  v28 = sub_7664F0();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_7673B0();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMinX(v33);
  sub_B170(v5, *(v5 + 24));
  if ((sub_766540() & 1) == 0)
  {
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    MidY = CGRectGetMidY(v35);
    v21 = *(v5 + 160);
    v20 = *(v5 + 168);
    v22 = floor(MidY + v20 * -0.5);
    sub_B170(v5, *(v5 + 24));
    sub_769D20();
    sub_766530();
    v36.origin.x = MinX;
    v36.origin.y = v22;
    v36.size.width = v21;
    v36.size.height = v20;
    CGRectGetMaxX(v36);
    sub_B170((v5 + 176), *(v5 + 200));
    sub_33964();
    sub_766700();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetHeight(v39);
  sub_B170((v5 + 40), *(v5 + 64));
  sub_769D20();
  sub_766530();
  sub_B170((v5 + 280), *(v5 + 304));
  sub_33964();
  sub_766700();
  (*(v15 + 8))(v17, v14);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMinY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  sub_769D20();
  sub_134D8(v5 + 80, v32);
  sub_134D8(v5 + 120, v31);
  sub_134D8(v5 + 216, v30);
  sub_767390();
  sub_7673A0();
  (*(v27 + 8))(v11, v28);
  sub_7664B0();
  return (*(v25 + 8))(v13, v26);
}

uint64_t sub_12AB18(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_12AD90();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_12AB88()
{
  result = qword_945D08;
  if (!qword_945D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945D08);
  }

  return result;
}

uint64_t sub_12ABE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_12AC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}