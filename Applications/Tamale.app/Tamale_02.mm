uint64_t sub_10003C9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004DC68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C9F8(uint64_t a1)
{
  v2 = sub_10004F7D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003CA34(uint64_t a1)
{
  v2 = sub_10004F7D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003CAA8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000522A0, 0, 0);
}

uint64_t sub_10003CB68(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000521E8, 0, 0);
}

uint64_t sub_10003CD64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10003CE24, 0, 0);
}

uint64_t sub_10003CE24()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  SentTransferredFile.init(_:allowAccessingOriginalFile:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003CEB8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10003D074, 0, 0);
}

uint64_t sub_10003D074()
{
  v42 = v0[17];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v41 = v0[8];
  static URL.temporaryDirectory.getter();
  UUID.init()();
  sub_10003E86C(&qword_1001D80C0, &type metadata accessor for UUID);
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v9;
  (*(v5 + 8))(v3, v6);
  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  ReceivedTransferredFile.file.getter();
  v11 = URL.pathExtension.getter();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v1, v4);
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  String.append(_:)(v15);

  v0[2] = v44;
  v0[3] = v45;
  v16 = v0 + 2;
  (*(v7 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
  sub_10002EC9C();
  v17 = v42;
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v8, v41);

  v43 = v14;
  v14(v17, v4);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  URL.path(percentEncoded:)(1);
  v20 = String._bridgeToObjectiveC()();

  LODWORD(v17) = [v19 fileExistsAtPath:v20];

  if (v17)
  {
    v21 = [v18 defaultManager];
    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    v0[5] = 0;
    v25 = [v21 removeItemAtURL:v23 error:v0 + 5];

    v26 = v0[5];
    if (!v25)
    {
      goto LABEL_6;
    }

    v27 = v26;
    v16 = v0 + 2;
  }

  v28 = v0[17];
  v29 = v0[14];
  v30 = [v18 defaultManager];
  ReceivedTransferredFile.file.getter();
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v43(v28, v29);
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  v0[4] = 0;
  LODWORD(v29) = [v30 copyItemAtURL:v33 toURL:v35 error:v16 + 2];

  v26 = v0[4];
  if (v29)
  {
    (*(v0[15] + 32))(v0[6], v0[18], v0[14]);
    v37 = v26;

    v38 = v0[1];
    goto LABEL_7;
  }

LABEL_6:
  v39 = v26;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v43(v0[18], v0[14]);

  v38 = v0[1];
LABEL_7:

  return v38();
}

uint64_t sub_10003D528(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for UTType();
  v5 = __chkstk_darwin(v4 - 8);
  a3(v5);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

double sub_10003D5F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for ConfigStorageKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v56 = *(v6 + 104);
  v56(&v52 - v14, enum case for ConfigStorageKey.hasOnboardedVisualLookUp(_:), v5);
  v16 = ConfigStorageKey.rawValue.getter();
  v18 = v17;
  v19 = v15;
  v20 = a2;
  v21 = *(v6 + 8);
  v21(v19, v5);
  if (v16 == a1 && v18 == a2)
  {

    goto LABEL_23;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_23:
    v46 = v57;
    *(v57 + 24) = &type metadata for Bool;
    *v46 = 1;
    return result;
  }

  v25 = v56;
  v56(v13, enum case for ConfigStorageKey.isVisualLookUpEagerModeEnabled(_:), v5);
  v26 = ConfigStorageKey.rawValue.getter();
  v28 = v27;
  v21(v13, v5);
  if (v26 == a1 && v28 == v20)
  {

    goto LABEL_26;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_26:
    v47 = v57;
    *(v57 + 24) = &type metadata for Bool;
    *v47 = 0;
    return result;
  }

  v31 = v54;
  v25(v54, enum case for ConfigStorageKey.hasOnboardedACME(_:), v5);
  v32 = ConfigStorageKey.rawValue.getter();
  v34 = v33;
  v21(v31, v5);
  if (v32 == a1 && v34 == v20)
  {
    goto LABEL_18;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v36 & 1) == 0)
  {
    v37 = v25;
    v38 = v53;
    v37(v53, enum case for ConfigStorageKey.hasOnboardedImageSearch(_:), v5);
    v39 = ConfigStorageKey.rawValue.getter();
    v41 = v40;
    v21(v38, v5);
    if (v39 == a1 && v41 == v20)
    {
LABEL_18:

      goto LABEL_19;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      v51 = *(v55 + 16);
      v43 = String._bridgeToObjectiveC()();
      v44 = [v51 objectForKey:v43];
      goto LABEL_20;
    }
  }

LABEL_19:
  v42 = *(v55 + 24);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKey:v43];
LABEL_20:
  v45 = v44;

  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  result = *&v58;
  v48 = v59;
  v49 = v57;
  *v57 = v58;
  *(v49 + 16) = v48;
  return result;
}

uint64_t sub_10003DA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v5 = type metadata accessor for ConfigStorageKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - v12;
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  v16 = *(v6 + 104);
  v16(&v61 - v14, enum case for ConfigStorageKey.hasOnboardedVisualLookUp(_:), v5);
  v17 = ConfigStorageKey.rawValue.getter();
  v19 = v18;
  v20 = v15;
  v21 = a3;
  v22 = *(v6 + 8);
  v22(v20, v5);
  if (v17 == a2 && v19 == v21)
  {
    goto LABEL_22;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_23;
  }

  v16(v13, enum case for ConfigStorageKey.isVisualLookUpEagerModeEnabled(_:), v5);
  v25 = ConfigStorageKey.rawValue.getter();
  v27 = v26;
  v28 = v13;
  v29 = v22;
  v22(v28, v5);
  if (v25 == a2 && v27 == v21)
  {
LABEL_22:

    goto LABEL_23;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    v32 = v62;
    v16(v62, enum case for ConfigStorageKey.hasOnboardedACME(_:), v5);
    v33 = ConfigStorageKey.rawValue.getter();
    v35 = v34;
    v29(v32, v5);
    if (v33 == a2 && v35 == v21)
    {
      goto LABEL_18;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v64;
    if (v37)
    {
      goto LABEL_19;
    }

    v39 = v61;
    v16(v61, enum case for ConfigStorageKey.hasOnboardedImageSearch(_:), v5);
    v40 = ConfigStorageKey.rawValue.getter();
    v42 = v41;
    v29(v39, v5);
    if (v40 == a2 && v42 == v21)
    {
LABEL_18:
      v38 = v64;
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = v64;
      if ((v53 & 1) == 0)
      {
        v43 = *(v63 + 16);
        sub_1000138BC(v64, v65, &unk_1001D8060);
        v54 = v66;
        if (v66)
        {
          v55 = sub_100006AAC(v65, v66);
          v56 = *(v54 - 8);
          __chkstk_darwin(v55);
          v58 = &v61 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v58);
          v50 = _bridgeAnythingToObjectiveC<A>(_:)();
          v59 = v58;
          v38 = v64;
          (*(v56 + 8))(v59, v54);
          goto LABEL_21;
        }

LABEL_28:
        v50 = 0;
        goto LABEL_29;
      }
    }

LABEL_19:
    v43 = *(v63 + 24);
    sub_1000138BC(v38, v65, &unk_1001D8060);
    v44 = v66;
    if (v66)
    {
      v45 = sub_100006AAC(v65, v66);
      v46 = *(v44 - 8);
      __chkstk_darwin(v45);
      v48 = v38;
      v49 = &v61 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49);
      v50 = _bridgeAnythingToObjectiveC<A>(_:)();
      v51 = v49;
      v38 = v48;
      (*(v46 + 8))(v51, v44);
LABEL_21:
      sub_100006B44(v65);
LABEL_29:
      v60 = String._bridgeToObjectiveC()();

      [v43 setObject:v50 forKey:v60];
      swift_unknownObjectRelease();

      return sub_10001370C(v38, &unk_1001D8060);
    }

    goto LABEL_28;
  }

LABEL_23:
  sub_10001370C(v64, &unk_1001D8060);
}

uint64_t sub_10003DFE8()
{

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for CameraControllerConfiguration.SafeAreaStrategy(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraControllerConfiguration.SafeAreaStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraControllerConfiguration.SafeAreaStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10003E0C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E0E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_10003E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SaliencyStreamConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D8020);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003E278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SaliencyStreamConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D8020);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10003E3C4()
{
  type metadata accessor for SaliencyStreamConfiguration();
  if (v0 <= 0x3F)
  {
    sub_100050DA0(319, &qword_1001D5398, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100050E68(319, &unk_1001D53A0, &type metadata for CameraSystemPressureLevel, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003E5B4()
{
  result = qword_1001D5420;
  if (!qword_1001D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5420);
  }

  return result;
}

unint64_t sub_10003E650()
{
  result = qword_1001D5438;
  if (!qword_1001D5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5438);
  }

  return result;
}

unint64_t sub_10003E6EC()
{
  result = qword_1001D5450;
  if (!qword_1001D5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5450);
  }

  return result;
}

unint64_t sub_10003E788()
{
  result = qword_1001D5468;
  if (!qword_1001D5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5468);
  }

  return result;
}

uint64_t sub_10003E86C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003E944()
{
  result = qword_1001D5488;
  if (!qword_1001D5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5488);
  }

  return result;
}

unint64_t sub_10003E9E0()
{
  result = qword_1001D54A0;
  if (!qword_1001D54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D54A0);
  }

  return result;
}

void (*sub_10003EAEC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  sub_10003D5F0(a2, a3, v7);
  return sub_10003EB80;
}

void sub_10003EB80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1000138BC(*a1, v2 + 32, &unk_1001D8060);

    sub_10003DA1C(v2 + 32, v4, v3);
    sub_10001370C(v2, &unk_1001D8060);
  }

  else
  {

    sub_10003DA1C(v2, v4, v3);
  }

  free(v2);
}

uint64_t sub_10003ECB8()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D57A8, &type metadata accessor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  sub_1000033A8(&qword_1001D5620);
  sub_100013608(&qword_1001D5628, &qword_1001D5620);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
}

uint64_t sub_10003EE48@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v146 = sub_1000033A8(&qword_1001D5738);
  v138 = *(v146 - 8);
  __chkstk_darwin(v146);
  v137 = &v115 - v2;
  v143 = sub_1000033A8(&qword_1001D5740);
  __chkstk_darwin(v143);
  v144 = &v115 - v3;
  v158 = sub_1000033A8(&qword_1001D56A8);
  __chkstk_darwin(v158);
  v145 = &v115 - v4;
  v5 = type metadata accessor for ReplayVideo(0);
  __chkstk_darwin(v5 - 8);
  v134 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000033A8(&qword_1001D5698);
  __chkstk_darwin(v149);
  v130 = (&v115 - v7);
  v155 = sub_1000033A8(&qword_1001D5748);
  __chkstk_darwin(v155);
  v157 = &v115 - v8;
  v147 = sub_1000033A8(&qword_1001D5750);
  __chkstk_darwin(v147);
  v148 = &v115 - v9;
  v156 = sub_1000033A8(&qword_1001D5648);
  __chkstk_darwin(v156);
  v150 = &v115 - v10;
  v123 = sub_1000033A8(&qword_1001D5758);
  __chkstk_darwin(v123);
  v126 = &v115 - v11;
  v127 = sub_1000033A8(&qword_1001D5760);
  v117 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = &v115 - v12;
  v136 = sub_1000033A8(&qword_1001D5678);
  __chkstk_darwin(v136);
  v128 = &v115 - v13;
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  __chkstk_darwin(v14 - 8);
  v122 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000033A8(&qword_1001D5768);
  __chkstk_darwin(v16 - 8);
  v121 = &v115 - v17;
  v18 = sub_1000033A8(&qword_1001D5770);
  __chkstk_darwin(v18 - 8);
  v120 = &v115 - v19;
  v125 = sub_1000033A8(&qword_1001D5680);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v129 = &v115 - v20;
  v131 = sub_1000033A8(&qword_1001D5778);
  __chkstk_darwin(v131);
  v133 = &v115 - v21;
  v153 = type metadata accessor for CameraControllerConfigurationForm(0);
  v139 = *(v153 - 8);
  __chkstk_darwin(v153);
  v140 = v22;
  v141 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000033A8(&qword_1001D5668);
  v119 = *(v132 - 8);
  __chkstk_darwin(v132);
  v118 = &v115 - v23;
  v142 = sub_1000033A8(&qword_1001D5658);
  __chkstk_darwin(v142);
  v135 = &v115 - v24;
  v152 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  __chkstk_darwin(v152);
  v151 = (&v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_1000033A8(&qword_1001D5638);
  __chkstk_darwin(v163);
  v154 = &v115 - v26;
  v161 = sub_1000033A8(&qword_1001D5780);
  __chkstk_darwin(v161);
  v28 = &v115 - v27;
  v29 = sub_1000033A8(&qword_1001D5788);
  v159 = *(v29 - 8);
  v160 = v29;
  __chkstk_darwin(v29);
  v31 = &v115 - v30;
  v32 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v32 - 8);
  v34 = &v115 - v33;
  v35 = type metadata accessor for CameraControllerConfiguration(0);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D5568);
  Binding.wrappedValue.getter();
  sub_1000138BC(&v38[*(v36 + 76)], v34, &qword_1001D8020);
  sub_10004A93C(v38, type metadata accessor for CameraControllerConfiguration);
  if ((*(v40 + 48))(v34, 1, v39) != 1)
  {
    (*(v40 + 32))(v42, v34, v39);
    sub_10003ECB8();
    v54 = v159;
    v53 = v160;
    (*(v159 + 16))(v28, v31, v160);
    swift_storeEnumTagMultiPayload();
    v55 = sub_10001276C(&qword_1001D5620);
    v56 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v55;
    v167 = &protocol witness table for Text;
    v168 = v56;
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    _ConditionalContent<>.init(storage:)();
    (*(v54 + 8))(v31, v53);
    return (*(v40 + 8))(v42, v39);
  }

  v43 = v159;
  v115 = v28;
  sub_10001370C(v34, &qword_1001D8020);
  v44 = v153;
  sub_1000033A8(&qword_1001D55E8);
  v45 = v1;
  v46 = v151;
  State.wrappedValue.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v88 = v1 + *(v44 + 32);
      v89 = *v88;
      v90 = *(v88 + 8);
      LOBYTE(v165) = v89;
      v166 = v90;
      sub_1000033A8(&qword_1001D3E88);
      State.wrappedValue.getter();
      if (v164)
      {
        sub_1000033A8(&qword_1001D55E0);
        State.projectedValue.getter();
        v91 = v121;
        static PHPickerFilter.videos.getter();
        v92 = type metadata accessor for PHPickerFilter();
        (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
        static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter();
        v93 = v129;
        PhotosPicker.init(selection:matching:preferredItemEncoding:label:)();
        v94 = sub_1000D02C8();
        if (v94)
        {
          v95 = v94;
          v96 = [v94 localIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v97 = sub_100013608(&qword_1001D5688, &qword_1001D5680);
          v98 = v116;
          v99 = v125;
          View._photosPickerContainerIdentifier(_:)();

          v100 = v117;
          v101 = v127;
          (*(v117 + 16))(v126, v98, v127);
          swift_storeEnumTagMultiPayload();
          v165 = v99;
          v166 = v97;
          swift_getOpaqueTypeConformance2();
          v102 = v128;
          _ConditionalContent<>.init(storage:)();

          (*(v100 + 8))(v98, v101);
          v87 = v115;
          v52 = v154;
          v103 = v124;
        }

        else
        {
          v103 = v124;
          v99 = v125;
          (*(v124 + 16))(v126, v93, v125);
          swift_storeEnumTagMultiPayload();
          v111 = sub_100013608(&qword_1001D5688, &qword_1001D5680);
          v165 = v99;
          v166 = v111;
          swift_getOpaqueTypeConformance2();
          v102 = v128;
          _ConditionalContent<>.init(storage:)();
          v87 = v115;
          v52 = v154;
        }

        sub_1000138BC(v102, v133, &qword_1001D5678);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668);
        sub_100049DE0();
        v110 = v135;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v102, &qword_1001D5678);
        (*(v103 + 8))(v129, v99);
      }

      else
      {
        v104 = v141;
        sub_10004EB44(v1, v141, type metadata accessor for CameraControllerConfigurationForm);
        v105 = (*(v139 + 80) + 16) & ~*(v139 + 80);
        v106 = swift_allocObject();
        sub_10004A8D4(v104, v106 + v105, type metadata accessor for CameraControllerConfigurationForm);
        v107 = v118;
        Button.init(action:label:)();
        v108 = v119;
        v109 = v132;
        (*(v119 + 16))(v133, v107, v132);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668);
        sub_100049DE0();
        v110 = v135;
        _ConditionalContent<>.init(storage:)();
        (*(v108 + 8))(v107, v109);
        v87 = v115;
        v52 = v154;
      }

      sub_1000138BC(v110, v148, &qword_1001D5658);
      swift_storeEnumTagMultiPayload();
      sub_100049D28();
      sub_100013608(&qword_1001D5690, &qword_1001D5698);
      v112 = v150;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v112, v157, &qword_1001D5648);
      swift_storeEnumTagMultiPayload();
      sub_100049C70();
      sub_100049ED8();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v112, &qword_1001D5648);
      sub_10001370C(v110, &qword_1001D5658);
      goto LABEL_17;
    }

    v58 = v46[1];
    v165 = *v46;
    v166 = v58;
    sub_10002EC9C();
    v59 = Text.init<A>(_:)();
    v61 = v60;
    v63 = v62;
    v165 = static Color.red.getter();
    v64 = Text.foregroundStyle<A>(_:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    sub_100020D44(v59, v61, v63 & 1);

    v165 = v64;
    v166 = v66;
    LOBYTE(v167) = v68 & 1;
    v168 = v70;
    v71 = v141;
    sub_10004EB44(v45, v141, type metadata accessor for CameraControllerConfigurationForm);
    v72 = (*(v139 + 80) + 16) & ~*(v139 + 80);
    v73 = swift_allocObject();
    sub_10004A8D4(v71, v73 + v72, type metadata accessor for CameraControllerConfigurationForm);
    v74 = v137;
    View.onTapGesture(count:perform:)();

    sub_100020D44(v64, v66, v68 & 1);

    v75 = v138;
    v76 = v146;
    (*(v138 + 16))(v144, v74, v146);
    swift_storeEnumTagMultiPayload();
    v77 = sub_10001276C(&qword_1001D5620);
    v78 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v77;
    v167 = &protocol witness table for Text;
    v168 = v78;
    swift_getOpaqueTypeConformance2();
    v165 = &type metadata for Text;
    v166 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v79 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v79, v157, &qword_1001D56A8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v79, &qword_1001D56A8);
    (*(v75 + 8))(v74, v76);
  }

  else if (EnumCaseMultiPayload)
  {
    v80 = v134;
    sub_10004A8D4(v46, v134, type metadata accessor for ReplayVideo);
    v81 = v31;
    sub_10003ECB8();
    v82 = v31;
    v83 = v160;
    (*(v43 + 16))(v144, v82, v160);
    swift_storeEnumTagMultiPayload();
    v84 = sub_10001276C(&qword_1001D5620);
    v85 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v84;
    v167 = &protocol witness table for Text;
    v168 = v85;
    swift_getOpaqueTypeConformance2();
    v165 = &type metadata for Text;
    v166 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v86 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v86, v157, &qword_1001D56A8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v86, &qword_1001D56A8);
    (*(v43 + 8))(v81, v83);
    sub_10004A93C(v80, type metadata accessor for ReplayVideo);
  }

  else
  {
    sub_10004A93C(v46, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v48 = static VerticalAlignment.center.getter();
    v49 = v130;
    *v130 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = sub_1000033A8(&qword_1001D5790);
    sub_100040D8C(v49 + *(v50 + 44));
    sub_1000138BC(v49, v148, &qword_1001D5698);
    swift_storeEnumTagMultiPayload();
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698);
    v51 = v150;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v51, v157, &qword_1001D5648);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v51, &qword_1001D5648);
    sub_10001370C(v49, &qword_1001D5698);
  }

  v87 = v115;
LABEL_17:
  sub_1000138BC(v52, v87, &qword_1001D5638);
  swift_storeEnumTagMultiPayload();
  v113 = sub_10001276C(&qword_1001D5620);
  v114 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
  v165 = &type metadata for Text;
  v166 = v113;
  v167 = &protocol witness table for Text;
  v168 = v114;
  swift_getOpaqueTypeConformance2();
  sub_100049BE4();
  _ConditionalContent<>.init(storage:)();
  return sub_10001370C(v52, &qword_1001D5638);
}

uint64_t sub_100040974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_100040A68;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100040A68()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100040BFC;
  }

  else
  {
    v2 = sub_100040B7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040B7C()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040C80, v2, v1);
}

uint64_t sub_100040BFC()
{

  *(v0 + 74) = 0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040C80, v2, v1);
}

uint64_t sub_100040C80()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 32);

  v3 = (v2 + *(type metadata accessor for CameraControllerConfigurationForm(0) + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 73) = v1;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  v6 = *(v0 + 8);

  return v6();
}

void sub_100040D3C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000010016C180;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

double sub_100040D6C@<D0>(uint64_t a1@<X8>)
{
  result = 4.09163782e87;
  *a1 = xmmword_100172980;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100040D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D5798);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  ProgressView<>.init<>()();
  v9 = *(v3 + 16);
  v9(v6, v8, v2);
  *a1 = 0x1000000000000011;
  *(a1 + 8) = 0x800000010016C1C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = sub_1000033A8(&qword_1001D57A0);
  v9((a1 + *(v10 + 64)), v6, v2);
  sub_100020D5C(0x1000000000000011, 0x800000010016C1C0, 0);
  v11 = *(v3 + 8);

  v11(v8, v2);
  v11(v6, v2);
  sub_100020D44(0x1000000000000011, 0x800000010016C1C0, 0);
}

uint64_t sub_100040F64()
{
  v0 = type metadata accessor for CameraControllerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000033A8(&qword_1001D54C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for PhotosPickerItem();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_1000138BC(v12, v10, &qword_1001D54C0);
  sub_1000033A8(&qword_1001D55E0);
  State.wrappedValue.setter();
  sub_10001370C(v12, &qword_1001D54C0);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000033A8(&qword_1001D5568);
  Binding.wrappedValue.getter();
  sub_10004E3A0(v6, &v3[*(v1 + 76)]);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000411CC()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D57A8, &type metadata accessor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  sub_1000033A8(&qword_1001D5620);
  sub_100013608(&qword_1001D5628, &qword_1001D5620);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
}

uint64_t sub_100041358(uint64_t a1)
{
  v2 = type metadata accessor for CameraControllerConfigurationForm(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000033A8(&qword_1001D57B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  static ButtonRole.destructive.getter();
  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_10004EB44(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfigurationForm);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10004A8D4(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CameraControllerConfigurationForm);
  sub_1000033A8(&qword_1001D57B8);
  sub_100013608(&qword_1001D57C0, &qword_1001D57B8);
  return Button.init(role:action:label:)();
}

uint64_t sub_10004157C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000415D8@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v146 = sub_1000033A8(&qword_1001D5738);
  v138 = *(v146 - 8);
  __chkstk_darwin(v146);
  v137 = &v115 - v2;
  v143 = sub_1000033A8(&qword_1001D5740);
  __chkstk_darwin(v143);
  v144 = &v115 - v3;
  v158 = sub_1000033A8(&qword_1001D56A8);
  __chkstk_darwin(v158);
  v145 = &v115 - v4;
  v5 = type metadata accessor for StillFrame(0);
  __chkstk_darwin(v5 - 8);
  v134 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000033A8(&qword_1001D5698);
  __chkstk_darwin(v149);
  v130 = (&v115 - v7);
  v155 = sub_1000033A8(&qword_1001D5748);
  __chkstk_darwin(v155);
  v157 = &v115 - v8;
  v147 = sub_1000033A8(&qword_1001D5750);
  __chkstk_darwin(v147);
  v148 = &v115 - v9;
  v156 = sub_1000033A8(&qword_1001D5648);
  __chkstk_darwin(v156);
  v150 = &v115 - v10;
  v123 = sub_1000033A8(&qword_1001D5758);
  __chkstk_darwin(v123);
  v126 = &v115 - v11;
  v127 = sub_1000033A8(&qword_1001D5760);
  v117 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = &v115 - v12;
  v136 = sub_1000033A8(&qword_1001D5678);
  __chkstk_darwin(v136);
  v128 = &v115 - v13;
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  __chkstk_darwin(v14 - 8);
  v122 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000033A8(&qword_1001D5768);
  __chkstk_darwin(v16 - 8);
  v121 = &v115 - v17;
  v18 = sub_1000033A8(&qword_1001D5770);
  __chkstk_darwin(v18 - 8);
  v120 = &v115 - v19;
  v125 = sub_1000033A8(&qword_1001D5680);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v129 = &v115 - v20;
  v131 = sub_1000033A8(&qword_1001D5778);
  __chkstk_darwin(v131);
  v133 = &v115 - v21;
  v153 = type metadata accessor for CameraControllerConfigurationForm(0);
  v139 = *(v153 - 8);
  __chkstk_darwin(v153);
  v140 = v22;
  v141 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000033A8(&qword_1001D5668);
  v119 = *(v132 - 8);
  __chkstk_darwin(v132);
  v118 = &v115 - v23;
  v142 = sub_1000033A8(&qword_1001D5658);
  __chkstk_darwin(v142);
  v135 = &v115 - v24;
  v152 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  __chkstk_darwin(v152);
  v151 = (&v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_1000033A8(&qword_1001D5638);
  __chkstk_darwin(v163);
  v154 = &v115 - v26;
  v161 = sub_1000033A8(&qword_1001D5780);
  __chkstk_darwin(v161);
  v28 = &v115 - v27;
  v29 = sub_1000033A8(&qword_1001D5788);
  v159 = *(v29 - 8);
  v160 = v29;
  __chkstk_darwin(v29);
  v31 = &v115 - v30;
  v32 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v32 - 8);
  v34 = &v115 - v33;
  v35 = type metadata accessor for CameraControllerConfiguration(0);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D5568);
  Binding.wrappedValue.getter();
  sub_1000138BC(&v38[*(v36 + 64)], v34, &qword_1001D8020);
  sub_10004A93C(v38, type metadata accessor for CameraControllerConfiguration);
  if ((*(v40 + 48))(v34, 1, v39) != 1)
  {
    (*(v40 + 32))(v42, v34, v39);
    sub_1000411CC();
    v54 = v159;
    v53 = v160;
    (*(v159 + 16))(v28, v31, v160);
    swift_storeEnumTagMultiPayload();
    v55 = sub_10001276C(&qword_1001D5620);
    v56 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v55;
    v167 = &protocol witness table for Text;
    v168 = v56;
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    _ConditionalContent<>.init(storage:)();
    (*(v54 + 8))(v31, v53);
    return (*(v40 + 8))(v42, v39);
  }

  v43 = v159;
  v115 = v28;
  sub_10001370C(v34, &qword_1001D8020);
  v44 = v153;
  sub_1000033A8(&qword_1001D55F0);
  v45 = v1;
  v46 = v151;
  State.wrappedValue.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v88 = v1 + *(v44 + 32);
      v89 = *v88;
      v90 = *(v88 + 8);
      LOBYTE(v165) = v89;
      v166 = v90;
      sub_1000033A8(&qword_1001D3E88);
      State.wrappedValue.getter();
      if (v164)
      {
        sub_1000033A8(&qword_1001D55E0);
        State.projectedValue.getter();
        v91 = v121;
        static PHPickerFilter.images.getter();
        v92 = type metadata accessor for PHPickerFilter();
        (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
        static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter();
        v93 = v129;
        PhotosPicker.init(selection:matching:preferredItemEncoding:label:)();
        v94 = sub_1000D02C8();
        if (v94)
        {
          v95 = v94;
          v96 = [v94 localIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v97 = sub_100013608(&qword_1001D5688, &qword_1001D5680);
          v98 = v116;
          v99 = v125;
          View._photosPickerContainerIdentifier(_:)();

          v100 = v117;
          v101 = v127;
          (*(v117 + 16))(v126, v98, v127);
          swift_storeEnumTagMultiPayload();
          v165 = v99;
          v166 = v97;
          swift_getOpaqueTypeConformance2();
          v102 = v128;
          _ConditionalContent<>.init(storage:)();

          (*(v100 + 8))(v98, v101);
          v87 = v115;
          v52 = v154;
          v103 = v124;
        }

        else
        {
          v103 = v124;
          v99 = v125;
          (*(v124 + 16))(v126, v93, v125);
          swift_storeEnumTagMultiPayload();
          v111 = sub_100013608(&qword_1001D5688, &qword_1001D5680);
          v165 = v99;
          v166 = v111;
          swift_getOpaqueTypeConformance2();
          v102 = v128;
          _ConditionalContent<>.init(storage:)();
          v87 = v115;
          v52 = v154;
        }

        sub_1000138BC(v102, v133, &qword_1001D5678);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668);
        sub_100049DE0();
        v110 = v135;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v102, &qword_1001D5678);
        (*(v103 + 8))(v129, v99);
      }

      else
      {
        v104 = v141;
        sub_10004EB44(v1, v141, type metadata accessor for CameraControllerConfigurationForm);
        v105 = (*(v139 + 80) + 16) & ~*(v139 + 80);
        v106 = swift_allocObject();
        sub_10004A8D4(v104, v106 + v105, type metadata accessor for CameraControllerConfigurationForm);
        v107 = v118;
        Button.init(action:label:)();
        v108 = v119;
        v109 = v132;
        (*(v119 + 16))(v133, v107, v132);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668);
        sub_100049DE0();
        v110 = v135;
        _ConditionalContent<>.init(storage:)();
        (*(v108 + 8))(v107, v109);
        v87 = v115;
        v52 = v154;
      }

      sub_1000138BC(v110, v148, &qword_1001D5658);
      swift_storeEnumTagMultiPayload();
      sub_100049D28();
      sub_100013608(&qword_1001D5690, &qword_1001D5698);
      v112 = v150;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v112, v157, &qword_1001D5648);
      swift_storeEnumTagMultiPayload();
      sub_100049C70();
      sub_100049ED8();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v112, &qword_1001D5648);
      sub_10001370C(v110, &qword_1001D5658);
      goto LABEL_17;
    }

    v58 = v46[1];
    v165 = *v46;
    v166 = v58;
    sub_10002EC9C();
    v59 = Text.init<A>(_:)();
    v61 = v60;
    v63 = v62;
    v165 = static Color.red.getter();
    v64 = Text.foregroundStyle<A>(_:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    sub_100020D44(v59, v61, v63 & 1);

    v165 = v64;
    v166 = v66;
    LOBYTE(v167) = v68 & 1;
    v168 = v70;
    v71 = v141;
    sub_10004EB44(v45, v141, type metadata accessor for CameraControllerConfigurationForm);
    v72 = (*(v139 + 80) + 16) & ~*(v139 + 80);
    v73 = swift_allocObject();
    sub_10004A8D4(v71, v73 + v72, type metadata accessor for CameraControllerConfigurationForm);
    v74 = v137;
    View.onTapGesture(count:perform:)();

    sub_100020D44(v64, v66, v68 & 1);

    v75 = v138;
    v76 = v146;
    (*(v138 + 16))(v144, v74, v146);
    swift_storeEnumTagMultiPayload();
    v77 = sub_10001276C(&qword_1001D5620);
    v78 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v77;
    v167 = &protocol witness table for Text;
    v168 = v78;
    swift_getOpaqueTypeConformance2();
    v165 = &type metadata for Text;
    v166 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v79 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v79, v157, &qword_1001D56A8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v79, &qword_1001D56A8);
    (*(v75 + 8))(v74, v76);
  }

  else if (EnumCaseMultiPayload)
  {
    v80 = v134;
    sub_10004A8D4(v46, v134, type metadata accessor for StillFrame);
    v81 = v31;
    sub_1000411CC();
    v82 = v31;
    v83 = v160;
    (*(v43 + 16))(v144, v82, v160);
    swift_storeEnumTagMultiPayload();
    v84 = sub_10001276C(&qword_1001D5620);
    v85 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
    v165 = &type metadata for Text;
    v166 = v84;
    v167 = &protocol witness table for Text;
    v168 = v85;
    swift_getOpaqueTypeConformance2();
    v165 = &type metadata for Text;
    v166 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v86 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v86, v157, &qword_1001D56A8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v86, &qword_1001D56A8);
    (*(v43 + 8))(v81, v83);
    sub_10004A93C(v80, type metadata accessor for StillFrame);
  }

  else
  {
    sub_10004A93C(v46, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v48 = static VerticalAlignment.center.getter();
    v49 = v130;
    *v130 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = sub_1000033A8(&qword_1001D5790);
    sub_10004363C(v49 + *(v50 + 44));
    sub_1000138BC(v49, v148, &qword_1001D5698);
    swift_storeEnumTagMultiPayload();
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698);
    v51 = v150;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v51, v157, &qword_1001D5648);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v52 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v51, &qword_1001D5648);
    sub_10001370C(v49, &qword_1001D5698);
  }

  v87 = v115;
LABEL_17:
  sub_1000138BC(v52, v87, &qword_1001D5638);
  swift_storeEnumTagMultiPayload();
  v113 = sub_10001276C(&qword_1001D5620);
  v114 = sub_100013608(&qword_1001D5628, &qword_1001D5620);
  v165 = &type metadata for Text;
  v166 = v113;
  v167 = &protocol witness table for Text;
  v168 = v114;
  swift_getOpaqueTypeConformance2();
  sub_100049BE4();
  _ConditionalContent<>.init(storage:)();
  return sub_10001370C(v52, &qword_1001D5638);
}

uint64_t sub_100043104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CameraControllerConfigurationForm(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_10004EB44(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfigurationForm);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10004A8D4(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CameraControllerConfigurationForm);
  sub_1000154EC(0, 0, v10, a3, v14);
}

uint64_t sub_1000432E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1000433D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_1000433D4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100043568;
  }

  else
  {
    v2 = sub_1000434E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000434E8()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000521B0, v2, v1);
}

uint64_t sub_100043568()
{

  *(v0 + 74) = 0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000521B0, v2, v1);
}

void sub_1000435EC(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000010016C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

double sub_10004361C@<D0>(uint64_t a1@<X8>)
{
  result = 1.83475386e44;
  *a1 = xmmword_100172990;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10004363C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D5798);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  ProgressView<>.init<>()();
  v9 = *(v3 + 16);
  v9(v6, v8, v2);
  *a1 = 0x1000000000000010;
  *(a1 + 8) = 0x800000010016C220;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = sub_1000033A8(&qword_1001D57A0);
  v9((a1 + *(v10 + 64)), v6, v2);
  sub_100020D5C(0x1000000000000010, 0x800000010016C220, 0);
  v11 = *(v3 + 8);

  v11(v8, v2);
  v11(v6, v2);
  sub_100020D44(0x1000000000000010, 0x800000010016C220, 0);
}

uint64_t sub_100043814()
{
  v0 = type metadata accessor for CameraControllerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000033A8(&qword_1001D54C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for PhotosPickerItem();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_1000138BC(v12, v10, &qword_1001D54C0);
  sub_1000033A8(&qword_1001D55E0);
  State.wrappedValue.setter();
  sub_10001370C(v12, &qword_1001D54C0);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000033A8(&qword_1001D5568);
  Binding.wrappedValue.getter();
  sub_10004E3A0(v6, &v3[*(v1 + 64)]);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100043A78(uint64_t a1)
{
  v92 = a1;
  v1 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v1 - 8);
  v88 = &v74 - v2;
  v83 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v3 = __chkstk_darwin(v83);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v87 = (&v74 - v5);
  v6 = type metadata accessor for CameraControllerConfigurationForm(0);
  v84 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = v7;
  v89 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v8 = __chkstk_darwin(v90);
  v78 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v77 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v74 - v13;
  __chkstk_darwin(v12);
  v82 = (&v74 - v14);
  v15 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v15 - 8);
  v93 = &v74 - v16;
  v17 = type metadata accessor for CameraControllerConfiguration(0);
  v18 = __chkstk_darwin(v17);
  v80 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  v25 = sub_1000033A8(&qword_1001D54C0);
  __chkstk_darwin(v25 - 8);
  v27 = &v74 - v26;
  v28 = type metadata accessor for PhotosPickerItem();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v79 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v74 - v32;
  sub_1000138BC(v92, v27, &qword_1001D54C0);
  v92 = v29;
  v33 = v28;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10001370C(v27, &qword_1001D54C0);
    sub_1000033A8(&qword_1001D5568);
    Binding.wrappedValue.getter();
    v34 = v22[v17[8]];
    sub_10004A93C(v22, type metadata accessor for CameraControllerConfiguration);
    sub_1000033A8(&qword_1001D55E8);
    if (v34 > 1)
    {
      v57 = v78;
      State.wrappedValue.getter();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10004A93C(v57, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      }

      else
      {
        sub_1000033A8(&qword_1001D57C8);
        sub_1000033A8(&qword_1001D57D0);
        Task.cancel()();
      }

      v72 = v87;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v72, v86, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      sub_1000033A8(&qword_1001D55F0);
      State.wrappedValue.setter();
      sub_10004A93C(v72, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      v73 = type metadata accessor for URL();
      v69 = v88;
      (*(*(v73 - 8) + 56))(v88, 1, 1, v73);
      v70 = v80;
      Binding.wrappedValue.getter();
      v71 = v17[14];
    }

    else
    {
      v35 = v77;
      State.wrappedValue.getter();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10004A93C(v35, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      }

      else
      {
        sub_1000033A8(&qword_1001D57C8);
        sub_1000033A8(&qword_1001D57D0);
        Task.cancel()();
      }

      v67 = v82;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v67, v81, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      State.wrappedValue.setter();
      sub_10004A93C(v67, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      v68 = type metadata accessor for URL();
      v69 = v88;
      (*(*(v68 - 8) + 56))(v88, 1, 1, v68);
      v70 = v80;
      Binding.wrappedValue.getter();
      v71 = v17[17];
    }

    sub_10004E3A0(v69, &v70[v71]);
    return Binding.wrappedValue.setter();
  }

  else
  {
    v88 = v6;
    v37 = v91;
    v36 = v92;
    v76 = *(v92 + 32);
    v76(v91, v27, v33);
    sub_1000033A8(&qword_1001D5568);
    Binding.wrappedValue.getter();
    v38 = v24[v17[8]];
    sub_10004A93C(v24, type metadata accessor for CameraControllerConfiguration);
    v39 = type metadata accessor for TaskPriority();
    v40 = *(v39 - 8);
    v41 = *(v40 + 56);
    v80 = v39;
    v77 = (v40 + 56);
    v78 = v41;
    (v41)(v93, 1, 1);
    v43 = v36 + 16;
    v42 = *(v36 + 16);
    v44 = v79;
    v42(v79, v37, v33);
    type metadata accessor for MainActor();
    v45 = static MainActor.shared.getter();
    v46 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    if (v38 > 1)
    {
      v58 = swift_allocObject();
      *(v58 + 16) = v45;
      *(v58 + 24) = &protocol witness table for MainActor;
      v75 = v33;
      v76((v58 + v46), v44, v33);
      v59 = v93;
      v60 = sub_100044D64(0, 0, v93, &unk_100173710, v58, &qword_1001D57E0);
      v61 = v87;
      *v87 = v60;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v61, v86, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);

      sub_1000033A8(&qword_1001D55F0);
      v62 = v94;
      State.wrappedValue.setter();
      sub_10004A93C(v61, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      v78(v59, 1, 1, v80);
      v63 = v89;
      sub_10004EB44(v62, v89, type metadata accessor for CameraControllerConfigurationForm);

      v64 = static MainActor.shared.getter();
      v65 = (*(v84 + 80) + 40) & ~*(v84 + 80);
      v66 = swift_allocObject();
      v66[2] = v64;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v60;
      sub_10004A8D4(v63, v66 + v65, type metadata accessor for CameraControllerConfigurationForm);
      sub_1000154EC(0, 0, v59, &unk_100173720, v66);

      return (*(v92 + 8))(v91, v75);
    }

    else
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = &protocol witness table for MainActor;
      v76((v47 + v46), v44, v33);
      v48 = v93;
      v49 = sub_100044D64(0, 0, v93, &unk_100173730, v47, &qword_1001D57C8);
      v50 = v82;
      *v82 = v49;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v50, v81, type metadata accessor for CameraControllerConfigurationForm.ReplayState);

      sub_1000033A8(&qword_1001D55E8);
      v51 = v94;
      State.wrappedValue.setter();
      sub_10004A93C(v50, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      v78(v48, 1, 1, v80);
      v52 = v89;
      sub_10004EB44(v51, v89, type metadata accessor for CameraControllerConfigurationForm);

      v53 = static MainActor.shared.getter();
      v54 = (*(v84 + 80) + 40) & ~*(v84 + 80);
      v55 = swift_allocObject();
      v55[2] = v53;
      v55[3] = &protocol witness table for MainActor;
      v55[4] = v49;
      sub_10004A8D4(v52, v55 + v54, type metadata accessor for CameraControllerConfigurationForm);
      sub_1000154EC(0, 0, v48, &unk_100173740, v55);

      return (*(v92 + 8))(v91, v33);
    }
  }
}

uint64_t sub_100044784(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = type metadata accessor for StillFrame(0);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = sub_10003E86C(&qword_1001D57E8, type metadata accessor for StillFrame);
  *v4 = v1;
  v4[1] = sub_100044894;

  return PhotosPickerItem.loadTransferable<A>(type:)(a1, v3, v3, v5);
}

uint64_t sub_100044894()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100044A54;
  }

  else
  {
    v4 = sub_1000449F0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000449F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044A54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000138BC(a3, v22 - v9, &qword_1001D41B0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001370C(v10, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100044D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_1000138BC(a3, v24 - v11, &qword_1001D41B0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10001370C(v12, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1000033A8(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  sub_1000033A8(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100045014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for CameraControllerConfiguration(0);
  v5[4] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001D57E0);
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = type metadata accessor for StillFrame(0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[15] = v10;
  v11 = sub_1000033A8(&qword_1001D57D0);
  *v10 = v5;
  v10[1] = sub_100045240;

  return Task.value.getter(v8, a4, v7, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_100045240()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000456F0;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000453C4;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000453C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    v5 = v0[7];
    sub_10001370C(v0[9], &qword_1001D57E0);
    *v4 = 0xD000000000000012;
    v4[1] = 0x800000010016C280;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    sub_1000033A8(&qword_1001D55F0);
    State.wrappedValue.setter();
    v6 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState;
  }

  else
  {
    v4 = v0[12];
    v7 = v0[8];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    sub_10004A8D4(v0[9], v4, type metadata accessor for StillFrame);
    sub_10004EB44(v4, v7, type metadata accessor for StillFrame);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v7, v8, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    sub_1000033A8(&qword_1001D55F0);
    State.wrappedValue.setter();
    sub_10004A93C(v7, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, v4, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    sub_1000033A8(&qword_1001D5568);
    Binding.wrappedValue.getter();
    sub_10004E3A0(v10, v9 + *(v11 + 56));
    Binding.wrappedValue.setter();
    v6 = type metadata accessor for StillFrame;
  }

  sub_10004A93C(v4, v6);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000456F0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[8];
  v5 = v0[7];
  sub_10001370C(v0[9], &qword_1001D57E0);
  *v4 = 0xD000000000000012;
  v4[1] = 0x800000010016C280;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  sub_1000033A8(&qword_1001D55F0);
  State.wrappedValue.setter();
  sub_10004A93C(v4, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004587C(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = type metadata accessor for ReplayVideo(0);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = sub_10003E86C(&qword_1001D57D8, type metadata accessor for ReplayVideo);
  *v4 = v1;
  v4[1] = sub_10004598C;

  return PhotosPickerItem.loadTransferable<A>(type:)(a1, v3, v3, v5);
}

uint64_t sub_10004598C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10005229C;
  }

  else
  {
    v4 = sub_1000522A4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100045AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for CameraControllerConfiguration(0);
  v5[4] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001D57C8);
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = type metadata accessor for ReplayVideo(0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[15] = v10;
  v11 = sub_1000033A8(&qword_1001D57D0);
  *v10 = v5;
  v10[1] = sub_100045D14;

  return Task.value.getter(v8, a4, v7, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_100045D14()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000461C4;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_100045E98;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100045E98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    v5 = v0[7];
    sub_10001370C(v0[9], &qword_1001D57C8);
    *v4 = 0xD000000000000012;
    v4[1] = 0x800000010016C260;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    sub_1000033A8(&qword_1001D55E8);
    State.wrappedValue.setter();
    v6 = type metadata accessor for CameraControllerConfigurationForm.ReplayState;
  }

  else
  {
    v4 = v0[12];
    v7 = v0[8];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    sub_10004A8D4(v0[9], v4, type metadata accessor for ReplayVideo);
    sub_10004EB44(v4, v7, type metadata accessor for ReplayVideo);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v7, v8, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    sub_1000033A8(&qword_1001D55E8);
    State.wrappedValue.setter();
    sub_10004A93C(v7, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, v4, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    sub_1000033A8(&qword_1001D5568);
    Binding.wrappedValue.getter();
    sub_10004E3A0(v10, v9 + *(v11 + 68));
    Binding.wrappedValue.setter();
    v6 = type metadata accessor for ReplayVideo;
  }

  sub_10004A93C(v4, v6);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000461C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[8];
  v5 = v0[7];
  sub_10001370C(v0[9], &qword_1001D57C8);
  *v4 = 0xD000000000000012;
  v4[1] = 0x800000010016C260;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  sub_1000033A8(&qword_1001D55E8);
  State.wrappedValue.setter();
  sub_10004A93C(v4, type metadata accessor for CameraControllerConfigurationForm.ReplayState);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100046350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v197 = a1;
  v222 = type metadata accessor for CameraControllerConfigurationForm(0);
  v188 = *(v222 - 8);
  __chkstk_darwin(v222);
  v189 = v3;
  v190 = v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1000033A8(&qword_1001D54C0);
  __chkstk_darwin(v193);
  v195 = v160 - v4;
  v194 = sub_1000033A8(&qword_1001D54C8);
  v192 = *(v194 - 8);
  __chkstk_darwin(v194);
  v191 = v160 - v5;
  v187 = sub_1000033A8(&qword_1001D54D0);
  __chkstk_darwin(v187);
  v186 = v160 - v6;
  v240 = sub_1000033A8(&qword_1001D54D8);
  v196 = *(v240 - 8);
  v7 = __chkstk_darwin(v240);
  v239 = v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v236 = v160 - v9;
  v185 = sub_1000033A8(&qword_1001D54E0);
  __chkstk_darwin(v185);
  v184 = v160 - v10;
  v238 = sub_1000033A8(&qword_1001D54E8);
  v245 = *(v238 - 8);
  v11 = __chkstk_darwin(v238);
  v237 = v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v234 = v160 - v13;
  v182 = sub_1000033A8(&qword_1001D54F0);
  __chkstk_darwin(v182);
  v183 = (v160 - v14);
  v15 = sub_1000033A8(&qword_1001D54F8);
  v16 = __chkstk_darwin(v15 - 8);
  v235 = v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v233 = v160 - v18;
  v180 = sub_1000033A8(&qword_1001D5500);
  __chkstk_darwin(v180);
  v181 = v160 - v19;
  v167 = sub_1000033A8(&qword_1001D5508);
  __chkstk_darwin(v167);
  v165 = v160 - v20;
  v209 = sub_1000033A8(&qword_1001D5510);
  v213 = *(v209 - 8);
  v21 = __chkstk_darwin(v209);
  v164 = v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v208 = v160 - v23;
  v207 = sub_1000033A8(&qword_1001D5518);
  v212 = *(v207 - 8);
  v24 = __chkstk_darwin(v207);
  v175 = v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v205 = v160 - v26;
  v206 = sub_1000033A8(&qword_1001D5520);
  v211 = *(v206 - 8);
  v27 = __chkstk_darwin(v206);
  v174 = v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v204 = v160 - v29;
  v166 = sub_1000033A8(&qword_1001D5528);
  v30 = __chkstk_darwin(v166);
  v173 = v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v215 = (v160 - v32);
  v203 = sub_1000033A8(&qword_1001D5530);
  v210 = *(v203 - 8);
  v33 = __chkstk_darwin(v203);
  v172 = v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v202 = v160 - v35;
  v179 = type metadata accessor for ConfigToggle();
  v176 = *(v179 - 8);
  v36 = __chkstk_darwin(v179);
  v163 = v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v162 = v160 - v39;
  v40 = __chkstk_darwin(v38);
  v161 = v160 - v41;
  v42 = __chkstk_darwin(v40);
  v168 = v160 - v43;
  v44 = __chkstk_darwin(v42);
  v169 = v160 - v45;
  v46 = __chkstk_darwin(v44);
  v170 = v160 - v47;
  v48 = __chkstk_darwin(v46);
  v171 = v160 - v49;
  v50 = __chkstk_darwin(v48);
  v199 = v160 - v51;
  v52 = __chkstk_darwin(v50);
  v198 = v160 - v53;
  v54 = __chkstk_darwin(v52);
  v200 = v160 - v55;
  v56 = __chkstk_darwin(v54);
  v201 = v160 - v57;
  __chkstk_darwin(v56);
  v216 = v160 - v58;
  v214 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v214);
  v241 = (v160 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1000033A8(&qword_1001D5538);
  v61 = __chkstk_darwin(v60 - 8);
  v232 = v160 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v227 = v160 - v63;
  v231 = sub_1000033A8(&qword_1001D5540);
  v244 = *(v231 - 8);
  v64 = __chkstk_darwin(v231);
  v230 = v160 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v226 = v160 - v66;
  v229 = sub_1000033A8(&qword_1001D5548);
  v243 = *(v229 - 8);
  v67 = __chkstk_darwin(v229);
  v228 = v160 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v223 = v160 - v69;
  v177 = sub_1000033A8(&qword_1001D5550);
  __chkstk_darwin(v177);
  v71 = v160 - v70;
  v225 = sub_1000033A8(&qword_1001D5558);
  v242 = *(v225 - 8);
  v72 = __chkstk_darwin(v225);
  v224 = v160 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v75 = v160 - v74;
  v76 = sub_1000033A8(&qword_1001D5560);
  __chkstk_darwin(v76);
  v78 = v160 - v77;
  v79 = sub_1000033A8(&qword_1001D5568);
  __chkstk_darwin(v79);
  v81 = v160 - v80;
  v220 = sub_1000033A8(&qword_1001D5570);
  v219 = *(v220 - 8);
  v82 = __chkstk_darwin(v220);
  v218 = v160 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v85 = v160 - v84;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  sub_10003E86C(&qword_1001D5578, &type metadata accessor for BundleSelector.Configuration);
  v217 = v85;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v78, &qword_1001D5560);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  sub_10003E86C(&qword_1001D5580, &type metadata accessor for CVCoordinator.Configuration);
  v221 = v75;
  v86 = v214;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v71, &qword_1001D5550);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  v258 = v246;
  v259 = v247;
  v260 = v248;
  v87 = v1 + *(v222 + 20);
  v88 = v87 + v86[12];
  v89 = *v88;
  LOBYTE(v88) = *(v88 + 8);
  v256 = v89;
  v257 = v88;
  sub_10004969C();
  sub_1000496F0();
  sub_100049744();
  sub_100013608(&qword_1001D55A0, &qword_1001D5480);
  ConfigPicker<>.init(_:selection:initialValue:)();
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  v258 = v246;
  LOBYTE(v259) = v247;
  LOBYTE(v256) = *(v87 + v86[8]);
  sub_100049798();
  sub_1000497EC();
  sub_100049840();
  sub_100013608(&qword_1001D55C0, &qword_1001D5498);
  v90 = v86;
  ConfigPicker<>.init(_:selection:initialValue:)();
  v91 = v241;
  Binding.wrappedValue.getter();
  LODWORD(v71) = *(v91 + v86[8]);
  v92 = v91;
  sub_10004A93C(v91, type metadata accessor for CameraControllerConfiguration);
  v178 = v79;
  v177 = v87;
  if (v71)
  {
    v93 = v215;
    v94 = v181;
    v95 = v90;
    v96 = v227;
    Binding.wrappedValue.getter();
    LODWORD(v95) = *(v92 + v95[8]);
    sub_10004A93C(v92, type metadata accessor for CameraControllerConfiguration);
    if (v95 == 2)
    {
      sub_1000415D8(v93);
      sub_1000138BC(v93, v94, &qword_1001D5528);
      swift_storeEnumTagMultiPayload();
      sub_100013608(&qword_1001D5610, &qword_1001D5508);
      sub_100049AD4();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v93, &qword_1001D5528);
      v97 = sub_1000033A8(&qword_1001D55C8);
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
    }

    else
    {
      v131 = sub_1000033A8(&qword_1001D55C8);
      (*(*(v131 - 8) + 56))(v96, 1, 1, v131);
    }

    v102 = v179;
    v122 = v216;
    if (FigCaptureGetExperimentsEnabled())
    {
      goto LABEL_8;
    }
  }

  else
  {
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    v241 = v1;
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    v258 = v246;
    LOBYTE(v259) = v247;
    LOBYTE(v256) = *(v87 + v90[11]);
    sub_10004A008();
    sub_10004A05C();
    sub_10004A0B0();
    sub_100013608(&qword_1001D56C8, &qword_1001D5448);
    ConfigPicker<>.init(_:selection:initialValue:)();
    sub_10003EE48(v215);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    v258 = v246;
    LOBYTE(v259) = v247;
    LOBYTE(v256) = *(v87 + v90[5]);
    sub_10004A104();
    sub_10004A158();
    sub_10004A1AC();
    sub_100013608(&qword_1001D56E8, &qword_1001D5418);
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    v258 = v246;
    LOBYTE(v259) = v247;
    LOBYTE(v256) = *(v87 + v90[10]);
    sub_10004A200();
    sub_10004A254();
    sub_10004A2A8();
    sub_100013608(&qword_1001D5708, &qword_1001D5430);
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    v258 = v246;
    LOBYTE(v259) = v247;
    LOBYTE(v256) = *(v87 + v90[16]);
    sub_10004A2FC();
    sub_10004A350();
    sub_10004A3A4();
    sub_100013608(&qword_1001D5728, &qword_1001D5460);
    v160[1] = 0xD000000000000010;
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568);
    v98 = v171;
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    v99 = v176;
    v100 = *(v176 + 16);
    v101 = v170;
    v102 = v179;
    v100(v170, v216, v179);
    *&v246 = v101;
    v103 = v172;
    (*(v210 + 16))(v172, v202, v203);
    *(&v246 + 1) = v103;
    v104 = v173;
    sub_1000138BC(v215, v173, &qword_1001D5528);
    v247 = v104;
    v105 = v169;
    v100(v169, v201, v102);
    v248 = v105;
    v106 = v174;
    (*(v211 + 16))(v174, v204, v206);
    v249 = v106;
    v107 = v168;
    v100(v168, v200, v102);
    v250 = v107;
    v108 = v175;
    (*(v212 + 16))(v175, v205, v207);
    v251 = v108;
    v109 = v164;
    (*(v213 + 16))(v164, v208, v209);
    v252 = v109;
    v110 = v161;
    v100(v161, v198, v102);
    v253 = v110;
    v111 = v162;
    v100(v162, v199, v102);
    v254 = v111;
    v112 = v163;
    v100(v163, v98, v102);
    v255 = v112;
    v113 = v165;
    sub_100037FC0(&v246, v165);
    v114 = *(v99 + 8);
    v114(v112, v102);
    v114(v111, v102);
    v114(v110, v102);
    v115 = *(v213 + 8);
    v213 += 8;
    v163 = v115;
    (v115)(v109, v209);
    v116 = *(v212 + 8);
    v212 += 8;
    v164 = v116;
    (v116)(v175, v207);
    v114(v168, v102);
    v117 = *(v211 + 8);
    v211 += 8;
    v175 = v117;
    (v117)(v174, v206);
    v114(v169, v102);
    sub_10001370C(v173, &qword_1001D5528);
    v118 = *(v210 + 8);
    v210 += 8;
    v174 = v118;
    (v118)(v172, v203);
    v114(v170, v102);
    sub_1000138BC(v113, v181, &qword_1001D5508);
    swift_storeEnumTagMultiPayload();
    sub_100013608(&qword_1001D5610, &qword_1001D5508);
    sub_100049AD4();
    v119 = v227;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v113, &qword_1001D5508);
    v114(v171, v102);
    v114(v199, v102);
    v114(v198, v102);
    (v163)(v208, v209);
    (v164)(v205, v207);
    v114(v200, v102);
    (v175)(v204, v206);
    v114(v201, v102);
    sub_10001370C(v215, &qword_1001D5528);
    (v174)(v202, v203);
    v120 = v216;
    v114(v216, v102);
    v2 = v241;
    v121 = sub_1000033A8(&qword_1001D55C8);
    (*(*(v121 - 8) + 56))(v119, 0, 1, v121);
    v122 = v120;
    if (FigCaptureGetExperimentsEnabled())
    {
LABEL_8:
      Binding.projectedValue.getter();
      swift_getKeyPath();
      Binding.subscript.getter();

      sub_10001370C(v81, &qword_1001D5568);
      ConfigToggle.init(_:isOn:initialValue:onChange:)();
      v132 = v176;
      (*(v176 + 16))(v183, v122, v102);
      swift_storeEnumTagMultiPayload();
      sub_10003E86C(&qword_1001D4628, &type metadata accessor for ConfigToggle);
      _ConditionalContent<>.init(storage:)();
      (*(v132 + 8))(v122, v102);
      goto LABEL_9;
    }
  }

  *&v246 = static Color.red.getter();
  v123 = Text.foregroundStyle<A>(_:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;

  v130 = v183;
  *v183 = v123;
  v130[1] = v125;
  *(v130 + 16) = v127 & 1;
  v130[3] = v129;
  swift_storeEnumTagMultiPayload();
  sub_10003E86C(&qword_1001D4628, &type metadata accessor for ConfigToggle);
  _ConditionalContent<>.init(storage:)();
LABEL_9:
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v133 = v184;
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  sub_10003E86C(&qword_1001D55D0, &type metadata accessor for TrackManager.Configuration);
  Binding<A>.configurationForm.getter();
  sub_10001370C(v133, &qword_1001D54E0);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v134 = v186;
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568);
  v135 = sub_10003E86C(&qword_1001D55D8, &type metadata accessor for BundleManager.Configuration);
  v136 = v191;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v134, &qword_1001D54D0);
  sub_1000033A8(&qword_1001D55E0);
  v137 = v195;
  State.wrappedValue.getter();
  v138 = v190;
  sub_10004EB44(v2, v190, type metadata accessor for CameraControllerConfigurationForm);
  v139 = (*(v188 + 80) + 16) & ~*(v188 + 80);
  v140 = swift_allocObject();
  sub_10004A8D4(v138, v140 + v139, type metadata accessor for CameraControllerConfigurationForm);
  *&v246 = type metadata accessor for BundleManager.Configuration();
  *(&v246 + 1) = v135;
  swift_getOpaqueTypeConformance2();
  sub_100049A20();
  v141 = v194;
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v137, &qword_1001D54C0);
  (*(v192 + 8))(v136, v141);
  v213 = *(v219 + 16);
  v142 = v218;
  v143 = v220;
  (v213)(v218, v217, v220);
  v241 = *(v242 + 16);
  v241(v224, v221, v225);
  v222 = *(v243 + 16);
  (v222)(v228, v223, v229);
  v216 = *(v244 + 16);
  (v216)(v230, v226, v231);
  sub_1000138BC(v227, v232, &qword_1001D5538);
  sub_1000138BC(v233, v235, &qword_1001D54F8);
  v215 = *(v245 + 16);
  (v215)(v237, v234, v238);
  v144 = v196;
  v214 = *(v196 + 16);
  (v214)(v239, v236, v240);
  v145 = v197;
  (v213)(v197, v142, v143);
  v146 = sub_1000033A8(&qword_1001D5608);
  v241((v145 + v146[12]), v224, v225);
  v147 = v229;
  (v222)(v145 + v146[16], v228, v229);
  v148 = v231;
  (v216)(v145 + v146[20], v230, v231);
  sub_1000138BC(v232, v145 + v146[24], &qword_1001D5538);
  sub_1000138BC(v235, v145 + v146[28], &qword_1001D54F8);
  v149 = v238;
  (v215)(v145 + v146[32], v237, v238);
  v150 = v240;
  (v214)(v145 + v146[36], v239, v240);
  v151 = *(v144 + 8);
  v151(v236, v150);
  v152 = *(v245 + 8);
  v245 += 8;
  v152(v234, v149);
  sub_10001370C(v233, &qword_1001D54F8);
  sub_10001370C(v227, &qword_1001D5538);
  v153 = *(v244 + 8);
  v244 += 8;
  v153(v226, v148);
  v154 = *(v243 + 8);
  v243 += 8;
  v154(v223, v147);
  v155 = *(v242 + 8);
  v242 += 8;
  v156 = v225;
  v155(v221, v225);
  v157 = *(v219 + 8);
  v158 = v220;
  v157(v217, v220);
  v151(v239, v240);
  v152(v237, v238);
  sub_10001370C(v235, &qword_1001D54F8);
  sub_10001370C(v232, &qword_1001D5538);
  v153(v230, v231);
  v154(v228, v229);
  v155(v224, v156);
  return (v157)(v218, v158);
}

uint64_t sub_1000490A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  v15 = *(v9 + 16);
  v15(&v17 - v13, a1, v8);
  v15(v12, v14, v8);
  a6(v12);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1000491E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.promptForLocationAccessIfApplicable()();

  return sub_100043A78(a2);
}

uint64_t sub_10004923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v6 = __chkstk_darwin(v32);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_1000033A8(&qword_1001D54C0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  sub_10004F518(a1, a3);
  v22 = type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004A8D4(a2, a3 + *(v22 + 20), type metadata accessor for CameraControllerConfiguration);
  swift_storeEnumTagMultiPayload();
  sub_10004EB44(v21, v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  State.init(wrappedValue:)();
  sub_10004A93C(v21, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  v23 = type metadata accessor for PhotosPickerItem();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1000138BC(v15, v13, &qword_1001D54C0);
  State.init(wrappedValue:)();
  sub_10001370C(v15, &qword_1001D54C0);
  v24 = MKBGetDeviceLockState();
  if (v24)
  {
    v25 = v24 == 3;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  v27 = a3 + *(v22 + 32);
  v33 = v26;
  State.init(wrappedValue:)();
  v28 = v35;
  *v27 = v34;
  *(v27 + 8) = v28;
  swift_storeEnumTagMultiPayload();
  sub_10004EB44(v9, v31, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  State.init(wrappedValue:)();
  return sub_10004A93C(v9, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
}

unint64_t sub_10004969C()
{
  result = qword_1001D5588;
  if (!qword_1001D5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5588);
  }

  return result;
}

unint64_t sub_1000496F0()
{
  result = qword_1001D5590;
  if (!qword_1001D5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5590);
  }

  return result;
}

unint64_t sub_100049744()
{
  result = qword_1001D5598;
  if (!qword_1001D5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5598);
  }

  return result;
}

unint64_t sub_100049798()
{
  result = qword_1001D55A8;
  if (!qword_1001D55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55A8);
  }

  return result;
}

unint64_t sub_1000497EC()
{
  result = qword_1001D55B0;
  if (!qword_1001D55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55B0);
  }

  return result;
}

unint64_t sub_100049840()
{
  result = qword_1001D55B8;
  if (!qword_1001D55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55B8);
  }

  return result;
}

uint64_t sub_1000499A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CameraControllerConfigurationForm(0);

  return sub_1000491E4(a1, a2);
}

unint64_t sub_100049A20()
{
  result = qword_1001D55F8;
  if (!qword_1001D55F8)
  {
    sub_10001276C(&qword_1001D54C0);
    sub_10003E86C(&qword_1001D5600, &type metadata accessor for PhotosPickerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55F8);
  }

  return result;
}

unint64_t sub_100049AD4()
{
  result = qword_1001D5618;
  if (!qword_1001D5618)
  {
    sub_10001276C(&qword_1001D5528);
    sub_10001276C(&qword_1001D5620);
    sub_100013608(&qword_1001D5628, &qword_1001D5620);
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5618);
  }

  return result;
}

unint64_t sub_100049BE4()
{
  result = qword_1001D5630;
  if (!qword_1001D5630)
  {
    sub_10001276C(&qword_1001D5638);
    sub_100049C70();
    sub_100049ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5630);
  }

  return result;
}

unint64_t sub_100049C70()
{
  result = qword_1001D5640;
  if (!qword_1001D5640)
  {
    sub_10001276C(&qword_1001D5648);
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5640);
  }

  return result;
}

unint64_t sub_100049D28()
{
  result = qword_1001D5650;
  if (!qword_1001D5650)
  {
    sub_10001276C(&qword_1001D5658);
    sub_100013608(&qword_1001D5660, &qword_1001D5668);
    sub_100049DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5650);
  }

  return result;
}

unint64_t sub_100049DE0()
{
  result = qword_1001D5670;
  if (!qword_1001D5670)
  {
    sub_10001276C(&qword_1001D5678);
    sub_10001276C(&qword_1001D5680);
    sub_100013608(&qword_1001D5688, &qword_1001D5680);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5670);
  }

  return result;
}

unint64_t sub_100049ED8()
{
  result = qword_1001D56A0;
  if (!qword_1001D56A0)
  {
    sub_10001276C(&qword_1001D56A8);
    sub_10001276C(&qword_1001D5620);
    sub_100013608(&qword_1001D5628, &qword_1001D5620);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56A0);
  }

  return result;
}

unint64_t sub_10004A008()
{
  result = qword_1001D56B0;
  if (!qword_1001D56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56B0);
  }

  return result;
}

unint64_t sub_10004A05C()
{
  result = qword_1001D56B8;
  if (!qword_1001D56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56B8);
  }

  return result;
}

unint64_t sub_10004A0B0()
{
  result = qword_1001D56C0;
  if (!qword_1001D56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56C0);
  }

  return result;
}

unint64_t sub_10004A104()
{
  result = qword_1001D56D0;
  if (!qword_1001D56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56D0);
  }

  return result;
}

unint64_t sub_10004A158()
{
  result = qword_1001D56D8;
  if (!qword_1001D56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56D8);
  }

  return result;
}

unint64_t sub_10004A1AC()
{
  result = qword_1001D56E0;
  if (!qword_1001D56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56E0);
  }

  return result;
}

unint64_t sub_10004A200()
{
  result = qword_1001D56F0;
  if (!qword_1001D56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56F0);
  }

  return result;
}

unint64_t sub_10004A254()
{
  result = qword_1001D56F8;
  if (!qword_1001D56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56F8);
  }

  return result;
}

unint64_t sub_10004A2A8()
{
  result = qword_1001D5700;
  if (!qword_1001D5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5700);
  }

  return result;
}

unint64_t sub_10004A2FC()
{
  result = qword_1001D5710;
  if (!qword_1001D5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5710);
  }

  return result;
}

unint64_t sub_10004A350()
{
  result = qword_1001D5718;
  if (!qword_1001D5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5718);
  }

  return result;
}

unint64_t sub_10004A3A4()
{
  result = qword_1001D5720;
  if (!qword_1001D5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5720);
  }

  return result;
}

uint64_t sub_10004A418()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  v1 = v0 + ((v23 + 16) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0);

  return swift_deallocObject();
}

uint64_t sub_10004A8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004A93C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayVideo(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_1000033A8(&qword_1001D6000);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = (&v28 + *(v17 + 56) - v18);
  sub_10004EB44(a1, &v28 - v18, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  sub_10004EB44(a2, v20, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10004EB44(v19, v13, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10004A93C(v13, type metadata accessor for ReplayVideo);
        goto LABEL_19;
      }

      sub_10004A8D4(v20, v6, type metadata accessor for ReplayVideo);
      v26 = static URL.== infix(_:_:)();
      sub_10004A93C(v6, type metadata accessor for ReplayVideo);
      sub_10004A93C(v13, type metadata accessor for ReplayVideo);
    }

    else
    {
      sub_10004EB44(v19, v15, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_10001370C(v19, &qword_1001D6000);
        goto LABEL_20;
      }

      sub_1000033A8(&qword_1001D57C8);
      sub_1000033A8(&qword_1001D57D0);
      v26 = static Task.== infix(_:_:)();
    }

    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_10004EB44(v19, v10, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  v23 = *v10;
  v22 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v23 == *v20 && v22 == v20[1])
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v26 = 1;
    return v26 & 1;
  }

  sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
LABEL_20:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10004ADF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillFrame(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_1000033A8(&qword_1001D5FF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = (&v28 + *(v17 + 56) - v18);
  sub_10004EB44(a1, &v28 - v18, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  sub_10004EB44(a2, v20, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10004EB44(v19, v13, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10004A93C(v13, type metadata accessor for StillFrame);
        goto LABEL_19;
      }

      sub_10004A8D4(v20, v6, type metadata accessor for StillFrame);
      v26 = static URL.== infix(_:_:)();
      sub_10004A93C(v6, type metadata accessor for StillFrame);
      sub_10004A93C(v13, type metadata accessor for StillFrame);
    }

    else
    {
      sub_10004EB44(v19, v15, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_10001370C(v19, &qword_1001D5FF8);
        goto LABEL_20;
      }

      sub_1000033A8(&qword_1001D57E0);
      sub_1000033A8(&qword_1001D57D0);
      v26 = static Task.== infix(_:_:)();
    }

    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_10004EB44(v19, v10, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  v23 = *v10;
  v22 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v23 == *v20 && v22 == v20[1])
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v26 = 1;
    return v26 & 1;
  }

  sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
LABEL_20:
  v26 = 0;
  return v26 & 1;
}

BOOL sub_10004B234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000033A8(&qword_1001D8020);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-v11];
  __chkstk_darwin(v10);
  v14 = &v48[-v13];
  v15 = sub_1000033A8(&qword_1001D5958);
  v16 = __chkstk_darwin(v15);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v48[-v20];
  __chkstk_darwin(v19);
  v23 = &v48[-v22];
  if ((static SaliencyStreamConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(a1 + v24[5]) != *(a2 + v24[5]) || *(a1 + v24[6]) != *(a2 + v24[6]) || *(a1 + v24[7]) != *(a2 + v24[7]) || *(a1 + v24[8]) != *(a2 + v24[8]) || *(a1 + v24[9]) != *(a2 + v24[9]) || *(a1 + v24[10]) != *(a2 + v24[10]) || *(a1 + v24[11]) != *(a2 + v24[11]))
  {
    return 0;
  }

  v25 = v24[12];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (*(a1 + v24[13]) != *(a2 + v24[13]))
  {
    return 0;
  }

  v51 = v24;
  v30 = *(v15 + 48);
  v53 = v24[14];
  v54 = v30;
  sub_1000138BC(a1 + v53, v23, &qword_1001D8020);
  sub_1000138BC(a2 + v53, &v54[v23], &qword_1001D8020);
  v52 = *(v56 + 48);
  v53 = v56 + 48;
  if (v52(v23, 1, v4) == 1)
  {
    if (v52(&v54[v23], 1, v4) == 1)
    {
      sub_10001370C(v23, &qword_1001D8020);
      goto LABEL_25;
    }

LABEL_21:
    v31 = v23;
LABEL_22:
    sub_10001370C(v31, &qword_1001D5958);
    return 0;
  }

  sub_1000138BC(v23, v14, &qword_1001D8020);
  if (v52(&v54[v23], 1, v4) == 1)
  {
    (*(v56 + 8))(v14, v4);
    goto LABEL_21;
  }

  (*(v56 + 32))(v55, &v54[v23], v4);
  sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v56 + 8);
  v50 = v56 + 8;
  v54 = v33;
  (v33)(v55, v4);
  (v54)(v14, v4);
  sub_10001370C(v23, &qword_1001D8020);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v34 = v51[15];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 4)
  {
    if (v36 != 4)
    {
      return 0;
    }
  }

  else if (v35 != v36)
  {
    return 0;
  }

  if (*(a1 + v51[16]) != *(a2 + v51[16]))
  {
    return 0;
  }

  v37 = v51[17];
  v38 = *(v15 + 48);
  sub_1000138BC(a1 + v37, v21, &qword_1001D8020);
  v54 = v38;
  sub_1000138BC(a2 + v37, &v38[v21], &qword_1001D8020);
  v39 = v52;
  if (v52(v21, 1, v4) == 1)
  {
    if (v39(&v54[v21], 1, v4) == 1)
    {
      sub_10001370C(v21, &qword_1001D8020);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000138BC(v21, v12, &qword_1001D8020);
  if (v39(&v54[v21], 1, v4) == 1)
  {
    (*(v56 + 8))(v12, v4);
LABEL_35:
    v31 = v21;
    goto LABEL_22;
  }

  v40 = v56;
  (*(v56 + 32))(v55, &v54[v21], v4);
  sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL);
  LODWORD(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v40 + 8);
  v41(v55, v4);
  v41(v12, v4);
  sub_10001370C(v21, &qword_1001D8020);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  if (*(a1 + v51[18]) != *(a2 + v51[18]) || *(a1 + v51[19]) != *(a2 + v51[19]) || *(a1 + v51[20]) != *(a2 + v51[20]))
  {
    return 0;
  }

  v42 = v51[21];
  v43 = *(v15 + 48);
  sub_1000138BC(a1 + v42, v18, &qword_1001D8020);
  sub_1000138BC(a2 + v42, &v18[v43], &qword_1001D8020);
  if (v52(v18, 1, v4) != 1)
  {
    sub_1000138BC(v18, v9, &qword_1001D8020);
    if (v52(&v18[v43], 1, v4) == 1)
    {
      (*(v56 + 8))(v9, v4);
      goto LABEL_45;
    }

    v45 = v55;
    v44 = v56;
    (*(v56 + 32))(v55, &v18[v43], v4);
    sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v44 + 8);
    v47(v45, v4);
    v47(v9, v4);
    sub_10001370C(v18, &qword_1001D8020);
    return (v46 & 1) != 0;
  }

  if (v52(&v18[v43], 1, v4) != 1)
  {
LABEL_45:
    v31 = v18;
    goto LABEL_22;
  }

  sub_10001370C(v18, &qword_1001D8020);
  return 1;
}

uint64_t sub_10004BB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74694B7261 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275747061437661 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F74616C756D6973 && a2 == 0xE900000000000072)
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

uint64_t sub_10004BC78(void *a1)
{
  v29 = sub_1000033A8(&qword_1001D57F0);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1000033A8(&qword_1001D57F8);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1000033A8(&qword_1001D5800);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1000033A8(&qword_1001D5808);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_100006AAC(a1, a1[3]);
  sub_10004F588();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_1000033A8(&qword_1001D5818);
    *v21 = &type metadata for CameraControllerConfiguration.SourceType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_10004F684();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_10004F630();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_10004F5DC();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v35);
  return v36;
}

uint64_t sub_10004C208(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701079415 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469576C617564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C70697274 && a2 == 0xE600000000000000)
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

uint64_t sub_10004C31C(void *a1)
{
  v29 = sub_1000033A8(&qword_1001D5A58);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1000033A8(&qword_1001D5A60);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1000033A8(&qword_1001D5A68);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1000033A8(&qword_1001D5A70);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_100006AAC(a1, a1[3]);
  sub_100050008();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_1000033A8(&qword_1001D5818);
    *v21 = &type metadata for CameraControllerConfiguration.Camera;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_100050104();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1000500B0();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_10005005C();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v35);
  return v36;
}

uint64_t sub_10004C8AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869903201 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F73655268676968 && a2 == 0xEE006E6F6974756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B72756F66 && a2 == 0xE500000000000000)
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

uint64_t sub_10004C9C8(void *a1)
{
  v29 = sub_1000033A8(&qword_1001D59B0);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1000033A8(&qword_1001D59B8);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1000033A8(&qword_1001D59C0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1000033A8(&qword_1001D59C8);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_100006AAC(a1, a1[3]);
  sub_10004FDBC();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_1000033A8(&qword_1001D5818);
    *v21 = &type metadata for CameraControllerConfiguration.RecordingQuality;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_10004FEB8();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_10004FE64();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_10004FE10();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v35);
  return v36;
}

uint64_t sub_10004CF58(void *a1)
{
  v24 = sub_1000033A8(&qword_1001D5A10);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1000033A8(&qword_1001D5A18);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1000033A8(&qword_1001D5A20);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100006AAC(a1, a1[3]);
  sub_10004FF0C();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100006B44(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_1000033A8(&qword_1001D5818);
    *v18 = &type metadata for CameraControllerConfiguration.PhotoQuality;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100006B44(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_10004FF60();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_10004FFB4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100006B44(v26);
  return v27;
}

uint64_t sub_10004D394(void *a1)
{
  v24 = sub_1000033A8(&qword_1001D5968);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1000033A8(&qword_1001D5970);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1000033A8(&qword_1001D5978);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100006AAC(a1, a1[3]);
  sub_10004FCC0();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100006B44(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_1000033A8(&qword_1001D5818);
    *v18 = &type metadata for CameraControllerConfiguration.FrameRate;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100006B44(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_10004FD14();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_10004FD68();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100006B44(v26);
  return v27;
}

void *sub_10004D7D0(void *a1)
{
  v2 = sub_1000033A8(&qword_1001D5858);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  __chkstk_darwin(v2);
  v5 = &v29[-v4];
  v6 = sub_1000033A8(&qword_1001D5860);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29[-v7];
  v9 = sub_1000033A8(&qword_1001D5868);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29[-v11];
  v13 = a1[3];
  v36 = a1;
  v14 = sub_100006AAC(a1, v13);
  sub_10004F6D8();
  v15 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v34;
    v31 = v6;
    v35 = v10;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = v9;
    if (*(v17 + 16) == 1)
    {
      v30 = *(v17 + 32);
      if (v30)
      {
        v38 = 1;
        sub_10004F72C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v19 = v35;
        v20 = v5;
        v21 = v32;
        KeyedDecodingContainer.decode(_:forKey:)();
        v23 = v22;
        (*(v33 + 8))(v20, v21);
        (*(v19 + 8))(v12, v18);
        swift_unknownObjectRelease();
        v14 = v23;
      }

      else
      {
        v37 = 0;
        sub_10004F780();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v27 = v35;
        (*(v16 + 8))(v8, v31);
        (*(v27 + 8))(v12, v18);
        swift_unknownObjectRelease();
        v14 = 0;
      }
    }

    else
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      sub_1000033A8(&qword_1001D5818);
      *v26 = &type metadata for CameraControllerConfiguration.SafeAreaStrategy;
      v14 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v35 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  sub_100006B44(v36);
  return v14;
}

uint64_t sub_10004DC68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000010016C320 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010016C340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6175516F746F6870 && a2 == 0xEC0000007974696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016C3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010016C3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6172466C6C697473 && a2 == 0xED00004C5255656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010016C400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7065526F65646976 && a2 == 0xEE004C525579616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010016C420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4F764373746E6177 && a2 == 0xEE0079616C726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016C440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C460 == a2)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_10004E24C(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_100040974(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004E3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E4DC()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  swift_unknownObjectRelease();
  v1 = v0 + ((v23 + 32) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0);

  return swift_deallocObject();
}

uint64_t sub_10004E9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000432E0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004EB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EBB0(uint64_t a1)
{
  type metadata accessor for PhotosPickerItem();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_100044784(a1);
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_100045014(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004ED9C()
{
  v1 = type metadata accessor for PhotosPickerItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004EE60(uint64_t a1)
{
  type metadata accessor for PhotosPickerItem();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_10004587C(a1);
}

uint64_t sub_10004EF50()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  swift_unknownObjectRelease();

  v1 = v0 + ((v23 + 40) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0);

  return swift_deallocObject();
}

uint64_t sub_10004F420(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019340;

  return sub_100045AE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004F518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D5568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F588()
{
  result = qword_1001D5810;
  if (!qword_1001D5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5810);
  }

  return result;
}

unint64_t sub_10004F5DC()
{
  result = qword_1001D5820;
  if (!qword_1001D5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5820);
  }

  return result;
}

unint64_t sub_10004F630()
{
  result = qword_1001D5828;
  if (!qword_1001D5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5828);
  }

  return result;
}

unint64_t sub_10004F684()
{
  result = qword_1001D5830;
  if (!qword_1001D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5830);
  }

  return result;
}

unint64_t sub_10004F6D8()
{
  result = qword_1001D5870;
  if (!qword_1001D5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5870);
  }

  return result;
}

unint64_t sub_10004F72C()
{
  result = qword_1001D5878;
  if (!qword_1001D5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5878);
  }

  return result;
}

unint64_t sub_10004F780()
{
  result = qword_1001D5880;
  if (!qword_1001D5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5880);
  }

  return result;
}

unint64_t sub_10004F7D4()
{
  result = qword_1001D58B8;
  if (!qword_1001D58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58B8);
  }

  return result;
}

unint64_t sub_10004F828()
{
  result = qword_1001D58C8;
  if (!qword_1001D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58C8);
  }

  return result;
}

unint64_t sub_10004F87C()
{
  result = qword_1001D58D0;
  if (!qword_1001D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D0);
  }

  return result;
}

unint64_t sub_10004F8D0()
{
  result = qword_1001D58D8;
  if (!qword_1001D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D8);
  }

  return result;
}

unint64_t sub_10004F924()
{
  result = qword_1001D58E0;
  if (!qword_1001D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E0);
  }

  return result;
}

unint64_t sub_10004F978()
{
  result = qword_1001D58E8;
  if (!qword_1001D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E8);
  }

  return result;
}

unint64_t sub_10004F9CC()
{
  result = qword_1001D58F8;
  if (!qword_1001D58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58F8);
  }

  return result;
}

unint64_t sub_10004FA20()
{
  result = qword_1001D5900;
  if (!qword_1001D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5900);
  }

  return result;
}

unint64_t sub_10004FA74()
{
  result = qword_1001D5918;
  if (!qword_1001D5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5918);
  }

  return result;
}

unint64_t sub_10004FAC8()
{
  result = qword_1001D5920;
  if (!qword_1001D5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5920);
  }

  return result;
}

unint64_t sub_10004FB1C()
{
  result = qword_1001D5928;
  if (!qword_1001D5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5928);
  }

  return result;
}

unint64_t sub_10004FB70()
{
  result = qword_1001D5930;
  if (!qword_1001D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5930);
  }

  return result;
}

unint64_t sub_10004FBC4()
{
  result = qword_1001D5938;
  if (!qword_1001D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5938);
  }

  return result;
}

unint64_t sub_10004FC18()
{
  result = qword_1001D5948;
  if (!qword_1001D5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5948);
  }

  return result;
}

unint64_t sub_10004FC6C()
{
  result = qword_1001D5950;
  if (!qword_1001D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5950);
  }

  return result;
}

unint64_t sub_10004FCC0()
{
  result = qword_1001D5980;
  if (!qword_1001D5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5980);
  }

  return result;
}

unint64_t sub_10004FD14()
{
  result = qword_1001D5988;
  if (!qword_1001D5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5988);
  }

  return result;
}

unint64_t sub_10004FD68()
{
  result = qword_1001D5990;
  if (!qword_1001D5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5990);
  }

  return result;
}

unint64_t sub_10004FDBC()
{
  result = qword_1001D59D0;
  if (!qword_1001D59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59D0);
  }

  return result;
}

unint64_t sub_10004FE10()
{
  result = qword_1001D59D8;
  if (!qword_1001D59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59D8);
  }

  return result;
}

unint64_t sub_10004FE64()
{
  result = qword_1001D59E0;
  if (!qword_1001D59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59E0);
  }

  return result;
}

unint64_t sub_10004FEB8()
{
  result = qword_1001D59E8;
  if (!qword_1001D59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59E8);
  }

  return result;
}

unint64_t sub_10004FF0C()
{
  result = qword_1001D5A28;
  if (!qword_1001D5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A28);
  }

  return result;
}

unint64_t sub_10004FF60()
{
  result = qword_1001D5A30;
  if (!qword_1001D5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A30);
  }

  return result;
}

unint64_t sub_10004FFB4()
{
  result = qword_1001D5A38;
  if (!qword_1001D5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A38);
  }

  return result;
}

unint64_t sub_100050008()
{
  result = qword_1001D5A78;
  if (!qword_1001D5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A78);
  }

  return result;
}

unint64_t sub_10005005C()
{
  result = qword_1001D5A80;
  if (!qword_1001D5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A80);
  }

  return result;
}

unint64_t sub_1000500B0()
{
  result = qword_1001D5A88;
  if (!qword_1001D5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A88);
  }

  return result;
}

unint64_t sub_100050104()
{
  result = qword_1001D5A90;
  if (!qword_1001D5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraControllerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraControllerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100050440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000504C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100050530()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100050654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_1000506E4(319, a4, a5);
  if (v8 <= 0x3F)
  {
    a7(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000506E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10001276C(a3);
    sub_10001276C(&qword_1001D57D0);
    v4 = type metadata accessor for Task();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100050778(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000033A8(&qword_1001D5568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000033A8(&qword_1001D55E8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000033A8(&qword_1001D55E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[8] + 8);
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

  else
  {
    v19 = sub_1000033A8(&qword_1001D55F0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1000509D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000033A8(&qword_1001D5568);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000033A8(&qword_1001D55E8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_1000033A8(&qword_1001D55E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v18 = sub_1000033A8(&qword_1001D55F0);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

void sub_100050C08()
{
  sub_100050DA0(319, &qword_1001D5DA0, type metadata accessor for CameraControllerConfiguration, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CameraControllerConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_100050DA0(319, &qword_1001D5DA8, type metadata accessor for CameraControllerConfigurationForm.ReplayState, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100050E04();
        if (v3 <= 0x3F)
        {
          sub_100050E68(319, &qword_1001D44A0, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100050DA0(319, &unk_1001D5DB8, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState, &type metadata accessor for State);
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

void sub_100050DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100050E04()
{
  if (!qword_1001D5DB0)
  {
    sub_10001276C(&qword_1001D54C0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D5DB0);
    }
  }
}

void sub_100050E68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100050F00()
{
  result = qword_1001D5E08;
  if (!qword_1001D5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E08);
  }

  return result;
}

unint64_t sub_100050F58()
{
  result = qword_1001D5E10;
  if (!qword_1001D5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E10);
  }

  return result;
}

unint64_t sub_100050FB0()
{
  result = qword_1001D5E18;
  if (!qword_1001D5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E18);
  }

  return result;
}

unint64_t sub_100051008()
{
  result = qword_1001D5E20;
  if (!qword_1001D5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E20);
  }

  return result;
}

unint64_t sub_100051060()
{
  result = qword_1001D5E28;
  if (!qword_1001D5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E28);
  }

  return result;
}

unint64_t sub_1000510B8()
{
  result = qword_1001D5E30;
  if (!qword_1001D5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E30);
  }

  return result;
}

unint64_t sub_100051110()
{
  result = qword_1001D5E38;
  if (!qword_1001D5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E38);
  }

  return result;
}

unint64_t sub_100051168()
{
  result = qword_1001D5E40;
  if (!qword_1001D5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E40);
  }

  return result;
}

unint64_t sub_1000511C0()
{
  result = qword_1001D5E48;
  if (!qword_1001D5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E48);
  }

  return result;
}

unint64_t sub_100051218()
{
  result = qword_1001D5E50;
  if (!qword_1001D5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E50);
  }

  return result;
}

unint64_t sub_100051270()
{
  result = qword_1001D5E58;
  if (!qword_1001D5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E58);
  }

  return result;
}

unint64_t sub_1000512C8()
{
  result = qword_1001D5E60;
  if (!qword_1001D5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E60);
  }

  return result;
}

unint64_t sub_100051320()
{
  result = qword_1001D5E68;
  if (!qword_1001D5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E68);
  }

  return result;
}

unint64_t sub_100051378()
{
  result = qword_1001D5E70;
  if (!qword_1001D5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E70);
  }

  return result;
}

unint64_t sub_1000513D0()
{
  result = qword_1001D5E78;
  if (!qword_1001D5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E78);
  }

  return result;
}

unint64_t sub_100051428()
{
  result = qword_1001D5E80;
  if (!qword_1001D5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E80);
  }

  return result;
}

unint64_t sub_100051480()
{
  result = qword_1001D5E88;
  if (!qword_1001D5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E88);
  }

  return result;
}

unint64_t sub_1000514D8()
{
  result = qword_1001D5E90;
  if (!qword_1001D5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E90);
  }

  return result;
}

unint64_t sub_100051530()
{
  result = qword_1001D5E98;
  if (!qword_1001D5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E98);
  }

  return result;
}

unint64_t sub_100051588()
{
  result = qword_1001D5EA0;
  if (!qword_1001D5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EA0);
  }

  return result;
}

unint64_t sub_1000515E0()
{
  result = qword_1001D5EA8;
  if (!qword_1001D5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EA8);
  }

  return result;
}

unint64_t sub_100051638()
{
  result = qword_1001D5EB0;
  if (!qword_1001D5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EB0);
  }

  return result;
}

unint64_t sub_100051690()
{
  result = qword_1001D5EB8;
  if (!qword_1001D5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EB8);
  }

  return result;
}

unint64_t sub_1000516E8()
{
  result = qword_1001D5EC0;
  if (!qword_1001D5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EC0);
  }

  return result;
}

unint64_t sub_100051740()
{
  result = qword_1001D5EC8;
  if (!qword_1001D5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EC8);
  }

  return result;
}

unint64_t sub_100051798()
{
  result = qword_1001D5ED0;
  if (!qword_1001D5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5ED0);
  }

  return result;
}

unint64_t sub_1000517F0()
{
  result = qword_1001D5ED8;
  if (!qword_1001D5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5ED8);
  }

  return result;
}

unint64_t sub_100051848()
{
  result = qword_1001D5EE0;
  if (!qword_1001D5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EE0);
  }

  return result;
}

unint64_t sub_1000518A0()
{
  result = qword_1001D5EE8;
  if (!qword_1001D5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EE8);
  }

  return result;
}

unint64_t sub_1000518F8()
{
  result = qword_1001D5EF0;
  if (!qword_1001D5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EF0);
  }

  return result;
}

unint64_t sub_100051950()
{
  result = qword_1001D5EF8;
  if (!qword_1001D5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EF8);
  }

  return result;
}

unint64_t sub_1000519A8()
{
  result = qword_1001D5F00;
  if (!qword_1001D5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F00);
  }

  return result;
}

unint64_t sub_100051A00()
{
  result = qword_1001D5F08;
  if (!qword_1001D5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F08);
  }

  return result;
}

unint64_t sub_100051A58()
{
  result = qword_1001D5F10;
  if (!qword_1001D5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F10);
  }

  return result;
}

unint64_t sub_100051AB0()
{
  result = qword_1001D5F18;
  if (!qword_1001D5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F18);
  }

  return result;
}

unint64_t sub_100051B08()
{
  result = qword_1001D5F20;
  if (!qword_1001D5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F20);
  }

  return result;
}

unint64_t sub_100051B60()
{
  result = qword_1001D5F28;
  if (!qword_1001D5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F28);
  }

  return result;
}

unint64_t sub_100051BB8()
{
  result = qword_1001D5F30;
  if (!qword_1001D5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F30);
  }

  return result;
}

unint64_t sub_100051C10()
{
  result = qword_1001D5F38;
  if (!qword_1001D5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F38);
  }

  return result;
}

unint64_t sub_100051C68()
{
  result = qword_1001D5F40;
  if (!qword_1001D5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F40);
  }

  return result;
}

unint64_t sub_100051CC0()
{
  result = qword_1001D5F48;
  if (!qword_1001D5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F48);
  }

  return result;
}

unint64_t sub_100051D18()
{
  result = qword_1001D5F50;
  if (!qword_1001D5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F50);
  }

  return result;
}

unint64_t sub_100051D70()
{
  result = qword_1001D5F58;
  if (!qword_1001D5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F58);
  }

  return result;
}

unint64_t sub_100051DC8()
{
  result = qword_1001D5F60;
  if (!qword_1001D5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F60);
  }

  return result;
}

unint64_t sub_100051E20()
{
  result = qword_1001D5F68;
  if (!qword_1001D5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F68);
  }

  return result;
}

unint64_t sub_100051E78()
{
  result = qword_1001D5F70;
  if (!qword_1001D5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F70);
  }

  return result;
}

unint64_t sub_100051ED0()
{
  result = qword_1001D5F78;
  if (!qword_1001D5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F78);
  }

  return result;
}

unint64_t sub_100051F28()
{
  result = qword_1001D5F80;
  if (!qword_1001D5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F80);
  }

  return result;
}

unint64_t sub_100051F80()
{
  result = qword_1001D5F88;
  if (!qword_1001D5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F88);
  }

  return result;
}

unint64_t sub_100051FD8()
{
  result = qword_1001D5F90;
  if (!qword_1001D5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F90);
  }

  return result;
}

unint64_t sub_100052030()
{
  result = qword_1001D5F98;
  if (!qword_1001D5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F98);
  }

  return result;
}

unint64_t sub_100052088()
{
  result = qword_1001D5FA0;
  if (!qword_1001D5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5FA0);
  }

  return result;
}

uint64_t sub_1000521E8()
{

  return sub_10003D074();
}

uint64_t sub_1000522BC(uint64_t a1)
{
  v2 = sub_1000524D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000522F8(uint64_t a1)
{
  v2 = sub_1000524D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005235C(void *a1)
{
  v2 = sub_1000033A8(&qword_1001D6030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006AAC(a1, a1[3]);
  sub_1000524D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10005247C()
{
  result = qword_1001D6028;
  if (!qword_1001D6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6028);
  }

  return result;
}

unint64_t sub_1000524D0()
{
  result = qword_1001D6038;
  if (!qword_1001D6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6038);
  }

  return result;
}

unint64_t sub_100052538()
{
  result = qword_1001D6040;
  if (!qword_1001D6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6040);
  }

  return result;
}

unint64_t sub_100052590()
{
  result = qword_1001D6048;
  if (!qword_1001D6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6048);
  }

  return result;
}

uint64_t sub_100052610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v39 = sub_1000033A8(&qword_1001D6050) - 8;
  v9 = __chkstk_darwin(v39);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v41 = &v36 - v12;
  v13 = __chkstk_darwin(v11);
  v40 = &v36 - v14;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v38 = a2;
  v17[4] = a3;
  v17[5] = a4;

  v37 = v16;
  Button<>.init(_:action:)();
  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100052C8C();
  v18 = dispatch thunk of UserDefaultsUtility.hasAnyOnboardingDefaults<A>(configStorage:)();
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  v21 = v39;
  v22 = &v16[*(v39 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_100052CFC;
  v22[2] = v20;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = swift_allocObject();
  v24 = v38;
  v23[2] = a1;
  v23[3] = v24;
  v23[4] = a3;
  v23[5] = a4;

  v25 = v40;
  Button<>.init(_:action:)();
  v26 = dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.getter();
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = (v26 & 1) == 0;
  v29 = (v25 + *(v21 + 44));
  *v29 = v27;
  v29[1] = sub_100052EA8;
  v29[2] = v28;
  v30 = v37;
  v31 = v41;
  sub_100052D60(v37, v41);
  v32 = v42;
  sub_100052D60(v25, v42);
  v33 = v43;
  sub_100052D60(v31, v43);
  v34 = sub_1000033A8(&qword_1001D6060);
  sub_100052D60(v32, v33 + *(v34 + 48));
  sub_100052DD0(v25);
  sub_100052DD0(v30);
  sub_100052DD0(v32);
  return sub_100052DD0(v31);
}

uint64_t sub_1000529C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting onboarding overlays…", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100052C8C();
  return dispatch thunk of UserDefaultsUtility.resetOnboardingDefaults<A>(configStorage:)();
}

uint64_t sub_100052B28()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting onboarding follow up prompts…", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return dispatch thunk of UserDefaultsUtility.resetGeoLookupFollowUpPrompt()();
}

unint64_t sub_100052C8C()
{
  result = qword_1001D6058;
  if (!qword_1001D6058)
  {
    type metadata accessor for CameraControllerConfiguration.Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6058);
  }

  return result;
}

uint64_t sub_100052D04()
{

  return swift_deallocObject();
}

uint64_t sub_100052D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DD0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100052E3C()
{
  result = qword_1001D6068;
  if (!qword_1001D6068)
  {
    sub_10001276C(&qword_1001D6070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6068);
  }

  return result;
}

uint64_t sub_100052EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100052FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CameraErrorView()
{
  result = qword_1001D60D0;
  if (!qword_1001D60D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000530B4()
{
  sub_100053128();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100053128()
{
  if (!qword_1001D4D48)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D4D48);
    }
  }
}

uint64_t sub_10005319C@<X0>(uint64_t a1@<X8>)
{
  v57[1] = a1;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v57 - v7;
  v9 = sub_1000033A8(&qword_1001D6108);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0x4034000000000000;
  v11[16] = 0;
  v12 = sub_1000033A8(&qword_1001D6110);
  sub_10005373C(v1, &v11[*(v12 + 44)]);
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v11[*(sub_1000033A8(&qword_1001D6118) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_100054038(&qword_1001D4DC0, &type metadata accessor for ColorScheme, v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  v26 = static ColorScheme.== infix(_:_:)();
  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v8, v2);
  if (v26)
  {
    v28 = 0.8;
  }

  else
  {
    v28 = 0.3;
  }

  v29 = &v11[*(sub_1000033A8(&qword_1001D6120) + 36)];
  *v29 = &off_1001BEC68;
  *(v29 + 1) = 0x403C000000000000;
  *(v29 + 2) = v28;
  *(v29 + 3) = 0x3FE3333333333333;
  *(v29 + 4) = v23;
  *(v29 + 5) = v25;
  v30 = &v11[*(sub_1000033A8(&qword_1001D6128) + 36)];
  static Material.thin.getter();
  v31 = static Edge.Set.all.getter();
  v30[*(sub_1000033A8(&qword_1001D3CA0) + 36)] = v31;
  sub_10002E2E4(v64);
  v32 = v64[0];
  v33 = v64[1];
  v34 = v64[2];
  v35 = v64[3];
  v36 = v64[4];
  v37 = static Alignment.center.getter();
  v39 = v38;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  *&v60 = v34;
  *(&v60 + 1) = v35;
  *&v61 = v36;
  *(&v61 + 1) = 0x3FE6666666666666;
  *&v62 = v37;
  *(&v62 + 1) = v38;
  v40 = &v11[*(sub_1000033A8(&qword_1001D6130) + 36)];
  v41 = v60;
  *v40 = v59;
  *(v40 + 1) = v41;
  v42 = v62;
  *(v40 + 2) = v61;
  *(v40 + 3) = v42;
  v63[0] = v32;
  v63[1] = v33;
  v63[2] = v34;
  v63[3] = v35;
  v63[4] = v36;
  v63[5] = 0x3FE6666666666666;
  v63[6] = v37;
  v63[7] = v39;
  sub_1000138BC(&v59, v58, &qword_1001D4E40);
  sub_10001370C(v63, &qword_1001D4E40);
  v43 = &v11[*(sub_1000033A8(&qword_1001D6138) + 36)];
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #28.0 }

  *v43 = _Q0;
  *&v43[*(sub_1000033A8(&qword_1001D4E50) + 36)] = 256;
  static Color.black.getter();
  v52 = Color.opacity(_:)();

  v53 = &v11[*(sub_1000033A8(&qword_1001D6140) + 36)];
  *v53 = v52;
  *(v53 + 8) = xmmword_1001721E0;
  *(v53 + 3) = 0x4010000000000000;
  LOBYTE(v45) = static Edge.Set.all.getter();
  v54 = &v11[*(sub_1000033A8(&qword_1001D6148) + 36)];
  *v54 = v45;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  v54[40] = 1;
  static AnyTransition.opacity.getter();
  static AnyTransition.blur(radius:)();
  v55 = AnyTransition.combined(with:)();

  *&v11[*(sub_1000033A8(&qword_1001D6150) + 36)] = v55;
  v11[*(v9 + 36)] = 0;
  sub_100054510();
  View.accessibilityIdentifier(_:)();
  return sub_10001370C(v11, &qword_1001D6108);
}

uint64_t sub_10005373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000033A8(&qword_1001D61D0);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v39 = v7;
  v8 = sub_1000033A8(&qword_1001D61D8);
  sub_100053AD8(v7 + *(v8 + 44));
  v9 = (a1 + *(type metadata accessor for CameraErrorView() + 20));
  v10 = v9[1];
  v58 = *v9;
  v59 = v10;
  sub_10002EC9C();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.headline.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_100020D44(v11, v13, v15 & 1);

  static Font.Weight.medium.getter();
  v21 = Text.fontWeight(_:)();
  v23 = v22;
  LOBYTE(v7) = v24;
  v38 = v25;
  sub_100020D44(v16, v18, v20 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v7 & 1;
  v71 = v7 & 1;
  v27 = v39;
  v28 = v41;
  sub_1000138BC(v39, v41, &qword_1001D61D0);
  v29 = v28;
  v30 = v40;
  sub_1000138BC(v29, v40, &qword_1001D61D0);
  v31 = (v30 + *(sub_1000033A8(&qword_1001D61E0) + 48));
  *&v49 = v21;
  *(&v49 + 1) = v23;
  LOBYTE(v50) = v26;
  *(&v50 + 1) = *v70;
  DWORD1(v50) = *&v70[3];
  v32 = v38;
  *(&v50 + 1) = v38;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v53 = v44;
  v54 = v45;
  v51 = v42;
  v52 = v43;
  v33 = v47;
  v31[6] = v46;
  v31[7] = v33;
  v31[8] = v57;
  v34 = v52;
  v31[2] = v51;
  v31[3] = v34;
  v35 = v54;
  v31[4] = v53;
  v31[5] = v35;
  v36 = v50;
  *v31 = v49;
  v31[1] = v36;
  sub_1000138BC(&v49, &v58, &qword_1001D61E8);
  sub_10001370C(v27, &qword_1001D61D0);
  v58 = v21;
  v59 = v23;
  v60 = v26;
  *v61 = *v70;
  *&v61[3] = *&v70[3];
  v62 = v32;
  v67 = v46;
  v68 = v47;
  v69 = v48;
  v63 = v42;
  v64 = v43;
  v65 = v44;
  v66 = v45;
  sub_10001370C(&v58, &qword_1001D61E8);
  return sub_10001370C(v41, &qword_1001D61D0);
}

uint64_t sub_100053AD8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for SymbolEffectOptions();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReplaceSymbolEffect();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D61F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000033A8(&qword_1001D61F8);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.multicolor.getter();
  v19 = type metadata accessor for SymbolRenderingMode();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  v20 = Image.symbolRenderingMode(_:)();

  sub_10001370C(v12, &qword_1001D61F0);
  v21 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v40 = v20;
  v41 = KeyPath;
  v42 = v21;
  (*(v7 + 104))(v9, enum case for DynamicTypeSize.large(_:), v6);
  sub_1000033A8(&qword_1001D46B8);
  sub_100022DB8();
  View.dynamicTypeSize(_:)();
  (*(v7 + 8))(v9, v6);

  v23 = v33;
  ReplaceSymbolEffect.init()();
  v24 = v34;
  static SymbolEffectOptions.default.getter();
  v25 = &v18[*(v14 + 44)];
  sub_1000033A8(&qword_1001D6200);
  sub_100054C44(&qword_1001D6208, &type metadata accessor for ReplaceSymbolEffect);
  v26 = v35;
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v37 + 8))(v24, v38);
  (*(v36 + 8))(v23, v26);
  *v25 = swift_getKeyPath();
  v27 = v32;
  sub_1000138BC(v18, v32, &qword_1001D61F8);
  v28 = v39;
  sub_1000138BC(v27, v39, &qword_1001D61F8);
  v29 = v28 + *(sub_1000033A8(&qword_1001D6210) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_10001370C(v18, &qword_1001D61F8);
  return sub_10001370C(v27, &qword_1001D61F8);
}

uint64_t sub_100054038@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1000138BC(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100054238(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000543F0(uint64_t a1)
{
  v2 = type metadata accessor for ContentTransition();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.contentTransition.setter();
}

uint64_t sub_1000544B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100054510()
{
  result = qword_1001D6158;
  if (!qword_1001D6158)
  {
    sub_10001276C(&qword_1001D6108);
    sub_10005459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6158);
  }

  return result;
}

unint64_t sub_10005459C()
{
  result = qword_1001D6160;
  if (!qword_1001D6160)
  {
    sub_10001276C(&qword_1001D6150);
    sub_100054654();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6160);
  }

  return result;
}

unint64_t sub_100054654()
{
  result = qword_1001D6168;
  if (!qword_1001D6168)
  {
    sub_10001276C(&qword_1001D6148);
    sub_1000546E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6168);
  }

  return result;
}

unint64_t sub_1000546E0()
{
  result = qword_1001D6170;
  if (!qword_1001D6170)
  {
    sub_10001276C(&qword_1001D6140);
    sub_10005476C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6170);
  }

  return result;
}

unint64_t sub_10005476C()
{
  result = qword_1001D6178;
  if (!qword_1001D6178)
  {
    sub_10001276C(&qword_1001D6138);
    sub_100054824();
    sub_100013608(&qword_1001D61C8, &qword_1001D4E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6178);
  }

  return result;
}

unint64_t sub_100054824()
{
  result = qword_1001D6180;
  if (!qword_1001D6180)
  {
    sub_10001276C(&qword_1001D6130);
    sub_1000548DC();
    sub_100013608(&qword_1001D61C0, &qword_1001D4E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6180);
  }

  return result;
}

unint64_t sub_1000548DC()
{
  result = qword_1001D6188;
  if (!qword_1001D6188)
  {
    sub_10001276C(&qword_1001D6128);
    sub_100054994();
    sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6188);
  }

  return result;
}

unint64_t sub_100054994()
{
  result = qword_1001D6190;
  if (!qword_1001D6190)
  {
    sub_10001276C(&qword_1001D6120);
    sub_100054A4C();
    sub_100013608(&qword_1001D61B0, &qword_1001D61B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6190);
  }

  return result;
}

unint64_t sub_100054A4C()
{
  result = qword_1001D6198;
  if (!qword_1001D6198)
  {
    sub_10001276C(&qword_1001D6118);
    sub_100013608(&qword_1001D61A0, &qword_1001D61A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6198);
  }

  return result;
}

uint64_t sub_100054B04@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100054B88()
{
  result = qword_1001D6218;
  if (!qword_1001D6218)
  {
    sub_10001276C(&qword_1001D6220);
    sub_100054510();
    sub_100054C44(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6218);
  }

  return result;
}

uint64_t sub_100054C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CGImagePropertyOrientation.init(from:)(void *a1)
{
  v3 = sub_100006AAC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100006B44(a1);
  }

  else
  {
    sub_100006AAC(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100006B44(v5);
    sub_100006B44(a1);
  }

  return v3;
}

uint64_t CGImagePropertyOrientation.encode(to:)(void *a1)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054DDC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100006B44(v2);
}

uint64_t sub_100054DDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100054E2C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  sub_100006AAC(v7, v7[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  sub_100006B44(v7);
  result = sub_100006B44(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_100054EEC(void *a1)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054DDC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100006B44(v2);
}

double sub_100054F80(uint64_t a1, uint64_t a2, double a3)
{
  v75 = type metadata accessor for Corners();
  v77 = *(v75 - 8);
  v6 = __chkstk_darwin(v75);
  v74 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = v50 - v8;
  v72 = type metadata accessor for CVTrackedDetection.Prediction();
  v9 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVDetection();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  v18 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v18 - 8);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DetectionResult();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v64 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = *(a1 + 16);
  if (v26)
  {
    v61 = v50 - v25;
    v50[1] = a2;
    v79 = _swiftEmptyArrayStorage;
    v60 = v26;
    sub_100059548(0, v26, 0);
    v65 = v79;
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v59 = v28;
    v58 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v57 = a1 + v58;
    v69 = (v77 + 8);
    v70 = v12 + 16;
    v29 = (v9 + 8);
    v30 = 0;
    v67 = (v12 + 8);
    v68 = v29;
    v53 = v12;
    v66 = (v12 + 32);
    v56 = (v27 - 8);
    v55 = (v27 + 16);
    v31 = *(v27 + 56);
    v52 = v20;
    v51 = v21;
    v50[2] = v27;
    v54 = v31;
    do
    {
      v63 = v30;
      v59(v64, v57 + v31 * v30, v21);
      DetectionResult.request.getter();
      v32 = DetectionResult.results.getter();
      v33 = *(v32 + 16);
      if (v33)
      {
        v78 = _swiftEmptyArrayStorage;
        sub_10005958C(0, v33, 0);
        v34 = v78;
        v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v62 = v32;
        v77 = v35;
        v36 = v32 + v35;
        v37 = *(v53 + 72);
        v76 = *(v53 + 16);
        do
        {
          v76(v15, v36, v11);
          v38 = v17;
          v39 = v73;
          CVDetection.corners.getter();
          Corners.center.getter();
          (*v69)(v39, v75);
          CVDetection.corners.getter();
          v40 = v71;
          CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
          CVDetection.modifyWithPrediction(_:)();
          (*v68)(v40, v72);
          (*v67)(v15, v11);
          v78 = v34;
          v42 = v34[2];
          v41 = v34[3];
          if (v42 >= v41 >> 1)
          {
            sub_10005958C(v41 > 1, v42 + 1, 1);
            v34 = v78;
          }

          v34[2] = v42 + 1;
          (*v66)(v34 + v77 + v42 * v37, v38, v11);
          v36 += v37;
          --v33;
          v17 = v38;
        }

        while (v33);

        v21 = v51;
      }

      else
      {
      }

      v43 = v61;
      DetectionResult.init(request:results:)();
      (*v56)(v64, v21);
      v44 = v65;
      v79 = v65;
      v46 = v65[2];
      v45 = v65[3];
      v47 = v63;
      if (v46 >= v45 >> 1)
      {
        sub_100059548(v45 > 1, v46 + 1, 1);
        v43 = v61;
        v44 = v79;
      }

      v30 = v47 + 1;
      v44[2] = v46 + 1;
      v65 = v44;
      v48 = v44 + v58 + v46 * v54;
      v31 = v54;
      (*v55)(v48, v43, v21);
    }

    while (v30 != v60);
  }

  return a3;
}

uint64_t sub_100055670(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000033A8(&qword_1001D6398);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100006AAC(a1, a1[3]);
  sub_10005AA70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  HIBYTE(v12) = 0;
  sub_1000033A8(&qword_1001D6348);
  sub_10005ABE0(&qword_1001D63A0, &qword_1001D63A8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v13) = a3;
    BYTE4(v13) = BYTE4(a3) & 1;
    HIBYTE(v12) = 2;
    type metadata accessor for CGImagePropertyOrientation(0);
    sub_10005AAC4(&unk_1001D63B0, type metadata accessor for CGImagePropertyOrientation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100055904()
{
  v1 = 0x6D617473656D6974;
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
    return 0xD000000000000010;
  }
}

uint64_t sub_10005596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100055994(uint64_t a1)
{
  v2 = sub_10005AA70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000559D0(uint64_t a1)
{
  v2 = sub_10005AA70();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100055A0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10005A248(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 20) = BYTE4(v5) & 1;
  }
}

uint64_t sub_100055A84(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D6618);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006AAC(a1, a1[3]);
  sub_10005C418();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6620, &type metadata accessor for CVDetection);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LegacyDetectionRequestConvertible(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100055C3C()
{
  Hasher.init(_seed:)();
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for LegacyDetectionRequestConvertible(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  return Hasher._finalize()();
}

uint64_t sub_100055CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for CVDetection();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000033A8(&qword_1001D6608);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006AAC(a1, a1[3]);
  sub_10005C418();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_10005AAC4(&qword_1001D65E8, &type metadata accessor for CVDetection);
  v14 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_10005C46C(v18, v17, type metadata accessor for LegacyDetectionRequestConvertible);
  sub_100006B44(a1);
  return sub_10005C3B8(v18, type metadata accessor for LegacyDetectionRequestConvertible);
}

uint64_t sub_100056038()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x6F69746365746564;
  }
}

uint64_t sub_100056084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_100056170(uint64_t a1)
{
  v2 = sub_10005C418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000561AC(uint64_t a1)
{
  v2 = sub_10005C418();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100056240(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
}

Swift::Int sub_1000562DC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

uint64_t sub_1000563BC(void *a1)
{
  v3 = v1;
  v5 = sub_1000033A8(&qword_1001D6630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006AAC(a1, a1[3]);
  sub_10005C24C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for LegacyDetectionRequestConvertible(0);
  sub_10005AAC4(&qword_1001D6638, type metadata accessor for LegacyDetectionRequestConvertible);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for LegacyDetectionResultConvertible(0) + 20));
    v10[15] = 1;
    sub_1000033A8(&qword_1001D65D8);
    sub_10005C4D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000565A0()
{
  v1 = type metadata accessor for CVDetection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(v0 + *(type metadata accessor for LegacyDetectionRequestConvertible(0) + 20));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v0 + *(type metadata accessor for LegacyDetectionResultConvertible(0) + 20));
  Hasher._combine(_:)(*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v2 + 16;
    v9 = *(v2 + 16);
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    do
    {
      v9(v4, v10, v1);
      dispatch thunk of Hashable.hash(into:)();
      (*v12)(v4, v1);
      v10 += v11;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_10005676C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D65C0);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for LegacyDetectionResultConvertible(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006AAC(a1, a1[3]);
  sub_10005C24C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_10005AAC4(&qword_1001D65D0, type metadata accessor for LegacyDetectionRequestConvertible);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10005C2A0(v20, v12);
  sub_1000033A8(&qword_1001D65D8);
  v22 = 1;
  sub_10005C304();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_10005C46C(v12, v17, type metadata accessor for LegacyDetectionResultConvertible);
  sub_100006B44(a1);
  return sub_10005C3B8(v12, type metadata accessor for LegacyDetectionResultConvertible);
}

uint64_t sub_100056A88()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_100056ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
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

uint64_t sub_100056B98(uint64_t a1)
{
  v2 = sub_10005C24C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056BD4(uint64_t a1)
{
  v2 = sub_10005C24C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100056C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static CVDetection.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  if (*(a1 + *(v6 + 20)) != *(a2 + *(v6 + 20)))
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_100059230(v8, v9);
}

Swift::Int sub_100056C94()
{
  Hasher.init(_seed:)();
  sub_1000565A0();
  return Hasher._finalize()();
}

Swift::Int sub_100056CD8()
{
  Hasher.init(_seed:)();
  sub_1000565A0();
  return Hasher._finalize()();
}

unint64_t sub_100056D44(uint64_t a1)
{
  v2 = 0xD000000000000017;
  v44 = type metadata accessor for CVDetection.DetectionType();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DetectionRequest();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DetectionResult();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0xD000000000000017;
  v48 = 0x8000000100175200;
  v9 = *(a1 + 16);
  if (v9)
  {
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v46._countAndFlagsBits = 0x2020202020200ALL;
    v46._object = 0xE700000000000000;
    v45 = v9;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD00000000000001ELL;
    v11._object = 0x800000010016C540;
    String.append(_:)(v11);
    v45 = &_swiftEmptyArrayStorage;
    sub_1000595D0(0, v9, 0);
    v12 = v45;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v36 = *(v13 + 56);
    v37 = v14;
    v34 = (v3 + 8);
    v35 = (v5 + 8);
    v33 = (v13 - 8);
    v38 = v13;
    do
    {
      v17 = v39;
      v16 = v40;
      v37(v39, v15, v40);
      v18 = v41;
      DetectionResult.request.getter();
      v19 = v43;
      DetectionRequest.detectionType.getter();
      (*v35)(v18, v42);
      sub_10005AAC4(&qword_1001D62F8, &type metadata accessor for CVDetection.DetectionType);
      v20 = v44;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*v34)(v19, v20);
      (*v33)(v17, v16);
      v45 = v12;
      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000595D0((v24 > 1), v25 + 1, 1);
        v12 = v45;
      }

      v12[2] = v25 + 1;
      v26 = &v12[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v15 += v36;
      --v9;
    }

    while (v9);
    v45 = v12;
    sub_1000033A8(&unk_1001D6300);
    sub_100013608(&unk_1001D8160, &unk_1001D6300);
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    String.append(_:)(v46);

    return v47;
  }

  return v2;
}

void sub_100057490(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000033A8(&qword_1001D6450);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for Angle();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Corners();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  v15 = AVMetadataMachineReadableCodeObject.corners.getter();
  [a1 time];
  Seconds = CMTimeGetSeconds(&time);
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 4)
  {
    *&v34[1] = Seconds;
    v35 = v12;

    Corners.init(topLeft:topRight:bottomLeft:bottomRight:)();
    v18 = [a1 basicDescriptor];
    if (v18)
    {
      v19 = v18;
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0x61746144776152;
      v39 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v20 + 16) && (v21 = sub_100095C98(&time), (v22 & 1) != 0))
      {
        sub_10005BB68(*(v20 + 56) + 32 * v21, v41);
        sub_10005BC0C(&time);
        if (swift_dynamicCast())
        {
          v23 = v5;
          v24 = v14;
          v25 = v38;
          v26 = v39;
          v36 = Data.base64EncodedString(options:)(0);

          sub_10005BC60(v25, v26);
LABEL_13:
          v30 = [objc_opt_self() detectedCodeWithMachineReadableObject:a1];
          UUID.init()();
          (*(v9 + 16))(v35, v24, v8);
          static Angle.degrees(_:)();
          *v23 = v30;
          v31 = enum case for StreamingBarcodeDetectorResult.BCSDetectedCodeContainer.detectedCodeObject(_:);
          v32 = type metadata accessor for StreamingBarcodeDetectorResult.BCSDetectedCodeContainer();
          v33 = *(v32 - 8);
          (*(v33 + 104))(v23, v31, v32);
          (*(v33 + 56))(v23, 0, 1, v32);
          StreamingBarcodeDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:detectedCodeContainer:)();
          (*(v9 + 8))(v24, v8);
          return;
        }
      }

      else
      {

        sub_10005BC0C(&time);
      }
    }

    v23 = v5;
    v24 = v14;
    v27 = [a1 stringValue];
    if (v27)
    {
      v28 = v27;
      v36._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36._object = v29;
    }

    else
    {
      v36._object = 0xE500000000000000;
      v36._countAndFlagsBits = 0x7974706D65;
    }

    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

id sub_1000579EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreamingMetadataProcessor(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100057B50()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_100057C8C(319, &qword_1001D6280, &type metadata accessor for AsyncStream);
    if (v1 <= 0x3F)
    {
      sub_100057C8C(319, &qword_1001D6290, &type metadata accessor for AsyncStream.Continuation);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100057C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10001276C(&qword_1001D6288);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_100057CF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_1000595F0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10005BBC4(0, &qword_1001D7FF0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000595F0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10005BB58(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10005BBC4(0, &qword_1001D7FF0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000595F0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10005BB58(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100057EF4(uint64_t *a1, uint64_t a2, uint64_t a3, size_t *a4, size_t *a5)
{
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_10005BB68(v5 + 32, &time);
  sub_10005BBC4(0, &qword_1001D6430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (*(v5 + 16) < 2uLL)
  {
    goto LABEL_13;
  }

  v9 = v14;
  sub_10005BB68(v5 + 64, &time);
  sub_10005BBC4(0, &qword_1001D6438);
  if (swift_dynamicCast())
  {
    if (*(v5 + 16) >= 3uLL)
    {
      v10 = v14;
      sub_10005BB68(v5 + 96, &time);
      sub_1000033A8(&unk_1001D6440);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = v14;
      [v9 CMTimeValue];
      Seconds = CMTimeGetSeconds(&time);
      sub_1000AEB98(&time.value, Seconds);
      if (*(*a2 + 16) == 1)
      {
        sub_100058780();
        sub_10005893C(v11, a4, a5);

        goto LABEL_9;
      }

LABEL_15:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:
}

uint64_t sub_10005812C(uint64_t result, uint64_t a2, uint64_t a3, size_t *a4, size_t *a5)
{
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 32); ; ++i)
    {
      v12 = *i;

      sub_100057EF4(&v12, a2, a3, a4, a5);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000581E4(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v64 = a4;
  v71 = a3;
  v78 = type metadata accessor for CVDetection.DetectionType();
  v6 = __chkstk_darwin(v78);
  v68 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v77 = &v62[-v9];
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v74 = AVMetadataObjectTypeQRCode;
  v65 = AVMetadataObjectTypeAppClipCode;
  v63 = enum case for CVDetection.DetectionType.appClip(_:);
  v66 = v8 + 16;
  v67 = v8;
  v72 = (v8 + 8);
  v73 = (v8 + 104);
  v70 = enum case for CVDetection.DetectionType.qrCode(_:);
  v75 = a1;

  v15 = 0;
  v69 = a1 + 56;
  while (v13)
  {
LABEL_11:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (*(v75 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v21 == v20;
    v76 = v20;
    if (v22)
    {

LABEL_23:
      v27 = v14;
      v28 = v77;
      (*v73)(v77, v70, v78);
      v29 = *v71;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *a2;
      v31 = v79;
      v32 = a2;
      *a2 = 0x8000000000000000;
      v34 = sub_100095CDC(v28);
      v35 = v31[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_48;
      }

      v38 = v33;
      if (v31[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v79;
          if (v33)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1000C1CC4();
          v41 = v79;
          if (v38)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1000BDA34(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_100095CDC(v77);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_52;
        }

        v34 = v39;
        v41 = v79;
        if (v38)
        {
LABEL_4:
          *(v41[7] + 8 * v34) = v29;

          goto LABEL_5;
        }
      }

      v41[(v34 >> 6) + 8] |= 1 << v34;
      (*(v67 + 16))(v41[6] + *(v67 + 72) * v34, v77, v78);
      *(v41[7] + 8 * v34) = v29;
      v42 = v41[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_49;
      }

      v41[2] = v44;
LABEL_5:
      (*v72)(v77, v78);
      a2 = v32;
      *v32 = v41;

      v14 = v27;
      v10 = v69;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_23;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v24 == v20)
      {

LABEL_33:
        v45 = v68;
        (*v73)(v68, v63, v78);
        v46 = *v64;

        v47 = swift_isUniquelyReferenced_nonNull_native();
        v79 = *a2;
        v48 = v79;
        *a2 = 0x8000000000000000;
        v49 = sub_100095CDC(v45);
        v51 = v48[2];
        v52 = (v50 & 1) == 0;
        v43 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v43)
        {
          goto LABEL_50;
        }

        v54 = v50;
        if (v48[3] < v53)
        {
          sub_1000BDA34(v53, v47);
          v49 = sub_100095CDC(v68);
          if ((v54 & 1) != (v55 & 1))
          {
            goto LABEL_52;
          }

LABEL_38:
          v56 = v79;
          if (v54)
          {
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v47)
        {
          goto LABEL_38;
        }

        v57 = v49;
        sub_1000C1CC4();
        v49 = v57;
        v56 = v79;
        if (v54)
        {
LABEL_39:
          *(v56[7] + 8 * v49) = v46;

          goto LABEL_45;
        }

LABEL_43:
        v56[(v49 >> 6) + 8] |= 1 << v49;
        v58 = v49;
        (*(v67 + 16))(v56[6] + *(v67 + 72) * v49, v68, v78);
        *(v56[7] + 8 * v58) = v46;
        v59 = v56[2];
        v43 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v43)
        {
          goto LABEL_51;
        }

        v56[2] = v60;
LABEL_45:
        (*v72)(v68, v78);
        *a2 = v56;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_33;
        }
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100058780()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSet.makeIterator()();
  sub_10005AAC4(&qword_1001D6458, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v10)
  {
    sub_10005BB58(&v9, v8);
    sub_10005BB68(v8, v6);
    swift_dynamicCast();
    sub_1000AEC8C(&v7, v5[0], v5[1]);

    sub_100006B44(v8);
    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_10005893C(unint64_t a1, size_t *a2, size_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100058A44(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_100058A44(uint64_t a1, size_t *a2, size_t *a3)
{
  v56 = a3;
  v4 = type metadata accessor for CVDetection();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v56 - v9);
  v11 = type metadata accessor for StreamingBarcodeDetectorResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    sub_100057490(v15, v14);
    v17 = [v16 descriptor];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();

      if (v19)
      {
        v20 = swift_allocBox();
        (*(v12 + 16))(v21, v14, v11);
        *v10 = v20;
        v22 = v57;
        (*(v58 + 104))(v10, enum case for CVDetection.qrCode(_:), v57);
        v23 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_100094EE8(0, v23[2] + 1, 1, v23);
          *a2 = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          *a2 = sub_100094EE8(v25 > 1, v26 + 1, 1, v23);
        }

        (*(v12 + 8))(v14, v11);
        v27 = *a2;
        v27[2] = v26 + 1;
        return (*(v58 + 32))(v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v26, v10, v22);
      }
    }

    v29 = [v16 basicDescriptor];
    if (v29)
    {
      v30 = v29;
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = 0x5465646F63726142;
      v60 = 0xEB00000000657079;
      AnyHashable.init<A>(_:)();
      if (*(v31 + 16))
      {
        v32 = sub_100095C98(&v61);
        if (v33)
        {
          sub_10005BB68(*(v31 + 56) + 32 * v32, &v62);
          sub_10005BC0C(&v61);

          if (*(&v63 + 1))
          {
            type metadata accessor for ObjectType(0);
            if (swift_dynamicCast())
            {
              v34 = v61;
              v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v37 = v36;
              if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
              {

                v40 = v56;
                v39 = v57;
LABEL_28:
                v49 = swift_allocBox();
                (*(v12 + 16))(v50, v14, v11);
                *v8 = v49;
                (*(v58 + 104))(v8, enum case for CVDetection.appClip(_:), v39);
                v51 = *v40;
                v52 = swift_isUniquelyReferenced_nonNull_native();
                *v40 = v51;
                if ((v52 & 1) == 0)
                {
                  v51 = sub_100094EE8(0, v51[2] + 1, 1, v51);
                  *v40 = v51;
                }

                v54 = v51[2];
                v53 = v51[3];
                if (v54 >= v53 >> 1)
                {
                  *v40 = sub_100094EE8(v53 > 1, v54 + 1, 1, v51);
                }

                (*(v12 + 8))(v14, v11);
                v55 = *v40;
                v55[2] = v54 + 1;
                return (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v54, v8, v39);
              }

              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v40 = v56;
              v39 = v57;
              if (v48)
              {
                goto LABEL_28;
              }
            }

            return (*(v12 + 8))(v14, v11);
          }

LABEL_24:
          sub_10001370C(&v62, &unk_1001D8060);
          return (*(v12 + 8))(v14, v11);
        }
      }

      sub_10005BC0C(&v61);
    }

    v62 = 0u;
    v63 = 0u;
    goto LABEL_24;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v41 = result;
    [result qrSceneConfidence];
    if (v42 < 0.06)
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000AEC8C(&v61, v43, v44);
    }

    result = [v41 appCodeSceneConfidence];
    if (v45 < 0.108)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000AEC8C(&v61, v46, v47);
    }
  }

  return result;
}

__n128 sub_100059180(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100059194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1000591DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100059230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10005AAC4(&qword_1001D6628, &type metadata accessor for CVDetection);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059444(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000594A0(char *a1, int64_t a2, char a3)
{
  result = sub_1000597A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000594C0(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6318, &unk_1001752D0, &type metadata accessor for CVTrackSnapshot);
  *v3 = result;
  return result;
}

size_t sub_100059504(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63C8, &unk_100175330, &type metadata accessor for CVBundle);
  *v3 = result;
  return result;
}

size_t sub_100059548(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6390, &unk_100175310, &type metadata accessor for DetectionResult);
  *v3 = result;
  return result;
}

size_t sub_10005958C(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63D0, &unk_100175338, &type metadata accessor for CVDetection);
  *v3 = result;
  return result;
}

char *sub_1000595D0(char *a1, int64_t a2, char a3)
{
  result = sub_10005990C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000595F0(char *a1, int64_t a2, char a3)
{
  result = sub_100059A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100059610(char *a1, int64_t a2, char a3)
{
  result = sub_100059B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100059630(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63E0, &unk_100175348, &type metadata accessor for Angle);
  *v3 = result;
  return result;
}

char *sub_100059674(char *a1, int64_t a2, char a3)
{
  result = sub_100059C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100059694(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D65F0, &unk_1001756A0, type metadata accessor for ActionBarItem);
  *v3 = result;
  return result;
}

size_t sub_1000596D8(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63D8, &unk_100175340, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10005971C(char *a1, int64_t a2, char a3)
{
  result = sub_100059D30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10005973C(size_t a1, int64_t a2, char a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6320, &unk_100177590, &type metadata accessor for DetectionRequest);
  *v3 = result;
  return result;
}

char *sub_100059780(char *a1, int64_t a2, char a3)
{
  result = sub_100059E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000597A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D65F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10005990C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6310);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100059A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D7FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100059B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&unk_1001D63F0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100059C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D63E8);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100059D30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6328);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100059E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6330);
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

size_t sub_100059F38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000033A8(a5);
  v14 = *(a7(0) - 8);
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
  v19 = *(a7(0) - 8);
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

uint64_t sub_10005A114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010016C5F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016C610 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}