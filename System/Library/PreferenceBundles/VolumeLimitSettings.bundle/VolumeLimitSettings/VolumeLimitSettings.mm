id sub_1450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_16F8(a1, v16);
  v7 = v17;
  if (v17)
  {
    v8 = sub_1818(v16, v17);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8, v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_A474();
    (*(v9 + 8))(v11, v7);
    sub_185C(v16);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v12, a2);
  swift_unknownObjectRelease();
  sub_17B0(a1);
  return v13;
}

id VolumeLimitSettingsState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of VolumeLimitSettingsState.isSpeakerVolumeLimitModificationAllowed()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isSpeakerVolumeLimitModificationAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1768(&qword_14950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1768(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_17B0(uint64_t a1)
{
  v2 = sub_1768(&qword_14950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1818(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_185C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_18A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  return v1;
}

uint64_t sub_191C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  return v1;
}

uint64_t sub_1990()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  return v1;
}

id sub_1A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  if (!v6)
  {
LABEL_5:
    [v0 maximumValue];
    v3 = v2;
    result = [v0 minimumValue];
    v5 = (v3 - v4) + 1.0;
    if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v5 > -9.2234e18)
    {
      if (v5 < 9.2234e18)
      {
        return v5;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  result = (v6 + 1);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  return result;
}

id sub_1B4C(double a1)
{
  [v1 minimumValue];
  v4 = v3;
  [v1 maximumValue];
  v6 = v5;
  [v1 minimumValue];
  v8 = v7;
  result = sub_1A04();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = round((a1 - v4) / ((v6 - v8) / (result - 1)));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1C2C(int a1, uint64_t a2)
{
  v30 = a2;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v28 = sub_1768(&qword_14A00);
  v32 = *(v28 - 8);
  __chkstk_darwin(v28, v3);
  v26 = v24 - v4;
  v5 = sub_A3D4();
  __chkstk_darwin(v5, v6);
  v7 = sub_A3F4();
  __chkstk_darwin(v7, v8);
  v9 = sub_1768(&qword_14A08);
  v25 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v24 - v12;
  *&v2[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator] = 0;
  v14 = OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider__snappingBehavior;
  LOBYTE(v35) = 0;
  sub_A3E4();
  sub_A3C4();
  v27 = sub_380C();
  v24[1] = v5;
  sub_A384();
  (*(v10 + 32))(&v2[v14], v13, v9);
  v15 = OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider__segmentCount;
  v35 = 0;
  sub_A3E4();
  sub_A3C4();
  v16 = v26;
  sub_A384();
  v17 = v28;
  (*(v32 + 32))(&v2[v15], v16, v28);
  v35 = [objc_opt_self() systemGrayColor];
  sub_A3E4();
  sub_1768(&qword_149E0);
  sub_39E8();
  sub_A374();
  swift_beginAccess();
  (*(v10 + 8))(&v2[v14], v25);
  LOBYTE(v34) = v29 & 1;
  sub_A3E4();
  sub_A3C4();
  sub_A384();
  swift_endAccess();
  swift_beginAccess();
  (*(v32 + 8))(&v2[v15], v17);
  v34 = v30;
  sub_A3E4();
  sub_A3C4();
  sub_A384();
  swift_endAccess();
  v33.receiver = v2;
  v33.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_3AEC(0, &qword_14A10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v18;
  v20 = sub_A424();
  [v19 addAction:v20 forControlEvents:1];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = sub_A424();
  [v19 addAction:v21 forControlEvents:448];

  v22 = [objc_allocWithZone(type metadata accessor for NonMovableTapGestureRecognizer()) initWithTarget:v19 action:"handleSliderTap:"];
  [v19 addGestureRecognizer:v22];

  return v19;
}

void sub_2278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
    v3 = OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator;
    v4 = *&v1[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator];
    *&v1[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator] = v2;

    v5 = *&v1[v3];
    if (v5)
    {
      [v5 prepare];
    }
  }
}

void sub_2308()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator];
    *&Strong[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator] = 0;
  }
}

double sub_23F0()
{
  ObjectType = swift_getObjectType();
  [v0 bounds];
  v58.receiver = v0;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "trackRectForBounds:");
  v3 = v2;
  v5 = v4;
  v7 = v6;
  [v0 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v0 minimumValue];
  v57.receiver = v0;
  v57.super_class = ObjectType;
  v47 = v16;
  v17 = v9;
  v18 = v3;
  v54 = v5;
  v55 = v3;
  v53 = v7;
  objc_msgSendSuper2(&v57, "thumbRectForBounds:trackRect:value:", v17, v11, v13, v15, v3, v5, v7, 4.0, v47);
  v51 = v20;
  v52 = v19;
  v22 = v21;
  v50 = v23;
  [v0 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v0 maximumValue];
  v56.receiver = v0;
  v56.super_class = ObjectType;
  LODWORD(v48) = v32;
  objc_msgSendSuper2(&v56, "thumbRectForBounds:trackRect:value:", v25, v27, v29, v31, v18, v5, v7, 4.0, v48);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v59.origin.x = v52;
  v59.origin.y = v51;
  v59.size.width = v22;
  v59.size.height = v50;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = v34;
  v60.origin.y = v36;
  v60.size.width = v38;
  v60.size.height = v40;
  v41 = CGRectGetMidX(v60);
  v61.origin.x = v52;
  v61.origin.y = v51;
  v61.size.width = v22;
  v61.size.height = v50;
  CGRectGetMidY(v61);
  v42 = [v0 traitCollection];
  v43 = [v42 layoutDirection];

  if (v43 == &dword_0 + 1)
  {
    v44 = MidX - v41;
  }

  else
  {
    v44 = v41 - MidX;
  }

  v62.size.height = 4.0;
  v62.origin.x = v55;
  v62.origin.y = v54;
  v62.size.width = v53;
  v45 = CGRectGetWidth(v62) - v44;
  v63.size.height = 4.0;
  v63.origin.x = v55;
  v63.origin.y = v54;
  v63.size.width = v53;
  CGRectGetHeight(v63);
  return v55 + v45 * 0.5;
}

unint64_t sub_2648(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MidY = CGRectGetMidY(*&a1);
  [v4 value];
  v44 = sub_1B4C(v11);
  result = sub_1A04();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v13 = result;
    if (result)
    {
      v14 = MidY + -4.0;
      v15 = objc_opt_self();
      v16 = 0;
      v17 = &NonMovableTapGestureRecognizer;
      do
      {
        [v5 minimumValue];
        v20 = v19;
        [v5 v17[14].base_prots];
        v22 = v21;
        [v5 minimumValue];
        v24 = v23;
        result = sub_1A04();
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        v25 = (v22 - v24) / (result - 1) * v16 + v20;
        v46.origin.x = a1;
        v46.origin.y = a2;
        v46.size.width = a3;
        v46.size.height = a4;
        Width = CGRectGetWidth(v46);
        v27 = v17;
        [v5 v17[14].base_prots];
        v29 = v28;
        [v5 minimumValue];
        v31 = Width / (v29 - v30);
        [v5 minimumValue];
        v33 = v31 * (v25 - v32);
        v34 = [v5 traitCollection];
        v35 = [v34 layoutDirection];

        v36 = a1;
        v37 = a2;
        v38 = a3;
        v39 = a4;
        if (v35 == &dword_0 + 1)
        {
          v40 = CGRectGetMaxX(*&v36) - v33;
        }

        else
        {
          v40 = v33 + CGRectGetMinX(*&v36);
        }

        v41 = [v15 bezierPathWithRoundedRect:v40 + -2.0 cornerRadius:{v14, 4.0, 8.0, 4.0}];
        swift_getKeyPath();
        swift_getKeyPath();
        sub_A394();

        if (v45 == 1)
        {
          [v5 value];
          v17 = v27;
          if (v25 <= v42)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v17 = v27;
          if (v44 >= v16)
          {
LABEL_4:
            v18 = v41;
            sub_A314();
            if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_A324();
            }

            sub_A334();

            goto LABEL_7;
          }
        }

        v43 = v41;
        sub_A314();
        if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_A324();
        }

        sub_A334();

LABEL_7:
        ++v16;
      }

      while (v13 != v16);
    }

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

id sub_29F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 value];
  sub_3370(v9, a1, a2, a3, a4);
  v11 = v10;
  [v4 minimumValue];
  sub_3370(v12, a1, a2, a3, a4);
  v14 = v13;
  [v4 maximumValue];
  sub_3370(v15, a1, a2, a3, a4);
  v16 = [v4 traitCollection];
  v17 = [v16 layoutDirection];

  if (v14 >= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v14;
  }

  if (v11 <= v14)
  {
    v11 = v14;
  }

  if (v17 == &dword_0 + 1)
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    v19 = CGRectGetMaxX(v28) - v11;
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    MaxX = CGRectGetMaxX(v29);
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    v21 = v18 - CGRectGetMinX(v31);
  }

  else
  {
    v19 = v18 - a1;
    v21 = a1 + a3 - v11;
    MaxX = v11;
    MinX = v11;
    v11 = a1;
  }

  v22 = objc_opt_self();
  v23 = [v22 bezierPathWithRoundedRect:-1 byRoundingCorners:v11 cornerRadii:{a2, v19, a4, 2.0, 2.0}];
  v24 = [v22 bezierPathWithRoundedRect:-1 byRoundingCorners:MinX cornerRadii:{a2, v21, a4, 2.0, 2.0}];
  v25 = [v22 bezierPathWithRoundedRect:-1 byRoundingCorners:v18 cornerRadii:{a2, MaxX - v18, a4, 2.0, 2.0}];
  return v23;
}

id sub_2D08(char a1, float a2)
{
  ObjectType = swift_getObjectType();
  v6 = a2;
  v7 = sub_1B4C(v6);
  [v2 minimumValue];
  v9 = v8;
  [v2 maximumValue];
  v11 = v10;
  [v2 minimumValue];
  v13 = v12;
  result = sub_1A04();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  v15 = (v11 - v13) / (result - 1) * v7 + v9;
  [v2 value];
  v17 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  if ((v21 & 1) == 0)
  {
    result = [v2 isTracking];
    if (!result)
    {
      goto LABEL_11;
    }

    [v2 value];
    result = sub_1B4C(v19);
    if (v7 == result)
    {
      goto LABEL_11;
    }

LABEL_9:
    result = *&v2[OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator];
    if (result)
    {
      result = [result selectionChanged];
    }

    goto LABEL_11;
  }

  v18 = vabdd_f64(v15, v6);
  if (v18 >= 0.015)
  {
    goto LABEL_12;
  }

  result = [v2 isTracking];
  if (result && v15 != v17)
  {
    goto LABEL_9;
  }

LABEL_11:
  v6 = v15;
LABEL_12:
  if (v6 != v17)
  {
    *&v18 = v6;
    v20.receiver = v2;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, "setValue:animated:", a1 & 1, v18);
  }

  return result;
}

id sub_2F4C(void *a1)
{
  ObjectType = swift_getObjectType();
  [a1 locationInView:v1];
  v5 = v4;
  [v1 bounds];
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "trackRectForBounds:");
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 traitCollection];
  v13 = [v12 layoutDirection];

  v14 = 4.0;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  if (v13)
  {
    v18 = CGRectGetMaxX(*&v15) - v5;
  }

  else
  {
    v18 = v5 - CGRectGetMinX(*&v15);
  }

  v30.size.height = 4.0;
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v19 = v18 / CGRectGetWidth(v30);
  v20 = 0.0;
  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  if (v19 >= 1.0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v20;
  }

  [v1 maximumValue];
  v23 = v22;
  [v1 minimumValue];
  v25 = v23 - v24;
  [v1 minimumValue];
  v27 = v21 * (v25 + v26);
  sub_2D08(1, v27);
  return [v1 sendActionsForControlEvents:4096];
}

double sub_3130(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  ObjectType = swift_getObjectType();
  v39.receiver = v17;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "thumbRectForBounds:trackRect:value:", a1, a2, a3, a4, a5, a6, a7, a8, LODWORD(a9));
  v27 = v26;
  [v17 minimumValue];
  if (v28 == a9 || ([v17 maximumValue], v29 == a9))
  {
    v38.receiver = v17;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "trackRectForBounds:", a1, a2, a3, a4);
    [v17 minimumValue];
    if (v30 == a9)
    {
      v31 = 4.0;
    }

    else
    {
      v31 = -4.0;
    }

    v32 = [v17 traitCollection];
    v33 = [v32 layoutDirection];

    v34 = -v31;
    if (v33 != &dword_0 + 1)
    {
      v34 = v31;
    }

    return v27 + v34;
  }

  return v27;
}

void sub_3370(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  [v5 maximumValue];
  [v5 minimumValue];
  [v5 minimumValue];
  v10 = [v5 traitCollection];
  v11 = [v10 layoutDirection];

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11 == &dword_0 + 1)
  {
    CGRectGetMaxX(*&v12);
  }

  else
  {
    CGRectGetMinX(*&v12);
  }
}

uint64_t type metadata accessor for NotchedPlatformSlider()
{
  result = qword_149A0;
  if (!qword_149A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3620()
{
  sub_3730();
  if (v0 <= 0x3F)
  {
    sub_38C4();
    if (v1 <= 0x3F)
    {
      sub_3950();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_3730()
{
  if (!qword_149B0)
  {
    sub_37C4(&qword_149B8);
    sub_380C();
    sub_3860();
    v0 = sub_A3B4();
    if (!v1)
    {
      atomic_store(v0, &qword_149B0);
    }
  }
}

uint64_t sub_37C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_380C()
{
  result = qword_149C0;
  if (!qword_149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149C0);
  }

  return result;
}

unint64_t sub_3860()
{
  result = qword_149C8;
  if (!qword_149C8)
  {
    sub_37C4(&qword_149B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149C8);
  }

  return result;
}

void sub_38C4()
{
  if (!qword_149D0)
  {
    sub_37C4(&qword_149B8);
    sub_3860();
    v0 = sub_A3B4();
    if (!v1)
    {
      atomic_store(v0, &qword_149D0);
    }
  }
}

void sub_3950()
{
  if (!qword_149D8)
  {
    sub_37C4(&qword_149E0);
    sub_A3F4();
    sub_39E8();
    v0 = sub_A3B4();
    if (!v1)
    {
      atomic_store(v0, &qword_149D8);
    }
  }
}

unint64_t sub_39E8()
{
  result = qword_149E8;
  if (!qword_149E8)
  {
    sub_37C4(&qword_149E0);
    sub_3A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149E8);
  }

  return result;
}

unint64_t sub_3A6C()
{
  result = qword_149F0;
  if (!qword_149F0)
  {
    sub_3AEC(255, &qword_149F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149F0);
  }

  return result;
}

uint64_t sub_3AEC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_3B34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_3B7C()
{
  v1 = sub_1768(&qword_14A00);
  v17 = *(v1 - 8);
  v18 = v1;
  __chkstk_darwin(v1, v2);
  v4 = &v16 - v3;
  v5 = sub_A3D4();
  __chkstk_darwin(v5, v6);
  v7 = sub_A3F4();
  __chkstk_darwin(v7, v8);
  v9 = sub_1768(&qword_14A08);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v16 - v12;
  *(v0 + OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider_generator) = 0;
  v14 = OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider__snappingBehavior;
  LOBYTE(v19) = 0;
  sub_A3E4();
  sub_A3C4();
  sub_380C();
  sub_A384();
  (*(v10 + 32))(v0 + v14, v13, v9);
  v15 = OBJC_IVAR____TtC19VolumeLimitSettings21NotchedPlatformSlider__segmentCount;
  v19 = 0;
  sub_A3E4();
  sub_A3C4();
  sub_A384();
  (*(v17 + 32))(v0 + v15, v4, v18);
  v19 = [objc_opt_self() systemGrayColor];
  sub_A3E4();
  sub_1768(&qword_149E0);
  sub_39E8();
  sub_A374();
  sub_A454();
  __break(1u);
}

void sub_3F04()
{
  v1 = v0;
  v2 = [v0 _minTrackView];
  if (v2)
  {
    v3 = v2;
    [v2 setHidden:1];

    v4 = [v0 _maxTrackView];
    if (v4)
    {
      v5 = v4;
      [v4 setHidden:1];

      v6 = sub_23F0();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = sub_2648(v6, v7, v9, v11);
      v15 = v14;
      v16 = sub_29F4(v6, v8, v10, v12);
      v18 = v17;
      KeyPath = v19;
      v21 = [v1 minimumTrackTintColor];
      if (v21)
      {
        goto LABEL_6;
      }

      if (qword_14918 != -1)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v21 = qword_152B8;
LABEL_6:
        [v21 set];
        [(__objc2_class_ro *)v16 fill];
        v22 = [v1 maximumTrackTintColor];
        if (!v22)
        {
          if (qword_14918 != -1)
          {
            swift_once();
          }

          v22 = qword_152B8;
        }

        v39 = v22;
        [v22 set];
        [v18 fill];
        v23 = [v1 tintColor];
        if (!v23)
        {
          goto LABEL_40;
        }

        v24 = v23;
        [v23 set];

        v38 = KeyPath;
        [KeyPath fill];
        v25 = [objc_allocWithZone(UIBezierPath) init];
        swift_getKeyPath();
        KeyPath = swift_getKeyPath();
        sub_A394();

        v26 = v40;
        if (!v40)
        {
          if (qword_14910 != -1)
          {
            swift_once();
          }

          v26 = qword_152B0;
        }

        [v26 set];
        v36 = v16;
        v37 = v18;
        v35 = v21;
        if (v13 >> 62)
        {
          v27 = sub_A464();
          v16 = &NonMovableTapGestureRecognizer;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v27 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
          v16 = &NonMovableTapGestureRecognizer;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

        if (v27 < 1)
        {
          __break(1u);
          goto LABEL_36;
        }

        for (i = 0; i != v27; ++i)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v29 = sub_A444();
          }

          else
          {
            v29 = *(v13 + 8 * i + 32);
          }

          v18 = v29;
          [v25 appendPath:{v29, v35, v36, v37}];
        }

LABEL_24:
        [v25 fill];
        v30 = [objc_allocWithZone(UIBezierPath) init];
        v31 = [v1 tintColor];
        if (!v31)
        {
          goto LABEL_41;
        }

        KeyPath = v31;

        [KeyPath set];

        if (v15 >> 62)
        {
          v1 = sub_A464();
          if (!v1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v1 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
          if (!v1)
          {
            goto LABEL_34;
          }
        }

        if (v1 >= 1)
        {
          for (j = 0; j != v1; j = j + 1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v33 = sub_A444();
            }

            else
            {
              v33 = *(v15 + 8 * j + 32);
            }

            v34 = v33;
            [v30 appendPath:v33];
          }

LABEL_34:

          [v30 fill];

          return;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_43CC()
{
  v1 = v0;
  v2 = sub_9FD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 104);
  v8 = v1[14];
  v9 = objc_allocWithZone(type metadata accessor for NotchedPlatformSlider());
  v10 = sub_1C2C(v7, v8);
  v11 = *v1;
  v34 = *v1;
  v35 = *(v1 + 8);
  LOBYTE(v7) = v35;

  if ((v7 & 1) == 0)
  {
    sub_A364();
    v12 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v34, &qword_14B20);
    (*(v3 + 8))(v6, v2);
    v11 = v32;
  }

  if (v11)
  {
    sub_5990();
    v13 = v10;

    v14 = sub_A404();
    [v13 setTintColor:v14];
  }

  v33 = *(v1 + 24);
  v32 = v1[2];
  v15 = v33;
  v16 = v10;
  sub_5CF8(&v32, &v30);
  if (v15 != 1)
  {
    sub_A364();
    v17 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v32, &qword_14B28);
    (*(v3 + 8))(v6, v2);
  }

  sub_5990();
  v18 = sub_A404();
  [v16 setMaximumTrackTintColor:v18];

  v31 = *(v1 + 40);
  v30 = v1[4];
  v19 = v31;

  if ((v19 & 1) == 0)
  {
    sub_A364();
    v20 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v30, &qword_14B28);
    (*(v3 + 8))(v6, v2);
  }

  v21 = sub_A404();
  [v16 setMinimumTrackTintColor:v21];

  v29 = *(v1 + 56);
  v28 = v1[6];
  LOBYTE(v21) = v29;

  if ((v21 & 1) == 0)
  {
    sub_A364();
    v22 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v28, &qword_14B28);
    (*(v3 + 8))(v6, v2);
  }

  v23 = sub_A404();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v23;
  v24 = v16;
  sub_A3A4();
  sub_1768(&qword_14B18);
  sub_A134();
  [v24 addTarget:v27 action:"valueChanged:" forControlEvents:4096];

  sub_A134();
  [v24 addTarget:v27 action:"editingEnded:" forControlEvents:448];

  return v24;
}

uint64_t sub_490C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_9FD4();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6, v7);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v2 + 64);
  *&v69 = *(v2 + 80);
  sub_1768(&qword_14B10);
  sub_A274();
  v10 = v66[0];
  v63[0] = sub_1768(&qword_14B18);
  v63[1] = a2;
  sub_A144();
  v11 = sub_9F74();

  if (v11)
  {
  }

  v12 = v10;
  sub_2D08(v11 != 0, v12);
  v83 = *(v3 + 8);
  v13 = *v3;
  v82 = *v3;
  v14 = v83;

  if ((v14 & 1) == 0)
  {
    sub_A364();
    v15 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v82, &qword_14B20);
    (*(v64 + 8))(v9, v65);
    v13 = v68;
  }

  if (v13)
  {
    sub_5990();

    v16 = sub_A404();
    v17 = [a1 tintColor];
    if (v17)
    {
      v18 = v17;
      v19 = sub_A414();

      if (v19)
      {

        goto LABEL_11;
      }
    }

    else
    {
    }

    v20 = sub_A404();
    [a1 setTintColor:v20];
  }

LABEL_11:
  v21 = [a1 maximumTrackTintColor];
  v81 = *(v3 + 24);
  v80 = *(v3 + 16);
  v22 = v81;

  if ((v22 & 1) == 0)
  {
    sub_A364();
    v23 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v80, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  sub_5990();
  v24 = sub_A404();
  v25 = v24;
  if (v21)
  {
    v26 = sub_A414();

    if (v26)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((v22 & 1) == 0)
  {
    sub_A364();
    v27 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v80, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  v28 = sub_A404();
  [a1 setMaximumTrackTintColor:v28];

LABEL_20:
  v29 = [a1 minimumTrackTintColor];
  v79 = *(v3 + 40);
  v78 = *(v3 + 32);
  v30 = v79;

  if ((v30 & 1) == 0)
  {
    sub_A364();
    v31 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v78, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  v32 = sub_A404();
  v33 = v32;
  if (v29)
  {
    v34 = sub_A414();

    if (v34)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if ((v30 & 1) == 0)
  {
    sub_A364();
    v35 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v78, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  v36 = sub_A404();
  [a1 setMinimumTrackTintColor:v36];

LABEL_29:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  v37 = v68;
  v77 = *(v3 + 56);
  v76 = *(v3 + 48);
  v38 = v77;

  if ((v38 & 1) == 0)
  {
    sub_A364();
    v39 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v76, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  v40 = sub_A404();
  v41 = v40;
  if (v37)
  {
    v42 = sub_A414();

    if (v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if ((v38 & 1) == 0)
  {
    sub_A364();
    v43 = sub_A154();
    sub_9F54();

    sub_9FC4();
    swift_getAtKeyPath();
    sub_5930(&v76, &qword_14B28);
    (*(v64 + 8))(v9, v65);
  }

  v44 = sub_A404();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v68 = v44;
  v45 = a1;
  sub_A3A4();
LABEL_38:
  v46 = *(v3 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  if (v46 != v68)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v68) = v46;
    v47 = a1;
    sub_A3A4();
  }

  v48 = *(v3 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  if (v48 != v68)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v68 = v48;
    v49 = a1;
    sub_A3A4();
  }

  sub_A134();
  v50 = v67;
  v51 = *(v67 + 16);
  v52 = *(v67 + 32);
  v53 = *(v67 + 64);
  v70 = *(v67 + 48);
  v71 = v53;
  v54 = *(v67 + 80);
  v55 = *(v67 + 112);
  v73 = *(v67 + 96);
  v74 = v55;
  v75 = *(v67 + 128);
  v72 = v54;
  v68 = v51;
  v69 = v52;
  v56 = *v3;
  v57 = *(v3 + 16);
  v58 = *(v3 + 48);
  *(v67 + 48) = *(v3 + 32);
  *(v50 + 64) = v58;
  *(v50 + 16) = v56;
  *(v50 + 32) = v57;
  v59 = *(v3 + 64);
  v60 = *(v3 + 80);
  v61 = *(v3 + 96);
  *(v50 + 128) = *(v3 + 112);
  *(v50 + 96) = v60;
  *(v50 + 112) = v61;
  *(v50 + 80) = v59;
  sub_58F8(v3, v66);
  sub_5CC8(&v68);
}

uint64_t sub_5328@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 96);
  v14[5] = *(v1 + 80);
  v14[6] = v4;
  v5 = *(v1 + 16);
  v14[0] = *v1;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v14[1] = v5;
  v14[2] = v6;
  v15 = *(v1 + 112);
  v14[3] = v7;
  v14[4] = v3;
  type metadata accessor for NotchedSliderCoordinator();
  v8 = swift_allocObject();
  *(v8 + 136) = 0;
  v9 = *(v1 + 80);
  *(v8 + 80) = *(v1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v1 + 96);
  *(v8 + 128) = *(v1 + 112);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v11 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v11;
  *a1 = v8;
  return sub_58F8(v14, v13);
}

uint64_t sub_5410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5D68();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_5474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5D68();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_54F4()
{
  sub_5D68();
  sub_A0F4();
  __break(1u);
}

id sub_551C(void *a1)
{
  if ((*(v1 + 136) & 1) == 0)
  {
    *(v1 + 136) = 1;
    v3 = *(v1 + 104);

    v3(1);
  }

  [a1 value];
  v7 = v4;
  sub_1768(&qword_14B10);
  sub_A284();

  sub_A274();
  HIDWORD(v5) = HIDWORD(v7);
  *&v5 = v7;
  return [a1 setValue:v5];
}

uint64_t sub_56E4()
{
  j__swift_release();

  return _swift_deallocClassInstance(v0, 137, 7);
}

__n128 sub_57B4(uint64_t a1, __int128 *a2)
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

uint64_t sub_57E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5828(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t sub_58A4()
{
  result = qword_14B08;
  if (!qword_14B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B08);
  }

  return result;
}

uint64_t sub_5930(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1768(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_5990()
{
  result = qword_149F8;
  if (!qword_149F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_149F8);
  }

  return result;
}

uint64_t sub_59DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  *a1 = v3;
  return result;
}

uint64_t sub_5A5C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_A3A4();
}

uint64_t sub_5ACC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  *a1 = v3;
  return result;
}

uint64_t sub_5B4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_A3A4();
}

uint64_t sub_5BBC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A394();

  *a1 = v3;
  return result;
}

uint64_t sub_5C40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_A3A4();
}

uint64_t sub_5CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1768(&qword_14B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5D68()
{
  result = qword_14B30;
  if (!qword_14B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B30);
  }

  return result;
}

id sub_5DF0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NotchedSliderSnappingBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotchedSliderSnappingBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_5FC8()
{
  v1 = *v0;
  sub_A484();
  sub_A494(v1);
  return sub_A4A4();
}

Swift::Int sub_603C()
{
  v1 = *v0;
  sub_A484();
  sub_A494(v1);
  return sub_A4A4();
}

id sub_60B4()
{
  type metadata accessor for FindVolumeLimitSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_152C0 = result;
  return result;
}

unint64_t sub_6134()
{
  result = qword_14C68;
  if (!qword_14C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C68);
  }

  return result;
}

uint64_t sub_61A4@<X0>(void *a1@<X8>)
{
  [objc_allocWithZone(type metadata accessor for VolumeLimitSettingsState()) init];
  result = sub_A224();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_6204()
{
  v0 = sub_6260();

  return SettingsPane.init(makeContent:)(sub_61A4, 0, &type metadata for VolumeLimitSettingsSection, v0);
}

unint64_t sub_6260()
{
  result = qword_14C70;
  if (!qword_14C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C70);
  }

  return result;
}

unint64_t sub_62C8()
{
  result = qword_14C78;
  if (!qword_14C78)
  {
    sub_37C4(&qword_14C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C78);
  }

  return result;
}

void sub_632C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v16._object = [objc_allocWithZone(type metadata accessor for VolumeLimitSettingsState()) init];
  sub_A224();
  v2 = objc_allocWithZone(sub_1768(&qword_14CB0));
  v3 = sub_A054();
  if (qword_14920 != -1)
  {
    swift_once();
  }

  v4.super.isa = qword_152C0;
  v16._countAndFlagsBits = 0x800000000000BDD0;
  v18._countAndFlagsBits = 0x4C20656D756C6F56;
  v18._object = 0xEC00000074696D69;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_9E74(v18, v19, v4, v20, v16);
  v5 = sub_A2F4();

  [v1 setTitle:v5];

  v6 = [v3 view];
  if (!v6)
  {
    v7 = v3;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview:v7];

    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 bounds];
      v13 = v12;
      v15 = v14;

      [v7 setFrame:{0.0, 0.0, v13, v15}];
      [v7 setAutoresizingMask:18];
      [v1 addChildViewController:v3];
      [v3 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_6720(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_672C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_6774(uint64_t result, int a2, int a3)
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

uint64_t sub_67DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = sub_1768(&qword_14CC8);
  __chkstk_darwin(v5, v6);
  v8 = v25 - v7;
  v25[4] = a1;
  v25[5] = a2;
  sub_A024();
  if (qword_14920 != -1)
  {
    swift_once();
  }

  v9 = qword_152C0;
  v26 = sub_A1A4();
  v27 = v10;
  v28 = v11 & 1;
  v29 = v12;
  sub_1768(&qword_14CF0);
  sub_8760(&qword_14CE8, &qword_14CF0);
  sub_A2B4();
  v26 = a1;
  v27 = a2;
  sub_1768(&qword_14D10);
  sub_A234();
  v13 = v25[8];
  swift_getKeyPath();
  v26 = v13;
  sub_853C();
  sub_9F04();

  v14 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
  swift_beginAccess();
  v15 = v13[v14];

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v15 & 1) == 0;
  v18 = &v8[*(v5 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_85FC;
  v18[2] = v17;
  sub_A024();
  v19 = v9;
  v20 = sub_A1A4();
  v22 = v21;
  LOBYTE(v9) = v23;
  sub_83B0();
  sub_A1F4();
  sub_8614(v20, v22, v9 & 1);

  return sub_8624(v8);
}

uint64_t sub_6B68@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v44 = a2;
  v45 = a1;
  v52 = a3;
  v5 = sub_1768(&qword_14D20);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5, v6);
  v8 = &v43 - v7;
  v9 = sub_1768(&qword_14D28);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v53 = &v43 - v14;
  v15 = sub_1768(&qword_14D30);
  v46 = *(v15 - 8);
  v47 = v15;
  v17 = __chkstk_darwin(v15, v16);
  v48 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v43 - v20;
  v63 = a1;
  v64 = v3;
  sub_1768(&qword_14D10);
  sub_A244();
  v22 = v60;
  v23 = v61;
  v24 = v62;
  swift_getKeyPath();
  v60 = v22;
  v61 = v23;
  v62 = v24;
  sub_1768(&qword_14D38);
  sub_A294();

  v26 = v57;
  v25 = v58;
  LOBYTE(v3) = v59;

  v54 = v26;
  v55 = v25;
  v56 = v3;
  sub_A2C4();
  sub_1768(&qword_14D40);
  sub_A2A4();

  sub_1768(&qword_14D48);
  v60 = &type metadata for Text;
  v61 = &protocol witness table for Text;
  v27 = 1;
  swift_getOpaqueTypeConformance2();
  v28 = v44;
  v29 = v45;
  sub_A264();
  v60 = v29;
  v61 = v28;
  sub_A234();
  v30 = v63;
  VolumeLimitSettingsState.isVolumeLimitEnabled.getter();
  LOBYTE(v25) = v31;

  if (v25)
  {
    *v8 = sub_A044();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v32 = sub_1768(&qword_14D58);
    sub_7190(v29, v28, &v8[*(v32 + 44)]);
    sub_8694(v8, v53);
    v27 = 0;
  }

  v33 = v53;
  (*(v49 + 56))(v53, v27, 1, v50);
  v34 = v46;
  v35 = *(v46 + 16);
  v36 = v48;
  v37 = v47;
  v35(v48, v21, v47);
  v38 = v51;
  sub_87FC(v33, v51, &qword_14D28);
  v39 = v52;
  v35(v52, v36, v37);
  v40 = sub_1768(&qword_14D50);
  sub_87FC(v38, &v39[*(v40 + 48)], &qword_14D28);
  sub_5930(v33, &qword_14D28);
  v41 = *(v34 + 8);
  v41(v21, v37);
  sub_5930(v38, &qword_14D28);
  return (v41)(v36, v37);
}

uint64_t sub_705C()
{
  sub_A024();
  if (qword_14920 != -1)
  {
    swift_once();
  }

  v0 = qword_152C0;
  v1 = sub_A1A4();
  v3 = v2;
  v5 = v4 & 1;
  sub_9F84();
  sub_A214();
  sub_8614(v1, v3, v5);
}

uint64_t sub_7190@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v71 = a1;
  v66 = sub_1768(&qword_14D60);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66, v4);
  v63 = &v57 - v5;
  v65 = sub_1768(&qword_14D68);
  v7 = __chkstk_darwin(v65, v6);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v68 = &v57 - v10;
  v61 = sub_9EC4();
  v11 = *(v61 - 8);
  __chkstk_darwin(v61, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_9EE4();
  __chkstk_darwin(v15 - 8, v16);
  v17 = sub_1768(&qword_14D70);
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v57 - v24;
  v26 = sub_A014();
  __chkstk_darwin(v26 - 8, v27);
  sub_A004();
  v85._countAndFlagsBits = 0x206D756D6978614DLL;
  v85._object = 0xEF203A74696D694CLL;
  sub_9FF4(v85);
  v83._countAndFlagsBits = v71;
  v83._object = a2;
  v67 = a2;
  v62 = sub_1768(&qword_14D10);
  sub_A234();
  v28 = v80;
  VolumeLimitSettingsState.volumeLimit.getter();
  v30 = v29;

  LODWORD(v80) = v30;
  sub_9ED4();
  v31 = sub_8704();
  sub_9E94();
  sub_9EB4();
  sub_9EA4();
  (*(v11 + 8))(v14, v61);
  v32 = *(v18 + 8);
  v32(v22, v17);
  sub_8760(&qword_14D80, &qword_14D70);
  v58 = v31;
  sub_A2E4();
  v32(v25, v17);
  sub_9FE4(v83);

  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_9FF4(v86);
  sub_A034();
  if (qword_14920 != -1)
  {
    swift_once();
  }

  v57 = qword_152C0;
  v59 = sub_A1A4();
  v34 = v33;
  v60 = v35;
  v61 = v36;
  v37 = v71;
  v38 = v67;
  v80 = v71;
  v81 = v67;
  sub_A244();
  countAndFlagsBits = v83._countAndFlagsBits;
  object = v83._object;
  v41 = v84;
  swift_getKeyPath();
  v83._countAndFlagsBits = countAndFlagsBits;
  v83._object = object;
  v84 = v41;
  sub_1768(&qword_14D38);
  sub_A294();

  v42 = v80;
  v43 = v81;
  v44 = v82;

  v77 = v42;
  v78 = v43;
  v79 = v44;
  v76 = 0x3F6666663E4CCCCDLL;
  v74 = 0;
  v75 = 1;
  v72 = 0;
  v73 = 1;
  sub_1768(&qword_14D88);
  sub_8760(&qword_14D90, &qword_14D88);
  v56._object = v58;
  v45 = v63;
  sub_A254();
  v56._countAndFlagsBits = 0x800000000000BDD0;
  v87._countAndFlagsBits = 0x4C20656D756C6F56;
  v87._object = 0xEC00000074696D69;
  v88.value._countAndFlagsBits = 0;
  v88.value._object = 0;
  v46.super.isa = v57;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v83._countAndFlagsBits = sub_9E74(v87, v88, v46, v89, v56);
  v83._object = v47;
  sub_8760(&qword_14D98, &qword_14D60);
  sub_87A8();
  v48 = v69;
  v49 = v66;
  sub_A204();

  (*(v64 + 8))(v45, v49);
  v83._countAndFlagsBits = v37;
  v83._object = v38;
  sub_A234();
  v50 = v80;
  VolumeLimitSettingsState.volumeLimit.getter();

  v51 = v68;
  sub_9F94();
  sub_5930(v48, &qword_14D68);
  sub_87FC(v51, v48, &qword_14D68);
  v52 = v70;
  v53 = v59;
  *v70 = v59;
  v52[1] = v34;
  LOBYTE(v38) = v60 & 1;
  *(v52 + 16) = v60 & 1;
  v52[3] = v61;
  v54 = sub_1768(&qword_14DA8);
  sub_87FC(v48, v52 + *(v54 + 48), &qword_14D68);
  sub_8864(v53, v34, v38);

  sub_5930(v51, &qword_14D68);
  sub_5930(v48, &qword_14D68);
  sub_8614(v53, v34, v38);
}

uint64_t sub_7AE4@<X0>(uint64_t a1@<X8>)
{
  sub_A024();
  result = sub_A1A4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_7B74@<X0>(uint64_t a1@<X8>)
{
  sub_A024();
  if (qword_14920 != -1)
  {
    swift_once();
  }

  v2 = qword_152C0;
  v3 = sub_A1A4();
  v5 = v4;
  v7 = v6;
  sub_A164();
  v8 = sub_A194();
  v10 = v9;
  v12 = v11;

  sub_8614(v3, v5, v7 & 1);

  sub_A114();
  v13 = sub_A184();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_8614(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_7D0C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v47 = sub_1768(&qword_14DB0);
  __chkstk_darwin(v47, v1);
  v3 = &v42 - v2;
  v4 = sub_1768(&qword_14DB8);
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v54 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v52 = &v42 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v42 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v48 = &v42 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v49 = &v42 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v50 = &v42 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v51 = &v42 - v27;
  __chkstk_darwin(v26, v28);
  v53 = &v42 - v29;
  v55 = 1045220557;
  sub_8704();
  sub_9F64();
  v55 = 1050253722;
  sub_9F64();
  v55 = 1053609165;
  sub_9F64();
  v55 = 1056964608;
  sub_9F64();
  v55 = 1058642330;
  sub_9F64();
  v55 = 1060320051;
  v45 = v15;
  sub_9F64();
  v55 = 1061997773;
  sub_9F64();
  v55 = 1063675494;
  sub_9F64();
  v30 = v47[12];
  v31 = v47[16];
  v32 = v47[20];
  v33 = v47[28];
  v34 = v47[32];
  v42 = v47[24];
  v43 = v34;
  v44 = v47[36];
  v35 = *(v5 + 16);
  v35(v3, v53, v4);
  v35(&v3[v30], v51, v4);
  v35(&v3[v31], v50, v4);
  v35(&v3[v32], v49, v4);
  v35(&v3[v42], v48, v4);
  v36 = &v3[v33];
  v37 = v45;
  v35(v36, v45, v4);
  v38 = v52;
  v35(&v3[v43], v52, v4);
  v39 = v54;
  v35(&v3[v44], v54, v4);
  sub_A124();
  v40 = *(v5 + 8);
  v40(v39, v4);
  v40(v38, v4);
  v40(v37, v4);
  v40(v48, v4);
  v40(v49, v4);
  v40(v50, v4);
  v40(v51, v4);
  return (v40)(v53, v4);
}

uint64_t sub_8204()
{
  v1 = sub_1768(&qword_14CB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v10[-v4];
  v6 = v0[1];
  v11 = *v0;
  v12 = v6;
  sub_1768(&qword_14CC0);
  v7 = sub_37C4(&qword_14CC8);
  v8 = sub_83B0();
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_A174();
  sub_8760(&qword_14D08, &qword_14CB8);
  sub_A1B4();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_83B0()
{
  result = qword_14CD0;
  if (!qword_14CD0)
  {
    sub_37C4(&qword_14CC8);
    sub_8468();
    sub_8760(&qword_14CF8, &qword_14D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CD0);
  }

  return result;
}

unint64_t sub_8468()
{
  result = qword_14CD8;
  if (!qword_14CD8)
  {
    sub_37C4(&qword_14CE0);
    sub_8760(&qword_14CE8, &qword_14CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CD8);
  }

  return result;
}

unint64_t sub_853C()
{
  result = qword_14D18;
  if (!qword_14D18)
  {
    type metadata accessor for VolumeLimitSettingsState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D18);
  }

  return result;
}

uint64_t sub_8594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9FA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8624(uint64_t a1)
{
  v2 = sub_1768(&qword_14CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1768(&qword_14D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_8704()
{
  result = qword_14D78;
  if (!qword_14D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D78);
  }

  return result;
}

uint64_t sub_8760(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_37C4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_87A8()
{
  result = qword_14DA0;
  if (!qword_14DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14DA0);
  }

  return result;
}

uint64_t sub_87FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1768(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8864(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8874()
{
  sub_37C4(&qword_14CB8);
  sub_8760(&qword_14D08, &qword_14CB8);
  return swift_getOpaqueTypeConformance2();
}

id VolumeLimitSettingsState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void VolumeLimitSettingsState.isVolumeLimitEnabled.getter()
{
  swift_getKeyPath();
  *&v5 = v0;
  sub_853C();
  sub_9F04();

  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 attributeForKey:AVSystemController_IsMaximumSpeakerVolumeLimitEnabledAttribute];

    if (v3)
    {
      sub_A434();
      swift_unknownObjectRelease();
      sub_8BAC(&v4, &v5);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_8AAC()
{
  swift_getKeyPath();
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

uint64_t type metadata accessor for VolumeLimitSettingsState()
{
  result = qword_14E00;
  if (!qword_14E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_8BAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t VolumeLimitSettingsState.isVolumeLimitEnabled.setter()
{
  swift_getKeyPath();
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

id VolumeLimitSettingsState.volumeLimit.getter()
{
  swift_getKeyPath();
  *&v19 = v0;
  sub_853C();
  sub_9F04();

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 attributeForKey:AVSystemController_DefaultMaximumSpeakerVolumeLimitAttribute];

  if (v4)
  {
    sub_A434();
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
      *&v5 = v16;
      goto LABEL_10;
    }
  }

  else
  {
    sub_17B0(&v19);
  }

  *&v5 = 0.6;
LABEL_10:
  v6 = [v1 sharedInstance];
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v8 = AVSystemController_MaximumSpeakerVolumeLimitAttribute;
  v9 = [v6 attributeForKey:AVSystemController_MaximumSpeakerVolumeLimitAttribute];

  if (v9)
  {
    sub_A434();
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
    result = swift_dynamicCast();
    if (result)
    {
      v11 = v16;
      goto LABEL_19;
    }
  }

  else
  {
    result = sub_17B0(&v19);
  }

  v11 = *&v5;
LABEL_19:
  if (v11 == 1.0)
  {
    result = [v1 sharedAVSystemController];
    if (result)
    {
      v12 = result;
      isa = sub_A354().super.super.isa;
      *&v19 = 0;
      v14 = [v12 setAttribute:isa forKey:v8 error:&v19];

      if (v14)
      {
        return v19;
      }

      else
      {
        v15 = v19;
        sub_9E84();

        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_8F30@<X0>(_DWORD *a1@<X8>)
{
  result = VolumeLimitSettingsState.volumeLimit.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_8F5C()
{
  swift_getKeyPath();
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

uint64_t VolumeLimitSettingsState.volumeLimit.setter()
{
  swift_getKeyPath();
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

uint64_t VolumeLimitSettingsState.isSpeakerVolumeLimitModificationAllowed.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_853C();
  sub_9F04();

  v1 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
  swift_beginAccess();
  return *(v3 + v1);
}

id sub_9154@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedAVSystemController];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  isa = sub_A354().super.super.isa;
  v8 = 0;
  v5 = [v3 setAttribute:isa forKey:AVSystemController_MaximumSpeakerVolumeLimitAttribute error:&v8];

  if (v5)
  {
    result = v8;
  }

  else
  {
    v7 = v8;
    sub_9E84();

    swift_willThrow();
  }

  *a1 = v5 ^ 1;
  return result;
}

uint64_t (*VolumeLimitSettingsState.volumeLimit.modify(uint64_t a1))(void *a1)
{
  *(a1 + 8) = v1;
  VolumeLimitSettingsState.volumeLimit.getter();
  *(a1 + 16) = v3;
  return sub_92C4;
}

uint64_t sub_92C4(void *a1)
{
  swift_getKeyPath();
  *a1 = a1[1];
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

id sub_93B4@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedAVSystemController];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  isa = sub_A344().super.super.isa;
  v8 = 0;
  v5 = [v3 setAttribute:isa forKey:AVSystemController_IsMaximumSpeakerVolumeLimitEnabledAttribute error:&v8];

  if (v5)
  {
    result = v8;
  }

  else
  {
    v7 = v8;
    sub_9E84();

    swift_willThrow();
  }

  *a1 = v5 ^ 1;
  return result;
}

id sub_94F0@<X0>(_DWORD *a1@<X8>)
{
  result = VolumeLimitSettingsState.volumeLimit.getter();
  *a1 = v3;
  return result;
}

uint64_t (*VolumeLimitSettingsState.isVolumeLimitEnabled.modify(uint64_t a1))(void *a1)
{
  *(a1 + 8) = v1;
  VolumeLimitSettingsState.isVolumeLimitEnabled.getter();
  *(a1 + 16) = v3 & 1;
  return sub_9588;
}

uint64_t sub_9588(void *a1)
{
  swift_getKeyPath();
  *a1 = a1[1];
  sub_1768(&qword_14DC8);
  sub_853C();
  sub_9EF4();
}

uint64_t sub_9670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_853C();
  sub_9F04();

  v4 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t VolumeLimitSettingsState.isSpeakerVolumeLimitModificationAllowed.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_853C();
    sub_9EF4();
  }

  return result;
}

void (*VolumeLimitSettingsState.isSpeakerVolumeLimitModificationAllowed.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_853C();
  sub_9F04();

  *v4 = v1;
  swift_getKeyPath();
  sub_9F24();

  swift_beginAccess();
  return sub_9984;
}

void sub_9984(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_9F14();

  free(v1);
}

id VolumeLimitSettingsState.init()()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result isSpeakerVolumeLimitModificationAllowed];

    v0[OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed] = v4;
    _s19VolumeLimitSettings0abC5StateC22__observationRegistrar33_BE8AC304D49CEB404A72F43C59CA0B1DLL11Observation0pF0Vvpfi_0();
    v9.receiver = v0;
    v9.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 defaultCenter];
    [v8 addObserver:v7 selector:"effectiveSettingsChanged" name:MCEffectiveSettingsChangedNotification object:0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_9B40()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = [result isSpeakerVolumeLimitModificationAllowed];

    v4 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
    result = swift_beginAccess();
    if (v3 == *(v0 + v4))
    {
      *(v0 + v4) = v3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v6);
      sub_853C();
      sub_9EF4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9D34()
{
  result = sub_9F44();
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

uint64_t sub_9DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC19VolumeLimitSettings24VolumeLimitSettingsState__isSpeakerVolumeLimitModificationAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}