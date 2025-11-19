uint64_t sub_1006B189C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 424);
  v4 = *(v1 + 416);
  if (v2)
  {
    v5 = sub_1006B1FA8;
  }

  else
  {
    v5 = sub_1006B19CC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006B19CC()
{
  v1 = v0[56];
  v2 = v0[40];
  v0[58] = v2;

  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_1006B1A74;

  return sub_1006B4D38((v0 + 21), v2);
}

uint64_t sub_1006B1A74()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return _swift_task_switch(sub_1006B1B94, v3, v2);
}

uint64_t sub_1006B1B94()
{
  v1 = v0[42];
  sub_1006B01B0(v0 + 21);
  if (v1)
  {
    v2 = v0[58];
    v3 = v0[51];
    v4 = v2;
    v0[60] = static MainActor.shared.getter();

    v5 = swift_task_alloc();
    v0[61] = v5;
    *v5 = v0;
    v5[1] = sub_1006B1D38;

    return sub_1001DFEF4(v3, &protocol witness table for MainActor, v2);
  }

  else
  {
    v7 = v0[58];
    v9 = v0[54];
    v8 = v0[55];
    (*(v0[48] + 8))(v0[49], v0[47]);

    sub_100004F84((v0 + 21), &qword_100AED4C0);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1006B1D38()
{
  v1 = *v0;
  v2 = *(*v0 + 464);

  v3 = *(v1 + 424);
  v4 = *(v1 + 416);

  return _swift_task_switch(sub_1006B1EB8, v4, v3);
}

uint64_t sub_1006B1EB8()
{
  v1 = v0[58];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  sub_100004F84((v0 + 21), &qword_100AED4C0);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006B1FA8()
{
  v25 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 440);

  swift_willThrow();

  if (qword_100AD0100 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 344);
  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AED400);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315650;
    if (qword_100AD0108 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 344);
    v12 = type metadata accessor for UUID();
    sub_10000617C(v12, qword_100AED418);
    sub_1006B6364(&qword_100AE19B0, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_100008458(v13, v14, &v24);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v11;
    *v9 = v11;
    *(v8 + 22) = 2112;
    v16 = v11;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v17;
    v9[1] = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %@ error while fetching the metadata: %@", v8, 0x20u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    sub_10000BA7C(v10);
  }

  v18 = *(v0 + 432);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 145) = 0u;
  sub_1006B01B0((v0 + 80));

  (*(v20 + 8))(v19, v21);

  v22 = *(v0 + 8);

  return v22();
}

void sub_1006B22F4(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v37 = *(a1 + 24);
  v5 = *(a1 + 48);
  v36 = *(a1 + 40);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_titleLabel];
  v35 = v3;
  if (v3 == 1 || !*(a1 + 16))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
  }

  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = 0;
  v11 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_subtitleLabel];
  v12 = *a1;
  v13 = *(a1 + 32);
  v38 = v8;
  if (*a1 != 1 && v13)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  [v11 setText:v10];

  v14 = 0;
  v15 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkLabel];
  v16 = *(a1 + 48);
  if (v12 != 1 && v16)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  [v15 setText:v14];

  v17 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel];
  if (v12 == 1)
  {
    [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel] setText:0];
    [v38 setNumberOfLines:2];
    goto LABEL_23;
  }

  if (v16)
  {
    v34 = v5;
    v18 = v4;
LABEL_17:

    v19 = String._bridgeToObjectiveC()();

    v4 = v18;
    v5 = v34;
    goto LABEL_18;
  }

  if (v4)
  {
    v34 = v5;

    v18 = v4;
    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:
  [v17 setText:v19];

  v20 = v35;
  if (!v13 || !v5)
  {
    [v38 setNumberOfLines:2];
    v20 = v12;
  }

  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView];
    v22 = v20;
    [v21 setImage:v22];
    [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView] setImage:v22];
  }

LABEL_23:
  sub_1000F24EC(&qword_100AD38F0);
  v23 = swift_allocObject();
  v24 = v23;
  *(v23 + 16) = xmmword_100942000;
  if (v12 == 1)
  {
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 32) = 0u;
  }

  else
  {
    v41 = *(a1 + 8);
    *(v23 + 32) = v41;
    *(v23 + 48) = v37;
    *(v23 + 56) = v4;
    *(v23 + 64) = v36;
    *(v23 + 72) = v5;
    sub_1000082B4(&v41, v39, &unk_100AE4870);
  }

  sub_10009BB20(2570, 0xE200000000000000, v24);
  v26 = v25;
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AE4870);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v1 setAccessibilityValue:v27];

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 56) = *(a1 + 32);
  *(v29 + 72) = v30;
  *(v29 + 88) = *(a1 + 64);
  v31 = *(a1 + 16);
  *(v29 + 24) = *a1;
  *(v29 + 16) = v1;
  *(v29 + 104) = *(a1 + 80);
  *(v29 + 40) = v31;
  aBlock[4] = sub_1006B63AC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A785B8;
  v32 = _Block_copy(aBlock);
  v33 = v1;
  sub_1000082B4(a1, v39, &qword_100AED4C0);

  [v28 animateWithDuration:65568 delay:v32 options:0 animations:0.1 completion:0.0];
  _Block_release(v32);
}

id sub_1006B28AC(uint64_t a1, uint64_t *a2)
{
  [*(a1 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView) setAlpha:1.0];
  v4 = *a2;
  if (*a2 == 1 || (a2[10] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2[9];
  }

  [*(a1 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurredEffectView) setOverrideUserInterfaceStyle:v5];
  v6 = *(a1 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel);
  if (v4 == 1 || (a2[10] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2[9];
  }

  return [v6 setOverrideUserInterfaceStyle:v7];
}

void sub_1006B2980()
{
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100957D10;
  v2 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView;
  v3 = [*&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView] leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [*&v0[v2] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [*&v0[v2] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_labelStack];
  v13 = [v12 leadingAnchor];
  v14 = [*&v0[v2] trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:12.0];

  *(v1 + 56) = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-12.0];

  *(v1 + 64) = v18;
  v19 = [v12 centerYAnchor];
  v20 = [v0 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v1 + 72) = v21;
  v22 = [v12 topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:8.0];

  *(v1 + 80) = v24;
  v25 = [v12 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26 constant:8.0];

  *(v1 + 88) = v27;
  v28 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_sizeConstraints;
  swift_beginAccess();
  *&v0[v28] = v1;

  sub_1006B2D30();
}

void sub_1006B2D30()
{
  v1 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  if (v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] == 6)
  {

LABEL_4:
    sub_1000F24EC(&unk_100ADFBF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = UIFontWeightMedium;
    v4 = inited + 32;
    *(inited + 40) = 0;
    *(inited + 48) = 3;
    v5 = sub_100047788(UIFontTextStyleCaption2, inited, 0);
    swift_setDeallocating();
    sub_100047D60(v4);
    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_4;
  }

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
LABEL_6:
  [*&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel] setFont:{v5, *&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel]}];
  if (v0[v1] == 6)
  {

    v6 = 0.0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 4.0;
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView];
  v9 = [v8 layer];
  [v9 setCornerRadius:v6];

  v10 = [v8 layer];
  [v10 setMasksToBounds:v6 != 0.0];

  if (v0[v1] == 6)
  {

    v11 = 0.0;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 4.0;
    }
  }

  sub_1000F24EC(&unk_100AD4780);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_100956650;
  v14 = [v8 leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v11];

  *(v13 + 32) = v16;
  v17 = [v8 trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = -v11;
  v20 = [v17 constraintEqualToAnchor:v18 constant:v19];

  *(v13 + 40) = v20;
  v21 = [v8 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v19];

  *(v13 + 48) = v23;
  v24 = [v36 leadingAnchor];
  v25 = [v8 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:8.0];

  *(v13 + 56) = v26;
  v27 = [v36 trailingAnchor];
  v28 = [v8 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-8.0];

  *(v13 + 64) = v29;
  v30 = [v36 topAnchor];
  v31 = [v8 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

  *(v13 + 72) = v32;
  v33 = [v36 bottomAnchor];
  v34 = [v8 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-8.0];

  *(v13 + 80) = v35;
  swift_beginAccess();
  sub_1006AE010(v13, sub_1006B36A8);
  swift_endAccess();
}

uint64_t sub_1006B3500(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t (*sub_1006B35A0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006B650C;
  }

  __break(1u);
  return result;
}

void (*sub_1006B3620(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006B36A0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B36A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED4D8, &qword_100AED4D0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED4D0);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD8000);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B3848(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED580, &qword_100AED578);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED578);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD5B00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B39E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED4E0, &qword_100ADC660);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100ADC660);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Asset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B3B78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED528, &unk_100AEED10);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&unk_100AEED10);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD43F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B3D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED538, &qword_100AED530);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED530);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD4420);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B3EB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED548, &qword_100AED540);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED540);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &unk_100ADC630);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4058(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED520, &qword_100AD58C0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AD58C0);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DataAggregator.EntryPlace(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B41E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED518, &qword_100AED510);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED510);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AED508);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4388(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AE2400, &qword_100AE23F8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AE23F8);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD43B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4528(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED4F0, &qword_100AED4E8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED4E8);
            v9 = sub_1006B3620(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MosaicCell();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B46B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED570, &unk_100ADD530);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&unk_100ADD530);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD4C80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4858(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED500, &qword_100AED4F8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED4F8);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100ADE560);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B49F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED568, &qword_100AED560);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED560);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD5178);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4B98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1006B63B8(&qword_100AED558, &qword_100AED550);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F24EC(&qword_100AED550);
            v9 = sub_1006B35A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000065A8(0, &qword_100AD86C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B4D38(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  type metadata accessor for MainActor();
  v2[39] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[40] = v4;
  v2[41] = v3;

  return _swift_task_switch(sub_1006B4DD0, v4, v3);
}

uint64_t sub_1006B4DD0()
{
  v1 = *(v0 + 304);
  v2 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  *(v0 + 336) = v2;
  [v2 setMetadata:v1];
  v3 = [v2 presentationProperties];
  *(v0 + 344) = v3;
  if (([v3 respondsToSelector:"captionBar"] & 1) == 0)
  {
    *(v0 + 504) = 1;
    goto LABEL_6;
  }

  v4 = [v3 captionBar];
  *(v0 + 504) = 1;
  if (!v4)
  {
LABEL_6:
    swift_bridgeObjectRelease_n();
    v5 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 top];
  v7 = [v6 leading];

  v8 = [v7 text];
  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0;
  }

  v16 = [v5 bottom];
  v17 = [v16 leading];

  v18 = [v17 text];
  if (v18)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v19;
  }

  else
  {

    v14 = 0;
    v15 = 0;
  }

  v20 = [v5 belowBottom];
  v21 = [v20 leading];

  v22 = [v21 text];
  if (v22)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v23;
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

LABEL_14:
  *(v0 + 392) = v9;
  *(v0 + 400) = v11;
  *(v0 + 376) = v14;
  *(v0 + 384) = v15;
  *(v0 + 360) = v12;
  *(v0 + 368) = v13;
  *(v0 + 352) = v5;
  v24 = [*(v0 + 304) imageProvider];
  *(v0 + 408) = v24;
  if (v24)
  {
    v25 = *(v0 + 312);

    if (v25)
    {
      swift_getObjectType();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *(v0 + 416) = v26;
    *(v0 + 424) = v28;
    v32 = sub_1006B5310;
LABEL_40:

    return _swift_task_switch(v32, v26, v28);
  }

  v29 = [*(v0 + 304) iconProvider];
  *(v0 + 456) = v29;
  v30 = *(v0 + 312);
  if (v29)
  {

    if (v30)
    {
      swift_getObjectType();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v31;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *(v0 + 464) = v26;
    *(v0 + 472) = v28;
    v32 = sub_1006B5A88;
    goto LABEL_40;
  }

  v33 = (v0 + 360);

  v34 = *(v0 + 400);
  if (v34 && ((v34 & 0x2000000000000000) != 0 ? (v35 = HIBYTE(v34) & 0xF) : (v35 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v35) || (v36 = *(v0 + 384)) != 0 && ((v36 & 0x2000000000000000) != 0 ? (v37 = HIBYTE(v36) & 0xF) : (v37 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v37) || (v38 = *(v0 + 368)) != 0 && ((v38 & 0x2000000000000000) != 0 ? (v39 = HIBYTE(v38) & 0xF) : (v39 = *v33 & 0xFFFFFFFFFFFFLL), v39))
  {
    v40 = *(v0 + 336);

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    v41 = *(v0 + 376);
    *(v0 + 24) = *(v0 + 392);
    v42 = *v33;
    *(v0 + 40) = v41;
    *(v0 + 56) = v42;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 72) = 0;
    v43 = *(v0 + 504);
    *(v0 + 96) = v43;
    sub_1006B6288(v0 + 16, v0 + 104);
    v44 = 0;
    v46 = *(v0 + 376);
    v45 = *(v0 + 392);
    v47 = *v33;
    v48 = v43;
    v54 = v46;
    v55 = v45;
    v53 = *v33;
  }

  else
  {
    v49 = *(v0 + 336);

    swift_unknownObjectRelease();
    v48 = 0;
    v43 = *(v0 + 504);
    v54 = 0u;
    v55 = 0u;
    v44 = 1;
    v53 = 0u;
    v46 = *(v0 + 376);
    v45 = *(v0 + 392);
    v47 = *v33;
  }

  v50 = *(v0 + 296);
  *(v0 + 192) = 0;
  *(v0 + 200) = v45;
  *(v0 + 216) = v46;
  *(v0 + 232) = v47;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = v43;
  sub_1006B12A8(v0 + 192);
  *v50 = v44;
  *(v50 + 8) = v55;
  *(v50 + 24) = v54;
  *(v50 + 40) = v53;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 56) = 0;
  *(v50 + 80) = v48;
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1006B5310()
{
  v1 = v0[51];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[54] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[55] = v4;
  v5 = sub_1000065A8(0, &qword_100AE9450);
  *v4 = v0;
  v4[1] = sub_1006B542C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 35, v2, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_1006B6280, v3, v5);
}

uint64_t sub_1006B542C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_1006B57C4;
  }

  else
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_1006B5570;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006B5570()
{

  *(v0 + 448) = *(v0 + 280);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006B55E8, v1, v2);
}

uint64_t sub_1006B55E8()
{

  v1 = *(v0 + 448);
  if ([*(v0 + 344) respondsToSelector:"dominantImageBackgroundColor"])
  {
    v2 = [*(v0 + 344) dominantImageBackgroundColor];
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);
    if (v2)
    {
      v5 = v2;
      v6 = [v2 CGColor];
      UISColorLuminance();
      v8 = v7;

      swift_unknownObjectRelease();
      if (v8 > 0.5)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(v0 + 504) = 0;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v0 + 352);

    swift_unknownObjectRelease();
  }

  v9 = 0;
LABEL_10:
  *(v0 + 16) = v1;
  v11 = *(v0 + 376);
  *(v0 + 24) = *(v0 + 392);
  v12 = *(v0 + 360);
  *(v0 + 40) = v11;
  *(v0 + 56) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v9;
  v13 = *(v0 + 504);
  *(v0 + 96) = v13;
  sub_1006B6288(v0 + 16, v0 + 104);
  v14 = *(v0 + 392);
  v23 = *(v0 + 400);
  v16 = *(v0 + 376);
  v15 = *(v0 + 384);
  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  v19 = v1;
  v20 = *(v0 + 296);
  *(v0 + 192) = v19;
  *(v0 + 200) = v14;
  *(v0 + 208) = v23;
  *(v0 + 216) = v16;
  *(v0 + 224) = v15;
  *(v0 + 232) = v18;
  *(v0 + 240) = v17;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = v9;
  *(v0 + 272) = v13;
  sub_1006B12A8(v0 + 192);
  *v20 = v19;
  *(v20 + 8) = v14;
  *(v20 + 16) = v23;
  *(v20 + 24) = v16;
  *(v20 + 32) = v15;
  *(v20 + 40) = v18;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = v9;
  *(v20 + 80) = v13;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1006B57C4()
{
  v1 = v0[51];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_1006B5830, v2, v3);
}

uint64_t sub_1006B5830()
{
  v1 = [*(v0 + 304) iconProvider];
  *(v0 + 456) = v1;
  v2 = *(v0 + 312);
  if (v1)
  {

    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    *(v0 + 464) = v3;
    *(v0 + 472) = v5;

    return _swift_task_switch(sub_1006B5A88, v3, v5);
  }

  else
  {
    v6 = (v0 + 360);

    v7 = *(v0 + 400);
    if (v7 && ((v7 & 0x2000000000000000) != 0 ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v8) || (v9 = *(v0 + 384)) != 0 && ((v9 & 0x2000000000000000) != 0 ? (v10 = HIBYTE(v9) & 0xF) : (v10 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v10) || (v11 = *(v0 + 368)) != 0 && ((v11 & 0x2000000000000000) != 0 ? (v12 = HIBYTE(v11) & 0xF) : (v12 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v12))
    {
      v13 = *(v0 + 336);

      swift_unknownObjectRelease();
      *(v0 + 16) = 0;
      v14 = *(v0 + 376);
      *(v0 + 24) = *(v0 + 392);
      v15 = *v6;
      *(v0 + 40) = v14;
      *(v0 + 56) = v15;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 72) = 0;
      v16 = *(v0 + 504);
      *(v0 + 96) = v16;
      sub_1006B6288(v0 + 16, v0 + 104);
      v17 = 0;
      v19 = *(v0 + 376);
      v18 = *(v0 + 392);
      v20 = *v6;
      v21 = v16;
      v27 = v19;
      v28 = v18;
      v26 = *v6;
    }

    else
    {
      v22 = *(v0 + 336);

      swift_unknownObjectRelease();
      v21 = 0;
      v16 = *(v0 + 504);
      v27 = 0u;
      v28 = 0u;
      v17 = 1;
      v26 = 0u;
      v19 = *(v0 + 376);
      v18 = *(v0 + 392);
      v20 = *v6;
    }

    v23 = *(v0 + 296);
    *(v0 + 192) = 0;
    *(v0 + 200) = v18;
    *(v0 + 216) = v19;
    *(v0 + 232) = v20;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 248) = 0;
    *(v0 + 272) = v16;
    sub_1006B12A8(v0 + 192);
    *v23 = v17;
    *(v23 + 8) = v28;
    *(v23 + 24) = v27;
    *(v23 + 40) = v26;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    *(v23 + 56) = 0;
    *(v23 + 80) = v21;
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1006B5A88()
{
  v1 = v0[57];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[61] = v4;
  v5 = sub_1000065A8(0, &qword_100AE9450);
  *v4 = v0;
  v4[1] = sub_1006B5BA4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 36, v2, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_1006B6518, v3, v5);
}

uint64_t sub_1006B5BA4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_1006B6054;
  }

  else
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_1006B5CE8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006B5CE8()
{

  *(v0 + 496) = *(v0 + 288);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006B5D60, v1, v2);
}

uint64_t sub_1006B5D60()
{
  v1 = (v0 + 360);
  v2 = *(v0 + 496);

  [v2 size];
  v3 = *(v0 + 496);
  if (v4 >= 300.0)
  {
    [*(v0 + 496) size];
    v3 = *(v0 + 496);
    if (v5 >= 300.0)
    {
      if ([*(v0 + 344) respondsToSelector:"dominantImageBackgroundColor"])
      {
        v25 = [*(v0 + 344) dominantImageBackgroundColor];
        v26 = *(v0 + 352);
        v27 = *(v0 + 336);
        if (v25)
        {
          v28 = v25;
          v29 = [v25 CGColor];
          UISColorLuminance();
          v31 = v30;

          swift_unknownObjectRelease();
          if (v31 > 0.5)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          *(v0 + 504) = 0;
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v33 = *(v0 + 352);

        swift_unknownObjectRelease();
      }

LABEL_19:
      v13 = 0;
LABEL_20:
      *(v0 + 16) = v3;
      v14 = *(v0 + 376);
      *(v0 + 24) = *(v0 + 392);
      v15 = *v1;
      *(v0 + 40) = v14;
      *(v0 + 56) = v15;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = v13;
      v16 = *(v0 + 504);
      *(v0 + 96) = v16;
      sub_1006B6288(v0 + 16, v0 + 104);
      v18 = *(v0 + 376);
      v17 = *(v0 + 392);
      v19 = v16;
      v20 = *v1;
      v21 = v3;
      v35 = v18;
      v36 = v17;
      v34 = *v1;
      goto LABEL_21;
    }
  }

  v6 = *(v0 + 400);
  if (v6 && ((v6 & 0x2000000000000000) != 0 ? (v7 = HIBYTE(v6) & 0xF) : (v7 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v7) || (v8 = *(v0 + 384)) != 0 && ((v8 & 0x2000000000000000) != 0 ? (v9 = HIBYTE(v8) & 0xF) : (v9 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v9) || (v10 = *(v0 + 368)) != 0 && ((v10 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(v10) & 0xF) : (v11 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v11))
  {
    v12 = *(v0 + 336);

    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_19;
  }

  v32 = *(v0 + 336);

  swift_unknownObjectRelease();
  v13 = 0;
  v19 = 0;
  v21 = 0;
  v16 = *(v0 + 504);
  v35 = 0u;
  v36 = 0u;
  v3 = 1;
  v34 = 0u;
  v18 = *(v0 + 376);
  v17 = *(v0 + 392);
  v20 = *v1;
LABEL_21:
  v22 = *(v0 + 296);
  *(v0 + 192) = v21;
  *(v0 + 200) = v17;
  *(v0 + 216) = v18;
  *(v0 + 232) = v20;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = v13;
  *(v0 + 272) = v16;
  sub_1006B12A8(v0 + 192);
  *v22 = v3;
  *(v22 + 8) = v36;
  *(v22 + 24) = v35;
  *(v22 + 40) = v34;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 72) = v13;
  *(v22 + 80) = v19;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1006B6054()
{
  v1 = v0[57];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_1006B60C0, v2, v3);
}

uint64_t sub_1006B60C0()
{
  v1 = (v0 + 360);

  v2 = *(v0 + 400);
  if (v2 && ((v2 & 0x2000000000000000) != 0 ? (v3 = HIBYTE(v2) & 0xF) : (v3 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v3) || (v4 = *(v0 + 384)) != 0 && ((v4 & 0x2000000000000000) != 0 ? (v5 = HIBYTE(v4) & 0xF) : (v5 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v5) || (v6 = *(v0 + 368)) != 0 && ((v6 & 0x2000000000000000) != 0 ? (v7 = HIBYTE(v6) & 0xF) : (v7 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v7))
  {
    v8 = *(v0 + 336);

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    v9 = *(v0 + 376);
    *(v0 + 24) = *(v0 + 392);
    v10 = *v1;
    *(v0 + 40) = v9;
    *(v0 + 56) = v10;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 72) = 0;
    v11 = *(v0 + 504);
    *(v0 + 96) = v11;
    sub_1006B6288(v0 + 16, v0 + 104);
    v12 = 0;
    v14 = *(v0 + 376);
    v13 = *(v0 + 392);
    v15 = *v1;
    v16 = v11;
    v22 = v14;
    v23 = v13;
    v21 = *v1;
  }

  else
  {
    v17 = *(v0 + 336);

    swift_unknownObjectRelease();
    v16 = 0;
    v11 = *(v0 + 504);
    v22 = 0u;
    v23 = 0u;
    v12 = 1;
    v21 = 0u;
    v14 = *(v0 + 376);
    v13 = *(v0 + 392);
    v15 = *v1;
  }

  v18 = *(v0 + 296);
  *(v0 + 192) = 0;
  *(v0 + 200) = v13;
  *(v0 + 216) = v14;
  *(v0 + 232) = v15;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = v11;
  sub_1006B12A8(v0 + 192);
  *v18 = v12;
  *(v18 + 8) = v23;
  *(v18 + 24) = v22;
  *(v18 + 40) = v21;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 56) = 0;
  *(v18 + 80) = v16;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1006B62C0(uint64_t a1, uint64_t a2)
{
  sub_1000F24EC(&qword_100AED4C8);

  return sub_1006AD4F8(a1, a2);
}

uint64_t sub_1006B6364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B63B8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1006B640C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1006B6430(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_1006B648C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_1006B651C(void *a1)
{
  v93 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v93);
  v92 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v92 - v5;
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v95 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v92 - v10;
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v16 = &v92 - v15;
  v17 = OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_dateLabel;
  *&v1[v17] = [objc_allocWithZone(UILabel) init];
  v18 = a1;
  *&v1[OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_assetView] = sub_1005498EC(v18, 7u);
  v19 = type metadata accessor for FullScreenThirdPartyMediaView();
  v102.receiver = v1;
  v102.super_class = v19;
  v20 = objc_msgSendSuper2(&v102, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v21 = objc_allocWithZone(UIView);
  v22 = v20;
  v23 = [v21 init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100760CA8(v23, 1);
  v24 = v22;
  v96 = v23;
  [v24 addSubview:v23];
  v25 = [objc_allocWithZone(UIStackView) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setAxis:1];
  [v25 setAlignment:3];
  [v25 setSpacing:16.0];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v24 addSubview:v25];
  v26 = OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_assetView;
  [*&v24[OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_assetView] setClipsToBounds:1];
  v27 = [*&v24[v26] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v101[0] = xmmword_100B30F28;
  v101[1] = *&qword_100B30F38;
  v101[2] = xmmword_100B30F48;
  v101[3] = *&qword_100B30F58;
  [v27 setCornerRadii:v101];

  [v25 addArrangedSubview:*&v24[v26]];
  v98 = v18;
  sub_1006ACA14(v6);
  v28 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v6, 1, v28);
  v94 = v26;
  if (v30 == 1)
  {
    sub_100004F84(v6, &qword_100AD50C0);
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  }

  else
  {
    ThirdPartyMediaAssetMetadata.startTime.getter();
    (*(v29 + 8))(v6, v28);
    v32 = type metadata accessor for Date();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v13, 1, v32) != 1)
    {
      (*(v33 + 32))(v16, v13, v32);
      (*(v33 + 56))(v16, 0, 1, v32);
      goto LABEL_15;
    }
  }

  v34 = *&v98[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (v34)
  {
    v35 = [v34 createdDate];
    if (v35)
    {
      v36 = v97;
      v37 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
      v36 = v97;
    }

    v40 = type metadata accessor for Date();
    (*(*(v40 - 8) + 56))(v36, v38, 1, v40);
    sub_1001679C0(v36, v16);
  }

  else
  {
    v39 = type metadata accessor for Date();
    (*(*(v39 - 8) + 56))(v16, 1, 1, v39);
  }

  v32 = type metadata accessor for Date();
  if ((*(*(v32 - 8) + 48))(v13, 1, v32) != 1)
  {
    sub_100004F84(v13, &unk_100AD4790);
  }

LABEL_15:
  v41 = OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_dateLabel;
  v42 = *&v24[OBJC_IVAR____TtC7Journal29FullScreenThirdPartyMediaView_dateLabel];
  type metadata accessor for Date();
  v43 = *(v32 - 8);
  v44 = *(v43 + 48);
  [v42 setHidden:{v44(v16, 1, v32) == 1}];
  v45 = v16;
  v46 = *&v24[v41];
  v97 = v45;
  v47 = v95;
  sub_100088AC8(v45, v95);
  LODWORD(v42) = v44(v47, 1, v32);
  v48 = v46;
  if (v42 == 1)
  {
    sub_100004F84(v47, &unk_100AD4790);
    v49 = 0;
  }

  else
  {
    v50 = v92;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    sub_1006B7448(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v50);
    (*(v43 + 8))(v47, v32);
    v49 = String._bridgeToObjectiveC()();
  }

  [v48 setText:v49];

  v51 = *&v24[v41];
  v52 = objc_opt_self();
  v53 = v51;
  v54 = [v52 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v53 setFont:v54];

  v55 = *&v24[v41];
  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 secondaryLabelColor];
  [v57 setTextColor:v58];

  [*&v24[v41] setNumberOfLines:0];
  [*&v24[v41] setLineBreakMode:0];
  [*&v24[v41] setAdjustsFontSizeToFitWidth:1];
  [*&v24[v41] setAdjustsFontForContentSizeCategory:1];
  [v25 addArrangedSubview:*&v24[v41]];
  v95 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100962E90;
  v60 = v96;
  v61 = [v96 topAnchor];
  v62 = v94;
  v63 = [*&v24[v94] topAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];

  *(v59 + 32) = v64;
  v65 = [v60 leadingAnchor];
  v66 = [*&v24[v62] leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v59 + 40) = v67;
  v68 = [v60 bottomAnchor];
  v69 = [*&v24[v62] bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v59 + 48) = v70;
  v71 = [v60 trailingAnchor];
  v72 = [*&v24[v62] trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v59 + 56) = v73;
  v74 = [v25 leadingAnchor];
  v75 = [v24 leadingAnchor];

  v76 = [v74 constraintEqualToAnchor:v75 constant:20.0];
  *(v59 + 64) = v76;
  v77 = [v25 centerXAnchor];
  v78 = [v24 centerXAnchor];

  v79 = [v77 constraintEqualToAnchor:v78];
  *(v59 + 72) = v79;
  v80 = [v25 centerYAnchor];
  v81 = [v24 centerYAnchor];

  v82 = [v80 constraintEqualToAnchor:v81];
  *(v59 + 80) = v82;
  v83 = [*&v24[v62] widthAnchor];
  v84 = [v25 widthAnchor];

  v85 = [v83 constraintEqualToAnchor:v84];
  *(v59 + 88) = v85;
  v86 = [*&v24[v62] heightAnchor];
  v87 = [*&v24[v62] widthAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 multiplier:0.8];

  type metadata accessor for UILayoutPriority(0);
  v100 = 1144750080;
  v99 = 1065353216;
  sub_1006B7448(&qword_100AF3610, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v89) = v101[0];
  [v88 setPriority:v89];
  *(v59 + 96) = v88;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v95 activateConstraints:isa];

  sub_100004F84(v97, &unk_100AD4790);
  return v24;
}

id sub_1006B73A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenThirdPartyMediaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006B7448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B7490(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for AssetSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEED30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v30 = &v23 - v8;
  v25 = sub_1000F24EC(&qword_100AD6BD8);
  __chkstk_darwin(v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_1000082B4(v13, v10, &unk_100AEED30);
    sub_1000082B4(v29, &v10[v16], &unk_100AEED30);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_1000082B4(v10, v30, &unk_100AEED30);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1006B96F4(&qword_100AD6BF0, &type metadata accessor for AssetSource);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_100004F84(v10, &unk_100AEED30);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_100004F84(v10, &qword_100AD6BD8);
    goto LABEL_5;
  }

  sub_100004F84(v10, &unk_100AEED30);
  return 1;
}

uint64_t sub_1006B789C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for AssetPlacement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE94C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v30 = &v23 - v8;
  v25 = sub_1000F24EC(&qword_100AE94D0);
  __chkstk_darwin(v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_1000082B4(v13, v10, &qword_100AE94C8);
    sub_1000082B4(v29, &v10[v16], &qword_100AE94C8);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_1000082B4(v10, v30, &qword_100AE94C8);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1006B96F4(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_100004F84(v10, &qword_100AE94C8);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_100004F84(v10, &qword_100AE94D0);
    goto LABEL_5;
  }

  sub_100004F84(v10, &qword_100AE94C8);
  return 1;
}

BOOL sub_1006B7C60(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = a1;
  do
  {
    v25 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 > 3)
    {
      if (*v4 > 5u)
      {
        if (v8 == 6)
        {
          v14 = 0xE500000000000000;
          v13 = 0x6C6C616D73;
        }

        else
        {
          v14 = 0xEA00000000006E65;
          v13 = 0x657263536C6C7566;
        }
      }

      else
      {
        if (v8 == 4)
        {
          v13 = 0x6D756964656DLL;
        }

        else
        {
          v13 = 0x61546D756964656DLL;
        }

        if (v8 == 4)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xEA00000000006C6CLL;
        }
      }
    }

    else
    {
      if (v8 == 2)
      {
        v9 = 0x69576D756964656DLL;
      }

      else
      {
        v9 = 0x656772616CLL;
      }

      if (v8 == 2)
      {
        v10 = 0xEA00000000006564;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      if (*v4)
      {
        v11 = 0x656772614C78;
      }

      else
      {
        v11 = 0x6154656772614C78;
      }

      if (*v4)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xEA00000000006C6CLL;
      }

      if (*v4 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }
    }

    v15 = 0xEA00000000006E65;
    v16 = 0x657263536C6C7566;
    if (v5 == 6)
    {
      v16 = 0x6C6C616D73;
      v15 = 0xE500000000000000;
    }

    v17 = 0x61546D756964656DLL;
    if (v5 == 4)
    {
      v17 = 0x6D756964656DLL;
      v18 = 0xE600000000000000;
    }

    else
    {
      v18 = 0xEA00000000006C6CLL;
    }

    if (v5 <= 5)
    {
      v16 = v17;
      v15 = v18;
    }

    if (v5 == 2)
    {
      v19 = 0x69576D756964656DLL;
    }

    else
    {
      v19 = 0x656772616CLL;
    }

    if (v5 == 2)
    {
      v20 = 0xEA00000000006564;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    if (v5)
    {
      v21 = 0x656772614C78;
    }

    else
    {
      v21 = 0x6154656772614C78;
    }

    if (v5)
    {
      v2 = 0xE600000000000000;
    }

    if (v5 <= 1)
    {
      v19 = v21;
      v20 = v2;
    }

    if (v5 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = v16;
    }

    if (v5 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = v15;
    }

    if (v13 == v22 && v14 == v23)
    {

      return v25 != 0;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = 0xEA00000000006C6CLL;
    ++v4;
  }

  while ((v6 & 1) == 0);
  return v25 != 0;
}

BOOL sub_1006B7EA4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1006B7F1C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AED5C0);
  sub_10000617C(v0, qword_100AED5C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006B7F9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_1007C8890();
    v6 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v4 = v6;

    if (!v6)
    {
      return 0;
    }
  }

  type metadata accessor for JournalAssetView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = (*((swift_isaMask & *v7) + 0xF8))();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1006B8088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006B8124, v8, v7);
}

uint64_t sub_1006B8124()
{
  v1 = v0[5];

  v2 = sub_10006B2F0(v1, 1);
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = v0[7];
      v6 = Strong;
      sub_1007C8E14(v3, v5 & 0x10101010101);
      sub_1006B8284();
      v7 = *&v6[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize];
      v8 = *&v6[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize + 8];

      sub_1006B91D4(1, v7, v8);
      v3 = v6;
    }
  }

  v9 = v0[1];

  return v9();
}

void sub_1006B8284()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v5 = *(v4 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v6 = v5;
  }

  else
  {
    v7 = sub_1007C8890();
    v8 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v6 = v8;

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  type metadata accessor for VideoAssetView();
  if (swift_dynamicCastClass())
  {
    sub_1008169A4();
  }

LABEL_9:
  v9 = *(v1 + v2);
  if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v11 = *(v10 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v14 = v11;
  }

  else
  {
    v12 = sub_1007C8890();
    v13 = *&v12[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v14 = v13;

    if (!v13)
    {
      return;
    }
  }

  type metadata accessor for VideoAssetGridView();
  if (swift_dynamicCastClass())
  {
    sub_100815794();
  }
}

uint64_t sub_1006B83E8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1000F24EC(&unk_100ADC5E0);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for PaperMarkup();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_1006B8520, v6, v8);
}

uint64_t sub_1006B8520()
{
  v28 = v0;
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_1007C8890();
    v6 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v4 = v6;

    if (!v6)
    {
      goto LABEL_21;
    }
  }

  v0[12] = v4;
  type metadata accessor for DrawingAssetView();
  v7 = swift_dynamicCastClass();
  v0[13] = v7;
  if (v7)
  {
    v8 = v0[5] + OBJC_IVAR____TtC7Journal32ResizableAssetViewTextAttachment_assetID;
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v9 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) viewContext];
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    sub_1000F24EC(&unk_100AE9460);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v11 = v0[2];
    v0[14] = v11;
    if (v11)
    {
      type metadata accessor for DrawingAsset();
      v12 = swift_dynamicCastClass();
      v0[15] = v12;
      if (v12)
      {
        type metadata accessor for MainActor();
        v0[16] = static MainActor.shared.getter();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1006B8A48, v14, v13);
      }
    }

    if (qword_100AD0118 != -1)
    {
      swift_once();
    }

    v15 = v0[5];
    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AED5C0);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      type metadata accessor for UUID();
      sub_1006B96F4(&qword_100AE19B0, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = sub_100008458(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to load drawing asset: %s", v20, 0xCu);
      sub_10000BA7C(v21);
    }
  }

LABEL_21:

  v25 = v0[1];

  return v25();
}

uint64_t sub_1006B8A48()
{
  v1 = v0[13];

  v2 = *(v1 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    v4 = v2;
    v5 = v3;
    dispatch thunk of PaperMarkupViewController.markup.getter();
  }

  else
  {
    (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  }

  v6 = v0[10];
  v7 = v0[11];

  return _swift_task_switch(sub_1006B8B24, v6, v7);
}

uint64_t sub_1006B8B24()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 112);

    sub_100004F84(v3, &unk_100ADC5E0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 72), v3, v1);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1006B8C88;
    v8 = *(v0 + 72);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);

    return sub_1001B79DC(v10, v9, v8, 1);
  }
}

uint64_t sub_1006B8C88()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006B8DA8, v3, v2);
}

uint64_t sub_1006B8DA8()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

BOOL sub_1006B8E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_1007C8890();
    v6 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v4 = v6;

    if (!v6)
    {
      return 0;
    }
  }

  type metadata accessor for DrawingAssetView();
  v7 = swift_dynamicCastClass() == 0;

  return v7;
}

uint64_t sub_1006B8EFC()
{
  v1 = OBJC_IVAR____TtC7Journal32ResizableAssetViewTextAttachment_assetID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1006B8F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizableAssetViewTextAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ResizableAssetViewTextAttachment()
{
  result = qword_100AED600;
  if (!qword_100AED600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B905C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1006B90EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Journal32ResizableAssetViewTextAttachment_assetID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1006B917C()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition);
  swift_beginAccess();
  if (v1[16])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void sub_1006B91D4(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1007C8C2C();
  if (v8)
  {
    v37 = v8;
    type metadata accessor for JournalAssetView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = (*((swift_isaMask & *v9) + 0xF8))();
      if (v11)
      {
        v12 = v11;
        if ((*((swift_isaMask & *v11) + 0x228))())
        {
          v13 = 1;
        }

        else
        {
          sub_1000F24EC(&qword_100ADAD48);
          v18 = type metadata accessor for AssetType();
          v19 = *(v18 - 8);
          v20 = *(v19 + 72);
          v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_100942000;
          v23 = v22 + v21;
          v24 = *(v19 + 104);
          v24(v23, enum case for AssetType.photo(_:), v18);
          v24(v23 + v20, enum case for AssetType.video(_:), v18);
          v24(v23 + 2 * v20, enum case for AssetType.livePhoto(_:), v18);
          v13 = sub_100072430(v12 + OBJC_IVAR____TtC7Journal5Asset_type, v22, &type metadata accessor for AssetType, &qword_100ADC690, &type metadata accessor for AssetType);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
        }

        v25 = sub_1003FE79C(a2);
        v26 = sub_1003FE79C(a3);
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            if (v25 >= 2u)
            {
              goto LABEL_30;
            }
          }

          else if (v25 == 3)
          {
            goto LABEL_30;
          }
        }

        else if (!v26 || v25)
        {
          goto LABEL_30;
        }

        if (!v13)
        {
          a3 = a2;
        }

LABEL_30:
        v27 = sub_1006B8E50();
        if (a1)
        {
          v28 = 1.0;
          if (a2 <= 1.0)
          {
            v28 = a2;
          }

          a2 = 0.25;
          if (v28 > 0.25)
          {
            a2 = v28;
          }
        }

        if (v27)
        {
          v29 = 1.0;
          if (a3 <= 1.0)
          {
            v29 = a3;
          }

          if (v29 > 0.25)
          {
            a3 = v29;
          }

          else
          {
            a3 = 0.25;
          }
        }

        v30 = (v4 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize);
        *v30 = a2;
        v30[1] = a3;
        v31 = sub_1003FE79C(a2);
        v32 = sub_1003FE79C(a3);
        if (v31 <= 1u)
        {
          if (!v31)
          {
            if (v13)
            {
              v33 = 5;
            }

            else
            {
              v33 = 6;
            }

            if (v32)
            {
              v34 = v33;
            }

            else
            {
              v34 = 6;
            }

LABEL_63:
            v35 = *(v10 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
            *(v10 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = v34;
            v36 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
            if (*(v10 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated) == 1 && (sub_10003C2FC(v34, v35) & 1) != 0)
            {
            }

            else
            {
              (*((swift_isaMask & *v10) + 0x100))();

              *(v10 + v36) = 1;
            }

            return;
          }

          if (v32 - 2 >= 2)
          {
            if (!v32)
            {
              goto LABEL_55;
            }

LABEL_59:
            v34 = 3;
            goto LABEL_63;
          }

LABEL_60:
          if (v13)
          {
            v34 = 5;
          }

          else
          {
            v34 = 3;
          }

          goto LABEL_63;
        }

        if (v31 == 2)
        {
          if (v32 > 1u)
          {
            if (v32 == 2)
            {
              goto LABEL_59;
            }

            goto LABEL_60;
          }

          if (v32)
          {
LABEL_55:
            v34 = 4;
            goto LABEL_63;
          }
        }

        else if (v32 == 3)
        {
          goto LABEL_59;
        }

        v34 = sub_100088B38(v12);
        goto LABEL_63;
      }
    }
  }

  v14 = sub_1006B8E50();
  if (a1)
  {
    v15 = 1.0;
    if (a2 <= 1.0)
    {
      v15 = a2;
    }

    a2 = 0.25;
    if (v15 > 0.25)
    {
      a2 = v15;
    }
  }

  v16 = 1.0;
  if (a3 <= 1.0)
  {
    v16 = a3;
  }

  if (v16 <= 0.25)
  {
    v16 = 0.25;
  }

  if (!v14)
  {
    v16 = a3;
  }

  v17 = (v3 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize);
  *v17 = a2;
  v17[1] = v16;
}

uint64_t sub_1006B96F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B973C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AED610);
  v1 = sub_10000617C(v0, qword_100AED610);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006B9804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1006B992C, v1, 0);
}

uint64_t sub_1006B992C()
{
  v74 = v0;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v4 + 104))(v2, enum case for ProtectedData.ProtectedDataState.available(_:), v3);
  v5 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v0[11] = v7;
    v8 = v7;
    v9 = CKRecord.recordType.getter();
    v11 = v10;
    type metadata accessor for JournalEntryMO();
    if (static JournalEntryMO.recordType.getter() == v9 && v12 == v11)
    {

LABEL_16:
      v21 = v0[5];
      v20 = v0[6];
      v22 = v0[4];
      v23 = v0[2];

      v24 = swift_allocObject();
      v0[12] = v24;
      *(v24 + 16) = v23;
      *(v24 + 24) = v8;
      (*(v21 + 104))(v20, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v22);
      v8;
      v25 = v23;
      v26 = swift_task_alloc();
      v0[13] = v26;
      *v26 = v0;
      v26[1] = sub_1006BA224;
      v27 = v0[6];

      return NSManagedObjectContext.perform<A>(schedule:_:)(v26, v27, sub_1006C4C0C, v24, &type metadata for () + 8);
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_16;
    }

    v28 = type metadata accessor for JournalEntryAssetMO();
    if (static JournalEntryAssetMO.recordType.getter() == v9 && v29 == v11)
    {

LABEL_23:

      v31 = sub_1006C4BC4(&unk_100AEEE10, &type metadata accessor for JournalEntryAssetMO);
      v32 = swift_task_alloc();
      v0[14] = v32;
      *v32 = v0;
      v33 = sub_1006BA3F8;
LABEL_24:
      v32[1] = v33;
      v34 = v0[2];
      v35 = v0[3];
      v36 = v28;
      v37 = v31;
LABEL_25:

      return sub_1006BC4E8(v36, v37, v8, v34, v35);
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_23;
    }

    v28 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
    if (static JournalEntryAssetFileAttachmentMO.recordType.getter() == v9 && v38 == v11)
    {

LABEL_32:
      v31 = sub_1006C4BC4(&qword_100AEB688, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
      v32 = swift_task_alloc();
      v0[15] = v32;
      *v32 = v0;
      v33 = sub_1006BA5EC;
      goto LABEL_24;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_32;
    }

    if (qword_100AD0050 != -1)
    {
      swift_once();
    }

    v40 = qword_100B2FC28;
    v41 = CKRecord.recordType.getter();
    if (*(v40 + 16))
    {
      v43 = sub_100094E98(v41, v42);
      v45 = v44;

      if (v45)
      {
        v46 = (*(v40 + 56) + 16 * v43);
        v47 = *v46;
        v48 = v46[1];
        if (qword_100AD0120 != -1)
        {
          swift_once();
        }

        v49 = v0[2];
        v50 = type metadata accessor for Logger();
        sub_10000617C(v50, qword_100AED610);
        v51 = v49;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v54 = 136315394;
          v55 = _typeName(_:qualified:)();
          v57 = sub_100008458(v55, v56, &v73);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2080;
          v58 = CKRecord.recordType.getter();
          v60 = sub_100008458(v58, v59, &v73);

          *(v54 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v52, v53, "Using %s to finalize CloudKit save for %s record", v54, 0x16u);
          swift_arrayDestroy();
        }

        v61 = *(v48 + 8);
        v62 = swift_task_alloc();
        v0[16] = v62;
        *v62 = v0;
        v62[1] = sub_1006BA6FC;
        v34 = v0[2];
        v35 = v0[3];
        v36 = v47;
        v37 = v61;
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v63 = v0[2];
    v64 = type metadata accessor for Logger();
    sub_10000617C(v64, qword_100AED610);
    v65 = v63;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v68 = 136315138;
      v70 = CKRecord.recordType.getter();
      v72 = sub_100008458(v70, v71, &v73);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "Cannot find ManagedObject type corresponding to %s record following CloudKit save", v68, 0xCu);
      sub_10000BA7C(v69);
    }
  }

  else
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AED610);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "isProtectedDataAvailable: false", v16, 2u);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1006BA224()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v7 = v2 + 3;
    v6 = v2[3];
    (*(v5 + 8))(v4, v7[1]);

    return _swift_task_switch(sub_1006BA37C, v6, 0);
  }
}

uint64_t sub_1006BA37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006BA3F8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006BA508, v1, 0);
}

uint64_t sub_1006BA508()
{
  v1 = *(v0 + 88);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1001D5FB0(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006BA5EC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C4C80, v1, 0);
}

uint64_t sub_1006BA6FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C4C64, v1, 0);
}

uint64_t sub_1006BA80C(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_1006BA82C, v1, 0);
}

uint64_t sub_1006BA82C()
{
  v25 = v0;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if (v1)
  {
    v2 = type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v0[6] = v2;
    v0[7] = &off_100A84A10;
    v0[8] = type metadata accessor for JournalEntryAssetMO();
    v0[9] = &off_100A849F0;
    v0[10] = type metadata accessor for JournalEntryMO();
    v0[11] = &off_100A849D0;
    v0[12] = type metadata accessor for JournalMO();
    v0[13] = &off_100A84A20;
    v0[19] = 0;
    v0[20] = v2;
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v3 = v0[18];
    v4 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v0[21] = v4;
    v5 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
    v6 = v4;
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1006BABF8;
    v8 = v0[17];

    return (sub_1008B8C08)(v3, v5, v8, v6, v2, &off_100A84A10);
  }

  else
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v10 = v0[17];
    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AED610);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[17];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = [v15 recordName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_100008458(v19, v21, &v24);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "ProtectedData isn't available, skipping record deletion for id: %s", v16, 0xCu);
      sub_10000BA7C(v17);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1006BABF8(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 144);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_1006BAD28, v3, 0);
}

uint64_t sub_1006BAD28()
{
  v51 = v0;
  if (*(v0 + 184))
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 136);
    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AED610);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 136);
      v7 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008458(v8, v9, &v50);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = [v6 recordName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100008458(v12, v14, &v50);

      *(v7 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s processed sent record deletion for id: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

LABEL_15:
    v37 = *(v0 + 8);

    return v37();
  }

  v16 = *(v0 + 152) + 1;
  *(v0 + 152) = v16;
  if (v16 == 4)
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 136);
    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100AED610);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 136);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v25 = [v22 recordName];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100008458(v26, v28, &v50);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Client requested CloudKit delete record with id: %s, but no matching managed object was found!", v23, 0xCu);
      sub_10000BA7C(v24);
    }

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 136);
    v31 = *(qword_100B2F9E0 + 16);
    v32 = [v30 recordName];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = OBJC_IVAR____TtC7Journal13CoreDataStack_lockUnDeletedObjects;
    [*&v31[OBJC_IVAR____TtC7Journal13CoreDataStack_lockUnDeletedObjects] lock];
    swift_beginAccess();

    sub_100286DEC(&v50, v33, v35);
    swift_endAccess();

    [*&v31[v36] unlock];

    goto LABEL_15;
  }

  v39 = v0 + 16 * v16;
  v41 = *(v39 + 48);
  v40 = *(v39 + 56);
  *(v0 + 160) = v41;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 144);
  v43 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  *(v0 + 168) = v43;
  v44 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v45 = *(v40 + 8);
  v46 = v43;
  v49 = (v45 + *v45);
  v47 = swift_task_alloc();
  *(v0 + 176) = v47;
  *v47 = v0;
  v47[1] = sub_1006BABF8;
  v48 = *(v0 + 136);

  return v49(v42, v44, v48, v46, v41, v40);
}

uint64_t sub_1006BB330(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_1006BB354, v2, 0);
}

uint64_t sub_1006BB354()
{
  v77 = v0;
  if (qword_100AD0120 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  *(v0 + 176) = sub_10000617C(v3, qword_100AED610);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 152);
    v75 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v76 = v11;
    *v9 = 136315394;
    v12 = [v8 recordName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100008458(v13, v15, &v76);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v75;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Attempting to resolve CloudKit Error for recordID %s. Error: %@", v9, 0x16u);
    sub_100004F84(v10, &unk_100AD4BB0);

    sub_10000BA7C(v11);
  }

  *(v0 + 112) = *(v0 + 160);
  type metadata accessor for CKError(0);
  sub_1006C4BC4(&qword_100AD1AA0, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  switch(*(v0 + 120))
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xCLL:
    case 0xDLL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x1BLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x64:
    case 0x6FLL:
    case 0x71:
    case 0x72:
    case 0x73:
    case 0x7CLL:
    case 0x82:
    case 0x83:
    case 0x84:
    case 0x8CLL:
    case 0x96:
    case 0xA0:
    case 0xA1:
      v19 = *(v0 + 160);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 160);
      if (v22)
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v0 + 136) = v23;
        _BridgedStoredNSError.code.getter();
        *(v24 + 4) = *(v0 + 144);

        _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring CloudKit error %ld", v24, 0xCu);
        goto LABEL_8;
      }

      goto LABEL_10;
    case 3:
    case 4:
      v65 = [objc_opt_self() defaultCenter];
      if (qword_100ACFF98 != -1)
      {
        swift_once();
      }

      [v65 postNotificationName:qword_100B2FB88 object:0];

      goto LABEL_11;
    case 0xBLL:
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v52 = qword_100B2F9E0;
      *(v0 + 208) = qword_100B2F9E0;
      v53 = *(v52 + 16);
      v54 = *&v53[OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription];
      v55 = v53;
      os_unfair_lock_lock((v54 + 24));

      *(v54 + 16) = 0;
      os_unfair_lock_unlock((v54 + 24));

      v56 = swift_task_alloc();
      *(v0 + 216) = v56;
      *v56 = v0;
      v56[1] = sub_1006BC1C8;
      v57 = *(v0 + 152);

      return sub_1006BF2B8(v57);
    case 0xELL:
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v58 = qword_100B2F9E0;
      *(v0 + 192) = qword_100B2F9E0;
      v59 = *(v58 + 16);
      v60 = *&v59[OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription];
      v61 = v59;
      os_unfair_lock_lock((v60 + 24));

      *(v60 + 16) = 0;
      os_unfair_lock_unlock((v60 + 24));

      v62 = swift_task_alloc();
      *(v0 + 200) = v62;
      *v62 = v0;
      v62[1] = sub_1006BC048;
      v63 = *(v0 + 160);
      v64 = *(v0 + 152);

      return sub_1006BCE58(v63, v64);
    case 0x19:
      if (byte_100AD3DA1)
      {
        goto LABEL_11;
      }

      v66 = objc_opt_self();
      v67 = [v66 mainBundle];
      v81._object = 0x80000001009013E0;
      v68._countAndFlagsBits = 0x78452061746F7551;
      v68._object = 0xEE00646564656563;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v81._countAndFlagsBits = 0xD00000000000001FLL;
      v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v81);

      v71 = [v66 mainBundle];
      v82._object = 0x8000000100901430;
      v72._countAndFlagsBits = 0xD000000000000024;
      v72._object = 0x8000000100901400;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      v82._countAndFlagsBits = 0xD00000000000001FLL;
      v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v82);

      v50 = [objc_opt_self() defaultCenter];
      if (qword_100ACFF88 != -1)
      {
        swift_once();
      }

      v51 = qword_100B2FB78;
      *(v0 + 56) = v70;
      *(v0 + 72) = v74;
      *(v0 + 88) = 0;
      break;
    case 0x1ALL:
    case 0x1CLL:
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 168);
      v28 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v29 = swift_task_alloc();
      *(v0 + 184) = v29;
      *v29 = v0;
      v29[1] = sub_1006BBF54;

      return sub_10034DA98(v27, v28);
    case 0x6ELL:
      if (byte_100AD3DA0)
      {
        goto LABEL_11;
      }

      v41 = objc_opt_self();
      v42 = [v41 mainBundle];
      v79._countAndFlagsBits = 0xD00000000000001ALL;
      v79._object = 0x8000000100901330;
      v43._countAndFlagsBits = 0xD000000000000040;
      v43._object = 0x80000001009012E0;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v79);

      v46 = [v41 mainBundle];
      v80._countAndFlagsBits = 0xD000000000000019;
      v80._object = 0x80000001009013C0;
      v47._countAndFlagsBits = 0xD000000000000062;
      v47._object = 0x8000000100901350;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v80);

      v50 = [objc_opt_self() defaultCenter];
      if (qword_100ACFF88 != -1)
      {
        swift_once();
      }

      v51 = qword_100B2FB78;
      *(v0 + 16) = v45;
      *(v0 + 32) = v49;
      *(v0 + 48) = 1;
      break;
    case 0x70:
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 168);
      v39 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v40 = swift_task_alloc();
      *(v0 + 224) = v40;
      *v40 = v0;
      v40[1] = sub_1006BC3D8;

      return sub_10034EA1C(v38, v39);
    default:
      v30 = *(v0 + 160);
      v20 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v31))
      {
        v32 = *(v0 + 160);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v76 = v34;
        *v33 = 136315138;
        *(v0 + 128) = v32;
        sub_1006C4BC4(&qword_100AD17E0, type metadata accessor for CKError);
        v35 = Error.localizedDescription.getter();
        v37 = sub_100008458(v35, v36, &v76);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v20, v31, "Ignoring unknown CloudKit error: %s", v33, 0xCu);
        sub_10000BA7C(v34);

LABEL_8:
      }

LABEL_10:

      goto LABEL_11;
  }

  [v50 postNotificationName:v51 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

LABEL_11:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1006BBF54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006BC048()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_1006BC158, v1, 0);
}

uint64_t sub_1006BC158()
{
  v1 = *(*(v0 + 192) + 16);
  sub_10004387C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006BC1C8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 104) = a1;
  *(v3 + 96) = v1;
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_1006BC2E0, v4, 0);
}

uint64_t sub_1006BC2E0()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 104);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "SyncEngine unknownItem resolved: %{BOOL}d", v4, 8u);
  }

  v5 = *(v0 + 208);

  v6 = *(v5 + 16);
  sub_10004387C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006BC3D8()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100136BE8, v1, 0);
}

uint64_t sub_1006BC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1006BC5B4, a5, 0);
}

uint64_t sub_1006BC5B4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = *(v0 + 16);
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = v4;
  v8 = v5;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1006BC6E4;
  v10 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_1006C4C28, v6, &type metadata for () + 8);
}

uint64_t sub_1006BC6E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1006BC890;
  }

  else
  {
    v7 = sub_100398E44;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1006BC890()
{
  v25 = v0;
  if (qword_100AD0120 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AED610);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315906;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008458(v9, v10, &v24);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = CKRecord.recordType.getter();
    v14 = sub_100008458(v12, v13, &v24);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    v15 = [v6 recordID];
    v16 = [v15 recordName];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100008458(v17, v19, &v24);

    *(v7 + 24) = v20;
    *(v7 + 32) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v21;
    *v8 = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed to handle CloudKit save for %s record with id: %s. Error: %@", v7, 0x2Au);
    sub_100004F84(v8, &unk_100AD4BB0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1006BCB68(void *a1)
{
  result = static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)();
  if (!v1)
  {
    if (result)
    {
      v4 = result;
      CKRecord.encodedSystemFields.getter();
      dispatch thunk of RecordUploading.recordSystemFields.setter();
      dispatch thunk of RecordUploading.isUploadedToCloud.setter();
      return v4;
    }

    else
    {
      if (qword_100AD0120 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000617C(v5, qword_100AED610);
      v6 = a1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v9 = 136315650;
        v10 = _typeName(_:qualified:)();
        v12 = sub_100008458(v10, v11, &v22);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2080;
        v13 = CKRecord.recordType.getter();
        v15 = sub_100008458(v13, v14, &v22);

        *(v9 + 14) = v15;
        *(v9 + 22) = 2080;
        v16 = [v6 recordID];
        v17 = [v16 recordName];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = sub_100008458(v18, v20, &v22);

        *(v9 + 24) = v21;
        _os_log_impl(&_mh_execute_header, v7, v8, "Unable to get %s object corresponding to %s record with id: %s", v9, 0x20u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return result;
}

void sub_1006BCDD0(void *a1)
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100B2F9E0 + 16);
  sub_100776E40(a1);
}

uint64_t sub_1006BCE58(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for Logger();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1006BCFA4, v2, 0);
}

uint64_t sub_1006BCFA4()
{
  v100 = v0;
  v0[6] = v0[10];
  type metadata accessor for CKError(0);
  sub_1006C4BC4(&qword_100AD1AA0, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (v0[7] != 14)
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v25 = v0[10];
    sub_10000617C(v0[13], qword_100AED610);
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_26;
    }

    v29 = v0[10];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v29;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    v34 = "Error isn't expected server conflict: %@";
    goto LABEL_25;
  }

  v0[8] = v0[10];
  v1 = _BridgedStoredNSError.userInfo.getter();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

    goto LABEL_20;
  }

  v4 = sub_100094E98(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_10000BA20(*(v1 + 56) + 32 * v4, (v0 + 2));

  sub_100226C08();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v35 = v0[10];
    sub_10000617C(v0[13], qword_100AED610);
    v36 = v35;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_26;
    }

    v37 = v0[10];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v38 = v37;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v39;
    *v31 = v39;
    v34 = "Missing server record from error while handling server conflict %@";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v27, v28, v34, v30, 0xCu);
    sub_100004F84(v31, &unk_100AD4BB0);

LABEL_26:

    goto LABEL_27;
  }

  v7 = v0[9];
  v0[23] = v7;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v8 = qword_100B2F9E0;
  v9 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[24] = v9;
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  v11 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v9 setMergePolicy:v11];

  v12 = CKRecord.recordType.getter();
  v14 = v13;
  if (qword_100AD0068 != -1)
  {
    swift_once();
  }

  if (qword_100B2FC60 == v12 && *algn_100B2FC68 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = v0[11];
    v15 = v0[12];

    v17 = *(v8 + 16);
    v0[25] = v17;
    v17;
    v18 = [v16 recordName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v0[26] = v21;
    v22 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
    v23 = swift_task_alloc();
    v0[27] = v23;
    *v23 = v0;
    v23[1] = sub_1006BDCD4;

    return sub_10077505C(v15, v22, v19, v21, v9);
  }

  if (qword_100AD0070 != -1)
  {
    swift_once();
  }

  if (qword_100B2FC70 == v12 && *algn_100B2FC78 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v41 = v0[12];

    v42 = *(v8 + 16);
    v0[31] = v42;
    sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
    v43 = v42;
    if (v41)
    {
      swift_getObjectType();
      v44 = dispatch thunk of Actor.unownedExecutor.getter();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v0[32] = v44;
    v0[33] = v46;

    return _swift_task_switch(sub_1006BE310, v44, v46);
  }

  if (qword_100AD0078 != -1)
  {
    swift_once();
  }

  if (qword_100B2FC80 == v12 && *algn_100B2FC88 == v14)
  {

LABEL_47:
    v48 = v0[12];
    v49 = *(v8 + 16);
    v0[42] = v49;
    v50 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
    v51 = v49;
    v52 = swift_task_alloc();
    v0[43] = v52;
    *v52 = v0;
    v52[1] = sub_1006BE9D4;

    return sub_100758068(v48, v50, v7, v9);
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_47;
  }

  if (qword_100AD0050 != -1)
  {
    swift_once();
  }

  v53 = qword_100B2FC28;
  v54 = CKRecord.recordType.getter();
  if (*(v53 + 16))
  {
    v56 = sub_100094E98(v54, v55);
    v58 = v57;

    if (v58)
    {
      v59 = (*(v53 + 56) + 16 * v56);
      v60 = *v59;
      v0[46] = *v59;
      v61 = v59[1];
      if (qword_100AD0120 != -1)
      {
        swift_once();
      }

      v62 = v0[11];
      v0[47] = sub_10000617C(v0[13], qword_100AED610);
      v63 = v7;
      v64 = v62;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      v97 = v63;

      if (os_log_type_enabled(v65, v66))
      {
        v95 = v0[11];
        v96 = v61;
        v67 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v67 = 136315650;
        v68 = _typeName(_:qualified:)();
        v70 = sub_100008458(v68, v69, &v99);

        *(v67 + 4) = v70;
        *(v67 + 12) = 2080;
        v71 = CKRecord.recordType.getter();
        v73 = sub_100008458(v71, v72, &v99);

        *(v67 + 14) = v73;
        *(v67 + 22) = 2080;
        v74 = [v95 recordName];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = sub_100008458(v75, v77, &v99);

        *(v67 + 24) = v78;
        _os_log_impl(&_mh_execute_header, v65, v66, "Using %s to resolve conflict with %s record [%s].", v67, 0x20u);
        swift_arrayDestroy();

        v61 = v96;
      }

      v79 = v0[12];
      v80 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
      v81 = swift_task_alloc();
      v0[48] = v81;
      *v81 = v0;
      v81[1] = sub_1006BEE2C;

      return sub_1006C1B18(v79, v80, v97, v9, v60, v61);
    }
  }

  else
  {
  }

  if (qword_100AD0120 != -1)
  {
    swift_once();
  }

  v82 = v0[11];
  sub_10000617C(v0[13], qword_100AED610);
  v83 = v7;
  v84 = v82;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = v0[11];
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v99 = v90;
    *v88 = 136315394;
    v91 = CKRecord.recordType.getter();
    v98 = v83;
    v93 = sub_100008458(v91, v92, &v99);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2112;
    *(v88 + 14) = v87;
    *v89 = v87;
    v94 = v87;
    _os_log_impl(&_mh_execute_header, v85, v86, "Unhandled Record Type %s with recordID %@ encountered while trying to resolve CloudKit conflict.", v88, 0x16u);
    sub_100004F84(v89, &unk_100AD4BB0);

    sub_10000BA7C(v90);
  }

  else
  {
  }

LABEL_27:

  v40 = v0[1];

  return v40(0);
}

uint64_t sub_1006BDCD4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 96);
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1006BDE28, v3, 0);
}

uint64_t sub_1006BDE28()
{
  v1 = v0[28];
  if (v1)
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[22];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[11];
    v8 = swift_allocObject();
    v0[29] = v8;
    v8[2] = v1;
    v8[3] = v3;
    v8[4] = v2;
    v8[5] = v7;
    (*(v6 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v9 = v1;
    v10 = v3;
    v11 = v2;
    v12 = v7;
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_1006BE100;
    v14 = v0[22];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 406, v14, sub_1006C4AD8, v8, &type metadata for Bool);
  }

  else
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v15 = v0[11];
    sub_10000617C(v0[13], qword_100AED610);
    v16 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[11];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to get local entry with recordId:%@", v20, 0xCu);
      sub_100004F84(v21, &unk_100AD4BB0);
    }

    v24 = v0[23];
    v23 = v0[24];

    v25 = v0[1];

    return v25(0);
  }
}

uint64_t sub_1006BE100()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[22];
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[12];
    (*(v6 + 8))(v4, v5);

    return _swift_task_switch(sub_1006BE25C, v7, 0);
  }
}

uint64_t sub_1006BE25C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);

  v3 = *(v0 + 406);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1006BE310()
{
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 144);
  v18 = *(v0 + 168);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = sub_10000617C(v7, qword_100B2FF80);
  (*(v6 + 16))(v5, v8, v7);
  v9 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v0 + 272) = v10;
  *(v10 + 2) = v3;
  *(v10 + 3) = v1;
  *(v10 + 4) = v2;
  (*(v6 + 32))(&v10[v9], v5, v7);
  *(v0 + 400) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v4 + 104);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v18);
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v15 = swift_task_alloc();
  *(v0 + 296) = v15;
  *v15 = v0;
  v15[1] = sub_1006BE4F4;
  v16 = *(v0 + 168);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, sub_1006C4A48, v10, &type metadata for () + 8);
}

uint64_t sub_1006BE4F4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[18];
    v7 = *(v6 + 8);
    v2[38] = v7;
    v2[39] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[32];
    v9 = v2[33];

    return _swift_task_switch(sub_1006BE644, v8, v9);
  }
}

uint64_t sub_1006BE644()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1006BE6B0, v1, 0);
}

uint64_t sub_1006BE6B0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 400);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  *(v6 + 16) = v3;
  v1(v4, v2, v5);
  v7 = v3;
  v8 = swift_task_alloc();
  *(v0 + 328) = v8;
  *v8 = v0;
  v8[1] = sub_1006BE7D4;
  v9 = *(v0 + 160);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 405, v9, sub_1006C4ABC, v6, &type metadata for Bool);
}

uint64_t sub_1006BE7D4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[38];
    v5 = v2[20];
    v6 = v2[17];
    v7 = v2[12];
    v4(v5, v6);

    return _swift_task_switch(sub_1006BE928, v7, 0);
  }
}

uint64_t sub_1006BE928()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 405);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006BE9D4()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 96);

  return _swift_task_switch(sub_1006BEAFC, v2, 0);
}

uint64_t sub_1006BEAFC()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = swift_allocObject();
  v0[44] = v5;
  *(v5 + 16) = v1;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[45] = v7;
  *v7 = v0;
  v7[1] = sub_1006BEC24;
  v8 = v0[19];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 404, v8, sub_1006C4C68, v5, &type metadata for Bool);
}

uint64_t sub_1006BEC24()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[17];
    v7 = v2[12];
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_1006BED80, v7, 0);
  }
}

uint64_t sub_1006BED80()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 404);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006BEE2C(char a1)
{
  v4 = *v2;
  *(v4 + 392) = v1;

  v5 = *(v4 + 96);
  if (v1)
  {
    v6 = sub_1006BF018;
  }

  else
  {
    *(v4 + 407) = a1 & 1;
    v6 = sub_1006BEF6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006BEF6C()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 407);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006BF018()
{
  v23 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 184);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v21 = *(v0 + 192);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008458(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = CKRecord.recordType.getter();
    v15 = sub_100008458(v13, v14, &v22);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v7;
    *v9 = v7;
    *(v8 + 32) = 2112;
    v16 = v7;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v17;
    v9[1] = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s couldn't resolve local differences for %s record with id: %@. Error: %@", v8, 0x2Au);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 184);
  }

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_1006BF2B8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1006BF3DC, v1, 0);
}

uint64_t sub_1006BF3DC()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = qword_100B2F9E0;
  v4 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[15] = v4;
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  v6 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v4 setMergePolicy:v6];

  v7 = [v2 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[16] = v8;
  v0[17] = v10;
  v11 = *(v3 + 16);
  v0[18] = v11;
  v12 = sub_1006C4BC4(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate);
  v0[19] = v12;
  v11;
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1006BF5F0;

  return sub_10077505C(v1, v12, v8, v10, v4);
}

uint64_t sub_1006BF5F0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 40);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1006BF720, v3, 0);
}

uint64_t sub_1006BF720()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[7];
    v5 = v0[8];

    v6 = swift_allocObject();
    v0[22] = v6;
    *(v6 + 16) = v1;
    *(v6 + 24) = v3;
    (*(v5 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v7 = v1;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_1006BF8B4;
    v10 = v0[14];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 359, v10, sub_1006C4B98, v6, &type metadata for Bool);
  }

  else
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[24] = v12;
    v0[25] = v11;

    return _swift_task_switch(sub_1006BFAC8, v12, v11);
  }
}

uint64_t sub_1006BF8B4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[14];
    v5 = v2[7];
    v6 = v2[8];
    v7 = v2[5];
    (*(v6 + 8))(v4, v5);

    return _swift_task_switch(sub_1006BFA10, v7, 0);
  }
}

uint64_t sub_1006BFA10()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 359);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006BFAC8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = swift_allocObject();
  *(v0 + 208) = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  *(v0 + 352) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v5 + 104);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v4);
  v8 = v3;

  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  v10 = sub_1000F24EC(&qword_100ADF608);
  *v9 = v0;
  v9[1] = sub_1006BFC28;
  v11 = *(v0 + 104);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v11, sub_1003444F0, v6, v10);
}

uint64_t sub_1006BFC28()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[13];
    v5 = v2[7];
    v6 = v2[8];
    v7 = *(v6 + 8);
    v2[30] = v7;
    v2[31] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[24];
    v9 = v2[25];

    return _swift_task_switch(sub_1006BFD78, v8, v9);
  }
}

uint64_t sub_1006BFD78()
{
  v1 = v0[5];
  v0[32] = v0[2];
  return _swift_task_switch(sub_1006BFD9C, v1, 0);
}

uint64_t sub_1006BFD9C()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 352);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);

    v7 = swift_allocObject();
    *(v0 + 264) = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v4;
    v2(v5, v3, v6);
    v8 = v4;
    v9 = v1;
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_1006BFF38;
    v11 = *(v0 + 96);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 358, v11, sub_1006C4B6C, v7, &type metadata for Bool);
  }

  else
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 280) = v13;
    *(v0 + 288) = v12;

    return _swift_task_switch(sub_1006C0144, v13, v12);
  }
}

uint64_t sub_1006BFF38()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[30];
    v5 = v2[12];
    v6 = v2[7];
    v7 = v2[5];
    v4(v5, v6);

    return _swift_task_switch(sub_1006C008C, v7, 0);
  }
}

uint64_t sub_1006C008C()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 358);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006C0144()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 352);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 296) = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v5;
  v1(v6, v2, v7);
  v9 = v5;

  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  v11 = sub_1000F24EC(&qword_100AE5110);
  *v10 = v0;
  v10[1] = sub_1006C0290;
  v12 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v12, sub_10048EF30, v8, v11);
}

uint64_t sub_1006C0290()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 240))(*(v2 + 88), *(v2 + 56));

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);

    return _swift_task_switch(sub_1006C03DC, v4, v5);
  }
}

uint64_t sub_1006C03DC()
{
  v1 = v0[5];
  v0[39] = v0[3];
  return _swift_task_switch(sub_1006C0400, v1, 0);
}

uint64_t sub_1006C0400()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 216);
  v3 = *(v0 + 352);
  v4 = *(v0 + 136);
  if (v1)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);

    v8 = swift_allocObject();
    *(v0 + 320) = v8;
    *(v8 + 16) = v1;
    *(v8 + 24) = v5;
    v2(v6, v3, v7);
    v9 = v5;
    v10 = v1;
    v11 = swift_task_alloc();
    *(v0 + 328) = v11;
    *v11 = v0;
    v11[1] = sub_1006C0614;
    v12 = *(v0 + 80);
    v13 = sub_1006C4B40;
    v14 = v0 + 357;
    v15 = v8;
  }

  else
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 48);
    v25 = *(v0 + 72);
    v26 = *(v0 + 56);
    v19 = *(v0 + 32);
    v20 = swift_allocObject();
    *(v0 + 336) = v20;
    v20[2] = v19;
    v20[3] = v17;
    v20[4] = v16;
    v20[5] = v4;
    v20[6] = v18;
    v2(v25, v3, v26);
    v21 = v17;
    v22 = v19;
    v23 = swift_task_alloc();
    *(v0 + 344) = v23;
    *v23 = v0;
    v23[1] = sub_1006C0820;
    v12 = *(v0 + 72);
    v13 = sub_1006C4B1C;
    v14 = v0 + 356;
    v15 = v20;
  }

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v12, v13, v15, &type metadata for Bool);
}

uint64_t sub_1006C0614()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[30];
    v5 = v2[10];
    v6 = v2[7];
    v7 = v2[5];
    v4(v5, v6);

    return _swift_task_switch(sub_1006C0768, v7, 0);
  }
}

uint64_t sub_1006C0768()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 357);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006C0820()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[30];
    v5 = v2[9];
    v6 = v2[7];
    v7 = v2[5];
    v4(v5, v6);

    return _swift_task_switch(sub_1006C0974, v7, 0);
  }
}

uint64_t sub_1006C0974()
{
  v1 = *(v0 + 356);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1006C0A24(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, char *a5@<X8>)
{
  [a1 setRecordSystemFields:0];
  v25 = 0;
  if ([a2 save:&v25])
  {
    v9 = qword_100AD0120;
    v10 = v25;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AED610);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 2u);
    }

    v15 = 1;
  }

  else
  {
    v16 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000617C(v17, qword_100AED610);
    v18 = a2;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v18;
      *v22 = v18;
      *(v21 + 12) = 2112;
      v23 = v18;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      v22[1] = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, a4, v21, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v15 = 0;
  }

  *a5 = v15;
}

void sub_1006C0D1C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  if (qword_100AD0050 != -1)
  {
LABEL_34:
    swift_once();
  }

  v8 = qword_100B2FC28 + 64;
  v9 = 1 << *(qword_100B2FC28 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(qword_100B2FC28 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  do
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (v14 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          v13 = v14;
          goto LABEL_10;
        }
      }

      if (qword_100AD0120 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000617C(v28, qword_100AED610);
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "Could not find a local managed object with ID %@", v32, 0xCu);
        sub_100004F84(v33, &unk_100AD4BB0);
      }

      goto LABEL_22;
    }

LABEL_10:
    v15 = static Identifiable<>.fetchObjectForRecordID(_:context:includeUnsavedObjects:)();
    if (v5)
    {
      goto LABEL_26;
    }

    v11 &= v11 - 1;
  }

  while (!v15);
  v45 = v15;
  dispatch thunk of RecordUploading.recordSystemFields.setter();
  v50 = 0;
  if (![a2 save:&v50])
  {
    v36 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_26:
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000617C(v37, qword_100AED610);

    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v40 = 136315650;
      v41 = _typeName(_:qualified:)();
      v43 = sub_100008458(v41, v42, &v50);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_100008458(a3, a4, &v50);
      *(v40 + 22) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v44;
      *v46 = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s failed trying to resolve UnknownItemError for id %s. Error: %@", v40, 0x20u);
      sub_100004F84(v46, &unk_100AD4BB0);

      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_22:
    v35 = 0;
    goto LABEL_23;
  }

  v16 = qword_100AD0120;
  v17 = v50;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000617C(v18, qword_100AED610);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_100008458(v22, v23, &v50);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008458(v25, v26, &v50);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s resolved UnknownItemError using type %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v35 = 1;
LABEL_23:
  *a5 = v35;
}

void sub_1006C1390(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v11 = type metadata accessor for UUID();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v19 = *(qword_100B2F9E0 + 16);
  sub_10077718C(a1, a2);
  if (v5)
  {
  }

  else
  {

    v55 = 0;
    v20 = [a3 save:&v55];
    v21 = v55;
    if (v20)
    {
      *a5 = 1;
      v22 = v21;
      return;
    }

    v23 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v53 = 0;
  v54 = a5;
  if (qword_100AD0120 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000617C(v24, qword_100AED610);
  v25 = a1;
  v26 = a4;
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v49 = v28;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v29 = 136315650;
    v31 = [v25 id];
    if (v31)
    {
      v32 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = v51;
    v34 = v52;
    (*(v51 + 56))(v15, v33, 1, v52);
    sub_100024EC0(v15, v18);
    if ((*(v35 + 48))(v18, 1, v34))
    {
      sub_100004F84(v18, &qword_100AD1420);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v38 = v50;
      (*(v35 + 16))(v50, v18, v34);
      sub_100004F84(v18, &qword_100AD1420);
      v39 = v34;
      v40 = UUID.uuidString.getter();
      v41 = v35;
      v42 = v40;
      v36 = v43;
      (*(v41 + 8))(v38, v39);
      v37 = v42;
    }

    v44 = sub_100008458(v37, v36, &v55);

    *(v29 + 4) = v44;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v26;
    *v30 = v26;
    *(v29 + 22) = 2112;
    v45 = v26;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v46;
    v30[1] = v46;
    _os_log_impl(&_mh_execute_header, v27, v49, "Error resolving differences between entry %s and record %@: %@", v29, 0x20u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();

    sub_10000BA7C(v48);
  }

  else
  {
  }

  *v54 = 0;
}

void sub_1006C18D0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16 = 0;
  v4 = [a1 save:&v16];
  v5 = v16;
  if (v4)
  {
    *a2 = 1;
    v6 = v5;
  }

  else
  {
    v7 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AED610);
    v9 = a1;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2112;
      v14 = v9;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      v13[1] = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to save background context:%@ error:%@", v12, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }

    *a2 = 0;
  }
}

uint64_t sub_1006C1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[10] = v10;
  v7[11] = v12;

  return _swift_task_switch(sub_1006C1C1C, v10, v12);
}

uint64_t sub_1006C1C1C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = *(v0 + 32);
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v8 = v6;
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_1006C1D5C;
  v11 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 120, v11, sub_1006C4AF8, v7, &type metadata for Bool);
}

uint64_t sub_1006C1D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1006C1F84;
  }

  else
  {
    v8 = sub_1006C1F18;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1006C1F18()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006C1F84()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1006C1FEC(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v7 = static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)();
  if (!v3)
  {
    if (v7)
    {
      v8 = v7;
      dispatch thunk of static ManagedObjectCloudKitSyncing.resolveDifferences(object:record:)();
      v25 = 0;
      if ([a2 save:&v25])
      {
        v23 = v25;

        *a3 = 1;
      }

      else
      {
        v24 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100AD0120 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100AED610);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = _typeName(_:qualified:)();
        v16 = sub_100008458(v14, v15, &v25);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = [v10 recordID];
        v18 = [v17 recordName];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_100008458(v19, v21, &v25);

        *(v13 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "Couldn't find [%s] object for recordID: %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      *a3 = 0;
    }
  }
}

uint64_t sub_1006C22D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1006C2424, v1, 0);
}

uint64_t sub_1006C2424()
{
  v113 = v0;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if ((v1 & 1) == 0)
  {
    if (qword_100AD0120 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AED610);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "ProtectedData isn't available, skipping record deletion", v41, 2u);
    }

LABEL_16:

    v42 = *(v0 + 8);

    return v42();
  }

  if (qword_100AD0120 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v11 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 16);
  v8 = type metadata accessor for Logger();
  *(v0 + 112) = sub_10000617C(v8, qword_100AED610);
  v9 = *(v6 + 16);
  v9(v3, v7, v5);
  v9(v2, v7, v5);
  v9(v4, v7, v5);
  v9(v11, v7, v5);
  v10 = Logger.logObject.getter();
  LODWORD(v11) = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  if (!v12)
  {
    v17 = *(v0 + 88);
    v11 = *(v0 + 64);
    v44 = *(*(v0 + 72) + 8);
    v44(*(v0 + 80), v11);
    v44(v14, v11);

    v44(v13, v11);
    v44(v17, v11);
    goto LABEL_22;
  }

  log = v10;
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = swift_slowAlloc();
  v111 = swift_slowAlloc();
  *v17 = 136315906;
  v18 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  sub_1002AFE54(v18);

  v19 = Dictionary.description.getter();
  v21 = v20;

  v9 = *(v15 + 8);
  (v9)(v13, v16);
  v22 = sub_100008458(v19, v21, &v111);

  *(v17 + 4) = v22;
  *(v17 + 12) = 2048;
  v23 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  if (v23 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 64);

    v109 = v9;
    (v9)(v25, v26);
    *(v17 + 14) = i;
    *(v17 + 22) = 2080;
    v27 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
    v28 = *(v27 + 16);
    if (v28)
    {
      v108 = v11;
      v29 = *(v0 + 40);
      v112 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v32 = *(v29 + 16);
      v30 = v29 + 16;
      v31 = v32;
      v33 = v27 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
      v34 = *(v30 + 56);
      do
      {
        v35 = *(v0 + 56);
        v36 = *(v0 + 32);
        v31(v35, v33, v36);
        CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
        (*(v30 - 8))(v35, v36);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v33 += v34;
        --v28;
      }

      while (v28);

      v37 = v112;
      LODWORD(v11) = v108;
    }

    else
    {

      v37 = _swiftEmptyArrayStorage;
    }

    v45 = *(v0 + 80);
    v46 = *(v0 + 88);
    v47 = *(v0 + 64);
    sub_1002AFE54(v37);

    v48 = Dictionary.description.getter();
    v9 = v49;

    v109(v46, v47);
    v50 = sub_100008458(v48, v9, &v111);

    *(v17 + 24) = v50;
    *(v17 + 32) = 2048;
    v51 = *(CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter() + 16);

    v109(v45, v47);
    *(v17 + 34) = v51;
    _os_log_impl(&_mh_execute_header, log, v11, "Handle sent record zone changes.\nSaves: %s\nDeletions: %ld\nFailed saves: %s\nFailed deletions: %ld", v17, 0x2Au);
    swift_arrayDestroy();

LABEL_22:
    v52 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
    *(v0 + 120) = v52;
    if (v52 >> 62)
    {
      break;
    }

    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 128) = v53;
    if (!v53)
    {
      goto LABEL_32;
    }

LABEL_24:
    if (v53 >= 1)
    {
      *(v0 + 136) = 0;
      v54 = *(v0 + 120);
      if ((v54 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v54 + 32);
      }

      v56 = v55;
      *(v0 + 144) = v55;
      v57 = swift_task_alloc();
      *(v0 + 152) = v57;
      *v57 = v0;
      v57[1] = sub_1006C30C8;

      return sub_1006B9804(v56);
    }

    __break(1u);
LABEL_42:
    ;
  }

  v53 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 128) = v53;
  if (v53)
  {
    goto LABEL_24;
  }

LABEL_32:

  v58 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v0 + 160) = v58;
  if (v58 >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 168) = v59;
    if (!v59)
    {
      goto LABEL_44;
    }

LABEL_34:
    if (v59 >= 1)
    {
      *(v0 + 176) = 0;
      v60 = *(v0 + 160);
      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v61 = *(v60 + 32);
      }

      v62 = v61;
      *(v0 + 184) = v61;
      v63 = swift_task_alloc();
      *(v0 + 192) = v63;
      *v63 = v0;
      v63[1] = sub_1006C38EC;

      return sub_1006BA80C(v62);
    }

    __break(1u);
LABEL_64:
    swift_once();
    goto LABEL_45;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 168) = v59;
  if (v59)
  {
    goto LABEL_34;
  }

LABEL_44:

  if (qword_100ACFE28 != -1)
  {
    goto LABEL_64;
  }

LABEL_45:
  v64 = *(qword_100B2F9E0 + 16);
  sub_1006F0764();

  v65 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 200) = v65;
  v66 = *(v65 + 16);
  *(v0 + 208) = v66;
  if (v66)
  {
    v67 = *(v0 + 32);
    v68 = *(v0 + 40);
    v69 = *(v68 + 16);
    v68 += 16;
    v70 = *(v68 + 64);
    *(v0 + 320) = v70;
    *(v0 + 216) = *(v68 + 56);
    *(v0 + 224) = v69;
    *(v0 + 232) = 0;
    v69(*(v0 + 48), v65 + ((v70 + 32) & ~v70), v67);
    v71 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v0 + 240) = v71;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v74 = 136446466;
      v75 = CKRecord.recordType.getter();
      v77 = sub_100008458(v75, v76, &v112);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = [v71 recordID];
      v79 = [v78 recordName];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = sub_100008458(v80, v82, &v112);

      *(v74 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v72, v73, "Failed to save %{public}s record [%s]. Will attempt to recover.", v74, 0x16u);
      swift_arrayDestroy();
    }

    v84 = [v71 recordID];
    *(v0 + 248) = v84;
    v85 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 256) = v85;
    v86 = swift_task_alloc();
    *(v0 + 264) = v86;
    *v86 = v0;
    v87 = sub_1006C4014;
    goto LABEL_59;
  }

  v88 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 272) = v88;
  v89 = *(v88 + 32);
  *(v0 + 324) = v89;
  v90 = -1;
  v91 = -1 << v89;
  if (-(-1 << v89) < 64)
  {
    v90 = ~(-1 << -(-1 << v89));
  }

  v92 = v90 & *(v88 + 64);
  if (!v92)
  {
    v94 = 0;
    v95 = ((63 - v91) >> 6) - 1;
    while (v95 != v94)
    {
      v93 = v94 + 1;
      v92 = *(v88 + 8 * v94++ + 72);
      if (v92)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_16;
  }

  v93 = 0;
LABEL_56:
  *(v0 + 280) = v92;
  *(v0 + 288) = v93;
  v96 = (v93 << 9) | (8 * __clz(__rbit64(v92)));
  v97 = *(*(v88 + 48) + v96);
  *(v0 + 296) = v97;
  v98 = *(*(v88 + 56) + v96);
  *(v0 + 304) = v98;
  v84 = v97;
  v85 = v98;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v112 = v102;
    *v101 = 136315138;
    v103 = [v84 recordName];
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v107 = sub_100008458(v104, v106, &v112);

    *(v101 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v99, v100, "Failed to delete record [%s]", v101, 0xCu);
    sub_10000BA7C(v102);
  }

  v86 = swift_task_alloc();
  *(v0 + 312) = v86;
  *v86 = v0;
  v87 = sub_1006C4678;
LABEL_59:
  v86[1] = v87;

  return sub_1006BB330(v84, v85);
}

uint64_t sub_1006C30C8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C31D8, v1, 0);
}

uint64_t sub_1006C31D8()
{
  v61 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  if (v1 + 1 != v2)
  {
    v7 = *(v0 + 136) + 1;
    *(v0 + 136) = v7;
    v8 = *(v0 + 120);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v10 = v9;
    *(v0 + 144) = v9;
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_1006C30C8;

    return sub_1006B9804(v10);
  }

  v3 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v0 + 160) = v3;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 168) = v4;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 168) = v4;
    if (v4)
    {
LABEL_4:
      if (v4 >= 1)
      {
        *(v0 + 176) = 0;
        v5 = *(v0 + 160);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v5 + 32);
        }

        v13 = v6;
        *(v0 + 184) = v6;
        v14 = swift_task_alloc();
        *(v0 + 192) = v14;
        *v14 = v0;
        v14[1] = sub_1006C38EC;

        return sub_1006BA80C(v13);
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  if (qword_100ACFE28 != -1)
  {
LABEL_40:
    swift_once();
  }

  v15 = *(qword_100B2F9E0 + 16);
  sub_1006F0764();

  v16 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 200) = v16;
  v17 = *(v16 + 16);
  *(v0 + 208) = v17;
  if (v17)
  {
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    v20 = *(v19 + 16);
    v19 += 16;
    v21 = *(v19 + 64);
    *(v0 + 320) = v21;
    *(v0 + 216) = *(v19 + 56);
    *(v0 + 224) = v20;
    *(v0 + 232) = 0;
    v20(*(v0 + 48), v16 + ((v21 + 32) & ~v21), v18);
    v22 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v0 + 240) = v22;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v25 = 136446466;
      v26 = CKRecord.recordType.getter();
      v28 = sub_100008458(v26, v27, &v60);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = [v22 recordID];
      v30 = [v29 recordName];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100008458(v31, v33, &v60);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to save %{public}s record [%s]. Will attempt to recover.", v25, 0x16u);
      swift_arrayDestroy();
    }

    v35 = [v22 recordID];
    *(v0 + 248) = v35;
    v36 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 256) = v36;
    v37 = swift_task_alloc();
    *(v0 + 264) = v37;
    *v37 = v0;
    v38 = sub_1006C4014;
LABEL_33:
    v37[1] = v38;

    return sub_1006BB330(v35, v36);
  }

  v39 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 272) = v39;
  v40 = *(v39 + 32);
  *(v0 + 324) = v40;
  v41 = -1;
  v42 = -1 << v40;
  if (-(-1 << v40) < 64)
  {
    v41 = ~(-1 << -(-1 << v40));
  }

  v43 = v41 & *(v39 + 64);
  if (v43)
  {
    v44 = 0;
LABEL_30:
    *(v0 + 280) = v43;
    *(v0 + 288) = v44;
    v47 = (v44 << 9) | (8 * __clz(__rbit64(v43)));
    v48 = *(*(v39 + 48) + v47);
    *(v0 + 296) = v48;
    v49 = *(*(v39 + 56) + v47);
    *(v0 + 304) = v49;
    v35 = v48;
    v36 = v49;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v53;
      *v52 = 136315138;
      v54 = [v35 recordName];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_100008458(v55, v57, &v60);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to delete record [%s]", v52, 0xCu);
      sub_10000BA7C(v53);
    }

    v37 = swift_task_alloc();
    *(v0 + 312) = v37;
    *v37 = v0;
    v38 = sub_1006C4678;
    goto LABEL_33;
  }

  v45 = 0;
  v46 = ((63 - v42) >> 6) - 1;
  while (v46 != v45)
  {
    v44 = v45 + 1;
    v43 = *(v39 + 8 * v45++ + 72);
    if (v43)
    {
      goto LABEL_30;
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1006C38EC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C39FC, v1, 0);
}

uint64_t sub_1006C39FC()
{
  v55 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  if (v1 + 1 == v2)
  {

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v3 = *(qword_100B2F9E0 + 16);
    sub_1006F0764();

    v4 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
    *(v0 + 200) = v4;
    v5 = *(v4 + 16);
    *(v0 + 208) = v5;
    if (v5)
    {
      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
      v8 = *(v7 + 16);
      v7 += 16;
      v9 = *(v7 + 64);
      *(v0 + 320) = v9;
      *(v0 + 216) = *(v7 + 56);
      *(v0 + 224) = v8;
      *(v0 + 232) = 0;
      v8(*(v0 + 48), v4 + ((v9 + 32) & ~v9), v6);
      v10 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 240) = v10;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v13 = 136446466;
        v14 = CKRecord.recordType.getter();
        v16 = sub_100008458(v14, v15, &v54);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = [v10 recordID];
        v18 = [v17 recordName];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_100008458(v19, v21, &v54);

        *(v13 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "Failed to save %{public}s record [%s]. Will attempt to recover.", v13, 0x16u);
        swift_arrayDestroy();
      }

      v23 = [v10 recordID];
      *(v0 + 248) = v23;
      v24 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 256) = v24;
      v25 = swift_task_alloc();
      *(v0 + 264) = v25;
      *v25 = v0;
      v26 = sub_1006C4014;
LABEL_24:
      v25[1] = v26;

      return sub_1006BB330(v23, v24);
    }

    v30 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v0 + 272) = v30;
    v31 = *(v30 + 32);
    *(v0 + 324) = v31;
    v32 = -1;
    v33 = -1 << v31;
    if (-(-1 << v31) < 64)
    {
      v32 = ~(-1 << -(-1 << v31));
    }

    v34 = v32 & *(v30 + 64);
    if (v34)
    {
      v35 = 0;
LABEL_21:
      *(v0 + 280) = v34;
      *(v0 + 288) = v35;
      v41 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
      v42 = *(*(v30 + 48) + v41);
      *(v0 + 296) = v42;
      v43 = *(*(v30 + 56) + v41);
      *(v0 + 304) = v43;
      v23 = v42;
      v24 = v43;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v54 = v47;
        *v46 = 136315138;
        v48 = [v23 recordName];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = sub_100008458(v49, v51, &v54);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to delete record [%s]", v46, 0xCu);
        sub_10000BA7C(v47);
      }

      v25 = swift_task_alloc();
      *(v0 + 312) = v25;
      *v25 = v0;
      v26 = sub_1006C4678;
      goto LABEL_24;
    }

    v39 = 0;
    v40 = ((63 - v33) >> 6) - 1;
    while (v40 != v39)
    {
      v35 = v39 + 1;
      v34 = *(v30 + 8 * v39++ + 72);
      if (v34)
      {
        goto LABEL_21;
      }
    }

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v27 = *(v0 + 176) + 1;
    *(v0 + 176) = v27;
    v28 = *(v0 + 160);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v29 = *(v28 + 8 * v27 + 32);
    }

    v36 = v29;
    *(v0 + 184) = v29;
    v37 = swift_task_alloc();
    *(v0 + 192) = v37;
    *v37 = v0;
    v37[1] = sub_1006C38EC;

    return sub_1006BA80C(v36);
  }
}

uint64_t sub_1006C4014()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C415C, v3, 0);
}

uint64_t sub_1006C415C()
{
  v48 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);

  (*(v4 + 8))(v3, v5);
  if (v1 + 1 != v2)
  {
    v12 = *(v0 + 224);
    v13 = *(v0 + 232) + 1;
    *(v0 + 232) = v13;
    v12(*(v0 + 48), *(v0 + 200) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(v0 + 216) * v13, *(v0 + 32));
    v14 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v0 + 240) = v14;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v17 = 136446466;
      v18 = CKRecord.recordType.getter();
      v20 = sub_100008458(v18, v19, &v47);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v21 = [v14 recordID];
      v22 = [v21 recordName];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_100008458(v23, v25, &v47);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save %{public}s record [%s]. Will attempt to recover.", v17, 0x16u);
      swift_arrayDestroy();
    }

    v27 = [v14 recordID];
    *(v0 + 248) = v27;
    v28 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 256) = v28;
    v29 = swift_task_alloc();
    *(v0 + 264) = v29;
    *v29 = v0;
    v30 = sub_1006C4014;
LABEL_15:
    v29[1] = v30;

    return sub_1006BB330(v27, v28);
  }

  v6 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 272) = v6;
  v7 = *(v6 + 32);
  *(v0 + 324) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -(-1 << v7));
  }

  v10 = v8 & *(v6 + 64);
  if (v10)
  {
    v11 = 0;
LABEL_12:
    *(v0 + 280) = v10;
    *(v0 + 288) = v11;
    v33 = (v11 << 9) | (8 * __clz(__rbit64(v10)));
    v34 = *(*(v6 + 48) + v33);
    *(v0 + 296) = v34;
    v35 = *(*(v6 + 56) + v33);
    *(v0 + 304) = v35;
    v27 = v34;
    v28 = v35;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      v40 = [v27 recordName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100008458(v41, v43, &v47);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to delete record [%s]", v38, 0xCu);
      sub_10000BA7C(v39);
    }

    v29 = swift_task_alloc();
    *(v0 + 312) = v29;
    *v29 = v0;
    v30 = sub_1006C4678;
    goto LABEL_15;
  }

  v31 = 0;
  v32 = ((63 - v9) >> 6) - 1;
  while (v32 != v31)
  {
    v11 = v31 + 1;
    v10 = *(v6 + 8 * v31++ + 72);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1006C4678()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006C4788, v1, 0);
}

void sub_1006C4788()
{
  v23 = v0;
  v1 = *(v0 + 296);

  v2 = *(v0 + 288);
  v3 = (*(v0 + 280) - 1) & *(v0 + 280);
  if (v3)
  {
    v4 = *(v0 + 272);
LABEL_7:
    *(v0 + 280) = v3;
    *(v0 + 288) = v2;
    v6 = (v2 << 9) | (8 * __clz(__rbit64(v3)));
    v7 = *(*(v4 + 48) + v6);
    *(v0 + 296) = v7;
    v8 = *(*(v4 + 56) + v6);
    *(v0 + 304) = v8;
    v9 = v7;
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      v15 = [v9 recordName];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100008458(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to delete record [%s]", v13, 0xCu);
      sub_10000BA7C(v14);
    }

    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_1006C4678;

    sub_1006BB330(v9, v10);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return;
      }

      v4 = *(v0 + 272);
      if (v5 >= (((1 << *(v0 + 324)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v4 + 8 * v5 + 64);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v21 = *(v0 + 8);

    v21();
  }
}

uint64_t sub_1006C4BC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006C4C28()
{
  v2 = sub_1006BCB68(*(v0 + 32));
  if (!v1)
  {
  }
}

double sub_1006C4C84(unsigned __int8 a1)
{
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v16 = CGRectGetWidth(v42) + -40.0 + -4.0;
  v17 = v16 * 0.25 + -2.0;
  v18 = [v6 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  Width = CGRectGetWidth(v43);
  v28 = [v6 mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  v37 = CGRectGetWidth(v44);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        v17 = v37 + -90.0;
        v38 = Width + -40.0;
        (*(v3 + 104))(v5, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
        v39 = JournalFeatureFlags.isEnabled.getter();
        (*(v3 + 8))(v5, v2);
        if ((v39 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else if (a1 == 4)
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return v16;
    }

    else
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else
  {
    return v16;
  }

  return v17;
}

char *sub_1006C4F4C(int a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for WorkoutRouteThumbnailCacheOperation());
  sub_1006AACD4(v14);
  sub_1006C69F0(v14, v15 + qword_100B2F7F0);
  v16 = UITraitCollection.modifyingTraits(_:)();
  v17 = v6;

  return sub_1000771E8(v17, a1, a2, a3 & 1, a4, a5, v16);
}

uint64_t sub_1006C507C(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for UUID();
  sub_1006C69A8(&qword_100AE19B0, &type metadata accessor for UUID);
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
  v7 = 0x656772614C78;
  v8 = 0xE500000000000000;
  v9 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v9 = 0x657263536C6C7566;
    v8 = 0xEA00000000006E65;
  }

  v10 = 0xE600000000000000;
  v11 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v11 = 0x61546D756964656DLL;
    v10 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0xEA00000000006564;
  v13 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v13 = 0x656772616CLL;
    v12 = 0xE500000000000000;
  }

  if (a2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x6154656772614C78;
    v14 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v12 = v14;
  }

  else
  {
    v7 = v13;
  }

  if (a2 <= 3u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 3u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v8;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  return 0x2D626D756874;
}

id sub_1006C5308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutRouteAsset()
{
  result = qword_100AED650;
  if (!qword_100AED650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1006C5410()
{
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v129 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v132 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v5 - 8);
  v122 = &v108 - v6;
  v7 = sub_1000F24EC(&qword_100AD8D40);
  v120 = *(v7 - 8);
  v121 = v7;
  __chkstk_darwin(v7);
  v118 = &v108 - v8;
  v117 = sub_1000F24EC(&qword_100AD8D48);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v108 - v9;
  v119 = sub_1000F24EC(&qword_100AD8D50);
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v114 = &v108 - v10;
  v131 = sub_1000F24EC(&qword_100AD8D58);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v108 - v11;
  v12 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v123 = *(v12 - 8);
  v124 = v12;
  __chkstk_darwin(v12);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v15 - 8);
  v126 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = &v108 - v18;
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  v22 = type metadata accessor for UTType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v26 - 8);
  v28 = &v108 - v27;
  v29 = type metadata accessor for WorkoutRouteAssetMetadata();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v0;
  if (!*(v0 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
  {
    (*(v30 + 56))(v28, 1, 1, v29, v31);
    goto LABEL_6;
  }

  sub_10025B758(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_6:
    sub_100004F84(v28, &qword_100AD5B28);
    return 0;
  }

  v109 = v30;
  v34 = *(v30 + 32);
  v110 = v29;
  v34(v33, v28);
  static UTType.item.getter();
  v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v37 = [v35 initWithContentType:isa];

  (*(v23 + 8))(v25, v22);
  v38 = WorkoutRouteAssetMetadata.type.getter();
  if (!v39)
  {
    v40 = v38;
    v41 = [objc_opt_self() mainBundle];
    v136._object = 0x8000000100900C90;
    v42._countAndFlagsBits = 0x74756F6B726F57;
    v42._object = 0xE700000000000000;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v136._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v40, v41, v43, v136);
  }

  v44 = String._bridgeToObjectiveC()();

  [v37 setDisplayName:v44];

  WorkoutRouteAssetMetadata.startTime.getter();
  v45 = type metadata accessor for Date();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v112 = v46 + 48;
  v111 = v47;
  v48 = 0;
  if (v47(v21, 1, v45) != 1)
  {
    v48 = Date._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v21, v45);
  }

  [v37 setTimestamp:v48];

  v49 = WorkoutRouteAssetMetadata.distance.getter();
  if (v50)
  {
    v51 = v49;
    v52 = v50;
    v53 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_10009BCC8((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[16 * v55];
    *(v56 + 4) = v51;
    *(v56 + 5) = v52;
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  WorkoutRouteAssetMetadata.duration.getter();
  if (v57)
  {
    sub_1006C63F4();
  }

  static Duration.seconds(_:)();
  v58 = Duration.formatted()();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_10009BCC8(0, *(v53 + 2) + 1, 1, v53);
  }

  v60 = *(v53 + 2);
  v59 = *(v53 + 3);
  if (v60 >= v59 >> 1)
  {
    v53 = sub_10009BCC8((v59 > 1), v60 + 1, 1, v53);
  }

  v108 = v46;
  *(v53 + 2) = v60 + 1;
  *&v53[16 * v60 + 32] = v58;
  v61 = WorkoutRouteAssetMetadata.mindfulnessHeartRate.getter();
  if (v62)
  {
    v63 = v131;
  }

  else
  {
    v133 = v61;
    static FormatStyle<>.beatsPerMinute.getter();
    sub_10009BA68();
    sub_1006C69A8(&qword_100AEC7A0, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v64 = v124;
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v123 + 8))(v14, v64);
    v65 = v134;
    v66 = v135;
    v68 = *(v53 + 2);
    v67 = *(v53 + 3);
    v63 = v131;
    if (v68 >= v67 >> 1)
    {
      v53 = sub_10009BCC8((v67 > 1), v68 + 1, 1, v53);
    }

    *(v53 + 2) = v68 + 1;
    v69 = &v53[16 * v68];
    *(v69 + 4) = v65;
    *(v69 + 5) = v66;
  }

  WorkoutRouteAssetMetadata.caloriesBurnt.getter();
  v70 = [objc_opt_self() kilocalories];
  sub_10069F510();
  v71 = v130;
  Measurement.init(value:unit:)();
  countAndFlagsBits = WorkoutRouteAssetMetadata.calories.getter();
  if (!object)
  {
    v74 = v113;
    static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
    v75 = v118;
    static MeasurementFormatUnitUsage<>.workout.getter();
    static Locale.autoupdatingCurrent.getter();
    sub_10009BA68();
    v76 = v122;
    FloatingPointFormatStyle.init(locale:)();
    v77 = sub_1000F24EC(&qword_100AD8D68);
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = v45;
    v79 = v114;
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    sub_100004F84(v76, &qword_100AD8D38);
    (*(v120 + 8))(v75, v121);
    v80 = v74;
    v63 = v131;
    (*(v115 + 8))(v80, v117);
    sub_10000B58C(&qword_100AD8D70, &qword_100AD8D50);
    v81 = v119;
    Measurement<>.formatted<A>(_:)();
    v82 = v79;
    v45 = v78;
    (*(v116 + 8))(v82, v81);
    v83 = String.uppercased()();

    object = v83._object;
    countAndFlagsBits = v83._countAndFlagsBits;
  }

  v85 = *(v53 + 2);
  v84 = *(v53 + 3);
  if (v85 >= v84 >> 1)
  {
    v105 = countAndFlagsBits;
    v106 = object;
    v107 = sub_10009BCC8((v84 > 1), v85 + 1, 1, v53);
    object = v106;
    v71 = v130;
    v53 = v107;
    countAndFlagsBits = v105;
  }

  *(v53 + 2) = v85 + 1;
  v86 = &v53[16 * v85];
  *(v86 + 4) = countAndFlagsBits;
  *(v86 + 5) = object;
  v134 = v53;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  BidirectionalCollection<>.joined(separator:)();

  v87 = String._bridgeToObjectiveC()();

  [v37 setContentDescription:v87];

  v88 = v126;
  WorkoutRouteAssetMetadata.startTime.getter();
  if (v111(v88, 1, v45) == 1)
  {
    v89 = *(v125 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    v90 = v127;
    if (v89 && (v91 = [v89 entry]) != 0)
    {
      v92 = v91;
      JournalEntryMO.displayDate.getter();

      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    (*(v108 + 56))(v90, v93, 1, v45);
    if (v111(v88, 1, v45) != 1)
    {
      sub_100004F84(v88, &unk_100AD4790);
    }
  }

  else
  {
    v94 = v108;
    v90 = v127;
    (*(v108 + 32))(v127, v88, v45);
    (*(v94 + 56))(v90, 0, 1, v45);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v95 = String.init(localized:table:bundle:locale:comment:)();
  v97 = v96;
  sub_1000F24EC(&unk_100AD9A60);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100940080;
  v99 = sub_10012C00C(v95, v97, v90);
  v100 = v90;
  v102 = v101;

  *(v98 + 32) = v99;
  *(v98 + 40) = v102;
  v103 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setAlternateNames:v103];

  sub_100004F84(v100, &unk_100AD4790);
  (*(v128 + 8))(v71, v63);
  (*(v109 + 8))(v33, v110);
  return v37;
}

double sub_1006C63F4()
{
  v0 = type metadata accessor for Calendar();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  WorkoutRouteAssetMetadata.startTime.getter();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  WorkoutRouteAssetMetadata.endTime.getter();
  if (v18(v7, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v7, 1, v11) != 1)
    {
      sub_100004F84(v7, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v7, v11);
  }

  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10005FF80(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  Calendar.dateComponents(_:from:to:)();

  (*(v32 + 8))(v2, v33);
  v24 = DateComponents.second.getter();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v14, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1006C69A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C69F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5B28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C6A60@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = sub_1000F24EC(&qword_100AE4FC8);
  __chkstk_darwin(v26);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000F24EC(&qword_100ADA540);
  __chkstk_darwin(v25);
  v12 = v24 - v11;
  v13 = sub_1000F24EC(&qword_100AE4FC0);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = type metadata accessor for AttributedString.CharacterView();
  v17 = sub_1006C8068(&qword_100AE5028, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  dispatch thunk of Collection.startIndex.getter();
  sub_1006C8068(&qword_100AE5010, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_1006C8068(&qword_100AE5038, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_1006C80B0(v6, v3);
      v22 = *(v21 + 48);
      v20(v12, v3, v7);
      v23 = *(v8 + 8);
      v23(&v3[v22], v7);
      sub_1006C8120(v6, v3);
      v20(&v12[*(v25 + 36)], &v3[*(v21 + 48)], v7);
      v23(v3, v7);
      dispatch thunk of Collection.subscript.getter();
      return sub_100004F84(v12, &qword_100ADA540);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006C6E48()
{
  v0 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_1000F24EC(&qword_100ADA980);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for ConfettiAssetMetadata();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AC7D4(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &qword_100ADA980);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    ConfettiAssetMetadata.title.getter();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100004F84(v2, &qword_100AD8D78);
      v18 = _swiftEmptyArrayStorage;
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      sub_1005ED630();
      (*(v4 + 16))(v6, v9, v3);
      v19 = NSAttributedString.init(_:)();
      v20 = [v19 string];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v18 = sub_10009B77C(0, 1, 1, _swiftEmptyArrayStorage);
      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_10009B77C((v23 > 1), v24 + 1, 1, v18);
      }

      (*(v4 + 8))(v9, v3);
      *(v18 + 2) = v24 + 1;
      v25 = &v18[2 * v24];
      *(v25 + 4) = v35;
      *(v25 + 5) = v22;
    }

    v26 = ConfettiAssetMetadata.placeName.getter();
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10009B77C(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    if (v30 >= v29 >> 1)
    {
      v18 = sub_10009B77C((v29 > 1), v30 + 1, 1, v18);
    }

    *(v18 + 2) = v30 + 1;
    v31 = &v18[2 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v28;
    sub_10009BB20(8236, 0xE200000000000000, v18);
    v33 = v32;

    (*(v14 + 8))(v16, v13);
    return v33;
  }
}

id sub_1006C72C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006C7360()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v102 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v104 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  *&v95 = &v87 - v8;
  __chkstk_darwin(v9);
  v99 = &v87 - v10;
  v100 = type metadata accessor for Date();
  v105 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v87 - v13;
  v14 = sub_1000F24EC(&qword_100AE4FD0);
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - v15;
  v93 = type metadata accessor for AttributedString.CharacterView();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = type metadata accessor for AttributedString();
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UTType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F24EC(&qword_100ADA980);
  __chkstk_darwin(v26 - 8);
  v28 = &v87 - v27;
  v29 = type metadata accessor for ConfettiAssetMetadata();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v0;
  sub_1006AC7D4(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_100004F84(v28, &qword_100ADA980);
    return 0;
  }

  else
  {
    v34 = *(v30 + 32);
    v89 = v29;
    v34(v32, v28, v29);
    static UTType.item.getter();
    v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v37 = [v35 initWithContentType:isa];

    (*(v23 + 8))(v25, v22);
    ConfettiAssetMetadata.title.getter();
    v38 = v98;
    if ((*(v98 + 48))(v19, 1, v20) == 1)
    {
      sub_100004F84(v19, &qword_100AD8D78);
    }

    else
    {
      v39 = v90;
      (*(v38 + 32))(v90, v19, v20);
      v40 = v91;
      AttributedString.characters.getter();
      sub_1006C6A60(v94);
      (*(v92 + 8))(v40, v93);
      String.init(_:)();
      v41 = String._bridgeToObjectiveC()();

      [v37 setDisplayName:v41];

      (*(v38 + 8))(v39, v20);
    }

    v98 = v30;
    v42 = v99;
    ConfettiAssetMetadata.startDate.getter();
    v43 = v105;
    v44 = *(v105 + 48);
    v45 = v100;
    v46 = v44(v42, 1, v100);
    v88 = v37;
    if (v46 == 1)
    {
      sub_100004F84(v42, &unk_100AD4790);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = *(v43 + 32);
      v50 = v97;
      v49(v97, v42, v45);
      v51 = v32;
      v52 = v95;
      v99 = v51;
      ConfettiAssetMetadata.endDate.getter();
      if (v44(v52, 1, v45) == 1)
      {
        (*(v43 + 8))(v50, v45);
        sub_100004F84(v52, &unk_100AD4790);
        v47 = 0;
        v48 = 0;
        v32 = v99;
      }

      else
      {
        v49(v96, v52, v45);
        sub_1000F24EC(&qword_100AD6508);
        v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v54 = swift_allocObject();
        v95 = xmmword_100940080;
        *(v54 + 16) = xmmword_100940080;
        v55 = *(v43 + 16);
        v55(v54 + v53, v50, v45);
        v56 = swift_allocObject();
        *(v56 + 16) = v95;
        v57 = v96;
        v55(v56 + v53, v96, v45);
        v32 = v99;
        v58 = sub_1004932CC(v54, v56, 0);
        v48 = v59;

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v60 = *(v43 + 8);
        v60(v57, v45);
        v60(v97, v45);
        if (v48)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0;
        }
      }
    }

    v61 = 0;
    v107 = ConfettiAssetMetadata.placeName.getter();
    v108[0] = v62;
    v108[1] = v47;
    v108[2] = v48;
    v63 = _swiftEmptyArrayStorage;
LABEL_14:
    v64 = &v108[2 * v61];
    while (++v61 != 3)
    {
      v65 = v64 + 2;
      v66 = *v64;
      v64 += 2;
      if (v66)
      {
        v67 = v32;
        v68 = *(v65 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_10009BCC8(0, *(v63 + 2) + 1, 1, v63);
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        if (v70 >= v69 >> 1)
        {
          v63 = sub_10009BCC8((v69 > 1), v70 + 1, 1, v63);
        }

        *(v63 + 2) = v70 + 1;
        v71 = &v63[16 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v66;
        v43 = v105;
        v32 = v67;
        goto LABEL_14;
      }
    }

    sub_1000F24EC(&unk_100AE4870);
    swift_arrayDestroy();
    v106 = v63;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    BidirectionalCollection<>.joined(separator:)();

    v72 = String._bridgeToObjectiveC()();

    v33 = v88;
    [v88 setContentDescription:v72];

    v73 = *(v101 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v73)
    {
      v74 = [v73 entry];
      v75 = v104;
      if (v74)
      {
        v76 = v74;
        JournalEntryMO.displayDate.getter();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v104;
    }

    (*(v43 + 56))(v75, v77, 1, v45);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    v80 = v79;
    sub_1000F24EC(&unk_100AD9A60);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100940080;
    v82 = sub_10012C00C(v78, v80, v75);
    v84 = v83;

    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v33 setAlternateNames:v85];

    sub_100004F84(v75, &unk_100AD4790);
    (*(v98 + 8))(v32, v89);
  }

  return v33;
}

uint64_t sub_1006C8068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C80B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C8120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4FC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1006C8190(char a1)
{
  v2 = qword_100AED720;
  v3 = *(v1 + qword_100AED720);
  *(v1 + qword_100AED720) = a1;
  if (v3 != (a1 & 1))
  {
    [*(v1 + qword_100AED738) setHidden:?];
    if (*(v1 + v2))
    {
      v4 = 0;
    }

    else
    {
      [*(v1 + qword_100AD5288) zoomScale];
      v4 = v5 <= 1.0;
    }

    sub_100732828(v4, 1);
  }
}

id sub_1006C823C()
{
  v1 = v0;
  v2 = *(v0 + qword_100AD52A8);
  v3 = *(v1 + qword_100AED728);
  v4 = *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset) = v3;
  v5 = v3;

  sub_100074F78();
  sub_100731F7C();
  sub_100732828((*(v1 + qword_100AED720) & 1) == 0, 0);

  return sub_1006C8678();
}

char *sub_1006C8304(double a1, double a2, double a3, double a4)
{
  *(v4 + qword_100AED718 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_100AED720) = 0;
  *(v4 + qword_100AED728) = 0;
  v9 = qword_100AED730;
  *(v4 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = qword_100AED738;
  *(v4 + v10) = [objc_allocWithZone(UIStackView) init];
  type metadata accessor for LivePhotoAssetView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100726F20(v11, a1, a2, a3, a4);
  v13 = v12;
  v14 = *&v12[qword_100AD52A8];
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v16 = v14[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v14[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v17 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v14[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v18 = v12;
    v19 = v14;
    v20 = 7;
LABEL_9:
    v24 = *&v14[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v25 = *((swift_isaMask & *v24) + 0x58);
    v26 = v24;
    v25(0, v20);

    sub_100073E04();
    sub_100074D28();
    v14[v17] = 1;

    goto LABEL_10;
  }

  if (v16 > 3 && v16 > 6)
  {
    v29 = v12;

    goto LABEL_10;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = v13;
  v23 = v14;

  if ((v21 & 1) == 0)
  {
    v20 = v14[v15];
    goto LABEL_9;
  }

LABEL_10:
  [v13 addSubview:*&v13[qword_100AED738]];
  v27 = qword_100AED730;
  [*&v13[qword_100AED730] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v13[v27] setAdjustsFontForContentSizeCategory:1];
  [*&v13[v27] setAdjustsFontSizeToFitWidth:1];
  [*&v13[v27] setLineBreakMode:0];
  [*&v13[v27] setNumberOfLines:0];

  return v13;
}

id sub_1006C8678()
{
  v1 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v1);
  v3 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v101 - v5;
  v7 = type metadata accessor for Date();
  v105 = *(v7 - 1);
  v106 = v7;
  __chkstk_darwin(v7);
  v102 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v9 - 8);
  v11 = &v101 - v10;
  v12 = type metadata accessor for PhotoLibraryAssetMetadata();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_100AED728;
  v107 = v0;
  v18 = *&v0[qword_100AED728];
  if (v18)
  {
    v19 = v18;
    sub_100067B84();
    v103 = v20;
    v104 = v21;

    *&v22 = v103;
    *(&v22 + 1) = v104;
  }

  else
  {
    v22 = 0uLL;
  }

  v23 = v107;
  v24 = &v107[qword_100AD52B0];
  *v24 = v22;
  v24[16] = v18 == 0;
  sub_1007291A4(v14);
  v25 = *&v23[v17];
  if (!v25)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_9;
  }

  v26 = v25;
  sub_1006AB154(v11);

  v27 = v13;
  v28 = v12;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_9:
    sub_100004F84(v11, &qword_100AD5B20);
    goto LABEL_21;
  }

  v29 = v16;
  (*(v13 + 32))(v16, v11, v28);
  PhotoLibraryAssetMetadata.date.getter();
  v31 = v105;
  v30 = v106;
  if ((*(v105 + 48))(v6, 1, v106) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790);
    v32 = *&v107[qword_100AED730];
    v33 = String._bridgeToObjectiveC()();
    [v32 setText:v33];
  }

  else
  {
    v34 = v102;
    (*(v31 + 32))(v102, v6, v30);
    static Date.FormatStyle.TimeStyle.shortened.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    sub_100167A30();
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v3);
    v32 = *&v107[qword_100AED730];
    v35 = String._bridgeToObjectiveC()();

    [v32 setText:v35];

    (*(v31 + 8))(v34, v30);
  }

  v36 = PhotoLibraryAssetMetadata.placeName.getter();
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v40 = [v32 text];
    if (!v40)
    {
      (*(v27 + 8))(v29, v28);
    }

    v41 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F24EC(&unk_100AD5B10);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100940080;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100031B20();
    *(v42 + 32) = v38;
    *(v42 + 40) = v39;
    v43 = String.init(format:_:)();
    v45 = v44;

    v46 = [v32 text];
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v108 = v48;
      v109 = v50;
      v51._countAndFlagsBits = v43;
      v51._object = v45;
      String.append(_:)(v51);

      if (v109)
      {
        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      [v32 setText:v52];
    }

    else
    {

      [v32 setText:0];
    }
  }

  (*(v27 + 8))(v29, v28);
LABEL_21:
  v54 = *&v107[qword_100AED738];
  v106 = *&v107[qword_100AED730];
  [v54 setAxis:1];
  [v54 setAlignment:3];
  [v54 setUserInteractionEnabled:1];
  [v54 setSpacing:2.0];
  v55 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v56 = qword_100B303D8;
  [v55 setFont:qword_100B303D8];
  v57 = objc_opt_self();
  v58 = [v57 secondaryLabelColor];
  [v55 setTextColor:v58];

  [v55 setAdjustsFontSizeToFitWidth:1];
  [v55 setMinimumScaleFactor:0.5];
  [v55 setAdjustsFontForContentSizeCategory:1];
  [v55 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v59 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v59 setFont:qword_100B30370];
  v60 = [v57 labelColor];
  [v59 setTextColor:v60];

  [v59 setAdjustsFontSizeToFitWidth:1];
  [v59 setMinimumScaleFactor:0.5];
  [v59 setAdjustsFontForContentSizeCategory:1];
  [v59 setNumberOfLines:0];
  [v59 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v61 = v106;
  [v61 setFont:v56];
  v106 = v57;
  v62 = [v57 secondaryLabelColor];
  [v61 setTextColor:v62];

  [v61 setAdjustsFontForContentSizeCategory:1];
  [v61 setAdjustsFontSizeToFitWidth:1];
  [v61 setMinimumScaleFactor:0.5];
  [v61 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v61 setLineBreakMode:0];
  [v61 setNumberOfLines:0];
  [v61 setTextAlignment:1];
  [v54 addArrangedSubview:v55];
  [v54 addArrangedSubview:v59];
  [v54 addArrangedSubview:v61];
  [v54 setCustomSpacing:v55 afterView:6.0];
  [v54 setCustomSpacing:v61 afterView:12.0];
  v63 = [v55 superview];
  if (v63)
  {
    v64 = v63;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = [v64 centerXAnchor];
    v66 = [v55 centerXAnchor];
    v67 = [v66 constraintEqualToAnchor:v65];

    [v67 setConstant:0.0];
    [v67 setActive:1];
  }

  v68 = [v59 superview];
  if (v68)
  {
    v69 = v68;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [v69 centerXAnchor];
    v71 = [v59 centerXAnchor];
    v72 = [v71 constraintEqualToAnchor:v70];

    [v72 setConstant:0.0];
    [v72 setActive:1];
  }

  v73 = [v61 superview];
  if (v73)
  {
    v74 = v73;
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    v75 = [v74 centerXAnchor];
    v76 = [v61 centerXAnchor];
    v77 = [v76 constraintEqualToAnchor:v75];

    [v77 setConstant:0.0];
    [v77 setActive:1];

    v59 = v75;
  }

  else
  {
    v74 = v61;
  }

  v78 = v106;

  [v54 setLayoutMargins:{16.0, 0.0, 116.0, 0.0}];
  [v54 setLayoutMarginsRelativeArrangement:1];
  v79 = [v61 superview];
  if (v79)
  {
    v80 = v79;
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [v61 leadingAnchor];
    v82 = [v80 leadingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    [v83 setConstant:32.0];
    [v83 setActive:1];
  }

  v84 = [v61 superview];
  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (v84)
  {
    v86 = v84;
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    v87 = [v61 trailingAnchor];
    v88 = [v86 trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];

    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    [v89 setConstant:-32.0];
    [v89 setActive:1];
  }

  [v61 setTextAlignment:1];
  v90 = [v78 secondarySystemBackgroundColor];
  [v54 setBackgroundColor:v90];

  v91 = [v54 superview];
  if (v91)
  {
    v92 = v91;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v54 leadingAnchor];
    v94 = [v92 leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    [v95 p:0.0 ivar:?lyt[472]];
    [v95 setActive:1];
  }

  v96 = [v54 superview];
  if (v96)
  {
    v97 = v96;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v98 = [v54 trailingAnchor];
    v99 = [v97 trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    [v100 p:0.0 ivar:?lyt[472]];
    [v100 setActive:1];
  }

  return [v107 layoutIfNeeded];
}

uint64_t sub_1006C9674()
{
  if (*(v0 + qword_100AED720) == 1)
  {
    [*(v0 + qword_100AD5288) zoomScale];
    v2 = v1 <= 1.0;
  }

  else
  {
    v2 = 0;
  }

  sub_100732828(v2, 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10073BFFC();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006C9750()
{
  *(*(v0 + qword_100AD52A8) + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol) = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  v13 = sub_1002AC488;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100006C7C;
  v12 = &unk_100A78930;
  v4 = _Block_copy(&v9);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v13 = sub_1002AC494;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_10003264C;
  v12 = &unk_100A78980;
  v7 = _Block_copy(&v9);

  [v1 animateWithDuration:0 delay:v4 options:v7 animations:0.0 completion:0.0];
  _Block_release(v7);
  _Block_release(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10073C0F0();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1006C9984()
{
  sub_100038534(v0 + qword_100AED718);

  v1 = *(v0 + qword_100AED738);
}

id sub_1006C99E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenLivePhotoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006C9A1C(uint64_t a1)
{
  sub_100038534(a1 + qword_100AED718);

  v2 = *(a1 + qword_100AED738);
}

uint64_t type metadata accessor for FullScreenLivePhotoView()
{
  result = qword_100AED768;
  if (!qword_100AED768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C9BF0()
{
  *(v0 + qword_100AED718 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100AED720) = 0;
  *(v0 + qword_100AED728) = 0;
  v1 = qword_100AED730;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = qword_100AED738;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1006C9CD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v39 = &v33 - v5;
  v41 = type metadata accessor for URL();
  v35 = *(v41 - 8);
  v6 = __chkstk_darwin(v41);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v33 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &qword_100AE9080);
    sub_10000A908(&qword_100AE4690, &qword_100AE9080);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v44;
    v10 = v45;
    v11 = v46;
    v12 = v47;
    v13 = v48;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v33 = v11;
  v36 = (v35 + 32);
  v37 = (v35 + 48);
  v42 = &_swiftEmptyArrayStorage;
  v40 = a1;
  while (a1 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v43 = v22, sub_1000065A8(0, &qword_100AE9080), swift_dynamicCast(), v21 = v49, v19 = v12, v20 = v13, !v49))
    {
LABEL_26:
      sub_100014FF8();
      return v42;
    }

LABEL_19:
    v49 = v21;
    v23 = v39;
    sub_1006CD3E4(&v49, v39);
    if (v2)
    {

      sub_100014FF8();

      return v42;
    }

    v24 = v41;
    v25 = (*v37)(v23, 1, v41);
    v26 = v23;
    if (v25 == 1)
    {
      result = sub_100004F84(v23, &unk_100AD6DD0);
    }

    else
    {
      v27 = *v36;
      v28 = v34;
      (*v36)(v34, v26, v24);
      v27(v38, v28, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1003E4AE0(0, v42[2] + 1, 1, v42);
      }

      v30 = v42[2];
      v29 = v42[3];
      if (v30 >= v29 >> 1)
      {
        v42 = sub_1003E4AE0(v29 > 1, v30 + 1, 1, v42);
      }

      v31 = v41;
      v32 = v42;
      v42[2] = v30 + 1;
      result = (v27)(v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v38, v31);
    }

    v12 = v19;
    v13 = v20;
    a1 = v40;
  }

  v17 = v12;
  v18 = v13;
  v19 = v12;
  if (v13)
  {
LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v18 = *(v10 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006CA14C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1003FE8D4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}