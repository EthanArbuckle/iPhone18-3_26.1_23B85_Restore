uint64_t sub_10005EC04(_UNKNOWN **a1, char *a2, int a3, double a4)
{
  v73 = a3;
  v8 = sub_1000130DC(&qword_1000A1788);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for ColorScheme();
  p_align = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = *(type metadata accessor for TFAnimatedText(0) + 44);
  v71 = v4;
  LOBYTE(v19) = sub_10000A468(*(v4 + v18), *(v4 + v18 + 8));
  if (qword_10009F368 != -1)
  {
LABEL_37:
    swift_once();
  }

  if (byte_1000A51D8)
  {
    goto LABEL_3;
  }

  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_3:
    sub_1000693D0(0, v19);
    v21 = v20 * 0.75;
    if (*(v71 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 12.0;
    if (*(v71 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_10000B000(v17);
  (*(p_align + 13))(v15, enum case for ColorScheme.dark(_:), v11);
  v22 = static ColorScheme.== infix(_:_:)();
  v23 = *(p_align + 1);
  v23(v15, v11);
  v23(v17, v11);
  if ((v22 & 1) == 0)
  {
    sub_1000132E4(0, &unk_1000A1790);
    static Color.primary.getter();
    v24 = UIColor.init(_:)();
    goto LABEL_13;
  }

LABEL_11:
  v24 = [objc_opt_self() whiteColor];
LABEL_13:
  v25 = v24;
  v26 = objc_opt_self();
  v27 = type metadata accessor for DynamicTypeSize();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v10, a1, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = UIContentSizeCategory.init(_:)();
  v30 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v29];

  v31 = [v26 preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:v30];
  sub_1000130DC(&qword_1000A01A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077640;
  *(inited + 32) = NSFontAttributeName;
  v33 = sub_1000132E4(0, &qword_10009FAD0);
  *(inited + 40) = v31;
  v70 = v33;
  *(inited + 64) = v33;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_1000132E4(0, &unk_1000A1790);
  *(inited + 80) = v25;
  v19 = v31;
  v34 = NSFontAttributeName;
  v35 = NSForegroundColorAttributeName;
  v36 = v25;
  v37 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000130DC(&qword_1000A17A0);
  swift_arrayDestroy();
  v68 = v36;
  if (a2)
  {
    v38 = NSTextAnimationAttributeName;
    ObjectType = swift_getObjectType();
    *&v76 = a2;
    sub_100015AB0(&v76, v75);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v37;
    sub_100027C9C(v75, v38, isUniquelyReferenced_nonNull_native);
    v37 = v74;
  }

  v17 = 0;
  a4 = a4 - v21;
  a1 = &swift_unknownObjectRetain_ptr;
  p_align = &stru_10009CFE8.align;
  v69 = v34;
  while (1)
  {
    a2 = [objc_allocWithZone(NSMutableAttributedString) init];

    ObjectType = v70;
    *&v76 = v19;
    sub_100015AB0(&v76, v75);
    v10 = v19;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v37;
    v11 = sub_10000C62C(v34);
    v41 = v37[2];
    v42 = (v40 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    LOBYTE(v19) = v40;
    if (v37[3] >= v43)
    {
      if ((v15 & 1) == 0)
      {
        sub_10000CE90();
      }
    }

    else
    {
      sub_10000D7F0(v43, v15);
      v44 = sub_10000C62C(v34);
      if ((v19 & 1) != (v45 & 1))
      {
        goto LABEL_40;
      }

      v11 = v44;
    }

    v37 = v74;
    if (v19)
    {
      v46 = (v74[7] + 32 * v11);
      sub_1000143E4(v46);
      sub_100015AB0(v75, v46);
    }

    else
    {
      v74[(v11 >> 6) + 8] |= 1 << v11;
      *(v37[6] + 8 * v11) = v34;
      sub_100015AB0(v75, (v37[7] + 32 * v11));
      v47 = v37[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_36;
      }

      v37[2] = v49;
      v50 = v34;
    }

    v17 = a2;
    v72 = v10;
    if ((v73 & 1) == 0)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_39;
    }

    v51 = objc_allocWithZone(a1[184]);
    v52 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10006387C(&qword_10009F430, type metadata accessor for Key);
    v53 = a1;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    p_align = &stru_10009CFE8.align;
    v55 = [v51 initWithString:v52 attributes:{isa, v68}];

    [a2 appendAttributedString:v55];
LABEL_30:
    v56 = objc_allocWithZone(v53[184]);
    v57 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10006387C(&qword_10009F430, type metadata accessor for Key);
    v58 = Dictionary._bridgeToObjectiveC()().super.isa;
    v59 = [v56 *(p_align + 363)];

    [a2 appendAttributedString:v59];
    a1 = v53;
    if (v73)
    {
      v60 = objc_allocWithZone(v53[184]);
      v61 = String._bridgeToObjectiveC()();
      v62 = [v60 initWithString:v61];

      [a2 appendAttributedString:v62];
    }

    v63 = v72;
    [v72 pointSize];
    v19 = [v63 fontWithSize:v64 + -2.0];

    [a2 size];
    p_align = (&stru_10009CFE8 + 24);
    v34 = v69;
    if (a4 < v65)
    {
      [v19 pointSize];
      if (v66 > 8.0)
      {
        continue;
      }
    }

    return a2;
  }

  v53 = a1;
  if (a2)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  type metadata accessor for Key(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unsigned __int8 *sub_10005F574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for _UIAnimatedTextView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_allocWithZone(ObjCClassFromMetadata) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (!v8)
  {
    v8 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor:v11];

  v12 = v10;
  [v12 setSelectable:0];
  [v12 setEditable:0];
  v13 = [v12 textLayoutManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 textContainer];

    if (v15)
    {
      [v15 setMaximumNumberOfLines:1];
    }
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v12;
  [v19 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v19 setAttributedText:a2];
  [v19 setTextAlignment:1];
  [v19 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10005FFC4(0, 1);
  if (sub_10000A814(a3, a4 & 1))
  {
    v20 = v19[OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate];
    v19[OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate] = 0;
    if (v20 == 1)
    {
      [v19 setAllowsTextAnimations:0];
      v21 = [v19 textLayoutManager];
      if (v21)
      {
        v22 = v21;
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        v24 = String._bridgeToObjectiveC()();
        [v22 setValue:isa forKey:v24];
      }
    }
  }

  else
  {
    sub_10005FC3C();
  }

  return v19;
}

void sub_10005F838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  [a1 setAttributedText:?];
  [a1 setTextAlignment:1];
  type metadata accessor for _UIAnimatedTextView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v15 = a1;
    sub_10005FFC4(0, 1);
    if (sub_10000A814(a4, a5 & 1))
    {
      v10 = v9[OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate];
      v9[OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate] = 0;
      if (v10 == 1)
      {
        [v9 setAllowsTextAnimations:0];
        v11 = [v9 textLayoutManager];
        if (v11)
        {
          v12 = v11;
          isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v14 = String._bridgeToObjectiveC()();
          [v12 setValue:isa forKey:v14];
        }
      }
    }

    else
    {
      sub_10005FC3C();
    }
  }
}

uint64_t sub_10005F9C0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  type metadata accessor for _UIAnimatedTextView();
  if (swift_dynamicCastClass())
  {
    sub_10005FFC4(a3, 0);
  }

  return a1;
}

uint64_t sub_10005FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067B30();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005FAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067B30();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10005FB08()
{
  sub_100067B30();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10005FC3C()
{
  result = [v0 attributedText];
  if (result)
  {
    v2 = result;
    v3 = [result attribute:NSTextAnimationAttributeName atIndex:0 effectiveRange:0];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v13 = v18;
    v14 = v19;
    if (*(&v19 + 1))
    {
      sub_1000130DC(&unk_1000A0F60);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v17;
        v5 = *(v0 + OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate);
        *(v0 + OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate) = 1;
        if ((v5 & 1) == 0)
        {
          [v0 setAllowsTextAnimations:{1, v13, v14}];
          v6 = [v0 textLayoutManager];
          if (v6)
          {
            v7 = v6;
            isa = Bool._bridgeToObjectiveC()().super.super.isa;
            v9 = String._bridgeToObjectiveC()();
            [v7 setValue:isa forKey:v9];
          }
        }

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = sub_1000604AC;
        v16 = v10;
        *&v13 = _NSConcreteStackBlock;
        *(&v13 + 1) = 1107296256;
        *&v14 = sub_10005FF64;
        *(&v14 + 1) = &unk_100098418;
        v11 = _Block_copy(&v13);

        v12 = [v0 _animatorForTextAnimation:v4 notify:v11];
        _Block_release(v11);
        if (v12)
        {
          [v12 start];
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_1000156F8(&v13, &qword_1000A01E8);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10005FED4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC19FontPickerUIServiceP33_364789B77C608B517795CE5B8DEADC4419_UIAnimatedTextView_shouldAnimate) == 1 && [a1 state] == 1)
    {
      [a1 start];
    }
  }
}

uint64_t sub_10005FF64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_10005FFC4(uint64_t a1, char a2)
{
  result = [v2 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result string];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    result = [v2 attributedText];
    if (result)
    {
      v12 = result;
      v13 = [result attribute:NSFontAttributeName atIndex:0 effectiveRange:0];

      if (v13)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (*(&v28 + 1))
      {
        sub_1000132E4(0, &qword_10009FAD0);
        if (swift_dynamicCast())
        {
          [v26 ascender];
          v15 = v14;
          [v26 descender];
          v17 = v16;

          v18 = v15 + fabs(v17);
          if ((a2 & 1) == 0)
          {
LABEL_12:
            Height = *&a1;
            return [v2 setTextContainerInset:{(Height - v18) * 0.5, 0.0, 0.0, 0.0}];
          }

LABEL_18:
          [v2 bounds];
          Height = CGRectGetHeight(v30);
          return [v2 setTextContainerInset:{(Height - v18) * 0.5, 0.0, 0.0, 0.0}];
        }
      }

      else
      {
        sub_1000156F8(v29, &qword_1000A01E8);
      }

      result = [v2 attributedText];
      if (result)
      {
        v20 = result;
        result = [result string];
        if (result)
        {
          v21 = result;

          result = [v2 attributedText];
          if (result)
          {
            v22 = result;
            v23 = [result attributesAtIndex:0 effectiveRange:0];

            type metadata accessor for Key(0);
            sub_10006387C(&qword_10009F430, type metadata accessor for Key);
            static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v21 sizeWithAttributes:isa];
            v18 = v25;

            if ((a2 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }

LABEL_25:
          __break(1u);
          return result;
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

  return result;
}

id sub_100060418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIAnimatedTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100060474()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000604B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000604CC()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAttributedText:v1];
  [v4 setTextAlignment:1];
  return v4;
}

double sub_1000605A0(uint64_t a1, char a2)
{
  [*v2 size];
  v6 = *&a1;
  if (a2)
  {
    v6 = result;
  }

  if (v6 < result)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100060634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067B84();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100060698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067B84();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000606FC()
{
  sub_100067B84();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100060724@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = a4 + *(sub_1000130DC(&qword_1000A17A8) + 36);
  v11 = type metadata accessor for TFComponentBackground(0);
  *(v10 + v11[10]) = v9;
  sub_1000130DC(&qword_1000A16B0);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *v10 = a2 & 1;
  *(v10 + 1) = BYTE1(a2) & 1;
  *(v10 + 2) = BYTE2(a2) & 1;
  *(v10 + 3) = HIBYTE(a2) & 1;
  *(v10 + 8) = a3;
  *(v10 + 16) = KeyPath;
  *(v10 + 24) = 0;
  v14 = v10 + v11[11];
  *v14 = v12;
  *(v14 + 8) = 0;
  v15 = v10 + v11[12];
  *v15 = v13;
  *(v15 + 8) = 0;
  v16 = v10 + v11[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v10 + v11[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10 + v11[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;

  v19 = static Alignment.center.getter();
  v21 = v20;
  v22 = (v10 + *(sub_1000130DC(&qword_1000A1630) + 36));
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_1000130DC(&qword_1000A17B0);
  v24 = *(*(v23 - 8) + 16);

  return v24(a4, a1, v23);
}

uint64_t sub_100060924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (v2[3])
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  return sub_100060724(a1, v4 | v5 | v6, *(v2 + 1), a2);
}

double sub_10006096C@<D0>(uint64_t a1@<X8>)
{
  if ((*v1 & 1) != 0 || (v3 = type metadata accessor for TFComponentBackground(0), (sub_10000A814(*&v1[*(v3 + 48)], v1[*(v3 + 48) + 8]) & 1) == 0))
  {
    v4 = 0;
  }

  else
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v4 = byte_1000A51D8 ^ 1;
  }

  v5 = static Color.clear.getter();
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100060AC4(v1, v4 & 1, &v13);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  *&v18 = v6;
  *(&v18 + 1) = v8;
  v24 = v15;
  v25 = v16;
  v22 = v13;
  v23 = v14;
  v26 = v18;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;
  v20 = v6;
  v21 = v8;
  sub_100015AC0(v17, &v12, &qword_1000A1B08);
  sub_1000156F8(v19, &qword_1000A1B08);
  *a1 = v5;
  v9 = v22;
  *(a1 + 24) = v23;
  v10 = v25;
  *(a1 + 40) = v24;
  *(a1 + 56) = v10;
  result = *&v26;
  *(a1 + 72) = v26;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_100060AC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    if (*(a1 + 1))
    {
      v14 = sub_100060BE8();
    }

    else
    {
      v14 = sub_100060F14();
    }

    v4 = v14;
    v7 = static Alignment.center.getter();
    v8 = v15;
    v5 = static HierarchicalShapeStyle.quaternary.getter();
    v16 = 0uLL;
    if (*(a1 + 3))
    {
      v17 = sub_10000A468(*(a1 + 16), *(a1 + 24));
      v18 = type metadata accessor for TFComponentBackground(0);
      v19 = sub_10000A814(*(a1 + *(v18 + 60)), *(a1 + *(v18 + 60) + 8));
      sub_1000693D0(v19 & 1, v17);
      *(&v16 + 1) = v20;
    }

    v21 = v16;
    if (a2)
    {
      v6 = 1056964608;
    }

    else
    {
      v6 = 0;
    }

    v11 = v21;
    v10 = 256;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  *(a3 + 56) = result;
  return result;
}

uint64_t sub_100060BE8()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  if (qword_10009F368 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  if (byte_1000A51D8 != 1)
  {
    if (*(v0 + 2) == 1)
    {
      v12 = v6;
      type metadata accessor for TFComponentBackground(0);
      v13 = v0;
      sub_10000B000(v8);
      (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v12);
      v14 = static ColorScheme.== infix(_:_:)();
      v15 = *(v2 + 8);
      v15(v5, v12);
      v15(v8, v12);
      v16 = objc_opt_self();
      if (v14)
      {
        v17 = [v16 systemGray3Color];
      }

      else
      {
        v18 = [v16 systemGray2Color];
      }

      Color.init(uiColor:)();
      sub_10000A468(*(v13 + 16), *(v13 + 24));
      v19 = Color.opacity(_:)();

      v23 = v19;
      return AnyShapeStyle.init<A>(_:)();
    }

LABEL_12:
    v23 = static Color.accentColor.getter();
    return AnyShapeStyle.init<A>(_:)();
  }

  if ((sub_10000A468(*(v0 + 16), *(v0 + 24)) - 2) <= 2u && (*(v0 + 2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = type metadata accessor for TFComponentBackground(0);
  v10 = sub_10000A814(*(v0 + *(v9 + 52)), *(v0 + *(v9 + 52) + 8));
  v11 = 0.5;
  if (v10)
  {
    v11 = 1.0;
  }

  *&v23 = v11;
  sub_1000130DC(&qword_1000A1B10);
  sub_100015A00(&qword_1000A1B18, &qword_1000A1B10);
  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_100060F14()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Material();
  __chkstk_darwin(v8);
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D8 == 1)
  {
    static Material.thin.getter();
    return AnyShapeStyle.init<A>(_:)();
  }

  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  if ((sub_10000A468(v10, v11) - 2) < 3u)
  {
    v12 = *(v0 + 2);
    if ((v12 & 1) == 0)
    {
      sub_10000A468(v10, v11);
    }

    type metadata accessor for TFComponentBackground(0);
    sub_10000B000(v7);
    (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
    v28 = static ColorScheme.== infix(_:_:)();
    v29 = *(v2 + 8);
    v29(v5, v1);
    v29(v7, v1);
    if (v28)
    {
      static Color.primary.getter();
      v30 = Color.opacity(_:)();

      v33 = v30;
    }

    else
    {
      v31 = 0.85;
      if (v12)
      {
        v31 = 0.7;
      }

      *&v33 = v31;
      sub_1000130DC(&qword_1000A1B20);
      sub_100015A00(&qword_1000A1B28, &qword_1000A1B20);
    }

    return AnyShapeStyle.init<A>(_:)();
  }

  v13 = v0 + *(type metadata accessor for TFComponentBackground(0) + 56);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = sub_10000A814(*v13, v15);
  v17 = objc_opt_self();
  v18 = &selRef_secondarySystemFillColor;
  if ((v16 & 1) == 0)
  {
    v18 = &selRef_tertiarySystemFillColor;
  }

  v19 = [v17 *v18];
  v20 = sub_10000A814(v14, v15);
  v21 = objc_opt_self();
  v22 = &selRef_quaternarySystemFillColor;
  if (v20)
  {
    v22 = &selRef_tertiarySystemFillColor;
  }

  v23 = [v21 *v22];
  v24 = v23;
  if (*(v0 + 2))
  {
    v25 = v23;
  }

  else
  {
    v25 = v19;
  }

  v26 = v25;
  v33 = Color.init(uiColor:)();
  v27 = AnyShapeStyle.init<A>(_:)();

  return v27;
}

uint64_t sub_100061350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000130DC(&qword_1000A0F78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000130DC(&qword_1000A0F80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000614A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000130DC(&qword_1000A0F78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000130DC(&qword_1000A0F80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000615FC()
{
  sub_1000635C4(319, &qword_1000A0FF0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000635C4(319, &qword_1000A0FF8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100063574(319, &qword_1000A1000, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100063574(319, &qword_1000A1008, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000617C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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

  else
  {
    v9 = type metadata accessor for SymbolRenderingMode();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100061894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for SymbolRenderingMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100061958()
{
  sub_100063574(319, &qword_1000A10C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymbolRenderingMode();
    if (v1 <= 0x3F)
    {
      sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000620D8(319, &qword_1000A10C8, &unk_1000A10D0, &unk_10007AF88, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_100061A94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100061AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100061AF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100061B44()
{
  type metadata accessor for TFButton.Sizing();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_100062088();
      if (v2 <= 0x3F)
      {
        sub_1000620D8(319, &qword_1000A1198, &qword_1000A11A0, &unk_100079EA0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1000620D8(319, &qword_1000A11A8, qword_1000A11B0, &unk_100079EA8, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100061CBC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + ((v6 + 4) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 4] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_100061E44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 4] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t sub_100062088()
{
  result = qword_1000A1190;
  if (!qword_1000A1190)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000A1190);
  }

  return result;
}

void sub_1000620D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100013694(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100062144(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000621D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100062284(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100062298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000622F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10006236C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SymbolRenderingMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006242C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SymbolRenderingMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000624F0()
{
  sub_100063574(319, &qword_1000A10C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100063574(319, &unk_1000A12A0, &type metadata for AnyShapeStyle, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SymbolRenderingMode();
      if (v2 <= 0x3F)
      {
        sub_1000620D8(319, &qword_1000A10C8, &unk_1000A10D0, &unk_10007AF88, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100063574(319, &qword_1000A1000, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10006267C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100063574(319, &qword_1000A1370, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100063574(319, &qword_1000A1008, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100063574(319, &qword_1000A1000, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000627DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_100062944(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = a2 - 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_100062B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolRenderingMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100062C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SymbolRenderingMode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100062D1C()
{
  sub_100063574(319, &qword_1000A10C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymbolRenderingMode();
    if (v1 <= 0x3F)
    {
      sub_100063574(319, &unk_1000A13E0, &type metadata for Bool, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100062E50()
{
  sub_100063574(319, &qword_1000A14A0, &type metadata for CGFloat, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000635C4(319, &qword_1000A14A8, &type metadata accessor for HoverEffect, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_100063574(319, &qword_1000A1008, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100063574(319, &qword_1000A1000, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100063574(319, &qword_1000A1370, &type metadata for Bool, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100063040(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for HoverEffect() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v8)
  {
    v15 = *(v6 + 64);
  }

  else
  {
    v15 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v10 + 64) + 55;
  if (v14 < a2)
  {
    v17 = ((v16 + ((v15 + ((v12 + 12) & ~v12) + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v14 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v17);
      if (v22)
      {
LABEL_28:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          LODWORD(v18) = *a1;
        }

        v24 = v14 + (v18 | v23);
        return (v24 + 1);
      }
    }
  }

  if (v9 == v14)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v28 = (*(v7 + 48))((a1 + v12 + 12) & ~v12);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = (((a1 + v12 + 12) & ~v12) + v15 + v13) & ~v13;
    if (v11 != v14)
    {
      v29 = *(((v16 + v26) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      v24 = v29 - 1;
      if (v24 < 0)
      {
        v24 = -1;
      }

      return (v24 + 1);
    }

    v27 = *(v10 + 48);

    return v27(v26, v11);
  }
}

void sub_1000632A4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for HoverEffect() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(*(a4 + 16) - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v11 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v12 <= v14)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v10)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = v18 + 55;
  v22 = ((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v19 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v19)
  {
    if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a2 - v19;
    }

    else
    {
      v27 = 1;
    }

    if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v28 = ~v19 + a2;
      bzero(a1, ((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v22) = 0;
  }

  else if (v26)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v12 == v19)
  {
    v29 = *(v9 + 56);

    v29((a1 + v15 + 12) & ~v15, (a2 + 1));
  }

  else
  {
    v30 = (((a1 + v15 + 12) & ~v15) + v20 + v17) & ~v17;
    if (v14 == v19)
    {
      v31 = *(v13 + 56);

      v31(v30, a2, v14);
    }

    else
    {
      v32 = ((v21 + v30) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v32 = (a2 - 0x7FFFFFFF);
        v32[1] = 0;
      }

      else
      {
        v32[1] = a2;
      }
    }
  }
}

void sub_100063574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000635C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000637D4()
{
  result = qword_1000A14D0;
  if (!qword_1000A14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A14D0);
  }

  return result;
}

unint64_t sub_100063828()
{
  result = qword_1000A14F0;
  if (!qword_1000A14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A14F0);
  }

  return result;
}

uint64_t sub_10006387C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000638DC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TFComponent();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = v2[12];
  v8 = type metadata accessor for HoverEffect();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  (*(*(v1 - 8) + 8))(v6 + v2[13], v1);
  sub_100013A58(*(v6 + v2[14]), *(v6 + v2[14] + 8));
  sub_100013A58(*(v6 + v2[15]), *(v6 + v2[15] + 8));
  sub_100013A58(*(v6 + v2[16]), *(v6 + v2[16] + 8));

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100063A90()
{
  type metadata accessor for TFComponent();

  return sub_100055B2C();
}

unint64_t sub_100063B1C()
{
  result = qword_1000A1518;
  if (!qword_1000A1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1518);
  }

  return result;
}

unint64_t sub_100063B70()
{
  result = qword_1000A1520;
  if (!qword_1000A1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1520);
  }

  return result;
}

unint64_t sub_100063BD0()
{
  result = qword_1000A1570;
  if (!qword_1000A1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1570);
  }

  return result;
}

uint64_t sub_100063CB8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TFButton();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v2 - 8) + 64);
  (*(*(v1 - 8) + 8))(v0 + v5 + *(v2 + 48), v1);

  sub_100013A58(*(v0 + v5 + *(v3 + 72)), *(v0 + v5 + *(v3 + 72) + 8));

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

unint64_t sub_100063E20()
{
  result = qword_1000A1588;
  if (!qword_1000A1588)
  {
    sub_100013694(&qword_1000A1528);
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1588);
  }

  return result;
}

uint64_t sub_100063EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100063F58()
{
  result = qword_1000A1618;
  if (!qword_1000A1618)
  {
    sub_100013694(&qword_1000A1610);
    sub_10006387C(&qword_1000A1620, type metadata accessor for TFLabel);
    sub_100015A00(&qword_1000A1628, &qword_1000A1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1618);
  }

  return result;
}

unint64_t sub_100064040()
{
  result = qword_1000A1668;
  if (!qword_1000A1668)
  {
    sub_100013694(&qword_1000A15F8);
    sub_100013694(&qword_1000A1600);
    type metadata accessor for ButtonToggleStyle();
    sub_100015A00(&unk_1000A1670, &qword_1000A1600);
    sub_10006387C(&qword_1000A04E0, &type metadata accessor for ButtonToggleStyle);
    swift_getOpaqueTypeConformance2();
    sub_10006418C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1668);
  }

  return result;
}

unint64_t sub_10006418C()
{
  result = qword_1000A1680;
  if (!qword_1000A1680)
  {
    sub_100013694(&qword_1000A15E0);
    sub_100013694(&qword_1000A15D0);
    type metadata accessor for HighlightHoverEffect();
    sub_1000642D4();
    sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_10006387C(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1680);
  }

  return result;
}

unint64_t sub_1000642D4()
{
  result = qword_1000A1688;
  if (!qword_1000A1688)
  {
    sub_100013694(&qword_1000A15D0);
    sub_100013694(&qword_1000A15C0);
    sub_1000643CC();
    swift_getOpaqueTypeConformance2();
    sub_10006387C(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1688);
  }

  return result;
}

unint64_t sub_1000643CC()
{
  result = qword_1000A1690;
  if (!qword_1000A1690)
  {
    sub_100013694(&qword_1000A15C0);
    sub_100064484();
    sub_100015A00(&qword_1000A1628, &qword_1000A1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1690);
  }

  return result;
}

unint64_t sub_100064484()
{
  result = qword_1000A1698;
  if (!qword_1000A1698)
  {
    sub_100013694(&qword_1000A15B8);
    sub_10006387C(&qword_1000A1620, type metadata accessor for TFLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1698);
  }

  return result;
}

unint64_t sub_100064540()
{
  result = qword_1000A16A8;
  if (!qword_1000A16A8)
  {
    sub_100013694(&qword_1000A15B0);
    sub_100013694(&qword_1000A15A0);
    sub_100015A00(&qword_1000A1638, &qword_1000A15A0);
    sub_100063BD0();
    swift_getOpaqueTypeConformance2();
    sub_10006387C(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A16A8);
  }

  return result;
}

uint64_t sub_100064680()
{
  v1 = (type metadata accessor for TFToggle(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for SymbolRenderingMode();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  sub_100013A58(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100064834(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006486C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isHoverEffectEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000648C4@<X0>(_BYTE *a1@<X8>)
{
  sub_100064998();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100064960@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100064998()
{
  result = qword_1000A16B8;
  if (!qword_1000A16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A16B8);
  }

  return result;
}

uint64_t sub_1000649EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064A80@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues._accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100064AD8()
{
  result = qword_1000A16E8;
  if (!qword_1000A16E8)
  {
    sub_100013694(&qword_1000A16D0);
    sub_100064B64();
    sub_10004EB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A16E8);
  }

  return result;
}

unint64_t sub_100064B64()
{
  result = qword_1000A16F0;
  if (!qword_1000A16F0)
  {
    sub_100013694(&qword_1000A16C8);
    sub_100064BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A16F0);
  }

  return result;
}

unint64_t sub_100064BF0()
{
  result = qword_1000A16F8;
  if (!qword_1000A16F8)
  {
    sub_100013694(&qword_1000A16C0);
    sub_100015A00(&qword_1000A1700, &qword_1000A1708);
    sub_100015A00(&unk_1000A1710, &qword_10009F7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A16F8);
  }

  return result;
}

uint64_t sub_100064CD4(uint64_t a1)
{
  v2 = sub_1000130DC(&qword_1000A17E8);
  __chkstk_darwin(v2 - 8);
  sub_100015AC0(a1, &v5 - v3, &qword_1000A17E8);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100064D7C(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_100064E44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100064E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000130DC(&qword_1000A16E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100064F18()
{
  result = qword_1000A1748;
  if (!qword_1000A1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1748);
  }

  return result;
}

uint64_t sub_100064F6C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TFMenuLabel() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  v6 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  sub_100013A58(*(v6 + v2[12]), *(v6 + v2[12] + 8));
  sub_100013A58(*(v6 + v2[13]), *(v6 + v2[13] + 8));
  sub_100013A58(*(v6 + v2[14]), *(v6 + v2[14] + 8));

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000650C8(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128), double a3, double a4, double a5, double a6)
{
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = *(a1(0, v11, v12) - 8);
  v14 = v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15.n128_f64[0] = a3;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;

  return a2(v14, v11, v12, v15, v16, v17, v18);
}

unint64_t sub_100065198()
{
  result = qword_1000A1760;
  if (!qword_1000A1760)
  {
    sub_100013694(&qword_1000A1728);
    sub_10006521C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1760);
  }

  return result;
}

unint64_t sub_10006521C()
{
  result = qword_1000A1768;
  if (!qword_1000A1768)
  {
    sub_100013694(&qword_1000A1758);
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1768);
  }

  return result;
}

unint64_t sub_1000652D8()
{
  result = qword_1000A1770;
  if (!qword_1000A1770)
  {
    sub_100013694(&unk_1000A10D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1770);
  }

  return result;
}

unint64_t sub_100065358()
{
  result = qword_1000A1778;
  if (!qword_1000A1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1778);
  }

  return result;
}

unint64_t sub_1000653AC()
{
  result = qword_1000A1780;
  if (!qword_1000A1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1780);
  }

  return result;
}

uint64_t sub_100065430(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D8 == 1)
    {
      static Color.black.getter();
    }

    else
    {
      static Color.white.getter();
    }

    sub_10000A814(a2, a3 & 1);
    Color.opacity(_:)();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
    sub_10000A814(a2, a3 & 1);
    sub_1000130DC(&qword_1000A17F0);
    sub_100015A00(&qword_1000A17F8, &qword_1000A17F0);
  }

  return AnyShapeStyle.init<A>(_:)();
}

unint64_t sub_1000655B8()
{
  result = qword_1000A1868;
  if (!qword_1000A1868)
  {
    sub_100013694(&qword_1000A1860);
    sub_100015A00(&qword_1000A1870, &qword_1000A1858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1868);
  }

  return result;
}

unint64_t sub_100065670()
{
  result = qword_1000A1878;
  if (!qword_1000A1878)
  {
    sub_100013694(&qword_1000A1848);
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1878);
  }

  return result;
}

uint64_t sub_100065740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000657A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100065848(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100065860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000658BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100065934(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100065948(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100065990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000659F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000130DC(&qword_1000A0F78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100065AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000130DC(&qword_1000A0F78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100065B74()
{
  sub_100063574(319, &unk_1000A1010, &type metadata for TFUIConfig, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000635C4(319, &qword_1000A0FF0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100063574(319, &qword_1000A1000, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100065CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100065D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100065D74()
{
  sub_100013694(&qword_1000A14C0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100015A00(&qword_1000A14C8, &qword_1000A14C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000637D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A14B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A14D8, &qword_1000A14B8);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A14E0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for HoverEffect();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A14E8, &qword_1000A14E0);
  swift_getWitnessTable();
  sub_100063828();
  swift_getWitnessTable();
  sub_10006387C(&qword_1000A14F8, &type metadata accessor for HoverEffect);
  swift_getOpaqueTypeMetadata2();
  sub_100013694(&qword_1000A1500);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100015A00(&qword_1000A1508, &qword_1000A1500);
  return swift_getWitnessTable();
}

uint64_t sub_100066228()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_100013694(&qword_1000A1528);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_100013694(&unk_1000A1530);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TFFrameTracker(255);
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1540);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1548, &unk_1000A1530);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10004EB98();
  swift_getWitnessTable();
  sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker);
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1560, &qword_1000A0C90);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1568, &qword_1000A1540);
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  sub_100063BD0();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for HighlightHoverEffect();
  swift_getOpaqueTypeConformance2();
  sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000637D4();
  return swift_getWitnessTable();
}

unint64_t sub_100066714()
{
  result = qword_1000A1948;
  if (!qword_1000A1948)
  {
    sub_100013694(&qword_1000A1598);
    sub_1000667A0();
    sub_1000637D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1948);
  }

  return result;
}

unint64_t sub_1000667A0()
{
  result = qword_1000A1950;
  if (!qword_1000A1950)
  {
    sub_100013694(&qword_1000A1958);
    sub_100064040();
    sub_100064540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1950);
  }

  return result;
}

unint64_t sub_100066830()
{
  result = qword_1000A1960;
  if (!qword_1000A1960)
  {
    sub_100013694(&qword_1000A1720);
    sub_1000668BC();
    sub_1000637D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1960);
  }

  return result;
}

unint64_t sub_1000668BC()
{
  result = qword_1000A1968;
  if (!qword_1000A1968)
  {
    sub_100013694(&qword_1000A16E0);
    sub_100013694(&qword_1000A16D0);
    type metadata accessor for HighlightHoverEffect();
    sub_100064AD8();
    sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A1970, &qword_1000A1978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1968);
  }

  return result;
}

uint64_t sub_100066A00()
{
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1728);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_100013694(&unk_1000A1730);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0A10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TFFrameTracker(255);
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1740, &unk_1000A1730);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1750, &qword_1000A0A10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker);
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A1560, &qword_1000A0C90);
  swift_getWitnessTable();
  sub_1000637D4();
  return swift_getWitnessTable();
}

unint64_t sub_100066D7C()
{
  result = qword_1000A1980;
  if (!qword_1000A1980)
  {
    sub_100013694(&qword_1000A1988);
    sub_100066E34();
    sub_100015A00(&qword_1000A19B0, &qword_1000A19B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1980);
  }

  return result;
}

unint64_t sub_100066E34()
{
  result = qword_1000A1990;
  if (!qword_1000A1990)
  {
    sub_100013694(&qword_1000A1998);
    sub_100066EEC();
    sub_100015A00(&qword_1000A1750, &qword_1000A0A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1990);
  }

  return result;
}

unint64_t sub_100066EEC()
{
  result = qword_1000A19A0;
  if (!qword_1000A19A0)
  {
    sub_100013694(&qword_1000A19A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19A0);
  }

  return result;
}

unint64_t sub_100066F74()
{
  result = qword_1000A19C0;
  if (!qword_1000A19C0)
  {
    sub_100013694(&qword_1000A17A8);
    sub_100015A00(&qword_1000A19C8, &qword_1000A17B0);
    sub_100015A00(&qword_1000A1628, &qword_1000A1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19C0);
  }

  return result;
}

unint64_t sub_10006705C()
{
  result = qword_1000A19D0;
  if (!qword_1000A19D0)
  {
    sub_100013694(&qword_1000A17B8);
    sub_1000670E8();
    sub_1000637D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19D0);
  }

  return result;
}

unint64_t sub_1000670E8()
{
  result = qword_1000A19D8;
  if (!qword_1000A19D8)
  {
    sub_100013694(&qword_1000A17E0);
    sub_100067174();
    sub_10004EB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19D8);
  }

  return result;
}

unint64_t sub_100067174()
{
  result = qword_1000A19E0;
  if (!qword_1000A19E0)
  {
    sub_100013694(&qword_1000A17D0);
    sub_10006722C();
    sub_100015A00(&qword_1000A1750, &qword_1000A0A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19E0);
  }

  return result;
}

unint64_t sub_10006722C()
{
  result = qword_1000A19E8;
  if (!qword_1000A19E8)
  {
    sub_100013694(&qword_1000A17C8);
    sub_1000672B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19E8);
  }

  return result;
}

unint64_t sub_1000672B8()
{
  result = qword_1000A19F0;
  if (!qword_1000A19F0)
  {
    sub_100013694(&qword_1000A17C0);
    sub_100067370();
    sub_100015A00(&qword_1000A1A38, &qword_1000A17D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19F0);
  }

  return result;
}

unint64_t sub_100067370()
{
  result = qword_1000A19F8;
  if (!qword_1000A19F8)
  {
    sub_100013694(&qword_1000A1A00);
    sub_100067428();
    sub_100015A00(&qword_1000A1548, &unk_1000A1530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A19F8);
  }

  return result;
}

unint64_t sub_100067428()
{
  result = qword_1000A1A08;
  if (!qword_1000A1A08)
  {
    sub_100013694(&qword_1000A1A10);
    sub_100015A00(&qword_1000A1A18, &unk_1000A1A20);
    sub_100015A00(&qword_1000A09A8, &qword_1000A1A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A08);
  }

  return result;
}

unint64_t sub_100067510()
{
  result = qword_1000A1A40;
  if (!qword_1000A1A40)
  {
    sub_100013694(&qword_1000A1828);
    sub_10006759C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A40);
  }

  return result;
}

unint64_t sub_10006759C()
{
  result = qword_1000A1A48;
  if (!qword_1000A1A48)
  {
    sub_100013694(&unk_1000A1810);
    sub_100067654();
    sub_100015A00(&qword_1000A1A70, &qword_1000A1820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A48);
  }

  return result;
}

unint64_t sub_100067654()
{
  result = qword_1000A1A50;
  if (!qword_1000A1A50)
  {
    sub_100013694(&qword_1000A1A58);
    sub_100015A00(&qword_1000A1A60, &qword_1000A1A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A50);
  }

  return result;
}

unint64_t sub_100067710()
{
  result = qword_1000A1A78;
  if (!qword_1000A1A78)
  {
    sub_100013694(&qword_1000A1830);
    sub_10006779C();
    sub_1000637D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A78);
  }

  return result;
}

unint64_t sub_10006779C()
{
  result = qword_1000A1A80;
  if (!qword_1000A1A80)
  {
    sub_100013694(&qword_1000A1840);
    sub_100067828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A80);
  }

  return result;
}

unint64_t sub_100067828()
{
  result = qword_1000A1A88;
  if (!qword_1000A1A88)
  {
    sub_100013694(&qword_1000A1838);
    sub_1000678AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A88);
  }

  return result;
}

unint64_t sub_1000678AC()
{
  result = qword_1000A1A90;
  if (!qword_1000A1A90)
  {
    sub_100013694(&qword_1000A1A98);
    sub_1000655B8();
    sub_100065670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1A90);
  }

  return result;
}

unint64_t sub_1000679A4()
{
  result = qword_1000A1AB0;
  if (!qword_1000A1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1AB0);
  }

  return result;
}

unint64_t sub_100067A24()
{
  result = qword_1000A1AB8;
  if (!qword_1000A1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1AB8);
  }

  return result;
}

unint64_t sub_100067A7C()
{
  result = qword_1000A1AC0;
  if (!qword_1000A1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1AC0);
  }

  return result;
}

uint64_t sub_100067AEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100067B30()
{
  result = qword_1000A1AF8;
  if (!qword_1000A1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1AF8);
  }

  return result;
}

unint64_t sub_100067B84()
{
  result = qword_1000A1B00;
  if (!qword_1000A1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B00);
  }

  return result;
}

unint64_t sub_100067BDC()
{
  result = qword_1000A1B30;
  if (!qword_1000A1B30)
  {
    sub_100013694(&qword_1000A1AD8);
    sub_100067C94();
    sub_100015A00(&unk_1000A1710, &qword_10009F7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B30);
  }

  return result;
}

unint64_t sub_100067C94()
{
  result = qword_1000A1B38;
  if (!qword_1000A1B38)
  {
    sub_100013694(&qword_1000A1AD0);
    sub_100015A00(&qword_1000A1B40, &qword_1000A1AC8);
    sub_100063828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B38);
  }

  return result;
}

unint64_t sub_100067D50()
{
  result = qword_1000A1B48;
  if (!qword_1000A1B48)
  {
    sub_100013694(&qword_1000A1AF0);
    sub_100067DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B48);
  }

  return result;
}

unint64_t sub_100067DDC()
{
  result = qword_1000A1B50;
  if (!qword_1000A1B50)
  {
    sub_100013694(&qword_1000A1AE8);
    sub_100067E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B50);
  }

  return result;
}

unint64_t sub_100067E68()
{
  result = qword_1000A1B58;
  if (!qword_1000A1B58)
  {
    sub_100013694(&qword_1000A1AE0);
    sub_10006387C(&qword_1000A1B60, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B58);
  }

  return result;
}

unint64_t sub_100067F28()
{
  result = qword_1000A1B68;
  if (!qword_1000A1B68)
  {
    sub_100013694(&qword_1000A1B70);
    sub_100067FE0();
    sub_100015A00(&unk_1000A1BA0, &qword_1000A1B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B68);
  }

  return result;
}

unint64_t sub_100067FE0()
{
  result = qword_1000A1B78;
  if (!qword_1000A1B78)
  {
    sub_100013694(&qword_1000A1B80);
    sub_100068098();
    sub_100015A00(&qword_1000A1B90, &qword_1000A1B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B78);
  }

  return result;
}

unint64_t sub_100068098()
{
  result = qword_1000A1B88;
  if (!qword_1000A1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1B88);
  }

  return result;
}

id sub_1000681E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIFontPickerUIServiceAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for _UIFontPickerUIServiceAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_1000682C4(void *a1)
{
  v1 = a1;
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    goto LABEL_7;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(136);
    v1 = [v1 role];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._object = 0x800000010007D8C0;
    v2 = v19;
    v13._countAndFlagsBits = 0xD000000000000086;
    String.append(_:)(v13);
    LODWORD(v18) = 0;
    v17 = 19;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  v14 = [v1 role];
  v15 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v14];

  type metadata accessor for _UIFontPickerUIServiceSceneDelegate();
  [v15 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v15;
}

uint64_t getEnumTagSinglePayload for TFUIConfig(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TFUIConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000685F8()
{
  result = qword_1000A1C50;
  if (!qword_1000A1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1C50);
  }

  return result;
}

double sub_10006864C(char a1, char a2, unsigned __int8 a3)
{
  if (a3 == 2 || a3 == 4)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 _referenceBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    if ((CGRectGetHeight(v43) <= 667.0) | a2 & 1)
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 11.0;
    }

    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D9 == 1)
    {
      _UISolariumEnabled();
      if (byte_1000A51D9 == 1)
      {
        _UISolariumEnabled();
        if (byte_1000A51D9 == 1)
        {
          goto LABEL_62;
        }
      }
    }

    return v14;
  }

  if (a3 != 3)
  {
    v15 = qword_10009F370;
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      if (qword_10009F370 != -1)
      {
        v41 = a3;
        swift_once();
        a3 = v41;
      }

      if (byte_1000A51D9 != 1)
      {
        return 16.0;
      }

      v35 = a3;
      v36 = _UISolariumEnabled();
      a3 = v35;
      if (v36)
      {
        v14 = 10.0;
      }

      else
      {
        v14 = 8.0;
      }

      v15 = qword_10009F370;
    }

    if (a3 != 1)
    {
      if (v15 == -1)
      {
        if ((byte_1000A51D9 & 1) == 0)
        {
          return v14;
        }
      }

      else
      {
        v42 = a3;
        swift_once();
        a3 = v42;
        if ((byte_1000A51D9 & 1) == 0)
        {
          return v14;
        }
      }

      v37 = a3;
      _UISolariumEnabled();
      a3 = v37;
      v15 = qword_10009F370;
    }

    if (v15 == -1)
    {
      if (byte_1000A51D9)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v40 = a3;
      swift_once();
      a3 = v40;
      if (byte_1000A51D9)
      {
LABEL_54:
        v38 = a3;
        _UISolariumEnabled();
        if (v38 == 1)
        {
          return v14;
        }

LABEL_68:
        if (byte_1000A51D9 != 1)
        {
          return v14;
        }

        goto LABEL_62;
      }
    }

    if (a3 == 1)
    {
      return v14;
    }

    goto LABEL_68;
  }

  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D8 == 1)
  {
    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D9 == 1)
    {
      if (_UISolariumEnabled())
      {
        v14 = 10.0;
      }

      else
      {
        v14 = 8.0;
      }

      if (byte_1000A51D9 == 1)
      {
        _UISolariumEnabled();
        if (byte_1000A51D9 == 1)
        {
          _UISolariumEnabled();
          if (byte_1000A51D9 == 1)
          {
LABEL_62:
            _UISolariumEnabled();
          }
        }
      }
    }

    else
    {
      return 16.0;
    }
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 mainScreen];
    [v17 _referenceBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v44.origin.x = v19;
    v44.origin.y = v21;
    v44.size.width = v23;
    v44.size.height = v25;
    if ((CGRectGetHeight(v44) <= 667.0) | a2 & 1)
    {
      v14 = 7.0;
    }

    else
    {
      v14 = 10.0;
    }

    if ((a2 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D9 == 1)
      {
        _UISolariumEnabled();
      }
    }

    v26 = [v16 mainScreen];
    [v26 _referenceBounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v45.origin.x = v28;
    v45.origin.y = v30;
    v45.size.width = v32;
    v45.size.height = v34;
    CGRectGetHeight(v45);
    if ((a2 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D9 == 1)
      {
        goto LABEL_62;
      }
    }
  }

  return v14;
}

double sub_100068C8C(char a1, unsigned __int8 a2)
{
  v2 = 8.0;
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      v2 = 16.0;
      if ((byte_1000A51D8 & 1) == 0)
      {
        if (qword_10009F370 != -1)
        {
          swift_once();
        }

        v2 = 14.0;
        if (byte_1000A51D9 == 1)
        {
          v13 = _UISolariumEnabled() == 0;
          v14 = 8.0;
          v15 = 10.0;
LABEL_10:
          if (v13)
          {
            return v14;
          }

          else
          {
            return v15;
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 3)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 _referenceBounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27.origin.x = v18;
      v27.origin.y = v20;
      v27.size.width = v22;
      v27.size.height = v24;
      if (CGRectGetHeight(v27) <= 667.0)
      {
        return v2;
      }

      v13 = (a1 & 1) == 0;
      v14 = 12.0;
      v15 = 8.0;
      goto LABEL_10;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v2 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      v4 = [objc_opt_self() mainScreen];
      [v4 _referenceBounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v2 = 6.0;
      if (CGRectGetHeight(v26) > 667.0)
      {
        v13 = (a1 & 1) == 0;
        v14 = 8.0;
        v15 = 6.0;
        goto LABEL_10;
      }
    }
  }

  return v2;
}

uint64_t sub_100068EC4()
{
  sub_10000C854();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_100068F00(unsigned __int8 a1)
{
  if (qword_10009F370 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (byte_1000A51D9 == 1)
  {
    goto LABEL_4;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if ((byte_1000A51D8 & 1) == 0 && byte_1000A51D9 == 1)
      {
LABEL_4:
        _UISolariumEnabled();
      }
    }
  }

  else if (a1 == 3)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 _referenceBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v11.origin.x = v3;
    v11.origin.y = v5;
    v11.size.width = v7;
    v11.size.height = v9;
    CGRectGetHeight(v11);
  }
}

uint64_t sub_100069108()
{
  sub_100014390();
  EnvironmentValues.subscript.getter();
  return v1;
}

double sub_100069188(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

void sub_1000691F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(a2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
  }

  v6 = *(a2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_14:
    sub_10006A740(v6, a3);
    return;
  }

  if ((a3 - 2) >= 3u)
  {
    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    sub_10006864C(v5 & 1, v6, a3);
    sub_10006A740(v6, a3);
    sub_100068C8C(v6, a3);
    return;
  }

  if ((v6 & 1) == 0)
  {
LABEL_15:
    sub_100069AB8(a3);
  }
}

void sub_1000693D0(char a1, unsigned __int8 a2)
{
  if (a2 == 2 || a2 == 4)
  {
    if (a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a2 != 3)
  {
    if (qword_10009F368 != -1)
    {
      v14 = a2;
      swift_once();
      a2 = v14;
    }

    if (byte_1000A51D8)
    {
LABEL_21:
      if (a2 > 2u)
      {
        if (a2 != 3)
        {
          v5 = [objc_opt_self() mainScreen];
          [v5 _referenceBounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v17.origin.x = v7;
          v17.origin.y = v9;
          v17.size.width = v11;
          v17.size.height = v13;
          CGRectGetHeight(v17);
        }

        return;
      }

      if (a2 || (byte_1000A51D8 & 1) != 0)
      {
        return;
      }

      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D9 != 1)
      {
        return;
      }

LABEL_7:
      _UISolariumEnabled();
      return;
    }

LABEL_16:
    if (qword_10009F370 != -1)
    {
      v16 = a2;
      swift_once();
      a2 = v16;
    }

    if (byte_1000A51D9)
    {
      goto LABEL_7;
    }

    v3 = a2;
    v4 = _UISolariumEnabled();
    a2 = v3;
    if (!v4)
    {
      if (byte_1000A51D9 != 1)
      {
        return;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (qword_10009F368 != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  if ((byte_1000A51D8 & 1) == 0)
  {
    goto LABEL_16;
  }
}

uint64_t sub_1000696B4()
{
  v1 = [v0 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  LOBYTE(v1) = String.hasPrefix(_:)(v2);

  if ((v1 & 1) == 0)
  {
    v3 = [v0 familyName];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_opt_self();
    [v7 systemFontSize];
    v8 = [v7 systemFontOfSize:?];
    v9 = [v8 familyName];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v4 == v10 && v6 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v15 = CTFontCopyName(v0, kCTFontFamilyNameKey);
        if (!v15)
        {
          v15 = [v0 familyName];
        }

        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v17;
      }
    }
  }

  if (qword_10009F1B8 != -1)
  {
    swift_once();
  }

  v17 = qword_1000A4E88;

  return v17;
}

uint64_t sub_1000698A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  type metadata accessor for TFFrameTracker(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  View.modifier<A>(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_10006B724(&qword_1000A0C88, type metadata accessor for TFFrameTracker);
  v14[2] = a3;
  v14[3] = v12;

  swift_getWitnessTable();
  sub_10006B76C();
  sub_10006B724(&qword_1000A1C70, type metadata accessor for CGRect);
  View.onPreferenceChange<A>(_:perform:)();

  return (*(v8 + 8))(v10, v7);
}

void sub_100069AB8(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if ((byte_1000A51D8 & 1) == 0)
      {
        if (qword_10009F370 != -1)
        {
          swift_once();
        }

        if (byte_1000A51D9 == 1)
        {
          _UISolariumEnabled();
        }
      }
    }
  }

  else if (a1 == 3)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 _referenceBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10.origin.x = v3;
    v10.origin.y = v5;
    v10.size.width = v7;
    v10.size.height = v9;
    CGRectGetHeight(v10);
  }
}

uint64_t sub_100069C88@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1000130DC(&qword_1000A1DC0);
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  if ((v3 - 2) < 3)
  {
    v17 = v11[13];
    v17(&v26 - v15, enum case for DynamicTypeSize.small(_:), v10);
    v17(v14, enum case for DynamicTypeSize.xxxLarge(_:), v10);
    sub_10006B724(&qword_1000A1DC8, &type metadata accessor for DynamicTypeSize);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v18 = v11[4];
      v18(v9, v16, v10);
      v18(&v9[*(v4 + 48)], v14, v10);
      sub_100015AC0(v9, v7, &qword_1000A1DC0);
      v19 = *(v4 + 48);
      v18(a2, v7, v10);
      v20 = v11[1];
      v20(&v7[v19], v10);
      sub_10006BD50(v9, v7);
      v21 = *(v4 + 48);
      v22 = sub_1000130DC(&qword_1000A14B8);
      v18((a2 + *(v22 + 36)), &v7[v21], v10);
      return (v20)(v7, v10);
    }

    __break(1u);
    goto LABEL_7;
  }

  if (qword_10009F360 != -1)
  {
LABEL_7:
    swift_once();
  }

  v24 = sub_1000130DC(&qword_1000A14B8);
  v25 = sub_100018B5C(v24, qword_1000A51C0);
  return sub_100015AC0(v25, a2, &qword_1000A14B8);
}

uint64_t sub_100069FF0(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

void sub_10006A038()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    qword_1000A1C40 = v2;
    *algn_1000A1C48 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006A0C4()
{
  if (qword_10009F348 != -1)
  {
    swift_once();
  }

  String.utf8CString.getter();
  has_internal_content = os_variant_has_internal_content();

  byte_1000A51A0 = has_internal_content;
  return result;
}

uint64_t sub_10006A140()
{
  v0 = type metadata accessor for Logger();
  sub_10006B4D8(v0, qword_1000A51A8);
  sub_100018B5C(v0, qword_1000A51A8);
  if (qword_10009F348 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006A1FC()
{
  v0 = sub_1000130DC(&qword_1000A1DC0);
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_1000130DC(&qword_1000A14B8);
  sub_10006B4D8(v13, qword_1000A51C0);
  v24 = sub_100018B5C(v13, qword_1000A51C0);
  v14 = v7[13];
  v14(v12, enum case for DynamicTypeSize.small(_:), v6);
  v14(v10, enum case for DynamicTypeSize.xxLarge(_:), v6);
  sub_10006B724(&qword_1000A1DC8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v16 = v7[2];
    v16(v5, v12, v6);
    v16(&v5[*(v0 + 48)], v10, v6);
    sub_100015AC0(v5, v3, &qword_1000A1DC0);
    v17 = *(v0 + 48);
    v22 = v10;
    v23 = v12;
    v21 = v0;
    v18 = v7[4];
    v19 = v24;
    v18(v24, v3, v6);
    v20 = v7[1];
    v20(&v3[v17], v6);
    sub_10006BD50(v5, v3);
    v18(v19 + *(v13 + 36), &v3[*(v21 + 48)], v6);
    v20(v22, v6);
    v20(v23, v6);
    return (v20)(v3, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10006A530(uint64_t a1, unsigned __int8 a2)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  sub_100068F00(a2);
  v6 = v4 + -1.0;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 10.0;
      goto LABEL_22;
    }

    if (a2 == 3)
    {
      if (qword_10009F368 != -1)
      {
        v20 = v5;
        swift_once();
        v5 = v20;
      }

      v7 = byte_1000A51D8 == 0;
      v8 = 10.0;
      v9 = 16.0;
      goto LABEL_10;
    }

    v18 = 10.0;
LABEL_31:
    v13 = v6 * v18;
    *&v17 = 40.0;
    goto LABEL_32;
  }

  if (a2)
  {
    v18 = 8.0;
    goto LABEL_31;
  }

  if (qword_10009F368 != -1)
  {
    v21 = v5;
    swift_once();
    v5 = v21;
  }

  v10 = 16.0;
  if ((byte_1000A51D8 & 1) == 0)
  {
    if (qword_10009F370 != -1)
    {
      v22 = v5;
      swift_once();
      v5 = v22;
    }

    v10 = 14.0;
    if (byte_1000A51D9 == 1)
    {
      v11 = v5;
      v12 = _UISolariumEnabled();
      v5 = v11;
      v7 = v12 == 0;
      v8 = 8.0;
      v9 = 10.0;
LABEL_10:
      if (v7)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }
    }
  }

LABEL_22:
  if (qword_10009F370 != -1)
  {
    v23 = v5;
    swift_once();
    v5 = v23;
  }

  v13 = v6 * v10;
  if ((byte_1000A51D9 & 1) == 0)
  {
    *&v17 = 32.0;
LABEL_32:
    v16 = *&v17;
    return v16 + v5 * v4 + v13;
  }

  v14 = v5;
  v15 = _UISolariumEnabled();
  v5 = v14;
  v16 = 16.0;
  if (v15)
  {
    v16 = 20.0;
  }

  return v16 + v5 * v4 + v13;
}

void sub_10006A740(uint64_t a1, unsigned __int8 a2)
{
  if (qword_10009F368 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  if (byte_1000A51D8 == 1)
  {
    if (a2 <= 1u || a2 == 3)
    {
      return;
    }

LABEL_8:
    v2 = [objc_opt_self() mainScreen];
    [v2 _referenceBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    CGRectGetHeight(v12);
    return;
  }

  if (a2 - 2 < 3)
  {
    goto LABEL_8;
  }

  if (!a2)
  {
    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D9 == 1)
    {
      _UISolariumEnabled();
    }
  }
}

void sub_10006A9A4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1000A51D8 = v1 == 6;
}

void sub_10006AA08()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1000A51D9 = v1 == 5;
}

Swift::Int sub_10006AA80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006AAF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

double sub_10006AB38@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10006AB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_10006BFB4(v7, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10006C0E4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = sub_1000130DC(&qword_1000A1E18);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  result = sub_1000130DC(&qword_1000A1E20);
  v15 = (a3 + *(result + 36));
  *v15 = sub_10006C148;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_10006ACE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000130DC(&qword_1000A1E10);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_1000130DC(&qword_1000A1DF8);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10006AF80();
  if (v10)
  {
    v11 = v10;
    v12 = Font.init(_:)();
    KeyPath = swift_getKeyPath();
    v14 = sub_1000130DC(&qword_1000A1E08);
    (*(*(v14 - 8) + 16))(v9, a2, v14);
    v15 = &v9[*(v7 + 36)];
    *v15 = KeyPath;
    v15[1] = v12;
    sub_100015AC0(v9, v6, &qword_1000A1DF8);
    swift_storeEnumTagMultiPayload();
    sub_10006BEC8();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = swift_getKeyPath();
    v18 = sub_1000130DC(&qword_1000A1E08);
    (*(*(v18 - 8) + 16))(v9, a2, v18);
    v19 = &v9[*(v7 + 36)];
    *v19 = v17;
    v19[1] = v16;
    sub_100015AC0(v9, v6, &qword_1000A1DF8);
    swift_storeEnumTagMultiPayload();
    sub_10006BEC8();

    _ConditionalContent<>.init(storage:)();
  }

  return sub_1000156F8(v9, &qword_1000A1DF8);
}

id sub_10006AF80()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultMetrics];
  v5 = *(v0 + 16);
  v6 = [v4 scaledFontForFont:v3 maximumPointSize:v5];

  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);
    v8 = [v2 defaultMetrics];
    [v8 scaledValueForValue:v7];
    v10 = v9;

    if (v5 < v10)
    {
      v11 = [v2 defaultMetrics];
      [v3 pointSize];
      v13 = [v3 fontWithSize:v5 / v10 * v12];
      v14 = [v11 scaledFontForFont:v13];

      v3 = v6;
      v6 = v14;
    }
  }

  return v6;
}

uint64_t sub_10006B0EC(uint64_t a1)
{
  v3 = sub_1000130DC(&qword_1000A1DD0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_10006ACE4(v1, a1);
  if (qword_10009F360 != -1)
  {
    swift_once();
  }

  v6 = sub_1000130DC(&qword_1000A14B8);
  sub_100018B5C(v6, qword_1000A51C0);
  sub_10006BDC0();
  sub_100015A00(&qword_1000A14D8, &qword_1000A14B8);
  View.dynamicTypeSize<A>(_:)();
  return sub_1000156F8(v5, &qword_1000A1DD0);
}

id sub_10006B25C(int a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v11 fontDescriptor];
  v5 = [v4 symbolicTraits];

  if ((a1 & ~v5) != 0)
  {
    v6 = v5 | a1;
  }

  else
  {
    v6 = v5 & ~a1;
  }

  v7 = [v3 fontDescriptorWithSymbolicTraits:v6];

  if (v7)
  {
    [v11 pointSize];
    v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];

    return v9;
  }

  else
  {

    return v11;
  }
}

uint64_t sub_10006B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10006B5E0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10006B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10006B58C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10006B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000685F8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t *sub_10006B4D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10006B58C()
{
  result = qword_1000A1C58;
  if (!qword_1000A1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1C58);
  }

  return result;
}

unint64_t sub_10006B5E0()
{
  result = qword_1000A1C60;
  if (!qword_1000A1C60)
  {
    sub_100013694(&qword_1000A0278);
    sub_10006B724(&qword_10009F3F8, type metadata accessor for ComponentSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1C60);
  }

  return result;
}

uint64_t sub_10006B6BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006B724(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006B76C()
{
  result = qword_1000A1C68;
  if (!qword_1000A1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1C68);
  }

  return result;
}

uint64_t sub_10006B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000130DC(&qword_1000A1C78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006B8B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000130DC(&qword_1000A1C78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006B984()
{
  sub_10006BB34(319, &qword_1000A1CE8, sub_10006BA98, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10006BAE4();
    if (v1 <= 0x3F)
    {
      sub_10006BB34(319, &unk_1000A1CF0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10006BA98()
{
  result = qword_10009FAD0;
  if (!qword_10009FAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FAD0);
  }

  return result;
}

void sub_10006BAE4()
{
  if (!qword_1000A14A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A14A0);
    }
  }
}

void sub_10006BB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10006BBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoordinateSpace();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006BC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoordinateSpace();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006BCAC()
{
  result = type metadata accessor for CoordinateSpace();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006BD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000130DC(&qword_1000A1DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006BDC0()
{
  result = qword_1000A1DD8;
  if (!qword_1000A1DD8)
  {
    sub_100013694(&qword_1000A1DD0);
    sub_10006BE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1DD8);
  }

  return result;
}

unint64_t sub_10006BE44()
{
  result = qword_1000A1DE0;
  if (!qword_1000A1DE0)
  {
    sub_100013694(&qword_1000A1DE8);
    sub_10006BEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1DE0);
  }

  return result;
}

unint64_t sub_10006BEC8()
{
  result = qword_1000A1DF0;
  if (!qword_1000A1DF0)
  {
    sub_100013694(&qword_1000A1DF8);
    sub_100015A00(&qword_1000A1E00, &qword_1000A1E08);
    sub_100015A00(&qword_1000A09A8, &qword_1000A1A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1DF0);
  }

  return result;
}

uint64_t sub_10006BFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFFrameTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C018()
{
  v1 = *(type metadata accessor for TFFrameTracker(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CoordinateSpace();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006C0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFFrameTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C148@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TFFrameTracker(0);
  v2 = static Color.clear.getter();
  result = GeometryProxy.frame(in:)();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_10006C1E4()
{
  sub_100013694(&qword_1000A1DD0);
  sub_100013694(&qword_1000A14B8);
  sub_10006BDC0();
  sub_100015A00(&qword_1000A14D8, &qword_1000A14B8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006C2AC()
{
  result = qword_1000A1E28;
  if (!qword_1000A1E28)
  {
    sub_100013694(&qword_1000A1E20);
    sub_100015A00(&qword_1000A1E30, &qword_1000A1E18);
    sub_100015A00(&qword_1000A1E38, &qword_1000A1E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1E28);
  }

  return result;
}

void sub_10006C3C0()
{
  v0 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [[NSURL alloc] initWithString:@"settings-navigation://com.apple.Settings.General/FONT_SETTING"];
  v3[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v3[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  [v0 openSensitiveURL:v1 withOptions:v2];
}

id sub_10006C8C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 size];
  v5 = (v3 - v4) * 0.5;
  v6 = *(a1 + 48);
  [*(a1 + 32) size];
  v8 = (v6 - v7) * 0.5;
  [*(a1 + 32) size];
  v10 = v9;
  [*(a1 + 32) size];

  return [v2 drawInRect:{v5, v8, v10, v11}];
}

void sub_10006CD94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:1];
    v5 = *(a1 + 32);
    v6 = *(v5 + 456);
    *(v5 + 456) = v4;

    v7 = [NSMutableArray arrayWithCapacity:1];
    v8 = *(a1 + 32);
    v9 = *(v8 + 464);
    *(v8 + 464) = v7;

    [*(*(a1 + 32) + 464) addObject:&off_100099428];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = v3;
    obj = v3;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = [_UIFontPickerFontInfo alloc];
          +[UIFont defaultFontSize];
          v16 = [UIFont fontWithName:v14 size:?];
          v17 = [v16 fontDescriptor];
          v18 = [v15 initWithFontDescriptor:v17];

          if ([v18 matchesConfiguration:*(*(a1 + 32) + 512)])
          {
            v19 = [*(*(a1 + 32) + 456) objectForKeyedSubscript:&off_100099428];
            if (!v19)
            {
              v19 = +[NSMutableArray array];
              [*(*(a1 + 32) + 456) setObject:v19 forKey:&off_100099428];
            }

            [v19 addObject:{v18, v20}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v3 = v20;
  }
}

void sub_10006CFEC(uint64_t a1)
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10006D270;
  v23[3] = &unk_100098D38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v24 = v3;
  v25 = v4;
  [v2 enumerateFontFamilyNamesUsingBlock:v23];
  [*(*(a1 + 48) + 464) sortUsingSelector:"compare:"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(*(a1 + 48) + 464);
  v5 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = *(a1 + 48);
        v11 = *(v10 + 448);
        v12 = [*(v10 + 456) objectForKeyedSubscript:v9];
        v13 = [v11 sortedArrayFromArray:v12 collationStringSelector:"localizedFamilyName"];
        [*(*(a1 + 48) + 456) setObject:v13 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = [*(a1 + 48) _loadRecents];
  [*(*(a1 + 48) + 456) setObject:v14 forKeyedSubscript:&off_100099440];

  v15 = *(a1 + 48);
  v16 = [v15[57] objectForKeyedSubscript:&off_100099440];
  [v15 _setRecentsHidden:{objc_msgSend(v16, "count") == 0}];

  v17 = [*(a1 + 48) _loadSystemExtras];
  [*(*(a1 + 48) + 456) setObject:v17 forKeyedSubscript:&off_100099458];
}

uint64_t sub_10006D270(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v18 = [[_UIFontPickerFontInfo alloc] initWithFamilyName:v6];

  if (*(a1 + 32))
  {
    v7 = [NSSet setWithArray:v5];

    v8 = [v7 mutableCopy];
    [v8 intersectSet:*(a1 + 32)];
    if (![v8 count])
    {

      goto LABEL_10;
    }

    [v18 setHasMultipleFaces:{objc_msgSend(v8, "count") > 1}];
  }

  else
  {
    v9 = [v5 count];

    [v18 setHasMultipleFaces:v9 > 1];
  }

  if (![v18 matchesConfiguration:*(*(a1 + 40) + 512)])
  {
    goto LABEL_11;
  }

  v10 = [*(*(a1 + 40) + 448) sectionForObject:v18 collationStringSelector:"localizedFamilyName"];
  v11 = *(*(a1 + 40) + 456);
  v12 = [NSNumber numberWithInteger:v10];
  v7 = [v11 objectForKeyedSubscript:v12];

  if (!v7)
  {
    v7 = +[NSMutableArray array];
    v13 = *(*(a1 + 40) + 456);
    v14 = [NSNumber numberWithInteger:v10];
    [v13 setObject:v7 forKey:v14];

    v15 = *(*(a1 + 40) + 464);
    v16 = [NSNumber numberWithInteger:v10];
    [v15 addObject:v16];
  }

  [v7 addObject:v18];
LABEL_10:

LABEL_11:

  return _objc_release_x1();
}

void sub_10006D770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006D794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _loadFonts];
    v2 = [v6[61] searchBar];
    v3 = [v2 text];

    if ([v3 length])
    {
      v4 = v6[62];
      v5 = [v6 _fontsForSearchTerm:v3];
      [v4 _setResultFonts:v5];
    }

    WeakRetained = v6;
  }
}

uint64_t sub_10006DECC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _indexPathsForFont:a2];
  if (v3)
  {
    v5 = v3;
    if ([v3 count])
    {
      [*(a1 + 40) addObjectsFromArray:v5];
    }
  }

  return _objc_release_x1();
}

void sub_10006DF40(uint64_t a1)
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006E1C4;
  v19[3] = &unk_100098DD8;
  v2 = *(a1 + 32);
  v20 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v19];
  if ([*(a1 + 40) count])
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(v3 + 480);
    *(v3 + 480) = v4;
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = *(v6 + 480);
    *(v6 + 480) = 0;
  }

  v7 = objc_opt_new();
  v8 = v7;
  if (*(*(a1 + 48) + 472))
  {
    [v7 addObjectsFromArray:?];
  }

  if ([*(a1 + 56) count])
  {
    objc_storeStrong((*(a1 + 48) + 472), *(a1 + 56));
    [v8 addObjectsFromArray:*(a1 + 56)];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(v9 + 472);
    *(v9 + 472) = 0;
  }

  if ([v8 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006E23C;
    v17[3] = &unk_100098E00;
    v17[4] = *(a1 + 48);
    v18 = v8;
    [UIView performWithoutAnimation:v17];
  }

  if (*(a1 + 64) == 1)
  {
    v11 = [*(a1 + 56) firstObject];

    if (v11)
    {
      v12 = [*(a1 + 48) tableView];
      v13 = [*(a1 + 56) firstObject];
      [v12 scrollToRowAtIndexPath:v13 atScrollPosition:1 animated:0];
    }
  }

  v14 = [*(a1 + 48) _selectedFontsForCurrentConfiguration];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006E294;
  v15[3] = &unk_100098E28;
  v16 = *(a1 + 65);
  v15[4] = *(a1 + 48);
  [v14 enumerateObjectsWithOptions:2 usingBlock:v15];
}

void sub_10006E1C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_UIFontPickerFontInfo alloc] initWithFontDescriptor:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_10006E23C(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadRowsAtIndexPaths:*(a1 + 40) withRowAnimation:100];
}

void sub_10006E294(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isSystemFont] & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      [v3 _addToRecents:v4];
    }

    else
    {
      [v3 _persistToRecents:v4];
    }
  }
}

void sub_10006E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006E618(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result > 1;
  return result;
}

void sub_10006EBD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 familyInfo];
  [v2 addObject:v3];
}

void sub_10006F614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006F630(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [*(a1[6] + 512) displayUsingSystemFont];

  return [v1 setFontInfo:v2 usingSystemFont:v3];
}

void sub_10006F680(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 48);
  v9 = v6;
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    v8 = [v6 familyInfo];
  }

  *(*(*(a1 + 40) + 8) + 24) = [v8 isEqual:*(a1 + 32)];
  if ((v7 & 1) == 0)
  {
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

id sub_100070568(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [*(a1[6] + 456) displayUsingSystemFont];

  return [v1 setFontInfo:v2 usingSystemFont:v3];
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

double sub_10007405C(double result)
{
  if (!atomic_load(&unk_1000A20C0))
  {
    return sub_1000740A4(result);
  }

  return result;
}

double sub_100074080(double result)
{
  if (!atomic_load(&unk_1000A20C0))
  {
    return sub_1000740A4(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000740A4(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FontServices.framework/FontServices", 0);
  atomic_store(1u, &unk_1000A20C0);
  return a1;
}