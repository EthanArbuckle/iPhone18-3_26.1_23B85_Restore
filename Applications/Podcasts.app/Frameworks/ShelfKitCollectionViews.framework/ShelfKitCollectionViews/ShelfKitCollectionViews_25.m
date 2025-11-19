uint64_t PlayButton.data.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_749E4(a1, v1 + v3);
  swift_endAccess();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_74A54;
  *(v6 + 24) = v5;
  v11[4] = sub_747B0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_19D688;
  v11[3] = &block_descriptor_65;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutAnimation:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return sub_EB68(a1, &qword_3FEA58);
  }

  __break(1u);
  return result;
}

uint64_t PlayButton.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_2A50F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = UIFontTextStyleBody;
      sub_124C4(0, &qword_408100);
      v4 = UIFontTextStyleBody;
      v5 = sub_30CE18();
      result = sub_2D6DD8(_swiftEmptyArrayStorage);
      v8 = xmmword_332320;
      v7 = xmmword_31EDD0;
      v9 = xmmword_332310;
      v10 = xmmword_332300;
      _Q5 = xmmword_3322F0;
      v12 = result;
      v13 = 0uLL;
      v14 = 0;
      v15 = 8.0;
      v16 = 1;
      v17 = 24.0;
      v18 = 40.0;
      v19 = 7;
    }

    else
    {
      result = sub_2A50F0(&v24, 1);
      v14 = v37;
      v5 = v36;
      v18 = v35;
      _Q5 = v34;
      v12 = v31;
      v3 = v28;
      v19 = v29;
      v16 = v30;
      v17 = v27;
      v13 = v25;
      v7 = v26;
      v8 = vdupq_lane_s64(0x406B400000000000, 0);
      v8.i64[0] = v24;
      v9 = vdupq_lane_s64(0x4047000000000000, 0);
      v9.i64[0] = v32;
      v10 = vdupq_lane_s64(0x4051800000000000, 0);
      v15 = 11.0;
      v10.i64[0] = v33;
    }
  }

  else
  {
    v12 = sub_2D6DD8(&off_3B4580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB80);
    swift_arrayDestroy();
    sub_124C4(0, &qword_408100);
    result = sub_30CD58();
    v5 = result;
    v16 = 0;
    v10 = xmmword_332330;
    v9 = xmmword_332340;
    v7 = xmmword_332350;
    v13 = xmmword_332360;
    __asm { FMOV            V5.2D, #23.0 }

    v14 = 0;
    v8 = xmmword_332370;
    v18 = 28.0;
    v15 = 5.0;
    v3 = 0x402C000000000000;
    v17 = 15.0;
    v19 = 4;
  }

  *a2 = v8;
  *(a2 + 16) = v13;
  *(a2 + 32) = v7;
  *(a2 + 48) = v17;
  *(a2 + 56) = v3;
  *(a2 + 64) = v19;
  *(a2 + 72) = v16;
  *(a2 + 80) = v12;
  *(a2 + 88) = v9;
  *(a2 + 104) = v10;
  *(a2 + 120) = v15;
  *(a2 + 128) = _Q5;
  *(a2 + 144) = v18;
  *(a2 + 152) = v5;
  *(a2 + 160) = v14;
  return result;
}

id PlayButton.theme.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme;
  result = swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v7 == 1)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        v8 = v2 == 1;
      }

      else
      {
        v8 = v2 == 0;
      }

      goto LABEL_14;
    }

    if (v6 == 2)
    {
      v8 = v2 == 2;
LABEL_14:
      if (v8)
      {
        v10 = v3;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return result;
      }

      return sub_2A5A44();
    }

    if (v2 > 2)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      return sub_2A5A44();
    }
  }

  else
  {
    if (v6 == v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return sub_2A5A44();
    }
  }

  return result;
}

id sub_2A5420()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_7;
  }

  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v6 = [objc_opt_self() tintColor];
      return v6;
    }

LABEL_7:
    v6 = [objc_opt_self() clearColor];
    return v6;
  }

  if (v1)
  {
    v8 = _UISolariumEnabled();
    v9 = objc_opt_self();
    if (!v8)
    {
      v4 = [v9 whiteColor];
      v5 = [v4 colorWithAlphaComponent:0.95];
      goto LABEL_12;
    }

    v6 = [v9 clearColor];
    return v6;
  }

  sub_124C4(0, &qword_3FFD48);
  v2 = objc_opt_self();
  v3 = [v2 systemGray6Color];
  v4 = [v2 systemGray5Color];
  v5 = sub_30CFB8();

LABEL_12:
  return v5;
}

id sub_2A5594()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_7;
  }

  result = 0;
  v2 = *v0;
  if (*v0 > 1)
  {
    if (v2 != 2)
    {
      v6 = 7;
      return [objc_opt_self() effectWithStyle:v6];
    }
  }

  else if (v2)
  {
    if (!_UISolariumEnabled())
    {
      return 0;
    }

    v3 = [objc_opt_self() whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.18];

    v5 = [objc_opt_self() effectCompositingColor:v4 withMode:24 alpha:1.0];
    result = v5;
    if (!v5)
    {
      __break(1u);
LABEL_7:
      v6 = 9;
      return [objc_opt_self() effectWithStyle:v6];
    }
  }

  return result;
}

id sub_2A56A0(void *a1)
{
  if (*(v1 + 8) != 1)
  {
    return [objc_opt_self() labelColor];
  }

  v2 = *v1;
  if (*v1 > 1)
  {
    if (v2 == 2)
    {
      return a1;
    }

    return [objc_opt_self() labelColor];
  }

  if (!v2)
  {
    return a1;
  }

  if (_UISolariumEnabled())
  {
    return a1;
  }

  sub_30CFC8();
  if (v11)
  {
    return a1;
  }

  if (v8 <= 0.3)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0.3;
  }

  if (v9 <= 0.7)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0.7;
  }

  return [objc_allocWithZone(UIColor) initWithHue:v7 saturation:v5 brightness:v6 alpha:v10];
}

char *sub_2A57A0(id a1)
{
  if (*(v1 + 8) != 1)
  {
    goto LABEL_7;
  }

  result = *v1;
  if (*v1 > 1)
  {
    if (result == &dword_0 + 2)
    {
LABEL_5:
      v4 = [a1 colorWithAlphaComponent:0.3];
      return v4;
    }

LABEL_7:
    v4 = [objc_opt_self() quaternaryLabelColor];
    return v4;
  }

  if (!result)
  {
    return result;
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_5;
  }

  sub_30CFC8();
  if (v11)
  {
    return 0;
  }

  if (v8 <= 0.1)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0.1;
  }

  if (v9 > 0.85)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0.85;
  }

  return [objc_allocWithZone(UIColor) initWithHue:v7 saturation:v5 brightness:v6 alpha:v10];
}

BOOL static PlayButton.Theme.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(a2 + 8);
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

BOOL sub_2A5974(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t PlayButton.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

id sub_2A5A44()
{
  v1 = sub_30D158();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6 - 8];
  sub_2A9100();
  v8 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[8];
  if (v10 == 1 && v9 >= 3)
  {
    sub_30D168();
  }

  else
  {
    sub_30D228();
  }

  (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v1);
  sub_30D178();
  v19 = v9;
  v20 = v10;
  sub_2A5420();
  v12 = sub_30D108();
  sub_304678();
  v12(v18, 0);
  v19 = v9;
  v20 = v10;
  sub_2A5594();
  v13 = sub_30D108();
  sub_304658();
  v13(v18, 0);
  v14 = sub_30D278();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_30D2A8();
  v15 = 0;
  if ((v8[8] & 1) == 0)
  {
    v15 = sub_30CAA8();
  }

  return [v0 setOverrideUserInterfaceStyle:v15];
}

void (*PlayButton.theme.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_2A5D68;
}

void sub_2A5D68(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  v5 = *(*a1 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v5;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_9:
        v8 = v3 == 0;
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (v6 != v3)
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
LABEL_5:
      v8 = v3 == 1;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_17:
  if (v6 == 2)
  {
    v8 = v3 == 2;
LABEL_19:
    if (!v8)
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_2A5A44();
    goto LABEL_14;
  }

  if (v3 <= 2)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:

  free(v2);
}

uint64_t PlayButton.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  return sub_EB00(v1 + v3, a1, &qword_3FEA58);
}

uint64_t sub_2A5E98(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  sub_EB00(a1, aBlock - v5, &qword_3FEA58);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_749E4(v6, v7 + v8);
  swift_endAccess();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2ADB7C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_74D00;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D688;
  aBlock[3] = &block_descriptor_68;
  v12 = _Block_copy(aBlock);
  v13 = v7;

  [v9 performWithoutAnimation:v12];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return sub_EB68(v6, &qword_3FEA58);
  }

  __break(1u);
  return result;
}

uint64_t sub_2A60BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_309778();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_EB00(a1 + v12, v4, &qword_3FEA58);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_EB68(v4, &qword_3FEA58);
LABEL_8:
    v16 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter);
    *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter) = 0;
    sub_2A65F0(v16);
  }

  (*(v6 + 32))(v11, v4, v5);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  if (!*(a1 + v13))
  {
    (*(v6 + 8))(v11, v5);
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter;
  if (*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter))
  {

    v15 = sub_309708();

    if (v15)
    {
      (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
  }

  (*(v6 + 16))(v9, v11, v5);
  sub_309878();
  swift_allocObject();

  v18 = sub_309788();
  v19 = *(a1 + v14);
  *(a1 + v14) = v18;

  sub_2A65F0(v19);

  return (*(v6 + 8))(v11, v5);
}

void (*PlayButton.data.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_2A6468;
}

void sub_2A6468(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) == 0 && (v4 = v3[6], v5 = objc_opt_self(), v6 = swift_allocObject(), *(v6 + 16) = v4, v7 = swift_allocObject(), *(v7 + 16) = sub_2ADB7C, *(v7 + 24) = v6, v3[4] = sub_74D00, v3[5] = v7, *v3 = _NSConcreteStackBlock, v3[1] = 1107296256, v3[2] = sub_19D688, v3[3] = &block_descriptor_14_1, v8 = _Block_copy(v3), v9 = v4, , , [v5 performWithoutAnimation:v8], _Block_release(v8), LOBYTE(v5) = swift_isEscapingClosureAtFileLocation(), , , (v5))
  {
    __break(1u);
  }

  else
  {

    free(v3);
  }
}

void sub_2A65F0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    sub_309868();
  }

  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter;
  if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter] && (sub_2AD578(&qword_40CBB0, type metadata accessor for PlayButton), , v2, sub_309868(), , *&v2[v5]))
  {

    sub_3096C8();

    v6 = *&v2[v5] != 0;
  }

  else
  {
    v6 = 0;
  }

  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, "setEnabled:", v6);
  sub_2A9100();
}

uint64_t sub_2A671C(uint64_t a1, int a2, unsigned int a3)
{
  v4 = v3;
  v107 = a3;
  v108 = a2;
  v109 = a1;
  v5 = sub_309858();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v92 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v98 = &v90[-v10];
  v11 = __chkstk_darwin(v9);
  v96 = &v90[-v12];
  __chkstk_darwin(v11);
  v94 = &v90[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBC8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v90[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  v103 = *(v18 - 8);
  v19 = *(v103 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v97 = &v90[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v20);
  v105 = &v90[-v22];
  v23 = __chkstk_darwin(v21);
  v101 = &v90[-v24];
  v25 = __chkstk_darwin(v23);
  v95 = &v90[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v90[-v28];
  __chkstk_darwin(v27);
  v31 = &v90[-v30];
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  v33 = *(v6 + 16);
  v104 = v4;
  v102 = v32;
  v99 = v33;
  v100 = v6 + 16;
  v33(v31, &v4[v32], v5);
  (*(v6 + 56))(v31, 0, 1, v5);
  v34 = *(v15 + 56);
  sub_EB00(v31, v17, &qword_40CBB8);
  sub_EB00(v109, &v17[v34], &qword_40CBB8);
  v106 = v6;
  v35 = *(v6 + 48);
  if (v35(v17, 1, v5) == 1)
  {
    sub_EB68(v31, &qword_40CBB8);
    if (v35(&v17[v34], 1, v5) == 1)
    {
      return sub_EB68(v17, &qword_40CBB8);
    }

    goto LABEL_6;
  }

  sub_EB00(v17, v29, &qword_40CBB8);
  if (v35(&v17[v34], 1, v5) == 1)
  {
    sub_EB68(v31, &qword_40CBB8);
    (*(v106 + 8))(v29, v5);
LABEL_6:
    sub_EB68(v17, &qword_40CBC8);
    goto LABEL_7;
  }

  v40 = v106;
  v41 = v94;
  (*(v106 + 32))(v94, &v17[v34], v5);
  sub_2AD578(&qword_40CBC0, &type metadata accessor for PlayButtonPresenter.State);
  v91 = sub_30C018();
  v42 = *(v40 + 8);
  v42(v41, v5);
  sub_EB68(v31, &qword_40CBB8);
  v42(v29, v5);
  result = sub_EB68(v17, &qword_40CBB8);
  if ((v91 & 1) == 0)
  {
LABEL_7:
    v94 = v5;
    v93 = v35;
    if (v107 == 2)
    {
      v38 = v104;
      v37 = [v104 window];
      v39 = v109;
      if (v37)
      {

        v107 = [objc_opt_self() areAnimationsEnabled];
      }

      else
      {
        v107 = 0;
      }
    }

    else
    {
      v38 = v104;
      v39 = v109;
    }

    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = (v43 + 16);
    *(v43 + 24) = 0;
    if ((v108 & 1) == 0)
    {
      v45 = v96;
      v46 = v94;
      v99(v96, &v38[v102], v94);
      sub_3097D8();
      v47 = *(v106 + 8);
      v47(v45, v46);
      v48 = v95;
      sub_EB00(v39, v95, &qword_40CBB8);
      if (v93(v48, 1, v46) == 1)
      {
        sub_EB68(v48, &qword_40CBB8);
        v38 = v104;
        v39 = v109;
      }

      else
      {
        sub_3097D8();
        v47(v48, v46);
        v49 = sub_3097C8();
        v38 = v104;
        v39 = v109;
        if (v49)
        {
          goto LABEL_19;
        }
      }
    }

    v50 = swift_allocObject();
    *(v50 + 16) = v38;
    v51 = *(v43 + 16);
    v52 = *(v43 + 24);
    *(v43 + 16) = sub_2AD600;
    *(v43 + 24) = v50;
    v53 = v38;
    sub_2B8D4(v51, v52);
LABEL_19:
    v109 = v43;
    v54 = v101;
    sub_EB00(v39, v101, &qword_40CBB8);
    sub_EB00(v54, v105, &qword_40CBB8);
    v55 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v56 = v55 + v19;
    v57 = swift_allocObject();
    *(v57 + 16) = v108 & 1;
    *(v57 + 24) = v38;
    sub_2AD72C(v54, v57 + v55);
    v58 = v107;
    LOBYTE(v55) = v107 & 1;
    *(v57 + v56) = v107 & 1;
    v59 = v39;
    v60 = swift_allocObject();
    *(v60 + 16) = v38;
    *(v60 + 24) = v55;
    if ((v58 & 1) == 0)
    {
      v69 = *v44;
      if (*v44)
      {
        v70 = *(v109 + 24);
        v71 = v38;
        v72 = sub_A0EF8(v69, v70);
        v69(v72);
        sub_2B8D4(v69, v70);
      }

      else
      {
        v77 = v38;
      }

      v78 = v105;
      sub_2AA62C(v108 & 1, v38, v105, 0);
      sub_EB68(v78, &qword_40CBB8);
      sub_2AAD40(v38, 0);
    }

    v61 = v98;
    v62 = v94;
    v99(v98, &v38[v102], v94);
    v63 = v59;
    v64 = v62;
    v65 = v97;
    sub_EB00(v63, v97, &qword_40CBB8);
    if (v93(v65, 1, v62) == 1)
    {
      v66 = *(v106 + 8);
      v67 = v38;
      v66(v61, v62);
      sub_EB68(v65, &qword_40CBB8);
      v68 = v109;
    }

    else
    {
      v73 = v92;
      (*(v106 + 32))(v92, v65, v62);
      v74 = v38;
      v75 = sub_3097A8();
      v68 = v109;
      if (v75)
      {
        v76 = *(v106 + 8);
        v76(v73, v62);
        v76(v61, v62);
      }

      else
      {
        v79 = sub_3097A8();
        v80 = *(v106 + 8);
        v80(v73, v64);
        v80(v61, v64);
        if (v79)
        {
          sub_EB68(v105, &qword_40CBB8);
          v81 = objc_opt_self();
          v82 = swift_allocObject();
          v82[2] = v68;
          v82[3] = v74;
          v82[4] = sub_2AD79C;
          v82[5] = v57;
          v82[6] = sub_2AD868;
          v82[7] = v60;
          v114 = sub_2AD8E0;
          v115 = v82;
          aBlock = _NSConcreteStackBlock;
          v111 = 1107296256;
          v112 = sub_914CC;
          v113 = &block_descriptor_92_0;
          v83 = _Block_copy(&aBlock);
          v84 = v74;

          [v81 animateWithDuration:514 delay:v83 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.5 completion:0.5];

          v85 = v83;
LABEL_31:
          _Block_release(v85);
        }
      }
    }

    sub_EB68(v105, &qword_40CBB8);
    v86 = objc_opt_self();
    v87 = swift_allocObject();
    v87[2] = v68;
    v87[3] = v38;
    v87[4] = sub_2AD79C;
    v87[5] = v57;
    v87[6] = sub_2AD868;
    v87[7] = v60;
    v114 = sub_2AD878;
    v115 = v87;
    aBlock = _NSConcreteStackBlock;
    v111 = 1107296256;
    v112 = sub_914CC;
    v113 = &block_descriptor_86_2;
    v88 = _Block_copy(&aBlock);
    v89 = v38;

    [v86 animateWithDuration:514 delay:v88 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:0.2];

    v85 = v88;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_2A73C0(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  __chkstk_darwin(v4 - 8);
  v19 = &v19 - v5;
  v6 = sub_309858();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, v2 + v13, v6);
  swift_beginAccess();
  v15 = *(v7 + 24);
  v20 = a1;
  v15(v2 + v13, a1, v6);
  swift_endAccess();
  v14(v10, v2 + v13, v6);
  sub_2AD578(&qword_40CBC0, &type metadata accessor for PlayButtonPresenter.State);
  LOBYTE(v13) = sub_30C018();
  v16 = *(v7 + 8);
  v16(v10, v6);
  if (v13)
  {
    v16(v20, v6);
  }

  else
  {
    v17 = v19;
    v14(v19, v12, v6);
    (*(v7 + 56))(v17, 0, 1, v6);
    sub_2A671C(v17, 0, 2u);
    v16(v20, v6);
    sub_EB68(v17, &qword_40CBB8);
  }

  return (v16)(v12, v6);
}

void sub_2A76A0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v174 = a3;
  LODWORD(v170) = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_30BB28();
  v156 = *(v6 - 8);
  v157 = v6;
  __chkstk_darwin(v6);
  v155 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406140);
  __chkstk_darwin(v8 - 8);
  v161 = &v155 - v9;
  v160 = sub_304588();
  __chkstk_darwin(v160);
  v159 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  v12 = __chkstk_darwin(v11 - 8);
  v158 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v169 = &v155 - v14;
  v15 = sub_309858();
  v171 = *(v15 - 8);
  v172 = v15;
  __chkstk_darwin(v15);
  v168 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v17 - 8);
  v19 = &v155 - v18;
  v167 = *a1;
  LODWORD(v166) = *(a1 + 8);
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  v21 = sub_309778();
  v22 = *(*(v21 - 8) + 56);
  v22(&v4[v20], 1, 1, v21);
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter] = 0;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_centeringView;
  *&v4[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView;
  *&v4[v25] = [objc_allocWithZone(type metadata accessor for SwapView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView;
  type metadata accessor for SimpleProgressView(0);
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint] = 0;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label;
  *&v4[v27] = [objc_allocWithZone(UILabel) init];
  v28 = v174;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_subscriptions] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph] = 0;
  if (v28)
  {

    sub_3096C8();

    *&v4[v23] = v28;
    swift_retain_n();

    sub_309798();

    v29 = 0;
  }

  else
  {
    *&v4[v23] = 0;

    v29 = 1;
  }

  v22(v19, v29, 1, v21);
  swift_beginAccess();
  sub_2AD9BC(v19, &v4[v20]);
  swift_endAccess();
  if (v28)
  {

    v30 = v169;
    sub_3096D8();

    v32 = v171;
    v31 = v172;
    (*(v171 + 56))(v30, 0, 1, v172);
    v33 = v168;
    (*(v32 + 32))(v168, v30, v31);
    v34 = v170;
  }

  else
  {
    v32 = v171;
    v31 = v172;
    v35 = v169;
    (*(v171 + 56))(v169, 1, 1, v172);
    v33 = v168;
    sub_309828();
    v36 = (*(v32 + 48))(v35, 1, v31);
    v34 = v170;
    if (v36 != 1)
    {
      sub_EB68(v35, &qword_40CBB8);
    }
  }

  (*(v32 + 32))(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState], v33, v31);
  v37 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
  *v37 = v167;
  v37[8] = v166;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonSize] = v34;
  sub_2A50F0(v34, v182);
  v38 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
  v39 = v182[7];
  v40 = v182[9];
  *(v38 + 8) = v182[8];
  *(v38 + 9) = v40;
  v41 = v182[3];
  v42 = v182[5];
  v43 = v182[6];
  *(v38 + 4) = v182[4];
  *(v38 + 5) = v42;
  *(v38 + 6) = v43;
  *(v38 + 7) = v39;
  v44 = v182[1];
  v45 = v182[2];
  *v38 = v182[0];
  *(v38 + 1) = v44;
  *(v38 + 20) = v183;
  *(v38 + 2) = v45;
  *(v38 + 3) = v41;
  v181.receiver = v4;
  v181.super_class = ObjectType;
  v46 = ObjectType;
  v47 = objc_msgSendSuper2(&v181, "initWithFrame:", 0.0, 0.0, 100.0, 50.0);
  [v47 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v180.receiver = v47;
  v180.super_class = v46;
  objc_msgSendSuper2(&v180, "setEnabled:", v28 != 0);
  sub_2A9100();
  sub_2A5A44();
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_centeringView;
  [*(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_centeringView) setHidden:1];
  [*(v47 + v48) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addSubview:*(v47 + v48)];
  v49 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView;
  [*(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView) setUserInteractionEnabled:0];
  [*&v49[v47] setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = *&v49[v47];
  v169 = v49;
  v51 = [v50 centerXAnchor];
  v52 = [*(v47 + v48) leadingAnchor];
  v53 = (v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics);
  v54 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + 48);
  v55 = objc_allocWithZone(UIFontMetrics);
  v165 = UIFontTextStyleBody;
  v56 = [v55 initForTextStyle:UIFontTextStyleBody];
  v57 = [v47 traitCollection];
  [v56 scaledValueForValue:v57 compatibleWithTraitCollection:v54];
  v59 = v58;

  v167 = [v51 constraintEqualToAnchor:v52 constant:v59];
  [v47 addSubview:*&v49[v47]];
  v60 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView;
  [*(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView) setUserInteractionEnabled:0];
  [*(v47 + v60) setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [*(v47 + v60) heightAnchor];
  v62 = v53[13];
  v63 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v64 = [v47 traitCollection];
  [v63 scaledValueForValue:v64 compatibleWithTraitCollection:v62];
  v66 = v65;

  v166 = [v61 constraintEqualToConstant:v66];
  v67 = [*(v47 + v60) leadingAnchor];
  v68 = [*(v47 + v48) leadingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:v53[16]];

  v168 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint;
  v70 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint);
  *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint) = v69;

  v71 = [*(v47 + v60) widthAnchor];
  v72 = [v71 constraintEqualToConstant:v53[17]];

  v73 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint);
  v164 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint;
  *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint) = v72;

  v163 = v60;
  [v47 addSubview:*(v47 + v60)];
  v74 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label;
  v75 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label);
  v76 = *(v53 + 19);
  v170 = v53;
  [v75 setFont:v76];
  [*(v47 + v74) setAdjustsFontForContentSizeCategory:1];
  [*(v47 + v74) setLineBreakMode:4];
  [*(v47 + v74) setTranslatesAutoresizingMaskIntoConstraints:0];
  v77 = [*(v47 + v74) leadingAnchor];
  v78 = [*(v47 + v48) leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  v80 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint);
  v162 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint;
  *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint) = v79;

  v81 = [*(v47 + v48) trailingAnchor];
  v82 = [*(v47 + v74) trailingAnchor];
  v83 = v53[5];
  v84 = objc_allocWithZone(UIFontMetrics);
  v85 = [v84 initForTextStyle:v165];
  v86 = [v47 traitCollection];
  [v85 scaledValueForValue:v86 compatibleWithTraitCollection:v83];
  v88 = v87;

  v89 = [v81 constraintEqualToAnchor:v82 constant:v88];
  v90 = *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint);
  v165 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint;
  *(v47 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint) = v89;

  sub_2A8B30();
  [v47 addSubview:*(v47 + v74)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004E0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_315430;
  *(v91 + 32) = sub_304BB8();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v92 = swift_allocObject();
  v94 = v166;
  v93 = v167;
  *(v92 + 16) = v167;
  *(v92 + 24) = v94;
  v167 = v93;
  v166 = v94;
  sub_30CF98();
  swift_unknownObjectRelease();

  sub_124C4(0, &qword_4019C0);
  sub_30C9E8();
  sub_30CF98();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_320DE0;
  v96 = [*(v47 + v48) topAnchor];
  v97 = [v47 topAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];

  *(v95 + 32) = v98;
  v99 = [*(v47 + v48) bottomAnchor];
  v100 = [v47 bottomAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  *(v95 + 40) = v101;
  v102 = [*(v47 + v48) centerXAnchor];
  v103 = [v47 centerXAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v95 + 48) = v104;
  v105 = [v47 widthAnchor];
  v106 = [*(v47 + v48) widthAnchor];
  v107 = [v105 constraintGreaterThanOrEqualToAnchor:v106];

  *(v95 + 56) = v107;
  v108 = [v47 widthAnchor];
  v109 = v170;
  v110 = [v108 constraintGreaterThanOrEqualToConstant:v170[1]];

  *(v95 + 64) = v110;
  v111 = [v47 heightAnchor];
  v112 = [v111 constraintGreaterThanOrEqualToConstant:*v109];

  *(v95 + 72) = v112;
  v113 = [v47 widthAnchor];
  v114 = [v113 constraintEqualToConstant:v109[1]];

  LODWORD(v115.rawValue) = 1132068864;
  isa = sub_30CA28(v115).super.isa;

  *(v95 + 80) = isa;
  v117 = [*&v169[v47] centerYAnchor];
  v118 = [v47 centerYAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];

  v121 = v167;
  v120 = v168;
  *(v95 + 88) = v119;
  *(v95 + 96) = v121;
  v122 = *&v120[v47];
  if (!v122)
  {
    __break(1u);
    goto LABEL_18;
  }

  v124 = v163;
  v123 = v164;
  *(v95 + 104) = v122;
  v125 = *(v47 + v123);
  if (!v125)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v126 = v166;
  *(v95 + 112) = v125;
  *(v95 + 120) = v126;
  v127 = *(v47 + v124);
  ObjectType = v121;
  v169 = v126;
  v128 = v125;
  v129 = v122;
  v130 = [v127 centerYAnchor];
  v131 = [v47 centerYAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  *(v95 + 128) = v132;
  v133 = *(v47 + v162);
  if (!v133)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v95 + 136) = v133;
  v134 = *(v165 + v47);
  if (v134)
  {
    v135 = objc_opt_self();
    *(v95 + 144) = v134;
    v136 = *(v47 + v74);
    v137 = v134;
    v138 = v133;
    v139 = [v136 centerYAnchor];
    v140 = [v47 centerYAnchor];
    v141 = [v139 constraintEqualToAnchor:v140 constant:v170[20]];

    *(v95 + 152) = v141;
    sub_124C4(0, &qword_403000);
    v142 = sub_30C358().super.isa;

    [v135 activateConstraints:v142];

    v143 = v158;
    (*(v171 + 56))(v158, 1, 1, v172);
    sub_2A671C(v143, 1, 0);
    sub_EB68(v143, &qword_40CBB8);
    [v47 addTarget:v47 action:"trigger" forControlEvents:0x2000];

    sub_124C4(0, &qword_4061A0);
    sub_3043D8();
    v144 = v161;
    sub_304C58();
    v145 = sub_304C68();
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
    v146 = sub_30C728();
    [v47 setHoverStyle:v146];

    v147 = v174;
    if (v174)
    {
      v148 = objc_opt_self();
      v149 = swift_allocObject();
      *(v149 + 16) = v147;
      *(v149 + 24) = v47;
      v150 = swift_allocObject();
      v151 = sub_2ADAB4;
      *(v150 + 16) = sub_2ADAB4;
      *(v150 + 24) = v149;
      v177 = sub_74D00;
      v178 = v150;
      *&v175 = _NSConcreteStackBlock;
      *(&v175 + 1) = 1107296256;
      *&v176 = sub_19D688;
      *(&v176 + 1) = &block_descriptor_133;
      v152 = _Block_copy(&v175);
      swift_retain_n();
      v153 = v47;

      [v148 performWithoutAnimation:v152];

      _Block_release(v152);
      LOBYTE(v152) = swift_isEscapingClosureAtFileLocation();

      if ((v152 & 1) == 0)
      {
LABEL_16:
        v175 = 0u;
        v176 = 0u;
        memset(v179, 0, 32);
        v154 = v155;
        sub_30BAC8();
        sub_EB68(v179, &unk_3FBB70);
        sub_EB68(&v175, &unk_3FBB70);
        sub_30CED8();

        (*(v156 + 8))(v154, v157);
        sub_2B8D4(v151, v149);
        return;
      }

      __break(1u);
    }

    v151 = 0;
    v149 = 0;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

id sub_2A8B30()
{
  v1 = v0;
  v2 = sub_309858();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  sub_3097E8();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = sub_30C098();

  [v30 setText:v9];

  v7(v5, &v1[v6], v2);
  v10 = v1;
  LOBYTE(v1) = sub_3097A8();
  v8(v5, v2);
  v11 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
  if (v1)
  {
    v12 = v11[12];
    v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v14 = [v10 traitCollection];
    [v13 scaledValueForValue:v14 compatibleWithTraitCollection:v12];
    v16 = v15;

    v17 = v11[15];
    v18 = v16 + v11[14];
    v19 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v20 = [v10 traitCollection];
    [v19 scaledValueForValue:v20 compatibleWithTraitCollection:v17];
    v22 = v21;

    v23 = v18 + v22;
  }

  else
  {
    v24 = v11[18];
    v25 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v26 = [v10 traitCollection];
    [v25 scaledValueForValue:v26 compatibleWithTraitCollection:v24];
    v28 = v27;

    v23 = v28;
  }

  result = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint];
  if (result)
  {
    return [result setConstant:v23];
  }

  __break(1u);
  return result;
}

id sub_2A8E38(char *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = &a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
  v9 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + 48];
  v10 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v11 = [a1 traitCollection];
  [v10 scaledValueForValue:v11 compatibleWithTraitCollection:v9];
  v13 = v12;

  [v29 setConstant:v13];
  v14 = v8[13];
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v16 = [a1 traitCollection];
  [v15 scaledValueForValue:v16 compatibleWithTraitCollection:v14];
  v18 = v17;

  result = [v30 setConstant:v18];
  v20 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint];
  if (v20)
  {
    v21 = v8[5];
    v22 = objc_allocWithZone(UIFontMetrics);
    v23 = v20;
    v24 = [v22 initForTextStyle:UIFontTextStyleBody];
    v25 = [a1 traitCollection];
    [v24 scaledValueForValue:v25 compatibleWithTraitCollection:v21];
    v27 = v26;

    [v23 setConstant:v27];
    v28 = sub_309858();
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    sub_2A671C(v7, 1, 0);
    sub_EB68(v7, &qword_40CBB8);
    return [a1 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2A9100()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView);
  v3 = sub_2AB2A8();
  [v2 setTintColor:v3];

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView);
  swift_beginAccess();
  v5 = sub_2AB2A8();
  sub_2A56A0(v5);

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v4;
  sub_30CF08();
  v7 = sub_2AB2A8();
  sub_2A57A0(v7);

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  sub_30CF08();
  v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label);
  v10 = sub_2AB2A8();
  [v9 setTextColor:v10];
}

id sub_2A92BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_30C098();
  v7 = [a4 actionForLayer:a1 forKey:v6];

  return v7;
}

uint64_t sub_2A9324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v0 - 8);
  v2 = v4 - v1;
  sub_302448();
  result = sub_30B8C8();
  if (v4[1])
  {
    sub_3023F8();

    return sub_EB68(v2, &unk_404150);
  }

  return result;
}

void sub_2A946C(char a1, SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, *a2, a1 & 1);
  sub_2A9100();
}

void (*PlayButton.isHighlighted.modify(uint64_t *a1))(objc_super **a1, char a2)
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
  *(v3 + 48) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 56) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 64) = objc_msgSendSuper2(v4, "isHighlighted");
  return sub_2A9554;
}

id sub_2A9578(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_2A95C4(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_2A9100();
}

void (*PlayButton.isEnabled.modify(uint64_t *a1))(objc_super **a1, char a2)
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
  *(v3 + 48) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 56) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 64) = objc_msgSendSuper2(v4, "isEnabled");
  return sub_2A96C0;
}

void sub_2A96CC(objc_super **a1, char a2, SEL *a3)
{
  v4 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v8 = *a1;
  if (a2)
  {
    v8[1].receiver = receiver;
    v8[1].super_class = super_class;
    objc_msgSendSuper2(v8 + 1, *a3, receiver_low);
  }

  else
  {
    v8[2].receiver = receiver;
    v8[2].super_class = super_class;
    objc_msgSendSuper2(v8 + 2, *a3, receiver_low);
    sub_2A9100();
  }

  free(v4);
}

Swift::Void __swiftcall PlayButton.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_2A9100();
}

void PlayButton.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_30C098();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "setAccessibilityLabel:", v5);
}

void (*PlayButton.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  *(v3 + 80) = swift_getObjectType();
  v5 = sub_309858();
  v6 = *(v5 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v5 - 8) + 64));
  }

  v8 = v7;
  v4[11] = v7;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  v10 = sub_3097B8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v4[3] = v10;
  v4[4] = v12;
  return sub_2A9BE4;
}

void sub_2A9BE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_30C098();
    }

    else
    {
      v4 = 0;
    }

    v6 = *(v2 + 88);
    *(v2 + 40) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 40), "setAccessibilityLabel:", v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_30C098();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 88);
    *(v2 + 56) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 56), "setAccessibilityLabel:", v5);
  }

  free(v6);

  free(v2);
}

uint64_t PlayButton.updateState(_:)(uint64_t a1)
{
  v2 = sub_309858();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_2A73C0(v5);
}

uint64_t sub_2A9FD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2AA020(char *a1)
{
  v2 = sub_302C88();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v63[-v7];
  v9 = sub_309858();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v10 + 16))(v12, &a1[v13], v9);
  v14 = sub_3097D8();
  (*(v10 + 8))(v12, v9);
  if ((v14 & 0x8000) == 0)
  {
    v15 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView];
    if (v15)
    {
      (*(v3 + 104))(v8, enum case for WaveformState.hidden(_:), v2);
      v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_state;
      swift_beginAccess();
      v17 = *(v3 + 24);
      v18 = v15;
      v17(&v15[v16], v8, v2);
      swift_endAccess();
      sub_2FD810();

      (*(v3 + 8))(v8, v2);
    }

    v19 = &a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
    v20 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + 80];
    if (*(v20 + 16) && (v21 = sub_1919B4(v14), (v22 & 1) != 0))
    {
      v23 = (*(v20 + 56) + 24 * v21);
      v24 = (v23 + 1);
      v25 = (v23 + 2);
    }

    else
    {
      v23 = (v19 + 56);
      v24 = (v19 + 64);
      v25 = v19 + 72;
    }

    v26 = *v25;
    v27 = *v24;
    v28 = *v23;
    sub_2AD948(*v23, *v24, *v25);
    v29 = [a1 traitCollection];
    v30 = sub_309818();

    v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
    v32 = v31;
    [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v33 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView];
    v34 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view;
    v35 = *(v33 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view);
    if (v35)
    {
      sub_124C4(0, &qword_3FBD90);
      v36 = v32;
      v37 = v35;
      v38 = sub_30D098();

      v39 = *(v33 + v34);
      if ((v38 & 1) == 0)
      {
        if (v39)
        {
          [*(v33 + v34) removeFromSuperview];
          v39 = *(v33 + v34);
        }
      }
    }

    else
    {
      v39 = 0;
    }

    *(v33 + v34) = v32;
    v44 = v32;

    sub_2AB508(v35);
    sub_2AD954(v28, v27, v26);
    return;
  }

  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView;
  v41 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView];
  if (!v41)
  {
    v45 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + 88];
    v46 = objc_allocWithZone(type metadata accessor for WaveformIndicatorView(0));
    v47 = sub_2FDA70(v45);
    v48 = *&a1[v40];
    *&a1[v40] = v47;
    v42 = v47;

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_18:
    v49 = sub_302C78();
    v50 = &enum case for WaveformState.SamplingMode.live(_:);
    if ((v14 & 0x100) != 0)
    {
      v50 = &enum case for WaveformState.SamplingMode.unavailable(_:);
    }

    (*(*(v49 - 8) + 104))(v6, *v50, v49);
    v43 = &enum case for WaveformState.playing(_:);
    goto LABEL_21;
  }

  v42 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView];
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v43 = &enum case for WaveformState.buffering(_:);
LABEL_21:
  (*(v3 + 104))(v6, *v43, v2);
  v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_state;
  swift_beginAccess();
  v52 = *(v3 + 24);
  v53 = v41;
  v52(&v42[v51], v6, v2);
  swift_endAccess();
  sub_2FD810();
  (*(v3 + 8))(v6, v2);
  v54 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView];
  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view;
  v56 = *(v54 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view);
  if (v56)
  {
    sub_124C4(0, &qword_3FBD90);
    v57 = v42;
    v58 = v56;
    v59 = sub_30D098();

    v60 = *(v54 + v55);
    if ((v59 & 1) == 0 && v60)
    {
      [*(v54 + v55) removeFromSuperview];
      v60 = *(v54 + v55);
    }
  }

  else
  {
    v61 = v42;
    v58 = 0;
    v60 = 0;
  }

  *(v54 + v55) = v42;
  v62 = v42;

  sub_2AB508(v56);
}

id sub_2AA62C(char a1, char *a2, uint64_t a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  v9 = __chkstk_darwin(v8 - 8);
  v49 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v42[-v11];
  v13 = sub_309858();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v42[-v19];
  __chkstk_darwin(v18);
  v22 = &v42[-v21];
  if (a1)
  {
    sub_2AAA88();
    v23 = &off_40C000;
    goto LABEL_10;
  }

  v46 = v17;
  v48 = a4;
  v24 = a3;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  v44 = v14[2];
  v45 = v14 + 2;
  v44(v22, &a2[v25], v13);
  v43 = sub_3097A8();
  v26 = v14[1];
  v26(v22, v13);
  v47 = v24;
  sub_EB00(v24, v12, &qword_40CBB8);
  v27 = v14[6];
  if (v27(v12, 1, v13) == 1)
  {
    sub_EB68(v12, &qword_40CBB8);
  }

  else
  {
    v28 = sub_3097A8() & 1;
    v26(v12, v13);
    if (v28 == (v43 & 1))
    {
      goto LABEL_7;
    }
  }

  sub_2AAA88();
LABEL_7:
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  v44(v20, &a2[v29], v13);
  sub_309848();
  v31 = v30;
  v26(v20, v13);
  v32 = v49;
  sub_EB00(v47, v49, &qword_40CBB8);
  v33 = v27(v32, 1, v13);
  v17 = v46;
  if (v33 == 1)
  {
    sub_EB68(v32, &qword_40CBB8);
    LOBYTE(a4) = v48;
    v23 = &off_40C000;
  }

  else
  {
    sub_309848();
    v35 = v34;
    result = (v26)(v32, v13);
    LOBYTE(a4) = v48;
    v23 = &off_40C000;
    if (v31 == v35)
    {
      goto LABEL_11;
    }
  }

LABEL_10:
  v37 = *(&v23[334]->Flags + a2);
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (v14[2])(v17, &a2[v38], v13);
  sub_309848();
  v40 = v39;
  (v14[1])(v17, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v40;
  v41 = v37;
  result = sub_30CF08();
LABEL_11:
  if (a4)
  {
    [*(&v23[334]->Flags + a2) layoutIfNeeded];
    return [a2 layoutIfNeeded];
  }

  return result;
}

void sub_2AAA88()
{
  v1 = v0;
  v2 = sub_309858();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = sub_3097A8();
  (*(v3 + 8))(v5, v2);
  v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = 128;
  if (v7)
  {
    v9 = 96;
  }

  v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + v9];
  v11 = objc_allocWithZone(UIFontMetrics);
  v12 = v8;
  v13 = [v11 initForTextStyle:UIFontTextStyleBody];
  v14 = [v1 traitCollection];
  [v13 scaledValueForValue:v14 compatibleWithTraitCollection:v10];
  v16 = v15;

  [v12 setConstant:v16];
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
  if (v7)
  {
    v19 = v18[14];
    v20 = v17;
    v21 = 1.0;
  }

  else
  {
    v22 = v18[17];
    v23 = objc_allocWithZone(UIFontMetrics);
    v24 = v17;
    v25 = [v23 initForTextStyle:UIFontTextStyleBody];
    v26 = [v1 traitCollection];
    [v25 scaledValueForValue:v26 compatibleWithTraitCollection:v22];
    v19 = v27;

    v21 = 0.0;
  }

  [v17 setConstant:v19];

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView] setAlpha:v21];
}

void sub_2AAD40(void *a1, char a2)
{
  sub_2A8B30();
  [a1 invalidateIntrinsicContentSize];
  v4 = [a1 superview];
  [v4 invalidateIntrinsicContentSize];

  v5 = [a1 superview];
  v6 = [v5 superview];

  [v6 invalidateIntrinsicContentSize];
  v7 = [a1 superview];
  [v7 setNeedsLayout];

  if (a2)
  {
    [a1 layoutIfNeeded];
    v8 = [a1 superview];
    [v8 layoutIfNeeded];

    v9 = [a1 superview];
    v10 = [v9 superview];

    [v10 layoutIfNeeded];
  }
}

uint64_t sub_2AAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 24);
    v12 = a5;
    v13 = objc_opt_self();
    v14 = *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView);
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v11;
    v26 = sub_74D00;
    v27 = v15;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_914CC;
    v25 = &block_descriptor_104;
    v16 = _Block_copy(&aBlock);
    sub_A0EF8(v10, v11);

    v17 = v13;
    a5 = v12;
    [v17 transitionWithView:v14 duration:5242914 options:v16 animations:0 completion:0.1];
    sub_2B8D4(v10, v11);
    _Block_release(v16);
  }

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v26 = sub_747B0;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_914CC;
  v25 = &block_descriptor_98;
  v20 = _Block_copy(&aBlock);

  [v18 animateWithDuration:550 delay:v20 options:0 animations:0.15 completion:0.02];
  _Block_release(v20);
  return a5();
}

uint64_t sub_2AB120(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = swift_beginAccess();
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 24);
    v12 = objc_opt_self();
    v13 = *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v11;
    aBlock[4] = sub_74D00;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_110;
    v15 = _Block_copy(aBlock);
    sub_A0EF8(v10, v11);

    [v12 transitionWithView:v13 duration:5242914 options:v15 animations:0 completion:0.1];
    sub_2B8D4(v10, v11);
    _Block_release(v15);
  }

  v16 = a3(v9);
  return a5(v16);
}

id sub_2AB2A8()
{
  ObjectType = swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  if (objc_msgSendSuper2(&v16, "isEnabled"))
  {
    v15.receiver = v0;
    v15.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v15, "isHighlighted");
    v3 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
    if (v2)
    {
      swift_beginAccess();
      if (v3[8] != 1)
      {
        goto LABEL_14;
      }

      v4 = *v3;
      if (*v3 <= 1)
      {
        if (v4)
        {
          v12 = _UISolariumEnabled();
          v5 = objc_opt_self();
          v6 = &selRef_tintColor;
          if (v12)
          {
            v6 = &selRef_whiteColor;
          }
        }

        else
        {
          v5 = objc_opt_self();
          v6 = &selRef_tintColor;
        }

        goto LABEL_15;
      }

      if (v4 == 2)
      {
        v5 = objc_opt_self();
        v6 = &selRef_whiteColor;
      }

      else
      {
LABEL_14:
        v5 = objc_opt_self();
        v6 = &selRef_labelColor;
      }

LABEL_15:
      v9 = [v5 *v6];
      v10 = [v9 colorWithAlphaComponent:0.5];

      return v10;
    }

    swift_beginAccess();
    if (v3[8] != 1)
    {
      goto LABEL_18;
    }

    v8 = *v3;
    if (*v3 <= 1)
    {
      if (v8)
      {
        v13 = _UISolariumEnabled();
        v14 = objc_opt_self();
        if (v13)
        {
          v7 = [v14 whiteColor];
        }

        else
        {
          v7 = [v14 tintColor];
        }
      }

      else
      {
        v7 = [objc_opt_self() tintColor];
      }

      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v7 = [objc_opt_self() whiteColor];
    }

    else
    {
LABEL_18:
      v7 = [objc_opt_self() labelColor];
    }
  }

  else
  {
    v7 = [objc_opt_self() secondaryLabelColor];
  }

LABEL_19:

  return v7;
}

void sub_2AB508(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view];
  if (!v3)
  {
    return;
  }

  if (a1)
  {
    sub_124C4(0, &qword_3FBD90);
    v17 = v3;
    v5 = a1;
    v6 = sub_30D098();

    if (v6)
    {

      return;
    }
  }

  else
  {
    v7 = v3;
  }

  v8 = [v2 window];
  if (v8)
  {

    v9 = [objc_opt_self() areAnimationsEnabled];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v2;
  *(v11 + 32) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2AD9A0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_74D00;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D688;
  aBlock[3] = &block_descriptor_120;
  v13 = _Block_copy(aBlock);
  v14 = v3;
  v15 = v2;

  [v10 performWithoutAnimation:v13];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_2AB764(void *a1, void *a2, char a3)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a2 addSubview:a1];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_317F20;
  v8 = [a1 centerXAnchor];
  v9 = [a2 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [a1 centerYAnchor];
  v12 = [a2 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v6 activateConstraints:isa];

  if (a3)
  {

    [a2 layoutIfNeeded];
  }
}

float sub_2ABA60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  return v1;
}

float sub_2ABAD4@<S0>(float *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2ABB54(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_30CF08();
}

uint64_t sub_2ABBF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  return v1;
}

uint64_t sub_2ABC60@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  *a1 = v3;
  return result;
}

uint64_t sub_2ABCDC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_30CF08();
}

id sub_2ABD4C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB88);
  v9 = *(v25 - 8);
  __chkstk_darwin(v25);
  v11 = &v24 - v10;
  v12 = sub_30CF58();
  __chkstk_darwin(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__progress;
  LODWORD(v28) = 0;
  sub_30CF48();
  sub_30CEE8();
  (*(v14 + 32))(&v4[v17], v16, v13);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__progressTintColor;
  v28 = 0;
  sub_30CF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB68);
  sub_2ACCBC();
  sub_30CEE8();
  v19 = *(v9 + 32);
  v20 = v25;
  v19(&v4[v18], v11, v25);
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__trackTintColor;
  v28 = 0;
  sub_30CF48();
  sub_30CEE8();
  v19(&v4[v21], v11, v20);
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v22 setSemanticContentAttribute:1];
  [v22 setOpaque:0];
  [v22 setContentMode:3];
  sub_124C4(0, &qword_4019C0);
  sub_30C9E8();
  sub_30CF98();

  swift_unknownObjectRelease();

  return v22;
}

CGContext *sub_2AC1A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_302DE8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIGraphicsGetCurrentContext();
  if (result)
  {
    v45 = result;
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v14 = CGRectGetHeight(v47) * 0.5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_30CEF8();

    v15 = v46;
    if (!v46)
    {
      v15 = [objc_opt_self() systemGray3Color];
    }

    v16 = objc_opt_self();
    v17 = [v16 bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, v14}];
    [v15 setFill];
    [v17 fill];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_30CEF8();

    v18 = fminf(*&v46, 1.0);
    if (*&v46 < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v18;
    }

    v48.origin.x = a1;
    v48.origin.y = a2;
    v48.size.width = a3;
    v48.size.height = a4;
    v20 = CGRectGetWidth(v48) * v19;
    if (v20 > 2.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 2.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_30CEF8();

    v22 = v46;
    if (!v46)
    {
      v22 = [v4 tintColor];
      if (!v22)
      {
        v22 = [objc_opt_self() blackColor];
      }
    }

    v23 = v12;
    v24 = [v4 effectiveUserInterfaceLayoutDirection];
    v44 = v15;
    v25 = v9;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    if (v24 == &dword_0 + 1)
    {
      v30 = CGRectGetWidth(*&v26) - v21;
      v49.origin.x = a1;
      v49.origin.y = a2;
      v49.size.width = a3;
      v49.size.height = a4;
      Height = CGRectGetHeight(v49);
    }

    else
    {
      Height = CGRectGetHeight(*&v26);
      v30 = 0.0;
    }

    v32 = [v16 bezierPathWithRect:{v30, 0.0, v21, Height}];
    [v22 setFill];
    v33 = [v32 CGPath];
    v34 = [v17 CGPath];
    v43 = v22;
    v35 = v34;
    v42 = v17;
    v36 = enum case for CGPathFillRule.winding(_:);
    v37 = *(v10 + 104);
    v37(v23, enum case for CGPathFillRule.winding(_:), v25);
    v38 = sub_30D318();

    v39 = *(v10 + 8);
    v39(v23, v25);
    v40 = v45;
    CGContextAddPath(v45, v38);

    v37(v23, v36, v25);
    sub_30C698();

    return (v39)(v23, v25);
  }

  return result;
}

uint64_t sub_2AC7BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

id sub_2AC818(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return PlayButton.theme.setter(&v3);
}

uint64_t sub_2AC858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  return sub_EB00(v3 + v4, a2, &qword_3FEA58);
}

void sub_2AC8F0()
{
  sub_2ACA24();
  if (v0 <= 0x3F)
  {
    sub_309858();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2ACA24()
{
  if (!qword_40CAD0)
  {
    sub_309778();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40CAD0);
    }
  }
}

void sub_2ACAD8()
{
  sub_2ACBA4();
  if (v0 <= 0x3F)
  {
    sub_2ACC24();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2ACBA4()
{
  if (!qword_40CB58)
  {
    sub_30CF58();
    v0 = sub_30CF18();
    if (!v1)
    {
      atomic_store(v0, &qword_40CB58);
    }
  }
}

void sub_2ACC24()
{
  if (!qword_40CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40CB68);
    sub_30CF58();
    sub_2ACCBC();
    v0 = sub_30CF18();
    if (!v1)
    {
      atomic_store(v0, &qword_40CB60);
    }
  }
}

unint64_t sub_2ACCBC()
{
  result = qword_40CB70;
  if (!qword_40CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40CB68);
    sub_2ACD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40CB70);
  }

  return result;
}

unint64_t sub_2ACD40()
{
  result = qword_40CB78;
  if (!qword_40CB78)
  {
    sub_124C4(255, &qword_3FFD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40CB78);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2ACDF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2ACE38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2ACF64()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  v2 = sub_309778();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_centeringView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_symbolSwapView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for SwapView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressView;
  type metadata accessor for SimpleProgressView(0);
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_progressWidthConstraint) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_subscriptions) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_waveformView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_2AD114()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB88);
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = &v14 - v2;
  v4 = sub_30CF58();
  __chkstk_darwin(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__progress;
  LODWORD(v15) = 0;
  sub_30CF48();
  sub_30CEE8();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__progressTintColor;
  v15 = 0;
  sub_30CF48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB68);
  sub_2ACCBC();
  sub_30CEE8();
  v11 = *(v1 + 32);
  v12 = v14;
  v11(v0 + v10, v3, v14);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D8618SimpleProgressView__trackTintColor;
  v15 = 0;
  sub_30CF48();
  sub_30CEE8();
  v11(v0 + v13, v3, v12);
  sub_30D648();
  __break(1u);
}

uint64_t sub_2AD404@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2, a2[1]);
  *a3 = result;
  return result;
}

uint64_t sub_2AD440()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2AD52C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AD578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2AD5C0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2AD608()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_309858();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2AD72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2AD79C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBB8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));

  return sub_2AA62C(v2, v3, v4, v5);
}

uint64_t sub_2AD830()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t objectdestroy_82Tm()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2AD910()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_2AD948(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

void sub_2AD954(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_2AD960()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_2AD9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2ADA2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2ADA74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2ADAB4()
{
  sub_2AD578(&qword_40CBB0, type metadata accessor for PlayButton);
  swift_unknownObjectRetain();
  return sub_309868();
}

uint64_t sub_2ADBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_309778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3078A8();
  if (v6)
  {
    v7 = v6;
    v21 = v6;
    v8 = sub_30B038();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBA0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      goto LABEL_5;
    }

    sub_3076F8();
    if (swift_dynamicCastClass())
    {
LABEL_5:
      if (!sub_307838())
      {
        v24[3] = v8;
        v24[4] = sub_142590();
        v24[0] = v7;

        sub_30B018();
        sub_309748();
LABEL_16:

        (*(v3 + 32))(a1, v5, v2);
        v15 = 0;
        return (*(v3 + 56))(a1, v15, 1, v2);
      }

      sub_2D247C(v24);
      v22 = v8;
      v23 = sub_142590();
      v21 = v7;

      v19 = sub_30B258();
      v18 = sub_30B248();
      v17[3] = v9;
      v10 = sub_303E48();
      v12 = v11;
      if (v10 == sub_303E48() && v12 == v13)
      {
      }

      else
      {
        v14 = sub_30D728();

        if ((v14 & 1) == 0)
        {
          v20 = 1;
          sub_2D227C(&v20);
          goto LABEL_15;
        }
      }

      v20 = 1;
      sub_2D1E90(&v20);
LABEL_15:
      sub_2ADEE8(v24);
      sub_309718();

      goto LABEL_16;
    }
  }

  v15 = 1;
  return (*(v3 + 56))(a1, v15, 1, v2);
}

id sub_2ADF90()
{
  v1 = v0;
  v2 = sub_309778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PlayButtonWrapper();
  v16 = *(v1 + v15[6]);
  sub_74B34(v1, v14);
  v17 = v15[5];
  v42 = v1;
  v18 = v1 + v17;
  v19 = *v18;
  v20 = *(v18 + 8);
  sub_74B34(v14, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_E8528(v11);
    v21 = 0;
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    sub_309878();
    swift_allocObject();

    v21 = sub_309788();
    (*(v3 + 8))(v8, v2);
  }

  aBlock = v19;
  LOBYTE(v44) = v20;
  v22 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&aBlock, 0, v21);
  v24 = v23;
  sub_E8528(v14);
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *&v24[v25] = v16;
  v26 = v24;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDFF8);
  objc_allocWithZone(v27);
  v28 = v26;
  v29 = sub_2AF1E4(v28);
  LODWORD(v30) = 1144750080;
  [v29 setContentHuggingPriority:1 forAxis:v30];
  LODWORD(v31) = 1132068864;
  [v29 setContentHuggingPriority:0 forAxis:v31];
  LODWORD(v32) = 1132068864;
  [v29 setContentCompressionResistancePriority:0 forAxis:v32];
  if (*(v42 + v15[7] + 32))
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    sub_30CB58();
  }

  v49.receiver = v29;
  v49.super_class = v27;
  objc_msgSendSuper2(&v49, "setHitTestDirectionalInsets:", top, leading, bottom, trailing);
  sub_2AEEA8();
  v37 = swift_allocObject();
  *(v37 + 16) = v28;
  v47 = sub_2AFA2C;
  v48 = v37;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_71CC8;
  v46 = &block_descriptor_10_2;
  v38 = _Block_copy(&aBlock);
  v39 = v28;
  v40 = v29;

  [v40 setAccessibilityCustomActionsBlock:v38];
  _Block_release(v38);

  return v40;
}

id sub_2AE3F8(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "setHitTestDirectionalInsets:", a1, a2, a3, a4);
  return sub_2AF038();
}

double sub_2AE464(char *a1)
{
  v2 = sub_309858();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  sub_3097B8();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(UIAccessibilityCustomAction);
  v9 = a1;
  v10 = sub_30C098();

  aBlock[4] = sub_74BEC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_74234;
  aBlock[3] = &block_descriptor_16_0;
  v11 = _Block_copy(aBlock);
  v12 = [v8 initWithName:v10 actionHandler:v11];

  _Block_release(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v13 = swift_allocObject();
  *&result = 1;
  *(v13 + 16) = xmmword_31BF90;
  *(v13 + 32) = v12;
  return result;
}

id sub_2AE680(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = *&a1[qword_40CBD0];
  v8 = type metadata accessor for PlayButtonWrapper();
  v9 = *(v2 + v8[6]);
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *&v7[v10] = v9;

  v11 = v2 + v8[5];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[8];
  *v14 = v12;
  v14[8] = v13;
  if (v16 != 1)
  {
    if (v15 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_13;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      if (v12 == 2)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v12 > 2)
      {
        v21 = v13;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_13;
  }

  if (v15)
  {
    if (v12 == 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      goto LABEL_29;
    }

LABEL_13:

    sub_2A5A44();
    goto LABEL_30;
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:

LABEL_30:
  sub_74B34(v2, v6);
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_749E4(v6, &v7[v22]);
  swift_endAccess();
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_74A54;
  *(v25 + 24) = v24;
  aBlock[4] = sub_293C0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D688;
  aBlock[3] = &block_descriptor_66;
  v26 = _Block_copy(aBlock);
  v27 = v7;

  [v23 performWithoutAnimation:v26];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_E8528(v6);
    if (*(v2 + v8[7] + 32))
    {
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
    }

    else
    {
      sub_30CB58();
      top = v34;
      leading = v35;
      bottom = v36;
      trailing = v37;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDFF8);
    v39.receiver = a1;
    v39.super_class = v38;
    objc_msgSendSuper2(&v39, "setHitTestDirectionalInsets:", top, leading, bottom, trailing);
    return sub_2AEEA8();
  }

  return result;
}

uint64_t sub_2AEA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2AFA34(&qword_40CD18);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2AEAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2AFA34(&qword_40CD18);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_2AEB30()
{
  sub_2AFA34(&qword_40CD18);
  sub_305D08();
  __break(1u);
}

id sub_2AEBAC(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v7 = sub_2AED0C(v3, a2, a3);
    v8 = *&v3[v4];
    *&v3[v4] = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_2AEC28(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v9 = [*&v3[qword_40CBD0] *a2];
    v10 = [v3 *a2];
    v11 = [v9 *a3];

    v12 = *&v3[v4];
    *&v3[v4] = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_2AED0C(char *a1, SEL *a2, SEL *a3)
{
  v6 = [*&a1[qword_40CBD0] *a2];
  v7 = [a1 *a2];
  v8 = [v6 *a3];

  return v8;
}

double sub_2AED9C(void *a1)
{
  v1 = a1;
  sub_2AEDF8();
  v3 = v2;

  return v3;
}

id sub_2AEDF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "hitTestDirectionalInsets");
}

void sub_2AEE30(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_2AE3F8(a2, a3, a4, a5);
}

id sub_2AEEA8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_40CBD0];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "hitTestDirectionalInsets");
  [v2 setHitTestDirectionalInsets:?];
  v3 = sub_2AEC28(&qword_40CBD8, &selRef_topAnchor, &selRef_constraintEqualToAnchor_);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v3 setConstant:-v4];

  v5 = sub_2AEC28(&qword_40CBE8, &selRef_leadingAnchor, &selRef_constraintEqualToAnchor_);
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "hitTestDirectionalInsets");
  [v5 setConstant:-v6];

  v7 = sub_2AEC28(&qword_40CBE0, &selRef_bottomAnchor, &selRef_constraintEqualToAnchor_);
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "hitTestDirectionalInsets");
  [v7 setConstant:v8];

  v9 = sub_2AEC28(&qword_40CBF0, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "hitTestDirectionalInsets");
  [v9 setConstant:v10];

  return [v0 invalidateIntrinsicContentSize];
}

id sub_2AF038()
{
  v1 = *&v0[qword_40CBD0];
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v1 setHitTestDirectionalInsets:?];
  v2 = sub_2AEBAC(&qword_40CBD8, &selRef_topAnchor, &selRef_constraintEqualToAnchor_);
  ObjectType = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v2 setConstant:-v4];

  v5 = sub_2AEBAC(&qword_40CBE8, &selRef_leadingAnchor, &selRef_constraintEqualToAnchor_);
  v6 = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v5 setConstant:-v7];

  v8 = sub_2AEBAC(&qword_40CBE0, &selRef_bottomAnchor, &selRef_constraintEqualToAnchor_);
  v9 = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v8 setConstant:v10];

  v11 = sub_2AEBAC(&qword_40CBF0, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  v12 = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = v12;
  objc_msgSendSuper2(&v15, "hitTestDirectionalInsets");
  [v11 setConstant:v13];

  return [v0 invalidateIntrinsicContentSize];
}

id sub_2AF1E4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_40CBD8] = 0;
  *&v1[qword_40CBE0] = 0;
  *&v1[qword_40CBE8] = 0;
  *&v1[qword_40CBF0] = 0;
  *&v1[qword_40CBD0] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 100.0, 100.0);
  v6 = v4;
  v7 = v5;
  [v7 addSubview:{v6, v12.receiver, v12.super_class}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_31D480;
  *(v9 + 32) = sub_2AEC28(&qword_40CBD8, &selRef_topAnchor, &selRef_constraintEqualToAnchor_);
  *(v9 + 40) = sub_2AEC28(&qword_40CBE0, &selRef_bottomAnchor, &selRef_constraintEqualToAnchor_);
  *(v9 + 48) = sub_2AEC28(&qword_40CBE8, &selRef_leadingAnchor, &selRef_constraintEqualToAnchor_);
  *(v9 + 56) = sub_2AEC28(&qword_40CBF0, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  sub_91304();
  isa = sub_30C358().super.isa;

  [v8 activateConstraints:isa];

  return v7;
}

double sub_2AF414(void *a1)
{
  v1 = a1;
  v2 = sub_2AF458();

  return v2;
}

double sub_2AF458()
{
  [*&v0[qword_40CBD0] intrinsicContentSize];
  v2 = v1;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "hitTestDirectionalInsets");
  v4 = v3;
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "hitTestDirectionalInsets");
  v7 = v2 - (v4 + v6);
  v8 = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = v8;
  objc_msgSendSuper2(&v11, "hitTestDirectionalInsets");
  v9 = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, "hitTestDirectionalInsets");
  return v7;
}

void sub_2AF554(uint64_t a1)
{
  v2 = *(a1 + qword_40CBF0);
}

void sub_2AF5E8()
{
  *(v0 + qword_40CBD8) = 0;
  *(v0 + qword_40CBE0) = 0;
  *(v0 + qword_40CBE8) = 0;
  *(v0 + qword_40CBF0) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2AF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
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

uint64_t sub_2AF794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
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

uint64_t type metadata accessor for PlayButtonWrapper()
{
  result = qword_40CCD0;
  if (!qword_40CCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2AF8A4()
{
  sub_2ACA24();
  if (v0 <= 0x3F)
  {
    sub_30B9A8();
    if (v1 <= 0x3F)
    {
      sub_2AF948();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2AF948()
{
  if (!qword_40CCE0)
  {
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40CCE0);
    }
  }
}

uint64_t sub_2AF9CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2AFA34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayButtonWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2AFA90()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2AFC2C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_30C098();
  v3 = [v0 player];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentItem];

    if (v5)
    {
      v7 = v5;
      sub_2B01D4();
      v5 = sub_30D718();
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 addObserver:v0 selector:"playerItemDidPlayToEndWithNotification:" name:v2 object:v5];

  return swift_unknownObjectRelease();
}

unint64_t sub_2B01D4()
{
  result = qword_40CD60;
  if (!qword_40CD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_40CD60);
  }

  return result;
}

void PPTViewControllerProxy.init(tabBarController:)(void *a1@<X0>, void *a2@<X8>)
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1 && (v5 = v4, ObjectType = swift_getObjectType(), v7 = *(v5 + 8), v8 = *(v7 + 16), v9 = a1, (v10 = v8(ObjectType, v7)) != 0))
  {
    v12 = v10;
    v13 = v11;

    *a2 = v9;
    a2[1] = v12;
    a2[2] = v13;
  }

  else
  {
    sub_30D648();
    __break(1u);
  }
}

void PPTViewControllerProxy.prepareForTesting(testCase:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v4 = sub_301DC8();
  v85 = *(v4 - 8);
  __chkstk_darwin(v4);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v74 - v7;
  v79 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v79);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_308778();
  v9 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v11 - 8);
  v83 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v20 = *v2;
  v19 = *(v2 + 8);
  v21 = *(v2 + 16);
  type metadata accessor for ParentFlowController();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  v74 = v4;
  v87 = v19;
  swift_unknownObjectRetain();
  v78 = v20;
  v24 = [v20 traitCollection];
  v25 = sub_30CA08();

  v84 = v9;
  if ((v25 & 1) == 0)
  {
    v30 = v89;
    v31 = *(v89 + 64);
    sub_BA538(v31);
    goto LABEL_8;
  }

  v26 = type metadata accessor for PerformanceTestCase();
  sub_2B0AE8(v89 + *(v26 + 36), v18);
  v27 = *(v9 + 48);
  v28 = v9;
  v29 = v88;
  if (v27(v18, 1, v88) == 1)
  {
    sub_2B0B58(v18);
    v30 = v89;
  }

  else
  {
    v31 = sub_240D6C();
    (*(v28 + 8))(v18, v29);
    v30 = v89;
    if (v31 != 19)
    {
      goto LABEL_8;
    }
  }

  v31 = *(v30 + 64);
  sub_BA538(v31);
  sub_BA54C(19);
LABEL_8:
  ObjectType = swift_getObjectType();
  v33 = *(v30 + 72);
  sub_BA538(v31);
  FlowController.change(tab:popToRoot:userInitiated:)(v31, v33, 1, ObjectType, v21);
  sub_1DB3C(v31);
  v34 = *(*(v23 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 24);
  v35 = swift_getObjectType();
  v36 = (*(v34 + 24))(v35, v34);
  if (!v36)
  {
    sub_1DB3C(v31);
    swift_unknownObjectRelease();
LABEL_12:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v37 = v36;
  v77 = a2;
  v75 = [v36 visibleViewController];
  [v75 loadViewIfNeeded];
  v38 = type metadata accessor for PerformanceTestCase();
  v39 = *(v38 + 36);
  sub_2B0AE8(v30 + v39, v15);
  v40 = v84;
  v41 = *(v84 + 48);
  v42 = v88;
  v43 = v41(v15, 1, v88);
  v76 = v37;
  if (v43 == 1)
  {
    sub_2B0B58(v15);
    v45 = v85;
    v44 = v86;
  }

  else
  {
    v46 = sub_240D6C();
    (*(v40 + 8))(v15, v42);
    v47 = v46;
    v48 = v46 == 19;
    v45 = v85;
    v44 = v86;
    if (!v48)
    {
      sub_BA54C(v47);
LABEL_19:
      v55 = v77;
      goto LABEL_20;
    }
  }

  v49 = v89 + v39;
  v50 = v83;
  sub_2B0AE8(v49, v83);
  if (v41(v50, 1, v42) == 1)
  {
    sub_2B0B58(v50);
    goto LABEL_19;
  }

  (*(v84 + 32))(v44, v50, v42);
  v51 = v37;
  v52 = UIResponder.nearestFlowController.getter();
  v54 = v53;

  v55 = v77;
  if (v52)
  {
    v85 = swift_getObjectType();
    v56 = *(v38 + 40);
    v57 = sub_30A4E8();
    v58 = v80;
    (*(*(v57 - 8) + 16))(v80, v89 + v56, v57);
    v59 = v79;
    v60 = (v58 + *(v79 + 36));
    *v60 = 0u;
    v60[1] = 0u;
    v61 = v59[7];
    v62 = enum case for FlowDestinationPageHeader.standard(_:);
    v63 = sub_30AA18();
    (*(*(v63 - 8) + 104))(v58 + v61, v62, v63);
    *(v58 + v59[5]) = 0;
    v64 = v58 + v59[6];
    *(v64 + 32) = 0;
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 40) = -1;
    *(v58 + v59[8]) = 0;
    v65 = v86;
    (*(v54 + 32))(v86, v58, 0, 0, v85, v54);
    swift_unknownObjectRelease();
    sub_25A8A8(v58);
    v66 = [objc_opt_self() mainRunLoop];
    v67 = v81;
    sub_301DB8();
    v68 = v82;
    sub_301D18();
    v69 = *(v45 + 8);
    v70 = v74;
    v69(v67, v74);
    isa = sub_301D98().super.isa;
    v69(v68, v70);
    [v66 runUntilDate:isa];

    (*(v84 + 8))(v65, v88);
LABEL_20:
    v72 = v78;
    v73 = v75;
    sub_2A1630(v72, v75, v55);
    sub_1DB3C(v31);
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

uint64_t sub_2B0AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B0B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2B0DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_contextViewController] = 0;

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_2B1320;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_67;
  v9 = _Block_copy(aBlock);
  sub_A0EF8(a2, a3);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_2B0EF0(void (*a1)(uint64_t), uint64_t a2, char *a3)
{
  if (a1)
  {

    a1(v6);
    sub_2B8D4(a1, a2);
  }

  v7 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_dismissOverride];
  if (v7)
  {
    v8 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews33PresentationContextViewController_dismissOverride + 8];

    v7(v9);

    sub_2B8D4(v7, v8);
  }

  else
  {
    v10 = [a3 presentingViewController];
    if (v10)
    {
      v11 = v10;
      [v10 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_2B10E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2B1214(uint64_t a1)
{
  result = sub_2B123C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2B123C()
{
  result = qword_40CDB8;
  if (!qword_40CDB8)
  {
    type metadata accessor for PresentationContextViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40CDB8);
  }

  return result;
}

uint64_t sub_2B1290()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2B12D8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2B136C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_2B13B8(void *a1, void *a2, double a3, double a4)
{
  v7 = [objc_allocWithZone(UIImageAsset) init];
  v8 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v8 format:{a3, a4}];

  v10 = objc_opt_self();
  v11 = [v10 traitCollectionWithUserInterfaceStyle:1];
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a1;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2B3DF4;
  *(v13 + 24) = v12;
  v36 = sub_293C0;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_19D688;
  v35 = &block_descriptor_68;
  v14 = _Block_copy(&aBlock);
  v15 = v9;
  v16 = a1;
  v17 = v7;

  v30 = v11;
  [v11 performAsCurrentTraitCollection:v14];
  _Block_release(v14);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v19 = [v10 traitCollectionWithUserInterfaceStyle:2];
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = a2;
    *(v20 + 32) = v16;
    *(v20 + 40) = a3;
    *(v20 + 48) = a4;
    *(v20 + 56) = v17;
    *(v20 + 64) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_2B3E74;
    *(v21 + 24) = v20;
    v36 = sub_74D04;
    v37 = v21;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_19D688;
    v35 = &block_descriptor_20_0;
    v22 = _Block_copy(&aBlock);
    v23 = a2;
    v24 = v19;

    v25 = v15;
    v26 = v16;
    v27 = v17;

    [v24 performAsCurrentTraitCollection:v22];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      v28 = [objc_allocWithZone(UITraitCollection) init];
      v29 = [v27 imageWithTraitCollection:v28];

      return v29;
    }
  }

  __break(1u);
  return result;
}

void sub_2B17A0(void *a1, void *a2, void *a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2B3F90;
  *(v11 + 24) = v10;
  v16[4] = sub_2B401C;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_2B136C;
  v16[3] = &block_descriptor_39_0;
  v12 = _Block_copy(v16);
  v13 = a2;

  v14 = [a1 imageWithActions:v12];
  _Block_release(v12);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v15 = [objc_allocWithZone(UITraitCollection) init];
    [a3 registerImage:v14 withTraitCollection:v15];
  }
}

void sub_2B1960(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a6;
  *(v14 + 40) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2B3ED8;
  *(v15 + 24) = v14;
  v20[4] = sub_2B3F30;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_2B136C;
  v20[3] = &block_descriptor_29_2;
  v16 = _Block_copy(v20);
  v17 = a2;
  v18 = a3;

  v19 = [a1 imageWithActions:v16];
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    [a4 registerImage:v19 withTraitCollection:a5];
  }
}

char *sub_2B1B14(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_ratingView] = [objc_allocWithZone(type metadata accessor for ReviewRatingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView] = v3;
  v49.receiver = v1;
  v49.super_class = type metadata accessor for RatingRowView();
  v4 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_ratingView;
  v6 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_ratingView];
  v7 = v6[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize];
  v6[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize] = 5;
  v8 = v4;
  if (v7 != 5)
  {
    [v6 setNeedsDisplay];
  }

  v9 = *&v4[v5];
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_showsEmptyStars] = 0;
  [v9 setNeedsLayout];
  v10 = *&v4[v5];
  v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating];
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = a1;
  if (v11 != a1)
  {
    [v10 setNeedsDisplay];
  }

  v12 = *&v4[v5];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 secondaryLabelColor];
  [v14 setTintColor:v15];

  [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v4[v5];
  v17 = v8;
  [v17 addSubview:v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31BF90;
  v19 = [*&v4[v5] centerYAnchor];
  v20 = [v17 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(inited + 32) = v21;
  sub_14A360(inited);
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView;
  v23 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView];
  v24 = [v13 systemFillColor];
  v25 = sub_2B13B8(v24, 0, 1.0, 2.0);

  [v23 setTrackImage:v25];
  v26 = *&v17[v22];
  v27 = [v13 secondaryLabelColor];
  v28 = sub_2B13B8(v27, 0, 1.0, 2.0);

  [v26 setProgressImage:v28];
  v29 = [*&v17[v22] layer];
  [*&v17[v22] bounds];
  [v29 setCornerRadius:CGRectGetHeight(v53) * 0.5];

  [*&v17[v22] setClipsToBounds:1];
  [*&v17[v22] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 addSubview:*&v17[v22]];
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_31D480;
  v31 = [*&v17[v22] leadingAnchor];
  v32 = [*&v4[v5] trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:12.0];

  sub_30C888();
  isa = sub_30CA28(v50).super.isa;

  *(v30 + 32) = isa;
  v35 = [*&v17[v22] leadingAnchor];
  v36 = [v17 leadingAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:50.0];
  sub_30C888();
  v38 = sub_30CA28(v51).super.isa;

  *(v30 + 40) = v38;
  v39 = [*&v17[v22] trailingAnchor];
  v40 = [v17 trailingAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  sub_30C888();
  v42 = sub_30CA28(v52).super.isa;

  *(v30 + 48) = v42;
  v43 = [*&v17[v22] centerYAnchor];
  v44 = [v17 centerYAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v30 + 56) = v45;
  sub_14A360(v30);
  v46 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  v47 = sub_30C358().super.isa;
  [v46 activateConstraints:v47];

  return v17;
}

id sub_2B2230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_2B22D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_objectGraph] = 0;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_currentRatingLabel] = v10;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_outOfRatingLabel] = v11;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingCountLabel] = v12;
  v13 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack] = v13;
  v76.receiver = v4;
  v76.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_currentRatingLabel;
  v17 = qword_3FADD0;
  v18 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_currentRatingLabel];
  if (v17 != -1)
  {
    swift_once();
  }

  v73 = xmmword_42A6F0;
  v74 = unk_42A700;
  v75[0] = xmmword_42A710;
  *(v75 + 10) = *(&xmmword_42A710 + 10);
  v71 = xmmword_42A6D0;
  v72 = *&qword_42A6E0;
  v69 = objc_opt_self();
  v19 = [v69 system];
  v20 = [v19 preferredContentSizeCategory];

  v70 = objc_opt_self();
  v21 = [v70 traitCollectionWithPreferredContentSizeCategory:v20];

  v22 = sub_2DAA3C(&v71, v21);
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v22 size:0.0];

  [v18 setFont:v24];
  [*&v14[v16] setTextAlignment:1];
  v25 = *&v14[v16];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 labelColor];
  v29 = [v28 colorWithAlphaComponent:0.7];

  [v27 setTextColor:v29];
  v30 = [v14 contentView];
  [v30 addSubview:*&v14[v16]];

  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack;
  [*&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack] setAxis:1];
  [*&v14[v31] setAlignment:0];
  [*&v14[v31] setDistribution:1];
  v32 = type metadata accessor for RatingRowView();
  v33 = objc_allocWithZone(v32);
  v34 = sub_2B1B14(5uLL);
  [*&v14[v31] addArrangedSubview:v34];

  v35 = objc_allocWithZone(v32);
  v36 = sub_2B1B14(4uLL);
  [*&v14[v31] addArrangedSubview:v36];

  v37 = objc_allocWithZone(v32);
  v38 = sub_2B1B14(3uLL);
  [*&v14[v31] addArrangedSubview:v38];

  v39 = objc_allocWithZone(v32);
  v40 = sub_2B1B14(2uLL);
  [*&v14[v31] addArrangedSubview:v40];

  v41 = objc_allocWithZone(v32);
  v42 = sub_2B1B14(1uLL);
  [*&v14[v31] addArrangedSubview:v42];

  v43 = v14;
  v44 = [v43 contentView];
  [v44 addSubview:*&v14[v31]];

  v45 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingCountLabel;
  v46 = qword_3FAE00;
  v47 = *&v43[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingCountLabel];
  if (v46 != -1)
  {
    swift_once();
  }

  v73 = xmmword_42A930;
  v74 = *&qword_42A940;
  v75[0] = xmmword_42A950;
  *(v75 + 10) = *(&xmmword_42A950 + 10);
  v71 = xmmword_42A910;
  v72 = unk_42A920;
  v48 = [v69 system];
  v49 = [v48 preferredContentSizeCategory];

  v50 = [v70 traitCollectionWithPreferredContentSizeCategory:v49];
  v51 = sub_2DAA3C(&v71, v50);
  v52 = [v23 fontWithDescriptor:v51 size:0.0];

  [v47 setFont:v52];
  v53 = *&v43[v45];
  v54 = [v26 secondaryLabelColor];
  [v53 setTextColor:v54];

  v55 = *&v43[v45];
  LODWORD(v54) = [v43 effectiveUserInterfaceLayoutDirection] != &dword_0 + 1;

  [v55 setTextAlignment:2 * v54];
  v56 = [v43 contentView];
  [v56 addSubview:*&v43[v45]];

  v57 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_outOfRatingLabel;
  v58 = qword_3FAE08;
  v59 = *&v43[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_outOfRatingLabel];
  if (v58 != -1)
  {
    swift_once();
  }

  v73 = xmmword_42A990;
  v74 = *&qword_42A9A0;
  v75[0] = xmmword_42A9B0;
  *(v75 + 10) = *(&xmmword_42A9B0 + 10);
  v71 = xmmword_42A970;
  v72 = unk_42A980;
  v60 = [v69 system];
  v61 = [v60 preferredContentSizeCategory];

  v62 = [v70 traitCollectionWithPreferredContentSizeCategory:v61];
  v63 = sub_2DAA3C(&v71, v62);
  v64 = [v23 fontWithDescriptor:v63 size:0.0];

  [v59 setFont:v64];
  [*&v43[v57] setTextAlignment:1];
  v65 = *&v43[v57];
  v66 = [v26 secondaryLabelColor];
  [v65 setTextColor:v66];

  v67 = [v43 contentView];
  [v67 addSubview:*&v43[v57]];

  return v43;
}

void sub_2B2BD4()
{
  v80.receiver = v0;
  v80.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v80, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 layoutMargins];
  v11 = v10;
  v13 = v12;

  v14 = [v0 effectiveUserInterfaceLayoutDirection];
  v15 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_currentRatingLabel];
  v16 = [v15 font];
  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v15 sizeThatFits:{v21, v23}];
  v26 = v25;
  v28 = v27;
  v81.origin.x = v18;
  v81.origin.y = v20;
  v81.size.width = v22;
  v81.size.height = v24;
  v29 = CGRectGetMinY(v81) + 5.0;
  [v17 ascender];
  v31 = v30;
  [v17 capHeight];
  v79 = v29;
  v33 = v29 + v32 - v31;
  v82.origin.x = v18;
  v82.origin.y = v20;
  v82.size.width = v22;
  v82.size.height = v24;
  v77 = v26;
  [v15 setFrame:{CGRectGetMinX(v82), v33, v26, v28}];
  [v15 frame];
  MaxY = CGRectGetMaxY(v83);
  v35 = [v15 font];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v35;
  [v35 descender];
  v38 = v37;

  v39 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_outOfRatingLabel];
  [v39 sizeThatFits:{v22, v24}];
  v78 = v40;
  [v15 frame];
  Width = CGRectGetWidth(v84);
  v85.origin.x = v18;
  v85.origin.y = v20;
  v85.size.width = v22;
  v85.size.height = v24;
  MinX = CGRectGetMinX(v85);
  v43 = [v39 font];
  if (!v43)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = MaxY + v38;
  [v43 ascender];
  v47 = v46;

  v48 = v45 + 23.0 - v47;
  v49 = Width;
  [v39 setFrame:{MinX, v48, Width, v78}];
  v86.origin.x = v18;
  v86.origin.y = v20;
  v86.size.width = v22;
  v86.size.height = v24;
  v50 = CGRectGetWidth(v86) * 0.5 + 50.0;
  [v15 frame];
  v51 = CGRectGetMaxX(v87) + 12.0;
  v88.origin.x = v18;
  v88.origin.y = v20;
  v88.size.width = v22;
  v88.size.height = v24;
  v52 = CGRectGetMaxX(v88) - v50;
  if (v51 >= v52)
  {
    v50 = v50 + v52 - v51;
  }

  else
  {
    v89.origin.x = v18;
    v89.origin.y = v20;
    v89.size.width = v22;
    v89.size.height = v24;
    v51 = CGRectGetMaxX(v89) - v50;
  }

  v53 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack];
  [v53 setFrame:{v51, v79, v50, 44.0}];
  if (v14 == &dword_0 + 1)
  {
    v90.origin.x = v18;
    v90.origin.y = v20;
    v90.size.width = v22;
    v90.size.height = v24;
    v54 = CGRectGetMaxX(v90) - v77;
    [v15 frame];
    [v15 setFrame:v54];
    v91.origin.x = v18;
    v91.origin.y = v20;
    v91.size.width = v22;
    v91.size.height = v24;
    MaxX = CGRectGetMaxX(v91);
    [v39 frame];
    v57 = MaxX - v56 - v49;
    [v39 frame];
    [v39 setFrame:v57];
    v92.origin.x = v18;
    v92.origin.y = v20;
    v92.size.width = v22;
    v92.size.height = v24;
    v58 = CGRectGetMaxX(v92);
    [v53 frame];
    v60 = v58 - v59 - v50;
    [v53 frame];
    [v53 setFrame:v60];
  }

  v61 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingCountLabel];
  [v61 sizeThatFits:{v22, v24}];
  v63 = v62;
  v65 = v64;
  v66 = v18;
  v67 = v20;
  v68 = v22;
  v69 = v24;
  if (v14 == &dword_0 + 1)
  {
    v70 = CGRectGetMinX(*&v66);
    v71 = v20;
    v72 = v70;
  }

  else
  {
    v73 = CGRectGetMaxX(*&v66);
    v71 = v20;
    v72 = v73 - v63;
  }

  v74 = v18;
  v75 = v22;
  v76 = v24;
  [v61 setFrame:{v72, CGRectGetMaxY(*(&v71 - 1)) - v65, v63, v65}];
}

void sub_2B3248(float a1)
{
  v3 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x465F474E49544152;
  v13._object = 0xED000054414D524FLL;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v4.super.isa = v3;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_301AB8(v13, v14, v4, v15, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_315430;
  *(v5 + 56) = &type metadata for Float;
  *(v5 + 64) = &protocol witness table for Float;
  *(v5 + 32) = a1;
  sub_30C0A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_315430;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = -1;
  v7 = NSKernAttributeName;
  sub_2D6CB0(inited);
  swift_setDeallocating();
  sub_CFA98(inited + 32);
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = sub_30C098();

  type metadata accessor for Key(0);
  sub_2B3D64(&qword_3FB410, 255, type metadata accessor for Key);
  isa = sub_30BF88().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_currentRatingLabel) setAttributedText:v11];
}

void sub_2B34B8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingBreakdownStack) arrangedSubviews];
  sub_124C4(0, &qword_3FBD90);
  v2 = sub_30C368();

  if (v2 >> 62)
  {
    v3 = sub_30D668();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_30D578();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    type metadata accessor for RatingRowView();
    [*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC23ShelfKitCollectionViews13RatingRowView_barView) setProgress:0.0];
  }

  while (v3 != v4);
LABEL_10:
}

id sub_2B3728()
{
  v1 = v0;
  sub_30B2D8();
  sub_2B3248(v2);
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_outOfRatingLabel];
  v27 = objc_opt_self();
  v4 = [v27 mainBundle];
  v25._countAndFlagsBits = 0xE000000000000000;
  v29._object = 0x80000000003446D0;
  v29._countAndFlagsBits = 0xD000000000000012;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v5.super.isa = v4;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_301AB8(v29, v31, v5, v33, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_315430;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = 5;
  sub_30C0A8();

  v7 = sub_30C098();

  v8 = &selRef_registerImage_withTraitCollection_;
  [v3 setText:v7];

  object = sub_30B2B8();
  v10 = sub_30B2C8();
  if (v10)
  {
    v11 = v10;
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_15;
    }

    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) == 5)
    {
      v26._object = object;
      v13 = 5;
      while (1)
      {
        v14 = 0;
        object = &selRef_registerImage_withTraitCollection_;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = sub_30D578();
          }

          else
          {
            if (v14 >= *(v12 + 16))
            {
              goto LABEL_14;
            }

            v15 = *(v11 + 8 * v14 + 32);
          }

          v8 = v15;
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          [(SEL *)v15 floatValue];
          *&v18 = v17 / v26._object;
          [v1 setRatingWithProportion:v14 at:v18];

          ++v14;
          if (v16 == v13)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        if (sub_30D668() != 5)
        {
          break;
        }

        v26._object = object;
        v13 = sub_30D668();
        if (!v13)
        {
LABEL_17:

          v8 = &selRef_registerImage_withTraitCollection_;
          object = v26._object;
          goto LABEL_20;
        }
      }
    }
  }

  [v1 clearAllRatings];
LABEL_20:
  v19 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_ratingCountLabel];
  v20 = [v27 mainBundle];
  v26._countAndFlagsBits = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x80000000003446F0;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v21.super.isa = v20;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_301AB8(v30, v32, v21, v34, v26);

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_315430;
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  *(v22 + 32) = object;
  sub_30C0A8();

  v23 = sub_30C098();

  [v19 v8[225]];

  return [v1 setNeedsLayout];
}

uint64_t sub_2B3B18(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ProductRatingCollectionViewCell_objectGraph) = a1;
}

uint64_t sub_2B3B60(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2B3D64(&qword_40CE68, v3, type metadata accessor for ProductRatingCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_2B3D64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2B3DAC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B3E1C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2B3E98()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_2B3ED8()
{
  v1 = v0[4];
  v2 = v0[5];
  if (v0[2])
  {
    v3 = v0[2];
  }

  else
  {
    v3 = v0[3];
  }

  [v3 set];
  v4 = 0;
  v5 = 0;
  v6 = v1;
  v7 = v2;

  UIRectFill(*&v4);
}

uint64_t sub_2B3F58()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_2B3F90()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) set];
  v3 = 0;
  v4 = 0;
  v5 = v1;
  v6 = v2;

  UIRectFill(*&v3);
}

uint64_t sub_2B4020()
{
  if (qword_3FADF8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A8F0 + 10);
  v2[0] = xmmword_42A8B0;
  v2[1] = unk_42A8C0;
  v2[2] = xmmword_42A8D0;
  v2[3] = *&qword_42A8E0;
  *v3 = xmmword_42A8F0;
  xmmword_42ABD0 = xmmword_332B50;
  *&algn_42ABE1[7] = xmmword_42A8B0;
  *(&xmmword_42ABF0 + 8) = unk_42A8C0;
  *(&xmmword_42AC00 + 8) = xmmword_42A8D0;
  byte_42ABE0 = 0;
  *(&xmmword_42AC10 + 8) = *&qword_42A8E0;
  *(&xmmword_42AC20 + 8) = xmmword_42A8F0;
  qword_42AC38 = *(&xmmword_42A8F0 + 10) >> 48;
  word_42AC40 = word_42A908 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

void sub_2B40F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_302AB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewAction] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportAction] = 0;
  type metadata accessor for DynamicTypeButton();
  if (qword_3FADF8 != -1)
  {
    swift_once();
  }

  v56[2] = xmmword_42A8D0;
  v56[3] = *&qword_42A8E0;
  v57[0] = xmmword_42A8F0;
  *(v57 + 10) = *(&xmmword_42A8F0 + 10);
  v56[0] = xmmword_42A8B0;
  v56[1] = unk_42A8C0;
  v60 = xmmword_42A8D0;
  v61 = *&qword_42A8E0;
  v62[0] = xmmword_42A8F0;
  *(v62 + 10) = *(&xmmword_42A8F0 + 10);
  v58 = xmmword_42A8B0;
  v59 = unk_42A8C0;
  sub_8FC54(v56, v54);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton] = sub_2353F0(&v58);
  v60 = xmmword_42A8D0;
  v61 = *&qword_42A8E0;
  v62[0] = xmmword_42A8F0;
  *(v62 + 10) = *(&xmmword_42A8F0 + 10);
  v58 = xmmword_42A8B0;
  v59 = unk_42A8C0;
  v54[2] = xmmword_42A8D0;
  v54[3] = *&qword_42A8E0;
  v55[0] = xmmword_42A8F0;
  *(v55 + 10) = *(&xmmword_42A8F0 + 10);
  v54[0] = xmmword_42A8B0;
  v54[1] = unk_42A8C0;
  sub_8FC54(&v58, &v53);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton] = sub_2353F0(v54);
  v52.receiver = v4;
  v52.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton;
  v17 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton];
  sub_3029D8();
  v18 = sub_302A08();
  (*(v11 + 8))(v13, v10);
  [v17 setImage:v18 forState:0];

  [*&v14[v16] addTarget:v14 action:"writeReviewWithSender:" forControlEvents:64];
  v19 = *&v14[v16];
  v20 = [v14 tintColor];
  [v19 setTitleColor:v20 forState:0];

  v21 = 0.0;
  v22 = 0.0;
  if ([v14 effectiveUserInterfaceLayoutDirection] != &dword_0 + 1)
  {
    v23 = [v14 traitCollection];
    v24 = sub_30C968();

    if (v24)
    {
      v22 = 4.0;
    }

    else
    {
      v22 = 9.0;
    }
  }

  if ([v14 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v25 = [v14 traitCollection];
    v26 = sub_30C968();

    if (v26)
    {
      v21 = 4.0;
    }

    else
    {
      v21 = 9.0;
    }
  }

  [*&v14[v16] setContentEdgeInsets:{0.0, v22, 0.0, v21}];
  v27 = [v14 effectiveUserInterfaceLayoutDirection];
  v28 = [v14 traitCollection];
  v29 = sub_30C968();

  if (v29)
  {
    v30 = -4.0;
  }

  else
  {
    v30 = -9.0;
  }

  if (v29)
  {
    v31 = 4.0;
  }

  else
  {
    v31 = 9.0;
  }

  if (v27 == &dword_0 + 1)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v33 = [v14 effectiveUserInterfaceLayoutDirection];
  v34 = [v14 traitCollection];
  v35 = sub_30C968();

  if (v35)
  {
    v36 = -4.0;
  }

  else
  {
    v36 = -9.0;
  }

  if (v35)
  {
    v37 = 4.0;
  }

  else
  {
    v37 = 9.0;
  }

  if (v33 == &dword_0 + 1)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  [*&v14[v16] setImageEdgeInsets:{0.0, v32, 0.0, v38}];
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton;
  v40 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton];
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = objc_opt_self();
  v43 = v40;
  v44 = [v42 bundleForClass:ObjCClassFromMetadata];
  v45 = sub_30C098();
  v46 = [objc_opt_self() imageNamed:v45 inBundle:v44];

  if (v46)
  {
    v47 = [v46 imageWithRenderingMode:2];

    [v43 setImage:v47 forState:0];
    [*&v14[v39] addTarget:v14 action:"supportWithSender:" forControlEvents:64];
    v48 = *&v14[v39];
    v49 = [v14 tintColor];

    [v48 setTitleColor:v49 forState:0];
    [*&v14[v39] setContentEdgeInsets:{0.0, v22, 0.0, v21}];
    [*&v14[v39] setImageEdgeInsets:{0.0, v32, 0.0, v38}];
    v50 = [v14 contentView];
    [v50 addSubview:*&v14[v16]];

    v51 = [v14 contentView];
    [v51 addSubview:*&v14[v39]];
  }

  else
  {
    __break(1u);
  }
}

void sub_2B4950(uint64_t a1, void *a2)
{
  v3 = *&v2[*a2];
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v8[3] = sub_30B038();
    v8[4] = sub_2B55E8(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v7[3] = ObjectType;
    v8[0] = v3;
    v7[0] = v2;
    sub_2B55E8(&qword_40CED0, v5, type metadata accessor for ProductReviewActionsCell);
    swift_retain_n();
    v6 = v2;
    sub_3075F8();

    sub_9097C(v7);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

uint64_t sub_2B4A74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_30D448();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_2B4950(v7, a4);

  return sub_9097C(v9);
}

void sub_2B4AF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_30D6F8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v1;
  v76.super_class = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v5);
  v8 = [v1 contentView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 layoutMargins];
  v18 = v17;
  v20 = v19;

  v21 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v18, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (qword_3FAE80 != -1)
  {
    swift_once();
  }

  v81 = xmmword_42AC10;
  v82 = xmmword_42AC20;
  v83 = unk_42AC30;
  v84 = word_42AC40;
  v77 = xmmword_42ABD0;
  v78 = *&byte_42ABE0;
  v79 = xmmword_42ABF0;
  v80 = xmmword_42AC00;
  v28 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton];
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v3, qword_4295D8);
  (*(v4 + 16))(v7, v29, v3);
  v30 = [v28 traitCollection];
  sub_231F6C(v30, v7, 0);
  v32 = v31;

  [v28 firstBaselineFromTop];
  v34 = v33;
  (*(v4 + 8))(v7, v3);
  [v28 sizeThatFits:{v25, v27}];
  v36 = v35;
  v75 = v37;
  v85.origin.x = v21;
  v85.origin.y = v23;
  v85.size.width = v25;
  v85.size.height = v27;
  MinY = CGRectGetMinY(v85);
  v39 = [v28 titleLabel];
  if (!v39)
  {
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = [v39 font];

  if (!v41)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v42 = v32 - v34 + MinY;
  [v41 descender];
  v44 = v43;

  v45 = floor(v42 + v44);
  v46 = [v1 effectiveUserInterfaceLayoutDirection];
  v47 = v21;
  v48 = v23;
  v49 = v25;
  v50 = v27;
  if (v46 == &dword_0 + 1)
  {
    MinX = CGRectGetMaxX(*&v47) - v36;
  }

  else
  {
    MinX = CGRectGetMinX(*&v47);
  }

  v52 = v21;
  v53 = v23;
  [v28 setFrame:{MinX, v45, v36, v75}];
  v54 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton];
  [v54 sizeThatFits:{v25, v27}];
  v56 = v55;
  v75 = v57;
  v58 = v36 + v55;
  v86.size.height = v27;
  v59 = v52;
  v86.origin.x = v52;
  v60 = v53;
  v86.origin.y = v53;
  v86.size.width = v25;
  height = v86.size.height;
  Width = CGRectGetWidth(v86);
  v63 = [v1 effectiveUserInterfaceLayoutDirection];
  if (Width >= v58)
  {
    v69 = v59;
    v70 = v60;
    v71 = v25;
    v72 = height;
    if (v63 == &dword_0 + 1)
    {
      v73 = CGRectGetMinX(*&v69);
    }

    else
    {
      v73 = CGRectGetMaxX(*&v69) - v56;
    }
  }

  else
  {
    v64 = v59;
    v65 = v60;
    v66 = v25;
    v67 = height;
    if (v63 == &dword_0 + 1)
    {
      v68 = CGRectGetMaxX(*&v64) - v56;
    }

    else
    {
      v68 = CGRectGetMinX(*&v64);
    }

    v87.origin.x = v59;
    v87.origin.y = v60;
    v87.size.width = v25;
    v87.size.height = height;
    v45 = v45 + CGRectGetMidY(v87);
    v73 = v68;
  }

  [v54 setFrame:{v73, v45, v56, v75}];
}

id sub_2B509C()
{
  v1 = v0;
  v2 = sub_3084A8();
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton];
    sub_30B018();
    if (v5)
    {
      v6 = sub_30C098();
    }

    else
    {
      v6 = 0;
    }

    [v4 setTitle:v6 forState:0];

    [v4 setHidden:0];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewAction] = v3;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_writeReviewButton] setHidden:1];
  }

  v7 = sub_3084B8();
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton];
    sub_30B018();
    if (v10)
    {
      v11 = sub_30C098();
    }

    else
    {
      v11 = 0;
    }

    [v9 setTitle:v11 forState:0];

    [v9 setHidden:0];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportAction] = v8;
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_supportButton] setHidden:1];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_2B5244(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24ProductReviewActionsCell_objectGraph) = a1;
}

uint64_t sub_2B528C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2B55E8(&qword_40CEE0, v3, type metadata accessor for ProductReviewActionsCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_2B5310(uint64_t a1, uint64_t a2)
{
  if (qword_3FAE80 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_42AC10;
  v14[5] = xmmword_42AC20;
  v14[6] = unk_42AC30;
  v14[0] = xmmword_42ABD0;
  v14[1] = *&byte_42ABE0;
  v14[2] = xmmword_42ABF0;
  v14[3] = xmmword_42AC00;
  v10 = xmmword_42AC10;
  v11 = xmmword_42AC20;
  v12 = unk_42AC30;
  v6 = xmmword_42ABD0;
  v7 = *&byte_42ABE0;
  v15 = word_42AC40;
  v13 = word_42AC40;
  v8 = xmmword_42ABF0;
  v9 = xmmword_42AC00;
  sub_9004C(v14, v16);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v3 = sub_30D6F8();
  v4 = __swift_project_value_buffer(v3, qword_4295D8);
  sub_231F6C(a2, v4, 0);
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v17 = v13;
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  sub_900A8(v16);
  return sub_307198();
}

uint64_t sub_2B55E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_2B5630(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_rateAction] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView;
  v12 = [objc_allocWithZone(UIStackView) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAxis:0];
  [v12 setSpacing:16.0];
  [v12 setAlignment:3];
  *&v5[v11] = v12;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADF0 != -1)
  {
    swift_once();
  }

  v59[2] = xmmword_42A870;
  v59[3] = *&qword_42A880;
  v60[0] = xmmword_42A890;
  *(v60 + 10) = *(&xmmword_42A890 + 10);
  v59[0] = xmmword_42A850;
  v59[1] = unk_42A860;
  v57[2] = xmmword_42A870;
  v57[3] = *&qword_42A880;
  v58[0] = xmmword_42A890;
  *(v58 + 10) = *(&xmmword_42A890 + 10);
  v57[0] = xmmword_42A850;
  v57[1] = unk_42A860;
  sub_EB00(v59, v56, &qword_3FFD68);
  v13 = sub_235C3C(v57, 2, 4, 0);
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel] = v13;
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 secondaryLabelColor];
  [v16 setTextColor:v17];

  v18 = *&v5[v14];
  sub_30C888();
  [v18 setContentCompressionResistancePriority:0 forAxis:?];

  v19 = type metadata accessor for StarRatingControl();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_starCount] = 5;
  v20[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet] = 0;
  *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = 0;
  *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating] = 0;
  v55.receiver = v20;
  v55.super_class = v19;
  v21 = objc_msgSendSuper2(&v55, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = [v15 clearColor];
  [v21 setBackgroundColor:v22];

  [v21 setContentMode:3];
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_ratingControl] = v21;
  LODWORD(v23) = 1148846080;
  [v21 setContentHuggingPriority:0 forAxis:v23];

  v54.receiver = v5;
  v54.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  [v24 setPreservesSuperviewLayoutMargins:1];
  v25 = [v24 contentView];
  [v25 setPreservesSuperviewLayoutMargins:1];

  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel;
  [*&v24[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView] addArrangedSubview:*&v24[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel]];
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_ratingControl;
  [*&v24[v26] addArrangedSubview:*&v24[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_ratingControl]];
  v29 = [v24 contentView];
  [v29 addSubview:*&v24[v26]];

  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_31D480;
  v31 = [*&v24[v26] bottomAnchor];
  v32 = [v24 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:-12.0];
  *(v30 + 32) = v34;
  v35 = [*&v24[v27] firstBaselineAnchor];
  v36 = [v24 contentView];
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:32.0];
  *(v30 + 40) = v38;
  v39 = [*&v24[v26] leadingAnchor];
  v40 = [v24 contentView];
  v41 = [v40 layoutMarginsGuide];

  v42 = [v41 leadingAnchor];
  v43 = [v39 constraintEqualToAnchor:v42];

  *(v30 + 48) = v43;
  v44 = [*&v24[v26] trailingAnchor];
  v45 = [v24 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 trailingAnchor];
  v48 = [v44 constraintEqualToAnchor:v47];

  *(v30 + 56) = v48;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v53 activateConstraints:isa];

  v50 = *&v24[v28];
  [v50 addTarget:v24 action:"ratingChangedWithSender:" forControlEvents:4096];

  v51 = [v24 traitCollection];
  sub_2B5D2C(v51);

  return v24;
}

id sub_2B5D2C(void *a1)
{
  v2 = [a1 horizontalSizeClass] == &dword_0 + 1;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView) setAxis:v2];
  [*(v1 + v3) setAlignment:v4];
  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel);

  return [v6 setTextAlignment:v5];
}

void sub_2B5DEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30B898();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v8 = sub_30AA58();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_309E48();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_rateAction])
  {
    v30 = v3;

    v15 = sub_309248();
    if (*(v15 + 16))
    {
      v25[1] = v2;
      v28 = v9;
      v29 = v8;
      v26 = v13;
      v27 = v12;
      (*(v13 + 16))(v36, v15 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

      v38[0] = *(*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_ratingControl] + OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating);
      sub_30D6D8();
      sub_2B6DE4(_swiftEmptyArrayStorage);
      sub_2B6DE4(_swiftEmptyArrayStorage);
      sub_2B6EF8(_swiftEmptyArrayStorage);
      sub_30AA48();
      sub_30AA28();

      v16 = sub_30B028();
      v18 = v17;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v16;
      v20[4] = v18;

      LOBYTE(v18) = sub_30AF68();
      sub_30AFB8();
      sub_30AFB8();
      if (sub_30AFB8() != v18)
      {
        sub_30AFB8();
      }

      sub_30B868();
      sub_308048();
      swift_allocObject();
      sub_308028();

      sub_30AA38();
      v21 = v33;
      sub_30AFF8();

      v22 = sub_309228();
      (*(v34 + 8))(v21, v35);
      v38[3] = sub_307778();
      v38[4] = sub_2B719C(&qword_40AD68, 255, &type metadata accessor for HttpAction);
      v37[3] = ObjectType;
      v38[0] = v22;
      v37[0] = v1;
      sub_2B719C(&qword_40CF50, v23, type metadata accessor for ProductTapToRateCollectionViewCell);

      v24 = v1;
      sub_3075F8();

      (*(v28 + 8))(v11, v29);
      (*(v26 + 8))(v36, v27);
      sub_EB68(v37, &unk_3FBB70);
      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
    }
  }
}

void sub_2B6564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_rateAction))
    {

      v7 = sub_30B028();
      v9 = v8;

      if (v7 == a2 && v9 == a3)
      {
      }

      else
      {
        v11 = sub_30D728();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (!v12)
      {
        return;
      }

      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel);

      v15 = [objc_opt_self() mainBundle];
      v17._countAndFlagsBits = 0xE000000000000000;
      v18._object = 0x8000000000344930;
      v18._countAndFlagsBits = 0xD000000000000018;
      v19.value._countAndFlagsBits = 0;
      v19.value._object = 0;
      v16.super.isa = v15;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      sub_301AB8(v18, v19, v16, v20, v17);

      v6 = sub_30C098();

      [v14 setText:v6];
    }
  }
}

uint64_t sub_2B68EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_titleLabel);
  sub_30B648();
  if (v2)
  {
    v3 = sub_30C098();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_rateAction) = sub_30B638();
}

uint64_t sub_2B69A0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_objectGraph) = a1;
}

uint64_t sub_2B69E8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2B719C(&qword_40CF60, v3, type metadata accessor for ProductTapToRateCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_2B6AB8()
{
  v0 = sub_3072C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_307278();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Placement.default(_:), v0);
  return sub_3072D8();
}

unint64_t sub_2B6DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CF68);
    v3 = sub_30D698();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_19182C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_2B6EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC100);
    v3 = sub_30D698();
    v4 = a1 + 32;

    while (1)
    {
      sub_EB00(v4, &v13, &qword_3FBD78);
      v5 = v13;
      v6 = v14;
      result = sub_19182C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA94(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_2B7028()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_rateAction) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews34ProductTapToRateCollectionViewCell_stackView;
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAxis:0];
  [v2 setSpacing:16.0];
  [v2 setAlignment:3];
  *(v0 + v1) = v2;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2B7118()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2B7150()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2B719C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_2B72C0()
{
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton] = 0;
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressType];
  *v1 = xmmword_332F30;
  v1[16] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_incrementalProgress] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_continuousProgress] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_displayLink] = 0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_lastTimestamp];
  *v2 = 0;
  v2[8] = 1;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_backgroundBar] = v3;
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressBar] = v4;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ProgressBarControl();
  v5 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_backgroundBar;
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_backgroundBar];
  v8 = v5;
  [v7 _setCornerRadius:4.0];
  [*&v5[v6] setClipsToBounds:1];
  v9 = *&v5[v6];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemMidGrayColor];
  v13 = [v12 colorWithAlphaComponent:0.8];

  [v11 setBackgroundColor:v13];
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressBar;
  v15 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressBar];
  v16 = [v10 _externalSystemWhiteColor];
  [v15 setBackgroundColor:v16];

  [v8 addSubview:*&v5[v6]];
  [*&v5[v6] addSubview:*&v8[v14]];

  return v8;
}

id sub_2B75E4()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ProgressBarControl();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = *&v0[v1];
    if (v10)
    {
      [v10 setFrame:{0.0, 0.0, v7, v9}];
    }

    v11 = v7 + 10.0;
    [v0 bounds];
    v12 = (CGRectGetHeight(v19) + -8.0) * 0.5;
    [v0 bounds];
    Width = CGRectGetWidth(v20);
    v14 = v11;
    v15 = Width - v11;
  }

  else
  {
    [v0 bounds];
    v15 = CGRectGetWidth(v21);
    v14 = 0.0;
    v12 = 0.0;
  }

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_backgroundBar] setFrame:{v14, v12, v15, 8.0}];
  v16 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressBar];
  [v16 frame];
  [v16 setFrame:{0.0, 0.0}];
  [v0 bounds];
  CGRectGetHeight(v22);
  [v16 frame];
  return [v16 setFrame:?];
}

id sub_2B7824(id result)
{
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressType + 16) == 1)
  {
    v2 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_lastTimestamp;
    if ((*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_lastTimestamp + 8) & 1) == 0)
    {
      v3 = *v2;
      v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressType + 8);
      v5 = result;
      [result targetTimestamp];
      *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_continuousProgress) = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_continuousProgress) + (v6 - v3) / v4;
      v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressBar);
      [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_backgroundBar) bounds];
      CGRectGetWidth(v9);
      [v7 frame];
      [v7 setFrame:?];
      result = v5;
    }

    result = [result timestamp];
    *v2 = v8;
    *(v2 + 8) = 0;
  }

  return result;
}

id sub_2B79BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressBarControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2B7AA4()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_progressType;
  *v1 = xmmword_332F30;
  *(v1 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_incrementalProgress) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_continuousProgress) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_displayLink) = 0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_lastTimestamp;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2B7B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2B7BAC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *sub_2B7C0C(char a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for EpisodePlayProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = *v1;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  *&v3[v5] = v4;
  [v3 setNeedsLayout];
  v6 = v1[1];
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius;
  swift_beginAccess();
  *&v3[v7] = v6;
  [v3 setNeedsLayout];
  if ((a1 & 1) == 0)
  {
    v28 = v1[2];
    v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
    swift_beginAccess();
    v30 = *&v3[v29];
    *&v3[v29] = v28;
    v31 = v28;

    v32 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
    v33 = [v31 CGColor];
    [v32 setFillColor:v33];

    v34 = v1[3];
    v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor;
    swift_beginAccess();
    v36 = *&v3[v35];
    *&v3[v35] = v34;
    v37 = v34;

    v38 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer];
    v39 = [v37 CGColor];
    [v38 setFillColor:v39];

    v40 = v1[4];
    v41 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
    swift_beginAccess();
    v42 = *&v3[v41];
    *&v3[v41] = v40;
    v24 = v40;

    v25 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
    v43 = *&v3[v41];
    if (v43)
    {
      v44 = [v43 CGColor];
    }

    else
    {
      v44 = 0;
    }

    [v25 setStrokeColor:v44];

    if (*&v3[v41])
    {
      goto LABEL_11;
    }

LABEL_12:
    [v25 removeFromSuperlayer];
    goto LABEL_13;
  }

  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  swift_beginAccess();
  v11 = *&v3[v10];
  *&v3[v10] = v9;
  v12 = v9;

  v13 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
  v14 = [v12 CGColor];
  [v13 setFillColor:v14];

  v15 = [v8 clearColor];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor;
  swift_beginAccess();
  v17 = *&v3[v16];
  *&v3[v16] = v15;
  v18 = v15;

  v19 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer];
  v20 = [v18 CGColor];
  [v19 setFillColor:v20];

  v21 = [v8 clearColor];
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v23 = *&v3[v22];
  *&v3[v22] = v21;
  v24 = v21;

  v25 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v26 = *&v3[v22];
  if (v26)
  {
    v27 = [v26 CGColor];
  }

  else
  {
    v27 = 0;
  }

  [v25 setStrokeColor:v27];

  if (!*&v3[v22])
  {
    goto LABEL_12;
  }

LABEL_11:
  v45 = [v3 layer];
  [v45 addSublayer:v25];

  v24 = v45;
LABEL_13:

  return v3;
}

uint64_t sub_2B8094()
{
  sub_30C1F8();
}

Swift::Int sub_2B81DC(uint64_t a1, char a2)
{
  sub_30D7F8();
  sub_30D838(qword_3330C8[a2]);
  return sub_30D858();
}

Swift::Int sub_2B822C()
{
  sub_30D7F8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2B83F8@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2B8C2C(*a1);
  *a2 = result;
  return result;
}

double sub_2B8424@<D0>(double *a1@<X8>)
{
  result = dbl_3330E8[*v1];
  *a1 = result;
  return result;
}

char *sub_2B843C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_rating] = 1080033280;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color;
  sub_A803C();
  *&v4[v9] = sub_30D048(0.99608, 0.5098, 0.027451, 1.0);
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_starSize] = 2;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_hideEmptyStars] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment] = 0;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label] = v10;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for RatingView();
  v11 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label;
  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label];
  v14 = v11;
  [v13 setNumberOfLines:1];
  [*&v11[v12] setLineBreakMode:2];
  [*&v11[v12] setTextAlignment:1];
  [v14 addSubview:*&v11[v12]];
  v15 = *&v11[v12];
  v16 = dbl_3330E8[v14[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_starSize]];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 systemFontOfSize:v16];
  [v18 setFont:v19];

  [*&v11[v12] setTextColor:*&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color]];
  v20 = *&v11[v12];
  sub_2B8CE4(v14[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_hideEmptyStars], *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_rating]);
  v21 = sub_30C098();

  [v20 setText:v21];

  [v14 invalidateIntrinsicContentSize];
  return v14;
}

id sub_2B8814()
{
  v14._countAndFlagsBits = 8755426;
  v14._object = 0xA300000000000000;
  v1 = sub_30C2D8(v14, 5);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = NSFontAttributeName;
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label);
  v6 = NSFontAttributeName;
  result = [v5 font];
  if (result)
  {
    *(inited + 40) = result;
    v8 = sub_2D6EEC(inited);
    swift_setDeallocating();
    sub_2B8C7C(inited + 32);
    v9 = sub_2D618C(v8);
    v10 = sub_268E60(1.79769313e308, 1.79769313e308, v1, v3, 0, v9, 0);

    if (qword_3FAE40 != -1)
    {
      swift_once();
    }

    sub_303D28();

    if (v13)
    {
      v11 = sub_30C098();
      sub_2D618C(v8);
      type metadata accessor for Key(0);
      sub_CFA40();
      isa = sub_30BF88().super.isa;

      [v11 boundingRectWithSize:0 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308, v10}];

      sub_303D38();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2B8B20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2B8BD8()
{
  result = qword_40D030;
  if (!qword_40D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D030);
  }

  return result;
}

uint64_t sub_2B8C2C(double a1)
{
  if (a1 == 8.0)
  {
    return 0;
  }

  if (a1 == 12.0)
  {
    return 1;
  }

  if (a1 == 20.0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 15.0)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2B8C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2B8CE4(char a1, float a2)
{
  v3 = floorf(a2);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4)
  {
    v6 = v3;
    do
    {
      v11._countAndFlagsBits = 8755426;
      v11._object = 0xA300000000000000;
      sub_30C228(v11);
      --v6;
    }

    while (v6);
  }

  v7 = a2 - v4;
  if (v7 >= 0.75)
  {
    v8._countAndFlagsBits = 48834;
  }

  else if (v7 >= 0.5)
  {
    v8._countAndFlagsBits = 48578;
  }

  else
  {
    if (v7 < 0.25)
    {
      goto LABEL_15;
    }

    v8._countAndFlagsBits = 48322;
  }

  v8._object = 0xA200000000000000;
  sub_30C228(v8);
LABEL_15:
  if (a1)
  {
    return;
  }

  v9 = 5.0 - ceilf(a2);
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_27;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9;
  if (v9 < 0)
  {
LABEL_30:
    __break(1u);
    return;
  }

  for (; v10; --v10)
  {
    v12._countAndFlagsBits = 8820962;
    v12._object = 0xA300000000000000;
    sub_30C228(v12);
  }
}

uint64_t sub_2B9050(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_302AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3029D8();
  v8 = sub_302A08();
  result = (*(v5 + 8))(v7, v4);
  *a3 = v8;
  return result;
}

uint64_t sub_2B9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3029D8();
  v10 = sub_302A08();
  result = (*(v7 + 8))(v9, v6);
  *a5 = v10;
  return result;
}

id sub_2B929C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize] = 1;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_showsEmptyStars] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ReviewRatingView();
  v9 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_A803C();
  v10 = v9;
  isa = sub_30D048(0.99608, 0.5098, 0.027451, 1.0).super.isa;
  [v10 setTintColor:isa];

  v12 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor:v12];

  [v10 setContentMode:3];
  return v10;
}

id sub_2B94B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (qword_3FAED8 != -1)
      {
        swift_once();
      }

      v2 = &qword_40D088;
    }

    else if (v1 == 4)
    {
      if (qword_3FAEF0 != -1)
      {
        swift_once();
      }

      v2 = &qword_40D0A0;
    }

    else
    {
      if (qword_3FAF08 != -1)
      {
        swift_once();
      }

      v2 = &qword_40D0B8;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize))
  {
    if (v1 == 1)
    {
      if (qword_3FAEA8 != -1)
      {
        swift_once();
      }

      v2 = &qword_40D058;
    }

    else
    {
      if (qword_3FAEC0 != -1)
      {
        swift_once();
      }

      v2 = &qword_40D070;
    }
  }

  else
  {
    if (qword_3FAE90 != -1)
    {
      swift_once();
    }

    v2 = &qword_40D040;
  }

  v3 = *v2;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet))
  {
    v4 = [v3 imageWithHorizontallyFlippedOrientation];

    return v4;
  }

  else
  {

    return v3;
  }
}

void sub_2B96A4(double a1, double a2, double a3, double a4)
{
  v47.receiver = v4;
  v47.super_class = type metadata accessor for ReviewRatingView();
  objc_msgSendSuper2(&v47, "drawRect:", a1, a2, a3, a4);
  v9 = [v4 effectiveUserInterfaceLayoutDirection];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet;
  if (v9 == &dword_0 + 1)
  {
    if ((v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet] & 1) == 0)
    {
      v11 = [v4 layer];
      CATransform3DMakeScale(&v46, -1.0, 1.0, 1.0);
      v45 = v46;
      [v11 setTransform:&v45];

      v4[v10] = 1;
    }
  }

  else if (v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet])
  {
    v12 = [v4 layer];
    v13 = *&CATransform3DIdentity.m33;
    *&v46.m31 = *&CATransform3DIdentity.m31;
    *&v46.m33 = v13;
    v14 = *&CATransform3DIdentity.m43;
    *&v46.m41 = *&CATransform3DIdentity.m41;
    *&v46.m43 = v14;
    v15 = *&CATransform3DIdentity.m13;
    *&v46.m11 = *&CATransform3DIdentity.m11;
    *&v46.m13 = v15;
    v16 = *&CATransform3DIdentity.m23;
    *&v46.m21 = *&CATransform3DIdentity.m21;
    *&v46.m23 = v16;
    [v12 setTransform:&v46];

    v4[v10] = 0;
  }

  v17 = UIGraphicsGetCurrentContext();
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = [v4 tintColor];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [v20 CGColor];

    CGContextSetFillColorWithColor(v19, v22);
  }

  [v4 bounds];
  MinY = CGRectGetMinY(v48);
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize;
  v25 = v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize];
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      if (qword_3FAEE0 != -1)
      {
        swift_once();
      }

      v26 = &qword_40D090;
    }

    else if (v25 == 4)
    {
      if (qword_3FAEF8 != -1)
      {
        swift_once();
      }

      v26 = &qword_40D0A8;
    }

    else
    {
      if (qword_3FAF10 != -1)
      {
        swift_once();
      }

      v26 = &qword_40D0C0;
    }
  }

  else
  {
    if (!v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize])
    {
      if (qword_3FAE98 != -1)
      {
        goto LABEL_94;
      }

      goto LABEL_21;
    }

    if (v25 == 1)
    {
      if (qword_3FAEB0 != -1)
      {
        swift_once();
      }

      v26 = &qword_40D060;
    }

    else
    {
      if (qword_3FAEC8 != -1)
      {
        swift_once();
      }

      v26 = &qword_40D078;
    }
  }

  while (1)
  {
    [*v26 size];
    v28 = v27;
    v29 = round(*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] + *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating]) * 0.5;
    v30 = floor(v29);
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_86;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_87;
    }

    v31 = v29 - v30;
    v32 = ceil(v31);
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_88;
    }

    if (v32 <= -9.22337204e18)
    {
      goto LABEL_89;
    }

    if (v32 >= 9.22337204e18)
    {
      goto LABEL_90;
    }

    v33 = v30;
    v34 = v30 + v32;
    if (__OFADD__(v30, v32))
    {
      goto LABEL_91;
    }

    v44 = v18;
    if (v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_showsEmptyStars] == 1)
    {
      if (v34 > 5)
      {
        goto LABEL_93;
      }

      if (v34 != 5)
      {
        v18 = _TtC23ShelfKitCollectionViews20UpsellViewController;
        do
        {
          v43 = v4[v24];
          if (v43 > 2)
          {
            if (v43 == 3)
            {
              v41 = &qword_40D090;
              v42 = v28 + 1.0;
              if (qword_3FAEE0 != -1)
              {
                swift_once();
                v41 = &qword_40D090;
                v42 = v28 + 1.0;
              }
            }

            else if (v43 == 4)
            {
              v41 = &qword_40D0A8;
              v42 = v28 + 1.0;
              if (qword_3FAEF8 != -1)
              {
                swift_once();
                v41 = &qword_40D0A8;
                v42 = v28 + 1.0;
              }
            }

            else
            {
              v41 = &qword_40D0C0;
              v42 = v28 + 1.0;
              if (qword_3FAF10 != -1)
              {
                swift_once();
                v41 = &qword_40D0C0;
                v42 = v28 + 1.0;
              }
            }
          }

          else if (v4[v24])
          {
            if (v43 == 1)
            {
              v41 = &qword_40D060;
              v42 = v28 + 3.0;
              if (qword_3FAEB0 != -1)
              {
                swift_once();
                v41 = &qword_40D060;
                v42 = v28 + 3.0;
              }
            }

            else
            {
              v41 = &qword_40D078;
              v42 = v28 + 3.0;
              if (qword_3FAEC8 != -1)
              {
                swift_once();
                v41 = &qword_40D078;
                v42 = v28 + 3.0;
              }
            }
          }

          else
          {
            v41 = &qword_40D048;
            v42 = v28 + 3.0;
            if (qword_3FAE98 != -1)
            {
              swift_once();
              v41 = &qword_40D048;
              v42 = v28 + 3.0;
            }
          }

          [*v41 drawAtPoint:{v42 * v34++, MinY}];
        }

        while (v34 != 5);
      }
    }

    if ((v33 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
LABEL_21:
    v26 = &qword_40D048;
  }

  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      v39 = v4[v24];
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          v36 = &qword_40D080;
          v37 = v28 + 1.0;
          if (qword_3FAED0 != -1)
          {
            swift_once();
            v36 = &qword_40D080;
            v37 = v28 + 1.0;
          }
        }

        else if (v39 == 4)
        {
          v36 = &qword_40D098;
          v37 = v28 + 1.0;
          if (qword_3FAEE8 != -1)
          {
            swift_once();
            v36 = &qword_40D098;
            v37 = v28 + 1.0;
          }
        }

        else
        {
          v36 = &qword_40D0B0;
          v37 = v28 + 1.0;
          if (qword_3FAF00 != -1)
          {
            swift_once();
            v36 = &qword_40D0B0;
            v37 = v28 + 1.0;
          }
        }
      }

      else if (v4[v24])
      {
        if (v39 == 1)
        {
          v36 = &qword_40D050;
          v37 = v28 + 3.0;
          if (qword_3FAEA0 != -1)
          {
            swift_once();
            v36 = &qword_40D050;
            v37 = v28 + 3.0;
          }
        }

        else
        {
          v36 = &qword_40D068;
          v37 = v28 + 3.0;
          if (qword_3FAEB8 != -1)
          {
            swift_once();
            v36 = &qword_40D068;
            v37 = v28 + 3.0;
          }
        }
      }

      else
      {
        v36 = &qword_40D038;
        v37 = v28 + 3.0;
        if (qword_3FAE88 != -1)
        {
          swift_once();
          v36 = &qword_40D038;
          v37 = v28 + 3.0;
        }
      }

      v38 = v37 * i;
      [*v36 drawAtPoint:{v38, MinY}];
    }
  }

  else
  {
    v38 = 0.0;
  }

  if (v31 > COERCE_DOUBLE(1))
  {
    v40 = sub_2B94B0();
    [v40 drawAtPoint:{v38 + v28 + dbl_3331B8[v4[v24]], MinY}];
  }
}

id sub_2BA0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewRatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2BA130()
{
  result = qword_40D110;
  if (!qword_40D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D110);
  }

  return result;
}

double sub_2BA184()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (qword_3FAEE0 != -1)
      {
        swift_once();
      }

      v3 = &qword_40D090;
    }

    else if (v2 == 4)
    {
      if (qword_3FAEF8 != -1)
      {
        swift_once();
      }

      v3 = &qword_40D0A8;
    }

    else
    {
      if (qword_3FAF10 != -1)
      {
        swift_once();
      }

      v3 = &qword_40D0C0;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize))
  {
    if (v2 == 1)
    {
      if (qword_3FAEB0 != -1)
      {
        swift_once();
      }

      v3 = &qword_40D060;
    }

    else
    {
      if (qword_3FAEC8 != -1)
      {
        swift_once();
      }

      v3 = &qword_40D078;
    }
  }

  else
  {
    if (qword_3FAE98 != -1)
    {
      swift_once();
    }

    v3 = &qword_40D048;
  }

  [*v3 size];
  v5 = 5.0;
  if ((*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_showsEmptyStars) & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating);
  }

  v6 = dbl_3331B8[*(v0 + v1)];
  return v5 * (v4 + v6) - v6;
}

id UIViewController.preferredModalSize.setter(double a1, double a2)
{
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    [v6 setPreferredContentSize:{a1, a2}];
    v7 = [v6 presentationController];

    v8 = [v7 containerView];
    [v8 setNeedsLayout];
    [v8 layoutIfNeeded];
  }

  return [v2 setPreferredContentSize:{a1, a2}];
}

uint64_t static RootFlowController.shared.setter(int *a1)
{
  swift_beginAccess();
  off_40D118 = a1;
}

uint64_t sub_2BA570(int **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_40D118 = v1;
}

uint64_t static RootFlowController.transitioningDelegateProvider.getter()
{
  type metadata accessor for TransitioningDelegateProvider();

  return swift_initStaticObject();
}

uint64_t RootFlowController.init(rootViewController:asPartOf:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_storefrontChangeObserver);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid;
  v7 = sub_301DF8();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  swift_unknownObjectWeakAssign();
  v8 = sub_2180E0(a1, a2);
  v9 = objc_opt_self();

  v10 = [v9 sharedCoordinator];
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2BD944;
  v19 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  v17 = &block_descriptor_69;
  v12 = _Block_copy(aBlock);

  v13 = [v10 registerCleanupHandler:v12];
  _Block_release(v12);

  v17 = sub_124C4(0, &qword_40D138);

  aBlock[0] = v13;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_storefrontChangeObserver;
  swift_beginAccess();
  sub_A32A0(aBlock, v8 + v14, &unk_3FBB70);
  swift_endAccess();

  return v8;
}

void sub_2BA888()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = [Strong presentedViewController];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 presentingViewController];
        if (v4)
        {
          v5 = v4;
          sub_124C4(0, &qword_3FBE30);
          v6 = v1;
          v7 = sub_30D098();

          if (v7)
          {
            [v3 dismissViewControllerAnimated:0 completion:0];
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

    else
    {
    }
  }
}

void sub_2BA9E4(void *a1)
{
  v2 = [a1 navigationItem];
  v3 = [v2 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_124C4(0, &unk_409000);
    v5 = sub_30C368();

    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_40:
      v7 = sub_30D668();
    }

    else
    {
      v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    v8 = 0;
    do
    {
      if (v7 == v8)
      {
        goto LABEL_15;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_30D578();
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v9 = *(v5 + 8 * v8 + 32);
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }
      }

      v18 = v9;
      if (![v9 systemItem])
      {
LABEL_30:

        goto LABEL_34;
      }

      v10 = [v18 systemItem];

      ++v8;
    }

    while (v10 != &dword_18);
LABEL_31:

    v17 = v2;
  }

  else
  {
LABEL_16:
    v11 = [v2 rightBarButtonItems];
    if (v11)
    {
      v12 = v11;
      sub_124C4(0, &unk_409000);
      v5 = sub_30C368();

      v6 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v13 = sub_30D668();
      }

      else
      {
        v13 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      }

      v14 = 0;
      while (v13 != v14)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = sub_30D578();
          if (__OFADD__(v14, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v14 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_39;
          }

          v15 = *(v5 + 8 * v14 + 32);
          if (__OFADD__(v14, 1))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v18 = v15;
        if (![v15 systemItem])
        {
          goto LABEL_30;
        }

        v16 = [v18 systemItem];

        ++v14;
        if (v16 == &dword_18)
        {
          goto LABEL_31;
        }
      }
    }

    v18 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"dismissWrappedControllerFrom:"];
    [v2 setLeftBarButtonItem:v18];
LABEL_34:

    v17 = v18;
  }
}

char *sub_2BAD24(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  HIDWORD(v34) = a3;
  v7 = sub_30A4E8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(type metadata accessor for FlowNavigationController()) init];
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentCard(_:), v7);
  sub_2BE484(&qword_40A698, &type metadata accessor for FlowPresentationContext);
  sub_30C338();
  sub_30C338();
  if (v37 == v36[0] && v38 == v36[1])
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12 = sub_30D728();
    (*(v8 + 8))(v10, v7);

    if ((v12 & 1) == 0)
    {
      v20 = *(v3 + 200);
      type metadata accessor for NavigationFlowController();
      *(swift_allocObject() + OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_pushDisabledForTests) = 0;
      swift_unknownObjectUnownedInit();
      v21 = v11;

      v22 = sub_2180E0(v21, v20);

      v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController;
      swift_beginAccess();
      *&v21[v18] = v22;
      v19 = &protocol witness table for BaseFlowController;
      goto LABEL_12;
    }
  }

  v13 = *(v3 + 104);
  v14 = *(v4 + 112);
  sub_12670(v4 + 160, v39);
  sub_12670(v4 + 64, v40);
  v37 = v13;
  v38 = v14;
  v15 = type metadata accessor for FlowPresentationHints();
  sub_EB00(a2 + *(v15 + 36), v36, &unk_3FBB70);
  if (v36[3])
  {
    sub_124C4(0, &qword_3FC1E0);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v16 = v35;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    sub_EB68(v36, &unk_3FBB70);
    v16 = 0;
  }

  type metadata accessor for DismissingFlowController();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  sub_12658(v39, v17 + 32);
  sub_12658(v40, v17 + 72);
  swift_unknownObjectWeakAssign();

  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController;
  swift_beginAccess();
  *&v11[v18] = v17;
  v19 = &off_3C0EC0;
LABEL_12:
  *&v11[v18 + 8] = v19;
  swift_unknownObjectRelease();
  if ((v34 & 0x100000000) != 0)
  {
    sub_2BA9E4(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_31BF90;
  *(v23 + 32) = a1;
  sub_124C4(0, &qword_3FBE30);
  v24 = v11;
  v25 = a1;
  isa = sub_30C358().super.isa;

  [v24 setViewControllers:isa];

  v27 = v24;
  [v27 setModalPresentationStyle:{objc_msgSend(v25, "modalPresentationStyle")}];
  v28 = [v25 popoverPresentationController];
  v29 = v27;
  if (v28)
  {
    v30 = v28;
    v29 = [v27 popoverPresentationController];

    if (v29)
    {
      v31 = [v30 barButtonItem];
      [v29 setBarButtonItem:v31];

      [v30 sourceRect];
      [v29 setSourceRect:?];
      v32 = [v30 sourceView];
      [v29 setSourceView:v32];

      [v29 setPermittedArrowDirections:{objc_msgSend(v30, "permittedArrowDirections")}];
    }

    else
    {
      v29 = v30;
    }
  }

  return v27;
}

uint64_t sub_2BB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a3;
  v119 = a4;
  v127 = a2;
  v113 = a1;
  v5 = type metadata accessor for FlowPresentationHints();
  v114 = *(v5 - 8);
  __chkstk_darwin(v5);
  v121 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v6;
  __chkstk_darwin(v7);
  v126 = v101 - v8;
  v9 = sub_308778();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v110 = v10;
  v124 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D140);
  __chkstk_darwin(v11 - 8);
  v108 = v101 - v12;
  v125 = sub_301DF8();
  v115 = *(v125 - 8);
  v13 = *(v115 + 64);
  __chkstk_darwin(v125);
  v109 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v123 = v101 - v15;
  v16 = sub_3041E8();
  v128 = *(v16 - 8);
  v129 = v16;
  __chkstk_darwin(v16);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v101 - v20;
  __chkstk_darwin(v22);
  v120 = v101 - v23;
  __chkstk_darwin(v24);
  v107 = v101 - v25;
  v26 = sub_30A4E8();
  v122 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v101 - v30;
  __chkstk_darwin(v32);
  v34 = v101 - v33;
  v112 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v36 = Strong, v37 = [Strong presentedViewController], v36, !v37))
  {
    sub_304128();
    v45 = sub_3041D8();
    v46 = sub_30C7B8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "Not deferring destination because there is no presented view controller.", v47, 2u);
    }

    (*(v128 + 8))(v18, v129);
    return 0;
  }

  ObjectType = swift_getObjectType();
  v39 = swift_conformsToProtocol2();
  if (!v39)
  {
    sub_304128();
    v49 = v37;
    v50 = v37;
    v51 = sub_3041D8();
    v52 = sub_30C7B8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v49;
      *v54 = v50;
      v55 = v49;
      _os_log_impl(&dword_0, v51, v52, "Not deferring destination because of protocol conformance of the presented view controller %@", v53, 0xCu);
      sub_EB68(v54, &qword_3FC200);
    }

    else
    {
      v55 = v51;
      v51 = v49;
    }

    (*(v128 + 8))(v21, v129);
    return 0;
  }

  v40 = v39;
  v106 = v37;
  v41 = v37;
  if ((sub_30ADB8() & 1) == 0)
  {
LABEL_34:

    v90 = v120;
    sub_304128();
    v91 = v121;
    sub_2335F4(v127, v121);
    v92 = sub_3041D8();
    v93 = sub_30C7B8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v41;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v130 = v96;
      *v95 = 136315138;
      v97 = sub_30A4D8();
      v99 = v98;
      sub_25A8A8(v91);
      v100 = sub_191264(v97, v99, &v130);

      *(v95 + 4) = v100;
      _os_log_impl(&dword_0, v92, v93, "Not deferring presentation for context: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
    }

    else
    {

      sub_25A8A8(v91);
    }

    (*(v128 + 8))(v90, v129);
    return 0;
  }

  v105 = v40;
  if (qword_3FAC88 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v5, qword_40A558);
  if (_s23ShelfKitCollectionViews21FlowPresentationHintsV2eeoiySbAC_ACtFZ_0(v127, v42))
  {
    goto LABEL_26;
  }

  v103 = v41;
  isa = v122[13].isa;
  isa(v34, enum case for FlowPresentationContext.presentModalCard(_:), v26);
  v43 = sub_2BE484(&qword_40A698, &type metadata accessor for FlowPresentationContext);
  sub_30C338();
  v101[1] = v43;
  sub_30C338();
  if (v130 == v132 && v131 == v133)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_30D728();
  }

  v56 = v122[1].isa;
  v57 = v34;
  ++v122;
  v58 = v56;
  v56(v57, v26);

  v41 = v103;
  if (v44)
  {
    goto LABEL_26;
  }

  isa(v31, enum case for FlowPresentationContext.presentModal(_:), v26);
  sub_30C338();
  sub_30C338();
  if (v130 != v132 || v131 != v133)
  {
    v60 = sub_30D728();
    v58(v31, v26);

    v41 = v103;
    if (v60)
    {
      goto LABEL_26;
    }

    isa(v28, enum case for FlowPresentationContext.presentModalFormSheet(_:), v26);
    sub_30C338();
    sub_30C338();
    if (v130 == v132 && v131 == v133)
    {
      v59 = v28;
      goto LABEL_24;
    }

    v89 = sub_30D728();
    v58(v28, v26);

    v41 = v103;
    if (v89)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  v59 = v31;
LABEL_24:
  v58(v59, v26);

  v41 = v103;
LABEL_26:
  v61 = v107;
  sub_304128();
  v62 = v41;
  v63 = sub_3041D8();
  v64 = sub_30C7B8();

  v65 = os_log_type_enabled(v63, v64);
  v104 = ObjectType;
  v122 = v62;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    *(v66 + 4) = v62;
    *v67 = v106;
    _os_log_impl(&dword_0, v63, v64, "Deferring show destination because of ACK requiring VC %@", v66, 0xCu);
    sub_EB68(v67, &qword_3FC200);
  }

  else
  {

    v63 = v62;
  }

  (*(v128 + 8))(v61, v129);
  v68 = v123;
  sub_301DE8();
  v69 = v115;
  v70 = *(v115 + 16);
  v71 = v108;
  v72 = v125;
  v70(v108, v68, v125);
  (*(v69 + 56))(v71, 0, 1, v72);
  v73 = OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid;
  v74 = v112;
  swift_beginAccess();
  sub_A32A0(v71, v74 + v73, &qword_40D140);
  swift_endAccess();
  v75 = swift_allocObject();
  swift_weakInit();
  v76 = v109;
  v70(v109, v68, v72);
  v77 = v116;
  v78 = v117;
  (*(v116 + 16))(v124, v113, v117);
  sub_2335F4(v127, v126);
  v79 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v80 = (v13 + *(v77 + 80) + v79) & ~*(v77 + 80);
  v81 = (v110 + *(v114 + 80) + v80) & ~*(v114 + 80);
  v82 = (v111 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  *(v83 + 16) = v75;
  v84 = v76;
  v85 = v125;
  (*(v69 + 32))(v83 + v79, v84, v125);
  (*(v77 + 32))(v83 + v80, v124, v78);
  sub_233868(v126, v83 + v81);
  v86 = (v83 + v82);
  v87 = v119;
  *v86 = v118;
  v86[1] = v87;

  v88 = v122;
  sub_30ADC8();

  (*(v69 + 8))(v123, v85);

  return 1;
}

uint64_t sub_2BC0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v43 = a4;
  v9 = sub_301DF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D378);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D140);
  __chkstk_darwin(v15 - 8);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v38 = a6;
    v39 = v19;
    v37 = a5;
    v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid;
    swift_beginAccess();
    (*(v10 + 16))(v22, a2, v9);
    v35 = *(v10 + 56);
    v35(v22, 0, 1, v9);
    v26 = *(v12 + 48);
    v36 = v25;
    sub_EB00(v24 + v25, v14, &qword_40D140);
    sub_EB00(v22, &v14[v26], &qword_40D140);
    v27 = *(v10 + 48);
    if (v27(v14, 1, v9) == 1)
    {
      sub_EB68(v22, &qword_40D140);
      if (v27(&v14[v26], 1, v9) == 1)
      {
        sub_EB68(v14, &qword_40D140);
LABEL_9:
        v33 = v41;
        v35(v41, 1, 1, v9);
        v34 = v36;
        swift_beginAccess();
        sub_A32A0(v33, v24 + v34, &qword_40D140);
        swift_endAccess();
        sub_2BC5A0(v42, v43, v37, v38);
      }
    }

    else
    {
      v28 = v39;
      sub_EB00(v14, v39, &qword_40D140);
      if (v27(&v14[v26], 1, v9) != 1)
      {
        v29 = &v14[v26];
        v30 = v40;
        (*(v10 + 32))(v40, v29, v9);
        sub_2BE484(&qword_4061C0, &type metadata accessor for UUID);
        v31 = sub_30C018();
        v32 = *(v10 + 8);
        v32(v30, v9);
        sub_EB68(v22, &qword_40D140);
        v32(v28, v9);
        sub_EB68(v14, &qword_40D140);
        if (v31)
        {
          goto LABEL_9;
        }
      }

      sub_EB68(v22, &qword_40D140);
      (*(v10 + 8))(v28, v9);
    }

    sub_EB68(v14, &qword_40D378);
  }

  return result;
}

void sub_2BC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = type metadata accessor for FlowPresentationHints();
  v66 = *(v72 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v72);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_30A4E8();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_308778();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v13);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v59 - v17;
  v74 = a2;
  v68 = a3;
  v69 = a4;
  if ((sub_2BB2F8(a1, a2, a3, a4, v16) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = v4;
      v64 = a1;
      v20 = Strong;
      v21 = [v20 presentedViewController];
      v22 = v20;
      if (v21)
      {
        v23 = v21;
        v62 = v20;
        v24 = v73;
        v25 = *(v73 + 16);
        v61 = v73 + 16;
        v60 = v25;
        v25(v18, v64, v13);
        v26 = (*(v24 + 88))(v18, v13);
        v27 = enum case for FlowDestination.viewController(_:);
        (*(v24 + 8))(v18, v13);
        if (v26 != v27)
        {
          v29 = v70;
          v28 = v71;
          (*(v70 + 16))(v12, v74, v71);
          v30 = (*(v29 + 88))(v12, v28);
          v31 = enum case for FlowPresentationContext.presentSheetOverNowPlaying(_:);
          (*(v29 + 8))(v12, v28);
          if (v30 != v31)
          {
            v45 = v65;
            v60(v65, v64, v13);
            v20 = v23;
            v46 = v67;
            sub_2335F4(v74, v67);
            v47 = v73;
            v48 = (*(v73 + 80) + 24) & ~*(v73 + 80);
            v49 = (v14 + *(v66 + 80) + v48) & ~*(v66 + 80);
            v50 = (v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
            v51 = swift_allocObject();
            *(v51 + 16) = v63;
            (*(v47 + 32))(v51 + v48, v45, v13);
            sub_233868(v46, v51 + v49);
            v52 = (v51 + v50);
            v53 = v69;
            *v52 = v68;
            v52[1] = v53;
            v77 = sub_2BDD50;
            v78 = v51;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_914CC;
            v76 = &block_descriptor_6_1;
            v54 = _Block_copy(aBlock);

            v22 = v62;
            [v62 dismissViewControllerAnimated:1 completion:v54];

            _Block_release(v54);
            goto LABEL_28;
          }
        }

        v32 = v23;
        v33 = [v32 presentedViewController];
        v22 = v32;
        v20 = v62;
        if (v33)
        {
          v34 = v32;
          do
          {
            v22 = v33;

            v33 = [v22 presentedViewController];
            v34 = v22;
          }

          while (v33);
        }
      }

      v35 = sub_217B24(v64);
      if (v35)
      {
        v36 = v35;
        v37 = v72;
        v38 = v74;
        v39 = *(v74 + *(v72 + 20)) ^ 1;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        v41 = v36;
        if (!v40 && sub_308758())
        {
          v42 = sub_308728();
          v43 = sub_2BAD24(v41, v38, v42 & 1);

LABEL_27:
          sub_2BCCF8(v38);
          [v22 presentViewController:v43 animated:v39 & 1 completion:0];

          goto LABEL_28;
        }

        v43 = v41;
        if ((sub_2BD964(v41, v38) & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_EB00(v38 + *(v37 + 36), aBlock, &unk_3FBB70);
        if (v76)
        {
          sub_124C4(0, &qword_3FC1E0);
          if (swift_dynamicCast())
          {
            v44 = v79;
            goto LABEL_26;
          }
        }

        else
        {
          sub_EB68(aBlock, &unk_3FBB70);
        }

        v55 = [objc_opt_self() sharedApplication];
        v44 = [v55 delegate];

        if (v44)
        {
          if ([v44 respondsToSelector:"window"])
          {
            v56 = [v44 window];
            swift_unknownObjectRelease();
            if (v56)
            {
              v44 = [v56 rootViewController];

              goto LABEL_26;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v44 = 0;
        }

LABEL_26:
        v57 = type metadata accessor for FlowRedirectionWrapperViewController();
        v58 = objc_allocWithZone(v57);
        *&v58[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_child] = v41;
        *&v58[OBJC_IVAR____TtC23ShelfKitCollectionViews36FlowRedirectionWrapperViewController_customNextResponder] = v44;
        v80.receiver = v58;
        v80.super_class = v57;
        v43 = objc_msgSendSuper2(&v80, "initWithNibName:bundle:", 0, 0);
        goto LABEL_27;
      }

LABEL_28:
    }
  }
}

void sub_2BCCF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30A4E8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for FlowPresentationContext.presentModalFormSheet(_:))
  {
    [v2 setModalPresentationStyle:2];
  }

  else if (v9 == enum case for FlowPresentationContext.presentModalPageSheet(_:))
  {
    [v2 setModalPresentationStyle:1];
  }

  else if (v9 == enum case for FlowPresentationContext.presentModalCard(_:) || v9 == enum case for FlowPresentationContext.presentCard(_:) || v9 == enum case for FlowPresentationContext.presentSheet(_:))
  {
    [v2 setModalPresentationStyle:4];
    type metadata accessor for TransitioningDelegateProvider();
    swift_initStaticObject();
    v12 = sub_1DBB40(a1);
    [v2 setTransitioningDelegate:v12];
  }

  else if (v9 == enum case for FlowPresentationContext.presentPopover(_:))
  {
    [v2 setModalPresentationStyle:7];
    v13 = [v2 popoverPresentationController];
    if (v13)
    {
      v14 = v13;
      v15 = a1 + *(type metadata accessor for FlowPresentationHints() + 24);
      v16 = *(v15 + 40);
      if (v16 == 255)
      {
        sub_30D648();
        __break(1u);
      }

      else
      {
        v17 = *v15;
        v18 = *(v15 + 8);
        v19 = *(v15 + 16);
        v20 = *(v15 + 24);
        v21 = *(v15 + 32);
        if (v16)
        {
          sub_1DD8C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), 1);
          [v14 setSourceItem:v17];
        }

        else
        {
          sub_1DD8C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), 0);
          [v14 setSourceView:v17];
          [v14 setSourceRect:{*&v18, *&v19, *&v20, *&v21}];
        }

        sub_1DD98(v17, v18, v19, v20, v21, v16);
      }
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

void sub_2BD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_302558();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v30 = v11;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = v15;
        v19 = [v17 topViewController];
        if (v19)
        {
          v20 = v19;
          type metadata accessor for LoadingPageViewController();
          if (swift_dynamicCastClass())
          {

            v20 = [v17 popViewControllerAnimated:0];
          }

          v18 = v20;
        }
      }

      type metadata accessor for FlowActionRunner();
      v21 = swift_allocObject();
      v22 = objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning());
      v23 = v15;
      *(v21 + 16) = [v22 init];
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      v24 = &enum case for ActionMetricsBehavior.notProcessed(_:);
      if ((a5 & 1) == 0)
      {
        v24 = &enum case for ActionMetricsBehavior.fromAction(_:);
      }

      (*(v30 + 104))(v13, *v24, v10);
      sub_3093A8();

      sub_30B9B8();
      v25 = sub_302268();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
      memset(v31, 0, sizeof(v31));
      v26 = [v23 view];
      sub_309388();

      sub_EB68(v31, &unk_3FBB70);
      sub_EB68(v9, &unk_4090C0);
      v27 = *(a2 + 16);
      if (v27)
      {
        v28 = a2 + 32;
        sub_2BE484(&qword_3FBDA8, type metadata accessor for FlowActionRunner);
        do
        {
          sub_307C38();

          v28 += 40;
          --v27;
        }

        while (v27);
      }

      (*(v30 + 8))(v13, v10);
    }
  }
}

void sub_2BD45C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [a1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      sub_124C4(0, &qword_3FBE30);
      v4 = Strong;
      v5 = sub_30D098();

      if (v5)
      {
        v6 = sub_309D18();
        v8 = v7;
        if (v6 == sub_309D18() && v8 == v9)
        {

          v10 = 0;
        }

        else
        {
          v11 = sub_30D728();

          v10 = v11 ^ 1;
        }

        [v4 dismissViewControllerAnimated:v10 & 1 completion:0];
      }
    }
  }
}

uint64_t sub_2BD5C0()
{
  swift_unknownObjectWeakDestroy();
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_storefrontChangeObserver, &unk_3FBB70);
  return sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid, &qword_40D140);
}

uint64_t RootFlowController.deinit()
{
  v0 = BaseFlowController.deinit();
  swift_unknownObjectWeakDestroy();
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_storefrontChangeObserver, &unk_3FBB70);
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid, &qword_40D140);
  return v0;
}

uint64_t RootFlowController.__deallocating_deinit()
{
  v0 = BaseFlowController.deinit();

  swift_unknownObjectWeakDestroy();
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_storefrontChangeObserver, &unk_3FBB70);
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18RootFlowController_showDeferralUuid, &qword_40D140);

  return swift_deallocClassInstance();
}

void UIViewController.preferredModalSize.getter()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 preferredContentSize];
  }

  else
  {
    [v0 preferredContentSize];
  }
}

void sub_2BD7CC(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 preferredContentSize];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    [v3 preferredContentSize];
    v7 = v10;
    v9 = v11;
  }

  *a2 = v7;
  a2[1] = v9;
}

id (*UIViewController.preferredModalSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 preferredContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [v1 preferredContentSize];
    v6 = v9;
    v8 = v10;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_2BD8E0;
}

uint64_t sub_2BD90C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2BD964(void *a1, uint64_t a2)
{
  v4 = sub_30A4E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  sub_124C4(0, &qword_3FBE30);
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D368);
  if (swift_dynamicCast())
  {
    sub_EB68(v13, &qword_40D370);
    (*(v5 + 16))(v7, a2, v4);
    v9 = (*(v5 + 88))(v7, v4);
    if (v9 == enum case for FlowPresentationContext.presentModal(_:) || v9 == enum case for FlowPresentationContext.presentModalFormSheet(_:) || v9 == enum case for FlowPresentationContext.presentModalPageSheet(_:))
    {
      return 1;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_EB68(v13, &qword_40D370);
  }

  return 0;
}

uint64_t sub_2BDB40()
{
  v1 = sub_308778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FlowPresentationHints();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = sub_30A4E8();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v0 + v8 + v6[6];
  v13 = *(v12 + 40);
  if (v13 != 255)
  {
    sub_1DDB0(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), v13 & 1);
  }

  v14 = v6[7];
  v15 = sub_30AA18();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);

  v16 = v10 + v6[9];
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_2BDD50()
{
  v1 = *(sub_308778() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FlowPresentationHints() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2BC5A0(v0 + v2, v0 + v5, *v6, v6[1]);
}

uint64_t sub_2BDE48@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_40D118;
}

uint64_t type metadata accessor for RootFlowController()
{
  result = qword_40D170;
  if (!qword_40D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2BDF1C()
{
  sub_2BDFEC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2BDFEC()
{
  if (!qword_40D180)
  {
    sub_301DF8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40D180);
    }
  }
}

uint64_t sub_2BE080()
{
  v1 = sub_301DF8();
  v2 = *(v1 - 8);
  v22 = *(v2 + 80);
  v3 = (v22 + 24) & ~v22;
  v4 = *(v2 + 64);
  v5 = sub_308778();
  v6 = *(v5 - 8);
  v21 = *(v6 + 80);
  v7 = (v3 + v4 + v21) & ~v21;
  v8 = *(v6 + 64);
  v9 = type metadata accessor for FlowPresentationHints();
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v20 = *(*(v9 - 1) + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v12 = v0 + v11;
  v13 = sub_30A4E8();
  (*(*(v13 - 8) + 8))(v0 + v11, v13);
  v14 = v0 + v11 + v9[6];
  v15 = *(v14 + 40);
  if (v15 != 255)
  {
    sub_1DDB0(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), v15 & 1);
  }

  v16 = v9[7];
  v17 = sub_30AA18();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);

  v18 = v12 + v9[9];
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return _swift_deallocObject(v0, ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v22 | v21 | v10 | 7);
}

uint64_t sub_2BE328()
{
  v1 = *(sub_301DF8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_308778() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for FlowPresentationHints() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_2BC0C4(v9, v0 + v2, v0 + v5, v0 + v8, v11, v12);
}

uint64_t sub_2BE484(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2BE4D4(char a1, double a2)
{
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius] = a2;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle] = a1 & 1;
  if (a2 >= COERCE_DOUBLE(1))
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.0;
  }

  if ((a2 < COERCE_DOUBLE(1)) | a1 & 1)
  {
    v4 = &selRef__setContinuousCornerRadius_;
  }

  else
  {
    v4 = &selRef__setCornerRadius_;
  }

  if ((a2 < COERCE_DOUBLE(1)) | a1 & 1)
  {
    v5 = &selRef__setCornerRadius_;
  }

  else
  {
    v5 = &selRef__setContinuousCornerRadius_;
  }

  [v2 *v4];
  [v2 *v5];

  sub_2BE604();
}

void sub_2BE58C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners] = a1;
  v2 = sub_2DB5F8(a1);
  v3 = [v1 layer];
  [v3 setMaskedCorners:v2];

  sub_2BE604();
}

void sub_2BE604()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView);
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth) >= COERCE_DOUBLE(1))
  {
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView);
    }

    else
    {
      type metadata accessor for BorderView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v6 = *(v0 + v2);
      v7 = v5;
      if (v6)
      {
        [v6 removeFromSuperview];
        v6 = *(v0 + v2);
      }

      *(v0 + v2) = v5;
      v4 = v5;

      v8 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])();
      [v8 addSubview:v4];

      v3 = 0;
    }

    v9 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor);
    v10 = v3;
    v11 = v9;
    v21 = v4;
    v12 = [v21 layer];
    v13 = [v11 CGColor];
    [v12 setBorderColor:v13];

    v14 = *(v0 + v1);
    v15 = [v21 layer];
    [v15 setBorderWidth:v14];

    v16 = (*&stru_B8.sectname[swift_isaMask & *v0])();
    *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews10BorderView_roundedCorners] = v16;
    v17 = sub_2DB5F8(v16);
    v18 = [v21 layer];
    [v18 setMaskedCorners:v17];

    v19 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius);
    if (v19 >= COERCE_DOUBLE(1))
    {
      if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle))
      {
        [v21 _setContinuousCornerRadius:0.0];
        v20 = "_setCornerRadius:";
      }

      else
      {
        [v21 _setCornerRadius:0.0];
        v20 = "_setContinuousCornerRadius:";
      }

      [v21 v20];
    }

    else
    {
      [v21 _setContinuousCornerRadius:0.0];
      [v21 _setCornerRadius:0.0];
    }

    v3 = v21;
  }

  else
  {
    if (v3)
    {
      [v3 removeFromSuperview];
      v3 = *(v0 + v2);
    }

    *(v0 + v2) = 0;
  }
}

BOOL sub_2BE934(char a1, double a2)
{
  v3 = v2;
  v6 = [v2 superview];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for RoundedCornerView();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      (*(&stru_68.reserved2 + (swift_isaMask & *v8)))(a1 & 1, a2);
      v9 = [v2 superview];
      [v9 setNeedsLayout];
    }
  }

  v10 = "_setCornerRadius:";
  if (a1)
  {
    v10 = "_setContinuousCornerRadius:";
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [v3 _setContinuousCornerRadius:0.0];
  }

  else
  {
    [v3 v10];
  }

  v11 = "_setContinuousCornerRadius:";
  if (a1)
  {
    v11 = "_setCornerRadius:";
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [v3 _setCornerRadius:v12];
  }

  else
  {
    [v3 v11];
  }

  return a2 >= COERCE_DOUBLE(1);
}

id sub_2BEA80(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners] = -1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView] = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RoundedCornerView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setClipsToBounds:1];
  return v10;
}

void sub_2BEBC0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RoundedCornerView();
  v1 = objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView);
  if (v3)
  {
    v4 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v1);
    v5 = v3;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v5 setFrame:{v7, v9, v11, v13}];
    if (*(v0 + v2))
    {
      [v0 bringSubviewToFront:?];
    }
  }
}

id sub_2BED14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedCornerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2BEDCC()
{
  result = qword_40D3D8;
  if (!qword_40D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D3D8);
  }

  return result;
}

void sub_2BEE20()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners) = -1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth) = 0;
  sub_30D648();
  __break(1u);
}

BOOL sub_2BEF00(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  sub_124C4(0, &qword_40A690);
  v8 = sub_30D098();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

double sub_2BEF9C()
{
  sub_124C4(0, &qword_3FFD48);
  qword_42AC48 = sub_30D048(0.0, 0.0, 0.0, 0.19).super.isa;
  result = 20.0;
  *algn_42AC50 = xmmword_31D710;
  qword_42AC60 = 0x402E000000000000;
  return result;
}

double sub_2BF010()
{
  qword_42AC68 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  result = 8.0;
  *algn_42AC70 = xmmword_3333C0;
  qword_42AC80 = 0x4010000000000000;
  return result;
}

double sub_2BF068()
{
  qword_42AC88 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  result = 6.0;
  *algn_42AC90 = xmmword_3333D0;
  qword_42ACA0 = 0x4000000000000000;
  return result;
}

double sub_2BF0C4()
{
  sub_124C4(0, &qword_3FFD48);
  qword_42ACA8 = sub_30D048(0.0, 0.0, 0.0, 0.08).super.isa;
  result = 8.0;
  unk_42ACB0 = xmmword_3333C0;
  qword_42ACC0 = 0x4010000000000000;
  return result;
}

id sub_2BF138()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  qword_42ACC8 = result;
  qword_42ACD0 = 0x4018000000000000;
  qword_42ACD8 = 0;
  qword_42ACE0 = 0;
  return result;
}

double sub_2BF184()
{
  qword_42ACE8 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  result = 20.0;
  *algn_42ACF0 = xmmword_31D710;
  qword_42AD00 = 0x4024000000000000;
  return result;
}

uint64_t sub_2BF1DC()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  if (v2)
  {
    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    v5 = *(v1 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_32A8F0;
    *(v6 + 32) = 0x6F43776F64616873;
    *(v6 + 40) = 0xEB00000000726F6CLL;
    v7 = v2;
    v8 = [v7 CGColor];
    type metadata accessor for CGColor(0);
    *(v6 + 48) = v8;
    *(v6 + 72) = v9;
    strcpy((v6 + 80), "shadowRadius");
    *(v6 + 93) = 0;
    *(v6 + 94) = -5120;
    *(v6 + 96) = v5;
    *(v6 + 120) = &type metadata for CGFloat;
    strcpy((v6 + 128), "shadowOffset");
    *(v6 + 141) = 0;
    *(v6 + 142) = -5120;
    type metadata accessor for CGSize(0);
    *(v6 + 144) = v4;
    *(v6 + 152) = v3;
    *(v6 + 168) = v10;
    strcpy((v6 + 176), "shadowOpacity");
    *(v6 + 216) = &type metadata for Double;
    *(v6 + 190) = -4864;
    *(v6 + 192) = 0x3FF0000000000000;

    v11 = 4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_315430;
    strcpy((v6 + 32), "shadowOpacity");
    *(v6 + 46) = -4864;
    *(v6 + 72) = &type metadata for Double;
    *(v6 + 48) = 0;
    v11 = 1;
  }

  v12 = objc_opt_self();
  v36 = v6;
  v13 = v6 + 32;
  v38 = kCAMediaTimingFunctionEaseInEaseOut;
  v14 = &PlayControlsStackView;
  v37 = v0;
  v39 = v12;
  do
  {
    sub_2BFB84(v13, &v46);
    sub_1DA94(&v47, &v44);
    [v12 inheritedAnimationDuration];
    if (v21 != 0.0)
    {
      v22 = sub_30C098();
      v23 = [objc_opt_self() animationWithKeyPath:v22];

      v24 = v23;
      [v12 inheritedAnimationDuration];
      [v24 setDuration:?];
      [v24 setBeginTime:0.0];
      v25 = [objc_opt_self() functionWithName:v38];
      [v24 setTimingFunction:v25];

      v26 = [v0 layer];
      v27 = [v26 presentationLayer];

      if (!v27)
      {
        goto LABEL_5;
      }

      v28 = sub_30C098();
      v29 = [v27 valueForKey:v28];

      if (v29)
      {
        sub_30D448();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v40 = 0u;
      }

      v42 = v40;
      v43 = v41;
      v30 = *(&v41 + 1);
      if (*(&v41 + 1))
      {
        v31 = __swift_project_boxed_opaque_existential_1Tm(&v42, *(&v43 + 1));
        v32 = *(v30 - 8);
        __chkstk_darwin(v31);
        v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v34);
        v15 = sub_30D718();
        (*(v32 + 8))(v34, v30);
        v0 = v37;
        __swift_destroy_boxed_opaque_existential_1(&v42);
      }

      else
      {
LABEL_5:
        v15 = 0;
      }

      [v24 setFromValue:v15];
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
      [v24 setToValue:sub_30D718()];
      swift_unknownObjectRelease();
      v16 = [v0 layer];
      v17 = sub_30C098();
      [v16 addAnimation:v24 forKey:v17];

      v12 = v39;
      v14 = &PlayControlsStackView;
    }

    v18 = [v0 layer];
    __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
    v19 = sub_30D718();
    v20 = sub_30C098();

    [v18 *&v14[204]];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v13 += 48;
    --v11;
  }

  while (v11);
}

void sub_2BF7D4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 layer];
  v10 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius];
  if (v10 < COERCE_DOUBLE(1))
  {
    v11 = [objc_opt_self() bezierPathWithRect:{v2, v4, v6, v8}];
LABEL_7:
    v14 = v11;
    goto LABEL_8;
  }

  v12 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle];
  v13 = objc_opt_self();
  if ((v12 & 1) == 0)
  {
LABEL_6:
    v11 = [v13 bezierPathWithRoundedRect:-1 byRoundingCorners:v2 cornerRadii:{v4, v6, v8, v10, v10}];
    goto LABEL_7;
  }

  v13 = [v13 _bezierPathWithArcRoundedRect:v2 cornerRadius:{v4, v6, v8, v10}];
  v14 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_8:
  v15 = [v14 CGPath];

  [v9 setShadowPath:v15];
}

id sub_2BFA5C(void *a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle] = 1;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v4 = type metadata accessor for ShadowView();
  *v3 = 0u;
  v3[1] = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}