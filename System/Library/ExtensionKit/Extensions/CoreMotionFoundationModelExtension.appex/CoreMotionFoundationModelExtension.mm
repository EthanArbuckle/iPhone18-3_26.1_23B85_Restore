uint64_t sub_100001370()
{
  v0 = type metadata accessor for Logger();
  sub_1000058E8(v0, qword_1000104C8);
  sub_1000042E4(v0, qword_1000104C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000013F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return InferenceProviderExtension.init()();
}

uint64_t sub_100001424()
{
  v0 = InferenceProviderExtension.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_100001454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[18] = a3;
  v4[15] = a1;
  v4[16] = a2;
  State = type metadata accessor for LoadState();
  v4[19] = State;
  v6 = *(State - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100001524, v3, 0);
}

uint64_t sub_100001524()
{
  v61 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[16];
  v6 = InferenceProviderAssetDescriptor.identifier.getter();
  v8 = v7;
  v9 = *(v3 + 16);
  v9(v1, v5, v2);
  v10 = (*(v3 + 88))(v1, v2);
  if (v10 == enum case for LoadState.unloaded(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000042E4(v11, qword_1000104C8);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v60 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000043D8(v6, v8, &v60);
      _os_log_impl(&_mh_execute_header, v12, v13, "Transition to unloaded for %s", v14, 0xCu);
      sub_10000583C(v15);
    }

    v16 = v0[17];
    swift_beginAccess();
    sub_100004AD4(v6, v8);
    swift_endAccess();

    goto LABEL_25;
  }

  if (v10 == enum case for LoadState.dynamicMode(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000042E4(v17, qword_1000104C8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v60 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000043D8(v6, v8, &v60);
      _os_log_impl(&_mh_execute_header, v18, v19, "Transition to dynamic mode (aka loaded) for %s", v20, 0xCu);
      sub_10000583C(v21);
    }

    v22 = v0[17];
    swift_beginAccess();
    sub_100004984(&v60, v6, v8);
LABEL_13:
    swift_endAccess();

    goto LABEL_25;
  }

  if (v10 == enum case for LoadState.loaded(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000042E4(v23, qword_1000104C8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000043D8(v6, v8, &v60);
      _os_log_impl(&_mh_execute_header, v24, v25, "Transition to loaded for %s", v26, 0xCu);
      sub_10000583C(v27);
    }

    type metadata accessor for CMIsolatedModel();
    v28 = kAssetBundleIdentifier.getter();
    v30 = static CMIsolatedModel.FromName(_:)(v28, v29);
    v31 = v0[17];

    v32 = *(v31 + 120);
    *(v31 + 120) = v30;

    v33 = kCalorimetryReducedEmbeddings.getter();
    v56 = static CMIsolatedModel.FromName(_:)(v33, v34);
    v57 = v0[17];

    v58 = *(v57 + 128);
    *(v57 + 128) = v56;

    swift_beginAccess();
    sub_100004984(&v60, v6, v8);
    goto LABEL_13;
  }

  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v35 = v0[21];
  v36 = v0[19];
  v37 = v0[16];
  v38 = type metadata accessor for Logger();
  sub_1000042E4(v38, qword_1000104C8);
  v9(v35, v37, v36);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[20];
  v42 = v0[21];
  v44 = v0[19];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *v45 = 136315138;
    sub_10000594C(&qword_1000103C8, &type metadata accessor for LoadState);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_1000043D8(v46, v48, &v60);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "Unknown load state: %s", v45, 0xCu);
    sub_10000583C(v59);

    v49(v0[22], v0[19]);
  }

  else
  {

    v51 = *(v43 + 8);
    v51(v42, v44);
    v51(v0[22], v0[19]);
  }

LABEL_25:
  v53 = v0[21];
  v52 = v0[22];

  v54 = v0[1];

  return v54();
}

uint64_t sub_100001D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for InferenceError();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100001E50, v4, 0);
}

uint64_t sub_100001E50()
{
  if (qword_1000104C0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000042E4(v1, qword_1000104C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "InferenceProvider requestOnShot called", v4, 2u);
  }

  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  v7 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
  v8 = v7 + 56;
  v32 = v5;
  v33 = v7;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 56);
  v31 = v0;
  swift_beginAccess();
  v12 = 0;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= ((63 - v9) >> 6))
        {
          goto LABEL_24;
        }

        v11 = *(v8 + 8 * v13);
        ++v12;
        if (v11)
        {
          v12 = v13;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:
    v14 = *(v32 + 112);
    if (!*(v14 + 16))
    {
      goto LABEL_28;
    }

    v15 = (*(v33 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v14 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      break;
    }

    v11 &= v11 - 1;
    v0 = ~v20;
    while (1)
    {
      v22 = (*(v14 + 48) + 16 * v21);
      v23 = *v22 == v17 && v22[1] == v16;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v21 = (v21 + 1) & v0;
      if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_23:

  __break(1u);
LABEL_24:

  v25 = swift_task_alloc();
  v31[13] = v25;
  *v25 = v31;
  v25[1] = sub_10000215C;
  v26 = v31[12];
  v27 = v31[8];
  v28 = v31[5];
  v29 = v31[6];

  return sub_100002314(v28, v29, v24, v26);
}

uint64_t sub_10000215C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 64);

    return _swift_task_switch(sub_100002294, v5, 0);
  }

  else
  {
    v6 = *(v2 + 96);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_100002294()
{
  (*(v0[11] + 32))(v0[9], v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_100002338, v4, 0);
}

uint64_t sub_100002338()
{
  v50 = v0;
  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000042E4(v1, qword_1000104C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received inference request ", v4, 2u);
  }

  v5 = v0[3];

  v6 = ClientData.data.getter();
  v0[7] = v6;
  v0[8] = v7;
  if (v7 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v12 = v6;
  v13 = v7;
  v14 = objc_allocWithZone(type metadata accessor for CMFoundationModelRequest());
  sub_10000431C(v12, v13);
  v15 = CMFoundationModelRequest.init(serializedBytes:)();
  v0[9] = v15;
  v17 = v15;
  v18 = dispatch thunk of CMFoundationModelRequest.modelName.getter();
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v48 = v20;
    v24 = v18;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000043D8(v24, v48, &v49);
    _os_log_impl(&_mh_execute_header, v21, v22, "Request decoded for model: %s", v25, 0xCu);
    sub_10000583C(v26);

    v18 = v24;
    v20 = v48;
  }

  if (v18 == kAssetBundleIdentifier.getter() && v20 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_22:
      if (v18 == kCalorimetryReducedEmbeddings.getter() && v20 == v38)
      {
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Reduced Calorimetry Embeddings requested, running inference", v42, 2u);
      }

      v43 = v0[4];

      v44 = dispatch thunk of CMFoundationModelRequest.inputTensors.getter();
      v0[17] = v44;
      v45 = *(v43 + 128);
      v0[18] = v45;
      if (v45)
      {
        v46 = v44;

        v47 = swift_task_alloc();
        v0[19] = v47;
        *v47 = v0;
        v47[1] = sub_100003038;
        v37 = v46;
        goto LABEL_30;
      }

LABEL_34:
      sub_100004370(v12, v13);

LABEL_6:
      v8 = v0[2];
      v9 = v0[3];
      v10 = type metadata accessor for ClientData();
      (*(*(v10 - 8) + 16))(v8, v9, v10);
      v11 = v0[1];

      return v11();
    }
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Base model requested, running inference", v31, 2u);
  }

  v32 = v0[4];

  v33 = dispatch thunk of CMFoundationModelRequest.inputTensors.getter();
  v0[10] = v33;
  v34 = *(v32 + 120);
  v0[11] = v34;
  if (!v34)
  {

    goto LABEL_22;
  }

  v35 = v33;

  v36 = swift_task_alloc();
  v0[12] = v36;
  *v36 = v0;
  v36[1] = sub_100002A58;
  v37 = v35;
LABEL_30:

  return CMIsolatedModel.predict(for:)(v37);
}

uint64_t sub_100002A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v11 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100003570;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[4];

    v6 = sub_100002B88;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100002B88()
{
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Prediction succeeded returning", v4, 2u);
  }

  type metadata accessor for CMFoundationModelResponse();
  v5 = async function pointer to static CMFoundationModelResponse.fromSuccess(_:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100002CA4;
  v7 = v0[13];

  return static CMFoundationModelResponse.fromSuccess(_:)(v7);
}

uint64_t sub_100002CA4(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100002DD8, v4, 0);
}

uint64_t sub_100002DD8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  dispatch thunk of CMFoundationModelResponse.serializedData()();
  if (v2)
  {
    v3 = *(v0 + 72);

    v4 = *(v0 + 48);
    sub_100004370(*(v0 + 56), *(v0 + 64));
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected error: %@", v7, 0xCu);
      sub_10000578C(v8);
    }

    v10 = *(v0 + 40);

    sub_100005678(&_swiftEmptyArrayStorage);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v11 = enum case for InferenceError.invalidClientData(_:);
    v12 = type metadata accessor for InferenceError();
    (*(*(v12 - 8) + 104))(v10, v11, v12);
    sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();

    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 128);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    ClientData.init(data:)();
    sub_100004370(v17, v15);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_100003038(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100003794, v7, 0);
  }

  else
  {
    v8 = v4[17];
    v9 = v4[18];

    v4[21] = a1;
    type metadata accessor for CMFoundationModelResponse();
    v10 = async function pointer to static CMFoundationModelResponse.fromSuccess(_:)[1];
    v11 = swift_task_alloc();
    v4[22] = v11;
    *v11 = v6;
    v11[1] = sub_1000031DC;

    return static CMFoundationModelResponse.fromSuccess(_:)(a1);
  }
}

uint64_t sub_1000031DC(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100003310, v4, 0);
}

uint64_t sub_100003310()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  dispatch thunk of CMFoundationModelResponse.serializedData()();
  if (v2)
  {
    v3 = *(v0 + 72);

    v4 = *(v0 + 48);
    sub_100004370(*(v0 + 56), *(v0 + 64));
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected error: %@", v7, 0xCu);
      sub_10000578C(v8);
    }

    v10 = *(v0 + 40);

    sub_100005678(&_swiftEmptyArrayStorage);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v11 = enum case for InferenceError.invalidClientData(_:);
    v12 = type metadata accessor for InferenceError();
    (*(*(v12 - 8) + 104))(v10, v11, v12);
    sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();

    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 184);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    ClientData.init(data:)();
    sub_100004370(v17, v15);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_100003570()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[14];
  v5 = v0[6];
  sub_100004370(v0[7], v0[8]);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected error: %@", v8, 0xCu);
    sub_10000578C(v9);
  }

  v11 = v0[5];

  sub_100005678(&_swiftEmptyArrayStorage);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v12 = enum case for InferenceError.invalidClientData(_:);
  v13 = type metadata accessor for InferenceError();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError);
  swift_willThrowTypedImpl();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100003794()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[9];

  v4 = v0[20];
  v5 = v0[6];
  sub_100004370(v0[7], v0[8]);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected error: %@", v8, 0xCu);
    sub_10000578C(v9);
  }

  v11 = v0[5];

  sub_100005678(&_swiftEmptyArrayStorage);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v12 = enum case for InferenceError.invalidClientData(_:);
  v13 = type metadata accessor for InferenceError();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError);
  swift_willThrowTypedImpl();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000039B8()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100003A0C@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v2[15] = 0;
  v2[16] = 0;
  v2[14] = &_swiftEmptySetSingleton;
  *a1 = v2;
  return result;
}

uint64_t sub_100003A58()
{
  v1 = InferenceProviding.isVersionSupported(requestVersion:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100003ABC()
{
  v1 = InferenceProviding.convertData(clientData:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100003B64()
{
  InferenceProviding.prewarmHint(_:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v7 = type metadata accessor for InferenceError();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v11 = *v3;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100005998;

  return sub_100001454(a1, a2, v10);
}

uint64_t sub_100003CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100005994;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100003DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to InferenceProviding.inputStreamEnded(requestID:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003E50;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_100003E50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v9 = type metadata accessor for InferenceError();
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[5] = v12;
  v13 = *v4;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_100004068;

  return sub_100001D88(a1, a2, a3, v12);
}

uint64_t sub_100004068()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CoreMotionFoundationModelInferenceProviderService();
  sub_10000594C(&qword_1000102A8, type metadata accessor for CoreMotionFoundationModelInferenceProviderService);
  static AppExtension.main()();
  return 0;
}

uint64_t type metadata accessor for CoreMotionFoundationModelInferenceProviderService()
{
  result = qword_1000104E0;
  if (!qword_1000104E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000042E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000431C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004384(a1, a2);
  }

  return a1;
}

uint64_t sub_100004384(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000043D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000044A4(v11, 0, 0, 1, a1, a2);
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
    sub_100005888(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000583C(v11);
  return v7;
}

unint64_t sub_1000044A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000045B0(a5, a6);
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

void *sub_1000045B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000045FC(a1, a2);
  sub_10000472C(&off_10000C628);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000045FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004818(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
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
        v7 = sub_100004818(v10, 0);
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

uint64_t sub_10000472C(uint64_t result)
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

  result = sub_10000488C(result, v12, 1, v3);
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

void *sub_100004818(uint64_t a1, uint64_t a2)
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

  sub_1000057F4(&qword_1000103B8, &qword_1000074F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000488C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000057F4(&qword_1000103B8, &qword_1000074F0);
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

uint64_t sub_100004984(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000053C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100004AD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100004C10();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100005204(v9);
  *v2 = v20;
  return v13;
}

void *sub_100004C10()
{
  v1 = v0;
  sub_1000057F4(&qword_1000103D0, qword_100007508);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100004D6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000057F4(&qword_1000103D0, qword_100007508);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100004FA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000057F4(&qword_1000103D0, qword_100007508);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100005204(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_1000053C8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100004FA4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100004C10();
      goto LABEL_16;
    }

    sub_100004D6C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100005548(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000055C0(a1, a2, v6);
}

unint64_t sub_1000055C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057F4(&qword_1000103C0, &qword_1000074F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100005548(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_10000578C(uint64_t a1)
{
  v2 = sub_1000057F4(&qword_1000103B0, &qword_1000074E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000057F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000583C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000058E8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000594C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000599C()
{
  v0 = type metadata accessor for Logger();
  sub_1000058E8(v0, qword_1000105F8);
  sub_1000042E4(v0, qword_1000105F8);
  return Logger.init(subsystem:category:)();
}

uint64_t static CMIsolatedModel.FromName(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (kAssetBundleIdentifier.getter() == a1 && v6 == a2)
  {

LABEL_5:
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
    v8 = v22;
    sub_100005CCC(v20, v21);
    v9 = &qword_1000103F0;
    v10 = &qword_100007528;
    v18 = sub_1000057F4(&qword_1000103F0, &qword_100007528);
    v11 = &unk_1000103F8;
    goto LABEL_6;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_5;
  }

  if (kCalorimetryReducedEmbeddings.getter() == a1 && v13 == a2)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v3 = type metadata accessor for AdaptorError();
      sub_100005C74();
      swift_allocError();
      *v15 = a1;
      v15[1] = a2;
      (*(*(v3 - 8) + 104))(v15, enum case for AdaptorError.adaptorNotAvailable(_:), v3);
      swift_willThrow();

      return v3;
    }
  }

  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  v8 = v22;
  sub_100005CCC(v20, v21);
  v9 = &qword_1000103E0;
  v10 = &qword_100007520;
  v18 = sub_1000057F4(&qword_1000103E0, &qword_100007520);
  v11 = &unk_1000103E8;
LABEL_6:
  v19 = sub_1000069E4(v11, v9, v10);
  sub_100005D58(v17);
  v12 = *(v8 + 8);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  if (v2)
  {
    sub_100005DBC(v17);
  }

  else
  {
    v3 = sub_1000064F4(v17);
    sub_100006AA8(v17);
  }

  sub_100006AA8(v20);
  return v3;
}

unint64_t sub_100005C74()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    type metadata accessor for AdaptorError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

void *sub_100005CCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005D10(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100005D58(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_100005DBC(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t CMIsolatedModel.predict(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100005E5C, v1, 0);
}

uint64_t sub_100005E5C()
{
  v1 = *(v0[3] + 112);
  v2 = async function pointer to MLModel.prediction(from:)[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100005EFC;
  v4 = v0[2];

  return MLModel.prediction(from:)(v4);
}

uint64_t sub_100005EFC(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t CMIsolatedModel.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100006074(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_1000061D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_1000061E0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v29 = a1;
  URL.init(fileURLWithPath:)();
  v13 = [objc_allocWithZone(MLModelConfiguration) init];
  [v13 setComputeUnits:3];
  sub_100006A5C();
  (*(v6 + 16))(v10, v12, v5);
  v14 = v13;
  v15 = sub_100006074(v10, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    if (qword_1000105F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000042E4(v17, qword_1000105F8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v28 = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000043D8(v29, a2, &v30);
      v23 = v19;
      v24 = v28;
      _os_log_impl(&_mh_execute_header, v28, v23, "IMUFM | Loaded model from %s", v21, 0xCu);
      sub_100006AA8(v22);

      v16 = v27;
    }

    else
    {
    }

    type metadata accessor for CMIsolatedModel();
    v25 = swift_allocObject();
    swift_defaultActor_initialize();

    (*(v6 + 8))(v12, v5);
    *(v25 + 112) = v16;
  }
}

id sub_1000064F4(void *a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  v7 = __chkstk_darwin(v5);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = a1[4];
  sub_100005CCC(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v36 - v15;
  dispatch thunk of CatalogAssetProtocol.contents.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AssetContents.baseURL.getter();
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  v17 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v18 = String._bridgeToObjectiveC()();

  v43[0] = 0;
  v19 = [v17 contentsOfDirectoryAtPath:v18 error:v43];

  v20 = v43[0];
  if (v19)
  {
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v20;

    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = (v21 + 40);
      while (1)
      {
        if (v24 >= *(v21 + 16))
        {
          __break(1u);
        }

        v19 = *(v25 - 1);
        v17 = *v25;

        v26._countAndFlagsBits = kModelExtension.getter();
        v27 = String.hasSuffix(_:)(v26);

        if (v27)
        {
          break;
        }

        ++v24;
        v25 += 2;
        if (v23 == v24)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    v43[0] = v19;
    v43[1] = v17;
    (*(v40 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
    sub_100006AF8();
    URL.appending<A>(path:directoryHint:)();
    (*(v40 + 8))(v39, v41);

    v28 = URL.path(percentEncoded:)(1);
    v29 = v36;
    sub_1000061E0(v28._countAndFlagsBits, v28._object);
    if (v29)
    {

      v20 = v38;
      v31 = *(v37 + 8);
      v31(v42, v38);
      v31(v10, v20);
    }

    else
    {
      v20 = v30;

      v33 = v38;
      v34 = *(v37 + 8);
      v34(v42, v38);
      v34(v10, v33);
    }
  }

  else
  {
    v32 = v43[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v37 + 8))(v10, v38);
  }

  return v20;
}

void sub_1000069D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000069D8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000069E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006A5C()
{
  result = qword_1000104A8;
  if (!qword_1000104A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000104A8);
  }

  return result;
}

uint64_t sub_100006AA8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100006AF8()
{
  result = qword_1000104B0;
  if (!qword_1000104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104B0);
  }

  return result;
}