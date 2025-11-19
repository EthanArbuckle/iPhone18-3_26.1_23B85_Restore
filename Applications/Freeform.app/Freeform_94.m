uint64_t sub_100C3D08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100C3D0F4()
{
  result = qword_101A15CF8;
  if (!qword_101A15CF8)
  {
    type metadata accessor for CRLProto_FollowViewportState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15CF8);
  }

  return result;
}

uint64_t sub_100C3D14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100C3D1F4()
{
  sub_100C3D6E0(319, &qword_1019F5D48, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100C3D6E0(319, &qword_101A15D70, &type metadata for CRLPointPathSourceData, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100C3D6E0(319, &qword_101A15D78, &type metadata for CRLScalarPathSourceData, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100C3D6E0(319, &qword_101A15D80, &type metadata for CRLBezierPathSourceData, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100C3D6E0(319, &qword_101A15D88, &type metadata for CRLCalloutPathSourceData, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100C3D6E0(319, &qword_101A15D90, &type metadata for CRLConnectionLinePathSourceData, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100C3D3F0();
              if (v6 <= 0x3F)
              {
                sub_100B7D7B4();
                if (v7 <= 0x3F)
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
}

void sub_100C3D3F0()
{
  if (!qword_101A15D98)
  {
    type metadata accessor for CRLEditableBezierPathSourceData(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A15D98);
    }
  }
}

uint64_t sub_100C3D468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100C3D4B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C3D550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C3D598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100C3D618()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100C3D6E0(319, &unk_101A15E58, &type metadata for CRLEditableBezierPathSourceData.Subpath, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100B7D7B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100C3D6E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100C3D740(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLPathSourceData(0);
  *(a2 + *(v4 + 56)) = _swiftEmptyDictionarySingleton;
  *a2 = [a1 hasHorizontalFlip];
  *(a2 + 1) = [a1 hasVerticalFlip];
  v5 = [a1 localizationKey];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  v10 = [a1 userDefinedName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    sub_100C4ABF4(v15, &v96);
    v16 = v96;
    v17 = BYTE8(v96);
    v18 = v97;
    v19 = DWORD2(v97);
    v20 = v98;
    v21 = HIDWORD(v96);

    *(a2 + 40) = v16;
    *(a2 + 48) = v17 | (v21 << 32);
    *(a2 + 56) = v18;
    *(a2 + 64) = v19;
    *(a2 + 72) = v20;
    v22 = 0uLL;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
LABEL_9:
    *(a2 + 144) = v22;
    *(a2 + 160) = v22;
    *(a2 + 176) = 0;
LABEL_12:
    sub_1005D0C00(&aBlock);
    v26 = v93;
    *(a2 + 248) = v92;
    v27 = v94;
    v28 = v95;
    *(a2 + 264) = v26;
    *(a2 + 280) = v27;
    *(a2 + 296) = v28;
    v29 = v89;
    *(a2 + 184) = aBlock;
    *(a2 + 200) = v29;
    v30 = v91;
    *(a2 + 216) = v90;
    *(a2 + 232) = v30;
LABEL_13:
    v31 = *(v4 + 52);
    v32 = type metadata accessor for CRLEditableBezierPathSourceData(0);
    (*(*(v32 - 8) + 56))(a2 + v31, 1, 1, v32);
    return;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    sub_100C4B038(v23, &v96);
    v24 = v98;

    v25 = v97;
    *(a2 + 80) = v96;
    *(a2 + 96) = v25;
    *(a2 + 112) = v24;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
    goto LABEL_12;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    sub_100C4B8E0(v33, &aBlock);

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&aBlock, v34);
    v35 = v93;
    *(a2 + 248) = v92;
    v36 = v94;
    v37 = v95;
    *(a2 + 264) = v35;
    *(a2 + 280) = v36;
    *(a2 + 296) = v37;
    v38 = v89;
    *(a2 + 184) = aBlock;
    *(a2 + 200) = v38;
    v39 = v91;
    *(a2 + 216) = v90;
    *(a2 + 232) = v39;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
    goto LABEL_13;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    v42 = [v40 bezierPathWithoutFlips];
    v43 = swift_allocObject();
    *(v43 + 16) = _swiftEmptyArrayStorage;
    v44 = (v43 + 16);
    *&v90 = sub_1009CEBEC;
    *(&v90 + 1) = v43;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v89 = sub_100CD0AFC;
    *(&v89 + 1) = &unk_10189B928;
    v45 = _Block_copy(&aBlock);

    [v42 iteratePathElementsWithBlock:v45];

    _Block_release(v45);
    swift_beginAccess();
    v46 = *v44;

    [v41 naturalSize];
    v48 = v47;
    v50 = v49;

    *&v51 = v48;
    v52 = v51;
    *&v53 = v50;
    *(a2 + 120) = v46;
    *(a2 + 128) = v52 | (v53 << 32);
    *(a2 + 136) = _swiftEmptyDictionarySingleton;
    v22 = 0uLL;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    goto LABEL_9;
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (v54)
  {
    sub_100C4BFB4(v54, &v96);
    v55 = v98;

    v56 = v97;
    *(a2 + 144) = v96;
    *(a2 + 160) = v56;
    *(a2 + 176) = v55;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
    goto LABEL_12;
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {
    v87 = objc_opt_self();
    v65 = [v87 _atomicIncrementAssertCount];
    *&aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock);
    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    v67 = [v66 lastPathComponent];

    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v70 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_10146CA70;
    *(v71 + 56) = &type metadata for Int32;
    *(v71 + 64) = &protocol witness table for Int32;
    *(v71 + 32) = v65;
    v72 = sub_100006370(0, &qword_1019F4D30);
    *(v71 + 96) = v72;
    v73 = sub_1005CF04C();
    *(v71 + 104) = v73;
    *(v71 + 72) = v86;
    *(v71 + 136) = &type metadata for String;
    v74 = sub_1000053B0();
    *(v71 + 112) = v85;
    *(v71 + 120) = v69;
    *(v71 + 176) = &type metadata for UInt;
    *(v71 + 184) = &protocol witness table for UInt;
    *(v71 + 144) = v74;
    *(v71 + 152) = 100;
    v75 = aBlock;
    *(v71 + 216) = v72;
    *(v71 + 224) = v73;
    *(v71 + 192) = v75;
    v76 = v86;
    v77 = v75;
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v79 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v79, "Unknown path source subclass.", 29, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v80 = swift_allocObject();
    v80[2] = 8;
    v80[3] = 0;
    v80[4] = 0;
    v80[5] = 0;
    v81 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    [v87 handleFailureInFunction:v82 file:v83 lineNumber:100 isFatal:0 format:v84 args:v81];

    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    goto LABEL_12;
  }

  v58 = *(v4 + 52);
  sub_100C3E450(v57, a2 + v58);
  v59 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  (*(*(v59 - 8) + 56))(a2 + v58, 0, 1, v59);
  *(a2 + 136) = 0;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  sub_1005D0C00(&aBlock);
  v60 = v93;
  *(a2 + 248) = v92;
  v61 = v94;
  v62 = v95;
  *(a2 + 264) = v60;
  *(a2 + 280) = v61;
  *(a2 + 296) = v62;
  v63 = v89;
  *(a2 + 184) = aBlock;
  *(a2 + 200) = v63;
  v64 = v91;
  *(a2 + 216) = v90;
  *(a2 + 232) = v64;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0;
}

unint64_t sub_100C3E05C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6974726556736168;
    v4 = 0x617A696C61636F6CLL;
    v5 = 0x6966654472657375;
    if (a1 != 3)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (!a1)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7u)
  {
    v6 = 0xD000000000000010;
    if (a1 == 9)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1 == 8)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    if (a1 != 6)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 == 5)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100C3E214()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A44B0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C3E29C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A44B0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100C3E2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4C6A8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C3E334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4C6CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C3E374@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4C6A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C3E3D8(uint64_t a1)
{
  v2 = sub_100C4874C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C3E414(uint64_t a1)
{
  v2 = sub_100C4874C();

  return CodingKey.debugDescription.getter(a1, v2);
}

float sub_100C3E450@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v39 = a1;
  v40 = a2;
  *(a2 + v38[7]) = _swiftEmptyDictionarySingleton;
  v4 = [a1 subpaths];
  sub_100006370(0, &qword_101A16200);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v45 = v5 & 0xC000000000000001;
    v41 = v5 + 32;
    v42 = v5 & 0xFFFFFFFFFFFFFF8;
    v47 = _swiftEmptyArrayStorage;
    v43 = i;
    v44 = v5;
    while (1)
    {
      if (v45)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v42 + 16))
        {
          goto LABEL_36;
        }

        v8 = *(v41 + 8 * v7);
      }

      v9 = v8;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v11 = [v8 nodes];
      sub_100006370(0, &qword_101A16208);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 < 2)
      {

        if (v7 == i)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v46 = v9;
        v14 = [v46 nodes];
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (!v16)
          {
LABEL_28:
            v18 = _swiftEmptyArrayStorage;
            goto LABEL_29;
          }
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v16)
          {
            goto LABEL_28;
          }
        }

        if (v16 < 1)
        {
          goto LABEL_37;
        }

        v17 = 0;
        v18 = _swiftEmptyArrayStorage;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          sub_100C4C074(v20, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100B367EC(0, *(v18 + 2) + 1, 1, v18);
          }

          v22 = *(v18 + 2);
          v21 = *(v18 + 3);
          if (v22 >= v21 >> 1)
          {
            v18 = sub_100B367EC((v21 > 1), v22 + 1, 1, v18);
          }

          ++v17;

          *(v18 + 2) = v22 + 1;
          v23 = &v18[48 * v22];
          v24 = v48[0];
          v25 = v48[2];
          *(v23 + 3) = v48[1];
          *(v23 + 4) = v25;
          *(v23 + 2) = v24;
        }

        while (v16 != v17);
LABEL_29:

        v26 = [v46 isClosed];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_100B3690C(0, *(v47 + 2) + 1, 1, v47);
        }

        i = v43;
        v5 = v44;
        v28 = *(v47 + 2);
        v27 = *(v47 + 3);
        if (v28 >= v27 >> 1)
        {
          v47 = sub_100B3690C((v27 > 1), v28 + 1, 1, v47);
        }

        *(v47 + 2) = v28 + 1;
        v29 = &v47[24 * v28];
        *(v29 + 4) = v18;
        v29[40] = v26;
        *(v29 + 6) = _swiftEmptyDictionarySingleton;
        if (v7 == v43)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_40:

  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v39 setPersistedUUID:isa];

  *(v40 + v38[5]) = v47;
  [v39 naturalSize];
  v32 = v31;
  v34 = v33;

  result = v32;
  v36 = v34;
  v37 = (v40 + v38[6]);
  *v37 = result;
  v37[1] = v36;
  return result;
}

uint64_t sub_100C3E8BC(void *a1)
{
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v35[0] = *(v1 + 184);
  v35[1] = v4;
  v5 = *(v1 + 232);
  v35[2] = *(v1 + 216);
  v36 = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v37 = v3;
  v38 = v6;
  v8 = *(v1 + 296);
  v39 = v7;
  v40 = v8;
  if (sub_100A03AB8(v35) == 1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v10 = result;
    v11 = a1;
    v12 = [v10 headMagnet];
    if (v12)
    {
      v13 = v12;
      if (*(&v37 + 1))
      {
        v14 = *(&v36 + 3);
        v15 = *&v37;
        v16 = [v12 magnetType];
        sub_1005B981C(&qword_101A16400);
        CRExtensible.rawValue.getter();
        if ((v34 & 0x8000000000000000) == 0 && v16 == v34)
        {
          [v13 magnetNormalizedPosition];
          v18 = v17;
          v20 = v19;

          v21 = sub_10011ECC8(v18, v20, v14, v15);
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    v22 = [v10 headMagnet];
    if (!v22)
    {
      v21 = *(&v37 + 1) == 0;
LABEL_15:
      v23 = [v10 tailMagnet];
      if (v23)
      {
        v24 = v23;
        if (*(&v39 + 1))
        {
          v25 = *(&v38 + 3);
          v26 = *&v39;

          v27 = [v24 magnetType];
          sub_1005B981C(&qword_101A16400);
          CRExtensible.rawValue.getter();
          if ((v34 & 0x8000000000000000) == 0 && v27 == v34)
          {
            [v24 magnetNormalizedPosition];
            v29 = v28;
            v31 = v30;

            v32 = sub_10011ECC8(v29, v31, v25, v26);
            return v21 & v32;
          }

LABEL_24:
          v32 = 0;
          return v21 & v32;
        }
      }

      v33 = [v10 tailMagnet];

      if (!v33)
      {
        v32 = *(&v39 + 1) == 0;
        return v21 & v32;
      }

      goto LABEL_24;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100C3EB98(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16250);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100C4874C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v39) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v39) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v39) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v39) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 72);
    v10 = *(v3 + 56);
    v39 = *(v3 + 40);
    v40 = v10;
    *&v41 = v9;
    LOBYTE(v31) = 4;
    sub_100C4532C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 112);
    v12 = *(v3 + 96);
    v39 = *(v3 + 80);
    v40 = v12;
    *&v41 = v11;
    LOBYTE(v31) = 5;
    sub_100C4577C();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v13 = *(v3 + 136);
    v39 = *(v3 + 120);
    *&v40 = v13;
    LOBYTE(v31) = 6;
    sub_100C45BCC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 176);
    v15 = *(v3 + 160);
    v48 = *(v3 + 144);
    v49 = v15;
    v50 = v14;
    v47 = 7;
    sub_100C4601C();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v16 = *(v3 + 264);
    v17 = *(v3 + 280);
    v43 = *(v3 + 248);
    v44 = v16;
    v18 = *(v3 + 264);
    v19 = *(v3 + 296);
    v45 = *(v3 + 280);
    v46 = v19;
    v20 = *(v3 + 200);
    v39 = *(v3 + 184);
    v40 = v20;
    v21 = *(v3 + 232);
    v41 = *(v3 + 216);
    v42 = v21;
    v35 = *(v3 + 248);
    v36 = v18;
    v22 = *(v3 + 296);
    v37 = v17;
    v38 = v22;
    v23 = *(v3 + 200);
    v31 = *(v3 + 184);
    v32 = v23;
    v24 = *(v3 + 232);
    v33 = *(v3 + 216);
    v34 = v24;
    v30 = 8;
    sub_10000BE14(&v39, v29, &qword_101A16218);
    sub_100C481EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[7] = v38;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_10000CAAC(v29, &qword_101A16218);
    v25 = type metadata accessor for CRLPathSourceData(0);
    LOBYTE(v28) = 9;
    type metadata accessor for CRLEditableBezierPathSourceData(0);
    sub_100C44E20(&qword_101A15F20, type metadata accessor for CRLEditableBezierPathSourceData);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = *(v3 + *(v25 + 56));
    v27[7] = 10;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C3F0C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1005B981C(&qword_101A15D00);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - v5;
  v37 = sub_1005B981C(&qword_101A16248);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = v32 - v8;
  v10 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v49 = a1;
  sub_100020E58(a1, v13);
  sub_100C4874C();
  v36 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(v49);
    return sub_100B98A0C(0);
  }

  else
  {
    v34 = v6;
    LOBYTE(v41) = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 1;
    v12[1] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 2;
    *(v12 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v12 + 2) = v14;
    LOBYTE(v41) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v12;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    LOBYTE(v39) = 4;
    sub_100C452D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v43;
    v18 = v42;
    *(v12 + 40) = v41;
    *(v12 + 56) = v18;
    *(v12 + 9) = v17;
    LOBYTE(v39) = 5;
    sub_100C45724();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v43;
    v20 = v42;
    *(v12 + 5) = v41;
    *(v12 + 6) = v20;
    *(v12 + 14) = v19;
    LOBYTE(v39) = 6;
    sub_100C45B74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = *(&v41 + 1);
    v22 = v42;
    v32[1] = v41;
    *(v12 + 15) = v41;
    *(v12 + 16) = v21;
    v32[3] = v21;
    v32[2] = v22;
    *(v12 + 17) = v22;
    LOBYTE(v39) = 7;
    sub_100C45FC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v43;
    v24 = v42;
    *(v12 + 9) = v41;
    *(v12 + 10) = v24;
    *(v12 + 22) = v23;
    v40 = 8;
    sub_100C48194();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v46;
    v26 = v33;
    *(v33 + 248) = v45;
    v27 = v42;
    *(v26 + 184) = v41;
    *(v26 + 200) = v27;
    v28 = v44;
    *(v26 + 216) = v43;
    *(v26 + 232) = v28;
    v29 = v47;
    *(v26 + 264) = v25;
    *(v26 + 280) = v29;
    *(v26 + 296) = v48;
    type metadata accessor for CRLEditableBezierPathSourceData(0);
    LOBYTE(v39) = 9;
    sub_100C44E20(&qword_101A15F18, type metadata accessor for CRLEditableBezierPathSourceData);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100C4CA70(v34, &v12[*(v10 + 52)]);
    sub_1005B981C(&unk_101A0D960);
    v38 = 10;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v10 + 56);
    (*(v7 + 8))(v36, v37);
    *&v12[v30] = v39;
    sub_100C4F994(v12, v35, type metadata accessor for CRLPathSourceData);
    sub_100005070(v49);
    return sub_100C4CAE0(v12, type metadata accessor for CRLPathSourceData);
  }
}

uint64_t sub_100C3F9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C3FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C3FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C44E20(&qword_101A161B0, type metadata accessor for CRLPathSourceData);
  v7 = sub_100C44E20(&qword_101A16260, type metadata accessor for CRLPathSourceData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C3FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C3FD10(uint64_t a1)
{
  v2 = sub_100C44E20(&qword_101A161F8, type metadata accessor for CRLPathSourceData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_100C3FD8C(float *a1)
{
  if (a1[2])
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 317;
    v14 = v28;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Unknown point path source type. Falling back to left single arrow.", 66, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:317 isFatal:0 format:v23 args:v20];

    v24 = 0;
  }

  else
  {
    v24 = qword_1014A4508[*a1];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100C4FC3C(a1);
  return [objc_allocWithZone(ObjCClassFromMetadata) initWithType:v24 point:a1[3] naturalSize:{a1[4], a1[5], a1[6]}];
}

id sub_100C4018C(uint64_t a1)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100006370(0, &qword_101A02480);

  v6 = sub_100C58684(v5);

  v7 = [v4 initWithBezierPath:v6];

  if (!v7)
  {
    sub_100C4F450(a1);
    return v7;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    v27 = *a1 & 1;
    goto LABEL_7;
  }

  v36 = objc_opt_self();
  v8 = [v36 _atomicIncrementAssertCount];
  v38 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v38);
  StaticString.description.getter();
  p_info = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = p_info;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v1;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 800;
    v18 = v38;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = p_info;
    v1 = v18;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "Unknown connection line path source type. Falling back to quadratic.", 68, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v24 file:v25 lineNumber:800 isFatal:0 format:v26 args:v23];

    v27 = 0;
LABEL_7:
    [v7 setType:v27];
    [v7 setOutsetTo:*(a1 + 44)];
    [v7 setOutsetFrom:*(a1 + 40)];
    p_info = CRLMovieRenderingOperation.info;
    if (!*(a1 + 72))
    {
      break;
    }

    v28 = *(a1 + 60);
    v29 = *(a1 + 64);
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    sub_1005B981C(&qword_101A16400);
    CRExtensible.rawValue.getter();
    v8 = v37;
    if (v37 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v30 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v37 normalizedPosition:{v28, v29}];
    [v7 setHeadMagnet:v30];

    if (!*(a1 + 104))
    {
      goto LABEL_13;
    }

LABEL_10:
    v31 = *(a1 + 92);
    v32 = *(a1 + 96);
    v38 = *(a1 + 80);
    v39 = *(a1 + 88);
    sub_1005B981C(&qword_101A16400);
    CRExtensible.rawValue.getter();
    v8 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      v33 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v37 normalizedPosition:{v31, v32}];
      [v7 setTailMagnet:v33];

      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  [v7 setHeadMagnet:0];
  if (*(a1 + 104))
  {
    goto LABEL_10;
  }

LABEL_13:
  [v7 setTailMagnet:0];
LABEL_14:
  sub_100C4F450(a1);
  v34 = *(a1 + 112);
  if (v34 == 2)
  {
    [v7 setUserDidSetControlPoint:1];
  }

  else
  {
    [v7 setUserDidSetControlPoint:v34 & 1];
  }

  return v7;
}

id sub_100C40790(uint64_t a1)
{
  v2 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v3 = *(a1 + *(v2 + 20));
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_100006370(0, &qword_101A16200);
    v5 = v3 + 48;
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);

      sub_100C46308(v6, v7);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setPersistedUUID:isa];

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_10:

    v12 = [objc_allocWithZone(CRLBezierSubpath) init];
    v13 = [objc_opt_self() bezierNodeWithPoint:{0.0, 0.0}];
    [v12 addNode:v13];

    sub_1005B981C(&unk_1019F4D60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101465920;
    *(v14 + 32) = v12;
    sub_100006370(0, &qword_101A16200);
    v15 = v8;
    v16 = v12;
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setSubpaths:v11.super.isa];

    goto LABEL_11;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_100006370(0, &qword_101A16200);
  v10 = v8;
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setSubpaths:v11.super.isa];
LABEL_11:

  [v8 setNaturalSize:{*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 4)}];
  sub_100C4CAE0(a1, type metadata accessor for CRLEditableBezierPathSourceData);
  return v8;
}

unint64_t sub_100C40AC4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4CB40(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C40CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C5AC();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100C40D24()
{
  v1 = 1701869940;
  v2 = 0x536C61727574616ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746E696F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100C40DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4CB50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C40E04(uint64_t a1)
{
  v2 = sub_100C4548C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C40E40(uint64_t a1)
{
  v2 = sub_100C4548C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C40E80(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4548C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16340);
  sub_100B99DB0(&qword_101A16358, &qword_101A16340);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 12);
    v11 = 1;
    sub_1009CF3B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 20);
    v11 = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[4];
    v11 = 3;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C410F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100C40E7C(v5, v7) & 1;
}

double sub_100C4113C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C4CCBC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C4119C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C411F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C41354(uint64_t a1)
{
  v2 = sub_100C455C4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C41580(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C600();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100C415D4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000011;
  v4 = 0x6853646C756F6873;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72616C616373;
  if (v1 != 1)
  {
    v5 = 0x536C61727574616ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C416A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4CF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C41708(uint64_t a1)
{
  v2 = sub_100C458DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C41744(uint64_t a1)
{
  v2 = sub_100C458DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C41784(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C458DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16308);
  sub_100B99DB0(&qword_101A16320, &qword_101A16308);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[2];
    v11 = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[4];
    v11 = 5;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C41A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100C41780(v5, v7) & 1;
}

double sub_100C41AA4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C4D19C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C41B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C41CBC(uint64_t a1)
{
  v2 = sub_100C45A14();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C41D0C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A162C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4617C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1009CF3B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 20);
    HIBYTE(v10) = 4;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[4];
    HIBYTE(v10) = 5;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C41F98()
{
  v1 = *v0;
  v2 = 0x69736F506C696174;
  v3 = 0x61547265746E6563;
  v4 = 0x536C61727574616ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A69536C696174;
  if (v1 != 1)
  {
    v5 = 0x615272656E726F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C42074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4D508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C420D8(uint64_t a1)
{
  v2 = sub_100C4617C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42114(uint64_t a1)
{
  v2 = sub_100C4617C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C42150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100C41D08(v5, v7) & 1;
}

double sub_100C4219C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C4D720(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C421FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C422D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C42354(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C42438(uint64_t a1)
{
  v2 = sub_100C462B4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C42484(void *a1, unint64_t a2, unint64_t a3, float a4, float a5)
{
  v11 = sub_1005B981C(&qword_101A162E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_100020E58(a1, a1[3]);
  sub_100C45D2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  sub_1009CF2EC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v18 = __PAIR64__(LODWORD(a5), LODWORD(a4));
    v17 = 1;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = a3;
    v17 = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100C4267C()
{
  v1 = 0x536C61727574616ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61507265697A6562;
  }
}

uint64_t sub_100C426F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4DA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C42754(uint64_t a1)
{
  v2 = sub_100C45D2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42790(uint64_t a1)
{
  v2 = sub_100C45D2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C427CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = *(a2 + 16);
  if (!sub_10067063C(*a1, *a2))
  {
    return 0;
  }

  if (v2 != v5 || v3 != v6)
  {
    return 0;
  }

  return sub_100B3216C(v4, v7);
}

void sub_100C4285C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100C4DB5C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_100C428B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42908(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C42A6C(uint64_t a1)
{
  v2 = sub_100C45E64();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C42C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10067CE54();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_100C42D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4560[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C42D98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4560[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100C42DFC()
{
  v1 = *v0;
  v2 = 0x6F72746E6F436E69;
  v3 = 0x72746E6F4374756FLL;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E696F5065646F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C42EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4DDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C42F2C(uint64_t a1)
{
  v2 = sub_100C4FF78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42F68(uint64_t a1)
{
  v2 = sub_100C4FF78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C42FA4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A165B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4FF78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = 0;
  sub_1009CF3B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[1];
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[2];
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[3];
    v11 = *(v3 + 32);
    v12 = 3;
    sub_1005B981C(&qword_101A165A8);
    sub_100B99DB0(&qword_101A165C0, &qword_101A165A8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[5];
    v12 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C4328C(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100C432B8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100C4896C(v7, v8) & 1;
}

double sub_100C43300@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100C4DF8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100C4335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C433B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C43404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C4FE10();
  v7 = sub_100C50F34();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C43474(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C43558(uint64_t a1)
{
  v2 = sub_100C500B0();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C435A4()
{
  v1 = 0x6465736F6C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

uint64_t sub_100C435FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4E2E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C43660(uint64_t a1)
{
  v2 = sub_100C446B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C4369C(uint64_t a1)
{
  v2 = sub_100C446B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C436D8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[2] = a3;
  v8 = sub_1005B981C(&qword_101A163C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100C446B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1005B981C(&qword_101A163B0);
  sub_100C4FA74(&qword_101A163D0, sub_100C4FB40);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = a4;
    v14 = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100C43938(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16388);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4504C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_100C44E20(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLEditableBezierPathSourceData(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_1005B981C(&qword_101A16378);
    sub_100C4F9FC(&qword_101A16390, sub_100C44550);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C43BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A16370);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C4504C();
  v24 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v11;
  v13 = v20;
  LOBYTE(v26) = 0;
  sub_100C44E20(&qword_1019F43A8, &type metadata accessor for UUID);
  v14 = v21;
  v15 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v14, v4);
  sub_1005B981C(&qword_101A16378);
  v25 = 1;
  sub_100C4F9FC(&qword_101A16380, sub_100C444F8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + v9[5]) = v26;
  v25 = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + v9[6]) = v26;
  sub_1005B981C(&unk_101A0D960);
  v25 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v9[7];
  (*(v22 + 8))(v24, v15);
  *(v12 + v16) = v26;
  sub_100C4F994(v12, v19, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_100005070(a1);
  return sub_100C4CAE0(v12, type metadata accessor for CRLEditableBezierPathSourceData);
}

uint64_t sub_100C44088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_10066CC84(*a1, *a2) & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

  return sub_100B3216C(v3, v5);
}

uint64_t sub_100C44108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100C4E400(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100C44164(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C441B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C442BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C443A0(uint64_t a1)
{
  v2 = sub_100C447E8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100C443F0()
{
  result = qword_101A15E90;
  if (!qword_101A15E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15E90);
  }

  return result;
}

unint64_t sub_100C44448()
{
  result = qword_101A15E98;
  if (!qword_101A15E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15E98);
  }

  return result;
}

unint64_t sub_100C444A0()
{
  result = qword_101A15EA0;
  if (!qword_101A15EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EA0);
  }

  return result;
}

unint64_t sub_100C444F8()
{
  result = qword_101A15EA8;
  if (!qword_101A15EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EA8);
  }

  return result;
}

unint64_t sub_100C44550()
{
  result = qword_101A15EB0;
  if (!qword_101A15EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EB0);
  }

  return result;
}

unint64_t sub_100C445A8()
{
  result = qword_101A15EB8;
  if (!qword_101A15EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EB8);
  }

  return result;
}

unint64_t sub_100C44600()
{
  result = qword_101A15EC0;
  if (!qword_101A15EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EC0);
  }

  return result;
}

unint64_t sub_100C44658()
{
  result = qword_101A15EC8;
  if (!qword_101A15EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EC8);
  }

  return result;
}

unint64_t sub_100C446B0()
{
  result = qword_101A15ED0;
  if (!qword_101A15ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15ED0);
  }

  return result;
}

unint64_t sub_100C44708()
{
  result = qword_101A15ED8;
  if (!qword_101A15ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15ED8);
  }

  return result;
}

unint64_t sub_100C44760()
{
  result = qword_101A15EE0;
  if (!qword_101A15EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EE0);
  }

  return result;
}

unint64_t sub_100C447E8()
{
  result = qword_101A15EF8;
  if (!qword_101A15EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15EF8);
  }

  return result;
}

unint64_t sub_100C4483C()
{
  v1 = 1684632949;
  v2 = 0x536C61727574616ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7368746170627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100C448BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4E680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C44920(uint64_t a1)
{
  v2 = sub_100C4504C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C4495C(uint64_t a1)
{
  v2 = sub_100C4504C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C449CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C44E20(&qword_101A15F10, type metadata accessor for CRLEditableBezierPathSourceData);
  v7 = sub_100C44E20(&qword_101A163A0, type metadata accessor for CRLEditableBezierPathSourceData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C44BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C44D14(uint64_t a1)
{
  v2 = sub_100C44E20(&qword_101A15F68, type metadata accessor for CRLEditableBezierPathSourceData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C44E20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100C44F44()
{
  result = qword_101A15F28;
  if (!qword_101A15F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F28);
  }

  return result;
}

unint64_t sub_100C44F9C()
{
  result = qword_101A15F30;
  if (!qword_101A15F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F30);
  }

  return result;
}

unint64_t sub_100C44FF4()
{
  result = qword_101A15F38;
  if (!qword_101A15F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F38);
  }

  return result;
}

unint64_t sub_100C4504C()
{
  result = qword_101A15F40;
  if (!qword_101A15F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F40);
  }

  return result;
}

unint64_t sub_100C450A4()
{
  result = qword_101A15F48;
  if (!qword_101A15F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F48);
  }

  return result;
}

unint64_t sub_100C450FC()
{
  result = qword_101A15F50;
  if (!qword_101A15F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F50);
  }

  return result;
}

unint64_t sub_100C451CC()
{
  result = qword_101A15F70;
  if (!qword_101A15F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F70);
  }

  return result;
}

unint64_t sub_100C45224()
{
  result = qword_101A15F78;
  if (!qword_101A15F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F78);
  }

  return result;
}

unint64_t sub_100C4527C()
{
  result = qword_101A15F80;
  if (!qword_101A15F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F80);
  }

  return result;
}

unint64_t sub_100C452D4()
{
  result = qword_101A15F88;
  if (!qword_101A15F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F88);
  }

  return result;
}

unint64_t sub_100C4532C()
{
  result = qword_101A15F90;
  if (!qword_101A15F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F90);
  }

  return result;
}

unint64_t sub_100C45384()
{
  result = qword_101A15F98;
  if (!qword_101A15F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15F98);
  }

  return result;
}

unint64_t sub_100C453DC()
{
  result = qword_101A15FA0;
  if (!qword_101A15FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FA0);
  }

  return result;
}

unint64_t sub_100C45434()
{
  result = qword_101A15FA8;
  if (!qword_101A15FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FA8);
  }

  return result;
}

unint64_t sub_100C4548C()
{
  result = qword_101A15FB0;
  if (!qword_101A15FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FB0);
  }

  return result;
}

unint64_t sub_100C454E4()
{
  result = qword_101A15FB8;
  if (!qword_101A15FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FB8);
  }

  return result;
}

unint64_t sub_100C4553C()
{
  result = qword_101A15FC0;
  if (!qword_101A15FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FC0);
  }

  return result;
}

unint64_t sub_100C455C4()
{
  result = qword_101A15FD8;
  if (!qword_101A15FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FD8);
  }

  return result;
}

unint64_t sub_100C4561C()
{
  result = qword_101A15FE0;
  if (!qword_101A15FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FE0);
  }

  return result;
}

unint64_t sub_100C45674()
{
  result = qword_101A15FE8;
  if (!qword_101A15FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FE8);
  }

  return result;
}

unint64_t sub_100C456CC()
{
  result = qword_101A15FF0;
  if (!qword_101A15FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FF0);
  }

  return result;
}

unint64_t sub_100C45724()
{
  result = qword_101A15FF8;
  if (!qword_101A15FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15FF8);
  }

  return result;
}

unint64_t sub_100C4577C()
{
  result = qword_101A16000;
  if (!qword_101A16000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16000);
  }

  return result;
}

unint64_t sub_100C457D4()
{
  result = qword_101A16008;
  if (!qword_101A16008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16008);
  }

  return result;
}

unint64_t sub_100C4582C()
{
  result = qword_101A16010;
  if (!qword_101A16010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16010);
  }

  return result;
}

unint64_t sub_100C45884()
{
  result = qword_101A16018;
  if (!qword_101A16018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16018);
  }

  return result;
}

unint64_t sub_100C458DC()
{
  result = qword_101A16020;
  if (!qword_101A16020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16020);
  }

  return result;
}

unint64_t sub_100C45934()
{
  result = qword_101A16028;
  if (!qword_101A16028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16028);
  }

  return result;
}

unint64_t sub_100C4598C()
{
  result = qword_101A16030;
  if (!qword_101A16030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16030);
  }

  return result;
}

unint64_t sub_100C45A14()
{
  result = qword_101A16048;
  if (!qword_101A16048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16048);
  }

  return result;
}

unint64_t sub_100C45A6C()
{
  result = qword_101A16050;
  if (!qword_101A16050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16050);
  }

  return result;
}

unint64_t sub_100C45AC4()
{
  result = qword_101A16058;
  if (!qword_101A16058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16058);
  }

  return result;
}

unint64_t sub_100C45B1C()
{
  result = qword_101A16060;
  if (!qword_101A16060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16060);
  }

  return result;
}

unint64_t sub_100C45B74()
{
  result = qword_101A16068;
  if (!qword_101A16068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16068);
  }

  return result;
}

unint64_t sub_100C45BCC()
{
  result = qword_101A16070;
  if (!qword_101A16070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16070);
  }

  return result;
}

unint64_t sub_100C45C24()
{
  result = qword_101A16078;
  if (!qword_101A16078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16078);
  }

  return result;
}

unint64_t sub_100C45C7C()
{
  result = qword_101A16080;
  if (!qword_101A16080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16080);
  }

  return result;
}

unint64_t sub_100C45CD4()
{
  result = qword_101A16088;
  if (!qword_101A16088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16088);
  }

  return result;
}

unint64_t sub_100C45D2C()
{
  result = qword_101A16090;
  if (!qword_101A16090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16090);
  }

  return result;
}

unint64_t sub_100C45D84()
{
  result = qword_101A16098;
  if (!qword_101A16098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16098);
  }

  return result;
}

unint64_t sub_100C45DDC()
{
  result = qword_101A160A0;
  if (!qword_101A160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160A0);
  }

  return result;
}

unint64_t sub_100C45E64()
{
  result = qword_101A160B8;
  if (!qword_101A160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160B8);
  }

  return result;
}

unint64_t sub_100C45EBC()
{
  result = qword_101A160C0;
  if (!qword_101A160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160C0);
  }

  return result;
}

unint64_t sub_100C45F14()
{
  result = qword_101A160C8;
  if (!qword_101A160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160C8);
  }

  return result;
}

unint64_t sub_100C45F6C()
{
  result = qword_101A160D0;
  if (!qword_101A160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160D0);
  }

  return result;
}

unint64_t sub_100C45FC4()
{
  result = qword_101A160D8;
  if (!qword_101A160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160D8);
  }

  return result;
}

unint64_t sub_100C4601C()
{
  result = qword_101A160E0;
  if (!qword_101A160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160E0);
  }

  return result;
}

unint64_t sub_100C46074()
{
  result = qword_101A160E8;
  if (!qword_101A160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160E8);
  }

  return result;
}

unint64_t sub_100C460CC()
{
  result = qword_101A160F0;
  if (!qword_101A160F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160F0);
  }

  return result;
}

unint64_t sub_100C46124()
{
  result = qword_101A160F8;
  if (!qword_101A160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A160F8);
  }

  return result;
}

unint64_t sub_100C4617C()
{
  result = qword_101A16100;
  if (!qword_101A16100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16100);
  }

  return result;
}

unint64_t sub_100C461D4()
{
  result = qword_101A16108;
  if (!qword_101A16108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16108);
  }

  return result;
}

unint64_t sub_100C4622C()
{
  result = qword_101A16110;
  if (!qword_101A16110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16110);
  }

  return result;
}

unint64_t sub_100C462B4()
{
  result = qword_101A16128;
  if (!qword_101A16128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16128);
  }

  return result;
}

id sub_100C46308(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setClosed:a2 & 1];
  v52 = _swiftEmptyArrayStorage;

  v5 = *(a1 + 16);
  if (v5)
  {
    v47 = v4;
    v6 = objc_opt_self();
    v46 = a1;
    v7 = a1 + 36;
    v8 = &selRef_allowResizeDelegate;
    v48 = v6;
    do
    {
      v9 = *(v7 + 20);
      v10 = *(v7 + 28);
      v11 = *(v7 + 4);
      v12 = *(v7 + 8);
      v13 = *(v7 - 4);
      v14 = *v7;
      v15 = *(v7 + 12);
      v16 = *(v7 + 16);
      v17 = v8[347];

      v18 = [v6 v17];
      v19 = v18;
      if (v10)
      {
        v50 = v18;

        v49 = objc_opt_self();
        v20 = [v49 _atomicIncrementAssertCount];
        v51 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v51);
        StaticString.description.getter();
        v21 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v22 = String._bridgeToObjectiveC()();

        v23 = [v22 lastPathComponent];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v27 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v20;
        v29 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v29;
        v30 = sub_1005CF04C();
        *(inited + 104) = v30;
        *(inited + 72) = v21;
        *(inited + 136) = &type metadata for String;
        v31 = sub_1000053B0();
        *(inited + 112) = v24;
        *(inited + 120) = v26;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v31;
        *(inited + 152) = 639;
        v32 = v51;
        *(inited + 216) = v29;
        *(inited + 224) = v30;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v32;
        v33 = v21;
        v34 = v32;
        v35 = static os_log_type_t.error.getter();
        sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v36 = static os_log_type_t.error.getter();
        sub_100005404(v27, &_mh_execute_header, v36, "Unknown bezier node type. Falling back to sharp.", 48, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v37 = swift_allocObject();
        v37[2] = 8;
        v37[3] = 0;
        v37[4] = 0;
        v37[5] = 0;
        v38 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        [v49 handleFailureInFunction:v39 file:v40 lineNumber:639 isFatal:0 format:v41 args:v38];

        v19 = v50;
        [v50 setType:1];
        v6 = v48;
        v8 = &selRef_allowResizeDelegate;
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }
        }

        else
        {
          v42 = 1;
        }

        [v18 setType:{v42, v46}];
      }

      v43 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v7 += 48;
      --v5;
    }

    while (v5);

    v4 = v47;
  }

  else
  {
  }

  sub_100006370(0, &qword_101A16208);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setNodes:isa];

  return v4;
}

unint64_t sub_100C468F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4B4B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C46A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.init(from:)();
}

uint64_t sub_100C46B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AF35C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100C46BCC()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x795474656E67616DLL;
  }
}

uint64_t sub_100C46C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4E7F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C46C9C(uint64_t a1)
{
  v2 = sub_100C50638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C46CD8(uint64_t a1)
{
  v2 = sub_100C50638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C46D14(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C50638();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16400);
  sub_100B99DB0(&qword_101A16598, &qword_101A16400);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 12);
    v11 = 1;
    sub_1009CF3B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[3];
    v11 = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C46F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 12);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_100AF35C8();
  v8 = static CRExtensible.== infix(_:_:)();
  v9 = 0;
  if ((v8 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    v9 = sub_100B3216C(v4, v7);
  }

  return v9 & 1;
}

double sub_100C46FFC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100C4E920(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100C47050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C470A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C470F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C504D0();
  v7 = sub_100C50D90();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C47168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C4724C(uint64_t a1)
{
  v2 = sub_100C50770();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C47374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C473F8()
{
  sub_100C50DE4();
  sub_100C4C654();
  return CRValue<>.init(from:)();
}

uint64_t sub_100C474A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100C47540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3();
  v7 = a4();

  return CRValue<>.minEncodingVersion.getter(a1, v6, v7, &protocol witness table for Int);
}

uint64_t sub_100C4760C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C654();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_100C47684()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45C0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C4770C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45C0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100C47758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4EBA8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100C4779C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6E67614D64616568;
  if (v1 != 4)
  {
    v4 = 0x6E67614D6C696174;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x724674657374756FLL;
  if (v1 != 2)
  {
    v5 = 0x6F5474657374756FLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_100C478A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C4EBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C478E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4EBA8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C47948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100C479B4(uint64_t a1)
{
  v2 = sub_100C4834C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C479F0(uint64_t a1)
{
  v2 = sub_100C4834C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C47A30(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16288);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4834C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v12 = *v3;
  BYTE8(v12) = *(v3 + 8);
  v14 = 0;
  sub_1005B981C(&qword_101A16270);
  sub_100B99DB0(&qword_101A16290, &qword_101A16270);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    *&v13 = *(v3 + 32);
    v14 = 1;
    sub_100C45BCC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v14 = 4;
    sub_100C4F480();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 96);
    v12 = *(v3 + 80);
    v13 = v10;
    v14 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v12 = *(v3 + 120);
    v14 = 7;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C47D60(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_100C47A2C(v13, v14) & 1;
}

double sub_100C47DD4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100C4EE78(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_100C47E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C47E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C47EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C4813C();
  v7 = sub_100C4F528();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C47F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C4803C(uint64_t a1)
{
  v2 = sub_100C48484();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100C4808C()
{
  result = qword_101A16130;
  if (!qword_101A16130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16130);
  }

  return result;
}

unint64_t sub_100C480E4()
{
  result = qword_101A16138;
  if (!qword_101A16138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16138);
  }

  return result;
}

unint64_t sub_100C4813C()
{
  result = qword_101A16140;
  if (!qword_101A16140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16140);
  }

  return result;
}

unint64_t sub_100C48194()
{
  result = qword_101A16148;
  if (!qword_101A16148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16148);
  }

  return result;
}

unint64_t sub_100C481EC()
{
  result = qword_101A16150;
  if (!qword_101A16150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16150);
  }

  return result;
}

unint64_t sub_100C48244()
{
  result = qword_101A16158;
  if (!qword_101A16158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16158);
  }

  return result;
}

unint64_t sub_100C4829C()
{
  result = qword_101A16160;
  if (!qword_101A16160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16160);
  }

  return result;
}

unint64_t sub_100C482F4()
{
  result = qword_101A16168;
  if (!qword_101A16168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16168);
  }

  return result;
}

unint64_t sub_100C4834C()
{
  result = qword_101A16170;
  if (!qword_101A16170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16170);
  }

  return result;
}

unint64_t sub_100C483A4()
{
  result = qword_101A16178;
  if (!qword_101A16178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16178);
  }

  return result;
}

unint64_t sub_100C483FC()
{
  result = qword_101A16180;
  if (!qword_101A16180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16180);
  }

  return result;
}

unint64_t sub_100C48484()
{
  result = qword_101A16198;
  if (!qword_101A16198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16198);
  }

  return result;
}

unint64_t sub_100C48644()
{
  result = qword_101A161B8;
  if (!qword_101A161B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161B8);
  }

  return result;
}

unint64_t sub_100C4869C()
{
  result = qword_101A161C0;
  if (!qword_101A161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161C0);
  }

  return result;
}

unint64_t sub_100C486F4()
{
  result = qword_101A161C8;
  if (!qword_101A161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161C8);
  }

  return result;
}

unint64_t sub_100C4874C()
{
  result = qword_101A161D0;
  if (!qword_101A161D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161D0);
  }

  return result;
}

unint64_t sub_100C487A4()
{
  result = qword_101A161D8;
  if (!qword_101A161D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161D8);
  }

  return result;
}

unint64_t sub_100C487FC()
{
  result = qword_101A161E0;
  if (!qword_101A161E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A161E0);
  }

  return result;
}

uint64_t sub_100C488C8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  if ((sub_1006737E0(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_100B3216C(v12, v13);
}

uint64_t sub_100C4896C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  sub_10067CE54();
  if (static CRExtensible.== infix(_:_:)())
  {
    v4 = sub_100B3216C(*(a1 + 40), *(a2 + 40));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100C48A6C(uint64_t *a1, uint64_t *a2)
{
  v25 = *a1;
  LOBYTE(v26) = *(a1 + 8);
  v33 = *a2;
  v34 = *(a2 + 8);
  sub_100C4C654();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  v6 = a1[4];
  v8 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = a2[4];
  v10 = sub_10067063C(a1[2], a2[2]);
  v11 = 0;
  if (!v10 || v5 != v8 || v4 != v7)
  {
    return v11 & 1;
  }

  if ((sub_100B3216C(v6, v9) & 1) == 0 || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    goto LABEL_25;
  }

  v12 = a1[6];
  v13 = a1[7];
  v15 = a1[8];
  v14 = a1[9];
  v16 = a2[6];
  v17 = a2[7];
  v19 = a2[8];
  v18 = a2[9];
  if (v14)
  {
    if (!v18)
    {
      goto LABEL_16;
    }

    v25 = a1[6];
    LOBYTE(v26) = v13 & 1;
    v33 = v16;
    v34 = v17 & 1;
    sub_100AF35C8();

    if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || *(&v13 + 1) != *(&v17 + 1) || *&v15 != *&v19)
    {
      goto LABEL_24;
    }

    v20 = sub_100B3216C(v14, v18);

    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v18)
  {
    goto LABEL_16;
  }

  v12 = a1[10];
  v13 = a1[11];
  v15 = a1[12];
  v14 = a1[13];
  v16 = a2[10];
  v17 = a2[11];
  v19 = a2[12];
  v18 = a2[13];
  if (v14)
  {
    if (v18)
    {
      v25 = a1[10];
      LOBYTE(v26) = v13 & 1;
      v33 = v16;
      v34 = v17 & 1;
      sub_100AF35C8();

      if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && *(&v13 + 1) == *(&v17 + 1) && *&v15 == *&v19)
      {
        v21 = sub_100B3216C(v14, v18);

        if ((v21 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }

LABEL_24:

      goto LABEL_25;
    }

LABEL_16:
    v25 = v12;
    v26 = v13;
    v27 = v15;
    v28 = v14;
    v29 = v16;
    v30 = v17;
    v31 = v19;
    v32 = v18;

    sub_10000CAAC(&v25, &qword_101A16240);
    goto LABEL_25;
  }

  if (v18)
  {
    goto LABEL_16;
  }

LABEL_28:
  v23 = *(a1 + 112);
  v24 = *(a2 + 112);
  if (v23 == 2)
  {
    if (v24 == 2)
    {
LABEL_33:
      v11 = sub_100B3216C(a1[15], a2[15]);
      return v11 & 1;
    }

LABEL_25:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if (v24 != 2 && ((v24 ^ v23) & 1) == 0)
  {
    goto LABEL_33;
  }

  return v11 & 1;
}

uint64_t sub_100C48DA4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24))
  {
    return sub_100B3216C(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C48E28(uint64_t a1, uint64_t a2)
{
  sub_100C4C600();
  if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && ((*(a1 + 25) ^ *(a2 + 25)) & 1) == 0)
  {
    v4 = sub_100B3216C(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100C48F0C(uint64_t a1, uint64_t a2)
{
  sub_100C4C5AC();
  if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24))
  {
    v4 = sub_100B3216C(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100C48FE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_101A15D00);
  __chkstk_darwin(v8 - 8);
  v10 = &v92[-v9];
  v11 = sub_1005B981C(&qword_101A16210);
  __chkstk_darwin(v11);
  v14 = &v92[-v13];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_3;
  }

  v17 = *(a1 + 2);
  v18 = *(a2 + 2);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_3;
    }

    if (*(a1 + 1) != *(a2 + 1) || v17 != v18)
    {
      v19 = v12;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_3;
  }

  v21 = *(a1 + 4);
  v22 = *(a2 + 4);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_3;
    }

    if (*(a1 + 3) != *(a2 + 3) || v21 != v22)
    {
      v23 = v12;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v23;
      if ((v24 & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_3;
  }

  v25 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (!v25)
    {
      goto LABEL_3;
    }

    v26 = *(a1 + 5);
    v27 = *(a1 + 6);
    v28 = *(a1 + 7);
    v29 = *(a1 + 8);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    v32 = *(a2 + 7);
    v33 = *(a2 + 8);
    v158 = *(a1 + 9);
    v159 = v30;
    v160 = v31 & 1;
    v161 = HIDWORD(v31);
    v162 = v32;
    v163 = v33;
    v164 = v25;
    v153 = v26;
    v154 = v27 & 1;
    v155 = HIDWORD(v27);
    v156 = v28;
    v157 = v29;
    v98 = v12;

    LODWORD(v97) = sub_100C48F0C(&v153, &v159);

    v12 = v98;
    if ((v97 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (v25)
  {
    goto LABEL_3;
  }

  v34 = *(a1 + 14);
  v35 = *(a2 + 14);
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_3;
    }

    v98 = v12;
    v36 = *(a1 + 5);
    v37 = *(a1 + 6);
    v38 = *(a2 + 6);
    v151[0] = *(a2 + 5);
    v151[1] = v38;
    v152 = v35;
    v149[0] = v36;
    v149[1] = v37;
    v150 = v34;

    LODWORD(v97) = sub_100C48E28(v149, v151);

    if ((v97 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v35)
    {
      goto LABEL_3;
    }

    v98 = v12;
  }

  v40 = *(a1 + 15);
  v39 = *(a1 + 16);
  v97 = *(a1 + 17);
  v41 = *(a2 + 15);
  v42 = *(a2 + 16);
  if (!v40)
  {
    if (!v41)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v41)
  {
LABEL_38:
    v46 = v40;
    sub_100C4C508(*(a2 + 15));
    sub_100C4C508(v46);
    sub_100B98A0C(v46);
    v47 = v41;
LABEL_45:
    sub_100B98A0C(v47);
    goto LABEL_3;
  }

  v94 = *(a2 + 17);
  v95 = v40;
  v96 = v39;
  if (!sub_10067063C(v40, v41))
  {
    sub_100C4C508(v41);
    v48 = v95;
    sub_100C4C508(v95);

    v47 = v48;
    goto LABEL_45;
  }

  if (*&v96 != *&v42)
  {
    sub_100C4C508(v41);
    v54 = v95;
    sub_100C4C508(v95);

    v47 = v54;
    goto LABEL_45;
  }

  v43 = *(&v42 + 1);
  v44 = *(&v96 + 1);
  v45 = v94;
  sub_100C4C508(v41);
  sub_100C4C508(v95);
  if (v44 != v43)
  {

    v47 = v95;
    goto LABEL_45;
  }

  v93 = sub_100B3216C(v97, v45);

  sub_100B98A0C(v95);
  if ((v93 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_40:
  v49 = *(a1 + 22);
  v50 = *(a2 + 22);
  if (v49)
  {
    if (!v50)
    {
      goto LABEL_3;
    }

    v51 = *(a1 + 9);
    v52 = *(a1 + 10);
    v53 = *(a2 + 10);
    v147[0] = *(a2 + 9);
    v147[1] = v53;
    v148 = v50;
    v145[0] = v51;
    v145[1] = v52;
    v146 = v49;

    LODWORD(v97) = sub_100C48DA4(v145, v147);

    if ((v97 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v50)
    {
      goto LABEL_3;
    }
  }

  v56 = *(a1 + 264);
  v55 = *(a1 + 280);
  v134[4] = *(a1 + 248);
  v134[5] = v56;
  v57 = *(a1 + 264);
  v58 = *(a1 + 280);
  v59 = *(a1 + 296);
  v134[6] = v55;
  v134[7] = v59;
  v60 = *(a1 + 200);
  v134[0] = *(a1 + 184);
  v134[1] = v60;
  v61 = *(a1 + 232);
  v134[2] = *(a1 + 216);
  v134[3] = v61;
  v62 = *(a2 + 184);
  v63 = *(a2 + 200);
  v64 = *(a2 + 216);
  v135[3] = *(a2 + 232);
  v135[2] = v64;
  v135[1] = v63;
  v135[0] = v62;
  v65 = *(a2 + 248);
  v66 = *(a2 + 264);
  v67 = *(a2 + 280);
  v68 = v66;
  v69 = v67;
  v135[7] = *(a2 + 296);
  v135[6] = v67;
  v135[5] = v66;
  v135[4] = v65;
  v70 = *(a1 + 264);
  v122 = *(a1 + 248);
  v123 = v70;
  v71 = *(a1 + 296);
  v124 = *(a1 + 280);
  v125 = v71;
  v72 = *(a1 + 200);
  v118 = *(a1 + 184);
  v119 = v72;
  v73 = *(a1 + 232);
  v120 = *(a1 + 216);
  v121 = v73;
  v74 = *(a2 + 184);
  v75 = *(a2 + 232);
  v128 = *(a2 + 216);
  v129 = v75;
  v76 = *(a2 + 200);
  v126 = v74;
  v127 = v76;
  v77 = *(a2 + 248);
  v78 = *(a2 + 296);
  v132 = v69;
  v133 = v78;
  v130 = v77;
  v131 = v68;
  v79 = *(a1 + 184);
  v80 = *(a1 + 216);
  v136[3] = *(a1 + 232);
  v136[2] = v80;
  v136[1] = *(a1 + 200);
  v136[0] = v79;
  v81 = *(a1 + 248);
  v136[7] = *(a1 + 296);
  v136[6] = v58;
  v136[5] = v57;
  v136[4] = v81;
  if (sub_100A03AB8(v136) != 1)
  {
    v101[4] = v130;
    v101[5] = v131;
    v101[6] = v132;
    v101[7] = v133;
    v101[0] = v126;
    v101[1] = v127;
    v101[2] = v128;
    v101[3] = v129;
    if (sub_100A03AB8(v101) != 1)
    {
      v99[4] = v130;
      v99[5] = v131;
      v99[6] = v132;
      v99[7] = v133;
      v99[0] = v126;
      v99[1] = v127;
      v99[2] = v128;
      v99[3] = v129;
      v104 = v128;
      v105 = v129;
      v102 = v126;
      v103 = v127;
      v108 = v132;
      v109 = v133;
      v106 = v130;
      v107 = v131;
      v140 = v121;
      v139 = v120;
      v138 = v119;
      v137 = v118;
      v144 = v125;
      v143 = v124;
      v142 = v123;
      v141 = v122;
      sub_10000BE14(v134, v100, &qword_101A16218);
      sub_10000BE14(v135, v100, &qword_101A16218);
      LODWORD(v97) = sub_100C48A6C(&v137, &v102);
      sub_10000CAAC(v99, &qword_101A16218);
      v100[4] = v122;
      v100[5] = v123;
      v100[6] = v124;
      v100[7] = v125;
      v100[0] = v118;
      v100[1] = v119;
      v100[2] = v120;
      v100[3] = v121;
      sub_10000CAAC(v100, &qword_101A16218);
      if ((v97 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_55;
    }

LABEL_53:
    v114 = v130;
    v115 = v131;
    v116 = v132;
    v117 = v133;
    v110 = v126;
    v111 = v127;
    v112 = v128;
    v113 = v129;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v109 = v125;
    v102 = v118;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    sub_10000BE14(v134, &v137, &qword_101A16218);
    sub_10000BE14(v135, &v137, &qword_101A16218);
    v82 = &unk_101A16220;
    v83 = &v102;
LABEL_70:
    sub_10000CAAC(v83, v82);
    goto LABEL_3;
  }

  v106 = v130;
  v107 = v131;
  v108 = v132;
  v109 = v133;
  v102 = v126;
  v103 = v127;
  v104 = v128;
  v105 = v129;
  if (sub_100A03AB8(&v102) != 1)
  {
    goto LABEL_53;
  }

  v141 = v122;
  v142 = v123;
  v143 = v124;
  v144 = v125;
  v137 = v118;
  v138 = v119;
  v139 = v120;
  v140 = v121;
  sub_10000BE14(v134, v101, &qword_101A16218);
  sub_10000BE14(v135, v101, &qword_101A16218);
  sub_10000CAAC(&v137, &qword_101A16218);
LABEL_55:
  v97 = type metadata accessor for CRLPathSourceData(0);
  v84 = *(v97 + 52);
  v85 = *(v98 + 48);
  sub_10000BE14(&a1[v84], v14, &qword_101A15D00);
  v98 = v85;
  sub_10000BE14(&a2[v84], v14 + v85, &qword_101A15D00);
  v86 = *(v5 + 48);
  if (v86(v14, 1, v4) == 1)
  {
    if (v86(v14 + v98, 1, v4) == 1)
    {
      sub_10000CAAC(v14, &qword_101A15D00);
LABEL_58:
      v15 = sub_100B3216C(*&a1[*(v97 + 56)], *&a2[*(v97 + 56)]);
      return v15 & 1;
    }

    goto LABEL_61;
  }

  sub_10000BE14(v14, v10, &qword_101A15D00);
  if (v86(v14 + v98, 1, v4) == 1)
  {
    sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
LABEL_61:
    v82 = &qword_101A16210;
LABEL_69:
    v83 = v14;
    goto LABEL_70;
  }

  sub_100C4C548(v14 + v98, v7);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (sub_1006737E0(*&v10[v4[5]], *&v7[v4[5]]) & 1) == 0 || (v87 = v4[6], v88 = &v10[v87], v89 = *&v10[v87], v90 = &v7[v87], v89 != *v90) || v88[1] != v90[1])
  {
    sub_100C4CAE0(v7, type metadata accessor for CRLEditableBezierPathSourceData);
    sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
    v82 = &qword_101A15D00;
    goto LABEL_69;
  }

  v91 = sub_100B3216C(*&v10[v4[7]], *&v7[v4[7]]);
  sub_100C4CAE0(v7, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_10000CAAC(v14, &qword_101A15D00);
  if (v91)
  {
    goto LABEL_58;
  }

LABEL_3:
  v15 = 0;
  return v15 & 1;
}

id sub_100C49B24(float *a1)
{
  if (a1[2])
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 396;
    v14 = v28;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Unknown scalar path source type. Falling back to rounded rectangle.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:396 isFatal:0 format:v23 args:v20];

    v24 = 0;
  }

  else
  {
    v24 = *a1;
  }

  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v24 scalar:*(a1 + 24) naturalSize:a1[3] continuousCurve:{a1[4], a1[5]}];
  [v25 setShouldShowKnob:*(a1 + 25)];
  return v25;
}

char *sub_100C49F20(unsigned __int8 *a1)
{
  v2 = sub_1005B981C(&qword_101A15D00);
  __chkstk_darwin(v2 - 8);
  v4 = &v93 - v3;
  v5 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v93 - v11;
  v13 = *(a1 + 9);
  if (v13)
  {
    v15 = *(a1 + 7);
    v14 = *(a1 + 8);
    v16 = *(a1 + 6);
    v104 = *(a1 + 5);
    v105 = v16 & 1;
    v106 = HIDWORD(v16);
    v107 = v15;
    v108 = v14;
    v109 = v13;
    sub_100006370(0, &qword_101A163F8);

    v17 = sub_100C3FD8C(&v104);
LABEL_6:
    v4 = v17;
    [v17 setHasHorizontalFlip:*a1];
    [v4 setHasVerticalFlip:a1[1]];
    if (*(a1 + 2))
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v4 setLocalizationKey:v23];

    if (*(a1 + 4))
    {
      v24 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = 0;
    }

    [v4 setUserDefinedName:v24];

    return v4;
  }

  v18 = *(a1 + 14);
  if (v18)
  {
    v20 = *(a1 + 12);
    v19 = *(a1 + 13);
    v22 = *(a1 + 10);
    v21 = *(a1 + 11);
    v94 = v21 & 1;
    v104 = v22;
    v105 = v21 & 1;
    v106 = HIDWORD(v21);
    v107 = v20;
    LOWORD(v108) = v19 & 0x101;
    v109 = v18;
    sub_100006370(0, &qword_101A163F0);
    *&v96 = v22;
    *(&v96 + 1) = v21;
    *&v97 = v20;
    *(&v97 + 1) = v19;
    *&v98 = v18;
    sub_100C4F7DC(&v96, v95);
    v4 = sub_100C49B24(&v104);

LABEL_5:
    v17 = v4;
    goto LABEL_6;
  }

  v26 = v10;
  v27 = &v96;
  v28 = *(a1 + 248);
  v29 = *(a1 + 200);
  v96 = *(a1 + 184);
  v97 = v29;
  v30 = *(a1 + 232);
  v98 = *(a1 + 216);
  v99 = v30;
  v31 = *(a1 + 264);
  v32 = *(a1 + 280);
  v100 = v28;
  v101 = v31;
  v33 = *(a1 + 296);
  v102 = v32;
  v103 = v33;
  if (sub_100A03AB8(&v96) == 1)
  {
    v27 = *(a1 + 15);
    if (!v27)
    {
      if (*(a1 + 22))
      {
        v17 = [objc_allocWithZone(CRLCalloutPathSource) initWithCornerRadius:*(a1 + 40) & 1 tailPosition:*(a1 + 39) tailSize:*(a1 + 36) naturalSize:*(a1 + 37) tailAtCenter:{*(a1 + 38), *(a1 + 41), *(a1 + 42)}];
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    v34 = objc_allocWithZone(CRLBezierPathSource);
    sub_100006370(0, &qword_101A02480);

    v36 = sub_100C58684(v35);

    v4 = [v34 initWithBezierPath:v36];

    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v37 = v27[5];
  v27[12] = v27[4];
  v27[13] = v37;
  v38 = v27[7];
  v27[14] = v27[6];
  v27[15] = v38;
  v39 = v27[1];
  v27[8] = *v27;
  v27[9] = v39;
  v40 = v27[3];
  v27[10] = v27[2];
  v27[11] = v40;
  sub_100006370(0, &unk_101A10770);
  sub_100C4F418(&v96, v95);
  v41 = sub_100C4018C(&v104);
  if (v41)
  {
    v17 = v41;
    goto LABEL_6;
  }

  v93 = objc_opt_self();
  v42 = [v93 _atomicIncrementAssertCount];
  v95[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v95);
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 lastPathComponent];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v49 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v42;
  v51 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v51;
  v52 = sub_1005CF04C();
  *(inited + 104) = v52;
  *(inited + 72) = v43;
  *(inited + 136) = &type metadata for String;
  v53 = sub_1000053B0();
  *(inited + 112) = v46;
  *(inited + 120) = v48;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v53;
  *(inited + 152) = 222;
  v54 = v95[0];
  *(inited + 216) = v51;
  *(inited + 224) = v52;
  *(inited + 192) = v54;
  v55 = v43;
  v56 = v54;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v58 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v58, "Unable to make connection line path source from connection line path data. Falling back to rectangle.", 101, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v59 = swift_allocObject();
  v59[2] = 8;
  v59[3] = 0;
  v59[4] = 0;
  v59[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v60 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  [v93 handleFailureInFunction:v60 file:v6 lineNumber:222 isFatal:0 format:v9 args:v26];

  v61 = sub_10011ECB4();
  v12 = [objc_opt_self() bezierPathWithRect:{v61, v62, v63, v64}];
  v4 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v12];

  if (v4)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_26:
  v65 = type metadata accessor for CRLPathSourceData(0);
  sub_10000BE14(&a1[*(v65 + 52)], v4, &qword_101A15D00);
  if ((*(v6 + 6))(v4, 1, v26) != 1)
  {
LABEL_31:
    sub_100C4C548(v4, v12);
    sub_100006370(0, &unk_101A10750);
    sub_100C4F994(v12, v9, type metadata accessor for CRLEditableBezierPathSourceData);
    v4 = sub_100C40790(v9);
    sub_100C4CAE0(v12, type metadata accessor for CRLEditableBezierPathSourceData);
    goto LABEL_5;
  }

  sub_10000CAAC(v4, &qword_101A15D00);
  v66 = objc_opt_self();
  v67 = [v66 _atomicIncrementAssertCount];
  v104 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v104);
  StaticString.description.getter();
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v69 = String._bridgeToObjectiveC()();

  v70 = [v69 lastPathComponent];

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v74 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_10146CA70;
  *(v75 + 56) = &type metadata for Int32;
  *(v75 + 64) = &protocol witness table for Int32;
  *(v75 + 32) = v67;
  v76 = sub_100006370(0, &qword_1019F4D30);
  *(v75 + 96) = v76;
  v77 = sub_1005CF04C();
  *(v75 + 104) = v77;
  *(v75 + 72) = v68;
  *(v75 + 136) = &type metadata for String;
  v78 = sub_1000053B0();
  *(v75 + 112) = v71;
  *(v75 + 120) = v73;
  *(v75 + 176) = &type metadata for UInt;
  *(v75 + 184) = &protocol witness table for UInt;
  *(v75 + 144) = v78;
  *(v75 + 152) = 232;
  v79 = v104;
  *(v75 + 216) = v76;
  *(v75 + 224) = v77;
  *(v75 + 192) = v79;
  v80 = v68;
  v81 = v79;
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v83 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v83, "Missing path source type specific data. Falling back to rectangle.", 66, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v84 = swift_allocObject();
  v84[2] = 8;
  v84[3] = 0;
  v84[4] = 0;
  v84[5] = 0;
  v9 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v85 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v12 = v87;
  v88 = String._bridgeToObjectiveC()();

  [v66 handleFailureInFunction:v85 file:v86 lineNumber:232 isFatal:0 format:v88 args:v9];

  v89 = sub_10011ECB4();
  a1 = [objc_opt_self() bezierPathWithRect:{v89, v90, v91, v92}];
  v4 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:a1];

  if (!v4)
  {
    __break(1u);
    goto LABEL_31;
  }

  return v4;
}

float sub_100C4ABF4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  v5 = v4;
  if (v4 > 99)
  {
    if (v4 == 100)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (v4 == 200)
    {
      v5 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_12;
    }

    if (v4 == 10)
    {
      v5 = 2;
      goto LABEL_12;
    }
  }

  v35 = objc_opt_self();
  v6 = [v35 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36);
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
  v15 = sub_100006370(0, &qword_1019F4D30);
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
  *(inited + 152) = 292;
  v18 = v36;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Unknown point path source type. Falling back to left single arrow.", 66, 2, _swiftEmptyArrayStorage);

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

  [v35 handleFailureInFunction:v25 file:v26 lineNumber:292 isFatal:0 format:v27 args:v24];

  v5 = 0;
LABEL_12:
  [a1 point];
  v29 = v28;
  v31 = v30;
  [a1 naturalSize];
  result = v32;
  *&v34 = v34;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = v29;
  *(a2 + 16) = v31;
  *(a2 + 20) = result;
  *(a2 + 24) = LODWORD(v34);
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

id sub_100C4B038@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  if (v4 == 2)
  {
    v5 = 0;
    LOBYTE(v38) = 0;
    v6 = 2;
  }

  else if (v4 == 1)
  {
    v5 = 0;
    LOBYTE(v38) = 0;
    v6 = 1;
  }

  else if (v4)
  {
    v37 = objc_opt_self();
    v7 = [v37 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 373;
    v19 = v38;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "Unknown point path source type. Falling back to rounded rectangle.", 66, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v26 file:v27 lineNumber:373 isFatal:0 format:v28 args:v25];

    v6 = 0;
    LOBYTE(v38) = 0;
    v5 = 1;
  }

  else
  {
    LOBYTE(v38) = 0;
    v5 = [a1 isCurveContinuous];
    v6 = 0;
  }

  [a1 scalar];
  v30 = v29;
  [a1 naturalSize];
  v32 = v31;
  v34 = v33;
  result = [a1 shouldShowKnob];
  v36 = v38;
  *a2 = v6;
  *(a2 + 8) = v36;
  *(a2 + 12) = v30;
  *(a2 + 16) = v32;
  *(a2 + 20) = v34;
  *(a2 + 24) = v5;
  *(a2 + 25) = result;
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

unint64_t sub_100C4B4B4(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_100C4B4C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = &vars0;
  v6 = a1;
  v4 = a2;
  result = sub_100C4B4B4(a1);
  if ((LODWORD(a3) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v34 = result;
    v33 = objc_opt_self();
    v5 = [v33 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v16;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v19 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v19;
      v20 = sub_1005CF04C();
      *(inited + 104) = v20;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v7;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 711;
      v22 = *(v10 - 14);
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = v8;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", 72, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      [v33 handleFailureInFunction:v29 file:v30 lineNumber:711 isFatal:0 format:v31 args:v28];

      a3 = 0.5;
      a4 = 0.5;
      result = v34;
      goto LABEL_6;
    }

LABEL_10:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  v32 = result;
  if (result == 8)
  {
    v32 = v6;
  }

  *v4 = v32;
  *(v4 + 8) = result == 8;
  *(v4 + 12) = a3;
  *(v4 + 16) = a4;
  *(v4 + 24) = _swiftEmptyDictionarySingleton;
  return result;
}

id sub_100C4B8E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  if (v4 == 1)
  {
    v85 = 0;
    v76 = 1;
  }

  else if (v4)
  {
    v77 = objc_opt_self();
    v5 = [v77 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 763;
    v17 = aBlock;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Unknown point path source type. Falling back to quadratic.", 58, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v77 handleFailureInFunction:v24 file:v25 lineNumber:763 isFatal:0 format:v26 args:v23];

    v76 = 0;
    v85 = 0;
  }

  else
  {
    v76 = 0;
    v85 = 0;
  }

  [a1 outsetFrom];
  v28 = v27;
  [a1 outsetTo];
  v30 = v29;
  v31 = a1;
  v32 = [v31 bezierPathWithoutFlips];
  v33 = swift_allocObject();
  *(v33 + 16) = _swiftEmptyArrayStorage;
  v34 = (v33 + 16);
  v83 = sub_100C51078;
  v84 = v33;
  aBlock = _NSConcreteStackBlock;
  v80 = *"";
  v81 = sub_100CD0AFC;
  v82 = &unk_10189B950;
  v35 = _Block_copy(&aBlock);

  [v32 iteratePathElementsWithBlock:v35];

  _Block_release(v35);
  swift_beginAccess();
  v36 = *v34;

  [v31 naturalSize];
  v38 = v37;
  v40 = v39;

  v78 = v31;
  v41 = [v31 headMagnet];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 magnetType];
    [v42 magnetNormalizedPosition];
    *&v44 = v44;
    *&v45 = v45;
    sub_100C4B4C4(v43, &v86, *&v44, *&v45);
    v46 = v86;
    v47 = v87;
    v48 = v90;
    v49 = v88;
    v50 = v89;

    v51 = v47 | (v49 << 32);
  }

  else
  {
    v46 = 0;
    v51 = 0;
    v50 = 0;
    v48 = 0;
  }

  v52 = [v78 tailMagnet];
  if (v52)
  {
    v53 = v52;
    v75 = v51;
    v54 = [v52 magnetType];
    [v53 magnetNormalizedPosition];
    *&v55 = v55;
    *&v56 = v56;
    sub_100C4B4C4(v54, &aBlock, *&v55, *&v56);
    v74 = aBlock;
    v57 = v48;
    v58 = v46;
    v59 = v80;
    v60 = v82;
    v61 = a2;
    v62 = v50;
    v63 = v36;
    v65 = HIDWORD(v80);
    v64 = v81;

    v66 = v59 | (v65 << 32);
    v46 = v58;
    v48 = v57;
    v36 = v63;
    v50 = v62;
    a2 = v61;
    v67 = v74;
    v51 = v75;
  }

  else
  {
    v67 = 0;
    v66 = 0;
    v64 = 0;
    v60 = 0;
  }

  result = [v78 userDidSetControlPoint];
  v73 = v85;
  *a2 = v76;
  *(a2 + 8) = v73;
  *(a2 + 16) = v36;
  v69 = v38;
  *(a2 + 24) = v69;
  v68 = v40;
  *(a2 + 28) = v68;
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  v71 = v28;
  *(a2 + 40) = v71;
  v70 = v30;
  *(a2 + 44) = v70;
  *(a2 + 48) = v46;
  *(a2 + 56) = v51;
  *(a2 + 64) = v50;
  *(a2 + 72) = v48;
  *(a2 + 80) = v67;
  *(a2 + 88) = v66;
  *(a2 + 96) = v64;
  *(a2 + 104) = v60;
  *(a2 + 112) = result;
  *(a2 + 120) = _swiftEmptyDictionarySingleton;
  return result;
}

float sub_100C4BFB4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 rawTailPosition];
  v5 = v4;
  v7 = v6;
  [a1 tailSize];
  v9 = v8;
  [a1 cornerRadius];
  v11 = v10;
  v12 = [a1 isTailAtCenter];
  [a1 naturalSize];
  result = v13;
  *&v15 = v15;
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 20) = result;
  *(a2 + 24) = LODWORD(v15);
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

float sub_100C4C074@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 inControlPoint];
  v5 = v4;
  v7 = v6;
  [a1 nodePoint];
  v9 = v8;
  v11 = v10;
  [a1 outControlPoint];
  v13 = v12;
  v15 = v14;
  v16 = [a1 type];
  if (v16 < 2)
  {

    goto LABEL_10;
  }

  if ((v16 - 3) >= 2)
  {
    if (v16 == 2)
    {

      LOBYTE(v48) = 0;
      v17 = 1;
      goto LABEL_11;
    }

    v47 = objc_opt_self();
    v18 = [v47 _atomicIncrementAssertCount];
    v48 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v48);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 552;
    v30 = v48;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "Unknown bezier node type. Falling back to sharp.", 48, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v37 file:v38 lineNumber:552 isFatal:0 format:v39 args:v36];

LABEL_10:
    v17 = 0;
    LOBYTE(v48) = 0;
    goto LABEL_11;
  }

  LOBYTE(v48) = 0;
  v17 = 2;
LABEL_11:
  result = v15;
  v41 = v13;
  v42 = v11;
  v43 = v9;
  v44 = v7;
  v45 = v5;
  v46 = v48;
  *a2 = v45;
  *(a2 + 4) = v44;
  *(a2 + 8) = v43;
  *(a2 + 12) = v42;
  *(a2 + 16) = v41;
  *(a2 + 20) = result;
  *(a2 + 24) = v17;
  *(a2 + 32) = v46;
  *(a2 + 40) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100C4C508(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100C4C548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C4C5AC()
{
  result = qword_101A16228;
  if (!qword_101A16228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16228);
  }

  return result;
}

unint64_t sub_100C4C600()
{
  result = qword_101A16230;
  if (!qword_101A16230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16230);
  }

  return result;
}

unint64_t sub_100C4C654()
{
  result = qword_101A16238;
  if (!qword_101A16238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16238);
  }

  return result;
}

uint64_t sub_100C4C6A8(uint64_t a1)
{
  if ((a1 + 1) > 0xA)
  {
    return 11;
  }

  else
  {
    return byte_1014A4600[a1 + 1];
  }
}

uint64_t sub_100C4C6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x8000000101593D50 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974726556736168 && a2 == 0xEF70696C466C6163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEF79654B6E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF656D614E64656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101593D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101593DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101593DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101593E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100C4CA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C4CAE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100C4CB40(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100C4CB50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100C4CCBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16338);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4548C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16340);
  v17 = 0;
  sub_100B99DB0(&qword_101A16348, &qword_101A16340);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v15;
  v10 = v16;
  v17 = 1;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v17 = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15;
  sub_1005B981C(&unk_101A0D960);
  v17 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  result = sub_100005070(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 20) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_100C4CF88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101593E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6853646C756F6873 && a2 == 0xEE00626F6E4B776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100C4D19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C458DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16308);
  LOBYTE(v21) = 0;
  sub_100B99DB0(&qword_101A16310, &qword_101A16308);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v33 = v25;
  LOBYTE(v24) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v21) = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v24;
  LOBYTE(v24) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v24) = 4;
  HIDWORD(v20) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&unk_101A0D960);
  v31 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v13 & 1;
  v15 = BYTE4(v20) & 1;
  (*(v6 + 8))(v8, v5);
  v16 = v32;
  *&v21 = v9;
  v17 = v33;
  BYTE8(v21) = v33;
  HIDWORD(v21) = v11;
  *&v22 = v12;
  BYTE8(v22) = v14;
  BYTE9(v22) = v15;
  v23 = v32;
  sub_100C4F7DC(&v21, &v24);
  sub_100005070(a1);
  v24 = v9;
  v25 = v17;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  result = sub_100C4F814(&v24);
  v19 = v22;
  *a2 = v21;
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_100C4D508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69736F506C696174 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A69536C696174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61547265746E6563 && a2 == 0xEA00000000006C69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100C4D720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A162B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4617C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v22) = 0;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v25;
  v10 = v26;
  LOBYTE(v25) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v25) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v25) = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 4;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v25;
  v17 = v26;
  sub_1005B981C(&unk_101A0D960);
  v33 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v18 = v34;
  *&v22 = __PAIR64__(v10, v9);
  *(&v22 + 1) = __PAIR64__(v14, v12);
  LOBYTE(v23) = v15 & 1;
  *(&v23 + 4) = __PAIR64__(v17, v16);
  v24 = v34;
  sub_100C4F5D0(&v22, &v25);
  sub_100005070(a1);
  v25 = v9;
  v26 = v10;
  v27 = v12;
  v28 = v14;
  v29 = v15 & 1;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  result = sub_100C4F608(&v25);
  v20 = v23;
  *a2 = v22;
  *(a2 + 16) = v20;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_100C4DA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61507265697A6562 && a2 == 0xEE00617461446874;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

float sub_100C4DB5C(void *a1)
{
  v2 = sub_1005B981C(&qword_101A162E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C45D2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v8) = 0;
  sub_1009CF1DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIBYTE(v8) = 1;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = *&v9;
  sub_1005B981C(&unk_101A0D960);
  HIBYTE(v8) = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100C4DDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72746E6F436E69 && a2 == 0xEE00746E696F506CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696F5065646F6ELL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72746E6F4374756FLL && a2 == 0xEF746E696F506C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100C4DF8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A165A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4FF78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v20) = 0;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v9 = v23;
  v19 = v9;
  LOBYTE(v20) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v10 = v23;
  v18 = v10;
  LOBYTE(v20) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v23;
  sub_1005B981C(&qword_101A165A8);
  LOBYTE(v20) = 3;
  sub_100B99DB0(&qword_101A165B0, &qword_101A165A8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v23;
  v30 = v24;
  sub_1005B981C(&unk_101A0D960);
  v31 = 4;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v29;
  *&v14 = v19;
  *(&v14 + 1) = v18;
  v20 = v14;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  v15 = v30;
  LOBYTE(v22) = v30;
  *(&v22 + 1) = v29;
  sub_10067CDF8(&v20, &v23);
  sub_100005070(a1);
  v23 = v19;
  v24 = v18;
  v25 = v11;
  v26 = v12;
  v27 = v15;
  v28 = v13;
  result = sub_10067CEA8(&v23);
  v17 = v21;
  *a2 = v20;
  a2[1] = v17;
  a2[2] = v22;
  return result;
}

uint64_t sub_100C4E2E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465736F6C63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100C4E400(void *a1)
{
  v2 = sub_1005B981C(&qword_101A163A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C446B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A163B0);
  HIBYTE(v8) = 0;
  sub_100C4FA74(&qword_101A163B8, sub_100C4FAEC);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  LOBYTE(v9) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&unk_101A0D960);
  HIBYTE(v8) = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100C4E680(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7368746170627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100C4E7F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795474656E67616DLL && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101593FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100C4E920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C50638();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16400);
  v15 = 0;
  sub_100B99DB0(&qword_101A16588, &qword_101A16400);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16;
  v10 = v17;
  v15 = 1;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  sub_1005B981C(&unk_101A0D960);
  v15 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v16;
  result = sub_100005070(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_100C4EBA8(uint64_t a1)
{
  if ((a1 + 1) >= 8)
  {
    return 8;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_100C4EBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724674657374756FLL && a2 == 0xEA00000000006D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5474657374756FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E67614D64616568 && a2 == 0xEA00000000007465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E67614D6C696174 && a2 == 0xEA00000000007465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101593E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_100C4EE78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16268);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v39 = a1;
  sub_100020E58(a1, v9);
  sub_100C4834C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v39);
  }

  v38 = v6;
  sub_1005B981C(&qword_101A16270);
  LOBYTE(v40) = 0;
  sub_100B99DB0(&qword_101A16278, &qword_101A16270);
  v10 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v48;
  v66 = v49;
  LOBYTE(v40) = 1;
  sub_100C45B74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v48;
  v13 = v49;
  v14 = v50;
  LOBYTE(v48) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v48) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v40) = 4;
  v37 = sub_100C4F3C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v48;
  v34 = v50;
  v35 = v49;
  v36 = v51;
  LOBYTE(v40) = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v49;
  v32 = v48;
  v30 = v50;
  v37 = v51;
  LOBYTE(v48) = 6;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1005B981C(&unk_101A0D960);
  v67 = 7;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v8, v10);
  v38 = v65;
  *&v40 = v11;
  v28 = v66;
  BYTE8(v40) = v66;
  *&v41 = v12;
  *(&v41 + 1) = v13;
  *&v42 = v14;
  *(&v42 + 1) = __PAIR64__(v18, v16);
  v19 = v33;
  *&v43 = v33;
  *(&v43 + 1) = v35;
  v21 = v36;
  v20 = v37;
  *&v44 = v34;
  *(&v44 + 1) = v36;
  *&v45 = v32;
  *(&v45 + 1) = v31;
  *&v46 = v30;
  *(&v46 + 1) = v37;
  LOBYTE(v47) = v29;
  *(&v47 + 1) = v65;
  sub_100C4F418(&v40, &v48);
  sub_100005070(v39);
  v48 = v11;
  LOBYTE(v49) = v28;
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v16;
  v54 = v18;
  v55 = v19;
  v56 = v35;
  v57 = v34;
  v58 = v21;
  v59 = v32;
  v60 = v31;
  v61 = v30;
  v62 = v20;
  v63 = v29;
  v64 = v38;
  result = sub_100C4F450(&v48);
  v23 = v45;
  a2[4] = v44;
  a2[5] = v23;
  v24 = v47;
  a2[6] = v46;
  a2[7] = v24;
  v25 = v41;
  *a2 = v40;
  a2[1] = v25;
  v26 = v43;
  a2[2] = v42;
  a2[3] = v26;
  return result;
}

unint64_t sub_100C4F3C4()
{
  result = qword_101A16280;
  if (!qword_101A16280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16280);
  }

  return result;
}

unint64_t sub_100C4F480()
{
  result = qword_101A16298;
  if (!qword_101A16298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16298);
  }

  return result;
}

unint64_t sub_100C4F4D4()
{
  result = qword_101A162A0;
  if (!qword_101A162A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162A0);
  }

  return result;
}

unint64_t sub_100C4F528()
{
  result = qword_101A162A8;
  if (!qword_101A162A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162A8);
  }

  return result;
}

unint64_t sub_100C4F57C()
{
  result = qword_101A162B8;
  if (!qword_101A162B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162B8);
  }

  return result;
}

unint64_t sub_100C4F638()
{
  result = qword_101A162C8;
  if (!qword_101A162C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162C8);
  }

  return result;
}

unint64_t sub_100C4F68C()
{
  result = qword_101A162D0;
  if (!qword_101A162D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162D0);
  }

  return result;
}

unint64_t sub_100C4F6E0()
{
  result = qword_101A162D8;
  if (!qword_101A162D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162D8);
  }

  return result;
}

unint64_t sub_100C4F734()
{
  result = qword_101A162F0;
  if (!qword_101A162F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162F0);
  }

  return result;
}

unint64_t sub_100C4F788()
{
  result = qword_101A162F8;
  if (!qword_101A162F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A162F8);
  }

  return result;
}

unint64_t sub_100C4F844()
{
  result = qword_101A16328;
  if (!qword_101A16328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16328);
  }

  return result;
}

unint64_t sub_100C4F898()
{
  result = qword_101A16330;
  if (!qword_101A16330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16330);
  }

  return result;
}

unint64_t sub_100C4F8EC()
{
  result = qword_101A16360;
  if (!qword_101A16360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16360);
  }

  return result;
}

unint64_t sub_100C4F940()
{
  result = qword_101A16368;
  if (!qword_101A16368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16368);
  }

  return result;
}

uint64_t sub_100C4F994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C4F9FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A16378);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100C4FA74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A163B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100C4FAEC()
{
  result = qword_101A163C0;
  if (!qword_101A163C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A163C0);
  }

  return result;
}

unint64_t sub_100C4FB40()
{
  result = qword_101A163D8;
  if (!qword_101A163D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A163D8);
  }

  return result;
}

unint64_t sub_100C4FB94()
{
  result = qword_101A163E0;
  if (!qword_101A163E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A163E0);
  }

  return result;
}

unint64_t sub_100C4FBE8()
{
  result = qword_101A163E8;
  if (!qword_101A163E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A163E8);
  }

  return result;
}

unint64_t sub_100C4FD60()
{
  result = qword_101A16408;
  if (!qword_101A16408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16408);
  }

  return result;
}

unint64_t sub_100C4FDB8()
{
  result = qword_101A16410;
  if (!qword_101A16410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16410);
  }

  return result;
}

unint64_t sub_100C4FE10()
{
  result = qword_101A16418;
  if (!qword_101A16418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16418);
  }

  return result;
}

unint64_t sub_100C4FE70()
{
  result = qword_101A16420;
  if (!qword_101A16420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16420);
  }

  return result;
}

unint64_t sub_100C4FEC8()
{
  result = qword_101A16428;
  if (!qword_101A16428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16428);
  }

  return result;
}

unint64_t sub_100C4FF20()
{
  result = qword_101A16430;
  if (!qword_101A16430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16430);
  }

  return result;
}

unint64_t sub_100C4FF78()
{
  result = qword_101A16438;
  if (!qword_101A16438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16438);
  }

  return result;
}

unint64_t sub_100C4FFD0()
{
  result = qword_101A16440;
  if (!qword_101A16440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16440);
  }

  return result;
}

unint64_t sub_100C50028()
{
  result = qword_101A16448;
  if (!qword_101A16448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16448);
  }

  return result;
}

unint64_t sub_100C500B0()
{
  result = qword_101A16460;
  if (!qword_101A16460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16460);
  }

  return result;
}

unint64_t sub_100C50108()
{
  result = qword_101A16468;
  if (!qword_101A16468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16468);
  }

  return result;
}

unint64_t sub_100C50160()
{
  result = qword_101A16470;
  if (!qword_101A16470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16470);
  }

  return result;
}

unint64_t sub_100C501B8()
{
  result = qword_101A16478;
  if (!qword_101A16478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16478);
  }

  return result;
}

unint64_t sub_100C50210()
{
  result = qword_101A16480;
  if (!qword_101A16480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16480);
  }

  return result;
}

unint64_t sub_100C50268()
{
  result = qword_101A16488;
  if (!qword_101A16488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16488);
  }

  return result;
}

unint64_t sub_100C502C0()
{
  result = qword_101A16490;
  if (!qword_101A16490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16490);
  }

  return result;
}

unint64_t sub_100C50318()
{
  result = qword_101A16498;
  if (!qword_101A16498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16498);
  }

  return result;
}

unint64_t sub_100C50370()
{
  result = qword_101A164A0;
  if (!qword_101A164A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164A0);
  }

  return result;
}

unint64_t sub_100C503C8()
{
  result = qword_101A164A8;
  if (!qword_101A164A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164A8);
  }

  return result;
}

unint64_t sub_100C50420()
{
  result = qword_101A164B0;
  if (!qword_101A164B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164B0);
  }

  return result;
}

unint64_t sub_100C50478()
{
  result = qword_101A164B8;
  if (!qword_101A164B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164B8);
  }

  return result;
}

unint64_t sub_100C504D0()
{
  result = qword_101A164C0;
  if (!qword_101A164C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164C0);
  }

  return result;
}

unint64_t sub_100C50530()
{
  result = qword_101A164C8;
  if (!qword_101A164C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164C8);
  }

  return result;
}

unint64_t sub_100C50588()
{
  result = qword_101A164D0;
  if (!qword_101A164D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164D0);
  }

  return result;
}

unint64_t sub_100C505E0()
{
  result = qword_101A164D8;
  if (!qword_101A164D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164D8);
  }

  return result;
}

unint64_t sub_100C50638()
{
  result = qword_101A164E0;
  if (!qword_101A164E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164E0);
  }

  return result;
}

unint64_t sub_100C50690()
{
  result = qword_101A164E8;
  if (!qword_101A164E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164E8);
  }

  return result;
}

unint64_t sub_100C506E8()
{
  result = qword_101A164F0;
  if (!qword_101A164F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A164F0);
  }

  return result;
}

unint64_t sub_100C50770()
{
  result = qword_101A16508;
  if (!qword_101A16508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16508);
  }

  return result;
}

unint64_t sub_100C507C8()
{
  result = qword_101A16510;
  if (!qword_101A16510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16510);
  }

  return result;
}

unint64_t sub_100C50820()
{
  result = qword_101A16518;
  if (!qword_101A16518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16518);
  }

  return result;
}

unint64_t sub_100C50878()
{
  result = qword_101A16520;
  if (!qword_101A16520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16520);
  }

  return result;
}

unint64_t sub_100C508D0()
{
  result = qword_101A16528;
  if (!qword_101A16528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16528);
  }

  return result;
}

unint64_t sub_100C50928()
{
  result = qword_101A16530;
  if (!qword_101A16530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16530);
  }

  return result;
}

unint64_t sub_100C50980()
{
  result = qword_101A16538;
  if (!qword_101A16538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16538);
  }

  return result;
}

unint64_t sub_100C509D8()
{
  result = qword_101A16540;
  if (!qword_101A16540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16540);
  }

  return result;
}

unint64_t sub_100C50A30()
{
  result = qword_101A16548;
  if (!qword_101A16548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16548);
  }

  return result;
}

unint64_t sub_100C50A88()
{
  result = qword_101A16550;
  if (!qword_101A16550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16550);
  }

  return result;
}

unint64_t sub_100C50AE0()
{
  result = qword_101A16558;
  if (!qword_101A16558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16558);
  }

  return result;
}

unint64_t sub_100C50B38()
{
  result = qword_101A16560;
  if (!qword_101A16560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16560);
  }

  return result;
}

unint64_t sub_100C50B90()
{
  result = qword_101A16568;
  if (!qword_101A16568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16568);
  }

  return result;
}

unint64_t sub_100C50BE8()
{
  result = qword_101A16570;
  if (!qword_101A16570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16570);
  }

  return result;
}

unint64_t sub_100C50C40()
{
  result = qword_101A16578;
  if (!qword_101A16578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16578);
  }

  return result;
}

unint64_t sub_100C50C94()
{
  result = qword_101A165C8;
  if (!qword_101A165C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165C8);
  }

  return result;
}

unint64_t sub_100C50CE8()
{
  result = qword_101A165D0;
  if (!qword_101A165D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165D0);
  }

  return result;
}

unint64_t sub_100C50D3C()
{
  result = qword_101A165D8;
  if (!qword_101A165D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165D8);
  }

  return result;
}

unint64_t sub_100C50D90()
{
  result = qword_101A165E0;
  if (!qword_101A165E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165E0);
  }

  return result;
}

unint64_t sub_100C50DE4()
{
  result = qword_101A165E8;
  if (!qword_101A165E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165E8);
  }

  return result;
}

unint64_t sub_100C50E38()
{
  result = qword_101A165F0;
  if (!qword_101A165F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165F0);
  }

  return result;
}

unint64_t sub_100C50E8C()
{
  result = qword_101A165F8;
  if (!qword_101A165F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A165F8);
  }

  return result;
}

unint64_t sub_100C50EE0()
{
  result = qword_101A16600;
  if (!qword_101A16600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16600);
  }

  return result;
}

unint64_t sub_100C50F34()
{
  result = qword_101A16608;
  if (!qword_101A16608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16608);
  }

  return result;
}

unint64_t sub_100C50FAC()
{
  result = qword_101A16610;
  if (!qword_101A16610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16610);
  }

  return result;
}

unint64_t sub_100C51004()
{
  result = qword_101A16618;
  if (!qword_101A16618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16618);
  }

  return result;
}

uint64_t sub_100C510EC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    sub_100EC90D0(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_sceneID, v10, *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 8), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 16), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 24));
    (*(v8 + 8))(v10, v7);
    return sub_1012CF6CC(a1, &off_1018A75D0, a3);
  }

  return result;
}

uint64_t sub_100C51268()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_sceneID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_100C512E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandCreateScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandCreateScene()
{
  result = qword_101A16650;
  if (!qword_101A16650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C513F0()
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

uint64_t sub_100C51494()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_actionString);

  return v1;
}

uint64_t sub_100C514E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C5152C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C515A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A286B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100C54644(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100C51790@<D0>(uint64_t a1@<X8>)
{
  LabelStyleConfiguration.icon.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = (a1 + *(sub_1005B981C(&qword_101A168E0) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_100C51810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v2 = type metadata accessor for ColorSchemeContrast();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v54 - v5;
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1005B981C(&qword_101A16868) - 8;
  __chkstk_darwin(v61);
  v11 = &v54 - v10;
  v60 = sub_1005B981C(&qword_101A16870) - 8;
  __chkstk_darwin(v60);
  v58 = &v54 - v12;
  v13 = type metadata accessor for ButtonStyleConfiguration.Label();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A16878);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = sub_1005B981C(&qword_101A16880);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v56 = &v54 - v23;
  ButtonStyleConfiguration.label.getter();
  sub_100C5394C(&qword_101A16888, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_100C54588();
  v55 = v20;
  View.labelStyle<A>(_:)();
  (*(v14 + 8))(v16, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v20[*(v18 + 44)];
  v25 = v67;
  *v24 = v66;
  *(v24 + 1) = v25;
  *(v24 + 2) = v68;
  v26 = *(v7 + 28);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v9[v26], v27, v28);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  v34 = static HierarchicalShapeStyle.quaternary.getter();
  v35 = v59;
  sub_100C515A8(v59);
  v37 = v62;
  v36 = v63;
  v38 = v57;
  (*(v62 + 104))(v57, enum case for ColorSchemeContrast.increased(_:), v63);
  LOBYTE(v26) = static ColorSchemeContrast.== infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v38, v36);
  v39(v35, v36);
  if (v26)
  {
    v40 = 0.2;
  }

  else
  {
    v40 = 1.0;
  }

  sub_100C545DC(v9, v11, &type metadata accessor for RoundedRectangle);
  v41 = v61;
  v42 = &v11[*(v61 + 60)];
  *v42 = v34;
  *(v42 + 1) = v40;
  *&v11[*(v41 + 64)] = 256;
  v43 = v58;
  sub_10003DFF8(v11, v58, &qword_101A16868);
  v44 = v43 + *(v60 + 44);
  *v44 = 0;
  *(v44 + 8) = 257;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = v56;
  v49 = &v56[*(v22 + 44)];
  sub_10003DFF8(v43, v49, &qword_101A16870);
  v50 = (v49 + *(sub_1005B981C(&qword_101A16898) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_10003DFF8(v55, v48, &qword_101A16878);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v51 = 0.5;
  }

  else
  {
    v51 = 1.0;
  }

  v52 = v64;
  sub_10003DFF8(v48, v64, &qword_101A16880);
  result = sub_1005B981C(&qword_101A168A0);
  *(v52 + *(result + 36)) = v51;
  return result;
}

void sub_100C51DFC(int a1@<W0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = a1;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A168A8);
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v21[3] = a1;
  if (v3 == 8)
  {
    sub_100D3F5D8(8u);
    v11 = Image.init(systemName:)();
  }

  else
  {
    sub_100D3F5D8(a1);
    v11 = Image.init(_:bundle:)();
  }

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() colorNamed:v13];

  if (v14)
  {
    v15 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v27 = v12;
    v28 = KeyPath;
    v29 = v15;
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.large(_:), v4);
    v17 = sub_1005B981C(&qword_101A08AB8);
    v18 = sub_100920A5C();
    View.dynamicTypeSize(_:)();
    (*(v5 + 8))(v7, v4);

    v27 = sub_100D3F704();
    v28 = v19;
    v25 = v17;
    v26 = v18;
    swift_getOpaqueTypeConformance2();
    sub_100017CD8();
    v20 = v23;
    View.accessibilityLabel<A>(_:)();

    (*(v22 + 8))(v10, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C52108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_1005B981C(&qword_101A16770);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v7 = v6 - 8;
  v49 = *(v6 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v6);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A16778);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v52 = sub_1005B981C(&qword_101A16780);
  __chkstk_darwin(v52);
  v14 = &v42 - v13;
  v15 = *(v2 + *(v7 + 36));
  sub_100C527C0(v12);
  v51 = v5;
  if (v15 == 1)
  {
    sub_1005B981C(&qword_101A166A0);
    AccessibilityFocusState.projectedValue.getter();
    v45 = v55;
    v46 = v54;
    v47 = v56;
    v43 = sub_1005C4E5C(&qword_101A16790);
    v42 = type metadata accessor for AutomaticHoverEffect();
    v16 = sub_1005C4E5C(&qword_101A16798);
    v44 = v9;
    v17 = sub_1005C4E5C(&qword_101A167A0);
    v18 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    v48 = v3;
    v19 = v18;
    v20 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0);
    v21 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
    v54 = v17;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = v16;
    v55 = OpaqueTypeConformance2;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect);
    v54 = v43;
    v55 = v42;
    v56 = v23;
    v57 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v44;
    View.accessibilityFocused(_:)();

    (*(v10 + 8))(v12, v25);
    v26 = v50;
    sub_100C53E70(v2, v50);
    v27 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v28 = swift_allocObject();
    sub_100C545DC(v26, v28 + v27, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    v29 = &v14[*(v52 + 36)];
    *v29 = sub_100C53ED4;
    v29[1] = v28;
    v29[2] = 0;
    v29[3] = 0;
    sub_1000A40EC(v14, v51);
    swift_storeEnumTagMultiPayload();
    sub_100C53BF8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000A415C(v14);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    swift_storeEnumTagMultiPayload();
    v50 = sub_100C53BF8();
    v31 = sub_1005C4E5C(&qword_101A16790);
    v32 = type metadata accessor for AutomaticHoverEffect();
    v33 = sub_1005C4E5C(&qword_101A16798);
    v34 = v9;
    v35 = sub_1005C4E5C(&qword_101A167A0);
    v36 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    v37 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0);
    v38 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
    v54 = v35;
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v54 = v33;
    v55 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect);
    v54 = v31;
    v55 = v32;
    v56 = v40;
    v57 = v41;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v34);
  }
}

uint64_t sub_100C527C0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for AutomaticHoverEffect();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  __chkstk_darwin(v2);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(0);
  __chkstk_darwin(v32);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1005B981C(&qword_101A167A0);
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_1005B981C(&qword_101A16798);
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v31 = sub_1005B981C(&qword_101A16790);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v28 - v16;
  sub_100C53E70(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100C545DC(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
  v38 = v1;
  sub_100C54184();
  Button.init(action:label:)();
  *v6 = swift_getKeyPath();
  sub_1005B981C(&unk_101A286B0);
  swift_storeEnumTagMultiPayload();
  v19 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0);
  v20 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
  v21 = v32;
  View.buttonStyle<A>(_:)();
  sub_100C541D8(v6, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
  (*(v29 + 8))(v12, v10);
  v39 = v10;
  v40 = v21;
  v41 = v19;
  v42 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  View.accessibilityShowsLargeContentViewer()();
  (*(v30 + 8))(v15, v13);
  v24 = v34;
  static CustomHoverEffect<>.automatic.getter();
  v39 = v13;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect);
  v25 = v31;
  v26 = v35;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v36 + 8))(v24, v26);
  return (*(v33 + 8))(v23, v25);
}

uint64_t sub_100C52D84(uint64_t a1)
{
  v25 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v26 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100006370(0, &qword_1019F2D90);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_100C53E70(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_100C545DC(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
  aBlock[4] = sub_100C54038;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189C458;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100C5394C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v26);
}

uint64_t sub_100C531FC(uint64_t a1)
{
  v2 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v3 = (a1 + v2[6]);
  v4 = v3[3];
  v5 = v3[4];
  sub_100020E58(v3, v4);
  v6 = (a1 + v2[8]);
  v7 = *(a1 + v2[5]);
  (*(v5 + 16))(v7, v4, v5, *v6, v6[1]);
  sub_100D3F5D8(v7);
  sub_100043E40(_swiftEmptyArrayStorage);
  v8 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v8, 0x6564496570616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v10 = [objc_allocWithZone(NSNumber) initWithBool:1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v10, 0xD000000000000011, 0x8000000101559D20, v11);
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 sendEventInDomain:v13 lazily:1 eventPayload:isa];
}

uint64_t sub_100C53408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  sub_1005B981C(&qword_101A16668);
  sub_100C537F4(a2, v9);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = v9[1];
  *(v5 + 24) = v9[0];
  *(v5 + 40) = v6;
  v7 = v9[3];
  *(v5 + 56) = v9[2];
  *(v5 + 72) = v7;
  sub_1005B981C(&qword_101A16680);
  sub_100C53840();
  return ForEach<>.init(_:content:)();
}

void sub_100C534F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 3 * a2;
  if ((a2 * 3) >> 64 != (3 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10 + a1;
  if (__OFADD__(v10, a1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = a3[7];
  if (v11 < *(v12 + 16))
  {
    v13 = *(v12 + v11 + 32);
    v14 = v7;
    sub_10000630C(a3, &v9[v7[6]]);
    v15 = a3[5];
    v16 = a3[6];
    AccessibilityFocusState.init<>()();
    v9[v14[5]] = v13;
    v17 = &v9[v14[8]];
    *v17 = v15;
    *(v17 + 1) = v16;
    v9[v14[7]] = v11 == 0;
    sub_100C5394C(&qword_101A16690, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    View.accessibilitySortPriority(_:)();
    sub_100C541D8(v9, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100C53680@<X0>(uint64_t a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0x4024000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4024000000000000;
  *(a1 + 40) = 0;
  sub_1005B981C(&qword_101A16660);
  sub_100C537F4(v1, v18);
  v4 = swift_allocObject();
  v5 = v18[1];
  v4[1] = v18[0];
  v4[2] = v5;
  v6 = v18[3];
  v4[3] = v18[2];
  v4[4] = v6;
  sub_1005B981C(&qword_101A16668);
  sub_10001A2F8(&qword_101A16670, &qword_101A16668);
  ForEach<>.init(_:content:)();
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = sub_1005B981C(&qword_101A16678);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_100C53840()
{
  result = qword_101A16688;
  if (!qword_101A16688)
  {
    sub_1005C4E5C(&qword_101A16680);
    sub_100C5394C(&qword_101A16690, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    sub_100C5394C(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16688);
  }

  return result;
}

uint64_t sub_100C5394C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100C539BC()
{
  sub_100C53A68();
  if (v0 <= 0x3F)
  {
    sub_100C53AC0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100C53A68()
{
  if (!qword_101A16710)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_101A16710);
    }
  }
}

unint64_t sub_100C53AC0()
{
  result = qword_101A16718;
  if (!qword_101A16718)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_101A16718);
  }

  return result;
}

unint64_t sub_100C53B24()
{
  result = qword_101A16758;
  if (!qword_101A16758)
  {
    sub_1005C4E5C(&qword_101A16678);
    sub_10001A2F8(&qword_101A16760, &qword_101A16768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16758);
  }

  return result;
}

unint64_t sub_100C53BF8()
{
  result = qword_101A16788;
  if (!qword_101A16788)
  {
    sub_1005C4E5C(&qword_101A16780);
    sub_1005C4E5C(&qword_101A16778);
    sub_1005C4E5C(&qword_101A16790);
    type metadata accessor for AutomaticHoverEffect();
    sub_1005C4E5C(&qword_101A16798);
    sub_1005C4E5C(&qword_101A167A0);
    type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    sub_10001A2F8(&qword_101A167A8, &qword_101A167A0);
    sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16788);
  }

  return result;
}

uint64_t sub_100C53E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C53EEC()
{
  v1 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for AccessibilityTechnologies();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_1005B981C(&qword_101A166A0);

  sub_100005070(v0 + v3 + *(v1 + 24));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100C54038()
{
  type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  sub_1005B981C(&qword_101A166A0);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_100C540D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100C5414C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

unint64_t sub_100C54184()
{
  result = qword_101A167C0;
  if (!qword_101A167C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A167C0);
  }

  return result;
}

uint64_t sub_100C541D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100C54260()
{
  sub_100C542CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100C542CC()
{
  if (!qword_101A10CA0)
  {
    type metadata accessor for ColorSchemeContrast();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_101A10CA0);
    }
  }
}

unint64_t sub_100C54334()
{
  result = qword_101A16858;
  if (!qword_101A16858)
  {
    sub_1005C4E5C(&qword_101A16860);
    sub_100C53BF8();
    sub_1005C4E5C(&qword_101A16790);
    type metadata accessor for AutomaticHoverEffect();
    sub_1005C4E5C(&qword_101A16798);
    sub_1005C4E5C(&qword_101A167A0);
    type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    sub_10001A2F8(&qword_101A167A8, &qword_101A167A0);
    sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16858);
  }

  return result;
}

unint64_t sub_100C54588()
{
  result = qword_101A16890;
  if (!qword_101A16890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16890);
  }

  return result;
}

uint64_t sub_100C545DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C54644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A286B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C546C4()
{
  result = qword_101A168B0;
  if (!qword_101A168B0)
  {
    sub_1005C4E5C(&qword_101A168A0);
    sub_100C54750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A168B0);
  }

  return result;
}

unint64_t sub_100C54750()
{
  result = qword_101A168B8;
  if (!qword_101A168B8)
  {
    sub_1005C4E5C(&qword_101A16880);
    sub_100C54808();
    sub_10001A2F8(&qword_101A168C8, &qword_101A16898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A168B8);
  }

  return result;
}

unint64_t sub_100C54808()
{
  result = qword_101A168C0;
  if (!qword_101A168C0)
  {
    sub_1005C4E5C(&qword_101A16878);
    type metadata accessor for ButtonStyleConfiguration.Label();
    sub_100C5394C(&qword_101A16888, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100C54588();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A168C0);
  }

  return result;
}

unint64_t sub_100C54910()
{
  result = qword_101A168D0;
  if (!qword_101A168D0)
  {
    sub_1005C4E5C(&qword_101A168D8);
    sub_1005C4E5C(&qword_101A08AB8);
    sub_100920A5C();
    swift_getOpaqueTypeConformance2();
    sub_100C5394C(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A168D0);
  }

  return result;
}

unint64_t sub_100C54A24()
{
  result = qword_101A168E8;
  if (!qword_101A168E8)
  {
    sub_1005C4E5C(&qword_101A168E0);
    sub_100C5394C(qword_101A168F0, &type metadata accessor for LabelStyleConfiguration.Icon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A168E8);
  }

  return result;
}

uint64_t sub_100C54AE0()
{
  result = type metadata accessor for CRLUnfairLock();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100C54B68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100C54CEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_100C54F54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100C54FA8()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = Data.init(contentsOf:options:)();
    (*(v5 + 8))(v8, v4);
    return v10;
  }
}

void sub_100C55194(void (*a1)(id))
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v21 - v12;
  (*(*v1 + 80))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CAAC(v5, &unk_1019F33C0);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v9, v13, v6);
    v14 = objc_allocWithZone(CRLFileIOChannel);
    v15 = sub_100AD54AC(v9);
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v17 crl_fileSize];

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v20 = [objc_allocWithZone(CRLReadChannelInputStreamAdapter) initWithReadChannel:v15 length:v19 closeChannelOnClose:1];

      a1(v20);
      [v20 close];

      (*(v7 + 8))(v13, v6);
    }
  }
}

id sub_100C55530()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);
    sub_1007348E0();
    swift_allocError();
    *v9 = xmmword_1014647B0;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0 = [v10 initWithURL:v13 options:isa];

    (*(v5 + 8))(v8, v4);
  }

  return v0;
}

uint64_t sub_100C5577C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v4 = type metadata accessor for URL();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, v1 + v3, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

void sub_100C5587C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SHA256Digest();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  v35 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v38 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage_lock);
  os_unfair_lock_lock(*(v38 + 16));
  v19 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID;
  swift_beginAccess();
  v34 = v19;
  sub_100060460(v1 + v19, v18);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v27 = v13;
    v29 = a1;
    sub_10000CAAC(v18, &qword_1019F6990);
    v20 = *(v36 + 16);
    v28 = v1;
    v20(v9, v1 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url, v37);
    sub_10091E724();
    dispatch thunk of HashFunction.init()();
    sub_101093094(v9);
    v21 = (v33 + 8);
    v22 = v30;
    dispatch thunk of HashFunction.finalize()();
    (*v21)(v5, v3);
    v18 = v27;
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v31 + 8))(v22, v32);
    (*(v36 + 8))(v9, v37);
    v23 = v28;
    v24 = v35;
    (*(v11 + 16))(v35, v18, v10);
    (*(v11 + 56))(v24, 0, 1, v10);
    v25 = v34;
    swift_beginAccess();
    sub_100803880(v24, v23 + v25);
    swift_endAccess();
    a1 = v29;
  }

  (*(v11 + 32))(a1, v18, v10);
  os_unfair_lock_unlock(*(v38 + 16));
}

void sub_100C55EB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 2) != 0)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    v10[4] = sub_10091E678;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = *"";
    v10[2] = sub_100007638;
    v10[3] = &unk_10189C688;
    v7 = _Block_copy(v10);

    v8 = v7;
    if (+[NSThread isMainThread])
    {
      v8[2](v8);
    }

    else
    {
      v9 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v8);
    }

    _Block_release(v8);
  }
}

uint64_t sub_100C55FD8()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID, &qword_1019F6990);
}

uint64_t sub_100C56064()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID, &qword_1019F6990);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLFileAssetStorage()
{
  result = qword_101A16B20;
  if (!qword_101A16B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C561A8()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100C56584()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = [v11 crl_fileSize];

    (*(v5 + 8))(v8, v4);
    return v13;
  }
}

CGDataProviderRef sub_100C567F4()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = CGDataProviderCreateWithURL(v11);

    (*(v5 + 8))(v8, v4);
    return v13;
  }
}

uint64_t sub_100C56B50(char a1, unsigned int a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 24))(ObjectType, a3);
  if ((v9 & 0xFF00000000) == 0x200000000)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.appIntents;
    v11 = static os_log_type_t.debug.getter();

    return sub_100005404(v10, &_mh_execute_header, v11, "Trying to set font size on non text selection", 45, 2, _swiftEmptyArrayStorage);
  }

  if ((~v9 & 0x7F800000) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (*&v9 <= -9.2234e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*&v9 >= 9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = sub_101255980(*&v9);
  if (v13 == 10)
  {
    a3 = objc_opt_self();
    a2 = [a3 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    ObjectType = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v16;

    if (qword_1019F20A0 == -1)
    {
LABEL_12:
      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = a2;
      v19 = sub_1005CF000();
      *(inited + 96) = v19;
      v20 = sub_1005CF04C();
      *(inited + 104) = v20;
      *(inited + 72) = ObjectType;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v3;
      *(inited + 120) = v4;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 28;
      v22 = v36;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = ObjectType;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      [a3 handleFailureInFunction:v29 file:v30 lineNumber:28 isFatal:0 format:v31 args:v28];

      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v32 = static OS_os_log.appIntents;
      v33 = static os_log_type_t.error.getter();
      return sub_100005404(v32, &_mh_execute_header, v33, "Unsupported text size found", 27, 2, _swiftEmptyArrayStorage);
    }

LABEL_43:
    swift_once();
    goto LABEL_12;
  }

  if (a1)
  {
    result = sub_101255824(v13);
  }

  else
  {
    result = sub_1012556E0(v13);
  }

  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v34.n128_u32[0] = 10.0;
      if (result)
      {
        v34.n128_u32[0] = 12.0;
      }
    }

    else if (result == 2)
    {
      v34.n128_u32[0] = 14.0;
    }

    else if (result == 3)
    {
      v34.n128_u32[0] = 18.0;
    }

    else
    {
      v34.n128_u32[0] = 24.0;
    }
  }

  else
  {
    if (result > 7u)
    {
      if (result == 8)
      {
        v35 = 1119879168;
      }

      else
      {
        if (result != 9)
        {
          return result;
        }

        v35 = 1125122048;
      }
    }

    else if (result == 5)
    {
      v35 = 1108344832;
    }

    else if (result == 6)
    {
      v35 = 1111490560;
    }

    else
    {
      v35 = 1116733440;
    }

    v34.n128_u32[0] = v35;
  }

  return (*(a3 + 32))(ObjectType, a3, v34);
}