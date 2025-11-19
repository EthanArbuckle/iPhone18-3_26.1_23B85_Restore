unint64_t sub_7A7C4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_7A834(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_7B3D0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_90E40();
      sub_4E918(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_7A8FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_90590();
      v8 = v7;
      if (v6 == sub_90590() && v8 == v9)
      {
        break;
      }

      v11 = sub_910F0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_7AA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_910F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_7AAB8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_7AB24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_3A90(&qword_C82D0);
  v3 = sub_90FD0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_79DA8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_79DA8(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_7AC28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C4350);
    v3 = sub_90FD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_17DF4(v4, v13, &qword_C8870);
      result = sub_79E14(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_C8E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_7AD88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C82C8);
    v3 = sub_90FD0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_79D64(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_7AE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C8290);
    v3 = sub_90FD0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_79E5C(v6);
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

unint64_t sub_7AF60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_3A90(a2);
    v7 = sub_90FD0();
    v8 = a1 + 32;

    while (1)
    {
      sub_17DF4(v8, &v15, a4);
      v9 = v15;
      result = sub_79E5C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_C8E4(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3A90(&qword_C82A0);
    v3 = sub_90FD0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_79E5C(v6);
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

void *sub_7B168(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_3A90(&qword_C82A8);
  v3 = sub_90FD0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_79F64(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_79F64(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_7B27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      sub_79878(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

unint64_t sub_7B378()
{
  result = qword_C3D78;
  if (!qword_C3D78)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D78);
  }

  return result;
}

__n128 sub_7B438(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_7B44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7B494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_7B5C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_900D0();
  sub_8F9C(v3, a2);
  sub_7FF0(v3, a2);
  return sub_900C0();
}

uint64_t sub_7B638()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_D0798);
  sub_7FF0(v0, qword_D0798);
  return sub_900C0();
}

uint64_t sub_7B768(void *a1)
{
  v2 = sub_90180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_901F0();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_901D0();
  v9 = [a1 name];
  if (v9)
  {
    v10 = v9;
    sub_90590();
  }

  sub_901E0();
  v11 = enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v2);
  v13 = sub_901A0();
  sub_90190();
  v13(&v26, 0);
  if ([a1 propertyForKey:PSHeaderDetailTextGroupKey])
  {
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v26 = v29;
  v27 = v30;
  if (*(&v30 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_26E74(&v26);
  }

  sub_90170();
  v12(v5, v11, v2);
  v14 = sub_901B0();
  sub_90190();
  v14(&v26, 0);
  v15 = sub_901C0();
  *v16 = 0x4045000000000000;
  v15(&v26, 0);
  v17 = sub_901C0();
  *(v18 + 16) = 0x403E000000000000;
  v17(&v26, 0);
  v19 = v25;
  *(&v27 + 1) = v25;
  v28 = &protocol witness table for UIListContentConfiguration;
  v20 = sub_4F01C(&v26);
  v21 = v24;
  (*(v24 + 16))(v20, v8, v19);
  sub_90980();
  return (*(v21 + 8))(v8, v19);
}

id sub_7BB88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacardHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7BBE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_7BC3C()
{
  sub_2F688();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_90550();
  [v1 addObserver:v0 selector:"handleAllowedVideosNotification:" name:v2 object:0];
}

uint64_t sub_7BCF0()
{
  v0 = sub_90230();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_902A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C8F4();
  v8 = sub_90B10();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_7E128;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7E2E8;
  aBlock[3] = &unk_B6648;
  v10 = _Block_copy(aBlock);

  sub_90250();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_7E294(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  sub_90DD0();
  sub_90B20();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_7BFA8()
{
  v0 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC15JournalSettings18VideoAssetGridView_durationLabel;
    v6 = [*(result + OBJC_IVAR____TtC15JournalSettings18VideoAssetGridView_durationLabel) superview];
    if (v6)
    {

      [v4 bringSubviewToFront:*&v4[v5]];
    }

    else
    {
      v7 = qword_C39D0;
      v8 = *&v4[v5];
      if (v7 != -1)
      {
        swift_once();
      }

      [v8 setFont:qword_D04D8];

      v9 = *&v4[v5];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 whiteColor];
      [v11 setTextColor:v12];

      [*&v4[v5] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v4[v5] setAdjustsFontForContentSizeCategory:1];
      [*&v4[v5] setAdjustsFontSizeToFitWidth:1];
      [v4 addSubview:*&v4[v5]];
      v13 = *&v4[v5];
      v14 = [v13 superview];
      v15 = &stru_BB000;
      if (v14)
      {
        v16 = v14;
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v13 trailingAnchor];
        v18 = [v16 trailingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        [v19 setConstant:-8.0];
        if (v19)
        {
          [v19 setActive:1];
        }

        v15 = &stru_BB000;
      }

      else
      {
        v19 = 0;
        v16 = v13;
      }

      v20 = *&v4[v5];
      v21 = [v20 superview];
      if (v21)
      {
        v22 = v21;
        [v20 v15[81].name];
        v23 = [v20 leadingAnchor];
        v24 = [v22 leadingAnchor];
        v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

        [v25 setConstant:8.0];
        if (v25)
        {
          [v25 setActive:1];
        }
      }

      else
      {
        v25 = 0;
        v22 = v20;
      }

      v26 = *&v4[v5];
      v27 = sub_792F4(0, 1, 6.0);
    }

    v28 = sub_90880();
    (*(*(v28 - 8) + 56))(v2, 1, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_90860();

    v30 = sub_90850();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v29;

    sub_7D800(0, 0, v2, &unk_9CB28, v31);
  }

  return result;
}

uint64_t sub_7C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_90230();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = sub_902A0();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_3A90(&qword_C4C60);
  v4[35] = swift_task_alloc();
  v7 = sub_8EFE0();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = sub_90860();
  v4[40] = sub_90850();
  v9 = sub_907F0();
  v4[41] = v9;
  v4[42] = v8;

  return _swift_task_switch(sub_7C648, v9, v8);
}

uint64_t sub_7C648()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      v8 = [v7 currentItem];

      if (v8)
      {
        v0[43] = [v8 asset];

        sub_3A90(&qword_C83B0);
        v9 = sub_8F460();
        v0[44] = v9;
        v10 = sub_90850();
        v0[45] = v10;
        v11 = swift_task_alloc();
        v0[46] = v11;
        *v11 = v0;
        v11[1] = sub_7C9F4;

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 55, v9, v10, &protocol witness table for MainActor);
      }
    }

    else
    {
LABEL_10:
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = *(v12 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_videoAsset), v14 = v12, v15 = v13, v14, !v13))
  {
    v21 = v0[36];
    v22 = v0[37];
    v23 = v0[35];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_16;
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  sub_458B0(0, 1, v18);

  v19 = (*(v17 + 48))(v18, 1, v16);
  v20 = v0[40];
  if (v19 == 1)
  {

LABEL_16:
    sub_8EF0(v0[35], &qword_C4C60);

    v24 = v0[1];

    return v24();
  }

  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);

  if (v20)
  {
    swift_getObjectType();
    v25 = sub_907F0();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v0[48] = v25;
  v0[49] = v27;

  return _swift_task_switch(sub_7CDDC, v25, v27);
}

uint64_t sub_7C9F4()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_7D4B4;
  }

  else
  {
    v6 = v2[43];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_7CB28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_7CB28()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_C8F4();
  v6 = v0[56];
  v14 = sub_90B10();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_7E2F4;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_7E2E8;
  v0[11] = &unk_B6710;
  v10 = _Block_copy(v0 + 8);

  sub_90250();
  v0[27] = _swiftEmptyArrayStorage;
  sub_7E294(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  sub_90DD0();
  sub_90B20();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_7CDDC()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_8EF90(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_3A90(&qword_C83A8);
  v6 = sub_8F460();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_7CEF8;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_7CEF8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_7D394;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_7D03C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_7D03C()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];
  v5 = v0[42];

  return _swift_task_switch(sub_7D0BC, v4, v5);
}

uint64_t sub_7D0BC()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_C8F4();
  v14 = sub_90B10();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_7E23C;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_7E2E8;
  v0[5] = &unk_B66C0;
  v10 = _Block_copy(v0 + 2);

  sub_90250();
  v0[26] = _swiftEmptyArrayStorage;
  sub_7E294(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  sub_90DD0();
  sub_90B20();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_7D394()
{
  v1 = v0[50];

  v2 = v0[41];
  v3 = v0[42];

  return _swift_task_switch(sub_7D400, v2, v3);
}

uint64_t sub_7D400()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_7D4B4()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_7D578()
{
  v0 = sub_91240();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_91250();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC15JournalSettings18VideoAssetGridView_durationLabel);

    sub_90C50();
    sub_91290();
    if (sub_91280())
    {
      sub_91220();
    }

    else
    {
      sub_91230();
    }

    sub_8ECC0();
    (*(v1 + 8))(v3, v0);
    sub_7E294(&qword_C83B8, &type metadata accessor for Duration.TimeFormatStyle);
    sub_91270();
    (*(v5 + 8))(v7, v4);
    v10 = sub_90550();

    v11 = v12;
    [v12 setText:v10];
  }
}

uint64_t sub_7D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_3CB58(a3, v22 - v9);
  v11 = sub_90880();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_8EF0(v10, &qword_C8820);
  }

  else
  {
    sub_90870();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_907F0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_90600() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_8EF0(a3, &qword_C8820);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8EF0(a3, &qword_C8820);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_7DA9C()
{
  v1 = v0;
  v2 = sub_8F350();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8ED40();
  if (v6)
  {
    v7 = v6;
    v22 = 0xD000000000000019;
    v23 = 0x8000000000095E40;
    sub_90E50();
    if (*(v7 + 16) && (v8 = sub_79E14(v24), (v9 & 1) != 0))
    {
      sub_7F40(*(v7 + 56) + 32 * v8, v25);
      sub_4E918(v24);

      sub_3A90(&qword_C4830);
      if (swift_dynamicCast())
      {
        v10 = v22;
        v11 = *(v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC15JournalSettings5Asset_id, v2);
          v12 = v11;
          v13 = sub_8F300();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v24[0] = v13;
          v24[1] = v15;
          __chkstk_darwin(v16);
          *(&v21 - 2) = v24;
          LOBYTE(v13) = sub_1F85C(sub_7E098, (&v21 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
            *v17 = 0;
            v17[1] = 0;
            sub_31D8C(v18);
            sub_2FE18();
            sub_2FC48();
          }
        }

        else
        {

          v19 = (v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
          v20 = *(v1 + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
          *v19 = 0;
          v19[1] = 0;
          sub_31D8C(v20);
          sub_2FE18();
          sub_2FC48();
        }
      }
    }

    else
    {

      sub_4E918(v24);
    }
  }
}

id sub_7DFB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAssetGridView()
{
  result = qword_C8398;
  if (!qword_C8398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7E098(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_910F0() & 1;
  }
}

uint64_t sub_7E0F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7E130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7E148()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7E188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_3BC8;

  return sub_7C460(a1, v4, v5, v6);
}

uint64_t sub_7E25C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7E294(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_7E31C()
{
  type metadata accessor for ForModuleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_D07B0 = result;
  return result;
}

uint64_t sub_7E378(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746C616568;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746C616568;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED0000736E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_910F0();
  }

  return v8 & 1;
}

Swift::Int sub_7E428()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_7E4B4()
{
  sub_90630();
}

Swift::Int sub_7E52C()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_7E5B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_B3A80;
  v8._object = v3;
  v5 = sub_90FF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_7E614(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_7E668()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_7E740()
{
  sub_90630();
}

Swift::Int sub_7E804()
{
  sub_91180();
  sub_90630();

  return sub_911D0();
}

uint64_t sub_7E8D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_81F88(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_7E908(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_7E99C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0x4D664F6574617473;
    if (a1 != 10)
    {
      v6 = 0x7478655468636972;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6172656D6163;
    v8 = 0x6C64496F69647561;
    if (a1 != 7)
    {
      v8 = 0x7463416F69647561;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0x6B63695065746164;
    v3 = 0x6974736567677573;
    if (a1 != 4)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6472616F6279656BLL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_7EB44@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v172 = sub_90400();
  v159 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v147 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for CanvasContentInputType();
  v155 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3A90(&qword_C8458);
  v4 = __chkstk_darwin(v3 - 8);
  v156 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v165 = &v147 - v6;
  v7 = sub_3A90(&qword_C8460);
  v8 = __chkstk_darwin(v7 - 8);
  v154 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v147 - v10;
  v11 = sub_8F350();
  v163 = *(v11 - 8);
  v164 = v11;
  v12 = __chkstk_darwin(v11);
  v153 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v170 = &v147 - v14;
  v15 = sub_3A90(&qword_C57E0);
  v16 = __chkstk_darwin(v15 - 8);
  v169 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v158 = &v147 - v18;
  v19 = sub_8ED70();
  v167 = *(v19 - 8);
  v168 = v19;
  v20 = __chkstk_darwin(v19);
  v147 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v149 = &v147 - v23;
  v24 = __chkstk_darwin(v22);
  v157 = &v147 - v25;
  v26 = __chkstk_darwin(v24);
  v150 = &v147 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v147 - v29;
  v30 = __chkstk_darwin(v28);
  v152 = &v147 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v147 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v147 - v36;
  __chkstk_darwin(v35);
  v39 = &v147 - v38;
  v40 = sub_8EFE0();
  v161 = *(v40 - 8);
  v162 = v40;
  __chkstk_darwin(v40);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3A90(&qword_C4C60);
  v44 = __chkstk_darwin(v43 - 8);
  v46 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v147 - v47;
  v49 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v49);
  v51 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_8EE00();
  v174 = *(v52 - 8);
  v175 = v52;
  __chkstk_darwin(v52);
  v54 = &v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8EDF0();
  sub_8EDD0();
  v55 = v54;
  sub_8ED90();
  sub_821A4(v173, v51, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v173 = v48;
    v58 = v169;
    v157 = v42;
    v149 = v39;
    v153 = v34;
    v60 = v170;
    v59 = v171;
    v61 = v172;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v87 = *(v51 + 1);
        sub_8EDC0();
        if (!v87)
        {
          goto LABEL_84;
        }

        v84 = sub_8ED80();
        if (!*v88)
        {

          v84(v178, 0);
          goto LABEL_84;
        }

        v85 = v88;
        v86 = v37;
        sub_8ED60();
LABEL_80:

        v102 = *v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v85 = v102;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_81;
        }

        goto LABEL_37;
      }

      v62 = v173;
      sub_17F0C(v51, v173, &qword_C4C60);
      sub_8EDC0();
      v63 = v46;
      sub_17DF4(v62, v46, &qword_C4C60);
      v64 = v161;
      v65 = v46;
      v66 = v162;
      if ((*(v161 + 48))(v65, 1, v162) == 1)
      {
        v67 = &qword_C4C60;
        sub_8EF0(v62, &qword_C4C60);
        v68 = v63;
LABEL_13:
        sub_8EF0(v68, v67);
        goto LABEL_84;
      }

      v104 = v157;
      (*(v64 + 32))(v157, v63, v66);
      v106 = sub_8ED80();
      if (*v105)
      {
        v107 = v105;
        sub_8EF80();
        v108 = v149;
        sub_8ED60();

        v109 = *v107;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        *v107 = v109;
        if ((v110 & 1) == 0)
        {
          v109 = sub_17A88(0, *(v109 + 16) + 1, 1, v109);
          *v107 = v109;
        }

        v112 = *(v109 + 16);
        v111 = *(v109 + 24);
        if (v112 >= v111 >> 1)
        {
          v109 = sub_17A88(v111 > 1, v112 + 1, 1, v109);
          *v107 = v109;
        }

        *(v109 + 16) = v112 + 1;
        (*(v167 + 32))(v109 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v112, v108, v168);
        v106(v178, 0);
        (*(v64 + 8))(v157, v66);
        v113 = &qword_C4C60;
        v114 = v173;
      }

      else
      {
        v106(v178, 0);
        (*(v64 + 8))(v104, v66);
        v113 = &qword_C4C60;
        v114 = v62;
      }

      goto LABEL_79;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v69 = v158;
      sub_17F0C(v51, v158, &qword_C57E0);
      sub_8EDC0();
      sub_17DF4(v69, v58, &qword_C57E0);
      v70 = v163;
      v71 = v164;
      if ((*(v163 + 48))(v58, 1, v164) == 1)
      {
        v67 = &qword_C57E0;
        sub_8EF0(v69, &qword_C57E0);
        v68 = v58;
        goto LABEL_13;
      }

      (*(v70 + 32))(v60, v58, v71);
      v116 = sub_8ED80();
      if (*v115)
      {
        v117 = v115;
        sub_8F300();
        sub_8ED60();

        v118 = *v117;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        *v117 = v118;
        if ((v119 & 1) == 0)
        {
          v118 = sub_17A88(0, *(v118 + 16) + 1, 1, v118);
          *v117 = v118;
        }

        v121 = *(v118 + 16);
        v120 = *(v118 + 24);
        if (v121 >= v120 >> 1)
        {
          v118 = sub_17A88(v120 > 1, v121 + 1, 1, v118);
          *v117 = v118;
        }

        *(v118 + 16) = v121 + 1;
        (*(v167 + 32))(v118 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v121, v153, v168);
        v116(v178, 0);
        (*(v70 + 8))(v60, v71);
        v113 = &qword_C57E0;
        v114 = v158;
      }

      else
      {
        v116(v178, 0);
        (*(v70 + 8))(v60, v71);
        v113 = &qword_C57E0;
        v114 = v69;
      }

LABEL_79:
      sub_8EF0(v114, v113);
      goto LABEL_84;
    }

    v89 = *(v51 + 1);
    v90 = sub_3A90(&qword_C8468);
    v91 = *(v90 + 64);
    v92 = v166;
    sub_17F0C(&v51[*(v90 + 48)], v166, &qword_C8460);
    sub_17F0C(&v51[v91], v165, &qword_C8458);
    sub_8EDC0();
    v93 = v160;
    if (v89)
    {
      v95 = sub_8ED80();
      if (*v94)
      {
        v96 = v94;
        sub_8ED60();

        v97 = *v96;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        *v96 = v97;
        if ((v98 & 1) == 0)
        {
          v97 = sub_17A88(0, *(v97 + 16) + 1, 1, v97);
          *v96 = v97;
        }

        v100 = *(v97 + 16);
        v99 = *(v97 + 24);
        if (v100 >= v99 >> 1)
        {
          v97 = sub_17A88(v99 > 1, v100 + 1, 1, v97);
          *v96 = v97;
        }

        *(v97 + 16) = v100 + 1;
        (*(v167 + 32))(v97 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v100, v152, v168);
        v95(v178, 0);
        v92 = v166;
        v93 = v160;
      }

      else
      {

        v95(v178, 0);
        v92 = v166;
      }
    }

    v122 = v154;
    sub_17DF4(v92, v154, &qword_C8460);
    if ((*(v155 + 48))(v122, 1, v93) == 1)
    {
      sub_8EF0(v122, &qword_C8460);
      v123 = v165;
      goto LABEL_69;
    }

    v124 = v151;
    sub_72B10(v122, v151);
    v125 = sub_81FD4(v124);
    v123 = v165;
    if (v125 != 12)
    {
      v126 = v125;
      v128 = sub_8ED80();
      if (*v127)
      {
        v129 = v127;
        sub_7E99C(v126);
        sub_8ED60();

        v130 = *v129;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        *v129 = v130;
        if ((v131 & 1) == 0)
        {
          v130 = sub_17A88(0, *(v130 + 16) + 1, 1, v130);
          *v129 = v130;
        }

        v133 = *(v130 + 16);
        v132 = *(v130 + 24);
        if (v133 >= v132 >> 1)
        {
          v130 = sub_17A88(v132 > 1, v133 + 1, 1, v130);
          *v129 = v130;
        }

        *(v130 + 16) = v133 + 1;
        (*(v167 + 32))(v130 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v133, v148, v168);
        v128(v178, 0);
        v134 = v151;
        goto LABEL_68;
      }

      v128(v178, 0);
    }

    v134 = v124;
LABEL_68:
    sub_82144(v134, type metadata accessor for CanvasContentInputType);
LABEL_69:
    v135 = v156;
    sub_17DF4(v123, v156, &qword_C8458);
    v136 = v159;
    if ((*(v159 + 48))(v135, 1, v61) == 1)
    {
      sub_8EF0(v123, &qword_C8458);
      sub_8EF0(v166, &qword_C8460);
      v114 = v135;
      v113 = &qword_C8458;
    }

    else
    {
      (*(v136 + 32))(v59, v135, v61);
      v138 = sub_8ED80();
      if (*v137)
      {
        v139 = v137;
        v177 = sub_903F0();
        sub_910B0();
        sub_8ED60();

        v140 = *v139;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        *v139 = v140;
        if ((v141 & 1) == 0)
        {
          v140 = sub_17A88(0, *(v140 + 16) + 1, 1, v140);
          *v139 = v140;
        }

        v143 = *(v140 + 16);
        v142 = *(v140 + 24);
        if (v143 >= v142 >> 1)
        {
          v140 = sub_17A88(v142 > 1, v143 + 1, 1, v140);
          *v139 = v140;
        }

        *(v140 + 16) = v143 + 1;
        (*(v167 + 32))(v140 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v143, v150, v168);
        v138(v178, 0);
        (*(v159 + 8))(v59, v61);
      }

      else
      {
        v138(v178, 0);
        (*(v136 + 8))(v59, v61);
      }

      sub_8EF0(v123, &qword_C8458);
      v113 = &qword_C8460;
      v114 = v166;
    }

    goto LABEL_79;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v73 = v163;
      v72 = v164;
      v74 = v153;
      (*(v163 + 32))(v153, v51, v164);
      sub_8EDC0();
      v76 = sub_8ED80();
      if (*v75)
      {
        v77 = v75;
        sub_8F300();
        sub_8ED60();

        v78 = *v77;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_17A88(0, *(v78 + 16) + 1, 1, v78);
          *v77 = v78;
        }

        v81 = *(v78 + 16);
        v80 = *(v78 + 24);
        if (v81 >= v80 >> 1)
        {
          v78 = sub_17A88(v80 > 1, v81 + 1, 1, v78);
          *v77 = v78;
        }

        *(v78 + 16) = v81 + 1;
        (*(v167 + 32))(v78 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v81, v157, v168);
        v76(v178, 0);
        (*(v73 + 8))(v74, v72);
      }

      else
      {
        v76(v178, 0);
        (*(v73 + 8))(v74, v72);
      }

      goto LABEL_84;
    }

    sub_8EDC0();
    v84 = sub_8ED80();
    if (*v101)
    {
      v85 = v101;
      v86 = v149;
      sub_8ED60();

      v102 = *v85;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *v85 = v102;
      if (v103)
      {
LABEL_81:
        v146 = *(v102 + 16);
        v145 = *(v102 + 24);
        if (v146 >= v145 >> 1)
        {
          v102 = sub_17A88(v145 > 1, v146 + 1, 1, v102);
          *v85 = v102;
        }

        *(v102 + 16) = v146 + 1;
        (*(v167 + 32))(v102 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v146, v86, v168);
        v84(v178, 0);
        goto LABEL_84;
      }

LABEL_37:
      v102 = sub_17A88(0, *(v102 + 16) + 1, 1, v102);
      *v85 = v102;
      goto LABEL_81;
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v82 = *v51;
    sub_8EDC0();
    if (v82 == 4)
    {
      goto LABEL_84;
    }

    v84 = sub_8ED80();
    if (*v83)
    {
      v85 = v83;
      v86 = v147;
      sub_8ED60();
      goto LABEL_80;
    }

LABEL_51:
    v84(v178, 0);
    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 7)
  {
    (*(v174 + 8))(v54, v175);
    sub_82144(v51, type metadata accessor for AppLaunchAction);
    return (*(v161 + 56))(v176, 1, 1, v162);
  }

  sub_8EDC0();
LABEL_84:
  sub_8EDB0();
  return (*(v174 + 8))(v55, v175);
}

uint64_t type metadata accessor for AppLaunchAction()
{
  result = qword_C84E0;
  if (!qword_C84E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_803C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8EFE0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_828BC(&unk_C8540, &type metadata accessor for URL);
      v26 = sub_90460();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_828BC(&qword_C85A8, &type metadata accessor for URL);
        v31 = sub_904D0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_80778(uint64_t a1, uint64_t a2)
{
  v186 = a1;
  v187 = a2;
  v157 = sub_90400();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v153 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_3A90(&qword_C8580);
  __chkstk_darwin(v165);
  v161 = &v153 - v3;
  v164 = type metadata accessor for CanvasContentInputType();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v170 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_3A90(&qword_C8588);
  __chkstk_darwin(v168);
  v167 = &v153 - v5;
  v6 = sub_3A90(&qword_C8458);
  v7 = __chkstk_darwin(v6 - 8);
  v155 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v177 = &v153 - v10;
  __chkstk_darwin(v9);
  v176 = &v153 - v11;
  v12 = sub_3A90(&qword_C8460);
  v13 = __chkstk_darwin(v12 - 8);
  v159 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v178 = &v153 - v16;
  __chkstk_darwin(v15);
  v175 = &v153 - v17;
  v18 = sub_8F350();
  v179 = *(v18 - 8);
  v180 = v18;
  v19 = __chkstk_darwin(v18);
  v169 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v153 - v21;
  v22 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v22 - 8);
  v185 = &v153 - v23;
  v184 = sub_3A90(&qword_C5800);
  __chkstk_darwin(v184);
  v183 = &v153 - v24;
  v166 = sub_8EFE0();
  v182 = *(v166 - 8);
  __chkstk_darwin(v166);
  v158 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v26 - 8);
  v162 = &v153 - v27;
  v181 = sub_3A90(&qword_C8590);
  __chkstk_darwin(v181);
  v29 = &v153 - v28;
  v30 = type metadata accessor for AppLaunchAction();
  v31 = __chkstk_darwin(v30);
  v173 = (&v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v35 = &v153 - v34;
  v36 = __chkstk_darwin(v33);
  v172 = &v153 - v37;
  v38 = __chkstk_darwin(v36);
  v174 = &v153 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v153 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v153 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = (&v153 - v47);
  __chkstk_darwin(v46);
  v50 = &v153 - v49;
  v51 = sub_3A90(&qword_C8598);
  v52 = __chkstk_darwin(v51 - 8);
  v54 = &v153 - v53;
  v55 = &v153 + *(v52 + 56) - v53;
  sub_821A4(v186, &v153 - v53, type metadata accessor for AppLaunchAction);
  v56 = v187;
  v187 = v55;
  sub_821A4(v56, v55, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v62 = v42;
    v63 = v181;
    v64 = v182;
    v171 = v54;
    v65 = v184;
    v66 = v185;
    v67 = v183;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v54 = v171;
        sub_821A4(v171, v50, type metadata accessor for AppLaunchAction);
        v68 = v187;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_8EF0(v50, &qword_C4C60);
          goto LABEL_59;
        }

        v111 = *(v63 + 48);
        v112 = v29;
        sub_17F0C(v50, v29, &qword_C4C60);
        sub_17F0C(v68, &v29[v111], &qword_C4C60);
        v113 = *(v64 + 48);
        v114 = v166;
        if (v113(v29, 1, v166) == 1)
        {
          if (v113(&v29[v111], 1, v114) == 1)
          {
            sub_8EF0(v29, &qword_C4C60);
            goto LABEL_87;
          }
        }

        else
        {
          v118 = v162;
          sub_17DF4(v29, v162, &qword_C4C60);
          if (v113(&v29[v111], 1, v114) != 1)
          {
            v135 = &v29[v111];
            v136 = v158;
            (*(v64 + 32))(v158, v135, v114);
            sub_828BC(&qword_C85A8, &type metadata accessor for URL);
            v137 = sub_904D0();
            v138 = *(v64 + 8);
            v138(v136, v114);
            v138(v118, v114);
            sub_8EF0(v112, &qword_C4C60);
            if (v137)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

          (*(v64 + 8))(v118, v114);
        }

        sub_8EF0(v29, &qword_C8590);
        goto LABEL_99;
      }

      v54 = v171;
      sub_821A4(v171, v48, type metadata accessor for AppLaunchAction);
      v86 = *v48;
      v85 = v48[1];
      v87 = v187;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_57;
      }

      v88 = v87[1];
      if (v85)
      {
        if (v88)
        {
          if (v86 != *v87 || v85 != v88)
          {
            v124 = sub_910F0();

            if (v124)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

LABEL_29:

          goto LABEL_87;
        }
      }

      else if (!v88)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_821A4(v171, v45, type metadata accessor for AppLaunchAction);
      v69 = v187;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_8EF0(v45, &qword_C57E0);
        v54 = v171;
        goto LABEL_59;
      }

      v70 = *(v65 + 48);
      sub_17F0C(v45, v67, &qword_C57E0);
      sub_17F0C(v69, v67 + v70, &qword_C57E0);
      v71 = v179;
      v72 = v180;
      v73 = *(v179 + 48);
      if (v73(v67, 1, v180) == 1)
      {
        v74 = v73(v67 + v70, 1, v72);
        v75 = v171;
        if (v74 == 1)
        {
          sub_8EF0(v67, &qword_C57E0);
LABEL_80:
          v123 = v75;
LABEL_88:
          sub_82144(v123, type metadata accessor for AppLaunchAction);
          v61 = 1;
          return v61 & 1;
        }
      }

      else
      {
        sub_17DF4(v67, v66, &qword_C57E0);
        if (v73(v67 + v70, 1, v72) != 1)
        {
          v119 = v67 + v70;
          v120 = v160;
          (*(v71 + 32))(v160, v119, v72);
          sub_828BC(&qword_C5808, &type metadata accessor for UUID);
          v121 = sub_904D0();
          v122 = *(v71 + 8);
          v122(v120, v72);
          v122(v66, v72);
          sub_8EF0(v67, &qword_C57E0);
          v75 = v171;
          if (v121)
          {
            goto LABEL_80;
          }

LABEL_85:
          sub_82144(v75, type metadata accessor for AppLaunchAction);
          goto LABEL_60;
        }

        (*(v71 + 8))(v66, v72);
        v75 = v171;
      }

      v115 = &qword_C5800;
      v116 = v67;
LABEL_84:
      sub_8EF0(v116, v115);
      goto LABEL_85;
    }

    v54 = v171;
    v89 = v62;
    sub_821A4(v171, v62, type metadata accessor for AppLaunchAction);
    v90 = *v89;
    v91 = v89[1];
    v92 = sub_3A90(&qword_C8468);
    v93 = *(v92 + 48);
    v94 = *(v92 + 64);
    v95 = v187;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_8EF0(v89 + v94, &qword_C8458);
      sub_8EF0(v89 + v93, &qword_C8460);
      goto LABEL_59;
    }

    v96 = v95[1];
    v186 = *v95;
    sub_17F0C(v89 + v93, v175, &qword_C8460);
    sub_17F0C(v89 + v94, v176, &qword_C8458);
    sub_17F0C(v95 + v93, v178, &qword_C8460);
    sub_17F0C(v95 + v94, v177, &qword_C8458);
    if (v91)
    {
      v97 = v170;
      if (v96)
      {
        v98 = v171;
        v100 = v175;
        v99 = v176;
        v101 = v178;
        if (v90 == v186 && v91 == v96)
        {

          v103 = v167;
          v102 = v168;
          goto LABEL_91;
        }

        v126 = sub_910F0();

        v103 = v167;
        v102 = v168;
        if (v126)
        {
LABEL_91:
          v127 = *(v102 + 48);
          sub_17DF4(v100, v103, &qword_C8460);
          sub_17DF4(v101, v103 + v127, &qword_C8460);
          v128 = *(v163 + 48);
          v129 = v164;
          if (v128(v103, 1, v164) == 1)
          {
            v130 = v128(v103 + v127, 1, v129);
            v131 = v165;
            if (v130 == 1)
            {
              sub_8EF0(v103, &qword_C8460);
              v132 = v99;
              goto LABEL_101;
            }
          }

          else
          {
            v133 = v159;
            sub_17DF4(v103, v159, &qword_C8460);
            v134 = v128(v103 + v127, 1, v129);
            v131 = v165;
            if (v134 != 1)
            {
              sub_72B10(v103 + v127, v97);
              v139 = sub_72FB8(v133, v97);
              sub_82144(v97, type metadata accessor for CanvasContentInputType);
              sub_82144(v133, type metadata accessor for CanvasContentInputType);
              sub_8EF0(v103, &qword_C8460);
              v132 = v99;
              if (v139)
              {
LABEL_101:
                v140 = *(v131 + 48);
                v141 = v161;
                sub_17DF4(v132, v161, &qword_C8458);
                v142 = v177;
                v143 = v141;
                sub_17DF4(v177, v141 + v140, &qword_C8458);
                v144 = v156;
                v145 = *(v156 + 48);
                v146 = v157;
                if (v145(v141, 1, v157) == 1)
                {
                  sub_8EF0(v142, &qword_C8458);
                  sub_8EF0(v178, &qword_C8460);
                  v147 = v161;
                  sub_8EF0(v132, &qword_C8458);
                  sub_8EF0(v100, &qword_C8460);
                  if (v145(v147 + v140, 1, v146) == 1)
                  {
                    sub_8EF0(v147, &qword_C8458);
                    v123 = v171;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v148 = v141;
                  v149 = v155;
                  sub_17DF4(v148, v155, &qword_C8458);
                  if (v145(v143 + v140, 1, v146) != 1)
                  {
                    v150 = v143 + v140;
                    v151 = v154;
                    (*(v144 + 32))(v154, v150, v146);
                    sub_828BC(&qword_C85A0, &type metadata accessor for WidgetFamily);
                    LODWORD(v187) = sub_904D0();
                    v152 = *(v144 + 8);
                    v152(v151, v146);
                    sub_8EF0(v177, &qword_C8458);
                    sub_8EF0(v178, &qword_C8460);
                    sub_8EF0(v132, &qword_C8458);
                    sub_8EF0(v100, &qword_C8460);
                    v152(v149, v146);
                    sub_8EF0(v161, &qword_C8458);
                    v123 = v171;
                    if (v187)
                    {
                      goto LABEL_88;
                    }

LABEL_107:
                    sub_82144(v123, type metadata accessor for AppLaunchAction);
                    goto LABEL_60;
                  }

                  sub_8EF0(v177, &qword_C8458);
                  sub_8EF0(v178, &qword_C8460);
                  v147 = v161;
                  sub_8EF0(v132, &qword_C8458);
                  sub_8EF0(v100, &qword_C8460);
                  (*(v144 + 8))(v149, v146);
                }

                sub_8EF0(v147, &qword_C8580);
                v123 = v171;
                goto LABEL_107;
              }

LABEL_97:
              sub_8EF0(v177, &qword_C8458);
              sub_8EF0(v101, &qword_C8460);
              sub_8EF0(v132, &qword_C8458);
              sub_8EF0(v100, &qword_C8460);
              sub_82144(v171, type metadata accessor for AppLaunchAction);
              goto LABEL_60;
            }

            sub_82144(v133, type metadata accessor for CanvasContentInputType);
          }

          sub_8EF0(v103, &qword_C8588);
          v132 = v99;
          goto LABEL_97;
        }

LABEL_83:
        sub_8EF0(v177, &qword_C8458);
        v75 = v98;
        sub_8EF0(v101, &qword_C8460);
        sub_8EF0(v99, &qword_C8458);
        v116 = v100;
        v115 = &qword_C8460;
        goto LABEL_84;
      }

      v98 = v171;
      v100 = v175;
      v99 = v176;
      v101 = v178;
    }

    else
    {
      v97 = v170;
      v98 = v171;
      v100 = v175;
      v99 = v176;
      v101 = v178;
      v103 = v167;
      v102 = v168;
      if (!v96)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v76 = v174;
      sub_821A4(v54, v174, type metadata accessor for AppLaunchAction);
      v77 = v187;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v179;
        v78 = v180;
        v80 = v169;
        (*(v179 + 32))(v169, v77, v180);
        v61 = sub_8F320();
        v81 = *(v79 + 8);
        v81(v80, v78);
        v81(v76, v78);
        goto LABEL_19;
      }

      (*(v179 + 8))(v76, v180);
      goto LABEL_59;
    }

    v104 = v172;
    sub_821A4(v54, v172, type metadata accessor for AppLaunchAction);
    v105 = v187;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_59;
    }

    v106 = *v105;
    if (*v104)
    {
      v107 = 0x68746C616568;
    }

    else
    {
      v107 = 0x6163696669746F6ELL;
    }

    if (*v104)
    {
      v108 = 0xE600000000000000;
    }

    else
    {
      v108 = 0xED0000736E6F6974;
    }

    if (v106)
    {
      v109 = 0x68746C616568;
    }

    else
    {
      v109 = 0x6163696669746F6ELL;
    }

    if (v106)
    {
      v110 = 0xE600000000000000;
    }

    else
    {
      v110 = 0xED0000736E6F6974;
    }

    if (v107 != v109 || v108 != v110)
    {
      v117 = sub_910F0();

      if (v117)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_821A4(v54, v35, type metadata accessor for AppLaunchAction);
    v82 = *v35;
    v83 = v187;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_59;
    }

    v84 = *v83;
    if (v82 == 4)
    {
      if (v84 != 4)
      {
        goto LABEL_99;
      }

LABEL_87:
      v123 = v54;
      goto LABEL_88;
    }

    if (v84 != 4 && (sub_3267C(v82, v84) & 1) != 0)
    {
      goto LABEL_87;
    }

LABEL_99:
    sub_82144(v54, type metadata accessor for AppLaunchAction);
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_87;
    }

LABEL_59:
    sub_8EF0(v54, &qword_C8598);
LABEL_60:
    v61 = 0;
    return v61 & 1;
  }

  v58 = v173;
  sub_821A4(v54, v173, type metadata accessor for AppLaunchAction);
  v59 = *v58;
  v60 = v187;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_57:

    goto LABEL_59;
  }

  v61 = sub_803C8(v59, *v60);

LABEL_19:
  sub_82144(v54, type metadata accessor for AppLaunchAction);
  return v61 & 1;
}

uint64_t sub_81F88(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3AD0;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_81FD4(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_821A4(a1, v4, type metadata accessor for CanvasContentInputType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if ((result - 10) >= 2)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    else if (result != 6)
    {
      if (result == 7)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 0;
    }

    else if (result == 4)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_8EF0(v4, &qword_C57E0);
      return 4;
    }

    else if (*v4)
    {
      return 8;
    }

    else
    {
      return 7;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_82144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_821A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_8220C()
{
  sub_823F8(319, &qword_C84F0, &qword_C7740, &type metadata accessor for URL, sub_8244C);
  if (v0 <= 0x3F)
  {
    sub_823F8(319, &qword_C84F8, &unk_C8500, &type metadata for String, sub_825CC);
    if (v1 <= 0x3F)
    {
      sub_823F8(319, &qword_C7EA8, &qword_C57A8, &type metadata accessor for UUID, sub_8244C);
      if (v2 <= 0x3F)
      {
        sub_824A0();
        if (v3 <= 0x3F)
        {
          sub_82550(319, &qword_C8510, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_8259C();
            if (v5 <= 0x3F)
            {
              sub_823F8(319, &qword_C8520, &unk_C8528, &type metadata for SettingsTab, sub_825CC);
              if (v6 <= 0x3F)
              {
                sub_82550(319, &qword_C8530, sub_82618);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_823F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_8244C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_90D10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_824A0()
{
  if (!qword_C8508)
  {
    sub_3D20(&qword_C4828);
    sub_3D20(&qword_C8460);
    sub_3D20(&qword_C8458);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_C8508);
    }
  }
}

void sub_82550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_8259C()
{
  result = qword_C8518;
  if (!qword_C8518)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_C8518);
  }

  return result;
}

void sub_825CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_90D10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_82618()
{
  if (!qword_C8538)
  {
    sub_8EFE0();
    sub_828BC(&unk_C8540, &type metadata accessor for URL);
    v0 = sub_90930();
    if (!v1)
    {
      atomic_store(v0, &qword_C8538);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsTab(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_82810()
{
  result = qword_C8570;
  if (!qword_C8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8570);
  }

  return result;
}

unint64_t sub_82868()
{
  result = qword_C8578;
  if (!qword_C8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8578);
  }

  return result;
}

uint64_t sub_828BC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_82B40(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_8F550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_8F540();
  (*(v6 + 8))(v8, v5);
  v10 = sub_90550();

  v11 = [v9 integerForKey:v10];

  return v11;
}

void sub_82C88(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_8F550();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a4, v7);
  v11 = a1;
  sub_8F540();
  (*(v8 + 8))(v10, v7);
  v12 = sub_90550();

  [v11 setInteger:a3 forKey:v12];
}

id sub_82DD8(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_8F550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_8F540();
  (*(v6 + 8))(v8, v5);
  v10 = sub_90550();

  v11 = [v9 BOOLForKey:v10];

  return v11;
}

void sub_82F80(char a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v18 = a3;
  v19 = a4;
  v6 = v4;
  v8 = sub_8F550();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 104);
  v12(v11, *a2, v8);
  sub_8F540();
  v13 = *(v9 + 8);
  v13(v11, v8);
  v14 = sub_90550();
  v15 = v6;

  [v6 setBool:a1 & 1 forKey:v14];

  if ((a1 & 1) == 0)
  {
    v12(v11, *v18, v8);
    sub_8F540();
    v13(v11, v8);
    v16 = sub_90550();

    [v15 removeObjectForKey:v16];

    v12(v11, *v19, v8);
    sub_8F540();
    v13(v11, v8);
    v17 = sub_90550();

    [v15 removeObjectForKey:v17];
  }
}

uint64_t sub_833C8(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 5:
      return 2;
    case 15:
      return 3;
  }

  return 5;
}

uint64_t sub_83440(uint64_t result)
{
  if (result > 4)
  {
    if (result == 15)
    {
      return 3;
    }

    if (result == 5)
    {
      return 2;
    }

    return 4;
  }

  if (result > 1)
  {
    return 4;
  }

  return result;
}

uint64_t sub_83480()
{
  v0 = sub_8F550();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_839E0();
  v4 = sub_90A90();
  v5 = sub_90550();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v19 = 0u;
    v20 = 0u;
    sub_26E74(&v19);
    (*(v1 + 104))(v3, enum case for SettingsKey.lockJournalState(_:), v0);
    sub_8F540();
    (*(v1 + 8))(v3, v0);
    v11 = sub_90550();

    v12 = [v4 objectForKey:v11];

    if (v12)
    {
      sub_90D80();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (!*(&v18 + 1))
    {

      sub_26E74(&v19);
      return 4;
    }

    if (swift_dynamicCast())
    {
      v13 = sub_833C8(v16);

      result = v13;
      if (v13 != 5)
      {
        return result;
      }

      return 4;
    }

LABEL_12:

    return 4;
  }

  sub_90D80();
  swift_unknownObjectRelease();
  sub_C8E4(&v17, &v19);
  sub_26E74(&v19);
  v7 = sub_90550();
  v8 = [v4 BOOLForKey:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = sub_90550();
  v10 = [v4 objectForKey:v9];

  if (v10)
  {
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      switch(v16)
      {
        case 0:
          return 0;
        case 15:
          return 3;
        case 5:
          return 2;
      }
    }
  }

  else
  {
    sub_26E74(&v19);
  }

  return 1;
}

void sub_83810(char a1)
{
  v2 = sub_8F550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_839E0();
  v6 = sub_90A90();
  v7 = sub_90550();
  [v6 removeObjectForKey:v7];

  v8 = sub_90550();
  [v6 removeObjectForKey:v8];

  v9 = qword_9CD68[a1];
  (*(v3 + 104))(v5, enum case for SettingsKey.lockJournalState(_:), v2);
  sub_8F540();
  (*(v3 + 8))(v5, v2);
  v10 = sub_90550();

  [v6 setInteger:v9 forKey:v10];
}

unint64_t sub_839E0()
{
  result = qword_C8648;
  if (!qword_C8648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C8648);
  }

  return result;
}

void sub_83A2C()
{
  v1 = v0;
  v2 = sub_8F550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = 0;
  if (v7 >> 60 != 15)
  {
    isa = sub_8F020().super.isa;
  }

  v8 = *(v3 + 104);
  v8(v5, enum case for SettingsKey.journalingScheduleData(_:), v2);
  sub_8F540();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_90550();

  [v1 setObject:isa forKey:v10];
  swift_unknownObjectRelease();

  v8(v5, enum case for SettingsKey.journalingScheduleDataLegacy(_:), v2);
  sub_8F540();
  v9(v5, v2);
  v11 = sub_90550();

  [v1 removeObjectForKey:v11];
}

void sub_83C08(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    sub_17DF4(a1, v10, &qword_C4C60);
    v13 = sub_8EFE0();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      sub_8EF90(v15);
      v16 = v17;
      (*(v14 + 8))(v10, v13);
    }

    v18 = sub_83DA0(a2, a3, a4 & 1);
    [v12 openURL:v16 configuration:v18 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_83DA0(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v6 setSensitive:1];
  v7 = sub_84A40(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 _currentOpenApplicationEndpoint];
  }

  else
  {
    v9 = 0;
  }

  [v6 setTargetConnectionEndpoint:v9];

  v10 = sub_90590();
  v12 = v11;
  v18 = &type metadata for Bool;
  LOBYTE(v17) = a3 & 1;
  sub_C8E4(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_860CC(v16, v10, v12, isUniquelyReferenced_nonNull_native);

  isa = sub_90440().super.isa;

  [v6 setFrontBoardOptions:isa];

  return v6;
}

uint64_t sub_83F14@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_8F220();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_8F200();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8F1E0();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_8F1F0();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8F450();
  __chkstk_darwin(v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_8F260();
  v63 = *(v65 - 8);
  v10 = __chkstk_darwin(v65);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v59 = &v56 - v19;
  v72 = sub_8F2F0();
  v20 = *(v72 - 8);
  v21 = __chkstk_darwin(v72);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v26 = sub_3A90(&qword_C4C60);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v56 - v30;
  v32 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_84984(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8 && EnumCaseMultiPayload == 9)
    {
      v49 = [objc_allocWithZone(HealthAppAuthorizationManagementLinkBuilder) init];
      sub_8FDE0();
      v50 = sub_90550();

      v51 = [v49 URLForAuthorizationManagementFromLocation:2 bundleIdentifier:v50];

      if (v51)
      {
        sub_8EFA0();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v55 = sub_8EFE0();
      (*(*(v55 - 8) + 56))(v31, v52, 1, v55);
      v54 = v31;
      return sub_1E448(v54, v74);
    }

    return sub_8EFC0();
  }

  if (EnumCaseMultiPayload > 2)
  {
    return sub_8EFC0();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v20;
      v37 = v23;
      (*(v20 + 32))(v23, v34, v72);
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_90EA0(24);

      v76 = 0xD000000000000016;
      v77 = 0x80000000000960F0;
      sub_8F440();
      (*(v56 + 104))(v60, enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v57);
      (*(v61 + 104))(v64, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v62);
      (*(v66 + 104))(v68, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v67);
      (*(v70 + 104))(v69, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v71);
      sub_8F210();
      sub_8F240();
      v38 = *(v63 + 8);
      v39 = v65;
      v38(v12, v65);
      sub_8F250();
      v38(v15, v39);
      v40 = v59;
      sub_8F230();
      v38(v18, v39);
      sub_849E8();
      sub_8F2D0();
      v38(v40, v39);
      sub_90640(v75);

      sub_8EFC0();

      return (*(v36 + 8))(v37, v72);
    }

    return sub_8EFC0();
  }

  v42 = v20;
  v43 = v72;
  (*(v20 + 32))(v25, v34, v72);
  v44 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
  v45 = [objc_opt_self() stateOfMindType];
  isa = sub_8F270().super.isa;
  v47 = [v44 URLForDataTypeDetailWithObjectType:v45 date:isa];

  if (v47)
  {
    sub_8EFA0();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v42 + 8))(v25, v43);
  v53 = sub_8EFE0();
  (*(*(v53 - 8) + 56))(v29, v48, 1, v53);
  v54 = v29;
  return sub_1E448(v54, v74);
}

uint64_t type metadata accessor for OpenSensitiveURLAction.Destination()
{
  result = qword_C86F8;
  if (!qword_C86F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_84984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenSensitiveURLAction.Destination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_849E8()
{
  result = qword_C8650;
  if (!qword_C8650)
  {
    sub_8F260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8650);
  }

  return result;
}

id sub_84A40(void *a1, id a2)
{
  v3 = a1;
  if (!a1)
  {
    if (a2)
    {
      if ([a2 sender])
      {
        sub_90D80();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v11 = v9;
      v12 = v10;
      if (*(&v10 + 1))
      {
        sub_17DF4(&v11, &v9, &qword_C5418);
        sub_2561C(0, &qword_C8660);
        if (swift_dynamicCast())
        {
          v3 = v8;
LABEL_18:
          sub_7FA4(&v9);
          sub_26E74(&v11);
          goto LABEL_19;
        }

        sub_2561C(0, &qword_C8668);
        if (swift_dynamicCast())
        {
          v3 = [v8 windowScene];

          goto LABEL_18;
        }

        sub_2561C(0, &qword_C8670);
        if (swift_dynamicCast())
        {
          v4 = [v8 window];
          if (v4)
          {
            v5 = v4;
            v3 = [v4 windowScene];
          }

          else
          {

            v3 = 0;
          }

          goto LABEL_18;
        }

        sub_7FA4(&v9);
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_26E74(&v11);
    v3 = 0;
  }

LABEL_19:
  v6 = a1;
  return v3;
}

uint64_t sub_84C48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3A90(&qword_C8680);
  result = sub_90FC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      sub_91180();
      v22 = *&v32;
      if (*&v32 == 0.0)
      {
        v22 = 0.0;
      }

      sub_911B0(*&v22);
      v23 = *(&v32 + 1);
      if (*(&v32 + 1) == 0.0)
      {
        v23 = 0.0;
      }

      sub_911B0(*&v23);
      result = sub_911D0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_84F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3A90(&qword_C8678);
  v30 = a2;
  result = sub_90FC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_91180();
      sub_90630();

      result = sub_911D0();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_85284(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3A90(&qword_C82D0);
  v31 = a2;
  result = sub_90FC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_91180();
      sub_91190(v20);
      result = sub_911D0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_85524(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_3A90(a3);
  v36 = a2;
  result = sub_90FC0();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_C8E4(v23, v37);
      }

      else
      {
        sub_7F40(v23, v37);
        v24 = v22;
      }

      sub_90590();
      sub_91180();
      sub_90630();
      v25 = sub_911D0();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_C8E4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_857EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3A90(&qword_C8658);
  v33 = a2;
  result = sub_90FC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_C8E4(v24, v34);
      }

      else
      {
        sub_7F40(v24, v34);
      }

      sub_91180();
      sub_90630();
      result = sub_911D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_C8E4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_85AA4(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_79CF0(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_86334();
    result = v19;
    goto LABEL_8;
  }

  sub_84C48(v16, a2 & 1);
  result = sub_79CF0(a3, a4);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CGSize(0);
  sub_91120();
  __break(1u);
  return _objc_release_x1();
}

unint64_t sub_85C00(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_79D64(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_84F00(v14, a3 & 1);
      result = sub_79D64(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_91120();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_86494();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_85D4C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_79DA8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_865F0();
    result = v17;
    goto LABEL_8;
  }

  sub_85284(v14, a3 & 1);
  result = sub_79DA8(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_91120();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_85F0C(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v11 = v7;
  v14 = *v7;
  v15 = a4(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_86774(a5);
      v15 = v23;
      goto LABEL_8;
    }

    sub_85524(v20, a3 & 1, a5);
    v15 = a4(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_91120();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v11;
  if (v21)
  {
    v26 = (v25[7] + 32 * v15);
    sub_7FA4(v26);

    return sub_C8E4(a1, v26);
  }

  else
  {
    sub_86260(v15, a2, a1, v25);

    return a2;
  }
}

_OWORD *sub_860CC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_79EEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_868E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_857EC(v16, a4 & 1);
    v11 = sub_79EEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_91120();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_7FA4(v22);

    return sub_C8E4(a1, v22);
  }

  else
  {
    sub_862C8(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_8621C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_86260(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_C8E4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_862C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_C8E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_86334()
{
  v1 = v0;
  sub_3A90(&qword_C8680);
  v2 = *v0;
  v3 = sub_90FB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_86494()
{
  v1 = v0;
  sub_3A90(&qword_C8678);
  v2 = *v0;
  v3 = sub_90FB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_865F0()
{
  v1 = v0;
  sub_3A90(&qword_C82D0);
  v2 = *v0;
  v3 = sub_90FB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_86774(uint64_t *a1)
{
  v2 = v1;
  sub_3A90(a1);
  v3 = *v1;
  v4 = sub_90FB0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_7F40(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_C8E4(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_868E4()
{
  v1 = v0;
  sub_3A90(&qword_C8658);
  v2 = *v0;
  v3 = sub_90FB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_7F40(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_C8E4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_86A88()
{
  sub_86AE8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_86AE8()
{
  if (!qword_C8708)
  {
    v0 = sub_8F2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_C8708);
    }
  }
}

uint64_t sub_86C88()
{
  v0 = sub_8F390();
  __chkstk_darwin(v0 - 8);
  v1 = sub_90540();
  __chkstk_darwin(v1 - 8);
  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v2 = qword_D07B0;
  sub_8F380();
  result = sub_905B0();
  qword_D07B8 = result;
  unk_D07C0 = v4;
  return result;
}

void sub_86F1C()
{
  v1 = v0;
  v2 = sub_8F390();
  __chkstk_darwin(v2 - 8);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v74 = _swiftEmptyArrayStorage;
  v4 = &stru_BB000;
  if (sub_8FDF0())
  {
    v5 = objc_opt_self();
    v6 = sub_90550();
    v7 = [v5 groupSpecifierWithID:v6];

    if (!v7)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v71 = v1;
    sub_904E0();
    if (qword_C3AA0 != -1)
    {
      swift_once();
    }

    v8 = qword_D07B0;
    sub_8F380();
    v9 = v8;
    sub_905B0();
    v10 = sub_90550();

    [v7 setName:v10];

    sub_904E0();
    sub_8F380();
    sub_905B0();
    v11 = sub_90550();

    v4 = &stru_BB000;
    [v7 setProperty:v11 forKey:PSHeaderDetailTextGroupKey];

    type metadata accessor for PlacardHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v13)
    {
      sub_90590();
      v13 = sub_90550();
    }

    [v7 setProperty:v13 forKey:PSHeaderCellClassGroupKey];

    v14 = v7;
    sub_90720();
    if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_90770();
    }

    sub_907A0();
    v15 = v71;
    v16 = &unk_D0000;
  }

  else
  {
    v17 = [objc_allocWithZone(LAContext) init];
    v18 = [v17 canEvaluatePolicy:2 error:0];

    v15 = v1;
    v16 = &unk_D0000;
    if (v18)
    {
      goto LABEL_20;
    }

    v19 = objc_opt_self();
    v20 = sub_90550();
    v21 = [v19 groupSpecifierWithID:v20];

    if (!v21)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_904E0();
    if (qword_C3AA0 != -1)
    {
      swift_once();
    }

    v22 = qword_D07B0;
    sub_8F380();
    v23 = v22;
    sub_905B0();
    v24 = sub_90550();

    [v21 setName:v24];

    sub_904E0();
    sub_8F380();
    sub_905B0();
    v25 = sub_90550();

    v4 = &stru_BB000;
    [v21 setProperty:v25 forKey:PSHeaderDetailTextGroupKey];

    type metadata accessor for PlacardHeaderView();
    v26 = swift_getObjCClassFromMetadata();
    v27 = NSStringFromClass(v26);
    if (!v27)
    {
      sub_90590();
      v27 = sub_90550();
    }

    [v21 setProperty:v27 forKey:PSHeaderCellClassGroupKey];

    v14 = v21;
    sub_90720();
    if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_90770();
    }

    sub_907A0();
  }

LABEL_20:
  v28 = objc_opt_self();
  v29 = sub_90550();
  v30 = [v28 groupSpecifierWithID:v29];

  if (!v30)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v69 = v16[246];
  sub_8F380();
  sub_905B0();
  v31 = sub_90550();

  [v30 v4[50].name];

  v32 = v30;
  sub_90720();
  if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_90770();
  }

  v70 = v32;
  sub_907A0();
  if (qword_C3AA8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for LockJournalSettings();
  v73 = v33;
  v72[0] = v15;
  v71 = v15;
  v34 = sub_90550();
  if (v33)
  {
    v35 = sub_FCAC(v72, v33);
    v36 = *(v33 - 8);
    __chkstk_darwin(v35);
    v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    v39 = sub_910D0();
    (*(v36 + 8))(v38, v33);
    sub_7FA4(v72);
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_allocWithZone(PSSpecifier) initWithName:v34 target:v39 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:0 cell:6 edit:0];

  swift_unknownObjectRelease();
  if (!v40)
  {
    goto LABEL_51;
  }

  v41 = sub_90550();
  [v40 setIdentifier:v41];

  v42 = [objc_allocWithZone(LAContext) init];
  v43 = [v42 canEvaluatePolicy:2 error:0];

  if (v43)
  {
    sub_8FDF0();
  }

  isa = sub_907E0().super.super.isa;
  v68 = PSEnabledKey;
  [v40 setProperty:isa forKey:?];

  v45 = v40;
  sub_90720();
  if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_90770();
  }

  sub_907A0();
  v46 = v74;
  v47 = [objc_allocWithZone(LAContext) init];
  v48 = [v47 canEvaluatePolicy:2 error:0];

  if (!v48 || (sub_8FDF0() & 1) != 0 || sub_83480() == 4)
  {
    goto LABEL_49;
  }

  sub_904E0();
  v49 = v69;
  sub_8F380();
  sub_905B0();
  v73 = v33;
  v72[0] = v71;
  v50 = v71;
  v51 = sub_90550();

  v52 = v73;
  if (v73)
  {
    v53 = sub_FCAC(v72, v73);
    v54 = *(v52 - 8);
    __chkstk_darwin(v53);
    v56 = &v67 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v56);
    v57 = sub_910D0();
    (*(v54 + 8))(v56, v52);
    sub_7FA4(v72);
  }

  else
  {
    v57 = 0;
  }

  sub_2561C(0, &qword_C8768);
  v58 = [objc_allocWithZone(PSSpecifier) initWithName:v51 target:v57 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  swift_unknownObjectRelease();
  if (v58)
  {
    v59 = sub_90550();
    [v58 setIdentifier:v59];

    sub_87E88(&off_B3B50);
    v60 = sub_90730().super.isa;

    [v58 setValues:v60];

    if (qword_C3AB0 != -1)
    {
      swift_once();
    }

    sub_8817C(qword_C8738);
    v61 = sub_90440().super.isa;

    [v58 setTitleDictionary:v61];

    v62 = [objc_allocWithZone(LAContext) init];
    LODWORD(v61) = [v62 canEvaluatePolicy:2 error:0];

    if (v61)
    {
      sub_8FDF0();
    }

    v63 = v68;
    v64 = sub_907E0().super.super.isa;
    [v58 setProperty:v64 forKey:v63];

    v65 = v58;
    sub_90720();
    if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_90770();
    }

    sub_907A0();

    v46 = v74;
LABEL_49:
    sub_87F80(v46);
    v66 = sub_90730().super.isa;

    [v71 setSpecifiers:v66];

    sub_87F80(v46);

    return;
  }

LABEL_54:
  __break(1u);
}

double *sub_87E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1CAE8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_1CAE8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 2) = v6 + 1;
      sub_C8E4(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

double *sub_87F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_90FA0();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1CAE8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_90EC0();
        sub_2561C(0, &unk_C8850);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_1CAE8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v7 + 1;
        sub_C8E4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2561C(0, &unk_C8850);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          sub_1CAE8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v11 + 1;
        sub_C8E4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_8817C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3A90(&qword_C4350);
    v2 = sub_90FD0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v15 = *v13;
    v14 = v13[1];

    swift_dynamicCast();
    *&v31[0] = v15;
    *(&v31[0] + 1) = v14;
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_C8E4(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_C8E4(v30, v31);
    result = sub_90E30(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_C8E4(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_884A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_90590();
    v7 = v6;

    result = sub_894E4(v5, v7);
    if (result == 4)
    {
LABEL_6:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (result != 3)
    {
      if (result == 2)
      {
        result = sub_83480();
        *(a2 + 24) = &type metadata for Bool;
        *a2 = result != 4;
        return result;
      }

      goto LABEL_6;
    }

    result = sub_83480();
    if (result <= 1u)
    {
      if (result)
      {
        v8 = 1;
      }

      else
      {
        v8 = result;
      }
    }

    else if (result == 2)
    {
      v8 = 5;
    }

    else
    {
      if (result != 3)
      {
        *(a2 + 24) = &type metadata for Int;
        v8 = 1;
LABEL_17:
        *a2 = v8;
        return result;
      }

      v8 = 15;
    }

    *(a2 + 24) = &type metadata for Int;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_88708(uint64_t a1, void *a2)
{
  v5 = sub_8F550();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  result = [a2 identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_90590();
  v15 = v14;

  result = sub_894E4(v13, v15);
  v16 = result;
  if (result <= 1u)
  {
    goto LABEL_5;
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

LABEL_5:
    v17 = sub_910F0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_8:
  sub_89530(a1, v37);
  if (v38)
  {
    if (swift_dynamicCast())
    {
      v18 = v36;
      if (v36)
      {
        v19 = 1;
      }

      else
      {
        v19 = 4;
      }

      sub_83810(v19);
      [v2 reloadSpecifiers];
      v20 = sub_90880();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
      sub_90860();
      v21 = sub_90850();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = &protocol witness table for MainActor;
      *(v22 + 32) = v18;
      sub_8968C(0, 0, v10, &unk_9CE40, v22);
    }
  }

  else
  {
    sub_26E74(v37);
  }

LABEL_15:
  if (v16 <= 2u)
  {
    v23 = sub_910F0();

    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  sub_89530(a1, v37);
  if (!v38)
  {
    return sub_26E74(v37);
  }

  result = swift_dynamicCast();
  if (result)
  {
    result = sub_83440(v36);
    if (result != 4)
    {
      v24 = result;
      sub_2561C(0, &qword_C8648);
      v25 = v2;
      v26 = sub_90A90();
      v27 = sub_90550();
      [v26 removeObjectForKey:v27];

      v28 = sub_90550();
      [v26 removeObjectForKey:v28];

      v29 = qword_9CE68[v24];
      v31 = v34;
      v30 = v35;
      (*(v34 + 104))(v7, enum case for SettingsKey.lockJournalState(_:), v35);
      sub_8F540();
      (*(v31 + 8))(v7, v30);
      v32 = sub_90550();

      [v26 setInteger:v29 forKey:v32];

      return [v25 reloadSpecifiers];
    }
  }

  return result;
}

uint64_t sub_88C58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  sub_90860();
  *(v4 + 16) = sub_90850();
  v6 = sub_907F0();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_88CF0, v6, v5);
}

uint64_t sub_88CF0()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_88DB4;
  v3 = *(v0 + 48);

  return sub_772C8(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_88DB4()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_88EF8, v3, v2);
}

uint64_t sub_88EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_890FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockJournalSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_89158()
{
  v0 = sub_8F390();
  __chkstk_darwin(v0 - 8);
  v1 = sub_90540();
  __chkstk_darwin(v1 - 8);
  sub_3A90(&qword_C8770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9CE10;
  *(inited + 32) = 0;
  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v3 = qword_D07B0;
  sub_8F380();
  *(inited + 40) = sub_905B0();
  *(inited + 48) = v4;
  *(inited + 56) = 1;
  sub_904E0();
  v5 = qword_D07B0;
  sub_8F380();
  *(inited + 64) = sub_905B0();
  *(inited + 72) = v6;
  *(inited + 80) = 5;
  sub_904E0();
  v7 = qword_D07B0;
  sub_8F380();
  *(inited + 88) = sub_905B0();
  *(inited + 96) = v8;
  *(inited + 104) = 15;
  sub_904E0();
  v9 = qword_D07B0;
  sub_8F380();
  *(inited + 112) = sub_905B0();
  *(inited + 120) = v10;
  v11 = sub_7B168(inited);
  swift_setDeallocating();
  sub_3A90(&qword_C8778);
  result = swift_arrayDestroy();
  qword_C8738 = v11;
  return result;
}

uint64_t sub_894E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3B90;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_89530(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C5418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_895A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_895D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_3BC8;

  return sub_88C58(a1, v4, v5, v6);
}

uint64_t sub_8968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_17DF4(a3, v25 - v10, &qword_C8820);
  v12 = sub_90880();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_8EF0(v11, &qword_C8820);
  }

  else
  {
    sub_90870();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_907F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_90600() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_8EF0(a3, &qword_C8820);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8EF0(a3, &qword_C8820);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_8998C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_FCAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_3A90(&unk_C8830);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_89A58()
{
  v1 = OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController____lazy_storage___appPolicy;
  v2 = *(v0 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController____lazy_storage___appPolicy);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    sub_8FDE0();
    v4 = objc_allocWithZone(PSSystemPolicyForApp);
    v5 = sub_90550();

    v3 = [v4 initWithBundleIdentifier:v5];

    if (v3)
    {
      [v3 setDelegate:v0];
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_8EA98(v6);
  }

  sub_8EAA8(v2);
  return v3;
}

void sub_89B2C()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v2 = sub_90540();
  __chkstk_darwin(v2 - 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for GeneralSettingsController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v3 = qword_D07B0;
  sub_8F380();
  sub_905C0();
  v4 = sub_90550();

  [v0 setTitle:v4];
}

uint64_t sub_89D84(int a1)
{
  v2 = v1;
  LODWORD(v21) = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_8F390();
  __chkstk_darwin(v6 - 8);
  v7 = sub_8EEA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_90540();
  __chkstk_darwin(v11 - 8);
  v12 = sub_8EEB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GeneralSettingsController();
  v23.receiver = v2;
  v23.super_class = v16;
  objc_msgSendSuper2(&v23, "viewDidAppear:", v21 & 1, v2);
  v21 = sub_8FDE0();
  sub_904E0();
  *v10 = ObjectType;
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v7);
  sub_8F380();
  sub_8EEC0();
  sub_8EFC0();
  v17 = sub_8EFE0();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v5, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_90AC0();

    (*(v13 + 8))(v15, v12);
    return (*(v18 + 8))(v5, v17);
  }

  return result;
}

void sub_8A180()
{
  v198 = sub_8F4D0();
  v1 = *(v198 - 1);
  __chkstk_darwin(v198);
  v197 = &v186 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_8F390();
  __chkstk_darwin(v3 - 8);
  v200 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_90540();
  __chkstk_darwin(v5 - 8);
  v7 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _swiftEmptyArrayStorage;
  v208 = _swiftEmptyArrayStorage;
  *&v202 = v0;
  v9 = sub_89A58();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 specifiers];

    if (v11)
    {
      v8 = sub_90740();
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }
  }

  v195 = v1;
  sub_55B2C(v8);
  v12 = objc_opt_self();
  v13 = sub_90550();
  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v14 = qword_D07B0;
  v15 = qword_D07B0;
  sub_8F380();
  v203 = v15;
  sub_905C0();
  v16 = sub_90550();

  v199 = v12;
  v17 = [v12 groupSpecifierWithID:v13 name:v16];

  if (!v17)
  {
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
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return;
  }

  sub_904E0();
  sub_8F380();
  sub_905B0();
  v18 = sub_90550();

  v196 = PSFooterTextGroupKey;
  [v17 setProperty:v18 forKey:?];

  v204 = sub_2561C(0, &unk_C8850);
  v207 = v204;
  *&v206 = v17;
  v19 = v208;
  v192 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_17C8C(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_17C8C((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v201 = v19;
  sub_C8E4(&v206, &v19[4 * v21 + 4]);
  v22 = [v202 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  v205 = v14;
  if (v23 && (v24 = v7, v25 = v195, v26 = v195[13], v27 = v197, v28 = v198, v26(v197, enum case for JournalFeatureFlags.suggestionsAPI(_:), v198), v29 = sub_8F4C0(), v30 = v25, v7 = v24, (v30[1])(v27, v28), (v29 & 1) != 0))
  {
    v31 = v195;
  }

  else
  {
    sub_904E0();
    v32 = v203;
    sub_8F380();
    sub_905B0();
    v207 = type metadata accessor for GeneralSettingsController();
    *&v206 = v202;
    v33 = v202;
    v34 = sub_90550();

    v35 = v207;
    if (v207)
    {
      v36 = sub_FCAC(&v206, v207);
      v37 = *(v35 - 1);
      __chkstk_darwin(v36);
      v39 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v39);
      v40 = sub_910D0();
      (*(v37 + 8))(v39, v35);
      sub_7FA4(&v206);
    }

    else
    {
      v40 = 0;
    }

    v41 = [objc_allocWithZone(PSSpecifier) initWithName:v34 target:v40 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:0 cell:6 edit:0];

    swift_unknownObjectRelease();
    v42 = v201;
    if (!v41)
    {
      goto LABEL_87;
    }

    v43 = sub_90550();
    [v41 setIdentifier:v43];

    isa = sub_907E0().super.super.isa;
    [v41 setProperty:isa forKey:PSAllowMultilineTitleKey];

    v207 = v204;
    *&v206 = v41;
    v46 = *(v42 + 2);
    v45 = *(v42 + 3);
    v24 = v7;
    if (v46 >= v45 >> 1)
    {
      v42 = sub_17C8C((v45 > 1), v46 + 1, 1, v42);
    }

    *(v42 + 2) = v46 + 1;
    v201 = v42;
    sub_C8E4(&v206, &v42[4 * v46 + 4]);
    v31 = v195;
    v26 = v195[13];
  }

  v48 = v197;
  v47 = v198;
  v26(v197, enum case for JournalFeatureFlags.location(_:), v198);
  v49 = sub_8F4C0();
  (v31[1])(v48, v47);
  if (v49)
  {
    v50 = v24;
    sub_904E0();
    v51 = v203;
    sub_8F380();
    sub_905B0();
    v207 = type metadata accessor for GeneralSettingsController();
    *&v206 = v202;
    v52 = v202;
    v53 = sub_90550();

    v54 = v207;
    if (v207)
    {
      v55 = sub_FCAC(&v206, v207);
      v56 = *(v54 - 1);
      __chkstk_darwin(v55);
      v58 = &v186 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v58);
      v59 = sub_910D0();
      (*(v56 + 8))(v58, v54);
      sub_7FA4(&v206);
    }

    else
    {
      v59 = 0;
    }

    v60 = v201;
    v61 = [objc_allocWithZone(PSSpecifier) initWithName:v53 target:v59 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:0 cell:6 edit:0];

    swift_unknownObjectRelease();
    if (!v61)
    {
      goto LABEL_88;
    }

    v62 = sub_90550();
    [v61 setIdentifier:v62];

    v63 = sub_907E0().super.super.isa;
    [v61 setProperty:v63 forKey:PSAllowMultilineTitleKey];

    v207 = v204;
    *&v206 = v61;
    v65 = *(v60 + 2);
    v64 = *(v60 + 3);
    if (v65 >= v64 >> 1)
    {
      v60 = sub_17C8C((v64 > 1), v65 + 1, 1, v60);
    }

    *(v60 + 2) = v65 + 1;
    sub_C8E4(&v206, &v60[4 * v65 + 4]);
  }

  else
  {
    v50 = v24;
    v60 = v201;
  }

  sub_904E0();
  v66 = v203;
  sub_8F380();
  v195 = v66;
  sub_905B0();
  v203 = type metadata accessor for GeneralSettingsController();
  v207 = v203;
  *&v206 = v202;
  v67 = v202;
  v68 = sub_90550();

  v69 = v207;
  v194 = v67;
  if (v207)
  {
    v70 = sub_FCAC(&v206, v207);
    v71 = *(v69 - 1);
    __chkstk_darwin(v70);
    v73 = &v186 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v73);
    v74 = sub_910D0();
    (*(v71 + 8))(v73, v69);
    sub_7FA4(&v206);
  }

  else
  {
    v74 = 0;
  }

  v201 = v60;
  sub_2561C(0, &qword_C8768);
  v75 = objc_allocWithZone(PSSpecifier);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v197 = "specifierValueFor:";
  v198 = "setSpecifierValue:for:";
  v77 = [v75 initWithName:v68 target:v74 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:ObjCClassFromMetadata cell:2 edit:0];

  swift_unknownObjectRelease();
  if (!v77)
  {
    goto LABEL_78;
  }

  v78 = sub_90550();
  [v77 setIdentifier:v78];

  sub_3A90(&unk_C8860);
  v79 = swift_allocObject();
  v202 = xmmword_98A20;
  *(v79 + 16) = xmmword_98A20;
  *(v79 + 32) = 0;
  *(v79 + 56) = &type metadata for Int;
  *(v79 + 64) = 1;
  *(v79 + 120) = &type metadata for Int;
  *(v79 + 88) = &type metadata for Int;
  *(v79 + 96) = 2;
  v80 = sub_90730().super.isa;

  [v77 setValues:v80];

  sub_3A90(&qword_C4358);
  inited = swift_initStackObject();
  *(inited + 16) = v202;
  *&v206 = 0;
  sub_90E50();
  sub_904E0();
  sub_8F380();
  v82 = v195;
  v83 = sub_905B0();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v83;
  *(inited + 80) = v84;
  *&v206 = 1;
  sub_90E50();
  sub_904E0();
  sub_8F380();
  v85 = v82;
  v86 = sub_905B0();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v86;
  *(inited + 152) = v87;
  *&v206 = 2;
  sub_90E50();
  sub_904E0();
  sub_8F380();
  v193 = v85;
  v195 = v50;
  v88 = sub_905B0();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v88;
  *(inited + 224) = v89;
  sub_7AC28(inited);
  swift_setDeallocating();
  sub_3A90(&qword_C8870);
  swift_arrayDestroy();
  v90 = sub_90440().super.isa;

  [v77 setTitleDictionary:v90];

  v91 = sub_907E0().super.super.isa;
  *&v202 = PSAllowMultilineTitleKey;
  [v77 setProperty:v91 forKey:?];

  v207 = v204;
  *&v206 = v77;
  v92 = v201;
  v93 = *(v201 + 2);
  v94 = *(v201 + 3);
  v191 = v77;
  if (v93 >= v94 >> 1)
  {
    v92 = sub_17C8C((v94 > 1), v93 + 1, 1, v92);
  }

  *(v92 + 2) = v93 + 1;
  sub_C8E4(&v206, &v92[4 * v93 + 4]);
  sub_904E0();
  sub_8F380();
  v201 = v193;
  sub_905B0();
  v207 = v203;
  *&v206 = v194;
  v194 = v194;
  v95 = sub_90550();

  v96 = v207;
  if (v207)
  {
    v97 = sub_FCAC(&v206, v207);
    v98 = *(v96 - 1);
    __chkstk_darwin(v97);
    v100 = &v186 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v100);
    v101 = sub_910D0();
    (*(v98 + 8))(v100, v96);
    sub_7FA4(&v206);
  }

  else
  {
    v101 = 0;
  }

  v102 = objc_allocWithZone(PSSpecifier);
  v103 = [v102 initWithName:v95 target:v101 set:v198 get:v197 detail:0 cell:6 edit:0];

  swift_unknownObjectRelease();
  if (!v103)
  {
    goto LABEL_79;
  }

  v104 = sub_90550();
  [v103 setIdentifier:v104];

  v105 = sub_907E0().super.super.isa;
  [v103 setProperty:v105 forKey:v202];

  v207 = v204;
  *&v206 = v103;
  v106 = *(v92 + 2);
  v107 = *(v92 + 3);
  v190 = v103;
  if (v106 >= v107 >> 1)
  {
    v92 = sub_17C8C((v107 > 1), v106 + 1, 1, v92);
  }

  *(v92 + 2) = v106 + 1;
  sub_C8E4(&v206, &v92[4 * v106 + 4]);
  v108 = sub_90550();
  sub_904E0();
  sub_8F380();
  v109 = v201;
  sub_905C0();
  v110 = sub_90550();

  v111 = [v199 groupSpecifierWithID:v108 name:v110];

  if (!v111)
  {
    goto LABEL_80;
  }

  sub_904E0();
  sub_8F380();
  v112 = v109;
  sub_905B0();
  v113 = sub_90550();

  [v111 setProperty:v113 forKey:v196];

  v207 = v204;
  *&v206 = v111;
  v114 = *(v92 + 2);
  v115 = *(v92 + 3);
  v188 = v111;
  if (v114 >= v115 >> 1)
  {
    v92 = sub_17C8C((v115 > 1), v114 + 1, 1, v92);
  }

  *(v92 + 2) = v114 + 1;
  sub_C8E4(&v206, &v92[4 * v114 + 4]);
  sub_904E0();
  sub_8F380();
  v201 = v112;
  sub_905B0();
  v207 = v203;
  *&v206 = v194;
  v194 = v194;
  v116 = sub_90550();

  v117 = v207;
  if (v207)
  {
    v118 = sub_FCAC(&v206, v207);
    v119 = *(v117 - 1);
    __chkstk_darwin(v118);
    v121 = &v186 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v119 + 16))(v121);
    v122 = sub_910D0();
    (*(v119 + 8))(v121, v117);
    sub_7FA4(&v206);
  }

  else
  {
    v122 = 0;
  }

  v123 = [objc_allocWithZone(PSSpecifier) initWithName:v116 target:v122 set:0 get:0 detail:0 cell:2 edit:0];

  swift_unknownObjectRelease();
  if (!v123)
  {
    goto LABEL_81;
  }

  v124 = sub_90550();
  [v123 setIdentifier:v124];

  v189 = "onSpecifierButtonSelected:";
  [v123 setControllerLoadAction:?];
  v125 = sub_907E0().super.super.isa;
  [v123 setProperty:v125 forKey:v202];

  v207 = v204;
  *&v206 = v123;
  v126 = *(v92 + 2);
  v127 = *(v92 + 3);
  v187 = v123;
  if (v126 >= v127 >> 1)
  {
    v92 = sub_17C8C((v127 > 1), v126 + 1, 1, v92);
  }

  *(v92 + 2) = v126 + 1;
  sub_C8E4(&v206, &v92[4 * v126 + 4]);
  sub_904E0();
  sub_8F380();
  v193 = v201;
  sub_905B0();
  v207 = v203;
  *&v206 = v194;
  v201 = v194;
  v128 = sub_90550();

  v129 = v207;
  if (v207)
  {
    v130 = sub_FCAC(&v206, v207);
    v131 = *(v129 - 1);
    __chkstk_darwin(v130);
    v133 = &v186 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v131 + 16))(v133);
    v134 = sub_910D0();
    (*(v131 + 8))(v133, v129);
    sub_7FA4(&v206);
  }

  else
  {
    v134 = 0;
  }

  v135 = v199;
  v136 = objc_allocWithZone(PSSpecifier);
  v137 = [v136 initWithName:v128 target:v134 set:v198 get:v197 detail:0 cell:6 edit:0];

  swift_unknownObjectRelease();
  if (!v137)
  {
    goto LABEL_82;
  }

  v138 = sub_90550();
  [v137 setIdentifier:v138];

  v139 = sub_907E0().super.super.isa;
  [v137 setProperty:v139 forKey:v202];

  v207 = v204;
  *&v206 = v137;
  v140 = *(v92 + 2);
  v141 = *(v92 + 3);
  v194 = v137;
  if (v140 >= v141 >> 1)
  {
    v92 = sub_17C8C((v141 > 1), v140 + 1, 1, v92);
  }

  *(v92 + 2) = v140 + 1;
  sub_C8E4(&v206, &v92[4 * v140 + 4]);
  v142 = sub_90550();
  v143 = [v135 groupSpecifierWithID:v142];

  if (!v143)
  {
    goto LABEL_83;
  }

  sub_904E0();
  sub_8F380();
  v144 = v193;
  sub_905B0();
  v145 = sub_90550();

  [v143 setProperty:v145 forKey:v196];

  v207 = v204;
  *&v206 = v143;
  v146 = *(v92 + 2);
  v147 = *(v92 + 3);
  v186 = v143;
  if (v146 >= v147 >> 1)
  {
    v92 = sub_17C8C((v147 > 1), v146 + 1, 1, v92);
  }

  v148 = v201;
  *(v92 + 2) = v146 + 1;
  sub_C8E4(&v206, &v92[4 * v146 + 4]);
  sub_904E0();
  sub_8F380();
  v201 = v144;
  sub_905B0();
  v207 = v203;
  *&v206 = v148;
  v193 = v148;
  v149 = sub_90550();

  v150 = v207;
  if (v207)
  {
    v151 = sub_FCAC(&v206, v207);
    v152 = *(v150 - 1);
    __chkstk_darwin(v151);
    v154 = &v186 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v152 + 16))(v154);
    v155 = sub_910D0();
    (*(v152 + 8))(v154, v150);
    sub_7FA4(&v206);
  }

  else
  {
    v155 = 0;
  }

  v156 = [objc_allocWithZone(PSSpecifier) initWithName:v149 target:v155 set:0 get:0 detail:0 cell:13 edit:0];

  swift_unknownObjectRelease();
  if (!v156)
  {
    goto LABEL_84;
  }

  v157 = sub_90550();
  [v156 setIdentifier:v157];

  [v156 setButtonAction:v189];
  v158 = sub_907E0().super.super.isa;
  [v156 setProperty:v158 forKey:v202];

  v207 = v204;
  *&v206 = v156;
  v159 = *(v92 + 2);
  v160 = *(v92 + 3);
  v189 = v156;
  if (v159 >= v160 >> 1)
  {
    v92 = sub_17C8C((v160 > 1), v159 + 1, 1, v92);
  }

  *(v92 + 2) = v159 + 1;
  sub_C8E4(&v206, &v92[4 * v159 + 4]);
  v161 = sub_90550();
  sub_904E0();
  sub_8F380();
  v162 = v201;
  sub_905C0();
  v163 = sub_90550();

  v164 = [v199 groupSpecifierWithID:v161 name:v163];

  if (!v164)
  {
    goto LABEL_85;
  }

  sub_904E0();
  sub_8F380();
  v165 = v162;
  sub_905B0();
  v166 = sub_90550();

  [v164 setProperty:v166 forKey:v196];

  v207 = v204;
  *&v206 = v164;
  v167 = *(v92 + 2);
  v168 = *(v92 + 3);
  v169 = v164;
  if (v167 >= v168 >> 1)
  {
    v92 = sub_17C8C((v168 > 1), v167 + 1, 1, v92);
  }

  *(v92 + 2) = v167 + 1;
  sub_C8E4(&v206, &v92[4 * v167 + 4]);
  sub_904E0();
  sub_8F380();
  sub_905B0();
  v207 = v203;
  *&v206 = v193;
  v170 = v193;
  v171 = sub_90550();

  v172 = v207;
  if (v207)
  {
    v173 = sub_FCAC(&v206, v207);
    v174 = *(v172 - 1);
    __chkstk_darwin(v173);
    v176 = &v186 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v174 + 16))(v176);
    v177 = sub_910D0();
    (*(v174 + 8))(v176, v172);
    sub_7FA4(&v206);
  }

  else
  {
    v177 = 0;
  }

  v178 = objc_allocWithZone(PSSpecifier);
  v179 = [v178 initWithName:v171 target:v177 set:v198 get:v197 detail:0 cell:6 edit:0];

  swift_unknownObjectRelease();
  if (!v179)
  {
    goto LABEL_86;
  }

  v180 = sub_90550();
  [v179 setIdentifier:v180];

  v181 = sub_907E0().super.super.isa;
  [v179 setProperty:v181 forKey:v202];

  v207 = v204;
  *&v206 = v179;
  v182 = *(v92 + 2);
  v183 = *(v92 + 3);
  v184 = v179;
  if (v182 >= v183 >> 1)
  {
    v92 = sub_17C8C((v183 > 1), v182 + 1, 1, v92);
  }

  *(v92 + 2) = v182 + 1;
  sub_C8E4(&v206, &v92[4 * v182 + 4]);
  v185 = sub_90730().super.isa;
  [v170 setSpecifiers:v185];
}

uint64_t sub_8C640(char a1)
{
  result = 0x7972746E4577656ELL;
  switch(a1)
  {
    case 1:
      result = 0x6767755370696B73;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7972746E45646461;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C6172656E6567;
      break;
    case 6:
      result = 0x72756F4A6B636F6CLL;
      break;
    case 7:
      result = 0x68506F5465766173;
      break;
    case 8:
      v3 = 0x74726F707865;
      goto LABEL_15;
    case 9:
      v3 = 0x68746C616568;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7247000000000000;
      break;
    case 10:
      result = 0x486C616E72756F6ALL;
      break;
    case 11:
      result = 0x4779636176697270;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

id sub_8CA48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeneralSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_8CAEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_8C640(*a1);
  v5 = v4;
  if (v3 == sub_8C640(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_910F0();
  }

  return v8 & 1;
}

Swift::Int sub_8CB74()
{
  v1 = *v0;
  sub_91180();
  sub_8C640(v1);
  sub_90630();

  return sub_911D0();
}

uint64_t sub_8CBD8()
{
  sub_8C640(*v0);
  sub_90630();
}

Swift::Int sub_8CC2C()
{
  v1 = *v0;
  sub_91180();
  sub_8C640(v1);
  sub_90630();

  return sub_911D0();
}

uint64_t sub_8CC8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8E140(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_8CCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8C640(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_8CCE8(uint64_t a1, void *a2)
{
  v5 = sub_8F550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = [a2 identifier];
  if (result)
  {
    v10 = result;
    v11 = sub_90590();
    v13 = v12;

    v14 = sub_8E140(v11, v13);
    v27 = v14;
    sub_17DF4(a1, v28, &qword_C5418);
    if (v14 <= 3u)
    {
      if (v14 == 1)
      {
        if (v29)
        {
          sub_17DF4(v28, v26, &qword_C5418);
          if (swift_dynamicCast())
          {
            v21 = v25;
            v22 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
            (*(v6 + 104))(v8, enum case for SettingsKey.skipJournalingSuggestions(_:), v5);
            sub_8F540();
            (*(v6 + 8))(v8, v5);
            v17 = sub_90550();

            [v22 setBool:(v21 & 1) == 0 forKey:v17];
            goto LABEL_28;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v14 != 2)
        {
          if (v14 != 3 || !v29)
          {
            goto LABEL_30;
          }

          sub_17DF4(v28, v26, &qword_C5418);
          if (swift_dynamicCast())
          {
            v15 = v25;
            v16 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
            (*(v6 + 104))(v8, enum case for SettingsKey.addEntryTitle(_:), v5);
            sub_8F540();
            (*(v6 + 8))(v8, v5);
            v17 = sub_90550();

            [v16 setInteger:v15 forKey:v17];
LABEL_28:

            sub_7FA4(v26);
            v23 = &qword_C5418;
            v24 = v28;
            return sub_8EF0(v24, v23);
          }

          goto LABEL_29;
        }

        if (v29)
        {
          sub_17DF4(v28, v26, &qword_C5418);
          if (swift_dynamicCast())
          {
            v18 = v25;
            v19 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
            v20 = &enum case for SettingsKey.addCurrentLocation(_:);
            goto LABEL_27;
          }

LABEL_29:
          sub_7FA4(v26);
          goto LABEL_30;
        }
      }

      goto LABEL_30;
    }

    if (v14 == 4)
    {
      if (!v29)
      {
        goto LABEL_30;
      }

      sub_17DF4(v28, v26, &qword_C5418);
      if (!swift_dynamicCast())
      {
        goto LABEL_29;
      }

      v18 = v25;
      v19 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
      v20 = &enum case for SettingsKey.alwaysUseMomentDate(_:);
    }

    else
    {
      if (v14 == 7)
      {
        if (v29)
        {
          sub_17DF4(v28, v26, &qword_C5418);
          if (swift_dynamicCast())
          {
            v18 = v25;
            v19 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
            v20 = &enum case for SettingsKey.saveToPhotos(_:);
            goto LABEL_27;
          }

          goto LABEL_29;
        }

LABEL_30:
        v23 = &unk_C8840;
        v24 = &v27;
        return sub_8EF0(v24, v23);
      }

      if (v14 != 12 || !v29)
      {
        goto LABEL_30;
      }

      sub_17DF4(v28, v26, &qword_C5418);
      if (!swift_dynamicCast())
      {
        goto LABEL_29;
      }

      v18 = v25;
      v19 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
      v20 = &enum case for SettingsKey.resetAnalyticsID(_:);
    }

LABEL_27:
    (*(v6 + 104))(v8, *v20, v5);
    sub_8F540();
    (*(v6 + 8))(v8, v5);
    v17 = sub_90550();

    [v19 setBool:v18 forKey:v17];
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_8D2F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_8F550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = sub_90590();
  v13 = v12;

  v14 = sub_8E140(v11, v13);
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v17 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
        (*(v6 + 104))(v8, enum case for SettingsKey.skipJournalingSuggestions(_:), v5);
        sub_8F540();
        (*(v6 + 8))(v8, v5);
        v18 = sub_90550();

        v19 = [v17 BOOLForKey:v18];

        *(a2 + 24) = &type metadata for Bool;
        *a2 = v19 ^ 1;
        return;
      }

      v15 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
      v16 = &enum case for SettingsKey.addCurrentLocation(_:);
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v14 > 0xD)
  {
    goto LABEL_14;
  }

  if (((1 << v14) & 0x2F60) != 0)
  {
LABEL_10:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v14 != 7)
  {
    if (v14 == 12)
    {
      v15 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
      v16 = &enum case for SettingsKey.resetAnalyticsID(_:);
      goto LABEL_17;
    }

LABEL_14:
    if (v14 == 3)
    {
      v20 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
      (*(v6 + 104))(v8, enum case for SettingsKey.addEntryTitle(_:), v5);
      sub_8F540();
      (*(v6 + 8))(v8, v5);
      v21 = sub_90550();

      v22 = [v20 integerForKey:v21];

      *(a2 + 24) = &type metadata for Int;
      *a2 = v22;
      return;
    }

    v15 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
    v16 = &enum case for SettingsKey.alwaysUseMomentDate(_:);
    goto LABEL_17;
  }

  v15 = *(v2 + OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults);
  v16 = &enum case for SettingsKey.saveToPhotos(_:);
LABEL_17:
  (*(v6 + 104))(v8, *v16, v5);
  sub_8F540();
  (*(v6 + 8))(v8, v5);
  v23 = sub_90550();

  v24 = [v15 BOOLForKey:v23];

  *(a2 + 24) = &type metadata for Bool;
  *a2 = v24;
}

uint64_t sub_8D7CC(void *a1)
{
  v3 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4C60);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_90590();
  v19 = v18;

  result = sub_8E140(v17, v19);
  if (((1 << result) & 0x3BBF) != 0)
  {
    return result;
  }

  if (result == 6)
  {
    v20 = sub_90880();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    sub_90860();
    v21 = v1;
    v22 = sub_90850();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_8968C(0, 0, v14, &unk_9CEC8, v23);
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_14;
  }

  v24 = result;
  v25 = [result window];

  if (v25)
  {
    v26 = [v25 windowScene];
  }

  else
  {
    v26 = 0;
  }

  if ([*&v1[OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults] hasSeenBothHealthTCCs])
  {
    swift_storeEnumTagMultiPayload();
    sub_83F14(v8);
    sub_83C08(v8, v26, 0, 0);

    sub_8EF0(v8, &qword_C4C60);
    v27 = type metadata accessor for OpenSensitiveURLAction.Destination;
    v28 = v11;
  }

  else
  {
    *v5 = 1;
    swift_storeEnumTagMultiPayload();
    sub_7EB44(v8);
    sub_83C08(v8, v26, 0, 0);

    sub_8EF0(v8, &qword_C4C60);
    v27 = type metadata accessor for AppLaunchAction;
    v28 = v5;
  }

  return sub_8E18C(v28, v27);
}

uint64_t sub_8DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_8F390();
  v4[3] = swift_task_alloc();
  sub_90540();
  v4[4] = swift_task_alloc();
  sub_90860();
  v4[5] = sub_90850();
  v6 = sub_907F0();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_8DCA8, v6, v5);
}

uint64_t sub_8DCA8()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v2 = [v1 canEvaluatePolicy:2 error:0];

  if (v2 && (sub_8FDF0() & 1) == 0)
  {
    sub_904E0();
    if (qword_C3AA0 != -1)
    {
      swift_once();
    }

    v7 = qword_D07B0;
    sub_8F380();
    v8 = sub_905B0();
    v10 = v9;
    v0[8] = v9;
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_8DED0;

    return sub_8E488(v8, v10);
  }

  else
  {

    v3 = v0[2];
    type metadata accessor for LockJournalSettings();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v3 showController:v4 animate:1];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_8DED0(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_8E01C, v4, v3);
}

uint64_t sub_8E01C()
{
  v1 = *(v0 + 80);

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    type metadata accessor for LockJournalSettings();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 showController:v3 animate:1];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_8E140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3C10;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8E18C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8E1EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8E22C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_3BC8;

  return sub_8DBB8(a1, v4, v5, v6);
}

uint64_t sub_8E2E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8E318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_DE1C;

  return sub_3AA30(a1, v4);
}

uint64_t sub_8E3D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3BC8;

  return sub_3AA30(a1, v4);
}

uint64_t sub_8E488(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_8F390();
  v2[20] = swift_task_alloc();
  sub_90540();
  v2[21] = swift_task_alloc();
  sub_90860();
  v2[22] = sub_90850();
  v4 = sub_907F0();
  v2[23] = v4;
  v2[24] = v3;

  return _swift_task_switch(sub_8E578, v4, v3);
}

uint64_t sub_8E578()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v0[25] = v1;
  sub_904E0();
  if (qword_C3AA0 != -1)
  {
    swift_once();
  }

  v2 = qword_D07B0;
  sub_8F380();
  LOWORD(v8) = 2;
  sub_905B0();
  v3 = sub_90550();

  [v1 setOptionCallerName:{v3, "Name of the app that is requesting passcode authorization.", 58, v8}];

  if ([v1 canEvaluatePolicy:2 error:0])
  {
    v4 = sub_90550();
    v0[26] = v4;
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_8E824;
    v5 = swift_continuation_init();
    v0[17] = sub_3A90(&qword_C8828);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_8998C;
    v0[13] = &unk_B68F8;
    v0[14] = v5;
    [v1 evaluatePolicy:1007 localizedReason:v4 reply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_8E824()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_8E9DC;
  }

  else
  {
    v5 = sub_8E954;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_8E954()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_8E9DC()
{
  v1 = v0[26];
  v2 = v0[25];

  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

void sub_8EA98(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id sub_8EAA8(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_8EACC()
{
  result = qword_C8878;
  if (!qword_C8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8878);
  }

  return result;
}

id sub_8EB48()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_C8880 = result;
  return result;
}

uint64_t sub_8EBEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_8FF10();
  sub_8F9C(v3, a2);
  sub_7FF0(v3, a2);
  if (qword_C3AB8 != -1)
  {
    swift_once();
  }

  v4 = qword_C8880;
  return sub_8FF00();
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}