void sub_10126E3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v69 - v11;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v73 = &v69 - v14;
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v75 = v6;
    v71 = v16;
    v72 = a2;
    v70 = v8;
    v23 = *(v8 + 16);
    v21 = v8 + 16;
    v22 = v23;
    v80 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v24 = a1 + v80;
    v83 = *(v21 + 56);
    v74 = (v21 - 8);
    v84 = (v21 + 16);
    v82 = _swiftEmptyArrayStorage;
    v25 = a1 + v80;
    v26 = v20;
    v79 = v21;
    v78 = v23;
    v23(v19, a1 + v80, v7, v17);
    while (1)
    {
      if (URL.startAccessingSecurityScopedResource()())
      {
        v29 = *v84;
        (*v84)(v81, v19, v7);
        v30 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776944(0, v30[2] + 1, 1);
          v30 = v88;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          sub_100776944(v32 > 1, v33 + 1, 1);
          v30 = v88;
        }

        v30[2] = v33 + 1;
        v82 = v30;
        v34 = v30 + v80;
        v28 = v83;
        v29(&v34[v33 * v83], v81, v7);
        v22 = v78;
      }

      else
      {
        (*v74)(v19, v7);
        v28 = v83;
      }

      v25 += v28;
      if (!--v26)
      {
        break;
      }

      v22(v19, v25, v7, v27);
    }

    v35 = objc_allocWithZone(CRLTemporaryDirectory);
    v36 = String._bridgeToObjectiveC()();
    v88 = 0;
    v37 = [v35 initWithSignature:v36 error:&v88];

    v38 = v88;
    v81 = v37;
    if (v37)
    {
      v39 = objc_opt_self();
      v40 = v38;
      v76 = [v39 defaultManager];
      v41 = (v70 + 48);
      v42 = _swiftEmptyArrayStorage;
      v43 = v83;
      do
      {
        v44 = v75;
        sub_101267B90(v24, v81, v76, v75);
        if ((*v41)(v44, 1, v7) == 1)
        {
          sub_10000CAAC(v44, &unk_1019F33C0);
        }

        else
        {
          v45 = *v84;
          v46 = v73;
          (*v84)(v73, v44, v7);
          v45(v77, v46, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_100B364FC(0, *(v42 + 2) + 1, 1, v42);
          }

          v48 = *(v42 + 2);
          v47 = *(v42 + 3);
          if (v48 >= v47 >> 1)
          {
            v42 = sub_100B364FC(v47 > 1, v48 + 1, 1, v42);
          }

          *(v42 + 2) = v48 + 1;
          v49 = v83;
          v45(&v42[v80 + v48 * v83], v77, v7);
          v43 = v49;
          v22 = v78;
        }

        v24 += v43;
        --v20;
      }

      while (v20);
      v50 = swift_allocObject();
      v51 = v81;
      *(v50 + 16) = v81;
      v52 = v51;
      sub_100AF79C4(v42, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), v50, v72);

      v53 = v74;
    }

    else
    {
      v56 = v88;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v53 = v74;
      if (qword_1019F21A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlInsertMedia;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      swift_getErrorValue();
      v59 = Error.publicDescription.getter(v86, v87);
      v61 = v60;
      *(inited + 56) = &type metadata for String;
      v62 = sub_1000053B0();
      *(inited + 64) = v62;
      *(inited + 32) = v59;
      *(inited + 40) = v61;
      swift_getErrorValue();
      v63 = Error.fullDescription.getter(v85);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v62;
      *(inited + 72) = v63;
      *(inited + 80) = v64;
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v65, "Error creating temporary directory: %{public}@ <%@>", 51, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      sub_100AF79C4(_swiftEmptyArrayStorage, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0, v72);

      v22 = v78;
      v43 = v83;
    }

    v66 = v82[2];
    v67 = v71;
    if (v66)
    {
      v68 = v82 + v80;
      do
      {
        (v22)(v67, v68, v7);
        URL.stopAccessingSecurityScopedResource()();
        (*v53)(v67, v7);
        v68 += v43;
        --v66;
      }

      while (v66);
    }
  }

  else
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v54 = static OS_os_log.crlInsertMedia;
    v55 = static os_log_type_t.default.getter();
    sub_100005404(v54, &_mh_execute_header, v55, "No URLs.", 8, 2, _swiftEmptyArrayStorage);

    sub_100AF79C4(_swiftEmptyArrayStorage, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0, a2);
  }
}

uint64_t sub_10126ECF4@<X0>(NSURL *a1@<X8>)
{
  v1 = sub_10126BDEC(a1);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_8;
  }

  v5 = sub_10000BE7C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_100064288(*(v2 + 56) + 32 * v5, v15);

  sub_100006370(0, &unk_101A2F5C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v8 = v13[0];
  if ([v13[0] __swift_objectForKeyedSubscript:kCGImagePropertyIPTCExtDigitalSourceType])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v13 = 0u;
    v14 = 0u;
  }

  v15[0] = *v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {

    sub_10000CAAC(v15, &unk_1019F4D00);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  if (v11 == 0xD000000000000046 && 0x80000001015C8A40 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0xD000000000000053 && 0x80000001015C8A90 == v12)
  {

    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10126EF20(void *a1)
{
  v81[3] = &type metadata for CRLFeatureFlags;
  v81[4] = sub_100004D60();
  LOBYTE(v81[0]) = 14;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v81);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  result = [type metadata accessor for ImagePlaygroundViewController() available];
  if (!result)
  {
    return result;
  }

  v4 = [a1 editorController];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 selectionModelTranslator];
    v74 = v5;
    if (!v6)
    {
      v49 = objc_opt_self();
      v50 = [v49 _atomicIncrementAssertCount];
      v81[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v81);
      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v50;
      v59 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v59;
      v60 = sub_1005CF04C();
      *(inited + 104) = v60;
      *(inited + 72) = v51;
      *(inited + 136) = &type metadata for String;
      v61 = sub_1000053B0();
      *(inited + 112) = v54;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v61;
      *(inited + 152) = 75;
      v62 = v81[0];
      *(inited + 216) = v59;
      *(inited + 224) = v60;
      *(inited + 192) = v62;
      v63 = v51;
      v64 = v62;
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v66 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v66, "No selection model translator", 29, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v67 = swift_allocObject();
      v67[2] = 8;
      v67[3] = 0;
      v67[4] = 0;
      v67[5] = 0;
      v68 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      [v49 handleFailureInFunction:v69 file:v70 lineNumber:75 isFatal:0 format:v71 args:v68];

      return 0;
    }

    v72 = v6;
    v75 = [v5 selectionPath];
    v7 = [v72 infosForSelectionPath:?];
    v8 = &type metadata for AnyHashable;
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
    v11 = v9 + 56;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v9 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = &unk_101A2F5A0;
    v17 = &unk_1014D7088;
    v73 = v9;
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_11:
    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return 0;
      }

      v14 = *(v11 + 8 * v18);
      ++v10;
      if (v14)
      {
        while (1)
        {
          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          sub_100064110(*(v9 + 48) + 40 * (v19 | (v18 << 6)), v81);
          sub_1005B981C(v16);
          if (swift_dynamicCast())
          {
            v20 = v17;
            v21 = v16;
            v22 = v8;
            sub_100050F74(v76, v78);
            v23 = v79;
            v24 = v80;
            sub_100020E58(v78, v79);
            v25 = (*(v24 + 8))(v23, v24);
            if (v25 >> 62)
            {
              v30 = _CocoaArrayWrapper.endIndex.getter();

              if (v30)
              {
LABEL_21:

                sub_100005070(v78);
                return 1;
              }
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v26)
              {
                goto LABEL_21;
              }
            }

            v27 = v79;
            v28 = v80;
            sub_100020E58(v78, v79);
            v29 = *((*(v28 + 16))(v75, v27, v28) + 16);

            if (v29)
            {
              goto LABEL_21;
            }

            sub_100005070(v78);
            v10 = v18;
            v8 = v22;
            v16 = v21;
            v17 = v20;
            v9 = v73;
            if (!v14)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v77 = 0;
            memset(v76, 0, sizeof(v76));
            sub_10000CAAC(v76, &qword_101A2F5A8);
            v10 = v18;
            if (!v14)
            {
              goto LABEL_11;
            }
          }

LABEL_10:
          v18 = v10;
        }
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v9 = objc_opt_self();
  LODWORD(v16) = [v9 _atomicIncrementAssertCount];
  v81[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v81);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v33;

  if (qword_1019F20A0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v34 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_10146CA70;
  *(v35 + 56) = &type metadata for Int32;
  *(v35 + 64) = &protocol witness table for Int32;
  *(v35 + 32) = v16;
  v36 = sub_100006370(0, &qword_1019F4D30);
  *(v35 + 96) = v36;
  v37 = sub_1005CF04C();
  *(v35 + 104) = v37;
  *(v35 + 72) = v17;
  *(v35 + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(v35 + 112) = v15;
  *(v35 + 120) = v14;
  *(v35 + 176) = &type metadata for UInt;
  *(v35 + 184) = &protocol witness table for UInt;
  *(v35 + 144) = v38;
  *(v35 + 152) = 74;
  v39 = v81[0];
  *(v35 + 216) = v36;
  *(v35 + 224) = v37;
  *(v35 + 192) = v39;
  v40 = v17;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v35);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v43, "No editor controller", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v9 handleFailureInFunction:v46 file:v47 lineNumber:74 isFatal:0 format:v48 args:v45];

  return 0;
}

void sub_10126F940()
{
  if (qword_1019F21A0 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlInsertMedia;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "imagePlaygroundViewController(_:didCreateImageAt:)", 50, 2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v6 = v4;
      URL._bridgeToObjectiveC()(v5);
      v54 = v7;
      [v6 generativePlaygroundHelper:v3 didCreateImageAt:v7];

      swift_unknownObjectRelease();
    }

    else
    {
      v31 = objc_opt_self();
      v32 = [v31 _atomicIncrementAssertCount];
      v55[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v55);
      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v34 lastPathComponent];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v39 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v32;
      v41 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v41;
      v42 = sub_1005CF04C();
      *(inited + 104) = v42;
      *(inited + 72) = v33;
      *(inited + 136) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 112) = v36;
      *(inited + 120) = v38;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v43;
      *(inited + 152) = 279;
      v44 = v55[0];
      *(inited + 216) = v41;
      *(inited + 224) = v42;
      *(inited + 192) = v44;
      v45 = v33;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v48, "No delegate", 11, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v49 = swift_allocObject();
      v49[2] = 8;
      v49[3] = 0;
      v49[4] = 0;
      v49[5] = 0;
      v50 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      [v31 handleFailureInFunction:v51 file:v52 lineNumber:279 isFatal:0 format:v53 args:v50];
    }
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v55[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v55);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10146CA70;
    *(v17 + 56) = &type metadata for Int32;
    *(v17 + 64) = &protocol witness table for Int32;
    *(v17 + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(v17 + 96) = v18;
    v19 = sub_1005CF04C();
    *(v17 + 104) = v19;
    *(v17 + 72) = v10;
    *(v17 + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v17 + 112) = v13;
    *(v17 + 120) = v15;
    *(v17 + 176) = &type metadata for UInt;
    *(v17 + 184) = &protocol witness table for UInt;
    *(v17 + 144) = v20;
    *(v17 + 152) = 278;
    v21 = v55[0];
    *(v17 + 216) = v18;
    *(v17 + 224) = v19;
    *(v17 + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "No helper", 9, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:278 isFatal:0 format:v30 args:v27];
  }
}

void sub_101270130()
{
  if (qword_1019F21A0 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlInsertMedia;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "imagePlaygroundViewControllerDidCancel(_:)", 42, 2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 generativePlaygroundHelperDidCancel:v3];

      swift_unknownObjectRelease();
    }

    else
    {
      v28 = objc_opt_self();
      v29 = [v28 _atomicIncrementAssertCount];
      v51[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v51);
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      v32 = [v31 lastPathComponent];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v36 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v29;
      v38 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v38;
      v39 = sub_1005CF04C();
      *(inited + 104) = v39;
      *(inited + 72) = v30;
      *(inited + 136) = &type metadata for String;
      v40 = sub_1000053B0();
      *(inited + 112) = v33;
      *(inited + 120) = v35;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v40;
      *(inited + 152) = 288;
      v41 = v51[0];
      *(inited + 216) = v38;
      *(inited + 224) = v39;
      *(inited + 192) = v41;
      v42 = v30;
      v43 = v41;
      v44 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v45, "No delegate", 11, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v46 = swift_allocObject();
      v46[2] = 8;
      v46[3] = 0;
      v46[4] = 0;
      v46[5] = 0;
      v47 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      [v28 handleFailureInFunction:v48 file:v49 lineNumber:288 isFatal:0 format:v50 args:v47];
    }
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v51[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v51);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CA70;
    *(v14 + 56) = &type metadata for Int32;
    *(v14 + 64) = &protocol witness table for Int32;
    *(v14 + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(v14 + 96) = v15;
    v16 = sub_1005CF04C();
    *(v14 + 104) = v16;
    *(v14 + 72) = v7;
    *(v14 + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    *(v14 + 176) = &type metadata for UInt;
    *(v14 + 184) = &protocol witness table for UInt;
    *(v14 + 144) = v17;
    *(v14 + 152) = 287;
    v18 = v51[0];
    *(v14 + 216) = v15;
    *(v14 + 224) = v16;
    *(v14 + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "No helper", 9, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:287 isFatal:0 format:v27 args:v24];
  }
}

uint64_t sub_101270900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101270968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1012709E8()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

id sub_101270A50()
{
  result = sub_1002D2A30();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_101270AA4()
{
  v0 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for Endpoint());
    return Endpoint.init(url:name:sharedContainerIdentifier:)();
  }

  return result;
}

uint64_t sub_101270BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000486F0(a2);
  if ((v7 & 1) == 0 || (*(*(*(a3 + 56) + 8 * v6) + 40) & 1) == 0)
  {
    if (*(a3 + 16))
    {
      v9 = sub_1000486F0(a2);
      if (v10)
      {
        v11 = *(*(a3 + 56) + 8 * v9);
        swift_beginAccess();
        v12 = *(v11 + 24);

        v8 = sub_10079C3B4(a1, v12);

        return v8 & 1;
      }
    }

LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_101270C78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_101270CEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*(v4 + 16) && (v5 = sub_1000486F0(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    type metadata accessor for CRLTransientSyncExclusionCollection.BoardSyncExclusionCollection();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = _swiftEmptySetSingleton;
    *(v7 + 32) = _swiftEmptySetSingleton;
    *(v7 + 40) = 0;
    *(v7 + 42) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_100AA116C(v7, a1, isUniquelyReferenced_nonNull_native);
    *v2 = v10;
  }

  return v7;
}

unint64_t sub_101270DAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F6990);
  result = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = *v2;
  if (*(v9 + 16))
  {
    result = sub_1000486F0(a2);
    if (v10)
    {
      v11 = *(*(v9 + 56) + 8 * result);
      swift_beginAccess();

      sub_100ED6D70(a1, v8);
      sub_1005C5FFC(v8);
      swift_endAccess();
      if (*(v11 + 41) == 1)
      {
        *(v11 + 16) = 0;
        *(v11 + 40) = 0;
      }

      if (*(v11 + 42) == 1)
      {
        *(v11 + 16) = 0;
        *(v11 + 40) = 0;
        *(v11 + 24) = _swiftEmptySetSingleton;
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_101270EDC(unint64_t result, char a2)
{
  v3 = *v2;
  if (*(v3 + 16))
  {
    result = sub_1000486F0(result);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * result);
      *(v6 + 16) = 0;
      if (a2)
      {
        *(v6 + 40) = 0;
      }

      if (*(v6 + 42) == 1)
      {
        *(v6 + 16) = 0;
        *(v6 + 40) = 0;
        swift_beginAccess();
        *(v6 + 24) = _swiftEmptySetSingleton;
      }
    }
  }

  return result;
}

uint64_t sub_101270F7C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2F7E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101271A64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1009CF3B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[3];
    HIBYTE(v10) = 7;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_101271250()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D7638[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1012712D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D7638[v1]);
  return Hasher._finalize()();
}

unint64_t sub_10127133C()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x6C61636974726576;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6156746867696568;
  if (v1 != 4)
  {
    v4 = 0x746E6F7A69726F68;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C676E61;
  if (v1 != 2)
  {
    v5 = 0x6C61566874646977;
  }

  if (*v0)
  {
    v2 = 1702521203;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101271450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101271DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1012714A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_101271A0C();
  v5 = sub_101271A64();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1012714F8(uint64_t a1)
{
  v2 = sub_101271A64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101271534(uint64_t a1)
{
  v2 = sub_101271A64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101271570(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  return sub_101270F78(v5, v6) & 1;
}

double sub_1012715AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10127207C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_101271600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012723FC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101271654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012723FC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012716A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1012718FC();
  v7 = sub_101272450();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101271718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012723FC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_1012717FC(uint64_t a1)
{
  v2 = sub_101271BD4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_10127184C()
{
  result = qword_101A2F780;
  if (!qword_101A2F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F780);
  }

  return result;
}

unint64_t sub_1012718A4()
{
  result = qword_101A2F788;
  if (!qword_101A2F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F788);
  }

  return result;
}

unint64_t sub_1012718FC()
{
  result = qword_101A2F790;
  if (!qword_101A2F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F790);
  }

  return result;
}

unint64_t sub_10127195C()
{
  result = qword_101A2F798;
  if (!qword_101A2F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F798);
  }

  return result;
}

unint64_t sub_1012719B4()
{
  result = qword_101A2F7A0;
  if (!qword_101A2F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7A0);
  }

  return result;
}

unint64_t sub_101271A0C()
{
  result = qword_101A2F7A8;
  if (!qword_101A2F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7A8);
  }

  return result;
}

unint64_t sub_101271A64()
{
  result = qword_101A2F7B0;
  if (!qword_101A2F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7B0);
  }

  return result;
}

unint64_t sub_101271ABC()
{
  result = qword_101A2F7B8;
  if (!qword_101A2F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7B8);
  }

  return result;
}

unint64_t sub_101271B14()
{
  result = qword_101A2F7C0;
  if (!qword_101A2F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7C0);
  }

  return result;
}

unint64_t sub_101271B6C()
{
  result = qword_101A2F7C8;
  if (!qword_101A2F7C8)
  {
    sub_1005C4E5C(&qword_101A2F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7C8);
  }

  return result;
}

unint64_t sub_101271BD4()
{
  result = qword_101A2F7D8;
  if (!qword_101A2F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7D8);
  }

  return result;
}

uint64_t sub_101271C28(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && ((*(a1 + 20) ^ *(a2 + 20)) & 1) == 0 && ((*(a1 + 21) ^ *(a2 + 21)) & 1) == 0 && ((*(a1 + 22) ^ *(a2 + 22)) & 1) == 0 && ((*(a1 + 23) ^ *(a2 + 23)) & 1) == 0)
  {
    return sub_100B3216C(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

id sub_101271CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 position];
  v5 = v4;
  v7 = v6;
  [a1 size];
  v9 = v8;
  v11 = v10;
  [a1 angle];
  v13 = v12;
  v14 = [a1 widthValid];
  v15 = [a1 heightValid];
  v16 = [a1 horizontalFlip];
  result = [a1 verticalFlip];
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = v11;
  *(a2 + 16) = v13;
  *(a2 + 20) = v14;
  *(a2 + 21) = v15;
  *(a2 + 22) = v16;
  *(a2 + 23) = result;
  *(a2 + 24) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_101271DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61566874646977 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6156746867696568 && a2 == 0xEB0000000064696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEE0070696C466C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEC00000070696C46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10127207C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A2F7E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101271A64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v28) = 0;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v9 = v30[0];
  v27 = v9;
  LOBYTE(v28) = 1;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v10 = v30[0];
  v26 = v10;
  LOBYTE(v30[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v30[0]) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v30[0]) = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v30[0]) = 5;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v30[0]) = 6;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&unk_101A0D960);
  v37 = 7;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIDWORD(v23) = v13 & 1;
  v15 = v14 & 1;
  v16 = v25 & 1;
  v17 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v18 = v38;
  *&v19 = v27;
  *(&v19 + 1) = v26;
  v28 = v19;
  LODWORD(v29) = v12;
  v20 = BYTE4(v23);
  BYTE4(v29) = BYTE4(v23);
  BYTE5(v29) = v15;
  BYTE6(v29) = v16;
  BYTE7(v29) = v17;
  *(&v29 + 1) = v38;
  sub_10074A4EC(&v28, v30);
  sub_100005070(a1);
  v30[0] = v27;
  v30[1] = v26;
  v31 = v12;
  v32 = v20;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  result = sub_10074A710(v30);
  v22 = v29;
  *a2 = v28;
  a2[1] = v22;
  return result;
}

unint64_t sub_1012723FC()
{
  result = qword_101A2F7F0;
  if (!qword_101A2F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7F0);
  }

  return result;
}

unint64_t sub_101272450()
{
  result = qword_101A2F7F8;
  if (!qword_101A2F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F7F8);
  }

  return result;
}

unint64_t sub_1012724B8()
{
  result = qword_101A2F800;
  if (!qword_101A2F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F800);
  }

  return result;
}

void sub_101272518(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t type metadata accessor for CRLMemoryWriteChannel()
{
  result = qword_101A2F8A0;
  if (!qword_101A2F8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101272898()
{
  result = type metadata accessor for DispatchData();
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

uint64_t sub_101272928(uint64_t a1)
{
  v3 = *(v1 + 96);
  v33[2] = *(v1 + 80);
  v33[3] = v3;
  v33[4] = *(v1 + 112);
  v34 = *(v1 + 128);
  v4 = *(v1 + 64);
  v33[0] = *(v1 + 48);
  v33[1] = v4;
  v5 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v5;
  *(v1 + 112) = *(a1 + 64);
  *(v1 + 128) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  sub_1012771BC(a1, &v20);
  sub_1012771F4(v33);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1012771F4(a1);
  }

  v19 = *(v1 + 24);
  v7 = *(v1 + 64);
  v20 = *(v1 + 48);
  v21 = v7;
  v8 = *(v1 + 96);
  v22 = *(v1 + 80);
  v23 = v8;
  v24 = *(v1 + 112);
  v25 = *(v1 + 128);
  v9 = *(&v20 + 1);
  v10 = *(&v21 + 1) >> 62;
  if ((*(&v21 + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = v21;
      v16 = v20;
      sub_10086756C(v20, *(&v20 + 1), v21);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0x4000000000000000;
    }

    else
    {
      v16 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0x8000000000000000;
    }
  }

  else if (v10)
  {

    CurrentValueSubject.value.getter();
    sub_1012771F4(&v20);
    v16 = v26;
    v9 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v15 = v31;
    v14 = v32;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0x8000000000000000;
    v16 = 2;
  }

  v26 = v16;
  v27 = v9;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = v15;
  v32 = v14;
  ObjectType = swift_getObjectType();
  (*(v19 + 8))(v1 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering13ARViewBackend_uuid, &v26, ObjectType);
  sub_1012771F4(a1);
  swift_unknownObjectRelease();
  return sub_100863E8C(v16, v9, v11, v12, v13, v15);
}

uint64_t sub_101272B58(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  v3 = type metadata accessor for URL();
  v2[93] = v3;
  v2[94] = *(v3 - 8);
  v2[95] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[96] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[97] = v5;
  v2[98] = v4;

  return _swift_task_switch(sub_101272C54, v5, v4);
}

uint64_t sub_101272C54()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 728);
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 792) = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 800) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = sub_100C69B58();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(v0 + 808) = v10;
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v5, &_mh_execute_header, v11, "(ARViewBackend) loadScene(%@)", 29, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  (*(v2 + 16))(v1, v4, v3);
  type metadata accessor for CRLUSDRendering.LoadReceipt(0);
  v12 = swift_allocObject();
  *(v0 + 816) = v12;
  (*(v2 + 32))(v12 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering11LoadReceipt_url, v1, v3);
  v13 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  *(v0 + 824) = v13;
  v14 = (v4 + *(v13 + 20));
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 1);
  v18 = *(v14 + 2);
  v19 = *(v14 + 3);
  *(v0 + 16) = v12;
  *(v0 + 32) = v15;
  *(v0 + 40) = 0;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  *(v0 + 96) = v16;

  sub_101272928(v0 + 16);
  v20 = swift_task_alloc();
  *(v0 + 832) = v20;
  *v20 = v0;
  v20[1] = sub_101272EB0;

  return sub_100C70FFC();
}

uint64_t sub_101272EB0(uint64_t a1)
{
  v3 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  v4 = v3[98];
  v5 = v3[97];
  if (v1)
  {
    v6 = sub_101273278;
  }

  else
  {
    v6 = sub_101272FD0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_101272FD0()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 736);

  v3 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v3, "(ARViewBackend) loadScene(): entity loaded", 42, 2, _swiftEmptyArrayStorage);
  v4 = *(v2 + 64);
  *(v0 + 400) = *(v2 + 48);
  *(v0 + 416) = v4;
  v5 = *(v2 + 80);
  v6 = *(v2 + 96);
  v7 = *(v2 + 112);
  *(v0 + 480) = *(v2 + 128);
  *(v0 + 448) = v6;
  *(v0 + 464) = v7;
  *(v0 + 432) = v5;
  if (!(*(v0 + 424) >> 62) && (v8 = *(v0 + 816), v9 = *(v0 + 480), v10 = *(v0 + 400), *(v0 + 624) = *(v0 + 416), v11 = *(v0 + 448), *(v0 + 640) = *(v0 + 432), *(v0 + 656) = v11, *(v0 + 672) = *(v0 + 464), *(v0 + 688) = v9, v8 == v10))
  {
    v12 = (*(v0 + 728) + *(*(v0 + 824) + 24));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    _s13ARViewBackendC17ARViewCoordinatorCMa();
    swift_allocObject();
    sub_1012771BC(v0 + 400, v0 + 512);

    v18 = sub_101275E9C(v17, v0 + 624, v13, v14, v15, v16);
    *(v0 + 720) = *(v18 + 168);
    swift_allocObject();
    swift_weakInit();

    sub_1005B981C(&qword_101A2FBC0);
    sub_10127729C();
    Publisher<>.sink(receiveValue:)();

    AnyCancellable.store(in:)();

    *(v0 + 288) = v8;
    *(v0 + 296) = v18;
    *(v0 + 304) = _swiftEmptySetSingleton;
    *(v0 + 312) = 0x4000000000000000;

    sub_101272928(v0 + 288);

    sub_1012771F4(v0 + 400);
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_101273278()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v7, "(ARViewBackend) loadScene() error: %{public}@", 45, 2, v4);
  swift_setDeallocating();
  sub_100005070(v4 + 32);
  swift_deallocClassInstance();
  *(v0 + 696) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 488);
    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
  }

  else
  {
    *(v0 + 704) = *(v0 + 848);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 600);
      v9 = *(v0 + 608);
      v10 = 4;
    }

    else
    {
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = 2;
    }
  }

  *(v0 + 176) = v8;
  *(v0 + 184) = v9;
  *(v0 + 192) = v10;
  *(v0 + 200) = 0x8000000000000000;
  sub_101272928(v0 + 176);
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_101273488()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      v3 = *(v1 + 64);
      v14 = *(v1 + 48);
      v15 = v3;
      v4 = *(v1 + 96);
      v16 = *(v1 + 80);
      v17 = v4;
      v18 = *(v1 + 112);
      v19 = *(v1 + 128);
      v5 = *(&v14 + 1);
      v6 = *(&v15 + 1) >> 62;
      if ((*(&v15 + 1) >> 62) > 1)
      {
        if (v6 == 2)
        {
          v7 = v15;
          v12 = v14;
          sub_10086756C(v14, *(&v14 + 1), v15);
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0x4000000000000000;
        }

        else
        {
          v12 = 0;
          v5 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0x8000000000000000;
        }
      }

      else if (v6)
      {

        CurrentValueSubject.value.getter();
        sub_1012771F4(&v14);
        v12 = v20;
        v5 = v21;
        v7 = v22;
        v8 = v23;
        v9 = v24;
        v11 = v25;
        v10 = v26;
      }

      else
      {
        v5 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0x8000000000000000;
        v12 = 2;
      }

      v20 = v12;
      v21 = v5;
      v22 = v7;
      v23 = v8;
      v24 = v9;
      v25 = v11;
      v26 = v10;
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(v1 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering13ARViewBackend_uuid, &v20, ObjectType, v2);
      swift_unknownObjectRelease();
      sub_100863E8C(v12, v5, v7, v8, v9, v11);
    }
  }

  return result;
}

uint64_t sub_101273678(uint64_t a1)
{
  *(v2 + 200) = v1;
  *(v2 + 448) = *a1;
  v3 = *(a1 + 40);
  *(v2 + 296) = *(a1 + 32);
  *(v2 + 104) = a1;
  v4 = *(a1 + 16);
  *(v2 + 392) = v3;
  v5 = *(a1 + 48);
  *(v2 + 400) = v4;
  *(v2 + 416) = v5;
  *(v2 + 432) = *(a1 + 64);
  type metadata accessor for MainActor();
  *(v2 + 440) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10127373C, v7, v6);
}

uint64_t sub_10127373C()
{
  v1 = *(v0 + 200);

  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 128);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40) >> 62;
  if (v6 == 1)
  {
    v16 = *(v0 + 104);
    v17 = *(v0 + 24);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v20 = *(v16 + 16);
    *(v17 + 80) = *(v16 + 64);
    *(v17 + 48) = v19;
    *(v17 + 64) = v18;
    *(v17 + 32) = v20;
    *(v17 + 16) = *v16;
    sub_1012771BC(v0 + 16, v0 + 208);

    sub_1012744B0();
  }

  else
  {
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = *(v0 + 432);
    v8 = *(v0 + 392);
    v9 = *(v0 + 296);
    v10 = *(v0 + 448);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v10;
    *(v0 + 136) = 0;
    v11 = *(v0 + 416);
    *(v0 + 144) = *(v0 + 400);
    *(v0 + 160) = v9;
    *(v0 + 168) = v8;
    *(v0 + 176) = v11;
    *(v0 + 192) = v7;
    v12 = *(v1 + 64);
    *(v0 + 208) = *(v1 + 48);
    *(v0 + 224) = v12;
    v13 = *(v1 + 80);
    v14 = *(v1 + 96);
    v15 = *(v1 + 112);
    *(v0 + 288) = *(v1 + 128);
    *(v0 + 256) = v14;
    *(v0 + 272) = v15;
    *(v0 + 240) = v13;
    *(v0 + 232) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1012771BC(v0 + 16, v0 + 304);
    sub_101277224(v0 + 208, v0 + 304);
    sub_101272928(v0 + 112);
  }

  sub_1012771F4(v0 + 16);
LABEL_6:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1012738B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101273948, v4, v3);
}

uint64_t sub_101273948()
{
  v1 = v0[3];

  if (*(v1 + 72) >> 62 == 1)
  {
    v2 = *(v0[2] + 16);

    if (v2)
    {
      v3 = (v0[2] + 40);
      do
      {
        v4 = *v3;
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            sub_10127431C();
            goto LABEL_5;
          }

          if (v4 == 5)
          {
            sub_101273FEC();
            goto LABEL_5;
          }
        }

        else
        {
          if (v4 == 2)
          {
            sub_101273E1C();
            goto LABEL_5;
          }

          if (v4 == 3)
          {
            sub_101273E34();
            goto LABEL_5;
          }
        }

        sub_101273A54();
LABEL_5:
        v3 += 16;
        --v2;
      }

      while (v2);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_101273A54()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v38 = v7;
  v39 = v2;
  v40 = v0;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v8 << 10) | (16 * v12);
      v14 = (*(v2 + 48) + v13);
      v15 = v14[1];
      v41 = *v14;
      v16 = (*(v2 + 56) + v13);
      v17 = *v16;
      if (!v16[1])
      {
        break;
      }

      swift_retain_n();

      if (AnimationPlaybackController.isValid.getter())
      {

        if (dispatch thunk of AnimationPlaybackController.isPaused.getter())
        {
          dispatch thunk of AnimationPlaybackController.resume()();
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_19:
        v18 = v15;
        AnimationResource.repeat(duration:)();
        v19 = Entity.playAnimation(_:transitionDuration:startsPaused:)();
        swift_beginAccess();
        v20 = v17;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v1 + 176);
        *(v1 + 176) = 0x8000000000000000;
        v23 = v18;
        v25 = sub_10000BE7C(v41, v18);
        v26 = v22[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_32;
        }

        v29 = v24;
        if (v22[3] >= v28)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v24)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_100AA917C();
            if (v29)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_100A91720(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_10000BE7C(v41, v23);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }

          v25 = v30;
          if (v29)
          {
LABEL_5:

            v9 = v22;
            v10 = (v22[7] + 16 * v25);
            *v10 = v20;
            v10[1] = v19;

            goto LABEL_6;
          }
        }

        v9 = v22;
        v22[(v25 >> 6) + 8] |= 1 << v25;
        v32 = (v22[6] + 16 * v25);
        *v32 = v41;
        v32[1] = v23;
        v33 = (v22[7] + 16 * v25);
        *v33 = v20;
        v33[1] = v19;
        v34 = v22[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_33;
        }

        v22[2] = v36;
LABEL_6:
        *(v40 + 176) = v9;
        v1 = v40;
        swift_endAccess();

        v7 = v38;
        v2 = v39;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_7:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      sub_101274608(&v42);
      v45 = v43;
      v46 = v44;
      CurrentValueSubject.send(_:)();
      sub_10000CAAC(&v45, &qword_101A17A80);
      return sub_10000CAAC(&v46, &qword_101A03918);
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_101273E4C(void (*a1)(void))
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        a1();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_101274608(&v12);
      v15 = v13;
      v16 = v14;
      CurrentValueSubject.send(_:)();
      sub_10000CAAC(&v15, &qword_101A17A80);
      return sub_10000CAAC(&v16, &qword_101A03918);
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_101273FEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 176) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v38 = *(v0 + 176);

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v16 = (*(v38 + 48) + v15);
    v17 = v16[1];
    v18 = (*(v38 + 56) + v15);
    v19 = *v18;
    v39 = *v16;
    if (v18[1])
    {
      swift_retain_n();

      if (AnimationPlaybackController.isValid.getter())
      {
        dispatch thunk of AnimationPlaybackController.stop()();
      }
    }

    else
    {
    }

    swift_beginAccess();
    v20 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v1 + 176);
    v40 = v22;
    v23 = v1;
    *(v1 + 176) = 0x8000000000000000;
    v24 = sub_10000BE7C(v39, v17);
    v26 = v22[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_28;
    }

    v30 = v25;
    if (v22[3] < v29)
    {
      sub_100A91720(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_10000BE7C(v39, v17);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_21:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v36 = v24;
    sub_100AA917C();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v11 = v24;

      v12 = v40;
      v13 = (v40[7] + 16 * v11);
      *v13 = v20;
      v13[1] = 0;

      goto LABEL_5;
    }

LABEL_22:
    v12 = v22;
    v22[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v22[6] + 16 * v24);
    *v32 = v39;
    v32[1] = v17;
    v33 = (v22[7] + 16 * v24);
    *v33 = v20;
    v33[1] = 0;
    v34 = v22[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_29;
    }

    v22[2] = v35;
LABEL_5:
    v8 &= v8 - 1;
    *(v23 + 176) = v12;
    v1 = v23;
    swift_endAccess();
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      sub_101274608(&v41);
      v44 = v42;
      v45 = v43;
      CurrentValueSubject.send(_:)();
      sub_10000CAAC(&v44, &qword_101A17A80);
      return sub_10000CAAC(&v45, &qword_101A03918);
    }

    v8 = *(v4 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10127431C()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(v1 + 56) + ((v7 << 10) | (16 * v9)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        AnimationPlaybackController.time.setter();
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_101274608(&v10);
      v13 = v11;
      v14 = v12;
      CurrentValueSubject.send(_:)();
      sub_10000CAAC(&v13, &qword_101A17A80);
      return sub_10000CAAC(&v14, &qword_101A03918);
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012744B0()
{
  v1 = *(v0 + 16);
  BoundingBox.boundingRadius.getter();
  v3 = v2;
  v4 = ((v1 * 0.5) * 3.1416) / 180.0;
  if (v1 <= 0.0)
  {
    v4 = 0.0087266;
  }

  v5 = v3 / sinf(v4);
  sub_1005B981C(&qword_101A11B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  sub_100CEF5FC(inited);
  swift_setDeallocating();
  type metadata accessor for AnchorEntity();
  HasTransform.position.setter();
  type metadata accessor for PerspectiveCamera();
  v7 = HasPerspectiveCamera.camera.modify();
  PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
  v7(v9, 0);
  return HasTransform.orientation.setter();
}

unint64_t sub_101274608@<X0>(uint64_t a1@<X8>)
{
  v33 = *(v1 + 128);
  v34 = *(v1 + 112);
  swift_beginAccess();
  v2 = *(v1 + 176);
  sub_1005B981C(&unk_101A1B3B0);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v37 = v3 + 64;
  v41 = v2;

  v11 = 0;
  v36 = v4;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v15 = v12 | (v11 << 6);
      v16 = (*(v41 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      if (*(*(v41 + 56) + 16 * v15 + 8))
      {

        v40 = dispatch thunk of AnimationPlaybackController.isPaused.getter();
        v39 = dispatch thunk of AnimationPlaybackController.isComplete.getter();
        v38 = AnimationPlaybackController.isPlaying.getter();
        v19 = AnimationPlaybackController.isStopped.getter();
        AnimationPlaybackController.speed.getter();
        v21 = v20;

        v4 = v36;

        v22 = 256;
        if ((v39 & 1) == 0)
        {
          v22 = 0;
        }

        v23 = v22 & 0xFFFFFFFFFFFFFFFELL | v40 & 1;
        v24 = 0x10000;
        if ((v38 & 1) == 0)
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if ((v19 & 1) == 0)
        {
          v25 = 0;
        }

        v26 = v23 | v24 | v25 | (v21 << 32);
      }

      else
      {

        v26 = 2;
      }

      *(v37 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v27 = (v4[6] + 16 * v15);
      *v27 = v18;
      v27[1] = v17;
      *(v4[7] + 8 * v15) = v26;
      v28 = v4[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v4[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v11 >= v9)
      {
        break;
      }

      v14 = *(v5 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v31 = [*(v1 + 88) superview];
    v32 = v31;
    if (v31)
    {
    }

    result = sub_100BD6968(_swiftEmptyArrayStorage);
    *a1 = v34;
    *(a1 + 16) = v33;
    *(a1 + 32) = v4;
    *(a1 + 40) = v32 != 0;
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1012748B4()
{

  return v0;
}

uint64_t sub_101274904()
{
  sub_1012748B4();

  return swift_deallocClassInstance();
}

uint64_t sub_101274938()
{
  sub_1000C1024((v0 + 16));
  sub_100D15CC4(*(v0 + 6), *(v0 + 7), *(v0 + 8), *(v0 + 9));
  v1 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering13ARViewBackend_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_101274A30()
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

uint64_t sub_101274B74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering13ARViewBackend_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_101274BEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_101272B58(a1);
}

uint64_t sub_101274C80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_101273678(a1);
}

uint64_t sub_101274D14(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  type metadata accessor for MainActor();
  *(v3 + 80) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return _swift_task_switch(sub_101274DB0, v5, v4);
}

uint64_t sub_101274DB0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  sub_1005B981C(&qword_101A04BE0);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_10086E020;

  return sub_1012738B0(inited);
}

uint64_t sub_101274E8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_1012738B0(a1);
}

uint64_t sub_101274F20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10086E338;

  return sub_101276C34();
}

uint64_t sub_101274FC0(uint64_t a1, void *a2)
{
  v4 = sub_1005B981C(&qword_101A07DD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v12 = a2;
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_10064191C(0, 0, v10, &unk_1014D7B58, v15);
}

uint64_t sub_1012751CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1005B981C(&qword_101A07DD8);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1012752D4, v9, v8);
}

uint64_t sub_1012752D4()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + v6, v1, v3);
  dispatch thunk of ARView.snapshot(saveToHDR:completion:)();

  [v5 bounds];
  [v5 setNeedsDisplayInRect:?];

  v8 = v0[1];

  return v8();
}

uint64_t sub_101275408(void *a1)
{
  v1 = a1;
  sub_1005B981C(&qword_101A07DD8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_101275458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLARView(0);
  objc_msgSendSuper2(&v2, "didMoveToSuperview");
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_101274608(&v3);
    v6 = v4;
    v7 = v5;
    CurrentValueSubject.send(_:)();
    sub_10000CAAC(&v6, &qword_101A17A80);
    sub_10000CAAC(&v7, &qword_101A03918);
  }

  return result;
}

void sub_10127552C(void *a1)
{
  v1 = a1;
  sub_101275458();
}

id sub_101275574(void *a1, uint64_t a2, void *a3)
{
  swift_weakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CRLARView(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_101275604(void *a1, double a2, double a3, double a4, double a5)
{
  swift_weakInit();
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CRLARView(0);
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_10127568C(uint64_t a1)
{
  v3 = type metadata accessor for ARView.CameraMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  swift_weakInit();
  (*(v4 + 16))(v6, a1, v3);
  v8 = ARView.init(frame:cameraMode:automaticallyConfigureSession:)();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_1012757E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLARView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101275848(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_101275864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1012758B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101275918(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 24) = a2 << 62;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 24) = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_101275974()
{
  result = qword_101A2FBA0;
  if (!qword_101A2FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FBA0);
  }

  return result;
}

unint64_t sub_1012759CC()
{
  result = qword_101A2FBA8;
  if (!qword_101A2FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FBA8);
  }

  return result;
}

unint64_t sub_101275A24()
{
  result = qword_101A2FBB0;
  if (!qword_101A2FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FBB0);
  }

  return result;
}

unint64_t sub_101275A7C()
{
  result = qword_101A2FBB8;
  if (!qword_101A2FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FBB8);
  }

  return result;
}

uint64_t sub_101275AD0(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v11 = sub_10000BE7C(v5, v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100AA917C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

  sub_100A91720(v14, a2 & 1);
  v16 = sub_10000BE7C(v5, v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    v44._object = 0x800000010159A770;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v5;
  v20[1] = v6;
  v21 = (v19[7] + 16 * v11);
  *v21 = v7;
  v21[1] = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v46 != 1)
  {
    v25 = a1 + 11;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 3);
      v27 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *a3;

      v32 = sub_10000BE7C(v28, v27);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v23 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v23)
      {
        goto LABEL_24;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_100A91720(v36, 1);
        v32 = sub_10000BE7C(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v39[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v39[2] = v43;
      v25 += 4;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

uint64_t sub_101275E9C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for ARView.Environment.Background();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for ARView.CameraMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 96) = a1;
  v19 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v19;
  *(v7 + 80) = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v20;
  type metadata accessor for AnchorEntity();
  sub_100CEF5FC(&off_101874DF8);
  v64 = v21;

  *(v7 + 144) = AnchorEntity.__allocating_init(world:)();
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  *(v7 + 112) = v22;
  *(v7 + 128) = v23;
  BoundingBox.center.getter();
  HasTransform.position.setter();

  v61 = a1;
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  type metadata accessor for PerspectiveCamera();
  swift_allocObject();
  *(v7 + 152) = PerspectiveCamera.init()();
  sub_100CEF5FC(&off_101874E28);
  *(v7 + 160) = AnchorEntity.__allocating_init(world:)();

  v24 = v7;
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  v60 = type metadata accessor for CRLARView(0);
  v25 = [objc_allocWithZone(v60) initWithFrame:{a3, a4, a5, a6}];
  *(v7 + 88) = v25;
  v26 = v25;
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (swift_dynamicCastClass())
  {
    dispatch thunk of __RKEntityInteractionManager.areInteractionsEnabled.setter();
    dispatch thunk of __RKEntityInteractionManager.automaticallyInvokesStartTrigger.setter();
    dispatch thunk of __RKEntityInteractionManager.__removeAllInteractions()();
  }

  swift_unknownObjectRelease();
  v27 = *(v7 + 88);
  (*(v16 + 104))(v18, enum case for ARView.CameraMode.nonAR(_:), v15);
  v28 = v27;
  ARView.cameraMode.setter();

  [*(v24 + 88) setUserInteractionEnabled:0];
  v29 = *(v24 + 88);
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  v30 = *(v24 + 88);
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  v31 = *(v24 + 88);
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  static ARView.Environment.Background.color(_:)();

  v35 = dispatch thunk of ARView.environment.modify();
  ARView.Environment.background.setter();
  v35(&v69, 0);

  v36 = Entity.availableAnimations.getter();
  if (v36 >> 62)
  {
LABEL_22:
    v54 = v36;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v54;
    if (v37)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_5:
      v38 = v36;
      *&v65 = _swiftEmptyArrayStorage;
      v36 = sub_100776C04(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v59 = v24;
      v24 = 0;
      v39 = v65;
      v40 = v38;
      *&v64 = v38 & 0xC000000000000001;
      v62 = v38 & 0xFFFFFFFFFFFFFF8;
      *&v63 = v38;
      do
      {
        v41 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        if (v64)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v62 + 16))
          {
            goto LABEL_21;
          }

          v42 = *(v40 + 8 * v24 + 32);
        }

        v74 = ObjectIdentifier.hashValue.getter();
        *&v69 = dispatch thunk of CustomStringConvertible.description.getter();
        *(&v69 + 1) = v43;
        v44._countAndFlagsBits = 47;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);
        v45 = AnimationResource.name.getter();
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v45 = 0x64656D616E6E75;
          v47 = 0xE700000000000000;
        }

        v48 = v47;
        String.append(_:)(*&v45);

        v49 = v69;
        *&v65 = v39;
        v51 = v39[2];
        v50 = v39[3];
        if (v51 >= v50 >> 1)
        {
          v36 = sub_100776C04((v50 > 1), v51 + 1, 1);
          v39 = v65;
        }

        v39[2] = v51 + 1;
        v52 = &v39[4 * v51];
        *(v52 + 2) = v49;
        v52[6] = v42;
        v52[7] = 0;
        ++v24;
        v40 = v63;
      }

      while (v41 != v37);

      v24 = v59;
      if (!v39[2])
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v39 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_24:
    v53 = _swiftEmptyDictionarySingleton;
    goto LABEL_25;
  }

LABEL_19:
  sub_1005B981C(&qword_101A0EF68);
  v53 = static _DictionaryStorage.allocate(capacity:)();
LABEL_25:
  *&v69 = v53;
  sub_101275AD0(v39, 1, &v69);
  *(v24 + 176) = v69;
  v55 = *(v24 + 128);
  v64 = *(v24 + 112);
  v63 = v55;
  v56 = sub_100BD6B64(_swiftEmptyArrayStorage);
  v57 = sub_100BD6968(_swiftEmptyArrayStorage);
  v69 = v64;
  v70 = v63;
  *&v71 = v56;
  BYTE8(v71) = 0;
  v72 = v57;
  sub_1005B981C(&qword_101A2FBC0);
  swift_allocObject();
  *(v24 + 168) = CurrentValueSubject.init(_:)();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
  }

  sub_1012744B0();
  sub_101274608(&v69);
  v73 = v71;
  v74 = v72;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  v68 = v72;
  CurrentValueSubject.send(_:)();

  sub_10000CAAC(&v73, &qword_101A17A80);
  sub_10000CAAC(&v74, &qword_101A03918);
  return v24;
}

uint64_t sub_1012766A4(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_101276740, v3, v2);
}

uint64_t sub_101276740()
{
  v1 = [*(v0 + 24) superview];
  if (v1)
  {

    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 24);
    [v3 bounds];
    v2 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    [v2 addSubview:v3];
  }

  *(v0 + 64) = v2;
  [*(v0 + 24) frame];
  if (CGRectIsEmpty(v20))
  {
    v8 = [*(v0 + 24) superview];
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 24);
      [v8 setNeedsLayout];
      [v9 layoutIfNeeded];
      [v10 frame];
      if (CGRectIsEmpty(v21))
      {
        [*(v0 + 24) setFrame:{0.0, 0.0, 300.0, 300.0}];
      }
    }
  }

  [*(v0 + 24) frame];
  if (v11 != v12)
  {
    if (v11 <= v12)
    {
      v11 = v12;
    }

    [*(v0 + 24) setFrame:{0.0, 0.0, v11, v11}];
  }

  v13 = *(v0 + 24);
  v14 = static MainActor.shared.getter();
  *(v0 + 72) = v14;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *(v15 + 16) = v13;
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  v17 = sub_1005B981C(&unk_101A265A0);
  *v16 = v0;
  v16[1] = sub_1012769BC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v14, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001015C90D0, sub_101277034, v15, v17);
}

uint64_t sub_1012769BC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_101276B1C, v3, v2);
}

uint64_t sub_101276B1C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = [*(v0 + 24) superview];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 64);
      sub_100B52CA0();
      v6 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        [*(v0 + 24) removeFromSuperview];
      }
    }
  }

  v8 = *(v0 + 64);
  v9 = v2;
  v10 = [v9 CGImage];

  v11 = *(v0 + 8);

  return v11(v10, 0, 1);
}

uint64_t sub_101276C34()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_101276CCC, v3, v2);
}

uint64_t sub_101276CCC()
{
  v1 = v0[2];
  if (*(v1 + 72) >> 62 == 1)
  {
    v2 = *(v1 + 56);
    v0[6] = v2;
    v3 = *(v2 + 88);
    v0[7] = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_101276DFC;

    return sub_1012766A4(v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0, 1);
  }
}

uint64_t sub_101276DFC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_101276FBC;
  }

  else
  {

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_101276F40;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_101276F40()
{

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 8);
  v4 = *(v0 + 96) & 1;

  return v3(v1, v2, v4);
}

uint64_t sub_101276FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10127703C(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A07DD8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1012751CC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_101277140(void *a1)
{
  sub_1005B981C(&qword_101A07DD8);

  return sub_101275408(a1);
}

uint64_t sub_101277224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A04DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10127729C()
{
  result = qword_101A2FBC8;
  if (!qword_101A2FBC8)
  {
    sub_1005C4E5C(&qword_101A2FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FBC8);
  }

  return result;
}

uint64_t _s17CategoryViewModelVMa()
{
  result = qword_101A2FC28;
  if (!qword_101A2FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101277374()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100ABE298();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_101277410()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101277794(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = _s17CategoryViewModelVMa();
  String.hash(into:)();
  if (*(v0 + *(v1 + 24) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));
  return Hasher._finalize()();
}

void sub_101277534(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_101277794(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + *(a2 + 24) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
}

Swift::Int sub_101277634(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101277794(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + *(a2 + 24) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
  return Hasher._finalize()();
}

uint64_t sub_101277794(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1012777DC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = _s17CategoryViewModelVMa();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  return 0;
}

uint64_t sub_1012778D4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {

    return 1;
  }

  if (((*(a2 + 40))(a1, a2) & 1) == 0)
  {
    return 1;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v30);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_1005CF000();
  *(inited + 96) = v15;
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 79;
  v18 = v30;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:79 isFatal:1 format:v27 args:v24];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v28, v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CRLTransactablePropertyMapKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x646E616865657266;
    v7 = 0x746144656C626174;
    if (a1 != 10)
    {
      v7 = 0x4465636166727573;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x61746144656C6966;
    v9 = 0x617461446C7275;
    if (a1 != 7)
    {
      v9 = 0x617461447A647375;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x61446E6F6D6D6F63;
    v2 = 0x7461446567616D69;
    v3 = 0x7461446569766F6DLL;
    if (a1 != 4)
    {
      v3 = 0x7461446570616873;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656E6961746E6F63;
    if (a1 != 1)
    {
      v4 = 0x7461446472616F62;
    }

    if (a1)
    {
      v1 = v4;
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

uint64_t sub_101277E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8))(a2, a3))
  {
  }

  else if (*(a1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active))
  {
    v6 = *(a3 + 16);

    v6(v7, a2, a3);
    return (*(a3 + 56))(a2, a3);
  }

  sub_1009C3238();
  swift_allocError();
  *v9 = 0;
  return swift_willThrow();
}

uint64_t sub_101277F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (!v6(a2, a3))
  {
LABEL_5:
    sub_1009C3238();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  result = v6(a2, a3);
  if (result)
  {
    v8 = static UUID.== infix(_:_:)();

    if (v8)
    {
      (*(a3 + 128))(a1, a2, a3);
      return (*(a3 + 16))(0, a2, a3);
    }

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_101278080(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = CRLTransactablePropertyMapKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == CRLTransactablePropertyMapKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_101278108()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CRLTransactablePropertyMapKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10127816C()
{
  CRLTransactablePropertyMapKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1012781C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CRLTransactablePropertyMapKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101278220@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform30CRLTransactablePropertyMapKeysO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_101278250@<X0>(uint64_t *a1@<X8>)
{
  result = CRLTransactablePropertyMapKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10127827C()
{
  v1 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_101278328()
{
  v1 = OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t _s8Freeform30CRLTransactablePropertyMapKeysO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10187A0E0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101278434()
{
  result = qword_101A2FC78;
  if (!qword_101A2FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FC78);
  }

  return result;
}

uint64_t sub_1012784C0()
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

uint64_t sub_101278584()
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

unint64_t sub_101278640()
{
  result = qword_101A2FE28;
  if (!qword_101A2FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2FE28);
  }

  return result;
}

uint64_t sub_101278694@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&unk_101A09DC0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v26 = &v21 - v3;
  v25 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v22 = &v21 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  UUID.init()();
  sub_1005D0C00(&v37);
  sub_100FEC8E0(v8);
  v16 = sub_1005B981C(&unk_101A0F400);
  v24 = *(v16 + 52);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  sub_1005B981C(&unk_101A09DE0);
  v23 = sub_1007492B8();
  CRRegister.init(wrappedValue:)();
  *(a1 + *(v16 + 56)) = _swiftEmptyDictionarySingleton;
  (*(v10 + 16))(v12, v15, v9);
  v17 = v9;
  CRRegister.init(_:)();
  v18 = v22;
  sub_10127DCB8(v22, v5, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10127D39C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v29) = 0;
  CRRegister.init(_:)();
  LOBYTE(v29) = 0;
  CRRegister.init(_:)();
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v19 = v26;
  CRRegister.init(_:)();
  sub_10127DC58(v18, type metadata accessor for CRLShapeItemParentAffinity);
  (*(v10 + 8))(v15, v17);
  return (*(v27 + 40))(a1 + v24, v19, v28);
}

uint64_t sub_101278AEC()
{
  v0 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v13 - v4;
  sub_1005B981C(&unk_101A0F400);
  sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v6 = sub_100FF1C04(v5, v2);
  sub_10127DC58(v2, type metadata accessor for CRLShapeItemParentAffinity);
  sub_10127DC58(v5, type metadata accessor for CRLShapeItemParentAffinity);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v7 = v32;
  CRRegister.wrappedValue.getter();
  if (v7 != v32)
  {
    goto LABEL_12;
  }

  CRRegister.wrappedValue.getter();
  v8 = v32;
  CRRegister.wrappedValue.getter();
  if (v8 != v32)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  v9 = v32;
  CRRegister.wrappedValue.getter();
  if (v9 == v32)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_12:
      v11 = 0;
      return v11 & 1;
    }
  }

  sub_1005B981C(&unk_101A09DC0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v36 = v52;
  v37 = v53;
  v38 = v54;
  v39 = v55;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  v35 = v51;
  v42 = v56[2];
  v43 = v56[3];
  v40 = v56[0];
  v41 = v56[1];
  v46 = v56[6];
  v47 = v56[7];
  v44 = v56[4];
  v45 = v56[5];
  v57[3] = v51;
  v57[2] = v50;
  v57[1] = v49;
  v57[0] = v48;
  v57[7] = v55;
  v57[6] = v54;
  v57[5] = v53;
  v57[4] = v52;
  if (sub_10074A978(v57) != 1)
  {
    v15[4] = v44;
    v15[5] = v45;
    v15[6] = v46;
    v15[7] = v47;
    v15[0] = v40;
    v15[1] = v41;
    v15[2] = v42;
    v15[3] = v43;
    if (sub_10074A978(v15) != 1)
    {
      v13[4] = v44;
      v13[5] = v45;
      v13[6] = v46;
      v13[7] = v47;
      v13[0] = v40;
      v13[1] = v41;
      v13[2] = v42;
      v13[3] = v43;
      v18 = v42;
      v19 = v43;
      v16 = v40;
      v17 = v41;
      v22 = v46;
      v23 = v47;
      v20 = v44;
      v21 = v45;
      v60 = v34;
      v61 = v35;
      v58 = v32;
      v59 = v33;
      v64 = v38;
      v65 = v39;
      v62 = v36;
      v63 = v37;
      sub_10000BE14(&v48, v14, &unk_101A09DE0);
      sub_10000BE14(v56, v14, &unk_101A09DE0);
      v11 = sub_100A71A74(&v58, &v16);
      sub_10000CAAC(v13, &unk_101A09DE0);
      sub_10000CAAC(v56, &unk_101A09DE0);
      sub_10000CAAC(&v48, &unk_101A09DE0);
      v14[4] = v36;
      v14[5] = v37;
      v14[6] = v38;
      v14[7] = v39;
      v14[0] = v32;
      v14[1] = v33;
      v14[2] = v34;
      v14[3] = v35;
      sub_10000CAAC(v14, &unk_101A09DE0);
      return v11 & 1;
    }

    goto LABEL_11;
  }

  v20 = v44;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v16 = v40;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  if (sub_10074A978(&v16) != 1)
  {
LABEL_11:
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    sub_10000CAAC(&v16, &qword_1019FDFA8);
    goto LABEL_12;
  }

  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  sub_10000CAAC(&v58, &unk_101A09DE0);
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_101279020()
{
  v0 = type metadata accessor for CRLBoardItemParentAffinity();
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v13 - v4;
  sub_1005B981C(&unk_101A226A0);
  sub_1005B981C(&qword_101A01F08);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v6 = sub_100749A60(v5, v3);
  sub_10127DC58(v3, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10127DC58(v5, type metadata accessor for CRLBoardItemParentAffinity);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v7 = v32;
  CRRegister.wrappedValue.getter();
  if (v7 != v32)
  {
    goto LABEL_12;
  }

  CRRegister.wrappedValue.getter();
  v8 = v32;
  CRRegister.wrappedValue.getter();
  if (v8 != v32)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  v9 = v32;
  CRRegister.wrappedValue.getter();
  if (v9 == v32)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_12:
      v11 = 0;
      return v11 & 1;
    }
  }

  sub_1005B981C(&unk_101A09DC0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v36 = v52;
  v37 = v53;
  v38 = v54;
  v39 = v55;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  v35 = v51;
  v42 = v56[2];
  v43 = v56[3];
  v40 = v56[0];
  v41 = v56[1];
  v46 = v56[6];
  v47 = v56[7];
  v44 = v56[4];
  v45 = v56[5];
  v57[3] = v51;
  v57[2] = v50;
  v57[1] = v49;
  v57[0] = v48;
  v57[7] = v55;
  v57[6] = v54;
  v57[5] = v53;
  v57[4] = v52;
  if (sub_10074A978(v57) != 1)
  {
    v15[4] = v44;
    v15[5] = v45;
    v15[6] = v46;
    v15[7] = v47;
    v15[0] = v40;
    v15[1] = v41;
    v15[2] = v42;
    v15[3] = v43;
    if (sub_10074A978(v15) != 1)
    {
      v13[4] = v44;
      v13[5] = v45;
      v13[6] = v46;
      v13[7] = v47;
      v13[0] = v40;
      v13[1] = v41;
      v13[2] = v42;
      v13[3] = v43;
      v18 = v42;
      v19 = v43;
      v16 = v40;
      v17 = v41;
      v22 = v46;
      v23 = v47;
      v20 = v44;
      v21 = v45;
      v60 = v34;
      v61 = v35;
      v58 = v32;
      v59 = v33;
      v64 = v38;
      v65 = v39;
      v62 = v36;
      v63 = v37;
      sub_10000BE14(&v48, v14, &unk_101A09DE0);
      sub_10000BE14(v56, v14, &unk_101A09DE0);
      v11 = sub_100A71A74(&v58, &v16);
      sub_10000CAAC(v13, &unk_101A09DE0);
      sub_10000CAAC(v56, &unk_101A09DE0);
      sub_10000CAAC(&v48, &unk_101A09DE0);
      v14[4] = v36;
      v14[5] = v37;
      v14[6] = v38;
      v14[7] = v39;
      v14[0] = v32;
      v14[1] = v33;
      v14[2] = v34;
      v14[3] = v35;
      sub_10000CAAC(v14, &unk_101A09DE0);
      return v11 & 1;
    }

    goto LABEL_11;
  }

  v20 = v44;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v16 = v40;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  if (sub_10074A978(&v16) != 1)
  {
LABEL_11:
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    sub_10000CAAC(&v16, &qword_1019FDFA8);
    goto LABEL_12;
  }

  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  sub_10000CAAC(&v58, &unk_101A09DE0);
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_101279554()
{
  qword_101AD94F8 = 97;
  unk_101AD9500 = 0xE100000000000000;
  qword_101AD9508 = swift_getKeyPath();
  unk_101AD9510 = 98;
  qword_101AD9518 = 0xE100000000000000;
  qword_101AD9520 = swift_getKeyPath();
  qword_101AD9528 = 99;
  qword_101AD9530 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9538 = result;
  return result;
}

uint64_t sub_1012795C8@<X0>(void *a1@<X8>)
{
  if (qword_1019F2BA8 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_101AD9500;
  v3 = qword_101AD9508;
  v2 = unk_101AD9510;
  v4 = qword_101AD9518;
  v5 = qword_101AD9520;
  v6 = qword_101AD9528;
  v7 = qword_101AD9530;
  v8 = qword_101AD9538;
  *a1 = qword_101AD94F8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_101279694(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_101279700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(a1 + 28)) = _swiftEmptyDictionarySingleton;
  *(a2 + *(type metadata accessor for CRLContainerItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_10127D39C(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  CRRegister.init(wrappedValue:)();
  return CRRegister.init(wrappedValue:)();
}

uint64_t sub_1012797F4(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A12068, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_101279860(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1012798DC()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_101279960()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_1012799DC()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_101279A58()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_101279AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_101279B68()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_101279BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101279C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_101279CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_101279D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_101279DFC()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_101279E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_101279EE4()
{
  sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_101279F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_10127A1EC(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_10127A268()
{
  qword_101AD9540 = 97;
  *algn_101AD9548 = 0xE100000000000000;
  qword_101AD9550 = swift_getKeyPath();
  unk_101AD9558 = 98;
  qword_101AD9560 = 0xE100000000000000;
  qword_101AD9568 = swift_getKeyPath();
  qword_101AD9570 = 99;
  qword_101AD9578 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9580 = result;
  return result;
}

uint64_t sub_10127A2DC@<X0>(void *a1@<X8>)
{
  if (qword_1019F2BB0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *algn_101AD9548;
  v3 = qword_101AD9550;
  v2 = unk_101AD9558;
  v4 = qword_101AD9560;
  v5 = qword_101AD9568;
  v6 = qword_101AD9570;
  v7 = qword_101AD9578;
  v8 = qword_101AD9580;
  *a1 = qword_101AD9540;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_10127A3A8(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_10127A414@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *(a2 + a1[7]) = _swiftEmptyDictionarySingleton;
  UUID.init()();
  (*(v5 + 16))(v7, v10, v4);
  CRRegister.init(wrappedValue:)();
  (*(v5 + 8))(v10, v4);
  sub_101278694(a2 + a1[5]);
  v11 = a2 + a1[6];
  sub_100FED700(v11);
  *(v11 + *(type metadata accessor for CRLShapeItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  result = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  *(v11 + *(result + 20)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_10127A590(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A30360, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_10127A5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_10127A678()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_10127A6FC()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_10127A778()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_10127A7F4()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_10127A888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_10127A904()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_10127A980(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10127AA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10127AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_10127AB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_10127AB98()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_10127AC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_10127AC80()
{
  sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_10127AD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_10127AF88(uint64_t a1)
{
  v2 = sub_10127D39C(&qword_101A1F618, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_10127B004@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_101AD9588;
  swift_beginAccess();
  return sub_10127DCB8(v1 + v3, a1, type metadata accessor for CRLContainerItemCRDTData);
}

void (*sub_10127B070(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for CRLContainerItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = qword_101AD9588;
  v4[11] = v6;
  v4[12] = v8;
  swift_beginAccess();
  sub_10127DCB8(v1 + v8, v7, type metadata accessor for CRLContainerItemCRDTData);
  return sub_10127B17C;
}

void sub_10127B17C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_10127DCB8(*(*a1 + 88), v5, type metadata accessor for CRLContainerItemCRDTData);
    swift_beginAccess();
    sub_10127DD20(v5, v6 + v4);
    swift_endAccess();
    sub_10127DC58(v5, type metadata accessor for CRLContainerItemCRDTData);
  }

  else
  {
    swift_beginAccess();
    sub_10127DD20(v3, v6 + v4);
    swift_endAccess();
  }

  sub_10127DC58(v3, type metadata accessor for CRLContainerItemCRDTData);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_10127B2A0()
{
  v0 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v0);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for MergeResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLFreehandItemData(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = qword_101AD9588;
    v9 = result;
    swift_beginAccess();
    sub_10127DCB8(v9 + v8, v2, type metadata accessor for CRLFreehandDrawingCRDTData);
    swift_beginAccess();
    sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

    CRStruct_3.merge(_:)();
    sub_10127DC58(v2, type metadata accessor for CRLFreehandDrawingCRDTData);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t *sub_10127B4B8(char a1)
{
  v3 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33 = &v30 - v9;
  v10 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  v22 = *(*v1 + 736);
  swift_beginAccess();
  if (a1)
  {
    v31 = v5;
    sub_10000BE14(v1 + v22, v18, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v18, &unk_101A226A0);
    v23 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v1 + v23, v7, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127D39C(&qword_101A12068, type metadata accessor for CRLFreehandDrawingCRDTData);
    CRType.copy(renamingReferences:)();
    sub_10127DC58(v7, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  else
  {
    sub_10000BE14(v1 + v22, v21, &unk_101A226A0);
    v24 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v1 + v24, v33, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  sub_10000BE14(v21, v18, &unk_101A226A0);
  v31 = v21;
  v25 = v33;
  sub_10127DCB8(v33, v7, type metadata accessor for CRLFreehandDrawingCRDTData);
  v26 = *(v1 + 40);
  v34[0] = *(v1 + 24);
  v34[1] = v26;
  v35 = *(v1 + 56);
  v30 = *(v1 + 16);
  type metadata accessor for CRLFreehandItemData(0);
  v27 = swift_allocObject();
  sub_10127DCB8(v7, v27 + qword_101AD9588, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10000BE14(v18, v15, &unk_101A226A0);
  v28 = v32;
  sub_10127DCB8(v7, v32, type metadata accessor for CRLContainerItemCRDTData);
  sub_10127DCB8(v28, v27 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000BE14(v15, v12, &unk_101A226A0);
  sub_10000BE14(v12, v27 + *(*v27 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v12, &unk_101A226A0);
  sub_10127DC58(v28, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v15, &unk_101A226A0);
  sub_10127DC58(v7, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10000CAAC(v18, &unk_101A226A0);
  sub_10127DC58(v25, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10000CAAC(v31, &unk_101A226A0);
  return sub_100747AF0(v34, v30);
}

uint64_t sub_10127BA20()
{
  v1 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v38 = type metadata accessor for UUID();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  type metadata accessor for CRLFreehandItemData(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v36 = v6;
  v37 = v3;
  v21 = *(*v0 + 736);
  swift_beginAccess();
  v35 = v0;
  sub_10000BE14(v0 + v21, v18, &unk_101A226A0);
  v22 = *(*v20 + 736);
  swift_beginAccess();
  sub_10000BE14(v20 + v22, v15, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v23 = static UUID.== infix(_:_:)();
  v24 = *(v7 + 8);
  v25 = v38;
  v24(v9, v38);
  v24(v12, v25);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v15, &unk_101A226A0);
    sub_10000CAAC(v18, &unk_101A226A0);
LABEL_7:
    v33 = 0;
    return v33 & 1;
  }

  v26 = sub_101279020();
  sub_10000CAAC(v15, &unk_101A226A0);
  sub_10000CAAC(v18, &unk_101A226A0);
  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = qword_101AD9588;
  v28 = v35;
  swift_beginAccess();
  v29 = v28 + v27;
  v30 = v36;
  sub_10127DCB8(v29, v36, type metadata accessor for CRLFreehandDrawingCRDTData);
  v31 = qword_101AD9588;
  swift_beginAccess();
  v32 = v37;
  sub_10127DCB8(v20 + v31, v37, type metadata accessor for CRLFreehandDrawingCRDTData);
  v33 = sub_10127D92C();

  sub_10127DC58(v32, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10127DC58(v30, type metadata accessor for CRLFreehandDrawingCRDTData);
  return v33 & 1;
}

uint64_t sub_10127BE58(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = qword_101AD9588;
  swift_beginAccess();
  if (a2)
  {
    sub_10127DCB8(v2 + v10, v6, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127D39C(&qword_101A12068, type metadata accessor for CRLFreehandDrawingCRDTData);
    CRType.copy(renamingReferences:)();
    sub_10127DC58(v6, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  else
  {
    sub_10127DCB8(v2 + v10, v9, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_10127D39C(&qword_101A12920, type metadata accessor for CRLFreehandDrawingCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_10127DC58(v9, type metadata accessor for CRLFreehandDrawingCRDTData);
  return v12;
}

uint64_t sub_10127C0A8()
{
  v1 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  type metadata accessor for CRLFreehandItemData(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v0 + v9, v6, type metadata accessor for CRLFreehandDrawingCRDTData);
    v10 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v8 + v10, v3, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);
    v11 = CRStruct_3.hasDelta(from:)();
    sub_10127DC58(v3, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127DC58(v6, type metadata accessor for CRLFreehandDrawingCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10127C2A8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_101A303D0);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v2 + v15, v7, type metadata accessor for CRLFreehandDrawingCRDTData);
    v16 = qword_101AD9588;
    swift_beginAccess();
    sub_10127DCB8(v14 + v16, v4, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);

    CRStruct_3.delta(_:from:)();
    sub_10127DC58(v4, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_10127DC58(v7, type metadata accessor for CRLFreehandDrawingCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_101A303D0);
    v18 = sub_1005B981C(&qword_101A303B0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_101A303D0);

      sub_10000CAAC(v17, &qword_101A303D0);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_101A303A8, &qword_101A303B0);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_101A303D0);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_101A303D0);

        (*(v19 + 8))(v17, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10127C75C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A303B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A303A8, &qword_101A303B0);
  v11 = v33;
  PartialCRDT.init(serializedData:)();
  if (!v11)
  {
    v29 = v6;
    v30 = v8;
    v33 = 0;
    v13 = v31;
    v12 = v32;
    swift_beginAccess();
    type metadata accessor for CRLFreehandDrawingCRDTData(0);
    sub_10127D39C(&qword_101A303C8, type metadata accessor for CRLFreehandDrawingCRDTData);
    LOBYTE(v6) = CRStruct_3.merge(delta:)();
    swift_endAccess();
    if ((v6 & 1) == 0)
    {
      v28 = v10;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v15 = *(*v12 + 744);
      swift_beginAccess();
      v16 = v12 + v15;
      v17 = v29;
      (*(v13 + 16))(v29, v16, v4);
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v13 + 8))(v17, v4);
      *(inited + 56) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 64) = v21;
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v34 = v12;
      type metadata accessor for CRLFreehandItemData(0);

      v22 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v21;
      *(inited + 72) = v22;
      *(inited + 80) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v24, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v10 = v28;
    }

    (*(v30 + 8))(v10, v7);
  }

  return v6 & 1;
}

unint64_t sub_10127CB60()
{
  v1 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10073CD20();
  v5 = qword_101AD9588;
  swift_beginAccess();
  sub_10127DCB8(v0 + v5, v3, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_10127DC58(v3, type metadata accessor for CRLFreehandDrawingCRDTData);
  v6 = 0x3000000000000;
  if (v4 > 0x3000000000000)
  {
    v6 = v4;
  }

  if (v8[7])
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10127CC80(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_101A28650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v10 = qword_101AD9588;
    v7 = swift_beginAccess();
    v9[1] = v9;
    __chkstk_darwin(v7);
    v9[-2] = a1;
    type metadata accessor for UUID();
    v11 = CROrderedSet.map<A>(_:)();
    sub_1005B981C(&qword_101A0A360);
    sub_10127D39C(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&unk_101A09E20, &qword_101A0A360);
    CROrderedSet.init<A>(_:)();
    (*(v4 + 40))(v1 + v10, v6, v3);
    swift_endAccess();
  }

  return sub_100D5EFEC(a1);
}

uint64_t sub_10127CF10()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10127DC58(v0 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  sub_10127DC58(v0 + qword_101AD9588, type metadata accessor for CRLFreehandDrawingCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_10127D050()
{
  result = type metadata accessor for CRLFreehandDrawingCRDTData(319);
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

void sub_10127D128()
{
  type metadata accessor for CRLContainerItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_101202210();
    if (v1 <= 0x3F)
    {
      sub_100039F68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10127D20C()
{
  sub_10007DE30();
  if (v0 <= 0x3F)
  {
    sub_10127D2C0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRLFreehandDrawingShapeCRDTData(319);
      if (v2 <= 0x3F)
      {
        sub_100039F68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10127D2C0()
{
  if (!qword_101A30310)
  {
    type metadata accessor for CRLShapeItemParentAffinity(255);
    sub_10127D39C(&unk_101A30318, type metadata accessor for CRLShapeItemParentAffinity);
    v0 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
    if (!v1)
    {
      atomic_store(v0, &qword_101A30310);
    }
  }
}

uint64_t sub_10127D39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10127D92C()
{
  type metadata accessor for UUID();
  sub_10127D39C(&qword_1019FB870, &type metadata accessor for UUID);
  if ((static CROrderedSet.== infix(_:_:)() & 1) != 0 && (type metadata accessor for CRLFreehandDrawingCRDTData(0), sub_1005B981C(&qword_101A2C810), CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v5 == v4))
  {
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.getter();
    v0 = v3 ^ v2 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL sub_10127DA64()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  v10 = (v7 & 1) != 0 && (v12[1] = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0), CRRegister.wrappedValue.getter(), CRRegister.wrappedValue.getter(), v9 = static UUID.== infix(_:_:)(), v8(v3, v0), v8(v6, v0), (v9 & 1) != 0) && (sub_101278AEC() & 1) != 0 && sub_100FEDCD8();
  return v10;
}

uint64_t sub_10127DC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10127DCB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10127DD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLContainerItemCRDTData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10127DD8C()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD9590);
  sub_1005EB3DC(v10, qword_101AD9590);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10127E078()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v78 = v56 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v68 = v56 - v3;
  v71 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v71 - 8);
  __chkstk_darwin(v71);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  __chkstk_darwin(v13);
  sub_1005B981C(&qword_101A30440);
  v15 = sub_1005B981C(&qword_101A14738);
  v67 = v15;
  v16 = *(v15 - 8);
  v72 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v60 = 8 * v72;
  v18 = swift_allocObject();
  v61 = v18;
  *(v18 + 16) = xmmword_1014AEA50;
  v19 = (v18 + v17);
  v59 = *(v15 + 48);
  *v19 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v73 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v4 + 104);
  v75 = v4 + 104;
  v62 = v6;
  v20(v6);
  v63 = v20;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69 = *(v77 + 56);
  v77 += 56;
  v21 = v68;
  v69(v68, 1, 1, v76);
  v74 = type metadata accessor for DisplayRepresentation.Image();
  v22 = *(v74 - 8);
  v64 = *(v22 + 56);
  v66 = v22 + 56;
  v64(v78, 1, 1, v74);
  v70 = v19;
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = v72;
  v59 = *(v67 + 48);
  v19[v72] = 1;
  String.LocalizationValue.init(stringLiteral:)();
  v65 = v9;
  static Locale.current.getter();
  v24 = v71;
  (v20)(v62, v73, v71);
  v25 = v12;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v69;
  v69(v21, 1, 1, v76);
  v27 = v64;
  v64(v78, 1, 1, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
  v59 = 2 * v23;
  v28 = v70;
  v57 = &v70[2 * v23];
  v58 = *(v67 + 48);
  *v57 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v73;
  v30 = v24;
  v31 = v63;
  (v63)(v62, v73, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26(v68, 1, 1, v76);
  v27(v78, 1, 1, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = v72;
  v58 = &v28[v59 + v72];
  v33 = v67;
  v59 = *(v67 + 48);
  *v58 = 3;
  v34 = v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v62;
  v36 = v71;
  v31(v62, v29, v71);
  v37 = v34;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = v69;
  v69(v68, 1, 1, v76);
  v39 = v74;
  v64(v78, 1, 1, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
  v59 = 4 * v32;
  v58 = *(v33 + 48);
  v70[4 * v32] = 4;
  v56[1] = v37;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v73;
  (v63)(v35, v73, v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41 = v76;
  v38(v68, 1, 1, v76);
  v42 = v39;
  v43 = v64;
  v64(v78, 1, 1, v42);
  DisplayRepresentation.init(title:subtitle:image:)();
  v44 = v70;
  v58 = &v70[v59 + v72];
  v59 = *(v67 + 48);
  *v58 = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = v35;
  v46 = v63;
  (v63)(v45, v40, v71);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v47 = v68;
  v69(v68, 1, 1, v41);
  v43(v78, 1, 1, v74);
  v48 = v47;
  DisplayRepresentation.init(title:subtitle:image:)();
  v49 = v67;
  v59 = *(v67 + 48);
  v44[6 * v72] = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = v62;
  (v46)(v62, v73, v71);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69(v48, 1, 1, v76);
  v51 = v78;
  v52 = v64;
  v64(v78, 1, 1, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
  v53 = &v70[v60 - v72];
  v72 = *(v49 + 48);
  *v53 = 7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v63)(v50, v73, v71);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69(v48, 1, 1, v76);
  v52(v51, 1, 1, v74);
  DisplayRepresentation.init(title:subtitle:image:)();
  v54 = sub_100BDA43C(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD95A8 = v54;
  return result;
}

unint64_t sub_10127ECC4()
{
  result = qword_101A303D8;
  if (!qword_101A303D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A303D8);
  }

  return result;
}

unint64_t sub_10127ED34@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10127F668(*a1);
  *a2 = result;
  return result;
}

void sub_10127ED64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6B63616C62;
  v5 = 0xE300000000000000;
  v6 = 6579570;
  if (v2 != 6)
  {
    v6 = 0x776F6C6C6579;
    v5 = 0xE600000000000000;
  }

  v7 = 0x65676E61726FLL;
  if (v2 != 4)
  {
    v7 = 0x656C70727570;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 2036429415;
  if (v2 != 2)
  {
    v9 = 0x6E65657267;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 1702194274;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10127EE38()
{
  result = qword_101A303E0;
  if (!qword_101A303E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A303E0);
  }

  return result;
}

unint64_t sub_10127EE90()
{
  result = qword_101A303E8;
  if (!qword_101A303E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A303E8);
  }

  return result;
}

unint64_t sub_10127EEE8()
{
  result = qword_101A303F0;
  if (!qword_101A303F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A303F0);
  }

  return result;
}

unint64_t sub_10127EF40()
{
  result = qword_101A303F8;
  if (!qword_101A303F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A303F8);
  }

  return result;
}

unint64_t sub_10127EF94()
{
  result = qword_101A30400;
  if (!qword_101A30400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30400);
  }

  return result;
}

unint64_t sub_10127EFEC()
{
  result = qword_101A30408;
  if (!qword_101A30408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30408);
  }

  return result;
}

uint64_t sub_10127F040@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2BB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD9590);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10127F138(uint64_t a1)
{
  v2 = sub_10122DF08();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10127F188()
{
  result = qword_101A30410;
  if (!qword_101A30410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30410);
  }

  return result;
}

unint64_t sub_10127F1E0()
{
  result = qword_101A30418;
  if (!qword_101A30418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30418);
  }

  return result;
}

unint64_t sub_10127F238()
{
  result = qword_101A30420;
  if (!qword_101A30420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30420);
  }

  return result;
}

uint64_t sub_10127F28C()
{
  if (qword_1019F2BC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10127F2E8(uint64_t a1)
{
  v2 = sub_10127EFEC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10127F338()
{
  result = qword_101A30428;
  if (!qword_101A30428)
  {
    sub_1005C4E5C(&qword_101A30430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30428);
  }

  return result;
}

unint64_t sub_10127F3B0()
{
  result = qword_101A30438;
  if (!qword_101A30438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30438);
  }

  return result;
}

uint64_t sub_10127F41C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (qword_1019F1860 != -1)
        {
          swift_once();
        }

        v1 = &qword_101AD6A70;
      }

      else
      {
        if (qword_1019F1870 != -1)
        {
          swift_once();
        }

        v1 = &qword_101AD6A80;
      }
    }

    else if (a1 == 4)
    {
      if (qword_1019F1868 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD6A78;
    }

    else
    {
      if (qword_1019F1858 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD6A68;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_1019F1838 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD6A48;
    }

    else
    {
      if (qword_1019F1878 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD6A88;
    }
  }

  else if (a1)
  {
    if (qword_1019F1888 != -1)
    {
      swift_once();
    }

    v1 = &qword_101AD6A98;
  }

  else
  {
    if (qword_1019F1840 != -1)
    {
      swift_once();
    }

    v1 = &qword_101AD6A50;
  }

  return *v1;
}

unint64_t sub_10127F668(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10187A220, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

char *sub_10127F6FC(uint64_t a1)
{
  v1[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_canCenter] = 1;
  v1[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_isVertical] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_hudHeight] = 0x404B800000000000;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLWPEditMenuController();
  v3 = objc_msgSendSuper2(&v6, "init");
  v4 = *&v3[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc];
  *&v3[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc] = a1;

  return v3;
}

id sub_10127F7CC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath);
  *(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath) = a1;
  v3 = a1;

  result = *(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc);
  if (result)
  {
    result = [result layerHost];
    if (result)
    {
      v5 = result;
      if ([result respondsToSelector:"asUIKitHost"])
      {
        v6 = [v5 asUIKitHost];
        result = swift_unknownObjectRelease();
        if (!v6)
        {
          return result;
        }

        [v6 showEditUIForSelectionPath:v3];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10127F918()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath);
  *(v0 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath) = 0;

  result = *(v0 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc);
  if (result)
  {
    result = [result layerHost];
    if (result)
    {
      v3 = result;
      if ([result respondsToSelector:"asUIKitHost"])
      {
        v4 = [v3 asUIKitHost];
        result = swift_unknownObjectRelease();
        if (!v4)
        {
          return result;
        }

        [v4 hideEditMenu];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10127FA2C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_icc);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  v6 = [v5 selectionModelTranslator];
  if (!v6 || (v7 = v6, v8 = [v6 infoForSelectionPath:a1], v7, !v8))
  {
LABEL_13:

    return;
  }

  type metadata accessor for CRLWPStorage();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    swift_unknownObjectRelease();
    return;
  }

  v10 = v9;
  v11 = *(v1 + v2);
  if (!v11 || (v12 = [v11 layoutForInfo:v10]) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for CRLWPLayout();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    [v14 rectInRootForSelectionPath:a1];
    [v5 convertUnscaledToBoundsRect:?];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v5 visibleBoundsRect];
    v47.origin.x = v23;
    v47.origin.y = v24;
    v47.size.width = v25;
    v47.size.height = v26;
    v42.origin.x = v16;
    v42.origin.y = v18;
    v42.size.width = v20;
    v42.size.height = v22;
    v43 = CGRectIntersection(v42, v47);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if (*(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_canCenter) == 1)
    {
      MidX = CGRectGetMidX(v43);
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v45.origin.y = CGRectGetMinY(v44);
      v45.size.width = 0.0;
      v45.origin.x = MidX;
      v45.size.height = height;
      v46 = CGRectInset(v45, -0.5, -0.5);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
    }

    v32 = x;
    v33 = y;
    v34 = width;
    v35 = height;
    if (*(v1 + OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_isVertical) == 1)
    {
      v36 = CGRectGetWidth(*&v32);
    }

    else
    {
      v36 = CGRectGetHeight(*&v32);
    }

    v37 = sub_10127FDD0(v36);
    v38 = y;
    v39 = x;
    v40 = width;
    v41 = height;
    if (v37)
    {
      v39 = CGRectNull.origin.x;
      v38 = CGRectNull.origin.y;
      v40 = CGRectNull.size.width;
      v41 = CGRectNull.size.height;
    }

    CGRectIsNull(*&v39);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_10127FD2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPEditMenuController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_10127FDF0()
{
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment] = 4;
  v1 = &v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_decimalTab];
  *v1 = 46;
  v1[1] = 0xE100000000000000;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_defaultTabStops] = 1108344832;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphFill] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_firstLineIndent] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_followingParagraphStyle] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_hyphenate] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_initialListStyle] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_keepLinesTogether] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_keepWithNext] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_leftIndent] = 0;
  v2 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_lineSpacing;
  *&v0[v2] = [objc_allocWithZone(CRLWPLineSpacing) init];
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_outlineLevel] = -1;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_outlineStyleType] = 0;
  v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_pageBreakBefore] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphBorders] = 0;
  v3 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphRuleOffset;
  *&v0[v3] = [objc_allocWithZone(CRLWPRuleOffset) init];
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphRuleWidth] = 1065353216;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_rightIndent] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_spaceBefore] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_spaceAfter] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphStroke] = 0;
  v4 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_tabs;
  *&v0[v4] = [objc_allocWithZone(CRLWPTabs) init];
  v0[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_widowControl] = 1;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for CRLWPParagraphStyle();
  v5 = objc_msgSendSuper2(&v23, "init");
  v6 = &v5[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift];
  *v6 = 0;
  v6[4] = 0;
  v5[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization];
  *v7 = 0;
  v7[8] = 0;
  v5[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalizationUsesLinguistics] = 0;
  v8 = objc_opt_self();
  v9 = v5;
  v10 = [v8 blackColor];
  v11 = *&v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill];
  *&v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill] = v10;

  v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFillShouldFillTextContainer] = 0;
  *&v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName] = xmmword_1014D8800;

  *&v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontFeatures] = 0;

  v12 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize];
  *v12 = 1094713344;
  v12[4] = 0;
  v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_isNamedPointSize] = 0;
  v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic] = 0;
  v13 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_kerning];
  *v13 = 0;
  v13[4] = 0;
  v14 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures];
  *v14 = 0;
  v14[4] = 0;
  v15 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethruWidth];
  *v16 = 1065353216;
  v16[4] = 0;
  v17 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript];
  *v17 = 0;
  v17[8] = 0;
  v18 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking];
  *v18 = 0;
  v18[4] = 0;
  v19 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth];
  *v20 = 1065353216;
  v20[4] = 0;
  v21 = &v9[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection];
  *v21 = -1;
  v21[8] = 0;

  return v9;
}

id sub_1012801E8(uint64_t a1)
{
  switch(a1)
  {
    case 29:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment;
      return [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2)];
    case 30:

      v4 = String._bridgeToObjectiveC()();

      goto LABEL_8;
    case 31:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_defaultTabStops;
      goto LABEL_37;
    case 32:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphFill);
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_4;
    case 33:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_firstLineIndent;
      goto LABEL_37;
    case 34:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_followingParagraphStyle);
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_4;
    case 35:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_hyphenate;
      goto LABEL_39;
    case 36:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_initialListStyle);
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_4;
    case 37:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_keepLinesTogether;
      goto LABEL_39;
    case 38:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_keepWithNext;
      goto LABEL_39;
    case 39:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_leftIndent;
      goto LABEL_37;
    case 40:
      v4 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_lineSpacing);
      goto LABEL_7;
    case 41:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_outlineLevel;
      return [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2)];
    case 42:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_outlineStyleType;
      return [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2)];
    case 43:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_pageBreakBefore;
      goto LABEL_39;
    case 44:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphBorders;
      return [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2)];
    case 45:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphRuleOffset);
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    case 46:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphRuleWidth;
      goto LABEL_37;
    case 47:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_rightIndent;
      goto LABEL_37;
    case 48:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_spaceAfter;
      goto LABEL_37;
    case 49:
      v8 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_spaceBefore;
LABEL_37:
      v10 = *(v1 + v8);
      v11 = objc_allocWithZone(NSNumber);
      LODWORD(v12) = v10;
      return [v11 initWithFloat:v12];
    case 50:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphStroke);
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_4;
    case 51:
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_tabs);
      if (v3)
      {
LABEL_4:
        v4 = v3;
LABEL_7:
        v6 = v4;
LABEL_8:
        result = v4;
      }

      else
      {
LABEL_18:
        result = 0;
      }

      break;
    case 52:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_widowControl;
LABEL_39:
      result = [objc_allocWithZone(NSNumber) initWithBool:*(v1 + v5)];
      break;
    case 53:
      v9 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      if (!v9 || (result = [v9 referenceColor]) == 0)
      {
        result = [objc_opt_self() blackColor];
      }

      break;
    default:

      result = sub_100D661E4(a1);
      break;
  }

  return result;
}

uint64_t sub_1012804DC(uint64_t a1)
{
  sub_100601584(a1, v14);
  if (!v15)
  {
    sub_1005E09AC(v14);
    return 0;
  }

  type metadata accessor for CRLWPParagraphStyle();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment) != *&v13[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment])
  {
    goto LABEL_17;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_decimalTab) == *&v13[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_decimalTab] && *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_decimalTab + 8) == *&v13[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_decimalTab + 8];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_defaultTabStops) != *&v13[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_defaultTabStops])
  {
    goto LABEL_17;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphFill);
  v4 = *&v13[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_paragraphFill];
  if (v3)
  {
    if (v4)
    {
      sub_100CE5068();
      v5 = v4;
      v6 = v3;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

  if (v4)
  {
LABEL_17:

    return 0;
  }

LABEL_13:
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection);
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8);
  v10 = *&v13[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection];
  v11 = v13[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8];

  result = v11;
  if ((v9 & 1) == 0)
  {
    return (v8 == v10) & ~v11;
  }

  return result;
}

void sub_1012806D4()
{

  v5 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_followingParagraphStyle);
  *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_followingParagraphStyle) = 0;
  v1 = v5;
  v2 = v5;
  if (v5)
  {
    while (1)
    {
      v6 = v2;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v3 = *&v6[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_followingParagraphStyle];
      v4 = v3;

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v6;
  }

LABEL_6:
}

id sub_1012807DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPParagraphStyle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101280A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101280D4C();
  v7 = sub_101280CF8();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101280A70()
{
  sub_101280D4C();
  sub_100695068();
  return CRValue<>.init(from:)();
}

uint64_t sub_101280ADC()
{
  sub_101280D4C();
  sub_100695068();
  return CRValue<>.encode(to:)();
}

uint64_t sub_101280B38(uint64_t a1)
{
  v2 = sub_101280D4C();
  v3 = sub_100695068();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_101280BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100695068();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_101280C48()
{
  result = qword_101A30580;
  if (!qword_101A30580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30580);
  }

  return result;
}

unint64_t sub_101280CA0()
{
  result = qword_101A30588;
  if (!qword_101A30588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30588);
  }

  return result;
}

unint64_t sub_101280CF8()
{
  result = qword_101A30590;
  if (!qword_101A30590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30590);
  }

  return result;
}

unint64_t sub_101280D4C()
{
  result = qword_101A30598;
  if (!qword_101A30598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30598);
  }

  return result;
}

id sub_101280E14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLGenerativePlaygroundAvailabilityHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_101280E6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019F6268);
  v5 = __chkstk_darwin(v4 - 8);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = type metadata accessor for CRLBoardEntity();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = &v41 - v13;
  v14 = type metadata accessor for CRLBoardIdentifier(0) - 8;
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return _swiftEmptyArrayStorage;
  }

  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v43 = *(v15 + 72);
  v50 = (v10 + 56);
  v46 = v10;
  v20 = (v10 + 48);
  v48 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _swiftEmptyArrayStorage;
  v44 = v8;
  while (1)
  {
    sub_10000C974(v19, v17, type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v21 = *(v2 + 120);
    if (*(v21 + 16) && (v22 = sub_1000486F0(v17), (v23 & 1) != 0))
    {
      sub_10000C974(*(v21 + 56) + *(v46 + 72) * v22, v47, type metadata accessor for CRLBoardEntity);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = *v50;
    v26 = v47;
    (*v50)(v47, v24, 1, v9);
    swift_endAccess();
    v27 = *v20;
    v28 = (*v20)(v26, 1, v9);
    sub_10000CAAC(v26, &qword_1019F6268);
    if (v28 == 1)
    {
      break;
    }

    swift_beginAccess();
    v29 = *(v2 + 120);
    if (*(v29 + 16))
    {
      v30 = sub_1000486F0(v48);
      v31 = v44;
      if (v32)
      {
        sub_10000C974(*(v29 + 56) + *(v46 + 72) * v30, v44, type metadata accessor for CRLBoardEntity);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }
    }

    else
    {
      v33 = 1;
      v31 = v44;
    }

    v25(v31, v33, 1, v9);
    swift_endAccess();
    v17 = v48;
    sub_1012820A0(v48, type metadata accessor for CRLBoardIdentifier);
    if (v27(v31, 1, v9) == 1)
    {
      sub_10000CAAC(v31, &qword_1019F6268);
    }

    else
    {
      v34 = v42;
      sub_100688FA0(v31, v42);
      sub_100688FA0(v34, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_100B36C5C(0, v49[2] + 1, 1, v49);
      }

      v36 = v49[2];
      v35 = v49[3];
      if (v36 >= v35 >> 1)
      {
        v49 = sub_100B36C5C(v35 > 1, v36 + 1, 1, v49);
      }

      v37 = v49;
      v49[2] = v36 + 1;
      sub_100688FA0(v45, v37 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v36);
    }

    v19 += v43;
    if (!--v18)
    {
      return v49;
    }
  }

  type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError();
  sub_10128214C();
  swift_allocError();
  v38 = v48;
  sub_10000C974(v48, v39, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1012820A0(v38, type metadata accessor for CRLBoardIdentifier);

  return v49;
}

uint64_t sub_1012813BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v38 = a2;
  v6 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v6 - 8);
  v37 = &v34 - v7;
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = __chkstk_darwin(v11 - 8);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v36 = a1;
  sub_10000C974(a1, &v34 - v14, type metadata accessor for CRLBoardIdentifier);
  swift_beginAccess();
  v16 = *(v3 + 120);
  if (*(v16 + 16) && (v17 = sub_1000486F0(v15), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    v21 = type metadata accessor for CRLBoardEntity();
    v22 = *(v21 - 8);
    v35 = a3;
    v23 = v22;
    sub_10000C974(v20 + *(v22 + 72) * v19, v10, type metadata accessor for CRLBoardEntity);
    (*(v23 + 56))(v10, 0, 1, v21);
    a3 = v35;
  }

  else
  {
    v21 = type metadata accessor for CRLBoardEntity();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  }

  swift_endAccess();
  type metadata accessor for CRLBoardEntity();
  v24 = *(*(v21 - 8) + 48);
  v25 = v24(v10, 1, v21);
  sub_10000CAAC(v10, &qword_1019F6268);
  if (v25 == 1)
  {
    type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError();
    sub_10128214C();
    swift_allocError();
    sub_10000C974(v15, v26, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = v15;
  }

  else
  {
    v28 = v40;
    sub_10000C974(v15, v40, type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v29 = sub_101125660(v39, v28);
    if (v24(v30, 1, v21))
    {
      (v29)(v39, 0);
      swift_endAccess();
    }

    else
    {
      v31 = v37;
      sub_10000C974(v36, v37, _s5BoardVMa);
      v32 = _s5BoardVMa(0);
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      sub_1008E4BDC(v31, v38, a3);
      (v29)(v39, 0);
      swift_endAccess();
      sub_10000CAAC(v31, &unk_1019FA3E0);
    }

    sub_1012820A0(v40, type metadata accessor for CRLBoardIdentifier);
    v27 = v15;
  }

  return sub_1012820A0(v27, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1012818A0()
{
  swift_unknownObjectWeakDestroy();

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1012818E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v59 - v7;
  v8 = _s5BoardVMa(0);
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6268);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  v18 = __chkstk_darwin(v17 - 8);
  v77 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v69 = a1;
  sub_10000C974(a1, &v59 - v20, type metadata accessor for CRLBoardIdentifier);
  swift_beginAccess();
  v22 = *(v2 + 120);
  if (*(v22 + 16) && (v23 = sub_1000486F0(v21), (v24 & 1) != 0))
  {
    v25 = v23;
    *&v74 = v21;
    v26 = *(v22 + 56);
    v27 = type metadata accessor for CRLBoardEntity();
    v28 = *(v27 - 1);
    v68 = v8;
    v29 = v10;
    v30 = v2;
    v31 = v28;
    v32 = v26 + *(v28 + 72) * v25;
    v21 = v74;
    sub_10000C974(v32, v16, type metadata accessor for CRLBoardEntity);
    (*(v31 + 56))(v16, 0, 1, v27);
    v2 = v30;
    v10 = v29;
    v8 = v68;
  }

  else
  {
    v27 = type metadata accessor for CRLBoardEntity();
    (*(*(v27 - 1) + 56))(v16, 1, 1, v27);
  }

  swift_endAccess();
  type metadata accessor for CRLBoardEntity();
  v68 = *(v27 - 1);
  v33 = (*(v68 + 48))(v16, 1, v27);
  sub_10000CAAC(v16, &qword_1019F6268);
  if (v33 == 1)
  {
    sub_10000C974(v21, v77, type metadata accessor for CRLBoardIdentifier);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10000C974(v69, v10, _s5BoardVMa);
    v69 = v2;
    v34 = v27[5];
    sub_1005B981C(&qword_101A07610);
    v66 = EntityProperty<>.init()();
    *&v14[v34] = v66;
    v35 = v27[6];
    sub_1005B981C(&qword_101A07618);
    v67 = EntityProperty<>.init()();
    *&v14[v35] = v67;
    v36 = v27[7];
    v59 = EntityProperty<>.init()();
    *&v14[v36] = v59;
    v37 = v27[8];
    sub_1005B981C(&qword_101A07620);
    v63 = EntityProperty<>.init()();
    *&v14[v37] = v63;
    v38 = v27[9];
    v64 = EntityProperty<>.init()();
    *&v14[v38] = v64;
    v39 = v27[10];
    v65 = EntityProperty<>.init()();
    *&v14[v39] = v65;
    v40 = &v14[v27[12]];
    v74 = xmmword_101486780;
    *v40 = xmmword_101486780;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    sub_10000C974(v10, v14, type metadata accessor for CRLBoardIdentifier);
    v41 = v14;
    v61 = v14;
    v42 = *(v8 + 32);
    v43 = sub_101303CCC();
    v45 = v44;

    v46 = &v41[v27[11]];
    *v46 = v43;
    v46[1] = v45;
    sub_100025870(*v40, *(v40 + 1));
    *v40 = v74;
    v47 = v8;
    v49 = v72;
    v48 = v73;
    *&v74 = v21;
    v50 = *(v72 + 16);
    v60 = v27;
    v51 = v70;
    v50(v70, &v10[v42], v73);
    v52 = v71;
    v50(v71, v51, v48);
    EntityProperty.wrappedValue.setter();
    v72 = *(v49 + 8);
    (v72)(v51, v48);
    v53 = &v10[v47[6]];
    v54 = *(v53 + 1);
    v75 = *v53;
    v76 = v54;

    EntityProperty.wrappedValue.setter();
    v50(v51, &v10[v47[7]], v48);
    v50(v52, v51, v48);
    EntityProperty.wrappedValue.setter();
    (v72)(v51, v48);
    LOBYTE(v75) = v10[v47[14]];
    EntityProperty.wrappedValue.setter();
    LOBYTE(v75) = v10[v47[11]];
    EntityProperty.wrappedValue.setter();
    LOBYTE(v75) = v10[v47[12]];
    EntityProperty.wrappedValue.setter();

    sub_1012820A0(v10, _s5BoardVMa);
    v55 = v61;
    (*(v68 + 56))(v61, 0, 1, v60);
    swift_beginAccess();
    sub_100BC2E08(v55, v77);
    swift_endAccess();
    v56 = v74;
  }

  else
  {
    type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError();
    sub_10128214C();
    swift_allocError();
    sub_10000C974(v21, v57, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v56 = v21;
  }

  return sub_1012820A0(v56, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_1012820A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError()
{
  result = qword_101A306E8;
  if (!qword_101A306E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10128214C()
{
  result = qword_101A2ACE8;
  if (!qword_101A2ACE8)
  {
    type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ACE8);
  }

  return result;
}

unint64_t sub_1012821A8()
{
  result = qword_101A30720;
  if (!qword_101A30720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30720);
  }

  return result;
}

uint64_t sub_101282200@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v24 = sub_1005B981C(&qword_101A30748);
  (*(v9 + 56))(v18, 1, 1, v8);
  v32 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v25);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v15, 0, 1, v19);
  v20(v12, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100635C6C();
  v21 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v22 = v29;
  *v29 = v21;
  sub_1005B981C(&qword_1019F6280);
  v30 = 0xD00000000000001FLL;
  v31 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v22[1] = result;
  v22[5] = &type metadata for CRLDeleteBoardIntentPerformer;
  v22[6] = &off_1018AA7B0;
  return result;
}

uint64_t sub_101282710(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_101282730, 0, 0);
}

uint64_t sub_101282730()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[7];
  v0[10] = v1;
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_101282818;

  return sub_100F80544(v1, (v0 + 2));
}

uint64_t sub_101282818()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100FFEAC4;
  }

  else
  {
    sub_100005070(v2 + 16);
    v3 = sub_101282958;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101282958()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1012829F0()
{
  result = qword_101A30728;
  if (!qword_101A30728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30728);
  }

  return result;
}

unint64_t sub_101282A48()
{
  result = qword_101A30730;
  if (!qword_101A30730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30730);
  }

  return result;
}

unint64_t sub_101282AA0()
{
  result = qword_101A30738;
  if (!qword_101A30738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30738);
  }

  return result;
}

uint64_t sub_101282B60(uint64_t a1)
{
  v2 = sub_101282CEC();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_101282BAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_101282710(a1);
}

uint64_t sub_101282C48(uint64_t a1)
{
  v2 = sub_1012829F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_101282C88()
{
  result = qword_101A30740;
  if (!qword_101A30740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30740);
  }

  return result;
}

unint64_t sub_101282CEC()
{
  result = qword_101A30750;
  if (!qword_101A30750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30750);
  }

  return result;
}

uint64_t sub_101282D44()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD95B0);
  sub_1005EB3DC(v0, qword_101AD95B0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_101282DC4@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v28 = &v26 - v5;
  v6 = sub_1005B981C(&qword_1019FE6A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&qword_1019FE6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v27 = sub_1005B981C(&qword_101A0F770);
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v26 - v15;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10001A2F8(&qword_101A0F778, &qword_1019FE6B0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v31);
  v21 = sub_1005B981C(&qword_101A0F780);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_100AC3A3C();
  sub_10002C58C(v22);
  sub_10001A2F8(&qword_101A0F798, &qword_101A0F770);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v23 = v27;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_101283314()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2BC8 != -1)
  {
    swift_once();
  }

  v8 = sub_1005EB3DC(v0, qword_101AD95B0);
  (*(v1 + 16))(v3, v8, v0);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  v9 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v9;
}

uint64_t sub_101283554@<X0>(uint64_t *a1@<X8>)
{
  sub_101283C84();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_101283598()
{
  result = qword_101A30758;
  if (!qword_101A30758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30758);
  }

  return result;
}

uint64_t sub_1012835EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_1012836E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  v4 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  if (*(v4 + 16) == 2)
  {

    if (*(v4 + 16))
    {
      sub_1007B01B8();

      v6 = Text.init<A>(_:)();
      v8 = v7;
      v10 = v9;
      Image.init(systemName:)();
      v11 = Text.init(_:)();
      v13 = v12;
      v15 = v14;
      v16 = static Text.+ infix(_:_:)();
      v47 = v17;
      v48 = v16;
      v19 = v18;
      sub_10007441C(v11, v13, v15 & 1);

      sub_10007441C(v6, v8, v10 & 1);

      if (*(v4 + 16) >= 2uLL)
      {

        v20 = Text.init<A>(_:)();
        v22 = v21;
        v24 = v23;
        v51 = static Text.+ infix(_:_:)();
        sub_10007441C(v20, v22, v24 & 1);

        v25 = v19 & 1;
        v26 = v48;
        v27 = v47;
LABEL_10:
        sub_10007441C(v26, v27, v25);

        return v51;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_101283C30();
  sub_100762A58();
  v28 = BidirectionalCollection<>.starts<A>(with:)();

  if (v28)
  {
    Image.init(systemName:)();
    result = Text.init(_:)();
    if (*(v4 + 16))
    {
      v31 = result;
      v32 = v29;
      v49 = v30;

      sub_1007B01B8();
      v33 = Text.init<A>(_:)();
      v35 = v34;
      v37 = v36;
      v51 = static Text.+ infix(_:_:)();
      sub_10007441C(v33, v35, v37 & 1);

      v25 = v49 & 1;
      v26 = v31;
      v27 = v32;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (*(v4 + 16))
  {

    sub_1007B01B8();
    v50 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    Image.init(systemName:)();
    v42 = Text.init(_:)();
    v44 = v43;
    v46 = v45;
    v51 = static Text.+ infix(_:_:)();
    sub_10007441C(v42, v44, v46 & 1);

    v25 = v41 & 1;
    v26 = v50;
    v27 = v39;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_101283C30()
{
  result = qword_101A30760;
  if (!qword_101A30760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30760);
  }

  return result;
}

unint64_t sub_101283C84()
{
  result = qword_101A30768;
  if (!qword_101A30768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30768);
  }

  return result;
}

uint64_t sub_101283CD8()
{
  v0 = _s5BoardVMa(0);
  __chkstk_darwin(v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = Notification.userInfo.getter();
  if (!v11)
  {

    v31 = 0u;
    v32 = 0u;
    return sub_10000CAAC(&v31, &unk_1019F4D00);
  }

  v12 = v11;
  v28 = 0xD00000000000001DLL;
  v29 = 0x800000010155F910;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_1000640CC(v30), (v14 & 1) == 0))
  {

    sub_100064234(v30);
    v31 = 0u;
    v32 = 0u;
    goto LABEL_11;
  }

  sub_100064288(*(v12 + 56) + 32 * v13, &v31);
  sub_100064234(v30);

  if (!*(&v32 + 1))
  {
LABEL_11:

    return sub_10000CAAC(&v31, &unk_1019F4D00);
  }

  sub_1005B981C(&qword_1019FB8A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v25 = v0;
  v26 = v4;
  v15 = v30[0] + 56;
  v16 = 1 << *(v30[0] + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v30[0] + 56);
  v19 = (v16 + 63) >> 6;
  v27 = v30[0];

  v20 = 0;
  while (v18)
  {
    v23 = v20;
LABEL_22:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_10000C4FC(*(v27 + 48) + *(v26 + 72) * (v24 | (v23 << 6)), v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000C4FC(v9, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_101285D1C(v7, v2, _s5BoardVMa);
      sub_101284188(v2, *&v2[*(v25 + 24)], *&v2[*(v25 + 24) + 8]);
      sub_101285F40(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = _s5BoardVMa;
      v21 = v2;
    }

    else
    {
      sub_101285F40(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v21 = v7;
      v22 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    result = sub_101285F40(v21, v22);
    v20 = v23;
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
    }

    v18 = *(v15 + 8 * v23);
    ++v20;
    if (v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012840D0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_101284188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v46 = a2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = _s5BoardVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v3 + 32) + 16) || (, sub_1000486F0(a1), v18 = v17, result = , (v18 & 1) == 0))
  {
    sub_1010AB99C(a1, v13);
    v20 = a1;
    (*(v15 + 56))(v13, 0, 1, v14);
    v21 = v48;
    sub_101285D1C(v13, v48, _s5BoardVMa);
    sub_10075F580(v21 + *(v14 + 80), v10);
    v22 = _s5BoardV13ShareMetadataVMa(0);
    v23 = (*(*(v22 - 8) + 48))(v10, 1, v22);
    sub_10000CAAC(v10, &qword_1019F33D0);
    if (v23 == 1)
    {
      v24 = v21;
    }

    else
    {
      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.shareState;
      v41 = static OS_os_log.shareState;
      v43 = sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v42 = xmmword_10146C6B0;
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 56) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 64) = v27;
      v28 = v46;
      *(inited + 32) = v46;
      v29 = v47;
      *(inited + 40) = v47;

      v30 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Share thumbnail was invalidated for %@", 38, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v31 = objc_opt_self();
      v44 = v20;
      sub_10000C4FC(v20, &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
      v32 = (*(v45 + 80) + 40) & ~*(v45 + 80);
      v33 = swift_allocObject();
      v33[2] = v28;
      v33[3] = v29;
      v33[4] = v4;
      sub_101285D1C(&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for CRLBoardIdentifier);
      aBlock[4] = sub_101285D84;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_10068B39C;
      aBlock[3] = &unk_1018BA3B0;
      v34 = _Block_copy(aBlock);

      v35 = [v31 scheduledTimerWithTimeInterval:0 repeats:v34 block:3600.0];
      _Block_release(v34);
      v36 = swift_initStackObject();
      *(v36 + 16) = v42;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = v27;
      *(v36 + 32) = v28;
      *(v36 + 40) = v29;

      v37 = static os_log_type_t.default.getter();
      sub_100005404(v41, &_mh_execute_header, v37, "Share thumbnail timer created for %@", 36, 2, v36);
      swift_setDeallocating();
      sub_100005070(v36 + 32);
      swift_beginAccess();
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v4 + 32);
      *(v4 + 32) = 0x8000000000000000;
      sub_100AA1F88(v38, v44, isUniquelyReferenced_nonNull_native);
      *(v4 + 32) = v49;
      swift_endAccess();

      v24 = v48;
    }

    return sub_101285F40(v24, _s5BoardVMa);
  }

  return result;
}

void sub_101284828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v16 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v16, "Share thumbnail timer fired for %@", 34, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = v24;
  sub_10000C4FC(v24, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a4;
  sub_101285D1C(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CRLBoardIdentifier);
  v21 = (v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a2;
  v21[1] = a3;

  sub_10064191C(0, 0, v13, &unk_1014D8EC0, v20);

  swift_beginAccess();
  v22 = sub_1006F6D10(v18);
  swift_endAccess();
}

uint64_t sub_101284B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_101284B58, 0, 0);
}

uint64_t sub_101284B58()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_101284BF8;
  v2 = *(v0 + 24);

  return sub_1010A91B4(v2, 0);
}

uint64_t sub_101284BF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

LABEL_3:
    v6 = v5[1];

    return v6();
  }

  if (!a1)
  {
    goto LABEL_3;
  }

  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v5;
  v8[1] = sub_101284D88;
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[3];

  return sub_101284EE4(v11, v9, v10, a1);
}

uint64_t sub_101284D88()
{

  return _swift_task_switch(sub_101284E84, 0, 0);
}

uint64_t sub_101284E84()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101284EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[41] = v7;
  v5[42] = v6;

  return _swift_task_switch(sub_101284F84, v7, v6);
}

uint64_t sub_101284F84()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = static OS_os_log.shareState;
  v0[43] = static OS_os_log.shareState;
  v0[44] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  v0[45] = v6;
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v1;

  v7 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v7, "Share thumbnail updating for %@", 31, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  [v2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v0[46] = sub_100F7B8DC();
  if (swift_dynamicCast())
  {
    v8 = v0[33];
    v0[47] = v8;
    v9 = v8;
    v10 = swift_task_alloc();
    v0[48] = v10;
    *v10 = v0;
    v10[1] = sub_1012851D4;
    v11 = v0[35];
    v12.n128_u64[0] = 2.0;

    return (sub_1006ED3F8)(v11, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1012851D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v5 = *(v3 + 336);
  v6 = *(v3 + 328);
  if (v1)
  {
    v7 = sub_101285670;
  }

  else
  {
    v7 = sub_101285318;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_101285318()
{
  v1 = [*(v0 + 392) UIImage];
  v2 = UIImagePNGRepresentation(v1);

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    static CKShare.SystemFieldKey.thumbnailImageData.getter();
  }

  else
  {
    static CKShare.SystemFieldKey.thumbnailImageData.getter();
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  *(v0 + 408) = v5;
  *(v0 + 416) = v3;
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  sub_100024E84(v3, v5);
  CKRecordKeyValueSetting.subscript.setter();
  sub_10084443C(v7);
  if (v6)
  {
    v8 = *(v0 + 392);
    v9 = *(v0 + 376);

    sub_100025870(v3, v5);

    *(v0 + 272) = v6;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    v10 = swift_dynamicCast();
    v11 = *(v0 + 360);
    v12 = *(v0 + 344);
    if (v10)
    {

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v14 = UUID.uuidString.getter();
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = v11;
      *(inited + 32) = v14;
      *(inited + 40) = v15;
      v16 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v16, "Updating to thumbnail image would cause the share to be too large for board %@", 78, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
    }

    else
    {

      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_10146C6B0;
      v23 = UUID.uuidString.getter();
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = v11;
      *(v22 + 32) = v23;
      *(v22 + 40) = v24;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v25, "Couldn't get board grid size thumbnail for board %@", 51, 2, v22);

      swift_setDeallocating();
      sub_100005070(v22 + 32);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v17 = *(v0 + 376);
    v18 = v17;
    v19 = swift_task_alloc();
    *(v0 + 424) = v19;
    *v19 = v0;
    v19[1] = sub_101285844;
    v20 = *(v0 + 280);

    return sub_1010A9CB4(v20, v17, 1);
  }
}

uint64_t sub_101285670()
{
  v1 = v0[47];

  v0[34] = v0[50];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v2 = swift_dynamicCast();
  v3 = v0[45];
  v4 = v0[43];
  if (v2)
  {

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v6 = UUID.uuidString.getter();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v3;
    *(inited + 32) = v6;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v8, "Updating to thumbnail image would cause the share to be too large for board %@", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  else
  {

    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_10146C6B0;
    v10 = UUID.uuidString.getter();
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = v3;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v12, "Couldn't get board grid size thumbnail for board %@", 51, 2, v9);

    swift_setDeallocating();
    sub_100005070(v9 + 32);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_101285844()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_1012859EC;
  }

  else
  {
    v6 = v2[47];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_101285964;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_101285964()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[47];

  sub_100025870(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1012859EC()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[47];

  sub_100025870(v2, v1);
  v0[34] = v0[54];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v5 = swift_dynamicCast();
  v6 = v0[45];
  v7 = v0[43];
  if (v5)
  {

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = UUID.uuidString.getter();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v6;
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v11, "Updating to thumbnail image would cause the share to be too large for board %@", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  else
  {

    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_10146C6B0;
    v13 = UUID.uuidString.getter();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v6;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v15, "Couldn't get board grid size thumbnail for board %@", 51, 2, v12);

    swift_setDeallocating();
    sub_100005070(v12 + 32);
  }

  v16 = v0[1];

  return v16();
}

void sub_101285BDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16))
  {

    v4 = sub_1000486F0(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      if (qword_1019F22C8 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.shareState;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Share thumbnail timer invalidating early because board closed.", 62, 2, _swiftEmptyArrayStorage);
      [v6 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();
  v9 = sub_1006F6D10(a1);
  swift_endAccess();
}

uint64_t sub_101285D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_101285D84(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_101284828(a1, v4, v5, v6, v7);
}

uint64_t sub_101285DFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D3D4;

  return sub_101284B34(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_101285F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101285FEC()
{

  return swift_deallocClassInstance();
}

id CRLChangeRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLChangeRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_101286248(uint64_t a1)
{
  if (a1)
  {
    v7 = 0;
    v8 = 0;
    sub_1002BC938(a1, &v8 + 1, &v8, &v7);
    v1 = v7;
    if (v7)
    {
      sub_1005B981C(&qword_101A11BB8);
      v2 = swift_allocObject();
      *&result = 3;
      *(v2 + 16) = xmmword_10146C4D0;
      v4 = v8;
      *(v2 + 32) = HIWORD(v8);
      *(v2 + 36) = v4;
      *(v2 + 40) = v1;
    }

    else
    {
      v5 = v8;
      sub_1005B981C(&qword_101A11BB8);
      v6 = swift_allocObject();
      if (v5)
      {
        *&result = 2;
        *(v6 + 16) = xmmword_10146BDE0;
        *(v6 + 32) = HIWORD(v8);
        *(v6 + 36) = v5;
      }

      else
      {
        *&result = 1;
        *(v6 + 16) = xmmword_10146C6B0;
        *(v6 + 32) = HIWORD(v8);
      }
    }
  }

  return result;
}

uint64_t sub_101286364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (v1 == 1)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 36);
      if (v1 >= 3)
      {
        v3 = *(a1 + 40);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
  }

  if (v2 | v4 | v3)
  {
    if ((v2 | v4) >> 16)
    {
      __break(1u);
    }

    else
    {
      return sub_1002BC95C(v2, v4, v3);
    }
  }

  else
  {
    if (qword_1019F22A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.pasteboard;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Empty CRLVersion unwrapped fromProtobufArray", 44, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  return result;
}

unint64_t sub_101286480()
{
  result = qword_101A30C10;
  if (!qword_101A30C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30C10);
  }

  return result;
}

unint64_t sub_1012864D8()
{
  result = qword_101A30C18;
  if (!qword_101A30C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30C18);
  }

  return result;
}

uint64_t sub_101286564(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1012865FC, v4, v3);
}

uint64_t sub_1012865FC()
{
  v1 = v0[15];

  v2 = *sub_100020E58(v1, v1[3]);
  v3 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = v0[14];

    v6 = sub_1000486F0(v5);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v6);

      v9 = [*(v8 + 24) anyObject];
      if (v9)
      {
        v10 = v9;
        v11 = *&v9[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];

        v12 = [v11 editorController];

        if (v12)
        {
          v13 = v0[1];

          return v13(v11, v12);
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

  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v15 = v0[14];
  v16 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v26 = UUID.uuidString.getter();
  v27 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20 = (v15 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v21 = *v20;
  v22 = v20[1];

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v26;
  *(inited + 40) = v27;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v24, "Board is not currently open or is missing controllers - %@", 58, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  type metadata accessor for _PrebuiltAppIntentError();
  sub_100EE007C(&qword_101A00A28, &type metadata accessor for _PrebuiltAppIntentError);
  swift_allocError();
  static _UnrecoverableError.actionNotAllowed.getter();
  swift_willThrow();
  v25 = v0[1];

  return v25();
}

uint64_t sub_10128694C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101287F3C, v4, v3);
}

uint64_t sub_1012869E4@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v61 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v60 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v58 = &v38[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v59 = &v38[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v55 = &v38[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v57 = type metadata accessor for LocalizedStringResource();
  v18 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v45 = v12;
  v21(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v46 = v21;
  v47 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v15, v20, v12);
  v22 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v52 = v18 + 56;
  v53 = v23;
  v23(v22, 0, 1, v57);
  v24 = type metadata accessor for CRLBoardEntity();
  (*(*(v24 - 8) + 56))(v59, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v41 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v42 = v27;
  v43 = v26 + 56;
  v27(v58, 1, 1, v25);
  v27(v60, 1, 1, v25);
  v49 = sub_1005B981C(&qword_1019F6280);
  v50 = 0x8000000101558510;
  v64 = 0xD00000000000001FLL;
  v65 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  v48 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v66 = AppDependency.__allocating_init(key:manager:)();
  v39 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v63 + 104);
  v63 += 104;
  v40 = v28;
  v28(v61);
  sub_100616374();
  sub_100EE007C(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v29 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v30 = v54;
  *v54 = v29;
  v59 = sub_1005B981C(&qword_101A30C38);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v46(v15, v44, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v31, v32);
  v34 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v34, 0, 1, v57);
  LOBYTE(v66) = 10;
  v35 = v41;
  v36 = v42;
  v42(v58, 1, 1, v41);
  v36(v60, 1, 1, v35);
  v40(v61, v39, v62);
  sub_101255428();
  v30[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v64 = 0xD00000000000001FLL;
  v65 = v50;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v30[2] = result;
  v30[6] = &type metadata for CRLChangeSelectionFontSizeIntentPerformer;
  v30[7] = &off_10189C6D0;
  return result;
}

uint64_t sub_10128731C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for CRLBoardEntity();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_101287410, v4, v3);
}

uint64_t sub_101287410()
{
  v2 = v0[18];
  v1 = v0[19];
  IntentParameter.wrappedValue.getter();
  sub_1005F1308(v1, v2);
  sub_1006164FC(v1, type metadata accessor for CRLBoardEntity);
  AppDependency.wrappedValue.getter();
  v0[11] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[12] = &off_1018AD9D0;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_101287524;
  v4 = v0[18];

  return sub_10128694C(v4, (v0 + 8));
}

uint64_t sub_101287524(void *a1, uint64_t a2)
{
  v5 = *v3;
  v5[25] = a2;
  v5[26] = v2;

  sub_1006164FC(v5[18], type metadata accessor for CRLBoardIdentifier);
  if (v2)
  {
    v6 = v5[22];
    v7 = v5[23];
    v8 = sub_100614554;
  }

  else
  {
    sub_100005070((v5 + 8));

    v6 = v5[22];
    v7 = v5[23];
    v8 = sub_101287688;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_101287688()
{
  v1 = v0[25];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  *(v2 + 24) = 0;
  v0[6] = sub_100612814;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10066C70C;
  v0[5] = &unk_1018BA540;
  v4 = _Block_copy(v0 + 2);

  [v1 enumerateEditorsOnStackUsingBlock:v4];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  *(v0 + 27) = *v3;
  v6 = v5;
  swift_unknownObjectRetain();

  if (v6)
  {
    IntentParameter.wrappedValue.getter();
    *(v0 + 241) = *(v0 + 240);
    v0[29] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_101287894, v8, v7);
  }

  else
  {

    v9 = v0[25];
    static IntentResult.result<>()();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_101287894()
{
  v1 = *(v0 + 241);

  ObjectType = swift_getObjectType();
  (*(*(v0 + 224) + 32))(ObjectType, flt_1014D91EC[v1]);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return _swift_task_switch(sub_1006144B8, v3, v4);
}

uint64_t sub_10128792C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD95C8);
  sub_1005EB3DC(v6, qword_101AD95C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_101287B24()
{
  v0 = sub_1005B981C(&qword_101A30C40);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A30C48);
  __chkstk_darwin(v1);
  sub_101287E9C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001015C9C90;
  v2._countAndFlagsBits = 0xD000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A30C50);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A30C58);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_101287D2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2BD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD95C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_101287DD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10128731C(a1);
}

unint64_t sub_101287E74(uint64_t a1)
{
  result = sub_101287E9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101287E9C()
{
  result = qword_101A30C20;
  if (!qword_101A30C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30C20);
  }

  return result;
}

uint64_t sub_101287EF0(uint64_t a1)
{
  v2 = sub_101287E9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_101288050(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_101288AD0(a1, a2);

  return v6;
}

void sub_1012882B8(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLShapeItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        v13 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_fill);
        v14 = v13;
        sub_100C34730(v13);
        v15 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v16 = objc_opt_self();
  v17 = [v16 _atomicIncrementAssertCount];
  v41 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v41);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v26 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v26;
  v27 = sub_1005CF04C();
  *(inited + 104) = v27;
  *(inited + 72) = v18;
  *(inited + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v28;
  *(inited + 152) = 32;
  v29 = v41;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v29;
  v30 = v18;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "Unable to retrieve shape item.", 30, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve shape item.");
  type metadata accessor for __VaListBuilder();
  v34 = swift_allocObject();
  v34[2] = 8;
  v34[3] = 0;
  v34[4] = 0;
  v34[5] = 0;
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  [v16 handleFailureInFunction:v36 file:v37 lineNumber:32 isFatal:1 format:v38 args:v35];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v39, v40);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_101288844()
{
  v1 = OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_1012888D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetFill();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetFill()
{
  result = qword_101A30C88;
  if (!qword_101A30C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1012889EC()
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

uint64_t sub_101288A90()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_actionString);

  return v1;
}

id sub_101288AD0(uint64_t a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_actionString];
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *v5 = v10;
  v5[1] = v12;
  v13 = OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_id;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v2[v13], a1, v14);
  if (a2 && (v16 = swift_dynamicCastObjCProtocolConditional()) != 0)
  {
    v17 = v16;
    v18 = a2;
    [v17 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A2BF30);
    swift_dynamicCast();
    *&v2[OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_fill] = v22;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_fill] = a2;
    v19 = a2;
  }

  v23.receiver = v2;
  v23.super_class = type metadata accessor for CRLCommandSetFill();
  v20 = objc_msgSendSuper2(&v23, "init");
  (*(v15 + 8))(a1, v14);
  return v20;
}

void sub_101288D64()
{
  sub_100B04794();
  if (v0 <= 0x3F)
  {
    sub_1012A444C(319, &qword_101A30D08, &qword_101A286C8, &unk_1014C2210, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1012A43E8(319, &qword_101A30D10, &type metadata accessor for EditMode, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1012A444C(319, &unk_101A30D18, &qword_101A286D0, &unk_101495300, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_101288ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_101288FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_101289118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1005B981C(&qword_101A31650);
  return sub_10128916C(a1, a2 + *(v4 + 44));
}

uint64_t sub_10128916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for Divider();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v49[0] = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A31658);
  __chkstk_darwin(v5 - 8);
  v67 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = v49 - v8;
  v9 = type metadata accessor for EditMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  __chkstk_darwin(v15);
  v17 = v49 - v16;
  v55 = v49 - v16;
  v18 = type metadata accessor for CRLScenesListUI_iv(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v64 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v49 - v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = *(a1 + 8);
  v56 = *(a1 + 24);
  v62 = *(a1 + 32);
  v61 = *(a1 + 40);
  LOBYTE(v72) = v62;
  v73 = v61;
  v60 = sub_1005B981C(&qword_101A1CF70);
  State.projectedValue.getter();
  v58 = *(&v70 + 1);
  v59 = v70;
  v57 = v71;
  v24 = enum case for EditMode.inactive(_:);
  v25 = *(v10 + 104);
  v25(v17, enum case for EditMode.inactive(_:), v9);
  *(v23 + 1) = 0;
  swift_unknownObjectWeakInit();
  v72 = 0;
  v49[1] = sub_1005B981C(&qword_101A286D0);
  State.init(wrappedValue:)();
  *(v23 + 2) = v70;
  v72 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A286C8);
  State.init(wrappedValue:)();
  v26 = *(&v70 + 1);
  *(v23 + 6) = v70;
  *(v23 + 7) = v26;
  v52 = v19;
  v27 = *(v19 + 40);
  v25(v14, v24, v9);
  v28 = v10;
  v29 = *(v10 + 16);
  v29(v69, v14, v9);
  State.init(wrappedValue:)();
  v30 = *(v28 + 8);
  v49[2] = v28 + 8;
  v30(v14, v9);
  v51 = *(v19 + 44);
  v72 = 0;
  State.init(wrappedValue:)();
  v50 = v70;
  *(v23 + 1) = v53;
  swift_unknownObjectWeakAssign();
  type metadata accessor for CRLScenesPopoverState(0);
  sub_1012967DC(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState);
  v31 = v56;
  *(v23 + 2) = ObservedObject.init(wrappedValue:)();
  *(v23 + 3) = v32;
  v33 = v55;
  v29(v14, v55, v9);
  sub_10000CAAC(&v23[v27], &qword_101A30C98);
  v29(v69, v14, v9);
  State.init(wrappedValue:)();
  v30(v14, v9);
  v72 = 0;
  State.init(wrappedValue:)();
  swift_unknownObjectRelease();
  v30(v33, v9);

  *&v23[v51] = v70;
  v34 = &v23[*(v52 + 48)];
  v35 = v58;
  *v34 = v59;
  *(v34 + 1) = v35;
  v34[16] = v57;
  LOBYTE(v70) = v62;
  *(&v70 + 1) = v61;
  State.wrappedValue.getter();
  if (v72 == 1)
  {
    v36 = v49[0];
    Divider.init()();
    v37 = v65;
    v38 = v63;
    v39 = v36;
    v40 = v66;
    (*(v65 + 32))(v63, v39, v66);
    v41 = 0;
    v42 = v40;
    v43 = v37;
  }

  else
  {
    v41 = 1;
    v43 = v65;
    v42 = v66;
    v38 = v63;
  }

  (*(v43 + 56))(v38, v41, 1, v42);
  v44 = v64;
  sub_1012A48F4(v23, v64, type metadata accessor for CRLScenesListUI_iv);
  v45 = v67;
  sub_10000BE14(v38, v67, &qword_101A31658);
  v46 = v68;
  sub_1012A48F4(v44, v68, type metadata accessor for CRLScenesListUI_iv);
  v47 = sub_1005B981C(qword_101A31660);
  sub_10000BE14(v45, v46 + *(v47 + 48), &qword_101A31658);
  sub_10000CAAC(v38, &qword_101A31658);
  sub_1012A6A94(v23, type metadata accessor for CRLScenesListUI_iv);
  sub_10000CAAC(v45, &qword_101A31658);
  return sub_1012A6A94(v44, type metadata accessor for CRLScenesListUI_iv);
}