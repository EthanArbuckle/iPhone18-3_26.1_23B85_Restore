void sub_1000ADD00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = type metadata accessor for SimpleItemStandard();
  v6 = *(v44 - 8);
  v7 = __chkstk_darwin(v44);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v49 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
    v46 = a2 >> 62;
    if (a2 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v50 = &_swiftEmptyArrayStorage;
    sub_10009D314(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_76:

      __break(1u);
      return;
    }

    v41 = v11;
    v38 = v3;
    v15 = v50;
    v43 = a1;
    v48 = a2;
    if (!v14)
    {
      break;
    }

    v47 = a1 & 0xC000000000000001;
    v11 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (a1 < 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v17;
    v40 = v16;
    v45 = a2 & 0xC000000000000001;
    v42 = (v6 + 32);
    a2 = 4;
    v37 = v14;
    while (1)
    {
      v18 = v49 ? _CocoaArrayWrapper.endIndex.getter() : *(v11 + 2);
      v19 = a2 - 4;
      if (a2 - 4 == v18)
      {
        break;
      }

      if (v47)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v11 + 2))
        {
          goto LABEL_72;
        }

        v20 = *(a1 + 8 * a2);
      }

      a1 = v20;
      if (v46)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *(v3 + 16);
      }

      if (v19 == v21)
      {
        goto LABEL_76;
      }

      if (v45)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v3 + 16))
        {
          goto LABEL_68;
        }

        v22 = *(v48 + 8 * a2);
      }

      v23 = v22;
      sub_1000AD8EC(a1, v22);

      v50 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_10009D314(v24 > 1, v25 + 1, 1);
        v15 = v50;
      }

      v15[2] = v25 + 1;
      (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v9, v44);
      ++a2;
      --v14;
      a1 = v43;
      if (!v14)
      {
        a2 = v48;
        v14 = v37;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  v11 = (a1 & 0xFFFFFFFFFFFFFF8);
  v47 = a1 & 0xC000000000000001;
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  v45 = a2 & 0xC000000000000001;
LABEL_38:
  if (a1 < 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v11;
  }

  v42 = v26;
  if (a2 < 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = v3;
  }

  v40 = v27;
  a2 = v6 + 32;
  v28 = v14 + 4;
  if (!v49)
  {
LABEL_45:
    v29 = *(v11 + 2);
    goto LABEL_47;
  }

  while (1)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
LABEL_47:
    v9 = (v28 - 4);
    if (v28 - 4 == v29)
    {
      break;
    }

    if (v47)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v11 + 2))
      {
        goto LABEL_70;
      }

      v30 = *(a1 + 8 * v28);
    }

    a1 = v30;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_69;
    }

    if (v46)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_65:

        return;
      }
    }

    else if (v9 == *(v3 + 16))
    {
      goto LABEL_65;
    }

    if (v45)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v3 + 16))
      {
        goto LABEL_71;
      }

      v31 = *(v48 + 8 * v28);
    }

    v32 = v31;
    v33 = v41;
    sub_1000AD8EC(a1, v31);

    v50 = v15;
    v35 = v15[2];
    v34 = v15[3];
    if (v35 >= v34 >> 1)
    {
      sub_10009D314(v34 > 1, v35 + 1, 1);
      v15 = v50;
    }

    v15[2] = v35 + 1;
    (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v33, v44);
    ++v28;
    a1 = v43;
    if (!v49)
    {
      goto LABEL_45;
    }
  }
}

uint64_t sub_1000AE1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&qword_10018E708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AE230(uint64_t a1)
{
  v2 = sub_100093B6C(&qword_10018E708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AE2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000B06FC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000A8C60(v11, &qword_10018DFE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_1000A8C60(a3, &qword_10018DFE0);

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

  sub_1000A8C60(a3, &qword_10018DFE0);
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

uint64_t type metadata accessor for SiriUISuggestion()
{
  result = qword_10018E7A8;
  if (!qword_10018E7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AEAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for UUID();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for SiriSuggestions.Suggestion();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for DeliveryVehicle();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  sub_100093B6C(&unk_10018E7E8);
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for PreGeneratedSiriHint();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000AECC4, 0, 0);
}

uint64_t sub_1000AECC4()
{
  type metadata accessor for SiriSuggestionsFacade();
  v0[23] = SiriSuggestionsFacade.__allocating_init()();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = enum case for SiriHintsMode.spoken(_:);
  v5 = type metadata accessor for SiriHintsMode();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for DeliveryVehicle.siriHints(_:), v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1000AF0F8;
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[5];
  v10.n128_u64[0] = 0.5;

  return SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)(v7, v9, v8, v10);
}

uint64_t sub_1000AF0F8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000AF26C, 0, 0);
}

uint64_t sub_1000AF26C()
{
  v47 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000A8C60(v3, &unk_10018E7E8);
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006160(v4, qword_10018EE28);
    v5 = static os_log_type_t.info.getter();
    v6 = sub_100006198(0);
    if (v7)
    {
      v45 = 32;
      v46 = 0xE100000000000000;
      String.append(_:)(*&v6);

      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
    }

    if (("n hint from SiriSuggestions: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v45 = 32;
      v46 = 0xE100000000000000;
      v9._countAndFlagsBits = 0xD00000000000001FLL;
      v9._object = 0x8000000100119230;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 32;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
    }

    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v5))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45 = v13;
      *v12 = 136315138;
      v14 = sub_1000075D4(0xD00000000000002ALL, 0x8000000100119140, &v45);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v11, v5, "%s", v12, 0xCu);
      sub_100006114(v13);
    }

    else
    {
    }

    (*(v0 + 56))(0);
  }

  else
  {
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 88);
    v44 = *(v0 + 96);
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    (*(v2 + 32))(*(v0 + 176), v3, v1);
    _StringGuts.grow(_:)(27);

    v45 = 0xD000000000000019;
    v46 = 0x8000000100119250;
    PreGeneratedSiriHint.topHint.getter();
    SiriSuggestions.Suggestion.identifier.getter();
    (*(v16 + 8))(v15, v44);
    sub_1000B0560();
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    (*(v19 + 8))(v17, v18);
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006160(v21, qword_10018EE28);
    v22 = static os_log_type_t.info.getter();
    v23 = sub_100006198(0);
    if (v24)
    {
      v45 = 32;
      v46 = 0xE100000000000000;
      String.append(_:)(*&v23);

      v25._countAndFlagsBits = 32;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
    }

    v26 = (0x8000000100119250 >> 56) & 0xF;
    if ((0x8000000100119250 & 0x2000000000000000) == 0)
    {
      v26 = 25;
    }

    if (v26)
    {
      v45 = 32;
      v46 = 0xE100000000000000;
      v27._countAndFlagsBits = 0xD000000000000019;
      v27._object = 0x8000000100119250;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
    }

    v29 = Logger.logObject.getter();
    if (os_log_type_enabled(v29, v22))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v32 = sub_1000075D4(0xD00000000000002ALL, 0x8000000100119140, &v45);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v29, v22, "%s", v30, 0xCu);
      sub_100006114(v31);
    }

    else
    {
    }

    v34 = *(v0 + 168);
    v33 = *(v0 + 176);
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);
    v37 = *(v0 + 56);
    v38 = *(v0 + 48);
    (*(v36 + 16))(v34, v33, v35);
    v39 = objc_allocWithZone(type metadata accessor for SiriUISuggestion());
    v40 = v38;
    v41 = sub_1000AFA98(v34, v40);

    v37(v41);
    (*(v36 + 8))(v33, v35);
  }

  v42 = *(v0 + 8);

  return v42();
}

id SiriUISpokenSuggestionsProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUISpokenSuggestionsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000AF9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000AF9E0()
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

id sub_1000AFA98(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SiriSuggestions.SuggestionPresentation();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriSuggestions.Suggestion();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC4Siri16SiriUISuggestion_addViews] = a2;
  v15 = a2;
  PreGeneratedSiriHint.topHint.getter();
  SiriSuggestions.Suggestion.presentation.getter();
  v16 = *(v12 + 8);
  v16(v14, v11);
  v17 = SiriSuggestions.SuggestionPresentation.spokenText.getter();
  v19 = v18;
  (*(v8 + 8))(v10, v30);
  v20 = &v3[OBJC_IVAR____TtC4Siri16SiriUISuggestion_spokenText];
  *v20 = v17;
  v20[1] = v19;
  v21 = a1;
  PreGeneratedSiriHint.topHint.getter();
  v22 = v31;
  SiriSuggestions.Suggestion.identifier.getter();
  v16(v14, v11);
  (*(v32 + 32))(&v3[OBJC_IVAR____TtC4Siri16SiriUISuggestion_suggestionId], v22, v33);
  v23 = PreGeneratedSiriHint.exposureCallback.getter();
  v24 = &v3[OBJC_IVAR____TtC4Siri16SiriUISuggestion_exposureCallback];
  *v24 = v23;
  v24[1] = v25;
  v26 = type metadata accessor for SiriUISuggestion();
  v34.receiver = v3;
  v34.super_class = v26;
  v27 = objc_msgSendSuper2(&v34, "init");
  v28 = type metadata accessor for PreGeneratedSiriHint();
  (*(*(v28 - 8) + 8))(v21, v28);
  return v27;
}

void sub_1000AFD94(void *a1, void (**a2)(void, void))
{
  v4 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v4 - 8);
  v62 = &v57 - v5;
  v6 = sub_100093B6C(&qword_10018E7E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v64 = swift_allocObject();
  *(v64 + 16) = a2;
  _Block_copy(a2);
  v63 = a1;
  v15 = [a1 refId];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000A8C60(v8, &qword_10018E7E0);
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006160(v17, qword_10018EE28);
      v18 = static os_log_type_t.error.getter();
      v66 = 0xD00000000000002ALL;
      v67 = 0x8000000100119140;
      v19 = sub_100006198(0);
      if (v20)
      {
        v65._countAndFlagsBits = 32;
        v65._object = 0xE100000000000000;
        String.append(_:)(*&v19);

        String.append(_:)(v65);
      }

      if (("ggestion(from:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v65._countAndFlagsBits = 32;
        v65._object = 0xE100000000000000;
        v21._countAndFlagsBits = 0xD000000000000027;
        v21._object = 0x8000000100119170;
        String.append(_:)(v21);
        String.append(_:)(v65);
      }

      v23 = v66;
      v22 = v67;
      v24 = Logger.logObject.getter();
      if (os_log_type_enabled(v24, v18))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v65._countAndFlagsBits = v26;
        *v25 = 136315138;
        v27 = sub_1000075D4(v23, v22, &v65._countAndFlagsBits);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v24, v18, "%s", v25, 0xCu);
        sub_100006114(v26);
      }

      else
      {
      }

      a2[2](a2, 0);
    }

    else
    {
      v59 = *(v10 + 32);
      v60 = v10 + 32;
      v59(v14, v8, v9);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v28._countAndFlagsBits = 0xD000000000000043;
      v28._object = 0x80000001001191A0;
      String.append(_:)(v28);
      sub_1000B0560();
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30 = v66;
      v31 = v67;
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006160(v32, qword_10018EE28);
      v58 = static os_log_type_t.info.getter();
      v66 = 0xD00000000000002ALL;
      v67 = 0x8000000100119140;
      v33 = sub_100006198(0);
      if (v34)
      {
        v65._countAndFlagsBits = 32;
        v65._object = 0xE100000000000000;
        String.append(_:)(*&v33);

        String.append(_:)(v65);
      }

      v35 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v35 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v65._countAndFlagsBits = 32;
        v65._object = 0xE100000000000000;
        v36._countAndFlagsBits = v30;
        v36._object = v31;
        String.append(_:)(v36);
        String.append(_:)(v65);
      }

      v38 = v66;
      v37 = v67;
      v39 = Logger.logObject.getter();
      v40 = v58;
      if (os_log_type_enabled(v39, v58))
      {
        v41 = swift_slowAlloc();
        v57 = v14;
        v42 = v40;
        v43 = v41;
        v44 = swift_slowAlloc();
        v65._countAndFlagsBits = v44;
        *v43 = 136315138;
        v45 = sub_1000075D4(v38, v37, &v65._countAndFlagsBits);

        *(v43 + 4) = v45;
        v46 = v42;
        v14 = v57;
        _os_log_impl(&_mh_execute_header, v39, v46, "%s", v43, 0xCu);
        sub_100006114(v44);
      }

      else
      {
      }

      v47 = type metadata accessor for TaskPriority();
      v48 = v62;
      (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
      v49 = v61;
      (*(v10 + 16))(v61, v14, v9);
      v50 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v51 = (v11 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      v59((v52 + v50), v49, v9);
      v53 = v63;
      v54 = v64;
      *(v52 + v51) = v63;
      v55 = (v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v55 = sub_1000B054C;
      v55[1] = v54;
      v56 = v53;

      sub_1000AE2A8(0, 0, v48, &unk_1000F7B98, v52);

      (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    _Block_release(a2);
    __break(1u);
  }
}

unint64_t sub_1000B0560()
{
  result = qword_10018E6C0;
  if (!qword_10018E6C0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E6C0);
  }

  return result;
}

uint64_t sub_1000B05B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100096D48;

  return sub_1000AEAA8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000B06FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&qword_10018DFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B076C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100096F3C;

  return sub_1000A83A8(a1, v4);
}

uint64_t sub_1000B0824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100096D48;

  return sub_1000A83A8(a1, v4);
}

id sub_1000B08E0()
{
  v1 = v0;
  v99 = type metadata accessor for Response();
  v98 = *(v99 - 8);
  v2 = __chkstk_darwin(v99);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v88 = &v88 - v5;
  v102 = type metadata accessor for BinaryButton();
  v6 = *(v102 - 8);
  __chkstk_darwin(v102);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Button.LabelStyle();
  v95 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoButton.FormAction();
  v113 = *(v10 - 8);
  __chkstk_darwin(v10);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ButtonRole();
  v112 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Button();
  v103 = *(v97 - 8);
  v13 = __chkstk_darwin(v97);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v92 = &v88 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v88 - v18;
  __chkstk_darwin(v17);
  v114 = &v88 - v19;
  v20 = type metadata accessor for SystemTextClarificationTitle();
  v104 = *(v20 - 8);
  __chkstk_darwin(v20);
  v111 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006160(v22, qword_10018EE28);
  v23 = static os_log_type_t.info.getter();
  v125 = 0xD000000000000019;
  v126 = 0x8000000100119270;
  v24 = sub_100006198(0x10uLL);
  if (v25)
  {
    v123[0]._countAndFlagsBits = 32;
    v123[0]._object = 0xE100000000000000;
    String.append(_:)(*&v24);

    String.append(_:)(v123[0]);
  }

  v89 = v4;
  v96 = v20;
  if (("asVisualResponseSnippet()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v123[0]._countAndFlagsBits = 32;
    v123[0]._object = 0xE100000000000000;
    v26._countAndFlagsBits = 0xD00000000000003ELL;
    v26._object = 0x8000000100119290;
    String.append(_:)(v26);
    String.append(_:)(v123[0]);
  }

  v27 = v125;
  v28 = v126;
  v29 = Logger.logObject.getter();
  v30 = os_log_type_enabled(v29, v23);
  v101 = v6;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v123[0]._countAndFlagsBits = v32;
    *v31 = 136315138;
    v33 = sub_1000075D4(v27, v28, &v123[0]._countAndFlagsBits);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v23, "%s", v31, 0xCu);
    sub_100006114(v32);
  }

  else
  {
  }

  v34 = [v1 subtitle];
  if (v34 || (v34 = [v1 title]) != 0)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v127 = &type metadata for String;
  v128 = &protocol witness table for String;
  v125 = v36;
  v126 = v38;
  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v90 = v38;

  SystemTextClarificationTitle.init(text1:action:)();
  v39 = [v1 confirmCommands];
  if (v39)
  {
    v40 = v39;
    sub_100093B6C(&qword_10018DB60);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v41 = 0;
  }

  sub_1000B17F8(v41, &v125);

  v42 = [v1 denyCommands];
  if (v42)
  {
    v43 = v42;
    sub_100093B6C(&qword_10018DB60);
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v44 = 0;
  }

  sub_1000B17F8(v44, &v123[0]._countAndFlagsBits);

  sub_1000A9B94(&v125, v122);
  v45 = [v1 confirmText];
  v100 = v8;
  v91 = v36;
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v120 = &type metadata for String;
    v121 = &protocol witness table for String;
    v50 = v1;
    if (v49)
    {
      goto LABEL_24;
    }

    v47 = 0;
  }

  else
  {
    v50 = v1;
    v47 = 0;
    v120 = &type metadata for String;
    v121 = &protocol witness table for String;
  }

  v49 = 0xE000000000000000;
LABEL_24:
  v118 = v47;
  v119 = v49;
  v117 = 0;
  v116 = 0u;
  v115 = 0u;
  v51 = *(v112 + 104);
  v112 += 104;
  v51(v105, enum case for ButtonRole.preferred(_:), v106);
  v52 = enum case for _ProtoButton.FormAction.none(_:);
  v53 = v113[13];
  v93 = v10;
  v113 += 13;
  v53(v107, enum case for _ProtoButton.FormAction.none(_:), v10);
  v54 = enum case for Button.LabelStyle.automatic(_:);
  v55 = *(v95 + 104);
  v55(v109, enum case for Button.LabelStyle.automatic(_:), v108);
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  sub_1000A9B94(v123, v122);
  v56 = [v50 denyText];
  if (v56)
  {
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v120 = &type metadata for String;
    v121 = &protocol witness table for String;
    if (v60)
    {
      goto LABEL_29;
    }

    v58 = 0;
  }

  else
  {
    v58 = 0;
    v120 = &type metadata for String;
    v121 = &protocol witness table for String;
  }

  v60 = 0xE000000000000000;
LABEL_29:
  v61 = v101;
  v118 = v58;
  v119 = v60;
  v117 = 0;
  v116 = 0u;
  v115 = 0u;
  v53(v107, v52, v93);
  v55(v109, v54, v108);
  v51(v105, enum case for ButtonRole.standard(_:), v106);
  v62 = v110;
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v63 = *(v103 + 16);
  v64 = v97;
  v63(v92, v114, v97);
  v63(v94, v62, v64);
  v65 = v100;
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  v113 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v66 = v90;

  if ((v66 & 0x2000000000000000) != 0)
  {
    v67 = HIBYTE(v66) & 0xF;
  }

  else
  {
    v67 = v91 & 0xFFFFFFFFFFFFLL;
  }

  sub_100093B6C(&qword_10018E350);
  if (v67)
  {
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1000F7BC0;
    v69 = v96;
    *(v68 + 56) = v96;
    *(v68 + 64) = &protocol witness table for SystemTextClarificationTitle;
    v70 = sub_10009E8C4((v68 + 32));
    (*(v104 + 16))(v70, v111, v69);
    v71 = v102;
    *(v68 + 96) = v102;
    *(v68 + 104) = &protocol witness table for BinaryButton;
    v72 = sub_10009E8C4((v68 + 72));
    (*(v61 + 16))(v72, v65, v71);
    v73 = v89;
    Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
    sub_1000B1EC4(&qword_10018E348, &type metadata accessor for Response);
    v74 = v99;
    v75 = ProtobufBuilder.serializedData()();
  }

  else
  {
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000F7BD0;
    v71 = v102;
    *(v77 + 56) = v102;
    *(v77 + 64) = &protocol witness table for BinaryButton;
    v78 = sub_10009E8C4((v77 + 32));
    (*(v61 + 16))(v78, v65, v71);
    v73 = v88;
    Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
    sub_1000B1EC4(&qword_10018E348, &type metadata accessor for Response);
    v74 = v99;
    v75 = ProtobufBuilder.serializedData()();
    v69 = v96;
  }

  v79 = v76;
  v80 = v75;
  (*(v98 + 8))(v73, v74);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001717C(v80, v79);
  v82 = v103;
  v83 = v113;
  [v113 setModelData:isa];

  v84 = v83;
  v85 = String._bridgeToObjectiveC()();
  [v84 setViewId:v85];

  (*(v61 + 8))(v65, v71);
  v86 = *(v82 + 8);
  v86(v110, v64);
  v86(v114, v64);
  sub_100006114(v123);
  sub_100006114(&v125);
  (*(v104 + 8))(v111, v69);
  return v84;
}

uint64_t sub_1000B17F8@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Command();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *(v5 + 104);
  v11(&v22 - v9, enum case for Command.noOp(_:), v4);
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_100093B6C(&qword_10018E7F8);
    v15 = swift_allocObject();
    v22 = xmmword_1000F7BD0;
    *(v15 + 16) = xmmword_1000F7BD0;
    (*(v5 + 16))(v8, v10, v4);
    sub_100093B6C(&qword_10018E800);
    v16 = type metadata accessor for _ProtoIdiom();
    v17 = *(v16 - 8);
    v18 = *(v17 + 80);
    v23 = v4;
    v19 = a2;
    v20 = (v18 + 32) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    (*(v17 + 104))(v21 + v20, enum case for _ProtoIdiom.default(_:), v16);
    sub_1000B1BA0(v21);
    swift_setDeallocating();
    (*(v17 + 8))(v21 + v20, v16);
    swift_deallocClassInstance();
    *(v15 + 56) = type metadata accessor for ActionElement();
    *(v15 + 64) = &protocol witness table for ActionElement;
    sub_10009E8C4((v15 + 32));
    ActionElement.init(_:text:idioms:)();
    v19[3] = type metadata accessor for ActionProperty();
    v19[4] = &protocol witness table for ActionProperty;
    sub_10009E8C4(v19);
    ActionProperty.init(_:)();
    return (*(v5 + 8))(v10, v23);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      (*(v5 + 8))(v10, v4);
      *v10 = v14;
      v10[8] = 1;
      v11(v10, enum case for Command.aceCommand(_:), v4);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_1000B1BA0(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100093B6C(&qword_10018E808);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_1000B1EC4(&qword_10018E810, &type metadata accessor for _ProtoIdiom);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_1000B1EC4(&qword_10018E818, &type metadata accessor for _ProtoIdiom);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000B1EC4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000B2020(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000B2058()
{
  *(v0 + OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippet) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isFullScreen) = 0;
  v1 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint;
  *(v0 + v1) = [objc_allocWithZone(NSLayoutConstraint) init];
  v2 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint;
  *(v0 + v2) = [objc_allocWithZone(NSLayoutConstraint) init];
  v3 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint;
  *(v0 + v3) = [objc_allocWithZone(NSLayoutConstraint) init];
  v4 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint;
  *(v0 + v4) = [objc_allocWithZone(NSLayoutConstraint) init];
  v5 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint;
  *(v0 + v5) = [objc_allocWithZone(NSLayoutConstraint) init];
  v6 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint;
  *(v0 + v6) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset) = 0;
  v7 = (v0 + OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetSize);
  *v7 = 0;
  v7[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000B2238()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 8);
  objc_allocWithZone(type metadata accessor for SRCarPlaySiriUnavailableViewController());
  v49[0] = LocalizedStringKey.init(stringLiteral:)();
  v49[1] = v3;
  v50 = v4 & 1;
  v51 = v5;
  v52 = LocalizedStringKey.init(stringLiteral:)();
  v53 = v6;
  v54 = v7 & 1;
  v55 = v8;
  v56 = LocalizedStringKey.init(stringLiteral:)();
  v57 = v9;
  v58 = v10 & 1;
  v59 = v11;
  v60 = v2;
  swift_unknownObjectWeakInit();
  sub_10009885C(v49, v48);
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [v12 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v16 setAutoresizingMask:18];
  swift_unknownObjectRelease();

  sub_1000B428C(v49);
  v17 = [objc_opt_self() materialViewWithRecipe:52];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v18 setAutoresizingMask:18];
  v19 = [v47 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  [v19 addSubview:v18];

  v21 = [v47 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v18 setFrame:{v24, v26, v28, v30}];
  v31 = v12;
  [v47 addChildViewController:v31];
  v32 = [v47 view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v31 view];
  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = v34;
  [v33 addSubview:v34];

  [v31 didMoveToParentViewController:v47];
  v36 = [v31 view];

  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = [v47 view];
  if (v37)
  {
    v38 = v37;
    [v37 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v36 setFrame:{v40, v42, v44, v46}];
    return;
  }

LABEL_19:
  __break(1u);
}

BOOL sub_1000B2634()
{
  if (*(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController))
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands;
  swift_beginAccess();
  return *(v0 + v2) == 0;
}

id sub_1000B26C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlayViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B26FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  v5 = v1;
  v6 = v4(ObjectType, v2);

  return v6 & 1;
}

void sub_1000B2784()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = v1;
    v4(ObjectType, v2);
  }
}

void sub_1000B2834(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking) = 1;
  v3 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 48);
    v9 = v3;
    v8(a1, a2, ObjectType, v6);
  }
}

void sub_1000B2910(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 56);
    v9 = v3;
    v8(a1, a2, ObjectType, v6);
  }
}

void sub_1000B29DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 64);
    v5 = v1;
    v4(ObjectType, v2);
  }
}

void sub_1000B2A8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 80);
    v9 = v3;
    v8(a1, a2, ObjectType, v6);
  }
}

uint64_t sub_1000B2B58()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B2BE8()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B2C78()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B2D08(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B2DAC()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 48))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B2E3C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SRCarPlayView();
    if (swift_dynamicCastClass())
    {
      sub_10000AEDC(1);
      sub_1000C4E38(0);
    }
  }
}

uint64_t sub_1000B2ED0()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 80))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1000B3028(void *a1, char a2, void *a3, _BYTE *a4)
{
  *&a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet] = 0;
  v8 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet;
  *&a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet] = 0;
  v9 = &a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate];
  *&a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_proceedToNextCommandAtSpeechSynthesisEnd] = 1;
  v10 = [objc_allocWithZone(type metadata accessor for VisualResponseProvider()) init];
  *(v9 + 1) = &off_100169B40;
  v74 = a3;
  swift_unknownObjectWeakAssign();
  v11 = *&a4[v8];
  *&a4[v8] = a1;
  v12 = a1;

  sub_100014EE4(0);
  v13 = [v12 modelData];
  v73 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v75 = v17;
    v18 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      if (!v18)
      {
        if ((v17 & 0xFF000000000000) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      v19 = v15;
      v20 = v15 >> 32;
LABEL_10:
      if (v19 != v20)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (v18 == 2)
    {
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    v75 = 0xC000000000000000;
  }

LABEL_11:
  v21 = a2;
  v22 = v10;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006160(v23, qword_10018EE28);
  v24 = static os_log_type_t.error.getter();
  v77 = 0xD00000000000002ELL;
  v78 = 0x8000000100119AF0;
  v25 = sub_100006198(0);
  if (v26)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    String.append(_:)(*&v25);

    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
  }

  if (("Bundle name is empty" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    v28._countAndFlagsBits = 0xD00000000000001BLL;
    v28._object = 0x8000000100119B40;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
  }

  v30 = v77;
  v31 = v78;
  v32 = Logger.logObject.getter();
  if (os_log_type_enabled(v32, v24))
  {
    v33 = swift_slowAlloc();
    v34 = v15;
    v35 = swift_slowAlloc();
    v76._countAndFlagsBits = v35;
    *v33 = 136315138;
    v36 = sub_1000075D4(v30, v31, &v76._countAndFlagsBits);

    *(v33 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v32, v24, "%s", v33, 0xCu);
    sub_100006114(v35);
    v15 = v34;
  }

  else
  {
  }

  v10 = v22;
  a2 = v21;
  v12 = v73;
LABEL_21:
  v37 = [v12 bundleName];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    v72 = v10;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006160(v43, qword_10018EE28);
    v44 = static os_log_type_t.error.getter();
    v77 = 0xD00000000000002ELL;
    v78 = 0x8000000100119AF0;
    v45 = sub_100006198(0);
    if (v46)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      String.append(_:)(*&v45);

      String.append(_:)(v76);
    }

    v71 = v15;
    if (("et:isRightHandDrive:delegate:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      v47._countAndFlagsBits = 0xD000000000000014;
      v47._object = 0x8000000100119B20;
      String.append(_:)(v47);
      String.append(_:)(v76);
    }

    v49 = v77;
    v48 = v78;
    v50 = Logger.logObject.getter();
    if (os_log_type_enabled(v50, v44))
    {
      v51 = swift_slowAlloc();
      v52 = a2;
      v53 = swift_slowAlloc();
      v76._countAndFlagsBits = v53;
      *v51 = 136315138;
      v54 = sub_1000075D4(v49, v48, &v76._countAndFlagsBits);

      *(v51 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v44, "%s", v51, 0xCu);
      sub_100006114(v53);
      a2 = v52;
      v12 = v73;
    }

    else
    {
    }

    v15 = v71;
    v10 = v72;
  }

  v55 = VisualResponseProvider.view(for:bundleName:mode:)();
  *&a4[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet] = v55;
  if (!v55)
  {
    sub_100014EE4(1);
  }

  a4[OBJC_IVAR____TtC4Siri29SRCarPlayScrollViewController_isRightHandDrive] = a2 & 1;
  v56 = type metadata accessor for SRCarPlayScrollViewController();
  v79.receiver = a4;
  v79.super_class = v56;
  v57 = objc_msgSendSuper2(&v79, "initWithNibName:bundle:", 0, 0);
  v58 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet;
  v59 = *&v57[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet];
  if (!v59 || ([v59 setBackgroundMaterial:1], (v60 = *&v57[v58]) == 0) || (objc_msgSend(v60, "setInteractionDelegate:", v57), (v61 = *&v57[v58]) == 0) || (objc_msgSend(v61, "setCurrentIdiom:", 4), (v62 = *&v57[v58]) == 0))
  {

    v68 = *&v57[v58];
    if (!v68)
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v63 = v15;
  v64 = v62;
  v65 = v12;
  result = [v65 viewId];
  if (result)
  {
    v67 = result;

    [v64 setViewId:v67];
    v15 = v63;
    v68 = *&v57[v58];
    if (!v68)
    {
LABEL_45:
      sub_10001717C(v15, v75);
LABEL_50:

      return v57;
    }

LABEL_47:
    v69 = v68;
    v70 = [v12 responseViewId];
    if (!v70)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = String._bridgeToObjectiveC()();
    }

    [v69 setResponseViewId:v70];
    sub_10001717C(v15, v75);

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B37A4(void *a1, id a2, void *a3, _BYTE *a4)
{
  *&a4[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardViewController] = 0;
  v8 = OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_widthConstraint;
  *&a4[v8] = [objc_allocWithZone(NSLayoutConstraint) init];
  v9 = OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_heightConstraint;
  *&a4[v9] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&a4[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardSnippet] = a1;
  v10 = &a4[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_delegate];
  *v10 = a3;
  v10[1] = &off_100169B80;
  v11 = a1;
  v12 = a3;
  sub_100093F80(0);
  a4[OBJC_IVAR____TtC4Siri29SRCarPlayScrollViewController_isRightHandDrive] = a2;
  v24.receiver = a4;
  v24.super_class = type metadata accessor for SRCarPlayScrollViewController();
  v13 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  v14 = [v11 siriui_card];
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  a2 = v14;
  if (([v14 respondsToSelector:"backingCard"] & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = objc_opt_self();
  v16 = [a2 backingCard];
  swift_unknownObjectRelease();
  a2 = [v15 cardViewControllerForCard:v16 feedbackDelegate:v13];

  if (!a2)
  {
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v18 = OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardViewController;
  v19 = *&v13[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardViewController];
  *&v13[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardViewController] = v17;
  v20 = a2;

  v21 = *&v13[v18];
  if (v21)
  {
    v22 = v21;
    [v22 setDelegate:v13];
  }

  return v13;
}

uint64_t sub_1000B3A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_100093B6C(&qword_10018E6B8);
  __chkstk_darwin(v5);
  if (*(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking) == 1)
  {
    v59 = v7;
    v60 = &v58 - v6;
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v8._countAndFlagsBits = 0xD000000000000015;
    v8._object = 0x80000001001197F0;
    String.append(_:)(v8);
    swift_getObjectType();
    v61 = a1;
    v65._countAndFlagsBits = a1;
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v9._countAndFlagsBits = 0xD000000000000026;
    v9._object = 0x8000000100119810;
    String.append(_:)(v9);
    v11 = v63;
    v10 = v64;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006160(v12, qword_10018EE28);
    v13 = static os_log_type_t.info.getter();
    v63 = 0xD00000000000004CLL;
    v64 = 0x8000000100119760;
    v14 = sub_100006198(0x8000010uLL);
    if (v15)
    {
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(*&v14);

      String.append(_:)(v65);
    }

    v16 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v16 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      v17._countAndFlagsBits = v11;
      v17._object = v10;
      String.append(_:)(v17);
      String.append(_:)(v65);
    }

    v18 = v63;
    v19 = v64;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v65._countAndFlagsBits = v22;
      *v21 = 136315138;
      v23 = sub_1000075D4(v18, v19, &v65._countAndFlagsBits);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, v13, "%s", v21, 0xCu);
      sub_100006114(v22);
    }

    else
    {
    }

    v37 = OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands;
    swift_beginAccess();
    v39 = v60;
    v38 = v61;
    if (!*(v3 + v37))
    {
      *(v3 + v37) = &_swiftEmptyArrayStorage;
    }

    v41 = sub_1000B21A0();
    if (*v40)
    {
      v42 = v40;
      v43 = *(v5 + 48);
      *v39 = v38;
      v44 = type metadata accessor for UUID();
      (*(*(v44 - 8) + 16))(&v39[v43], v62, v44);
      v45 = *v42;
      v46 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v42 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1000AC6B0(0, v45[2] + 1, 1, v45);
        *v42 = v45;
      }

      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        v45 = sub_1000AC6B0(v48 > 1, v49 + 1, 1, v45);
        *v42 = v45;
      }

      v45[2] = v49 + 1;
      sub_1000988D4(v39, v45 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, &qword_10018E6B8);
      (v41)(&v63, 0);
    }

    else
    {
      (v41)(&v63, 0);
    }

    v55 = v3 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v56 = *(v55 + 8);
      ObjectType = swift_getObjectType();
      (*(v56 + 16))(v3, ObjectType, v56);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    _StringGuts.grow(_:)(55);
    v24._countAndFlagsBits = 0xD000000000000034;
    v24._object = 0x80000001001197B0;
    String.append(_:)(v24);
    swift_getObjectType();
    v65._countAndFlagsBits = a1;
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v25._countAndFlagsBits = 46;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006160(v26, qword_10018EE28);
    v27 = static os_log_type_t.info.getter();
    v63 = 0xD00000000000004CLL;
    v64 = 0x8000000100119760;
    v28 = sub_100006198(0x8000010uLL);
    if (v29)
    {
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(*&v28);

      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
    }

    v32 = v63;
    v31 = v64;
    v33 = Logger.logObject.getter();
    if (os_log_type_enabled(v33, v27))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65._countAndFlagsBits = v35;
      *v34 = 136315138;
      v36 = sub_1000075D4(v32, v31, &v65._countAndFlagsBits);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, v27, "%s", v34, 0xCu);
      sub_100006114(v35);
    }

    else
    {
    }

    v50 = v3 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v50 + 8);
      v52 = swift_getObjectType();
      (*(v51 + 40))(v3, a1, v62, v52, v51);
      swift_unknownObjectRelease();
    }

    v53 = OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands;
    swift_beginAccess();
    *(v3 + v53) = 0;
  }

  return result;
}

unint64_t sub_1000B41E8()
{
  result = qword_10018EA28;
  if (!qword_10018EA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018EA28);
  }

  return result;
}

unint64_t sub_1000B4234()
{
  result = qword_10018EA30;
  if (!qword_10018EA30)
  {
    sub_1000B41E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA30);
  }

  return result;
}

void sub_1000B42E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100093B6C(&unk_10018E310);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = [v1 view];
  if (v7)
  {
    v30 = v7;
    type metadata accessor for SRCarPlayView();
    if (swift_dynamicCastClass())
    {
      sub_100016708(0, 0, 1);
      sub_100099924(a1, v6, &unk_10018E310);
      v8 = type metadata accessor for URL();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v6, 1, v8) == 1)
      {
        __break(1u);
      }

      else
      {
        v10 = URL.scheme.getter();
        if (v11)
        {
          if (v10 == 0x6D65746970616DLL && v11 == 0xE700000000000000)
          {
            v13 = 1;
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        else
        {
          v13 = 0;
        }

        (*(v9 + 8))(v6, v8);
        sub_1000C4AC8(v13 & 1);
        if (([objc_opt_self() isSiriLocationServicesPromptingEnabled] & 1) == 0)
        {
          goto LABEL_28;
        }

        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100006160(v15, qword_10018EE28);
        v16 = static os_log_type_t.info.getter();
        v32 = 0xD000000000000020;
        v33 = 0x8000000100119C90;
        v17 = sub_100006198(0x10uLL);
        if (v18)
        {
          v31._countAndFlagsBits = 32;
          v31._object = 0xE100000000000000;
          String.append(_:)(*&v17);

          String.append(_:)(v31);
        }

        if (("ndleId:inPlace:)" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v31._countAndFlagsBits = 32;
          v31._object = 0xE100000000000000;
          v19._countAndFlagsBits = 0xD000000000000024;
          v19._object = 0x8000000100119CC0;
          String.append(_:)(v19);
          String.append(_:)(v31);
        }

        v21 = v32;
        v20 = v33;
        v22 = Logger.logObject.getter();
        if (os_log_type_enabled(v22, v16))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v31._countAndFlagsBits = v24;
          *v23 = 136315138;
          v25 = sub_1000075D4(v21, v20, &v31._countAndFlagsBits);

          *(v23 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v22, v16, "%s", v23, 0xCu);
          sub_100006114(v24);
        }

        else
        {
        }

        sub_100016708(0, 0, 1);
        v26 = &v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          (*(v27 + 80))(ObjectType, v27);

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_28:
        }
      }
    }

    else
    {
      v14 = v30;
    }
  }
}

void sub_1000B4740()
{
  v1 = (v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_lastFocusIndex;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000B4998(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1000B4B2C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_snippetCommandExecutor;
  type metadata accessor for SnippetCommandExecutor();
  swift_allocObject();
  *&v2[v7] = SnippetCommandExecutor.init()();
  v8 = &v2[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_appBundleId];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView;
  *&v3[v9] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v3[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_isBackgroundViewApplied] = 0;
  *&v3[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView] = a1;
  v28.receiver = v3;
  v28.super_class = ObjectType;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v12 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView;
  v13 = *&v11[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  v14 = v11;
  [v13 setInteractionDelegate:v14];
  [*&v11[v12] setBackgroundMaterial:1];
  v15 = type metadata accessor for SiriUIHostingView();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView_rootView] = v10;
  v27.receiver = v16;
  v27.super_class = v15;
  v17 = v10;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setCardView:{v17, v27.receiver, v27.super_class, v28.receiver, v28.super_class}];
  [v14 setView:v18];

  v19 = [v14 view];
  if (v19)
  {
    [v19 setBackingViewController:v14];

    if (a2)
    {
      v20 = [a2 sash];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 applicationBundleIdentifier];

        if (v22)
        {
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

LABEL_9:
          v26 = &v14[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_appBundleId];
          *v26 = v23;
          v26[1] = v25;

          return;
        }
      }
    }

    else
    {
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1000B4DF8()
{
  v1 = type metadata accessor for AnyRootView();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
  type metadata accessor for VisualResponseView();
  if (swift_dynamicCastClass())
  {
    v6 = v5;
    VisualResponseView.anyRootView.getter();
    sub_1000BA764(&unk_10018EAC0, &type metadata accessor for AnyRootView);
    v7 = View.eraseToAnyView()();

    (*(v2 + 8))(v4, v1);
    return v7;
  }

  else
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006160(v9, qword_10018EE28);
    v10 = static os_log_type_t.info.getter();
    v21 = 0x292877656976;
    v22 = 0xE600000000000000;
    v11 = sub_100006198(0);
    if (v12)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(*&v11);

      String.append(_:)(v20);
    }

    if (("nAmbient" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      v13._object = 0x8000000100119F40;
      v13._countAndFlagsBits = 0xD00000000000003CLL;
      String.append(_:)(v13);
      String.append(_:)(v20);
    }

    v15 = v21;
    v14 = v22;
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v10))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20._countAndFlagsBits = v18;
      *v17 = 136315138;
      v19 = sub_1000075D4(v15, v14, &v20._countAndFlagsBits);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v16, v10, "%s", v17, 0xCu);
      sub_100006114(v18);
    }

    else
    {
    }

    return View.eraseToAnyView()();
  }
}

void sub_1000B520C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView;
  v3 = [*&v0[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView] backgroundColor];
  if (v3 || (v3 = [*&v0[v2] effect]) != 0)
  {

    if (v0[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_isBackgroundViewApplied] == 1)
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100006160(v4, qword_10018EE28);
      v5 = static os_log_type_t.info.getter();
      v22 = 0xD00000000000001ALL;
      v23 = 0x800000010011A180;
      v6 = sub_100006198(0);
      if (v7)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        String.append(_:)(*&v6);

        v8._countAndFlagsBits = 32;
        v8._object = 0xE100000000000000;
        String.append(_:)(v8);
      }

      if (("updateBackgroundIfNeeded()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        v9._countAndFlagsBits = 0xD000000000000090;
        v9._object = 0x800000010011A1A0;
        String.append(_:)(v9);
        v10._countAndFlagsBits = 32;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
      }

      v12 = v22;
      v11 = v23;
      v13 = Logger.logObject.getter();
      if (os_log_type_enabled(v13, v5))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = sub_1000075D4(v12, v11, &v20);

        *(v14 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v13, v5, "%s", v14, 0xCu);
        sub_100006114(v15);
      }

      else
      {
      }

      v17 = [v1 delegate];
      if (v17)
      {
        v18 = v17;
        if ([v17 respondsToSelector:"siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:"])
        {
          v19 = *&v1[v2];
          [v18 siriSnippetViewController:v1 informHostOfBackgroundView:v19 isSnippetAsyncColored:0];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1000B5954()
{
  v1 = v0;
  v2 = type metadata accessor for SnippetCommandError();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExecutionResult();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v66 - v10;

  dispatch thunk of SnippetCommandExecutor.execute(sfCommand:)();

  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 88))(v9, v5);
  if (v12 == enum case for ExecutionResult.convertedToAce(_:))
  {
    (*(v6 + 96))(v9, v5);
    v69 = *v9;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006160(v13, qword_10018EE28);
    v14 = static os_log_type_t.info.getter();
    v71 = 0xD000000000000014;
    v72 = 0x800000010011A030;
    v15 = sub_100006198(0x2000000uLL);
    if (v16)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      String.append(_:)(*&v15);

      String.append(_:)(v70);
    }

    if (("mmand. Returned error: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      v17._countAndFlagsBits = 0xD000000000000031;
      v17._object = 0x800000010011A0E0;
      String.append(_:)(v17);
      String.append(_:)(v70);
    }

    v19 = v71;
    v18 = v72;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v14))
    {
      v21 = swift_slowAlloc();
      v22 = v11;
      v23 = swift_slowAlloc();
      v70._countAndFlagsBits = v23;
      *v21 = 136315138;
      v24 = sub_1000075D4(v19, v18, &v70._countAndFlagsBits);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v20, v14, "%s", v21, 0xCu);
      sub_100006114(v23);
      v11 = v22;
    }

    else
    {
    }

    v40 = v69;
    sub_1000BA674(v40, v1);

LABEL_23:
    return (*(v6 + 8))(v11, v5);
  }

  if (v12 == enum case for ExecutionResult.failure(_:))
  {
    v67 = v11;
    (*(v6 + 96))(v9, v5);
    (*(v69 + 4))(v4, v9, v2);
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v25._countAndFlagsBits = 0xD000000000000047;
    v25._object = 0x800000010011A090;
    String.append(_:)(v25);
    sub_1000BA764(&qword_10018EB28, &type metadata accessor for SnippetCommandError);
    v26._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v26);

    v28 = v71;
    v27 = v72;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006160(v29, qword_10018EE28);
    v68 = static os_log_type_t.error.getter();
    v71 = 0xD000000000000014;
    v72 = 0x800000010011A030;
    v30 = sub_100006198(0x2000000uLL);
    if (v31)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      String.append(_:)(*&v30);

      String.append(_:)(v70);
    }

    v32 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v32 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      v33._countAndFlagsBits = v28;
      v33._object = v27;
      String.append(_:)(v33);
      String.append(_:)(v70);
    }

    v35 = v71;
    v34 = v72;
    v36 = Logger.logObject.getter();
    if (os_log_type_enabled(v36, v68))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v70._countAndFlagsBits = v38;
      *v37 = 136315138;
      v39 = sub_1000075D4(v35, v34, &v70._countAndFlagsBits);

      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v36, v68, "%s", v37, 0xCu);
      sub_100006114(v38);
    }

    else
    {
    }

    v52 = v67;
    (*(v69 + 1))(v4, v2);
    return (*(v6 + 8))(v52, v5);
  }

  else
  {
    if (v12 == enum case for ExecutionResult.commandExecuted(_:))
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100006160(v42, qword_10018EE28);
      v43 = static os_log_type_t.info.getter();
      v71 = 0xD000000000000014;
      v72 = 0x800000010011A030;
      v44 = sub_100006198(0x2000000uLL);
      if (v45)
      {
        v70._countAndFlagsBits = 32;
        v70._object = 0xE100000000000000;
        String.append(_:)(*&v44);

        String.append(_:)(v70);
      }

      if (("and to AceCommand" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v70._countAndFlagsBits = 32;
        v70._object = 0xE100000000000000;
        v46._countAndFlagsBits = 0xD00000000000002FLL;
        v46._object = 0x800000010011A120;
        String.append(_:)(v46);
        String.append(_:)(v70);
      }

      v48 = v71;
      v47 = v72;
      v40 = Logger.logObject.getter();
      if (os_log_type_enabled(v40, v43))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v70._countAndFlagsBits = v50;
        *v49 = 136315138;
        v51 = sub_1000075D4(v48, v47, &v70._countAndFlagsBits);

        *(v49 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v40, v43, "%s", v49, 0xCu);
        sub_100006114(v50);
      }

      else
      {
      }

      goto LABEL_23;
    }

    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006160(v53, qword_10018EE28);
    v54 = static os_log_type_t.error.getter();
    v71 = 0xD000000000000014;
    v72 = 0x800000010011A030;
    v55 = sub_100006198(0x2000000uLL);
    if (v56)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      String.append(_:)(*&v55);

      String.append(_:)(v70);
    }

    if (("performSFCommand(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      v57._countAndFlagsBits = 0xD00000000000003BLL;
      v57._object = 0x800000010011A050;
      String.append(_:)(v57);
      String.append(_:)(v70);
    }

    v59 = v71;
    v58 = v72;
    v60 = Logger.logObject.getter();
    if (os_log_type_enabled(v60, v54))
    {
      v61 = swift_slowAlloc();
      v62 = v11;
      v63 = swift_slowAlloc();
      v70._countAndFlagsBits = v63;
      *v61 = 136315138;
      v64 = sub_1000075D4(v59, v58, &v70._countAndFlagsBits);

      *(v61 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v60, v54, "%s", v61, 0xCu);
      sub_100006114(v63);
      v11 = v62;
    }

    else
    {
    }

    v65 = *(v6 + 8);
    v65(v11, v5);
    return (v65)(v9, v5);
  }
}

void sub_1000B6458()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = String._bridgeToObjectiveC()();

  [v6 setAceId:v8];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v6 setModelData:isa];

  v10 = [objc_allocWithZone(SAUIAddViews) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7(v5, v2);
  v11 = String._bridgeToObjectiveC()();

  [v10 setAceId:v11];

  sub_100093B6C(&qword_10018E930);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F79C0;
  *(v12 + 32) = v6;
  sub_10000A238(0, &qword_10018E6D0);
  v13 = v6;
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setViews:v14];

  v15 = [v1 delegate];
  if (v15)
  {
    v16 = v15;
    sub_100093B6C(&qword_10018E320);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000F7BD0;
    *(v17 + 56) = sub_10000A238(0, &qword_10018EB20);
    *(v17 + 32) = v10;
    v18 = v10;
    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v16 siriViewController:v1 performAceCommands:v19];

    swift_unknownObjectRelease();
  }
}

void sub_1000B67A4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAIntentGroupSubmitIFMessagePayload) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v4 setData:isa];

  v6 = [objc_allocWithZone(SAStartLocalRequest) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = String._bridgeToObjectiveC()();

  [v6 setAceId:v8];

  v45 = sub_100093B6C(&qword_10018E930);
  v9 = swift_allocObject();
  v46 = xmmword_1000F79C0;
  *(v9 + 16) = xmmword_1000F79C0;
  *(v9 + 32) = v4;
  v42 = v4;
  v44 = sub_100093B6C(&qword_10018DB60);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setClientBoundCommands:v10];

  v11 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  v12 = v0;
  v7(v3, v0);
  v13 = String._bridgeToObjectiveC()();

  [v11 setAceId:v13];

  v14 = v11;
  v15 = [v6 aceId];
  [v14 setRefId:v15];

  v16 = [objc_allocWithZone(SAResultCallback) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7(v3, v12);
  v17 = String._bridgeToObjectiveC()();

  [v16 setAceId:v17];

  v18 = v6;
  v19 = [v18 refId];
  [v16 setRefId:v19];

  [v16 setCode:0];
  v20 = swift_allocObject();
  *(v20 + 16) = v46;
  *(v20 + 32) = v14;
  v41 = v14;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setCommands:v21];

  v22 = [objc_allocWithZone(SACommandFailed) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7(v3, v12);
  v23 = String._bridgeToObjectiveC()();

  [v22 setAceId:v23];

  v24 = v22;
  v25 = [v18 aceId];
  [v24 setRefId:v25];

  v26 = [objc_allocWithZone(SAResultCallback) init];
  UUID.init()();
  UUID.uuidString.getter();
  v7(v3, v12);
  v27 = String._bridgeToObjectiveC()();

  [v26 setAceId:v27];

  v28 = [v18 refId];
  [v26 setRefId:v28];

  [v26 setCode:-1];
  v29 = swift_allocObject();
  *(v29 + 16) = v46;
  *(v29 + 32) = v24;
  v30 = v24;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setCommands:v31];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000F7D00;
  *(v32 + 32) = v16;
  *(v32 + 40) = v26;
  sub_10000A238(0, &unk_10018EB10);
  v33 = v42;
  v34 = v16;
  v35 = v26;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v33 setCallbacks:v36];

  v37 = v33;
  v38 = [v18 aceId];

  [v37 setRefId:v38];
  v39 = v18;
  sub_1000BA674(v39, v43);
}

void sub_1000B6E9C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  [v6 setAceId:v7];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v6 setModelData:isa];

  v9 = [v1 delegate];
  if (v9)
  {
    v10 = v9;
    sub_100093B6C(&qword_10018E320);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F7BD0;
    *(v11 + 56) = sub_10000A238(0, &qword_10018EB08);
    *(v11 + 32) = v6;
    v12 = v6;
    v13 = Array._bridgeToObjectiveC()().super.isa;

    [v10 siriSnippetViewController:v1 pushSirilandSnippets:v13];

    swift_unknownObjectRelease();
  }
}

void sub_1000B70E0(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  a4(v7, v9);
  sub_10001717C(v7, v9);
}

void sub_1000B7178()
{
  v8 = [objc_allocWithZone(SAUIPluginSnippet) init];
  v1 = String._bridgeToObjectiveC()();
  [v8 setBundleName:v1];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 setModelData:isa];

  v3 = [v0 delegate];
  if (v3)
  {
    v4 = v3;
    sub_100093B6C(&qword_10018E320);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000F7BD0;
    *(v5 + 56) = sub_10000A238(0, &qword_10018EB00);
    *(v5 + 32) = v8;
    v6 = v8;
    v7 = Array._bridgeToObjectiveC()().super.isa;

    [v4 siriSnippetViewController:v0 pushSirilandSnippets:v7];

    swift_unknownObjectRelease();
  }
}

id sub_1000B73B8(void *a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1000BA5F8;
  v10[5] = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000B7DE4;
  v10[3] = &unk_100169CB0;
  v4 = _Block_copy(v10);

  [v1 _beginMonitoringForNextCardWithBlock:v4];
  _Block_release(v4);
  result = [v1 delegate];
  if (result)
  {
    v6 = result;
    sub_100093B6C(&qword_10018E320);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000F7BD0;
    *(v7 + 56) = swift_getObjectType();
    *(v7 + 32) = a1;
    v8 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 siriViewController:v1 performAceCommands:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B753C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 cardSections];
    if (v2)
    {

      v3 = [objc_allocWithZone(SACardSnippet) init];
      v4 = [objc_allocWithZone(_SFPBCard) initWithFacade:v1];
      if (v4)
      {
        v5 = v4;
        isa = [v4 data];

        if (isa)
        {
          v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001717C(v7, v9);
        }
      }

      else
      {
        isa = 0;
      }

      [v3 setCardData:isa];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        v17 = [Strong delegate];

        if (v17)
        {
          swift_beginAccess();
          v18 = swift_unknownObjectWeakLoadStrong();
          sub_100093B6C(&qword_10018E320);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1000F7BD0;
          *(v19 + 56) = sub_10000A238(0, &unk_10018EAD0);
          *(v19 + 32) = v3;
          v3 = v3;
          v20 = Array._bridgeToObjectiveC()().super.isa;

          [v17 siriSnippetViewController:v18 pushSirilandSnippets:v20];

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v10 = swift_allocObject();
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v10;
      aBlock[4] = sub_1000BA600;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B7D5C;
      aBlock[3] = &unk_100169D00;
      v13 = _Block_copy(aBlock);
      v14 = v1;

      [v14 loadCardSectionsWithCompletionHandler:v13];

      _Block_release(v13);
    }
  }
}

uint64_t sub_1000B7858(Class isa, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    sub_10000A238(0, &qword_10018E480);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a2 setCardSections:isa];

  v13 = [objc_allocWithZone(SACardSnippet) init];
  v14 = [objc_allocWithZone(_SFPBCard) initWithFacade:a2];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 data];

    if (v16)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v16 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001717C(v17, v19);
    }
  }

  else
  {
    v16 = 0;
  }

  [v13 setCardData:v16];

  sub_10000A238(0, &qword_10018EAE0);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = v13;
  aBlock[4] = sub_1000BA608;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007C78;
  aBlock[3] = &unk_100169D50;
  v22 = _Block_copy(aBlock);

  v23 = v13;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000BA764(&qword_10018EF50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100093B6C(&unk_10018EAF0);
  sub_1000BA610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v26);
}

void sub_1000B7C28(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong delegate];

    if (v5)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      sub_100093B6C(&qword_10018E320);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1000F7BD0;
      *(v7 + 56) = sub_10000A238(0, &unk_10018EAD0);
      *(v7 + 32) = a2;
      v8 = a2;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 siriSnippetViewController:v6 pushSirilandSnippets:isa];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B7D5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_10000A238(0, &qword_10018E480);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

void sub_1000B7DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1000B7ED8(double a1, double a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(19);
  v6._object = 0x8000000100119FD0;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v19 = *&a1;
  v20 = a2;
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006160(v7, qword_10018EE28);
  v8 = static os_log_type_t.info.getter();
  v21 = 0xD00000000000001ALL;
  v22 = 0x8000000100118D10;
  v9 = sub_100006198(0x2000000uLL);
  if (v10)
  {
    v19 = 32;
    v20 = -1.7573882e159;
    String.append(_:)(*&v9);

    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  v13 = v21;
  v12 = v22;
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v8))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    v17 = sub_1000075D4(v13, v12, &v19);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v14, v8, "%s", v15, 0xCu);
    sub_100006114(v16);
  }

  else
  {
  }

  result = [v3 delegate];
  if (result)
  {
    [result siriViewControllerHeightDidChange:v3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000B81FC()
{
  result = [v0 delegate];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result siriSnippetViewController:v0 setStatusViewHidden:1];
  swift_unknownObjectRelease();
  result = [v0 _privateDelegate];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result siriViewControllerWillBeginEditing:v0];

  return swift_unknownObjectRelease();
}

id sub_1000B82E8()
{
  result = [v0 _privateDelegate];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result siriViewControllerDidEndEditing:v0];
  swift_unknownObjectRelease();
  result = [v0 delegate];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result siriSnippetViewController:v0 setStatusViewHidden:0];

  return swift_unknownObjectRelease();
}

void SiriUICardSnippetViewController.emitInstrumentationEvent(_:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v97 = v2;
  v98 = v3;
  v4 = __chkstk_darwin(v2);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v91 = &v91 - v8;
  __chkstk_darwin(v7);
  v93 = &v91 - v9;
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v100 = 0xD000000000000022;
  v101 = 0x8000000100118990;
  v10 = a1;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = v100;
  v17 = v101;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100006160(v18, qword_10018EE28);
  v20 = static os_log_type_t.info.getter();
  v100 = 0xD00000000000001CLL;
  v101 = 0x8000000100118970;
  v96 = 0x8000000100118970;
  v21 = sub_100006198(0x2000000uLL);
  if (v22)
  {
    v99._countAndFlagsBits = 32;
    v99._object = 0xE100000000000000;
    String.append(_:)(*&v21);

    String.append(_:)(v99);
  }

  v23 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v23 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v99._countAndFlagsBits = 32;
    v99._object = 0xE100000000000000;
    v24._countAndFlagsBits = v16;
    v24._object = v17;
    String.append(_:)(v24);
    String.append(_:)(v99);
  }

  v26 = v100;
  v25 = v101;
  v27 = Logger.logObject.getter();
  v28 = v20;
  v29 = os_log_type_enabled(v27, v20);
  v94 = v19;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v99._countAndFlagsBits = v31;
    *v30 = 136315138;
    v32 = sub_1000075D4(v26, v25, &v99._countAndFlagsBits);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s", v30, 0xCu);
    sub_100006114(v31);
  }

  else
  {
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  v34 = v96;
  if (v33)
  {
    v35 = v33;
    v36 = objc_opt_self();
    v92 = v10;
    v37 = [v36 sharedInstance];
    if (v37 && (v38 = v37, v39 = [v37 isSiriDetached], v38, (v39 & 1) != 0))
    {
      v40 = v92;
    }

    else
    {
      v41 = [v95 instrumentationTurnIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = v93;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = objc_allocWithZone(AFAnalyticsTurnBasedInstrumentationContext);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v46 = [v44 initWithTurnIdentifier:isa];

        v47 = *(v98 + 8);
        v98 += 8;
        v47(v43, v97);
        if ([v35 requiresNewTurn])
        {
          v48 = [v95 instrumentationTurnIdentifier];
          if (v48)
          {
            v49 = v91;
            v50 = v48;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v51.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            v47(v49, v97);
          }

          else
          {
            v51.super.isa = 0;
          }

          v62 = [objc_opt_self() newTurnBasedContextWithPreviousTurnID:v51.super.isa];

          v100 = 0;
          v101 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v100 = 0xD00000000000001ALL;
          v101 = 0x8000000100119CF0;
          v91 = v62;
          v63 = [v62 turnIdentifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000BA764(&qword_10018E6C0, &type metadata accessor for UUID);
          v64 = v97;
          v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v65);

          v47(v6, v64);
          v66._countAndFlagsBits = 0x646C4F203E2D3C20;
          v66._object = 0xEE00206E72755420;
          String.append(_:)(v66);
          v67 = [v46 turnIdentifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v68);

          v93 = v6;
          v47(v6, v64);
          v69 = v100;
          v70 = v101;
          v71 = static os_log_type_t.info.getter();
          v100 = 0xD00000000000001CLL;
          v101 = v96;
          v72 = sub_100006198(0x2000000uLL);
          if (v73)
          {
            v99._countAndFlagsBits = 32;
            v99._object = 0xE100000000000000;
            String.append(_:)(*&v72);

            String.append(_:)(v99);
          }

          v74 = HIBYTE(v70) & 0xF;
          if ((v70 & 0x2000000000000000) == 0)
          {
            v74 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            v99._countAndFlagsBits = 32;
            v99._object = 0xE100000000000000;
            v75._countAndFlagsBits = v69;
            v75._object = v70;
            String.append(_:)(v75);
            String.append(_:)(v99);
          }

          v77 = v100;
          v76 = v101;
          v78 = Logger.logObject.getter();
          if (os_log_type_enabled(v78, v71))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v96 = v47;
            v81 = v71;
            v82 = v80;
            v99._countAndFlagsBits = v80;
            *v79 = 136315138;
            v83 = sub_1000075D4(v77, v76, &v99._countAndFlagsBits);

            *(v79 + 4) = v83;
            v84 = v81;
            v47 = v96;
            _os_log_impl(&_mh_execute_header, v78, v84, "%s", v79, 0xCu);
            sub_100006114(v82);
          }

          else
          {
          }

          v85 = objc_opt_self();
          v46 = v91;
          v86 = [v85 sharedManager];
          [v86 storeCurrentInstrumentationTurnContext:v46];

          v87 = [v46 turnIdentifier];
          v6 = v93;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v88 = UUID._bridgeToObjectiveC()().super.isa;
          v47(v6, v97);
          [v95 setInstrumentationTurnIdentifier:v88];
        }

        v89 = [v46 turnIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = UUID._bridgeToObjectiveC()().super.isa;
        v47(v6, v97);
        [v35 emitWithTurnIdentifier:v90];
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v52 = static os_log_type_t.info.getter();
    v100 = 0xD00000000000001CLL;
    v101 = v34;
    v53 = sub_100006198(0x2000000uLL);
    if (v54)
    {
      v99._countAndFlagsBits = 32;
      v99._object = 0xE100000000000000;
      String.append(_:)(*&v53);

      String.append(_:)(v99);
    }

    if (("trumentationEvent " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v99._countAndFlagsBits = 32;
      v99._object = 0xE100000000000000;
      v55._countAndFlagsBits = 0xD000000000000045;
      v55._object = 0x80000001001189C0;
      String.append(_:)(v55);
      String.append(_:)(v99);
    }

    v57 = v100;
    v56 = v101;
    v58 = Logger.logObject.getter();
    if (os_log_type_enabled(v58, v52))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v99._countAndFlagsBits = v60;
      *v59 = 136315138;
      v61 = sub_1000075D4(v57, v56, &v99._countAndFlagsBits);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v58, v52, "%s", v59, 0xCu);
      sub_100006114(v60);
    }

    else
    {
    }
  }
}

void SiriUICardSnippetViewController.emitInstrumentationEvent(_:viewId:)(void *a1, uint64_t a2)
{
  v96 = a2;
  v101 = type metadata accessor for UUID();
  v3 = *(v101 - 8);
  v4 = __chkstk_darwin(v101);
  v98 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v93 = &v92 - v7;
  __chkstk_darwin(v6);
  v95 = &v92 - v8;
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v103 = 0xD000000000000022;
  v104 = 0x8000000100118990;
  v9 = a1;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = v103;
  v16 = v104;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006160(v17, qword_10018EE28);
  v19 = static os_log_type_t.info.getter();
  v103 = 0xD000000000000023;
  v104 = 0x8000000100119D10;
  v100 = 0x8000000100119D10;
  v20 = sub_100006198(0x2000000uLL);
  if (v21)
  {
    v102._countAndFlagsBits = 32;
    v102._object = 0xE100000000000000;
    String.append(_:)(*&v20);

    String.append(_:)(v102);
  }

  v22 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v102._countAndFlagsBits = 32;
    v102._object = 0xE100000000000000;
    v23._countAndFlagsBits = v15;
    v23._object = v16;
    String.append(_:)(v23);
    String.append(_:)(v102);
  }

  v25 = v103;
  v24 = v104;
  v26 = Logger.logObject.getter();
  v27 = os_log_type_enabled(v26, v19);
  v97 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v102._countAndFlagsBits = v29;
    *v28 = 136315138;
    v30 = sub_1000075D4(v25, v24, &v102._countAndFlagsBits);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v26, v19, "%s", v28, 0xCu);
    sub_100006114(v29);
  }

  else
  {
  }

  v31 = v100;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    v52 = static os_log_type_t.info.getter();
    v103 = 0xD000000000000023;
    v104 = v31;
    v53 = sub_100006198(0x2000000uLL);
    if (v54)
    {
      v102._countAndFlagsBits = 32;
      v102._object = 0xE100000000000000;
      String.append(_:)(*&v53);

      String.append(_:)(v102);
    }

    if (("trumentationEvent " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v102._countAndFlagsBits = 32;
      v102._object = 0xE100000000000000;
      v55._countAndFlagsBits = 0xD000000000000045;
      v55._object = 0x80000001001189C0;
      String.append(_:)(v55);
      String.append(_:)(v102);
    }

    v57 = v103;
    v56 = v104;
    v58 = Logger.logObject.getter();
    if (os_log_type_enabled(v58, v52))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v102._countAndFlagsBits = v60;
      *v59 = 136315138;
      v61 = sub_1000075D4(v57, v56, &v102._countAndFlagsBits);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v58, v52, "%s", v59, 0xCu);
      sub_100006114(v60);
    }

    else
    {
    }

    goto LABEL_42;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v94 = v9;
  v35 = [v34 sharedInstance];
  if (!v35 || (v36 = v35, v37 = [v35 isSiriDetached], v36, (v37 & 1) == 0))
  {
    v39 = [v99 instrumentationTurnIdentifier];
    if (!v39)
    {
      __break(1u);
      return;
    }

    v40 = v39;
    v41 = v95;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = objc_allocWithZone(AFAnalyticsTurnBasedInstrumentationContext);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v44 = [v42 initWithTurnIdentifier:isa];

    v47 = *(v3 + 8);
    v46 = (v3 + 8);
    v45 = v47;
    v47(v41, v101);
    if ([v33 requiresNewTurn])
    {
      v48 = [v99 instrumentationTurnIdentifier];
      if (v48)
      {
        v49 = v93;
        v50 = v48;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v51.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v45(v49, v101);
      }

      else
      {
        v51.super.isa = 0;
      }

      v63 = v98;
      v64 = [objc_opt_self() newTurnBasedContextWithPreviousTurnID:v51.super.isa];

      v103 = 0;
      v104 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v103 = 0xD00000000000001ALL;
      v104 = 0x8000000100119CF0;
      v93 = v64;
      v65 = [v64 turnIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000BA764(&qword_10018E6C0, &type metadata accessor for UUID);
      v66 = v101;
      v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v67);

      v45(v63, v66);
      v68._countAndFlagsBits = 0x646C4F203E2D3C20;
      v68._object = 0xEE00206E72755420;
      String.append(_:)(v68);
      v69 = [v44 turnIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v70);

      v95 = v46;
      v45(v63, v66);
      v71 = v103;
      v72 = v104;
      v73 = static os_log_type_t.info.getter();
      v103 = 0xD000000000000023;
      v104 = v100;
      v74 = sub_100006198(0x2000000uLL);
      if (v75)
      {
        v102._countAndFlagsBits = 32;
        v102._object = 0xE100000000000000;
        String.append(_:)(*&v74);

        String.append(_:)(v102);
      }

      v76 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v76 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v76)
      {
        v102._countAndFlagsBits = 32;
        v102._object = 0xE100000000000000;
        v77._countAndFlagsBits = v71;
        v77._object = v72;
        String.append(_:)(v77);
        String.append(_:)(v102);
      }

      v79 = v103;
      v78 = v104;
      v80 = Logger.logObject.getter();
      if (os_log_type_enabled(v80, v73))
      {
        v81 = swift_slowAlloc();
        v82 = v73;
        v83 = v45;
        v84 = swift_slowAlloc();
        v102._countAndFlagsBits = v84;
        *v81 = 136315138;
        v85 = sub_1000075D4(v79, v78, &v102._countAndFlagsBits);

        *(v81 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v80, v82, "%s", v81, 0xCu);
        sub_100006114(v84);
        v45 = v83;
      }

      else
      {
      }

      v86 = objc_opt_self();
      v44 = v93;
      v87 = [v86 sharedManager];
      [v87 storeCurrentInstrumentationTurnContext:v44];

      v88 = [v44 turnIdentifier];
      v62 = v98;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = UUID._bridgeToObjectiveC()().super.isa;
      v45(v62, v101);
      [v99 setInstrumentationTurnIdentifier:v89];
    }

    else
    {
      v62 = v98;
    }

    v90 = [v44 turnIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v91 = UUID._bridgeToObjectiveC()().super.isa;
    v45(v62, v101);
    v58 = UUID._bridgeToObjectiveC()().super.isa;
    [v33 emitWithTurnIdentifier:v91 aceViewId:v58];

LABEL_42:
    return;
  }

  v38 = v94;
}

Swift::Void __swiftcall SiriUICardSnippetViewController.informHostOfBackgroundColor(_:)(UIColor_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  _StringGuts.grow(_:)(25);

  v30 = isa;
  v4 = isa;
  sub_100093B6C(&qword_10018EA38);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006160(v6, qword_10018EE28);
  v7 = static os_log_type_t.info.getter();
  v32 = 0xD00000000000001FLL;
  v33 = 0x8000000100118C70;
  v8 = sub_100006198(0x2000000uLL);
  if (v9)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    String.append(_:)(*&v8);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  v11 = (0x8000000100119D40 >> 56) & 0xF;
  if ((0x8000000100119D40 & 0x2000000000000000) == 0)
  {
    v11 = 23;
  }

  if (v11)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    v12._countAndFlagsBits = 0xD000000000000017;
    v12._object = 0x8000000100119D40;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  v15 = v32;
  v14 = v33;
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v7))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = sub_1000075D4(v15, v14, &v30);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v16, v7, "%s", v17, 0xCu);
    sub_100006114(v18);
  }

  else
  {
  }

  type metadata accessor for SiriUIVisualResponseViewController();
  v20 = swift_dynamicCastClass();
  if (v20 && isa)
  {
    v21 = v20;
    v22 = *(v20 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView);
    v23 = v4;
    v24 = v2;
    v25 = v22;
    [v25 setEffect:0];
    v26 = v25;
    [v26 setBackgroundColor:v23];
    v27 = [v24 delegate];
    if (v27)
    {
      v28 = v27;
      if (([v27 respondsToSelector:"siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      v29 = v24;
      [v28 siriSnippetViewController:v21 informHostOfBackgroundView:v26 isSnippetAsyncColored:0];

      swift_unknownObjectRelease();
    }

LABEL_19:
    *(v21 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_isBackgroundViewApplied) = 1;
  }
}

void SiriUICardSnippetViewController.informHostOfBackgroundMaterial(_:)(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(27);
  v4._object = 0x8000000100119D60;
  v4._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v4);
  v28[0] = a1;
  type metadata accessor for VRXHostMaterial(0);
  _print_unlocked<A, B>(_:_:)();
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006160(v5, qword_10018EE28);
  v6 = static os_log_type_t.info.getter();
  v29 = 0xD000000000000022;
  v30 = 0x8000000100118B70;
  v7 = sub_100006198(0x2000000uLL);
  if (v8)
  {
    v28[0] = 32;
    v28[1] = 0xE100000000000000;
    String.append(_:)(*&v7);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  v11 = v29;
  v10 = v30;
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315138;
    v15 = sub_1000075D4(v11, v10, v28);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, v6, "%s", v13, 0xCu);
    sub_100006114(v14);
  }

  else
  {
  }

  type metadata accessor for SiriUIVisualResponseViewController();
  v16 = swift_dynamicCastClass();
  if (v16 && (a1 - 1) <= 4)
  {
    v17 = v16;
    v18 = qword_1000F7DA0[a1 - 1];
    v19 = *(v16 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView);
    v20 = objc_opt_self();
    v21 = v2;
    v22 = v19;
    v23 = [v20 effectWithStyle:v18];
    [v22 setEffect:v23];

    v24 = v22;
    [v24 setBackgroundColor:0];
    v25 = [v21 delegate];
    if (v25)
    {
      v26 = v25;
      if ([v25 respondsToSelector:"siriSnippetViewController:informHostOfBackgroundView:isSnippetAsyncColored:"])
      {
        v27 = v21;
        [v26 siriSnippetViewController:v17 informHostOfBackgroundView:v24 isSnippetAsyncColored:0];
      }

      swift_unknownObjectRelease();
    }

    *(v17 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_isBackgroundViewApplied) = 1;
  }
}

unint64_t sub_1000BA610()
{
  result = qword_10018EF60;
  if (!qword_10018EF60)
  {
    sub_10009961C(&unk_10018EAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF60);
  }

  return result;
}

id sub_1000BA674(void *a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v5 = result;
    sub_100093B6C(&qword_10018E320);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000F7BD0;
    *(v6 + 56) = swift_getObjectType();
    *(v6 + 32) = a1;
    v7 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 siriViewController:a2 performAceCommands:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000BA764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000BA7AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_snippetCommandExecutor;
  type metadata accessor for SnippetCommandExecutor();
  swift_allocObject();
  *(v0 + v2) = SnippetCommandExecutor.init()();
  v3 = (v0 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_appBundleId);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_backgroundView;
  *(v1 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *(v1 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_isBackgroundViewApplied) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000BA9C0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = [objc_opt_self() systemDarkGrayColor];
  [v0 setTintColor:v3];

  v4 = [v0 layer];
  [v4 setCornerRadius:25.0];

  v5 = [v0 layer];
  [v5 setMasksToBounds:1];
}

id SRFeedbackButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRFeedbackButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000BAB7C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView] = 0;
  v9 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView;
  *&v4[v9] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v10 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentEffectView;
  *&v4[v10] = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView;
  *&v4[v11] = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView;
  *&v4[v12] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = [v13 sharedLight];
  v15 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v14];

  *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentLightEffect] = v15;
  v16 = [v13 sharedShimmeringLight];
  v17 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:v16 radius:0 region:5.1];

  *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceInsideLightEffect] = v17;
  v18 = [v13 sharedShimmeringLight];
  v19 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:v18 radius:1 region:5.0];

  *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceOutsideLightEffect] = v19;
  if (qword_10018D750 != -1)
  {
    swift_once();
  }

  v20 = [objc_allocWithZone(_UIIntelligenceRimHighlightEffect) initWithThickness:qword_100190330 color:2 softRadius:0 region:4.0 activationDirection:10.0];
  *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceRimHighlightEffect] = v20;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SRCarPlaySnippetPlatterView();
  v21 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 isEnhancedMaterialEnabled];
    v25 = 20.0;
    if (v24)
    {
      v25 = 28.0;
    }

    [v23 _setContinuousCornerRadius:v25];
  }

  else
  {
    v26 = v21;
    v27 = [v26 layer];
    v28 = [objc_opt_self() isEnhancedMaterialEnabled];
    v29 = 20.0;
    if (v28)
    {
      v29 = 28.0;
    }

    [v27 setCornerRadius:v29];

    v30 = [v26 layer];
    if (qword_10018D758 != -1)
    {
      swift_once();
    }

    [v30 setCornerCurve:qword_100190338];
  }

  [v21 setAutoresizingMask:18];
  [v21 setFrame:{a1, a2, a3, a4}];
  v31 = [objc_allocWithZone(UIView) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v32 = [objc_opt_self() isEnhancedMaterialEnabled];
    v33 = 20.0;
    if (v32)
    {
      v33 = 28.0;
    }

    [v31 _setContinuousCornerRadius:v33];
  }

  else
  {
    v34 = [v31 layer];
    v35 = [objc_opt_self() isEnhancedMaterialEnabled];
    v36 = 20.0;
    if (v35)
    {
      v36 = 28.0;
    }

    [v34 setCornerRadius:v36];

    v37 = [v31 layer];
    if (qword_10018D758 != -1)
    {
      swift_once();
    }

    [v37 setCornerCurve:qword_100190338];
  }

  [v31 setAutoresizingMask:18];
  [v31 setFrame:{a1, a2, a3, a4}];
  [v31 setHidden:1];
  [v21 addSubview:v31];
  v38 = *&v21[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView];
  *&v21[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView] = v31;
  v39 = v31;

  v40 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView;
  v41 = *&v21[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView];
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 isEnhancedMaterialEnabled];
  v45 = 20.0;
  if (v44)
  {
    v45 = 28.0;
  }

  [v43 _setContinuousCornerRadius:v45];
  [v43 setAutoresizingMask:18];
  [v43 setFrame:{a1, a2, a3, a4}];

  [*&v21[v40] setHidden:1];
  [*&v21[v40] setOpaque:0];
  [v21 addSubview:*&v21[v40]];
  if ([v42 isEnhancedMaterialEnabled])
  {
    [v21 siriSharedUI_setGlassBackground];
  }

  else
  {
    sub_1000BB26C(2);
  }

  if ([objc_opt_self() deviceSupportsAI])
  {
    sub_1000BB964(a1, a2, a3, a4);
  }

  return v21;
}

id sub_1000BB26C(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    v2 = 9;
  }

  else
  {
    v2 = *&asc_1000F7E10[8 * a1 - 16];
  }

  v3 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView;
  v4 = *(v1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 effectWithStyle:v2];
  [v6 setEffect:v7];

  [*(v1 + v3) setOpaque:0];
  [*(v1 + v3) setHidden:0];
  result = *(v1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

void sub_1000BB37C(void *a1)
{
  [v1 insertSubview:a1 aboveSubview:*&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView]];
  v3 = objc_opt_self();
  sub_100093B6C(&qword_10018E930);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000F7C00;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  v17 = [v1 centerXAnchor];
  v18 = [a1 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v4 + 64) = v19;
  v20 = [v1 centerYAnchor];
  v21 = [a1 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v4 + 72) = v22;
  sub_10000A238(0, &qword_10018E938);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_1000BB6AC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView);
  sub_100093B6C(&qword_10018E930);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F7D00;
  v4 = *(a1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceInsideLightEffect);
  v5 = *(a1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceOutsideLightEffect);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_10000A238(0, &qword_10018EBD0);
  v6 = v4;
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBackgroundEffects:isa];
}

void sub_1000BB7A0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_1000BBD3C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007C78;
  v7[3] = &unk_100169E40;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 animateWithDuration:v5 animations:1.5];
  _Block_release(v5);
}

void sub_1000BB88C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView);
  sub_10000A238(0, &qword_10018EBD0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setBackgroundEffects:isa];

  v4 = *(a1 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView);
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];
}

id sub_1000BB964(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentEffectView];
  v10 = objc_opt_self();
  if ([v10 isEnhancedMaterialEnabled])
  {
    v11 = 28.0;
  }

  else
  {
    v11 = 20.0;
  }

  [v9 _setContinuousCornerRadius:v11];
  [v9 setAutoresizingMask:18];
  [v9 setFrame:{a1, a2, a3, a4}];
  [v9 setAlpha:0.0];
  v12 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView;
  [v4 insertSubview:v9 belowSubview:*&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView]];
  v13 = *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if ([v10 isEnhancedMaterialEnabled])
    {
      v14 = 28.0;
    }

    else
    {
      v14 = 20.0;
    }

    [v13 _setContinuousCornerRadius:v14];
  }

  else
  {
    v15 = [v13 layer];
    if ([v10 isEnhancedMaterialEnabled])
    {
      v16 = 28.0;
    }

    else
    {
      v16 = 20.0;
    }

    [v15 setCornerRadius:v16];

    v17 = [v13 layer];
    if (qword_10018D758 != -1)
    {
      swift_once();
    }

    [v17 setCornerCurve:qword_100190338];
  }

  [v13 setAutoresizingMask:18];
  [v13 setFrame:{a1, a2, a3, a4}];
  v18 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:v18];

  [v13 setUserInteractionEnabled:0];
  v19 = [v13 layer];
  [v19 setAllowsHitTesting:0];

  [v4 insertSubview:v13 aboveSubview:*&v4[v12]];
  v20 = *&v4[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView];
  v21 = [v10 isEnhancedMaterialEnabled];
  v22 = 20.0;
  if (v21)
  {
    v22 = 28.0;
  }

  [v20 _setContinuousCornerRadius:v22];
  [v20 setAutoresizingMask:18];
  [v20 setFrame:{a1, a2, a3, a4}];
  [v20 setUserInteractionEnabled:0];
  v23 = [v20 layer];
  [v23 setAllowsHitTesting:0];

  return [v4 insertSubview:v20 aboveSubview:v13];
}

id sub_1000BBCF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlaySnippetPlatterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000BBD44()
{
  *(v0 + OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView) = 0;
  v1 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v2 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentEffectView;
  *(v0 + v2) = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView;
  *(v0 + v3) = [objc_allocWithZone(SiriSharedUIStandardVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView;
  *(v0 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000BBE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Command();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >> 62;
  if (!a1)
  {
    goto LABEL_24;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!v9)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

LABEL_24:
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(95);
    v29._countAndFlagsBits = 0xD000000000000054;
    v29._object = 0x800000010011A430;
    String.append(_:)(v29);
    if (a1)
    {
      if (v9)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v30 = 0;
    }

    v49._countAndFlagsBits = v30;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x746E656D656C6520;
    v32._object = 0xE900000000000073;
    String.append(_:)(v32);
    v34 = v50;
    v33 = v51;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006160(v35, qword_10018EE28);
    v36 = static os_log_type_t.error.getter();
    v50 = 0x6D6D6F43656B616DLL;
    v51 = 0xEF293A5F28646E61;
    v37 = sub_100006198(0x10uLL);
    if (v38)
    {
      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      String.append(_:)(*&v37);

      String.append(_:)(v49);
    }

    v39 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v39 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      v40._countAndFlagsBits = v34;
      v40._object = v33;
      String.append(_:)(v40);
      String.append(_:)(v49);
    }

    v42 = v50;
    v41 = v51;
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v36))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49._countAndFlagsBits = v44;
      *v43 = 136315138;
      v45 = sub_1000075D4(v42, v41, &v49._countAndFlagsBits);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v24, v36, "%s", v43, 0xCu);
      sub_100006114(v44);
    }

    else
    {
    }

    goto LABEL_39;
  }

  if (a1 >= 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v2 = a1;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_45;
    }

    v11 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v14._object = 0x800000010011A490;
    v14._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v14);
    v49._countAndFlagsBits = v11;
    sub_100093B6C(&qword_10018DB60);
    _print_unlocked<A, B>(_:_:)();
    v15._object = 0x800000010011A4B0;
    v15._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v15);
    v10 = v50;
    v2 = v51;
    if (qword_10018D798 == -1)
    {
LABEL_10:
      v16 = type metadata accessor for Logger();
      sub_100006160(v16, qword_10018EE28);
      v17 = static os_log_type_t.error.getter();
      v50 = 0x6D6D6F43656B616DLL;
      v51 = 0xEF293A5F28646E61;
      v18 = sub_100006198(0x10uLL);
      if (v19)
      {
        v49._countAndFlagsBits = 32;
        v49._object = 0xE100000000000000;
        String.append(_:)(*&v18);

        String.append(_:)(v49);
      }

      v20 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v20 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v49._countAndFlagsBits = 32;
        v49._object = 0xE100000000000000;
        v21._countAndFlagsBits = v10;
        v21._object = v2;
        String.append(_:)(v21);
        String.append(_:)(v49);
      }

      v23 = v50;
      v22 = v51;
      v24 = Logger.logObject.getter();
      if (os_log_type_enabled(v24, v17))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v48 = a2;
        v49._countAndFlagsBits = v26;
        v27 = v26;
        *v25 = 136315138;
        v28 = sub_1000075D4(v23, v22, &v49._countAndFlagsBits);

        *(v25 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v24, v17, "%s", v25, 0xCu);
        sub_100006114(v27);
        a2 = v48;

        swift_unknownObjectRelease();
LABEL_40:

        v13 = 1;
        return (*(v6 + 56))(a2, v13, 1, v5);
      }

      swift_unknownObjectRelease();
LABEL_39:

      goto LABEL_40;
    }

LABEL_45:
    swift_once();
    goto LABEL_10;
  }

  *v8 = v12;
  v8[8] = 1;
  (*(v6 + 104))(v8, enum case for Command.aceCommand(_:), v5);
  (*(v6 + 32))(a2, v8, v5);
  v13 = 0;
  return (*(v6 + 56))(a2, v13, 1, v5);
}

uint64_t getEnumTagSinglePayload for SiriUIFeaturesFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriUIFeaturesFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BC698()
{
  result = qword_10018EBD8;
  if (!qword_10018EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EBD8);
  }

  return result;
}

char *sub_1000BC860(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = type metadata accessor for UIPromptBackgroundView.Configuration();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion] = 0;
  v14 = &v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion];
  *v14 = 0;
  v14[1] = 0;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText] = 0;
  v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale] = 0;
  v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed] = 0;
  v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  type metadata accessor for EditMenuAwarePromptEntryView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint] = 0;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for SiriSharedUIDropletView()) init];
  v17 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
  *&v5[v17] = [objc_allocWithZone(UIButton) init];
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonWidth] = 0x4048000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spacing] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_animationDuration] = 0x3FE0000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstant] = 0x4042000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewDampingValue] = 0x3FE999999999999ALL;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewResponseValue] = 0x3FE199999999999ALL;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewXButtonDampingValue] = 0x3FE8F5C28F5C28F6;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewXButtonResponseValue] = 0x3FF0000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_buttonBlurRadius] = 0x401C000000000000;
  *&v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_shadowOpacity] = 0x3FC5C28F5C28F5C3;
  v18 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator;
  *&v5[v18] = [objc_allocWithZone(SiriSharedUISpinningActivityIndicator) init];
  v5[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency] = 0;
  v115.receiver = v5;
  v115.super_class = type metadata accessor for SystemAssistantPromptEntryView();
  v19 = objc_msgSendSuper2(&v115, "initWithFrame:", a2, a3, a4, a5);
  v20 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  v21 = *&v19[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
  sub_100093B6C(&qword_10018ED98);
  sub_100099D9C(&qword_10018EDA0, &qword_10018ED98);
  v22 = v19;
  v23 = v21;
  dispatch thunk of IntelligenceUI.PromptEntryView.visibleLineLimit.setter();

  v24 = *&v19[v20];
  v25 = IntelligenceUI.PromptEntryView.textView.getter();

  [v25 setKeyboardAppearance:13];
  v26 = *&v19[v20];
  sub_1000C49B8(&qword_10018EDA8, v27, type metadata accessor for SystemAssistantPromptEntryView);
  v28 = v22;
  v29 = v26;
  dispatch thunk of IntelligenceUI.PromptEntryView.delegate.setter();

  swift_unknownObjectWeakAssign();
  v30 = *&v19[v20];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();

  v31 = *&v19[v20];
  dispatch thunk of IntelligenceUI.PromptEntryView.trailingButtonActivatesDictationWhenEmpty.setter();

  v32 = *&v19[v20];
  dispatch thunk of IntelligenceUI.PromptEntryView.isTrailingButtonVisible.setter();

  v33 = *&v19[v20];
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonConfiguredAsToggle.setter();

  v34 = *&v19[v20];
  v35 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();

  static UIPromptBackgroundView.Configuration.intelligentWhenFocused.getter();
  dispatch thunk of UIPromptBackgroundView.configuration.setter();

  v36 = *&v19[v20];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 sharedPreferences];
  v40 = [v39 languageCode];

  if (v40)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = &v38[qword_10018ECE8];
  *v44 = v41;
  v44[1] = v43;

  if ([v38 isFirstResponder])
  {
    [v38 resignFirstResponder];
    [v38 becomeFirstResponder];
  }

  v45 = v28;
  v46 = *&v19[v20];
  v47 = v45;
  [v47 addSubview:v46];
  v48 = *&v19[v20];
  v49 = IntelligenceUI.PromptEntryView.textView.getter();

  v50 = [v49 inputAssistantItem];
  v114 = a1;
  [v50 _setDictationReplacementAction:a1];

  [*&v19[v20] setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = objc_opt_self();
  sub_100093B6C(&qword_10018E930);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1000F7EE0;
  v53 = [v47 topAnchor];

  v54 = [*&v19[v20] topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v52 + 32) = v55;
  v56 = [v47 leftAnchor];

  v57 = [*&v19[v20] leftAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v52 + 40) = v58;
  v59 = [v47 rightAnchor];

  v60 = [*&v19[v20] rightAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v52 + 48) = v61;
  sub_10000A238(0, &qword_10018E938);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v113 = v51;
  [v51 activateConstraints:isa];

  v63 = [*&v19[v20] widthAnchor];
  v64 = [v47 widthAnchor];

  v65 = [objc_opt_self() mainScreen];
  [v65 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v116.origin.x = v67;
  v116.origin.y = v69;
  v116.size.width = v71;
  v116.size.height = v73;
  v74 = [v63 constraintEqualToAnchor:v64 constant:-(CGRectGetWidth(v116) + -20.0 + -48.0)];

  v75 = *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint];
  *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint] = v74;

  v76 = [v47 bottomAnchor];
  v77 = [*&v19[v20] bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  v79 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint;
  v80 = *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint];
  *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint] = v78;

  v81 = *&v47[v79];
  if (v81)
  {
    [v81 setActive:1];
  }

  v112 = [objc_opt_self() defaultCenter];
  [v112 addObserver:v47 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];
  v82 = *&v19[v20];
  v83 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  v84 = [v83 superview];
  if (v84)
  {
    [v84 addSubview:*&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator]];
  }

  v85 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator;
  [*&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1000F7EF0;
  v87 = [*&v47[v85] leadingAnchor];
  v88 = *&v19[v20];
  v89 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  v90 = [v89 leadingAnchor];
  v91 = [v87 constraintEqualToAnchor:v90 constant:-5.0];

  *(v86 + 32) = v91;
  v92 = [*&v47[v85] topAnchor];
  v93 = *&v19[v20];
  v94 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  v95 = [v94 topAnchor];
  v96 = [v92 constraintEqualToAnchor:v95 constant:-5.0];

  *(v86 + 40) = v96;
  v97 = [*&v47[v85] heightAnchor];
  v98 = *&v19[v20];
  v99 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  v100 = [v99 heightAnchor];
  v101 = [v97 constraintEqualToAnchor:v100 constant:10.0];

  *(v86 + 48) = v101;
  v102 = [*&v47[v85] widthAnchor];
  v103 = *&v19[v20];
  v104 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  v105 = [v104 widthAnchor];
  v106 = [v102 constraintEqualToAnchor:v105 constant:10.0];

  *(v86 + 56) = v106;
  v107 = Array._bridgeToObjectiveC()().super.isa;

  [v113 activateConstraints:v107];

  [*&v47[v85] setAlpha:0.0];
  v108 = *&v19[v20];
  v109 = IntelligenceUI.PromptEntryView.trailingButton.getter();

  [v109 setEnabled:1];
  v110 = *&v19[v20];
  dispatch thunk of IntelligenceUI.PromptEntryView.isTrailingButtonVisible.setter();

  return v47;
}

void sub_1000BD624(uint64_t a1, char a2)
{
  v3 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  [v3 setEnabled:(a2 & 1) == 0];

  v4 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  v6 = v4;
  v5 = 1.0;
  if (a2)
  {
    v5 = 0.0;
  }

  [v4 setAlpha:v5];
}

uint64_t sub_1000BD6B8(uint64_t a1, char a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A238(0, &qword_10018EAE0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_1000C4694;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007C78;
  aBlock[3] = &unk_10016A010;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000C49B8(&qword_10018EF50, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100093B6C(&unk_10018EAF0);
  sub_100099D9C(&qword_10018EF60, &unk_10018EAF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_1000BD9B8(char a1)
{
  if (a1)
  {
    v1 = IntelligenceUI.PromptEntryView.textView.getter();
    v2 = [v1 canResignFirstResponder];

    if (v2)
    {
      v3 = IntelligenceUI.PromptEntryView.textView.getter();
      [v3 resignFirstResponder];
    }
  }
}

void sub_1000BDA50()
{
  v1 = v0;
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration();
  __chkstk_darwin(v2 - 8);
  if (v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed] == 1)
  {
    v3 = sub_1000C328C();
    v4 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
    dispatch thunk of UIPromptBackgroundView.configuration.getter();
    dispatch thunk of UIPromptBackgroundView.configuration.setter();

    v5 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint];
    if (v5)
    {
      [v5 setConstant:36.0];
    }

    v6 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint];
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 mainScreen];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      [v8 setConstant:-(CGRectGetWidth(v23) + -20.0 + -48.0)];
    }

    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    aBlock[4] = sub_1000C4920;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007C78;
    aBlock[3] = &unk_10016A538;
    v20 = _Block_copy(aBlock);
    v21 = v1;

    [v18 animateWithDuration:v20 animations:0.5];
    _Block_release(v20);
  }
}

void sub_1000BDDE8(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for UIPromptBackgroundView.Configuration();
  __chkstk_darwin(v5 - 8);
  if (v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed] != v4)
  {
    v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed] = v4;
    if (a1)
    {
      v6 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
      [v2 addSubview:*&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView]];
      v7 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
      v8 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      [v8 removeFromSuperview];

      v9 = *&v2[v6];
      v10 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      [v9 addSubview:v10];

      v139 = v7;
      v11 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      v12 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView];
      *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView] = v11;

      sub_1000C1290();
      v13 = String._bridgeToObjectiveC()();
      v14 = [objc_opt_self() systemImageNamed:v13];

      v15 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
      v16 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton];
      v17 = objc_opt_self();
      v18 = v16;
      v19 = [v17 labelColor];
      [v18 setTintColor:v19];

      v20 = objc_opt_self();
      v21 = [v20 configurationWithTextStyle:UIFontTextStyleSubheadline];
      v22 = [v20 configurationWithWeight:5];
      v23 = [v20 configurationWithScale:3];
      v136 = v22;
      v137 = v21;
      v24 = [v21 configurationByApplyingConfiguration:v22];
      v135 = v23;
      v25 = [v24 configurationByApplyingConfiguration:v23];

      v26 = sub_1000C328C();
      v27 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView];
      *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView] = v26;
      v28 = v26;

      v29 = *&v2[v6];
      v30 = v28;
      [v29 addSubview:v30];
      v138 = v14;
      v134 = [v14 imageByApplyingSymbolConfiguration:v25];
      [*&v2[v15] setImage:? forState:?];
      v31 = [*&v2[v15] layer];
      [v31 setCornerRadius:24.0];

      [*&v2[v15] setClipsToBounds:1];
      [*&v2[v15] setTranslatesAutoresizingMaskIntoConstraints:0];
      [*&v2[v15] addTarget:v2 action:"closeButtonTapped" forControlEvents:64];
      [v2 addSubview:*&v2[v15]];
      v32 = [*&v2[v15] imageView];
      if (v32)
      {
        v33 = v32;
        [*&v2[v15] bringSubviewToFront:v32];
      }

      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

      v34 = objc_opt_self();
      sub_100093B6C(&qword_10018E930);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1000F7EF0;
      v36 = [v30 leadingAnchor];

      v37 = [*&v2[v15] leadingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];

      *(v35 + 32) = v38;
      v39 = [v30 trailingAnchor];

      v40 = [*&v2[v15] trailingAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];

      *(v35 + 40) = v41;
      v42 = [v30 topAnchor];

      v43 = [*&v2[v15] topAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v35 + 48) = v44;
      v45 = [v30 bottomAnchor];

      v46 = [*&v2[v15] bottomAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v35 + 56) = v47;
      sub_10000A238(0, &qword_10018E938);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v133 = v34;
      [v34 activateConstraints:isa];

      v49 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      v50 = sub_1000C328C();
      dispatch thunk of UIPromptBackgroundView.configuration.getter();

      dispatch thunk of UIPromptBackgroundView.configuration.setter();
      v51 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      dispatch thunk of UIPromptBackgroundView.updateFocus(state:)();

      v52 = [*&v2[v15] trailingAnchor];
      v53 = [v2 trailingAnchor];
      v54 = [v52 constraintEqualToAnchor:v53];

      v55 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint;
      v56 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint];
      *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint] = v54;
      v57 = v54;

      if (v57)
      {
        v58 = [objc_opt_self() mainScreen];
        [v58 bounds];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v146.origin.x = v60;
        v146.origin.y = v62;
        v146.size.width = v64;
        v146.size.height = v66;
        [v57 setConstant:-(CGRectGetWidth(v146) + -20.0 + -48.0)];
      }

      [*&v2[v55] setActive:1];
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1000F7C00;
      v68 = [v2 widthAnchor];
      v132 = objc_opt_self();
      v69 = [v132 mainScreen];
      [v69 bounds];
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;

      v147.origin.x = v71;
      v147.origin.y = v73;
      v147.size.width = v75;
      v147.size.height = v77;
      v78 = [v68 constraintEqualToConstant:CGRectGetWidth(v147) + -20.0];

      *(v67 + 32) = v78;
      v79 = [*&v2[v15] widthAnchor];
      v80 = [v79 constraintEqualToConstant:48.0];

      *(v67 + 40) = v80;
      v81 = [*&v2[v15] heightAnchor];
      v82 = [v81 constraintEqualToConstant:48.0];

      *(v67 + 48) = v82;
      v83 = [*&v2[v15] centerYAnchor];
      v84 = [v139 centerYAnchor];
      v85 = [v83 constraintEqualToAnchor:v84];

      *(v67 + 56) = v85;
      v86 = [v139 leadingAnchor];
      v87 = [v2 leadingAnchor];
      v88 = [v86 constraintEqualToAnchor:v87];

      *(v67 + 64) = v88;
      v89 = [v139 widthAnchor];
      v90 = [v89 constraintEqualToConstant:48.0];

      *(v67 + 72) = v90;
      v91 = Array._bridgeToObjectiveC()().super.isa;

      [v133 activateConstraints:v91];

      v92 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint;
      [*&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint] setActive:1];
      v93 = *&v2[v92];
      if (v93)
      {
        v94 = v93;
        v95 = [v132 mainScreen];
        [v95 bounds];
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;

        v148.origin.x = v97;
        v148.origin.y = v99;
        v148.size.width = v101;
        v148.size.height = v103;
        [v94 setConstant:-(CGRectGetWidth(v148) + -20.0 + -48.0)];
      }

      [v2 layoutIfNeeded];
      sub_1000BF0A0();

      v104 = v134;
    }

    else
    {
      v105 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView];
      if (v105)
      {
        v106 = [v105 layer];
        [v106 setShadowOpacity:0.0];
      }

      v107 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView];
      if (v107)
      {
        v108 = [v107 layer];
        [v108 setShadowOpacity:0.0];
      }

      v109 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
      [v109 alpha];
      if (v110 == 0.0)
      {
        [v109 setAlpha:1.0];
        [v2 layoutIfNeeded];
      }

      v111 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint];
      if (v111)
      {
        [v111 setConstant:0.0];
      }

      v112 = *&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint];
      if (v112)
      {
        [v112 setConstant:0.0];
      }

      v113 = IntelligenceUI.PromptEntryView.textView.getter();
      [v113 setAttributedPlaceholder:0];

      v114 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      static UIPromptBackgroundView.Configuration.intelligent.getter();
      dispatch thunk of UIPromptBackgroundView.configuration.setter();

      v115 = String._bridgeToObjectiveC()();
      v116 = [objc_opt_self() animationWithKeyPath:v115];

      v25 = v116;
      [v25 setDuration:0.125];
      v117 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
      [v25 setTimingFunction:v117];

      v118 = Double._bridgeToObjectiveC()().super.super.isa;
      [v25 setFromValue:v118];

      v119 = Double._bridgeToObjectiveC()().super.super.isa;
      [v25 setToValue:v119];

      v120 = [*&v2[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] imageView];
      if (v120)
      {
        v121 = v120;
        v122 = [v120 layer];

        v123 = [v25 keyPath];
        [v122 addAnimation:v25 forKey:v123];
      }

      v124 = objc_opt_self();
      v125 = swift_allocObject();
      *(v125 + 16) = v2;
      v144 = sub_1000C48B0;
      v145 = v125;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v142 = sub_100007C78;
      v143 = &unk_10016A498;
      v126 = _Block_copy(&aBlock);
      v127 = v2;

      [v124 animateWithDuration:v126 animations:0.125];
      _Block_release(v126);
      v128 = [objc_opt_self() behaviorWithDampingRatio:0.8 response:0.55];
      v129 = swift_allocObject();
      *(v129 + 16) = v127;
      v144 = sub_1000C4A60;
      v145 = v129;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v142 = sub_100007C78;
      v143 = &unk_10016A4E8;
      v130 = _Block_copy(&aBlock);
      v131 = v127;
      v30 = v128;

      [v124 _animateUsingSpringBehavior:v30 tracking:0 animations:v130 completion:0];
      _Block_release(v130);
      v104 = v30;
    }
  }
}

id sub_1000BED84()
{
  v1 = v0;
  v2 = sub_100093B6C(&qword_10018ED78);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
  v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted] = 0;
  v8 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  type metadata accessor for IntelligenceUI.PromptEntryView();
  static IntelligenceUI.PromptEntryView.defaultLeadingButtonConfiguration.getter();
  v9 = type metadata accessor for UIButton.Configuration();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  UIButton.configuration.setter();

  v10 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v10 setNeedsUpdateConfiguration];

  v11 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint;
  [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint] setActive:0];
  v12 = *&v1[v11];
  if (v12)
  {
    [v12 setConstant:0.0];
  }

  v13 = *&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint];
  if (v13)
  {
    [v13 setConstant:0.0];
  }

  [v7 setAlpha:0.0];
  [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView] setAlpha:1.0];
  [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] setAlpha:0.0];
  v14 = *&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView];
  if (v14)
  {
    [v14 setAlpha:0.0];
  }

  return [v1 layoutIfNeeded];
}

void sub_1000BF0A0()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  if (v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale] == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
    v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted] = 0;
  }

  v4 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
  [v0 sendSubviewToBack:*&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView]];
  v5 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView;
  if (*&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView])
  {
    [*&v0[v4] sendSubviewToBack:?];
  }

  sub_1000BFC40(1.0);
  v6 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint];
  if (v6)
  {
    [v6 setConstant:-58.0];
  }

  [*&v0[v4] setAlpha:0.0];
  v7 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
  [*&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] setAlpha:0.0];
  [*&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView] setAlpha:0.0];
  v8 = *&v0[v5];
  if (v8)
  {
    [v8 setAlpha:0.0];
  }

  v9 = IntelligenceUI.PromptEntryView.textView.getter();
  [v9 setAlpha:0.0];

  v10 = [*&v0[v7] imageView];
  if (v10)
  {
    v11 = v10;
    [v10 setAlpha:0.0];
  }

  v12 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v12 setAlpha:0.0];

  v13 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v14 = String._bridgeToObjectiveC()();
  [v13 setName:v14];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v13 setValue:isa forKey:kCAFilterInputRadius];

  v16 = [*&v0[v7] imageView];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 layer];

    sub_100093B6C(&qword_10018E320);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000F7BD0;
    *(v19 + 56) = sub_10000A238(0, &qword_10018ED80);
    *(v19 + 32) = v13;
    v20 = v13;
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setFilters:v21];
  }

  v22 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  v23 = [v22 layer];

  sub_100093B6C(&qword_10018E320);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000F7BD0;
  *(v24 + 56) = sub_10000A238(0, &qword_10018ED80);
  *(v24 + 32) = v13;
  v25 = v13;
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setFilters:v26];

  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() animationWithKeyPath:v27];

  v29 = v28;
  [v29 setDuration:0.5];
  v30 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  [v29 setTimingFunction:v30];

  v31 = Double._bridgeToObjectiveC()().super.super.isa;
  [v29 setFromValue:v31];

  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  [v29 setToValue:v32];

  v33 = [*&v0[v7] imageView];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 layer];

    v36 = [v29 keyPath];
    [v35 addAnimation:v29 forKey:v36];
  }

  v37 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  v38 = [v37 layer];

  v39 = [v29 keyPath];
  [v38 addAnimation:v29 forKey:v39];

  v40 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  v61 = sub_1000C47E8;
  v62 = v41;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100007C78;
  v60 = &unk_10016A2B8;
  v42 = _Block_copy(&aBlock);
  v43 = v1;

  [v40 animateWithDuration:v42 animations:0.5];
  _Block_release(v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  v61 = sub_1000C47F0;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100007C78;
  v60 = &unk_10016A308;
  v45 = _Block_copy(&aBlock);
  v46 = v43;

  [v40 animateWithDuration:v45 animations:1.0];
  _Block_release(v45);
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v61 = sub_1000C4850;
  v62 = v47;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100007C78;
  v60 = &unk_10016A358;
  v48 = _Block_copy(&aBlock);
  v49 = v46;

  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  v61 = sub_1000C4878;
  v62 = v50;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100007BC4;
  v60 = &unk_10016A3A8;
  v51 = _Block_copy(&aBlock);
  v52 = v49;

  [v40 animateWithDuration:0 delay:v48 options:v51 animations:0.25 completion:0.25];
  _Block_release(v51);
  _Block_release(v48);
  [*&v52[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint] setConstant:0.0];
  v53 = [objc_opt_self() behaviorWithDampingRatio:0.78 response:1.0];
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v61 = sub_1000C4880;
  v62 = v54;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100007C78;
  v60 = &unk_10016A3F8;
  v55 = _Block_copy(&aBlock);
  v56 = v52;

  [v40 _animateUsingSpringBehavior:v53 tracking:0 animations:v55 completion:0];
  _Block_release(v55);
}

id sub_1000BFA88(char *a1)
{
  [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView] setAlpha:1.0];
  v2 = [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] imageView];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha:1.0];
  }

  v4 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v4 setAlpha:1.0];

  return [a1 layoutIfNeeded];
}

void sub_1000BFB54(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_1000C4890;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007C78;
  v7[3] = &unk_10016A448;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

void sub_1000BFC40(float a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
  v44 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
  v5 = *&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView];
  v6 = dispatch thunk of SiriSharedUIDropletView.dropletLayer()();

  dispatch thunk of SiriSharedUIDropletLayer.prepareAlphaCurveForMitosis()();
  v48 = objc_opt_self();
  [v48 begin];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  aBlock[4] = sub_1000C47DC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007C78;
  aBlock[3] = &unk_10016A268;
  v8 = _Block_copy(aBlock);
  v45 = v2;
  v47 = v2;

  [v48 setCompletionBlock:v8];
  _Block_release(v8);
  v9 = String._bridgeToObjectiveC()();
  v46 = objc_opt_self();
  v10 = [v46 animationWithKeyPath:v9];

  sub_100093B6C(&qword_10018E320);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000F7F00;
  type metadata accessor for SiriSharedUIDropletLayer();
  v12 = static SiriSharedUIDropletLayer.dropletGaussianInitialBlurRadius.getter();
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 32) = v12;
  v13 = static SiriSharedUIDropletLayer.dropletGaussianMitosisBlurRadius.getter();
  *(v11 + 88) = &type metadata for Int;
  *(v11 + 64) = v13;
  v14 = static SiriSharedUIDropletLayer.dropletGaussianMitosisBlurRadius.getter();
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 96) = v14;
  v15 = static SiriSharedUIDropletLayer.dropletGaussianInitialBlurRadius.getter();
  *(v11 + 152) = &type metadata for Int;
  *(v11 + 128) = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setValues:isa];

  sub_100093B6C(&qword_10018E930);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000F7EF0;
  sub_10000A238(0, &qword_10018ED88);
  *(v17 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v17 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v17 + 48) = NSNumber.init(floatLiteral:)(0.775);
  *(v17 + 56) = NSNumber.init(floatLiteral:)(1.0);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setKeyTimes:v18];

  v19 = a1;
  v20 = v10;
  [v20 setDuration:v19];
  v21 = objc_opt_self();
  v22 = [v21 functionWithName:kCAMediaTimingFunctionDefault];
  [v20 setTimingFunction:v22];

  v23 = *&v2[v4];
  v24 = dispatch thunk of SiriSharedUIDropletView.dropletLayer()();

  v25 = [v20 keyPath];
  [v24 addAnimation:v20 forKey:v25];

  v26 = String._bridgeToObjectiveC()();
  v27 = [v46 animationWithKeyPath:v26];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000F7F00;
  v29 = static SiriSharedUIDropletLayer.dropletAlphaCurve.getter();
  v30 = sub_100093B6C(&qword_10018ED90);
  *(v28 + 32) = v29;
  *(v28 + 56) = v30;
  *(v28 + 64) = &off_1001690B8;
  *(v28 + 120) = v30;
  *(v28 + 88) = v30;
  *(v28 + 96) = &off_1001690F8;
  v31 = static SiriSharedUIDropletLayer.dropletAlphaCurve.getter();
  *(v28 + 152) = v30;
  *(v28 + 128) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setValues:v32];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000F7EF0;
  *(v33 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v33 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v33 + 48) = NSNumber.init(floatLiteral:)(0.775);
  *(v33 + 56) = NSNumber.init(floatLiteral:)(1.0);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setKeyTimes:v34];

  v35 = v27;
  [v35 setDuration:v19];
  v36 = [v21 functionWithName:kCAMediaTimingFunctionDefault];
  [v35 setTimingFunction:v36];

  v37 = *&v45[v44];
  v38 = dispatch thunk of SiriSharedUIDropletView.dropletLayer()();

  v39 = [v35 keyPath];
  [v38 addAnimation:v35 forKey:v39];

  [v48 commit];
  v40 = *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView];
  if (v40)
  {
    v41 = [v40 layer];
    [v41 setShadowOpacity:0.0];
  }

  v42 = *&v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView];
  if (v42)
  {
    v43 = [v42 layer];
    [v43 setShadowOpacity:0.0];
  }
}

void sub_1000C02E8(uint64_t a1, float a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView);
  v5 = dispatch thunk of SiriSharedUIDropletView.dropletLayer()();

  dispatch thunk of SiriSharedUIDropletLayer.setupDropletEffect()();
  v6 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView;
  v7 = *(a1 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView);
  if (v7)
  {
    v8 = [v7 layer];
    [v8 setShadowPathIsBounds:1];
  }

  v9 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView;
  v10 = *(a1 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView);
  if (v10)
  {
    v11 = [v10 layer];
    [v11 setShadowPathIsBounds:1];
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() animationWithKeyPath:v12];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v13 setFromValue:isa];

  v15 = Double._bridgeToObjectiveC()().super.super.isa;
  [v13 setToValue:v15];

  v29 = v13;
  [v29 setDuration:(a2 * 0.5)];
  v16 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v29 setTimingFunction:v16];

  v17 = *(a1 + v6);
  if (v17)
  {
    v18 = [v17 layer];
    v19 = [v29 keyPath];
    [v18 addAnimation:v29 forKey:v19];
  }

  v20 = *(a1 + v9);
  if (v20)
  {
    v21 = [v20 layer];
    v22 = [v29 keyPath];
    [v21 addAnimation:v29 forKey:v22];
  }

  v23 = *(a1 + v6);
  if (v23)
  {
    v24 = [v23 layer];
    LODWORD(v25) = 1043207291;
    [v24 setShadowOpacity:v25];
  }

  v26 = *(a1 + v9);
  if (v26)
  {
    v27 = [v26 layer];
    LODWORD(v28) = 1043207291;
    [v27 setShadowOpacity:v28];
  }
}

void sub_1000C0610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v4 setValue:isa forKey:kCAFilterInputRadius];

  v7 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
  v8 = [*&v3[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] imageView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    sub_100093B6C(&qword_10018E320);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F7BD0;
    *(v11 + 56) = sub_10000A238(0, &qword_10018ED80);
    *(v11 + 32) = v4;
    v12 = v4;
    v13 = Array._bridgeToObjectiveC()().super.isa;

    [v10 setFilters:v13];
  }

  v14 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  v15 = [v14 layer];

  sub_100093B6C(&qword_10018E320);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000F7BD0;
  *(v16 + 56) = sub_10000A238(0, &qword_10018ED80);
  *(v16 + 32) = v4;
  v17 = v4;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setFilters:v18];

  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() animationWithKeyPath:v19];

  v21 = v20;
  [v21 setDuration:0.5];
  v22 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
  [v21 setTimingFunction:v22];

  v23 = Double._bridgeToObjectiveC()().super.super.isa;
  [v21 setFromValue:v23];

  v24 = Double._bridgeToObjectiveC()().super.super.isa;
  [v21 setToValue:v24];

  v25 = [*&v3[v7] imageView];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 layer];

    v28 = [v21 keyPath];
    [v27 addAnimation:v21 forKey:v28];
  }

  v29 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  v30 = [v29 layer];

  v31 = [v21 keyPath];
  [v30 addAnimation:v21 forKey:v31];

  v32 = *&v3[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint];
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 mainScreen];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v58.origin.x = v37;
    v58.origin.y = v39;
    v58.size.width = v41;
    v58.size.height = v43;
    [v34 setConstant:-(CGRectGetWidth(v58) + -20.0 + -48.0)];
  }

  v44 = objc_opt_self();
  v45 = swift_allocObject();
  *(v45 + 16) = v3;
  v56 = sub_1000C47AC;
  v57 = v45;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100007C78;
  v55 = &unk_10016A1C8;
  v46 = _Block_copy(&aBlock);
  v47 = v3;

  v48 = swift_allocObject();
  *(v48 + 16) = a1;
  *(v48 + 24) = a2;
  v56 = sub_1000C47B4;
  v57 = v48;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100007BC4;
  v55 = &unk_10016A218;
  v49 = _Block_copy(&aBlock);

  [v44 animateWithDuration:v46 animations:v49 completion:0.5];

  _Block_release(v49);
  _Block_release(v46);
  v47[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed] = 0;
}

id sub_1000C0C50(char *a1)
{
  v2 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
  [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] setAlpha:0.0];
  [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView] setAlpha:0.0];
  [*&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView] setAlpha:0.0];
  v3 = [*&a1[v2] imageView];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:0.0];
  }

  v5 = *&a1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView];
  if (v5)
  {
    [v5 setAlpha:0.0];
  }

  return [a1 layoutIfNeeded];
}

uint64_t sub_1000C106C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000C1290();
  v2 = [objc_opt_self() modelName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100093B6C(&qword_10018ED50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000F7BD0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000C4640();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  String.init(format:_:)();

  return dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
}

uint64_t sub_1000C1290()
{
  v1 = v0;
  v2 = sub_100093B6C(&qword_10018ED78);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = objc_opt_self();
  v12 = [v11 modelName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v11 symbolName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale) == 1 && (*(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted) & 1) != 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v28 = String.init(localized:table:bundle:locale:comment:)();
    sub_100093B6C(&qword_10018ED50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000F7BD0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000C4640();
    *(v16 + 32) = v29;
    *(v16 + 40) = v14;
    String.init(format:_:)();
  }

  else
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() _systemImageNamed:v17];

  static UIButton.Configuration.borderless()();
  v19 = v18;
  UIButton.Configuration.image.setter();
  v20 = [v1 traitCollection];
  v21 = [v20 userInterfaceStyle];

  v22 = objc_opt_self();
  v23 = &selRef_blackColor;
  if (v21 != 1)
  {
    v23 = &selRef_whiteColor;
  }

  v24 = [v22 *v23];
  UIButton.Configuration.baseForegroundColor.setter();
  v25 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  UIButton.configuration.setter();

  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonConfiguredAsToggle.setter();
  v26 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v26 setNeedsUpdateConfiguration];

  return (*(v6 + 8))(v8, v5);
}

void *sub_1000C17B4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SystemAssistantPromptEntryView();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView];
  [v0 bounds];
  [v1 setFrame:?];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result promptEntryViewDidLayoutSubviews:v0];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000C18FC()
{
  v1 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency;
  if (v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency])
  {
    [*&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator] showSpinner];
    v2 = objc_opt_self();
    v3 = SiriSharedUIPromptEntryLatencyAppearDuration;
    v4 = SiriSharedUIPromptEntryLatencyAppearDuration * 0.5;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = 0;
    v21 = sub_1000C4A58;
    v22 = v5;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100007C78;
    v20 = &unk_10016A588;
    v6 = _Block_copy(&v17);
    v7 = v0;

    [v2 animateWithDuration:0 delay:v6 options:0 animations:v4 completion:0.0];
    _Block_release(v6);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v21 = sub_1000C4A5C;
    v22 = v8;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100007C78;
    v20 = &unk_10016A5D8;
    v9 = _Block_copy(&v17);
    v10 = v7;

    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = v10;
    v21 = sub_1000C4AC4;
    v22 = v11;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100007BC4;
    v20 = &unk_10016A628;
    v12 = _Block_copy(&v17);
    v13 = v10;

    [v2 animateWithDuration:0 delay:v9 options:v12 animations:v3 completion:0.0];
    _Block_release(v12);
    _Block_release(v9);
    v0[v1] = 0;
  }

  result = UIApp;
  if (UIApp)
  {
    [UIApp finishedIPTest:SASPPTTestNameSiriBringupToTyping];
    v15 = IntelligenceUI.PromptEntryView.textView.getter();
    v16 = [v15 resignFirstResponder];

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C1E34()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
  v3 = IntelligenceUI.PromptEntryView.textView.getter();
  v4 = [v3 text];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = IntelligenceUI.PromptEntryView.textView.getter();
      v10 = String._bridgeToObjectiveC()();
      [v9 setText:v10];

      [v2 invalidateIntrinsicContentSize];
      sub_1000C34CC();
      v11 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency;
      if (v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency] == 1)
      {
        [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator] showSpinner];
        v12 = objc_opt_self();
        v13 = SiriSharedUIPromptEntryLatencyAppearDuration;
        v14 = SiriSharedUIPromptEntryLatencyAppearDuration * 0.5;
        v15 = swift_allocObject();
        *(v15 + 16) = v1;
        *(v15 + 24) = 0;
        v28 = sub_1000C4A58;
        v29 = v15;
        v24 = _NSConcreteStackBlock;
        v25 = 1107296256;
        v26 = sub_100007C78;
        v27 = &unk_10016A0D8;
        v16 = _Block_copy(&v24);
        v17 = v1;

        [v12 animateWithDuration:0 delay:v16 options:0 animations:v14 completion:0.0];
        _Block_release(v16);
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = 0;
        v28 = sub_1000C4A5C;
        v29 = v18;
        v24 = _NSConcreteStackBlock;
        v25 = 1107296256;
        v26 = sub_100007C78;
        v27 = &unk_10016A128;
        v19 = _Block_copy(&v24);
        v20 = v17;

        v21 = swift_allocObject();
        *(v21 + 16) = 0;
        *(v21 + 24) = v20;
        v28 = sub_1000C4AC4;
        v29 = v21;
        v24 = _NSConcreteStackBlock;
        v25 = 1107296256;
        v26 = sub_100007BC4;
        v27 = &unk_10016A178;
        v22 = _Block_copy(&v24);
        v23 = v20;

        [v12 animateWithDuration:0 delay:v19 options:v22 animations:v13 completion:0.0];
        _Block_release(v22);
        _Block_release(v19);
        v1[v11] = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1000C21E8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000C2250(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 >= 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = *(a1 + 16);
    }

    v29 = &_swiftEmptyArrayStorage;
    v5 = 0;
    v6 =  + 40;
    v26 = v6;
LABEL_6:
    v7 = (v6 + 16 * v5);
    while (v4 != v5)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_33;
      }

      v27 = v5 + 1;
      v12 = *(v7 - 1);
      v2 = *v7;
      if ((*v7 & 0x2000000000000000) != 0)
      {
        v1 = HIBYTE(*v7) & 0xF;
      }

      else
      {
        v1 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v1)
      {
        String.subscript.getter();
        v8 = Character.uppercased()();

        sub_1000C46A8(1, v12, v2);
        v1 = v9;

        v28 = v8;
        sub_1000C4758();
        String.append<A>(contentsOf:)();
      }

      else
      {
      }

      v10 = String._bridgeToObjectiveC()();

      v11 = [objc_opt_self() textSuggestionWithInputText:v10];

      ++v5;
      v7 += 2;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v27;
        v6 = v26;
        goto LABEL_6;
      }
    }

    v7 = 0xD000000000000024;
    dispatch thunk of IntelligenceUI.PromptEntryView.displaySuggestions(suggestions:)();

    v2 = 0x800000010011AC50;
    _StringGuts.grow(_:)(41);

    v13._countAndFlagsBits = ArraySlice.description.getter();
    String.append(_:)(v13);

    v4 = 0xD000000000000027;
    v1 = 0x800000010011AC80;
    if (qword_10018D798 == -1)
    {
      goto LABEL_21;
    }

LABEL_34:
    swift_once();
LABEL_21:
    v14 = type metadata accessor for Logger();
    sub_100006160(v14, qword_10018EE28);
    v15 = static os_log_type_t.info.getter();
    v16 = sub_100006198(0);
    if (v17)
    {
      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      String.append(_:)(*&v16);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
    }

    v19 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v19 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      v20._countAndFlagsBits = v4;
      v20._object = v1;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
    }

    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v15))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28._countAndFlagsBits = v24;
      *v23 = 136315138;
      v25 = sub_1000075D4(v7, v2, &v28._countAndFlagsBits);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v15, "%s", v23, 0xCu);
      sub_100006114(v24);
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for EditMenuAwarePromptEntryView()
{
  result = qword_10018ED00;
  if (!qword_10018ED00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000C29AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result promptEntryViewDidEndEditing:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

UIMenu sub_1000C2A10()
{
  sub_10000A238(0, &qword_10018ED60);
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v3, 0, 0xFFFFFFFFFFFFFFFFLL, &_swiftEmptyArrayStorage, v2);
}

uint64_t sub_1000C2A80@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1000C2AF0(int a1, id a2)
{
  v2 = [a2 inputText];
  if (v2)
  {
    v4 = v2;
    v3 = IntelligenceUI.PromptEntryView.textView.getter();
    [v3 insertText:v4];
  }
}

id sub_1000C2B80()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void *sub_1000C2BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result textViewWillPresentEditMenu:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000C2C30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      [v5 textViewDidDismissEditMenu:a2];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000C2CC0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a3;
  v12[4] = sub_1000C46A0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100007C78;
  v12[3] = &unk_10016A088;
  v9 = _Block_copy(v12);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a1;

  [a4 addCompletion:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();
}

id sub_1000C2DF4(void *a1)
{
  v1 = a1;
  v2 = sub_1000C2E38();

  return v2;
}

id sub_1000C2E38()
{
  v1 = *&v0[qword_10018ECE8 + 8];
  if (v1)
  {
    v2 = *&v0[qword_10018ECE8];
    v3 = objc_opt_self();

    v4 = [v3 activeInputModes];
    sub_10000A238(0, &qword_10018ED68);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v0;
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 primaryLanguage];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v13 == v2 && v1 == v15)
          {

            return v9;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {

            return v9;
          }
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    v0 = v19;
  }

  v20.receiver = v0;
  v20.super_class = type metadata accessor for EditMenuAwarePromptEntryView();
  return objc_msgSendSuper2(&v20, "textInputMode");
}

id sub_1000C3064(char *a1, double a2, double a3, double a4, double a5)
{
  swift_unknownObjectWeakInit();
  v10 = &a1[qword_10018ECE8];
  v11 = type metadata accessor for EditMenuAwarePromptEntryView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = a1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1000C30FC(char *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v5 = &a1[qword_10018ECE8];
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = a1;
  v9.super_class = type metadata accessor for EditMenuAwarePromptEntryView();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1000C319C()
{
  sub_100007AC0(v0 + qword_10018ECE0);
}

id sub_1000C31FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000C3234(uint64_t a1)
{
  sub_100007AC0(a1 + qword_10018ECE0);
}

uint64_t sub_1000C328C()
{
  v0 = type metadata accessor for UIPromptBackgroundView.CornerRadius();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  __chkstk_darwin(v9);
  static UIPromptBackgroundView.Configuration.default.getter();
  v12 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView());
  v13 = UIPromptBackgroundView.init(configuration:)();
  static UIPromptBackgroundView.Configuration.intelligentWhenFocused.getter();
  *v3 = 0x4038000000000000;
  (*(v1 + 104))(v3, enum case for UIPromptBackgroundView.CornerRadius.constant(_:), v0);
  UIPromptBackgroundView.Configuration.cornerRadius(_:)();
  (*(v1 + 8))(v3, v0);
  v14 = *(v5 + 8);
  v14(v8, v4);
  UIPromptBackgroundView.Configuration.shadowOpacity(_:)();
  v14(v11, v4);
  dispatch thunk of UIPromptBackgroundView.configuration.setter();
  return v13;
}

void sub_1000C34CC()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = [v4 text];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v20[0] = v6;
    v20[1] = v8;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000C45D0();
    v9 = StringProtocol.trimmingCharacters(in:)();
    v11 = v10;
    (*(v1 + 8))(v3, v0);

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12 != 0;
    v14 = IntelligenceUI.PromptEntryView.trailingButton.getter();
    [v14 setEnabled:v13];

    dispatch thunk of IntelligenceUI.PromptEntryView.isTrailingButtonVisible.setter();
    v15 = IntelligenceUI.PromptEntryView.textView.getter();
    v16 = [v15 text];

    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = String._bridgeToObjectiveC()();

      [v18 didChangeText:v19];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    dispatch thunk of IntelligenceUI.PromptEntryView.displaySuggestions(suggestions:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C3728()
{
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion) = 0;
  v1 = (v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInTamaleAndCollapsed) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  type metadata accessor for EditMenuAwarePromptEntryView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewDismissButtonConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView) = 0;
  v3 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_dropletView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for SiriSharedUIDropletView()) init];
  v4 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton;
  *(v0 + v4) = [objc_allocWithZone(UIButton) init];
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonWidth) = 0x4048000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_animationDuration) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryViewBottomConstant) = 0x4042000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewDampingValue) = 0x3FE999999999999ALL;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewResponseValue) = 0x3FE199999999999ALL;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewXButtonDampingValue) = 0x3FE8F5C28F5C28F6;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_promptEntryViewXButtonResponseValue) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_buttonBlurRadius) = 0x401C000000000000;
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_shadowOpacity) = 0x3FC5C28F5C28F5C3;
  v5 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator;
  *(v0 + v5) = [objc_allocWithZone(SiriSharedUISpinningActivityIndicator) init];
  *(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000C3984()
{
  v1 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
  [v1 alpha];
  if (v2 == 0.0)
  {
    [v1 setAlpha:1.0];
    [v0 layoutIfNeeded];
  }

  if ((v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale] & 1) == 0)
  {
    v3 = [v0 keyboardLayoutGuide];
    [v3 useLightEffectsBackgroundBelowView:v1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong shouldBeginEditing];
    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_1000C3A60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong promptEntryViewDidBeginEditing:v0];
    swift_unknownObjectRelease();
  }

  if ((*(v0 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale) & 1) == 0)
  {
    v2 = [v0 keyboardLayoutGuide];
    [v2 removeLightEffectsView];
  }

  sub_1000BDDE8(0);
}

void sub_1000C3AFC()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView];
  v11 = IntelligenceUI.PromptEntryView.textView.getter();
  v12 = [v11 text];

  if (v12)
  {
    v67[1] = v10;
    v67[2] = v4;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v13;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000C45D0();
    v14 = StringProtocol.trimmingCharacters(in:)();
    v16 = v15;
    (*(v7 + 8))(v9, v6);

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion;
      v19 = &qword_10018E000;
      if (v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion] == 1)
      {

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v21 = Strong;
          if (*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion + 8])
          {
          }

          v22 = String._bridgeToObjectiveC()();

          [v21 entryViewDidSubmit:v1 suggestionText:v22 suggestionRequestType:*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText]];

          swift_unknownObjectRelease();
          v19 = &qword_10018E000;
        }

        else
        {
        }

        v1[v18] = 0;
        v47 = &v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion];
        *v47 = 0;
        v47[1] = 0;

        *&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText] = 0;
        goto LABEL_40;
      }

      if (v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale] == 1 && (v71 = &type metadata for SiriUIFeaturesFlags, v72 = sub_100017934(), LOBYTE(aBlock) = 2, v34 = isFeatureEnabled(_:)(), sub_100006114(&aBlock), (v34 & 1) != 0))
      {
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006160(v35, qword_10018EE28);
        v36 = static os_log_type_t.info.getter();
        aBlock = 0xD00000000000001CLL;
        v69 = 0x800000010011AB60;
        v37 = sub_100006198(0);
        if (v38)
        {
          v74._countAndFlagsBits = 32;
          v74._object = 0xE100000000000000;
          String.append(_:)(*&v37);

          String.append(_:)(v74);
        }

        if (("NERATIVE_ASSISTANT" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v74._countAndFlagsBits = 32;
          v74._object = 0xE100000000000000;
          v39._countAndFlagsBits = 0xD000000000000058;
          v39._object = 0x800000010011ABF0;
          String.append(_:)(v39);
          String.append(_:)(v74);
        }

        v41 = aBlock;
        v40 = v69;
        v42 = Logger.logObject.getter();
        if (os_log_type_enabled(v42, v36))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v74._countAndFlagsBits = v44;
          *v43 = 136315138;
          v45 = sub_1000075D4(v41, v40, &v74._countAndFlagsBits);

          *(v43 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v42, v36, "%s", v43, 0xCu);
          sub_100006114(v44);
        }

        else
        {
        }

        v48 = swift_unknownObjectWeakLoadStrong();
        v19 = &qword_10018E000;
        if (v48)
        {
          [v48 entryViewDidSubmit:v1 visualIntelligenceText:v12];
          goto LABEL_38;
        }
      }

      else
      {
        v46 = swift_unknownObjectWeakLoadStrong();
        if (v46)
        {
          [v46 entryViewDidSubmit:v1 text:v12];
LABEL_38:

          swift_unknownObjectRelease();
LABEL_40:
          if (v1[v19[383]] == 1)
          {
            v49 = [objc_opt_self() modelName];
            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            sub_100093B6C(&qword_10018ED50);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_1000F7BD0;
            *(v53 + 56) = &type metadata for String;
            *(v53 + 64) = sub_1000C4640();
            *(v53 + 32) = v50;
            *(v53 + 40) = v52;
            String.init(format:_:)();

            dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
            v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_firstPromptSubmitted] = 1;
          }

          v54 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency;
          if ((v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_isInLatency] & 1) == 0)
          {
            [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator] showSpinner];
            v55 = objc_opt_self();
            v56 = SiriSharedUIPromptEntryLatencyAppearDuration;
            v57 = SiriSharedUIPromptEntryLatencyAppearDuration * 0.25;
            v58 = swift_allocObject();
            *(v58 + 16) = v1;
            *(v58 + 24) = 1;
            v72 = sub_1000C4624;
            v73 = v58;
            aBlock = _NSConcreteStackBlock;
            v69 = 1107296256;
            v70 = sub_100007C78;
            v71 = &unk_100169F20;
            v59 = _Block_copy(&aBlock);
            v60 = v1;

            [v55 animateWithDuration:0 delay:v59 options:0 animations:v57 completion:0.0];
            _Block_release(v59);
            v61 = swift_allocObject();
            *(v61 + 16) = v60;
            *(v61 + 24) = 1;
            v72 = sub_1000C4628;
            v73 = v61;
            aBlock = _NSConcreteStackBlock;
            v69 = 1107296256;
            v70 = sub_100007C78;
            v71 = &unk_100169F70;
            v62 = _Block_copy(&aBlock);
            v63 = v60;

            v64 = swift_allocObject();
            *(v64 + 16) = 1;
            *(v64 + 24) = v63;
            v72 = sub_1000C4634;
            v73 = v64;
            aBlock = _NSConcreteStackBlock;
            v69 = 1107296256;
            v70 = sub_100007BC4;
            v71 = &unk_100169FC0;
            v65 = _Block_copy(&aBlock);
            v66 = v63;

            [v55 animateWithDuration:0 delay:v62 options:v65 animations:v56 / 3.0 completion:0.15];
            _Block_release(v65);
            _Block_release(v62);
            v1[v54] = 1;
          }

          return;
        }
      }

      goto LABEL_40;
    }
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006160(v23, qword_10018EE28);
  v24 = static os_log_type_t.info.getter();
  aBlock = 0xD00000000000001CLL;
  v69 = 0x800000010011AB60;
  v25 = sub_100006198(0);
  if (v26)
  {
    v74._countAndFlagsBits = 32;
    v74._object = 0xE100000000000000;
    String.append(_:)(*&v25);

    String.append(_:)(v74);
  }

  if (("promptEntryViewDidSubmit(_:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v74._countAndFlagsBits = 32;
    v74._object = 0xE100000000000000;
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x800000010011AB80;
    String.append(_:)(v27);
    String.append(_:)(v74);
  }

  v29 = aBlock;
  v28 = v69;
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v24))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v74._countAndFlagsBits = v32;
    *v31 = 136315138;
    v33 = sub_1000075D4(v29, v28, &v74._countAndFlagsBits);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v30, v24, "%s", v31, 0xCu);
    sub_100006114(v32);
  }

  else
  {
  }
}

unint64_t sub_1000C45D0()
{
  result = qword_10018EF70;
  if (!qword_10018EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF70);
  }

  return result;
}

unint64_t sub_1000C4640()
{
  result = qword_10018ED58;
  if (!qword_10018ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ED58);
  }

  return result;
}

uint64_t sub_1000C46A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
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
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_1000C4758()
{
  result = qword_10018ED70;
  if (!qword_10018ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ED70);
  }

  return result;
}

void sub_1000C47F0()
{
  v0 = IntelligenceUI.PromptEntryView.textView.getter();
  [v0 setAlpha:1.0];
}

id sub_1000C4850()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_1000C48B0()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton) setAlpha:0.0];
  result = *(v1 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButtonBackgroundView);
  if (result)
  {

    return [result setAlpha:0.0];
  }

  return result;
}

id sub_1000C4920()
{
  v1 = *(v0 + 16);
  [*&v1[OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_closeButton] setAlpha:1.0];

  return [v1 layoutIfNeeded];
}

id sub_1000C4978()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_spinningActivityIndicator) setAlpha:v1];
}

uint64_t sub_1000C49B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1000C4AC8(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Siri13SRCarPlayView_touchPassThrough;
  *(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_touchPassThrough) = a1;
  if (a1)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006160(v4, qword_10018EE28);
    v5 = static os_log_type_t.info.getter();
    v21 = 0xD000000000000010;
    v22 = 0x800000010011AEA0;
    v6 = sub_100006198(0x10uLL);
    if (v7)
    {
      v19 = 32;
      v20 = 0xE100000000000000;
      String.append(_:)(*&v6);

      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
    }

    if (("r tapped background view" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v19 = 32;
      v20 = 0xE100000000000000;
      v9._countAndFlagsBits = 0xD00000000000002CLL;
      v9._object = 0x800000010011AF50;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 32;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
    }

    v12 = v21;
    v11 = v22;
    v13 = Logger.logObject.getter();
    if (os_log_type_enabled(v13, v5))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      v16 = sub_1000075D4(v12, v11, &v19);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v13, v5, "%s", v14, 0xCu);
      sub_100006114(v15);
    }

    else
    {
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView);
  if (v17)
  {
    v18 = [v17 layer];
    [v18 setAllowsHitTesting:(*(v2 + v3) & 1) == 0];
  }
}

id sub_1000C4D7C(void *a1)
{
  isa = [a1 constraints];
  if (!isa)
  {
    sub_10000A238(0, &qword_10018E938);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() deactivateConstraints:isa];

  return [a1 removeFromSuperview];
}

void sub_1000C4E38(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView;
    v3 = *(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView);
    if (v3)
    {
      v4 = [v3 layer];
      v5 = v4;
      LODWORD(v6) = 0.5;
      if (*(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground))
      {
        *&v6 = 1.0;
      }

      [v4 setOpacity:v6];
    }

    v7 = sub_100097140();
    v8 = 0.5;
    if (*(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground))
    {
      v8 = 1.0;
    }

    v28 = &type metadata for Double;
    *v27 = v8;
    sub_1000A9BF8(v27, &type metadata for Double);
    v9 = v7;
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100006114(v27);
    [v9 setFromValue:v10];

    swift_unknownObjectRelease();
    v11 = *(v1 + v2);
    if (v11)
    {
      v12 = [v11 layer];
      [v12 addAnimation:v9 forKey:0];

      v13 = *(v1 + v2);
      if (v13)
      {
        v14 = [v13 layer];
        [v14 setOpacity:0.0];
LABEL_19:
      }
    }
  }

  else
  {
    v15 = sub_100097000();
    v16 = OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground;
    v17 = 0.5;
    if (*(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground))
    {
      v17 = 1.0;
    }

    v28 = &type metadata for Double;
    *v27 = v17;
    sub_1000A9BF8(v27, &type metadata for Double);
    v9 = v15;
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100006114(v27);
    [v9 setToValue:v18];

    swift_unknownObjectRelease();
    v19 = OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView;
    v20 = *(v1 + OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView);
    if (v20)
    {
      v21 = [v20 layer];
      [v21 setOpacity:0.0];

      v22 = *(v1 + v19);
      if (v22)
      {
        v23 = [v22 layer];
        [v23 addAnimation:v9 forKey:0];

        v24 = *(v1 + v19);
        if (v24)
        {
          v25 = [v24 layer];
          v14 = v25;
          LODWORD(v26) = 0.5;
          if (*(v1 + v16))
          {
            *&v26 = 1.0;
          }

          [v25 setOpacity:v26];
          goto LABEL_19;
        }
      }
    }
  }
}

void sub_1000C50E8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_systemGrayColor;
  if (v3 != 1)
  {
    v5 = &selRef_systemGray4Color;
  }

  v6 = [v4 *v5];
  [a1 setBackgroundColor:v6];
}

id sub_1000C51A4(void *a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v3];
  v94 = &type metadata for SiriUIFeaturesFlags;
  v95 = sub_100017934();
  v93[0] = 0;
  v4 = isFeatureEnabled(_:)();
  sub_100006114(v93);
  v91 = objc_opt_self();
  sub_100093B6C(&qword_10018E930);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F8060;
  v6 = [v3 centerXAnchor];
  v7 = [v1 safeAreaLayoutGuide];
  v8 = [v7 centerXAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v3 topAnchor];
  if (v4)
  {
    v11 = [v1 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

    *(v5 + 40) = v12;
    v13 = [v3 bottomAnchor];
    v14 = [v1 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

    *(v5 + 48) = v15;
    v16 = [v3 leadingAnchor];
    v17 = [v1 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v5 + 56) = v18;
    v19 = [v3 trailingAnchor];
    v20 = [v1 trailingAnchor];
  }

  else
  {
    v21 = [v1 safeAreaLayoutGuide];
    v22 = [v21 topAnchor];

    v23 = [v10 constraintEqualToAnchor:v22 constant:0.0];
    *(v5 + 40) = v23;
    v24 = [v3 bottomAnchor];
    v25 = [v1 safeAreaLayoutGuide];
    v26 = [v25 bottomAnchor];

    v27 = [v24 constraintEqualToAnchor:v26 constant:0.0];
    *(v5 + 48) = v27;
    v28 = [v3 leadingAnchor];
    v29 = [v1 safeAreaLayoutGuide];
    v30 = [v29 leadingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    *(v5 + 56) = v31;
    v19 = [v3 trailingAnchor];
    v32 = [v1 safeAreaLayoutGuide];
    v20 = [v32 trailingAnchor];
  }

  v33 = [v19 constraintEqualToAnchor:v20];

  *(v5 + 64) = v33;
  sub_10000A238(0, &qword_10018E938);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v91 activateConstraints:isa];

  [v3 _setOverrideVibrancyTrait:1];
  v35 = objc_opt_self();
  v36 = [v35 materialViewWithRecipe:52];
  if (v36)
  {
    v37 = v36;
    [v3 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [(objc_class *)v37 setAutoresizingMask:18];
    [(objc_class *)v37 setFrame:v39, v41, v43, v45];
    [(objc_class *)v37 setOpaque:0];
    v46 = [v1 traitCollection];
    v47 = [v46 userInterfaceStyle];

    [(objc_class *)v37 setHidden:v47 != 1];
    sub_100093B6C(&qword_10018EE18);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000F7BD0;
    v49 = type metadata accessor for UITraitUserInterfaceStyle();
    *(v48 + 32) = v49;
    *(v48 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    sub_10000A238(0, &qword_10018E9A8);
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    [v3 addSubview:v37];
    v50 = [v35 materialViewWithRecipe:53];
    if (v50)
    {
      v51 = v50;
      [v3 bounds];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      [v51 setAutoresizingMask:18];
      [v51 setFrame:{v53, v55, v57, v59}];
      v60 = [v2 traitCollection];
      v61 = v51;
      v62 = [v60 userInterfaceStyle];

      [v61 setHidden:v62 == 1];
      [v61 setOpaque:0];
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1000F7BD0;
      *(v63 + 32) = v49;
      *(v63 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();

      [v3 addSubview:v61];
      [v3 bounds];
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v72 = [objc_allocWithZone(UIView) init];
      v73 = [objc_opt_self() whiteColor];
      [v72 setBackgroundColor:v73];

      [v72 setAutoresizingMask:18];
      [v72 setFrame:{v65, v67, v69, v71}];
      v74 = [v72 layer];
      LODWORD(v75) = 1034147594;
      [v74 setOpacity:v75];

      v76 = [v2 traitCollection];
      v77 = [v76 userInterfaceStyle];

      [v72 setHidden:v77 == 1];
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1000F7BD0;
      *(v78 + 32) = v49;
      *(v78 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();

      [v3 addSubview:v72];
      [a1 setClipsToBounds:1];
      [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:a1];
      v92 = objc_opt_self();
      sub_100093B6C(&qword_10018E930);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1000F7D00;
      v80 = [v3 safeAreaLayoutGuide];
      v81 = [v80 centerXAnchor];

      v82 = [a1 centerXAnchor];
      v83 = [v81 constraintEqualToAnchor:v82];

      *(v79 + 32) = v83;
      v84 = [v3 safeAreaLayoutGuide];
      v85 = [v84 centerYAnchor];

      v86 = [a1 centerYAnchor];
      v87 = [v85 constraintEqualToAnchor:v86];

      *(v79 + 40) = v87;
      v88 = Array._bridgeToObjectiveC()().super.isa;

      [v92 activateConstraints:v88];

      v37 = v88;
    }
  }

  return v3;
}

id sub_1000C5CBC(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  return [a1 setHidden:v3 != 1];
}

id sub_1000C5D34(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  return [a1 setHidden:v3 == 1];
}

id sub_1000C5DAC(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = [v4 layer];
  if (qword_10018D758 != -1)
  {
    swift_once();
  }

  v49 = qword_100190338;
  [v5 setCornerCurve:?];

  v6 = [v4 layer];
  LODWORD(v7) = 0.5;
  [v6 setShadowOpacity:v7];

  v8 = [v4 layer];
  if (qword_10018D760 != -1)
  {
    swift_once();
  }

  [v8 setShadowColor:qword_100190340];

  v9 = [v4 layer];
  v10 = objc_opt_self();
  if ([v10 isEnhancedMaterialEnabled])
  {
    v11 = 28.0;
  }

  else
  {
    v11 = 20.0;
  }

  [v9 setShadowRadius:v11];

  v12 = [v4 layer];
  [v12 setShadowOffset:{0.0, 10.0}];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v4];
  if ([objc_opt_self() deviceSupportsAI])
  {
    if ([v10 isEnhancedMaterialEnabled])
    {
      v13 = 4.0;
    }

    else
    {
      v13 = 8.0;
    }
  }

  else
  {
    v13 = 68.0;
  }

  v48 = objc_opt_self();
  sub_100093B6C(&qword_10018E930);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000F8060;
  v15 = [v4 centerXAnchor];
  v16 = [v2 safeAreaLayoutGuide];
  v17 = [v16 centerXAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v14 + 32) = v18;
  v19 = [v4 topAnchor];
  v20 = [v2 safeAreaLayoutGuide];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21 constant:12.0];
  *(v14 + 40) = v22;
  v23 = [v4 bottomAnchor];
  v24 = [v2 safeAreaLayoutGuide];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-v13];
  *(v14 + 48) = v26;
  v27 = [v4 leadingAnchor];
  v28 = [v2 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintGreaterThanOrEqualToAnchor:v29 constant:12.0];
  *(v14 + 56) = v30;
  v31 = [v4 trailingAnchor];
  v32 = [v2 safeAreaLayoutGuide];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor:v33 constant:-12.0];
  *(v14 + 64) = v34;
  sub_10000A238(0, &qword_10018E938);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 activateConstraints:isa];

  [v4 _setOverrideVibrancyTrait:1];
  [v4 bounds];
  v40 = [objc_allocWithZone(type metadata accessor for SRCarPlaySnippetPlatterView()) initWithFrame:{v36, v37, v38, v39}];
  [v4 addSubview:v40];
  [a1 setClipsToBounds:1];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [a1 layer];
  if ([v10 isEnhancedMaterialEnabled])
  {
    v42 = 28.0;
  }

  else
  {
    v42 = 20.0;
  }

  [v41 setCornerRadius:{v42, v48}];

  v43 = [a1 layer];
  [v43 setCornerCurve:v49];

  sub_1000BB37C(a1);
  if ([v10 isEnhancedMaterialEnabled])
  {
    v44 = 28.0;
  }

  else
  {
    v44 = 20.0;
  }

  sub_100011C5C(v44);
  v45 = [v40 layer];

  [v45 setCornerCurve:v49];
  v46 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView];
  *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView] = v40;

  return v4;
}

char *sub_1000C6494(void *a1)
{
  _StringGuts.grow(_:)(40);
  v2._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0x800000010011AEE0;
  String.append(_:)(v2);
  v30._countAndFlagsBits = [a1 state];
  type metadata accessor for State(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_10018EE28);
  v5 = static os_log_type_t.info.getter();
  v31 = 0xD000000000000018;
  v32 = 0x800000010011AEC0;
  v6 = sub_100006198(0x10uLL);
  if (v7)
  {
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(*&v6);

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v31;
  v9 = v32;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v30._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v5, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  result = [a1 state];
  if (result == 3)
  {
    v16 = static os_log_type_t.info.getter();
    v31 = 0xD000000000000018;
    v32 = 0x800000010011AEC0;
    v17 = sub_100006198(0x10uLL);
    if (v18)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      String.append(_:)(*&v17);

      String.append(_:)(v30);
    }

    if (("ground. Tapped state " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      v19._countAndFlagsBits = 0xD000000000000038;
      v19._object = 0x800000010011AF10;
      String.append(_:)(v19);
      String.append(_:)(v30);
    }

    v21 = v31;
    v20 = v32;
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v16))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30._countAndFlagsBits = v24;
      *v23 = 136315138;
      v25 = sub_1000075D4(v21, v20, &v30._countAndFlagsBits);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v16, "%s", v23, 0xCu);
      sub_100006114(v24);
    }

    else
    {
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v26 = result;
      v27 = &result[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 1);
        ObjectType = swift_getObjectType();
        (*(v28 + 32))(v26, 7, ObjectType, v28);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1000C69E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C6A1C(void *a1, unsigned __int8 a2)
{
  v4 = a2 & 0xFE;
  v5 = [a1 layer];
  v7 = v5;
  if (v4 == 2)
  {
    v8 = a2;
    LODWORD(v6) = 1.0;
    [v5 setOpacity:v6];

    v9 = [a1 layer];
    v10 = sub_100097140();
    [v9 addAnimation:v10 forKey:0];

    v11 = 0.0;
    if (v8 != 2)
    {
      goto LABEL_6;
    }

    v12 = [a1 layer];
    v13 = sub_1000973CC();
    [v12 addAnimation:v13 forKey:0];
  }

  else
  {
    [v5 setOpacity:0.0];

    v14 = [a1 layer];
    v15 = sub_100097000();
    [v14 addAnimation:v15 forKey:0];

    v12 = [a1 layer];
    v13 = sub_100097280();
    [v12 addAnimation:v13 forKey:0];
    v11 = 1.0;
  }

LABEL_6:
  v17 = [a1 layer];
  *&v16 = v11;
  [v17 setOpacity:v16];
}

void sub_1000C6BFC()
{
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground) = 0;
  v1 = OBJC_IVAR____TtC4Siri13SRCarPlayView_showIntelligentLightAnimation;
  *(v0 + v1) = [objc_opt_self() deviceSupportsAI];
  *(v0 + OBJC_IVAR____TtC4Siri13SRCarPlayView_touchPassThrough) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000C6CE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000A9184(v0, qword_10018EE28);
  result = sub_100006160(v0, qword_10018EE28);
  if (AFSiriLogContextConnection)
  {
    v2 = AFSiriLogContextConnection;
    return Logger.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000C6D60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C6DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000C6E18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100094468();

  *a1 = v2;
  return result;
}

uint64_t sub_1000C6E58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100093B6C(&qword_10018EE58);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000C70F4(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000074FC(a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000C6E58(v16, a4 & 1);
      result = sub_1000074FC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000C7254();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_1000C7254()
{
  v1 = v0;
  sub_100093B6C(&qword_10018EE58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

Swift::Int sub_1000C73BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C7EF8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000C748C(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1000C7428()
{
  result = qword_10018EE50;
  if (!qword_10018EE50)
  {
    sub_10009961C(&qword_10018EE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE50);
  }

  return result;
}

Swift::Int sub_1000C748C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000C7654(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000C7584(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000C7584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000C7654(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000C7EE4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000C7C30((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AC4A0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000AC4A0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000C7C30((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000C7EE4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000C7E58(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}