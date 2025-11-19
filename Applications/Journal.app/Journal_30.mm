void sub_10032A9DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v1 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    [v6 setConstant:8.0];
    [v6 setActive:1];
  }

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:8.0];
    [v11 setActive:1];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 heightAnchor];
  v13 = [v1 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 multiplier:1.0];

  [v14 setActive:1];
  v15 = *(v35 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v15 leadingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  [v18 setConstant:12.0];
  [v18 setActive:1];

  v19 = [v15 superview];
  if (v19)
  {
    v20 = v19;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v15 centerYAnchor];
    v22 = [v20 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    [v23 setActive:1];
  }

  v24 = [v15 superview];
  if (v24)
  {
    v25 = v24;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v15 trailingAnchor];
    v27 = [v25 trailingAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor:v27];

    [v28 setConstant:-8.0];
    [v28 setActive:1];
  }

  v29 = [v15 superview];
  if (v29)
  {
    v30 = v29;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v15 topAnchor];
    v32 = [v30 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:-8.0];
    [v33 setActive:1];
  }

  v34 = sub_100028DA0(0, 1, -8.0);
}

void sub_10032AF38(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);
  v10 = [v9 superview];
  v11 = &selRef_setSuggestedName_;
  if (v10)
  {
    v12 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v9 leadingAnchor];
    v14 = [v12 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    v11 = &selRef_setSuggestedName_;
    [v15 setConstant:a1];
    [v15 setActive:1];
  }

  v16 = [v9 superview];
  v17 = &selRef_setSuggestedName_;
  if (v16)
  {
    v18 = v16;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v9 trailingAnchor];
    v20 = [v18 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    v11 = &selRef_setSuggestedName_;
    [v21 setConstant:a2];
    [v21 setActive:1];

    v17 = &selRef_setSuggestedName_;
  }

  v22 = [v9 superview];
  if (v22)
  {
    v23 = v22;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v9 topAnchor];
    v25 = [v23 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    v11 = &selRef_setSuggestedName_;
    [v26 setConstant:a3];
    [v26 setActive:1];

    v17 = &selRef_setSuggestedName_;
  }

  v27 = *(v4 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel);
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v27 v11[232]];
    v31 = [v29 v11[232]];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:a1];
    [v32 setActive:1];

    v17 = &selRef_setSuggestedName_;
  }

  v33 = [v27 superview];
  if (v33)
  {
    v34 = v33;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v27 v17[293]];
    v36 = [v34 v17[293]];
    v37 = [v35 constraintEqualToAnchor:v36];

    [v37 setConstant:a2];
    [v37 setActive:1];
  }

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v27 topAnchor];
  v39 = [v9 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setConstant:8.0];
  [v40 setActive:1];

  v41 = sub_100028DA0(0, 1, a4);
}

void sub_10032B408()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);
  v2 = [v1 superview];
  v3 = &selRef_setSuggestedName_;
  if (v2)
  {
    v4 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 leadingAnchor];
    v6 = [v4 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    v3 = &selRef_setSuggestedName_;
    [v7 setConstant:46.0];
    [v7 setActive:1];
  }

  v8 = [v1 superview];
  v9 = &selRef_setSuggestedName_;
  if (v8)
  {
    v10 = v8;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v1 trailingAnchor];
    v12 = [v10 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    v3 = &selRef_setSuggestedName_;
    [v13 setConstant:-46.0];
    [v13 setActive:1];

    v9 = &selRef_setSuggestedName_;
  }

  v14 = [v1 superview];
  if (v14)
  {
    v15 = v14;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v1 topAnchor];
    v17 = [v15 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    v3 = &selRef_setSuggestedName_;
    [v18 setConstant:30.0];
    [v18 setActive:1];

    v9 = &selRef_setSuggestedName_;
  }

  v19 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel);
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 v3[232]];
    v23 = [v21 v3[232]];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:46.0];
    [v24 setActive:1];

    v9 = &selRef_setSuggestedName_;
  }

  v25 = [v19 superview];
  if (v25)
  {
    v26 = v25;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v19 v9[293]];
    v28 = [v26 v9[293]];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:-46.0];
    [v29 setActive:1];
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v19 topAnchor];
  v31 = [v1 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setConstant:16.0];
  [v32 setActive:1];

  v33 = sub_100028DA0(0, 1, 16.0);
}

id sub_10032B9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10032BA5C(double a1, double a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a1 > 0.0)
  {
    if (a2 > 0.0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v8._countAndFlagsBits = 0x202C4E20B0C2;
      v8._object = 0xA600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v9._countAndFlagsBits = 1159770306;
      v9._object = 0xA400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }

    if (a2 < 0.0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v11._countAndFlagsBits = 0x202C4E20B0C2;
      v11._object = 0xA600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12._countAndFlagsBits = 1461760194;
      v12._object = 0xA400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  if (a1 >= 0.0 || a2 <= 0.0)
  {
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v16._countAndFlagsBits = 0x202C5320B0C2;
    v16._object = 0xA600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v17._countAndFlagsBits = 1461760194;
    v17._object = 0xA400000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0x202C5320B0C2;
    v14._object = 0xA600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v15._countAndFlagsBits = 1159770306;
    v15._object = 0xA400000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
  }

  return String.init(localized:defaultValue:table:bundle:locale:comment:)();
}

char *sub_10032BED4(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &_swiftEmptySetSingleton;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v46 = v8;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = (v7 - 8);
    v11 = _swiftEmptyArrayStorage;
    v45 = *(v7 + 56);
    v41 = v7;
    v8(v5, v9, v2);
    while (1)
    {
      v12 = VisitAssetMetadata.latitude.getter();
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = VisitAssetMetadata.longitude.getter(), (v16) || (v17 = *&v15, (sub_100287C04(v53, v14, *&v15) & 1) == 0))
      {
        (*v10)(v5, v2);
      }

      else
      {
        v43 = VisitAssetMetadata.isWork.getter();
        v18 = VisitAssetMetadata.mapItemData.getter();
        if (v19 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v42 = v11;
          v20 = v18;
          v21 = v19;
          sub_10011D468();
          v44 = static NSCoding<>.create(from:)();
          v22 = v20;
          v11 = v42;
          sub_10003A5C8(v22, v21);
        }

        v23 = VisitAssetMetadata.horizontalAccuracy.getter();
        if (v24 & 1) != 0 && (v23 = VisitAssetMetadata.confidenceLevel.getter(), (v25))
        {
          if (v44)
          {
            v26 = [v44 location];
            [v26 horizontalAccuracy];
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = v23;
        }

        v29 = VisitAssetMetadata.placeName.getter();
        v47[72] = 1;
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0xE000000000000000;
        if (v30)
        {
          v32 = v30;
        }

        *&v48 = v14;
        *(&v48 + 1) = v17;
        v49 = v44;
        LOBYTE(v50) = 1;
        *(&v50 + 1) = v31;
        *&v51 = v32;
        BYTE8(v51) = v43 & 1;
        v52 = v28;
        v53[0] = v14;
        v53[1] = v17;
        *&v53[2] = v44;
        v53[3] = 0.0;
        v54 = 1;
        v55 = v31;
        v56 = v32;
        v57 = v43 & 1;
        v58 = v28;
        v33 = v44;
        sub_10032C54C(&v48, v47);
        sub_10032C5A8(v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1003E5108(0, *(v11 + 2) + 1, 1, v11);
        }

        v35 = *(v11 + 2);
        v34 = *(v11 + 3);
        if (v35 >= v34 >> 1)
        {
          v11 = sub_1003E5108((v34 > 1), v35 + 1, 1, v11);
        }

        (*v10)(v5, v2);
        *(v11 + 2) = v35 + 1;
        v36 = &v11[72 * v35];
        *(v36 + 2) = v48;
        v37 = v49;
        v38 = v50;
        v39 = v51;
        *(v36 + 12) = v52;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
      }

      v9 += v45;
      if (!--v6)
      {
        break;
      }

      v46(v5, v9, v2);
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_10032C294(double a1, double a2, double a3, double a4)
{
  result = 0;
  v5 = fabs(a2);
  if (fabs(a1) <= 90.0 && v5 <= 180.0 && a3 >= 0.0 && a3 <= 180.0)
  {
    return a4 <= 360.0 && a4 >= 0.0;
  }

  return result;
}

void sub_10032C2F4(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return;
  }

  v3 = [a1 memberAnnotations];
  sub_1000F24EC(&unk_100AD91C0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    v15 = sub_10032BED4(a2);
    v16 = [objc_opt_self() currentTraitCollection];
    v17 = sub_100505EC0(v15, 0, 7u, 0, 0, 1, v16, 1);

    [v17 region];

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_100199DE4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      [v7 coordinate];
      v9 = v8;
      v11 = v10;
      swift_unknownObjectRelease();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (*&v13 >= *&v12 >> 1)
      {
        sub_100199DE4((*&v12 > 1uLL), *&v13 + 1, 1);
      }

      ++v6;
      *&_swiftEmptyArrayStorage[2] = *&v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * *&v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
    }

    while (v5 != v6);

    goto LABEL_13;
  }

  __break(1u);
}

id sub_10032C5FC(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 > 6u)
  {
    if (a1 > 9u)
    {
      switch(a1)
      {
        case 0xAu:
          if (qword_100AD0958 != -1)
          {
            swift_once();
          }

          v1 = qword_100B30E30;
          v9 = qword_100B30E30;
          break;
        case 0xBu:
          v13 = String._bridgeToObjectiveC()();
          v1 = [objc_opt_self() systemImageNamed:v13];

          break;
        case 0xDu:
          if (qword_100AD0960 != -1)
          {
            swift_once();
          }

          v1 = qword_100B30E38;
          v5 = qword_100B30E38;
          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 7u:
          if (qword_100AD0940 != -1)
          {
            swift_once();
          }

          v1 = qword_100B30E18;
          v7 = qword_100B30E18;
          break;
        case 8u:
          if (qword_100AD0970 != -1)
          {
            swift_once();
          }

          v1 = qword_100B30E48;
          v11 = qword_100B30E48;
          break;
        case 9u:
          if (qword_100AD0950 != -1)
          {
            swift_once();
          }

          v1 = qword_100B30E28;
          v3 = qword_100B30E28;
          break;
      }
    }
  }

  else if (a1 > 3u)
  {
    switch(a1)
    {
      case 4u:
        if (qword_100AD0930 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30E08;
        v8 = qword_100B30E08;
        break;
      case 5u:
        if (qword_100AD0938 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30E10;
        v12 = qword_100B30E10;
        break;
      case 6u:
        if (qword_100AD0948 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30E20;
        v4 = qword_100B30E20;
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1u:
        if (qword_100AD08F8 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30DD0;
        v6 = qword_100B30DD0;
        break;
      case 2u:
        if (qword_100AD0920 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30DF8;
        v10 = qword_100B30DF8;
        break;
      case 3u:
        if (qword_100AD0928 != -1)
        {
          swift_once();
        }

        v1 = qword_100B30E00;
        v2 = qword_100B30E00;
        break;
    }
  }

  return v1;
}

uint64_t FilterOption.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBD30;
      v2 = 0x6B72616D6B6F6F42;
      v4 = 0xD000000000000025;
      v3 = 0xEA00000000006465;
      break;
    case 2:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBD00;
      v5 = 1953458256;
      goto LABEL_9;
    case 3:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBCD0;
      v5 = 1701079382;
LABEL_9:
      v2 = v5 & 0xFFFF0000FFFFFFFFLL | 0x736F00000000;
      goto LABEL_10;
    case 4:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBCA0;
      v2 = 0x646564726F636552;
      v3 = 0xEE006F6964754120;
      v4 = 0xD000000000000029;
      break;
    case 5:
      v1 = [objc_opt_self() mainBundle];
      v2 = 0xD000000000000010;
      v12 = 0x80000001008EBC70;
      v3 = 0x80000001008EBC50;
      v4 = 0xD00000000000002BLL;
      break;
    case 6:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBC20;
      v2 = 0x7974697669746341;
      v4 = 0xD000000000000023;
      v3 = 0xE800000000000000;
      break;
    case 7:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBBF0;
      v2 = 0x697463656C666552;
      v3 = 0xEB00000000736E6FLL;
      v4 = 0xD000000000000026;
      break;
    case 8:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBBC0;
      v2 = 0x61737265766E6F43;
      v9 = 0x736E6F6974;
      goto LABEL_19;
    case 9:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBB90;
      v2 = 0x736563616C50;
LABEL_10:
      v3 = 0xE600000000000000;
      v6.super.isa = v1;
      v7 = 0;
      v8 = 0xE000000000000000;
      v4 = 0xD000000000000021;
      goto LABEL_21;
    case 10:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBB60;
      v2 = 0x666F206574617453;
      v9 = 0x646E694D20;
LABEL_19:
      v3 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      v4 = 0xD000000000000028;
      break;
    case 11:
      v1 = [objc_opt_self() mainBundle];
      v4 = 0xD000000000000020;
      v12 = 0x80000001008EBB30;
      v2 = 0x6C6E4F2074786554;
      v3 = 0xE900000000000079;
      break;
    case 12:
      v1 = [objc_opt_self() mainBundle];
      v4 = 0xD00000000000001ELL;
      v12 = 0x80000001008EBB10;
      v2 = 0x676E6977617244;
      goto LABEL_15;
    case 13:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBAE0;
      v2 = 0x73657469766E49;
      v4 = 0xD000000000000023;
LABEL_15:
      v3 = 0xE700000000000000;
      break;
    default:
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x80000001008EBD60;
      v2 = 0x72746E45206C6C41;
      v3 = 0xEB00000000736569;
      v4 = 0xD000000000000026;
      break;
  }

  v6.super.isa = v1;
  v7 = 0;
  v8 = 0xE000000000000000;
LABEL_21:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v6, *&v7, *&v4)._countAndFlagsBits;

  return countAndFlagsBits;
}

void *sub_10032CF44(char a1)
{
  v1 = _swiftEmptyArrayStorage;
  switch(a1)
  {
    case 2:
      sub_1000F24EC(&qword_100ADAD48);
      v2 = type metadata accessor for AssetType();
      v3 = *(v2 - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_100940050;
      v6 = v1 + v5;
      v7 = *(v3 + 104);
      v7(v6, enum case for AssetType.photo(_:), v2);
      v7(&v6[v4], enum case for AssetType.livePhoto(_:), v2);
      return v1;
    case 3:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.video(_:);
      goto LABEL_14;
    case 4:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.audio(_:);
      goto LABEL_14;
    case 5:
      sub_1000F24EC(&qword_100ADAD48);
      v13 = type metadata accessor for AssetType();
      v21 = *(v13 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v17 = 2 * v22;
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_100942000;
      v18 = v1 + v23;
      v19 = *(v21 + 104);
      v19(v18, enum case for AssetType.book(_:), v13);
      v19(&v18[v22], enum case for AssetType.music(_:), v13);
      v20 = &enum case for AssetType.podcast(_:);
      goto LABEL_11;
    case 6:
      sub_1000F24EC(&qword_100ADAD48);
      v13 = type metadata accessor for AssetType();
      v14 = *(v13 - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = 2 * v15;
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_100942000;
      v18 = v1 + v16;
      v19 = *(v14 + 104);
      v19(v18, enum case for AssetType.workoutIcon(_:), v13);
      v19(&v18[v15], enum case for AssetType.workoutRoute(_:), v13);
      v20 = &enum case for AssetType.motionActivity(_:);
LABEL_11:
      v19(&v18[v17], *v20, v13);
      return v1;
    case 7:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.reflection(_:);
      goto LABEL_14;
    case 8:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.contact(_:);
      goto LABEL_14;
    case 9:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.multiPinMap(_:);
      goto LABEL_14;
    case 10:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.stateOfMind(_:);
      goto LABEL_14;
    case 12:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.drawing(_:);
      goto LABEL_14;
    case 13:
      sub_1000F24EC(&qword_100ADAD48);
      v8 = type metadata accessor for AssetType();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v1 = v11;
      *(v11 + 16) = xmmword_100940080;
      v12 = &enum case for AssetType.confetti(_:);
LABEL_14:
      (*(v9 + 104))(v11 + v10, *v12, v8);
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_10032D7B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal12FilterOptionO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s7Journal12FilterOptionO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_10032D80C()
{
  result = qword_100ADF0E8;
  if (!qword_100ADF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF0E8);
  }

  return result;
}

unint64_t sub_10032D864()
{
  result = qword_100ADF0F0;
  if (!qword_100ADF0F0)
  {
    sub_1000F2A18(&qword_100ADF0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10032DA0C()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.42 controlPoint2:{0.0, 0.0, 1.0}];
  qword_100B2F7F8 = result;
  return result;
}

id sub_10032DA54()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.25, 1.0}];
  qword_100B2F800 = result;
  return result;
}

id sub_10032DA9C()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.25, 1.0}];
  qword_100B2F808 = result;
  return result;
}

void sub_10032DAE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(type metadata accessor for VariableBlurView()) init];
  *&v6[OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadius] = 0;
  v7 = v6;
  v8 = [v7 layer];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setValue:isa forKeyPath:v10];

  if (qword_100ACFC60 != -1)
  {
    swift_once();
  }

  v11 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100B2F7F8 timingParameters:0.28];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v3;
  v32 = sub_10032E38C;
  v33 = v12;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100006C7C;
  v31 = &unk_100A67CC8;
  v13 = _Block_copy(&aBlock);
  v14 = a1;

  [v11 addAnimations:v13];
  _Block_release(v13);
  if (qword_100ACFC68 != -1)
  {
    swift_once();
  }

  v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100B2F800 timingParameters:0.12];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v32 = sub_10032E394;
  v33 = v16;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100006C7C;
  v31 = &unk_100A67D18;
  v17 = _Block_copy(&aBlock);
  v18 = v14;

  [v15 addAnimations:v17];
  _Block_release(v17);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v18;
  v19[5] = v7;
  v19[6] = v3;
  v32 = sub_10032E3A8;
  v33 = v19;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_1007CF214;
  v31 = &unk_100A67D68;
  v20 = _Block_copy(&aBlock);
  v21 = v7;
  v22 = v18;

  [v15 addCompletion:v20];
  _Block_release(v20);
  [v22 addSubview:v21];
  [v22 bounds];
  [v21 setFrame:?];

  if (qword_100ACFC70 != -1)
  {
    swift_once();
  }

  v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100B2F808 timingParameters:0.12];
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v3;
  v32 = sub_10032E3B8;
  v33 = v24;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100006C7C;
  v31 = &unk_100A67DB8;
  v25 = _Block_copy(&aBlock);
  v26 = v21;

  [v23 addAnimations:v25];
  _Block_release(v25);
  [v11 startAnimation];
  [v15 startAnimationAfterDelay:0.1];
  [v23 startAnimation];
}

void sub_10032E010(void *a1)
{
  v1 = [a1 layer];
  CATransform3DMakeScale(&v2, 0.95, 0.95, 1.0);
  [v1 setTransform:&v2];
}

uint64_t sub_10032E080(uint64_t result, void (*a2)(void (*)(), void *), uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (!result)
  {
    v11 = swift_allocObject();
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v12 = a4;
    v13 = a5;
    a2(sub_10032E3C0, v11);
  }

  return result;
}

void sub_10032E124(char *a1)
{
  *&a1[OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadius] = 8;
  v1 = [a1 layer];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKeyPath:v3];
}

id sub_10032E1D8()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.35 controlPoint2:{0.1, 0.15, 1.0}];
  qword_100B2F810 = result;
  return result;
}

id sub_10032E230()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.25, 1.0}];
  qword_100B2F818 = result;
  return result;
}

void sub_10032E278(void *a1)
{
  v1 = [a1 layer];
  v2 = *&CATransform3DIdentity.m33;
  v6[4] = *&CATransform3DIdentity.m31;
  v6[5] = v2;
  v3 = *&CATransform3DIdentity.m43;
  v6[6] = *&CATransform3DIdentity.m41;
  v6[7] = v3;
  v4 = *&CATransform3DIdentity.m13;
  v6[0] = *&CATransform3DIdentity.m11;
  v6[1] = v4;
  v5 = *&CATransform3DIdentity.m23;
  v6[2] = *&CATransform3DIdentity.m21;
  v6[3] = v5;
  [v1 setTransform:v6];
}

id sub_10032E330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeBlurTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10032E3CC(void *a1, void *a2, double a3)
{
  if (qword_100ACFC78 != -1)
  {
    swift_once();
  }

  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100B2F810 timingParameters:0.3];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v18 = sub_10032E65C;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100006C7C;
  v17 = &unk_100A67E30;
  v8 = _Block_copy(&v14);
  v9 = a1;

  [v6 addAnimations:v8];
  _Block_release(v8);
  if (qword_100ACFC80 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100B2F818 timingParameters:0.23];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v18 = sub_1002D376C;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100006C7C;
  v17 = &unk_100A67E80;
  v12 = _Block_copy(&v14);
  v13 = v9;

  [v10 addAnimations:v12];
  _Block_release(v12);
  [a2 removeFromSuperview];
  [v6 startAnimationAfterDelay:a3];
  [v10 startAnimationAfterDelay:a3];
}

uint64_t sub_10032E680()
{
  v1 = OBJC_IVAR____TtC7Journal14MediaAssetView____lazy_storage___musicPlayerManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView____lazy_storage___musicPlayerManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView____lazy_storage___musicPlayerManager);
  }

  else
  {
    if (qword_100ACFE40 != -1)
    {
      swift_once();
    }

    v2 = qword_100B2F9E8;
    *(v0 + v1) = qword_100B2F9E8;
    swift_retain_n();
  }

  return v2;
}

uint64_t sub_10032E720()
{
  result = sub_10032F8FC();
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v5 = *&v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v4 = sub_10033297C;
    v4[1] = v3;
    v6 = v2;

    sub_100004DF8(v5);
  }

  return result;
}

void sub_10032E7E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10032F8FC();
  }
}

id sub_10032E83C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal14MediaAssetView____lazy_storage___musicPlayerManager] = 0;
  v9 = OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal14MediaAssetView_playbackStateObserver] = 0;
  v10 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  v11 = enum case for MediaViewType.song(_:);
  v12 = type metadata accessor for MediaViewType();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  *&v4[OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset] = 0;
  v13 = OBJC_IVAR____TtC7Journal14MediaAssetView_latestImageRequestID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MediaAssetView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_10032EB78();

  return v15;
}

id sub_10032E9E8(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal14MediaAssetView____lazy_storage___musicPlayerManager] = 0;
  v3 = OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal14MediaAssetView_playbackStateObserver] = 0;
  v4 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  v5 = enum case for MediaViewType.song(_:);
  v6 = type metadata accessor for MediaViewType();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  *&v1[OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset] = 0;
  v7 = OBJC_IVAR____TtC7Journal14MediaAssetView_latestImageRequestID;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MediaAssetView();
  v9 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_10032EB78();
  }

  return v10;
}

void sub_10032EB78()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v2 = *&v0[OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView];
  [v0 addSubview:v2];
  [v2 setAlpha:0.0];
  [v2 setContentMode:2];
  [v2 setIsAccessibilityElement:1];
  v3 = UIAccessibilityTraitImage;
  v4 = [v2 accessibilityTraits];
  if ((v3 & ~v4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityTraits:v5 | v4];
  [v2 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD0878 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityLabel:v6];

  v7 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v7];
}

void sub_10032ED40(void *a1)
{
  v73 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v79 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v3 - 8);
  v78 = &v72 - v4;
  v5 = type metadata accessor for PodcastAssetMetadata();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD2A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for MusicAssetMetadata();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v12 - 8);
  v14 = &v72 - v13;
  v15 = sub_1000F24EC(&qword_100ADF198);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = type metadata accessor for MediaViewType();
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v72 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v72 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v72 - v32;
  __chkstk_darwin(v31);
  v35 = &v72 - v34;
  type metadata accessor for MusicAsset();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v84;
    if (*(v36 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata))
    {
      v38 = a1;

      sub_10025BEA0(v14);

      v40 = v80;
      v39 = v81;
      if (!(*(v80 + 6))(v14, 1, v81))
      {
        v55 = v74;
        (*(v40 + 2))(v74, v14, v39);
        sub_100004F84(v14, &qword_100AD6F70);
        MusicAssetMetadata.mediaType.getter();

        (*(v40 + 1))(v55, v39);
        v42 = v82;
        v41 = v83;
        if ((*(v82 + 48))(v20, 1, v83) != 1)
        {
          (*(v42 + 32))(v35, v20, v41);
LABEL_17:
          v56 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
          swift_beginAccess();
          (*(v42 + 40))(v37 + v56, v35, v41);
          goto LABEL_24;
        }

LABEL_6:
        (*(v42 + 104))(v35, enum case for MediaViewType.song(_:), v41);
        if ((*(v42 + 48))(v20, 1, v41) != 1)
        {
          sub_100004F84(v20, &qword_100ADF198);
        }

        goto LABEL_17;
      }

      sub_100004F84(v14, &qword_100AD6F70);
    }

    v42 = v82;
    v41 = v83;
    (*(v82 + 56))(v20, 1, 1, v83);
    goto LABEL_6;
  }

  v74 = v24;
  v80 = v27;
  v81 = v33;
  v43 = v9;
  v44 = v75;
  v45 = v76;
  v47 = v77;
  v46 = v78;
  v48 = v79;
  type metadata accessor for PodcastAsset();
  v49 = swift_dynamicCastClass();
  if (v49)
  {
    v50 = v82;
    if (*(v49 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata))
    {
      v51 = a1;

      sub_10025C244(v43);

      if (!(*(v45 + 48))(v43, 1, v47))
      {
        (*(v45 + 16))(v44, v43, v47);
        sub_100004F84(v43, &qword_100AD2A70);
        PodcastAssetMetadata.mediaType.getter();

        (*(v45 + 8))(v44, v47);
        v52 = v83;
        if ((*(v50 + 48))(v18, 1, v83) != 1)
        {
          v53 = v81;
          (*(v50 + 32))(v81, v18, v52);
          v37 = v84;
LABEL_23:
          v60 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
          swift_beginAccess();
          (*(v50 + 40))(v37 + v60, v53, v52);
          goto LABEL_24;
        }

LABEL_13:
        v53 = v81;
        (*(v50 + 104))(v81, enum case for MediaViewType.podcast(_:), v52);
        v54 = (*(v50 + 48))(v18, 1, v52);
        v37 = v84;
        if (v54 != 1)
        {
          sub_100004F84(v18, &qword_100ADF198);
        }

        goto LABEL_23;
      }

      sub_100004F84(v43, &qword_100AD2A70);
    }

    v52 = v83;
    (*(v50 + 56))(v18, 1, 1, v83);
    goto LABEL_13;
  }

  type metadata accessor for BookAsset();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for ThirdPartyMediaAsset();
    v63 = swift_dynamicCastClass();
    v37 = v84;
    if (!v63)
    {
      goto LABEL_25;
    }

    if (*(v63 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
    {
      v64 = a1;

      sub_10025C98C(v46);

      v65 = v73;
      if (!(*(v48 + 48))(v46, 1, v73))
      {
        v69 = v72;
        (*(v48 + 16))(v72, v46, v65);
        sub_100004F84(v46, &qword_100AD50C0);
        v70 = v74;
        ThirdPartyMediaAssetMetadata.mediaType.getter();

        (*(v48 + 8))(v69, v65);
        v67 = v82;
        v66 = v83;
        v68 = v80;
        (*(v82 + 32))(v80, v70, v83);
        goto LABEL_32;
      }

      sub_100004F84(v46, &qword_100AD50C0);
    }

    v67 = v82;
    v66 = v83;
    v68 = v80;
    (*(v82 + 104))(v80, enum case for MediaViewType.thirdPartyMedia(_:), v83);
LABEL_32:
    v71 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
    swift_beginAccess();
    (*(v67 + 40))(v37 + v71, v68, v66);
    goto LABEL_24;
  }

  v58 = v82;
  v57 = v83;
  (*(v82 + 104))(v30, enum case for MediaViewType.audiobook(_:), v83);
  v59 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  v37 = v84;
  swift_beginAccess();
  (*(v58 + 40))(v37 + v59, v30, v57);
LABEL_24:
  swift_endAccess();
LABEL_25:
  v61 = *(v37 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  *(v37 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset) = a1;
  v62 = a1;

  sub_10032E720();
  sub_100330FFC();
}

id sub_10032F7C0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MediaAssetView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10032F810(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for MediaAssetView();
  v12 = *a7;
  v13 = v16.receiver;
  objc_msgSendSuper2(&v16, v12, a2, a3, a4, a5);
  v14 = *&v13[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v13 bounds];
  [v14 setFrame:?];

  v15 = *&v13[OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView];
  [v13 bounds];
  [v15 setFrame:?];
}

uint64_t sub_10032F8FC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-v3];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v10 = &v49[-v9];
  v11 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v12);
  v18 = &v49[-v17];
  v19 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  if (v19)
  {
    v54 = v16;
    v55 = v15;
    v57 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v59 = v14;
    v60 = result;
    type metadata accessor for MusicAsset();
    v20 = swift_dynamicCastClass();
    v58 = v19;
    v56 = v7;
    if (v20)
    {
      v21 = v5;
      v22 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
      v23 = v19;
      sub_1001BF978();
      if (!v24)
      {
        v25 = 0;
        goto LABEL_12;
      }

LABEL_4:
      v25 = String._bridgeToObjectiveC()();

LABEL_12:
      [v22 setAccessibilityValue:v25];

      goto LABEL_13;
    }

    type metadata accessor for PodcastAsset();
    if (swift_dynamicCastClass())
    {
      v21 = v5;
      v22 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
      v23 = v19;
      sub_10059A304();
      if (v26)
      {
        goto LABEL_4;
      }
    }

    else
    {
      type metadata accessor for BookAsset();
      if (swift_dynamicCastClass())
      {
        v21 = v5;
        v22 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
        v23 = v19;
        sub_10012CB04();
        if (v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v5;
        type metadata accessor for ThirdPartyMediaAsset();
        if (!swift_dynamicCastClass())
        {
          v48 = v19;
LABEL_13:
          Date.init()();
          v28 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
          if (*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
          {
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v29 & 1) == 0)
            {
              if (qword_100ACFB90 != -1)
              {
                swift_once();
              }

              v30 = &qword_100B2F628;
LABEL_22:
              v53 = *v30;
              UUID.init()();
              v31 = *(v6 + 16);
              v52 = v10;
              v31(v4, v10, v21);
              (*(v6 + 56))(v4, 0, 1, v21);
              v32 = OBJC_IVAR____TtC7Journal14MediaAssetView_latestImageRequestID;
              swift_beginAccess();
              sub_100075184(v4, v1 + v32);
              swift_endAccess();
              v50 = *(v1 + v28);
              v33 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v34 = v57;
              v31(v57, v10, v21);
              v35 = v59;
              v36 = *(v59 + 16);
              v37 = v55;
              v51 = v18;
              v38 = v18;
              v39 = v60;
              v36(v55, v38, v60);
              v40 = (*(v6 + 80) + 24) & ~*(v6 + 80);
              v41 = (v56 + *(v35 + 80) + v40) & ~*(v35 + 80);
              v42 = swift_allocObject();
              *(v42 + 16) = v33;
              (*(v6 + 32))(v42 + v40, v34, v21);
              (*(v35 + 32))(v42 + v41, v37, v39);
              v43 = objc_opt_self();

              v44 = [v43 currentTraitCollection];
              v45 = v53;
              v46 = v58;
              sub_100076220(v50, 0, 1, v53, v44, sub_1003327CC, v42);

              (*(v6 + 8))(v52, v21);
              (*(v35 + 8))(v51, v39);
            }
          }

          if (qword_100ACFB98 != -1)
          {
            swift_once();
          }

          v30 = &qword_100B2F630;
          goto LABEL_22;
        }

        v22 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
        v23 = v19;
        sub_1008A3E9C();
        if (v47)
        {
          goto LABEL_4;
        }
      }
    }

    v25 = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100330038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v33 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_1003328A4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A67F70;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v25 = v36;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_10033050C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v6 = type metadata accessor for Date();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = __chkstk_darwin(v6);
  v63 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v62 = &v59[-v9];
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v64 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v69 = &v59[-v13];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v65 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v17);
  v19 = &v59[-v18];
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v59[-v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v27 = Strong;
  if (!a2)
  {

LABEL_7:
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      return;
    }

    v35 = v34;
    goto LABEL_29;
  }

  v61 = a2;
  (*(v15 + 16))(v25, a3, v14);
  (*(v15 + 56))(v25, 0, 1, v14);
  v28 = OBJC_IVAR____TtC7Journal14MediaAssetView_latestImageRequestID;
  swift_beginAccess();
  v29 = *(v17 + 48);
  sub_1000082B4(v25, v19, &qword_100AD1420);
  sub_1000082B4(&v27[v28], &v19[v29], &qword_100AD1420);
  v30 = *(v15 + 48);
  if (v30(v19, 1, v14) == 1)
  {
    v31 = v61;
    v32 = v61;
    sub_100004F84(v25, &qword_100AD1420);
    if (v30(&v19[v29], 1, v14) == 1)
    {
      sub_100004F84(v19, &qword_100AD1420);
      v33 = v31;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1000082B4(v19, v23, &qword_100AD1420);
  v36 = v30(&v19[v29], 1, v14);
  v31 = v61;
  if (v36 == 1)
  {
    v37 = v61;
    sub_100004F84(v25, &qword_100AD1420);
    (*(v15 + 8))(v23, v14);
LABEL_11:
    sub_100004F84(v19, &unk_100AEEE20);

    v35 = v31;
    goto LABEL_30;
  }

  v38 = v65;
  (*(v15 + 32))(v65, &v19[v29], v14);
  sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
  v35 = v31;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = v31;
  v39 = *(v15 + 8);
  v39(v38, v14);
  sub_100004F84(v25, &qword_100AD1420);
  v39(v23, v14);
  sub_100004F84(v19, &qword_100AD1420);
  if (v60)
  {
LABEL_13:
    v40 = *&v27[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v35 = v27;
    v41 = 1;
    [v40 setHidden:1];
    v42 = OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView;
    [*&v35[OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView] setImage:v33];
    v43 = [*&v35[v42] setContentMode:2];
    (*((swift_isaMask & *v35) + 0x228))(v43);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v35[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
    {
      v46 = v68;
      v45 = v69;
      v47 = v67;
      if (v35[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u && v35[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
      {
LABEL_20:

        (*(v47 + 16))(v45, v66, v46);
        (*(v47 + 56))(v45, 0, 1, v46);
        if (v41)
        {
          goto LABEL_21;
        }

        v51 = v64;
        sub_1000082B4(v45, v64, &unk_100AD4790);
        if ((*(v47 + 48))(v51, 1, v46) == 1)
        {
          sub_100004F84(v51, &unk_100AD4790);
        }

        else
        {
          v52 = v62;
          (*(v47 + 32))(v62, v51, v46);
          v53 = v63;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v55 = v54;
          v56 = *(v47 + 8);
          v56(v53, v46);
          v56(v52, v46);
          if (v55 < 0.1)
          {
LABEL_21:
            swift_beginAccess();
            v48 = swift_unknownObjectWeakLoadStrong();
            if (v48)
            {
              v49 = v48;
              v50 = *(v48 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);

              [v50 setAlpha:1.0];
            }

            else
            {
            }

            goto LABEL_28;
          }
        }

        v57 = objc_opt_self();
        aBlock[4] = sub_100332974;
        aBlock[5] = v44;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A67F98;
        v58 = _Block_copy(aBlock);

        [v57 animateWithDuration:0x10000 delay:v58 options:0 animations:0.1 completion:0.0];

        _Block_release(v58);

LABEL_28:
        sub_100004F84(v45, &unk_100AD4790);

LABEL_29:
        v35[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v46 = v68;
      v45 = v69;
      v47 = v67;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

LABEL_30:
}

void sub_100330F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);

    [v2 setAlpha:1.0];
  }
}

void sub_100330FFC()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset))
  {
    type metadata accessor for MusicAsset();
    if (swift_dynamicCastClass())
    {
      v1 = [objc_opt_self() defaultCenter];
      v2 = [objc_opt_self() mainQueue];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1003327A8;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_10074ADC8;
      v6[3] = &unk_100A67EF8;
      v4 = _Block_copy(v6);

      v5 = [v1 addObserverForName:MPMusicPlayerControllerPlaybackStateDidChangeNotification object:0 queue:v2 usingBlock:v4];
      _Block_release(v4);

      *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_playbackStateObserver) = v5;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003311FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC7Journal14MediaAssetView_delegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003312A4()
{
  v1 = type metadata accessor for MediaViewType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v9 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v7, v0 + v9, v1);
  v10(v4, v7, v1);
  v11 = (*(v2 + 88))(v4, v1);
  if (v11 == enum case for MediaViewType.song(_:) || v11 == enum case for MediaViewType.songAlbum(_:))
  {
    v13 = 2;
  }

  else if (v11 == enum case for MediaViewType.podcast(_:) || v11 == enum case for MediaViewType.podcastArtist(_:))
  {
    v13 = 3;
  }

  else if (v11 == enum case for MediaViewType.audiobook(_:))
  {
    v13 = 4;
  }

  else
  {
    if (v11 != enum case for MediaViewType.thirdPartyMedia(_:) && v11 != enum case for MediaViewType.thirdPartyMediaAlbum(_:) && v11 != enum case for MediaViewType.thirdPartyMediaArtist(_:))
    {
      v19 = v8;
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v13 = 12;
  }

  v17 = *(v2 + 8);
  v18 = v8;
  v17(v7, v1);
  (*((swift_isaMask & *v18) + 0x58))(v13, *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType));

  return sub_10032F8FC();
}

void *sub_10033153C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_10033156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v8;
  v6[11] = v7;

  return _swift_task_switch(sub_100331608, v8, v7);
}

uint64_t sub_100331608()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 104) = sub_10032E680();

    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_100331728;
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_1004B9534(v5, v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100331728()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10033186C, v3, v2);
}

uint64_t sub_10033186C()
{

  **(v0 + 40) = *(v0 + 96) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003318E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100331978, v6, v5);
}

uint64_t sub_100331978()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_10032E680();
    *(v0 + 88) = v3;

    return _swift_task_switch(sub_100331A60, v3, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100331A60()
{
  v1 = sub_1004B9AA4();
  [v1 pause];

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return _swift_task_switch(sub_100331AE0, v2, v3);
}

uint64_t sub_100331AE0()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331B54()
{
  v1[2] = v0;
  sub_1000F24EC(&qword_100AD6F70);
  v1[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100331C24, v3, v2);
}

uint64_t sub_100331C24()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  v0[7] = v1;
  if (!v1 || (type metadata accessor for MusicAsset(), !swift_dynamicCastClass()))
  {

    goto LABEL_6;
  }

  v2 = v0[3];
  v3 = v1;
  sub_1006ABC94(v2);
  v4 = type metadata accessor for MusicAssetMetadata();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    v6 = v0[3];

    sub_100004F84(v6, &qword_100AD6F70);
LABEL_6:

    v7 = v0[1];

    return v7(0);
  }

  v9 = v0[3];
  v10 = MusicAssetMetadata.mediaId.getter();
  v12 = v11;
  v0[8] = v11;
  (*(v5 + 8))(v9, v4);
  v0[9] = sub_10032E680();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_100331E20;

  return sub_1004B93C0(v10, v12);
}

uint64_t sub_100331E20(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_100331F88, v4, v3);
}

uint64_t sub_100331F88()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100332000()
{

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_delegate);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  v2 = type metadata accessor for MediaViewType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_latestImageRequestID, &qword_100AD1420);
}

id sub_1003320CC()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal14MediaAssetView_playbackStateObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MediaAssetView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for MediaAssetView()
{
  result = qword_100ADF188;
  if (!qword_100ADF188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100332350()
{
  type metadata accessor for MediaViewType();
  if (v0 <= 0x3F)
  {
    sub_10006D1E4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033243C()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset);
  if (v7)
  {
    type metadata accessor for MusicAsset();
    if (swift_dynamicCastClass())
    {
      v8 = v7;
      sub_1006ABC94(v6);
      v9 = type metadata accessor for MusicAssetMetadata();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {

        sub_100004F84(v6, &qword_100AD6F70);
      }

      else
      {
        v11 = MusicAssetMetadata.mediaId.getter();
        v13 = v12;
        (*(v10 + 8))(v6, v9);
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v16 = static MainActor.shared.getter();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = &protocol witness table for MainActor;
        v17[4] = v15;
        v17[5] = v11;
        v17[6] = v13;

        sub_1003E9BBC(0, 0, v3, &unk_100950328, v17);
      }
    }
  }
}

uint64_t sub_1003326E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10033156C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003327CC(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100330038(a1, v7, v1 + v4, v8);
}

void sub_1003328A4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10033050C(v5, v6, v0 + v2, v7);
}

id sub_100332B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JurassicAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100332BC0()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006ACC54(v5);
  v9 = type metadata accessor for LinkAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD50C8;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  LinkAssetMetadata.date.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

char *sub_100332EB0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal21RoundedBackgroundView_insetView;
  v10 = [objc_allocWithZone(UIView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_opt_self();
  v12 = [v11 secondarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor:v12];

  [v10 setClipsToBounds:1];
  *&v4[v9] = v10;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for RoundedBackgroundView();
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v11 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = OBJC_IVAR____TtC7Journal21RoundedBackgroundView_insetView;
  [v13 addSubview:*&v13[OBJC_IVAR____TtC7Journal21RoundedBackgroundView_insetView]];
  v16 = [*&v13[v15] layer];
  if (!_UISolariumEnabled() || (v17 = [v13 traitCollection], v18 = objc_msgSend(v17, "userInterfaceIdiom"), v17, v19 = 26.0, v18 == 5))
  {
    v19 = 12.0;
  }

  [v16 setCornerRadius:v19];

  v20 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100941830;
  v22 = [*&v13[v15] leadingAnchor];
  v23 = [v13 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v21 + 32) = v24;
  v25 = [*&v13[v15] trailingAnchor];
  v26 = [v13 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 40) = v27;
  v28 = [*&v13[v15] topAnchor];
  v29 = [v13 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v21 + 48) = v30;
  v31 = [*&v13[v15] bottomAnchor];
  v32 = [v13 bottomAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v21 + 56) = v33;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];

  return v13;
}

id sub_1003332D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10033333C()
{
  v1 = OBJC_IVAR____TtC7Journal21RoundedBackgroundView_insetView;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v2 setClipsToBounds:1];
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100333428(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((swift_isaMask & *a1) + 0x200))();
  if (v6)
  {
    v7 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView];
    if (*&v7[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset])
    {
      v8 = *&v7[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8];
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 80))(ObjectType, v8);
      type metadata accessor for Asset();
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v13 = v7;
        return v7;
      }
    }
  }

  v14 = *(a2 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  aBlock[0] = a1;
  __chkstk_darwin(v6);
  v28[2] = aBlock;

  v15 = sub_10005B088(sub_100333A7C, v28, v14);

  if ((v15 & 1) == 0)
  {
    return sub_100585338(a1, 0);
  }

  v30 = 0;
  v16 = sub_100658B00();
  v17 = [v16 textStorage];

  v18 = NSParagraphAttachmentAttributeName;
  v19 = [*&v3[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView] textStorage];
  v20 = [v19 length];

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v3;
  v21[4] = &v30;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100333A9C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_10007E150;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A68048;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  v25 = v3;

  [v17 enumerateAttribute:v18 inRange:0 options:v20 usingBlock:{0, v23}];

  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v30;

    return v7;
  }

  __break(1u);
  return result;
}

void sub_100333794(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7)
{
  sub_10005D974(a1, v33);
  if (!v34)
  {
    sub_1000261D4(v33);
    return;
  }

  sub_100333AA8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v12 = [v32 textAttachment];
  type metadata accessor for ResizableAssetViewTextAttachment();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v30 = v13, (v14 = sub_1006B7F9C()) == 0))
  {

    return;
  }

  v31 = v14;
  v15 = sub_100627F30();
  v17 = v16;
  v18 = sub_100627F30();
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_13:

    return;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_16:
  v21 = sub_100658B00();
  v22 = [v21 textLayoutManager];

  if (v22)
  {
    v23 = sub_1000F59DC(a2, a3);

    if (v23)
    {
      v24 = [v23 location];

      if (v24)
      {
        v25 = *(a6 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);
        v26 = [v25 textContainer];
        v27 = [v30 viewProviderForParentView:v25 location:v24 textContainer:v26];

        v28 = [v27 view];
        v29 = *a7;
        *a7 = v28;

        *a4 = 1;
        swift_unknownObjectRelease();
        return;
      }
    }
  }

LABEL_20:
}

unint64_t sub_100333AA8()
{
  result = qword_100ADC5F0;
  if (!qword_100ADC5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADC5F0);
  }

  return result;
}

uint64_t sub_100333AF4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADF1F8);
  sub_10000617C(v0, qword_100ADF1F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100333B84(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADF3C8);
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v5 = sub_1000F24EC(&qword_100ADF3D0);
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v35 = sub_1000F24EC(&qword_100ADF3D8);
  v29 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v28 - v8;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100ADF3E0);
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10000CA14(a1, a1[3]);
  sub_10033AE5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10033ADB0(v38, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = 1;
      sub_10033AF68();
      v18 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v31;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v30 + 8))(v7, v19);
      return (*(v39 + 8))(v16, v18);
    }

    else
    {
      v46 = 2;
      sub_10033AEB0();
      v27 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v32 + 8))(v4, v33);
      return (*(v39 + 8))(v16, v27);
    }
  }

  else
  {
    v21 = v29;
    v22 = sub_1000F24EC(&qword_100ADF380);
    v23 = v34;
    (*(v36 + 32))(v37, &v13[*(v22 + 48)], v34);
    v44 = 0;
    sub_10033AFBC();
    v24 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = 0;
    v25 = v35;
    v26 = v41;
    KeyedEncodingContainer.encode(_:forKey:)();

    if (!v26)
    {
      v42 = 1;
      sub_10033AE14(&qword_100AD8280, &type metadata accessor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v21 + 8))(v9, v25);
    (*(v36 + 8))(v37, v23);
    return (*(v39 + 8))(v16, v24);
  }
}

void sub_100334198()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033ADB0(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(2uLL);
    }
  }

  else
  {
    v9 = sub_1000F24EC(&qword_100ADF380);
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    Hasher._combine(_:)(0);
    String.hash(into:)();

    sub_10033AE14(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1003343B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = sub_1000F24EC(&qword_100ADF388);
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v51 - v3;
  v4 = sub_1000F24EC(&qword_100ADF390);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v64 = &v51 - v5;
  v63 = sub_1000F24EC(&qword_100ADF398);
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v51 - v6;
  v7 = sub_1000F24EC(&qword_100ADF3A0);
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v10);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = a1[3];
  v67 = a1;
  sub_10000CA14(a1, v19);
  sub_10033AE5C();
  v20 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v52 = v12;
    v53 = v15;
    v21 = v63;
    v22 = v64;
    v23 = v62;
    v54 = v18;
    v66 = v10;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v68 = v24;
    v69 = v24 + 32;
    v70 = 0;
    v71 = v25;
    v26 = sub_1007FDC7C();
    v27 = v7;
    v28 = v9;
    if (v26 == 3 || v70 != v71 >> 1)
    {
      v33 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      sub_1000F24EC(&qword_100AD8100);
      *v35 = v66;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
      swift_willThrow();
      (*(v65 + 8))(v28, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v72 = 1;
          sub_10033AF68();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v29 = v57;
          v30 = KeyedDecodingContainer.decode(_:forKey:)();
          v31 = v22;
          v32 = v65;
          v43 = v42;
          (*(v56 + 8))(v31, v29);
          (*(v32 + 8))(v9, v7);
          swift_unknownObjectRelease();
          v44 = v52;
          *v52 = v30;
          *(v44 + 8) = v43;
          swift_storeEnumTagMultiPayload();
          v45 = v54;
          sub_10033AF04(v44, v54);
        }

        else
        {
          v72 = 2;
          sub_10033AEB0();
          v41 = v60;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v55 + 8))(v41, v58);
          (*(v65 + 8))(v28, v7);
          swift_unknownObjectRelease();
          v45 = v54;
          swift_storeEnumTagMultiPayload();
        }

        v37 = v61;
      }

      else
      {
        v72 = 0;
        sub_10033AFBC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v37 = v61;
        v72 = 0;
        v38 = KeyedDecodingContainer.decode(_:forKey:)();
        v39 = v23;
        v40 = v65;
        v46 = v38;
        v48 = v47;
        v64 = *(sub_1000F24EC(&qword_100ADF380) + 48);
        v49 = v53;
        *v53 = v46;
        v49[1] = v48;
        v60 = v48;
        v50 = v49;
        type metadata accessor for UUID();
        v72 = 1;
        sub_10033AE14(&qword_100AD81F0, &type metadata accessor for UUID);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v59 + 8))(v39, v21);
        (*(v40 + 8))(v28, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v54;
        sub_10033AF04(v50, v54);
      }

      sub_10033AF04(v45, v37);
    }
  }

  return sub_10000BA7C(v67);
}

uint64_t sub_100334B94()
{
  v1 = 0x7250746567646977;
  if (*v0 != 1)
  {
    v1 = 0x50676E69646E6570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746172656E6567;
  }
}

uint64_t sub_100334C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10033B534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100334C38(uint64_t a1)
{
  v2 = sub_10033AE5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100334C74(uint64_t a1)
{
  v2 = sub_10033AE5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100334CB0()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_100334CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100334DAC(uint64_t a1)
{
  v2 = sub_10033AFBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100334DE8(uint64_t a1)
{
  v2 = sub_10033AFBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100334E24(uint64_t a1)
{
  v2 = sub_10033AEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100334E60(uint64_t a1)
{
  v2 = sub_10033AEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100334EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100334F34(uint64_t a1)
{
  v2 = sub_10033AF68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100334F70(uint64_t a1)
{
  v2 = sub_10033AF68();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100334FAC()
{
  Hasher.init(_seed:)();
  sub_100334198();
  return Hasher._finalize()();
}

Swift::Int sub_100334FF0()
{
  Hasher.init(_seed:)();
  sub_100334198();
  return Hasher._finalize()();
}

uint64_t sub_100335060()
{
  v27 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v28 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000F24EC(&qword_100ADF400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v12 = v29;
  LOBYTE(v29) = 0;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v13 = NSDiffableDataSourceSectionSnapshot.items.getter();
  result = (*(v9 + 8))(v11, v8);
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v26 = *(v13 + 16);
    while (v16 < *(v13 + 16))
    {
      v18 = (*(v0 + 80) + 32) & ~*(v0 + 80);
      v19 = *(v0 + 72);
      sub_10033ADB0(v13 + v18 + v19 * v16, v7);
      sub_10033ADB0(v7, v4);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10033B010(v4);
        result = sub_10033B010(v7);
      }

      else
      {

        v20 = *(sub_1000F24EC(&qword_100ADF380) + 48);
        v21 = type metadata accessor for UUID();
        (*(*(v21 - 8) + 8))(&v4[v20], v21);
        sub_10033AF04(v7, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100199F20(0, *(v17 + 2) + 1, 1);
          v17 = v29;
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_100199F20(v23 > 1, v24 + 1, 1);
          v17 = v29;
        }

        *(v17 + 2) = v24 + 1;
        result = sub_10033AF04(v28, v17 + v18 + v24 * v19);
        v15 = v26;
      }

      if (v15 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_13:

    v25 = *(v17 + 2);

    return v25;
  }

  return result;
}

uint64_t sub_1003353E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

id sub_10033545C(char a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000F24EC(&qword_100ADF378);
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl;
  *&v1[v6] = [objc_allocWithZone(UIPageControl) init];
  v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_maxPrompts] = 3;
  v7 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_tokenGenerator;
  type metadata accessor for JournalTokenGenerator();
  v8 = swift_allocObject();
  v8[4] = 0;
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalFollowUpPromptsID.getter();
  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  v8[2] = 0xD000000000000041;
  v8[3] = 0x80000001008EBFF0;
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000F24EC(&qword_100ADF298);
  UIViewController.ViewLoading.init()();
  v9 = &v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerTitle];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v9 = String.init(localized:table:bundle:locale:comment:)();
  v9[1] = v10;
  v11 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts;
  v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts] = 0;
  v12 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_widgetPrompts;
  sub_1000F24EC(&unk_100AD9A60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100941FE0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v13 + 32) = String.init(localized:table:bundle:locale:comment:)();
  *(v13 + 40) = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v13 + 48) = String.init(localized:table:bundle:locale:comment:)();
  *(v13 + 56) = v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v13 + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(v13 + 72) = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v13 + 80) = String.init(localized:table:bundle:locale:comment:)();
  *(v13 + 88) = v17;
  *&v1[v12] = v13;
  v1[v11] = a1;
  v18 = [objc_allocWithZone(UICollectionViewLayout) init];
  v21.receiver = v1;
  v21.super_class = type metadata accessor for CanvasPromptPickerController(0);
  v19 = objc_msgSendSuper2(&v21, "initWithCollectionViewLayout:", v18);

  return v19;
}

void sub_1003358E8()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for CanvasPromptPickerController(0);
  objc_msgSendSuper2(&v52, "loadView");
  v2 = objc_allocWithZone(type metadata accessor for GalleryCollectionViewLayout());
  v3 = sub_100209C3C(0, 0);
  v4 = [objc_allocWithZone(UICollectionView) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v1 setCollectionView:v4];

  v5 = [v1 collectionView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 systemGroupedBackgroundColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  [v11 setCornerRadius:8.0];
  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 setShowsHorizontalScrollIndicator:0];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  [v14 setShowsVerticalScrollIndicator:0];

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v16 setAlwaysBounceVertical:0];

  v18 = [v1 collectionView];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  [v18 setDelegate:v1];

  v20 = [v1 collectionView];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [v1 collectionView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  [v22 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  v24 = [v1 collectionView];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v24;
  [v24 setDecelerationRate:UIScrollViewDecelerationRateFast];

  v26 = *&v1[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl];
  v27 = [v7 secondarySystemFillColor];
  [v26 setPageIndicatorTintColor:v27];

  v28 = [v7 labelColor];
  [v26 setCurrentPageIndicatorTintColor:v28];

  sub_100337288();
  v29 = [v1 navigationItem];
  [v29 setLargeTitleDisplayMode:2];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v31 setDataSource:v51];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v32;
  [v32 addSubview:v26];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [v26 centerXAnchor];
  v37 = [v35 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  [v38 setActive:1];
  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;
    [v39 bringSubviewToFront:v26];

    sub_1000065A8(0, &qword_100AD4420);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v26 addAction:v42 forControlEvents:{4096, 0, 0, 0, sub_10033B52C, v41}];

    v43 = [v1 navigationItem];
    v44 = String._bridgeToObjectiveC()();
    [v43 setTitle:v44];

    v45 = [objc_allocWithZone(UINavigationBarAppearance) init];
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFontAttributeName;
    v47 = NSFontAttributeName;
    v48 = sub_10076107C();
    *(inited + 64) = sub_1000065A8(0, &qword_100AD2A78);
    *(inited + 40) = v48;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    type metadata accessor for Key(0);
    sub_10033AE14(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v45 setTitleTextAttributes:isa];

    v50 = [v1 navigationItem];
    [v50 setStandardAppearance:v45];

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_100336094()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003363AC();
  }
}

void sub_100336130(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    type metadata accessor for PromptCollectionViewCell();
    v5 = swift_dynamicCastClass();
    if (v5 && (v6 = [*(v5 + OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView) text]) != 0)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = v2 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v2, v8, v10, ObjectType, v12);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

id sub_1003363AC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl] currentPage];
  IndexPath.init(item:section:)();
  result = [v0 collectionView];
  if (result)
  {
    v11 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];

    if ((*(v1 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts) & 1) == 0)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      type metadata accessor for MainActor();
      v14 = v1;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_1003E9628(0, 0, v4, &unk_100950738, v16);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003365F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100336690, v6, v5);
}

uint64_t sub_100336690()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl) currentPage];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100336748;

  return sub_100336868(v1, 0);
}

uint64_t sub_100336748()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10021A4AC, v3, v2);
}

uint64_t sub_100336868(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return _swift_task_switch(sub_100336904, v5, v4);
}

id sub_100336904()
{
  if ((*(*(v0 + 48) + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts) & 1) != 0 || sub_100335060() > 2)
  {
    goto LABEL_18;
  }

  if (qword_100ACFC88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = sub_10000617C(v2, qword_100ADF1F8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [*&v7[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl] numberOfPages];

    _os_log_impl(&_mh_execute_header, v4, v5, "Have %ld pages", v8, 0xCu);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking if prompt needed for page: %ld", v12, 0xCu);
  }

  v13 = *(v0 + 120);

  v14 = *(v0 + 48);
  if (v13 & 1) == 0 && (*(v14 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt))
  {
    goto LABEL_18;
  }

  result = [*(v14 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl) numberOfPages];
  if (__OFSUB__(result, 2))
  {
    __break(1u);
    return result;
  }

  if (result - 2 > *(v0 + 40) || (v16 = *(v0 + 48) + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerDelegate, !swift_unknownObjectWeakLoadStrong()))
  {
LABEL_18:

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 16))(ObjectType, v18);
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt;
    *(v0 + 88) = v22;
    *(v0 + 96) = v23;
    *(v17 + v23) = 1;
    v24 = swift_task_alloc();
    *(v0 + 104) = v24;
    *v24 = v0;
    v24[1] = sub_100336C30;

    return sub_100339B9C(v20, v22);
  }
}

uint64_t sub_100336C30(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[14] = a2;

  v5 = v3[9];
  v6 = v3[8];

  return _swift_task_switch(sub_100336D7C, v6, v5);
}

uint64_t sub_100336D7C()
{
  v1 = v0[14];

  if (v1)
  {
    v2 = (v0[6] + v0[12]);
    sub_1003389B0(v0[3], v0[14]);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get prompt from LLM!", v5, 2u);
    }

    v6 = v0[12];
    v7 = v0[6];

    v2 = (v7 + v6);
  }

  *v2 = 0;
  v8 = v0[1];

  return v8();
}

uint64_t sub_100336E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001F0D04;

  return sub_100336868(a5, 0);
}

uint64_t sub_100336F54()
{
  v1 = v0;
  v2 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000F24EC(&qword_100ADF410);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v10 = v26;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.deleteAllItems()();
  v25 = v9;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A58BA8);
  v11 = *(v1 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_widgetPrompts);
  v12 = *(v11 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = v6;
    v24 = v1;
    v26 = _swiftEmptyArrayStorage;
    sub_100199F20(0, v12, 0);
    v13 = v26;
    v14 = (v11 + 40);
    do
    {
      v15 = *v14;
      *v5 = *(v14 - 1);
      v5[1] = v15;
      swift_storeEnumTagMultiPayload();
      v26 = v13;
      v16 = *(v13 + 2);
      v17 = *(v13 + 3);

      if (v16 >= v17 >> 1)
      {
        sub_100199F20(v17 > 1, v16 + 1, 1);
        v13 = v26;
      }

      *(v13 + 2) = v16 + 1;
      sub_10033AF04(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16);
      v14 += 2;
      --v12;
    }

    while (v12);
    v6 = v23;
    v7 = v22;
  }

  LOBYTE(v26) = 2;
  v18 = v25;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v19 = v26;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  sub_1003394C8(1);
  return (*(v7 + 8))(v18, v6);
}

id sub_100337288()
{
  v42 = sub_1000F24EC(&qword_100ADF418);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v1;
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = sub_1000F24EC(&qword_100ADF420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  type metadata accessor for PromptCollectionViewCell();
  type metadata accessor for CanvasPromptPickerController.Item(0);
  UICollectionView.CellRegistration.init(handler:)();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for PendingPromptCollectionViewCell();
  UICollectionView.CellRegistration.init(handler:)();
  v43 = v0;
  result = [v0 collectionView];
  v39 = result;
  if (result)
  {
    v18 = *(v6 + 16);
    v35 = v10;
    v36 = v16;
    v18(v10, v16, v5);
    v19 = v45;
    v20 = *(v45 + 16);
    v21 = v40;
    v38 = v4;
    v22 = v42;
    v20(v40, v4, v42);
    v37 = v13;
    v18(v44, v13, v5);
    v23 = *(v6 + 80);
    v24 = (v23 + 16) & ~v23;
    v25 = (v7 + *(v19 + 80) + v24) & ~*(v19 + 80);
    v26 = (v41 + v23 + v25) & ~v23;
    v27 = swift_allocObject();
    v41 = v6;
    v28 = *(v6 + 32);
    v28(v27 + v24, v35, v5);
    v29 = v27 + v25;
    v30 = v22;
    (*(v19 + 32))(v29, v21, v22);
    v28(v27 + v26, v44, v5);
    v31 = objc_allocWithZone(sub_1000F24EC(&qword_100ADF298));
    v32 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v32;
    v33 = v43;
    static UIViewController.ViewLoading.subscript.setter();
    if (v33[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts] == 1)
    {
      sub_100336F54();
    }

    else
    {
      sub_100337C00();
    }

    (*(v45 + 8))(v38, v30);
    v34 = *(v41 + 8);
    v34(v37, v5);
    return (v34)(v36, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100337720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033ADB0(a3, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10033B010(v7);
  }

  else
  {
    v8 = *(sub_1000F24EC(&qword_100ADF380) + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
    v10 = *(a1 + OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView);
    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];
  }
}

void sub_100337860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033ADB0(a3, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView);
    v9 = String._bridgeToObjectiveC()();

    [v8 setText:v9];
  }

  else
  {
    sub_10033B010(v7);
  }
}

uint64_t sub_100337948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&qword_100ADF408);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033ADB0(a3, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10033B010(v10);
      sub_10033ADB0(a3, v6);
      (*(v8 + 56))(v6, 0, 1, v7);
      type metadata accessor for PromptCollectionViewCell();
    }

    else
    {
      sub_10033ADB0(a3, v6);
      (*(v8 + 56))(v6, 0, 1, v7);
      type metadata accessor for PendingPromptCollectionViewCell();
    }

    v13 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100004F84(v6, &qword_100ADF408);
  }

  else
  {

    v12 = *(sub_1000F24EC(&qword_100ADF380) + 48);
    sub_10033ADB0(a3, v6);
    (*(v8 + 56))(v6, 0, 1, v7);
    type metadata accessor for PromptCollectionViewCell();
    v13 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100004F84(v6, &qword_100ADF408);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(&v10[v12], v14);
  }

  return v13;
}

uint64_t sub_100337C00()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1000F24EC(&qword_100ADF410);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.deleteAllItems()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A58BD0);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v10 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  sub_100339188();
  sub_1003394C8(0);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_1003E9628(0, 0, v4, &unk_1009506F0, v14);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100337EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100337F54, v6, v5);
}

uint64_t sub_100337F54()
{
  v0[7] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v2;
  v0[9] = v1;

  return _swift_task_switch(sub_100337FE0, v2, v1);
}

uint64_t sub_100337FE0()
{
  v1 = v0[2];
  v2 = static MainActor.shared.getter();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = 2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1003380E0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, v2, &protocol witness table for MainActor, &unk_100950700, v3, &type metadata for () + 8);
}

uint64_t sub_1003380E0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100338240, v3, v2);
}

uint64_t sub_100338240()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1000EC728, v1, v2);
}

uint64_t sub_1003382A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_1000F24EC(&qword_100AD5170);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100338384, v6, v5);
}

uint64_t sub_100338384()
{
  v1 = *(v0 + 80);

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + 80))
    {
      v24 = **(v0 + 72);
      v3 = type metadata accessor for TaskPriority();
      v4 = 0;
      v5 = *(v3 - 8);
      v23 = *(v5 + 56);
      v6 = (v5 + 48);
      v22 = (v5 + 8);
      do
      {
        v11 = *(v0 + 96);
        v10 = *(v0 + 104);
        v23(v10, 1, 1, v3);
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = swift_allocObject();
        v13[2] = 0;
        v14 = v13 + 2;
        v13[3] = 0;
        v13[4] = v12;
        sub_1001E6194(v10, v11);
        v15 = (*v6)(v11, 1, v3);
        v16 = *(v0 + 96);
        if (v15 == 1)
        {
          sub_100004F84(*(v0 + 96), &qword_100AD5170);
          if (!*v14)
          {
            goto LABEL_10;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v22)(v16, v3);
          if (!*v14)
          {
LABEL_10:
            v17 = 0;
            v19 = 0;
            goto LABEL_11;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
LABEL_11:
        v20 = swift_allocObject();
        *(v20 + 16) = &unk_100950710;
        *(v20 + 24) = v13;

        if (v19 | v17)
        {
          v7 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v17;
          *(v0 + 40) = v19;
        }

        else
        {
          v7 = 0;
        }

        ++v4;
        v8 = *(v0 + 104);
        v9 = *(v0 + 80);
        *(v0 + 48) = 1;
        *(v0 + 56) = v7;
        *(v0 + 64) = v24;
        swift_task_create();

        sub_100004F84(v8, &qword_100AD5170);
      }

      while (v4 != v9);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  return result;
}

uint64_t sub_1003386A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = *(Strong + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl);
    type metadata accessor for MainActor();
    v0[8] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003387A0, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003387A0()
{
  v1 = *(v0 + 56);

  v2 = [v1 currentPage];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_100338854;

  return sub_100336868(v2, 1);
}

uint64_t sub_100338854()
{

  return _swift_task_switch(sub_100338950, 0, 0);
}

uint64_t sub_100338950()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1003389B0(uint64_t a1, unint64_t a2)
{
  v72 = a2;
  v74 = a1;
  v3 = sub_1000F24EC(&qword_100ADF408);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v6 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  __chkstk_darwin(v16);
  v18 = (&v65 - v17);
  v19 = sub_1000F24EC(&qword_100ADF400);
  v70 = *(v19 - 8);
  __chkstk_darwin(v19);
  v69 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  result = sub_100335060();
  if (result <= 2)
  {
    v66 = v5;
    v73 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v2;
    static UIViewController.ViewLoading.subscript.getter();

    v25 = v76;
    LOBYTE(v76) = 0;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    sub_1000F24EC(&qword_100ADF380);
    v26 = v72;
    *v18 = v74;
    v18[1] = v26;

    UUID.init()();
    v75 = v18;
    v71 = v6;
    swift_storeEnumTagMultiPayload();
    v67 = v19;
    v27 = NSDiffableDataSourceSectionSnapshot.items.getter();
    v28 = 0;
    v29 = *(v27 + 16);
    while (v29 != v28)
    {
      v30 = v28 + 1;
      v31 = sub_10033A764(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, v75);
      v28 = v30;
      if (v31)
      {
        v12 = v23;

        if (qword_100ACFC88 == -1)
        {
LABEL_6:
          v32 = type metadata accessor for Logger();
          sub_10000617C(v32, qword_100ADF1F8);

          v33 = v26;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.fault.getter();

          v36 = os_log_type_enabled(v34, v35);
          v37 = v67;
          v39 = v74;
          v38 = v75;
          if (v36)
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v76 = v41;
            *v40 = 136315138;
            *(v40 + 4) = sub_100008458(v39, v33, &v76);
            _os_log_impl(&_mh_execute_header, v34, v35, "Attemping to add duplicate prompt: %s\nAborting!", v40, 0xCu);
            sub_10000BA7C(v41);
          }

          sub_10033B010(v38);
          result = (*(v70 + 8))(v12, v37);
          *(v68 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt) = 0;
          return result;
        }

LABEL_24:
        swift_once();
        goto LABEL_6;
      }
    }

    sub_1000F24EC(&qword_100AD6638);
    v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100940080;
    sub_10033ADB0(v75, v43 + v42);
    v44 = v66;
    (*(v7 + 56))(v66, 1, 1, v71);
    v45 = v67;
    v65 = v23;
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();

    sub_100004F84(v44, &qword_100ADF408);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v46 = v76;
    LOBYTE(v76) = 0;
    v47 = v69;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    v48 = NSDiffableDataSourceSectionSnapshot.items.getter();
    v69 = *(v70 + 8);
    v70 += 8;
    (v69)(v47, v45);
    v49 = v48;
    v74 = *(v48 + 16);
    if (v74)
    {
      v50 = 0;
      v51 = v48 + v42;
      v52 = _swiftEmptyArrayStorage;
      v53 = v72;
      v54 = v73;
      v26 = v42;
      while (v50 < *(v49 + 16))
      {
        v55 = v49;
        sub_10033ADB0(v51, v15);
        sub_10033ADB0(v15, v12);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_10033B010(v12);
          sub_10033AF04(v15, v54);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100199F20(0, *(v52 + 2) + 1, 1);
            v52 = v76;
          }

          v57 = v26;
          v59 = *(v52 + 2);
          v58 = *(v52 + 3);
          if (v59 >= v58 >> 1)
          {
            sub_100199F20(v58 > 1, v59 + 1, 1);
            v57 = v26;
            v52 = v76;
          }

          *(v52 + 2) = v59 + 1;
          v54 = v73;
          v60 = v52 + v57 + v59 * v72;
          v53 = v72;
          sub_10033AF04(v73, v60);
        }

        else
        {
          sub_10033B010(v15);
          sub_10033B010(v12);
        }

        ++v50;
        v51 += v53;
        v49 = v55;
        if (v74 == v50)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v52 = _swiftEmptyArrayStorage;
LABEL_21:

    v61 = v67;
    v62 = v65;
    NSDiffableDataSourceSectionSnapshot.delete(_:)(v52);

    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v68;
    static UIViewController.ViewLoading.subscript.getter();

    v64 = v76;
    LOBYTE(v76) = 0;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

    *(v63 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt) = 0;
    sub_100339188();
    sub_1003394C8(0);
    sub_10033B010(v75);
    return (v69)(v62, v61);
  }

  return result;
}

void sub_100339188()
{
  v1 = sub_1000F24EC(&qword_100ADF408);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADF400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts) & 1) == 0 && sub_100335060() <= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v12 = v17;
    LOBYTE(v17) = 0;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD6638);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100940080;
    sub_10033ADB0(v7, v14 + v13);
    (*(v5 + 56))(v3, 1, 1, v4);
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();

    sub_100004F84(v3, &qword_100ADF408);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v15 = v17;
    LOBYTE(v17) = 0;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

    sub_10033B010(v7);
    (*(v9 + 8))(v11, v8);
  }
}

void *sub_1003394C8(int a1)
{
  LODWORD(i) = a1;
  v54 = type metadata accessor for CanvasPromptPickerController.Item(0);
  v58 = *(v54 - 8);
  __chkstk_darwin(v54);
  v3 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = v50 - v5;
  __chkstk_darwin(v6);
  v8 = v50 - v7;
  v9 = sub_1000F24EC(&qword_100ADF3F0);
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v57 = (v50 - v10);
  v11 = sub_1000F24EC(&qword_100ADF3F8);
  __chkstk_darwin(v11 - 8);
  v62 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v50 - v14);
  v16 = sub_1000F24EC(&qword_100ADF400);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v59 = *(v1 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v1;
  static UIViewController.ViewLoading.subscript.getter();

  v22 = v64;
  v23 = i;
  LOBYTE(v64) = i & 1;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v24 = NSDiffableDataSourceSectionSnapshot.items.getter();
  v26 = *(v17 + 8);
  v25 = v17 + 8;
  v52 = v26;
  v26(v21, v16);
  v27 = *(v24 + 16);

  result = [v59 setNumberOfPages:v27];
  if (v23)
  {
    return result;
  }

  v50[1] = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v29 = v64;
  LOBYTE(v64) = 0;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v51 = v16;
  result = NSDiffableDataSourceSectionSnapshot.items.getter();
  v30 = 0;
  v31 = result[2];
  v32 = (v55 + 56);
  v33 = (v55 + 48);
  v55 = "CanvasPromptPicker";
  v56 = v3;
  v34 = v63;
  v60 = v31;
  for (i = result; ; result = i)
  {
    if (v30 == v31)
    {
      v39 = 1;
      v30 = v31;
      v40 = v62;
      goto LABEL_10;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v30 >= result[2])
    {
      goto LABEL_21;
    }

    v41 = v57;
    v42 = result + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30;
    v43 = *(v9 + 48);
    *v57 = v30;
    sub_10033ADB0(v42, v41 + v43);
    v44 = v41;
    v40 = v62;
    sub_100021CEC(v44, v62, &qword_100ADF3F0);
    v39 = 0;
    ++v30;
    v34 = v63;
LABEL_10:
    (*v32)(v40, v39, 1, v9);
    sub_100021CEC(v40, v15, &qword_100ADF3F8);
    if ((*v33)(v15, 1, v9) == 1)
    {
      v52(v53, v51);
    }

    v45 = *v15;
    sub_10033AF04(v15 + *(v9 + 48), v8);
    sub_10033ADB0(v8, v34);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10033B010(v34);
      sub_10033ADB0(v8, v3);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10033B010(v3);
        v46 = String._bridgeToObjectiveC()();
        v47 = [objc_opt_self() systemImageNamed:v46];

        if (v47)
        {
          v48 = [objc_opt_self() secondarySystemFillColor];
          v49 = [v47 imageWithTintColor:v48];
        }

        else
        {
          v49 = 0;
        }

        [v59 setIndicatorImage:v49 forPage:v45];

        v38 = v8;
        v3 = v56;
        v34 = v63;
      }

      else
      {
        sub_10033B010(v8);
        v38 = v3;
      }
    }

    else
    {

      v35 = *(sub_1000F24EC(&qword_100ADF380) + 48);
      v36 = type metadata accessor for UUID();
      v37 = &v63[v35];
      v34 = v63;
      (*(*(v36 - 8) + 8))(v37, v36);
      [v59 setIndicatorImage:0 forPage:v45];
      v38 = v8;
    }

    sub_10033B010(v38);
    v31 = v60;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100339B9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100339C38, v5, v4);
}

uint64_t sub_100339C38()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_tokenGenerator);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100339CE4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1002221F4(v1, v3, v4);
}

uint64_t sub_100339CE4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = v2;

  if (v2)
  {

    v6 = v5[6];
    v7 = v5[7];
    v8 = sub_100339F28;
  }

  else
  {
    if (v4[5])
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v10;
    }

    else
    {
      v9 = 0;
      v7 = 0;
    }

    v8 = sub_100339E58;
    v6 = v9;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100339E58()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100339EBC, v1, v2);
}

uint64_t sub_100339EBC()
{
  v1 = v0[10];

  v2 = v0[9];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100339F28()
{

  if (qword_100ACFC88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADF1F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not parse the response from LLM %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 0);
}

id sub_10033A13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasPromptPickerController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10033A268()
{
  sub_10033A34C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033A34C()
{
  if (!qword_100ADF290)
  {
    sub_1000F2A18(&qword_100ADF298);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADF290);
    }
  }
}

void sub_10033A3D0()
{
  sub_10033A444();
  if (v0 <= 0x3F)
  {
    sub_10033A4B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10033A444()
{
  if (!qword_100ADF320)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100ADF320);
    }
  }
}

void *sub_10033A4B0()
{
  result = qword_100ADF328;
  if (!qword_100ADF328)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100ADF328);
  }

  return result;
}

unint64_t sub_10033A4F4()
{
  result = qword_100ADF358;
  if (!qword_100ADF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF358);
  }

  return result;
}

unint64_t sub_10033A54C()
{
  result = qword_100ADF360;
  if (!qword_100ADF360)
  {
    sub_1000F2A18(&qword_100ADF368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF360);
  }

  return result;
}

void sub_10033A5F8(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10033A66C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10033A6EC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

uint64_t sub_10033A764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for CanvasPromptPickerController.Item(0);
  __chkstk_darwin(v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_1000F24EC(&qword_100ADF3E8);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v20 = (&v42 + *(v19 + 56) - v17);
  sub_10033ADB0(a1, &v42 - v17);
  sub_10033ADB0(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v6;
    sub_10033ADB0(v18, v15);
    v27 = *v15;
    v26 = *(v15 + 1);
    v28 = *(sub_1000F24EC(&qword_100ADF380) + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v20[1];
      v42 = *v20;
      v43 = v27;
      v31 = *(v45 + 32);
      v32 = &v15[v28];
      v33 = v9;
      v34 = v9;
      v35 = v4;
      v31(v34, v32, v4);
      v36 = v44;
      v31(v44, v20 + v28, v35);
      if (v43 == v42 && v26 == v30)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          v39 = *(v45 + 8);
          v39(v36, v35);
          v39(v33, v35);
LABEL_22:
          sub_10033B010(v18);
          goto LABEL_15;
        }
      }

      v29 = static UUID.== infix(_:_:)();
      v40 = *(v45 + 8);
      v40(v36, v35);
      v40(v33, v35);
      sub_10033B010(v18);
      return v29 & 1;
    }

    (*(v45 + 8))(&v15[v28], v4);
LABEL_12:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10033ADB0(v18, v12);
    v22 = *v12;
    v23 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v22 != *v20 || v23 != v20[1])
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

LABEL_24:
      sub_10033B010(v18);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  sub_100004F84(v18, &qword_100ADF3E8);
LABEL_15:
  v29 = 0;
  return v29 & 1;
}

id sub_10033AB70()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = IndexPath.item.getter();
  v5 = *&v0[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl];
  result = [v5 currentPage];
  if (result != v4)
  {
    if ((v0[OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts] & 1) == 0)
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      type metadata accessor for MainActor();
      v8 = v0;
      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v8;
      v10[5] = v4;
      sub_1003E9628(0, 0, v3, &unk_1009505F8, v10);
    }

    return [v5 setCurrentPage:v4];
  }

  return result;
}

uint64_t sub_10033ACF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100336E94(a1, v4, v5, v7, v6);
}

uint64_t sub_10033ADB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPromptPickerController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033AE14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10033AE5C()
{
  result = qword_100ADF3A8;
  if (!qword_100ADF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF3A8);
  }

  return result;
}

unint64_t sub_10033AEB0()
{
  result = qword_100ADF3B0;
  if (!qword_100ADF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF3B0);
  }

  return result;
}

uint64_t sub_10033AF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPromptPickerController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10033AF68()
{
  result = qword_100ADF3B8;
  if (!qword_100ADF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF3B8);
  }

  return result;
}

unint64_t sub_10033AFBC()
{
  result = qword_100ADF3C0;
  if (!qword_100ADF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF3C0);
  }

  return result;
}

uint64_t sub_10033B010(uint64_t a1)
{
  v2 = type metadata accessor for CanvasPromptPickerController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033B06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100337EB8(a1, v4, v5, v6);
}

uint64_t sub_10033B120(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_1003382A4(a1, a2, v7, v6);
}

uint64_t sub_10033B1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100338684(a1, v4, v5, v6);
}

uint64_t sub_10033B288(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_1007B2660(a1, v4);
}

uint64_t sub_10033B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADF420);
  sub_1000F24EC(&qword_100ADF418);

  return sub_100337948(a1, a2, a3);
}

uint64_t sub_10033B478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003365F8(a1, v4, v5, v6);
}

uint64_t sub_10033B534(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746172656E6567 && a2 == 0xEF74706D6F725064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250746567646977 && a2 == 0xEC00000074706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xED000074706D6F72)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_10033B660()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100ADF378);
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pageControl;
  *(v0 + v4) = [objc_allocWithZone(UIPageControl) init];
  *(v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_awaitingPrompt) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_maxPrompts) = 3;
  v5 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_tokenGenerator;
  type metadata accessor for JournalTokenGenerator();
  v6 = swift_allocObject();
  v6[4] = 0;
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalFollowUpPromptsID.getter();
  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  v6[2] = 0xD000000000000041;
  v6[3] = 0x80000001008EBFF0;
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1000F24EC(&qword_100ADF298);
  UIViewController.ViewLoading.init()();
  v7 = (v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_pickerTitle);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v7 = String.init(localized:table:bundle:locale:comment:)();
  v7[1] = v8;
  *(v0 + OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_showingWidgetPrompts) = 0;
  v9 = OBJC_IVAR____TtC7Journal28CanvasPromptPickerController_widgetPrompts;
  sub_1000F24EC(&unk_100AD9A60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100941FE0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v10 + 32) = String.init(localized:table:bundle:locale:comment:)();
  *(v10 + 40) = v11;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v10 + 48) = String.init(localized:table:bundle:locale:comment:)();
  *(v10 + 56) = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v10 + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(v10 + 72) = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v10 + 80) = String.init(localized:table:bundle:locale:comment:)();
  *(v10 + 88) = v14;
  *(v0 + v9) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10033BAE8()
{
  result = qword_100ADF430;
  if (!qword_100ADF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF430);
  }

  return result;
}

unint64_t sub_10033BB40()
{
  result = qword_100ADF438;
  if (!qword_100ADF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF438);
  }

  return result;
}

unint64_t sub_10033BB98()
{
  result = qword_100ADF440;
  if (!qword_100ADF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF440);
  }

  return result;
}

unint64_t sub_10033BBF0()
{
  result = qword_100ADF448;
  if (!qword_100ADF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF448);
  }

  return result;
}

unint64_t sub_10033BC48()
{
  result = qword_100ADF450;
  if (!qword_100ADF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF450);
  }

  return result;
}

unint64_t sub_10033BCA0()
{
  result = qword_100ADF458;
  if (!qword_100ADF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF458);
  }

  return result;
}

unint64_t sub_10033BCF8()
{
  result = qword_100ADF460;
  if (!qword_100ADF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF460);
  }

  return result;
}

unint64_t sub_10033BD50()
{
  result = qword_100ADF468;
  if (!qword_100ADF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF468);
  }

  return result;
}

unint64_t sub_10033BDA8()
{
  result = qword_100ADF470;
  if (!qword_100ADF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF470);
  }

  return result;
}

unint64_t sub_10033BE00()
{
  result = qword_100ADF478;
  if (!qword_100ADF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF478);
  }

  return result;
}

unint64_t sub_10033BE58()
{
  result = qword_100ADF480;
  if (!qword_100ADF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF480);
  }

  return result;
}

char *sub_10033BEAC(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a4;
  v12 = sub_1000F24EC(&qword_100ADA938);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for GenericMapThumbnailCacheOperation());
  sub_1006AAA94(v14);
  sub_100021CEC(v14, v15 + qword_100B2FB10, &qword_100ADA938);
  v16 = v6;

  v17 = a6;
  return sub_1000771E8(v16, a1, a2, a3 & 1, v20, a5, v17);
}

uint64_t sub_10033BFCC(int a1, unsigned __int8 a2, id a3)
{
  [a3 userInterfaceStyle];
  type metadata accessor for UUID();
  sub_10033D2DC(&qword_100AE19B0, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = 0x656772614C78;
  v9 = 0xE500000000000000;
  v10 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v10 = 0x657263536C6C7566;
    v9 = 0xEA00000000006E65;
  }

  v11 = 0xE600000000000000;
  v12 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v12 = 0x61546D756964656DLL;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xEA00000000006564;
  v14 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v14 = 0x656772616CLL;
    v13 = 0xE500000000000000;
  }

  if (a2)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x6154656772614C78;
    v15 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v13 = v15;
  }

  else
  {
    v8 = v14;
  }

  if (a2 <= 3u)
  {
    v16 = v8;
  }

  else
  {
    v16 = v10;
  }

  if (a2 <= 3u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v9;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  return 0x2D626D756874;
}

uint64_t sub_10033C260()
{
  v1 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_1000F24EC(&qword_100ADA938);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for GenericMapAssetMetadata();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata))
  {
    (*(v11 + 56))(v9, 1, 1, v10, v12);
    goto LABEL_6;
  }

  sub_10025B3B4(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_100004F84(v9, &qword_100ADA938);
    return 0;
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1000F24EC(&qword_100AD38F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  GenericMapAssetMetadata.visitsData.getter();
  v16 = type metadata accessor for VisitAssetMetadata();
  v17 = *(v16 - 8);
  v24 = *(v17 + 48);
  if (v24(v6, 1, v16) == 1)
  {
    sub_100004F84(v6, &unk_100AEED20);
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  else
  {
    *(inited + 32) = VisitAssetMetadata.placeName.getter();
    *(inited + 40) = v19;
    (*(v17 + 8))(v6, v16);
  }

  GenericMapAssetMetadata.visitsData.getter();
  if (v24(v3, 1, v16) == 1)
  {
    sub_100004F84(v3, &unk_100AEED20);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  else
  {
    *(inited + 48) = VisitAssetMetadata.city.getter();
    *(inited + 56) = v20;
    (*(v17 + 8))(v3, v16);
  }

  sub_10009BB20(8236, 0xE200000000000000, inited);
  v22 = v21;
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AE4870);
  swift_arrayDestroy();
  (*(v11 + 8))(v14, v10);
  return v22;
}

id sub_10033C654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericMapAsset()
{
  result = qword_100ADF4B0;
  if (!qword_100ADF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10033C780()
{
  v1 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for VisitAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADA938);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for GenericMapAssetMetadata();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata))
  {
    (*(v12 + 56))(v10, 1, 1, v11, v13);
    goto LABEL_6;
  }

  sub_10025B3B4(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    v16 = &qword_100ADA938;
    v17 = v10;
    goto LABEL_7;
  }

  (*(v12 + 32))(v15, v10, v11);
  GenericMapAssetMetadata.visitsData.getter();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1000F24EC(&qword_100AD64A8);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100940080;
    (*(v5 + 16))(v20 + v19, v7, v4);
    v21 = sub_10011BBC8(v20);
    swift_setDeallocating();
    v22 = *(v5 + 8);
    v22(v20 + v19, v4);
    swift_deallocClassInstance();
    v22(v7, v4);
    (*(v12 + 8))(v15, v11);
    return v21;
  }

  (*(v12 + 8))(v15, v11);
  v16 = &unk_100AEED20;
  v17 = v3;
LABEL_7:
  sub_100004F84(v17, v16);
  return 0;
}

uint64_t sub_10033CBFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for VisitAssetMetadata();
  return a1;
}

char *sub_10033CC64(char *a1, uint64_t a2)
{
  v59 = a2;
  v63 = a1;
  v61 = sub_1000F24EC(&qword_100ADA928);
  __chkstk_darwin(v61);
  v60 = &v46 - v2;
  v3 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v3 - 8);
  v56 = &v46 - v4;
  v5 = type metadata accessor for GenericMapAssetMetadata();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UUID();
  v47 = *(v54 - 8);
  v7 = v47;
  __chkstk_darwin(v54);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v46 - v10;
  v11 = type metadata accessor for AssetSource();
  v51 = *(v11 - 8);
  v12 = v51;
  __chkstk_darwin(v11);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v50 = &v46 - v15;
  v17 = type metadata accessor for AssetType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v25 = *(v18 + 104);
  v48 = v17;
  v25(&v46 - v23, enum case for AssetType.genericMap(_:), v17, v22);
  v49 = *(v12 + 16);
  v49(v16, v63, v11);
  v26 = v62;
  UUID.init()();
  v27 = objc_allocWithZone(type metadata accessor for GenericMapAsset());
  *&v27[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = 0;
  v28 = *(v7 + 16);
  v29 = v52;
  v30 = v54;
  v28(v52, v26, v54);
  (*(v18 + 16))(v20, v24, v17);
  v31 = v53;
  v32 = v50;
  v49(v53, v50, v11);
  v33 = sub_100285908(v29, v20, v31);
  (*(v47 + 8))(v62, v30);
  v34 = *(v51 + 8);
  v34(v32, v11);
  (*(v18 + 8))(v24, v48);
  v35 = type metadata accessor for VisitAssetMetadata();
  v36 = *(v35 - 8);
  v37 = v56;
  v38 = v59;
  (*(v36 + 16))(v56, v59, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v39 = v33;
  v40 = v55;
  GenericMapAssetMetadata.init(visitsData:)();
  (*(v36 + 8))(v38, v35);
  v34(v63, v11);
  v41 = v60;
  (*(v57 + 32))(v60, v40, v58);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100ADF500);
  v42 = swift_allocObject();
  v43 = *(*v42 + 104);
  v44 = sub_1000F24EC(&qword_100ADA938);
  (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
  *(v42 + *(*v42 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v41, v42 + *(*v42 + 120), &qword_100ADA928);
  *&v39[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = v42;

  return v39;
}

uint64_t sub_10033D2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10033D324()
{
  sub_10033EA18();
  result = sub_10033E088();
  v2 = *(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v5 = *&v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v4 = sub_10034040C;
    v4[1] = v3;
    v6 = v2;

    sub_100004DF8(v5);
  }

  return result;
}

void sub_10033D3F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10033EA18();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_10033E088();
  }
}

id sub_10033D470(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView;
  *&v4[v11] = [objc_allocWithZone(UIStackView) init];
  v12 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  type metadata accessor for MaskedBlurView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView;
  type metadata accessor for ConfettiHostingIndicatorView();
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_shortDateString];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] = 0;
  *&v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleFont] = 0;
  *&v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset] = 0;
  v20 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_latestImageRequestID;
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ConfettiAssetView();
  v22 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_10033D8FC();

  return v22;
}

id sub_10033D6C0(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView;
  *&v1[v5] = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  type metadata accessor for MaskedBlurView();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView;
  type metadata accessor for ConfettiHostingIndicatorView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_shortDateString];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] = 0;
  *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleFont] = 0;
  *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset] = 0;
  v14 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_latestImageRequestID;
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ConfettiAssetView();
  v16 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    sub_10033D8FC();
  }

  return v17;
}

void sub_10033D8FC()
{
  sub_1000F24EC(&unk_100AEBEC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v1 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v40[3] = type metadata accessor for ConfettiAssetView();
  v40[0] = v0;
  v2 = v0;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v40);
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  v5 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v2 addSubview:*&v2[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v6 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView];
  [v2 addSubview:v6];
  v7 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView];
  [v2 addSubview:v7];
  v8 = *&v2[v5];
  sub_100013178(0.0);

  sub_100013178(0.0);

  [v6 setAlpha:0.0];
  [v7 setAlpha:0.0];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  [v6 setIsAccessibilityElement:1];
  v9 = UIAccessibilityTraitImage;
  v10 = [v6 accessibilityTraits];
  if ((v9 & ~v10) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [v6 setAccessibilityTraits:v11 | v10];
  [v6 setAccessibilityIgnoresInvertColors:1];
  v12 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView;
  [v2 addSubview:*&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView]];
  v13 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  [v13 setAxis:1];
  v14 = [*(*&v2[v12] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  [v14 addSubview:v13];

  v15 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 addSubview:v15];
  v16 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  v17 = [v3 whiteColor];
  v18 = [v17 colorWithAlphaComponent:0.85];

  [v16 setTextColor:v18];
  [v16 setPreferredVibrancy:1];
  [v16 setNumberOfLines:2];
  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v13 addArrangedSubview:v16];
  v19 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  v20 = [v3 secondaryLabelColor];
  [v19 setTextColor:v20];

  [v19 setPreferredVibrancy:1];
  [v19 setAdjustsFontSizeToFitWidth:1];
  [v19 setMinimumScaleFactor:0.5];
  [v19 setNumberOfLines:1];
  [v19 setAdjustsFontForContentSizeCategory:1];
  [v19 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  [v13 addArrangedSubview:v19];
  v21 = *&v2[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel];
  v22 = [v3 secondaryLabelColor];
  [v21 setTextColor:v22];

  [v21 setPreferredVibrancy:1];
  [v21 setNumberOfLines:1];
  [v21 setAdjustsFontForContentSizeCategory:1];
  [v21 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  [v13 addArrangedSubview:v21];
  type metadata accessor for UILayoutPriority(0);
  sub_1000069AC(&qword_100AF3610, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v23) = v40[0];
  [v6 setContentCompressionResistancePriority:1 forAxis:v23];
  LODWORD(v24) = 1144750080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1144750080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v25];
  LODWORD(v26) = 1144750080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v13 setContentHuggingPriority:1 forAxis:v27];
  LODWORD(v28) = 1132068864;
  [v15 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1144750080;
  [v15 setContentHuggingPriority:0 forAxis:v29];
  v30 = [v15 superview];
  if (v30)
  {
    v31 = v30;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v15 topAnchor];
    v33 = [v31 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    [v34 setConstant:8.0];
    [v34 setActive:1];
  }

  v35 = [v15 superview];
  if (v35)
  {
    v36 = v35;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [v15 leadingAnchor];
    v38 = [v36 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:8.0];
    [v39 setActive:1];
  }
}

uint64_t sub_10033E088()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD4790);
  v3 = __chkstk_darwin(v2 - 8);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v81 = &v75 - v6;
  __chkstk_darwin(v5);
  v84 = &v75 - v7;
  v87 = type metadata accessor for Date();
  v85 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v82 = &v75 - v11;
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v14 - 8);
  v16 = &v75 - v15;
  v17 = type metadata accessor for AttributedString();
  v83 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v75 - v21;
  v23 = sub_1000F24EC(&qword_100ADA980);
  __chkstk_darwin(v23 - 8);
  v25 = &v75 - v24;
  v26 = type metadata accessor for ConfettiAssetMetadata();
  v27 = *(v26 - 8);
  result = __chkstk_darwin(v26);
  v86 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset);
  if (v30)
  {
    v31 = v1;
    v78 = v13;
    v32 = v30;
    sub_1006AC7D4(v25);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {

      return sub_100004F84(v25, &qword_100ADA980);
    }

    else
    {
      v33 = v27;
      v76 = v32;
      v77 = v26;
      v34 = *(v27 + 32);
      v35 = v86;
      v34(v86, v25, v26);
      ConfettiAssetMetadata.title.getter();
      v36 = v83;
      if ((*(v83 + 48))(v16, 1, v17) == 1)
      {
        sub_100004F84(v16, &qword_100AD8D78);
        v37 = v87;
        v38 = v31;
      }

      else
      {
        (*(v36 + 32))(v22, v16, v17);
        v39 = v36;
        v38 = v31;
        v40 = *(v31 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel);
        sub_1000065A8(0, &qword_100AE4890);
        (*(v39 + 16))(v20, v22, v17);
        v41 = NSAttributedString.init(_:)();
        [v40 setAttributedText:v41];

        sub_10005C484();
        AttributedString.subscript.getter();
        (*(v39 + 8))(v22, v17);
        v42 = *(v31 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleFont);
        *(v31 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleFont) = v88;

        v37 = v87;
      }

      v43 = v85;
      v44 = *(v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel);
      ConfettiAssetMetadata.placeName.getter();
      v45 = v84;
      if (v46)
      {
        v47 = String._bridgeToObjectiveC()();
      }

      else
      {
        v47 = 0;
      }

      [v44 setText:v47];

      ConfettiAssetMetadata.startDate.getter();
      v48 = *(v43 + 48);
      if (v48(v45, 1, v37) == 1)
      {
        sub_100004F84(v45, &unk_100AD4790);
        v49 = v76;
      }

      else
      {
        v50 = *(v43 + 32);
        v50(v78, v45, v37);
        v51 = v81;
        ConfettiAssetMetadata.endDate.getter();
        v52 = v51;
        if (v48(v51, 1, v37) == 1)
        {
          (*(v43 + 8))(v78, v37);
          sub_100004F84(v51, &unk_100AD4790);
          v35 = v86;
          v49 = v76;
        }

        else
        {
          v85 = v33;
          v53 = v82;
          v50(v82, v52, v37);
          v54 = v79;
          static Date.now.getter();
          v55 = v78;
          v56 = sub_10048FF40(2, 1, v54);
          v58 = v57;
          v83 = *(v43 + 8);
          v84 = (v43 + 8);
          (v83)(v54, v37);
          v59 = (v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_extraShortDateString);
          *v59 = v56;
          v59[1] = v58;

          v60 = *(v43 + 16);
          v61 = v80;
          v60(v80, v53, v87);
          v62 = *(v43 + 56);
          v62(v61, 0, 1, v87);
          v63 = sub_100490A14(v55, v61, 1);
          v65 = v64;
          sub_100004F84(v61, &unk_100AD4790);
          v66 = (v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_shortDateString);
          *v66 = v63;
          v66[1] = v65;

          v60(v61, v82, v87);
          v67 = v87;
          v62(v61, 0, 1, v87);
          v68 = sub_100490A14(v55, v61, 0);
          v70 = v69;
          sub_100004F84(v61, &unk_100AD4790);
          v71 = (v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_longDateString);
          *v71 = v68;
          v71[1] = v70;

          v72 = *(v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel);
          if (v66[1])
          {

            v73 = String._bridgeToObjectiveC()();
          }

          else
          {
            v73 = 0;
          }

          v33 = v85;
          v35 = v86;
          v49 = v76;
          [v72 setText:v73];

          v74 = v83;
          (v83)(v82, v67);
          v74(v78, v67);
        }
      }

      *(v38 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost) = ConfettiAssetMetadata.isHost.getter() & 1;
      (*((swift_isaMask & *v38) + 0x270))();

      return (*(v33 + 8))(v35, v77);
    }
  }

  return result;
}

uint64_t sub_10033EA18()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v12);
  v17 = &v37 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset);
  if (v18)
  {
    v40 = v15;
    v41 = v6;
    v43 = v14;
    v44 = result;
    v42 = v18;
    Date.init()();
    v39 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v19 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    v45 = v17;
    if (v19 > 6)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        v21 = v4;
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v22 = &qword_100B2F628;
LABEL_11:
        v38 = *v22;
        UUID.init()();
        v23 = v5;
        v24 = *(v5 + 16);
        v37 = v10;
        v24(v3, v10, v21);
        (*(v23 + 56))(v3, 0, 1, v21);
        v25 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_100075184(v3, v0 + v25);
        swift_endAccess();
        LODWORD(v39) = *(v0 + v39);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24(v8, v10, v21);
        v27 = v43;
        v28 = v44;
        v29 = v40;
        (*(v43 + 16))(v40, v45, v44);
        v30 = (*(v23 + 80) + 24) & ~*(v23 + 80);
        v31 = (v41 + *(v27 + 80) + v30) & ~*(v27 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = v26;
        (*(v23 + 32))(v32 + v30, v8, v21);
        (*(v27 + 32))(v32 + v31, v29, v28);
        v33 = objc_opt_self();

        v34 = [v33 currentTraitCollection];
        v35 = v38;
        v36 = v42;
        sub_100076220(v39, 0, 1, v38, v34, sub_100340414, v32);

        (*(v23 + 8))(v37, v21);
        (*(v27 + 8))(v45, v28);
      }
    }

    v21 = v4;
    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v22 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10033EFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v33 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_1003404EC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A68498;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000069AC(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v25 = v36;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_10033F4B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v6 = type metadata accessor for Date();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = __chkstk_darwin(v6);
  v62 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v61 = &v58[-v9];
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v58[-v13];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v17);
  v19 = &v58[-v18];
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v58[-v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v27 = Strong;
  if (!a2)
  {

LABEL_7:
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (!v33)
    {
      return;
    }

    v34 = v33;
    goto LABEL_27;
  }

  v60 = a2;
  (*(v15 + 16))(v25, a3, v14);
  (*(v15 + 56))(v25, 0, 1, v14);
  v28 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_latestImageRequestID;
  swift_beginAccess();
  v29 = *(v17 + 48);
  sub_1000082B4(v25, v19, &qword_100AD1420);
  sub_1000082B4(&v27[v28], &v19[v29], &qword_100AD1420);
  v30 = *(v15 + 48);
  if (v30(v19, 1, v14) == 1)
  {
    v31 = v60;
    v32 = v60;
    sub_100004F84(v25, &qword_100AD1420);
    if (v30(&v19[v29], 1, v14) == 1)
    {
      sub_100004F84(v19, &qword_100AD1420);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1000082B4(v19, v23, &qword_100AD1420);
  v35 = v30(&v19[v29], 1, v14);
  v31 = v60;
  if (v35 == 1)
  {
    v36 = v60;
    sub_100004F84(v25, &qword_100AD1420);
    (*(v15 + 8))(v23, v14);
LABEL_11:
    sub_100004F84(v19, &unk_100AEEE20);

    v34 = v31;
    goto LABEL_28;
  }

  v37 = v64;
  (*(v15 + 32))(v64, &v19[v29], v14);
  sub_1000069AC(&qword_100AD9220, &type metadata accessor for UUID);
  v34 = v31;
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v15 + 8);
  v38(v37, v14);
  sub_100004F84(v25, &qword_100AD1420);
  v38(v23, v14);
  sub_100004F84(v19, &qword_100AD1420);
  if (v59)
  {
LABEL_13:
    v39 = *&v27[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v34 = v27;
    v40 = 1;
    [v39 setHidden:1];
    v41 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView;
    [*&v34[OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView] setImage:v31];
    [*&v34[v41] setContentMode:2];
    v42 = OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView;
    v43 = *&v34[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView];
    v44 = [v31 imageWithHorizontallyFlippedOrientation];
    [v43 setImage:v44];

    [*&v34[v42] setContentMode:2];
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v34[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
    {
      v46 = v67;
      v47 = v68;
      v48 = v66;
      if (v34[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u)
      {
        v49 = v60;
        if (v34[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v49 = v60;
      }
    }

    else
    {
      v46 = v67;
      v47 = v68;
      v48 = v66;
      v49 = v60;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_20:

    (*(v48 + 16))(v47, v65, v46);
    (*(v48 + 56))(v47, 0, 1, v46);
    if (v40)
    {
LABEL_21:
      sub_10033FED8();

LABEL_26:
      sub_100004F84(v47, &unk_100AD4790);

LABEL_27:
      v34[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
      goto LABEL_28;
    }

    v50 = v63;
    sub_1000082B4(v47, v63, &unk_100AD4790);
    if ((*(v48 + 48))(v50, 1, v46) == 1)
    {
      sub_100004F84(v50, &unk_100AD4790);
    }

    else
    {
      v51 = v61;
      (*(v48 + 32))(v61, v50, v46);
      v52 = v62;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v54 = v53;
      v55 = *(v48 + 8);
      v55(v52, v46);
      v55(v51, v46);
      if (v54 < 0.1)
      {
        goto LABEL_21;
      }
    }

    v56 = objc_opt_self();
    aBlock[4] = sub_1003405BC;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A684C0;
    v57 = _Block_copy(aBlock);

    [v56 animateWithDuration:0x10000 delay:v57 options:0 animations:0.1 completion:0.0];

    _Block_release(v57);

    goto LABEL_26;
  }

LABEL_28:
}

void sub_10033FED8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal17ConfettiAssetView_assetImageView);

    [v2 setAlpha:1.0];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView);

    [v5 setAlpha:1.0];
  }
}

uint64_t sub_10033FFAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(13, v3);

  return sub_10033EA18();
}

void *sub_100340058()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100340088()
{

  return sub_100004F84(v0 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_latestImageRequestID, &qword_100AD1420);
}

id sub_100340198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAssetView()
{
  result = qword_100ADF5A8;
  if (!qword_100ADF5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100340340()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100340414(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10033EFD0(a1, v7, v1 + v4, v8);
}

void sub_1003404EC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10033F4B4(v5, v6, v0 + v2, v7);
}

uint64_t sub_1003405C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADF5E0);
  v1 = sub_10000617C(v0, qword_100ADF5E0);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100340690(char a1, char a2)
{
  if (byte_100ADF5F8)
  {
    return;
  }

  if (sub_1007CEB58() || sub_1007CEB64() || sub_1007CED68() || (a1 & 1) != 0 || (a2 & 1) != 0)
  {
    if (qword_100ACFC90 == -1)
    {
LABEL_6:
      v5 = type metadata accessor for Logger();
      sub_10000617C(v5, qword_100ADF5E0);
      oslog = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v6, "(cleanupOrphans) Not ready for orphans cleanup", v7, 2u);
      }

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  v8 = v2;
  byte_100ADF5F8 = 1;
  if (qword_100ACFC90 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000617C(v9, qword_100ADF5E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting orphans cleanup", v12, 2u);
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v13 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v14 = String._bridgeToObjectiveC()();
  [v13 setName:v14];

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003443E0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A68558;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v18 performBlockAndWait:v17];

  _Block_release(v17);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_22;
  }
}

void sub_100340A54(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v157 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v143 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v143 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v143 - v17;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    __chkstk_darwin(v16);
    *(&v143 - 2) = a1;
    *(&v143 - 8) = 1;
    sub_1000F24EC(&qword_100ADF600);
    v145 = a1;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v144 = 0;
    v19 = v166;
    v166 = _swiftEmptyArrayStorage;
    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v156 = v3;
    v147 = v9;
    v146 = v12;
    v143 = v4;
    if (!v20)
    {
      v9 = &_swiftEmptyDictionarySingleton;
      v4 = _swiftEmptyArrayStorage;
LABEL_36:

      if (v4 >> 62)
      {
        v78 = _CocoaArrayWrapper.endIndex.getter();
        v19 = v145;
        if (v78)
        {
LABEL_38:
          if (qword_100ACFC90 == -1)
          {
LABEL_39:
            v49 = type metadata accessor for Logger();
            sub_10000617C(v49, qword_100ADF5E0);
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.default.getter();
            v52 = v19;
            if (os_log_type_enabled(v50, v51))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v164 = v54;
              *v53 = 136315138;
              sub_1001C324C();
              v55 = v4;
              v56 = v9;

              v57 = Array.description.getter();
              v59 = v58;

              v60 = sub_100008458(v57, v59, &v164);

              *(v53 + 4) = v60;
              v9 = v56;
              v4 = v55;
              _os_log_impl(&_mh_execute_header, v50, v51, "(cleanupOrphans) entryParentIDs: %s", v53, 0xCu);
              sub_10000BA7C(v54);
            }

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 134217984;
              if (v4 >> 62)
              {
                v141 = v63;
                v64 = _CocoaArrayWrapper.endIndex.getter();
                v63 = v141;
              }

              else
              {
                v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v63 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v61, v62, "(cleanupOrphans) entryParentIDs.count: %ld", v63, 0xCu);
            }

            v65 = qword_100B2F9E0;
            v66 = *(*(qword_100B2F9E0 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);

            v67 = [v66 privateCloudDatabase];
            v68 = *(*(v65 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
            v69 = type metadata accessor for BatchRecordDownloadOperation();
            v70 = objc_allocWithZone(v69);
            *&v70[qword_100AEAAA0] = v4;
            *&v70[qword_100AEAAA8] = v67;
            *&v70[qword_100AEAAB0] = v68;
            v165.receiver = v70;
            v165.super_class = v69;
            v71 = v68;
            v72 = objc_msgSendSuper2(&v165, "init");
            v73 = swift_allocObject();
            *(v73 + 16) = v52;
            *(v73 + 24) = v9;
            v74 = swift_allocObject();
            *(v74 + 16) = sub_100344408;
            *(v74 + 24) = v73;
            v75 = *&v72[qword_100AE7BA8];
            v76 = __chkstk_darwin(v74);
            *(&v143 - 2) = sub_100344410;
            *(&v143 - 1) = v76;

            v77 = v52;

            os_unfair_lock_lock(v75 + 10);
            sub_100344414(&v75[4]);
            os_unfair_lock_unlock(v75 + 10);

            if (qword_100AD0AE0 != -1)
            {
              swift_once();
            }

            [*(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) addOperation:{v72, v143}];

LABEL_99:

            return;
          }

LABEL_102:
          swift_once();
          goto LABEL_39;
        }
      }

      else
      {
        v19 = v145;
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }
      }

      v148 = qword_100B2F9E0;
      v79 = *(qword_100B2F9E0 + 16);
      v80 = sub_100756AF4(v19);

      v164 = _swiftEmptyArrayStorage;
      v81 = v146;
      v149 = v9;
      if (v80 >> 62)
      {
        goto LABEL_104;
      }

      v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {
        v83 = v147;
        v150 = v4;
        if (v82)
        {
          if (v82 >= 1)
          {
            v4 = 0;
            v160 = v80 & 0xC000000000000001;
            v9 = (v143 + 56);
            v84 = (v143 + 48);
            v158 = (v143 + 16);
            v155 = (v143 + 8);
            v153 = _swiftEmptyArrayStorage;
            v1 = &_swiftEmptyDictionarySingleton;
            v152 = xmmword_100941D50;
            v154 = v80;
            v159 = v82;
            while (1)
            {
              v85 = v160 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v80 + 8 * v4 + 32);
              v86 = v85;
              v87 = [v85 parentID];
              if (v87)
              {
                v88 = v87;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v82 = v159;
                v89 = 0;
              }

              else
              {
                v89 = 1;
              }

              (*v9)(v83, v89, 1, v3);
              sub_100024EC0(v83, v81);
              if (!(*v84)(v81, 1, v3))
              {
                break;
              }

              sub_100004F84(v81, &qword_100AD1420);
LABEL_59:
              if (v82 == ++v4)
              {
                goto LABEL_87;
              }
            }

            v90 = v157;
            (*v158)(v157, v81, v3);
            sub_100004F84(v81, &qword_100AD1420);
            v81 = UUID.uuidString.getter();
            v19 = v91;
            (*v155)(v90, v3);
            if (!*(v1 + 16) || (v92 = sub_100094E98(v81, v19), (v93 & 1) == 0))
            {
              sub_1000F24EC(&unk_100AD4780);
              v105 = swift_allocObject();
              *(v105 + 16) = v152;
              *(v105 + 32) = v86;
              v106 = v86;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v162 = v1;
              sub_100202A20(v105, v81, v19, isUniquelyReferenced_nonNull_native);

              v108 = v162;
              sub_1001C324C();
              v109 = static CloudKitStackConfiguration.zone.getter();
              v110 = [v109 zoneID];

              v111._countAndFlagsBits = v81;
              v111._object = v19;
              CKRecordID.init(recordName:zoneID:)(v111, v110);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v153 = v164;
              v3 = v156;
              v83 = v147;
              v81 = v146;
              v1 = v108;
              goto LABEL_79;
            }

            v162 = *(*(v1 + 56) + 8 * v92);
            v94 = v86;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            *&v151 = v94;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v80 = v162;
            v95 = swift_isUniquelyReferenced_nonNull_native();
            v161 = v1;
            v96 = sub_100094E98(v81, v19);
            v98 = v1;
            v1 = v96;
            v99 = *(v98 + 16);
            v100 = (v97 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              __break(1u);
              goto LABEL_101;
            }

            v3 = v97;
            if (*(v98 + 24) < v101)
            {
              sub_10081FFD8(v101, v95);
              v102 = sub_100094E98(v81, v19);
              if ((v3 & 1) != (v103 & 1))
              {
                goto LABEL_111;
              }

              v1 = v102;
              v104 = v161;
              if ((v3 & 1) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_82;
            }

            if (v95)
            {
              v104 = v161;
              if (v97)
              {
LABEL_82:
                *(v104[7] + 8 * v1) = v80;

                v3 = v156;
                v83 = v147;
                v81 = v146;
                v1 = v104;
LABEL_79:
                v80 = v154;
                v82 = v159;
                goto LABEL_59;
              }
            }

            else
            {
              sub_100823DD0();
              v104 = v161;
              if (v3)
              {
                goto LABEL_82;
              }
            }

LABEL_84:
            v104[(v1 >> 6) + 8] |= 1 << v1;
            v112 = (v104[6] + 16 * v1);
            *v112 = v81;
            v112[1] = v19;
            *(v104[7] + 8 * v1) = v80;
            v113 = v104[2];
            v47 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v47)
            {
              __break(1u);
LABEL_104:
              v82 = _CocoaArrayWrapper.endIndex.getter();
              continue;
            }

            v1 = v104;
            v104[2] = v114;

            v3 = v156;
            v83 = v147;
            v81 = v146;
            goto LABEL_79;
          }

          __break(1u);
          goto LABEL_109;
        }

        break;
      }

      v153 = _swiftEmptyArrayStorage;
      v1 = &_swiftEmptyDictionarySingleton;
LABEL_87:

      v80 = v153;
      if (v153 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_89:
          if (qword_100ACFC90 == -1)
          {
LABEL_90:
            v115 = type metadata accessor for Logger();
            sub_10000617C(v115, qword_100ADF5E0);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v162 = v119;
              *v118 = 136315138;
              sub_1001C324C();

              v120 = Array.description.getter();
              v122 = v121;

              v123 = sub_100008458(v120, v122, &v162);
              v80 = v153;

              *(v118 + 4) = v123;
              _os_log_impl(&_mh_execute_header, v116, v117, "(cleanupOrphans) assetParentIDs: %s", v118, 0xCu);
              sub_10000BA7C(v119);
            }

            v124 = Logger.logObject.getter();
            v125 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              *v126 = 134217984;
              if (v80 >> 62)
              {
                v142 = v126;
                v127 = _CocoaArrayWrapper.endIndex.getter();
                v126 = v142;
              }

              else
              {
                v127 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v126 + 4) = v127;
              _os_log_impl(&_mh_execute_header, v124, v125, "(cleanupOrphans) assetParentIDs.count: %ld", v126, 0xCu);
            }

            v128 = v148;
            v129 = *(v148[3] + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);

            v130 = [v129 privateCloudDatabase];
            v131 = *(v128[3] + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadConfig);
            v132 = type metadata accessor for BatchRecordDownloadOperation();
            v133 = objc_allocWithZone(v132);
            *&v133[qword_100AEAAA0] = v80;
            *&v133[qword_100AEAAA8] = v130;
            *&v133[qword_100AEAAB0] = v131;
            v163.receiver = v133;
            v163.super_class = v132;
            v134 = v131;
            v72 = objc_msgSendSuper2(&v163, "init");
            v135 = swift_allocObject();
            v136 = v145;
            *(v135 + 16) = v145;
            *(v135 + 24) = v1;
            v137 = swift_allocObject();
            *(v137 + 16) = sub_100344470;
            *(v137 + 24) = v135;
            v138 = *&v72[qword_100AE7BA8];
            v139 = __chkstk_darwin(v137);
            *(&v143 - 2) = sub_10034456C;
            *(&v143 - 1) = v139;
            v140 = v136;

            os_unfair_lock_lock(v138 + 10);
            sub_100344570(&v138[4]);
            os_unfair_lock_unlock(v138 + 10);

            if (qword_100AD0AE0 != -1)
            {
              swift_once();
            }

            [*(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue) addOperation:{v72, v143}];

            goto LABEL_99;
          }

LABEL_109:
          swift_once();
          goto LABEL_90;
        }
      }

      else if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      return;
    }

    v21 = v20;
    if (v20 < 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v1 = 0;
    v159 = (v4 + 56);
    v160 = v19 & 0xC000000000000001;
    v158 = (v4 + 48);
    v154 = (v4 + 8);
    v155 = (v4 + 16);
    v4 = _swiftEmptyArrayStorage;
    v9 = &_swiftEmptyDictionarySingleton;
    v151 = xmmword_100941D50;
    v153 = v19;
    *&v152 = v20;
    while (1)
    {
      v22 = v160 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v19 + 8 * v1 + 32);
      v23 = v22;
      v24 = [v22 parentID];
      if (v24)
      {
        v25 = v24;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      (*v159)(v15, v26, 1, v3);
      sub_100024EC0(v15, v18);
      if (!(*v158)(v18, 1, v3))
      {
        break;
      }

      sub_100004F84(v18, &qword_100AD1420);
LABEL_8:
      if (v21 == ++v1)
      {
        goto LABEL_36;
      }
    }

    v27 = v157;
    (*v155)(v157, v18, v3);
    sub_100004F84(v18, &qword_100AD1420);
    v12 = UUID.uuidString.getter();
    a1 = v28;
    (*v154)(v27, v3);
    if (!*(v9 + 2) || (v29 = sub_100094E98(v12, a1), (v30 & 1) == 0))
    {
      sub_1000F24EC(&unk_100AD4780);
      v39 = swift_allocObject();
      *(v39 + 16) = v151;
      *(v39 + 32) = v23;
      v40 = v23;

      v41 = swift_isUniquelyReferenced_nonNull_native();
      v164 = v9;
      sub_100202A4C(v39, v12, a1, v41);

      v9 = v164;
      sub_1001C324C();
      v42 = static CloudKitStackConfiguration.zone.getter();
      v43 = [v42 zoneID];

      v44._countAndFlagsBits = v12;
      v44._object = a1;
      CKRecordID.init(recordName:zoneID:)(v44, v43);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v166;
      v3 = v156;
LABEL_34:
      v19 = v153;
      v21 = v152;
      goto LABEL_8;
    }

    v150 = v4;
    v164 = *(*(v9 + 7) + 8 * v29);
    v31 = v23;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v148 = v31;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v149 = v164;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v9;
    v4 = sub_100094E98(v12, a1);
    v33 = *(v9 + 2);
    v34 = (v32 & 1) == 0;
    v35 = v33 + v34;
    if (!__OFADD__(v33, v34))
    {
      break;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v16 = swift_once();
  }

  v36 = v32;
  if (*(v9 + 3) >= v35)
  {
    if ((v3 & 1) == 0)
    {
      sub_100823DE4();
    }

    goto LABEL_29;
  }

  sub_10081FFEC(v35, v3);
  v37 = sub_100094E98(v12, a1);
  if ((v36 & 1) == (v38 & 1))
  {
    v4 = v37;
LABEL_29:
    v3 = v156;
    v9 = v162;
    if (v36)
    {
      *(*(v162 + 56) + 8 * v4) = v149;
    }

    else
    {
      *(v162 + 8 * (v4 >> 6) + 64) |= 1 << v4;
      v45 = (*(v9 + 6) + 16 * v4);
      *v45 = v12;
      v45[1] = a1;
      *(*(v9 + 7) + 8 * v4) = v149;
      v46 = *(v9 + 2);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_49;
      }

      *(v9 + 2) = v48;
    }

    v4 = v150;
    goto LABEL_34;
  }

LABEL_111:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t *sub_100341F20(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = a3;
    v6[4] = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100344558;
    *(v7 + 24) = v6;
    v10[4] = sub_100177C4C;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10001A7D4;
    v10[3] = &unk_100A686E8;
    v8 = _Block_copy(v10);

    v9 = a2;

    [v9 performBlockAndWait:v8];
    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003420A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  *&v12 = 136315394;
  v140 = v12;
  v154 = v10;
  v155 = a2;
  v158 = v5;
  v159 = v9;
  while (v8)
  {
    v13 = v11;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(v4 + 56) + 16 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = v16;
    if (v19)
    {
      sub_1000E61A4(v18, 1);
      if (qword_100ACFC90 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000617C(v21, qword_100ADF5E0);
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      sub_1000E61B0(v18, 1);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v20;
        v26 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v22, v23, "(cleanupOrphans) record download expected error:%@", v24, 0xCu);
        sub_100004F84(v26, &unk_100AD4BB0);
        v20 = v25;
      }

      v167[0] = v18;
      swift_errorRetain();
      sub_1000F24EC(&qword_100AD5BC0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v28 = v166;
        v167[0] = v166;
        sub_100344498();
        _BridgedStoredNSError.code.getter();
        if (v166 == 11)
        {
          v29 = [v20 recordName];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          if (!*(a2 + 16))
          {
            goto LABEL_83;
          }

          v33 = sub_100094E98(v30, v32);
          v35 = v34;

          if (v35)
          {
            v36 = *(*(a2 + 56) + 8 * v33);
            swift_bridgeObjectRetain_n();
            v37 = v20;
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.default.getter();

            v146 = v39;
            v40 = os_log_type_enabled(v38, v39);
            v41 = v36 >> 62;
            v150 = v37;
            v152 = v36;
            v160 = v18;
            v142 = v20;
            v148 = v36 >> 62;
            if (v40)
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              v167[0] = v43;
              *v42 = v140;
              v44 = [v37 recordName];
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;

              v48 = sub_100008458(v45, v47, v167);

              *(v42 + 4) = v48;
              *(v42 + 12) = 2048;
              if (v41)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v49 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v42 + 14) = v49;

              _os_log_impl(&_mh_execute_header, v38, v146, "(cleanupOrphans) for parent entry:%s doesn't exist and should remove asset orphans:%ld", v42, 0x16u);
              sub_10000BA7C(v43);

              v4 = v154;
              v18 = v160;
              v20 = v142;
              v28 = 11;
              v50 = v152;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v50 = v36;
            }

            if (v148)
            {
              v128 = v50;
              v113 = _CocoaArrayWrapper.endIndex.getter();
              v50 = v128;
              a2 = v155;
              if (v113)
              {
LABEL_69:
                if (v113 < 1)
                {
                  goto LABEL_97;
                }

                v114 = 0;
                v147 = v50 & 0xC000000000000001;
                v149 = v113;
                do
                {
                  if (v147)
                  {
                    v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v122 = *(v50 + 8 * v114 + 32);
                  }

                  v123 = v122;
                  [v122 setIsRemovedFromCloud:{1, v140}];
                  v124 = v150;
                  v125 = v123;
                  v126 = Logger.logObject.getter();
                  v127 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v126, v127))
                  {
                    v115 = swift_slowAlloc();
                    v144 = swift_slowAlloc();
                    v145 = swift_slowAlloc();
                    v167[0] = v145;
                    *v115 = 138412546;
                    *(v115 + 4) = v125;
                    *v144 = v125;
                    *(v115 + 12) = 2080;
                    v116 = v125;
                    v117 = [v124 recordName];
                    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v120 = v119;

                    v121 = sub_100008458(v118, v120, v167);
                    a2 = v155;

                    *(v115 + 14) = v121;
                    v4 = v154;
                    _os_log_impl(&_mh_execute_header, v126, v127, "(cleanupOrphans) asset orphan is marked as removed from cloud orphanMO: %@ because parent is not found parent:%s", v115, 0x16u);
                    sub_100004F84(v144, &unk_100AD4BB0);

                    sub_10000BA7C(v145);

                    v20 = v142;
                  }

                  else
                  {
                  }

                  v28 = 11;
                  ++v114;
                  v18 = v160;
                  v50 = v152;
                }

                while (v149 != v114);
              }
            }

            else
            {
              v113 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              a2 = v155;
              if (v113)
              {
                goto LABEL_69;
              }
            }

LABEL_83:
          }

          v129 = v20;
          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v167[0] = v133;
            *v132 = 136315138;
            v157 = v28;
            v134 = [v129 recordName];
            v162 = v18;
            v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v137 = v136;

            v138 = sub_100008458(v135, v137, v167);
            a2 = v155;

            *(v132 + 4) = v138;
            _os_log_impl(&_mh_execute_header, v130, v131, "(cleanupOrphans) parent entry not found with id:%s", v132, 0xCu);
            sub_10000BA7C(v133);
            v4 = v154;

            v85 = v162;
            goto LABEL_40;
          }

          sub_1000E61B0(v18, 1);
LABEL_41:
          v11 = v13;
          goto LABEL_42;
        }
      }

      swift_errorRetain();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = v20;
        v83 = swift_slowAlloc();
        *v81 = 138412290;
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v81 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&_mh_execute_header, v79, v80, "(cleanupOrphans) parent entry unexpected error: %@", v81, 0xCu);
        sub_100004F84(v83, &unk_100AD4BB0);
      }

      else
      {

        sub_1000E61B0(v18, 1);
      }

      v85 = v18;
LABEL_40:
      sub_1000E61B0(v85, 1);
      goto LABEL_41;
    }

    sub_1000E61A4(v18, 0);
    if (qword_100ACFC90 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000617C(v51, qword_100ADF5E0);
    v163 = v18;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_1000E61B0(v18, 0);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v20;
      v56 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v163;
      *v56 = v18;
      v57 = v163;
      _os_log_impl(&_mh_execute_header, v52, v53, "(cleanupOrphans) lost parent entry found: %@", v54, 0xCu);
      sub_100004F84(v56, &unk_100AD4BB0);
      v20 = v55;
    }

    v58 = [v20 recordName];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    if (!*(a2 + 16))
    {
      sub_1000E61B0(v18, 0);

LABEL_34:

      goto LABEL_41;
    }

    v62 = sub_100094E98(v59, v61);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      sub_1000E61B0(v18, 0);
      goto LABEL_34;
    }

    v161 = v18;
    v65 = *(*(a2 + 56) + 8 * v62);
    v66 = qword_100ACFE28;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = qword_100B2F9E0;
    v68 = *(qword_100B2F9E0 + 16);
    v69 = [v20 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = sub_1007733F4();

    v71 = *(v67 + 16);
    v143 = v20;
    v72 = [v20 recordName];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    sub_1006F39C8(v73, v75, a3);
    v77 = v76;

    if (v70)
    {
      v78 = v70;
      goto LABEL_45;
    }

    if (v77)
    {
      v78 = v77;
      v70 = 0;
LABEL_45:
      v164 = v77;
      v86 = v143;
      v151 = v70;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      v153 = v86;
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v167[0] = v156;
        *v89 = 136315138;
        v90 = [v86 recordName];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100008458(v91, v93, v167);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v87, v88, "(cleanupOrphans) lost parent entry %s found locally", v89, 0xCu);
        sub_10000BA7C(v156);
      }

      a2 = v155;
      if (v65 >> 62)
      {
        v95 = _CocoaArrayWrapper.endIndex.getter();
        if (v95)
        {
LABEL_49:
          if (v95 < 1)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            return;
          }

          for (i = 0; i != v95; ++i)
          {
            if ((v65 & 0xC000000000000001) != 0)
            {
              v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v97 = *(v65 + 8 * i + 32);
            }

            v98 = v97;
            [v78 addAssetsObject:{v97, v140}];
          }
        }
      }

      else
      {
        v95 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v95)
        {
          goto LABEL_49;
        }
      }

      sub_1000E61B0(v161, 0);

LABEL_81:
      v11 = v13;
      v4 = v154;
LABEL_42:
      v5 = v158;
      v9 = v159;
    }

    else
    {
      type metadata accessor for JournalEntryMO();
      v99 = static JournalEntryMO.newObjectFromRecord(_:context:)();

      v100 = v99;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v167[0] = v165;
        *v103 = 138412546;
        *(v103 + 4) = v100;
        *v104 = v100;
        *(v103 + 12) = 2080;
        type metadata accessor for JournalEntryAssetMO();
        v105 = v100;
        v106 = Array.description.getter();
        v108 = sub_100008458(v106, v107, v167);

        *(v103 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v101, v102, "(cleanupOrphans) lost parent entry re-created: %@ with children%s", v103, 0x16u);
        sub_100004F84(v104, &unk_100AD4BB0);

        sub_10000BA7C(v165);
      }

      a2 = v155;
      v9 = v159;
      if (v65 >> 62)
      {
        v109 = _CocoaArrayWrapper.endIndex.getter();
        if (v109)
        {
LABEL_60:
          if (v109 < 1)
          {
            goto LABEL_98;
          }

          for (j = 0; j != v109; ++j)
          {
            if ((v65 & 0xC000000000000001) != 0)
            {
              v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v111 = *(v65 + 8 * j + 32);
            }

            v112 = v111;
            [v100 addAssetsObject:{v111, v140}];
          }

          sub_1000E61B0(v161, 0);

          goto LABEL_81;
        }
      }

      else
      {
        v109 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v109)
        {
          goto LABEL_60;
        }
      }

      sub_1000E61B0(v161, 0);

      v11 = v13;
      v4 = v154;
      v5 = v158;
    }
  }

  while (2)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_95;
    }

    if (v13 < v9)
    {
      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        goto LABEL_9;
      }

      continue;
    }

    break;
  }

  if (([a3 hasChanges] & 1) == 0)
  {
    return;
  }

  if (qword_100ACFE28 != -1)
  {
LABEL_95:
    swift_once();
  }

  v139 = *(qword_100B2F9E0 + 16);
  sub_100488D28(a3);
}

uint64_t *sub_100343130(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = a3;
    v6[4] = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10034448C;
    *(v7 + 24) = v6;
    v10[4] = sub_100177C4C;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10001A7D4;
    v10[3] = &unk_100A68670;
    v8 = _Block_copy(v10);

    v9 = a2;

    [v9 performBlockAndWait:v8];
    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003432B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v151 = v9;
  v152 = v8;
  v150 = v4;
  if (v7)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_98:
      swift_once();
LABEL_95:
      v139 = *(qword_100B2F9E0 + 16);
      sub_100488D28(a3);

      return;
    }

    if (v11 >= v8)
    {

      if (([a3 hasChanges] & 1) == 0)
      {
        return;
      }

      if (qword_100ACFE28 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_98;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
  }

  while (!v7);
  while (1)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = v14;
    v160 = v18;
    if (v17)
    {
      sub_1000E61A4(v16, 1);
      if (qword_100ACFC90 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000617C(v19, qword_100ADF5E0);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      sub_1000E61B0(v16, 1);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "(cleanupOrphans) record download expected error:%@", v22, 0xCu);
        sub_100004F84(v23, &unk_100AD4BB0);
        v18 = v160;
      }

      v163[0] = v16;
      swift_errorRetain();
      sub_1000F24EC(&qword_100AD5BC0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v163[0] = v162;
        sub_100344498();
        _BridgedStoredNSError.code.getter();
        if (v162 == 11)
        {
          v25 = [v18 recordName];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          if (*(a2 + 16))
          {
            v29 = sub_100094E98(v26, v28);
            v31 = v30;

            if ((v31 & 1) == 0)
            {
LABEL_78:
              v54 = v18;
              v129 = Logger.logObject.getter();
              v130 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v129, v130))
              {

                sub_1000E61B0(v16, 1);
LABEL_81:

LABEL_6:
                v10 = v11;
                v8 = v152;
                if (!v7)
                {
                  goto LABEL_8;
                }

                goto LABEL_7;
              }

              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v163[0] = v132;
              *v131 = 136315138;
              v133 = [v54 recordName];
              v155 = v16;
              v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v136 = v135;

              v4 = v150;
              v137 = sub_100008458(v134, v136, v163);

              *(v131 + 4) = v137;
              _os_log_impl(&_mh_execute_header, v129, v130, "(cleanupOrphans) parent asset not found with id:%s", v131, 0xCu);
              sub_10000BA7C(v132);
              v3 = v151;

              v83 = v155;
LABEL_40:
              sub_1000E61B0(v83, 1);
              goto LABEL_6;
            }

            v32 = *(*(a2 + 56) + 8 * v29);
            swift_bridgeObjectRetain_n();
            v33 = v18;
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.default.getter();

            v36 = v32 >> 62;
            v148 = v32;
            v140 = v33;
            v153 = v16;
            if (os_log_type_enabled(v34, v35))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v163[0] = v38;
              *v37 = 136315394;
              v39 = [v33 recordName];
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;

              v43 = sub_100008458(v40, v42, v163);

              *(v37 + 4) = v43;
              *(v37 + 12) = 2048;
              v145 = v36;
              if (v36)
              {
                v44 = v148;
                v45 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v44 = v148;
                v45 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v37 + 14) = v45;

              _os_log_impl(&_mh_execute_header, v34, v35, "(cleanupOrphans) for parent asset:%s doesn't exist and should remove attachments orphans:%ld", v37, 0x16u);
              sub_10000BA7C(v38);

              v3 = v151;
              v16 = v153;
              v18 = v160;
              v46 = v44;
              v33 = v140;
              v36 = v145;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v46 = v32;
            }

            if (v36)
            {
              v138 = v46;
              v113 = _CocoaArrayWrapper.endIndex.getter();
              v46 = v138;
              v4 = v150;
              if (v113)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v113 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v4 = v150;
              if (v113)
              {
LABEL_67:
                if (v113 < 1)
                {
                  goto LABEL_100;
                }

                v114 = 0;
                v144 = v46 & 0xC000000000000001;
                v147 = v113;
                do
                {
                  if (v144)
                  {
                    v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v123 = *(v46 + 8 * v114 + 32);
                  }

                  v124 = v123;
                  [v123 setIsRemovedFromCloud:1];
                  v125 = v33;
                  v126 = v124;
                  v127 = Logger.logObject.getter();
                  v128 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v127, v128))
                  {
                    v115 = swift_slowAlloc();
                    v142 = swift_slowAlloc();
                    v143 = swift_slowAlloc();
                    v163[0] = v143;
                    *v115 = 138412546;
                    *(v115 + 4) = v126;
                    *v142 = v126;
                    *(v115 + 12) = 2080;
                    v116 = v126;
                    v117 = [v125 recordName];
                    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v120 = v119;

                    v121 = v118;
                    v4 = v150;
                    v122 = sub_100008458(v121, v120, v163);
                    v33 = v140;

                    *(v115 + 14) = v122;
                    _os_log_impl(&_mh_execute_header, v127, v128, "(cleanupOrphans) attachment orphan is marked as removed from cloud orphanMO: %@ because parent is not found parent:%s", v115, 0x16u);
                    sub_100004F84(v142, &unk_100AD4BB0);

                    sub_10000BA7C(v143);

                    v18 = v160;
                  }

                  else
                  {
                  }

                  v16 = v153;
                  ++v114;
                  v46 = v148;
                }

                while (v147 != v114);
                v3 = v151;
              }
            }
          }

          goto LABEL_78;
        }
      }

      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = v18;
        v81 = swift_slowAlloc();
        *v79 = 138412290;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&_mh_execute_header, v77, v78, "(cleanupOrphans) parent asset unexpected error: %@", v79, 0xCu);
        sub_100004F84(v81, &unk_100AD4BB0);

        v3 = v151;
      }

      else
      {

        sub_1000E61B0(v16, 1);
      }

      v83 = v16;
      goto LABEL_40;
    }

    sub_1000E61A4(v16, 0);
    if (qword_100ACFC90 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000617C(v47, qword_100ADF5E0);
    v48 = v16;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    sub_1000E61B0(v16, 0);
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v16;
      v53 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "(cleanupOrphans) lost parent asset found: %@", v51, 0xCu);
      sub_100004F84(v52, &unk_100AD4BB0);
      v3 = v151;

      v18 = v160;
    }

    v157 = v48;

    v54 = v18;
    v55 = [v18 recordName];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (!*(a2 + 16))
    {
      sub_1000E61B0(v16, 0);

      goto LABEL_81;
    }

    v59 = sub_100094E98(v56, v58);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      sub_1000E61B0(v16, 0);

      goto LABEL_6;
    }

    v154 = v16;
    v62 = *(*(a2 + 56) + 8 * v59);
    v63 = qword_100ACFE28;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = [v160 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v65);
    sub_1000F24EC(&qword_100ADF608);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v66 = v163[0];
    v67 = qword_100B2F9E0;
    v68 = *(qword_100B2F9E0 + 16);
    v69 = [v160 recordName];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    sub_1006F39E0(v70, v72, a3);
    v74 = v73;

    if (v66)
    {
      v75 = v66;
      v76 = v160;
      goto LABEL_43;
    }

    v76 = v160;
    if (v74)
    {
      break;
    }

    v98 = *(v67 + 16);
    v99 = sub_100722554(v157, a3);

    v100 = v99;
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v163[0] = v159;
      *v103 = 138412546;
      *(v103 + 4) = v100;
      *v104 = v100;
      *(v103 + 12) = 2080;
      type metadata accessor for JournalEntryAssetFileAttachmentMO();
      v105 = v100;
      v106 = Array.description.getter();
      v108 = sub_100008458(v106, v107, v163);

      *(v103 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "(cleanupOrphans) lost parent asset re-created: %@ with children%s", v103, 0x16u);
      sub_100004F84(v104, &unk_100AD4BB0);

      sub_10000BA7C(v159);
    }

    v3 = v151;
    if (v62 >> 62)
    {
      v109 = _CocoaArrayWrapper.endIndex.getter();
      if (v109)
      {
LABEL_58:
        if (v109 < 1)
        {
          goto LABEL_101;
        }

        for (i = 0; i != v109; ++i)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v111 = *(v62 + 8 * i + 32);
          }

          v112 = v111;
          [v100 addFileAttachmentsObject:v111];
        }

        sub_1000E61B0(v154, 0);

        goto LABEL_85;
      }
    }

    else
    {
      v109 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v109)
      {
        goto LABEL_58;
      }
    }

    sub_1000E61B0(v154, 0);

    v10 = v11;
LABEL_86:
    v4 = v150;
    v8 = v152;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v11 = v10;
  }

  v75 = v74;
  v66 = 0;
LABEL_43:
  v161 = v74;
  v84 = v76;
  v85 = v66;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v158 = v84;
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v163[0] = v146;
    *v88 = 136315138;
    v149 = v85;
    v89 = [v84 recordName];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93 = sub_100008458(v90, v92, v163);

    *(v88 + 4) = v93;
    v85 = v149;
    _os_log_impl(&_mh_execute_header, v86, v87, "(cleanupOrphans) lost parent asset %s found locally", v88, 0xCu);
    sub_10000BA7C(v146);
  }

  if (!(v62 >> 62))
  {
    v94 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      goto LABEL_47;
    }

LABEL_84:

    sub_1000E61B0(v154, 0);

LABEL_85:
    v10 = v11;
    v3 = v151;
    goto LABEL_86;
  }

  v94 = _CocoaArrayWrapper.endIndex.getter();
  if (!v94)
  {
    goto LABEL_84;
  }

LABEL_47:
  if (v94 >= 1)
  {
    for (j = 0; j != v94; ++j)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v96 = *(v62 + 8 * j + 32);
      }

      v97 = v96;
      [v75 addFileAttachmentsObject:v96];
    }

    goto LABEL_84;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_100344430()
{

  return swift_deallocObject();
}

unint64_t sub_100344498()
{
  result = qword_100AD1AA0;
  if (!qword_100AD1AA0)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1AA0);
  }

  return result;
}

uint64_t sub_100344510()
{

  return swift_deallocObject();
}

uint64_t sub_100344598()
{
  v0 = sub_1000F24EC(&qword_100ADF618);
  sub_100006118(v0, qword_100B2F828);
  sub_10000617C(v0, qword_100B2F828);
  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  sub_1003459A0();
  sub_1003459F4();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10034474C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100ADA098);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v16 - v7;
  v9 = sub_1000F24EC(&qword_100ADA0A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000B58C(&qword_100ADA0A8, &qword_100ADA0A0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = 3;
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = v17;
  (*(v3 + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v17);
  a2[3] = sub_1000F24EC(&qword_100ADA0B0);
  a2[4] = sub_1000B1210();
  sub_10001A770(a2);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v14 = v18;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100344A74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a1;
  v43 = a2;
  v2 = sub_1000F24EC(&qword_100ADF630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - v4;
  v6 = sub_1000F24EC(&qword_100ADF638);
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  v40 = sub_1000F24EC(&qword_100ADF640);
  v49 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = v31 - v11;
  v12 = sub_1000F24EC(&qword_100ADF648);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  __chkstk_darwin(v12);
  v47 = v31 - v14;
  v31[1] = sub_10000B58C(&qword_100ADF650, &qword_100ADF638);
  static PredicateExpressions.build_Arg<A>(_:)();
  v52 = 2;
  static PredicateExpressions.build_Arg<A>(_:)();
  v45 = sub_10000B58C(&qword_100ADF658, &qword_100ADF630);
  v15 = sub_100345A48();
  v44 = v2;
  v35 = v15;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v34 = v16;
  v36 = v3 + 8;
  v17 = v48 + 8;
  v32 = *(v48 + 8);
  v32(v8, v6);
  v48 = v17;
  static PredicateExpressions.build_Arg<A>(_:)();
  v51 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = v39;
  v33 = v5;
  v19 = v44;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v16(v5, v19);
  v20 = v32;
  v32(v8, v6);
  v38 = sub_10000B58C(&qword_100ADF668, &qword_100ADF640);
  v21 = v37;
  v22 = v40;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  v23 = *(v49 + 8);
  v49 += 8;
  v23(v18, v22);
  v23(v21, v22);
  static PredicateExpressions.build_Arg<A>(_:)();
  v50 = 1;
  v24 = v33;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = v44;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v34(v24, v25);
  v20(v8, v6);
  v26 = sub_1000F24EC(&qword_100ADF670);
  v27 = v43;
  v43[3] = v26;
  v27[4] = sub_100345A9C();
  sub_10001A770(v27);
  sub_10000B58C(&qword_100ADF6A0, &qword_100ADF648);
  v28 = v47;
  v29 = v41;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  v23(v21, v22);
  return (*(v42 + 8))(v28, v29);
}

void *sub_100345148()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_1000F24EC(&qword_100ADA0D8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1000B4CC8(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_1003452E4()
{
  v0 = sub_1000F24EC(&qword_100ADC228);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADC238);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_100345588@<X0>(uint64_t *a1@<X8>)
{
  sub_100345CF0();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1003455CC()
{
  result = qword_100ADF610;
  if (!qword_100ADF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF610);
  }

  return result;
}

uint64_t sub_100345620()
{
  v0 = sub_1000F24EC(&qword_100ADF618);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = sub_1000F24EC(&unk_100ADE720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFF00 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v4, qword_100B2FA90);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_100ACFC98 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B2F828);
  (*(v1 + 16))(v3, v14, v0);
  sub_1003459A0();
  sub_1003459F4();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v15 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v15;
}

unint64_t sub_1003459A0()
{
  result = qword_100ADF620;
  if (!qword_100ADF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF620);
  }

  return result;
}

unint64_t sub_1003459F4()
{
  result = qword_100ADF628;
  if (!qword_100ADF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF628);
  }

  return result;
}

unint64_t sub_100345A48()
{
  result = qword_100ADF660;
  if (!qword_100ADF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF660);
  }

  return result;
}

unint64_t sub_100345A9C()
{
  result = qword_100ADF678;
  if (!qword_100ADF678)
  {
    sub_1000F2A18(&qword_100ADF670);
    sub_100345B28();
    sub_100345BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF678);
  }

  return result;
}

unint64_t sub_100345B28()
{
  result = qword_100ADF680;
  if (!qword_100ADF680)
  {
    sub_1000F2A18(&qword_100ADF648);
    sub_100345BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF680);
  }

  return result;
}

unint64_t sub_100345BAC()
{
  result = qword_100ADF688;
  if (!qword_100ADF688)
  {
    sub_1000F2A18(&qword_100ADF640);
    sub_10000B58C(&qword_100ADF690, &qword_100ADF638);
    sub_100345C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF688);
  }

  return result;
}

unint64_t sub_100345C64()
{
  result = qword_100ADF698;
  if (!qword_100ADF698)
  {
    sub_1000F2A18(&qword_100ADF630);
    sub_1003459A0();
    sub_1003459F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF698);
  }

  return result;
}

unint64_t sub_100345CF0()
{
  result = qword_100ADF6A8;
  if (!qword_100ADF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF6A8);
  }

  return result;
}

uint64_t sub_100345D68()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_100088AC8(v0, v6);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
    return sub_10012C9CC(v15);
  }

  v16 = v6;
  v17 = *(v8 + 32);
  v17(v13, v16, v7);
  v18 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  sub_100088AC8(v0 + *(v18 + 20), v3);
  if (v14(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v15 = v3;
    return sub_10012C9CC(v15);
  }

  v17(v10, v3, v7);
  Date.timeIntervalSince(_:)();
  v20 = *(v8 + 8);
  v20(v10, v7);
  return (v20)(v13, v7);
}

uint64_t sub_100345FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADF748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = 0x74657373416D756ELL;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000001008EC620;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v7 = sub_100363E3C(inited);
  swift_setDeallocating();
  sub_1000F24EC(&qword_100ADF750);
  swift_arrayDestroy();
  if (*(a3 + 8))
  {
    v8 = objc_allocWithZone(NSString);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithString:v9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100202C10(v10, 0x726566736E617274, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  result = sub_100345D68();
  v14 = v13 * 10000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = [objc_allocWithZone(NSNumber) initWithInteger:v14];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100202C10(v15, 0xD000000000000011, 0x80000001008EC640, v16);
  result = sub_100345D68();
  v18 = v17 * 10000.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_100202C10(v19, 0xD000000000000011, 0x80000001008EC660, v20);
  result = sub_100345D68();
  v22 = v21 * 10000.0;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v22 < 9.22337204e18)
  {
    v23 = [objc_allocWithZone(NSNumber) initWithInteger:v22];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_100202C10(v23, 0xD000000000000012, 0x80000001008EC680, v24);
    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10034640C()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003464A0()
{
  sub_10034652C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10034652C()
{
  if (!qword_100AD5A70)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD5A70);
    }
  }
}

uint64_t sub_10034657C()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 40);
    while (v4 < *(v1 + 16))
    {
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;
      result = sub_100346620(v7);
      if (result)
      {

        return 1;
      }

      ++v4;
      v5 += 2;
      if (v2 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_100346620(uint64_t *a1)
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v25 = *a1;
  v26 = v7;
  CharacterSet.init(charactersIn:)();
  sub_1000777B4();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v25 = v8;
  v26 = v10;
  v11 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (v11[2] >= 3uLL && (v29 = v1, v13 = v11[4], v14 = v11[5], v15 = v11[6], v16 = v11[7], v17 = v11[12], v18 = v11[13], v19 = v11[14], v20 = v11[15], , , , v21 = sub_1003C1524(v13, v14, v15, v16, 5459817, 0xE300000000000000), , (v21 & 1) != 0))
  {
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v23 = 3028785;
    v24 = 0xE300000000000000;
    sub_100356DF4();
    sub_1000F2BEC();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {

      v12 = 1;
    }

    else
    {
      v25 = v17;
      v26 = v18;
      v27 = v19;
      v28 = v20;
      v23 = 3029041;
      v24 = 0xE300000000000000;
      v12 = BidirectionalCollection<>.starts<A>(with:)();
    }
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}