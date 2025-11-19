void sub_10009F7F0(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v46[3])
  {
    sub_1000065A8(0, &unk_100AD3AF8);
    if (swift_dynamicCast())
    {
      v7 = *(v1 + 16);
      v8 = *(v7 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      v9 = v45[1];
      v10 = v8;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        if (qword_100ACFCA0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000617C(v12, qword_100ADF880);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "CoreDataStack.contextDidSave [Sync context]", v15, 2u);
        }

        sub_100347944();
        sub_10034829C();
        sub_100348728();
        type metadata accessor for AssetContentTypeOperation();
        sub_10049AE34();

        return;
      }

      v25 = *(v7 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
      v26 = v9;
      v27 = v25;
      v28 = static NSObject.== infix(_:_:)();

      if (v28)
      {
        if (qword_100ACFCA0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000617C(v29, qword_100ADF880);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_28;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "CoreDataStack.contextDidSave [View context]", v32, 2u);
      }

      else
      {
        if (qword_100ACFCA0 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000617C(v33, qword_100ADF880);
        v26 = v26;
        v30 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v30, v34))
        {
          goto LABEL_28;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v46[0] = v37;
        *v35 = 136446466;
        v38 = [v26 name];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v42 = 0xE700000000000000;
          v40 = 0x6E776F6E6B6E55;
        }

        v43 = sub_100008458(v40, v42, v46);

        *(v35 + 4) = v43;
        *(v35 + 12) = 2112;
        *(v35 + 14) = v26;
        *v36 = v26;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v30, v34, "CoreDataStack.contextDidSave [%{public}s context: %@", v35, 0x16u);
        sub_100004F84(v36, &unk_100AD4BB0);

        sub_10000BA7C(v37);
      }

LABEL_28:

      sub_10009FE50();
      return;
    }
  }

  else
  {
    sub_100004F84(v46, &qword_100AD13D0);
  }

  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000617C(v16, qword_100ADF880);
  (*(v4 + 16))(v6, a1, v3);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v19 = 136315138;
    v21 = Notification.debugDescription.getter();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    v24 = sub_100008458(v21, v23, v46);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unable to get sender in contextDidSave, notification:%s", v19, 0xCu);
    sub_10000BA7C(v20);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10009FE50()
{
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100ADF880);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Debounce Save - Want to handleData", v3, 2u);
  }

  sub_1000F24EC(&qword_100ADFA68);
  sub_10000B58C(&qword_100ADFAE8, &qword_100ADFA68);
  return Subject<>.send()();
}

id sub_10009FF84(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UILabel) init];
  if (*(a1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      if (qword_100AD0400 != -1)
      {
        swift_once();
      }

      v6 = &qword_100B303F8;
      goto LABEL_10;
    }
  }

  if (qword_100AD0388 != -1)
  {
    swift_once();
  }

  v6 = &qword_100B30380;
LABEL_10:
  [v4 setFont:*v6];
  v7 = [objc_opt_self() whiteColor];
  [v4 setTextColor:v7];

  [v4 setLineBreakMode:4];
  [v4 setTextAlignment:0];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setMaximumContentSizeCategory:a2];
  return v4;
}

void sub_1000A01F8(uint64_t a1, id *a2, double *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *a2;
  v9 = [v7 preferredFontForTextStyle:v8];

  v10 = sub_10006F14C(*a3);
  v11 = [v10 fontDescriptor];
  v12 = [v10 fontDescriptor];
  v13 = [v12 symbolicTraits];

  v14 = [v11 fontDescriptorWithSymbolicTraits:v13 | 0x10000];
  if (v14)
  {
    v15 = [v7 fontWithDescriptor:v14 size:0.0];

    v10 = v15;
  }

  *a4 = v10;
}

uint64_t sub_1000A0344()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  sub_1000A0564();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1003E9628(0, 0, v4, &unk_1009686E0, v8);

  v10 = *(v1 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = &v10[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v13 = *&v10[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v12 = sub_1007B7BCC;
    v12[1] = v11;
    v14 = v10;

    sub_100004DF8(v13);
  }

  return result;
}

uint64_t sub_1000A0528()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A0564()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
  if (v9)
  {
    v23 = v9;
    Date.init()();
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v12 = &qword_100B2F628;
LABEL_11:
        v13 = *v12;
        v14 = *(v0 + v10);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v2 + 16))(v5, v8, v1);
        v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v2 + 32))(v17 + v16, v5, v1);
        v18 = objc_opt_self();
        v19 = v13;

        v20 = [v18 currentTraitCollection];
        v21 = v23;
        sub_100076220(v14, 0, 1, v19, v20, sub_10008DD80, v17);

        (*(v2 + 8))(v8, v1);
      }
    }

    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v12 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000A0920()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A09E4()
{
  v0 = VisitAssetMetadata.typeOfPlace.getter();
  v2 = v1;
  v3 = VisitAssetMetadata.mapItemData.getter();
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_1000065A8(0, &qword_100AD5A90);
    v5 = static NSCoding<>.create(from:)();
    sub_10003A5C8(v6, v7);
  }

  v8 = [v5 pointOfInterestCategory];

  if (!v2)
  {
LABEL_10:
    sub_1000A0F34(0);
    if (v9)
    {

      sub_1000A0F34(1);
      if (v10)
      {

        sub_1000A0F34(2);
        if (v11)
        {

          sub_1000A0F34(3);
          if (v12)
          {

            goto LABEL_15;
          }

LABEL_36:
          sub_1000065A8(0, &qword_100AD5A80);
          sub_10077336C(145);

          return 3;
        }

        goto LABEL_56;
      }

      goto LABEL_49;
    }

    goto LABEL_42;
  }

  if (v0 == 1701670728 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if ([objc_opt_self() homeStyleAttributes])
    {
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (v0 == 1802661719 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if ([objc_opt_self() workStyleAttributes])
    {
LABEL_50:

      return 1;
    }

    __break(1u);
  }

  if (v0 == 0x6C6F6F686353 && v2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (![objc_opt_self() schoolStyleAttributes])
    {
      __break(1u);
LABEL_31:

      return v8;
    }

LABEL_57:

    return 2;
  }

  if (v0 == 7174471 && v2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_36;
  }

  v16 = sub_1000A0F34(0);
  if (v17)
  {
    if (v16 == v0 && v17 == v2)
    {

      goto LABEL_42;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
LABEL_42:
      result = [objc_opt_self() homeStyleAttributes];
      if (!result)
      {
        __break(1u);
        goto LABEL_66;
      }

LABEL_43:

      return 0;
    }
  }

  v20 = sub_1000A0F34(1);
  if (v21)
  {
    if (v20 == v0 && v21 == v2)
    {

      goto LABEL_49;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
LABEL_49:
      result = [objc_opt_self() workStyleAttributes];
      if (result)
      {
        goto LABEL_50;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  v23 = sub_1000A0F34(2);
  if (!v24)
  {
    goto LABEL_59;
  }

  if (v23 == v0 && v24 == v2)
  {

    goto LABEL_56;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
LABEL_59:
    v26 = sub_1000A0F34(3);
    if (v27)
    {
      if (v26 == v0 && v27 == v2)
      {

        goto LABEL_36;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_36;
      }
    }

LABEL_15:
    if (v8)
    {
      v13 = qword_100AD0BB0;
      v14 = v8;
      if (v13 != -1)
      {
        swift_once();
      }

      if (sub_10009EA44(v14, qword_100AF6540))
      {
        v15 = sub_100579A18();

        if (!v15)
        {

          return 0;
        }
      }

      else
      {

        return 0;
      }

      return v8;
    }

    goto LABEL_31;
  }

LABEL_56:
  result = [objc_opt_self() schoolStyleAttributes];
  if (result)
  {
    goto LABEL_57;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1000A0F34(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
      goto LABEL_219;
    }
  }

  else
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_219;
    }

    if (a1 == 4)
    {
      return 0;
    }
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_219;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
      goto LABEL_196;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_219;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
      goto LABEL_196;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
      {
        goto LABEL_196;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_219;
      }

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
      if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
      {
        goto LABEL_196;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_219;
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
      {
        goto LABEL_196;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {
          goto LABEL_196;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
          if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
          {
            goto LABEL_196;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;
            if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
            {
              goto LABEL_196;
            }

            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v50)
            {
              goto LABEL_219;
            }

            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;
            if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
            {
              goto LABEL_196;
            }

            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v55 & 1) == 0)
            {
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;
              if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
              {
                goto LABEL_196;
              }

              v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v60)
              {
                goto LABEL_219;
              }

              v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v62;
              if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
              {
                goto LABEL_196;
              }

              v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v65 & 1) == 0)
              {
                v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v68 = v67;
                if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
                {
                  goto LABEL_196;
                }

                v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v70 & 1) == 0)
                {
                  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v73 = v72;
                  if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
                  {
                    goto LABEL_196;
                  }

                  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v75)
                  {
                    goto LABEL_219;
                  }

                  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v78 = v77;
                  if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
                  {
                    goto LABEL_196;
                  }

                  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v80 & 1) == 0)
                  {
                    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v83 = v82;
                    if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
                    {
                      goto LABEL_196;
                    }

                    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v85 & 1) == 0)
                    {
                      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v88 = v87;
                      if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v88 == v89)
                      {
                        goto LABEL_196;
                      }

                      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v90 & 1) == 0)
                      {
                        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v93 = v92;
                        if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
                        {
                          goto LABEL_196;
                        }

                        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v95 & 1) == 0)
                        {
                          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v98 = v97;
                          if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
                          {
                            goto LABEL_196;
                          }

                          v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v100 & 1) == 0)
                          {
                            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v103 = v102;
                            if (v101 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v103 == v104)
                            {
                              goto LABEL_196;
                            }

                            v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v105 & 1) == 0)
                            {
                              v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v108 = v107;
                              if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
                              {
                                goto LABEL_196;
                              }

                              v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v110 & 1) == 0)
                              {
                                v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                v113 = v112;
                                if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
                                {
                                  goto LABEL_196;
                                }

                                v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v115 & 1) == 0)
                                {
                                  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v118 = v117;
                                  if (v116 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v118 == v119)
                                  {
                                    goto LABEL_196;
                                  }

                                  v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if ((v120 & 1) == 0)
                                  {
                                    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                    v123 = v122;
                                    if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v123 == v124)
                                    {
                                      goto LABEL_196;
                                    }

                                    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if ((v125 & 1) == 0)
                                    {
                                      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                      v128 = v127;
                                      if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
                                      {
                                        goto LABEL_196;
                                      }

                                      v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                      if ((v130 & 1) == 0)
                                      {
                                        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                        v133 = v132;
                                        if (v131 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v133 == v134)
                                        {
                                          goto LABEL_196;
                                        }

                                        v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                        if ((v135 & 1) == 0)
                                        {
                                          v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                          v138 = v137;
                                          if (v136 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v138 == v139)
                                          {
                                            goto LABEL_196;
                                          }

                                          v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if (v140)
                                          {
                                            goto LABEL_219;
                                          }

                                          v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                          v143 = v142;
                                          if (v141 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v143 == v144)
                                          {
                                            goto LABEL_196;
                                          }

                                          v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if ((v145 & 1) == 0)
                                          {
                                            v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                            v148 = v147;
                                            if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149)
                                            {
                                              goto LABEL_196;
                                            }

                                            v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                            if ((v150 & 1) == 0)
                                            {
                                              v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                              v153 = v152;
                                              if (v151 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v153 == v154)
                                              {
                                                goto LABEL_196;
                                              }

                                              v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                              if ((v155 & 1) == 0)
                                              {
                                                v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                v158 = v157;
                                                if (v156 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v158 == v159)
                                                {
                                                  goto LABEL_196;
                                                }

                                                v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                if ((v160 & 1) == 0)
                                                {
                                                  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v163 = v162;
                                                  if (v161 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v163 == v164)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v165)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v168 = v167;
                                                  if (v166 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v168 == v169)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v170)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v173 = v172;
                                                  if (v171 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v173 == v174)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v175)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v178 = v177;
                                                  if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v178 == v179)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v180)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v183 = v182;
                                                  if (v181 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v183 == v184)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v185)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v188 = v187;
                                                  if (v186 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v188 == v189)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v190)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v193 = v192;
                                                  if (v191 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v193 == v194)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v195 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if (v195)
                                                  {
                                                    goto LABEL_219;
                                                  }

                                                  v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v198 = v197;
                                                  if (v196 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v198 == v199)
                                                  {
                                                    goto LABEL_196;
                                                  }

                                                  v200 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                  if ((v200 & 1) == 0)
                                                  {
                                                    v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                    v203 = v202;
                                                    if (v201 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v203 == v204)
                                                    {
                                                      goto LABEL_196;
                                                    }

                                                    v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                    if ((v205 & 1) == 0)
                                                    {
                                                      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                      v208 = v207;
                                                      if (v206 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v208 == v209)
                                                      {
                                                        goto LABEL_196;
                                                      }

                                                      v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                      if ((v210 & 1) == 0)
                                                      {
                                                        v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                        v213 = v212;
                                                        if (v211 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v213 == v214)
                                                        {
                                                          goto LABEL_196;
                                                        }

                                                        v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                        if ((v215 & 1) == 0)
                                                        {
                                                          v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                          v218 = v217;
                                                          if (v216 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v218 == v219)
                                                          {
                                                            goto LABEL_196;
                                                          }

                                                          v220 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                          if ((v220 & 1) == 0)
                                                          {
                                                            v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                            v223 = v222;
                                                            if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
                                                            {
                                                              goto LABEL_196;
                                                            }

                                                            v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                            if ((v225 & 1) == 0)
                                                            {
                                                              v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                              v228 = v227;
                                                              if (v226 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v228 == v229)
                                                              {
                                                                goto LABEL_196;
                                                              }

                                                              v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                              if ((v230 & 1) == 0)
                                                              {
                                                                v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                v233 = v232;
                                                                if (v231 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v233 == v234)
                                                                {
                                                                  goto LABEL_196;
                                                                }

                                                                v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                if ((v235 & 1) == 0)
                                                                {
                                                                  v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                  v238 = v237;
                                                                  if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v238 == v239)
                                                                  {
                                                                    goto LABEL_196;
                                                                  }

                                                                  v240 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                  if (v240)
                                                                  {
                                                                    goto LABEL_219;
                                                                  }

                                                                  v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                  v243 = v242;
                                                                  if (v241 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v243 == v244)
                                                                  {
                                                                    goto LABEL_196;
                                                                  }

                                                                  v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                  if ((v245 & 1) == 0)
                                                                  {
                                                                    v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                    v248 = v247;
                                                                    if (v246 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v248 == v249)
                                                                    {
                                                                      goto LABEL_196;
                                                                    }

                                                                    v250 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                    if (v250)
                                                                    {
                                                                      goto LABEL_219;
                                                                    }

                                                                    v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                    v253 = v252;
                                                                    if (v251 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v253 == v254)
                                                                    {
                                                                      goto LABEL_196;
                                                                    }

                                                                    v255 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                    if ((v255 & 1) == 0)
                                                                    {
                                                                      v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                      v258 = v257;
                                                                      if (v256 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v258 != v259)
                                                                      {
                                                                        v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                        if ((v260 & 1) == 0)
                                                                        {
                                                                          v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v263 = v262;
                                                                          if (v261 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v263 == v264)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v265 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v265)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v268 = v267;
                                                                          if (v266 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v268 == v269)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v270 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v270)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v273 = v272;
                                                                          if (v271 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v273 == v274)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v275 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v275)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v278 = v277;
                                                                          if (v276 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v278 == v279)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v280 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v280)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v283 = v282;
                                                                          if (v281 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v283 == v284)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v285 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v285)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v288 = v287;
                                                                          if (v286 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v288 == v289)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v290 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v290)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v293 = v292;
                                                                          if (v291 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v293 == v294)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v295 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v295)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v298 = v297;
                                                                          if (v296 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v298 == v299)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v300)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v301 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v303 = v302;
                                                                          if (v301 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v303 == v304)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v305 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v305)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v306 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v308 = v307;
                                                                          if (v306 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v308 == v309)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v310 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v310)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v311 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v313 = v312;
                                                                          if (v311 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v313 == v314)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v315 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v315)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v318 = v317;
                                                                          if (v316 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v318 == v319)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v320 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v320)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v321 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v323 = v322;
                                                                          if (v321 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v323 == v324)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v325 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v325)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v326 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v328 = v327;
                                                                          if (v326 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v328 == v329)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v330 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v330)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v331 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v333 = v332;
                                                                          if (v331 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v333 == v334)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v335 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v335)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v338 = v337;
                                                                          if (v336 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v338 == v339)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v340)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v343 = v342;
                                                                          if (v341 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v343 == v344)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v345 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v345)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v346 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v348 = v347;
                                                                          if (v346 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v348 == v349)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v350 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v350)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v351 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v353 = v352;
                                                                          if (v351 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v353 == v354)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v355 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v355)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v356 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v358 = v357;
                                                                          if (v356 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v358 == v359)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v360 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v360)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v363 = v362;
                                                                          if (v361 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v363 == v364)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v365 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v365)
                                                                          {
                                                                            goto LABEL_219;
                                                                          }

                                                                          v366 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v368 = v367;
                                                                          if (v366 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v368 == v369)
                                                                          {
                                                                            goto LABEL_196;
                                                                          }

                                                                          v370 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if ((v370 & 1) == 0)
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        goto LABEL_219;
                                                                      }

LABEL_196:
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_219:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1000A3970()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_10025A248;
  }

  else
  {
    v5 = sub_1000A4188;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A3B04()
{
  v69 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[7];
  v64 = v0[6];
  v55 = v0[2];
  v53 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v54 = *(v53 + 28);
  sub_1000082B4(v55 + v54, v2, &qword_100AD6FB8);
  sub_1000082B4(v2, v1, &qword_100AD6FB8);
  v5 = *(v2 + *(v3 + 32));
  v6 = _HashTable.startBucket.getter();
  v7 = *(v5 + 36);
  result = sub_100004F84(v2, &qword_100AD6FB8);
  v9 = 0;
  v10 = *(v1 + *(v3 + 32));
  v62 = v4;
  v66 = (v4 + 48);
  v67 = (v4 + 56);
  v11 = &_swiftEmptyDictionarySingleton;
  v56 = v10;
  do
  {
    if (*(v10 + 36) != v7)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v12 = v7;
    v13 = v0[16];
    v61 = v9;
    if (v6 == 1 << *(v10 + 32))
    {
      v45 = v13 + *(v0[15] + 36);
      *v45 = v6;
      *(v45 + 8) = v7;
      *(v45 + 16) = 0;
      sub_100004F84(v13, &qword_100AD6FD0);
      v68[0] = sub_1000AC98C(v11);

      sub_1000ACCB8(v68);
      v47 = v0[4];
      v46 = v0[5];
      v48 = v0[3];

      v19 = v68[0];
      sub_1000082B4(v55 + v54, v48, &qword_100AD6FB8);
      sub_100021CEC(v48, v46, &qword_100AD6FB8);
      v49 = (v46 + *(v47 + 44));
      *v49 = sub_1000AEDEC;
      v49[1] = 0;
      v68[0] = sub_1000AD18C(v46);
      sub_1000AF004(v68, sub_100255374, sub_1000AF0D8);
LABEL_35:
      v50 = v0[2];
      sub_100004F84(v0[5], &qword_100AD6FC0);
      v65 = v68[0];
      v51 = sub_1000AF35C(v50 + *(v53 + 24));

      v52 = v0[1];

      return v52(v19, v65, v61, v51);
    }

    v15 = v0[11];
    v14 = v0[12];
    v16 = v7;
    v17 = v10;
    v18 = sub_1000AB8D8(v68, v6, v16, 0, v10);
    sub_10003F084(v18, v15);
    v60 = v68[1];
    v19 = v68[3];
    sub_100021CEC(v15, v14, &qword_100AD2688);
    v20 = sub_1000ABDE8(v6, v12, 0, v17);
    v58 = v21;
    v59 = v20;
    v57 = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v11;
    v24 = v19[2];
    v63 = v19;

    v25 = 0;
    while (1)
    {
      if (v25 == v24)
      {
        v30 = 1;
        v25 = v24;
      }

      else
      {
        if (v25 >= v63[2])
        {
          goto LABEL_32;
        }

        sub_10003ED0C(v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v25, v0[10], type metadata accessor for InsightsDataManager.TopAssetCategory);
        v30 = 0;
        ++v25;
      }

      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[6];
      (*v67)(v31, v30, 1, v33);
      sub_100021CEC(v31, v32, &qword_100ADA5C8);
      if ((*v66)(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = v0[8];
      sub_1000AC020(v0[9], v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v35 = *(v34 + *(v64 + 20));
      v36 = *(v34 + *(v64 + 24));
      sub_10003F8FC(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v19 = v11;
      v38 = sub_1000AC088(v35);
      v39 = v11[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v42 = v37;
      if (v11[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v19 = v68;
          sub_1008232F8();
          v11 = v68[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1000AC5D0(v41, isUniquelyReferenced_nonNull_native & 1);
        v11 = v68[0];
        v19 = v68[0];
        v43 = sub_1000AC088(v35);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_27;
        }

        v38 = v43;
        if ((v42 & 1) == 0)
        {
LABEL_5:
          v11[(v38 >> 6) + 8] |= 1 << v38;
          *(v11[6] + v38) = v35;
          *(v11[7] + 8 * v38) = v36;
          v26 = v11 + 2;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      v26 = (v11[7] + 8 * v38);
      v29 = *v26 + v36;
      if (__OFADD__(*v26, v36))
      {
        goto LABEL_34;
      }

LABEL_6:
      *v26 = v29;
      isUniquelyReferenced_nonNull_native = 1;
    }

    swift_bridgeObjectRelease_n();

    v9 = v60 + v61;
    if (__OFADD__(v61, v60))
    {
      goto LABEL_39;
    }

    result = sub_100004F84(v0[12], &qword_100AD2688);
    v7 = v58;
    v6 = v59;
    v10 = v56;
  }

  while ((v57 & 1) == 0);
  __break(1u);
LABEL_27:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1000A4188()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v19 = v0[8];
  swift_beginAccess();
  v0[5] = *(v1 + 16);
  sub_1000F24EC(&qword_100ADA5D0);
  sub_1000F24EC(&qword_100ADA5D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940050;
  swift_getKeyPath();

  SortDescriptor.init<A>(_:order:)();
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v4 + 16))(v3, v2, v19);
  SortDescriptor.init(_:comparator:)();
  (*(v4 + 8))(v2, v19);
  v0[6] = v5;
  sub_1000F24EC(&qword_100ADA5E0);
  sub_1000F24EC(&qword_100ADA5E8);
  sub_10000B58C(&qword_100ADA5F0, &qword_100ADA5E0);
  sub_10000B58C(&qword_100ADA5F8, &qword_100ADA5E8);
  sub_10000B58C(&qword_100ADA600, &qword_100ADA5D8);
  v6 = Sequence.sorted<A, B>(using:)();

  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = v0;
    result = sub_100199E4C(0, v7, 0);
    v9 = 0;
    v10 = (v6 + 48);
    v21 = v6;
    while (v9 < *(v6 + 16))
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_10025A7B0(v11);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      v16 = v12;

      if (v15 >= v14 >> 1)
      {
        result = sub_100199E4C((v14 > 1), v15 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v17 = &_swiftEmptyArrayStorage[5 * v15];
      v17[4] = v11;
      v17[5] = 0;
      *(v17 + 48) = 1;
      v17[7] = v13;
      v17[8] = v16;
      v10 += 3;
      v6 = v21;
      if (v7 == v9)
      {
        v0 = v20;

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000A45E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a2 = result;
  return result;
}

id sub_1000A462C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 poiCategory];
  *a2 = result;
  return result;
}

uint64_t sub_1000A4668@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A46A4()
{

  *(v0 + 144) = sub_10004290C();

  return _swift_task_switch(sub_1002493A4, 0, 0);
}

uint64_t sub_1000A4718()
{

  v1 = sub_10004290C();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10024A88C;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1000A47CC(v4, v1, v3);
}

uint64_t sub_1000A47CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA618);
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA620);
  v3[20] = swift_task_alloc();
  v9 = type metadata accessor for DateComponents();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v3[23] = *(v10 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100096B14, 0, 0);
}

void sub_1000A4A50()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000A4B08()
{

  *(v0 + 128) = sub_10024B118();

  return _swift_task_switch(sub_10009679C, 0, 0);
}

uint64_t sub_1000A4B7C()
{

  v1 = sub_10004290C();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10024B260;

  return sub_1000A4C38(v1);
}

uint64_t sub_1000A4C38(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for String.StandardComparator();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100096828, 0, 0);
}

uint64_t sub_1000A4D60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  *v1 = 1;
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  v0[14] = sub_1000F24EC(&qword_100AE6880);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100097540, 0, 0);
}

uint64_t sub_1000A4EC0(uint64_t a1)
{
  v17 = sub_1000F24EC(&qword_100AE6880);
  __chkstk_darwin(v17);
  v3 = &v16 - v2;
  v4 = sub_1000F24EC(&qword_100AEDD90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  if ((sub_1000A51A0() & 1) != 0 || (swift_getKeyPath(), v19 = a1, sub_1000A5708(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = a1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks, swift_beginAccess(), !*(v8 + *(type metadata accessor for StreakSummary() + 28))))
  {
    result = sub_1000A51A0();
    if (result)
    {
      return result;
    }

    swift_getKeyPath();
    v18 = a1;
    sub_1000A5708();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = a1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    v14 = *(type metadata accessor for InsightsDataManager.Streaks(0) + 20);
    v15 = *(v17 + 48);
    *v3 = 1;
    v11 = v13 + v14;
    v10 = &v3[v15];
  }

  else
  {
    swift_getKeyPath();
    v16 = v5;
    v18 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v5 = v16;

    v9 = *(v17 + 48);
    *v3 = 0;
    v10 = &v3[v9];
    v11 = v8;
  }

  sub_100041C54(v11, v10);
  sub_1000F24EC(&qword_100AEDD88);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000A51A0()
{
  v1 = v0;
  v34 = type metadata accessor for Date();
  v2 = *(v34 - 8);
  v3 = __chkstk_darwin(v34);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v27 - v5;
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DateComponents();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v36 = v0;
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v12, v6);
  sub_1000F24EC(&qword_100AD3BF0);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940080;
  (*(v14 + 104))(v16 + v15, enum case for Calendar.Component.day(_:), v13);
  sub_10005FF80(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  swift_getKeyPath();
  v35 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC7Journal19InsightsDataManager__lastUpdated;
  swift_beginAccess();
  v18 = v1 + v17;
  v19 = v30;
  v20 = v34;
  (*(v2 + 16))(v30, v18, v34);
  v21 = v32;
  static Date.now.getter();
  v22 = v21;
  Calendar.dateComponents(_:from:to:)();

  v23 = *(v2 + 8);
  v23(v22, v20);
  v23(v19, v20);
  (*(v29 + 8))(v9, v28);
  v24 = DateComponents.day.getter();
  LOBYTE(v23) = v25;
  (*(v31 + 8))(v11, v33);
  return v23 & 1 | (v24 > 1);
}

void sub_1000A565C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008F9D30;
  v1._countAndFlagsBits = 0x6F746F6850;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CD0 = v3;
}

unint64_t sub_1000A5708()
{
  result = qword_100AD99A0;
  if (!qword_100AD99A0)
  {
    type metadata accessor for InsightsDataManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD99A0);
  }

  return result;
}

uint64_t (*sub_1000A5760(uint64_t a1, uint64_t a2))()
{
  v3 = sub_1000F24EC(&qword_100AEDD88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v6, a2, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v6, v3);
  return sub_1000B6E6C;
}

uint64_t sub_1000A58C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A58FC()
{
  v1 = sub_1000F24EC(&qword_100AEDD88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A59CC(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000A5AAC(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000A5AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  aBlock[4] = sub_1000B2958;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7AB30;
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

uint64_t sub_1000A5F90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000A60E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6164()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1000A60E8(v0[2], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) != 1)
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    goto LABEL_10;
  }

  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = v0[6];
  v6 = v0[4];
  sub_1000A6318(v6);
  if (v4(v6, 1, v5) == 1)
  {
    sub_100004F84(v0[4], &qword_100AD1350);
LABEL_5:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_8;
  }

  (*(v0[7] + 32))(v0[8], v0[4], v0[6]);
LABEL_8:
  v7 = v0[5];
  if (v4(v7, 1, v0[6]) != 1)
  {
    sub_100004F84(v7, &qword_100AD1350);
  }

LABEL_10:
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_10079A6C0;
  v9 = v0[8];

  return sub_1000A64BC(v9);
}

uint64_t sub_1000A6318@<X0>(uint64_t a1@<X8>)
{
  if (static Runtime.isInternalBuild.getter())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];

    if (v5)
    {
      v6 = [v2 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 stringForKey:v7];

      if (v8)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          Locale.init(identifier:)();
          v13 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v13 = 1;
LABEL_10:
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

uint64_t sub_1000A64BC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000F24EC(&qword_100AD1350);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_1000A659C, v4, v3);
}

uint64_t sub_1000A659C()
{
  v1 = v0[5];
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (qword_100AD0A98 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = qword_100AF1570;
  v6 = *(v2 + 8);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10079DEEC;

  return v9(v4, &protocol witness table for MainActor, v5, v3, v2);
}

uint64_t sub_1000A6724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_10079D1B8;
  v6 = swift_continuation_init();
  v3[17] = sub_1000F24EC(&qword_100AF1658);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_10079D2F4;
  v3[13] = &unk_100A7D6A0;
  v3[14] = v6;
  [ObjCClassFromMetadata supportedLanguagesForTaskHint:a3 completion:v3 + 10];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_1000A6860()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B30208);
  sub_10000617C(v0, qword_100B30208);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A68EC(void *a1)
{
  v3 = sub_1000F24EC(&unk_100ADE590);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100024E6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1000249D4(&qword_100AD8280, &type metadata accessor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for JournalEntryCollectionViewController.State(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000A6ABC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1000F24EC(&qword_100ADFA80);
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

  return _swift_task_switch(sub_100099130, v6, v8);
}

void sub_1000A6BF8()
{
  v0 = sub_1000F24EC(&qword_100AD7CD8);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000F24EC(&unk_100AE92B0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    (*((swift_isaMask & *v4) + 0x390))(v2);

    sub_100004F84(v2, &qword_100AD7CD8);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
    v8 = v6;
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v7 + 8);

    if (v9)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1000A6DC8()
{
  sub_10001A7FC();

  return [v0 setNeedsUpdateContentUnavailableConfiguration];
}

uint64_t sub_1000A6DFC()
{

  *(v0 + 168) = qword_100B31070;

  return _swift_task_switch(sub_10008932C, 0, 0);
}

uint64_t sub_1000A6E70()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (*(&v42 + 1))
  {
    sub_1000F24EC(&qword_100ADB9B8);
    if (swift_dynamicCast())
    {
      if (v40[2] == 3)
      {
        v5 = v40[4];
        v4 = v40[5];
        v6 = v40[6];

        if (qword_100ACFBA0 != -1)
        {
          swift_once();
        }

        v7 = qword_100B2F6A8;
        v8 = unk_100B2F6B0;
        v9 = qword_100B2F6B8;
        if (qword_100B2F6A8 == v5)
        {
          if (unk_100B2F6B0 == v4)
          {
            v10 = v6 < qword_100B2F6B8;
          }

          else
          {
            v10 = v4 < unk_100B2F6B0;
          }
        }

        else
        {
          v10 = v5 < qword_100B2F6A8;
        }

        v24 = v10;
        v39 = v24;
        if (qword_100AD0250 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000617C(v25, qword_100B30190);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *&v43 = swift_slowAlloc();
          *v28 = 136315650;
          sub_1000F24EC(&unk_100AD8A90);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_100942000;
          *(v29 + 32) = v7;
          *(v29 + 40) = v8;
          *(v29 + 48) = v9;
          v30 = Array.description.getter();
          v32 = v31;

          v33 = sub_100008458(v30, v32, &v43);

          *(v28 + 4) = v33;
          *(v28 + 12) = 2080;
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_100942000;
          *(v34 + 32) = v5;
          *(v34 + 40) = v4;
          *(v34 + 48) = v6;
          v35 = Array.description.getter();
          v37 = v36;

          v38 = sub_100008458(v35, v37, &v43);

          *(v28 + 14) = v38;
          *(v28 + 22) = 1024;
          *(v28 + 24) = v39;
          _os_log_impl(&_mh_execute_header, v26, v27, "App Onboarding: Has shown app onboarding, versionToOnboard: %s, lastSeenVersion: %s will onboard: %{BOOL}d", v28, 0x1Cu);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v39;
      }
    }
  }

  else
  {
    sub_1000261D4(&v43);
  }

  if (qword_100AD0250 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100B30190);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    v16 = [v0 standardUserDefaults];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 objectForKey:v17];

    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43 = v41;
    v44 = v42;
    if (*(&v42 + 1))
    {
      sub_1000F24EC(&qword_100ADB9B8);
      swift_dynamicCast();
    }

    else
    {
      sub_1000261D4(&v43);
    }

    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100008458(v19, v21, &v40);

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "App Onboarding: Last shown app onboarding user default is nil. version:  %s", v14, 0xCu);
    sub_10000BA7C(v15);
  }

  return 1;
}

uint64_t sub_1000A7430()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADB678);
  v1 = sub_10000617C(v0, qword_100ADB678);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A74F8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isMacCatalystApp];

  v2 = 15;
  if (!v1)
  {
    v2 = 16;
  }

  v3 = 2;
  if (v1)
  {
    v3 = 0;
  }

  qword_100B2F6A8 = v2;
  unk_100B2F6B0 = v3;
  qword_100B2F6B8 = 0;
}

uint64_t sub_1000A7594(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
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

uint64_t sub_1000A7670()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1004BDBB4;
  }

  else
  {
    v5 = sub_1000A77A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A77A0()
{
  v1 = *(v0 + 168);
  if (qword_100ACFE48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5D50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 == 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "iCloud status available: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6(v1 == 1);
}

uint64_t sub_1000A78D4(char a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1000A79FC, v4, v3);
}

uint64_t sub_1000A79FC()
{
  if (*(v0 + 128))
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADF880);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "checkForRecentiCloudLogout - User is loggedIn, ignoring", v4, 2u);
    }

    v5 = *(v0 + 128);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    if (qword_100AD01A8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    *(v0 + 104) = v8;
    sub_10000617C(v8, qword_100B2FF98);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting the sync engine reset as a side effect of checkForRecentiCloudLogout", v11, 2u);
    }

    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);

    sub_10034A5BC();
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    *(v0 + 112) = v17;
    *(v17 + 16) = v16;
    (*(v13 + 104))(v12, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v15);
    v18 = v16;
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = sub_10034B514;
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v22, sub_10035682C, v17, v21);
  }
}

uint64_t sub_1000A7CF4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A7D30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FileStoreConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100068AC8(v2, v10, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10004FECC(v10, type metadata accessor for AssetAttachment.AssetType);
      v19 = 1;
      goto LABEL_9;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {

    v10 += *(sub_1000F24EC(&qword_100AD33B8) + 48);
  }

  sub_100048E9C(v10, v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  sub_100068AC8(v16, v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004FECC(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 32))(a1, v14, v18);
  }

  else
  {
    static FileStoreConfiguration.shared.getter();
    FileStoreConfiguration.getAttachmentURL(from:)();

    (*(v5 + 8))(v7, v4);
    sub_10004FECC(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  }

  v19 = 0;
LABEL_9:
  v20 = type metadata accessor for URL();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

void sub_1000A8084(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v57) = a4;
  v55 = a2;
  v56 = a3;
  v6 = sub_1000F24EC(&qword_100AE4068);
  v58 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AudioAssetMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  if (!a1)
  {
    goto LABEL_15;
  }

  v59 = v4;
  v22 = a1;
  sub_100093C08(v21);
  v23 = type metadata accessor for URL();
  if ((*(*(v23 - 8) + 48))(v21, 1, v23) == 1)
  {

    sub_100004F84(v21, &unk_100AD6DD0);
LABEL_14:
    v4 = v59;
LABEL_15:
    v33 = *&v4[OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView];
    if (v33)
    {
      [v33 setHidden:1];
    }

    return;
  }

  sub_100004F84(v21, &unk_100AD6DD0);
  sub_1000A8720(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_100004F84(v14, &qword_100AD8F98);
    goto LABEL_14;
  }

  (*(v16 + 32))(v18, v14, v15);
  v24 = AudioAssetMetadata.intensities.getter();
  if (!v24)
  {
    (*(v16 + 8))(v18, v15);

    goto LABEL_14;
  }

  v53 = v16;
  v54 = v11;
  v25 = *(v24 + 16);
  if (v25)
  {
    v60[0] = _swiftEmptyArrayStorage;
    v52 = v24;
    sub_1000A8D04(0, v25, 0);
    v26 = v52;
    v27 = v60[0];
    v28 = *(v60[0] + 16);
    v29 = 32;
    do
    {
      v30 = *(v26 + v29);
      v60[0] = v27;
      v31 = v27[3];
      if (v28 >= v31 >> 1)
      {
        sub_1000A8D04((v31 > 1), v28 + 1, 1);
        v26 = v52;
        v27 = v60[0];
      }

      v27[2] = v28 + 1;
      v27[v28 + 4] = v30;
      v29 += 8;
      ++v28;
      --v25;
    }

    while (v25);
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v32);
  v34 = v56;
  *(&v51 - 4) = v55;
  *(&v51 - 3) = v34;
  *(&v51 - 16) = v57 & 1;
  *(&v51 - 1) = v27;
  type metadata accessor for StaticWaveformView();
  sub_100084FA8(&qword_100AE4070, type metadata accessor for StaticWaveformView);
  UIHostingConfiguration<>.init(content:)();

  static Edge.Set.all.getter();
  v35 = v54;
  UIHostingConfiguration.margins(_:_:)();
  v36 = v58;
  v57 = *(v58 + 8);
  v57(v9, v6);
  v37 = v59;
  v38 = &v59[OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView];
  v39 = *&v59[OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView];
  if (v39)
  {
    swift_getObjectType();
    v60[3] = v6;
    v60[4] = sub_100422AF4();
    v40 = sub_10001A770(v60);
    (*(v36 + 16))(v40, v35, v6);
    v41 = v39;
    dispatch thunk of UIContentView.configuration.setter();
    v42 = v41;
    [v42 setHidden:0];

    v57(v35, v6);
    (*(v53 + 8))(v18, v15);
  }

  else
  {
    v43 = UIHostingConfiguration.makeContentView()();
    v45 = v44;
    [v37 addSubview:v43];
    v46 = v43;
    sub_100013178(0.0);

    LODWORD(v47) = 1112014848;
    [v46 setContentHuggingPriority:0 forAxis:v47];
    v48 = v46;
    LODWORD(v49) = 1112014848;
    [v48 setContentHuggingPriority:1 forAxis:v49];

    v57(v35, v6);
    (*(v53 + 8))(v18, v15);
    v50 = *v38;
    *v38 = v48;
    *(v38 + 1) = v45;
  }
}

uint64_t sub_1000A8720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8FA0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal10AudioAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata))
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
      sub_1000F24EC(&qword_100AD8FA8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD8F98);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100AD8FA0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000A8960(a1);
  }

  else
  {
    v17 = type metadata accessor for AudioAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1000A8960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8FA0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA860);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA860);
  v13 = sub_1000F24EC(&qword_100AD8F98);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD8F98);
  }

  sub_100004F84(v11, &qword_100ADA860);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD8FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for AudioAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for AudioAssetMetadata();
    sub_10004A6D8(&qword_100AD8F50, &type metadata accessor for AudioAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD8F98);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA860);
  return swift_endAccess();
}

char *sub_1000A8D04(char *a1, int64_t a2, char a3)
{
  result = sub_1000A8D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A8D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD6560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t type metadata accessor for StaticWaveformView()
{
  result = qword_100AEA4B8;
  if (!qword_100AEA4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A8E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for StaticWaveformView();
  v12 = (a5 + v11[7]);
  v13 = *(a2 + 8);
  v12[3] = ObjectType;
  v12[4] = v13;
  *v12 = a1;
  *a5 = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD2128);
  swift_storeEnumTagMultiPayload();
  *(a5 + v11[5]) = a3;
  *(a5 + v11[6]) = a4;
  swift_unknownObjectRetain();
}

void sub_1000A8F5C()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  sub_100421BDC();
  v18 = *&v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset];
  if (v18)
  {
    v37 = v5;
    v38 = v3;
    v39 = v2;
    v41 = v9;
    v19 = *&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v20 = v18;
    v21 = v19;
    sub_100093C08(v17);
    v22 = type metadata accessor for URL();
    v23 = *(*(v22 - 8) + 48);
    v24 = v23(v17, 1, v22) != 1;
    sub_100004F84(v17, &unk_100AD6DD0);
    [v21 setHidden:v24];

    v25 = sub_100085C70();
    sub_100093C08(v15);
    v26 = v23(v15, 1, v22) == 1;
    sub_100004F84(v15, &unk_100AD6DD0);
    [v25 setHidden:v26];

    v40 = v20;
    v27 = v23;
    sub_100093C08(v12);
    LODWORD(v26) = v23(v12, 1, v22);
    sub_100004F84(v12, &unk_100AD6DD0);
    if (v26 == 1)
    {
      v28 = [objc_opt_self() clearColor];
    }

    else
    {
      sub_1000065A8(0, &qword_100AD4C70);
      if (qword_100AD0BF0 != -1)
      {
        swift_once();
      }

      v29 = v39;
      v30 = sub_10000617C(v39, qword_100B312E0);
      (*(v38 + 16))(v37, v30, v29);
      v28 = UIColor.init(resource:)();
    }

    v31 = v28;
    v32 = v40;
    [v1 setBackgroundColor:v28];

    v33 = v41;
    sub_100093C08(v41);
    LODWORD(v31) = v27(v33, 1, v22);
    v34 = sub_100004F84(v33, &unk_100AD6DD0);
    if (v31 != 1)
    {
      sub_1000A93F8(v32);
    }

    v35 = __chkstk_darwin(v34);
    *(&v36 - 2) = v1;
    __chkstk_darwin(v35);
    *(&v36 - 2) = v1;
    withObservationTracking<A>(_:onChange:)();
  }
}

void sub_1000A93F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Duration.TimeFormatStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  sub_1000A8720(&v33 - v12);
  v14 = type metadata accessor for AudioAssetMetadata();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v13, &qword_100AD8F98);
  }

  else
  {
    v34 = v8;
    v35 = a1;
    v16 = v2;
    v17 = COERCE_DOUBLE(AudioAssetMetadata.duration.getter());
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    if ((v19 & 1) == 0)
    {
      v20 = v17;
      if (qword_100AD02E0 != -1)
      {
        swift_once();
      }

      v21 = [qword_100AF0050 stringFromTimeInterval:v17 + 0.5];
      v22 = v16;
      if (v21)
      {
        v23 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      v25 = v34;
      [v22 setAccessibilityValue:v24];

      static Duration.seconds(_:)();
      if (v20 >= 3600.0)
      {
        static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
      }

      else
      {
        static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
      }

      static FormatStyle<>.time(pattern:)();
      (*(v36 + 8))(v6, v4);
      sub_100006B5C(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
      Duration.formatted<A>(_:)();
      (*(v25 + 8))(v10, v7);
      v26 = v38;
      v27 = &v22[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_durationText];
      *v27 = v37;
      *(v27 + 1) = v26;

      v28 = sub_1000A98A0();
      if (v29)
      {
        v30 = v28;
        v31 = v29;

        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        v22[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_hasTranscription] = v32 != 0;
      }

      sub_1000A9C00();
    }
  }
}

id sub_1000A9810(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1000A98A0()
{
  v37 = type metadata accessor for TranscriptViewModelSegment();
  v0 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  sub_1000A8720(v33 - v4);
  v6 = type metadata accessor for AudioAssetMetadata();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100004F84(v5, &qword_100AD8F98);
    return 0;
  }

  v8 = AudioAssetMetadata.transcriptSegments.getter();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v9, 0);
    v10 = v38;
    v12 = *(v0 + 16);
    v11 = v0 + 16;
    v13 = *(v11 + 64);
    v33[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v34 = *(v11 + 56);
    v35 = v12;
    v36 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v37;
      v35(v2, v14, v37);
      v17 = TranscriptViewModelSegment.text.getter();
      v19 = v18;
      (*v15)(v2, v16);
      v38 = v10;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_1001999C0((v20 > 1), v21 + 1, 1);
        v10 = v38;
      }

      v10[2] = v21 + 1;
      v22 = &v10[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v14 += v34;
      --v9;
    }

    while (v9);

    v24 = v10[2];
    if (v24)
    {
LABEL_12:
      v25 = 0;
      v26 = 0;
      v27 = (v10 + 5);
      v28 = 0xE000000000000000;
      while (v26 < v10[2])
      {
        ++v26;
        v30 = *(v27 - 1);
        v29 = *v27;
        v38 = v25;
        v39 = v28;

        v31._countAndFlagsBits = v30;
        v31._object = v29;
        String.append(_:)(v31);

        v25 = v38;
        v28 = v39;
        v27 += 2;
        if (v24 == v26)
        {
          v32 = v38;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24)
    {
      goto LABEL_12;
    }
  }

  v32 = 0;
LABEL_18:

  return v32;
}

void sub_1000A9C00()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_durationText + 8))
  {
    v1 = objc_allocWithZone(NSMutableAttributedString);

    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 initWithString:v2];

    if (*(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_hasTranscription) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) == 6)
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {
          v5 = sub_1007093A8();
          [v3 appendAttributedString:v5];
        }
      }
    }

    v6 = sub_1000A9870();
    [v6 setAttributedText:v3];
  }
}

id sub_1000A9E18(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton);
  v2 = *(a1 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  LODWORD(v2) = v4(ObjectType, v2) & 1;
  result = swift_unknownObjectRelease();
  v6 = v1[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
  v1[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v2;
  if (v2 != v6)
  {

    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

BOOL sub_1000A9EF4()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88) == 1;
}

void (*sub_1000A9FB4())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_10070A9E0;
}

uint64_t sub_1000AA014()
{
  v1 = OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset);
  if (v2)
  {
    v3 = v2;
    v5 = sub_100422750(v3);
    v6 = (v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer);
    if (v5 == *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v4;
      ObjectType = swift_getObjectType();
      v8 = v6[1];
      v9 = *(v8 + 128);
      swift_unknownObjectRetain();
      v9(ObjectType, v8);
      swift_unknownObjectRelease();

      *v6 = v5;
      v6[1] = v16;
      swift_unknownObjectRelease();
    }
  }

  result = (*((swift_isaMask & *v0) + 0x1D0))();
  v11 = *(v0 + v1);
  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = &v11[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v14 = *&v11[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v13 = sub_100422748;
    v13[1] = v12;
    v15 = v11;

    sub_100004DF8(v14);
  }

  return result;
}

uint64_t sub_1000AA1E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void *sub_1000AA278(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = 0;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v52 = _swiftEmptyArrayStorage;
  sub_1000A8D04(0, v7, 0);
  v11 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v12 = 0;
    v48 = *(a4 + 16);
    v13 = a2;
    while (1)
    {
      v14 = v6 < v13;
      v15 = v6 <= v13;
      v16 = !v14;
      if (a3 > 0)
      {
        v15 = v16;
      }

      if (v15)
      {
        goto LABEL_72;
      }

      if (__OFADD__(v6, a3))
      {
        v17 = ((v6 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v6 + a3;
      }

      v18 = v6 + a5;
      if (__OFADD__(v6, a5))
      {
        goto LABEL_73;
      }

      if (v48 < v18)
      {
        v18 = v48;
      }

      if (v18 < v6)
      {
        goto LABEL_74;
      }

      if (v6 < 0)
      {
        goto LABEL_75;
      }

      v19 = v18 - v6;
      if (v18 != v6)
      {
        break;
      }

      v20 = _swiftEmptyArrayStorage;
      v21 = _swiftEmptyArrayStorage[2];
LABEL_28:
      LODWORD(__C) = 2143289344;
      vDSP_meanv(v20 + 8, 1, &__C, v21);
      v22 = *&__C;

      v52 = v11;
      v24 = v11[2];
      v23 = v11[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000A8D04((v23 > 1), v24 + 1, 1);
        v11 = v52;
      }

      ++v12;
      v11[2] = v24 + 1;
      *&v11[v24 + 4] = v22;
      v6 = v17;
      v13 = a2;
      if (v7 == v12)
      {
        goto LABEL_40;
      }
    }

    __C = _swiftEmptyArrayStorage;
    sub_1000AAEE0(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      goto LABEL_79;
    }

    v20 = __C;
    v25 = (a4 + 32 + 8 * v6);
    while (v19)
    {
      v26 = *v25;
      __C = v20;
      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      v21 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1000AAEE0((v27 > 1), v28 + 1, 1);
        v21 = v28 + 1;
        v20 = __C;
      }

      v29 = v26;
      *(v20 + 2) = v21;
      v20[v28 + 8] = v29;
      ++v25;
      if (!--v19)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v17 = v6;
  v13 = a2;
LABEL_40:
  v14 = v17 < v13;
  v30 = v17 <= v13;
  v31 = !v14;
  if (a3 > 0)
  {
    v30 = v31;
  }

  if (!v30)
  {
    while (1)
    {
      if (__OFADD__(v17, a3))
      {
        v33 = ((v17 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v33 = v17 + a3;
      }

      v34 = v17 + a5;
      if (__OFADD__(v17, a5))
      {
        goto LABEL_76;
      }

      if (*(a4 + 16) < v34)
      {
        v34 = *(a4 + 16);
      }

      if (v34 < v17)
      {
        goto LABEL_77;
      }

      if (v17 < 0)
      {
        goto LABEL_78;
      }

      v35 = v34 - v17;
      if (v34 != v17)
      {
        break;
      }

      v36 = _swiftEmptyArrayStorage;
      v37 = _swiftEmptyArrayStorage[2];
LABEL_57:
      LODWORD(__C) = 2143289344;
      vDSP_meanv(v36 + 8, 1, &__C, v37);
      v38 = *&__C;

      v52 = v11;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000A8D04((v39 > 1), v40 + 1, 1);
        v11 = v52;
      }

      v11[2] = v40 + 1;
      *&v11[v40 + 4] = v38;
      v41 = v33 <= a2;
      if (a3 > 0)
      {
        v41 = v33 >= a2;
      }

      v17 = v33;
      if (v41)
      {
        return v11;
      }
    }

    __C = _swiftEmptyArrayStorage;
    sub_1000AAEE0(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
LABEL_80:
      __break(1u);
    }

    v36 = __C;
    v42 = (a4 + 32 + 8 * v17);
    while (v35)
    {
      v43 = *v42;
      __C = v36;
      v45 = *(v36 + 2);
      v44 = *(v36 + 3);
      v37 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1000AAEE0((v44 > 1), v45 + 1, 1);
        v37 = v45 + 1;
        v36 = __C;
      }

      v46 = v43;
      *(v36 + 2) = v37;
      v36[v45 + 8] = v46;
      ++v42;
      if (!--v35)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_71;
  }

  return v11;
}

uint64_t sub_1000AA710(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000AA758()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AudioAssetView();
  result = objc_msgSendSuper2(&v4, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_waveformLoaded) == 1)
  {
    result = [v0 frame];
    if (v2 > 0.0)
    {
      result = [v0 frame];
      if (v3 > 0.0)
      {
        *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000AA7E8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000AAA14(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000AAA78(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StaticWaveformView);
  *a2 = sub_1005B9BAC;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000AA8E8()
{
  v1 = type metadata accessor for StaticWaveformView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000F24EC(&qword_100AD2128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for LayoutDirection();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_10000BA7C(v0 + v2 + *(v1 + 28));

  return swift_deallocObject();
}

uint64_t sub_1000AAA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticWaveformView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000AAAE0(double a1)
{
  result = type metadata accessor for StaticWaveformView();
  v4 = *(v1 + *(result + 6));
  v5 = (*&a1 >> 52) & 0x7FFLL;
  v6 = _swiftEmptyArrayStorage;
  if (!v5 || v5 == 2047)
  {
LABEL_16:
    v11 = v6[2];
    if (v11)
    {
      sub_1000A8D04(0, v11, 0);
      v12 = _swiftEmptyArrayStorage[2];
      v13 = 4;
      do
      {
        v14 = v6[v13];
        v15 = _swiftEmptyArrayStorage[3];
        if (v12 >= v15 >> 1)
        {
          sub_1000A8D04((v15 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v14;
        ++v13;
        ++v12;
        --v11;
      }

      while (v11);

      v16 = 2.5;
      if (!v5)
      {
LABEL_29:
        v18 = floor((a1 - (v16 + 3.0) * _swiftEmptyArrayStorage[2]) / (v16 + 3.0)) * 0.5;
        if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v18 > -9.22337204e18)
        {
          if (v18 < 9.22337204e18)
          {
            return _swiftEmptyArrayStorage;
          }

          goto LABEL_35;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {

      v16 = 2.5;
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    if (v5 != 2047)
    {
      v17 = *(v4 + 16);
      v16 = a1 + v17 * -3.0;
      if (v17 >= 2)
      {
        v16 = v16 / (v17 - 1);
      }

      if (v16 <= 1.5)
      {
        v16 = 1.5;
      }
    }

    goto LABEL_29;
  }

  v7 = floor((a1 + 1.5) / 4.5);
  if (v7 == 0.0)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  if (v7 == INFINITY)
  {
    goto LABEL_15;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = *(v4 + 16);
  if (v8 <= v7)
  {
LABEL_15:

    v6 = v4;
    goto LABEL_16;
  }

  v9 = ceil(v8 / v7);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = v9;
  if (v9)
  {

    v6 = sub_1000AA278(0, v8, v10, v4, v10);

    goto LABEL_16;
  }

LABEL_42:
  __break(1u);
  return result;
}

char *sub_1000AADDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD6698);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000AAEE0(char *a1, int64_t a2, char a3)
{
  result = sub_1000AADDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1000AAF00()
{
  result = qword_100ADD6C8;
  if (!qword_100ADD6C8)
  {
    sub_1000F2A18(&qword_100ADD6B8);
    sub_1000AAF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6C8);
  }

  return result;
}

unint64_t sub_1000AAF8C()
{
  result = qword_100ADD6D0;
  if (!qword_100ADD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6D0);
  }

  return result;
}

unint64_t sub_1000AAFE0()
{
  result = qword_100AEA568;
  if (!qword_100AEA568)
  {
    sub_1000F2A18(&qword_100AEA560);
    sub_1000AB06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA568);
  }

  return result;
}

unint64_t sub_1000AB06C()
{
  result = qword_100AEA570;
  if (!qword_100AEA570)
  {
    sub_1000F2A18(&qword_100AEA578);
    sub_10000B58C(&qword_100AEA580, &qword_100AEA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA570);
  }

  return result;
}

uint64_t sub_1000AB124()
{
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 80) != 0.0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000AB2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1000AB344(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1000AB3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEA528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB418()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B312F8);
  sub_10000617C(v0, qword_100B312F8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

char *sub_1000AB4D8()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v14 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v4)
  {
    v13 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    goto LABEL_9;
  }

  v5 = v4;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v6 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
LABEL_9:
    sub_100004F84(v3, &unk_100AD7CB0);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100165FAC(v3);
    return 0;
  }

  v7 = *v3;
  v8 = [*(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:v7];

  type metadata accessor for JournalEntryMO();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = [v9 managedObjectContext];
  if (!v11)
  {
    v11 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
  }

  type metadata accessor for EntryViewModel();
  swift_allocObject();
  return sub_100035ADC(v10, 0, 0, v11);
}

unint64_t sub_1000AB770()
{
  result = qword_100AE7BA0;
  if (!qword_100AE7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7BA0);
  }

  return result;
}

uint64_t *sub_1000AB7C4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000AB7DC()
{
  v1 = sub_1000405A8(1, v0[15]);

  if (v1)
  {
    v0[16] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000B6580, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = _swiftEmptyArrayStorage;
    v4[1] = _swiftEmptyArrayStorage;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000AB8D8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *result = *v6;
    *(result + 16) = v7;
    *(result + 24) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000AB968@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v33 = sub_1000F24EC(&qword_100AD2680);
  v3 = __chkstk_darwin(v33);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v38 = *(type metadata accessor for CalendarBinningUnit(0) + 24);
  v40 = a1;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v17 = *(v12 + 48);
  result = v17(v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_8;
  }

  v31 = v12;
  v19 = *(v12 + 32);
  v36 = v16;
  result = v19(v16, v10, v11);
  if (__OFADD__(v40, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v39;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  result = v17(v20, 1, v11);
  if (result != 1)
  {
    v21 = v37;
    v19(v37, v20, v11);
    sub_10003F8B4(&qword_100AD2698, &type metadata accessor for Date);
    v22 = v36;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v23 = v32;
      v19(v32, v22, v11);
      v24 = v33;
      v19((v23 + *(v33 + 48)), v21, v11);
      v25 = v34;
      sub_1000082B4(v23, v34, &qword_100AD2680);
      v26 = *(v24 + 48);
      v27 = v35;
      v19(v35, v25, v11);
      v28 = *(v31 + 8);
      v28(v25 + v26, v11);
      sub_100021CEC(v23, v25, &qword_100AD2680);
      v29 = *(v24 + 48);
      v30 = sub_1000F24EC(&qword_100AD2688);
      v19(&v27[*(v30 + 36)], (v25 + v29), v11);
      return (v28)(v25, v11);
    }

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000ABD88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000ABDE8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000ABE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 10;
  }

  return result;
}

uint64_t sub_1000ABF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xB)
    {
      return v10 - 10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000AC020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000AC088(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  sub_1000AC110(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000AC268(a1, v2);
}

uint64_t sub_1000AC110(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F746F6870;
    v7 = 0x6F69647561;
    v8 = 0x616964656DLL;
    if (a1 != 3)
    {
      v8 = 0x6563616C70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F65646976;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4D664F6574617473;
    v2 = 0x676E6977617264;
    if (a1 != 9)
    {
      v2 = 0x69747465666E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61737265766E6F63;
    v4 = 0x7974697669746361;
    if (a1 != 6)
    {
      v4 = 0x697463656C666572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000AC268(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 4)
      {
        v10 = 0x6563616C70;
        if (v7 == 3)
        {
          v10 = 0x616964656DLL;
        }

        if (v7 == 2)
        {
          v10 = 0x6F69647561;
        }

        v11 = 0x6F746F6870;
        if (*(*(v2 + 48) + v4))
        {
          v11 = 0x6F65646976;
        }

        v9 = *(*(v2 + 48) + v4) <= 1u ? v11 : v10;
        v8 = 0xE500000000000000;
      }

      else if (*(*(v2 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v9 = 0x4D664F6574617473;
          v8 = 0xEB00000000646E69;
        }

        else if (v7 == 9)
        {
          v8 = 0xE700000000000000;
          v9 = 0x676E6977617264;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x69747465666E6F63;
        }
      }

      else if (v7 == 5)
      {
        v9 = 0x61737265766E6F63;
        v8 = 0xEC0000006E6F6974;
      }

      else if (v7 == 6)
      {
        v8 = 0xE800000000000000;
        v9 = 0x7974697669746361;
      }

      else
      {
        v9 = 0x697463656C666572;
        v8 = 0xEA00000000006E6FLL;
      }

      if (v6 <= 4)
      {
        v12 = 0x6563616C70;
        if (v6 == 3)
        {
          v12 = 0x616964656DLL;
        }

        v13 = 0xE500000000000000;
        if (v6 == 2)
        {
          v12 = 0x6F69647561;
          v13 = 0xE500000000000000;
        }

        v14 = 0x6F746F6870;
        if (v6)
        {
          v14 = 0x6F65646976;
        }

        v15 = 0xE500000000000000;
        v16 = v6 <= 1;
      }

      else
      {
        v12 = 0x69747465666E6F63;
        if (v6 == 9)
        {
          v12 = 0x676E6977617264;
        }

        v13 = 0xE700000000000000;
        if (v6 != 9)
        {
          v13 = 0xE800000000000000;
        }

        if (v6 == 8)
        {
          v12 = 0x4D664F6574617473;
          v13 = 0xEB00000000646E69;
        }

        v14 = 0x7974697669746361;
        if (v6 != 6)
        {
          v14 = 0x697463656C666572;
        }

        v15 = 0xEA00000000006E6FLL;
        if (v6 == 6)
        {
          v15 = 0xE800000000000000;
        }

        if (v6 == 5)
        {
          v14 = 0x61737265766E6F63;
          v15 = 0xEC0000006E6F6974;
        }

        v16 = v6 <= 7;
      }

      v17 = v16 ? v14 : v12;
      v18 = v16 ? v15 : v13;
      if (v9 == v17 && v8 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
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

uint64_t sub_1000AC5D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F24EC(&qword_100AF4170);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000AC98C(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29 = v5;
  v26 = v1;
  v34 = _swiftEmptyArrayStorage;
  sub_1000ACC74(0, v6, 0);
  v7 = v34;
  v33 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v27 = a1 + 72;
  v28 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v33 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v32 = *(a1 + 36);
    v13 = *(*(a1 + 48) + v9);
    v14 = *(*(a1 + 56) + 8 * v9);
    v15 = v29;
    UUID.init()();
    v16 = v31;
    *(v15 + *(v31 + 20)) = v13;
    *(v15 + *(v16 + 24)) = v14;
    v34 = v7;
    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      sub_1000ACC74(v17 > 1, v18 + 1, 1);
      v7 = v34;
    }

    v7[2] = v18 + 1;
    result = sub_1000AC020(v15, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v19 = *(v33 + 8 * v12);
    if ((v19 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v9 & 0x3F));
    if (v20)
    {
      v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v12 << 6;
      v22 = v12 + 1;
      v23 = (v27 + 8 * v12);
      while (v22 < (v11 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_10000A96C(v9, v32, 0);
          v11 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_10000A96C(v9, v32, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

size_t sub_1000ACC74(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6550, &unk_100945220, type metadata accessor for InsightsDataManager.TopAssetCategory);
  *v3 = result;
  return result;
}

Swift::Int sub_1000ACCB8(void **a1)
{
  v2 = *(type metadata accessor for InsightsDataManager.TopAssetCategory(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000ACDC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000ACDD8(v6, type metadata accessor for InsightsDataManager.TopAssetCategory, sub_100256788, sub_1000ACF28);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000ACDD8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1000ACF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      sub_10003ED0C(v22, v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      sub_10003ED0C(v20, v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v23 = *(v8 + 24);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_10003F8FC(v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      result = sub_10003F8FC(v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v27 = v26 < v25;
      v8 = v24;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_1000AC020(v22, v39, type metadata accessor for InsightsDataManager.TopAssetCategory);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000AC020(v28, v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD18C(uint64_t a1)
{
  v227 = sub_1000F24EC(&qword_100AD2680);
  v2 = __chkstk_darwin(v227);
  v226 = &v214 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v225 = &v214 - v4;
  v5 = sub_1000F24EC(&qword_100AD6F90);
  v6 = __chkstk_darwin(v5 - 8);
  v252 = (&v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v231 = &v214 - v8;
  v9 = sub_1000F24EC(&qword_100AD6F98);
  v10 = __chkstk_darwin(v9 - 8);
  v232 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v214 - v12;
  v267 = sub_1000F24EC(&qword_100AD6FA8);
  v215 = *(v267 - 8);
  v14 = __chkstk_darwin(v267 - 8);
  v222 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v214 - v17;
  __chkstk_darwin(v16);
  v230 = &v214 - v19;
  v20 = sub_1000F24EC(&qword_100AD6FB0);
  v21 = __chkstk_darwin(v20 - 8);
  v223 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v256 = &v214 - v24;
  v25 = __chkstk_darwin(v23);
  v260 = &v214 - v26;
  __chkstk_darwin(v25);
  v259 = &v214 - v27;
  v28 = sub_1000F24EC(&unk_100AD4790);
  v29 = __chkstk_darwin(v28 - 8);
  v251 = (&v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v240 = &v214 - v31;
  v266 = type metadata accessor for Date();
  v257 = *(v266 - 8);
  v32 = __chkstk_darwin(v266);
  v229 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v228 = &v214 - v35;
  __chkstk_darwin(v34);
  v262 = &v214 - v36;
  v37 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v37);
  v265 = (&v214 - v38);
  v39 = sub_1000F24EC(&qword_100AD6FC0);
  __chkstk_darwin(v39);
  v41 = &v214 - v40;
  v264 = sub_1000F24EC(&qword_100AD6FC8);
  __chkstk_darwin(v264);
  v43 = &v214 - v42;
  v44 = a1;
  v45 = sub_1000AEA94();
  v46 = v45;
  v244 = v13;
  v268 = v39;
  if (v45)
  {
    if (v45 <= 0)
    {
      v55 = _swiftEmptyArrayStorage;
    }

    else
    {
      v47 = v41;
      sub_1000F24EC(&qword_100AD6508);
      v48 = v46;
      v49 = *(v257 + 72);
      v50 = (*(v257 + 80) + 32) & ~*(v257 + 80);
      v51 = v48;
      v52 = swift_allocObject();
      result = j__malloc_size(v52);
      if (!v49)
      {
        goto LABEL_116;
      }

      if (result - v50 == 0x8000000000000000 && v49 == -1)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        return result;
      }

      v54 = 2 * ((result - v50) / v49);
      v55 = v52;
      v46 = v51;
      v52[2] = v51;
      v52[3] = v54;
      v41 = v47;
    }
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  v56 = *(v257 + 80);
  v263 = v55[3];

  sub_1000082B4(v44, v41, &qword_100AD6FC0);
  v57 = v265;
  sub_100021CEC(v41, v265, &qword_100AD6FB8);
  sub_1000082B4(v57, v43, &qword_100AD6FB8);
  v58 = &v43[*(sub_1000F24EC(&qword_100AD6FD0) + 36)];
  v216 = v37;
  v59 = *(v37 + 32);
  v60 = v43;
  v61 = *(v57 + v59);
  v62 = _HashTable.startBucket.getter();
  v63 = *(v61 + 36);
  result = sub_100004F84(v57, &qword_100AD6FB8);
  *v58 = v62;
  *(v58 + 1) = v63;
  v241 = v58;
  v58[16] = 0;
  v64 = &v41[*(v268 + 11)];
  v65 = *v64;
  v66 = *(v64 + 1);
  v67 = *(v264 + 44);
  v245 = v60;
  v68 = (v60 + v67);
  v243 = v65;
  *v68 = v65;
  v68[1] = v66;
  v242 = v66;
  if (v46 < 0)
  {
    goto LABEL_114;
  }

  v69 = v62;
  v224 = v56;
  v265 = v55;
  v233 = (v56 + 32) & ~v56;
  v70 = v55 + v233;
  v239 = v18;
  if (v46)
  {
    v71 = 0;
    v72 = *(v245 + *(v216 + 32));
    v250 = v72 + 64;
    v73 = v257;
    v254 = (v257 + 32);
    v218 = (v257 + 8);
    v248 = v215 + 48;
    v249 = (v215 + 56);
    v247 = v257 + 56;
    v246 = (v257 + 48);
    v238 = v46;
    v263 = (v263 >> 1) - v46;
    v217 = v72 + 72;
    v74 = v240;
    v75 = v266;
    v76 = v223;
    v255 = v72;
    while (1)
    {
      v77 = *(v72 + 36);
      if (v77 != v63)
      {
        goto LABEL_96;
      }

      v78 = 1 << *(v72 + 32);
      v268 = v70;
      v258 = v71;
      if (v69 == v78)
      {
        v79 = v69;
        v80 = 1;
        v264 = v63;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v78)
        {
          goto LABEL_104;
        }

        if ((*(v250 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v234 = 1 << v69;
        v235 = v69 >> 6;
        v264 = v77;
        v81 = *(v72 + 56);
        v82 = *(*(v72 + 48) + 8 * v69);
        v261 = v69;
        v83 = (v81 + 32 * v69);
        v84 = v83[1];
        v237 = *v83;
        v236 = v84;
        v86 = v83[2];
        v85 = v83[3];
        v87 = v245;
        v88 = v252;
        sub_1000082B4(v245, v252, &qword_100AD6F90);
        v89 = type metadata accessor for CalendarBinningUnit(0);
        v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
        v253 = v85;
        if (v90 == 1)
        {
          v221 = v86;

          sub_100004F84(v252, &qword_100AD6F90);
          v91 = sub_1000F24EC(&qword_100AD2688);
          v92 = *(v91 - 8);
          (*(v92 + 56))(v232, 1, 1, v91);
          v93 = v228;
          Date.init(timeIntervalSinceReferenceDate:)();
          v94 = v229;
          Date.init(timeIntervalSinceReferenceDate:)();
          sub_100041990(&qword_100AD2698, &type metadata accessor for Date);
          v75 = v266;
          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          if ((result & 1) == 0)
          {
            goto LABEL_113;
          }

          v95 = *v254;
          v96 = v225;
          (*v254)(v225, v93, v75);
          v97 = v227;
          (v95)(v96 + *(v227 + 48), v94, v75);
          v98 = v226;
          sub_1000082B4(v96, v226, &qword_100AD2680);
          v220 = v92;
          v99 = *(v97 + 48);
          v100 = v222;
          (v95)(v222, v98, v75);
          v219 = v91;
          v101 = *v218;
          v102 = v98 + v99;
          v72 = v255;
          (*v218)(v102, v75);
          sub_100021CEC(v96, v98, &qword_100AD2680);
          v103 = *(v97 + 48);
          v76 = v223;
          v104 = v219;
          (v95)(v100 + *(v219 + 36), v98 + v103, v75);
          v73 = v257;
          v101(v98, v75);
          v18 = v239;
          v105 = v232;
          v201 = (*(v220 + 48))(v232, 1, v104) == 1;
          v74 = v240;
          v106 = v105;
          v107 = v221;
          if (!v201)
          {
            sub_100004F84(v106, &qword_100AD6F98);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v108 = *(v87 + *(result + 20));
          v109 = __OFADD__(v108, v82);
          v110 = v108 + v82;
          if (v109)
          {
            goto LABEL_112;
          }

          v107 = v86;

          v111 = v232;
          v112 = v110;
          v113 = v252;
          sub_1000AB968(v112, v232);
          sub_1000AECC4(v113);
          v114 = sub_1000F24EC(&qword_100AD2688);
          (*(*(v114 - 8) + 56))(v111, 0, 1, v114);
          v115 = v111;
          v100 = v222;
          sub_100021CEC(v115, v222, &qword_100AD2688);
          v75 = v266;
          v73 = v257;
          v76 = v223;
        }

        sub_100021CEC(v100, v18, &qword_100AD2688);
        v116 = &v18[*(v267 + 48)];
        v117 = v236;
        *v116 = v237;
        *(v116 + 1) = v117;
        v118 = v253;
        *(v116 + 2) = v107;
        *(v116 + 3) = v118;
        result = sub_100021CEC(v18, v256, &qword_100AD6FA8);
        v119 = 1 << *(v72 + 32);
        if (v261 >= v119)
        {
          goto LABEL_106;
        }

        v120 = *(v250 + 8 * v235);
        if ((v120 & v234) == 0)
        {
          goto LABEL_107;
        }

        v121 = v264;
        if (*(v72 + 36) != v264)
        {
          goto LABEL_108;
        }

        v122 = v120 & (-2 << (v261 & 0x3F));
        if (v122)
        {
          v119 = __clz(__rbit64(v122)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v123 = v235 << 6;
          v124 = v235 + 1;
          v125 = (v217 + 8 * v235);
          while (v124 < (v119 + 63) >> 6)
          {
            v127 = *v125++;
            v126 = v127;
            v123 += 64;
            ++v124;
            if (v127)
            {
              v119 = __clz(__rbit64(v126)) + v123;
              break;
            }
          }
        }

        v80 = 0;
        v128 = v241;
        *v241 = v119;
        v128[1] = v121;
        v79 = v119;
        *(v128 + 16) = 0;
      }

      v129 = 1;
      v130 = v256;
      v131 = v267;
      (*v249)(v256, v80, 1, v267);
      sub_100021CEC(v130, v76, &qword_100AD6FB0);
      v132 = (*v248)(v76, 1, v131);
      v133 = v251;
      if (v132 != 1)
      {
        sub_100021CEC(v76, v18, &qword_100AD6FA8);
        v243(v18);
        v75 = v266;
        sub_100004F84(v18, &qword_100AD6FA8);
        v129 = 0;
      }

      (*v247)(v133, v129, 1, v75);
      result = (*v246)(v133, 1, v75);
      if (result == 1)
      {
        goto LABEL_118;
      }

      v134 = v258 + 1;
      v135 = v268;
      result = (*(v73 + 32))(v268, v133, v75);
      v70 = &v135[*(v73 + 72)];
      v63 = v264;
      v201 = v134 == v238;
      v69 = v79;
      v71 = v134;
      v72 = v255;
      if (v201)
      {
        v268 = v70;
        LODWORD(v63) = v264;
        goto LABEL_42;
      }
    }
  }

  v268 = v55 + v233;
  v263 >>= 1;
  v74 = v240;
  v73 = v257;
LABEL_42:
  v136 = *(v245 + *(v216 + 32));
  v137 = *(v136 + 36);
  if (v137 == v63)
  {
    v255 = v136 + 64;
    v264 = v73 + 32;
    v235 = v73 + 8;
    v253 = (v215 + 48);
    v254 = (v215 + 56);
    v251 = (v73 + 48);
    v252 = (v73 + 56);
    v234 = v136 + 72;
    v258 = v136;
    do
    {
      v138 = 1 << *(v136 + 32);
      if (v69 == v138)
      {
        v139 = v69;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v138)
        {
          goto LABEL_97;
        }

        if ((*(v255 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_98;
        }

        v140 = v74;
        v141 = v18;
        v247 = 1 << v69;
        v248 = v69 >> 6;
        v246 = v137;
        v142 = *(v136 + 56);
        v143 = *(*(v136 + 48) + 8 * v69);
        v261 = v69;
        v144 = (v142 + 32 * v69);
        v145 = *v144;
        v249 = v144[1];
        v250 = v145;
        v147 = v144[2];
        v146 = v144[3];
        v148 = v245;
        v149 = v231;
        sub_1000082B4(v245, v231, &qword_100AD6F90);
        v150 = type metadata accessor for CalendarBinningUnit(0);
        v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
        v256 = v146;
        if (v151 == 1)
        {
          v238 = v147;

          sub_100004F84(v149, &qword_100AD6F90);
          v152 = sub_1000F24EC(&qword_100AD2688);
          v153 = *(v152 - 8);
          (*(v153 + 56))(v244, 1, 1, v152);
          v154 = v228;
          Date.init(timeIntervalSinceReferenceDate:)();
          v155 = v229;
          Date.init(timeIntervalSinceReferenceDate:)();
          sub_100041990(&qword_100AD2698, &type metadata accessor for Date);
          v156 = v266;
          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          if ((result & 1) == 0)
          {
            goto LABEL_110;
          }

          v157 = *v264;
          v158 = v225;
          (*v264)(v225, v154, v156);
          v159 = v227;
          v157(v158 + *(v227 + 48), v155, v156);
          v160 = v226;
          sub_1000082B4(v158, v226, &qword_100AD2680);
          v237 = v152;
          v236 = *(v159 + 48);
          v161 = v230;
          v157(v230, v160, v156);
          v162 = v153;
          v163 = *v235;
          (*v235)(v160 + v236, v156);
          v164 = v158;
          v165 = v161;
          v73 = v257;
          sub_100021CEC(v164, v160, &qword_100AD2680);
          v166 = *(v159 + 48);
          v167 = v237;
          v157(v165 + *(v237 + 36), (v160 + v166), v156);
          v163(v160, v156);
          v136 = v258;
          v168 = (*(v162 + 48))(v244, 1, v167);
          v18 = v239;
          v74 = v240;
          v169 = v238;
          if (v168 != 1)
          {
            sub_100004F84(v244, &qword_100AD6F98);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v170 = *(v148 + *(result + 20));
          v109 = __OFADD__(v170, v143);
          v171 = v170 + v143;
          if (v109)
          {
            goto LABEL_109;
          }

          v169 = v147;

          v172 = v244;
          sub_1000AB968(v171, v244);
          sub_1000AECC4(v149);
          v173 = sub_1000F24EC(&qword_100AD2688);
          (*(*(v173 - 8) + 56))(v172, 0, 1, v173);
          v165 = v230;
          sub_100021CEC(v172, v230, &qword_100AD2688);
          v18 = v141;
          v73 = v257;
          v74 = v140;
        }

        sub_100021CEC(v165, v18, &qword_100AD2688);
        v174 = &v18[*(v267 + 48)];
        v175 = v249;
        *v174 = v250;
        *(v174 + 1) = v175;
        v176 = v256;
        *(v174 + 2) = v169;
        *(v174 + 3) = v176;
        result = sub_100021CEC(v18, v259, &qword_100AD6FA8);
        v139 = 1 << *(v136 + 32);
        if (v261 >= v139)
        {
          goto LABEL_99;
        }

        v177 = *(v255 + 8 * v248);
        if ((v177 & v247) == 0)
        {
          goto LABEL_100;
        }

        v63 = v246;
        if (*(v136 + 36) != v246)
        {
          goto LABEL_101;
        }

        v178 = v177 & (-2 << (v261 & 0x3F));
        if (v178)
        {
          v139 = __clz(__rbit64(v178)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v179 = v248 << 6;
          v180 = v248 + 1;
          v181 = (v234 + 8 * v248);
          while (v180 < (v139 + 63) >> 6)
          {
            v183 = *v181++;
            v182 = v183;
            v179 += 64;
            ++v180;
            if (v183)
            {
              v139 = __clz(__rbit64(v182)) + v179;
              break;
            }
          }
        }

        v184 = v241;
        *v241 = v139;
        v184[1] = v63;
        *(v184 + 16) = 0;
      }

      v185 = 1;
      v186 = v259;
      v187 = v267;
      (*v254)(v259);
      v188 = v186;
      v189 = v260;
      sub_100021CEC(v188, v260, &qword_100AD6FB0);
      if ((*v253)(v189, 1, v187) != 1)
      {
        sub_100021CEC(v260, v18, &qword_100AD6FA8);
        v243(v18);
        sub_100004F84(v18, &qword_100AD6FA8);
        v185 = 0;
      }

      v190 = v266;
      (*v252)(v74, v185, 1, v266);
      if ((*v251)(v74, 1, v190) == 1)
      {
        goto LABEL_91;
      }

      v191 = *v264;
      result = (*v264)(v262, v74, v190);
      if (v263)
      {
        v192 = v265;
        v193 = v263 - 1;
        if (__OFSUB__(v263, 1))
        {
          goto LABEL_95;
        }
      }

      else
      {
        v194 = v265;
        v195 = v265[3];
        if (((v195 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_102;
        }

        v196 = v195 & 0xFFFFFFFFFFFFFFFELL;
        if (v196 <= 1)
        {
          v197 = 1;
        }

        else
        {
          v197 = v196;
        }

        sub_1000F24EC(&qword_100AD6508);
        v198 = *(v73 + 72);
        v199 = v233;
        v192 = swift_allocObject();
        result = j__malloc_size(v192);
        if (!v198)
        {
          goto LABEL_103;
        }

        v200 = result - v199;
        v201 = result - v199 == 0x8000000000000000 && v198 == -1;
        if (v201)
        {
          goto LABEL_111;
        }

        v202 = v199;
        v203 = v200 / v198;
        v192[2] = v197;
        v192[3] = 2 * (v200 / v198);
        v204 = v192 + v202;
        v205 = *(v194 + 16);
        v206 = v194;
        v207 = *(v194 + 24) >> 1;
        v208 = v207 * v198;
        if (v205)
        {
          if (v192 < v206 || v204 >= v206 + v233 + v208)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v192 != v265)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v265[2] = 0;
        }

        v268 = &v204[v208];

        v209 = (v203 & 0x7FFFFFFFFFFFFFFFLL) - v207;
        v18 = v239;
        v74 = v240;
        v190 = v266;
        v73 = v257;
        v109 = __OFSUB__(v209, 1);
        v193 = v209 - 1;
        if (v109)
        {
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
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      v263 = v193;
      v210 = v268;
      result = (v191)(v268, v262, v190);
      v268 = &v210[*(v73 + 72)];
      v136 = v258;
      v137 = *(v258 + 36);
      v265 = v192;
      v69 = v139;
    }

    while (v137 == v63);
  }

  __break(1u);
LABEL_91:
  sub_100004F84(v245, &qword_100AD6FC8);
  sub_100004F84(v74, &unk_100AD4790);
  result = v265;
  v211 = v265[3];
  if (v211 >= 2)
  {
    v212 = v211 >> 1;
    v109 = __OFSUB__(v212, v263);
    v213 = v212 - v263;
    if (v109)
    {
      goto LABEL_115;
    }

    v265[2] = v213;
  }

  return result;
}

unint64_t sub_1000AEA94()
{
  v1 = *(v0 + *(sub_1000F24EC(&qword_100AD6FB8) + 32));
  v2 = _HashTable.startBucket.getter();
  v3 = *(v1 + 36);
  v4 = 1 << *(v1 + 32);
  v5 = *(v1 + 36);

  return sub_1000AEB10(v2, v3, 0, v4, v5, 0);
}

unint64_t sub_1000AEB10(unint64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  if (a4 < result)
  {
    goto LABEL_29;
  }

  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v10 = result;
    v12 = sub_1000F24EC(&qword_100AD6FB8);
    v13 = a2;
    v14 = v12;
    result = v10;
    v15 = *(v6 + *(v14 + 32));
    v9 = 1;
    while ((result & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(v15 + 32);
      if (result >= v16)
      {
        break;
      }

      v17 = result >> 6;
      v18 = *(v15 + 64 + 8 * (result >> 6));
      if (((v18 >> result) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v15 + 36) != v13)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (result & 0x3F));
      if (v19)
      {
        result = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (v15 + 72 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_10000A96C(result, v13, 0);
            result = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_10000A96C(result, v13, 0);
        result = v16;
      }

LABEL_20:
      if (*(v15 + 36) != a5)
      {
        goto LABEL_28;
      }

      if (result == a4)
      {
        return v9;
      }

      v13 = a5;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_1000AECC4(uint64_t a1)
{
  v2 = type metadata accessor for CalendarBinningUnit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000AED20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000AED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SidebarBrickLayoutMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000AEDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AD6FA8);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_1000082B4(a1, &v17 - v9, &qword_100AD6FA8);
  v11 = *(v5 + 56);
  v12 = *&v10[v11];
  v13 = *&v10[v11 + 8];
  v14 = &v8[v11];
  v17 = *&v10[v11 + 16];
  sub_100021CEC(v10, v8, &qword_100AD2688);
  *v14 = v12;
  *(v14 + 1) = v13;
  *(v14 + 1) = v17;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(a2, v8, v15);
  return sub_100004F84(v8, &qword_100AD6FA8);
}

uint64_t sub_1000AEF60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SidebarBrickLayoutMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_1000AF004(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_10020500C(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1000ACDD8(v10, &type metadata accessor for Date, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1000AF0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static Date.> infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000AF35C(uint64_t a1)
{
  v46 = sub_1000F24EC(&qword_100AD6FA8);
  v3 = __chkstk_darwin(v46);
  v55 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v38 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v44 = &v38 - v10;
  v11 = sub_1000F24EC(&qword_100AD6548);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v56 = &v38 - v12;
  v13 = sub_1000AEA94();
  v14 = _swiftEmptyArrayStorage;
  if (!v13)
  {
    return v14;
  }

  v15 = v13;
  v57 = _swiftEmptyArrayStorage;
  sub_1000AFA10(0, v13 & ~(v13 >> 63), 0);
  v14 = v57;
  v16 = *(a1 + *(sub_1000F24EC(&qword_100AD6FB8) + 32));
  v47 = v16 + 64;
  result = _HashTable.startBucket.getter();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v40 = v16;
    v41 = a1;
    v38 = v1;
    v39 = v15;
    v18 = 0;
    v19 = v47;
    while (!__OFADD__(v18, 1))
    {
      if ((result & 0x8000000000000000) != 0 || result >= 1 << *(v16 + 32))
      {
        goto LABEL_17;
      }

      if ((*(v19 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_18;
      }

      v51 = 1 << result;
      v52 = result >> 6;
      v48 = v18 + 1;
      v49 = v18;
      v53 = result;
      v54 = v14;
      v20 = *(v16 + 56);
      v21 = *(*(v16 + 48) + 8 * result);
      v50 = *(v16 + 36);
      v22 = (v20 + 32 * result);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];
      v26 = v22[3];

      v27 = v44;
      sub_10003F084(v21, v44);
      sub_100021CEC(v27, v9, &qword_100AD2688);
      v28 = v46;
      v29 = &v9[*(v46 + 48)];
      *v29 = v24;
      *(v29 + 1) = v23;
      v30 = v55;
      *(v29 + 2) = v25;
      *(v29 + 3) = v26;
      v31 = *(v43 + 48);
      v32 = v45;
      sub_1000082B4(v9, v45, &qword_100AD6FA8);

      sub_1000F24EC(&qword_100AD2688);
      Date.timeIntervalSince(_:)();
      static Date.+ infix(_:_:)();
      sub_100004F84(v32, &qword_100AD2688);
      sub_1000082B4(v9, v30, &qword_100AD6FA8);
      v33 = *(v30 + *(v28 + 48) + 8);

      if (v33 < 0)
      {
        goto LABEL_19;
      }

      v34 = v55;
      v35 = (v56 + v31);
      *v35 = 0;
      v35[1] = v33;
      sub_100004F84(v34, &qword_100AD2688);
      sub_100004F84(v9, &qword_100AD6FA8);
      v14 = v54;
      v57 = v54;
      v37 = v54[2];
      v36 = v54[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000AFA10(v36 > 1, v37 + 1, 1);
        v14 = v57;
      }

      v14[2] = v37 + 1;
      sub_100021CEC(v56, v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, &qword_100AD6548);
      v16 = v40;
      result = v53;
      if (v53 >= -(-1 << *(v40 + 32)))
      {
        goto LABEL_20;
      }

      v19 = v47;
      if ((*(v47 + 8 * v52) & v51) == 0)
      {
        goto LABEL_21;
      }

      if (v50 != *(v40 + 36))
      {
        goto LABEL_22;
      }

      result = _HashTable.occupiedBucket(after:)();
      v18 = v49 + 1;
      if (v48 == v39)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1000AF828(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F24EC(a5);
  v14 = *(sub_1000F24EC(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_1000F24EC(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1000AFA10(size_t a1, int64_t a2, char a3)
{
  result = sub_1000AF828(a1, a2, a3, *v3, &qword_100AD6540, &unk_100945210, &qword_100AD6548);
  *v3 = result;
  return result;
}

uint64_t sub_1000AFA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_1000AFBB4, 0, 0);
}

uint64_t sub_1000AFBB4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 144);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000AFC2C()
{
  result = qword_100AF1640;
  if (!qword_100AF1640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF1640);
  }

  return result;
}

uint64_t sub_1000AFC78()
{
  v0 = sub_1000AFC2C();
  type metadata accessor for SiriSpeechRecognitionAssetManager();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0x80;
  result = ObservationRegistrar.init()();
  *(v1 + 40) = v0;
  *(v1 + 48) = &off_100A7D4F8;
  qword_100B31070 = v1;
  return result;
}

uint64_t type metadata accessor for SiriSpeechRecognitionAssetManager()
{
  result = qword_100AF15A8;
  if (!qword_100AF15A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AFD34()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000AFDD8()
{

  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10008A0E0, 0, 0);
}

uint64_t sub_1000AFE70()
{
  v1 = v0[479];
  v2 = v0[478];
  v3 = v0[477];
  v4 = v0[459];
  static Date.now.getter();
  swift_getKeyPath();
  v0[485] = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v0[453] = v4;
  v0[486] = sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_1000082B4(v4 + v5, v3, &unk_100AD4790);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[478];
    v8 = v0[477];
    (*(v0[479] + 16))(v0[480], v0[481], v7);
    if (v6(v8, 1, v7) != 1)
    {
      sub_100004F84(v0[477], &unk_100AD4790);
    }
  }

  else
  {
    (*(v0[479] + 32))(v0[480], v0[477], v0[478]);
  }

  v9 = v0[480];
  v10 = v0[459];
  v11 = swift_task_alloc();
  v0[487] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  swift_asyncLet_begin();
  v12 = swift_task_alloc();
  v0[488] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  swift_asyncLet_begin();
  v13 = swift_task_alloc();
  v0[489] = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v9;
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v14 = v0[476];

  return _swift_asyncLet_get(v0 + 162, v14, sub_100249300, v0 + 418);
}

uint64_t sub_1000B0158(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_1000B0204(a1, v5, v4);
}

uint64_t sub_1000B0204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for UniformDateBins(0);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000B02F8, 0, 0);
}

uint64_t sub_1000B02F8()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024931C, v2, v1);
}

uint64_t sub_1000B0390(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_1000B043C(a1, v5, v4);
}

uint64_t sub_1000B043C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000B0460, 0, 0);
}

uint64_t sub_1000B0460()
{
  *(v0 + 40) = type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024A804, v2, v1);
}

uint64_t sub_1000B04F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Calendar();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B0668, 0, 0);
}

uint64_t sub_1000B05BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_1000B04F8(a1, v5, v4);
}

uint64_t sub_1000B0668()
{
  *(v0 + 96) = type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024AF0C, v2, v1);
}

uint64_t sub_1000B0700(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032EC8;

  return sub_1000B0834(a1, v1);
}

uint64_t sub_1000B079C()
{
  *(v0 + 32) = type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024B1D8, v2, v1);
}

uint64_t sub_1000B0834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000B079C, 0, 0);
}

unint64_t sub_1000B0858()
{
  result = qword_100AEFBC8;
  if (!qword_100AEFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFBC8);
  }

  return result;
}

uint64_t sub_1000B08AC()
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

uint64_t sub_1000B0B50()
{
  v0 = sub_1000F24EC(&qword_100ADC240);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-v2];
  v4 = sub_1000F24EC(&unk_100ADE720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-v6];
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
  if (qword_100ACFF10 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B2FAC0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v14, v0);
  sub_100027848();
  sub_10002789C();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v15 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v15;
}

uint64_t sub_1000B0EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

unint64_t sub_1000B1210()
{
  result = qword_100ADA0B8;
  if (!qword_100ADA0B8)
  {
    sub_1000F2A18(&qword_100ADA0B0);
    sub_10000B58C(&qword_100ADA0C0, &qword_100ADA0A0);
    sub_10023F3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA0B8);
  }

  return result;
}

uint64_t sub_1000B12C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADC258);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000F24EC(&qword_100ADC260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000B58C(&qword_100ADC268, &qword_100ADC260);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 2;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000F24EC(&qword_100AEFBD0);
  a1[4] = sub_1000B1530();
  sub_10001A770(a1);
  sub_10000B58C(&qword_100ADC290, &qword_100ADC258);
  sub_1000B1674();
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1000B1530()
{
  result = qword_100AEFBD8;
  if (!qword_100AEFBD8)
  {
    sub_1000F2A18(&qword_100AEFBD0);
    sub_10000B58C(&qword_100ADC280, &qword_100ADC260);
    sub_1000B15E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFBD8);
  }

  return result;
}

unint64_t sub_1000B15E8()
{
  result = qword_100ADC288;
  if (!qword_100ADC288)
  {
    sub_1000F2A18(&qword_100ADC258);
    sub_100027848();
    sub_10002789C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC288);
  }

  return result;
}

unint64_t sub_1000B1674()
{
  result = qword_100ADC298;
  if (!qword_100ADC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC298);
  }

  return result;
}

uint64_t sub_1000B1724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1000B17D8(a1, v4, v5, v6);
}

uint64_t sub_1000B17D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v6;
  v4[29] = v5;

  return _swift_task_switch(sub_10034CA10, v6, v5);
}

uint64_t sub_1000B18AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1000B1960(a1, v4, v5, v6);
}

uint64_t sub_1000B1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10041B830, v7, v6);
}

uint64_t sub_1000B1A54()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);

    return _swift_task_switch(sub_1000B1BAC, 0, 0);
  }
}

uint64_t sub_1000B1BAC()
{
  v1 = v0[10];
  v0[20] = v1;
  if (v1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v0[21] = v10;
    if (v10)
    {
LABEL_3:
      v3 = sub_1000065A8(0, &qword_100AD43F0);
      v6 = v0[19];
      v5 = v0[20];
      v0[22] = v3;
      v0[23] = v6;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v3, v5, v4);
        }

        v7 = *(v5 + 32);
      }

      v0[24] = v7;
      v0[25] = 1;
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v8 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
      v0[26] = v8;
      [v8 setAutomaticallyMergesChangesFromParent:1];
      if (qword_100AD0040 != -1)
      {
        swift_once();
      }

      v9 = qword_100B2FC20;
      v0[27] = qword_100B2FC20;

      v3 = sub_1005A9638;
      v5 = v9;
      v4 = 0;

      return _swift_task_switch(v3, v5, v4);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[21] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B1D90()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = sub_10044AFB4(v1);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B1E2C()
{

  sub_1000B1F9C();
  v1 = type metadata accessor for JournalWidgetBridge();
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = qword_100B2FD90;
  static TaskPriority.low.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_1004AAB54(0, 0, v2, &unk_1009584B0, v5);

  sub_100004F84(v2, &qword_100AD5170);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000B1F9C()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 BOOLForKey:v5];

  if (v6)
  {
    static Tips.resetDatastore()();
    v7 = String._bridgeToObjectiveC()();
    [v4 removeObjectForKey:v7];
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 BOOLForKey:v8];

  if (v9)
  {
    static Tips.hideAllTipsForTesting()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v4 BOOLForKey:v10];

    if (v11)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100940080;
      v13 = sub_10031F03C();
      *(v12 + 32) = &type metadata for InsightsTip;
      *(v12 + 40) = v13;
      static Tips.showTipsForTesting(_:)();
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v4 BOOLForKey:v14];

    if (v15)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100940080;
      v17 = sub_10009F12C();
      *(v16 + 32) = &type metadata for MindfulMinutesTip;
      *(v16 + 40) = v17;
      static Tips.showTipsForTesting(_:)();
    }

    v18 = String._bridgeToObjectiveC()();
    v19 = [v4 BOOLForKey:v18];

    if (v19)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100940080;
      v21 = sub_1002AD3E4();
      *(v20 + 32) = &type metadata for MindfulMinutesCanvasTip;
      *(v20 + 40) = v21;
      static Tips.showTipsForTesting(_:)();
    }

    v22 = String._bridgeToObjectiveC()();
    v23 = [v4 BOOLForKey:v22];

    if (v23)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100940080;
      v25 = sub_10023F460();
      *(v24 + 32) = &type metadata for AlwaysAddLocationTip;
      *(v24 + 40) = v25;
      static Tips.showTipsForTesting(_:)();
    }

    v26 = String._bridgeToObjectiveC()();
    v27 = [v4 BOOLForKey:v26];

    if (v27)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100940080;
      v29 = sub_100345CF0();
      *(v28 + 32) = &type metadata for SuggestionsTip;
      *(v28 + 40) = v29;
      static Tips.showTipsForTesting(_:)();
    }

    v30 = String._bridgeToObjectiveC()();
    v31 = [v4 BOOLForKey:v30];

    if (v31)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100940080;
      v33 = sub_10015CEB4();
      *(v32 + 32) = &type metadata for MultipleJournalsTip;
      *(v32 + 40) = v33;
      static Tips.showTipsForTesting(_:)();
    }

    v34 = String._bridgeToObjectiveC()();
    v35 = [v4 BOOLForKey:v34];

    if (v35)
    {
      sub_1000F24EC(&qword_100AE7B98);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100940080;
      v37 = sub_10051C808();
      *(v36 + 32) = &type metadata for NewSuggestionsTip;
      *(v36 + 40) = v37;
      static Tips.showTipsForTesting(_:)();
    }
  }

  sub_1000F24EC(&qword_100AE7B90);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v4 BOOLForKey:v38];

  if (v39)
  {
    static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  }

  else
  {
    static Tips.ConfigurationOption.DisplayFrequency.daily.getter();
  }

  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v1 + 8))(v3, v0);
  static Tips.configure(_:)();
}

uint64_t sub_1000B2620(uint64_t a1, void *a2, void **a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v5 = *a3;
  type metadata accessor for CanvasFallbackAssetView.SymbolImageCache();
  v6 = swift_allocObject();
  v7 = v5;
  result = swift_defaultActor_initialize();
  *(v6 + 112) = v7;
  *(v6 + 120) = &_swiftEmptyDictionarySingleton;
  *a4 = v6;
  return result;
}

id sub_1000B26D4()
{
  result = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:46.0];
  qword_100B2F798 = result;
  return result;
}

uint64_t sub_1000B2744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1000B27F8(a1, v4, v5, v6);
}

uint64_t sub_1000B27F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008901C, v6, v5);
}

void sub_1000B28BC()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleLargeTitle;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [objc_opt_self() configurationWithFont:v2 scale:-1];
  qword_100B2F7A0 = v3;
}

void sub_1000B2958()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1000B2A28(v5, v6, v0 + v2, v7);
}

void sub_1000B2A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v6 = type metadata accessor for Date();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v21 = sub_1000F24EC(&qword_100AD1420);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v60 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

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

  v61 = v17;
  v62 = a2;
  v28 = Strong;
  (*(v15 + 16))(v26, a3, v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  v29 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
  swift_beginAccess();
  v30 = *(v18 + 48);
  sub_1000082B4(v26, v20, &qword_100AD1420);
  v63 = v28;
  sub_1000082B4(v28 + v29, &v20[v30], &qword_100AD1420);
  v31 = *(v15 + 48);
  if (v31(v20, 1, v14) == 1)
  {
    v32 = v62;
    v33 = v62;
    sub_100004F84(v26, &qword_100AD1420);
    if (v31(&v20[v30], 1, v14) == 1)
    {
      sub_100004F84(v20, &qword_100AD1420);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1000082B4(v20, v24, &qword_100AD1420);
  v36 = v31(&v20[v30], 1, v14);
  v32 = v62;
  if (v36 == 1)
  {
    v37 = v62;
    sub_100004F84(v26, &qword_100AD1420);
    (*(v15 + 8))(v24, v14);
LABEL_11:
    sub_100004F84(v20, &unk_100AEEE20);

    v35 = v32;
    goto LABEL_30;
  }

  v38 = &v20[v30];
  v39 = v61;
  (*(v15 + 32))(v61, v38, v14);
  sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
  v35 = v32;
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v15 + 8);
  v41(v39, v14);
  sub_100004F84(v26, &qword_100AD1420);
  v41(v24, v14);
  v32 = v62;
  sub_100004F84(v20, &qword_100AD1420);
  if (v40)
  {
LABEL_13:
    v42 = v63;
    sub_100074D28();
    [*&v42[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView] setImage:v32];
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
    {
      v45 = v69;
      v44 = v70;
      v46 = v68;
      if (v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u && v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
      {
        v47 = 1;
LABEL_20:

        v35 = v63;

        (*(v46 + 16))(v44, v67, v45);
        (*(v46 + 56))(v44, 0, 1, v45);
        if (v47)
        {
          goto LABEL_21;
        }

        v51 = v66;
        sub_1000082B4(v44, v66, &unk_100AD4790);
        v52 = "d24@0:8@16" + 3;
        if ((*(v46 + 48))(v51, 1, v45) == 1)
        {
          sub_100004F84(v51, &unk_100AD4790);
        }

        else
        {
          v53 = v64;
          (*(v46 + 32))(v64, v51, v45);
          v54 = v65;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v56 = v55;
          v57 = *(v46 + 8);
          v57(v54, v45);
          v52 = "@0:8@16";
          v57(v53, v45);
          if (v56 < 0.1)
          {
LABEL_21:
            swift_beginAccess();
            v48 = swift_unknownObjectWeakLoadStrong();
            if (v48)
            {
              v49 = v48;
              v50 = *(v48 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView);

              [v50 setAlpha:1.0];
            }

            else
            {
            }

            goto LABEL_28;
          }
        }

        v58 = objc_opt_self();
        aBlock[4] = sub_1000B3DA4;
        aBlock[5] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A7AB58;
        v59 = _Block_copy(aBlock);

        [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:*(v52 + 131) completion:0.0];

        _Block_release(v59);

LABEL_28:
        sub_100004F84(v44, &unk_100AD4790);

LABEL_29:
        *(v35 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v45 = v69;
      v44 = v70;
      v46 = v68;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

LABEL_30:
}

void sub_1000B3430(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, CGFloat a4@<X3>, uint64_t a5@<X8>)
{
  size.width = a4;
  v9 = type metadata accessor for PhotoLibraryAssetMetadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD5B20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v57 - v18;
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v22 = 0uLL;
  v23 = 1;
  if (a1 > 6u)
  {
    goto LABEL_15;
  }

  if (((1 << a1) & 0x13) != 0)
  {
    if (*(a2 + *a3))
    {

      sub_100046ADC(v21);

      if ((*(v10 + 48))(v21, 1, v9))
      {
        sub_100004F84(v21, &qword_100AD5B20);
        goto LABEL_28;
      }

      (*(v10 + 16))(v12, v21, v9);
      sub_100004F84(v21, &qword_100AD5B20);
      v25 = dispatch thunk of Croppable.landscapeCropRect.getter();
      v27 = v26;
      (*(v10 + 8))(v12, v9);
      if (!v27)
      {
        goto LABEL_28;
      }

      if (qword_100ACFCE0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000617C(v28, qword_100AE1700);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (((1 << a1) & 0x48) != 0)
  {
    if (*(a2 + *a3))
    {

      sub_100046ADC(v16);

      if ((*(v10 + 48))(v16, 1, v9))
      {
        sub_100004F84(v16, &qword_100AD5B20);
LABEL_28:
        v23 = 1;
        v24 = 0uLL;
        v22 = 0uLL;
        goto LABEL_29;
      }

      (*(v10 + 16))(v12, v16, v9);
      sub_100004F84(v16, &qword_100AD5B20);
      v25 = dispatch thunk of Croppable.squareCropRect.getter();
      v27 = v31;
      (*(v10 + 8))(v12, v9);
      if (!v27)
      {
        goto LABEL_28;
      }

      if (qword_100ACFCE0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000617C(v32, qword_100AE1700);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
LABEL_25:
        v33 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v33 = 136315650;
        (*&size.width)(0);
        v34 = [swift_getObjCClassFromMetadata() debugDescription];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&size.width = v25;
        v37 = v36;

        v38 = sub_100008458(v35, v37, &v62);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2080;
        v61 = a1;
        v39 = String.init<A>(describing:)();
        v41 = sub_100008458(v39, v40, &v62);

        *(v33 + 14) = v41;
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_100008458(*&size.width, v27, &v62);
        _os_log_impl(&_mh_execute_header, v29, v30, "Cropping %s of size class %s using string %s", v33, 0x20u);
        swift_arrayDestroy();
      }

LABEL_26:

      v42 = String._bridgeToObjectiveC()();

      v63 = CGRectFromString(v42);
      v57 = *&v63.origin.y;
      origin = v63.origin;
      v59 = *&v63.size.height;
      size = v63.size;

      *&v24 = size.width;
      if (size.width != 0.0 || *&v59 != 0.0)
      {
        v23 = 0;
        *&v22 = origin.x;
        *(&v22 + 1) = v57;
        *(&v24 + 1) = v59;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (a1 != 5)
  {
LABEL_15:
    v24 = 0uLL;
    goto LABEL_29;
  }

  if (*(a2 + *a3))
  {

    sub_100046ADC(v19);

    if ((*(v10 + 48))(v19, 1, v9))
    {
      sub_100004F84(v19, &qword_100AD5B20);
      goto LABEL_28;
    }

    (*(v10 + 16))(v12, v19, v9);
    sub_100004F84(v19, &qword_100AD5B20);
    v43 = dispatch thunk of Croppable.portraitCropRect.getter();
    v45 = v44;
    (*(v10 + 8))(v12, v9);
    if (!v45)
    {
      goto LABEL_28;
    }

    if (qword_100ACFCE0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000617C(v46, qword_100AE1700);

    v29 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v47))
    {
      v48 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v48 = 136315650;
      (*&size.width)(0);
      v49 = [swift_getObjCClassFromMetadata() debugDescription];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_100008458(v50, v52, &v62);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v61 = 5;
      v54 = String.init<A>(describing:)();
      v56 = sub_100008458(v54, v55, &v62);

      *(v48 + 14) = v56;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_100008458(v43, v45, &v62);
      _os_log_impl(&_mh_execute_header, v29, v47, "Cropping %s of size class %s using string %s", v48, 0x20u);
      swift_arrayDestroy();
    }

    goto LABEL_26;
  }

LABEL_14:
  v23 = 1;
  v24 = 0uLL;
LABEL_29:
  *a5 = v22;
  *(a5 + 16) = v24;
  *(a5 + 32) = v23;
}

void sub_1000B3D28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView);

    [v2 setAlpha:1.0];
  }
}

void sub_1000B3DB0()
{
  if (qword_100AD02B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AEF5B8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Mute called on LivePhotoAssetView", v2, 2u);
  }
}

void sub_1000B3EA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100085C70();
    v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v4 = 0.0;
    if (v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] - 1 <= 5)
    {
      v4 = dbl_100964DD0[(v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] - 1)];
    }

    v5 = v1;
    [v2 setSpacing:v4];

    v6 = *&v5[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint];
    if (v6)
    {
      v7 = 0.0;
      if (v1[v3] - 1 <= 5)
      {
        v7 = dbl_100964E00[(v1[v3] - 1)];
      }

      [v6 setConstant:v7];
    }

    v8 = *&v5[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint];
    if (v8)
    {
      v9 = 0.0;
      if (v1[v3] - 1 <= 5)
      {
        v9 = dbl_100964E00[(v1[v3] - 1)];
      }

      [v8 setConstant:-v9];
    }

    v10 = v1[v3];

    if (v10 <= 6)
    {
      *&v5[OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate + 8] = &off_100A79C88;
      swift_unknownObjectWeakAssign();
    }

    sub_1000A9C00();
    v11 = *&v5[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];

    v12 = v1[v3];
    (*((swift_isaMask & *v11) + 0x58))(5, v12);

    v13 = v1[v3];
    v5[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_previousSizeType] = v13;
  }
}

id sub_1000B40B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  LODWORD(v2) = v4(ObjectType, v2) & 1;
  result = swift_unknownObjectRelease();
  v6 = v1[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
  v1[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v2;
  if (v2 != v6)
  {

    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void sub_1000B418C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView);

    [v2 setAlpha:1.0];
  }
}

uint64_t sub_1000B4218()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1000B427C, v1, v2);
}

uint64_t sub_1000B427C()
{
  v1 = v0[5];

  v2 = type metadata accessor for Notification();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3 == 1)
  {
    (*(v5 + 8))(v0[8], v0[6]);
  }

  else
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = [v8 _launchTestName];
    [v8 finishedTest:v9];

    (*(v5 + 8))(v4, v6);
    sub_100004F84(v7, &qword_100AF6E60);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000B43D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
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

        sub_1000F24EC(&qword_100AE6240);
        v9 = static AVPartialAsyncProperty<A>.duration.getter();
        v0[44] = v9;
        v10 = static MainActor.shared.getter();
        v0[45] = v10;
        v11 = swift_task_alloc();
        v0[46] = v11;
        *v11 = v0;
        v11[1] = sub_1007B8878;

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
  if (!v12 || (v13 = *(v12 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset), v14 = v12, v15 = v13, v14, !v13))
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
  sub_1000B43D4(0, 1);

  v19 = (*(v17 + 48))(v18, 1, v16);
  v20 = v0[40];
  if (v19 == 1)
  {

LABEL_16:
    sub_1001616C0(v0[35]);

    v24 = v0[1];

    return v24();
  }

  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);

  if (v20)
  {
    swift_getObjectType();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v0[48] = v25;
  v0[49] = v27;

  return _swift_task_switch(sub_1007B8C60, v25, v27);
}

uint64_t sub_1000B4774()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  [v2 setImage:v1];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B4824(void *a1)
{
  v12 = _swiftEmptyArrayStorage;
  type metadata accessor for JournalEntryAssetMO();
  v2 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  v3 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v3];

  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v2;
  v4[4] = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1007260CC;
  *(v5 + 24) = v4;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A7A218;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = v2;

  [v7 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1000B4A10()
{

  return swift_deallocObject();
}

uint64_t sub_1000B4A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t storeEnumTagSinglePayload for GalleryCollectionViewLayout.ItemState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_1000B4AA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *sub_1000B4B30()
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

void *sub_1000B4CC8(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000F24EC(&qword_100ADEAC0);
  v6 = __chkstk_darwin(v30);
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v31 = _swiftEmptyArrayStorage;
  sub_1000B5110(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_1000B5130(v16, v9);
      Tips.Action.with(index:)();
      sub_1000B51A0(v9);
      v31 = v10;
      v19 = v2;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000B5110(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      v10[2] = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

size_t sub_1000B4F38(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F24EC(&qword_100ADA0D8);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000B5110(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B4F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000B5130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADEAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B51A0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADEAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B5208()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  swift_beginAccess();
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];

  v7 = *(v0 + 8);

  return v7(v3, v4, v5, v6);
}

uint64_t sub_1000B52E4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 152);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 128);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 72);
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = a4;

  (*(v8 + 8))(v7, v9);

  return _swift_task_switch(sub_1000B52E4, 0, 0);
}

uint64_t sub_1000B54D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B5508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for ColorScheme();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v43 - v6;
  v7 = type metadata accessor for BlendMode();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v45 = &v43 - v13;
  v51 = a1;
  v54 = *(a1 + 16);
  v44 = *(v54 - 8);
  __chkstk_darwin(v12);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WidgetRenderingMode();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = sub_1000F24EC(&qword_100ADCE48);
  __chkstk_darwin(v22 - 8);
  v24 = &v43 - v23;
  EnvironmentValues.backgroundMaterial.getter();
  v25 = type metadata accessor for Material();
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  sub_1000B5A30(v24);
  if (v26 == 1 && (EnvironmentValues.widgetRenderingMode.getter(), static WidgetRenderingMode.vibrant.getter(), sub_1000B5A9C(), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v16 + 8), v28(v19, v15), v28(v21, v15), (v27 & 1) == 0))
  {
    v30 = v44;
    v31 = v52;
    (*(v44 + 16))(v50, v52, v54);
    v32 = v46;
    EnvironmentValues.colorScheme.getter();
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 104))(v47, enum case for ColorScheme.dark(_:), v49);
    v36 = static ColorScheme.== infix(_:_:)();
    v37 = *(v33 + 8);
    v37(v34, v35);
    v37(v32, v35);
    v38 = 36;
    if (v36)
    {
      v38 = 40;
    }

    v39 = v31 + *(v51 + v38);
    v40 = v45;
    (*(v8 + 16))(v45, v39, v7);
    v41 = v54;
    v42 = v50;
    ShapeStyle.blendMode(_:)();
    (*(v8 + 8))(v40, v7);
    return (*(v30 + 8))(v42, v41);
  }

  else
  {
    (*(v8 + 104))(v11, enum case for BlendMode.normal(_:), v7);
    ShapeStyle.blendMode(_:)();
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000B5A30(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADCE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B5A9C()
{
  result = qword_100AEA338;
  if (!qword_100AEA338)
  {
    type metadata accessor for WidgetRenderingMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA338);
  }

  return result;
}

uint64_t sub_1000B5B38()
{
  type metadata accessor for _BlendModeShapeStyle();

  return swift_getWitnessTable();
}

uint64_t sub_1000B5B80()
{
  if (qword_100ACFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1000F24EC(&qword_100ADC240);
  sub_10000617C(v0, qword_100B2FAC0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

void sub_1000B5CD0()
{
  v0 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Duration.TimeFormatStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC7Journal18VideoAssetGridView_durationLabel);

    CMTime.seconds.getter();
    static Duration.seconds(_:)();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    }

    else
    {
      static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
    }

    static FormatStyle<>.time(pattern:)();
    (*(v1 + 8))(v3, v0);
    sub_100006BA4(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
    Duration.formatted<A>(_:)();
    (*(v5 + 8))(v7, v4);
    v10 = String._bridgeToObjectiveC()();

    v11 = v12;
    [v12 setText:v10];
  }
}

unint64_t sub_1000B5F78(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_1000B6028()
{
  v1 = v0[480];
  v2 = v0[475];
  v3 = v0[459];
  sub_10003ED0C(v0[476], v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v4 = swift_task_alloc();
  v0[490] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 407, sub_1000B6188, v0 + 424);
}

uint64_t sub_1000B6104()
{
  sub_10003ED0C(*(v0 + 3776), *(v0 + 3768), type metadata accessor for InsightsDataManager.Streaks);

  return _swift_asyncLet_get(v0 + 656, v0 + 3288, sub_1000B6958, v0 + 3488);
}

uint64_t sub_1000B6188()
{
  v1 = *(v0 + 3800);
  v2 = *(v0 + 3792);
  *(v0 + 3928) = *(v0 + 3256);
  *(v0 + 3936) = *(v0 + 3264);
  *(v0 + 3952) = *(v0 + 3280);
  sub_10003ED0C(v1, v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  v3 = *(v0 + 3776);

  return _swift_asyncLet_get(v0 + 1936, v3, sub_1000B6104, v0 + 3440);
}

uint64_t sub_1000B622C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1007B8690(a1, v4, v5, v6);
}

uint64_t sub_1000B62E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1000B639C(a1, v4, v5, v6);
}

uint64_t sub_1000B639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for Calendar();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6460, 0, 0);
}

uint64_t sub_1000B6460()
{
  *(v0 + 104) = type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B64F8, v2, v1);
}

uint64_t sub_1000B64F8()
{
  v1 = *(v0 + 56);

  *(v0 + 120) = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  return _swift_task_switch(sub_1000AB7DC, 0, 0);
}

uint64_t sub_1000B6580()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1000AFA50;
  v7 = v0[8];

  return sub_1000B6708(v7);
}

uint64_t sub_1000B6708(uint64_t a1)
{
  v1[2] = a1;
  sub_1000F24EC(&qword_100ADA5C0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1000F24EC(&qword_100AD6FC0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA5C8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6FA8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_1000F24EC(&qword_100AD6FB8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_1000F24EC(&qword_100AD6FD0);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3B04, 0, 0);
}

uint64_t sub_1000B6958()
{
  v0[495] = v0[411];
  v0[496] = v0[412];
  v0[497] = v0[413];
  v0[498] = v0[414];

  return _swift_asyncLet_get(v0 + 322, v0 + 423, sub_1000B69F0, v0 + 442);
}

uint64_t sub_1000B6A0C()
{
  v14 = *(v0 + 3976);
  v15 = *(v0 + 3984);
  v12 = *(v0 + 3960);
  v13 = *(v0 + 3968);
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v9 = *(v0 + 3928);
  v10 = *(v0 + 3792);
  v11 = *(v0 + 3768);
  v3 = *(v0 + 3672);
  v16 = *(v0 + 3384);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v0 + 3432) = v3;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v10;
  *(v0 + 3480) = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10003F8FC(v10, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_100692DB8(v11);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v12;
  v6[4] = v13;
  v6[5] = v14;
  v6[6] = v15;
  *(v0 + 3528) = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v16;
  *(v0 + 3576) = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return _swift_asyncLet_finish(v0 + 656, v0 + 3288, sub_1000B73E4, v0 + 3584);
}

uint64_t sub_1000B6DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_1000B6E6C()
{
  v1 = *(sub_1000F24EC(&qword_100AEDD88) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000B6EDC(v2, v3);
}

uint64_t sub_1000B6EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AEDD88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v4 + 16))(v6, a2, v3);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = &protocol witness table for MainActor;
    *(v15 + 4) = v11;
    (*(v4 + 32))(&v15[v14], v6, v3);
    sub_1003E9628(0, 0, v9, &unk_1009640C8, v15);
  }

  return result;
}

uint64_t sub_1000B7114()
{
  v1 = sub_1000F24EC(&qword_100AEDD88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B7234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_1000B7314(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places) = a2;
}

uint64_t sub_1000B7358()
{
  v1 = *(v0 + 3800);

  sub_10003F8FC(v1, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  return _swift_asyncLet_finish(v0 + 2576, v0 + 3384, sub_1000B7400, v0 + 3632);
}

uint64_t sub_1000B743C()
{

  v1 = *(v0 + 3776);

  return _swift_asyncLet_finish(v0 + 1936, v1, sub_1000B7530, v0 + 3728);
}

uint64_t sub_1000B74C4()
{

  v1 = *(v0 + 3808);

  return _swift_asyncLet_finish(v0 + 1296, v1, sub_1000B754C, v0 + 3216);
}

uint64_t sub_1000B7568()
{
  v1 = v0[481];
  v2 = v0[480];
  v3 = v0[479];
  v4 = v0[478];
  v5 = v0[459];

  sub_1000B76A0(v1, v5);
  v6 = *(v3 + 8);
  v6(v1, v4);
  v6(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000B76A0(uint64_t a1, uint64_t a2)
{
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v4 = Update - 8;
  __chkstk_darwin(Update);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v12 = v11;
  (*(v8 + 16))(v6, v10, v7);
  v13 = *(a2 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  v14 = sub_1000B79F0(&off_100A58860, v13);
  *&v6[*(v4 + 28)] = v12;
  *&v6[*(v4 + 32)] = v14;
  swift_getKeyPath();
  v21 = a2;
  v22 = v6;
  v23 = a2;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10003F8FC(v6, type metadata accessor for InsightsDataManager.LastUpdate);
  sub_1000B7F9C();
  if (qword_100ACFB60 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000617C(v15, qword_100ADA5A8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "Insights update took %g seconds", v18, 0xCu);
  }

  return (*(v8 + 8))(v10, v7);
}

char *sub_1000B79F0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v37[0] = a1;
  v35 = *(a1 + 16);
  if (v35)
  {
    v4 = 0;
    v5 = a2 + 7;
    v6 = a1 + 32;
    do
    {
      v7 = *(v4 + v6);
      v4 = (v4 + 1);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      v8 = Hasher._finalize()();
      v9 = -1 << v2[32];
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & v5[v10 >> 6]) != 0)
      {
        v13 = *(v2 + 6);
        if (*(v13 + v10) == v7)
        {
LABEL_9:
          v37[1] = v4;
          v14 = (63 - v9) >> 6;
          v15 = 8 * v14;
          v34 = v14;
          if (v14 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v35 = &v33;
            __chkstk_darwin(i);
            v18 = (&v33 - v17);
            memcpy(&v33 - v17, v2 + 56, v15);
            v19 = *(v2 + 2);
            v18[v11] &= ~v12;
            v12 = v19 - 1;
            v20 = *(a1 + 16);
            if (v4 == v20)
            {
              break;
            }

            v15 = 1;
            while (v4 < v20)
            {
              v11 = *(v4 + v6);
              Hasher.init(_seed:)();
              v10 = &v36;
              Hasher._combine(_:)(v11);
              v22 = Hasher._finalize()();
              v23 = -1 << v2[32];
              v24 = v22 & ~v23;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & v5[v24 >> 6]) != 0)
              {
                v27 = *(v2 + 6);
                if (*(v27 + v24) == v11)
                {
LABEL_24:
                  v29 = v18[v25];
                  v18[v25] = v29 & ~v26;
                  if ((v29 & v26) != 0)
                  {
                    if (__OFSUB__(v12--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v12)
                    {

                      v2 = &_swiftEmptySetSingleton;
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v28 = ~v23;
                  while (1)
                  {
                    v24 = (v24 + 1) & v28;
                    v25 = v24 >> 6;
                    v26 = 1 << v24;
                    if (((1 << v24) & v5[v24 >> 6]) == 0)
                    {
                      break;
                    }

                    if (*(v27 + v24) == v11)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              v4 = (v4 + 1);
              v20 = *(a1 + 16);
              if (v4 == v20)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v31 = swift_slowAlloc();
              memcpy(v31, v2 + 56, v15);
              v32 = sub_1002595B8(v31, v34, v2, v10, v37);

              return v32;
            }
          }

LABEL_12:
          v2 = sub_1000B7D84(v18, v34, v12, v2);
LABEL_13:

          return v2;
        }

        while (1)
        {
          v10 = (v10 + 1) & ~v9;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if (((1 << v10) & v5[v10 >> 6]) == 0)
          {
            break;
          }

          if (*(v13 + v10) == v7)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v4 != v35);
  }

  return v2;
}

uint64_t sub_1000B7D84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F24EC(&qword_100ADB778);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B7F9C()
{
  v65 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1 = __chkstk_darwin(v65);
  v66 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v64 = v61 - v3;
  v4 = type metadata accessor for StreakSummary();
  v5 = __chkstk_darwin(v4 - 8);
  v70 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v61 - v7;
  v67 = _s8SnapshotVMa();
  __chkstk_darwin(v67);
  v68 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v61 - v15;
  __chkstk_darwin(v14);
  v18 = v61 - v17;
  result = sub_1000405A8(5, *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options));
  if (result)
  {
    swift_getKeyPath();
    v63 = v13;
    v20 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
    v74 = v0;
    v21 = sub_100040930(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    v22 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__lastUpdated;
    swift_beginAccess();
    (*(v10 + 16))(v18, v23, v9);
    static Date.distantPast.getter();
    sub_100040930(&qword_100AD5BF0, &type metadata accessor for Date);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *(v10 + 8);
    v26 = v16;
    v27 = v20;
    v28 = v63;
    v25(v26, v9);
    v62 = v25;
    result = (v25)(v18, v9);
    if ((v24 & 1) == 0)
    {
      v29 = v9;
      v30 = v22;
      swift_getKeyPath();
      v73 = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
      result = sub_1000405A8(5, *(v23 + *(Update + 24)));
      if ((result & 1) == 0)
      {
        v32 = v28;
        swift_getKeyPath();
        v73 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v33 = v30 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
        swift_beginAccess();
        v61[2] = v21;
        sub_100041DF8(v33, v69, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v34 = type metadata accessor for InsightsDataManager.Streaks(0);
        sub_100041DF8(v33 + *(v34 + 20), v70, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v61[0] = *(v30 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
        swift_getKeyPath();
        v72 = v30;
        v61[1] = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v35 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
        swift_beginAccess();
        v36 = v64;
        sub_100041DF8(v30 + v35, v64, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        v37 = *(v36 + *(sub_1000F24EC(&qword_100AD6FB8) + 32));
        if (_HashTable.startBucket.getter() + (-1 << *(v37 + 32)))
        {
          v43 = _HashTable.startBucket.getter();
          v44 = sub_1000AEB10(v43, *(v37 + 36), 0, 1 << *(v37 + 32), *(v37 + 36), 0);
          v45 = v36;
          v42 = v44;
          sub_10003F9BC(v45, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          v38 = v65;
        }

        else
        {
          v38 = v65;
          v39 = v36 + *(v65 + 20);
          v40 = *v39;
          v41 = *(v39 + 8);
          sub_10003F9BC(v36, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }
        }

        swift_getKeyPath();
        v71 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v46 = v66;
        sub_100041DF8(v30 + v35, v66, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        static Date.now.getter();
        sub_1000B8860(v32);
        v48 = v47;
        v50 = v49;
        v62(v32, v29);
        if (v50)
        {
          sub_10003F9BC(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        }

        else
        {
          v51 = v46 + *(v38 + 32);
          v48 = *v51;
          v52 = *(v51 + 8);
          sub_10003F9BC(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v52)
          {
            v48 = 0;
          }
        }

        v53 = v68;
        sub_100041F4C(v69, v68, type metadata accessor for StreakSummary);
        v54 = v67;
        sub_100041F4C(v70, v53 + *(v67 + 20), type metadata accessor for StreakSummary);
        *(v53 + v54[6]) = v61[0];
        *(v53 + v54[7]) = v42;
        *(v53 + v54[8]) = v48;
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100040930(&qword_100AF6CD8, _s8SnapshotVMa);
        v55 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v57 = v56;

        sub_100026188();
        v58 = static NSUserDefaults.shared.getter();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v60 = String._bridgeToObjectiveC()();
        [v58 setObject:isa forKey:v60];
        sub_1000340DC(v55, v57);

        return sub_10003F9BC(v53, _s8SnapshotVMa);
      }
    }
  }

  return result;
}