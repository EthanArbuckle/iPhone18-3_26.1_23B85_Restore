id sub_100001A40()
{
  v0 = [objc_opt_self() sharedConnection];
  v1 = objc_allocWithZone(CNManagedConfiguration);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithBundleIdentifier:v2 managedProfileConnection:v0];

  v4 = [objc_allocWithZone(CNContactStoreConfiguration) init];
  result = [objc_opt_self() currentEnvironment];
  if (result)
  {
    v6 = result;
    [v4 setEnvironment:result];

    [v4 setManagedConfiguration:v3];
    v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v4];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100001B74(void *a1)
{
  v2 = objc_allocWithZone(CNContactFetchRequest);
  sub_1000054DC(&qword_10002DB90, &unk_10001A120);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithKeysToFetch:isa];

  [v4 setUnifyResults:1];
  v19 = 0;
  v5 = [a1 contactCountForFetchRequest:v4 error:&v19];
  if (v5)
  {
    v6 = v5;
    v7 = v19;
    v8 = [v6 integerValue];
  }

  else
  {
    v9 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10002DA00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005590(v10, qword_10002DA08);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_100017CA8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetched contacts: failed with %s", v13, 0xCu);
      sub_100005A98(v14);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

uint64_t sub_100001E14(uint64_t a1)
{
  *(v1 + 120) = a1;

  return _swift_task_switch(sub_100001EA4, 0, 0);
}

uint64_t sub_100001EA4()
{
  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v1 = swift_allocObject();
  v0[16] = v1;
  *(v1 + 16) = xmmword_10001A070;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v0[17] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100001FD8, v3, v2);
}

uint64_t sub_100001FD8()
{
  v2 = v0[17];
  v1 = v0[18];

  v0[19] = [v2 descriptorForRequiredKeysWithThreeDTouchEnabled:1];

  return _swift_task_switch(sub_10000208C, 0, 0);
}

uint64_t sub_10000208C()
{
  v45 = v0[15];
  *(v0[16] + 40) = v0[19];
  v1 = objc_allocWithZone(CNContactFetchRequest);
  sub_1000054DC(&qword_10002DB90, &unk_10001A120);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithKeysToFetch:isa];

  [v3 setUnifyResults:1];
  v0[13] = &_swiftEmptyArrayStorage;
  v4 = v0 + 13;
  v0[11] = 0;
  v5 = (v0 + 11);
  v0[12] = 0;
  v0[14] = &_swiftEmptyArrayStorage;
  v6 = v0 + 14;
  v7 = swift_allocObject();
  v7[2] = v0 + 13;
  v7[3] = v0 + 11;
  v7[4] = v0 + 12;
  v7[5] = v0 + 14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100005534;
  *(v8 + 24) = v7;
  v0[6] = sub_100005550;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100002874;
  v0[5] = &unk_1000291E0;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  v0[2] = 0;
  v11 = v45;
  v46 = v3;
  v12 = [v11 enumerateContactsWithFetchRequest:v3 error:v0 + 2 usingBlock:v9];
  _Block_release(v9);
  v13 = v0[2];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v12)
  {
    if (*v5 > 62)
    {
      goto LABEL_33;
    }

    v15 = *v6;
    if (*v6 >> 62)
    {
      if (v15 < 0)
      {
        v42 = *v6;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_33;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_33;
    }

    v16 = 63 - *v5;
    if (__OFSUB__(63, *v5))
    {
      __break(1u);
    }

    else if (!(*v6 >> 62))
    {
      v17 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }

    v44 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v44 - 1;
    if (!__OFSUB__(v44, 1))
    {
LABEL_9:
      if (v18 >= v16)
      {
        v5 = v16;
      }

      else
      {
        v5 = v18;
      }

      if (v5 >= 1)
      {
        v16 = *v6;
        v18 = *v6 & 0xFFFFFFFFFFFFFF8;
        isEscapingClosureAtFileLocation = *v6 >> 62;
        if (!isEscapingClosureAtFileLocation)
        {
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v5)
          {
            goto LABEL_15;
          }

          goto LABEL_59;
        }

LABEL_54:
        if (v16 < 0)
        {
          v8 = v16;
        }

        else
        {
          v8 = v18;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (_CocoaArrayWrapper.endIndex.getter() > v5)
        {
LABEL_15:

          if ((v16 & 0xC000000000000001) != 0)
          {
            sub_1000055C8();
            v19 = 0;
            do
            {
              v20 = v19 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v19);
              v19 = v20;
            }

            while (v5 + 1 != v20);
          }

          if (isEscapingClosureAtFileLocation)
          {

            v16 = _CocoaArrayWrapper.subscript.getter();
            v8 = v26;
            v13 = v27;
            if ((v27 & 1) == 0)
            {
LABEL_24:
              sub_100005708(v16, v21, v8, v13);
              v29 = v28;
              goto LABEL_31;
            }
          }

          else
          {
            v8 = 0;
            v16 &= 0xFFFFFFFFFFFFFF8uLL;
            v21 = v16 + 32;
            v13 = (2 * (v5 + 1)) | 1;
          }

          v5 = v21;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v30 = swift_dynamicCastClass();
          if (!v30)
          {
            swift_unknownObjectRelease();
            v30 = &_swiftEmptyArrayStorage;
          }

          v31 = v30[2];

          if (!__OFSUB__(v13 >> 1, v8))
          {
            if (v31 == (v13 >> 1) - v8)
            {
              v29 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v29)
              {
LABEL_32:
                sub_1000028D0(v29);
                goto LABEL_33;
              }

              v29 = &_swiftEmptyArrayStorage;
LABEL_31:
              swift_unknownObjectRelease();
              goto LABEL_32;
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          swift_unknownObjectRelease();
          v21 = v5;
          goto LABEL_24;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

LABEL_33:
      if (qword_10002DA00 == -1)
      {
LABEL_34:
        v32 = type metadata accessor for Logger();
        sub_100005590(v32, qword_10002DA08);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          swift_beginAccess();
          v36 = *v4;
          if (*v4 >> 62)
          {
            if (v36 < 0)
            {
              v43 = *v4;
            }

            v37 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v35 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v33, v34, "Fetched %ld contacts", v35, 0xCu);
        }

        swift_beginAccess();
        v38 = v0[13];
        v39 = v0[14];

        v40 = v0[13];

        v41 = v0[1];

        return v41(v38);
      }

LABEL_42:
      swift_once();
      goto LABEL_34;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v22 = v0[14];

  v23 = v0[13];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100002714(void *a1, _BYTE *a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  if (![a1 imageDataAvailable])
  {
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_16;
    }

    ++*a5;
    v14 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = *a4 + 1;
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_8:
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      *a4 = v13;
      if (v13 == 63)
      {
        *a2 = 1;
      }
    }

    if (!__OFADD__(*a4, *a5))
    {
      break;
    }

    __break(1u);
LABEL_14:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  if (*a4 + *a5 >= 125)
  {
    *a2 = 1;
  }

  return result;
}

void sub_100002874(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_1000028D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100005614(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100005844(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Int sub_1000029D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002A48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100002A8C()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002D9E8);
  sub_100005590(v0, qword_10002D9E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002B0C()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002DA08);
  v1 = sub_100005590(v0, qword_10002DA08);
  if (qword_10002D9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005590(v0, qword_10002D9E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100002BD4()
{

  return swift_deallocClassInstance();
}

id sub_100002C30(uint64_t a1)
{
  v3 = *v1;
  sub_1000054DC(&qword_10002DD28, &unk_10001A670);
  UIViewRepresentableContext.coordinator.getter();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_100005CBC(a1, v3);
  return v5;
}

void sub_100002CE0(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:v3];

  *(v2 + 16) = v4;
  *a1 = v2;
}

uint64_t sub_100002DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006CA4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100002E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006CA4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100002E9C()
{
  sub_100006CA4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_100002EC4@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_1000030F0(a1, a2, &v33, a4);
  v28 = v41;
  v29 = v42;
  v30[0] = v43[0];
  *(v30 + 9) = *(v43 + 9);
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v31[8] = v41;
  v31[9] = v42;
  v32[0] = v43[0];
  *(v32 + 9) = *(v43 + 9);
  v31[4] = v37;
  v31[5] = v38;
  v31[6] = v39;
  v31[7] = v40;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  sub_1000060D8(&v20, v18, &qword_10002DCE8, &qword_10001A568);
  sub_100006140(v31, &qword_10002DCE8, &qword_10001A568);
  v41 = v28;
  v42 = v29;
  v43[0] = v30[0];
  *(v43 + 9) = *(v30 + 9);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v19[7] = v18[0];
  *&v19[23] = v18[1];
  *&v19[39] = v18[2];
  v11 = v42;
  *(a3 + 144) = v41;
  *(a3 + 160) = v11;
  *(a3 + 176) = v43[0];
  *(a3 + 185) = *(v43 + 9);
  v12 = v38;
  *(a3 + 80) = v37;
  *(a3 + 96) = v12;
  v13 = v40;
  *(a3 + 112) = v39;
  *(a3 + 128) = v13;
  v14 = v34;
  *(a3 + 16) = v33;
  *(a3 + 32) = v14;
  v15 = v36;
  *(a3 + 48) = v35;
  *(a3 + 64) = v15;
  v16 = *&v19[16];
  *(a3 + 201) = *v19;
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 217) = v16;
  result = *&v19[32];
  *(a3 + 233) = *&v19[32];
  *(a3 + 248) = *&v19[47];
  return result;
}

uint64_t sub_1000030F0@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v6 = 0.0;
    v31 = 1;
  }

  else
  {
    v8 = a1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v36 = v73;
    v37 = v71;
    v34 = v76;
    v35 = v75;
    v6 = a4 * 0.1;
    LOBYTE(v59[0]) = v72;
    LOBYTE(v52) = v74;
    v31 = a1;
    v32 = v72;
    v33 = v74;
  }

  v9 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = v77;
  v11 = v78;
  v12 = v79;
  v13 = v80;
  v15 = v81;
  v14 = v82;
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v38[0]) = 0;
  *&v45 = v31;
  *(&v45 + 1) = v37;
  *&v46 = v32;
  *(&v46 + 1) = v36;
  *&v47 = v33;
  *(&v47 + 1) = v35;
  *&v48 = v34;
  *(&v48 + 1) = v6;
  v49 = 0;
  v50 = 0;
  v51 = v6;
  v39 = v45;
  v40 = v46;
  *v44 = v6;
  v42 = v48;
  v43 = 0u;
  v41 = v47;
  *&v52 = a1;
  *(&v52 + 1) = v77;
  LOBYTE(v53) = v78;
  *(&v53 + 1) = v79;
  LOBYTE(v54) = v80;
  *(&v54 + 1) = v81;
  *&v55 = v82;
  BYTE8(v55) = v16;
  *&v56 = v17;
  *(&v56 + 1) = v18;
  *&v57 = v19;
  *(&v57 + 1) = v20;
  v58 = 0;
  *&v44[40] = v54;
  *&v44[24] = v53;
  *&v44[8] = v52;
  v44[104] = 0;
  *&v44[88] = v57;
  *&v44[72] = v56;
  *&v44[56] = v55;
  v21 = v45;
  v22 = v46;
  v23 = v48;
  a3[2] = v47;
  a3[3] = v23;
  *a3 = v21;
  a3[1] = v22;
  v24 = v43;
  v25 = *v44;
  v26 = *&v44[32];
  a3[6] = *&v44[16];
  a3[7] = v26;
  a3[4] = v24;
  a3[5] = v25;
  v27 = *&v44[48];
  v28 = *&v44[64];
  v29 = *&v44[80];
  *(a3 + 169) = *&v44[89];
  a3[9] = v28;
  a3[10] = v29;
  a3[8] = v27;
  v59[0] = a1;
  v59[1] = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  v63 = v15;
  v64 = v14;
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = 0;
  sub_1000060D8(&v45, v38, &qword_10002DCF0, &qword_10001A570);
  sub_1000060D8(&v52, v38, &qword_10002DCF8, &qword_10001A578);
  sub_100006140(v59, &qword_10002DCF8, &qword_10001A578);
  v38[0] = v31;
  v38[1] = v37;
  v38[2] = v32;
  v38[3] = v36;
  v38[4] = v33;
  v38[5] = v35;
  v38[6] = v34;
  *&v38[7] = v6;
  v38[8] = 0;
  v38[9] = 0;
  *&v38[10] = v6;
  return sub_100006140(v38, &qword_10002DCF0, &qword_10001A570);
}

char *sub_100003418(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_100003574@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PinnedScrollableViews();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridItem.Size();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for GridItem();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
  {
    v20 = *(v1 + 48);
    v19 = *(v1 + 56);
    if ((*(v1 + 64) & 1) == 0 || !__OFSUB__(v17 * v18, 1))
    {
      v21 = [objc_opt_self() currentDevice];
      v24[2] = a1;
      v22 = v21;
      [v21 userInterfaceIdiom];
      v24[1] = v6;

      *v11 = v20;
      v11[1] = 0x7FF0000000000000;
      (*(v8 + 104))(v11, enum case for GridItem.Size.adaptive(_:), v7);
      GridItem.init(_:spacing:alignment:)();
      v23 = sub_100003418(v16, v18);
      __chkstk_darwin(v23);
      static HorizontalAlignment.center.getter();
      v25 = 0;
      sub_10000662C(&qword_10002DC78, &type metadata accessor for PinnedScrollableViews);
      dispatch thunk of OptionSet.init(rawValue:)();
      sub_1000054DC(&qword_10002DC80, &qword_10001A3F8);
      sub_1000064F0();
      return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000038A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000054DC(&qword_10002DC98, &qword_10001A400);
  v89 = *(v6 - 8);
  v7 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = &v73 - v8;
  v10 = (*(*(sub_1000054DC(&qword_10002DC30, &qword_10001A220) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v12 = &v73 - v11;
  v13 = sub_1000054DC(&qword_10002DCA0, &unk_10001A408);
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  v15 = (__chkstk_darwin)();
  v90 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v73 - v17;
  v18 = *a1;
  v19 = *a1 >> 62;
  if (v19)
  {
    if (v18 < 0)
    {
      v71 = *a1;
    }

    else
    {
      v71 = *a1 & 0xFFFFFFFFFFFFFF8;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        v87 = v12;
        if (result >= a2)
        {
          v21 = a2;
        }

        else
        {
          v21 = result;
        }

        if (result < 0)
        {
          v21 = a2;
        }

        if (a2)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v19)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result < 0)
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            return result;
          }

          result = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v22)
        {
          v88 = v9;
          if ((v18 & 0xC000000000000001) != 0 && v22)
          {
            sub_1000055C8();

            v23 = 0;
            do
            {
              v24 = v23 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v23);
              v23 = v24;
            }

            while (v22 != v24);
          }

          else
          {
          }

          v82 = v13;
          if (v19)
          {
            sub_10000686C(a1);
            v26 = _CocoaArrayWrapper.subscript.getter();
          }

          else
          {
            v25 = 0;
            v26 = v18 & 0xFFFFFFFFFFFFFF8;
            v27 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
            v28 = (2 * v22) | 1;
          }

          *&v92 = v26;
          *(&v92 + 1) = v27;
          *&v93 = v25;
          *(&v93 + 1) = v28;
          swift_getKeyPath();
          v29 = swift_allocObject();
          v30 = *(a1 + 48);
          *(v29 + 48) = *(a1 + 32);
          *(v29 + 64) = v30;
          *(v29 + 80) = *(a1 + 64);
          v31 = *(a1 + 16);
          *(v29 + 16) = *a1;
          *(v29 + 32) = v31;
          sub_1000065F4(a1, &v99);
          sub_1000054DC(&qword_10002DCA8, &qword_10001A430);
          sub_100006BF8(&qword_10002DCB0, &qword_10002DCA8, &qword_10001A430);
          sub_10000662C(&qword_10002DCB8, sub_1000055C8);
          sub_100006674();
          ForEach<>.init(_:id:content:)();
          v32 = *(a1 + 64);
          v84 = a3;
          v83 = v6;
          if ((v32 & 1) == 0)
          {
            v76 = 0;
            v81 = 0;
            v80 = 0;
            KeyPath = 0;
            v53 = 0;
            v87 = 0;
            v78 = 0;
            v86 = 0;
            v77 = 0;
            v51 = 0;
            v52 = 0;
            goto LABEL_30;
          }

          v33 = *(a1 + 40);
          result = v33 - a2;
          if (!__OFSUB__(v33, a2))
          {
            v99 = sub_100006738(result);
            v100 = v34;
            sub_100006064();
            v35 = Text.init<A>(_:)();
            v37 = v36;
            v39 = v38;
            static Color.gray.getter();
            v40 = Text.foregroundColor(_:)();
            v42 = v41;
            v44 = v43;

            sub_1000060B8(v35, v37, v39 & 1);

            v45 = type metadata accessor for Font.Design();
            v46 = v87;
            (*(*(v45 - 8) + 56))(v87, 1, 1, v45);
            static Font.system(size:weight:design:)();
            sub_100006140(v46, &qword_10002DC30, &qword_10001A220);
            v76 = Text.font(_:)();
            v81 = v47;
            v49 = v48;
            v80 = v50;

            sub_1000060B8(v40, v42, v44 & 1);
            v51 = 1;

            KeyPath = swift_getKeyPath();
            v87 = swift_getKeyPath();
            LOBYTE(v99) = v49 & 1;
            LOBYTE(v92) = 0;
            v52 = v49 & 1;
            v78 = swift_getKeyPath();
            v86 = swift_getKeyPath();
            v77 = 0x3FDCCCCCCCCCCCCDLL;
            v53 = 2;
LABEL_30:
            v73 = v52;
            v75 = 0;
            v54 = v85;
            v55 = *(v85 + 16);
            v56 = v90;
            v57 = v82;
            v55(v90, v91, v82);
            v58 = v88;
            v55(v88, v56, v57);
            v59 = v58 + *(sub_1000054DC(&qword_10002DCC8, &qword_10001A438) + 48);
            v60 = v76;
            *&v92 = v76;
            v61 = v81;
            *(&v92 + 1) = v81;
            *&v93 = v52;
            v62 = v80;
            *(&v93 + 1) = v80;
            v63 = KeyPath;
            *&v94 = KeyPath;
            v74 = v53;
            *(&v94 + 1) = v53;
            *&v95 = 0;
            *(&v95 + 1) = v87;
            *&v96 = v51;
            v64 = v78;
            *(&v96 + 1) = v78;
            *&v97 = v51;
            v65 = v77;
            *(&v97 + 1) = v86;
            v98 = v77;
            *(v59 + 96) = v77;
            v66 = v93;
            *v59 = v92;
            *(v59 + 16) = v66;
            v67 = v95;
            *(v59 + 32) = v94;
            *(v59 + 48) = v67;
            v68 = v97;
            *(v59 + 64) = v96;
            *(v59 + 80) = v68;
            sub_1000060D8(&v92, &v99, &qword_10002DCD0, &qword_10001A440);
            v69 = *(v54 + 8);
            v69(v91, v57);
            v99 = v60;
            v100 = v61;
            v101 = v73;
            v102 = v62;
            v103 = v63;
            v104 = v74;
            v105 = v75;
            v106 = v87;
            v107 = v51;
            v108 = v64;
            v109 = v51;
            v110 = v86;
            v111 = v65;
            sub_100006140(&v99, &qword_10002DCD0, &qword_10001A440);
            v69(v90, v57);
            v70 = v84;
            sub_1000066C8(v88, v84);
            return (*(v89 + 56))(v70, 0, 1, v83);
          }

          goto LABEL_41;
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v72 = *(v89 + 56);

  return v72(a3, 1, 1, v6);
}

uint64_t sub_1000041AC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_100003574(a1);
}

uint64_t sub_1000041F0@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v43 = a2;
  v8 = sub_1000054DC(&qword_10002DBB0, &qword_10001A1C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_1000054DC(&qword_10002DBB8, &qword_10001A1C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = sub_1000054DC(&qword_10002DBC0, &qword_10001A1D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v40 - v21;
  if ((a4 & 0x100) != 0)
  {
    v23 = 5;
    if (a1 != 3)
    {
      v41 = a5;
      v24 = 256;
      goto LABEL_10;
    }

LABEL_8:
    v25 = v42;
    sub_100005DC8(v42, v23, &v44);
    v26 = v45;
    v27 = v47;
    *v22 = v43;
    *(v22 + 1) = v25;
    v22[16] = 0;
    *(v22 + 24) = v44;
    *(v22 + 5) = v26;
    *(v22 + 3) = v46;
    v22[64] = v27;
    swift_storeEnumTagMultiPayload();
    sub_100005BB0();
    sub_100005C04();

    return _ConditionalContent<>.init(storage:)();
  }

  if (a4)
  {
    v23 = 6;
  }

  else
  {
    v23 = 7;
  }

  if (a1 == 3)
  {
    goto LABEL_8;
  }

  v41 = a5;
  v24 = 0;
LABEL_10:
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v29 = sub_1000054DC(&qword_10002DBC8, &qword_10001A1D8);
  sub_100004568(a1, v43, v42, v24 | a4 & 1, v23, &v11[*(v29 + 44)]);
  v30 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100005FF4(v11, v16, &qword_10002DBB0, &qword_10001A1C0);
  v39 = &v16[*(v12 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_100005FF4(v16, v18, &qword_10002DBB8, &qword_10001A1C8);
  sub_1000060D8(v18, v22, &qword_10002DBB8, &qword_10001A1C8);
  swift_storeEnumTagMultiPayload();
  sub_100005BB0();
  sub_100005C04();
  _ConditionalContent<>.init(storage:)();
  return sub_100006140(v18, &qword_10002DBB8, &qword_10001A1C8);
}

uint64_t sub_100004568@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v65 = a1;
  v59 = sub_1000054DC(&qword_10002DBE8, &qword_10001A1E0);
  v11 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = (&v59 - v12);
  v13 = sub_1000054DC(&qword_10002DBF0, &qword_10001A1E8);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  v15 = __chkstk_darwin(v13);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v59 - v17;
  v18 = sub_1000054DC(&qword_10002DBF8, &qword_10001A1F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v69 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v59 - v22;
  v70 = a3;
  sub_100005DC8(a3, a5, v92);
  v23 = v92[0];
  v24 = v92[1];
  v25 = v92[2];
  v26 = v92[3];
  v27 = v92[4];
  v63 = a4;
  v64 = v93;
  if ((a4 & 0x100) != 0)
  {
    if (a2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v71[39] = v96;
      *&v71[23] = v95;
      *&v71[7] = v94;
      *&v87 = a2;
      *(&v87 + 1) = v70;
      LOBYTE(v88) = 0;
      *(&v88 + 1) = v23;
      *&v89 = v24;
      *(&v89 + 1) = v25;
      *&v90 = v26;
      *(&v90 + 1) = v27;
      LOBYTE(v91[0]) = v64;
      *&v91[3] = *(&v96 + 1);
      *(&v91[2] + 1) = *&v71[32];
      *(&v91[1] + 1) = *&v71[16];
      *(v91 + 1) = *v71;
      sub_10000605C(&v87);
      goto LABEL_7;
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v86[39] = v96;
  *&v86[23] = v95;
  *&v86[7] = v94;
  *&v87 = a2;
  *(&v87 + 1) = v70;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = v23;
  *&v89 = v24;
  *(&v89 + 1) = v25;
  *&v90 = v26;
  *(&v90 + 1) = v27;
  LOBYTE(v91[0]) = v64;
  *&v91[3] = *(&v96 + 1);
  *(&v91[2] + 1) = *&v86[32];
  *(&v91[1] + 1) = *&v86[16];
  *(v91 + 1) = *v86;
  sub_100005F5C(&v87);
LABEL_7:
  v83 = v91[0];
  v84 = v91[1];
  v85[0] = v91[2];
  *(v85 + 9) = *(&v91[2] + 9);
  v79 = v87;
  v80 = v88;
  v81 = v89;
  v82 = v90;
  sub_1000054DC(&qword_10002DC00, &qword_10001A1F8);
  sub_100005F68();
  _ConditionalContent<>.init(storage:)();
  v28 = 1;
  v29 = v67;
  v30 = v68;
  if (v65 == 1)
  {
    v31 = static HorizontalAlignment.leading.getter();
    v32 = v62;
    *v62 = v31;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    v33 = sub_1000054DC(&qword_10002DC20, &qword_10001A210);
    sub_100004C28(v70, v32 + *(v33 + 44));
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = (v32 + *(v59 + 36));
    v35 = v98;
    *v34 = v97;
    v34[1] = v35;
    v34[2] = v99;
    v36 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v61;
    sub_100005FF4(v32, v61, &qword_10002DBE8, &qword_10001A1E0);
    v46 = v45 + *(v29 + 36);
    *v46 = v36;
    *(v46 + 8) = v38;
    *(v46 + 16) = v40;
    *(v46 + 24) = v42;
    *(v46 + 32) = v44;
    *(v46 + 40) = 0;
    v47 = v45;
    v48 = v60;
    sub_100005FF4(v47, v60, &qword_10002DBF0, &qword_10001A1E8);
    sub_100005FF4(v48, v30, &qword_10002DBF0, &qword_10001A1E8);
    v28 = 0;
  }

  (*(v66 + 56))(v30, v28, 1, v29);
  v77 = v105;
  v78[0] = v106[0];
  *(v78 + 9) = *(v106 + 9);
  v72 = v100;
  v73 = v101;
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v49 = v69;
  sub_1000060D8(v30, v69, &qword_10002DBF8, &qword_10001A1F0);
  v51 = v75;
  v50 = v76;
  v52 = v77;
  v53 = v78[0];
  v83 = v76;
  v84 = v77;
  v85[0] = v78[0];
  *(v85 + 9) = *(v78 + 9);
  v54 = v72;
  v55 = v73;
  v79 = v72;
  v80 = v73;
  v56 = v74;
  v81 = v74;
  v82 = v75;
  *(a6 + 105) = *(v78 + 9);
  a6[5] = v52;
  a6[6] = v53;
  a6[3] = v51;
  a6[4] = v50;
  a6[1] = v55;
  a6[2] = v56;
  *a6 = v54;
  v57 = sub_1000054DC(&qword_10002DC10, &qword_10001A200);
  sub_1000060D8(v49, a6 + *(v57 + 48), &qword_10002DBF8, &qword_10001A1F0);
  sub_1000060D8(&v79, &v87, &qword_10002DC18, &qword_10001A208);
  sub_100006140(v30, &qword_10002DBF8, &qword_10001A1F0);
  sub_100006140(v49, &qword_10002DBF8, &qword_10001A1F0);
  v91[0] = v76;
  v91[1] = v77;
  v91[2] = v78[0];
  *(&v91[2] + 9) = *(v78 + 9);
  v87 = v72;
  v88 = v73;
  v89 = v74;
  v90 = v75;
  return sub_100006140(&v87, &qword_10002DC18, &qword_10001A208);
}

uint64_t sub_100004C28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1000054DC(&qword_10002DC28, &qword_10001A218);
  v4 = *(v3 - 8);
  v101 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v99 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = &v86 - v8;
  v9 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v86 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v89 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000054DC(&qword_10002DC38, &qword_10001A228);
  v23 = *(v22 - 8);
  v93 = v22 - 8;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22 - 8);
  v97 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0xD00000000000001ALL;
  v29._object = 0x800000010001B3D0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  v102 = a1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  String.LocalizationValue.init(stringInterpolation:)();
  v90 = v16;
  static Locale.current.getter();
  v102 = String.init(localized:table:bundle:locale:comment:)();
  v103 = v31;
  v91 = sub_100006064();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v95 = type metadata accessor for Font.Design();
  v37 = *(v95 - 8);
  v94 = *(v37 + 56);
  v96 = v37 + 56;
  v92 = v12;
  v94(v12, 1, 1, v95);
  static Font.system(size:weight:design:)();
  sub_100006140(v12, &qword_10002DC30, &qword_10001A220);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v12) = v41;

  sub_1000060B8(v32, v34, v36 & 1);

  static Font.Weight.semibold.getter();
  v42 = Text.fontWeight(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1000060B8(v38, v40, v12 & 1);

  v102 = v42;
  v103 = v44;
  v104 = v46 & 1;
  v105 = v48;
  View.lineLimit(_:reservesSpace:)();
  sub_1000060B8(v42, v44, v46 & 1);

  v49 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v88 = sub_1000054DC(&qword_10002DC48, &qword_10001A260);
  v51 = &v28[*(v88 + 36)];
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = swift_getKeyPath();
  v87 = sub_1000054DC(&qword_10002DC50, &qword_10001A298);
  v53 = &v28[*(v87 + 36)];
  *v53 = v52;
  v53[8] = 1;
  v54 = swift_getKeyPath();
  v55 = &v28[*(v101 + 44)];
  *v55 = v54;
  v55[1] = 0x3FDCCCCCCCCCCCCDLL;
  LOBYTE(v52) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v56 = &v28[*(v93 + 44)];
  *v56 = v52;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v102 = String.init(localized:table:bundle:locale:comment:)();
  v103 = v61;
  v62 = Text.init<A>(_:)();
  v64 = v63;
  LOBYTE(v38) = v65;
  static Color.gray.getter();
  v66 = Text.foregroundColor(_:)();
  v68 = v67;
  LOBYTE(v44) = v69;
  v71 = v70;

  sub_1000060B8(v62, v64, v38 & 1);

  v102 = v66;
  v103 = v68;
  v104 = v44 & 1;
  v105 = v71;
  v72 = v98;
  View.lineLimit(_:reservesSpace:)();
  sub_1000060B8(v66, v68, v44 & 1);

  v73 = v92;
  v94(v92, 1, 1, v95);
  v74 = static Font.system(size:weight:design:)();
  sub_100006140(v73, &qword_10002DC30, &qword_10001A220);
  v75 = swift_getKeyPath();
  v76 = (v72 + *(v88 + 36));
  *v76 = v75;
  v76[1] = v74;
  v77 = swift_getKeyPath();
  v78 = v72 + *(v87 + 36);
  *v78 = v77;
  *(v78 + 8) = 1;
  v79 = swift_getKeyPath();
  v80 = (v72 + *(v101 + 44));
  *v80 = v79;
  v80[1] = 0x3FDCCCCCCCCCCCCDLL;
  v81 = v97;
  sub_1000060D8(v28, v97, &qword_10002DC38, &qword_10001A228);
  v82 = v99;
  sub_1000060D8(v72, v99, &qword_10002DC28, &qword_10001A218);
  v83 = v100;
  sub_1000060D8(v81, v100, &qword_10002DC38, &qword_10001A228);
  v84 = sub_1000054DC(&qword_10002DC58, &qword_10001A2D0);
  sub_1000060D8(v82, v83 + *(v84 + 48), &qword_10002DC28, &qword_10001A218);
  sub_100006140(v72, &qword_10002DC28, &qword_10001A218);
  sub_100006140(v28, &qword_10002DC38, &qword_10001A228);
  sub_100006140(v82, &qword_10002DC28, &qword_10001A218);
  return sub_100006140(v81, &qword_10002DC38, &qword_10001A228);
}

uint64_t sub_100005430@<X0>(uint64_t a1@<X8>)
{
  if (v1[25])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000041F0(*v1, *(v1 + 1), *(v1 + 2), v2 | v1[24], a1);
}

void *sub_100005454(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1000054DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100005578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005590(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000055C8()
{
  result = qword_10002DB98;
  if (!qword_10002DB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DB98);
  }

  return result;
}

uint64_t sub_100005614(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000056B4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

void sub_100005708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000055C8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000054DC(&qword_10002DB28, &unk_10001A110);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000057EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100005818(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100005844(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100006BF8(&qword_10002DBA8, &qword_10002DBA0, &qword_10001AFD0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
            v9 = sub_100015BE8(v13, i, a3);
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
        sub_1000055C8();
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

uint64_t sub_1000059E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100005A34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100005A98(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100005AE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100005AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100005B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005BB0()
{
  result = qword_10002DBD0;
  if (!qword_10002DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DBD0);
  }

  return result;
}

unint64_t sub_100005C04()
{
  result = qword_10002DBD8;
  if (!qword_10002DBD8)
  {
    sub_1000059E8(&qword_10002DBB8, &qword_10001A1C8);
    sub_100006BF8(&qword_10002DBE0, &qword_10002DBB0, &qword_10001A1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DBD8);
  }

  return result;
}

void sub_100005CBC(uint64_t a1, void *a2)
{
  sub_1000054DC(&qword_10002DD28, &unk_10001A670);
  UIViewRepresentableContext.coordinator.getter();
  v3 = *(v8 + 16);

  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001A080;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_opt_self() emptyContact];
  }

  *(v4 + 32) = v5;
  sub_1000055C8();
  v6 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setContacts:isa];
}

uint64_t sub_100005DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 * 9) >> 64 == (9 * a2) >> 63)
  {
    v3 = result - 1;
    if ((result - 1) >= 6)
    {
      if ((result - 10) > 0xFFFFFFFFFFFFFFFCLL)
      {
        v4 = 3;
        v5 = 3;
      }

      else if ((result - 13) > 0xFFFFFFFFFFFFFFFCLL)
      {
        v5 = 3;
        v4 = 4;
      }

      else if ((result - 17) > 0xFFFFFFFFFFFFFFFBLL)
      {
        v4 = 4;
        v5 = 4;
      }

      else if ((result - 21) > 0xFFFFFFFFFFFFFFFBLL)
      {
        v5 = 4;
        v4 = 5;
      }

      else if ((result - 26) > 0xFFFFFFFFFFFFFFFALL)
      {
        v4 = 5;
        v5 = 5;
      }

      else if ((result - 31) > 0xFFFFFFFFFFFFFFFALL)
      {
        v5 = 5;
        v4 = 6;
      }

      else if ((result - 37) > 0xFFFFFFFFFFFFFFF9)
      {
        v4 = 6;
        v5 = 6;
      }

      else
      {
        v6 = result - 43;
        v5 = 6;
        v7 = result - 50;
        v8 = 7;
        v9 = 8;
        if ((result - 57) < 0xFFFFFFFFFFFFFFF9)
        {
          v9 = 9;
        }

        v10 = __CFADD__(v7, 8);
        if (v7 <= 0xFFFFFFFFFFFFFFF8)
        {
          v11 = v9;
        }

        else
        {
          v11 = 7;
        }

        if (result == 42 || !v10)
        {
          v8 = 7;
        }

        v12 = 8;
        if ((result - 49) < 0xFFFFFFFFFFFFFFFALL)
        {
          v12 = 9;
        }

        if (a2 <= 6)
        {
          v11 = v12;
          v8 = a2;
        }

        v13 = __CFADD__(v6, 7);
        if (v6 <= 0xFFFFFFFFFFFFFFF9)
        {
          v4 = v11;
        }

        else
        {
          v4 = 7;
        }

        if (result == 36 || !v13)
        {
          v5 = v8;
        }
      }
    }

    else
    {
      v4 = qword_10001A680[v3];
      v5 = qword_10001A6B0[v3];
    }

    v14 = 0xE0u / v4;
    if (v14 >= 224 / v5)
    {
      v14 = 224 / v5;
    }

    if (v14 <= 28)
    {
      v14 = 28;
    }

    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = result;
    *(a3 + 24) = v14;
    *(a3 + 32) = v14 * 0.01;
    *(a3 + 40) = 9 * a2 < result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100005F68()
{
  result = qword_10002DC08;
  if (!qword_10002DC08)
  {
    sub_1000059E8(&qword_10002DC00, &qword_10001A1F8);
    sub_100005BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC08);
  }

  return result;
}

uint64_t sub_100005FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054DC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100006064()
{
  result = qword_10002DC40;
  if (!qword_10002DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC40);
  }

  return result;
}

uint64_t sub_1000060B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000060D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054DC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_1000061A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000061C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10000620C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupVisualizerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupVisualizerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000063E8()
{
  result = qword_10002DC60;
  if (!qword_10002DC60)
  {
    sub_1000059E8(&qword_10002DC68, "\\ ");
    sub_100005BB0();
    sub_100005C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC60);
  }

  return result;
}

unint64_t sub_100006478()
{
  result = qword_10002DC70;
  if (!qword_10002DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC70);
  }

  return result;
}

unint64_t sub_1000064F0()
{
  result = qword_10002DC88;
  if (!qword_10002DC88)
  {
    sub_1000059E8(&qword_10002DC80, &qword_10001A3F8);
    sub_100006BF8(&qword_10002DC90, &qword_10002DC98, &qword_10001A400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC88);
  }

  return result;
}

uint64_t sub_1000065A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 81, 7);
}

id sub_1000065D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 32);
  *a2 = v3;
  *(a2 + 8) = *(v2 + 64);
  *(a2 + 24) = v4;
  return v3;
}

uint64_t sub_10000662C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100006674()
{
  result = qword_10002DCC0;
  if (!qword_10002DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCC0);
  }

  return result;
}

uint64_t sub_1000066C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054DC(&qword_10002DC98, &qword_10001A400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006738(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setNumberStyle:1];
  v3 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v9;
    if (a1 <= 999)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 2603;
    goto LABEL_6;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (a1 > 999)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 43;
LABEL_6:
  v12 = v8;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  String.append(_:)(v10);

  return v12;
}

__n128 sub_10000689C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000068B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1000068F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000694C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000069B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100006A80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_100006ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100006B40()
{
  result = qword_10002DD00;
  if (!qword_10002DD00)
  {
    sub_1000059E8(&qword_10002DD08, &qword_10001A580);
    sub_100006BF8(&qword_10002DD10, &qword_10002DD18, &qword_10001A588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD00);
  }

  return result;
}

uint64_t sub_100006BF8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000059E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006C50()
{
  result = qword_10002DD20;
  if (!qword_10002DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD20);
  }

  return result;
}

unint64_t sub_100006CA4()
{
  result = qword_10002DD30;
  if (!qword_10002DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD30);
  }

  return result;
}

uint64_t sub_100006D04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006D78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006DEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000054DC(&qword_10002E138, &qword_10001A830);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005590(v10, qword_10002F570);
  v11 = static os_log_type_t.debug.getter();

  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100017CA8(a1, a2, &v21);
    _os_log_impl(&_mh_execute_header, v12, v11, "Loading Onboarding avatars for bundle %s", v13, 0xCu);
    sub_100005A98(v14);
  }

  v15 = sub_100001A40();
  v16 = sub_100001B74(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v16;

  static Published.subscript.setter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;
  v18[5] = v3;

  sub_1000079D0(0, 0, v9, &unk_10001A888, v18);
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100007194, 0, 0);
}

uint64_t sub_100007194()
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_100005590(v1, qword_10002F570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading Onboarding avatars", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1000072E8;
  v6 = v0[13];

  return sub_100001E14(v6);
}

uint64_t sub_1000072E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_10000769C;
  }

  else
  {
    *(v4 + 192) = a1;
    v7 = sub_100007410;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007410()
{
  v1 = v0[24];
  v2 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v3 = v0[15];
  v14 = v0[17];
  v15 = v0[16];
  v4 = v0[14];
  sub_100011B98();
  v13 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_100011C5C;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000798C;
  v0[5] = &unk_100029638;
  v7 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[12] = &_swiftEmptyArrayStorage;
  sub_100012D54(&qword_10002E148, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054DC(&qword_10002E150, &qword_10001A8A8);
  sub_100006BF8(&qword_10002E158, &qword_10002E150, &qword_10001A8A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v15 + 8))(v14, v3);
  (*(v16 + 8))(v2, v17);
  v8 = v0[7];

  v9 = v0[20];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000769C()
{
  v20 = v0;
  v1 = v0[23];
  v2 = v0[21];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[10];
    v11 = Error.localizedDescription.getter();
    v13 = sub_100017CA8(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loading Onboarding Visualization failed: %s", v6, 0xCu);
    sub_100005A98(v7);
  }

  else
  {
    v14 = v0[23];
  }

  v15 = v0[20];
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

void sub_100007830()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    if (qword_10002DA20 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100005590(v0, qword_10002F570);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Finished loading Onboarding avatars", v3, 2u);
    }
  }
}

uint64_t sub_10000798C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000079D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054DC(&qword_10002E138, &qword_10001A830);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000060D8(a3, v27 - v11, &qword_10002E138, &qword_10001A830);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006140(v12, &qword_10002E138, &qword_10001A830);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100006140(a3, &qword_10002E138, &qword_10001A830);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006140(a3, &qword_10002E138, &qword_10001A830);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100007CD0()
{
  v1 = OBJC_IVAR____TtC23LimitedAccessPromptView22ContactStoreVisualizer__allContacts;
  v2 = sub_1000054DC(&qword_10002E160, &qword_10001A8F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23LimitedAccessPromptView22ContactStoreVisualizer__allContactsCount;
  v4 = sub_1000054DC(&qword_10002E168, &qword_10001A900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactStoreVisualizer()
{
  result = qword_10002DEF8;
  if (!qword_10002DEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007E18()
{
  sub_100007EE4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100007F48();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100007EE4()
{
  if (!qword_10002DF08)
  {
    sub_1000059E8(&qword_10002DBA0, &qword_10001AFD0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10002DF08);
    }
  }
}

void sub_100007F48()
{
  if (!qword_10002DF10)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10002DF10);
    }
  }
}

uint64_t sub_100007F98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactStoreVisualizer();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100007FD8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  sub_10000809C(v0[6]);
  v4 = v0[9];
  sub_10000809C(v0[8]);
  v5 = v0[11];
  sub_10000809C(v0[10]);

  return swift_deallocClassInstance();
}

uint64_t sub_100008060@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000809C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000080C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v23 = sub_1000054DC(&qword_10002E1B0, &qword_10001AAF8);
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v5 = v22 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1000054DC(&qword_10002E1B8, &qword_10001AB00);
  sub_1000083C4(v1, &v5[*(v6 + 44)]);
  v27 = *(v1 + 48);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  State.projectedValue.getter();
  v22[1] = v26;
  v7 = swift_allocObject();
  v8 = *(v1 + 80);
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v1 + 96);
  *(v7 + 128) = *(v1 + 112);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  v10 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v10;
  v11 = swift_allocObject();
  v12 = *(v1 + 80);
  *(v11 + 80) = *(v1 + 64);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(v1 + 96);
  *(v11 + 128) = *(v1 + 112);
  v13 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v13;
  v14 = *(v1 + 48);
  *(v11 + 48) = *(v1 + 32);
  *(v11 + 64) = v14;
  sub_100012198(v1, &v25);
  sub_100012198(v1, &v25);
  sub_1000054DC(&qword_10002E1C8, &qword_10001AB10);
  sub_100006BF8(&qword_10002E1D0, &qword_10002E1B0, &qword_10001AAF8);
  sub_1000121D0();
  v15 = v24;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_100006140(v5, &qword_10002E1B0, &qword_10001AAF8);
  v16 = swift_allocObject();
  v17 = *(v2 + 80);
  *(v16 + 80) = *(v2 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(v2 + 96);
  *(v16 + 128) = *(v2 + 112);
  v18 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v18;
  v19 = *(v2 + 48);
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = v19;
  v20 = (v15 + *(sub_1000054DC(&qword_10002E1E8, &qword_10001AB18) + 36));
  *v20 = sub_1000122DC;
  v20[1] = v16;
  v20[2] = 0;
  v20[3] = 0;
  return sub_100012198(v2, &v25);
}

uint64_t sub_1000083C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000054DC(&qword_10002E220, &qword_10001AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  v9 = sub_1000054DC(&qword_10002E228, &qword_10001AB48);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v35 = v34 - v11;
  v12 = sub_1000054DC(&qword_10002E230, &qword_10001AB50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v34 - v14;
  v37 = *(a1 + 32);
  sub_1000054DC(&qword_10002E218, &qword_10001AB38);
  v16 = State.wrappedValue.getter();
  if (v36)
  {
    v34[3] = v34;
    __chkstk_darwin(v16);
    v34[-2] = a1;
    v34[1] = sub_1000054DC(&qword_10002E238, &qword_10001AB58);
    v17 = v4;
    v18 = sub_1000059E8(&qword_10002E240, &qword_10001AB60);
    v34[2] = v9;
    v34[5] = v12;
    v19 = sub_1000059E8(&qword_10002E248, &qword_10001AB68);
    v34[4] = a2;
    v20 = v19;
    v21 = sub_100006BF8(&qword_10002E250, &qword_10002E240, &qword_10001AB60);
    v22 = sub_100006BF8(&qword_10002E258, &qword_10002E248, &qword_10001AB68);
    *&v37 = v18;
    *(&v37 + 1) = v20;
    *&v38 = v21;
    *(&v38 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    (*(v5 + 16))(v35, v8, v17);
    swift_storeEnumTagMultiPayload();
    sub_1000129D4();
    sub_100006BF8(&qword_10002E288, &qword_10002E220, &qword_10001AB40);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v8, v17);
  }

  else
  {
    *v15 = static HorizontalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v24 = sub_1000054DC(&qword_10002E290, &qword_10001AB80);
    sub_10000891C(a1, &v15[*(v24 + 44)]);
    v25 = static HorizontalAlignment.center.getter();
    v26 = &v15[*(v12 + 36)];
    v27 = static Color.clear.getter();
    v28 = v26 + *(sub_1000054DC(&qword_10002E298, &qword_10001AB88) + 36);
    static Material.thin.getter();
    v29 = static Edge.Set.all.getter();
    v28[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v29;
    *v26 = v27;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v30 = (v26 + *(sub_1000054DC(&qword_10002E2A8, &qword_10001AB98) + 36));
    v31 = v38;
    *v30 = v37;
    v30[1] = v31;
    v30[2] = v39;
    VerticalEdge.rawValue.getter();
    LOBYTE(v27) = Edge.init(rawValue:)();
    v32 = static SafeAreaRegions.container.getter();
    v33 = v26 + *(sub_1000054DC(&qword_10002E280, &qword_10001AB78) + 36);
    *v33 = v32;
    *(v33 + 1) = 0;
    v33[16] = 0;
    v33[17] = v27;
    *(v33 + 3) = v25;
    sub_1000060D8(v15, v35, &qword_10002E230, &qword_10001AB50);
    swift_storeEnumTagMultiPayload();
    sub_1000129D4();
    sub_100006BF8(&qword_10002E288, &qword_10002E220, &qword_10001AB40);
    _ConditionalContent<>.init(storage:)();
    return sub_100006140(v15, &qword_10002E230, &qword_10001AB50);
  }
}

uint64_t sub_10000891C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000054DC(&qword_10002E2B0, &qword_10001ABA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v69 - v5;
  v7 = sub_1000054DC(&qword_10002E2B8, &qword_10001ABA8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v72 = &v69 - v15;
  v70 = sub_1000054DC(&qword_10002E2C0, &qword_10001ABB0);
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v70);
  v71 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v69 = &v69 - v20;
  static Axis.Set.vertical.getter();
  v75 = a1;
  sub_1000054DC(&qword_10002E2C8, &qword_10001ABB8);
  sub_100006BF8(&qword_10002E2D0, &qword_10002E2C8, &qword_10001ABB8);
  ScrollView.init(_:showsIndicators:content:)();
  v21 = static HorizontalAlignment.center.getter();
  v22 = objc_opt_self();
  v23 = [v22 mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v76.origin.x = v25;
  v76.origin.y = v27;
  v76.size.width = v29;
  v76.size.height = v31;
  Height = CGRectGetHeight(v76);
  v33 = 0x402E000000000000;
  if (Height <= 812.0)
  {
    v33 = 0x4024000000000000;
  }

  *v6 = v21;
  *(v6 + 1) = v33;
  v6[16] = 0;
  v34 = sub_1000054DC(&qword_10002E2D8, &qword_10001ABC0);
  sub_10000A57C(a1, &v6[*(v34 + 44)]);
  v35 = [v22 mainScreen];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v77.origin.x = v37;
  v77.origin.y = v39;
  v77.size.width = v41;
  v77.size.height = v43;
  if (CGRectGetHeight(v77) > 812.0)
  {
    v44 = 10.0;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = [v22 mainScreen];
  [v45 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v78.origin.x = v47;
  v78.origin.y = v49;
  v78.size.width = v51;
  v78.size.height = v53;
  if (CGRectGetHeight(v78) > 812.0)
  {
    v54 = 10.0;
  }

  else
  {
    v54 = 0.0;
  }

  v55 = static Edge.Set.all.getter();
  sub_100005FF4(v6, v14, &qword_10002E2B0, &qword_10001ABA0);
  v56 = &v14[*(v8 + 44)];
  *v56 = v55;
  *(v56 + 1) = v44;
  *(v56 + 2) = 0x4041800000000000;
  *(v56 + 3) = v54;
  *(v56 + 4) = 0x4041800000000000;
  v56[40] = 0;
  v57 = v72;
  sub_100005FF4(v14, v72, &qword_10002E2B8, &qword_10001ABA8);
  v58 = v16;
  v59 = *(v16 + 16);
  v60 = v70;
  v61 = v71;
  v62 = v69;
  v59(v71, v69, v70);
  v63 = v73;
  sub_1000060D8(v57, v73, &qword_10002E2B8, &qword_10001ABA8);
  v64 = v74;
  v59(v74, v61, v60);
  v65 = sub_1000054DC(&qword_10002E2E0, &qword_10001ABC8);
  v66 = &v64[*(v65 + 48)];
  *v66 = 0;
  v66[8] = 1;
  sub_1000060D8(v63, &v64[*(v65 + 64)], &qword_10002E2B8, &qword_10001ABA8);
  sub_100006140(v57, &qword_10002E2B8, &qword_10001ABA8);
  v67 = *(v58 + 8);
  v67(v62, v60);
  sub_100006140(v63, &qword_10002E2B8, &qword_10001ABA8);
  return (v67)(v61, v60);
}

uint64_t sub_100008E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v118 = sub_1000054DC(&qword_10002E3C0, &qword_10001AC88);
  v3 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v119 = &v112 - v4;
  v5 = type metadata accessor for Material();
  v116 = *(v5 - 8);
  v117 = v5;
  v6 = *(v116 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v112 - v10;
  v12 = sub_1000054DC(&qword_10002E3C8, &qword_10001AC90);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v112 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v112 - v21;
  __chkstk_darwin(v20);
  v24 = &v112 - v23;
  v25 = sub_1000054DC(&qword_10002E3D0, &qword_10001AC98);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v122 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = a1;
  v121 = &v112 - v29;
  if ((*(a1 + 112) & 1) == 0)
  {
    if (*(a1 + 16))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v53 = v126[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v115 = v126[0];
      v54 = [objc_opt_self() mainScreen];
      [v54 bounds];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      v147.origin.x = v56;
      v147.origin.y = v58;
      v147.size.width = v60;
      v147.size.height = v62;
      v114 = CGRectGetHeight(v147) <= 812.0;
      v63 = [objc_opt_self() currentDevice];
      v64 = [v63 userInterfaceIdiom];

      v113 = v64 == 1;
      v126[0] = sub_1000125A8(v53);
      sub_100012404();
      v65 = v126[0];
      v66 = static Edge.Set.all.getter();
      v136[0] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v138[55] = v142;
      *&v138[71] = v143;
      *&v138[87] = v144;
      *&v138[103] = v145;
      *&v138[7] = v139;
      *&v138[23] = v140;
      *&v138[39] = v141;
      if (static Solarium.isEnabled.getter())
      {
        static Material.thin.getter();
      }

      else
      {
        static Material.regular.getter();
      }

      v75 = static Edge.Set.all.getter();
      v76 = &v16[*(v12 + 36)];
      (*(v116 + 32))(v76, v9, v117);
      v76[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v75;
      *(v16 + 40) = xmmword_10001A6E0;
      *(v16 + 56) = xmmword_10001A6F0;
      v77 = *&v138[80];
      *(v16 + 137) = *&v138[64];
      *(v16 + 153) = v77;
      *(v16 + 169) = *&v138[96];
      v78 = *&v138[16];
      *(v16 + 73) = *v138;
      *(v16 + 89) = v78;
      v79 = *&v138[48];
      *(v16 + 105) = *&v138[32];
      *v16 = 1;
      *(v16 + 1) = *(v126 + 3);
      *(v16 + 1) = v126[0];
      v80 = v115;
      *(v16 + 1) = v65;
      *(v16 + 2) = v80;
      LOBYTE(v80) = v113;
      v16[24] = v114;
      v16[25] = v80;
      *(v16 + 15) = v137[1];
      *(v16 + 26) = v137[0];
      v16[32] = v66;
      *(v16 + 9) = *(v125 + 3);
      *(v16 + 33) = v125[0];
      v16[72] = 0;
      *(v16 + 23) = *&v138[111];
      *(v16 + 121) = v79;
      sub_100005FF4(v16, v19, &qword_10002E3C8, &qword_10001AC90);
      sub_1000060D8(v19, v119, &qword_10002E3C8, &qword_10001AC90);
      swift_storeEnumTagMultiPayload();
      sub_10001311C();
      v73 = v121;
      _ConditionalContent<>.init(storage:)();
      sub_100006140(v19, &qword_10002E3C8, &qword_10001AC90);
      v74 = 10.0;
      goto LABEL_12;
    }

LABEL_18:
    v111 = *(v120 + 24);
    type metadata accessor for ContactStoreVisualizer();
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v30 = v126[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v115 = v126[0];
  v31 = [objc_opt_self() mainScreen];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v146.origin.x = v33;
  v146.origin.y = v35;
  v146.size.width = v37;
  v146.size.height = v39;
  v114 = CGRectGetHeight(v146) <= 812.0;
  v40 = [objc_opt_self() currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v42 = v41 == 1;
  v126[0] = sub_1000125A8(v30);
  sub_100012404();
  v43 = v126[0];
  v44 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v136[0] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v124[55] = v142;
  *&v124[71] = v143;
  *&v124[87] = v144;
  *&v124[103] = v145;
  *&v124[7] = v139;
  *&v124[23] = v140;
  *&v124[39] = v141;
  if (static Solarium.isEnabled.getter())
  {
    static Material.thin.getter();
  }

  else
  {
    static Material.regular.getter();
  }

  v67 = static Edge.Set.all.getter();
  v68 = &v22[*(v12 + 36)];
  (*(v116 + 32))(v68, v11, v117);
  v68[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v67;
  *v22 = 1;
  *(v22 + 1) = *(v126 + 3);
  *(v22 + 1) = v126[0];
  v69 = v115;
  *(v22 + 1) = v43;
  *(v22 + 2) = v69;
  v22[24] = v114;
  v22[25] = v42;
  *(v22 + 15) = v137[1];
  *(v22 + 26) = v137[0];
  v22[32] = v44;
  *(v22 + 9) = *(v125 + 3);
  *(v22 + 33) = v125[0];
  *(v22 + 5) = v46;
  *(v22 + 6) = v48;
  *(v22 + 7) = v50;
  *(v22 + 8) = v52;
  v22[72] = 0;
  v70 = *&v124[80];
  *(v22 + 137) = *&v124[64];
  *(v22 + 153) = v70;
  *(v22 + 169) = *&v124[96];
  *(v22 + 23) = *&v124[111];
  v71 = *&v124[16];
  *(v22 + 73) = *v124;
  *(v22 + 89) = v71;
  v72 = *&v124[48];
  *(v22 + 105) = *&v124[32];
  *(v22 + 121) = v72;
  sub_100005FF4(v22, v24, &qword_10002E3C8, &qword_10001AC90);
  sub_1000060D8(v24, v119, &qword_10002E3C8, &qword_10001AC90);
  swift_storeEnumTagMultiPayload();
  sub_10001311C();
  v73 = v121;
  _ConditionalContent<>.init(storage:)();
  sub_100006140(v24, &qword_10002E3C8, &qword_10001AC90);
  v74 = 0.0;
LABEL_12:
  v81 = static HorizontalAlignment.leading.getter();
  v134 = 1;
  sub_100009B70(v126);
  memcpy(v136, v126, sizeof(v136));
  memcpy(v137, v126, sizeof(v137));
  sub_1000060D8(v136, v125, &qword_10002E410, &qword_10001ACB0);
  sub_100006140(v137, &qword_10002E410, &qword_10001ACB0);
  memcpy(&v133[7], v136, 0x118uLL);
  v82 = v134;
  v83 = objc_opt_self();
  v84 = [v83 mainScreen];
  [v84 bounds];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v148.origin.x = v86;
  v148.origin.y = v88;
  v148.size.width = v90;
  v148.size.height = v92;
  if (CGRectGetHeight(v148) <= 812.0)
  {
    v74 = 0.0;
  }

  v93 = [v83 mainScreen];
  [v93 bounds];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  v149.origin.x = v95;
  v149.origin.y = v97;
  v149.size.width = v99;
  v149.size.height = v101;
  if (CGRectGetHeight(v149) > 812.0)
  {
    v102 = 10.0;
  }

  else
  {
    v102 = 0.0;
  }

  v103 = static Edge.Set.all.getter();
  v135 = 0;
  v104 = v122;
  sub_1000060D8(v73, v122, &qword_10002E3D0, &qword_10001AC98);
  v105 = v73;
  v106 = v123;
  sub_1000060D8(v104, v123, &qword_10002E3D0, &qword_10001AC98);
  v107 = sub_1000054DC(&qword_10002E418, &qword_10001ACB8);
  v108 = v106 + *(v107 + 48);
  *v108 = 0;
  *(v108 + 8) = 1;
  v109 = *(v107 + 64);
  v125[0] = v81;
  v125[1] = 0;
  LOBYTE(v125[2]) = v82;
  memcpy(&v125[2] + 1, v133, 0x11FuLL);
  LOBYTE(v125[38]) = v103;
  *&v125[39] = v74;
  v125[40] = 0x4041800000000000;
  *&v125[41] = v102;
  v125[42] = 0x4041800000000000;
  LOBYTE(v125[43]) = 0;
  memcpy((v106 + v109), v125, 0x159uLL);
  sub_1000060D8(v125, v126, &qword_10002E420, &qword_10001ACC0);
  sub_100006140(v105, &qword_10002E3D0, &qword_10001AC98);
  v126[0] = v81;
  v126[1] = 0;
  LOBYTE(v126[2]) = v82;
  memcpy(&v126[2] + 1, v133, 0x11FuLL);
  v127 = v103;
  v128 = v74;
  v129 = 0x4041800000000000;
  v130 = v102;
  v131 = 0x4041800000000000;
  v132 = 0;
  sub_100006140(v126, &qword_10002E420, &qword_10001ACC0);
  return sub_100006140(v104, &qword_10002E3D0, &qword_10001AC98);
}

uint64_t sub_100009B70@<X0>(void *a1@<X8>)
{
  v101 = a1;
  v1 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v102 = &v87 - v3;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v98 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v97 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v150 = String.init(localized:table:bundle:locale:comment:)();
  v151 = v15;
  v99 = sub_100006064();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v96 = enum case for Font.TextStyle.title2(_:);
  v21 = v5;
  v22 = *(v5 + 104);
  v94 = v5 + 104;
  v95 = v22;
  v88 = v4;
  v22(v8);
  v92 = type metadata accessor for Font.Design();
  v23 = *(v92 - 8);
  v91 = *(v23 + 56);
  v93 = v23 + 56;
  v24 = v102;
  v91(v102, 1, 1, v92);
  static Font.Weight.bold.getter();
  v87 = v8;
  static Font.system(_:design:weight:)();
  sub_100006140(v24, &qword_10002DC30, &qword_10001A220);
  v25 = *(v21 + 8);
  v90 = v21 + 8;
  v25(v8, v4);
  v26 = Text.font(_:)();
  v108 = v27;
  v109 = v26;
  v29 = v28;
  v110 = v30;

  sub_1000060B8(v16, v18, v20 & 1);

  v107 = static Edge.Set.top.getter();
  v89 = objc_opt_self();
  v31 = [v89 mainScreen];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v188.origin.x = v33;
  v188.origin.y = v35;
  v188.size.width = v37;
  v188.size.height = v39;
  CGRectGetHeight(v188);
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v100 = v46;
  v103 = v29 & 1;
  v184 = v29 & 1;
  v181 = 0;
  KeyPath = swift_getKeyPath();
  v105 = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v187 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v150 = String.init(localized:table:bundle:locale:comment:)();
  v151 = v47;
  v48 = Text.init<A>(_:)();
  v50 = v49;
  v52 = v51;
  v53 = v87;
  v54 = v88;
  v95(v87, v96, v88);
  v55 = v102;
  v91(v102, 1, 1, v92);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v55, &qword_10002DC30, &qword_10001A220);
  v25(v53, v54);
  v56 = Text.font(_:)();
  v99 = v57;
  LOBYTE(v55) = v58;
  v102 = v59;

  sub_1000060B8(v48, v50, v52 & 1);

  v60 = static Edge.Set.bottom.getter();
  v61 = [v89 mainScreen];
  [v61 bounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v189.origin.x = v63;
  v189.origin.y = v65;
  v189.size.width = v67;
  v189.size.height = v69;
  CGRectGetHeight(v189);
  EdgeInsets.init(_all:)();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  LOBYTE(v61) = v55 & 1;
  v176 = v55 & 1;
  v173 = 0;
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  v179 = 0;
  v81 = static Color.secondary.getter();
  *&v132 = v109;
  *(&v132 + 1) = v108;
  LOBYTE(v133) = v103;
  *(&v133 + 1) = *v183;
  DWORD1(v133) = *&v183[3];
  *(&v133 + 1) = v110;
  LOBYTE(v134) = v107;
  *(&v134 + 1) = *v182;
  DWORD1(v134) = *&v182[3];
  *(&v134 + 1) = v41;
  *&v135 = v43;
  *(&v135 + 1) = v45;
  v82 = v100;
  *&v136 = v100;
  BYTE8(v136) = 0;
  *(&v136 + 9) = *v185;
  HIDWORD(v136) = *&v185[3];
  *&v137 = KeyPath;
  BYTE8(v137) = 1;
  *(&v137 + 9) = *v186;
  HIDWORD(v137) = *&v186[3];
  *&v138 = v105;
  *(&v138 + 1) = 0x3FE0000000000000;
  *&v139 = v104;
  *(&v139 + 1) = 2;
  v140 = 0;
  *&v131[32] = v134;
  *&v131[48] = v135;
  *v131 = v132;
  *&v131[16] = v133;
  v131[128] = 0;
  *&v131[96] = v138;
  *&v131[112] = v139;
  *&v131[64] = v136;
  *&v131[80] = v137;
  v83 = v56;
  *&v141 = v56;
  v84 = v99;
  *(&v141 + 1) = v99;
  LOBYTE(v142) = v61;
  *(&v142 + 1) = *v175;
  DWORD1(v142) = *&v175[3];
  v85 = v102;
  *(&v142 + 1) = v102;
  LOBYTE(v143) = v60;
  *(&v143 + 1) = *v174;
  DWORD1(v143) = *&v174[3];
  *(&v143 + 1) = v71;
  *&v144 = v73;
  *(&v144 + 1) = v75;
  *&v145 = v77;
  BYTE8(v145) = 0;
  HIDWORD(v145) = *&v177[3];
  *(&v145 + 9) = *v177;
  *&v146 = v78;
  BYTE8(v146) = 1;
  *(&v146 + 9) = *v178;
  HIDWORD(v146) = *&v178[3];
  *&v147 = v79;
  *(&v147 + 1) = 0x3FE0000000000000;
  *&v148 = v80;
  *(&v148 + 1) = 5;
  LOBYTE(v149) = 0;
  DWORD1(v149) = *(v180 + 3);
  *(&v149 + 1) = v180[0];
  *(&v149 + 1) = v81;
  *&v131[264] = v149;
  *&v131[136] = v141;
  *&v131[200] = v145;
  *&v131[184] = v144;
  *&v131[168] = v143;
  *&v131[152] = v142;
  *&v131[248] = v148;
  *&v131[232] = v147;
  *&v131[216] = v146;
  memcpy(v101, v131, 0x118uLL);
  v150 = v83;
  v151 = v84;
  v152 = v61;
  *v153 = *v175;
  *&v153[3] = *&v175[3];
  v154 = v85;
  v155 = v60;
  *v156 = *v174;
  *&v156[3] = *&v174[3];
  v157 = v71;
  v158 = v73;
  v159 = v75;
  v160 = v77;
  v161 = 0;
  *v162 = *v177;
  *&v162[3] = *&v177[3];
  v163 = v78;
  v164 = 1;
  *v165 = *v178;
  *&v165[3] = *&v178[3];
  v166 = v79;
  v167 = 0x3FE0000000000000;
  v168 = v80;
  v169 = 5;
  v170 = 0;
  *v171 = v180[0];
  *&v171[3] = *(v180 + 3);
  v172 = v81;
  sub_1000060D8(&v132, v111, &qword_10002E428, &qword_10001AD58);
  sub_1000060D8(&v141, v111, &qword_10002E430, &qword_10001AD60);
  sub_100006140(&v150, &qword_10002E430, &qword_10001AD60);
  v111[0] = v109;
  v111[1] = v108;
  v112 = v103;
  *v113 = *v183;
  *&v113[3] = *&v183[3];
  v114 = v110;
  v115 = v107;
  *v116 = *v182;
  *&v116[3] = *&v182[3];
  v117 = v41;
  v118 = v43;
  v119 = v45;
  v120 = v82;
  v121 = 0;
  *&v122[3] = *&v185[3];
  *v122 = *v185;
  v123 = KeyPath;
  v124 = 1;
  *&v125[3] = *&v186[3];
  *v125 = *v186;
  v126 = v105;
  v127 = 0x3FE0000000000000;
  v128 = v104;
  v129 = 2;
  v130 = 0;
  return sub_100006140(v111, &qword_10002E428, &qword_10001AD58);
}

uint64_t sub_10000A57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v3 = sub_1000054DC(&qword_10002E2E8, &qword_10001ABD0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v45 - v5;
  v6 = sub_1000054DC(&qword_10002E2F0, &qword_10001ABD8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v45 - v12;
  __chkstk_darwin(v11);
  v48 = &v45 - v14;
  v15 = sub_1000054DC(&qword_10002E2F8, &qword_10001ABE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = sub_1000054DC(&qword_10002E300, &qword_10001ABE8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v45 - v26;
  __chkstk_darwin(v25);
  v29 = &v45 - v28;
  v54 = a1;
  sub_1000054DC(&qword_10002E308, &qword_10001ABF0);
  sub_100012AC8();
  _GlassEffectContainer.init(smoothness:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v16 + 32))(v27, v19, v15);
  v30 = &v27[*(v21 + 44)];
  v31 = v60;
  *(v30 + 4) = v59;
  *(v30 + 5) = v31;
  *(v30 + 6) = v61;
  v32 = v56;
  *v30 = v55;
  *(v30 + 1) = v32;
  v33 = v58;
  *(v30 + 2) = v57;
  *(v30 + 3) = v33;
  sub_100005FF4(v27, v29, &qword_10002E300, &qword_10001ABE8);
  v53 = v45;
  sub_1000054DC(&qword_10002E360, &qword_10001AC18);
  sub_100012DA4();
  v34 = v47;
  _GlassEffectContainer.init(smoothness:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v49 + 32))(v13, v34, v50);
  v35 = &v13[*(v7 + 44)];
  v36 = v67;
  *(v35 + 4) = v66;
  *(v35 + 5) = v36;
  *(v35 + 6) = v68;
  v37 = v63;
  *v35 = v62;
  *(v35 + 1) = v37;
  v38 = v65;
  *(v35 + 2) = v64;
  *(v35 + 3) = v38;
  v39 = v48;
  sub_100005FF4(v13, v48, &qword_10002E2F0, &qword_10001ABD8);
  v40 = v46;
  sub_1000060D8(v29, v46, &qword_10002E300, &qword_10001ABE8);
  v41 = v51;
  sub_1000060D8(v39, v51, &qword_10002E2F0, &qword_10001ABD8);
  v42 = v52;
  sub_1000060D8(v40, v52, &qword_10002E300, &qword_10001ABE8);
  v43 = sub_1000054DC(&qword_10002E3A0, &qword_10001AC38);
  sub_1000060D8(v41, v42 + *(v43 + 48), &qword_10002E2F0, &qword_10001ABD8);
  sub_100006140(v39, &qword_10002E2F0, &qword_10001ABD8);
  sub_100006140(v29, &qword_10002E300, &qword_10001ABE8);
  sub_100006140(v41, &qword_10002E2F0, &qword_10001ABD8);
  return sub_100006140(v40, &qword_10002E300, &qword_10001ABE8);
}

uint64_t sub_10000AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for GlassButtonStyle();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000054DC(&qword_10002E340, &qword_10001AC08);
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v45);
  v11 = &v45 - v10;
  v12 = sub_1000054DC(&qword_10002E328, &qword_10001AC00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_1000054DC(&qword_10002E3A8, &qword_10001AC40);
  v46 = *(v16 - 8);
  v47 = v16;
  v17 = *(v46 + 64);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  v20 = sub_1000054DC(&qword_10002E320, &qword_10001ABF8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  v25 = swift_allocObject();
  v26 = *(a1 + 80);
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = v26;
  *(v25 + 112) = *(a1 + 96);
  *(v25 + 128) = *(a1 + 112);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  v28 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v28;
  sub_100012198(a1, v51);
  sub_1000054DC(&qword_10002E3B0, &qword_10001AC48);
  sub_100013040();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v15, v11, v45);
  v29 = &v15[*(v12 + 36)];
  v30 = v51[5];
  *(v29 + 4) = v51[4];
  *(v29 + 5) = v30;
  *(v29 + 6) = v51[6];
  v31 = v51[1];
  *v29 = v51[0];
  *(v29 + 1) = v31;
  v32 = v51[3];
  *(v29 + 2) = v51[2];
  *(v29 + 3) = v32;
  GlassButtonStyle.init()();
  sub_100012C9C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
  v33 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v7, v33);
  sub_100006140(v15, &qword_10002E328, &qword_10001AC00);
  v34 = &v24[*(v21 + 44)];
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #26.0 }

  *v34 = _Q0;
  *&v34[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v46 + 32))(v24, v19, v47);
  v43 = v50;
  sub_100005FF4(v24, v50, &qword_10002E320, &qword_10001ABF8);
  result = sub_1000054DC(&qword_10002E308, &qword_10001ABF0);
  *(v43 + *(result + 36)) = 0;
  return result;
}

__n128 sub_10000B000@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v41 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v41[0] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v42 = String.init(localized:table:bundle:locale:comment:)();
  *(&v42 + 1) = v15;
  sub_100006064();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v41[1] = v21;
  (*(v7 + 104))(v10, enum case for Font.TextStyle.body(_:), v6);
  v22 = enum case for Font.Design.default(_:);
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v5, v22, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v5, &qword_10002DC30, &qword_10001A220);
  (*(v7 + 8))(v10, v41[0]);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_1000060B8(v16, v18, v20 & 1);

  if (static Solarium.isEnabled.getter())
  {
    v30 = static Color.primary.getter();
  }

  else
  {
    v30 = static Color.blue.getter();
  }

  *&v42 = v30;
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1000060B8(v25, v27, v29 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v37;
  v38 = v47;
  *(a1 + 96) = v46;
  *(a1 + 112) = v38;
  *(a1 + 128) = v48;
  v39 = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = v39;
  result = v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000B448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = type metadata accessor for GlassButtonStyle();
  v57 = *(v56 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v56);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000054DC(&qword_10002E340, &qword_10001AC08);
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v53);
  v9 = &v51 - v8;
  v51 = sub_1000054DC(&qword_10002E328, &qword_10001AC00);
  v10 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v12 = &v51 - v11;
  v55 = sub_1000054DC(&qword_10002E3A8, &qword_10001AC40);
  v54 = *(v55 - 8);
  v13 = *(v54 + 64);
  __chkstk_darwin(v55);
  v52 = &v51 - v14;
  v15 = sub_1000054DC(&qword_10002E388, &qword_10001AC28);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = sub_1000054DC(&qword_10002E378, &qword_10001AC20);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v51 - v23;
  v25 = swift_allocObject();
  v26 = *(a1 + 80);
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = v26;
  *(v25 + 112) = *(a1 + 96);
  *(v25 + 128) = *(a1 + 112);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  v28 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v28;
  v59 = a1;
  sub_100012198(a1, v61);
  sub_1000054DC(&qword_10002E3B0, &qword_10001AC48);
  sub_100013040();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v6 + 32))(v12, v9, v53);
  v29 = &v12[*(v51 + 36)];
  v30 = v61[5];
  *(v29 + 4) = v61[4];
  *(v29 + 5) = v30;
  *(v29 + 6) = v61[6];
  v31 = v61[1];
  *v29 = v61[0];
  *(v29 + 1) = v31;
  v32 = v61[3];
  *(v29 + 2) = v61[2];
  *(v29 + 3) = v32;
  GlassButtonStyle.init()();
  sub_100012C9C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
  v33 = v52;
  v34 = v56;
  View.buttonStyle<A>(_:)();
  (*(v57 + 8))(v5, v34);
  sub_100006140(v12, &qword_10002E328, &qword_10001AC00);
  v35 = [objc_opt_self() tertiarySystemFillColor];
  v36 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v60 = v36;
  v38 = AnyShapeStyle.init<A>(_:)();
  (*(v54 + 32))(v19, v33, v55);
  v39 = &v19[*(v16 + 44)];
  *v39 = KeyPath;
  v39[1] = v38;
  v40 = &v24[*(v21 + 44)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #26.0 }

  *v40 = _Q0;
  *&v40[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  sub_100005FF4(v19, v24, &qword_10002E388, &qword_10001AC28);
  v49 = v58;
  sub_100005FF4(v24, v58, &qword_10002E378, &qword_10001AC20);
  result = sub_1000054DC(&qword_10002E360, &qword_10001AC18);
  *(v49 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000BA74(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 72);

    v2(v4);

    return sub_10000809C(v2);
  }

  return result;
}

uint64_t sub_10000BAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v53 = v51 - v6;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010001B540;
  v18._countAndFlagsBits = 0xD000000000000030;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    *&v54 = String.init(localized:table:bundle:locale:comment:)();
    *(&v54 + 1) = v20;
    sub_100006064();
    v21 = Text.init<A>(_:)();
    v51[1] = v22;
    v52 = v21;
    v24 = v23;
    v26 = v25;
    (*(v8 + 104))(v11, enum case for Font.TextStyle.body(_:), v7);
    v27 = enum case for Font.Design.default(_:);
    v28 = type metadata accessor for Font.Design();
    v29 = v7;
    v30 = *(v28 - 8);
    v31 = v53;
    (*(v30 + 104))(v53, v27, v28);
    (*(v30 + 56))(v31, 0, 1, v28);
    static Font.Weight.bold.getter();
    static Font.system(_:design:weight:)();
    sub_100006140(v31, &qword_10002DC30, &qword_10001A220);
    (*(v8 + 8))(v11, v29);
    v32 = v52;
    v33 = Text.font(_:)();
    v35 = v34;
    v37 = v36;

    sub_1000060B8(v32, v24, v26 & 1);

    if (static Solarium.isEnabled.getter())
    {
      v38 = static Color.primary.getter();
    }

    else
    {
      v38 = static Color.blue.getter();
    }

    *&v54 = v38;
    v39 = Text.foregroundStyle<A>(_:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_1000060B8(v33, v35, v37 & 1);

    static Alignment.center.getter();
    result = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v61 = v43 & 1;
    *a2 = v39;
    *(a2 + 8) = v41;
    *(a2 + 16) = v43 & 1;
    *(a2 + 24) = v45;
    v47 = v59;
    *(a2 + 96) = v58;
    *(a2 + 112) = v47;
    *(a2 + 128) = v60;
    v48 = v55;
    *(a2 + 32) = v54;
    *(a2 + 48) = v48;
    v49 = v57;
    *(a2 + 64) = v56;
    *(a2 + 80) = v49;
  }

  else
  {
    v50 = *(a1 + 24);
    type metadata accessor for ContactStoreVisualizer();
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C070(uint64_t a1)
{
  v2 = sub_1000054DC(&qword_10002E240, &qword_10001AB60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_1000054DC(&qword_10002E438, &qword_10001AD68);
  sub_10000C204(a1, &v5[*(v6 + 44)]);
  v9 = a1;
  sub_1000054DC(&qword_10002E248, &qword_10001AB68);
  sub_100006BF8(&qword_10002E250, &qword_10002E240, &qword_10001AB60);
  sub_100006BF8(&qword_10002E258, &qword_10002E248, &qword_10001AB68);
  View.toolbar<A>(content:)();
  return sub_100006140(v5, &qword_10002E240, &qword_10001AB60);
}

uint64_t sub_10000C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1000054DC(&qword_10002E4D0, &qword_10001ADF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v77 - v5;
  v80 = sub_1000054DC(&qword_10002E4D8, &qword_10001AE00);
  v7 = *(*(v80 - 8) + 64);
  v8 = __chkstk_darwin(v80);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v79 = &v77 - v11;
  __chkstk_darwin(v10);
  v83 = &v77 - v12;
  v84 = sub_1000054DC(&qword_10002E4E0, &qword_10001AE08);
  v82 = *(v84 - 8);
  v13 = *(v82 + 64);
  v14 = __chkstk_darwin(v84);
  v81 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v77 - v16;
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_1000054DC(&qword_10002E4E8, &qword_10001AE10);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v78 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = (&v77 - v28);
  v30 = static Color.clear.getter();
  v31 = v29 + *(sub_1000054DC(&qword_10002E298, &qword_10001AB88) + 36);
  static Material.thin.getter();
  v32 = static Edge.Set.all.getter();
  v31[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v32;
  *v29 = v30;
  v33 = static Edge.Set.top.getter();
  v34 = static SafeAreaRegions.all.getter();
  v35 = v29 + *(sub_1000054DC(&qword_10002E4F0, &qword_10001AE18) + 36);
  *v35 = v34;
  v35[8] = v33;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = *(v24 + 44);
  v87 = v29;
  v37 = (v29 + v36);
  v38 = v92;
  *v37 = v91;
  v37[1] = v38;
  v37[2] = v93;
  v94 = *(a1 + 80);
  v90 = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  if (v89 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39 < 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._countAndFlagsBits = 0xD00000000000001ELL;
    v40._object = 0x800000010001B650;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
    v90 = v94;
    State.wrappedValue.getter();
    if (v89 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v90 = v41;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  static Locale.current.getter();
  v43 = String.init(localized:table:bundle:locale:comment:)();
  v45 = v44;
  v46 = static Axis.Set.vertical.getter();
  __chkstk_darwin(v46);
  *(&v77 - 4) = a1;
  *(&v77 - 3) = v43;
  *(&v77 - 2) = v45;
  *(&v77 - 8) = v39 > 0;
  sub_1000054DC(&qword_10002E4F8, &qword_10001AE20);
  sub_100006BF8(&qword_10002E500, &qword_10002E4F8, &qword_10001AE20);
  v47 = v88;
  ScrollView.init(_:showsIndicators:content:)();

  v48 = static HorizontalAlignment.center.getter();
  v49 = 0x402E000000000000;
  if (*(a1 + 112))
  {
    v49 = 0x4024000000000000;
  }

  *v6 = v48;
  *(v6 + 1) = v49;
  v6[16] = 0;
  v50 = sub_1000054DC(&qword_10002E508, &qword_10001AE28);
  sub_10000E1D8(a1, v39 > 0, &v6[*(v50 + 44)]);
  v51 = [objc_opt_self() mainScreen];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v95.origin.x = v53;
  v95.origin.y = v55;
  v95.size.width = v57;
  v95.size.height = v59;
  if (CGRectGetHeight(v95) > 812.0)
  {
    v60 = 10.0;
  }

  else
  {
    v60 = 0.0;
  }

  v61 = static Edge.Set.all.getter();
  v62 = v79;
  sub_100005FF4(v6, v79, &qword_10002E4D0, &qword_10001ADF8);
  v63 = v62 + *(v80 + 36);
  *v63 = v61;
  *(v63 + 8) = v60;
  *(v63 + 16) = xmmword_10001A700;
  *(v63 + 32) = 0x4041800000000000;
  *(v63 + 40) = 0;
  v64 = v62;
  v65 = v83;
  sub_100005FF4(v64, v83, &qword_10002E4D8, &qword_10001AE00);
  v66 = v78;
  sub_1000060D8(v87, v78, &qword_10002E4E8, &qword_10001AE10);
  v67 = v82;
  v68 = *(v82 + 16);
  v69 = v81;
  v70 = v84;
  v68(v81, v47, v84);
  v71 = v85;
  sub_1000060D8(v65, v85, &qword_10002E4D8, &qword_10001AE00);
  v72 = v86;
  sub_1000060D8(v66, v86, &qword_10002E4E8, &qword_10001AE10);
  v73 = sub_1000054DC(&qword_10002E510, &qword_10001AE30);
  v68((v72 + v73[12]), v69, v70);
  v74 = v72 + v73[16];
  *v74 = 0;
  *(v74 + 8) = 1;
  sub_1000060D8(v71, v72 + v73[20], &qword_10002E4D8, &qword_10001AE00);
  sub_100006140(v65, &qword_10002E4D8, &qword_10001AE00);
  v75 = *(v67 + 8);
  v75(v88, v70);
  sub_100006140(v87, &qword_10002E4E8, &qword_10001AE10);
  sub_100006140(v71, &qword_10002E4D8, &qword_10001AE00);
  v75(v69, v70);
  return sub_100006140(v66, &qword_10002E4E8, &qword_10001AE10);
}

uint64_t sub_10000CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *&v119 = a3;
  v116 = a2;
  v122 = a5;
  v113 = sub_1000054DC(&qword_10002E3C0, &qword_10001AC88);
  v7 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v115 = &v108 - v8;
  v114 = sub_1000054DC(&qword_10002E3C8, &qword_10001AC90);
  v9 = *(*(v114 - 8) + 64);
  v10 = __chkstk_darwin(v114);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v108 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v108 - v17;
  __chkstk_darwin(v16);
  v20 = &v108 - v19;
  v21 = sub_1000054DC(&qword_10002E3D0, &qword_10001AC98);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = *(a1 + 112);
  v120 = &v108 - v26;
  v118 = a1;
  v117 = a4;
  if (v25)
  {
    v125 = *(a1 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v27 = *v124;
    v125 = *(a1 + 80);
    State.wrappedValue.getter();
    if (*v124 >> 62)
    {
      v112 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v112 = *((*v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = [objc_opt_self() mainScreen];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v160.origin.x = v30;
    v160.origin.y = v32;
    v160.size.width = v34;
    v160.size.height = v36;
    v111 = CGRectGetHeight(v160) <= 812.0;
    v37 = [objc_opt_self() currentDevice];
    v38 = [v37 userInterfaceIdiom];

    v39 = v38 == 1;
    *&v125 = sub_1000125A8(v27);
    sub_100012404();
    v40 = v125;
    LOBYTE(v37) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v125) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v123[55] = v156;
    *&v123[71] = v157;
    *&v123[87] = v158;
    *&v123[103] = v159;
    *&v123[7] = v153;
    *&v123[23] = v154;
    v49 = &v18[*(v114 + 36)];
    *&v123[39] = v155;
    static Material.thin.getter();
    v50 = static Edge.Set.all.getter();
    v49[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v50;
    *v18 = 2;
    v51 = v112;
    *(v18 + 1) = v40;
    *(v18 + 2) = v51;
    v18[24] = v111;
    v18[25] = v39;
    v18[32] = v37;
    *(v18 + 5) = v42;
    *(v18 + 6) = v44;
    *(v18 + 7) = v46;
    *(v18 + 8) = v48;
    v18[72] = 0;
    v52 = *&v123[32];
    *(v18 + 121) = *&v123[48];
    *(v18 + 105) = v52;
    v53 = *v123;
    *(v18 + 89) = *&v123[16];
    *(v18 + 73) = v53;
    *(v18 + 23) = *&v123[111];
    v54 = *&v123[80];
    *(v18 + 169) = *&v123[96];
    v55 = *&v123[64];
    *(v18 + 153) = v54;
    *(v18 + 137) = v55;
    sub_100005FF4(v18, v20, &qword_10002E3C8, &qword_10001AC90);
    sub_1000060D8(v20, v115, &qword_10002E3C8, &qword_10001AC90);
    swift_storeEnumTagMultiPayload();
    sub_10001311C();
    v56 = v120;
    _ConditionalContent<>.init(storage:)();
    v57 = v20;
  }

  else
  {
    v125 = *(a1 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v109 = *v124;
    v125 = *(a1 + 80);
    State.wrappedValue.getter();
    if (*v124 >> 62)
    {
      v112 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v112 = *((*v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = objc_opt_self();
    v59 = [v58 mainScreen];
    [v59 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v161.origin.x = v61;
    v161.origin.y = v63;
    v161.size.width = v65;
    v161.size.height = v67;
    v111 = CGRectGetHeight(v161) <= 812.0;
    v68 = [objc_opt_self() currentDevice];
    v69 = [v68 userInterfaceIdiom];

    v110 = v69 == 1;
    *&v125 = sub_1000125A8(v109);
    sub_100012404();
    v109 = v125;
    v70 = [v58 mainScreen];
    [v70 bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v162.origin.x = v72;
    v162.origin.y = v74;
    v162.size.width = v76;
    v162.size.height = v78;
    if (CGRectGetHeight(v162) > 812.0)
    {
      v79 = 5.0;
    }

    else
    {
      v79 = 25.0;
    }

    v80 = static Edge.Set.all.getter();
    LOBYTE(v125) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v152[55] = v156;
    *&v152[71] = v157;
    *&v152[87] = v158;
    *&v152[103] = v159;
    *&v152[7] = v153;
    *&v152[23] = v154;
    v81 = &v12[*(v114 + 36)];
    *&v152[39] = v155;
    static Material.thin.getter();
    v82 = static Edge.Set.all.getter();
    v81[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v82;
    *v12 = 2;
    v83 = v112;
    *(v12 + 1) = v109;
    *(v12 + 2) = v83;
    LOBYTE(v83) = v110;
    v12[24] = v111;
    v12[25] = v83;
    v12[32] = v80;
    *(v12 + 40) = xmmword_10001A6E0;
    *(v12 + 7) = v79;
    *(v12 + 8) = 0x4039000000000000;
    v12[72] = 0;
    v84 = *&v152[32];
    *(v12 + 121) = *&v152[48];
    *(v12 + 105) = v84;
    v85 = *v152;
    *(v12 + 89) = *&v152[16];
    *(v12 + 73) = v85;
    *(v12 + 23) = *&v152[111];
    v86 = *&v152[80];
    *(v12 + 169) = *&v152[96];
    v87 = *&v152[64];
    *(v12 + 153) = v86;
    *(v12 + 137) = v87;
    sub_100005FF4(v12, v15, &qword_10002E3C8, &qword_10001AC90);
    sub_1000060D8(v15, v115, &qword_10002E3C8, &qword_10001AC90);
    swift_storeEnumTagMultiPayload();
    sub_10001311C();
    v56 = v120;
    _ConditionalContent<>.init(storage:)();
    v57 = v15;
  }

  sub_100006140(v57, &qword_10002E3C8, &qword_10001AC90);
  v88 = v117;
  v89 = static HorizontalAlignment.leading.getter();
  v133 = 1;
  sub_10000D768(&v125, v116, v119, v118, v88 & 1);
  v147 = *&v126[176];
  v148 = *&v126[192];
  v149 = *&v126[208];
  v150 = *&v126[224];
  v143 = *&v126[112];
  v144 = *&v126[128];
  v145 = *&v126[144];
  v146 = *&v126[160];
  v139 = *&v126[48];
  v140 = *&v126[64];
  v141 = *&v126[80];
  v142 = *&v126[96];
  v135 = v125;
  v136 = *v126;
  v137 = *&v126[16];
  v138 = *&v126[32];
  v151[12] = *&v126[176];
  v151[13] = *&v126[192];
  v151[14] = *&v126[208];
  v151[15] = *&v126[224];
  v151[8] = *&v126[112];
  v151[9] = *&v126[128];
  v151[10] = *&v126[144];
  v151[11] = *&v126[160];
  v151[4] = *&v126[48];
  v151[5] = *&v126[64];
  v151[6] = *&v126[80];
  v151[7] = *&v126[96];
  v151[0] = v125;
  v151[1] = *v126;
  v151[2] = *&v126[16];
  v151[3] = *&v126[32];
  sub_1000060D8(&v135, v124, &qword_10002E610, &qword_10001AEC8);
  sub_100006140(v151, &qword_10002E610, &qword_10001AEC8);
  *&v132[199] = v147;
  *&v132[215] = v148;
  *&v132[231] = v149;
  *&v132[247] = v150;
  *&v132[135] = v143;
  *&v132[151] = v144;
  *&v132[167] = v145;
  *&v132[183] = v146;
  *&v132[71] = v139;
  *&v132[87] = v140;
  *&v132[103] = v141;
  *&v132[119] = v142;
  *&v132[7] = v135;
  *&v132[23] = v136;
  *&v132[39] = v137;
  *&v132[55] = v138;
  v90 = v133;
  v91 = [objc_opt_self() mainScreen];
  [v91 bounds];
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;

  v163.origin.x = v93;
  v163.origin.y = v95;
  v163.size.width = v97;
  v163.size.height = v99;
  if (CGRectGetHeight(v163) > 812.0)
  {
    v100 = 10.0;
  }

  else
  {
    v100 = 0.0;
  }

  v101 = static Edge.Set.all.getter();
  v134 = 0;
  v102 = v121;
  sub_1000060D8(v56, v121, &qword_10002E3D0, &qword_10001AC98);
  v103 = v122;
  sub_1000060D8(v102, v122, &qword_10002E3D0, &qword_10001AC98);
  v104 = sub_1000054DC(&qword_10002E618, &qword_10001AED0);
  v105 = v103 + *(v104 + 48);
  *v105 = 0;
  *(v105 + 8) = 1;
  v106 = *(v104 + 64);
  *v124 = v89;
  *&v124[8] = 0;
  v124[16] = v90;
  memcpy(&v124[17], v132, 0x107uLL);
  v124[280] = v101;
  *&v124[288] = v100;
  *&v124[296] = 0x4041800000000000;
  v119 = xmmword_10001A710;
  *&v124[304] = xmmword_10001A710;
  v124[320] = 0;
  memcpy((v103 + v106), v124, 0x141uLL);
  sub_1000060D8(v124, &v125, &qword_10002E620, &qword_10001AED8);
  sub_100006140(v56, &qword_10002E3D0, &qword_10001AC98);
  v125 = v89;
  v126[0] = v90;
  memcpy(&v126[1], v132, 0x107uLL);
  v127 = v101;
  v128 = v100;
  v129 = 0x4041800000000000;
  v130 = v119;
  v131 = 0;
  sub_100006140(&v125, &qword_10002E620, &qword_10001AED8);
  return sub_100006140(v102, &qword_10002E3D0, &qword_10001AC98);
}

uint64_t sub_10000E1D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v39 = a3;
  v38 = sub_1000054DC(&qword_10002E518, &qword_10001AE38);
  v5 = *(v38 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v38);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_1000054DC(&qword_10002E520, &qword_10001AE40);
  v36 = *(v11 - 8);
  v12 = v36;
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v42 = a1;
  v43 = a2;
  sub_1000054DC(&qword_10002E528, &qword_10001AE48);
  sub_1000137C8();
  v35 = v18;
  _GlassEffectContainer.init(smoothness:content:)();
  v40 = a2;
  v41 = a1;
  sub_1000054DC(&qword_10002E578, &qword_10001AE70);
  sub_100013AEC();
  v19 = v10;
  v33 = v10;
  _GlassEffectContainer.init(smoothness:content:)();
  v20 = *(v12 + 16);
  v34 = v16;
  v20(v16, v18, v11);
  v21 = v5[2];
  v22 = v37;
  v23 = v19;
  v24 = v38;
  v21(v37, v23, v38);
  v25 = v39;
  v26 = v16;
  v27 = v11;
  v20(v39, v26, v11);
  v28 = sub_1000054DC(&qword_10002E5B8, &qword_10001AE90);
  v21(&v25[*(v28 + 48)], v22, v24);
  v29 = v5[1];
  v29(v33, v24);
  v30 = *(v36 + 8);
  v30(v35, v27);
  v29(v22, v24);
  return (v30)(v34, v27);
}

uint64_t sub_10000E530@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v65 = a3;
  v63 = type metadata accessor for GlassButtonStyle();
  v64 = *(v63 - 8);
  v4 = *(v64 + 64);
  __chkstk_darwin(v63);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1000054DC(&qword_10002E570, &qword_10001AE68);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v10 = &v56[-v9];
  v11 = sub_1000054DC(&qword_10002E560, &qword_10001AE60);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v56[-v14];
  v59 = sub_1000054DC(&qword_10002E548, &qword_10001AE58);
  v16 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v18 = &v56[-v17];
  v62 = sub_1000054DC(&qword_10002E5F8, &qword_10001AEB8);
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  __chkstk_darwin(v62);
  v58 = &v56[-v20];
  v21 = sub_1000054DC(&qword_10002E540, &qword_10001AE50);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v56[-v24];
  v26 = swift_allocObject();
  v27 = *(a1 + 80);
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = v27;
  *(v26 + 112) = *(a1 + 96);
  *(v26 + 128) = *(a1 + 112);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  v29 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v29;
  v66 = v57;
  v67 = a1;
  sub_100012198(a1, v68);
  sub_1000054DC(&qword_10002E600, &qword_10001AEC0);
  sub_100013FC4();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v7 + 32))(v15, v10, v60);
  v30 = &v15[*(v12 + 44)];
  v31 = v68[5];
  v30[4] = v68[4];
  v30[5] = v31;
  v30[6] = v68[6];
  v32 = v68[1];
  *v30 = v68[0];
  v30[1] = v32;
  v33 = v68[3];
  v30[2] = v68[2];
  v30[3] = v33;
  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100005FF4(v15, v18, &qword_10002E560, &qword_10001AE60);
  v42 = &v18[*(v59 + 36)];
  *v42 = v12;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  GlassButtonStyle.init()();
  sub_10001399C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
  v43 = v58;
  v44 = v63;
  View.buttonStyle<A>(_:)();
  (*(v64 + 8))(v6, v44);
  sub_100006140(v18, &qword_10002E548, &qword_10001AE58);
  v45 = &v25[*(v22 + 44)];
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #26.0 }

  *v45 = _Q0;
  *&v45[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v61 + 32))(v25, v43, v62);
  v54 = v65;
  sub_100005FF4(v25, v65, &qword_10002E540, &qword_10001AE50);
  result = sub_1000054DC(&qword_10002E528, &qword_10001AE48);
  *(v54 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000EB64(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = *(result + 80);

    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v2();
    sub_10000809C(v2);
  }

  return result;
}

__n128 sub_10000EBF8@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v48 - v8;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  if (a1)
  {
    v58 = *(a2 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    if (v51.n128_u64[0] >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v51.n128_u64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v58 = String.init(localized:table:bundle:locale:comment:)();
  *(&v58 + 1) = v19;
  sub_100006064();
  v49 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v48 = v24;
  (*(v10 + 104))(v13, enum case for Font.TextStyle.body(_:), v9);
  v25 = enum case for Font.Design.default(_:);
  v26 = type metadata accessor for Font.Design();
  v27 = v9;
  v28 = *(v26 - 8);
  v29 = v50;
  (*(v28 + 104))(v50, v25, v26);
  (*(v28 + 56))(v29, 0, 1, v26);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v29, &qword_10002DC30, &qword_10001A220);
  (*(v10 + 8))(v13, v27);
  v30 = v49;
  v31 = Text.font(_:)();
  v50 = v32;
  v34 = v33;
  v36 = v35;

  sub_1000060B8(v30, v21, v23 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 &= 1u;
  v65 = v34;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v61;
  v38 = v63;
  v39 = v64;
  *(a3 + 96) = v62;
  *(a3 + 112) = v38;
  v40 = v59;
  v41 = v60;
  *(a3 + 32) = v58;
  *(a3 + 48) = v40;
  *(a3 + 64) = v41;
  *(a3 + 80) = v37;
  v42 = v55;
  v43 = v53;
  *(a3 + 192) = v54;
  *(a3 + 208) = v42;
  v44 = v57;
  *(a3 + 224) = v56;
  *(a3 + 240) = v44;
  result = v51;
  v46 = v52;
  *(a3 + 128) = v39;
  *(a3 + 144) = result;
  v47 = v50;
  *a3 = v31;
  *(a3 + 8) = v47;
  *(a3 + 16) = v34;
  *(a3 + 24) = v36;
  *(a3 + 160) = v46;
  *(a3 + 176) = v43;
  return result;
}

uint64_t sub_10000F148@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v49 = type metadata accessor for GlassButtonStyle();
  v50 = *(v49 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v49);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000054DC(&qword_10002E5B0, &qword_10001AE88);
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v46);
  v11 = &v44 - v10;
  v12 = sub_1000054DC(&qword_10002E598, &qword_10001AE80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v48 = sub_1000054DC(&qword_10002E5C0, &qword_10001AE98);
  v47 = *(v48 - 8);
  v16 = *(v47 + 64);
  __chkstk_darwin(v48);
  v45 = &v44 - v17;
  v18 = sub_1000054DC(&qword_10002E590, &qword_10001AE78);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = swift_allocObject();
  v24 = *(a2 + 80);
  *(v23 + 88) = *(a2 + 64);
  *(v23 + 104) = v24;
  *(v23 + 120) = *(a2 + 96);
  v25 = *(a2 + 16);
  *(v23 + 24) = *a2;
  *(v23 + 40) = v25;
  v26 = *(a2 + 48);
  *(v23 + 56) = *(a2 + 32);
  *(v23 + 16) = a1;
  *(v23 + 136) = *(a2 + 112);
  *(v23 + 72) = v26;
  v52 = a1;
  sub_100012198(a2, v53);
  sub_1000054DC(&qword_10002E5C8, &qword_10001AEA0);
  sub_100013DFC();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v15, v11, v46);
  v27 = &v15[*(v12 + 36)];
  v28 = v53[5];
  *(v27 + 4) = v53[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = v53[6];
  v29 = v53[1];
  *v27 = v53[0];
  *(v27 + 1) = v29;
  v30 = v53[3];
  *(v27 + 2) = v53[2];
  *(v27 + 3) = v30;
  GlassButtonStyle.init()();
  sub_100013CC0();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
  v31 = v45;
  v32 = v49;
  View.buttonStyle<A>(_:)();
  (*(v50 + 8))(v7, v32);
  sub_100006140(v15, &qword_10002E598, &qword_10001AE80);
  v33 = &v22[*(v19 + 44)];
  v34 = *(type metadata accessor for RoundedRectangle() + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #26.0 }

  *v33 = _Q0;
  *&v33[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v47 + 32))(v22, v31, v48);
  v42 = v51;
  sub_100005FF4(v22, v51, &qword_10002E590, &qword_10001AE78);
  result = sub_1000054DC(&qword_10002E578, &qword_10001AE70);
  *(v42 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000F6AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 8);
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);

      v3(&_swiftEmptyArrayStorage);

      return sub_10000809C(v3);
    }
  }

  else
  {
    v5 = *(a2 + 48);
    sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
    return State.wrappedValue.setter();
  }

  return result;
}

__n128 sub_10000F758@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v53 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v15;
  sub_100006064();
  v42 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v41 = v20;
  (*(v7 + 104))(v10, enum case for Font.TextStyle.body(_:), v6);
  v21 = v6;
  v22 = enum case for Font.Design.default(_:);
  v23 = v7;
  v24 = type metadata accessor for Font.Design();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v5, v22, v24);
  (*(v25 + 56))(v5, 0, 1, v24);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v5, &qword_10002DC30, &qword_10001A220);
  (*(v23 + 8))(v10, v21);
  v26 = v42;
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1000060B8(v26, v17, v19 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v53) = v31 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (static Solarium.isEnabled.getter())
  {
    v34 = static Color.primary.getter();
  }

  else
  {
    v34 = static Color.blue.getter();
  }

  v35 = v51;
  v36 = v52;
  *(a1 + 96) = v50;
  *(a1 + 112) = v35;
  v37 = v47;
  *(a1 + 32) = v46;
  *(a1 + 48) = v37;
  v38 = v49;
  *(a1 + 64) = v48;
  *(a1 + 80) = v38;
  result = v45;
  v40 = v43;
  *(a1 + 160) = v44;
  *(a1 + 176) = result;
  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v33;
  *(a1 + 128) = v36;
  *(a1 + 144) = v40;
  *(a1 + 192) = v34;
  return result;
}

uint64_t sub_10000FBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_1000054DC(&qword_10002E440, &qword_10001AD70);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v5 = &v25 - v4;
  v26 = sub_1000054DC(&qword_10002E448, &qword_10001AD78);
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v26);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v25 = sub_1000054DC(&qword_10002E450, &qword_10001AD80);
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v25);
  v15 = &v25 - v14;
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v30 = a1;
  sub_1000054DC(&qword_10002E458, &qword_10001AD88);
  sub_100006BF8(&qword_10002E460, &qword_10002E458, &qword_10001AD88);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v29 = a1;
  sub_1000054DC(&qword_10002E468, &qword_10001AD90);
  v16 = sub_1000059E8(&qword_10002E470, &qword_10001AD98);
  v17 = sub_1000059E8(&qword_10002E478, &qword_10001ADA0);
  v18 = sub_100013468();
  v19 = sub_10001354C();
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v20 = *(v27 + 48);
  v21 = v25;
  (*(v12 + 16))(v5, v15, v25);
  v22 = &v5[v20];
  v23 = v26;
  (*(v6 + 16))(v22, v9, v26);
  TupleToolbarContent.init(_:)();
  (*(v6 + 8))(v9, v23);
  return (*(v12 + 8))(v15, v21);
}

uint64_t sub_10000FF7C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_100012198(a1, v7);
  sub_1000054DC(&qword_10002E4C0, &qword_10001ADF0);
  sub_100006BF8(&qword_10002E4C8, &qword_10002E4C0, &qword_10001ADF0);
  return Button.init(action:label:)();
}

uint64_t sub_10001008C@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  result = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000100E0(uint64_t a1)
{
  v2 = sub_1000054DC(&qword_10002E470, &qword_10001AD98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - v4;
  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = *(a1 + 112);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  v9 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v9;
  sub_100012198(a1, &v25);
  sub_1000054DC(&qword_10002E4B0, &qword_10001ADB8);
  sub_100006BF8(&qword_10002E4B8, &qword_10002E4B0, &qword_10001ADB8);
  Button.init(action:label:)();
  v25 = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  if (v24 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v10 == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = &v5[*(v2 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_1000136CC;
  v14[2] = v13;
  v24 = *(a1 + 64);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  State.projectedValue.getter();
  v15 = swift_allocObject();
  v16 = *(a1 + 80);
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(a1 + 96);
  *(v15 + 128) = *(a1 + 112);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  v18 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v18;
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 96);
  *(v19 + 128) = *(a1 + 112);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v22;
  sub_100012198(a1, &v25);
  sub_100012198(a1, &v25);
  sub_1000054DC(&qword_10002E478, &qword_10001ADA0);
  sub_100013468();
  sub_10001354C();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_100006140(v5, &qword_10002E470, &qword_10001AD98);
}

double sub_100010488@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = static VerticalAlignment.center.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100006064();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = static Edge.Set.all.getter();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11 & 1;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  result = 0.0;
  *(a1 + 64) = xmmword_10001A720;
  *(a1 + 80) = xmmword_10001A720;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_10001060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  v4 = v17;
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  v17 = v4;
  v18 = sub_100013748;
  v19 = v5;
  sub_1000054DC(&qword_10002E1F8, &qword_10001AB28);
  v9 = *(type metadata accessor for PresentationDetent() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001A730;
  sub_100012198(a1, v16);
  static PresentationDetent.large.getter();
  static PresentationDetent.large.getter();
  sub_100012650(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100013604();
  View.presentationDetents(_:)();

  LOBYTE(v12) = static Edge.Set.bottom.getter();
  v13 = static SafeAreaRegions.all.getter();
  result = sub_1000054DC(&qword_10002E478, &qword_10001ADA0);
  v15 = a2 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = v12;
  return result;
}

uint64_t sub_100010828(unint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (a1 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v5, v6, "LimitedAccess show selected view chose: %ld contacts", v7, 0xCu);
  }

  else
  {
  }

  v10 = *(a2 + 80);

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000109A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v6 = v4[2];
  v5 = v4[3];
  v8 = v4[4];
  v7 = v4[5];
  v24[0] = *(a1 + 80);

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 96);
  *(v9 + 128) = *(a1 + 112);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 80);
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 96);
  *(v13 + 128) = *(a1 + 112);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  v16 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v16;
  *&v26 = v6;
  *(&v26 + 1) = v5;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  *(&v28 + 1) = sub_1000122E4;
  *&v29 = v9;
  *(&v29 + 1) = sub_1000122EC;
  v30 = v13;
  sub_1000054DC(&qword_10002E1F8, &qword_10001AB28);
  v17 = *(type metadata accessor for PresentationDetent() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001A730;
  sub_100012198(a1, v24);
  sub_100012198(a1, v24);
  static PresentationDetent.large.getter();
  static PresentationDetent.large.getter();
  sub_100012650(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012288();
  View.presentationDetents(_:)();

  v24[2] = v28;
  v24[3] = v29;
  v25 = v30;
  v24[0] = v26;
  v24[1] = v27;
  sub_100012978(v24);
  LOBYTE(v9) = static Edge.Set.bottom.getter();
  v21 = static SafeAreaRegions.all.getter();
  result = sub_1000054DC(&qword_10002E1C8, &qword_10001AB10);
  v23 = a2 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = v9;
  return result;
}

uint64_t sub_100010C58(unint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "LimitedAccess picker chose: %ld contacts", v8, 0xCu);
  }

  else
  {
  }

  v14 = *(a2 + 80);

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.setter();
  if (v7)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
LABEL_10:
      v15 = *(a2 + 32);
      sub_1000054DC(&qword_10002E218, &qword_10001AB38);
      return State.wrappedValue.setter();
    }
  }

  v11 = *(a2 + 8);
  v12 = *(v11 + 48);
  if (v12)
  {
    v13 = *(v11 + 56);

    v12(&_swiftEmptyArrayStorage);
    return sub_10000809C(v12);
  }

  return result;
}

uint64_t sub_100010E68(uint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005590(v3, qword_10002F570);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "LimitedAccess picker chose to go back to start", v6, 2u);
  }

  v8 = *(a2 + 80);

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.setter();
  v9 = *(a2 + 32);
  sub_1000054DC(&qword_10002E218, &qword_10001AB38);
  return State.wrappedValue.setter();
}

uint64_t sub_100010FC0(void *a1)
{
  if (a1[2])
  {
    v1 = a1[1];
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = a1[2];

    sub_100006DEC(v2, v3);
  }

  else
  {
    v6 = a1[3];
    type metadata accessor for ContactStoreVisualizer();
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001108C@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 112);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1000080C4(a1);
}

uint64_t sub_1000110E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactStoreVisualizer();
  sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer);

  v3 = EnvironmentObject.init()();
  v16 = v4;
  v17 = v3;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  sub_100012D54(&unk_10002E890, v5, type metadata accessor for ContactsLimitedAccessPromptViewObservable);
  v6 = ObservedObject.init(wrappedValue:)();
  v14 = v7;
  v15 = v6;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  result = static ObservableObject.environmentStore.getter();
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v17;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v9 == 1;
  *(a1 + 120) = result;
  *(a1 + 128) = v12;
  return result;
}

__n128 sub_1000113A0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_1000110E0(v8);
  v4 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v4;
  *(a1 + 128) = v9;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001140C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001148C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100011508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001158C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100011604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001164C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001170C;

  return sub_100007078(a1, v4, v5, v7, v6);
}

uint64_t sub_10001170C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100011800(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000118F8;

  return v7(a1);
}

uint64_t sub_1000118F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000119F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011A28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000141B4;

  return sub_100011800(a1, v5);
}

uint64_t sub_100011AE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001170C;

  return sub_100011800(a1, v5);
}

unint64_t sub_100011B98()
{
  result = qword_10002E140;
  if (!qword_10002E140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002E140);
  }

  return result;
}

uint64_t sub_100011BE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011C1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100011C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100007830();
}

uint64_t sub_100011C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100011C84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100011C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100011CD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for OnboardingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100011E9C(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100011EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100011F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100011F84()
{
  result = qword_10002E170;
  if (!qword_10002E170)
  {
    sub_1000059E8(&qword_10002E178, &qword_10001AA28);
    sub_100012008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E170);
  }

  return result;
}

unint64_t sub_100012008()
{
  result = qword_10002E180;
  if (!qword_10002E180)
  {
    sub_1000059E8(&qword_10002E188, &qword_10001AA30);
    sub_1000120C0();
    sub_100006BF8(&qword_10002E198, &qword_10002E1A0, &qword_10001AA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E180);
  }

  return result;
}

unint64_t sub_1000120C0()
{
  result = qword_10002E190;
  if (!qword_10002E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E190);
  }

  return result;
}

unint64_t sub_100012134()
{
  result = qword_10002E1A8;
  if (!qword_10002E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1A8);
  }

  return result;
}

unint64_t sub_1000121D0()
{
  result = qword_10002E1D8;
  if (!qword_10002E1D8)
  {
    sub_1000059E8(&qword_10002E1C8, &qword_10001AB10);
    sub_100012288();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1D8);
  }

  return result;
}

unint64_t sub_100012288()
{
  result = qword_10002E1E0;
  if (!qword_10002E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1E0);
  }

  return result;
}

uint64_t sub_1000122F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100012328(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100012358@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000123B0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

void sub_100012404()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      swift_stdlib_random();
      v5 = (0 * v1) >> 64;
      if (v1)
      {
        if (-v1 % v1)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_20;
        }

        if (v7 >= v9)
        {
          goto LABEL_21;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10001263C(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        specialized ContiguousArray._endMutation()();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_10001263C(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        specialized ContiguousArray._endMutation()();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_1000125A8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100005454(v3, 0);
  sub_100005844(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100012650(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000054DC(&qword_10002E200, &qword_10001AB30);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100012D54(&qword_10002E208, 255, &type metadata accessor for PresentationDetent);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100012D54(&qword_10002E210, 255, &type metadata accessor for PresentationDetent);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_1000129D4()
{
  result = qword_10002E260;
  if (!qword_10002E260)
  {
    sub_1000059E8(&qword_10002E230, &qword_10001AB50);
    sub_100006BF8(&qword_10002E268, &qword_10002E270, &qword_10001AB70);
    sub_100006BF8(&qword_10002E278, &qword_10002E280, &qword_10001AB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E260);
  }

  return result;
}

unint64_t sub_100012AC8()
{
  result = qword_10002E310;
  if (!qword_10002E310)
  {
    sub_1000059E8(&qword_10002E308, &qword_10001ABF0);
    sub_100012B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E310);
  }

  return result;
}

unint64_t sub_100012B54()
{
  result = qword_10002E318;
  if (!qword_10002E318)
  {
    sub_1000059E8(&qword_10002E320, &qword_10001ABF8);
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    type metadata accessor for GlassButtonStyle();
    sub_100012C9C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E318);
  }

  return result;
}

unint64_t sub_100012C9C()
{
  result = qword_10002E330;
  if (!qword_10002E330)
  {
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    sub_100006BF8(&qword_10002E338, &qword_10002E340, &qword_10001AC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E330);
  }

  return result;
}

uint64_t sub_100012D54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100012DA4()
{
  result = qword_10002E368;
  if (!qword_10002E368)
  {
    sub_1000059E8(&qword_10002E360, &qword_10001AC18);
    sub_100012E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E368);
  }

  return result;
}

unint64_t sub_100012E30()
{
  result = qword_10002E370;
  if (!qword_10002E370)
  {
    sub_1000059E8(&qword_10002E378, &qword_10001AC20);
    sub_100012EE8();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E370);
  }

  return result;
}

unint64_t sub_100012EE8()
{
  result = qword_10002E380;
  if (!qword_10002E380)
  {
    sub_1000059E8(&qword_10002E388, &qword_10001AC28);
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    type metadata accessor for GlassButtonStyle();
    sub_100012C9C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E390, &qword_10002E398, &qword_10001AC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E380);
  }

  return result;
}

unint64_t sub_100013040()
{
  result = qword_10002E3B8;
  if (!qword_10002E3B8)
  {
    sub_1000059E8(&qword_10002E3B0, &qword_10001AC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3B8);
  }

  return result;
}

uint64_t sub_1000130C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000130F0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

unint64_t sub_10001311C()
{
  result = qword_10002E3D8;
  if (!qword_10002E3D8)
  {
    sub_1000059E8(&qword_10002E3C8, &qword_10001AC90);
    sub_1000131D4();
    sub_100006BF8(&qword_10002E408, &qword_10002E2A0, &qword_10001AB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3D8);
  }

  return result;
}

unint64_t sub_1000131D4()
{
  result = qword_10002E3E0;
  if (!qword_10002E3E0)
  {
    sub_1000059E8(&qword_10002E3E8, &qword_10001ACA0);
    sub_100013260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3E0);
  }

  return result;
}

unint64_t sub_100013260()
{
  result = qword_10002E3F0;
  if (!qword_10002E3F0)
  {
    sub_1000059E8(&qword_10002E3F8, &qword_10001ACA8);
    sub_1000132EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3F0);
  }

  return result;
}

unint64_t sub_1000132EC()
{
  result = qword_10002E400;
  if (!qword_10002E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E400);
  }

  return result;
}

uint64_t sub_100013340@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100013398@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000133EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100013420(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_100013468()
{
  result = qword_10002E480;
  if (!qword_10002E480)
  {
    sub_1000059E8(&qword_10002E470, &qword_10001AD98);
    sub_100006BF8(&qword_10002E488, &qword_10002E490, &qword_10001ADA8);
    sub_100006BF8(&qword_10002E498, &qword_10002E4A0, &qword_10001ADB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E480);
  }

  return result;
}

unint64_t sub_10001354C()
{
  result = qword_10002E4A8;
  if (!qword_10002E4A8)
  {
    sub_1000059E8(&qword_10002E478, &qword_10001ADA0);
    sub_100013604();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4A8);
  }

  return result;
}

unint64_t sub_100013604()
{
  result = qword_10002EA40;
  if (!qword_10002EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA40);
  }

  return result;
}

uint64_t sub_100013664@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000136EC()
{
  v2 = *(v0 + 80);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  return State.wrappedValue.setter();
}

uint64_t sub_100013758()
{
  v2 = *(v0 + 64);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  return State.wrappedValue.setter();
}

unint64_t sub_1000137C8()
{
  result = qword_10002E530;
  if (!qword_10002E530)
  {
    sub_1000059E8(&qword_10002E528, &qword_10001AE48);
    sub_100013854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E530);
  }

  return result;
}

unint64_t sub_100013854()
{
  result = qword_10002E538;
  if (!qword_10002E538)
  {
    sub_1000059E8(&qword_10002E540, &qword_10001AE50);
    sub_1000059E8(&qword_10002E548, &qword_10001AE58);
    type metadata accessor for GlassButtonStyle();
    sub_10001399C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E538);
  }

  return result;
}

unint64_t sub_10001399C()
{
  result = qword_10002E550;
  if (!qword_10002E550)
  {
    sub_1000059E8(&qword_10002E548, &qword_10001AE58);
    sub_100013A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E550);
  }

  return result;
}

unint64_t sub_100013A28()
{
  result = qword_10002E558;
  if (!qword_10002E558)
  {
    sub_1000059E8(&qword_10002E560, &qword_10001AE60);
    sub_100006BF8(&qword_10002E568, &qword_10002E570, &qword_10001AE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E558);
  }

  return result;
}

unint64_t sub_100013AEC()
{
  result = qword_10002E580;
  if (!qword_10002E580)
  {
    sub_1000059E8(&qword_10002E578, &qword_10001AE70);
    sub_100013B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E580);
  }

  return result;
}

unint64_t sub_100013B78()
{
  result = qword_10002E588;
  if (!qword_10002E588)
  {
    sub_1000059E8(&qword_10002E590, &qword_10001AE78);
    sub_1000059E8(&qword_10002E598, &qword_10001AE80);
    type metadata accessor for GlassButtonStyle();
    sub_100013CC0();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E588);
  }

  return result;
}

unint64_t sub_100013CC0()
{
  result = qword_10002E5A0;
  if (!qword_10002E5A0)
  {
    sub_1000059E8(&qword_10002E598, &qword_10001AE80);
    sub_100006BF8(&qword_10002E5A8, &qword_10002E5B0, &qword_10001AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5A0);
  }

  return result;
}

uint64_t sub_100013D78()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  return _swift_deallocObject(v0, 137, 7);
}

double sub_100013DF4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_10000F758(a1).n128_u64[0];
  return result;
}

unint64_t sub_100013DFC()
{
  result = qword_10002E5D0;
  if (!qword_10002E5D0)
  {
    sub_1000059E8(&qword_10002E5C8, &qword_10001AEA0);
    sub_100013EB4();
    sub_100006BF8(&qword_10002E5E8, &qword_10002E5F0, &qword_10001AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5D0);
  }

  return result;
}

unint64_t sub_100013EB4()
{
  result = qword_10002E5D8;
  if (!qword_10002E5D8)
  {
    sub_1000059E8(&qword_10002E5E0, &qword_10001AEA8);
    sub_100013040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5D8);
  }

  return result;
}

uint64_t sub_100013F40()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[15];

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_100013FC4()
{
  result = qword_10002E608;
  if (!qword_10002E608)
  {
    sub_1000059E8(&qword_10002E600, &qword_10001AEC0);
    sub_100013040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E608);
  }

  return result;
}

unint64_t sub_100014054()
{
  result = qword_10002E630;
  if (!qword_10002E630)
  {
    sub_1000059E8(&qword_10002E1E8, &qword_10001AB18);
    sub_1000059E8(&qword_10002E1B0, &qword_10001AAF8);
    sub_1000059E8(&qword_10002E1C8, &qword_10001AB10);
    sub_100006BF8(&qword_10002E1D0, &qword_10002E1B0, &qword_10001AAF8);
    sub_1000121D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E630);
  }

  return result;
}

uint64_t sub_1000141B8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_1000158D4(a1, a2, 0);
  v6 = [v5 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void sub_100014460()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer];
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  sub_100016C5C(&unk_10002E890, type metadata accessor for ContactsLimitedAccessPromptViewObservable);

  v3 = ObservedObject.init(wrappedValue:)();
  v5 = v4;
  v6 = type metadata accessor for ContactStoreVisualizer();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  sub_100016C5C(&qword_10002E8A0, type metadata accessor for ContactStoreVisualizer);
  v58 = v3;
  v59 = static ObservableObject.environmentStore.getter();
  v10 = objc_allocWithZone(sub_1000054DC(&qword_10002E8A8, qword_10001AFD8));
  v11 = UIHostingController.init(rootView:)();
  v12 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView;
  v13 = *&v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView];
  *&v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = v11;
  v14 = v11;

  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (!v17)
  {
    [v1 addChildViewController:v14];
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      v20 = [v14 view];
      if (v20)
      {
        v21 = v20;
        [v19 addSubview:v20];

        v22 = [v14 view];
        if (v22)
        {
          v23 = v22;
          [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

          v24 = [v14 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 topAnchor];

            v27 = [v1 view];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 topAnchor];

              v30 = [v26 constraintEqualToAnchor:v29];
              [v30 setActive:1];

              v31 = [v14 view];
              if (v31)
              {
                v32 = v31;
                v33 = [v31 bottomAnchor];

                v34 = [v1 view];
                if (v34)
                {
                  v35 = v34;
                  v36 = [v34 bottomAnchor];

                  v37 = [v33 constraintEqualToAnchor:v36];
                  [v37 setActive:1];

                  v38 = [v14 view];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = [v38 rightAnchor];

                    v41 = [v1 view];
                    if (v41)
                    {
                      v42 = v41;
                      v43 = [v41 rightAnchor];

                      v44 = [v40 constraintEqualToAnchor:v43];
                      [v44 setActive:1];

                      v45 = [v14 view];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = [v45 leftAnchor];

                        v48 = [v1 view];
                        if (v48)
                        {
                          v49 = v48;
                          v50 = [v48 leftAnchor];

                          v51 = [v47 constraintEqualToAnchor:v50];
                          [v51 setActive:1];

                          v14 = v51;
                          goto LABEL_14;
                        }

LABEL_32:
                        __break(1u);
                        return;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_14:

  v52 = [v15 currentDevice];
  v53 = [v52 userInterfaceIdiom];

  v54 = *&v1[v12];
  if (v53 == 1)
  {
    if (v54)
    {
      [v54 setModalInPresentation:1];
      v55 = *&v1[v12];
      if (v55)
      {
        v56 = [v55 sheetPresentationController];
        if (v56)
        {
          v57 = v56;
          [v56 setPrefersEdgeAttachedInCompactHeight:1];
          [v57 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
        }
      }
    }
  }

  else if (v54)
  {
    [v54 didMoveToParentViewController:v1];
  }
}

uint64_t sub_100014AB4()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000054DC(&qword_10002E888, &qword_10001AFC8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100006140(v5, &qword_10002E880, &unk_10001AFB8);
    return 0;
  }
}

id sub_100014DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  v7 = swift_allocObject();
  *(v7 + 16) = 7368769;
  *(v7 + 24) = 0xE300000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *&v3[v6] = v7;
  v8 = &v3[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ContactsLimitedAccessPromptViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100014EF8(void *a1)
{
  v3 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  v4 = swift_allocObject();
  *(v4 + 16) = 7368769;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ContactsLimitedAccessPromptViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000150DC(unint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v6 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  sub_100016878(3, v9, v6);

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v12 = v10;
    v13 = v11;

    if (v11)
    {
      v15 = *&v13[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v14 = *&v13[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];

      if (v14)
      {
        type metadata accessor for ContactsAccessUpdater();
        inited = swift_initStackObject();
        *(inited + 24) = v15;
        *(inited + 32) = v14;

        v17 = sub_100001A40();

        *(inited + 16) = v17;
        v18 = String._bridgeToObjectiveC()();
        [v17 purgeLimitedAccessRecordsForBundle:v18];

        sub_100015574(a1);
        swift_setDeallocating();

        v19 = *(inited + 32);
      }
    }
  }

  return [a3 deactivate];
}

id sub_10001529C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v6 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  sub_100016878(a3, v9, v6);

  return [a2 deactivate];
}

id sub_100015498(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100015574(unint64_t a1)
{
  v3 = v1;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005590(v5, qword_10002F570);

  v6 = Logger.logObject.getter();
  LOBYTE(v7) = static os_log_type_t.default.getter();

  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v9 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v25 = v2;
  *v9 = 134218242;
  if (v8)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v9 + 4) = i;

    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100017CA8(v3[3], v3[4], &v25);
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding %ld contacts to limited access for %s", v9, 0x16u);
    sub_100005A98(v2);

LABEL_8:
    v7 = v3[2];
    v11 = v3[3];
    v12 = v3[4];
    v3 = String._bridgeToObjectiveC()();
    v9 = v8 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      break;
    }

    v25 = &_swiftEmptyArrayStorage;
    v6 = &v25;
    sub_100015ABC(0, v9 & ~(v9 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = v25;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(a1 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v25 = v14;
        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_100015ABC((v21 > 1), v22 + 1, 1);
          v14 = v25;
        }

        ++v13;
        v14[2] = v22 + 1;
        v23 = &v14[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
      }

      while (v9 != v13);
      break;
    }

    __break(1u);
LABEL_24:
    ;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 addLimitedAccessForBundle:v3 contactIdentifiers:isa];
}

uint64_t sub_100015870()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_1000158D4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1000159B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000159F4(a1, v4);
}

unint64_t sub_1000159F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016C00(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100016B50(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_100015ABC(char *a1, int64_t a2, char a3)
{
  result = sub_100015ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015ADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054DC(&qword_10002E870, ":N");
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

void (*sub_100015BE8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100015C68;
  }

  __break(1u);
  return result;
}

void *sub_100015C70(void *result)
{
  if (result)
  {
    v2 = v1;
    v3 = [result userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_10002DA20 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100005590(v6, qword_10002F570);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *(v9 + 4) = v11;
        v10->super.isa = v11.super.isa;
        _os_log_impl(&_mh_execute_header, v7, v8, "ContactsLimitedAccessPromptViewController activated with userInfo: %@", v9, 0xCu);
        sub_100006140(v10, &qword_10002E878, "pN");
      }

      v26[0] = 0xD00000000000001FLL;
      v26[1] = 0x800000010001B950;
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v12 = sub_1000159B0(v25), (v13 & 1) != 0))
      {
        sub_100016BA4(*(v5 + 56) + 32 * v12, v26);
        sub_100016B50(v25);

        v14 = swift_dynamicCast();
        v15 = v23;
        v16 = v24;
        if (!v14)
        {
          v15 = 0;
          v16 = 0;
        }
      }

      else
      {

        sub_100016B50(v25);
        v15 = 0;
        v16 = 0;
      }

      v17 = (v2 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID);
      v18 = *(v2 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8);
      *v17 = v15;
      v17[1] = v16;
    }

    else
    {
      if (qword_10002DA20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005590(v19, qword_10002F570);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "ContactsLimitedAccessPromptViewController unexpectedly got nil from user info", v22, 2u);
      }

      result = sub_100014AB4();
      if (result)
      {
        [result dismiss];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100015FF4(void *a1)
{
  v2 = v1;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "ContactsLimitedAccessPromptSceneDelegate: scene will connect", v7, 2u);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:v8];
  v10 = OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window;
  v11 = *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window) = v9;

  v77 = objc_opt_self();
  v12 = [v77 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v78 = v10;
  if (!v13)
  {
    v62 = *(v1 + v10);
    if (v62)
    {
      v63 = [v62 layer];
      v64 = [objc_opt_self() blackColor];
      v65 = [v64 CGColor];

      [v63 setBackgroundColor:v65];
      v66 = *(v1 + v10);
      if (v66)
      {
        v67 = [v66 layer];
        v68 = [objc_opt_self() blackColor];
        v69 = [v68 CGColor];

        [v67 setShadowColor:v69];
        v70 = *(v1 + v10);
        if (v70)
        {
          v71 = [v70 layer];
          LODWORD(v72) = 1.0;
          [v71 setShadowOpacity:v72];

          v73 = *(v1 + v10);
          if (v73)
          {
            v74 = [v73 layer];
            [v74 setShadowOffset:{0.0, 0.0}];

            v75 = *(v1 + v10);
            if (v75)
            {
              v76 = [v75 layer];
              [v76 setShadowRadius:5.0];
            }
          }
        }
      }
    }
  }

  v14 = [objc_allocWithZone(type metadata accessor for ContactsLimitedAccessPromptViewController()) initWithNibName:0 bundle:0];
  v15 = OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc;
  v16 = *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
  *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc) = v14;

  v17 = *(v1 + v15);
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v8;
    v21 = *(v18 + 48);
    v22 = *(v18 + 56);
    *(v18 + 48) = sub_1000167F0;
    *(v18 + 56) = v20;

    v23 = a1;
    sub_10000809C(v21);

    v24 = *(v1 + v15);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v8;
      v28 = *(v25 + 80);
      v29 = *(v25 + 88);
      *(v25 + 80) = sub_1000167F8;
      *(v25 + 88) = v27;
      v30 = v23;

      sub_10000809C(v28);

      v31 = *(v1 + v15);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v8;
        v35 = *(v32 + 64);
        v36 = *(v32 + 72);
        *(v32 + 64) = sub_100016858;
        *(v32 + 72) = v34;
        v37 = v30;

        sub_10000809C(v35);
      }
    }
  }

  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = [v8 activationContext];
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "ContactsLimitedAccessPromptSceneDelegate will activate with context %@", v41, 0xCu);
    sub_100006140(v42, &qword_10002E878, "pN");
  }

  v44 = *(v2 + v15);
  if (v44)
  {
    v45 = v44;
    v46 = [v8 activationContext];
    [v45 prepareForActivationWithContext:v46 completion:0];

    v47 = *(v2 + v15);
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8);
      if (v48)
      {
        v49 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID);
        v50 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
        v51 = *(v50 + 40);
        *(v50 + 32) = v49;
        *(v50 + 40) = v48;
        swift_bridgeObjectRetain_n();

        v52 = *(v2 + v15);
        if (v52)
        {
          v53 = *(v52 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);

          v54 = sub_1000141B8(v49, v48);
          v56 = v55;

          v57 = *(v53 + 24);
          *(v53 + 16) = v54;
          *(v53 + 24) = v56;
        }
      }
    }
  }

  v58 = *(v2 + v78);
  if (v58)
  {
    [v58 setRootViewController:*(v2 + v15)];
    v58 = *(v2 + v78);
  }

  [v58 makeKeyAndVisible];
  [v8 setSwipeDismissalStyle:1];
  [v8 setAllowsMenuButtonDismissal:1];
  v59 = [v77 currentDevice];
  v60 = [v59 userInterfaceIdiom];

  if (v60 == 1)
  {
    v61 = *(v2 + v15);
    if (v61)
    {
      if (*&v61[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView])
      {

        [v61 presentViewController:? animated:? completion:?];
      }
    }
  }
}

uint64_t sub_1000167B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016818()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100016878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!tcc_server_create())
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!kTCCServiceAddressBook)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = kTCCServiceAddressBook;
  v5 = tcc_service_singleton_for_CF_name();

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!tcc_message_options_create())
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  tcc_message_options_set_nokill_policy();
  if (!a3)
  {
    if (qword_10002DA20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005590(v7, qword_10002F570);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "updateAddressBookAccess: don't know the requestor's bundle ID, so we can't set anything", v10, 2u);
    }

    goto LABEL_13;
  }

  String.utf8CString.getter();
  v6 = tcc_identity_create();

  if (!v6)
  {
LABEL_20:
    __break(1u);
    return;
  }

  tcc_server_message_set_authorization_value();
  swift_unknownObjectRelease();
LABEL_13:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_100016A70()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016AB0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_100016AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016AF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016B08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016BA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016C5C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100016D8C()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v23 = v0[4];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  result = sub_100015ABC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 identifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v24 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100015ABC((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v4);
LABEL_12:
    v14 = *v0;
    v15 = v0[1];
    v17 = v0[2];
    v16 = v0[3];
    v18 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v18 initForOnboarding:v19 bundleId:v20 selectedContacts:isa];

    sub_1000054DC(&qword_10002EA60, &qword_10001B250);
    UIViewControllerRepresentableContext.coordinator.getter();
    [v22 setDelegate:v24];

    return v22;
  }

  __break(1u);
  return result;
}

id sub_100016FB0@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v6 = v1[7];
  v5 = v1[8];
  v7 = type metadata accessor for LimitedAccessContactPickerView.ControllerCoordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV23LimitedAccessPromptView30LimitedAccessContactPickerView21ControllerCoordinator_completion];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v8[OBJC_IVAR____TtCV23LimitedAccessPromptView30LimitedAccessContactPickerView21ControllerCoordinator_goBackBlock];
  *v10 = v6;
  *(v10 + 1) = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  result = objc_msgSendSuper2(&v12, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100017084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001757C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000170E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001757C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001714C()
{
  sub_10001757C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100017180(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000055C8();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = &a1[*a5];
  v10 = *v8;
  v9 = *(v8 + 1);
  v11 = a1;
  v10(v7);
}

id sub_100017220(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100017290(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000172B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000172FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001735C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000173B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100017414@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for LimitedAccessSelectedContactsView.ControllerCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV23LimitedAccessPromptView33LimitedAccessSelectedContactsView21ControllerCoordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000175D0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000174F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000175D0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100017554()
{
  sub_1000175D0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001757C()
{
  result = qword_10002EA50;
  if (!qword_10002EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA50);
  }

  return result;
}

unint64_t sub_1000175D0()
{
  result = qword_10002EA58;
  if (!qword_10002EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA58);
  }

  return result;
}

char *sub_100017624(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_12:
    v16 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v16 initForShowSelected:isa];

    sub_1000054DC(&qword_10002EA68, &qword_10001B258);
    UIViewControllerRepresentableContext.coordinator.getter();
    [v18 setDelegate:v20];

    return v18;
  }

  result = sub_100015ABC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v19 = a1;
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v20 = _swiftEmptyArrayStorage;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100015ABC((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1000178DC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000179E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100017A18()
{
  v0 = sub_1000054DC(&qword_10002EB28, &qword_10001B2F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100017C44();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100017B7C();
  static App.main()();
  return 0;
}

unint64_t sub_100017B7C()
{
  result = qword_10002EA70;
  if (!qword_10002EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA70);
  }

  return result;
}

unint64_t sub_100017C44()
{
  result = qword_10002EB30;
  if (!qword_10002EB30)
  {
    sub_1000059E8(&qword_10002EB28, &qword_10001B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EB30);
  }

  return result;
}

uint64_t sub_100017CA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017D74(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100016BA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005A98(v11);
  return v7;
}

unint64_t sub_100017D74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100017E80(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100017E80(uint64_t a1, unint64_t a2)
{
  v4 = sub_100017ECC(a1, a2);
  sub_100017FFC(&off_100029168);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100017ECC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000180E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000180E8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100017FFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001815C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000180E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000054DC(&qword_10002EB38, &qword_10001B2F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001815C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054DC(&qword_10002EB38, &qword_10001B2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100018338(uint64_t a1, unint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017CA8(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "LimitedAccessPromptSceneDelegate will continue activity with type: %s", v6, 0xCu);
    sub_100005A98(v7);
  }
}

uint64_t sub_100018494()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002F570);
  sub_100005590(v0, qword_10002F570);
  return Logger.init(subsystem:category:)();
}