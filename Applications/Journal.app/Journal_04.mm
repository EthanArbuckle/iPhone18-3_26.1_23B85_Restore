unint64_t sub_10006DD7C()
{
  result = qword_100AD43F0;
  if (!qword_100AD43F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD43F0);
  }

  return result;
}

unint64_t sub_10006DED4()
{
  result = qword_100ADE6A8;
  if (!qword_100ADE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE6A8);
  }

  return result;
}

char *sub_10006DF28(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_100ACFC18 != -1)
  {
    swift_once();
  }

  v11 = qword_100B2F7A8;
  [v10 setBackgroundColor:qword_100B2F7A8];
  v12 = OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  v15 = &selRef_setSuggestedName_;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    v15 = &selRef_setSuggestedName_;
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 v15[278]];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
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

  return v10;
}

uint64_t sub_10006E25C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for DirectionalAttachmentPosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_10006E2AC()
{
  if (qword_100AD0358 != -1)
  {
    swift_once();
  }

  v1 = qword_100B30350;
  qword_100B2F7A8 = qword_100B30350;

  return v1;
}

uint64_t type metadata accessor for PhotoAssetView()
{
  result = qword_100ADA848;
  if (!qword_100ADA848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006E35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADE628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10006E3CC()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10006E480(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_10006E4D8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADE628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double *sub_10006E540(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000F24EC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_10006E64C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView];
  [v1 addSubview:v2];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 leadingAnchor];
    v6 = [v4 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:4.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 trailingAnchor];
    v11 = [v9 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:-4.0];
    [v12 setActive:1];
  }

  [v2 _setCornerRadius:4.0];
  v13 = [v2 heightAnchor];
  v14 = [v1 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.2];

  [v15 setActive:1];
  v16 = *&v1[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel];
  v17 = [objc_opt_self() secondaryLabelColor];
  [v16 setTextColor:v17];

  [v16 setTextAlignment:1];
  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  [v16 setFont:qword_100B303E8];
  [v16 setNumberOfLines:1];
  [v16 setMinimumScaleFactor:0.6];
  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v2 addSubview:v16];
  v48 = [objc_allocWithZone(UIView) init];
  [v1 addSubview:v48];
  v18 = [v48 superview];
  if (v18)
  {
    v19 = v18;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v48 leadingAnchor];
    v21 = [v19 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v48 superview];
  if (v23)
  {
    v24 = v23;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v48 trailingAnchor];
    v26 = [v24 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  v28 = [v48 superview];
  if (v28)
  {
    v29 = v28;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v48 topAnchor];
    v31 = [v29 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:12.0];
    [v32 setActive:1];
  }

  v33 = [v48 bottomAnchor];
  v34 = [v2 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = *&v1[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
  [v36 removeFromSuperview];
  [v48 addSubview:v36];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v38 centerXAnchor];
    v40 = [v36 centerXAnchor];
    v41 = [v40 constraintEqualToAnchor:v39];

    [v41 setConstant:0.0];
    [v41 setActive:1];
  }

  v42 = [v36 superview];
  if (v42)
  {
    v43 = v42;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v36 centerYAnchor];
    v45 = [v43 centerYAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    [v46 setConstant:0.0];
    [v46 setActive:1];

    v47 = v43;
  }

  else
  {
    v47 = v48;
  }
}

void sub_10006EE48(uint64_t a1, id *a2, double *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *a2;
  v9 = [v7 preferredFontForTextStyle:v8];

  v10 = sub_10006F14C(*a3);
  *a4 = v10;
}

double *sub_10006EFE0(double *a1, int64_t a2, char a3)
{
  result = sub_10006E540(a1, a2, a3, *v3, &qword_100AD6670);
  *v3 = result;
  return result;
}

id sub_10006F034(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

size_t sub_10006F108(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD7CD0, &unk_100945368, type metadata accessor for JournalEntryCollectionViewController.Item);
  *v3 = result;
  return result;
}

id sub_10006F14C(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_10006F5AC(&qword_100AD1C78, type metadata accessor for AttributeName);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v6;
  if (*(v6 + 16) && (v7 = sub_1000517E0(UIFontDescriptorTraitsAttribute), (v8 & 1) != 0) && (sub_10000BA20(*(v6 + 56) + 32 * v7, &v26), sub_1000F24EC(&qword_100ADFF40), (swift_dynamicCast() & 1) != 0))
  {
    v9 = *&v25[0];
  }

  else
  {
    v9 = sub_100072088(&_swiftEmptyArrayStorage, &qword_100ADFF48, &unk_100951688, &unk_100ADFF50);
  }

  type metadata accessor for Weight(0);
  v27 = v10;
  *&v26 = a1;
  sub_10002432C(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100072538(v25, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_100651CB8(&v26);
  sub_100004F84(&v26, &qword_100AD13D0);
  v27 = sub_1000F24EC(&qword_100ADFF40);
  *&v26 = v9;
  sub_10002432C(&v26, v25);
  v12 = v28;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000730AC(v25, UIFontDescriptorTraitsAttribute, v13);
  v28 = v12;
  v14 = [v2 familyName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v17;
  sub_10002432C(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000730AC(v25, UIFontDescriptorFamilyAttribute, v18);
  v19 = objc_allocWithZone(UIFontDescriptor);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = [v19 initWithFontAttributes:{isa, v12}];

  [v2 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

  return v23;
}

uint64_t sub_10006F4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006F5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006F5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

Swift::Int sub_10006F68C()
{
  Hasher.init(_seed:)();
  sub_10006F6CC(v1);
  return Hasher._finalize()();
}

void sub_10006F6CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000140BC(v2, v10, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(2uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = 6;
LABEL_8:
      Hasher._combine(_:)(v12);
      String.hash(into:)();
LABEL_21:

      return;
    }

    v15 = *v10;
    v16 = v10[2];
    Hasher._combine(_:)(7uLL);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      sub_1002F74D0(a1, v15);
      if (v16)
      {
LABEL_16:
        Hasher._combine(_:)(1u);
        String.hash(into:)();

        goto LABEL_21;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
        goto LABEL_16;
      }
    }

    Hasher._combine(_:)(0);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = *v10;
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();

      return;
    }

    v12 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v10;
    Hasher._combine(_:)(4uLL);
    Hasher._combine(_:)(v13);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(5uLL);
    sub_1000249D4(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

void sub_10006F9A8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for PhotoAssetView();
  v12 = *a7;
  v13 = v16.receiver;
  objc_msgSendSuper2(&v16, v12, a2, a3, a4, a5);
  v14 = *&v13[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v13 bounds];
  [v14 setFrame:?];

  v15 = *&v13[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView];
  [v13 bounds];
  [v15 setFrame:?];
}

uint64_t sub_10006FA94(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v44 - v9);
  __chkstk_darwin(v11);
  v46 = &v44 - v12;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = (&v44 - v17);
  __chkstk_darwin(v19);
  v21 = (&v44 - v20);
  v22 = sub_1000F24EC(&unk_100ADE568);
  __chkstk_darwin(v22 - 8);
  v24 = &v44 - v23;
  v26 = (&v44 + *(v25 + 56) - v23);
  sub_1000140BC(a1, &v44 - v23, type metadata accessor for JournalEntryCollectionViewController.Item);
  sub_1000140BC(v49, v26, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1000140BC(v24, v10, type metadata accessor for JournalEntryCollectionViewController.Item);
        v29 = *v10;
        v28 = v10[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1000140BC(v24, v7, type metadata accessor for JournalEntryCollectionViewController.Item);
        v35 = *v7;
        v36 = v7[2];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v32 = _s7Journal12RecentSearchV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v7[1], v36, *v26, v26[1], v26[2]);

          goto LABEL_27;
        }
      }

LABEL_32:

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 7)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000140BC(v24, v21, type metadata accessor for JournalEntryCollectionViewController.Item);
      v29 = *v21;
      v28 = v21[1];
      if (!swift_getEnumCaseMultiPayload())
      {
LABEL_9:
        if (v29 == *v26 && v28 == v26[1])
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_35:
            v32 = 0;
            return v32 & 1;
          }
        }

LABEL_37:
        sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
        v32 = 1;
        return v32 & 1;
      }

      goto LABEL_32;
    }

    sub_1000140BC(v24, v18, type metadata accessor for JournalEntryCollectionViewController.Item);
    v33 = *v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v26;
      sub_1000065A8(0, &unk_100AD43A0);
      v32 = static NSObject.== infix(_:_:)();

      goto LABEL_27;
    }

LABEL_34:
    sub_100004F84(v24, &unk_100ADE568);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1000140BC(v24, v15, type metadata accessor for JournalEntryCollectionViewController.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_34;
    }

    v32 = *v15 == *v26;
  }

  else
  {
    v37 = v46;
    sub_1000140BC(v24, v46, type metadata accessor for JournalEntryCollectionViewController.Item);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v47 + 8))(v37, v48);
      goto LABEL_34;
    }

    v38 = v47;
    v39 = v45;
    v40 = v26;
    v41 = v48;
    (*(v47 + 32))(v45, v40, v48);
    v32 = static UUID.== infix(_:_:)();
    v42 = *(v38 + 8);
    v42(v39, v41);
    v42(v37, v41);
  }

LABEL_27:
  sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
  return v32 & 1;
}

id sub_1000700A4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PhotoAssetView();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_100070114()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B2F718);
  v1 = sub_10000617C(v0, qword_100B2F718);
  if (qword_100AD01F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30070);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000701DC()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView];
  [v0 addSubview:v1];
  [v1 setAlpha:0.0];
  [v1 setHidden:0];
  [v1 setContentMode:2];
  [v1 setIsAccessibilityElement:1];
  v2 = UIAccessibilityTraitImage;
  v3 = [v1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  [v1 setAccessibilityTraits:v4 | v3];
  [v1 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD0878 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v5];

  v6 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v6];
}

uint64_t sub_10007039C(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  *(v11 + 41) = a1;
  *(v11 + 48) = ObjectType;

  sub_1003E9628(0, 0, v7, &unk_10094F590, v11);
}

uint64_t sub_10007051C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100070554()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100070594(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for DispatchTime();
  v56 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v52 - v9;
  v10 = sub_1000F24EC(&qword_100AD7CD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = sub_1000F24EC(&unk_100AE92B0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  LODWORD(v65) = v21(a1, 1, v19);
  sub_1000082B4(a1, v15, &qword_100AD7CD8);
  if (v21(v15, 1, v19) == 1)
  {
    v22 = v66;
    v23 = *(v66 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v23)
    {
      v24 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v20 + 56))(v18, v25, 1, v19);
    if (v21(v15, 1, v19) != 1)
    {
      sub_100004F84(v15, &qword_100AD7CD8);
    }
  }

  else
  {
    (*(v20 + 32))(v18, v15, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    v22 = v66;
  }

  sub_1000082B4(v18, v12, &qword_100AD7CD8);
  if (v21(v12, 1, v19) == 1)
  {
    sub_100004F84(v12, &qword_100AD7CD8);
  }

  else
  {
    v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v20 + 8))(v12, v19);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 16 + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      sub_100071864(*v28, v29);

      if (v29 > 5)
      {
        sub_100071878(v30, v29);
      }

      else if (v29 == 2)
      {
        if (v65 != 1)
        {
          return sub_100004F84(v18, &qword_100AD7CD8);
        }

        *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) = 0;
        v31 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if ((*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) & 1) == 0)
  {
    *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) = 1;
  }

  if (v65 == 1)
  {
    v31 = 0;
LABEL_20:
    if (*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay) == 1)
    {
      *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay) = 0;
      sub_1000065A8(0, &qword_100AD6210);
      v65 = static OS_dispatch_queue.main.getter();
      LODWORD(v66) = v31;
      v32 = v52;
      static DispatchTime.now()();
      v34 = v53;
      v33 = v54;
      *v53 = 1000;
      v35 = v55;
      (*(v33 + 104))(v34, enum case for DispatchTimeInterval.milliseconds(_:), v55);
      + infix(_:_:)();
      (*(v33 + 8))(v34, v35);
      v56 = *(v56 + 8);
      (v56)(v32, v64);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100319084;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A67448;
      v37 = _Block_copy(aBlock);

      v38 = v57;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000249D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220);
      sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
      v39 = v59;
      v40 = v62;
      v31 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v63;
      v42 = v65;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);

      (*(v61 + 8))(v39, v40);
      (*(v58 + 8))(v38, v60);
      (v56)(v41, v64);
    }

    v43 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus;
    if (*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) != 2)
    {
      v44 = [objc_opt_self() defaultCenter];
      if (qword_100ACFC00 != -1)
      {
        swift_once();
      }

      [v44 postNotificationName:qword_100B2F730 object:v22];
    }

    *(v22 + v43) = 2;
    v45 = v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest;
    v46 = *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest);
    if (v46)
    {
      *v45 = 0;
      v47 = v45[8];
      v45[8] = 0;
      sub_100304A74(v46, v47 & 1);
    }

    (*((swift_isaMask & *v22) + 0x398))(v31);
    v48 = v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v48 + 1);
      ObjectType = swift_getObjectType();
      (*(v49 + 8))(v22, v31, ObjectType, v49);
      swift_unknownObjectRelease();
    }
  }

  return sub_100004F84(v18, &qword_100AD7CD8);
}

uint64_t sub_100070F18()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100070F50()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v59 = type metadata accessor for UUID();
  v57 = *(v59 - 8);
  v5 = *(v57 + 64);
  v6 = __chkstk_darwin(v59);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v49 - v7;
  v60 = type metadata accessor for Date();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin(v60);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v1[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset];
  if (v16)
  {
    (*(v13 + 104))(v15, enum case for JournalFeatureFlags.debug(_:), v12);
    v17 = v16;
    v18 = JournalFeatureFlags.isEnabled.getter();
    (*(v13 + 8))(v15, v12);
    if (v18)
    {
      v19 = *&v17[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
      v20 = [v1 layer];
      v21 = v20;
      if (v19)
      {
        [v20 setBorderColor:0];
        v22 = 0.0;
      }

      else
      {
        v23 = [objc_opt_self() redColor];
        v24 = [v23 CGColor];

        [v21 setBorderColor:v24];
        v22 = 5.0;
        v21 = v24;
      }

      v25 = [v1 layer];
      [v25 setBorderWidth:v22];
    }

    v26 = *&v17[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v26 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        v53 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
        v54 = v17;
        v27 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
        v52 = v5;
        if (v27 > 6)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            if (qword_100ACFB90 != -1)
            {
              swift_once();
            }

            v29 = &qword_100B2F628;
LABEL_18:
            v30 = *v29;
            v50 = v11;
            v51 = v30;
            v31 = v11;
            Date.init()();
            v32 = v61;
            UUID.init()();
            v33 = v57;
            v34 = *(v57 + 16);
            v35 = v59;
            v34(v4, v32, v59);
            (*(v33 + 56))(v4, 0, 1, v35);
            v36 = OBJC_IVAR____TtC7Journal14PhotoAssetView_latestImageRequestID;
            swift_beginAccess();
            sub_100014318(v4, &v1[v36], &qword_100AD1420);
            swift_endAccess();
            LODWORD(v53) = v1[v53];
            v37 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v38 = v56;
            v34(v56, v32, v35);
            v39 = v58;
            v40 = v55;
            v41 = v60;
            (*(v58 + 16))(v55, v31, v60);
            v42 = (*(v33 + 80) + 24) & ~*(v33 + 80);
            v43 = (v52 + *(v39 + 80) + v42) & ~*(v39 + 80);
            v44 = swift_allocObject();
            *(v44 + 16) = v37;
            (*(v33 + 32))(v44 + v42, v38, v35);
            (*(v39 + 32))(v44 + v43, v40, v41);
            v45 = objc_opt_self();

            v46 = [v45 currentTraitCollection];
            v47 = v51;
            v48 = v54;
            sub_100076220(v53, 0, 1, v51, v46, sub_100260288, v44);

            (*(v33 + 8))(v61, v35);
            (*(v39 + 8))(v50, v41);

            return;
          }
        }

        if (qword_100ACFB98 != -1)
        {
          swift_once();
        }

        v29 = &qword_100B2F630;
        goto LABEL_18;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_100071714()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100071864(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_100071878(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

void sub_10007188C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView);
  [v5 setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:0];
  v6 = OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset;
  v7 = *(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *&v7[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v7;

  sub_100046ADC(v4);

  v10 = type metadata accessor for PhotoLibraryAssetMetadata();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10))
  {

    sub_100004F84(v4, &qword_100AD5B20);
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  PhotoLibraryAssetMetadata.placeName.getter();
  v17 = v16;

  sub_100004F84(v4, &qword_100AD5B20);
  if (!v17)
  {
    goto LABEL_5;
  }

  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  [v5 setAccessibilityValue:v8];

  sub_100070F50();
  v11 = *(v1 + v6);
  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = &v11[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v14 = *&v11[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v13 = sub_100260280;
    v13[1] = v12;
    v15 = v11;

    sub_100004DF8(v14);
  }
}

uint64_t sub_100071AE0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100071B2C(uint64_t a1, void *a2)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 estimatedDimension:100.0];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v3 heightDimension:v4];

  v7 = [objc_opt_self() itemWithLayoutSize:v6];
  v8 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D50;
  *(v9 + 32) = v7;
  sub_1000065A8(0, &unk_100AD8A80);
  v10 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v8 horizontalGroupWithLayoutSize:v6 subitems:isa];

  v13 = [objc_opt_self() sectionWithGroup:v12];
  [v13 setInterGroupSpacing:20.0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v15 = Strong;
  v31 = v10;
  v16 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  v17 = v16;

  if (!v16)
  {
    v10 = v31;
    goto LABEL_8;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v34 > 2)
  {
    v10 = v31;
    if ((v34 - 3) >= 3)
    {
      if (v34 == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_18:

    return v13;
  }

  v10 = v31;
  switch(v34)
  {
    case 0:
LABEL_15:
      sub_1000721A0(a2);
      goto LABEL_18;
    case 1:
      sub_1000721A0(a2);
      v21 = [v2 fractionalWidthDimension:1.0];
      v22 = [v2 estimatedDimension:50.0];
      v23 = [v5 sizeWithWidthDimension:v21 heightDimension:v22];

      v24 = v23;
      v25 = String._bridgeToObjectiveC()();
      v26 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v24 elementKind:v25 alignment:2];

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100941D50;
      *(v27 + 32) = v26;
      sub_1000065A8(0, &unk_100ADE680);
      v28 = v26;
      v29 = Array._bridgeToObjectiveC()().super.isa;

      [v13 setBoundarySupplementaryItems:v29];

      v10 = v31;
      goto LABEL_18;
    case 2:
      [v13 setContentInsets:{0.0, -8.0, 8.0, -8.0}];
      goto LABEL_15;
  }

LABEL_16:
  sub_10007258C(v33, v34);
LABEL_8:
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = sub_10007294C(1, a2);

    return v20;
  }

  else
  {

    return 0;
  }
}

void sub_100071FBC()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
  if (*(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) == 1)
  {
    sub_100707F50();
  }

  else
  {
    v2 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
    v3 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
  if (v5)
  {
    v6 = *(v1 + 8);
    v7 = v5;
    sub_1001353BC(v6);
  }
}

unint64_t sub_100072088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000F24EC(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v8, &v15, a4);
      v9 = v15;
      result = sub_1000517E0(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_10002432C(&v16, (v7[7] + 32 * result));
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

id sub_1000721A0(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADD520);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4 - 8];
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = [a1 traitCollection];
  [v8 horizontalSizeClass];

  UserInterfaceSizeClass.init(_:)();
  v9 = sub_10002DDD4(v7, 0, v5);
  [objc_msgSend(a1 container];
  swift_unknownObjectRelease();
  v10 = [a1 traitCollection];
  [v10 displayScale];

  [v1 contentInsets];
  [v1 setContentInsets:?];
  [v1 contentInsets];
  [v1 setContentInsets:?];
  return [v1 setContentInsetsReference:2];
}

BOOL sub_100072430(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1006B96F4(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_10007258C(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_100071878(a1, a2);
  }

  return a1;
}

uint64_t sub_10007259C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000F24EC(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10002432C(v23, v37);
      }

      else
      {
        sub_10000BA20(v23, v37);
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

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
      result = sub_10002432C(v37, (*(v8 + 56) + 32 * v16));
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

id sub_10007294C(char a1, void *a2)
{
  v4 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:3 layoutEnvironment:a2];
  [objc_msgSend(a2 "container")];
  v6 = v5;
  swift_unknownObjectRelease();
  [v4 setEstimatedRowHeight:v6 * 0.75];
  [v4 setSeparatorStyle:0];
  v7 = &_UICollectionListLayoutUnavailable;
  if (a1)
  {
    v7 = &_UICollectionViewListLayoutSectionAutomaticDimension;
  }

  [v4 setSectionHeaderHeight:*v7];
  [v4 setHeaderTopPadding:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_100319024;
  v19 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1003084B0;
  v17 = &unk_100A673F8;
  v9 = _Block_copy(&v14);

  [v4 setLeadingSwipeActionsConfigurationProvider:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_100319054;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1003084B0;
  v17 = &unk_100A67420;
  v11 = _Block_copy(&v14);

  [v4 setTrailingSwipeActionsConfigurationProvider:v11];
  _Block_release(v11);
  v12 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v4 layoutEnvironment:a2];
  [v12 setInterGroupSpacing:20.0];
  sub_1000721A0(a2);

  return v12;
}

void sub_100072BF4()
{
  v1 = v0;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MosaicCell();
  objc_msgSendSuper2(&v6, "_bridgedUpdateConfigurationUsingState:", isa);

  if ((UICellConfigurationState.isSelected.getter() & 1) == 0)
  {
    v4 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer];
    goto LABEL_5;
  }

  sub_1007071E0();
  v3 = OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer;
  if ([*&v0[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer] isHidden])
  {
    v4 = *&v0[v3];
LABEL_5:
    [v4 removeFromSuperlayer];
    return;
  }

  v5 = [v0 layer];
  [v5 addSublayer:*&v1[v3]];
}

double sub_100072D60@<D0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t, uint64_t)@<X2>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  v7 = v4;
  v9 = a1();
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v15 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v15;
    }

    sub_10002432C((*(v13 + 56) + 32 * v11), a4);
    a2(v11, v13);
    *v7 = v13;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100072E1C(uint64_t a1)
{
  swift_getObjectType();
  sub_10005D974(a1, &v21);
  v3 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v4 = sub_10000CA14(&v21, *(&v22 + 1));
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_10000BA7C(&v21);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for MosaicLayout.Attributes();
  v25.receiver = v1;
  v25.super_class = v9;
  v10 = objc_msgSendSuper2(&v25, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_10005D974(a1, &v21);
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = v17;
        if (sub_10003C2FC(v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType], *(v17 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType)))
        {
          v21 = *&v11[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
          v22 = *&v11[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16];
          v23 = *&v11[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32];
          v24 = *&v11[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48];
          v12 = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16];
          v16[0] = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
          v16[1] = v12;
          v13 = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48];
          v16[2] = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32];
          v16[3] = v13;
          v17 = v21;
          v18 = v22;
          v19 = v23;
          v20 = v24;
          v14 = CACornerRadiiEqualToRadii();

          return v14;
        }
      }
    }

    else
    {
      sub_1000261D4(&v21);
    }
  }

  return 0;
}

uint64_t type metadata accessor for LivePhotoAssetView()
{
  result = qword_100AEF630;
  if (!qword_100AEF630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100073100(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset] = 0;
  v10 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer] = 0;
  v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LivePhotoAssetView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_100073B5C();

  return v12;
}

uint64_t sub_100073254(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100073348(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F24EC(&qword_100AE0010);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 6);
  v7 = sub_10036250C(sub_1006D3064, sub_100362C00, v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
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
    swift_unknownObjectRetain();
    v9 = sub_10036250C(sub_1006D3064, sub_100362C00, v4, v5);
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

void sub_1000734B4(SEL *a1, double a2, double a3, double a4, double a5)
{
  v15.receiver = v5;
  v15.super_class = type metadata accessor for LivePhotoAssetView();
  objc_msgSendSuper2(&v15, *a1, a2, a3, a4, a5);
  v11 = *&v5[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v5 bounds];
  [v11 setFrame:?];

  v12 = *&v5[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView];
  [v5 bounds];
  [v12 setFrame:?];
  v13 = *&v5[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView];
  if (v13)
  {
    v14 = v13;
    [v5 bounds];
    [v14 setFrame:?];
  }
}

id sub_1000735C0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for LivePhotoAssetView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10007361C()
{
  v1 = v0;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView]];
  sub_100013178(0.0);

  v2 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView];
  [v0 addSubview:v2];
  v3 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView]];
  v4 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_labelView];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal12MapAssetView_labelView]];
  [v4 setMinimumScaleFactor:0.6];
  [v4 setLineBreakMode:4];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v2 setContentMode:2];
  [v2 setAlpha:0.0];
  [v2 setClipsToBounds:1];
  [*&v1[v3] setAlpha:0.0];
  v5 = [*&v1[v3] layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];

  [v4 setAlpha:0.0];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:v6];

  [v4 setTextAlignment:1];
  sub_1000F24EC(&unk_100AEBEC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  *(v7 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v7 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v10[3] = type metadata accessor for MapAssetView();
  v10[0] = v1;
  v8 = v1;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v10);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v8 selector:"userInterfaceStyleChanged" name:UIApplicationWillEnterForegroundNotification object:0];
}

uint64_t sub_1000738CC(char a1, unsigned __int8 a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 40) = a2;
  *(v13 + 41) = a1;
  *(v13 + 48) = ObjectType;

  sub_1003E9628(0, 0, v9, &unk_10094F590, v13);

  sub_1000746FC();
  v14 = (a2 | 2) == 3;
  if ((a2 | 2) == 3)
  {
    v15 = &selRef_tertiarySystemFillColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v14)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = *(v3 + OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView);
  v18 = [objc_opt_self() *v15];
  [v17 setBackgroundColor:v18];

  sub_100013178(v16);
}

uint64_t sub_100073AE4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100073B1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100073B5C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v5 = *&v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView];
  [v1 addSubview:v5];
  [v5 setAlpha:0.0];
  [v5 setContentMode:2];
  [v1 setIsAccessibilityElement:1];
  v6 = UIAccessibilityTraitImage;
  v7 = [v1 accessibilityTraits];
  if ((v6 & ~v7) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [v1 setAccessibilityTraits:v8 | v7];
  [v1 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD0878 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v9];

  v10 = *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  if (!v10)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = *&v10[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata];
  if (v11)
  {
    v12 = v10;

    sub_100046ADC(v4);

    v13 = type metadata accessor for PhotoLibraryAssetMetadata();
    if ((*(*(v13 - 8) + 48))(v4, 1, v13))
    {

      sub_100004F84(v4, &qword_100AD5B20);
    }

    else
    {
      PhotoLibraryAssetMetadata.placeName.getter();
      v15 = v14;

      sub_100004F84(v4, &qword_100AD5B20);
      if (v15)
      {
        v11 = String._bridgeToObjectiveC()();

        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  [v1 setAccessibilityValue:v11];
}

void sub_100073E04()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v46 - v3;
  v54 = type metadata accessor for UUID();
  v50 = *(v54 - 8);
  v5 = *(v50 + 64);
  v6 = __chkstk_darwin(v54);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v55 = type metadata accessor for Date();
  v53 = *(v55 - 8);
  v9 = *(v53 + 64);
  v10 = __chkstk_darwin(v55);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v46 - v11;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  if (v16)
  {
    (*(v13 + 104))(v15, enum case for JournalFeatureFlags.debug(_:), v12);
    v17 = v16;
    v18 = JournalFeatureFlags.isEnabled.getter();
    (*(v13 + 8))(v15, v12);
    if (v18)
    {
      v19 = *&v17[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata];
      v20 = [v1 layer];
      v21 = v20;
      if (v19)
      {
        [v20 setBorderColor:0];
        v22 = 0.0;
      }

      else
      {
        v23 = [objc_opt_self() redColor];
        v24 = [v23 CGColor];

        [v21 setBorderColor:v24];
        v22 = 5.0;
        v21 = v24;
      }

      v25 = [v1 layer];
      [v25 setBorderWidth:v22];
    }

    v26 = *&v17[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v26 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        Date.init()();
        v48 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
        v49 = v17;
        if (v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 6u)
        {
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v27 & 1) == 0)
          {
            if (qword_100ACFB90 != -1)
            {
              swift_once();
            }

            v28 = &qword_100B2F628;
LABEL_18:
            v47 = *v28;
            v29 = v8;
            UUID.init()();
            v30 = v50;
            v31 = *(v50 + 16);
            v46 = v29;
            v32 = v54;
            v31(v4, v29, v54);
            (*(v30 + 56))(v4, 0, 1, v32);
            v33 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
            swift_beginAccess();
            sub_100075184(v4, &v1[v33]);
            swift_endAccess();
            LODWORD(v48) = v1[v48];
            v34 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v35 = v52;
            v31(v52, v29, v32);
            v36 = v53;
            v37 = v51;
            v38 = v55;
            (*(v53 + 16))(v51, v56, v55);
            v39 = (*(v30 + 80) + 24) & ~*(v30 + 80);
            v40 = (v5 + *(v36 + 80) + v39) & ~*(v36 + 80);
            v41 = swift_allocObject();
            *(v41 + 16) = v34;
            (*(v30 + 32))(v41 + v39, v35, v32);
            (*(v36 + 32))(v41 + v40, v37, v38);
            v42 = objc_opt_self();

            v43 = [v42 currentTraitCollection];
            v44 = v47;
            v45 = v49;
            sub_100076220(v48, 0, 1, v47, v43, sub_1000A59CC, v41);

            (*(v30 + 8))(v46, v32);
            (*(v36 + 8))(v56, v38);

            return;
          }
        }

        if (qword_100ACFB98 != -1)
        {
          swift_once();
        }

        v28 = &qword_100B2F630;
        goto LABEL_18;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000745AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

id sub_1000746FC()
{
  v2 = v0;
  v3 = [v0 superview];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v6 = [v5 constraints];
      sub_1000065A8(0, &qword_100AD8000);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        break;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_3:

      v4 = [v5 superview];

      if (!v4)
      {
        goto LABEL_26;
      }
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v8 < 1)
    {
      goto LABEL_48;
    }

    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 firstItem];
      if (v12)
      {
        v1 = v12;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1000065A8(0, &unk_100AD43A0);
          if (static NSObject.== infix(_:_:)())
          {
            [v5 removeConstraint:v11];
          }
        }

        swift_unknownObjectRelease();
      }

      v13 = [v11 secondItem];
      if (v13)
      {
        v1 = v13;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        sub_1000065A8(0, &unk_100AD43A0);
        if (static NSObject.== infix(_:_:)())
        {
          [v5 removeConstraint:v11];
        }

        swift_unknownObjectRelease();
      }

LABEL_10:
      if (v8 == ++v9)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_26:
  v14 = [v2 constraints];
  sub_1000065A8(0, &qword_100AD8000);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = v1;
    v16 = 0;
    v17 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v19 = *(v1 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v19 firstItem])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v22 = i;
          v23 = v17;
          sub_1000065A8(0, &qword_100ADC670);
          v24 = v2;
          v25 = static NSObject.== infix(_:_:)();

          swift_unknownObjectRelease();
          if (v25)
          {
            v17 = v23;
            v18 = v29;
            if ([v20 secondItem])
            {

              swift_unknownObjectRelease();
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v18 = v29;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            i = v22;
            v1 = v28;
          }

          else
          {

            v17 = v23;
            i = v22;
            v1 = v28;
            v18 = v29;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v16;
      if (v21 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_50:

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 removeConstraints:isa];

  return [v2 setTranslatesAutoresizingMaskIntoConstraints:1];
}

void sub_100074C10(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = a2;
  v2[OBJC_IVAR____TtC7Journal12MapAssetView_mapType] = a2;
  v5 = *&v2[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  *&v3[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset] = a1;
  a1;

  sub_1000750F8();
  [v3 setIsAccessibilityElement:v4 != 2];
  sub_1000751F4();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v3 setAccessibilityLabel:v7];

  sub_100075CB0();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v3 setAccessibilityValue:v9];
}

void sub_100074D28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView;
    v4 = *(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      v32 = v4;
      v6 = v2;
      sub_1000B3430(v5, v6, &OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata, COERCE_CGFLOAT(type metadata accessor for LivePhotoAsset), v33);
      if (v34)
      {
        v7 = [*(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView) layer];
        v8 = 0.0;
        v9 = 1.0;
        [v7 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

        v10 = [v32 layer];
        v11 = 0.0;
        v12 = 1.0;
      }

      else
      {
        v14 = *&v33[2];
        v13 = *&v33[3];
        v16 = *v33;
        v15 = *&v33[1];
        sub_100067B84();
        v19 = v17 / v18;
        v20 = v32;
        [v20 frame];
        v22 = v21;
        [v20 frame];
        v24 = v23;

        sub_1003AE85C(v19, v22 / v24, v16, v15, v14, v13);
        v8 = v25;
        v11 = v26;
        v9 = v27;
        v12 = v28;
        v29 = *(v1 + v3);
        if (v29)
        {
          v30 = [v29 layer];
          [v30 setContentsRect:{v8, v11, v9, v12}];
        }

        v10 = [*(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView) layer];
      }

      v31 = v10;
      [v31 setContentsRect:{v8, v11, v9, v12}];
    }
  }
}

void sub_100074F78()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v3 = *((swift_isaMask & *v2) + 0x58);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v5 = v2;
  v3(0, v4);

  sub_100073E04();
  v6 = *(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v6[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v9 = *&v6[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v8 = sub_100732FC0;
    v8[1] = v7;
    v10 = v6;

    sub_100004DF8(v9);
  }
}

uint64_t sub_1000750C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_1000750F8()
{
  result = [v0 frame];
  if (v2 <= 0.0)
  {
    if (!v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
    {
      goto LABEL_6;
    }
  }

  else if (!v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
  {
    result = sub_10007BFCC();
    goto LABEL_6;
  }

  result = sub_10021F79C();
LABEL_6:
  v3 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal5Asset_delegates);

    return [v4 addObject:v0];
  }

  return result;
}

uint64_t sub_100075184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000751F4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for AssetType.photo(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008E0110;
    v9 = 1953458288;
LABEL_3:
    v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
LABEL_4:
    v11 = 0xE500000000000000;
LABEL_5:
    v12.super.isa = v8;
    v13 = 0;
    v14 = 0xE000000000000000;
    v15 = 0xD000000000000034;
LABEL_9:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v12, *&v13, *(&v19 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == enum case for AssetType.livePhoto(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008E00D0;
    v10 = 0x6F6870206576696CLL;
    v11 = 0xEA00000000006F74;
    v15 = 0xD000000000000038;
LABEL_8:
    v12.super.isa = v8;
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (v7 == enum case for AssetType.video(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008E0090;
    v9 = 1701079414;
    goto LABEL_3;
  }

  if (v7 == enum case for AssetType.music(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008E0050;
    v10 = 0x636973756DLL;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.podcast(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008E0010;
    v18 = 0x736163646F70;
LABEL_17:
    v10 = v18 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
LABEL_18:
    v15 = 0xD000000000000036;
LABEL_19:
    v11 = 0xE700000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.book(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v15 = 0xD000000000000033;
    v19 = 0x80000001008DFFD0;
    v10 = 1802465122;
    v11 = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.audio(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFF90;
    v10 = 0x6572206F69647561;
    v11 = 0xEF676E6964726F63;
    goto LABEL_5;
  }

  if (v7 == enum case for AssetType.visit(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFF10;
    v10 = 0x7469736976;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.multiPinMap(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFF10;
    v10 = 0x6563616C70;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.genericMap(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFF10;
    v10 = 0x20676E696B6C6177;
    v11 = 0xEC00000061657261;
    goto LABEL_5;
  }

  if (v7 == enum case for AssetType.link(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v15 = 0xD000000000000033;
    v19 = 0x80000001008DFED0;
    v10 = 1802398060;
    v11 = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.contact(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFE90;
    v18 = 0x6361746E6F63;
    goto LABEL_17;
  }

  if (v7 == enum case for AssetType.workoutIcon(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFE50;
    v10 = 0x74756F6B726F77;
    v15 = 0xD00000000000003ALL;
    goto LABEL_19;
  }

  if (v7 == enum case for AssetType.workoutRoute(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFE10;
    v10 = 0x2074756F6B726F77;
    v11 = 0xED00006574756F72;
    v15 = 0xD00000000000003BLL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.reflection(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFDD0;
    v10 = 0x697463656C666572;
    v15 = 0xD000000000000039;
    v11 = 0xEA00000000006E6FLL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.stateOfMind(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFD90;
    v10 = 0x666F206574617473;
    v11 = 0xED0000646E696D20;
    v15 = 0xD00000000000003ALL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.motionActivity(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFD50;
    v10 = 0x61206E6F69746F6DLL;
    v11 = 0xEF79746976697463;
    v15 = 0xD00000000000003DLL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.thirdPartyMedia(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFD10;
    v10 = 0x616964656DLL;
    goto LABEL_4;
  }

  if (v7 == enum case for AssetType.placeholder(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFF50;
    v10 = 0x6C6F686563616C70;
    v11 = 0xEB00000000726564;
    v15 = 0xD00000000000003ALL;
    goto LABEL_8;
  }

  if (v7 == enum case for AssetType.streakEvent(_:))
  {
    return 0;
  }

  if (v7 == enum case for AssetType.drawing(_:))
  {
    v8 = [objc_opt_self() mainBundle];
    v19 = 0x80000001008DFCD0;
    v10 = 0x676E6977617264;
    goto LABEL_18;
  }

  if (v7 == enum case for AssetType.confetti(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v7 == enum case for AssetType.unknown(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100075CB0()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v39 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v38 - v6;
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for MultiPinMapAssetMetadata();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_12;
  }

  v38 = v0;

  sub_1000768B4(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_12:
    sub_100004F84(v12, &unk_100AD5B30);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  v17 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

  if (*(v17 + 16))
  {
    v18 = v39;
    (*(v39 + 16))(v9, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v1);

    v19 = VisitAssetMetadata.placeName.getter();
    v21 = v20;
    (*(v18 + 8))(v9, v1);
    if (!v21)
    {
      goto LABEL_14;
    }

    v22 = v19;
    v23 = sub_100076E78();
    if ((v24 & 1) == 0)
    {
      v25 = v23;
      if (v23 >= 2)
      {
        if (qword_100AD0858 != -1)
        {
          swift_once();
        }

        sub_1000F24EC(&unk_100AD5B10);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_100940050;
        *(v26 + 56) = &type metadata for String;
        v27 = sub_100031B20();
        *(v26 + 32) = v22;
        *(v26 + 40) = v21;
        *(v26 + 96) = &type metadata for Int;
        *(v26 + 104) = &protocol witness table for Int;
        *(v26 + 64) = v27;
        *(v26 + 72) = v25 - 1;
        v28 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_25;
      }
    }
  }

LABEL_14:
  sub_1000F24EC(&qword_100AD38F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  v31 = MultiPinMapAssetMetadata.visitsData.getter();
  if (v31)
  {
    if (*(v31 + 16))
    {
      v32 = v39;
      (*(v39 + 16))(v7, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v1);

      *(inited + 32) = VisitAssetMetadata.placeName.getter();
      *(inited + 40) = v33;
      (*(v32 + 8))(v7, v1);
      goto LABEL_19;
    }
  }

  *(inited + 32) = 0;
  *(inited + 40) = 0;
LABEL_19:
  v34 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v34)
  {
LABEL_23:
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    goto LABEL_24;
  }

  if (!*(v34 + 16))
  {

    goto LABEL_23;
  }

  v35 = v39;
  (*(v39 + 16))(v4, v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v1);

  *(inited + 48) = VisitAssetMetadata.city.getter();
  *(inited + 56) = v36;
  (*(v35 + 8))(v4, v1);
LABEL_24:
  sub_10009BB20(8236, 0xE200000000000000, inited);
  v28 = v37;
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AE4870);
  swift_arrayDestroy();
LABEL_25:
  (*(v14 + 8))(v16, v13);
  return v28;
}

uint64_t sub_100076220(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 & 1;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = (*((swift_isaMask & *v7) + 0x2F8))(v19, a1, a5);
  v22 = v21;
  v44 = (*((swift_isaMask & *v7) + 0x2F0))(a1, a2, v18, v20, v21, a5);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v43 = sub_1000387D4(v23, v24);
  }

  else
  {
    v43 = 0;
  }

  v25 = (v7 + OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey);
  *v25 = v20;
  v25[1] = v22;

  v42 = *(v7 + OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile);
  v26 = *(v7 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (v26 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v45;
  v27 = v46;
  (*(v45 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC7Journal5Asset_id, v46);
  v29 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v30 = v29 + v16;
  v31 = swift_allocObject();
  *(v31 + 2) = v20;
  *(v31 + 3) = v22;
  v32 = v49;
  *(v31 + 4) = v47;
  *(v31 + 5) = v32;
  v33 = v44;
  v34 = v56;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  *(v31 + 8) = v41;
  (*(v28 + 32))(&v31[v29], v17, v27);
  v31[v30] = v43;
  *&v31[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] = v42;
  *&v31[((v30 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_100077704;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A62A50;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v56;
  v37 = v50;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_100034178(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v38 = v52;
  v39 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);
}

uint64_t sub_1000767B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000768B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD38D0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8B8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8B8);
  v13 = sub_1000F24EC(&unk_100AD5B30);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &unk_100AD5B30);
  }

  sub_100004F84(v11, &qword_100ADA8B8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD38D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for MultiPinMapAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for MultiPinMapAssetMetadata();
    sub_10004A6D8(&qword_100AD3870, &type metadata accessor for MultiPinMapAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &unk_100AD5B30);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8B8);
  return swift_endAccess();
}

uint64_t sub_100076C58(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for UUID();
  sub_100034178(&qword_100AE19B0, &type metadata accessor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  if (a2 > 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v14 = 0x657263536C6C7566;
      v13 = 0xEA00000000006E65;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v16 = 0x61546D756964656DLL;
      v15 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v14;
    }

    if (a2 <= 5u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v7 = 0x656772614C78;
    v8 = 0xEA00000000006564;
    v9 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v9 = 0x656772616CLL;
      v8 = 0xE500000000000000;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x6154656772614C78;
      v10 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    if (a2 <= 1u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }
  }

  v17 = v12;
  String.append(_:)(*&v11);

  return 0x2D626D756874;
}

uint64_t sub_100076E78()
{
  v1 = type metadata accessor for MultiPinMapAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v7);

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_100004F84(v7, &unk_100AD5B30);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_100004F84(v7, &unk_100AD5B30);
      v9 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v2 + 8))(v4, v1);
      if (v9)
      {
        v10 = *(v9 + 16);

        return v10;
      }
    }
  }

  return 0;
}

char *sub_100077050(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation());

  return sub_1000771E8(v6, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t type metadata accessor for ThumbnailCacheOperation()
{
  result = qword_100AF0150;
  if (!qword_100AF0150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077130()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907000;
  v1._object = 0x8000000100906FD0;
  v4._countAndFlagsBits = 0xD0000000000000D2;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C90 = v3;
}

char *sub_1000771E8(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, NSObject *a7)
{
  v8 = v7;
  v49 = a7;
  v50 = a5;
  v48 = a4;
  v47 = a3;
  v46 = a2;
  v11 = type metadata accessor for OSSignposter();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v53 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v45[-v18];
  v20 = OBJC_IVAR____TtC7Journal5Asset_type;
  v21 = qword_100B302B8;
  v22 = type metadata accessor for AssetType();
  (*(*(v22 - 8) + 16))(&v8[v21], a1 + v20, v22);
  *&v8[qword_100B302C0] = *(a1 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  v23 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  *&v8[qword_100B302C8] = *(a1 + v23);
  v24 = *(&a1->isa + OBJC_IVAR____TtC7Journal5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_100B302D0] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC7Journal5Asset_context);
  *&v8[qword_100B302D8] = v26;
  v8[qword_100B302E0] = v46;
  v27 = &v8[qword_100B302E8];
  *v27 = v47;
  v27[8] = v48 & 1;
  v28 = &v8[qword_100AF0110];
  v29 = v49;
  v30 = v50;
  *v28 = v50;
  v28[1] = a6;
  *&v8[qword_100B302F0] = v29;
  v55 = 0;
  v56 = 0xE000000000000000;
  v31 = v26;

  v49 = v29;
  _StringGuts.grow(_:)(26);

  v55 = 0xD000000000000018;
  v56 = 0x80000001009038F0;
  v32._countAndFlagsBits = v30;
  v32._object = a6;
  String.append(_:)(v32);

  Logger.init(subsystem:category:)();
  v33 = qword_100AF0118;
  (*(v15 + 32))(&v8[qword_100AF0118], v19, v14);
  v34 = *(v15 + 16);
  v34(v19, &v8[v33], v14);
  OSSignposter.init(logger:)();
  (*(v51 + 32))(&v8[qword_100AF0120], v13, v52);
  v35 = type metadata accessor for ThumbnailCacheOperation();
  v54.receiver = v8;
  v54.super_class = v35;
  v36 = [&v54 init];
  v37 = v53;
  v34(v53, &v36[qword_100AF0118], v14);
  v38 = v36;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Initialized", v41, 2u);

    v42 = v49;
    v43 = a1;
    a1 = v38;
  }

  else
  {
    v42 = v38;
    v43 = v39;
    v39 = v49;
  }

  (*(v15 + 8))(v37, v14);
  return v38;
}

void sub_100077704()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  sub_1000488A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1000777B4()
{
  result = qword_100AD6230;
  if (!qword_100AD6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6230);
  }

  return result;
}

void sub_100077808()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MosaicCell();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  if ([v0 isSelected])
  {
    [v0 bounds];
    v12 = CGRectInset(v11, 4.0, 4.0);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v5 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView];
    v6 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer];
    v7 = [v5 layer];
    [v7 cornerRadii];

    v8 = sub_100266838(v10, x, y, width, height);
    [v6 setPath:v8];
  }
}

void sub_100077964()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MapAssetView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  sub_100077A44();
  if (v0[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] == 1)
  {
    v0[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 0;
    if (v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
    {
      sub_10021F79C();
    }

    else
    {
      sub_10007BFCC();
    }
  }
}

void sub_100077A44()
{
  v1 = v0;
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v59 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v59 - v11;
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset);
  if (!v15)
  {
    return;
  }

  v66 = v15;
  v16 = sub_1001B4A00();
  v17 = sub_1000782E4(v16);
  v19 = v18;
  v20 = sub_10007B9EC(v16, *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType));
  if (v20 > 2)
  {

    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:1];
    v21 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v21 setHidden:1];
    goto LABEL_20;
  }

  if (!v20)
  {
    v65 = v17;
    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
    v64 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v64 setHidden:0];
    if (!*(v16 + 16))
    {

      goto LABEL_58;
    }

    v23 = *(v3 + 16);
    v61 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v62 = v23;
    v63 = v3 + 16;
    v23(v14, v16 + v61, v2);
    VisitAssetMetadata.typeOfPlace.getter();
    v25 = v24;
    v26 = v14;
    v27 = *(v3 + 8);
    v27(v26, v2);
    v60 = v25;
    if (v25)
    {
      goto LABEL_44;
    }

    if (!*(v16 + 16))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v62(v12, v16 + v61, v2);
    v28 = VisitAssetMetadata.mapItemData.getter();
    v59 = v27;
    if (v29 >> 60 == 15)
    {
      v27(v12, v2);
    }

    else
    {
      v41 = v28;
      v60 = v29;
      sub_1000065A8(0, &qword_100AD5A90);
      v42 = static NSCoding<>.create(from:)();
      sub_10003A5C8(v41, v60);
      v59(v12, v2);
      if (v42)
      {
        v43 = [v42 _firstLocalizedCategoryName];

        if (v43)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v44;

          v27 = v59;
          goto LABEL_44;
        }
      }
    }

    if (!*(v16 + 16))
    {
LABEL_70:
      __break(1u);
      return;
    }

    v62(v9, v16 + v61, v2);
    v45 = VisitAssetMetadata.mapItemData.getter();
    if (v46 >> 60 == 15)
    {
      v27 = v59;
      v59(v9, v2);
    }

    else
    {
      v47 = v45;
      v48 = v46;
      sub_1000065A8(0, &qword_100AD5A90);
      v49 = static NSCoding<>.create(from:)();
      sub_10003A5C8(v47, v48);
      v27 = v59;
      v59(v9, v2);
      if (v49)
      {
        v50 = v27;
        v51 = [v49 pointOfInterestCategory];

        if (v51)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v52;
        }

        else
        {

          v60 = 0;
        }

        v27 = v50;
        goto LABEL_44;
      }
    }

    v60 = 0;
LABEL_44:
    if (*(v16 + 16))
    {
      v62(v6, v16 + v61, v2);

      v53 = VisitAssetMetadata.city.getter();
      v55 = v54;
      v27(v6, v2);
      if (v60)
      {

        v56 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v56 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v56 && v55)
        {
          v57 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v57 = v53 & 0xFFFFFFFFFFFFLL;
          }

          if (v57 && (v65 != v53 || v55 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_10021EDBC(v65, v19, v53, v55);

LABEL_59:

            sub_10007BE4C();
LABEL_60:
            v31 = v66;
            v21 = v64;
            goto LABEL_21;
          }
        }

        else if (!v56)
        {

          if (v55)
          {
            v58 = HIBYTE(v55) & 0xF;
            if ((v55 & 0x2000000000000000) == 0)
            {
              v58 = v53 & 0xFFFFFFFFFFFFLL;
            }

            v31 = v66;
            if (v58)
            {
              sub_10007BA80(v53, v55);

              sub_10007BE4C();
            }

            else
            {
            }

            v21 = v64;
            goto LABEL_21;
          }

          goto LABEL_60;
        }
      }

LABEL_58:

      sub_10007BA80(v65, v19);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v20 != 1)
  {

    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
    v21 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v21 setHidden:0];
    v30 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v30 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      sub_10021EBC8();

      sub_10021EA48();
      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
  v21 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  [v21 setHidden:0];
  v22 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v22 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_19;
  }

  sub_10007BA80(v17, v19);

  sub_10007BE4C();
LABEL_20:
  v31 = v66;
LABEL_21:
  v32 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView);
  if (([v32 isHidden] & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:1];
    [v21 setHidden:1];
    v33 = [v21 text];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = &v32[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterText];
    *v38 = v35;
    v38[1] = v37;

    v39 = *&v32[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel];
    if (v37)
    {

      v40 = String._bridgeToObjectiveC()();
    }

    else
    {
      v40 = 0;
    }

    [v39 setText:v40];

    v31 = v40;
  }
}

uint64_t sub_1000782E4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v203[3] = v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v203[2] = v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v203[1] = v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEED20);
  v9 = __chkstk_darwin(v8 - 8);
  v203[0] = v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v207 = v203 - v12;
  v13 = __chkstk_darwin(v11);
  v204 = v203 - v14;
  v15 = __chkstk_darwin(v13);
  v205 = v203 - v16;
  v17 = __chkstk_darwin(v15);
  v206 = v203 - v18;
  __chkstk_darwin(v17);
  v209 = v203 - v19;
  v20 = type metadata accessor for VisitAssetMetadata();
  v21 = __chkstk_darwin(v20);
  v214 = v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  *&v220 = v203 - v24;
  v25 = __chkstk_darwin(v23);
  v215 = (v203 - v26);
  v27 = __chkstk_darwin(v25);
  v30 = v203 - v29;
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  v219 = v27;
  v210 = v31;
  v212 = v28;
  v211 = a1;
  v208 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v34 = *(v28 + 16);
    v33 = v28 + 16;
    v217 = v34;
    *&v216 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v35 = a1 + v216;
    v36 = *(v33 + 56);
    v213 = (v33 - 8);
    v218 = v33;
    v37 = (v33 + 16);
    v34(v30, a1 + v216, v20);
    while (1)
    {
      v41 = VisitAssetMetadata.mapItemData.getter();
      if (v42 >> 60 == 15 || (v38 = v41, v39 = v42, sub_1000065A8(0, &qword_100AD5A90), v40 = static NSCoding<>.create(from:)(), sub_10003A5C8(v38, v39), !v40))
      {
        v43 = *v37;
        (*v37)(*&v220, v30, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v221 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100199CF8(0, *(v32 + 2) + 1, 1);
          v32 = v221;
        }

        v46 = *(v32 + 2);
        v45 = *(v32 + 3);
        if (v46 >= v45 >> 1)
        {
          sub_100199CF8(v45 > 1, v46 + 1, 1);
          v32 = v221;
        }

        *(v32 + 2) = v46 + 1;
        v47 = &v32[v216 + v46 * v36];
        v20 = v219;
        v43(v47, *&v220, v219);
      }

      else
      {

        (*v213)(v30, v20);
      }

      v35 += v36;
      if (!--v31)
      {
        break;
      }

      v217(v30, v35, v20);
    }
  }

  v221 = _swiftEmptyArrayStorage;
  v48 = *(v32 + 2);
  if (v48)
  {
    v220 = *(v212 + 16);
    v49 = &v32[(*(v212 + 80) + 32) & ~*(v212 + 80)];
    v50 = (v212 + 8);
    v213 = _swiftEmptyArrayStorage;
    v218 = *(v212 + 72);
    v216 = xmmword_100940050;
    v51 = v215;
    v217 = (v212 + 16);
    (*&v220)(v215, v49, v20);
    while (1)
    {
      v52 = VisitAssetMetadata.latitude.getter();
      if (v53 & 1) != 0 || (v54 = *&v52, *&v55 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter()), (v56))
      {
        (*v50)(v51, v20);
      }

      else
      {
        v57 = v54;
        v58 = *&v55;
        sub_1000F24EC(&qword_100AD6BD0);
        inited = swift_initStackObject();
        *(inited + 16) = v216;
        *(inited + 32) = 1701667182;
        *(inited + 40) = 0xE400000000000000;
        v60 = VisitAssetMetadata.placeName.getter();
        v62 = v61;
        v63 = sub_1000F24EC(&unk_100AE4870);
        *(inited + 48) = v60;
        *(inited + 56) = v62;
        *(inited + 72) = v63;
        *(inited + 80) = 0x7974696C61636F6CLL;
        *(inited + 88) = 0xE800000000000000;
        v64 = VisitAssetMetadata.city.getter();
        *(inited + 120) = v63;
        v51 = v215;
        *(inited + 96) = v64;
        *(inited + 104) = v65;
        sub_100363528(inited);
        swift_setDeallocating();
        sub_1000F24EC(&qword_100ADFEB0);
        swift_arrayDestroy();
        v66 = objc_allocWithZone(MKPlacemark);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v68 = [v66 initWithCoordinate:isa addressDictionary:{v57, v58}];

        (*v50)(v51, v20);
        if (v68)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v213 = v221;
        }
      }

      v49 = &v218[v49];
      if (!--v48)
      {
        break;
      }

      (*&v220)(v51, v49, v20);
    }

    v69 = v213;
  }

  else
  {

    v69 = _swiftEmptyArrayStorage;
  }

  v70 = v211;
  v71 = sub_100079F8C(v211);
  v72 = v209;
  v73 = v210;
  if (!v210)
  {

    v75 = 0;
    v76 = 0xE000000000000000;
LABEL_88:
    v74 = v212;
    goto LABEL_89;
  }

  v74 = v212;
  if (v210 == 1 || (v71 & 1) != 0)
  {
    goto LABEL_29;
  }

  v213 = v69;
  v221 = _swiftEmptyArrayStorage;
  v77 = v210;
  v78 = v70;
  v79 = *(v212 + 16);
  v80 = v78 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
  v81 = *(v212 + 72);
  v82 = (v212 + 8);
  v79(v214, v80, v20);
  while (1)
  {
    v83 = VisitAssetMetadata.mapItemData.getter();
    if (v84 >> 60 == 15 || (v85 = v83, v86 = v84, sub_1000065A8(0, &qword_100AD5A90), v87 = static NSCoding<>.create(from:)(), v88 = v86, v20 = v219, sub_10003A5C8(v85, v88), !v87))
    {
      (*v82)(v214, v20);
    }

    else
    {
      v89 = v20;
      v90 = [v87 placemark];

      (*v82)(v214, v89);
      if (v90)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v208 = v221;
      }
    }

    v80 += v81;
    --v77;
    v20 = v219;
    if (!v77)
    {
      break;
    }

    v79(v214, v80, v219);
  }

  v221 = v208;
  sub_1006ADB00(v213);
  v91 = v221;
  v74 = v221 & 0xFFFFFFFFFFFFFF8;
  v92 = v221 >> 62;
  if (!(v221 >> 62))
  {
    v93 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v94 = v221 & 0xC000000000000001;
    if (v93)
    {
      goto LABEL_43;
    }

LABEL_62:
    v96 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

LABEL_61:
  v93 = _CocoaArrayWrapper.endIndex.getter();
  v94 = v91 & 0xC000000000000001;
  if (!v93)
  {
    goto LABEL_62;
  }

LABEL_43:
  v95 = 0;
  v96 = _swiftEmptyArrayStorage;
  do
  {
    v97 = v95;
    while (1)
    {
      if (v94)
      {
        v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v97 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v98 = *(v91 + 8 * v97 + 32);
      }

      v99 = v98;
      v95 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v100 = [v98 country];
      if (v100)
      {
        break;
      }

      ++v97;
      if (v95 == v93)
      {
        goto LABEL_63;
      }
    }

    v220 = *&v92;
    v101 = v100;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v218 = v103;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_10009BCC8(0, *(v96 + 2) + 1, 1, v96);
    }

    v105 = *(v96 + 2);
    v104 = *(v96 + 3);
    if (v105 >= v104 >> 1)
    {
      v96 = sub_10009BCC8((v104 > 1), v105 + 1, 1, v96);
    }

    *(v96 + 2) = v105 + 1;
    v106 = &v96[16 * v105];
    v107 = v218;
    *(v106 + 4) = v102;
    *(v106 + 5) = v107;
    v92 = *&v220;
  }

  while (v95 != v93);
LABEL_63:
  v221 = v96;
  v72 = sub_1000F24EC(&qword_100AD60A0);
  v220 = COERCE_DOUBLE(sub_10007B970());
  v108 = Collection<>.uniqued()();
  v109 = *(v96 + 2);

  if (v92)
  {
    v110 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v110 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v211;
  if (v109 != v110)
  {

    v75 = 0;
    goto LABEL_86;
  }

  if (v108[2] != 1)
  {

    v75 = v108[2];
    if (v75)
    {
      v72 = v209;
      v73 = v210;
      v74 = v212;
      if (v75 != 1)
      {
        v93 = v108[4];
        v112 = v108[5];
        v92 = v108[6];
        v111 = v108[7];

        if (v75 < 3)
        {
          if (qword_100AD0510 == -1)
          {
LABEL_157:
            sub_1000F24EC(&unk_100AD5B10);
            v178 = swift_allocObject();
            *(v178 + 16) = xmmword_100940050;
            *(v178 + 56) = &type metadata for String;
            v179 = sub_100031B20();
            *(v178 + 32) = v93;
            *(v178 + 40) = v112;
            *(v178 + 96) = &type metadata for String;
            *(v178 + 104) = v179;
            *(v178 + 64) = v179;
            *(v178 + 72) = v92;
            *(v178 + 80) = v111;
LABEL_158:
            v75 = static String.localizedStringWithFormat(_:_:)();
            v76 = v180;

            v73 = v210;
            v70 = v211;
            goto LABEL_89;
          }
        }

        else if (qword_100AD0508 == -1)
        {
          goto LABEL_157;
        }

LABEL_232:
        swift_once();
        goto LABEL_157;
      }

      goto LABEL_29;
    }

LABEL_86:
    v76 = 0xE000000000000000;
LABEL_87:
    v72 = v209;
    v73 = v210;
    goto LABEL_88;
  }

  v217 = v109;
  if (v93)
  {
    v111 = 0;
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v112 = v111;
      while (1)
      {
        if (v94)
        {
          v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v112 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_225;
          }

          v113 = *(v91 + 8 * v112 + 32);
        }

        v92 = v113;
        v111 = (v112 + 1);
        if (__OFADD__(v112, 1))
        {
          __break(1u);
LABEL_225:
          __break(1u);
          goto LABEL_226;
        }

        v114 = [v113 administrativeArea];
        if (v114)
        {
          break;
        }

        ++v112;
        if (v111 == v93)
        {
          goto LABEL_133;
        }
      }

      *&v216 = v72;
      v115 = v114;
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v215 = v117;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v218 = sub_10009BCC8(0, *(v218 + 2) + 1, 1, v218);
      }

      v119 = *(v218 + 2);
      v118 = *(v218 + 3);
      v92 = v119 + 1;
      if (v119 >= v118 >> 1)
      {
        v218 = sub_10009BCC8((v118 > 1), v119 + 1, 1, v218);
      }

      v120 = v218;
      *(v218 + 2) = v92;
      v121 = &v120[16 * v119];
      v122 = v215;
      *(v121 + 4) = v116;
      *(v121 + 5) = v122;
      v72 = v216;
    }

    while (v111 != v93);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

LABEL_133:
  v70 = v211;
  if (*(v218 + 2) != v217 || (v221 = v218, v166 = Collection<>.uniqued()(), , !v166[2]))
  {

    v72 = v209;
    v73 = v210;
    v74 = v212;
    if (v108[2])
    {
      v75 = v108[4];
      v76 = v108[5];

      goto LABEL_89;
    }

    goto LABEL_29;
  }

  v218 = v166[2];

  if (v166[2] > 1uLL)
  {
    v92 = v166[4];
    v111 = v166[5];

    v72 = v209;
    v73 = v210;
    v74 = v212;
    if (v166[2] < 2uLL)
    {
      __break(1u);
      goto LABEL_234;
    }

    v93 = v166[6];
    v166 = v166[7];

    if (v218 >= 3)
    {
      if (qword_100AD0508 == -1)
      {
        goto LABEL_194;
      }

      goto LABEL_236;
    }

    if (v218 == 2)
    {
      if (qword_100AD0510 == -1)
      {
LABEL_194:
        sub_1000F24EC(&unk_100AD5B10);
        v192 = swift_allocObject();
        *(v192 + 16) = xmmword_100940050;
        *(v192 + 56) = &type metadata for String;
        v193 = sub_100031B20();
        *(v192 + 32) = v92;
        *(v192 + 40) = v111;
        *(v192 + 96) = &type metadata for String;
        *(v192 + 104) = v193;
        *(v192 + 64) = v193;
        *(v192 + 72) = v93;
        *(v192 + 80) = v166;
        goto LABEL_158;
      }

LABEL_236:
      swift_once();
      goto LABEL_194;
    }

LABEL_29:

    v75 = 0;
    v76 = 0xE000000000000000;
    goto LABEL_89;
  }

  v214 = v166[2];
  v215 = v166;
  *&v216 = v72;
  if (v93)
  {
    v111 = _swiftEmptyArrayStorage;
    v112 = 0;
    while (1)
    {
      if (v94)
      {
        v167 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v112 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_227;
        }

        v167 = *(v91 + 8 * v112 + 32);
      }

      v168 = v167;
      v72 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      v169 = [v167 subLocality];
      if (v169)
      {
        v170 = v169;
        v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v172;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_10009BCC8(0, *(v111 + 2) + 1, 1, v111);
        }

        v92 = *(v111 + 2);
        v173 = *(v111 + 3);
        if (v92 >= v173 >> 1)
        {
          v111 = sub_10009BCC8((v173 > 1), v92 + 1, 1, v111);
        }

        *(v111 + 2) = v92 + 1;
        v174 = &v111[16 * v92];
        v175 = v213;
        *(v174 + 4) = v171;
        *(v174 + 5) = v175;
        if (v72 == v93)
        {
          goto LABEL_165;
        }

        v112 = v72;
      }

      else
      {

        ++v112;
        if (v72 == v93)
        {
          goto LABEL_165;
        }
      }
    }

LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v111 = _swiftEmptyArrayStorage;
LABEL_165:
  if (*(v111 + 2) == v217)
  {
    v221 = v111;
    v166 = Collection<>.uniqued()();

    v70 = v211;
    if (v166[2] == 1)
    {

      if (v166[2])
      {
        v75 = v166[4];
        v76 = v166[5];

        goto LABEL_87;
      }

      goto LABEL_235;
    }
  }

  if (v93)
  {
    v72 = 0;
    v111 = _swiftEmptyArrayStorage;
LABEL_171:
    v112 = v72;
    while (1)
    {
      if (v94)
      {
        v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v112 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_229;
        }

        v181 = *(v91 + 8 * v112 + 32);
      }

      v182 = v181;
      v72 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      v183 = [v181 locality];
      if (v183)
      {
        v184 = v183;
        v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v186;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_10009BCC8(0, *(v111 + 2) + 1, 1, v111);
        }

        v92 = *(v111 + 2);
        v187 = *(v111 + 3);
        if (v92 >= v187 >> 1)
        {
          v111 = sub_10009BCC8((v187 > 1), v92 + 1, 1, v111);
        }

        *(v111 + 2) = v92 + 1;
        v188 = &v111[16 * v92];
        v189 = v213;
        *(v188 + 4) = v185;
        *(v188 + 5) = v189;
        if (v72 != v93)
        {
          goto LABEL_171;
        }

        goto LABEL_187;
      }

      ++v112;
      if (v72 == v93)
      {
        goto LABEL_187;
      }
    }

LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v111 = _swiftEmptyArrayStorage;
LABEL_187:
  v70 = v211;
  if (*(v111 + 2) != v217 || (v221 = v111, v92 = v216, v190 = Collection<>.uniqued()(), , *(v190 + 16) != 1) || (v221 = v190, v191 = Collection<>.uniqued()(), , !v191[2]))
  {

    if (v93)
    {
      v72 = 0;
      v111 = _swiftEmptyArrayStorage;
LABEL_197:
      v112 = v72;
      while (1)
      {
        if (v94)
        {
          v194 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v112 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_231;
          }

          v194 = *(v91 + 8 * v112 + 32);
        }

        v195 = v194;
        v72 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          break;
        }

        v196 = [v194 subAdministrativeArea];
        if (v196)
        {
          v197 = v196;
          v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v213 = v199;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_10009BCC8(0, *(v111 + 2) + 1, 1, v111);
          }

          v92 = *(v111 + 2);
          v200 = *(v111 + 3);
          if (v92 >= v200 >> 1)
          {
            v111 = sub_10009BCC8((v200 > 1), v92 + 1, 1, v111);
          }

          *(v111 + 2) = v92 + 1;
          v201 = &v111[16 * v92];
          v202 = v213;
          *(v201 + 4) = v198;
          *(v201 + 5) = v202;
          if (v72 != v93)
          {
            goto LABEL_197;
          }

          goto LABEL_213;
        }

        ++v112;
        if (v72 == v93)
        {
          goto LABEL_213;
        }
      }

LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    v111 = _swiftEmptyArrayStorage;
LABEL_213:

    if (*(v111 + 2) == v217)
    {
      v221 = v111;
      v166 = Collection<>.uniqued()();

      v72 = v209;
      v73 = v210;
      v74 = v212;
      v70 = v211;
      if (v166[2] == 1)
      {

        if (!v166[2])
        {
          __break(1u);
          goto LABEL_236;
        }

        v75 = v166[4];
        v76 = v166[5];

        goto LABEL_89;
      }

      v111 = v166;
    }

    else
    {
      v72 = v209;
      v73 = v210;
      v74 = v212;
      v70 = v211;
    }

    v166 = v215;
    if (v214)
    {
      if (v215[2])
      {
        v75 = v215[4];
        v76 = v215[5];

        if (v218 != 1)
        {
          goto LABEL_29;
        }

LABEL_89:
        v123 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v123 = v75 & 0xFFFFFFFFFFFFLL;
        }

        if (v123)
        {
          return v75;
        }

        if (v73)
        {
          v124 = v219;
          (*(v74 + 16))(v72, v70 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v219);
          v125 = 0;
        }

        else
        {
          v125 = 1;
          v124 = v219;
        }

        (*(v74 + 56))(v72, v125, 1, v124);
        v126 = v206;
        sub_1000082B4(v72, v206, &unk_100AEED20);
        v127 = *(v74 + 48);
        if (v127(v126, 1, v124) == 1)
        {
          sub_100004F84(v126, &unk_100AEED20);
        }

        else
        {
          v75 = VisitAssetMetadata.placeName.getter();
          v129 = v128;
          (*(v74 + 8))(v126, v124);
          if (v129)
          {
            goto LABEL_107;
          }
        }

        v130 = v205;
        sub_1000082B4(v72, v205, &unk_100AEED20);
        v131 = v219;
        if (v127(v130, 1, v219) == 1)
        {
          sub_100004F84(v130, &unk_100AEED20);
        }

        else
        {
          v132 = VisitAssetMetadata.mapItemData.getter();
          if (v133 >> 60 != 15)
          {
            v151 = v132;
            v152 = v73;
            v153 = v133;
            sub_1000065A8(0, &qword_100AD5A90);
            v154 = v130;
            v155 = static NSCoding<>.create(from:)();
            v156 = v151;
            v157 = v153;
            v73 = v152;
            v131 = v219;
            sub_10003A5C8(v156, v157);
            (*(v74 + 8))(v154, v131);
            v134 = v204;
            if (v155)
            {
              v158 = [v155 addressRepresentations];

              if (v158)
              {
                v159 = [v158 cityName];

                if (v159)
                {
                  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v129 = v160;

                  goto LABEL_107;
                }
              }
            }

LABEL_103:
            sub_1000082B4(v72, v134, &unk_100AEED20);
            if (v127(v134, 1, v131) == 1)
            {
              sub_100004F84(v134, &unk_100AEED20);
            }

            else
            {
              v135 = v131;
              v75 = VisitAssetMetadata.city.getter();
              v136 = v134;
              v129 = v137;
              (*(v74 + 8))(v136, v135);

              if (v129)
              {
                goto LABEL_107;
              }
            }

            v75 = 0;
            v129 = 0xE000000000000000;
LABEL_107:
            v138 = v207;
            v139 = HIBYTE(v129) & 0xF;
            if ((v129 & 0x2000000000000000) == 0)
            {
              v139 = v75 & 0xFFFFFFFFFFFFLL;
            }

            if (v139)
            {
              goto LABEL_114;
            }

            v140 = v74;
            sub_1000082B4(v72, v207, &unk_100AEED20);
            v141 = v219;
            if (v127(v138, 1, v219) == 1)
            {
              v142 = v138;
            }

            else
            {
              v220 = COERCE_DOUBLE(VisitAssetMetadata.latitude.getter());
              v144 = v143;
              v145 = v140 + 8;
              v146 = *(v140 + 8);
              v212 = v145;
              v146(v138, v141);
              if (v144)
              {
                goto LABEL_114;
              }

              v161 = v203[0];
              sub_1000082B4(v72, v203[0], &unk_100AEED20);
              if (v127(v161, 1, v141) != 1)
              {
                v162 = v73;
                v163 = VisitAssetMetadata.longitude.getter();
                v165 = v164;
                v146(v161, v141);
                if ((v165 & 1) == 0)
                {
                  v176 = v220;

                  v75 = sub_10032BA5C(v176, *&v163);
                  v129 = v177;
                }

                v73 = v162;
                goto LABEL_114;
              }

              v142 = v161;
            }

            sub_100004F84(v142, &unk_100AEED20);
LABEL_114:
            if (v73 >= 2)
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v147._countAndFlagsBits = 0;
              v147._object = 0xE000000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v147);
              v148._countAndFlagsBits = v75;
              v148._object = v129;
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v148);

              v149._countAndFlagsBits = 0x726F6D20646E6120;
              v149._object = 0xE900000000000065;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v149);
              String.LocalizationValue.init(stringInterpolation:)();
              static Locale.current.getter();
              v75 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
            }

            sub_100004F84(v72, &unk_100AEED20);
            return v75;
          }

          (*(v74 + 8))(v130, v131);
        }

        v134 = v204;
        goto LABEL_103;
      }

LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    goto LABEL_29;
  }

  if (v191[2])
  {
    v75 = v191[4];
    v76 = v191[5];

    goto LABEL_87;
  }

  __break(1u);
  return result;
}

uint64_t sub_100079F8C(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v13 = (v8 - 8);
    v14 = _swiftEmptyArrayStorage;
    v35 = v10;
    v36 = v8;
    v10(v6, v11, v2);
    while (1)
    {
      v16 = VisitAssetMetadata.latitude.getter();
      if (v17)
      {
        break;
      }

      v18 = v16;
      v19 = VisitAssetMetadata.longitude.getter();
      v15 = *v13;
      if (v20)
      {
        goto LABEL_4;
      }

      v37 = v19;
      v15(v6, v2);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10007AF8C(0, *(v14 + 2) + 1, 1, v14);
        v14 = result;
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      v23 = v37;
      if (v22 >= v21 >> 1)
      {
        result = sub_10007AF8C((v21 > 1), v22 + 1, 1, v14);
        v14 = result;
        v23 = v37;
      }

      *(v14 + 2) = v22 + 1;
      v24 = &v14[16 * v22];
      *(v24 + 4) = v18;
      *(v24 + 5) = v23;
      v9 = v35;
LABEL_5:
      v11 += v12;
      if (!--v7)
      {
        goto LABEL_15;
      }

      v9(v6, v11, v2);
    }

    v15 = *v13;
LABEL_4:
    result = (v15)(v6, v2);
    goto LABEL_5;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_15:
  v25 = *(v14 + 2);
  v26 = v25 != 0;
  v27 = v25 - v26;
  if (v25 >= v26)
  {
    v28 = v25 - v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 + 1;
  v30 = &v14[16 * v26 + 40];
  while (1)
  {
    v31 = v27;
    if (!v27)
    {
LABEL_23:
      v33 = v31 == 0;

      return v33;
    }

    if (!--v29)
    {
      break;
    }

    if (*(v30 - 1) == *(v14 + 4))
    {
      v32 = *v30;
      v30 += 2;
      --v27;
      if (v32 == *(v14 + 5))
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_10007A1D8()
{
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (!v11)
  {
    return;
  }

  v62 = v10;
  v63 = v8;
  v64 = v7;
  v65 = v0;
  v59 = v5;
  v60 = v3;
  v61 = v2;
  v66 = v11;
  v12 = [v66 visibleCells];
  sub_1000065A8(0, &qword_100ADE560);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v68 = 0x80000001008E05A0;
  v67 = xmmword_100940080;
  v69 = v13;
  do
  {
    if (v16)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v13 + 8 * v15 + 32);
    }

    v19 = v20;
    type metadata accessor for MosaicCell();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
      *(v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = 0;
      v24 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
      v25 = *(v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *(v22 + v24);
      }

      else
      {
        v26 = 0;
      }

      *(v22 + v24) = 0;

      v27 = *(v22 + v24);
      if (v27)
      {
        v28 = v14;
        v29 = v16;
        v30 = *(v23 + 8);
        v31 = objc_opt_self();
        v32 = v27;
        v33 = [v31 mainBundle];
        v71._object = v68;
        v34._countAndFlagsBits = 25637;
        v34._object = 0xE200000000000000;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v71._countAndFlagsBits = 0xD000000000000018;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v71);

        sub_1000F24EC(&unk_100AD5B10);
        v36 = swift_allocObject();
        *(v36 + 16) = v67;
        *(v36 + 56) = &type metadata for Int;
        *(v36 + 64) = &protocol witness table for Int;
        *(v36 + 32) = v30;
        static String.localizedStringWithFormat(_:_:)();

        v37 = *&v32[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel];
        if (v37)
        {
          v17 = v37;
          v18 = String._bridgeToObjectiveC()();

          [v17 setText:v18];
        }

        else
        {
        }

        v16 = v29;

        v19 = v32;
        v14 = v28;
        v13 = v69;
      }
    }

    ++v15;
  }

  while (v14 != v15);
LABEL_20:

  v3 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v1 = v65;
  v38 = *(v65 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (v38)
  {
    v39 = *(v38 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (!(v39 >> 62))
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_50:
    v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
    v41 = v66;
    if (*(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid))
    {
      if (v40 <= 5)
      {
        goto LABEL_41;
      }

LABEL_31:
      v42 = v62;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v63 + 8))(v42, v64);
      v44 = [v66 cellForItemAtIndexPath:isa];

      if (!v44)
      {
LABEL_47:

        return;
      }

      type metadata accessor for MosaicCell();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {

        return;
      }

      v46 = v1;
      v47 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded);
      v48 = v45 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
      *(v45 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = (v47 & 1) == 0;
      sub_100071FBC();
      v50 = v59;
      v49 = v60;
      v51 = v61;
      (*(v60 + 104))(v59, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v61);
      v52 = JournalFeatureFlags.isEnabled.getter();
      (*(v49 + 8))(v50, v51);
      if (v52)
      {
        v53 = 5;
      }

      else
      {
        v53 = 4;
      }

      v54 = *(v46 + v3);
      if (v54)
      {
        v55 = *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
        if (v55 >> 62)
        {
          v58 = _CocoaArrayWrapper.endIndex.getter();
          v57 = v58 - v53;
          if (!__OFSUB__(v58, v53))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v57 = v56 - v53;
          if (!__OFSUB__(v56, v53))
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v57 = -v53;
        if (!__OFSUB__(0, v53))
        {
LABEL_46:
          *(v48 + 8) = v57;
          sub_100071FBC();

          goto LABEL_47;
        }
      }

      __break(1u);
      return;
    }

LABEL_28:
    if (qword_100AD0A28 != -1)
    {
      swift_once();
      v41 = v66;
    }

    if (qword_100B30F70 >= v40)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v41 = v66;
  if ((*(v65 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) & 1) == 0)
  {
    v40 = 0;
    goto LABEL_28;
  }

LABEL_41:
}

uint64_t sub_10007A868()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - v3;
  v5 = type metadata accessor for PaperMarkup();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v10)
  {
    return result;
  }

  v11 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView);
  swift_retain_n();
  v12 = v11;
  sub_10007B090(v10, 0);
  sub_10022D000();

  if (sub_10029EF80())
  {
    sub_1002D2854();
    v13 = *&v12[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
    if (v13)
    {
      [v13 setAccessibilityElementsHidden:1];
    }

    v14 = *&v12[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
    if (v14)
    {
      v15 = v14;
      [v15 setAccessibilityElementsHidden:1];
    }
  }

  else
  {

    sub_1002B1FB8();
  }

  [v12 setNeedsLayout];

  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (sub_10029EF80())
  {
    if (sub_10029EF80())
    {
      v60 = v9;
      v61 = v6;
      v17 = *(v10 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
      v62 = v5;
      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        v19 = 0;
        v20 = (v17 & 0xC000000000000001);
        while (1)
        {
          if (v20)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v21 = *(v17 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          type metadata accessor for DrawingAsset();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v19;
          if (v23 == v18)
          {
            goto LABEL_23;
          }
        }

        sub_1001B845C(v4);

        v42 = v61;
        v41 = v62;
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        if ((*(v61 + 48))(v4, 1, v62) == 1)
        {
          goto LABEL_25;
        }

        v43 = v60;
        (*(v42 + 32))(v60, v4, v41);
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView) setHidden:0];
        v44 = [v1 window];
        if (v44)
        {
          v45 = v44;
          [v44 bounds];
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v53 = v52;
        }

        else
        {
          v47 = 0.0;
          v51 = 768.0;
          v49 = 0.0;
          v53 = 768.0;
        }

        v63.origin.x = v47;
        v63.origin.y = v49;
        v63.size.width = v51;
        v63.size.height = v53;
        v54 = CGRectGetHeight(v63) * 0.6;
        PaperMarkup.contentsRenderFrame.getter();
        Height = CGRectGetHeight(v64);
        PaperMarkup.contentsRenderFrame.getter();
        if (v54 >= Height + v56)
        {
          v57 = Height + v56;
        }

        else
        {
          v57 = v54;
        }

        v58 = sub_100082148();
        [v58 setConstant:v57];

        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) setActive:1];
        (*(v42 + 8))(v43, v41);
        goto LABEL_32;
      }

LABEL_23:

      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      v6 = v61;
      v5 = v62;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_25:
    sub_100004F84(v4, &unk_100ADC5E0);
  }

  v24 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView);
  if (sub_10005AAB0(4))
  {
    v25 = 0;
  }

  else
  {
    v26 = *(v10 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v27 == 0;
  }

  [v24 p:v25 ivar:?lyt[418]];

  v28 = sub_100082148();
  [v28 setActive:0];

LABEL_32:
  if ((*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight + 8) & 1) == 0)
  {
    v29 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight);
    v30 = sub_100082148();
    [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) constant];
    if (v29 < v31)
    {
      v31 = v29;
    }

    [v30 setConstant:v31];
  }

  v32 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle);
  *&v32[OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry] = v10;

  sub_1000821F0();

  if (sub_10005AAB0(2))
  {
    v33 = *(v10 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) ^ 1;
  }

  else
  {
    v33 = 1;
  }

  [v32 p:v33 & 1 ivar:?lyt[418]];
  sub_100601D08();
  v20 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView);
  v34 = [v20 arrangedSubviews];
  sub_1000065A8(0, &qword_100ADC670);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_64:
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 0;
  do
  {
    v37 = v36;
    if (v35 == v36)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v19 + 16))
      {
        goto LABEL_61;
      }

      v38 = *(v1 + 8 * v36 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v40 = [v38 isHidden];

    v36 = v37 + 1;
  }

  while ((v40 & 1) != 0);

  [v20 setHidden:v35 == v37];
}

char *sub_10007AF8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_10007B090(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v66 = &v55 - v7;
  v8 = type metadata accessor for MergeableEntryAttributes();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v13 - 8);
  v63 = &v55 - v14;
  v15 = sub_1000F24EC(&qword_100AE4C80);
  v64 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v55 - v18;
  v20 = type metadata accessor for JournalFeatureFlags();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v23, enum case for JournalFeatureFlags.enhancedSync(_:), v20);
  v24 = JournalFeatureFlags.isEnabled.getter();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  v62 = a1;
  v57 = a2;
  v58 = v3;
  v25 = [v3 textStorage];
  sub_1000F24EC(&qword_100ADC5F8);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v19;
    v29 = v62;
    v30 = v63;
    v55 = v25;
    v56 = v28;
    if (v62)
    {
      v31 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
      swift_beginAccess();
      sub_1000082B4(v29 + v31, v12, &qword_100AD6260);
      v33 = v60;
      v32 = v61;
      if (!(*(v60 + 48))(v12, 1, v61))
      {
        v35 = v59;
        (*(v33 + 16))(v59, v12, v32);
        sub_100004F84(v12, &qword_100AD6260);
        MergeableEntryAttributes.text.getter();
        (*(v33 + 8))(v35, v32);
        v34 = v64;
        (*(v64 + 56))(v30, 0, 1, v15);
        (*(v34 + 32))(v28, v30, v15);
LABEL_10:
        v36 = *((swift_isaMask & *v27) + 0x68);
        swift_beginAccess();
        v37 = *(v34 + 16);
        v38 = v65;
        v37(v65, &v27[v36], v15);
        v64 = CRAttributedString.count.getter();
        v39 = *(v34 + 8);
        v39(v38, v15);
        swift_beginAccess();
        (*(v34 + 24))(&v27[v36], v56, v15);
        swift_endAccess();
        v37(v38, &v27[v36], v15);
        v40 = *&v27[*((swift_isaMask & *v27) + 0x80)];
        sub_10008D118(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
        v41 = v40;
        v42 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();
        v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v42];
        [v43 fixAttributesInRange:{0, objc_msgSend(v43, "length")}];

        v39(v38, v15);
        v44 = *((swift_isaMask & *v27) + 0x60);
        v45 = *&v27[v44];
        *&v27[v44] = v43;

        v46 = v56;
        v47 = CRAttributedString.count.getter();
        if (__OFSUB__(v47, v64))
        {
          __break(1u);
          return;
        }

        [v27 edited:3 range:0 changeInLength:{v64, v47 - v64}];

        v39(v46, v15);
        goto LABEL_12;
      }

      sub_100004F84(v12, &qword_100AD6260);
    }

    v34 = v64;
    (*(v64 + 56))(v30, 1, 1, v15);
    type metadata accessor for MergeableTextAttributeScope();
    sub_10008D118(&unk_100ADC700, &type metadata accessor for MergeableTextAttributeScope);
    CRAttributedString.init()();
    if ((*(v34 + 48))(v30, 1, v15) != 1)
    {
      sub_100004F84(v30, &unk_100AEBE80);
    }

    goto LABEL_10;
  }

LABEL_12:
  LOBYTE(a2) = v57;
  a1 = v62;
  v3 = v58;
LABEL_13:
  v48 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  *&v3[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry] = a1;

  if (a2)
  {
    sub_1002B0690();
    sub_1007BBA50();
  }

  v49 = *&v3[v48];
  if (v49)
  {
    v50 = type metadata accessor for TaskPriority();
    v51 = v66;
    (*(*(v50 - 8) + 56))(v66, 1, 1, v50);
    type metadata accessor for MainActor();
    swift_retain_n();
    v52 = v3;
    v53 = static MainActor.shared.getter();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = &protocol witness table for MainActor;
    v54[4] = v52;
    v54[5] = v49;
    sub_1003E9628(0, 0, v51, &unk_10094C5F0, v54);
  }
}

unint64_t sub_10007B970()
{
  result = qword_100AD6BC8;
  if (!qword_100AD6BC8)
  {
    sub_1000F2A18(&qword_100AD60A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6BC8);
  }

  return result;
}

uint64_t sub_10007B9EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 - 4 >= 3)
    {
      return 4;
    }

LABEL_9:
    if (!*(a1 + 16) || (sub_100079F8C(a1) & 1) != 0)
    {
      return 2;
    }

    return 4;
  }

  if (a2 >= 2u)
  {
    if (a2 != 2)
    {
      return 1;
    }

    goto LABEL_9;
  }

  return *(a1 + 16) != 1 && (sub_100079F8C(a1) & 1) == 0;
}

id sub_10007BA80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v5 = *(v2 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  v16 = sub_1000065A8(0, &qword_100AE4890);
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  v7 = objc_opt_self();

  v8 = NSFontAttributeName;
  v9 = [v7 preferredFontForTextStyle:{UIFontTextStyleCaption2, a2, v16}];
  v10 = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 40) = v9;
  *(inited + 64) = v10;
  *(inited + 72) = NSInlinePresentationIntentAttributeName;
  type metadata accessor for InlinePresentationIntent(0);
  *(inited + 104) = v11;
  *(inited + 80) = 2;
  v12 = NSInlinePresentationIntentAttributeName;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210);
  swift_arrayDestroy();
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v13 = NSAttributedString.init(_:)();
  [v5 setAttributedText:v13];

  [v5 setNumberOfLines:1];
  return [v5 setFrame:{sub_10021E364(8.0, 12.0, 12.0, 12.0)}];
}

uint64_t sub_10007BD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007BD78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10007BE4C()
{
  v1 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView);
  [v2 frame];
  v4 = CGRectGetMinX(v13) + -4.0;
  [v2 frame];
  v5 = CGRectGetMinY(v14) + -8.0;
  [v2 frame];
  v6 = CGRectGetWidth(v15) + 4.0 + 4.0;
  [v2 frame];
  [v3 setFrame:{v4, v5, v6, CGRectGetHeight(v16) + 8.0 + 8.0}];

  [*(v0 + v1) setMaskView:0];
  v7 = [*(v0 + v1) layer];
  [v7 setCornerRadius:4.0];

  v8 = [*(v0 + v1) layer];
  LODWORD(v9) = 1065017672;
  [v8 setOpacity:v9];

  v10 = *(v0 + v1);

  return [v10 setClipsToBounds:1];
}

uint64_t sub_10007BFCC()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v3 = &v40 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v8 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = &v40 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset);
  if (v19)
  {
    v43 = v6;
    v45 = v16;
    v46 = result;
    v44 = v19;
    v47 = v18;
    Date.init()();
    UUID.init()();
    v20 = v5[2];
    v48 = v10;
    v21 = v10;
    v22 = v20;
    v20(v3, v21, v4);
    v42 = v5;
    v23 = v5[7];
    v24 = v4;
    v23(v3, 0, 1, v4);
    v25 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
    swift_beginAccess();
    sub_100075184(v3, v0 + v25);
    swift_endAccess();
    v26 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v28 = &qword_100B2F628;
LABEL_11:
        v40 = *v28;
        v41 = *(v0 + v26);
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22(v8, v48, v24);
        v31 = v45;
        v30 = v46;
        (*(v45 + 16))(v14, v47, v46);
        v32 = v42;
        v33 = (*(v42 + 80) + 24) & ~*(v42 + 80);
        v34 = (v43 + *(v31 + 80) + v33) & ~*(v31 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = v29;
        (v32[4])(v35 + v33, v8, v24);
        (*(v31 + 32))(v35 + v34, v14, v30);
        v36 = objc_opt_self();
        v37 = v40;

        v38 = [v36 currentTraitCollection];
        v39 = v44;
        sub_100076220(v41, 0, 1, v37, v38, sub_10005BCA4, v35);

        (v32[1])(v48, v24);
        (*(v31 + 8))(v47, v30);
      }
    }

    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v28 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10007C588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007C5C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10007C744()
{
  v1 = v0;
  v2 = type metadata accessor for AssetCatalogColor();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE2A40);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SRGBColor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MergeableColor();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = SRGBColor.adaptivePlatformColor.getter();
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v17, v14);
    sub_100021CEC(v17, v9, &qword_100AE2A40);
    sub_10052D914(v9, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100004F84(v9, &qword_100AE2A40);
      sub_100004F84(v7, &qword_100AE2A40);
      return 0;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, v7, v30);
      AssetCatalogColor.rawValue.getter();
      v25 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() colorNamed:v25];

      (*(v23 + 8))(v22, v24);
      sub_100004F84(v9, &qword_100AE2A40);
    }

    return v19;
  }

  if (v18 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = *(sub_1000F24EC(&qword_100AE2A58) + 48);
    v21 = type metadata accessor for AnyCRValue();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007CBF0()
{
  v0 = sub_1000F24EC(&qword_100AE2498);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_1000F24EC(&qword_100AE2488);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_1000F24EC(&qword_100AE2480);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_1000F24EC(&qword_100AE2490);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_1000F24EC(&qword_100ADC6B8);
  sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24E8, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
  CRAttributedString.Attributes.subscript.getter();

  v12 = type metadata accessor for MergeableTextLists();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_100004F84(v11, &qword_100AE2490);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE2500, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    CRAttributedString.Attributes.subscript.getter();

    v15 = sub_1000F24EC(&qword_100AE2508);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_100004F84(v8, &qword_100AE2480);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_1003D4E20(&qword_100AE24F0, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
      CRAttributedString.Attributes.subscript.getter();

      v17 = sub_1000F24EC(&qword_100AE24F8);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_100004F84(v5, &qword_100AE2488);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_1003D4E20(&qword_100AE24E0, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        CRAttributedString.Attributes.subscript.getter();

        v19 = type metadata accessor for MergeableFollowUpPromptAttachment();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_100004F84(v2, &qword_100AE2498);
      }
    }
  }

  return v13;
}

uint64_t sub_10007D384()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_10049B38C;
  }

  else
  {
    v8 = sub_10007DF9C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10007D540(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC7Journal5Asset_id, v10);
  v37 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v9);

    v14 = type metadata accessor for MultiPinMapAssetMetadata();
    v15 = 1;
    if ((*(*(v14 - 8) + 48))(v9, 1, v14))
    {
      v16 = 0;
    }

    else
    {
      v16 = MultiPinMapAssetMetadata.revision.getter();
      v15 = v17;
    }

    sub_100004F84(v9, &unk_100AD5B30);
  }

  else
  {
    v16 = 0;
    v15 = 1;
  }

  v40 = 0x2D626D756874;
  v41 = 0xE600000000000000;
  sub_10007DC68(&qword_100AE19B0, &type metadata accessor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v39._countAndFlagsBits = a1;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 45;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = 0x656772614C78;
  v23 = 0xE500000000000000;
  v24 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v24 = 0x657263536C6C7566;
    v23 = 0xEA00000000006E65;
  }

  v25 = 0xE600000000000000;
  v26 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v26 = 0x61546D756964656DLL;
    v25 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEA00000000006564;
  v28 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v28 = 0x656772616CLL;
    v27 = 0xE500000000000000;
  }

  if (a2)
  {
    v29 = 0xE600000000000000;
  }

  else
  {
    v22 = 0x6154656772614C78;
    v29 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v27 = v29;
  }

  else
  {
    v22 = v28;
  }

  if (a2 <= 3u)
  {
    v30 = v22;
  }

  else
  {
    v30 = v24;
  }

  if (a2 <= 3u)
  {
    v31 = v27;
  }

  else
  {
    v31 = v23;
  }

  v32 = v31;
  String.append(_:)(*&v30);

  if ((v15 & 1) == 0)
  {
    v39._countAndFlagsBits = 45;
    v39._object = 0xE100000000000000;
    v38 = v16;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    String.append(_:)(v39);
  }

  v39._countAndFlagsBits = 45;
  v39._object = 0xE100000000000000;
  v38 = v37;
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  String.append(_:)(v39);

  v35 = v40;
  (*(v11 + 8))(v13, v10);
  return v35;
}

uint64_t sub_10007D9D0()
{
  v1 = sub_1000F24EC(&qword_100AE24F8);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for MergeableTextAlignment();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_1000082B4(v0, v3, &qword_100AE24F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100004F84(v3, &qword_100AE24F8);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007DC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007DCB0()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AssetContentTypeOperation.scheduleOperation - running operation", v3, 2u);
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v5 = type metadata accessor for AssetContentTypeOperation();
  v6 = objc_allocWithZone(v5);
  *&v6[qword_100AE52E8] = v4;
  v6[qword_100AE52F0] = 0;
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(v0 + 1, "init");
  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  [qword_100B2FC18 addOperation:v8];

  qword_100AE52E0 = 0;

  super_class = v0->super_class;

  return super_class();
}

char *sub_10007DE7C(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a4;
  v12 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation());
  sub_10007F460(v14);
  sub_100021CEC(v14, v15 + qword_100B2FD78, &unk_100AD5B30);
  v16 = v6;

  v17 = a6;
  return sub_1000771E8(v16, a1, a2, a3 & 1, v20, a5, v17);
}

uint64_t sub_10007DF9C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_10007E1CC();

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007E0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10002432C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_100004F84(v13, &qword_100AD13D0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation()
{
  result = qword_100AEC1C8;
  if (!qword_100AEC1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007E1CC()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFDF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  sub_10000617C(v8, qword_100AE52C8);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "AssetContentTypeOperation", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_10007E480()
{
  sub_10007E61C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10007E510()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v4 = *(v3 + 8);

  return v4();
}

void sub_10007E61C()
{
  if (!qword_100AEC1D8)
  {
    type metadata accessor for MultiPinMapAssetMetadata();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEC1D8);
    }
  }
}

uint64_t sub_10007E674()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure();
    swift_getWitnessTable();
    v4 = swift_allocError();
    swift_willThrow();
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    *v5 = v4;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10007F214(v5);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = v0[11];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    (*(v2 + 32))(v8, v1, v3);
    (*(v2 + 16))(v9, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_10007F214(v9);
    (*(v10 + 8))(v9, v11);
    (*(v2 + 8))(v8, v3);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007E88C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10051CC10;
  }

  else
  {
    v2 = sub_10007E674;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10007E9A0(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for MergeableEntryAttributes();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v52 = &v41 - v7;
  v45 = sub_1000F24EC(&qword_100AE4C80);
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v41 - v9;
  v61 = type metadata accessor for JournalFeatureFlags();
  __chkstk_darwin(v61);
  v60 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v51 = OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable;
  v62 = OBJC_IVAR____TtC7Journal15AdminComposerVC_model;
  v15 = (v12 + 63) >> 6;
  v58 = "truncationFadeLength";
  v59 = OBJC_IVAR____TtC7Journal15AdminComposerVC_textView;
  v57 = "ocationCollectionViewCell.";
  v56 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v54 = (v10 + 8);
  v55 = (v10 + 104);
  v50 = (v4 + 48);
  v43 = (v4 + 16);
  v42 = (v4 + 8);
  v41 = (v8 + 8);

  v16 = 0;
  v17 = 0;
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a1 + 48) + (v19 | (v16 << 6)));
    if (v20 > 0xC)
    {
LABEL_15:
      if (v20)
      {
        [*&v2[v51] reloadData];
      }

      else
      {
LABEL_18:
        v49 = v17;
        v48 = *&v2[v59];
        v47 = v2;
        v23 = *&v2[v62];
        v24 = [objc_opt_self() currentTraitCollection];
        v25 = type metadata accessor for CustomAttributeProviderConcrete();
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        Logger.init(subsystem:category:)();
        v27 = v26 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
        *(v27 + 4) = 0;
        *v27 = 2;
        v63[3] = v25;
        v63[4] = sub_10078A294(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
        v63[0] = v26;
        v28 = v60;
        v29 = v61;
        (*v55)(v60, v56, v61);
        v30 = JournalFeatureFlags.isEnabled.getter();
        (*v54)(v28, v29);
        if (v30)
        {
          v31 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
          swift_beginAccess();
          v32 = v23 + v31;
          v33 = v52;
          sub_10007BD08(v32, v52);
          v34 = v53;
          if ((*v50)(v33, 1, v53))
          {

            sub_100416458(v33);
            v35 = 0;
          }

          else
          {
            v36 = v46;
            (*v43)(v46, v33, v34);
            sub_100416458(v33);
            v37 = v44;
            MergeableEntryAttributes.text.getter();
            (*v42)(v36, v34);
            sub_10078A294(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
            v38 = v45;
            v35 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();

            (*v41)(v37, v38);
          }
        }

        else
        {

          v35 = *(v23 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
        }

        v2 = v47;
        sub_10000BA7C(v63);
        [v48 setAttributedText:v35];

        v17 = v49;
      }
    }

    else if (((1 << v20) & 0x15FC) == 0)
    {
      if (v20 != 9)
      {
        if (v20 == 11)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v21 = [v2 navigationController];
      if (v21)
      {
        v22 = v21;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(a1 + 56 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v39 = *&v2[OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton];
  if (v39)
  {
    v40 = v39;
    NSManagedObjectContext.performAndWait<A>(_:)();
    [v40 setEnabled:LOBYTE(v63[0])];

    sub_1007886A0();
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_10007F0C8()
{
  result = type metadata accessor for AssetType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OSSignposter();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10007F214(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 willChangeValueForKey:v4];

  v5 = *&v2[qword_100AE7BA8];
  type metadata accessor for OperationBase.Locked();
  sub_1000F2A18(&qword_100AD5BC0);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_10008DB9C(v5 + v6, &v16);
  os_unfair_lock_unlock((v5 + v7));
  v8 = v16;
  v9 = String._bridgeToObjectiveC()();
  [v2 didChangeValueForKey:v9];

  if (!Array.endIndex.getter())
  {
  }

  v10 = 0;
  for (i = v8 + 40; ; i += 16)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    result = Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_8;
    }

    v15 = *(i - 8);

    v15(a1);

    ++v10;
    if (v14 == Array.endIndex.getter())
    {
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10007F460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD38D0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD38D8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&unk_100AD5B30);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100AD38D0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000768B4(a1);
  }

  else
  {
    v17 = type metadata accessor for MultiPinMapAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10007F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

void sub_10007F82C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v127 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v124 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_10000BA20(*(a1 + 56) + 32 * v26, &v129);
      *&v131 = v27;
      sub_10002432C(&v129, (&v131 + 8));
      v28 = v27;
LABEL_17:
      v134 = v131;
      v135 = v132;
      v136 = v133;
      v29 = v131;
      if (!v131)
      {

        if (*(*&v10 + 16))
        {
          v102 = sub_100051964(NSForegroundColorAttributeName);
          v104 = a9;
          v103 = a3;
          v105 = a2;
          if (v106)
          {
            sub_10000BA20(*(*&v10 + 56) + 32 * v102, &v134);
            sub_1000261D4(&v134);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v109 = sub_100051964(NSFontAttributeName);
            if (v110)
            {
              sub_10000BA20(*(*&v10 + 56) + 32 * v109, &v134);
              sub_1000261D4(&v134);
LABEL_92:
              sub_100080694(&v134);
              sub_1000261D4(&v134);
              type metadata accessor for Key(0);
              sub_1000806F8();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              [v104 setAttributes:isa range:{v105, v103}];

              return;
            }

LABEL_89:
            v134 = 0u;
            v135 = 0u;
            sub_1000261D4(&v134);
            v111 = a8;
            *(&v135 + 1) = sub_1000065A8(0, &qword_100AD2A78);
            if (!a8)
            {
              v111 = a6;
            }

            *&v134 = v111;
            sub_10002432C(&v134, &v131);
            v112 = v111;
            v113 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v129 = v113;
            sub_100048100(&v131, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
            v127 = *&v129;
            goto LABEL_92;
          }

          v10 = v127;
        }

        else
        {
          v104 = a9;
          v103 = a3;
          v105 = a2;
        }

        v134 = 0u;
        v135 = 0u;
        sub_1000261D4(&v134);
        *(&v135 + 1) = sub_1000065A8(0, &qword_100AD4C70);
        *&v134 = a7;
        sub_10002432C(&v134, &v131);
        v107 = a7;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v10;
        sub_100048100(&v131, NSForegroundColorAttributeName, v108);
        v10 = *&v129;
        v127 = *&v129;
        if (!*(v129 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_10002432C((&v134 + 8), &v131);
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
      if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
      {

        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_10000BA20(&v131, &v129);
      v36 = sub_1000065A8(0, &qword_100AD2A78);
      if (swift_dynamicCast())
      {
        v122 = v128[0];
        v37 = [v122 fontDescriptor];
        v38 = p_ivar_lyt;
        v39 = [v37 p_ivar_lyt[398]];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, v38[398]), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v122;
        }

        else
        {
          v45 = v122;

          v44 = a6;
        }

        v130 = v36;
        *&v129 = v44;
        sub_10002432C(&v129, v128);
        v69 = v44;
        v70 = v127;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v70;
        v73 = sub_100051964(v29);
        v74 = *(*&v70 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_94;
        }

        v77 = v72;
        if (*(*&v70 + 24) < v76)
        {
          sub_10008065C(v76, v71);
          v78 = sub_100051964(v29);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_100;
          }

          v73 = v78;
          v10 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v80 = (*(*&v10 + 56) + 32 * v73);
          sub_10000BA7C(v80);
          sub_10002432C(v128, v80);

          sub_10000BA7C(&v131);
LABEL_70:
          v127 = v10;
          goto LABEL_78;
        }

        if (v71)
        {
          v10 = v126;
          if (v72)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_100821670();
          v10 = v126;
          if (v77)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v73 >> 6) + 64) |= 1 << v73;
        *(*(*&v10 + 48) + 8 * v73) = v29;
        sub_10002432C(v128, (*(*&v10 + 56) + 32 * v73));

        sub_10000BA7C(&v131);
        v93 = *(*&v10 + 16);
        v65 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v94;
        goto LABEL_70;
      }

LABEL_26:
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
      if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
      {
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
          if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
          {
          }

          else
          {
            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_10000BA20(&v131, &v129);
          sub_1000065A8(0, &qword_100ADFF70);
          if (swift_dynamicCast())
          {
            v17 = v128[0];
            v18 = sub_1000804CC();
            [v18 setParagraphSpacingBefore:a4];
            sub_100051308();
            v130 = sub_1000065A8(0, &qword_100AD2A80);
            *&v129 = v18;
            sub_10002432C(&v129, v128);
            v19 = v18;
            v20 = v127;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v20;
            sub_100048100(v128, NSParagraphStyleAttributeName, v21);

            sub_10000BA7C(&v131);
            v10 = v126;
            goto LABEL_6;
          }

LABEL_43:
          sub_10000BA20(&v131, &v129);
          v59 = v127;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *&v59;
          v61 = sub_100051964(v29);
          v63 = *(*&v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_95;
          }

          v67 = v62;
          if (*(*&v59 + 24) >= v66)
          {
            if ((v60 & 1) == 0)
            {
              v95 = v61;
              sub_100821670();
              v61 = v95;
              v10 = *v128;
              if (v67)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_10008065C(v66, v60);
            v61 = sub_100051964(v29);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v128;
          if (v67)
          {
LABEL_59:
            v81 = (*(*&v10 + 56) + 32 * v61);
            sub_10000BA7C(v81);
            sub_10002432C(&v129, v81);

            sub_10000BA7C(&v131);
LABEL_6:
            v127 = v10;
            v11 = v124;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(*&v10 + 48) + 8 * v61) = v29;
          sub_10002432C(&v129, (*(*&v10 + 56) + 32 * v61));
          sub_10000BA7C(&v131);
          v96 = *(*&v10 + 16);
          v65 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v65)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v97;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_10000BA20(&v131, &v129);
    v51 = sub_1000065A8(0, &qword_100AD4C70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v128[0];
    *&v129 = 0;
    v128[0] = 0;
    v125 = 0;
    v126 = 0.0;
    [v52 getRed:&v129 green:v128 blue:&v126 alpha:&v125];
    v53 = *&v129;
    if (*&v129 > 0.001 || (v53 = *v128, *v128 > 0.001) || (v53 = v126, v126 > 0.001))
    {
      *&v129 = 0;
      v128[0] = 0;
      v125 = 0;
      v126 = 0.0;
      [v52 getRed:&v129 green:v128 blue:&v126 alpha:{&v125, v53}];
      if (*&v129 < 0.99 || *v128 < 0.99 || v126 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v130 = v51;
    *&v129 = a7;
    sub_10002432C(&v129, v128);
    v82 = a7;
    v83 = v127;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v83;
    v85 = sub_100051964(NSForegroundColorAttributeName);
    v87 = *(*&v83 + 16);
    v88 = (v86 & 1) == 0;
    v65 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v65)
    {
      goto LABEL_98;
    }

    v90 = v86;
    if (*(*&v83 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v98 = v85;
        sub_100821670();
        v85 = v98;
        v10 = v126;
        if (v90)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v126;
      if (v90)
      {
LABEL_66:
        v92 = (*(*&v10 + 56) + 32 * v85);
        sub_10000BA7C(v92);
        sub_10002432C(v128, v92);

        sub_10000BA7C(&v131);
LABEL_77:
        v127 = v10;
LABEL_78:
        v11 = v124;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v133 = 0;
            v16 = v24;
            v131 = 0u;
            v132 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

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
        __break(1u);
LABEL_99:
        __break(1u);
      }

LABEL_75:
      *(*&v10 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(*&v10 + 48) + 8 * v85) = NSForegroundColorAttributeName;
      sub_10002432C(v128, (*(*&v10 + 56) + 32 * v85));
      v99 = NSForegroundColorAttributeName;

      sub_10000BA7C(&v131);
      v100 = *(*&v10 + 16);
      v65 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v65)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v101;
      goto LABEL_77;
    }

    break;
  }

  sub_10008065C(v89, v84);
  v85 = sub_100051964(NSForegroundColorAttributeName);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000804CC()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_10012CAB8();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

unint64_t sub_1000806F8()
{
  result = qword_100ADC650;
  if (!qword_100ADC650)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC650);
  }

  return result;
}

void sub_100080784()
{
  v1 = v0;
  v2 = [v0 attributedText];
  if (!v2)
  {
    return;
  }

  v125 = v2;
  v3 = [v0 textLayoutManager];
  if (!v3)
  {
    v8 = v125;
    goto LABEL_6;
  }

  v126 = v3;
  [v0 frame];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v138.origin.x = CGRectZero.origin.x;
  v138.origin.y = y;
  v138.size.width = width;
  v138.size.height = height;
  if (CGRectEqualToRect(v137, v138))
  {

    v8 = v126;
LABEL_6:

    return;
  }

  v9 = [v0 textLayoutManager];
  if (!v9)
  {
    v10 = v125;
    v35 = v126;
LABEL_25:

    return;
  }

  v10 = v9;
  v11 = [v126 textViewportLayoutController];
  v12 = [v11 viewportRange];

  if (!v12)
  {

    v35 = v125;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v10 documentRange];
  v15 = [v14 location];

  v16 = [v10 offsetFromLocation:v15 toLocation:{objc_msgSend(v13, "location")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = [v10 documentRange];
  v18 = [v17 location];

  v19 = [v10 offsetFromLocation:v18 toLocation:{objc_msgSend(v13, "endLocation")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (__OFSUB__(v19, v16))
  {
    __break(1u);
    goto LABEL_91;
  }

  v134 = v16;
  v135 = (v19 - v16);
  v20 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_blockQuoteLayerView];
  v21 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas;
  swift_beginAccess();
  *&v20[v21] = &_swiftEmptyArrayStorage;

  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset] = v22;
  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset] = v23;
  v24 = &selRef_setRegion_;
  v25 = [v1 _placeholderLabel];
  if (v25)
  {
    v26 = v25;
    v27 = [v1 isEditable];
    v28 = 0.0;
    if (v27)
    {
      v28 = 1.0;
    }

    [v26 setAlpha:v28];
  }

  if ([v125 length] < &v135[v134])
  {
    v29 = [v125 length];
    if (__OFSUB__(v29, v134))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v135 = &v29[-v134];
  }

  v30 = [v1 textStorage];
  v31 = [v30 length];

  v121 = v20;
  if (!v31)
  {
    v36 = [v1 selectedTextRange];
    if (!v36)
    {
      goto LABEL_52;
    }

    v37 = v36;
    v38 = COERCE_DOUBLE([v36 start]);

    if (v38 == 0.0)
    {
      goto LABEL_52;
    }

    v39 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v40 + 16) || (v41 = sub_100051964(NSParagraphStyleAttributeName), (v42 & 1) == 0))
    {

      goto LABEL_51;
    }

    sub_10000BA20(*(v40 + 56) + 32 * v41, &aBlock);

    sub_1000065A8(0, &qword_100ADFF70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    v43 = v127.origin.x;
    v44 = [v1 beginningOfDocument];
    v45 = [v1 offsetFromPosition:v44 toPosition:*&v38];

    [*&v127.origin.x firstLineHeadIndent];
    *v47.i64 = *v46.i64 - trunc(*v46.i64);
    v48.f64[0] = NAN;
    v48.f64[1] = NAN;
    v122 = vnegq_f64(v48);
    v49 = *vbslq_s8(v122, v47, v46).i64 + -0.1;
    [*&v127.origin.x headIndent];
    if (fabs(v49) >= 0.01)
    {
      goto LABEL_89;
    }

    *v51.i64 = *v50.i64 - trunc(*v50.i64);
    if (fabs(*vbslq_s8(v122, v51, v50).i64 + -0.1) >= 0.01)
    {
      goto LABEL_89;
    }

    v52 = [v1 textStorage];
    v53 = [v52 length];

    if (v53 < v45)
    {
      goto LABEL_87;
    }

    v54 = [v1 textLayoutManager];
    if (!v54)
    {
      goto LABEL_87;
    }

    v55 = v54;
    v56 = sub_1000F59DC(v45, 0);
    if (!v56)
    {
      goto LABEL_86;
    }

    v57 = v56;
    size = CGRectNull.size;
    v127.origin = CGRectNull.origin;
    v127.size = size;
    v59 = swift_allocObject();
    *(v59 + 16) = &v127;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1007C82F4;
    *(v60 + 24) = v59;
    v129 = sub_1007C82FC;
    v130 = v60;
    *&aBlock.origin.x = _NSConcreteStackBlock;
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = sub_1002B0148;
    *&aBlock.size.height = &unk_100A7E3F0;
    v61 = _Block_copy(&aBlock);

    [v55 enumerateTextSegmentsInRange:v57 type:0 options:0 usingBlock:v61];
    _Block_release(v61);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if ((v61 & 1) == 0)
    {
      if (!CGRectIsNull(v127))
      {
        y = v127.origin.y;
        x = v127.origin.x;
        height = v127.size.height;
        width = v127.size.width;
      }

      goto LABEL_87;
    }

    goto LABEL_94;
  }

  v133 = v134;
  if (v134 <= 0)
  {
    v119 = 0;
    v33 = NSParagraphStyleAttributeName;
    goto LABEL_55;
  }

  v32 = [v1 textStorage];
  v33 = NSParagraphStyleAttributeName;
  v34 = [v32 attribute:NSParagraphStyleAttributeName atIndex:v134 effectiveRange:0];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v127, 0, sizeof(v127));
  }

  aBlock = v127;
  if (!*&v127.size.height)
  {
    goto LABEL_49;
  }

  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v119 = 0;
    goto LABEL_55;
  }

  v62 = v131[0];
  [v131[0] firstLineHeadIndent];
  *v64.i64 = *v63.i64 - trunc(*v63.i64);
  v65.f64[0] = NAN;
  v65.f64[1] = NAN;
  v123 = vnegq_f64(v65);
  v66 = *vbslq_s8(v123, v64, v63).i64 + -0.1;
  [v131[0] headIndent];
  if (fabs(v66) >= 0.01 || (*v68.i64 = *v67.i64 - trunc(*v67.i64), fabs(*vbslq_s8(v123, v68, v67).i64 + -0.1) >= 0.01))
  {

    goto LABEL_54;
  }

  v69 = [v1 textStorage];
  v124 = v134 - 1;
  if (__OFSUB__(v134, 1))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = &v133;
  v72 = swift_allocObject();
  v119 = sub_100049728;
  *(v72 + 16) = sub_100049728;
  *(v72 + 24) = v71;
  v129 = sub_100673DC8;
  v130 = v72;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10007E0A4;
  *&aBlock.size.height = &unk_100A7E378;
  v73 = _Block_copy(&aBlock);

  [v70 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v124 usingBlock:{2, v73}];

  _Block_release(v73);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_49:
    sub_100004F84(&aBlock, &qword_100AD13D0);
    goto LABEL_54;
  }

LABEL_55:
  v132 = &_swiftEmptyArrayStorage;
  v131[0] = NSNotFound.getter();
  v131[1] = 0;
  v75 = [v1 textStorage];
  v76 = v134;
  v77 = v135;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = v131;
  v79[4] = &v134;
  v79[5] = &v132;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1007C8220;
  *(v80 + 24) = v79;
  v129 = sub_100673DC8;
  v130 = v80;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10007E0A4;
  *&aBlock.size.height = &unk_100A7E288;
  v81 = _Block_copy(&aBlock);

  [v75 enumerateAttribute:v33 inRange:v76 options:v77 usingBlock:{0, v81}];

  _Block_release(v81);
  v82 = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v83 = v132[2];
  v84 = v121;
  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (!v83)
  {
LABEL_83:

    [v84 setNeedsDisplay];

    sub_100004DF8(v119);

    return;
  }

  *v120 = CGRectNull.origin;
  *&v120[16] = CGRectNull.size;
  v86 = ( + 40);
  while (1)
  {
    v90 = *(v86 - 1);
    v91 = *v86;
    if (v90 == v134)
    {
      v92 = v133;
    }

    else
    {
      v92 = *(v86 - 1);
    }

    v93 = [v1 textStorage];
    v94 = [v93 attributesAtIndex:v92 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v95 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v95 + 16) || (v96 = sub_100051964(NSForegroundColorAttributeName), (v97 & 1) == 0) || (sub_10000BA20(*(v95 + 56) + 32 * v96, &aBlock), sub_1000065A8(0, &qword_100AD4C70), !swift_dynamicCast()))
    {

LABEL_72:
      v38 = 0.0;
      goto LABEL_73;
    }

    v38 = v127.origin.x;
    if (qword_100AD0AC0 != -1)
    {
      swift_once();
    }

    v98 = qword_100B31098;
    v99 = static NSObject.== infix(_:_:)();

    if (v99)
    {

      v38 = 0.0;
      v84 = v121;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      goto LABEL_73;
    }

    v113 = [objc_opt_self() blackColor];
    v114 = static NSObject.== infix(_:_:)();

    v84 = v121;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    if (v114)
    {

      goto LABEL_72;
    }

LABEL_73:
    v100 = [v126 p_ivar_lyt[388]];
    v101 = [v100 location];

    v102 = [v126 locationFromLocation:v101 withOffset:v90];
    swift_unknownObjectRelease();
    v103 = 0.0;
    if (!v102)
    {
      goto LABEL_59;
    }

    v104 = [v126 locationFromLocation:v102 withOffset:v91];
    if (v104)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_59:
    v87 = 0.0;
    v88 = 0.0;
    v89 = 0.0;
LABEL_60:
    v86 += 2;
    sub_1004E5DAC(*&v38, v103, v87, v88, v89);

    if (!--v83)
    {

      goto LABEL_83;
    }
  }

  v55 = [objc_allocWithZone(NSTextRange) initWithLocation:v102 endLocation:v104];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v87 = 0.0;
  v88 = 0.0;
  v89 = 0.0;
  if (!v55)
  {
    goto LABEL_60;
  }

  v127 = *v120;
  v43 = COERCE_DOUBLE(swift_allocObject());
  *(*&v43 + 16) = &v127;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1002D3718;
  *(v105 + 24) = v43;
  v129 = sub_10022DC60;
  v130 = v105;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_1002B0148;
  *&aBlock.size.height = &unk_100A7E300;
  v106 = _Block_copy(&aBlock);

  [v126 enumerateTextSegmentsInRange:v55 type:0 options:0 usingBlock:v106];
  _Block_release(v106);
  v24 = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    IsNull = CGRectIsNull(v127);

    v103 = CGRectZero.origin.x;
    v108 = y;
    v109 = width;
    v110 = height;
    if (!IsNull)
    {
      v108 = v127.origin.y;
      v103 = v127.origin.x;
      v110 = v127.size.height;
      v109 = v127.size.width;
    }

    v111 = v108;
    v112 = v110;

    v89 = v112;
    v88 = v109;
    v87 = v111;
    v84 = v121;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    goto LABEL_60;
  }

  __break(1u);
LABEL_86:

  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_87:
  v115 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
  v116 = v115;
  sub_1004E5DAC(v115, x, y, width, height);

  v117 = [v1 *(v24 + 3400)];
  if (v117)
  {
    v118 = v117;
    [v118 setAlpha:0.0];
  }

LABEL_89:

LABEL_51:
  v20 = v121;
LABEL_52:
  [v20 setNeedsDisplay];
}

uint64_t sub_100081950()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for DrawingAsset()
{
  result = qword_100AD6C38;
  if (!qword_100AD6C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000819F8()
{
  v1 = v0;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000F24EC(&unk_100AD6240);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v16, v7, &qword_100AD6260);
    v17 = v23;
    if ((*(v23 + 48))(v7, 1, v2))
    {
      sub_100004F84(v7, &qword_100AD6260);
      return 0;
    }

    else
    {
      (*(v17 + 16))(v4, v7, v2);
      sub_100004F84(v7, &qword_100AD6260);
      MergeableEntryAttributes.title.getter();
      (*(v17 + 8))(v4, v2);
      v18 = CRAttributedString.attributedString.getter();
      (*(v22 + 8))(v10, v8);
    }
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle);
    v19 = v18;
  }

  return v18;
}

void *sub_100081D68()
{
  v1 = v0;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000F24EC(&qword_100AE4C80);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v16, v7, &qword_100AD6260);
    v17 = v26;
    if ((*(v26 + 48))(v7, 1, v2))
    {
      sub_100004F84(v7, &qword_100AD6260);
      return 0;
    }

    else
    {
      (*(v17 + 16))(v4, v7, v2);
      sub_100004F84(v7, &qword_100AD6260);
      MergeableEntryAttributes.text.getter();
      (*(v17 + 8))(v4, v2);
      v21 = CRAttributedString.attributedString.getter();
      (*(v25 + 8))(v10, v8);
      v22 = [v21 string];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v23;
    }
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    if (result)
    {
      v19 = [result string];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v20;
    }
  }

  return result;
}

id sub_100082148()
{
  v1 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView) heightAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1000821F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry];
  if (v2)
  {

    v3 = sub_1000819F8();

    if (v3)
    {
      v4 = [v3 string];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = [v1 text];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!v3)
    {
      v13 = 0;
      goto LABEL_17;
    }

    if (v8 == v2 && v3 == v10)
    {

LABEL_21:

      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_21;
    }
  }

  else if (!v3)
  {
    return;
  }

  v13 = String._bridgeToObjectiveC()();
LABEL_17:

  [v1 setText:v13];
}

uint64_t sub_1000823A8(char a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 25) = a2;
  aBlock[4] = sub_1000918C8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A75B20;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_100082668()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000826A0()
{

  return swift_deallocObject();
}

unint64_t sub_1000826D8()
{
  result = qword_100AD1520;
  if (!qword_100AD1520)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1520);
  }

  return result;
}

id sub_100082730(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry;
  *(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry) = a1;

  *(*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton) + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry) = a1;

  sub_10004A91C();
  if (*(v1 + v3))
  {

    v4 = sub_1002AC4A8();
    type metadata accessor for JournalEntryMO();
    v5 = MinimumSupportedVersion.isEditingSupported.getter();
    LOBYTE(v6) = 1;
    if ((v5 & 1) == 0)
    {
      v6 = sub_1002AC4A8() ^ 1;
    }

    [*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButton) setHidden:v6 & 1];
    [*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton) setHidden:(v4 & 1) == 0];
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_dividerLineView);
  if (sub_10005AAB0(4) & 1) != 0 || (v8 = sub_10005AAB0(2), v9 = 0.0, (v8))
  {
    v9 = 1.0;
  }

  return [v7 setAlpha:v9];
}

uint64_t sub_100082890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for JournalEntryMetadataButton.ContentView();
  *(a2 + v6[6]) = KeyPath;
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[7]) = swift_getKeyPath();
  sub_1000F24EC(&qword_100ADECB0);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();
  type metadata accessor for JournalEntryMO();
  sub_100052258(&qword_100ADECB8, &type metadata accessor for JournalEntryMO);
  v8 = a1;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v10;
  a2[2] = sub_10003C53C;
  a2[3] = v4;
  v11 = a2 + v6[8];
  *v11 = v7;
  v11[8] = 0;
  return result;
}

uint64_t sub_100082A00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100082A84@<X0>(_BYTE *a1@<X8>)
{
  sub_1001860A8();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100082B20()
{
  result = type metadata accessor for CRAttributedString();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100082BE4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-v3];
  v5 = type metadata accessor for UnsupportedEntryMode();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v7);
  v12 = &v26[-v11];
  v13 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (v13)
  {
    v31 = *(v13 + 32);
    type metadata accessor for JournalEntryMO();

    if (MinimumSupportedVersion.isEditingSupported.getter())
    {
      goto LABEL_12;
    }

    v28 = v0;
    JournalEntryMO.unsupportedEntryMode.getter();
    v14 = *(v6 + 48);
    if (v14(v4, 1, v5) == 1)
    {
      v15 = *(v6 + 104);
      v27 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v15(v12);
      if (v14(v4, 1, v5) != 1)
      {
        sub_100004F84(v4, &qword_100ADE5A0);
      }

      v1 = v28;
      v16 = v27;
    }

    else
    {
      (*(v6 + 32))(v12, v4, v5);
      v16 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v15 = *(v6 + 104);
      v1 = v28;
    }

    (v15)(v9, v16, v5);
    sub_100603A60(&unk_100ADE5E0, &type metadata accessor for UnsupportedEntryMode);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17 = *(v6 + 8);
    v17(v9, v5);
    v17(v12, v5);
    if (v30 != v29)
    {
LABEL_12:
      v25 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView);
      if (v25)
      {
        [v25 setHidden:1];
      }

      [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView) setHidden:0];
    }

    else
    {
      v18 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView;
      v19 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView);
      if (v19 || (type metadata accessor for UnsupportedEntryView(), v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v20, "setTranslatesAutoresizingMaskIntoConstraints:", 0), v21 = objc_msgSend(v20, "heightAnchor"), v22 = objc_msgSend(v21, "constraintEqualToConstant:", 200.0), v21, objc_msgSend(v22, "setActive:", 1), v22, v23 = *(v1 + v18), *(v1 + v18) = v20, v23, (v19 = *(v1 + v18)) != 0))
      {
        v24 = v19;
        [v24 setHidden:0];
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView) insertArrangedSubview:v24 atIndex:0];
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView) setHidden:1];
      }
    }
  }

  return result;
}

uint64_t sub_1000831FC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for ColorResource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v1, qword_100B31550);
  v9 = *(v2 + 16);
  v9(v4, v8, v1);
  v10 = UIColor.init(resource:)();
  v11 = UICellConfigurationState.traitCollection.getter();
  v12 = [v11 userInterfaceStyle];

  if (v12 == 2)
  {
    v13 = 24;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() effectCompositingColor:v10 withMode:v13 alpha:1.0];

  UIBackgroundConfiguration.visualEffect.setter();
  if (qword_100AD0CC8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v1, qword_100B31568);
  v9(v4, v15, v1);
  UIColor.init(resource:)();
  v16 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.color.setter();
  v16(v31, 0);
  v17 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.opacity.setter();
  v17(v31, 0);
  v18 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.radius.setter();
  v18(v31, 0);
  v19 = UIBackgroundConfiguration.shadowProperties.modify();
  v20 = UIShadowProperties.offset.modify();
  *(v21 + 8) = 0x4000000000000000;
  v20(v30, 0);
  v19(v31, 0);
  if ((UICellConfigurationState.isSwiped.getter() & 1) == 0)
  {
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (v23 = [v26 traitCollection], v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v24 == 5) && (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 && (UICellConfigurationState.isEditing.getter())
    {
      v22 = [objc_opt_self() tintColor];
      UIBackgroundConfiguration.strokeColor.setter();
      UIBackgroundConfiguration.strokeOutset.setter();
      UIBackgroundConfiguration.strokeWidth.setter();
    }
  }

  return (*(v27 + 32))(v29, v7, v28);
}

unint64_t sub_10008375C()
{
  v1 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  result = IndexPath.item.getter();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v6;
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v5 + 8 * result + 32);
    }

    __break(1u);
  }

  return result;
}

id sub_100083850()
{
  if ([v0 isScrollEnabled])
  {
    goto LABEL_6;
  }

  result = [v0 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 || (v7 = [v0 attributedPlaceholder]) == 0 || (v7, objc_msgSend(v0, "_preferredMaxLayoutWidth"), v9 = v8, objc_msgSend(v0, "textContainerInset"), v11 = v9 - v10, objc_msgSend(v0, "textContainerInset"), v13 = v11 - v12, v13 <= 0.0))
  {
LABEL_6:
    v15.receiver = v0;
    v15.super_class = type metadata accessor for JournalTextView();
    return objc_msgSendSuper2(&v15, "intrinsicContentSize");
  }

  result = [v0 _placeholderLabel];
  if (result)
  {
    v14 = result;
    [result sizeThatFits:{v13, 1.79769313e308}];

    [v0 textContainerInset];
    return [v0 textContainerInset];
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100083A20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MergeableFont.Traits();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100083A7C(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_100083D5C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100068AC8(v13 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v8, type metadata accessor for AssetAttachment.AssetType);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          sub_100083D5C(v14 > 1, v15 + 1, 1);
          v11 = v20;
        }

        v11[2] = v15 + 1;
        sub_100048E9C(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for AssetAttachment.AssetType);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_100068AC8(*(a1 + v16) + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v6, type metadata accessor for AssetAttachment.AssetType);
        v20 = v11;
        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          sub_100083D5C(v17 > 1, v18 + 1, 1);
          v11 = v20;
        }

        v11[2] = v18 + 1;
        sub_100048E9C(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, type metadata accessor for AssetAttachment.AssetType);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

size_t sub_100083D5C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6688, &unk_100945390, type metadata accessor for AssetAttachment.AssetType);
  *v3 = result;
  return result;
}

uint64_t sub_100083DA0()
{

  *(v0 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_livePhotoAttachments) = sub_100083A7C(v1);
}

id sub_100083E38(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_previousSizeType] = 8;
  v9 = &v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_durationText];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_hasTranscription] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView] = 0;
  v10 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton;
  type metadata accessor for PlaybackButton();
  *&v4[v10] = sub_100083FB0(0);
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerLabel] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___bulletAndTranscriptImageAttributedString] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AudioAssetTranscriptionGridView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_100085208();

  return v11;
}

_BYTE *sub_100083FB0(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE4250);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19[OBJC_IVAR____TtC7Journal14PlaybackButton_placementView] = a1 & 1;
  if (a1)
  {
    v20 = [objc_opt_self() whiteColor];
    v21 = objc_opt_self();
    v22 = [v21 configurationWithHierarchicalColor:v20];

    UIButton.configuration.getter();
    v23 = type metadata accessor for UIButton.Configuration();
    v24 = *(*(v23 - 8) + 48);
    if (v24(v10, 1, v23))
    {
      sub_1001BF174(v10, v16);
      UIButton.configuration.setter();
      sub_1001F5544(v10);
    }

    else
    {
      v32 = [objc_opt_self() effectWithStyle:6];
      v41 = v22;
      v33 = UIButton.Configuration.background.modify();
      v40 = v21;
      v34 = v33;
      v22 = v41;
      UIBackgroundConfiguration.visualEffect.setter();
      v34(v42, 0);
      v21 = v40;
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v24(v7, 1, v23))
    {
      sub_1001BF174(v7, v16);
      UIButton.configuration.setter();

      sub_1001F5544(v7);
    }

    else
    {
      v35 = [v21 configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
      v36 = [v22 configurationByApplyingConfiguration:v35];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100941D60;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 whiteColor];
    *(v25 + 40) = [v26 systemIndigoColor];
    sub_1000065A8(0, &qword_100AD4C70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = objc_opt_self();
    v29 = [v28 configurationWithPaletteColors:isa];

    UIButton.configuration.getter();
    v30 = type metadata accessor for UIButton.Configuration();
    v31 = *(*(v30 - 8) + 48);
    if (v31(v18, 1, v30))
    {
      sub_1001BF174(v18, v16);
      UIButton.configuration.setter();
      sub_1001F5544(v18);
    }

    else
    {
      UIButton.Configuration.contentInsets.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v31(v13, 1, v30))
    {
      sub_1001BF174(v13, v16);
      UIButton.configuration.setter();

      sub_1001F5544(v13);
    }

    else
    {
      v37 = [v28 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
      v38 = [v29 configurationByApplyingConfiguration:v37];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.configuration.setter();
    }
  }

  return v19;
}

id sub_100084534(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AE4250);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v4[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = 0;
  v4[OBJC_IVAR____TtC7Journal14PlaybackButton_placementView] = 1;
  v21 = type metadata accessor for PlaybackButton();
  v39.receiver = v4;
  v39.super_class = v21;
  v22 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.plain()();
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v20, 0, 1, v23);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v25 = *(v24 + 48);
  if (v25(v18, 1, v23))
  {
    sub_1001BF174(v18, v20);
    UIButton.configuration.setter();
    sub_1001F5544(v18);
  }

  else
  {
    v26 = [objc_opt_self() clearColor];
    v36 = v9;
    v27 = UIButton.Configuration.background.modify();
    v35 = v10;
    v28 = v27;
    v9 = v36;
    UIBackgroundConfiguration.backgroundColor.setter();
    v28(v38, 0);
    v10 = v35;
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v25(v15, 1, v23))
  {
    sub_1001BF174(v15, v20);
    UIButton.configuration.setter();
    sub_1001F5544(v15);
  }

  else
  {
    (*(v10 + 104))(v37, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v9);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.configuration.setter();
  }

  v29 = v22;
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v29 setContentHorizontalAlignment:3];
  [v29 setContentVerticalAlignment:3];
  [v29 setPreferredBehavioralStyle:1];

  v30 = [v29 heightAnchor];
  v31 = [v29 widthAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  return v29;
}

char *sub_1000849BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer];
  type metadata accessor for AudioPlayer();
  swift_allocObject();
  v11 = sub_100084D8C();
  v12 = sub_100084FA8(&qword_100AE4060, type metadata accessor for AudioPlayer);
  *v10 = v11;
  v10[1] = v12;
  v13 = OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView;
  type metadata accessor for SelfSizingWaveformView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC7Journal14AudioAssetView_enableScrubber] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformLoaded] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset] = 0;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for AudioAssetView();
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  v16 = *&v14[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_100013178(0.0);

  [v17 addSubview:*&v17[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView]];
  v19 = [objc_opt_self() defaultCenter];
  if (qword_100ACFCC8 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v17 selector:? name:? object:?];

  return v17;
}

uint64_t type metadata accessor for AudioPlayer()
{
  result = qword_100AE5FB8;
  if (!qword_100AE5FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100084C64()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100084D8C()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = 0;
  *(v0 + 72) = [objc_allocWithZone(AVPlayer) init];
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo) = 1;
  ObservationRegistrar.init()();
  sub_100084E70();
  return v0;
}

void sub_100084E70()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"didPlayToEndWithNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];

  v4 = [v1 defaultCenter];
  v5 = [objc_opt_self() sharedInstance];
  [v4 addObserver:v0 selector:"handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v5];
}

uint64_t sub_100084FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100084FF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioPlayer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100085034(uint64_t a1)
{
  *(a1 + 8) = sub_100084FF0(&qword_100AE6228);
  result = sub_100084FF0(&qword_100AE6230);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000850A0(uint64_t a1)
{
  result = sub_100084FF0(&qword_100AE6220);
  *(a1 + 8) = result;
  return result;
}

NSString sub_1000851D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F860 = result;
  return result;
}

uint64_t sub_100085208()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000617C(v2, qword_100B312E0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = UIColor.init(resource:)();
  [v1 setBackgroundColor:v7];

  v8 = sub_100085C70();
  [v1 addSubview:v8];

  v9 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView;
  v10 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView];
  v11 = sub_100028DA0(0, 1, 12.0);

  v12 = *&v1[v9];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v12 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:6.0];
    [v17 setActive:1];

    v12 = v14;
  }

  v18 = *&v1[v9];
  v19 = [v18 superview];
  if (v19)
  {
    v20 = v19;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v18 leadingAnchor];
    v22 = [v20 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    [v23 setActive:1];

    v18 = v20;
  }

  v24 = *&v1[v9];
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v24 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:0.0];
    [v29 setActive:1];

    v24 = v26;
  }

  v30 = sub_100085D48();
  v31 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton];
  [v30 addArrangedSubview:v31];

  v32 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView;
  v33 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView];
  v34 = sub_1000A9870();
  [v33 addArrangedSubview:v34];

  [*&v1[v9] addArrangedSubview:*&v1[v32]];
  v35 = *&v1[v32];
  v36 = [v35 superview];
  if (v36)
  {
    v37 = v36;
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v35 leadingAnchor];
    v39 = [v37 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    [v40 setConstant:6.0];
    [v40 setActive:1];

    v35 = v37;
  }

  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v31 addAction:v41 forControlEvents:64];

  v42 = *&v1[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView];
  [v42 removeFromSuperview];
  v43 = sub_100709744();
  [v43 addSubview:v42];

  sub_100013178(0.0);

  v44 = *&v1[v9];
  v45 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView;
  [v44 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView]];
  v46 = *&v1[v45];
  v47 = [v46 superview];
  if (v47)
  {
    v48 = v47;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v46 leadingAnchor];
    v50 = [v48 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    [v51 setConstant:0.0];
    if (v51)
    {
      [v51 setActive:1];
    }
  }

  else
  {
    v51 = 0;
    v48 = v46;
  }

  v52 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint];
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint] = v51;

  v53 = *&v1[v45];
  v54 = [v53 superview];
  if (v54)
  {
    v55 = v54;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [v53 trailingAnchor];
    v57 = [v55 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    [v58 setConstant:0.0];
    if (v58)
    {
      [v58 setActive:1];
    }
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  v59 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint];
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint] = v58;

  v60 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  v61 = *&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v62 = *((swift_isaMask & *v61) + 0x58);
  v63 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v64 = v61;
  v62(5, v63);

  [v1 addSubview:*&v1[v60]];
  v65 = *&v1[v60];
  sub_100013178(0.0);

  v66 = *&v1[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8];
  ObjectType = swift_getObjectType();
  v68 = *(v66 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v66) = v68(ObjectType, v66);
  swift_unknownObjectRelease();
  v69 = v31[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
  v31[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v66 & 1;
  if ((v66 & 1) != v69)
  {
    [v31 setNeedsUpdateConfiguration];
  }

  return sub_100709F30();
}

uint64_t sub_100085B68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100085BA0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ColorResource();
  sub_100006118(v3, a2);
  sub_10000617C(v3, a2);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v4 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}