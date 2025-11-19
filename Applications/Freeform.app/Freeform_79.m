uint64_t sub_100AD67F4()
{
  v1 = sub_1005B981C(&qword_101A102C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = qword_101AD7250;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100AD6928(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100AD8D58(a2, v5);
  return Capsule.Ref.subscript.setter();
}

void (*sub_100AD69D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&qword_101A102C0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v5 - 8) + 64));
  }

  v8 = v7;
  v4[11] = v7;
  v9 = *(*(type metadata accessor for CRLContainerItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = qword_101AD7250;
  v4[13] = v10;
  v4[14] = v11;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v11, v5);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return sub_100AD6BA8;
}

void sub_100AD6BA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = sub_100AD8D58(*(*a1 + 104), v5);
    __chkstk_darwin(v6);
    __chkstk_darwin(v7);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
    sub_100AD8DBC(v5, type metadata accessor for CRLContainerItemCRDTData);
  }

  else
  {
    __chkstk_darwin(a1);
    __chkstk_darwin(v8);
    swift_beginAccess();
    Capsule.mutate<A>(_:)();
    swift_endAccess();
  }

  sub_100AD8DBC(v3, type metadata accessor for CRLContainerItemCRDTData);
  free(v3);
  free(v5);
  free(v4);
  free(v2);
}

uint64_t sub_100AD6DC8()
{
  v1 = type metadata accessor for CRCodableVersion();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A102C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = qword_101AD7250;
  swift_beginAccess();
  (*(v6 + 16))(v8, v0 + v9, v5);
  (*(v2 + 104))(v4, enum case for CRCodableVersion.version4(_:), v1);
  v10 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_100AD6FDC()
{
  v0 = sub_1005B981C(&qword_101A102C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-v2];
  type metadata accessor for CRLSurfaceItemData();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = qword_101AD7250;
    v6 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, v6 + v5, v0);
    swift_beginAccess();
    _s18SurfaceCapsuleDataVMa();
    sub_100AD8E38(&qword_1019FBFF0, _s18SurfaceCapsuleDataVMa);

    Capsule.merge<A>(_:)();
    (*(v1 + 8))(v3, v0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100AD7198()
{
  v1 = sub_1005B981C(&qword_101A102C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v16[-v6];
  type metadata accessor for CRLSurfaceItemData();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = qword_101AD7250;
    swift_beginAccess();
    v11 = *(v2 + 16);
    v11(v7, v0 + v10, v1);
    v12 = qword_101AD7250;
    swift_beginAccess();
    v11(v4, v9 + v12, v1);
    v13 = Capsule.hasDelta(from:)();
    v14 = *(v2 + 8);
    v14(v4, v1);
    v14(v7, v1);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_100AD7358(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = v2;
  v5 = type metadata accessor for CRCodableVersion();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A102C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_1005B981C(&qword_101A102C8);
  __chkstk_darwin(v14 - 8);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v35 - v17;
  v39 = a1;
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = qword_101AD7250;
    swift_beginAccess();
    v21 = *(v8 + 16);
    v21(v13, v3 + v20, v7);
    v22 = qword_101AD7250;
    swift_beginAccess();
    v21(v10, v19 + v22, v7);

    v23 = v43;
    Capsule.delta(_:from:)();
    v24 = *(v8 + 8);
    v24(v10, v7);
    v24(v13, v7);
    v25 = v40;
    sub_10000BE14(v23, v40, &qword_101A102C8);
    v26 = type metadata accessor for CapsuleMergeableDelta();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_10000CAAC(v23, &qword_101A102C8);

      sub_10000CAAC(v25, &qword_101A102C8);
      return 0;
    }

    else
    {
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 104))(v36, enum case for CRCodableVersion.version4(_:), v38);
      v32 = v42;
      v33 = CapsuleMergeableDelta.deltaSerializedData(_:version:)();
      if (v32)
      {

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8);
        return (*(v27 + 8))(v25, v26);
      }

      else
      {
        v34 = v33;

        (*(v29 + 8))(v30, v31);
        sub_10000CAAC(v43, &qword_101A102C8);
        (*(v27 + 8))(v25, v26);
        return v34;
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

uint64_t sub_100AD7860(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for UUID();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A102C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for CapsuleMergeableDelta();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_101AD7250;
  swift_beginAccess();
  (*(v8 + 16))(v10, v3 + v14, v7);
  sub_100024E98(a1, a2);
  _s18SurfaceCapsuleDataVMa();
  sub_100AD8E38(&qword_1019FBFF0, _s18SurfaceCapsuleDataVMa);
  v15 = v41;
  CapsuleMergeableDelta.init<A>(serializedData:in:)();
  if (!v15)
  {
    v16 = v38;
    v17 = v39;
    v36 = v11;
    v41 = 0;
    swift_beginAccess();
    LOBYTE(v11) = Capsule.merge(delta:)();
    swift_endAccess();
    v18 = v13;
    if ((v11 & 1) == 0)
    {
      v19 = v3;
      v35 = v18;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v34 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v21 = *(*v19 + 744);
      swift_beginAccess();
      v22 = v17;
      v23 = *(v17 + 16);
      v24 = v37;
      v23(v16, v19 + v21, v37);
      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*(v22 + 8))(v16, v24);
      *(inited + 56) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 64) = v28;
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v42 = v19;
      type metadata accessor for CRLSurfaceItemData();

      v29 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v28;
      *(inited + 72) = v29;
      *(inited + 80) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v34, &_mh_execute_header, v31, "Capsule delta failed to apply for %{public}@%{public}@", 54, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v18 = v35;
    }

    (*(v40 + 8))(v18, v36);
  }

  return v11 & 1;
}

uint64_t sub_100AD7D0C(uint64_t a1)
{
  v3 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = _s18SurfaceCapsuleDataVMa();
  __chkstk_darwin(v8 - 8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v53 - v11;
  v12 = sub_1005B981C(&qword_101A102C0);
  v61 = *(v12 - 8);
  __chkstk_darwin(v12);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v53 - v15;
  v16 = type metadata accessor for UUID();
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v53 - v26;
  type metadata accessor for CRLSurfaceItemData();
  v28 = a1;
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  v55 = v12;
  v56 = v7;
  v31 = *(*v1 + 736);
  swift_beginAccess();
  v54 = v1;
  sub_10000BE14(v1 + v31, v27, &unk_101A226A0);
  v32 = *(*v30 + 736);
  swift_beginAccess();
  sub_10000BE14(v30 + v32, v24, &unk_101A226A0);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v33 = static UUID.== infix(_:_:)();
  v34 = *(v63 + 8);
  v34(v18, v16);
  v34(v21, v16);
  if ((v33 & 1) == 0)
  {

    sub_10000CAAC(v24, &unk_101A226A0);
    sub_10000CAAC(v27, &unk_101A226A0);
LABEL_7:
    v50 = 0;
    return v50 & 1;
  }

  v35 = sub_101279020();
  sub_10000CAAC(v24, &unk_101A226A0);
  sub_10000CAAC(v27, &unk_101A226A0);
  if ((v35 & 1) == 0)
  {

    goto LABEL_7;
  }

  v36 = qword_101AD7250;
  v37 = v54;
  swift_beginAccess();
  v63 = v28;
  v38 = v61;
  v39 = *(v61 + 16);
  v40 = v37 + v36;
  v41 = v59;
  v42 = v55;
  v39(v59, v40, v55);
  v43 = qword_101AD7250;
  swift_beginAccess();
  v44 = v30 + v43;
  v45 = v60;
  v39(v60, v44, v42);
  v46 = v57;
  Capsule.root.getter();
  v47 = v56;
  sub_100AD8D58(v46, v56);
  sub_100AD8DBC(v46, _s18SurfaceCapsuleDataVMa);
  v48 = v58;
  Capsule.root.getter();
  v49 = v62;
  sub_100AD8D58(v48, v62);
  sub_100AD8DBC(v48, _s18SurfaceCapsuleDataVMa);
  sub_100AD8E38(&qword_1019FB870, &type metadata accessor for UUID);
  v50 = static CROrderedSet.== infix(_:_:)();

  sub_100AD8DBC(v49, type metadata accessor for CRLContainerItemCRDTData);
  sub_100AD8DBC(v47, type metadata accessor for CRLContainerItemCRDTData);
  v51 = *(v38 + 8);
  v51(v45, v42);
  v51(v41, v42);
  return v50 & 1;
}

uint64_t sub_100AD8360(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) != 1)
  {
    return sub_100D5EFEC(a1);
  }

  __chkstk_darwin(a1);
  v3 = v2;
  __chkstk_darwin(v2);
  swift_beginAccess();
  sub_1005B981C(&qword_101A102C0);
  Capsule.mutate<A>(_:)();
  if (!v1)
  {
    swift_endAccess();
    a1 = v3;
    return sub_100D5EFEC(a1);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100AD84AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A28650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v7 = Capsule.Ref.subscript.modify();
  v9 = v7;
  if (*(a2 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v10 = v8;
    v13 = v7;
    __chkstk_darwin(v7);
    *(&v12 - 2) = a2;
    type metadata accessor for UUID();
    v15 = CROrderedSet.map<A>(_:)();
    sub_1005B981C(&qword_101A0A360);
    sub_100AD8E38(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10001A2F8(&unk_101A09E20, &qword_101A0A360);
    CROrderedSet.init<A>(_:)();
    (*(v4 + 40))(v10, v6, v3);
    v9 = v13;
  }

  v9(v14, 0);
}

uint64_t sub_100AD870C()
{
  v1 = qword_101AD7250;
  v2 = sub_1005B981C(&qword_101A102C0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100AD8780()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100AD8DBC(v0 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v3 = qword_101AD7250;
  v4 = sub_1005B981C(&qword_101A102C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLSurfaceItemData()
{
  result = qword_101A0FEC0;
  if (!qword_101A0FEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100AD8914()
{
  sub_100AD89A4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100AD89A4()
{
  if (!qword_101A0FED0)
  {
    _s18SurfaceCapsuleDataVMa();
    sub_100AD8E38(&qword_1019FBFF0, _s18SurfaceCapsuleDataVMa);
    v0 = type metadata accessor for Capsule();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0FED0);
    }
  }
}

uint64_t sub_100AD8A80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_101AD7250;
  swift_beginAccess();
  v5 = sub_1005B981C(&qword_101A102C0);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_100AD8B18(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_101AD7250;
  swift_beginAccess();
  v5 = sub_1005B981C(&qword_101A102C0);
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

void (*sub_100AD8BB8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1005B981C(&qword_101A102C0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[10] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[11] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[11] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[12] = v9;
  v11 = *v1;
  v12 = qword_101AD7250;
  v4[13] = v11;
  v4[14] = v12;
  swift_beginAccess();
  v13 = *(v7 + 16);
  v4[15] = v13;
  v4[16] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v10, v11 + v12, v5);
  return sub_1006B16F8;
}

uint64_t sub_100AD8D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLContainerItemCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AD8DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100AD8E38(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 initializeBufferWithCopyOfBuffer for CRLRectData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100AD8EDC()
{
  result = qword_101A102D0;
  if (!qword_101A102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102D0);
  }

  return result;
}

uint64_t sub_100AD90D4(float a1, float a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v11 = a4(0);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  UnknownStorage.init()();
  *v13 = a1;
  v13[1] = a2;
  sub_100ADA3B4(a5, a6);
  v14 = Message.serializedData(partial:)();
  v16 = v15;
  result = sub_100ADA3FC(v13, a6);
  if (!v6)
  {
    dispatch thunk of CREncoder.valueContainer()();
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();

    return sub_10002640C(v14, v16);
  }

  return result;
}

uint64_t sub_100AD921C(void *a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), float a5, float a6)
{
  v12 = a2(0);
  __chkstk_darwin(v12);
  v14 = (v19 - v13);
  UnknownStorage.init()();
  *v14 = a5;
  v14[1] = a6;
  sub_100ADA3B4(a3, a4);
  v15 = Message.serializedData(partial:)();
  v17 = v16;
  result = sub_100ADA3FC(v14, a4);
  if (!v6)
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v19[1] = v15;
    v19[2] = v17;
    sub_10002A948(v20, v21);
    sub_1006D63D4();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10002640C(v15, v17);
    return sub_100005070(v20);
  }

  return result;
}

void sub_100AD9398(float a1, float a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(a1));
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

Swift::Int sub_100AD93E8(float a1, float a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  Hasher._combine(_:)(LODWORD(v4));
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  Hasher._combine(_:)(LODWORD(v5));
  return Hasher._finalize()();
}

void sub_100AD94C0(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X3>, unint64_t *a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v8 = sub_100AD9EA0(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 4) = v9;
  }
}

void sub_100AD95B8(void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X3>, unint64_t *a3@<X4>, void (*a4)(uint64_t)@<X5>, unint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v8 = sub_100ADA080(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 4) = v9;
  }
}

Swift::Int sub_100AD9664()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(LODWORD(v3));
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t sub_100AD9704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a5();
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100AD9788(float a1, float a2, float a3, float a4)
{
  v9 = type metadata accessor for CRLProto_Rect(0);
  __chkstk_darwin(v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  sub_100ADA3B4(&qword_101A10330, type metadata accessor for CRLProto_Rect);
  v12 = Message.serializedData(partial:)();
  v14 = v13;
  result = sub_100ADA3FC(v11, type metadata accessor for CRLProto_Rect);
  if (!v4)
  {
    dispatch thunk of CREncoder.valueContainer()();
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();

    return sub_10002640C(v12, v14);
  }

  return result;
}

uint64_t sub_100AD98F8(void *a1, float a2, float a3, float a4, float a5)
{
  v11 = type metadata accessor for CRLProto_Rect(0);
  __chkstk_darwin(v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  sub_100ADA3B4(&qword_101A10330, type metadata accessor for CRLProto_Rect);
  v14 = Message.serializedData(partial:)();
  v16 = v15;
  result = sub_100ADA3FC(v13, type metadata accessor for CRLProto_Rect);
  if (!v5)
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v18[1] = v14;
    v18[2] = v16;
    sub_10002A948(v19, v20);
    sub_1006D63D4();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10002640C(v14, v16);
    return sub_100005070(v19);
  }

  return result;
}

uint64_t sub_100AD9AA4@<X0>(float *a1@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();

  v3 = sub_100ADA45C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v9;
  return result;
}

void sub_100AD9B88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100ADA698(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

__n128 sub_100AD9C14@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100AD9C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100ADA7BC();
  v7 = sub_100ADA810();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

unint64_t sub_100AD9C94()
{
  result = qword_101A102D8;
  if (!qword_101A102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102D8);
  }

  return result;
}

unint64_t sub_100AD9CEC()
{
  result = qword_101A102E0;
  if (!qword_101A102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102E0);
  }

  return result;
}

unint64_t sub_100AD9D44()
{
  result = qword_101A102E8;
  if (!qword_101A102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102E8);
  }

  return result;
}

unint64_t sub_100AD9D9C()
{
  result = qword_101A102F0;
  if (!qword_101A102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102F0);
  }

  return result;
}

unint64_t sub_100AD9DF4()
{
  result = qword_101A102F8;
  if (!qword_101A102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A102F8);
  }

  return result;
}

unint64_t sub_100AD9E4C()
{
  result = qword_101A10300;
  if (!qword_101A10300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10300);
  }

  return result;
}

float sub_100AD9EA0(uint64_t a1, uint64_t (*a2)(void, __n128), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v25 = a5;
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = __chkstk_darwin(v10 - 8);
  v12 = a2(0, v11);
  __chkstk_darwin(v12);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v5)
  {
  }

  else
  {
    v18 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v21[0] = v19;
    v21[1] = v18;

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    BinaryDecodingOptions.init()();
    sub_100ADA3B4(a3, a4);
    Message.init(serializedData:extensions:partial:options:)();

    sub_100ADA630(v17, v14, a4);
    v6 = *v14;
    sub_100ADA3FC(v14, a4);
  }

  return v6;
}

float sub_100ADA080(void *a1, uint64_t (*a2)(void, __n128), unint64_t *a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v19[0] = a3;
  v19[1] = a5;
  v23 = a4;
  v9 = type metadata accessor for BinaryDecodingOptions();
  v10 = __chkstk_darwin(v9 - 8);
  v11 = a2(0, v10);
  __chkstk_darwin(v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v5)
  {
    sub_100020E58(&v20, *(&v21 + 1));
    sub_1006D6258();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100005070(&v20);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    BinaryDecodingOptions.init()();
    v17 = v23;
    sub_100ADA3B4(v19[0], v23);
    Message.init(serializedData:extensions:partial:options:)();
    sub_100ADA630(v16, v13, v17);
    v6 = *v13;
    sub_100ADA3FC(v13, v17);
  }

  sub_100005070(a1);
  return v6;
}

unint64_t sub_100ADA2B8()
{
  result = qword_101A10310;
  if (!qword_101A10310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10310);
  }

  return result;
}

unint64_t sub_100ADA30C()
{
  result = qword_101A10320;
  if (!qword_101A10320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10320);
  }

  return result;
}

unint64_t sub_100ADA360()
{
  result = qword_101A10328;
  if (!qword_101A10328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10328);
  }

  return result;
}

uint64_t sub_100ADA3B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100ADA3FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float sub_100ADA45C()
{
  v2 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CRLProto_Rect(0);
  __chkstk_darwin(v3);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = v10 - v7;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  BinaryDecodingOptions.init()();
  sub_100ADA3B4(&qword_101A10330, type metadata accessor for CRLProto_Rect);
  Message.init(serializedData:extensions:partial:options:)();
  if (!v0)
  {
    sub_100ADA630(v8, v5, type metadata accessor for CRLProto_Rect);
    v1 = *v5;
    sub_100ADA3FC(v5, type metadata accessor for CRLProto_Rect);
  }

  return v1;
}

uint64_t sub_100ADA630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

float sub_100ADA698(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100020E58(v5, v5[3]);
    sub_1006D6258();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100005070(v5);
    v2 = sub_100ADA45C();
  }

  sub_100005070(a1);
  return v2;
}

unint64_t sub_100ADA7BC()
{
  result = qword_101A10338;
  if (!qword_101A10338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10338);
  }

  return result;
}

unint64_t sub_100ADA810()
{
  result = qword_101A10340;
  if (!qword_101A10340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10340);
  }

  return result;
}

id sub_100ADA89C(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_actionString];
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  *&v2[OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_imageItem] = a1;
  v2[OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_isImagePlaceholder] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CRLCommandSetImagePlaceholder();
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_100ADAA20(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_imageItem);
  result = sub_1012E0400(v6, &off_10188FE10);
  if (!v4)
  {
    sub_100BB6AEC(*(v3 + OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_isImagePlaceholder));
    return sub_1012CF6CC(v6, &off_10188FE10, a3);
  }

  return result;
}

uint64_t sub_100ADAB90()
{
}

id sub_100ADABD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetImagePlaceholder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100ADAC7C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform29CRLCommandSetImagePlaceholder_actionString);

  return v1;
}

uint64_t sub_100ADACBC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 6;
    if (a1 != 7)
    {
      v5 = 0;
    }

    v6 = 14;
    if (a1 != 5)
    {
      v6 = 0;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 5;
    v2 = 4;
    v3 = 3;
    if (a1 != 3)
    {
      v3 = 0;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100ADAD54()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v83 = &v63 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v73 = &v63 - v3;
  v82 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v82 - 8);
  __chkstk_darwin(v82);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for LocalizedStringResource();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A10400);
  v15 = sub_1005B981C(&qword_101A10408);
  v16 = *(v15 - 8);
  v80 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v65 = v18;
  *(v18 + 16) = xmmword_101488C80;
  v19 = v18 + v17;
  v67 = *(v15 + 48);
  v68 = v15;
  *(v18 + v17) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  v75 = v9;
  static Locale.current.getter();
  v84 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v4 + 104);
  v77 = v4 + 104;
  v85 = v20;
  (v20)(v6);
  v21 = v14;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = *(v76 + 56);
  v76 += 56;
  v81 = v22;
  v22(v73, 1, 1, v79);
  v23 = type metadata accessor for DisplayRepresentation.Image();
  v24 = *(v23 - 8);
  v72 = *(v24 + 56);
  v78 = v24 + 56;
  v25 = v83;
  v69 = v23;
  v72(v83, 1, 1, v23);
  v26 = v19;
  v74 = v19;
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = v80;
  v64 = v26 + v80;
  v67 = *(v15 + 48);
  *v64 = 1;
  v70 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = v84;
  v29 = v85;
  v85(v6, v84, v82);
  v30 = v6;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = v73;
  v81(v73, 1, 1, v79);
  v32 = v23;
  v33 = v72;
  v72(v25, 1, 1, v32);
  v34 = v21;
  DisplayRepresentation.init(title:subtitle:image:)();
  v67 = 2 * v27;
  v63 = (v74 + 2 * v27);
  v35 = v68;
  v64 = *(v68 + 48);
  *v63 = 9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = v30;
  v29(v30, v28, v82);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v36 = v79;
  v81(v31, 1, 1, v79);
  v37 = v83;
  v33(v83, 1, 1, v69);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = v74 + v67 + v80;
  v67 = *(v35 + 48);
  *v64 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85(v71, v84, v82);
  v66 = v34;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = v36;
  v39 = v81;
  v81(v31, 1, 1, v38);
  v40 = v69;
  v72(v37, 1, 1, v69);
  DisplayRepresentation.init(title:subtitle:image:)();
  v67 = 4 * v80;
  v41 = v74;
  v63 = (v74 + 4 * v80);
  v64 = *(v35 + 48);
  *v63 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85(v71, v84, v82);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v42 = v73;
  v43 = v79;
  v39(v73, 1, 1, v79);
  v44 = v40;
  v45 = v72;
  v72(v83, 1, 1, v44);
  DisplayRepresentation.init(title:subtitle:image:)();
  v46 = v68;
  v47 = (v41 + v67 + v80);
  v67 = *(v68 + 48);
  *v47 = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = v82;
  v85(v71, v84, v82);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v81(v42, 1, 1, v43);
  v45(v83, 1, 1, v69);
  DisplayRepresentation.init(title:subtitle:image:)();
  v49 = v74;
  v67 = *(v46 + 48);
  *(v74 + 6 * v80) = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85(v71, v84, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v50 = v79;
  v51 = v81;
  v81(v73, 1, 1, v79);
  v52 = v69;
  v72(v83, 1, 1, v69);
  DisplayRepresentation.init(title:subtitle:image:)();
  v67 = 8 * v80;
  v63 = (v49 + 7 * v80);
  v53 = v68;
  v64 = *(v68 + 48);
  *v63 = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v54 = v82;
  v85(v71, v84, v82);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v73, 1, 1, v50);
  v55 = v72;
  v72(v83, 1, 1, v52);
  DisplayRepresentation.init(title:subtitle:image:)();
  v56 = v74;
  v64 = *(v53 + 48);
  *(v74 + v67) = 7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = v71;
  v85(v71, v84, v54);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v58 = v73;
  v81(v73, 1, 1, v79);
  v59 = v83;
  v60 = v69;
  v55(v83, 1, 1, v69);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v56 + v67 + v80) = 8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85(v57, v84, v82);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v81(v58, 1, 1, v79);
  v72(v59, 1, 1, v60);
  DisplayRepresentation.init(title:subtitle:image:)();
  v61 = sub_100BD84DC(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD7258 = v61;
  return result;
}

unint64_t sub_100ADBC5C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C676E61697274;
    v6 = 7107189;
    if (a1 != 8)
    {
      v6 = 0x616964656DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1918989427;
    if (a1 != 5)
    {
      v7 = 0x786F4274786574;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C63726963;
    v2 = 0xD000000000000010;
    v3 = 0x657261757173;
    if (a1 != 3)
    {
      v3 = 0x6F4E796B63697473;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701734764;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100ADBD7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100ADBC5C(*a1);
  v5 = v4;
  if (v3 == sub_100ADBC5C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100ADBE08()
{
  result = qword_101A10388;
  if (!qword_101A10388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10388);
  }

  return result;
}

Swift::Int sub_100ADBE5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100ADBC5C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100ADBEC0()
{
  sub_100ADBC5C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100ADBF14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100ADBC5C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100ADBF74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100ADC658(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100ADBFA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100ADBC5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100ADBFD4()
{
  result = qword_101A10390;
  if (!qword_101A10390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10390);
  }

  return result;
}

unint64_t sub_100ADC02C()
{
  result = qword_101A10398;
  if (!qword_101A10398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10398);
  }

  return result;
}

unint64_t sub_100ADC084()
{
  result = qword_101A103A0;
  if (!qword_101A103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103A0);
  }

  return result;
}

unint64_t sub_100ADC0DC()
{
  result = qword_101A103A8;
  if (!qword_101A103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103A8);
  }

  return result;
}

unint64_t sub_100ADC130()
{
  result = qword_101A103B0;
  if (!qword_101A103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103B0);
  }

  return result;
}

unint64_t sub_100ADC184()
{
  result = qword_101A103B8;
  if (!qword_101A103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103B8);
  }

  return result;
}

unint64_t sub_100ADC1DC()
{
  result = qword_101A103C0;
  if (!qword_101A103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103C0);
  }

  return result;
}

uint64_t sub_100ADC230(uint64_t a1)
{
  v2 = sub_100ADC604();

  return static AssistantSchemaEnum.typeDisplayRepresentation.getter(a1, v2);
}

unint64_t sub_100ADC2CC()
{
  result = qword_101A103C8;
  if (!qword_101A103C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103C8);
  }

  return result;
}

uint64_t sub_100ADC320(uint64_t a1)
{
  v2 = sub_100ADC2CC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100ADC370()
{
  result = qword_101A103D0;
  if (!qword_101A103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103D0);
  }

  return result;
}

unint64_t sub_100ADC3C8()
{
  result = qword_101A103D8;
  if (!qword_101A103D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103D8);
  }

  return result;
}

unint64_t sub_100ADC420()
{
  result = qword_101A103E0;
  if (!qword_101A103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103E0);
  }

  return result;
}

uint64_t sub_100ADC474()
{
  if (qword_1019F1C38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100ADC4D0(uint64_t a1)
{
  v2 = sub_100ADC1DC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100ADC520()
{
  result = qword_101A103E8;
  if (!qword_101A103E8)
  {
    sub_1005C4E5C(&qword_101A103F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103E8);
  }

  return result;
}

unint64_t sub_100ADC598()
{
  result = qword_101A103F8;
  if (!qword_101A103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A103F8);
  }

  return result;
}

unint64_t sub_100ADC604()
{
  result = qword_101A10410;
  if (!qword_101A10410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10410);
  }

  return result;
}

unint64_t sub_100ADC658(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875148, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

char *sub_100ADC6AC(void *a1, void *a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_documentSessionEndedAnalyticsDomain];
  *v7 = 0xD000000000000016;
  v7[1] = 0x8000000101552F20;
  *&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_totalEventKeyCount] = 7;
  v8 = &v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_durationKey];
  *v8 = 0x6E6F697461727564;
  v8[1] = 0xE800000000000000;
  v9 = &v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEditKey];
  *v9 = 0x74696445646168;
  v9[1] = 0xE700000000000000;
  v10 = &v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_percentageTimeSpentInEditModeKey];
  *v10 = 0xD00000000000001DLL;
  v10[1] = 0x8000000101552F40;
  v11 = &v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCountKey];
  *v11 = 0xD000000000000012;
  v11[1] = 0x8000000101552F60;
  *&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_commandControllerNotificationSubscriber] = _swiftEmptySetSingleton;
  v12 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_sessionBeganDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEdit] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode] = 0;
  v14(&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_modeBeganDate], 1, 1, v13);
  *&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_timeSpentInEditMode] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount] = 0;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for CRLDocumentSessionAnalyticsManager();
  v15 = objc_msgSendSuper2(&v25, "init");
  v16 = *&v15[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode];
  *&v15[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode] = a3;
  v17 = v15;
  v18 = a3;

  v19 = [objc_opt_self() defaultCenter];
  v20 = qword_1019F1F08;
  v21 = v17;
  if (v20 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v21 selector:"beginSession:" name:qword_101AD7900 object:a1];

  if (qword_1019F1F10 != -1)
  {
    swift_once();
  }

  v22 = qword_101AD7908;
  v23 = a1;
  [v19 addObserver:v21 selector:"endSession:" name:v22 object:v23];

  *&v21[OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_commandControllerNotificationSubscriber] = _swiftEmptySetSingleton;

  return v21;
}

Swift::Void __swiftcall CRLDocumentSessionAnalyticsManager.beginSession()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  v11 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_sessionBeganDate;
  swift_beginAccess();
  sub_10005F954(v0 + v11, v10);
  v12 = (*(v2 + 48))(v10, 1, v1);
  sub_100806B10(v10);
  if (v12 == 1)
  {
    Date.init()();
    (*(v2 + 16))(v7, v4, v1);
    v13 = *(v2 + 56);
    v13(v7, 0, 1, v1);
    swift_beginAccess();
    sub_100015CDC(v7, v0 + v11);
    swift_endAccess();
    v14 = *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode);
    if (v14)
    {
      sub_100006370(0, &qword_101A10430);
      if ([v14 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        v15 = *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          return;
        }

        *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount) = v17;
      }
    }

    (*(v2 + 32))(v7, v4, v1);
    v13(v7, 0, 1, v1);
    v18 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_modeBeganDate;
    swift_beginAccess();
    sub_100015CDC(v7, v0 + v18);
    swift_endAccess();
  }
}

Swift::Void __swiftcall CRLDocumentSessionAnalyticsManager.endSession(isClosingDocument:)(Swift::Bool isClosingDocument)
{
  sub_100ADD014();
  v4 = v3;
  if (*(v3 + 16) == 7)
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    sub_100006370(0, &qword_1019F54D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 sendEventInDomain:v6 lazily:1 eventPayload:isa];

    if (!isClosingDocument)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_documentSessionEndedAnalyticsDomain);
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_documentSessionEndedAnalyticsDomain + 8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  *(inited + 96) = sub_1005B981C(&unk_101A341B0);
  *(inited + 104) = sub_100ADDBB8();
  *(inited + 72) = v4;

  v12 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v12, "Incomplete payload generated for %@ analytics event, payload = %@", 65, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  if (isClosingDocument)
  {
LABEL_7:
    v13 = [objc_opt_self() defaultCenter];
    [v13 removeObserver:v1];

    *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_commandControllerNotificationSubscriber) = _swiftEmptySetSingleton;
  }

LABEL_8:
  sub_100ADD480();
}

void sub_100ADD014()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_sessionBeganDate;
  swift_beginAccess();
  sub_10005F954(v1 + v12, v4);
  v13 = &selRef_editAccessibilityDescription_;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100806B10(v4);
    v14 = _swiftEmptyDictionarySingleton;
LABEL_9:
    v34 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEditKey);
    v35 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEditKey + 8);
    v36 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEdit);
    v37 = objc_allocWithZone(NSNumber);

    v38 = [v37 initWithBool:v36];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v14;
    sub_100043E54(v38, v34, v35, isUniquelyReferenced_nonNull_native);

    v40 = v47;
    v41 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCountKey);
    v42 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCountKey + 8);
    v43 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount);
    v44 = objc_allocWithZone(NSNumber);

    v45 = [v44 v13[391]];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v40;
    sub_100043E54(v45, v41, v42, v46);

    return;
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_durationKey);
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_durationKey + 8);
  v19 = objc_allocWithZone(NSNumber);

  v20 = [v19 initWithDouble:v16];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v47 = _swiftEmptyDictionarySingleton;
  sub_100043E54(v20, v17, v18, v21);

  v22 = v47;
  v23 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode);
  if (v23)
  {
    v24 = v23;
    sub_100ADD5E4(v24);
  }

  v25 = round(*(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_timeSpentInEditMode) / v16 * 100.0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 < 9.22337204e18)
  {
    v26 = v25;
    v27 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_percentageTimeSpentInEditModeKey);
    v28 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_percentageTimeSpentInEditModeKey + 8);
    v29 = objc_allocWithZone(NSNumber);

    v30 = [v29 initWithInteger:v26];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v22;
    v32 = v30;
    v13 = &selRef_editAccessibilityDescription_;
    sub_100043E54(v32, v27, v28, v31);

    v14 = v47;
    v33 = *(v6 + 8);
    v33(v8, v5);
    v33(v11, v5);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100ADD480()
{
  v1 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_sessionBeganDate;
  swift_beginAccess();
  sub_100015CDC(v3, v0 + v6);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_hadEdit) = 0;
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_modeBeganDate;
  swift_beginAccess();
  sub_100015CDC(v3, v0 + v7);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_timeSpentInEditMode) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount) = 0;
  return result;
}

uint64_t sub_100ADD5E4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_modeBeganDate;
  swift_beginAccess();
  sub_10005F954(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100806B10(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_100006370(0, &qword_101A10430);
  if (![a1 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    return (*(v7 + 8))(v9, v6);
  }

  Date.timeIntervalSince(_:)();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_timeSpentInEditMode) = v13 + *(v1 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_timeSpentInEditMode);
  return result;
}

id CRLDocumentSessionAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDocumentSessionAnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100ADDBB8()
{
  result = qword_101A10450;
  if (!qword_101A10450)
  {
    sub_1005C4E5C(&unk_101A341B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10450);
  }

  return result;
}

uint64_t type metadata accessor for CRLDocumentSessionAnalyticsManager()
{
  result = qword_101A104D0;
  if (!qword_101A104D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id _s8Freeform34CRLDocumentSessionAnalyticsManagerC18didSetDocumentMode_4from8animatedySo014CRLiOSDocumentI0C_AHSbtF_0(void *a1, void *a2)
{
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  sub_100006370(0, &qword_101A10430);
  result = [a1 isKindOfClass:swift_getObjCClassFromMetadata()];
  if (!result)
  {
    goto LABEL_4;
  }

  v13 = *(v2 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v2 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_editModeBeganCount) = v15;
LABEL_4:
    sub_100ADD5E4(a2);
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode);
    *(v2 + OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_currentMode) = a1;
    v17 = a1;

    (*(v9 + 32))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v18 = OBJC_IVAR____TtC8Freeform34CRLDocumentSessionAnalyticsManager_modeBeganDate;
    swift_beginAccess();
    sub_100015CDC(v7, v2 + v18);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_100ADDE64()
{
  sub_10000D990();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100ADDF48(void *a1)
{
  v2 = v1;
  v4 = [a1 recordID];
  v20 = [v4 zoneID];

  v5 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v21 = *v2;
  v9 = sub_1007C8A78(v20);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  if (v7[3] >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v2 = v7;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100AA9D1C();
      v7 = v21;
      *v2 = v21;
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v16 = [v5 recordID];
    v17 = [v16 zoneID];

    sub_100AA3154(v9, v20, v17, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, v7);
    v18 = v20;
    goto LABEL_9;
  }

  sub_100A92A18(v12, isUniquelyReferenced_nonNull_native);
  v7 = v21;
  v14 = sub_1007C8A78(v20);
  if ((v13 & 1) != (v15 & 1))
  {

    sub_100006370(0, &qword_1019F69D0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v14;
  *v2 = v21;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v19 = v7[7] + 32 * v9;
  v5 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_14:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_100ADE160(uint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
LABEL_9:
    v8 = *(result + 56) + ((v1 << 11) | (32 * __clz(__rbit64(v5))));
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
    v12 = *(v8 + 25);
    v13 = *(v8 + 26);
    if (v9 >> 62)
    {
      v14 = result;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      result = v14;
      if (v15)
      {
        return 0;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v5 &= v5 - 1;
    if ((*(v10 + 16) != 0) | (v11 | v12 | v13) & 1)
    {
      return 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 1;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100ADE28C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100ADE2F0()
{
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100ADE344()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100ADE3A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100006370(0, &qword_1019F54D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_100ADE498()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100ADE500()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100ADE540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 25);
  v13 = *(a1 + 24);
  v14 = *(a1 + 26);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 25);
  v9 = *(a2 + 26);
  sub_100006370(0, &qword_1019F54D0);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (sub_10066F140(v2, v5) & 1) != 0 && (sub_10066F154(v3, v6), (v10))
  {
    v11 = (v13 ^ v7 | v4 ^ v8 | v14 ^ v9) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100ADE62C(uint64_t a1)
{
  v2 = sub_100BD86C4(_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = a1;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(v30 + 48) + 8 * v11);
    v13 = *(v30 + 56) + 32 * v11;
    v14 = *v13;
    v31 = *(v13 + 24);
    v32 = *(v13 + 25);
    v33 = *(v13 + 26);
    v15 = v12;
    v34 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_1007C8A78(v15);
    v19 = v2[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v2[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_100AAB0A8();
        v17 = v28;
      }
    }

    else
    {
      sub_100A94EE0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1007C8A78(v15);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v23)
    {
      v9 = (v2[7] + 3 * v17);
      *v9 = v31;
      v9[1] = v32;
      v9[2] = v33;

      v8 = v10;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v2[(v17 >> 6) + 8] |= 1 << v17;
      *(v2[6] + 8 * v17) = v15;
      v25 = (v2[7] + 3 * v17);
      *v25 = v31;
      v25[1] = v32;
      v25[2] = v33;

      v26 = v2[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v2[2] = v27;
      v8 = v10;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v10 = v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_100006370(0, &qword_1019F69D0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_100ADE8DC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_10:
    v11 = *(*(a1 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))) + 16);
    v12 = *(v11 + 16);
    v13 = *(v9 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v14 > *(v9 + 3) >> 1)
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_100B3853C(result, v15, 1, v9);
      v9 = result;
    }

    v5 &= v5 - 1;
    if (*(v11 + 16))
    {
      if ((*(v9 + 3) >> 1) - *(v9 + 2) < v12)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = *(v9 + 2);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_27;
        }

        *(v9 + 2) = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_100ADEA78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 zoneID];
  v9 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  v26 = *v4;
  v13 = sub_1007C8A78(v8);
  v14 = *(v11 + 2);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  if (*(v11 + 3) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v4 = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100AA9D1C();
      v11 = v26;
      *v4 = v26;
      if (v17)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_100AA3154(v13, v8, [v9 zoneID], _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, v11);
    v20 = v8;
    goto LABEL_9;
  }

  sub_100A92A18(v16, isUniquelyReferenced_nonNull_native);
  v11 = v26;
  v18 = sub_1007C8A78(v8);
  if ((v17 & 1) != (v19 & 1))
  {

    sub_100006370(0, &qword_1019F69D0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v18;
  *v4 = v26;
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v13 = *(v11 + 7) + 32 * v13;
  v11 = *(v13 + 16);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 16) = v11;
  if ((v21 & 1) == 0)
  {
LABEL_14:
    v11 = sub_100B3853C(0, *(v11 + 2) + 1, 1, v11);
    *(v13 + 16) = v11;
  }

  v23 = *(v11 + 2);
  v22 = *(v11 + 3);
  if (v23 >= v22 >> 1)
  {
    *(v13 + 16) = sub_100B3853C((v22 > 1), v23 + 1, 1, v11);
  }

  v24 = *(v13 + 16);
  *(v24 + 16) = v23 + 1;
  v25 = (v24 + 24 * v23);
  v25[4] = v9;
  v25[5] = a2;
  v25[6] = a3;
}

void sub_100ADEC8C(char **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = [*a2 zoneID];
  v8 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v25 = *a1;
  v12 = sub_1007C8A78(v7);
  v13 = *(v10 + 2);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  if (*(v10 + 3) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100AAB220();
      v10 = v25;
      *a1 = v25;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_100AB0360(v12, v7, _swiftEmptyArrayStorage, v10);
    v19 = v7;
    goto LABEL_9;
  }

  sub_100A95174(v15, isUniquelyReferenced_nonNull_native);
  v10 = v25;
  v17 = sub_1007C8A78(v7);
  if ((v16 & 1) != (v18 & 1))
  {
    sub_100006370(0, &qword_1019F69D0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v17;
  *a1 = v25;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2 = *(v10 + 7);
  v10 = *(v2 + 8 * v12);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v12) = v10;
  if ((v20 & 1) == 0)
  {
LABEL_14:
    v10 = sub_100B3853C(0, *(v10 + 2) + 1, 1, v10);
    *(v2 + 8 * v12) = v10;
  }

  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    *(v2 + 8 * v12) = sub_100B3853C((v21 > 1), v22 + 1, 1, v10);
  }

  v23 = *(v2 + 8 * v12);
  *(v23 + 16) = v22 + 1;
  v24 = (v23 + 24 * v22);
  v24[4] = v8;
  v24[5] = v4;
  v24[6] = v6;
}

uint64_t initializeBufferWithCopyOfBuffer for CRLCloudChangesCollection.CloudZoneChanges.ZoneExistenceChanges(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLCloudChangesCollection.CloudZoneChanges.ZoneExistenceChanges(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLCloudChangesCollection.CloudZoneChanges.ZoneExistenceChanges(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 sub_100ADEFB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_100ADEFC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_100ADF00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100ADF068()
{
  result = qword_101A104E0;
  if (!qword_101A104E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A104E0);
  }

  return result;
}

unint64_t sub_100ADF0C0()
{
  result = qword_101A104E8;
  if (!qword_101A104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A104E8);
  }

  return result;
}

uint64_t sub_100ADF114()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(NSMutableData) init];
  static UTType.heic.getter();
  UTType.identifier.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (v8)
  {
    sub_1005B981C(&qword_101A104F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = kCGImageDestinationLossyCompressionQuality;
    *(inited + 40) = 0x3FE999999999999ALL;
    v10 = kCGImageDestinationLossyCompressionQuality;
    sub_100BD87FC(inited);
    swift_setDeallocating();
    sub_100ADF35C(inited + 32);
    type metadata accessor for CFString(0);
    sub_100ADF3C4();
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CGImageDestinationAddImage(v8, v1, v11.super.isa);
    if (CGImageDestinationFinalize(v8))
    {
      v12 = v6;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_100ADF35C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A104F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100ADF3C4()
{
  result = qword_1019F3BC8;
  if (!qword_1019F3BC8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3BC8);
  }

  return result;
}

unint64_t sub_100ADF420()
{
  result = qword_101A10500;
  if (!qword_101A10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10500);
  }

  return result;
}

unint64_t sub_100ADF478()
{
  result = qword_101A10508;
  if (!qword_101A10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10508);
  }

  return result;
}

uint64_t sub_100ADF51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for CRLBoardIdentifier(0);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for CRLBoardEntity();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100ADF66C, 0, 0);
}

uint64_t sub_100ADF66C()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.appIntents;
  Logger.init(_:)();
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 192))
  {
    if (*(v0 + 192) == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = *(v0 + 112);
      IntentParameter.wrappedValue.getter();
      EntityProperty.wrappedValue.getter();
      v4 = *(v0 + 193);
      sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 & 1;
  *(v0 + 195) = v2 & 1;
  v6 = *(v0 + 104);
  AppDependency.wrappedValue.getter();
  *(v0 + 144) = *(v0 + 16);
  sub_1005B981C(&qword_101A28700);
  v7 = (type metadata accessor for CRLBoardIdentifierAndValue(0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v10 = v9 + v8;
  IntentParameter.wrappedValue.getter();
  sub_10000C564(v6, v10, type metadata accessor for CRLBoardIdentifier);
  sub_10077CA0C(v6, type metadata accessor for CRLBoardEntity);
  *(v10 + v7[7]) = v5;
  v11 = sub_100E947F4(v9);
  *(v0 + 152) = v11;
  swift_setDeallocating();
  sub_10077CA0C(v10, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  *(v0 + 160) = type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_100ADF93C;

  return sub_1010B5FA4(v11);
}

uint64_t sub_100ADF93C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100ADFD58;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100ADFAC4;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100ADFAC4()
{
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_100ADFB3C, 0, 0);
}

uint64_t sub_100ADFB3C()
{
  v1 = *(v0 + 195);
  v2 = *(v0 + 128);
  v10 = *(v0 + 120);
  v11 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  IntentParameter.wrappedValue.getter();
  *(v0 + 194) = v1;
  EntityProperty.wrappedValue.setter();
  sub_10077CA0C(v4, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v7 = sub_100B0768C();
  sub_10000C564(v3, v6, type metadata accessor for CRLBoardEntity);
  sub_10000C564(v6, v5, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.setter();
  sub_10077CA0C(v6, type metadata accessor for CRLBoardEntity);
  sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
  *(v0 + 24) = v7;
  sub_10070C278(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_10077CA0C(v4, type metadata accessor for CRLBoardEntity);
  (*(v2 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100ADFD58()
{

  return _swift_task_switch(sub_100ADFDCC, 0, 0);
}

uint64_t sub_100ADFDCC()
{
  v19 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v5 = 136315394;
    IntentParameter.wrappedValue.getter();
    sub_10000C564(v3, v4, type metadata accessor for CRLBoardIdentifier);
    sub_10077CA0C(v3, type metadata accessor for CRLBoardEntity);
    v8 = sub_10084B8C8();
    v10 = v9;
    sub_10077CA0C(v4, type metadata accessor for CRLBoardIdentifier);
    v11 = sub_101007640(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Problem changing object connectors visibility for board: %s - %@", v5, 0x16u);
    sub_10077CA6C(v6);

    sub_100005070(v7);
  }

  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];
  type metadata accessor for AppIntentError();
  sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v13 + 8))(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100AE00FC()
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
  sub_10061655C(v6, qword_101AD7260);
  sub_1005EB3DC(v6, qword_101AD7260);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100AE02F4()
{
  v0 = sub_1005B981C(&qword_101A10528);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A10530);
  __chkstk_darwin(v1);
  sub_100AE1014();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A10538);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._object = 0x8000000101588340;
  v3._countAndFlagsBits = 0xD000000000000017;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A10540);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100AE04F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1C40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD7260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100AE05A4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100ADF51C(a1, v4, v5, v6);
}

_BYTE *sub_100AE0658@<X0>(void *a1@<X8>)
{
  result = sub_100AE06D0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100AE0684(uint64_t a1)
{
  v2 = sub_100AE1014();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

_BYTE *sub_100AE06D0()
{
  v52 = type metadata accessor for InputConnectionBehavior();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v34[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v1 - 8);
  v49 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v48 = &v34[-v4];
  v5 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v5 - 8);
  v50 = &v34[-v6];
  v7 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v7 - 8);
  v46 = &v34[-v8];
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v47 = type metadata accessor for LocalizedStringResource();
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v45 = &v34[-v17];
  v43 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v18;
  v37 = v9;
  v19(v12, v18, v9);
  v36 = v10 + 104;
  v38 = v19;
  v20 = v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v53 + 56);
  v53 += 56;
  v44 = v21;
  v21(v20, 0, 1, v47);
  v22 = type metadata accessor for CRLBoardEntity();
  (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v12, v18, v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = v48;
  IntentDialog.init(_:)();
  v24 = type metadata accessor for IntentDialog();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v39 = v26;
  v40 = v25 + 56;
  v26(v23, 0, 1, v24);
  v26(v49, 1, 1, v24);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v42 = v27;
  v27(v51);
  sub_10070C278(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v28 = v46;
  v50 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v43 = sub_1005B981C(&qword_1019FF230);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v35;
  v30 = v37;
  v31 = v38;
  v38(v12, v35, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v12, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44(v28, 0, 1, v47);
  v57 = 0;
  v32 = v39;
  v39(v48, 1, 1, v24);
  v32(v49, 1, 1, v24);
  (v42)(v51, v41, v52);
  sub_10077C964();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1005B981C(&qword_1019F6280);
  v55 = 0xD00000000000001FLL;
  v56 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v50;
}

unint64_t sub_100AE1014()
{
  result = qword_101A10520;
  if (!qword_101A10520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10520);
  }

  return result;
}

id sub_100AE1128(uint64_t a1, char *a2, void *a3)
{
  v128 = a1;
  v140 = sub_1005B981C(&qword_101A102C0);
  v129 = *(v140 - 8);
  __chkstk_darwin(v140);
  v127 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v100 - v7;
  v8 = type metadata accessor for CRKeyPath();
  v137 = *(v8 - 8);
  v138 = v8;
  __chkstk_darwin(v8);
  v124 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v100 - v11;
  v123 = _s18SurfaceCapsuleDataVMa();
  __chkstk_darwin(v123);
  v122 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v100 - v14;
  v118 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v118);
  v125 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v100 - v17;
  __chkstk_darwin(v18);
  v134 = &v100 - v19;
  v20 = sub_1005B981C(&unk_101A09DC0);
  v113 = *(v20 - 8);
  v114 = v20;
  __chkstk_darwin(v20);
  v112 = &v100 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v110 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v100 - v26;
  v111 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v111);
  v120 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v121 = &v100 - v29;
  __chkstk_darwin(v30);
  v131 = &v100 - v31;
  __chkstk_darwin(v32);
  v133 = &v100 - v33;
  v34 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v34 - 8);
  v107 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v100 - v37;
  v39 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v39 - 8);
  v105 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v100 - v42;
  v130 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v130);
  v108 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v109 = &v100 - v46;
  v48 = __chkstk_darwin(v47);
  v132 = &v100 - v49;
  if (a3)
  {
    v50 = a3;
  }

  else
  {
    v50 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{250.0, 140.0}];
  }

  v119 = a2;
  (*(**&a2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v48);
  v106 = v23;
  v103 = *(v23 + 56);
  v101 = v43;
  v103(v43, 0, 1, v22);
  v150 = 1;
  v51 = type metadata accessor for CRLTableAnchorHint();
  v102 = *(*(v51 - 8) + 56);
  v102(v38, 1, 1, v51);
  v117 = a3;
  v52 = v50;
  v53 = v22;
  v104 = v22;
  v54 = v52;
  v116 = v52;
  sub_101271CCC(v52, v159);

  v55 = v105;
  sub_10000BE14(v43, v105, &qword_1019F6990);
  v56 = v107;
  sub_10000BE14(v38, v107, &unk_101A09DD0);
  v57 = v132;
  v103(v132, 1, 1, v53);
  v58 = v130;
  v59 = *(v130 + 7);
  v60 = v57 + *(v130 + 6);
  v102((v57 + v59), 1, 1, v51);
  *(v57 + *(v58 + 8)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v55, v57, &qword_1019F6990);
  sub_10000CAAC(v38, &unk_101A09DD0);
  sub_10000CAAC(v101, &qword_1019F6990);
  v61 = (v57 + *(v58 + 5));
  v62 = v159[1];
  *v61 = v159[0];
  v61[1] = v62;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 0u;
  *(v60 + 64) = v150;
  sub_10002C638(v56, v57 + v59, &unk_101A09DD0);
  v63 = v109;
  sub_100AE3E04(v57, v109, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v151);
  v64 = v115;
  UUID.init()();
  v65 = v111;
  v107 = *(v111 + 52);
  v146 = v155;
  v147 = v156;
  v148 = v157;
  v149 = v158;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v145 = v154;
  v105 = sub_1005B981C(&unk_101A09DE0);
  v103 = sub_1007492B8();
  v66 = v133;
  CRRegister.init(wrappedValue:)();
  *(v66 + *(v65 + 56)) = _swiftEmptyDictionarySingleton;
  v67 = v66;
  v68 = v106;
  v69 = v104;
  (*(v106 + 16))(v110, v64, v104);
  CRRegister.init(_:)();
  sub_100AE3E04(v63, v108, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100AE430C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v142) = 0;
  CRRegister.init(_:)();
  LOBYTE(v142) = 0;
  CRRegister.init(_:)();
  *&v142 = 0;
  *(&v142 + 1) = 0xE000000000000000;
  v70 = v67;
  CRRegister.init(_:)();
  v146 = v155;
  v147 = v156;
  v148 = v157;
  v149 = v158;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v145 = v154;
  v71 = v112;
  CRRegister.init(_:)();
  (*(v68 + 8))(v64, v69);
  v130 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_100AE3E6C(v63, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v113 + 40))(v70 + v107, v71, v114);
  v72 = v118;
  v73 = v134;
  *(v134 + *(v118 + 20)) = _swiftEmptyDictionarySingleton;
  sub_100AE430C(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v74 = v135;
  *(v135 + *(v72 + 20)) = _swiftEmptyDictionarySingleton;
  v75 = v74;
  CROrderedSet.init()();
  *(v75 + *(v123 + 20)) = _swiftEmptyDictionarySingleton;
  v118 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  v76 = v136;
  CRKeyPath.init(_:)();
  sub_100AE3E04(v75, v122, _s18SurfaceCapsuleDataVMa);
  (*(v137 + 16))(v124, v76, v138);
  sub_100AE430C(&qword_1019FBFF0, _s18SurfaceCapsuleDataVMa);
  v77 = v139;
  Capsule.init(_:id:)();
  v78 = v70;
  v79 = v131;
  sub_10000BE14(v78, v131, &unk_101A226A0);
  v80 = v126;
  sub_100AE3E04(v73, v126, type metadata accessor for CRLContainerItemCRDTData);
  v81 = v129;
  v82 = *(v129 + 16);
  v83 = v127;
  v84 = v77;
  v85 = v140;
  v82(v127, v84, v140);
  *&v142 = 0x4000000000000;
  *(&v142 + 1) = 0x2000400000000;
  v143 = 0x4000000000000uLL;
  LOBYTE(v144) = 1;
  type metadata accessor for CRLSurfaceItemData();
  v86 = swift_allocObject();
  v82((v86 + qword_101AD7250), v83, v85);
  v87 = v121;
  sub_10000BE14(v79, v121, &unk_101A226A0);
  v88 = v125;
  sub_100AE3E04(v80, v125, type metadata accessor for CRLContainerItemCRDTData);
  sub_100AE3E04(v88, v86 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v89 = v120;
  sub_10000BE14(v87, v120, &unk_101A226A0);
  sub_10000BE14(v89, v86 + *(*v86 + 736), &unk_101A226A0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v89, &unk_101A226A0);
  sub_100AE3E6C(v88, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v87, &unk_101A226A0);
  v90 = *(v81 + 8);
  v91 = v83;
  v92 = v140;
  v90(v91, v140);
  sub_100AE3E6C(v80, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v131, &unk_101A226A0);
  v93 = sub_100747AF0(&v142, 12);
  v94 = objc_allocWithZone(type metadata accessor for CRLSurfaceItem());
  v95 = OBJC_IVAR____TtC8Freeform14CRLSurfaceItem_cachedBoardId;
  v96 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v96 - 8) + 56))(&v94[v95], 1, 1, v96);
  *&v94[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v128;
  *&v94[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v93;
  v97 = type metadata accessor for CRLBoardItemBase(0);
  v141.receiver = v94;
  v141.super_class = v97;
  v98 = objc_msgSendSuper2(&v141, "init");

  v90(v139, v92);
  (*(v137 + 8))(v136, v138);
  sub_100AE3E6C(v135, _s18SurfaceCapsuleDataVMa);
  sub_100AE3E6C(v134, type metadata accessor for CRLContainerItemCRDTData);
  sub_100AE3E6C(v132, v130);
  sub_10000CAAC(v133, &unk_101A226A0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v98;
}

id sub_100AE22DC()
{
  v1 = v0;
  type metadata accessor for CRLSurfaceItemData();
  swift_dynamicCastClassUnconditional();

  v2 = sub_100AD6138(0);

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLSurfaceItem());
  v5 = OBJC_IVAR____TtC8Freeform14CRLSurfaceItem_cachedBoardId;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for CRLBoardItemBase(0);
  v7 = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100AE2454(uint64_t a1, uint64_t a2)
{
  v163 = a2;
  v160 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v160);
  v161 = v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v162 = v144 - v5;
  __chkstk_darwin(v6);
  v170 = v144 - v7;
  v171 = sub_1005B981C(&qword_101A102C0);
  v180 = *(v171 - 8);
  __chkstk_darwin(v171);
  v173 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v169 = v144 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v167);
  v16 = v144 - v15;
  v17 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v17 - 8);
  v149 = v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v19);
  v158 = v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v159 = v144 - v22;
  __chkstk_darwin(v23);
  v174 = v144 - v24;
  __chkstk_darwin(v25);
  v27 = v144 - v26;
  v28 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v28 - 8);
  v145 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v146 = v144 - v31;
  __chkstk_darwin(v32);
  v148 = v144 - v33;
  __chkstk_darwin(v34);
  v150 = v144 - v35;
  __chkstk_darwin(v36);
  v166 = v144 - v37;
  v39 = __chkstk_darwin(v38);
  v41 = v144 - v40;
  v147 = v12;
  v42 = *(v12 + 48);
  v152 = v12 + 48;
  v153 = a1;
  v165 = v11;
  v151 = v42;
  v43 = (v42)(a1, 1, v11, v39);
  v168 = v19;
  v172 = v27;
  if (v43 != 1)
  {
    v157 = v14;
    type metadata accessor for CRLSurfaceItemData();
    v44 = swift_dynamicCastClassUnconditional();
    v45 = *(*v44 + 736);
    swift_beginAccess();
    sub_10000BE14(v44 + v45, v27, &unk_101A226A0);
    sub_1005B981C(&qword_101A01F08);
    v46 = v149;
    CRRegister.wrappedValue.getter();
    v47 = v16;
    sub_10000CAAC(v27, &unk_101A226A0);
    sub_10000BE14(v46, v41, &qword_1019F6990);
    sub_100AE3E6C(v46, type metadata accessor for CRLBoardItemParentAffinity);
    v48 = v167[12];
    sub_10000BE14(v41, v47, &qword_1019F6990);
    sub_10000BE14(v153, v47 + v48, &qword_1019F6990);
    v49 = v165;
    v50 = v151;
    if (v151(v47, 1, v165) == 1)
    {
      sub_10000CAAC(v41, &qword_1019F6990);
      if (v50(v47 + v48, 1, v49) == 1)
      {
        sub_10000CAAC(v47, &qword_1019F6990);
LABEL_11:
        v27 = v172;
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v51 = v166;
    sub_10000BE14(v47, v166, &qword_1019F6990);
    if (v50(v47 + v48, 1, v49) == 1)
    {
      sub_10000CAAC(v41, &qword_1019F6990);
      (*(v147 + 8))(v51, v49);
LABEL_7:
      sub_10000CAAC(v47, &unk_101A0AFE0);
LABEL_8:
      v167 = objc_opt_self();
      v52 = [v167 _atomicIncrementAssertCount];
      v177[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v177);
      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      v55 = [v54 lastPathComponent];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v59 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v52;
      v61 = sub_1005CF000();
      *(inited + 96) = v61;
      v62 = sub_100AE430C(&qword_1019F52E0, sub_1005CF000);
      *(inited + 104) = v62;
      *(inited + 72) = v53;
      *(inited + 136) = &type metadata for String;
      v63 = sub_1000053B0();
      *(inited + 112) = v56;
      *(inited + 120) = v58;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v63;
      *(inited + 152) = 107;
      v64 = v177[0];
      *(inited + 216) = v61;
      *(inited + 224) = v62;
      *(inited + 192) = v64;
      v65 = v53;
      v66 = v64;
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v59, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v59, &_mh_execute_header, v68, "Changing the parent container while cloning a surface is not allowed", 68, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v69 = swift_allocObject();
      v69[2] = 8;
      v69[3] = 0;
      v69[4] = 0;
      v69[5] = 0;
      v70 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v73 = String._bridgeToObjectiveC()();

      [v167 handleFailureInFunction:v71 file:v72 lineNumber:107 isFatal:0 format:v73 args:v70];

      goto LABEL_11;
    }

    v139 = v147;
    v140 = *(v147 + 32);
    v141 = v47 + v48;
    v167 = v41;
    v142 = v157;
    v140(v157, v141, v49);
    sub_100AE430C(&qword_1019F37C0, &type metadata accessor for UUID);
    LODWORD(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
    v143 = *(v139 + 8);
    v143(v142, v49);
    sub_10000CAAC(v167, &qword_1019F6990);
    v143(v51, v49);
    sub_10000CAAC(v47, &qword_1019F6990);
    v27 = v172;
    if ((v156 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_12:
  v74 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v75 = type metadata accessor for CRLSurfaceItemData();
  v76 = swift_dynamicCastClassUnconditional();
  v77 = *(*v76 + 736);
  swift_beginAccess();
  sub_10000BE14(v76 + v77, v27, &unk_101A226A0);
  sub_100AE4280();
  CRType.copy(renamingReferences:)();
  sub_10000CAAC(v27, &unk_101A226A0);
  v166 = v74;
  v78 = swift_dynamicCastClassUnconditional();
  v79 = qword_101AD7250;
  swift_beginAccess();
  v80 = v180;
  v81 = *(v180 + 16);
  v155 = v180 + 16;
  v156 = v81;
  v82 = v78 + v79;
  v83 = v173;
  v84 = v171;
  v81(v173, v82, v171);
  v85 = v169;
  Capsule.copy()();
  v167 = *(v80 + 8);
  v180 = v80 + 8;
  (v167)(v83, v84);
  v86 = swift_dynamicCastClassUnconditional();
  v87 = qword_101AD8098;
  swift_beginAccess();
  v88 = v86 + v87;
  v89 = v162;
  v154 = type metadata accessor for CRLContainerItemCRDTData;
  sub_100AE3E04(v88, v162, type metadata accessor for CRLContainerItemCRDTData);
  sub_100AE430C(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
  v90 = v170;
  CRType.copy()();
  v160 = type metadata accessor for CRLContainerItemCRDTData;
  sub_100AE3E6C(v89, type metadata accessor for CRLContainerItemCRDTData);
  v91 = v172;
  sub_10000BE14(v174, v172, &unk_101A226A0);
  sub_100AE3E04(v90, v89, type metadata accessor for CRLContainerItemCRDTData);
  v92 = v173;
  v93 = v85;
  v94 = v156;
  v156(v173, v93, v84);
  v95 = swift_dynamicCastClassUnconditional();
  v96 = *(v95 + 40);
  v178[0] = *(v95 + 24);
  v178[1] = v96;
  v179 = *(v95 + 56);
  v157 = *(swift_dynamicCastClassUnconditional() + 16);
  v144[1] = v75;
  v97 = swift_allocObject();
  v98 = v92;
  v99 = v171;
  v94(v97 + qword_101AD7250, v98, v171);
  v100 = v159;
  sub_10000BE14(v91, v159, &unk_101A226A0);
  v101 = v161;
  v102 = v154;
  sub_100AE3E04(v89, v161, v154);
  v103 = v102;
  v104 = v99;
  sub_100AE3E04(v101, v97 + qword_101AD8098, v103);
  v105 = v158;
  sub_10000BE14(v100, v158, &unk_101A226A0);
  sub_10000BE14(v105, v97 + *(*v97 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  v106 = v105;
  v107 = v167;
  sub_10000CAAC(v106, &unk_101A226A0);
  v108 = v101;
  v109 = v160;
  sub_100AE3E6C(v108, v160);
  sub_10000CAAC(v100, &unk_101A226A0);
  v107(v173, v104);
  sub_100AE3E6C(v89, v109);
  v110 = v172;
  sub_10000CAAC(v172, &unk_101A226A0);
  v111 = sub_100747AF0(v178, v157);
  v112 = v111;
  v113 = v163;
  if (*(v163 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    __chkstk_darwin(v111);
    v144[-2] = v113;
    __chkstk_darwin(v114);
    v144[-2] = sub_100AD8D3C;
    v144[-1] = v115;
    swift_beginAccess();
    v116 = v164;
    Capsule.mutate<A>(_:)();
    if (v116)
    {
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    swift_endAccess();
    v117 = 0;
  }

  else
  {
    v117 = v164;
  }

  sub_100D5EFEC(v113);
  if (v117)
  {
    v118 = v117;

    sub_100AE3E6C(v170, type metadata accessor for CRLContainerItemCRDTData);
    v107(v169, v104);
    sub_10000CAAC(v174, &unk_101A226A0);
  }

  else
  {
    v173 = 0;
    v119 = v148;
    sub_10000BE14(v153, v148, &qword_1019F6990);
    v120 = v165;
    v121 = v151;
    if (v151(v119, 1, v165) == 1)
    {
      v122 = swift_dynamicCastClassUnconditional();
      v123 = *(*v122 + 736);
      swift_beginAccess();
      sub_10000BE14(v122 + v123, v110, &unk_101A226A0);

      sub_1005B981C(&qword_101A01F08);
      v124 = v149;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v110, &unk_101A226A0);
      v125 = v150;
      sub_10000BE14(v124, v150, &qword_1019F6990);
      v126 = v148;
      sub_100AE3E6C(v124, type metadata accessor for CRLBoardItemParentAffinity);
      if (v121(v126, 1, v165) != 1)
      {
        sub_10000CAAC(v126, &qword_1019F6990);
      }
    }

    else
    {
      v127 = v147;
      v125 = v150;
      (*(v147 + 32))(v150, v119, v120);
      (*(v127 + 56))(v125, 0, 1, v120);
    }

    v128 = v146;
    sub_10000BE14(v125, v146, &qword_1019F6990);
    swift_beginAccess();
    v129 = v145;
    sub_10000BE14(v128, v145, &qword_1019F6990);
    sub_1005B981C(&qword_101A01F08);
    v130 = CRRegister.wrappedValue.modify();
    sub_10002C638(v129, v131, &qword_1019F6990);
    v130(v177, 0);
    sub_10000CAAC(v128, &qword_1019F6990);
    swift_endAccess();

    sub_10000CAAC(v150, &qword_1019F6990);
    v132 = *(v175 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v133 = objc_allocWithZone(type metadata accessor for CRLSurfaceItem());
    v134 = OBJC_IVAR____TtC8Freeform14CRLSurfaceItem_cachedBoardId;
    v135 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v135 - 8) + 56))(&v133[v134], 1, 1, v135);
    *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v132;
    *&v133[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v112;
    v136 = type metadata accessor for CRLBoardItemBase(0);
    v176.receiver = v133;
    v176.super_class = v136;
    v137 = v132;
    v118 = objc_msgSendSuper2(&v176, "init");

    sub_100AE3E6C(v170, type metadata accessor for CRLContainerItemCRDTData);
    (v167)(v169, v171);
    sub_10000CAAC(v174, &unk_101A226A0);
  }

  return v118;
}

id sub_100AE3CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSurfaceItem()
{
  result = qword_101A10578;
  if (!qword_101A10578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100AE3D74()
{
  sub_100028BF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100AE3E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100AE3E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100AE4280()
{
  result = qword_101A09E00;
  if (!qword_101A09E00)
  {
    sub_1005C4E5C(&unk_101A226A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09E00);
  }

  return result;
}

uint64_t sub_100AE430C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100AE4464(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_id;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  if (a2)
  {
    a2 = a2;
    [a2 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A11F40);
    swift_dynamicCast();
    *&v6[OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow] = v12;
  }

  else
  {
    *&v6[OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow] = 0;
  }

  v13.receiver = v6;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, "init");

  (*(v9 + 8))(a1, v8);
  return v10;
}

void sub_100AE47D8(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    v10 = v9;
    sub_1012E0400(v10, &off_10188FE10);

    if (v4)
    {
    }

    else
    {
      v11 = *(v5 + OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow);
      v12 = *((swift_isaMask & *v10) + 0x1D0);
      v13 = v11;
      v12(v11);
      v14 = v10;
      sub_1012CF6CC(v14, &off_10188FE10, a3);
    }
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 32;
    v28 = v40;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Unable to retrieve board item.", 30, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item.");
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:32 isFatal:1 format:v37 args:v34];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100AE4CC4()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow);
}

id sub_100AE4D3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetShadow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetShadow()
{
  result = qword_101A105B0;
  if (!qword_101A105B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100AE4E44()
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

id sub_100AE4EDC(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_id;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  if (a2)
  {
    v8 = a2;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A11F40);
    swift_dynamicCast();
    *&v2[OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow] = v11;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_shadow] = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CRLCommandSetShadow();
  v9 = objc_msgSendSuper2(&v12, "init");
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_100AE5050(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100020E58(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_100AE6760(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100AE689C(v3, v4);
    }

    else
    {
      v6 = sub_100AE6818(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100005070(v8);
  return v6;
}

double CRL3DRotation.normalized.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  if (vaddv_f32(v2) == 0.0)
  {
    return 0.0;
  }

  v4 = vadd_f32(v2, vdup_lane_s32(v2, 1)).u32[0];
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  *&result = vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]).u64[0];
  return result;
}

double static CRL3DRotation.* infix(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1.f32, 1), vextq_s8(v3, v3, 8uLL), a1.f32[0]);
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a2, a1, 3), v5, a1, 2), v4).u64[0];
  return result;
}

double sub_100AE51F0(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_101494BA0);
          v44 = xmmword_101494BB0;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_101494BC0);
          v44 = xmmword_101494BD0;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_101494B80);
        v44 = xmmword_101494B90;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

float CRL3DRotation.angle.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = atan2f(sqrtf(v1.f32[2] + vaddv_f32(*v1.f32)), a1.f32[3]);
  return v2 + v2;
}

double CRL3DRotation.axis.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

__n128 CRL3DRotation.imag.setter(__n128 result)
{
  result.n128_u32[3] = v1->n128_u32[3];
  *v1 = result;
  return result;
}

__n128 (*CRL3DRotation.imag.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_100AE562C;
}

__n128 sub_100AE562C(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  **(v1 + 4) = v2;
  free(v1);
  return result;
}

__n128 (*CRL3DRotation.real.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 24) = HIDWORD(v4);
  return sub_100AE56CC;
}

__n128 sub_100AE56CC(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[6];
  **(v1 + 2) = v2;
  free(v1);
  return result;
}

double CRL3DRotation.inverse.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_101494BE0);
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrecpe_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrecps_f32(v2.u32[0], v3));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrecps_f32(v2.u32[0], v4)).f32[0]).u64[0];
  return result;
}

void (*CRL3DRotation.vector.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *v1;
  return sub_100AE57B4;
}

void sub_100AE57B4(void **a1)
{
  v1 = *a1;
  *v1[2] = *v1;
  free(v1);
}

uint64_t sub_100AE57CC(__n128 *a1, __n128 *a2)
{
  v10 = *a2;
  v2 = CRL3DRotation.rawValue.getter(*a1);
  v4 = v3;
  v5 = CRL3DRotation.rawValue.getter(v10);
  v7 = v6;
  v8 = sub_1009F9488(v2, v4, v5, v6);
  sub_10002640C(v5, v7);
  sub_10002640C(v2, v4);
  return v8 & 1;
}

uint64_t CRL3DRotation.encode(to:)(void *a1, __n128 a2)
{
  v9 = a2;
  v3 = sub_1005B981C(&qword_101A105C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100AE74BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = CRL3DRotation.rawValue.getter(v9);
  v11 = v7;
  sub_1006D63D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10002640C(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t CRL3DRotation.rawValue.getter(__n128 a1)
{
  v3[0] = sub_10067F244(a1.n128_u32[0]);
  v3[1] = sub_10067F244(a1.n128_u32[1]);
  v3[2] = sub_10067F244(a1.n128_u32[2]);
  v3[3] = sub_10067F244(a1.n128_u32[3]);
  return sub_100AE5050(v3, &v4);
}

uint64_t sub_100AE5A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_100AE5AFC(uint64_t a1)
{
  v2 = sub_100AE74BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100AE5B38(uint64_t a1)
{
  v2 = sub_100AE74BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100AE5B74@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100AE72CC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void CRL3DRotation.hash(into:)(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v4));
}

uint64_t sub_100AE5C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100AE69B8(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_100AE5C84@<X0>(uint64_t *a1@<X8>)
{
  result = CRL3DRotation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100AE5CB0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  CRL3DRotation.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100AE5D04()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  CRL3DRotation.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100AE5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100AE781C();
  v7 = sub_100AE756C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100AE5DBC()
{
  sub_100AE781C();
  sub_100AE77C8();
  return CRValue<>.init(from:)();
}

uint64_t sub_100AE5E28()
{
  sub_100AE781C();
  sub_100AE77C8();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100AE5E84(uint64_t a1)
{
  v2 = sub_100AE781C();
  v3 = sub_100AE77C8();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Data);
}

uint64_t sub_100AE5F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AE77C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Data);
}

float32x4_t static CRL3DRotation.*= infix(_:_:)(float32x4_t *a1, float a2)
{
  result = vmulq_n_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation.*= infix(_:_:)(float32x2_t *a1, float32x4_t a2)
{
  v2 = vnegq_f32(a2);
  v3 = vtrn2q_s32(a2, vtrn1q_s32(a2, v2));
  v4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v2, 8uLL), *a1, 1), vextq_s8(v3, v3, 8uLL), COERCE_FLOAT(*a1->f32));
  v5 = vrev64q_s32(a2);
  v5.i32[0] = v2.i32[1];
  v5.i32[3] = v2.i32[2];
  result = vaddq_f32(v4, vmlaq_laneq_f32(vmulq_laneq_f32(a2, *a1->f32, 3), v5, *a1->f32, 2));
  *a1->f32 = result;
  return result;
}

float32x4_t static CRL3DRotation.+= infix(_:_:)(float32x4_t *a1, float32x4_t a2)
{
  result = vaddq_f32(*a1, a2);
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation.-= infix(_:_:)(float32x4_t *a1, float32x4_t a2)
{
  result = vsubq_f32(*a1, a2);
  *a1 = result;
  return result;
}

double static CRL3DRotation./ infix(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, xmmword_101494BE0);
  v3 = vmulq_f32(a2, a2);
  *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v3.i32[0] = vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)).u32[0];
  v4 = vrecpe_f32(v3.u32[0]);
  v5 = vmul_f32(v4, vrecps_f32(v3.u32[0], v4));
  v6 = vmulq_n_f32(v2, vmul_f32(v5, vrecps_f32(v3.u32[0], v5)).f32[0]);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a1.f32, 1), vextq_s8(v8, v8, 8uLL), a1.f32[0]);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, a1, 3), v10, a1, 2), v9).u64[0];
  return result;
}

float32x4_t static CRL3DRotation./= infix(_:_:)(float32x4_t *a1, int32x2_t a2)
{
  result = vdivq_f32(*a1, vdupq_lane_s32(a2, 0));
  *a1 = result;
  return result;
}

float32x4_t static CRL3DRotation./= infix(_:_:)(float32x2_t *a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, xmmword_101494BE0);
  v3 = vmulq_f32(a2, a2);
  *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v3.i32[0] = vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)).u32[0];
  v4 = vrecpe_f32(v3.u32[0]);
  v5 = vmul_f32(v4, vrecps_f32(v3.u32[0], v4));
  v6 = vmulq_n_f32(v2, vmul_f32(v5, vrecps_f32(v3.u32[0], v5)).f32[0]);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a1, 1), vextq_s8(v8, v8, 8uLL), COERCE_FLOAT(*a1->f32));
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, *a1->f32, 3), v10, *a1->f32, 2), v9);
  *a1->f32 = result;
  return result;
}

char *sub_100AE613C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_10002640C(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10002640C(v6, v5);
    *v3 = xmmword_10146F370;
    sub_10002640C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_100AE65E0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_10002640C(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10146F370;
    sub_10002640C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100AE65E0(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_100AE64E0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100AE6760(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100AE689C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100AE6818(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100AE6574(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100AE65E0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100AE6694(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100AE6710@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100AE6760(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100AE6818(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100AE689C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100AE6918(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100AE69B8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v4 = HIDWORD(a1) - a1;
LABEL_11:
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_10146C6B0;
  __src = &type metadata for Int;
  sub_1005B981C(&qword_1019FB560);
  String.init<A>(describing:)();
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  v11 = sub_1005CF000();
  inited[7] = v11;
  v12 = sub_1005CF04C();
  inited[4] = v10;
  v13 = (inited + 4);
  inited[8] = v12;
  if (v4 == 16)
  {
    goto LABEL_38;
  }

  v14 = v12;
  v67 = v2;
  v66 = objc_opt_self();
  v68 = [v66 _atomicIncrementAssertCount];
  __src = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &__src);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v17;

  if (qword_1019F20A0 != -1)
  {
LABEL_83:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v68;
  *(v19 + 96) = v11;
  *(v19 + 104) = v14;
  *(v19 + 72) = v2;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(v19 + 112) = v9;
  *(v19 + 120) = v4;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 147;
  v21 = __src;
  *(v19 + 216) = v11;
  *(v19 + 224) = v14;
  *(v19 + 192) = v21;
  v22 = v2;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "expected equality between two values of type %{public}@", 55, 2, inited);

  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  *(v4 + 16) = 8;
  *(v4 + 24) = 0;
  v3 = (v4 + 24);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v68 = inited;
  v14 = inited[2];
  if (!v14)
  {
LABEL_42:
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v41 file:v42 lineNumber:147 isFatal:0 format:v43 args:v40];

    sub_10002640C(a1, v67);
    swift_setDeallocating();
    swift_arrayDestroy();
    return 0;
  }

  v2 = 0;
  v11 = 40;
  while (1)
  {
    v26 = (v13 + 40 * v2);
    v9 = v26[3];
    sub_100020E58(v26, v9);
    v27 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v28 = *v3;
    v29 = *(v27 + 16);
    v30 = __OFADD__(*v3, v29);
    v31 = *v3 + v29;
    if (v30)
    {
      goto LABEL_80;
    }

    v9 = *(v4 + 32);
    if (v9 >= v31)
    {
      goto LABEL_30;
    }

    if (v9 + 0x4000000000000000 < 0)
    {
      goto LABEL_81;
    }

    v32 = *(v4 + 40);
    if (2 * v9 > v31)
    {
      v31 = 2 * v9;
    }

    *(v4 + 32) = v31;
    if ((v31 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_82;
    }

    inited = v27;
    v33 = swift_slowAlloc();
    v34 = v33;
    *(v4 + 40) = v33;
    if (!v32)
    {
      break;
    }

    if (v33 != v32 || v33 >= &v32[8 * v28])
    {
      memmove(v33, v32, 8 * v28);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v27 = inited;
LABEL_30:
    v34 = *(v4 + 40);
    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_31:
    v36 = *(v27 + 16);
    if (v36)
    {
      v37 = (v27 + 32);
      v38 = *v3;
      do
      {
        v39 = *v37++;
        *&v34[8 * v38] = v39;
        v38 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          goto LABEL_65;
        }

        *v3 = v38;
      }

      while (--v36);
    }

    if (++v2 == v14)
    {
      goto LABEL_42;
    }
  }

  v27 = inited;
  if (v34)
  {
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  swift_setDeallocating();
  sub_100005070(v13);
  v28 = _swiftEmptyArrayStorage;
  v14 = a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      __src = a1;
      v72 = v2;
      v73 = BYTE2(v2);
      v74 = BYTE3(v2);
      v75 = BYTE4(v2);
      v9 = (v2 >> 50) & 0x3F;
      v76 = BYTE5(v2);
      if (v9)
      {
        inited = sub_100B39FD8((v2 >> 50) & 0x3F, 0);
        memcpy(inited + 4, &__src, 4 * v9);
        goto LABEL_68;
      }

LABEL_67:
      inited = _swiftEmptyArrayStorage;
      goto LABEL_68;
    }

LABEL_55:
    if (a1 >> 32 >= a1)
    {
      v53 = __DataStorage._bytes.getter();
      if (!v53)
      {
        goto LABEL_66;
      }

      v54 = v53;
      v55 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v55))
      {
        v9 = a1 - v55 + v54;
        v56 = __DataStorage._length.getter();
        if (!v9)
        {
          goto LABEL_67;
        }

        v57 = v56 >= (a1 >> 32) - a1 ? (a1 >> 32) - a1 : v56;
        if ((v57 + 3) < 7)
        {
          goto LABEL_67;
        }

        v58 = v57 / 4;
        inited = sub_100B39FD8(v57 / 4, 0);
        sub_100F86748(inited + 4, v58, v9, v58);
        if (v59 == v58)
        {
          goto LABEL_68;
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __DataStorage._length.getter();
        goto LABEL_67;
      }

LABEL_91:
      __break(1u);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  inited = _swiftEmptyArrayStorage;
  if (v3 != 2)
  {
    goto LABEL_68;
  }

  v45 = *(a1 + 16);
  v46 = *(a1 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v47 = __DataStorage._offset.getter();
    if (__OFSUB__(v45, v47))
    {
      goto LABEL_90;
    }

    v9 += v45 - v47;
  }

  v30 = __OFSUB__(v46, v45);
  v48 = v46 - v45;
  if (v30)
  {
    goto LABEL_89;
  }

  v49 = __DataStorage._length.getter();
  if (!v9)
  {
    goto LABEL_67;
  }

  v50 = v49 >= v48 ? v48 : v49;
  if ((v50 + 3) < 7)
  {
    goto LABEL_67;
  }

  v51 = v50 / 4;
  inited = sub_100B39FD8(v50 / 4, 0);
  sub_100F86748(inited + 4, v51, v9, v51);
  if (v52 != v51)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_68:
  v13 = inited[2];
  if (!v13)
  {

    v61 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage[2];
    if (v65)
    {
      goto LABEL_74;
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  __src = v28;
  sub_100776624(0, v13, 0);
  v60 = 32;
  v61 = __src;
  do
  {
    v62 = sub_10067F244(*(inited + v60));
    __src = v61;
    v64 = v61[2];
    v63 = v61[3];
    v9 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v11 = v62;
      sub_100776624((v63 > 1), v64 + 1, 1);
      LODWORD(v62) = v11;
      v61 = __src;
    }

    v61[2] = v9;
    *(v61 + v64 + 8) = v62;
    v60 += 4;
    --v13;
  }

  while (v13);

  v65 = v61[2];
  if (!v65)
  {
    goto LABEL_79;
  }

LABEL_74:
  if (v65 == 1)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v65 < 3)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v65 == 3)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v69 = v61[4];

  sub_10002640C(v14, v2);
  return v69;
}

uint64_t sub_100AE72CC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A10620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100AE74BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(a1);
  }

  sub_1006D6258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v15;
  v8 = v16;
  sub_100024E98(v15, v16);
  v9 = sub_100AE69B8(v7, v8);
  if (v11)
  {
    sub_100AE7870();
    swift_allocError();
    swift_willThrow();
    sub_10002640C(v7, v8);
    (*(v4 + 8))(v6, v3);
    return sub_100005070(a1);
  }

  *&v13 = v9;
  *(&v13 + 1) = v10;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  sub_10002640C(v7, v8);
  return sub_100005070(a1);
}

unint64_t sub_100AE74BC()
{
  result = qword_101A105C8;
  if (!qword_101A105C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105C8);
  }

  return result;
}

unint64_t sub_100AE7514()
{
  result = qword_101A105D0;
  if (!qword_101A105D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105D0);
  }

  return result;
}

unint64_t sub_100AE756C()
{
  result = qword_101A105D8;
  if (!qword_101A105D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105D8);
  }

  return result;
}

unint64_t sub_100AE75C4()
{
  result = qword_101A105E0;
  if (!qword_101A105E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105E0);
  }

  return result;
}

unint64_t sub_100AE763C()
{
  result = qword_101A105E8;
  if (!qword_101A105E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105E8);
  }

  return result;
}

unint64_t sub_100AE7694()
{
  result = qword_101A105F0;
  if (!qword_101A105F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105F0);
  }

  return result;
}

unint64_t sub_100AE76EC()
{
  result = qword_101A105F8;
  if (!qword_101A105F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A105F8);
  }

  return result;
}

void *sub_100AE7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100AE6574(sub_100AE77A8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_100AE77C8()
{
  result = qword_101A10610;
  if (!qword_101A10610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10610);
  }

  return result;
}

unint64_t sub_100AE781C()
{
  result = qword_101A10618;
  if (!qword_101A10618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10618);
  }

  return result;
}

unint64_t sub_100AE7870()
{
  result = qword_101A10628;
  if (!qword_101A10628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10628);
  }

  return result;
}

unint64_t sub_100AE78D8()
{
  result = qword_101A10630;
  if (!qword_101A10630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A10630);
  }

  return result;
}

void sub_100AE7938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A0C0B8)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_100A01F5C(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A0F400);

    v28 = sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A0F400);
    sub_10000BE14(v10, v30, &qword_1019F6990);
    sub_100AF3744(v10, type metadata accessor for CRLShapeItemParentAffinity);
    sub_100A02534(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990);
      v40 = CRRegister.wrappedValue.modify();
      sub_10002C638(v39, v41, &qword_1019F6990);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
      *&v43[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100AE7F20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

  LOBYTE(v3) = v3(v4);

  if (v3)
  {
    v5 = *(**(v0 + v2) + 368);

    LOBYTE(v5) = v5(v6);

    if (v5)
    {
      return 0;
    }

    v7 = *(**(v0 + v2) + 392);

    LOBYTE(v7) = v7(v8);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = **(v0 + v2);
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v9 + 840);

  v13 = v11(v12);

  sub_100006370(0, &qword_101A10748);
  v14 = [v13 isKindOfClass:swift_getObjCClassFromMetadata()];

  if ((v14 & 1) == 0)
  {
    v15 = **(v1 + v2);
    result = swift_conformsToProtocol2();
    if (!result)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v16 = *(v15 + 840);

    v18 = v16(v17);

    sub_100006370(0, &unk_101A10750);
    v19 = [v18 isKindOfClass:swift_getObjCClassFromMetadata()];

    if (!v19)
    {
      return 0;
    }
  }

  v20 = **(v1 + v2);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(v20 + 840);

  v23 = v21(v22);

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = [v24 type];

    return v25 != 1;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_100AE829C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v96 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v121);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v89 - v8;
  v120 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v120);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v89 - v12;
  v13 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v13 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v89 - v17;
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v110 = &v89 - v25;
  __chkstk_darwin(v26);
  v109 = &v89 - v27;
  sub_1005B981C(&unk_1019F4D60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101465920;
  *(v28 + 32) = v1;
  v98 = v28;
  v124 = v28;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v80 = v1;
    goto LABEL_44;
  }

  v95 = v23;
  v30 = Strong;
  type metadata accessor for CRLContainerItem(0);
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    v81 = v1;

    goto LABEL_44;
  }

  v32 = v31;
  v90 = v30;
  v108 = v20;
  v94 = v15;
  v33 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v34 = *(v31 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v119 = v1;
  if (!v34)
  {
    sub_10096C7D4();
    v34 = *(v32 + v33);
  }

  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  if (v35 >> 62)
  {
    v88 = v35;
    result = _CocoaArrayWrapper.endIndex.getter();
    v35 = v88;
  }

  else
  {
    result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v110;
  if (!result)
  {

LABEL_44:
    v43 = swift_allocObject();
    v43[16] = 0;
    if (v98 >> 62)
    {
      goto LABEL_49;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_46:

    v82 = objc_opt_self();
    sub_1005B981C(&qword_1019F5720);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v84 = swift_allocObject();
    *(v84 + 16) = v1;
    *(v84 + 24) = v43;
    aBlock[4] = sub_100AF3664;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_101894C20;
    v85 = _Block_copy(aBlock);
    v86 = v1;

    [v82 temporaryLayoutControllerForInfos:isa useInBlock:v85];
    _Block_release(v85);

    swift_beginAccess();
    v87 = v43[16];

    return v87;
  }

  v101 = v9;
  v89 = v1;
  v99 = result;
  if (result >= 1)
  {
    v103 = v35;
    v102 = v35 & 0xC000000000000001;
    v117 = (v3 + 56);
    v118 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v38 = (v3 + 48);
    v93 = (v3 + 32);
    v100 = (v3 + 8);

    v39 = 0;
    v107 = v6;
    v1 = v109;
    v97 = (v3 + 48);
    v91 = v2;
    while (1)
    {
      v116 = v39;
      if (v102)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v103 + 8 * v39 + 32);
      }

      v43 = v42;
      v44 = *((swift_isaMask & *v42) + 0x88);
      v44();
      v45 = *v117;
      (*v117)(v1, 0, 1, v2);
      v46 = *&v119[v118];
      if (*v46 != &off_101A0C0B8)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:

        sub_1005B981C(&qword_1019F5720);
        _bridgeCocoaArray<A>(_:)();

        goto LABEL_46;
      }

      v115 = v45;
      v114 = v44;
      v122 = v43;
      v47 = qword_101A0C430;
      swift_beginAccess();
      v112 = v47;
      v48 = v1;
      v49 = v106;
      sub_100AF36DC(v46 + v47, v106, type metadata accessor for CRLConnectionLineCRDTData);
      v111 = sub_1005B981C(&qword_101A06128);
      CRRegister.wrappedValue.getter();
      sub_100AF3744(v49, type metadata accessor for CRLConnectionLineCRDTData);
      v50 = *(v121 + 48);
      v51 = v101;
      sub_10000BE14(v48, v101, &qword_1019F6990);
      sub_10000BE14(v37, v51 + v50, &qword_1019F6990);
      v52 = *v38;
      v53 = (*v38)(v51, 1, v2);
      v113 = v52;
      if (v53 == 1)
      {
        break;
      }

      v59 = v95;
      sub_10000BE14(v51, v95, &qword_1019F6990);
      if (v52(v51 + v50, 1, v2) == 1)
      {
        sub_10000CAAC(v110, &qword_1019F6990);
        sub_10000CAAC(v109, &qword_1019F6990);
        v55 = v2;
        (*v100)(v59, v2);
        v1 = &unk_10146D2F0;
        v57 = v114;
LABEL_26:
        v60 = sub_10000CAAC(v51, &unk_101A0AFE0);
        v2 = v55;
        v61 = v107;
        v43 = v122;
        v58 = v115;
        goto LABEL_31;
      }

      v62 = v96;
      (*v93)(v96, v51 + v50, v2);
      sub_100AF361C(&qword_1019F37C0, &type metadata accessor for UUID);
      v92 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *v100;
      v64 = v62;
      v61 = v107;
      (*v100)(v64, v2);
      sub_10000CAAC(v110, &qword_1019F6990);
      sub_10000CAAC(v109, &qword_1019F6990);
      v63(v59, v2);
      v38 = v97;
      v60 = sub_10000CAAC(v51, &qword_1019F6990);
      v1 = &unk_10146D2F0;
      v43 = v122;
      v57 = v114;
      v58 = v115;
      if (v92)
      {
        goto LABEL_28;
      }

LABEL_31:
      v66 = v108;
      (v57)(v60);
      v58(v66, 0, 1, v2);
      v67 = *&v119[v118];
      if (*v67 != &off_101A0C0B8)
      {
        goto LABEL_48;
      }

      v68 = v112;
      swift_beginAccess();
      v69 = v67 + v68;
      v70 = v105;
      sub_100AF36DC(v69, v105, type metadata accessor for CRLConnectionLineCRDTData);
      v71 = v104;
      CRRegister.wrappedValue.getter();
      sub_100AF3744(v70, type metadata accessor for CRLConnectionLineCRDTData);
      v72 = *(v121 + 48);
      sub_10000BE14(v66, v61, &qword_1019F6990);
      sub_10000BE14(v71, v61 + v72, &qword_1019F6990);
      v73 = v113;
      if (v113(v61, 1, v2) == 1)
      {
        sub_10000CAAC(v71, &qword_1019F6990);
        sub_10000CAAC(v66, &qword_1019F6990);
        v74 = v73(v61 + v72, 1, v2);
        v1 = v109;
        if (v74 == 1)
        {
          sub_10000CAAC(v61, &qword_1019F6990);
          v37 = v110;
          v40 = v116;
          v41 = v122;
LABEL_37:
          v79 = v41;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v98 = v124;
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      v75 = v94;
      sub_10000BE14(v61, v94, &qword_1019F6990);
      if (v73(v61 + v72, 1, v2) == 1)
      {
        sub_10000CAAC(v71, &qword_1019F6990);
        sub_10000CAAC(v66, &qword_1019F6990);
        (*v100)(v75, v2);
        v1 = v109;
LABEL_14:
        sub_10000CAAC(v61, &unk_101A0AFE0);
        v37 = v110;
        v40 = v116;
        v41 = v122;
        goto LABEL_15;
      }

      v76 = v96;
      (*v93)(v96, v61 + v72, v2);
      sub_100AF361C(&qword_1019F37C0, &type metadata accessor for UUID);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78 = *v100;
      (*v100)(v76, v2);
      sub_10000CAAC(v71, &qword_1019F6990);
      sub_10000CAAC(v108, &qword_1019F6990);
      v78(v75, v2);
      sub_10000CAAC(v61, &qword_1019F6990);
      v37 = v110;
      v1 = v109;
      v40 = v116;
      v41 = v122;
      if (v77)
      {
        goto LABEL_37;
      }

LABEL_15:

LABEL_16:
      v39 = v40 + 1;
      if (v99 == v39)
      {

        v1 = v89;
        goto LABEL_44;
      }
    }

    sub_10000CAAC(v37, &qword_1019F6990);
    sub_10000CAAC(v48, &qword_1019F6990);
    v54 = v51 + v50;
    v55 = v2;
    v56 = v52(v54, 1, v2);
    v1 = &unk_10146D2F0;
    v57 = v114;
    if (v56 != 1)
    {
      goto LABEL_26;
    }

    sub_10000CAAC(v51, &qword_1019F6990);
    v43 = v122;
    v58 = v115;
LABEL_28:
    v65 = v43;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v60 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v98 = v124;
    v2 = v91;
    v61 = v107;
    v38 = v97;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_100AE91B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 layoutForInfo:a2];
  if (v6)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 isTailEndOnLeft];

      swift_beginAccess();
      *(a3 + 16) = v5;
    }

    else
    {
    }
  }
}

uint64_t sub_100AE92B8()
{
  v1 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = *(v1 + 840);

  v5 = v3(v4);

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    v10 = objc_opt_self();
    LODWORD(v11) = [v10 _atomicIncrementAssertCount];
    v76[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v76);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 type];
  if (!v8)
  {

    goto LABEL_37;
  }

  if (v8 == 1)
  {

    v9 = &unk_101A10740;
    return sub_100006370(0, v9);
  }

  v72 = v5;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  [v7 type];
  type metadata accessor for CRLConnectionLinePathSourceType(0);
  v73 = inited + 32;
  sub_1005B981C(&unk_1019F5670);
  swift_dynamicCast();
  v71 = objc_opt_self();
  v34 = [v71 _atomicIncrementAssertCount];
  v76[0] = [objc_allocWithZone(NSString) init];
  v74 = inited;
  sub_100604538(inited, v76);
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  v37 = [v36 lastPathComponent];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v41 = static OS_os_log.crlAssert;
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_10146CA70;
  *(v42 + 56) = &type metadata for Int32;
  *(v42 + 64) = &protocol witness table for Int32;
  *(v42 + 32) = v34;
  v43 = sub_100006370(0, &qword_1019F4D30);
  *(v42 + 96) = v43;
  v44 = sub_1005CF04C();
  *(v42 + 104) = v44;
  *(v42 + 72) = v35;
  *(v42 + 136) = &type metadata for String;
  v45 = sub_1000053B0();
  *(v42 + 112) = v38;
  *(v42 + 120) = v40;
  *(v42 + 176) = &type metadata for UInt;
  *(v42 + 184) = &protocol witness table for UInt;
  *(v42 + 144) = v45;
  *(v42 + 152) = 113;
  v46 = v76[0];
  *(v42 + 216) = v43;
  *(v42 + 224) = v44;
  *(v42 + 192) = v46;
  v47 = v35;
  v48 = v46;
  v49 = static os_log_type_t.error.getter();
  sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = static os_log_type_t.error.getter();
  v10 = v74;
  sub_100005404(v41, &_mh_execute_header, v50, "Unexpected connection line path source type (%d).", 49, 2, v74);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v51 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v15 = *(v74 + 16);
  if (!v15)
  {
LABEL_36:
    v67 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    [v71 handleFailureInFunction:v68 file:v69 lineNumber:113 isFatal:0 format:v70 args:v67];

    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_37;
  }

  v52 = 0;
  v75 = *(v74 + 16);
  while (1)
  {
    LODWORD(v11) = sub_100020E58((v73 + 40 * v52), *(v73 + 40 * v52 + 24));
    v53 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v12 = *v51;
    v54 = *(v53 + 16);
    v55 = __OFADD__(*v51, v54);
    v56 = *v51 + v54;
    if (v55)
    {
      break;
    }

    v11 = v17[4];
    if (v11 >= v56)
    {
      goto LABEL_28;
    }

    if (v11 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v57 = v17[5];
    if (2 * v11 > v56)
    {
      v56 = 2 * v11;
    }

    v17[4] = v56;
    if ((v56 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v58 = v10;
    v59 = v53;
    v60 = swift_slowAlloc();
    v61 = v60;
    v17[5] = v60;
    if (v57)
    {
      if (v60 != v57 || v60 >= &v57[8 * v12])
      {
        memmove(v60, v57, 8 * v12);
      }

      LODWORD(v11) = v17;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v53 = v59;
      v10 = v58;
      v15 = v75;
LABEL_28:
      v61 = v17[5];
      if (!v61)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v53 = v59;
    v10 = v58;
    v15 = v75;
    if (!v61)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_29:
    v63 = *(v53 + 16);
    if (v63)
    {
      v64 = (v53 + 32);
      v65 = *v51;
      while (1)
      {
        v66 = *v64++;
        *&v61[8 * v65] = v66;
        v65 = *v51 + 1;
        if (__OFADD__(*v51, 1))
        {
          break;
        }

        *v51 = v65;
        if (!--v63)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:

    if (++v52 == v15)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_7:
  v18 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  v20 = sub_100006370(0, &qword_1019F4D30);
  *(v19 + 96) = v20;
  v21 = sub_1005CF04C();
  *(v19 + 104) = v21;
  *(v19 + 72) = v12;
  *(v19 + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v22;
  *(v19 + 152) = 103;
  v23 = v76[0];
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v23;
  v24 = v12;
  v25 = v23;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  v28[2] = 8;
  v28[3] = 0;
  v28[4] = 0;
  v28[5] = 0;
  v29 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  [v10 handleFailureInFunction:v30 file:v31 lineNumber:103 isFatal:0 format:v32 args:v29];

LABEL_37:
  v9 = &unk_101A10738;
  return sub_100006370(0, v9);
}

uint64_t sub_100AE9D20()
{
  v0 = _s22ConnectionLineExporterCMa();
  sub_100AF361C(&qword_101A10730, _s22ConnectionLineExporterCMa);
  return v0;
}

uint64_t sub_100AE9DB8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  if ((sub_100C349A0() & 1) == 0)
  {
    v71 = v2;
    v70 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v14 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v69 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = result;
    v17 = *(result + 16);

    v17(v14, v16);

    v2 = v71;
    v18 = sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100AF3744(v13, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v19 = v92;
    if (v92)
    {
      v65 = v18;
      v66 = v10;
      v67 = v7;
      v68 = v4;
      v21 = v88[0];
      v20 = v88[1];
      v22 = v89;
      v23 = v90;
      v24 = v91;
      LOBYTE(v78[0]) = v89 & 1;
      LOBYTE(v89) = v89 & 1;
      HIDWORD(v89) = HIDWORD(v22);
      BYTE4(v90) &= 1u;
      v64 = sub_100006370(0, &qword_101A14D70);
      v25 = sub_1009CE208(v88);
      sub_100810A00(v21, v20, v22, v23, v24, v19);
      if (sub_100C349A0())
      {

        v4 = v68;
        v2 = v71;
LABEL_14:
        v7 = v67;
        goto LABEL_15;
      }

      v63 = v25;
      v26 = **(v0 + v70);
      result = swift_conformsToProtocol2();
      v2 = v71;
      if (!result)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v27 = result;
      v28 = *(result + 16);

      v29 = v66;
      v28(v26, v27);

      CRRegister.wrappedValue.getter();
      sub_100AF3744(v29, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v30 = v87;
      if (v87)
      {
        v31 = v83[0];
        v32 = v83[1];
        v33 = v84;
        v34 = v85;
        v35 = v86;
        LOBYTE(v73[0]) = v84 & 1;
        LOBYTE(v84) = v84 & 1;
        HIDWORD(v84) = HIDWORD(v33);
        BYTE4(v85) &= 1u;
        v36 = sub_1009CE208(v83);
        sub_100810A00(v31, v32, v33, v34, v35, v30);
        v37 = v63;
        if ([v63 isArrow])
        {
          v38 = [v36 isArrow];

          v4 = v68;
          v7 = v67;
          if (v38)
          {
            return 0;
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      v4 = v68;
      goto LABEL_14;
    }
  }

LABEL_15:
  if (sub_100C349A0())
  {
    goto LABEL_20;
  }

  v39 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = result;
  v41 = *(result + 16);

  v41(v39, v40);

  sub_1005B981C(&unk_101A10680);
  CRRegister.wrappedValue.getter();
  sub_100AF3744(v7, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v42 = v82;
  if (v82)
  {
    v43 = v78[0];
    v44 = v78[1];
    v45 = v79;
    v46 = v80;
    v71 = v2;
    v47 = v4;
    v48 = v81;
    LOBYTE(v73[0]) = v79 & 1;
    LOBYTE(v79) = v79 & 1;
    HIDWORD(v79) = HIDWORD(v45);
    BYTE4(v80) &= 1u;
    sub_100006370(0, &qword_101A14D70);
    v49 = sub_1009CE208(v78);
    v50 = v48;
    v4 = v47;
    sub_100810A00(v43, v44, v45, v46, v50, v42);
    LOBYTE(v43) = [v49 isArrow];

    if (v43)
    {
      return 1;
    }
  }

LABEL_20:
  if ((sub_100C349A0() & 1) == 0)
  {
    v51 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v52 = result;
      v53 = *(result + 16);

      v53(v51, v52);

      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.getter();
      sub_100AF3744(v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v54 = v77;
      if (v77)
      {
        v55 = v73[0];
        v56 = v73[1];
        v57 = v74;
        v58 = v75;
        v59 = v76;
        v72 = v74 & 1;
        LOBYTE(v74) = v74 & 1;
        HIDWORD(v74) = HIDWORD(v57);
        BYTE4(v75) &= 1u;
        sub_100006370(0, &qword_101A14D70);
        v60 = sub_1009CE208(v73);
        sub_100810A00(v55, v56, v57, v58, v59, v54);
        v61 = [v60 isArrow];

        return v61;
      }

      return 0;
    }

    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_100AEA600()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  if ((sub_100C349A0() & 1) == 0)
  {
    v71 = v2;
    v70 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v14 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v69 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    v16 = result;
    v17 = *(result + 16);

    v17(v14, v16);

    v2 = v71;
    v18 = sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_100AF3744(v13, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v19 = v92;
    if (v92)
    {
      v65 = v18;
      v66 = v10;
      v67 = v7;
      v68 = v4;
      v21 = v88[0];
      v20 = v88[1];
      v22 = v89;
      v23 = v90;
      v24 = v91;
      LOBYTE(v78[0]) = v89 & 1;
      LOBYTE(v89) = v89 & 1;
      HIDWORD(v89) = HIDWORD(v22);
      BYTE4(v90) &= 1u;
      v64 = sub_100006370(0, &qword_101A14D70);
      v25 = sub_1009CE208(v88);
      sub_100810A00(v21, v20, v22, v23, v24, v19);
      if (sub_100C349A0())
      {

        v4 = v68;
        v2 = v71;
LABEL_12:
        v7 = v67;
        goto LABEL_13;
      }

      v63 = v25;
      v26 = **(v0 + v70);
      result = swift_conformsToProtocol2();
      v2 = v71;
      if (!result)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v27 = result;
      v28 = *(result + 16);

      v29 = v66;
      v28(v26, v27);

      CRRegister.wrappedValue.getter();
      sub_100AF3744(v29, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v30 = v87;
      if (!v87)
      {

        goto LABEL_11;
      }

      v31 = v83[0];
      v32 = v83[1];
      v33 = v84;
      v34 = v85;
      v35 = v86;
      LOBYTE(v73[0]) = v84 & 1;
      LOBYTE(v84) = v84 & 1;
      HIDWORD(v84) = HIDWORD(v33);
      BYTE4(v85) &= 1u;
      v36 = sub_1009CE208(v83);
      sub_100810A00(v31, v32, v33, v34, v35, v30);
      v37 = v63;
      if ([v63 isNone])
      {

LABEL_11:
        v4 = v68;
        goto LABEL_12;
      }

      v61 = [v36 isNone];

      v4 = v68;
      v7 = v67;
      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_13:
  if (sub_100C349A0())
  {
    goto LABEL_17;
  }

  v38 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = result;
  v40 = *(result + 16);

  v40(v38, v39);

  sub_1005B981C(&unk_101A10680);
  CRRegister.wrappedValue.getter();
  sub_100AF3744(v7, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v41 = v82;
  if (v82)
  {
    v42 = v78[0];
    v43 = v78[1];
    v44 = v79;
    v45 = v80;
    v71 = v2;
    v46 = v4;
    v47 = v81;
    LOBYTE(v73[0]) = v79 & 1;
    LOBYTE(v79) = v79 & 1;
    HIDWORD(v79) = HIDWORD(v44);
    BYTE4(v80) &= 1u;
    sub_100006370(0, &qword_101A14D70);
    v48 = sub_1009CE208(v78);
    v49 = v47;
    v4 = v46;
    sub_100810A00(v42, v43, v44, v45, v49, v41);
    LODWORD(v42) = [v48 isNone];

    if (!v42)
    {
      return 1;
    }
  }

LABEL_17:
  if ((sub_100C349A0() & 1) == 0)
  {
    v50 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v51 = result;
      v52 = *(result + 16);

      v52(v50, v51);

      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.getter();
      sub_100AF3744(v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v53 = v77;
      if (v77)
      {
        v54 = v73[0];
        v55 = v73[1];
        v56 = v74;
        v57 = v75;
        v58 = v76;
        v72 = v74 & 1;
        LOBYTE(v74) = v74 & 1;
        HIDWORD(v74) = HIDWORD(v56);
        BYTE4(v75) &= 1u;
        sub_100006370(0, &qword_101A14D70);
        v59 = sub_1009CE208(v73);
        sub_100810A00(v54, v55, v56, v57, v58, v53);
        v60 = [v59 isNone];

        return v60 ^ 1;
      }

      return 0;
    }

    goto LABEL_27;
  }

  return 0;
}

void sub_100AEAE10()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A0C0B8)
  {

    v1 = sub_100A01F5C(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
    *&v3[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v5.receiver = v3;
    v5.super_class = type metadata accessor for CRLBoardItemBase(0);
    v4 = v2;
    objc_msgSendSuper2(&v5, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100AEAF14(uint64_t a1)
{
  v3 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v3);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v50 - v7;
  v9 = sub_1005B981C(&qword_101A10700);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  type metadata accessor for CRLConnectionLineItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v51 = sub_1011F0C64(v13, v1);
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v14 == &off_101A0C0B8)
    {
      v50[1] = a1;
      v15 = qword_101A0C430;
      swift_beginAccess();
      sub_100AF36DC(v14 + v15, v8, type metadata accessor for CRLConnectionLineCRDTData);
      v16 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v16 == &off_101A0C0B8)
      {
        swift_beginAccess();
        sub_100AF36DC(v16 + v15, v5, type metadata accessor for CRLConnectionLineCRDTData);
        sub_100AF361C(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);
        CRStruct_3.actionUndoingDifference(from:)();
        sub_100AF3744(v5, type metadata accessor for CRLConnectionLineCRDTData);
        sub_100AF3744(v8, type metadata accessor for CRLConnectionLineCRDTData);
        v17 = sub_1005B981C(&qword_101A10708);
        if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
        {
          sub_10000CAAC(v11, &qword_101A10700);
          memset(v52, 0, sizeof(v52));
          v53 = 1;
        }

        else
        {
          v18 = *(v17 + 48);
          v19 = *(v17 + 64);
          v53 = v17;
          v20 = sub_10002C58C(v52);
          v21 = *(v17 + 48);
          v22 = *(v17 + 64);
          sub_10003DFF8(v11, v20, &qword_101A0F3D0);
          sub_10003DFF8(&v11[v18], v20 + v21, &qword_101A10728);
          sub_10003DFF8(&v11[v19], v20 + v22, &qword_101A10728);
        }

        v23 = v51;
        swift_beginAccess();
        sub_100BC1DF4(v52, 5);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v25 = objc_opt_self();
  v26 = [v25 _atomicIncrementAssertCount];
  v52[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v52);
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v26;
  v35 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v35;
  v36 = sub_1005CF04C();
  *(inited + 104) = v36;
  *(inited + 72) = v27;
  *(inited + 136) = &type metadata for String;
  v37 = sub_1000053B0();
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v37;
  *(inited + 152) = 167;
  v38 = v52[0];
  *(inited + 216) = v35;
  *(inited + 224) = v36;
  *(inited + 192) = v38;
  v39 = v27;
  v40 = v38;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v43 = swift_allocObject();
  v43[2] = 8;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0;
  v44 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  [v25 handleFailureInFunction:v45 file:v46 lineNumber:167 isFatal:1 format:v47 args:v44];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v48, v49);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100AEB66C(uint64_t a1)
{
  v2 = v1;
  v110 = sub_1005B981C(&qword_101A10718);
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v103 - v6;
  __chkstk_darwin(v7);
  v104 = &v103 - v8;
  __chkstk_darwin(v9);
  v108 = &v103 - v10;
  v11 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v103 - v15;
  v17 = sub_1005B981C(&qword_101A10720);
  __chkstk_darwin(v17 - 8);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = &v103 - v21;
  type metadata accessor for CRLConnectionLineItem();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    swift_unknownObjectRetain();
    v109 = sub_100EB663C(v23, v2);
    v24 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v25 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v26 = &off_101A0C0B8;
    if (*v25 == &off_101A0C0B8)
    {
      v106 = a1;
      v27 = qword_101A0C430;
      swift_beginAccess();
      sub_100AF36DC(v25 + v27, v16, type metadata accessor for CRLConnectionLineCRDTData);
      v24 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v28 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v28 == &off_101A0C0B8)
      {
        swift_beginAccess();
        sub_100AF36DC(v28 + v27, v13, type metadata accessor for CRLConnectionLineCRDTData);
        sub_100AF361C(&qword_101A0C550, type metadata accessor for CRLConnectionLineCRDTData);
        v29 = v111;
        CRType.observableDifference(from:)();
        sub_100AF3744(v13, type metadata accessor for CRLConnectionLineCRDTData);
        sub_100AF3744(v16, type metadata accessor for CRLConnectionLineCRDTData);
        sub_10000BE14(v29, v19, &qword_101A10720);
        v30 = v110;
        if ((v107)[6](v19, 1, v110) == 1)
        {
          sub_10000CAAC(v19, &qword_101A10720);
          v26 = _swiftEmptyArrayStorage;
          goto LABEL_19;
        }

        v31 = v108;
        sub_10003DFF8(v19, v108, &qword_101A10718);
        v32 = v104;
        sub_10000BE14(v31, v104, &qword_101A10718);
        v33 = *(v30 + 48);
        v34 = *(v30 + 64);
        v35 = sub_1005B981C(&unk_101A0F3B0);
        if ((*(*(v35 - 8) + 48))(v32, 1, v35) == 1)
        {
          sub_10000CAAC(v32 + v34, &qword_101A01F00);
          sub_10000CAAC(v32 + v33, &qword_101A01F00);
          sub_10000CAAC(v32, &unk_101A0F3C0);
        }

        else
        {
          sub_10000CAAC(v32, &unk_101A0F3C0);
          sub_10000CAAC(v32 + v34, &qword_101A01F00);
          sub_10000CAAC(v32 + v33, &qword_101A01F00);
          if (!*(v109 + 16) || (sub_1007C8124(5), (v36 & 1) == 0))
          {
            v107 = objc_opt_self();
            v37 = [v107 _atomicIncrementAssertCount];
            v113 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v113);
            StaticString.description.getter();
            v38 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v39 = String._bridgeToObjectiveC()();

            v40 = [v39 lastPathComponent];

            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v44 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v37;
            v46 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v46;
            v47 = sub_1005CF04C();
            *(inited + 104) = v47;
            *(inited + 72) = v38;
            *(inited + 136) = &type metadata for String;
            v48 = sub_1000053B0();
            *(inited + 112) = v41;
            *(inited + 120) = v43;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v48;
            *(inited + 152) = 188;
            v49 = v38;
            v50 = v113;
            *(inited + 216) = v46;
            *(inited + 224) = v47;
            *(inited + 192) = v50;
            v51 = v49;
            v52 = v50;
            v53 = static os_log_type_t.error.getter();
            sub_100005404(v44, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v54 = static os_log_type_t.error.getter();
            sub_100005404(v44, &_mh_execute_header, v54, "If superData has changed, super should have built keys for it already.", 70, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v55 = swift_allocObject();
            v55[2] = 8;
            v55[3] = 0;
            v55[4] = 0;
            v55[5] = 0;
            v56 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v57 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v58 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v59 = String._bridgeToObjectiveC()();

            [v107 handleFailureInFunction:v57 file:v58 lineNumber:188 isFatal:0 format:v59 args:v56];

            v30 = v110;
          }
        }

        v60 = v105;
        sub_10000BE14(v31, v105, &qword_101A10718);
        v61 = *(v30 + 48);
        v62 = *(v30 + 64);
        v16 = type metadata accessor for CRValueObservableDifference();
        v107 = *(*(v16 - 1) + 48);
        v63 = (v107)(v60 + v62, 1, v16);
        sub_10000CAAC(v60 + v62, &qword_101A01F00);
        sub_10000CAAC(v60 + v61, &qword_101A01F00);
        sub_10000CAAC(v60, &unk_101A0F3C0);
        if (v63 == 1)
        {
          v26 = _swiftEmptyArrayStorage;
          v13 = v103;
LABEL_17:
          v65 = v108;
          sub_10000BE14(v108, v13, &qword_101A10718);
          v66 = *(v110 + 48);
          v67 = *(v110 + 64);
          if ((v107)(&v13[v66], 1, v16) != 1)
          {
            sub_10000CAAC(&v13[v66], &qword_101A01F00);
            sub_10000CAAC(&v13[v67], &qword_101A01F00);
            sub_10000CAAC(v13, &unk_101A0F3C0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_100024CBC(0, *(v26 + 2) + 1, 1, v26);
            }

            v68 = v109;
            v75 = *(v26 + 2);
            v74 = *(v26 + 3);
            if (v75 >= v74 >> 1)
            {
              v26 = sub_100024CBC((v74 > 1), v75 + 1, 1, v26);
            }

            sub_10000CAAC(v108, &qword_101A10718);
            *(v26 + 2) = v75 + 1;
            v76 = &v26[16 * v75];
            strcpy(v76 + 32, "connectedFrom");
            *(v76 + 23) = -4864;
            if (*(v26 + 2))
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          }

          sub_10000CAAC(v65, &qword_101A10718);
          sub_10000CAAC(&v13[v67], &qword_101A01F00);
          sub_10000CAAC(&v13[v66], &qword_101A01F00);
          sub_10000CAAC(v13, &unk_101A0F3C0);
LABEL_19:
          v68 = v109;
          if (*(v26 + 2))
          {
LABEL_20:
            if (v68[2] && (v69 = sub_1007C8124(5), (v70 & 1) != 0))
            {
              v113 = *(v68[7] + 8 * v69);

              sub_100798D48(v26);
              v71 = v113;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v112 = v68;
              sub_100A9B080(v71, 5, isUniquelyReferenced_nonNull_native);
              swift_unknownObjectRelease();
              v68 = v112;
            }

            else
            {
              v73 = swift_isUniquelyReferenced_nonNull_native();
              v113 = v68;
              sub_100A9B080(v26, 5, v73);
              swift_unknownObjectRelease();
              v68 = v113;
            }

            sub_10000CAAC(v111, &qword_101A10720);
            return v68;
          }

LABEL_30:
          sub_10000CAAC(v111, &qword_101A10720);

          swift_unknownObjectRelease();
          return v68;
        }

        v26 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v11 = *(v26 + 2);
        v24 = *(v26 + 3);
        v19 = (v11 + 1);
        v13 = v103;
        if (v11 < v24 >> 1)
        {
LABEL_16:
          *(v26 + 2) = v19;
          v64 = &v26[16 * v11];
          *(v64 + 4) = 0x657463656E6E6F63;
          *(v64 + 5) = 0xEB000000006F5464;
          goto LABEL_17;
        }

LABEL_34:
        v26 = sub_100024CBC((v24 > 1), v19, 1, v26);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  v78 = objc_opt_self();
  v79 = [v78 _atomicIncrementAssertCount];
  v114 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v114);
  StaticString.description.getter();
  v80 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v81 = String._bridgeToObjectiveC()();

  v82 = [v81 lastPathComponent];

  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v86 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v87 = swift_initStackObject();
  *(v87 + 16) = xmmword_10146CA70;
  *(v87 + 56) = &type metadata for Int32;
  *(v87 + 64) = &protocol witness table for Int32;
  *(v87 + 32) = v79;
  v88 = sub_100006370(0, &qword_1019F4D30);
  *(v87 + 96) = v88;
  v89 = sub_1005CF04C();
  *(v87 + 104) = v89;
  *(v87 + 72) = v80;
  *(v87 + 136) = &type metadata for String;
  v90 = sub_1000053B0();
  *(v87 + 112) = v83;
  *(v87 + 120) = v85;
  *(v87 + 176) = &type metadata for UInt;
  *(v87 + 184) = &protocol witness table for UInt;
  *(v87 + 144) = v90;
  *(v87 + 152) = 179;
  v91 = v114;
  *(v87 + 216) = v88;
  *(v87 + 224) = v89;
  *(v87 + 192) = v91;
  v92 = v80;
  v93 = v91;
  v94 = static os_log_type_t.error.getter();
  sub_100005404(v86, &_mh_execute_header, v94, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v87);

  v95 = static os_log_type_t.error.getter();
  sub_100005404(v86, &_mh_execute_header, v95, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v96 = swift_allocObject();
  v96[2] = 8;
  v96[3] = 0;
  v96[4] = 0;
  v96[5] = 0;
  v97 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v98 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v99 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  [v78 handleFailureInFunction:v98 file:v99 lineNumber:179 isFatal:1 format:v100 args:v97];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v101, v102);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100AEC694(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A10700);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1005B981C(&qword_101A10708);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  result = sub_1009B611C(a1);
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1007C8124(5);
      if (v19)
      {
        sub_10000BE14(*(v17 + 56) + 32 * v18, &v25, &unk_1019F4D00);

        v27[0] = v25;
        v27[1] = v26;
        if (*(&v26 + 1))
        {
          v20 = swift_dynamicCast();
          v21 = *(v12 + 56);
          v21(v10, v20 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            result = sub_10003DFF8(v10, v14, &qword_101A10708);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A0C0B8)
            {
              __break(1u);
              return result;
            }

            sub_10000BE14(v14, v7, &qword_101A10708);
            v21(v7, 0, 1, v11);
            swift_beginAccess();
            type metadata accessor for CRLConnectionLineCRDTData(0);
            sub_100AF361C(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

            CRStruct_3.apply(_:)();
            sub_10000CAAC(v7, &qword_101A10700);
            swift_endAccess();

            v22 = v14;
            v23 = &qword_101A10708;
            return sub_10000CAAC(v22, v23);
          }

LABEL_11:
          v23 = &qword_101A10700;
          v22 = v10;
          return sub_10000CAAC(v22, v23);
        }

        sub_10000CAAC(v27, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }

  return result;
}

char *sub_100AECA98(char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, ProtocolDescriptor *a5)
{
  v177 = a5;
  v154 = a4;
  v155 = a2;
  v184 = a1;
  v6 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v6);
  v8 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v151 - v10;
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v151 - v16;
  v18 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v171 = &v151 - v22;
  __chkstk_darwin(v23);
  v168 = &v151 - v24;
  __chkstk_darwin(v25);
  v27 = &v151 - v26;
  v181 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v181);
  v167 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v166 = &v151 - v30;
  __chkstk_darwin(v31);
  v165 = &v151 - v32;
  __chkstk_darwin(v33);
  v164 = &v151 - v34;
  v183 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v183);
  v163 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v162 = &v151 - v37;
  __chkstk_darwin(v38);
  v161 = &v151 - v39;
  __chkstk_darwin(v40);
  v160 = &v151 - v41;
  if (a3 != 5)
  {
    if (a3)
    {
      v91 = v154;
      ObjectType = swift_getObjectType();
      v93 = v184;
      v94 = v155;
      v95 = v170;
      v96 = v177;

      return sub_100C38590(v93, v94, a3, v91, v95, ObjectType, v96);
    }

    type metadata accessor for CRLShapeItem();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v151 = result;
    v180 = *&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v158 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_89;
    }

    v43 = v155;
    v44 = *(v155 + 16);
    if (!v44)
    {
      swift_unknownObjectRetain();

LABEL_82:
      swift_unknownObjectRetain();
      sub_100EB39A8(v184, v155, 0, v151, v170);

      return swift_unknownObjectRelease_n();
    }

    v172 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v156 = (v171 + 184);
    v157 = (v27 + 184);
    v152 = (v20 + 184);
    v153 = (v168 + 184);
    swift_unknownObjectRetain();

    v45 = (v43 + 40);
    v169 = v27;
    v159 = v20;
    while (1)
    {
      v99 = *(v45 - 1) == 0x6641746E65726170 && *v45 == 0xEE007974696E6966;
      if (!v99 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_53;
      }

      v178 = v45;
      v179 = v44;
      v100 = *(v170 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_88;
      }

      v101 = *(*v180 + 752);
      v102 = v160;
      v175 = *v180 + 752;
      v176 = v101;
      v101();

      v103 = sub_1005B981C(&unk_101A0F410);
      v104 = v164;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v102, &unk_101A0F400);
      v105 = v181;
      sub_100AF36DC(v104 + *(v181 + 20), v27, type metadata accessor for CRLPathSourceData);
      v106 = v27;
      v107 = sub_100AF3744(v104, type metadata accessor for CRLShapeItemParentAffinity);
      v108 = *v100;
      v109 = *(*v100 + 752);
      v110 = v161;
      v182 = v100;
      v173 = v109;
      v174 = v108 + 752;
      v109(v107);
      v111 = v165;
      v177 = v103;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v110, &unk_101A0F400);
      v112 = v168;
      sub_100AF36DC(v111 + *(v105 + 20), v168, type metadata accessor for CRLPathSourceData);
      sub_100AF3744(v111, type metadata accessor for CRLShapeItemParentAffinity);
      v113 = v157[5];
      v207 = v157[4];
      v208 = v113;
      v114 = v157[7];
      v209 = v157[6];
      v210 = v114;
      v115 = v157[1];
      v203 = *v157;
      v204 = v115;
      v116 = v157[3];
      v205 = v157[2];
      v206 = v116;
      if (sub_100A03AB8(&v203) == 1)
      {
        goto LABEL_68;
      }

      v117 = v153[5];
      v199 = v153[4];
      v200 = v117;
      v118 = v153[7];
      v201 = v153[6];
      v202 = v118;
      v119 = v153[1];
      v195 = *v153;
      v196 = v119;
      v120 = v153[3];
      v197 = v153[2];
      v198 = v120;
      if (sub_100A03AB8(&v195) == 1)
      {
        break;
      }

      if (!*(&v207 + 1))
      {
        break;
      }

      if (!*(&v199 + 1))
      {
        break;
      }

      v121 = *(&v206 + 3);
      v122 = *&v207;
      v124 = *(&v198 + 3);
      v123 = *&v199;
      *&v185 = v206;
      BYTE8(v185) = BYTE8(v206) & 1;
      v193 = v198;
      v194 = BYTE8(v198) & 1;
      sub_100AF35C8();

      v125 = static CRExtensible.== infix(_:_:)();

      if ((v125 & 1) == 0)
      {
        break;
      }

      v126 = sub_10011ECC8(v121, v122, v124, v123);
      sub_100AF3744(v112, type metadata accessor for CRLPathSourceData);
      v127 = sub_100AF3744(v169, type metadata accessor for CRLPathSourceData);
      if (!v126)
      {
        goto LABEL_69;
      }

LABEL_70:
      v128 = v162;
      (v176)(v127);
      v129 = v166;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v128, &unk_101A0F400);
      v130 = v181;
      v98 = v171;
      sub_100AF36DC(v129 + *(v181 + 20), v171, type metadata accessor for CRLPathSourceData);
      v131 = sub_100AF3744(v129, type metadata accessor for CRLShapeItemParentAffinity);
      v132 = v163;
      v173(v131);
      v133 = v167;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v132, &unk_101A0F400);
      v97 = v159;
      sub_100AF36DC(v133 + *(v130 + 20), v159, type metadata accessor for CRLPathSourceData);
      sub_100AF3744(v133, type metadata accessor for CRLShapeItemParentAffinity);
      v134 = v156[5];
      v199 = v156[4];
      v200 = v134;
      v135 = v156[7];
      v201 = v156[6];
      v202 = v135;
      v136 = v156[1];
      v195 = *v156;
      v196 = v136;
      v137 = v156[3];
      v197 = v156[2];
      v198 = v137;
      if (sub_100A03AB8(&v195) == 1)
      {
        goto LABEL_50;
      }

      v138 = v152[5];
      v189 = v152[4];
      v190 = v138;
      v139 = v152[7];
      v191 = v152[6];
      v192 = v139;
      v140 = v152[1];
      v185 = *v152;
      v186 = v140;
      v141 = v152[3];
      v187 = v152[2];
      v188 = v141;
      if (sub_100A03AB8(&v185) == 1 || !*(&v201 + 1) || !*(&v191 + 1))
      {
        goto LABEL_49;
      }

      v142 = *(&v200 + 3);
      v143 = *&v201;
      v145 = *(&v190 + 3);
      v144 = *&v191;
      v193 = v200;
      v194 = BYTE8(v200) & 1;
      v212 = v190;
      v213 = BYTE8(v190) & 1;
      sub_100AF35C8();

      v146 = static CRExtensible.== infix(_:_:)();

      if ((v146 & 1) == 0)
      {
        v97 = v159;
LABEL_49:
        v98 = v171;
LABEL_50:
        sub_100AF3744(v97, type metadata accessor for CRLPathSourceData);
        sub_100AF3744(v98, type metadata accessor for CRLPathSourceData);
        goto LABEL_51;
      }

      v147 = sub_10011ECC8(v142, v143, v145, v144);
      sub_100AF3744(v159, type metadata accessor for CRLPathSourceData);
      sub_100AF3744(v171, type metadata accessor for CRLPathSourceData);
      if (v147)
      {

        goto LABEL_52;
      }

LABEL_51:
      *(&v186 + 1) = &type metadata for Bool;
      LOBYTE(v185) = 1;
      sub_10000BE14(&v185, &v193, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(&v193, 39);
      swift_endAccess();

      sub_10000CAAC(&v185, &unk_1019F4D00);
LABEL_52:
      v27 = v169;
      v45 = v178;
      v44 = v179;
LABEL_53:
      v45 += 2;
      if (!--v44)
      {
        goto LABEL_82;
      }
    }

    v106 = v169;
LABEL_68:
    sub_100AF3744(v112, type metadata accessor for CRLPathSourceData);
    sub_100AF3744(v106, type metadata accessor for CRLPathSourceData);
LABEL_69:
    *(&v196 + 1) = &type metadata for Bool;
    LOBYTE(v195) = 1;
    sub_10000BE14(&v195, &v185, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(&v185, 38);
    swift_endAccess();
    v127 = sub_10000CAAC(&v195, &unk_1019F4D00);
    goto LABEL_70;
  }

  v181 = v17;
  v182 = v11;
  v178 = v14;
  v179 = v8;
  v183 = v6;
  v46 = *(v155 + 16);
  if (!v46)
  {
    v180 = _swiftEmptyArrayStorage;
    v49 = v170;
LABEL_78:
    v148 = v180;
    if (*(v180 + 2))
    {
      v149 = v154;
      v150 = swift_getObjectType();
      sub_100C38590(v184, v148, 5u, v149, v49, v150, v177);
    }
  }

  v47 = (v155 + 40);
  v180 = _swiftEmptyArrayStorage;
  v48 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v49 = v170;
  while (1)
  {
    v50 = *(v47 - 1);
    v51 = *v47;
    v52 = v50 == 0x657463656E6E6F63 && v51 == 0xED00006D6F724664;
    if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v77 = v50 == 0x657463656E6E6F63 && v51 == 0xEB000000006F5464;
      if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v78 = *(v49 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        if (*v78 != &off_101A0C0B8)
        {
          goto LABEL_87;
        }

        v79 = qword_101A0C430;
        swift_beginAccess();
        v80 = v78 + v79;
        v81 = v179;
        sub_100AF36DC(v80, v179, type metadata accessor for CRLConnectionLineCRDTData);
        sub_1005B981C(&qword_101A06128);
        v82 = v178;
        CRRegister.wrappedValue.getter();
        sub_100AF3744(v81, type metadata accessor for CRLConnectionLineCRDTData);
        v83 = type metadata accessor for UUID();
        v84 = *(v83 - 8);
        if ((*(v84 + 48))(v82, 1, v83) == 1)
        {
          sub_10000CAAC(v82, &qword_1019F6990);
          v203 = 0u;
          v204 = 0u;
        }

        else
        {
          *(&v204 + 1) = v83;
          v85 = sub_10002C58C(&v203);
          (*(v84 + 32))(v85, v82, v83);
        }

        sub_10000BE14(&v203, &v195, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(&v195, 37);
        swift_endAccess();
        sub_10000CAAC(&v203, &unk_1019F4D00);
      }

      else
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_100024CBC(0, *(v180 + 2) + 1, 1, v180);
        }

        v87 = *(v180 + 2);
        v86 = *(v180 + 3);
        if (v87 >= v86 >> 1)
        {
          v180 = sub_100024CBC((v86 > 1), v87 + 1, 1, v180);
        }

        v88 = v180;
        *(v180 + 2) = v87 + 1;
        v89 = &v88[16 * v87];
        *(v89 + 4) = v50;
        *(v89 + 5) = v51;
        v49 = v170;
      }

      goto LABEL_11;
    }

    v53 = *(v49 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v53 != &off_101A0C0B8)
    {
      break;
    }

    v54 = qword_101A0C430;
    swift_beginAccess();
    v55 = v53 + v54;
    v56 = v182;
    sub_100AF36DC(v55, v182, type metadata accessor for CRLConnectionLineCRDTData);
    sub_1005B981C(&qword_101A06128);
    v57 = v181;
    CRRegister.wrappedValue.getter();
    sub_100AF3744(v56, type metadata accessor for CRLConnectionLineCRDTData);
    v58 = type metadata accessor for UUID();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_10000CAAC(v57, &qword_1019F6990);
      v203 = 0u;
      v204 = 0u;
    }

    else
    {
      *(&v204 + 1) = v58;
      v60 = sub_10002C58C(&v203);
      (*(v59 + 32))(v60, v57, v58);
    }

    v61 = v184;
    swift_beginAccess();
    sub_10000BE14(&v203, &v195, &unk_1019F4D00);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *&v61[v48];
    v211 = v63;
    v64 = sub_1007CF108();
    v66 = v63[2];
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_85;
    }

    v70 = v65;
    if (v63[3] >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = v64;
        sub_100AA3EA4();
        v64 = v90;
      }
    }

    else
    {
      sub_100A890C0(v69, isUniquelyReferenced_nonNull_native);
      v64 = sub_1007CF108();
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_90;
      }
    }

    v72 = v211;
    if (v70)
    {
      sub_10002C638(&v195, v211[7] + 32 * v64, &unk_1019F4D00);
    }

    else
    {
      v211[(v64 >> 6) + 8] |= 1 << v64;
      *(v72[6] + 8 * v64) = 36;
      v73 = (v72[7] + 32 * v64);
      v74 = v196;
      *v73 = v195;
      v73[1] = v74;
      v75 = v72[2];
      v68 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v68)
      {
        goto LABEL_86;
      }

      v72[2] = v76;
    }

    *&v184[v48] = v72;
    swift_endAccess();
    sub_10000CAAC(&v203, &unk_1019F4D00);
LABEL_11:
    v47 += 2;
    if (!--v46)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100AEDE60(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  if (sub_1011255D0(v9))
  {
    v10 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (a1)
    {
      if (v10 == &off_101A0C0B8)
      {
        (*((swift_isaMask & *a1) + 0x88))();
        v11 = type metadata accessor for UUID();
        (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
        swift_beginAccess();
        sub_10000BE14(v8, v5, &qword_1019F6990);
        type metadata accessor for CRLConnectionLineCRDTData(0);
        v12 = a1;

        sub_1005B981C(&qword_101A06128);
        CRRegister.wrappedValue.setter();
        sub_10000CAAC(v8, &qword_1019F6990);
        swift_endAccess();

        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (v10 != &off_101A0C0B8)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    swift_beginAccess();
    sub_10000BE14(v8, v5, &qword_1019F6990);
    type metadata accessor for CRLConnectionLineCRDTData(0);

    sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.setter();
    sub_10000CAAC(v8, &qword_1019F6990);
    swift_endAccess();
  }
}

id sub_100AEE20C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t))
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = a4(a3, v8, ObjectType);
  swift_unknownObjectRelease();

  return v9;
}

void sub_100AEE290(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  if (sub_1011255D0(v9))
  {
    v10 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (a1)
    {
      if (v10 == &off_101A0C0B8)
      {
        (*((swift_isaMask & *a1) + 0x88))();
        v11 = type metadata accessor for UUID();
        (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
        swift_beginAccess();
        sub_10000BE14(v8, v5, &qword_1019F6990);
        type metadata accessor for CRLConnectionLineCRDTData(0);
        v12 = a1;

        sub_1005B981C(&qword_101A06128);
        CRRegister.wrappedValue.setter();
        sub_10000CAAC(v8, &qword_1019F6990);
        swift_endAccess();

        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (v10 != &off_101A0C0B8)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    swift_beginAccess();
    sub_10000BE14(v8, v5, &qword_1019F6990);
    type metadata accessor for CRLConnectionLineCRDTData(0);

    sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.setter();
    sub_10000CAAC(v8, &qword_1019F6990);
    swift_endAccess();
  }
}

void sub_100AEE6A4(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v92 = v4;
  v93 = v5;
  __chkstk_darwin(v4);
  v7 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v1;
  v91 = a1;
  if (v8 > 1)
  {
    goto LABEL_6;
  }

  v89 = objc_opt_self();
  LODWORD(v9) = [v89 _atomicIncrementAssertCount];
  v95 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v95);
  StaticString.description.getter();
  a1 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = a1;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 382;
    v20 = v95;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = a1;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Need to connect at least 2 board items.", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v89 handleFailureInFunction:v27 file:v28 lineNumber:382 isFatal:0 format:v29 args:v26];

    v2 = v90;
    a1 = v91;
LABEL_6:
    v30 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v9 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v31 = *v9;
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_35;
    }

    v12 = v31 + 840;
    v32 = *(v31 + 840);

    v14 = v32(v33);

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    v89 = v30;
    if (v34)
    {
      LODWORD(v9) = [v34 copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006370(0, &unk_101A10770);
      if (swift_dynamicCast())
      {
        v35 = v94;
        v36 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [v35 setHeadMagnet:v36];

        v37 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [v35 setTailMagnet:v37];

        v87 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v38 = *(a1 + 32);
        }

        v39 = v38;
        v86 = type metadata accessor for CRLCommandSetConnectionLineConnection();
        v40 = objc_allocWithZone(v86);
        (*(**&v30[v2] + 264))();
        v41 = v35;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v43 = v92;
        v45 = v93 + 8;
        v44 = *(v93 + 8);
        v46 = v44(v7, v92);
        (*((swift_isaMask & *v39) + 0x88))(v46);
        v47 = UUID._bridgeToObjectiveC()().super.isa;
        v93 = v45;
        v44(v7, v43);
        v48 = [v40 initWithConnectionLineID:isa connectedItemID:v47 chirality:0 pathSource:v41];

        v88 = v48;
        if (v87)
        {
          v49 = v48;
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_34;
          }

          v74 = *(v91 + 40);
          v75 = v48;
          v50 = v74;
        }

        v68 = v50;
        v76 = v89;
        v77 = objc_allocWithZone(v86);
        (*(**&v76[v90] + 264))();
        v69.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v78 = v92;
        v79 = v44(v7, v92);
        (*((swift_isaMask & *v68) + 0x88))(v79);
        v72.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v44(v7, v78);
        v73 = [v77 initWithConnectionLineID:v69.super.isa connectedItemID:v72.super.isa chirality:1 pathSource:v41];
        goto LABEL_26;
      }
    }

    else
    {
    }

    v87 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(a1 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  v52 = v51;
  v53 = type metadata accessor for CRLCommandSetConnectionLineConnection();
  v88 = objc_allocWithZone(v53);
  (*(**&v30[v2] + 264))();
  v54 = v2;
  v55 = UUID._bridgeToObjectiveC()().super.isa;
  v56 = v92;
  v57 = v93 + 8;
  v58 = *(v93 + 8);
  v59 = v58(v7, v92);
  (*((swift_isaMask & *v52) + 0x88))(v59);
  v60 = UUID._bridgeToObjectiveC()().super.isa;
  v86 = v7;
  v93 = v57;
  v58(v7, v56);
  v61 = [v88 initWithConnectionLineID:v55 connectedItemID:v60 chirality:0 pathSource:0];

  v88 = v61;
  if (v87)
  {
    v62 = v61;
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v64 = *(v91 + 40);
    v65 = v61;
    v63 = v64;
LABEL_22:
    v41 = v63;
    v66 = objc_allocWithZone(v53);
    v67 = v86;
    (*(**&v89[v90] + 264))();
    v68 = v54;
    v69.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v70 = v92;
    v71 = v58(v67, v92);
    (*((swift_isaMask & *v41) + 0x88))(v71);
    v72.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v58(v67, v70);
    v73 = [v66 initWithConnectionLineID:v69.super.isa connectedItemID:v72.super.isa chirality:1 pathSource:0];
LABEL_26:
    v80 = v73;

    sub_1005B981C(&unk_1019F4D60);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10146CE00;
    v82 = v88;
    *(v81 + 32) = v88;
    *(v81 + 40) = v80;
    v83 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];

    v84 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    *&v83[v84] = v81;

    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_100AEF294(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CRLTableItem();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      v8[2] = a1;
      v8[3] = v7;
      v8[4] = v3;
      v8[5] = v1;
      v9 = a1;
      v10 = v5;

      v11 = v1;
      sub_1009B27C4(sub_100AF366C, v8);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v12 = *(v3 + 16);
  v13 = v12;

  return v12;
}

void sub_100AEF3BC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v73 = a3;
  v74 = a2;
  v8 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v8 - 8);
  v72 = &v63 - v9;
  v10 = type metadata accessor for CRLTableAnchorHint();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = _s6CellIDVMa(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v68 = &v63 - v23;
  __chkstk_darwin(v24);
  v26 = &v63 - v25;
  if (a1)
  {
    type metadata accessor for CRLTableLayout();
    if (swift_dynamicCastClass())
    {
      v65 = a4;
      v66 = v21;
      v64 = a5;
      v67 = a1;
      v27 = v74;
      [v74 center];
      v30 = sub_10120C344(v28, v29);
      if (v32)
      {
        [v27 boundsBeforeRotation];
        sub_10120F8D8(v17, v33, v34, v35, v36);
        if ((*(v19 + 48))(v17, 1, v18) == 1)
        {

          sub_10000CAAC(v17, &qword_101A10760);
          return;
        }

        sub_100AF3678(v17, v26);
        sub_1011DB114();

        v59 = sub_1011DB2A8(v26);
        if (v60)
        {

          sub_100AF3744(v26, _s6CellIDVMa);
          return;
        }

        v37 = v59;
        v38 = sub_1011DB340(&v26[*(v18 + 20)]);
        v62 = v61;
        sub_100AF3744(v26, _s6CellIDVMa);
        if (v62)
        {
          v58 = v67;
LABEL_10:

          return;
        }
      }

      else
      {
        v37 = v30;
        v38 = v31;
      }

      sub_1011DB87C(v37, v38, v14);
      v39 = (*(v19 + 48))(v14, 1, v18);
      v40 = v66;
      if (v39 == 1)
      {

        sub_10000CAAC(v14, &qword_101A10760);
        return;
      }

      v41 = v68;
      sub_100AF3678(v14, v68);
      sub_10120E014(v37, v38);
      v43 = v42;
      v45 = v44;
      v46 = objc_allocWithZone(CRLCanvasLayoutGeometry);
      v47 = [v46 initWithInfoGeometry:v74];
      v48 = [v47 geometryByTranslatingBy:{sub_10011F340(v43, v45, -1.0)}];
      sub_100AF36DC(v41, v40, _s6CellIDVMa);
      v49 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:v48];
      v51 = v70;
      v50 = v71;
      *&v71[*(v70 + 24)] = _swiftEmptyDictionarySingleton;
      sub_100AF36DC(v40, v50, _s6CellIDVMa);
      sub_101271CCC(v49, v75);

      sub_100AF3744(v40, _s6CellIDVMa);
      v52 = (v50 + *(v51 + 20));
      v53 = v75[1];
      *v52 = v75[0];
      v52[1] = v53;
      v54 = v72;
      sub_100AF36DC(v50, v72, type metadata accessor for CRLTableAnchorHint);
      (*(v69 + 56))(v54, 0, 1, v51);
      v55 = objc_allocWithZone(sub_1005B981C(&qword_101A10768));
      v56 = sub_100FFEB38(v64, v54);

      sub_100AF3744(v50, type metadata accessor for CRLTableAnchorHint);
      sub_100AF3744(v41, _s6CellIDVMa);
      v57 = v65;
      swift_beginAccess();
      v58 = *(v57 + 16);
      *(v57 + 16) = v56;
      goto LABEL_10;
    }
  }
}

void sub_100AEFA30(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v4);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v134 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v134 - v12;
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = &v134 - v16;
  __chkstk_darwin(v18);
  v20 = &v134 - v19;
  __chkstk_darwin(v21);
  v25 = &v134 - v24;
  if (a1)
  {
    v142 = v23;
    v141 = v22;
    v144 = a1;
    v26 = [v144 info];
    if (v26)
    {
      v27 = v26;
      v137 = v6;
      type metadata accessor for CRLConnectionLineItem();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = [v144 stroke];

        sub_100D654FC(v30);
        swift_unknownObjectRetain();
        v31 = sub_100C349A0();
        v140 = v27;
        v143 = v4;
        v138 = v2;
        v139 = v29;
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v34 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
          v35 = swift_conformsToProtocol2();
          if (!v35)
          {
            __break(1u);
            goto LABEL_66;
          }

          v36 = v35;
          v37 = *(v35 + 16);

          v37(v34, v36);

          sub_1005B981C(&unk_101A10680);
          CRRegister.wrappedValue.getter();
          sub_100AF3744(v25, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
          v38 = v168;
          if (v168)
          {
            v136 = v164[0];
            v135 = v164[1];
            v39 = v165;
            v40 = v166;
            v41 = v167;
            LOBYTE(v159[0]) = v165 & 1;
            LOBYTE(v165) = v165 & 1;
            HIDWORD(v165) = HIDWORD(v39);
            BYTE4(v166) &= 1u;
            sub_100006370(0, &qword_101A14D70);
            v42 = sub_1009CE208(v164);
            sub_100810A00(v136, v135, v39, v40, v41, v38);
            v32 = v42;
          }

          else
          {
            v32 = 0;
          }

          v29 = v139;
        }

        sub_100C35D48(v32);
        if (sub_100C349A0())
        {
          v43 = 0;
LABEL_24:
          sub_100C36568(v43);
          if ((sub_100AEA600() & 1) == 0)
          {
            if ((sub_100AE9DB8() & 1) == 0)
            {
              v107 = [v144 isTailEndOnLeft];
              if (v107 == (sub_100AE829C() & 1))
              {
                goto LABEL_47;
              }

              if (sub_100C349A0())
              {
                v108 = 0;
              }

              else
              {
                v109 = v29;
                v110 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
                v111 = swift_conformsToProtocol2();
                if (!v111)
                {
LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

                v112 = v111;
                v113 = *(v111 + 16);

                v113(v110, v112);

                sub_1005B981C(&unk_101A10680);
                CRRegister.wrappedValue.getter();
                sub_100AF3744(v9, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
                v114 = v158;
                if (v158)
                {
                  v115 = v153;
                  v116 = v154;
                  v117 = v155;
                  v118 = v156;
                  v119 = v157;
                  LOBYTE(v147) = v155 & 1;
                  LOBYTE(v155) = v155 & 1;
                  HIDWORD(v155) = HIDWORD(v117);
                  BYTE4(v156) &= 1u;
                  sub_100006370(0, &qword_101A14D70);
                  v120 = sub_1009CE208(&v153);
                  sub_100810A00(v115, v116, v117, v118, v119, v114);
                  v108 = v120;
                }

                else
                {
                  v108 = 0;
                }

                v29 = v109;
              }

              sub_100C35D48(v108);
              if (sub_100C349A0())
              {
                goto LABEL_61;
              }

              v121 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
              v122 = swift_conformsToProtocol2();
              if (!v122)
              {
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v123 = v122;
              v124 = *(v122 + 16);

              v125 = v137;
              v124(v121, v123);

              sub_1005B981C(&unk_101A10680);
              CRRegister.wrappedValue.getter();
              sub_100AF3744(v125, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
              v126 = v152;
              if (!v152)
              {
LABEL_61:
                swift_unknownObjectRelease();
                v133 = 0;
              }

              else
              {
                v127 = v147;
                v128 = v148;
                v129 = v149;
                v130 = v150;
                v131 = v151;
                v146 = v149 & 1;
                LOBYTE(v149) = v149 & 1;
                HIDWORD(v149) = HIDWORD(v129);
                BYTE4(v150) &= 1u;
                sub_100006370(0, &qword_101A14D70);
                v132 = sub_1009CE208(&v147);
                sub_100810A00(v127, v128, v129, v130, v131, v126);
                swift_unknownObjectRelease();
                v133 = v132;
              }

              sub_100C36568(v133);
              goto LABEL_63;
            }

            if (sub_100C349A0())
            {
              goto LABEL_47;
            }

            v81 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v82 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            v83 = swift_conformsToProtocol2();
            if (v83)
            {
              v84 = v83;
              v85 = *(v83 + 16);

              v85(v82, v84);

              sub_1005B981C(&unk_101A10680);
              CRRegister.wrappedValue.getter();
              sub_100AF3744(v13, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
              v86 = v158;
              if (v158)
              {
                v142 = v81;
                v87 = v153;
                v88 = v154;
                v89 = v155;
                v90 = v156;
                v91 = v157;
                v146 = v155 & 1;
                LOBYTE(v155) = v155 & 1;
                HIDWORD(v155) = HIDWORD(v89);
                BYTE4(v156) &= 1u;
                v137 = sub_100006370(0, &qword_101A14D70);
                v65 = sub_1009CE208(&v153);
                sub_100810A00(v87, v88, v89, v90, v91, v86);
                if ([v65 isArrow])
                {
                  v92 = v65;
                  sub_100C35D48(v65);
                  v93 = v139;
                  if (sub_100C349A0())
                  {
                    goto LABEL_53;
                  }

                  v94 = **(v93 + v142);
                  v95 = swift_conformsToProtocol2();
                  if (!v95)
                  {
LABEL_72:
                    __break(1u);
                    return;
                  }

                  v96 = v95;
                  v97 = *(v95 + 16);

                  v98 = v141;
                  v97(v94, v96);

                  CRRegister.wrappedValue.getter();
                  sub_100AF3744(v98, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
                  v99 = v152;
                  if (!v152)
                  {
LABEL_53:
                    swift_unknownObjectRelease();
                    v106 = 0;
                  }

                  else
                  {
                    v100 = v147;
                    v101 = v148;
                    v102 = v149;
                    v103 = v150;
                    v104 = v151;
                    v145 = v149 & 1;
                    LOBYTE(v149) = v149 & 1;
                    HIDWORD(v149) = HIDWORD(v102);
                    BYTE4(v150) &= 1u;
                    v105 = sub_1009CE208(&v147);
                    sub_100810A00(v100, v101, v102, v103, v104, v99);
                    swift_unknownObjectRelease();
                    v106 = v105;
                  }

                  sub_100C36568(v106);

                  goto LABEL_63;
                }

LABEL_46:
              }

LABEL_47:

              swift_unknownObjectRelease_n();
              return;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          if (sub_100C349A0())
          {
            goto LABEL_47;
          }

          v54 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
          v55 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
          v56 = swift_conformsToProtocol2();
          if (v56)
          {
            v57 = v56;
            v58 = *(v56 + 16);

            v58(v55, v57);

            sub_1005B981C(&unk_101A10680);
            CRRegister.wrappedValue.getter();
            sub_100AF3744(v17, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
            v59 = v158;
            if (v158)
            {
              v141 = v54;
              v60 = v153;
              v61 = v154;
              v62 = v155;
              v63 = v156;
              v64 = v157;
              v146 = v155 & 1;
              LOBYTE(v155) = v155 & 1;
              HIDWORD(v155) = HIDWORD(v62);
              BYTE4(v156) &= 1u;
              v137 = sub_100006370(0, &qword_101A14D70);
              v65 = sub_1009CE208(&v153);
              sub_100810A00(v60, v61, v62, v63, v64, v59);
              if (([v65 isNone] & 1) == 0)
              {
                v66 = v65;
                sub_100C35D48(v65);
                v67 = v139;
                if (sub_100C349A0())
                {
                  goto LABEL_51;
                }

                v68 = **(v67 + v141);
                v69 = swift_conformsToProtocol2();
                if (v69)
                {
                  v70 = v69;
                  v71 = *(v69 + 16);

                  v72 = v142;
                  v71(v68, v70);

                  CRRegister.wrappedValue.getter();
                  sub_100AF3744(v72, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
                  v73 = v152;
                  if (v152)
                  {
                    v74 = v147;
                    v75 = v148;
                    v76 = v149;
                    v77 = v150;
                    v78 = v151;
                    v145 = v149 & 1;
                    LOBYTE(v149) = v149 & 1;
                    HIDWORD(v149) = HIDWORD(v76);
                    BYTE4(v150) &= 1u;
                    v79 = sub_1009CE208(&v147);
                    sub_100810A00(v74, v75, v76, v77, v78, v73);
                    swift_unknownObjectRelease();
                    v80 = v79;
LABEL_52:
                    sub_100C36568(v80);

LABEL_63:
                    swift_unknownObjectRelease();

                    return;
                  }

LABEL_51:
                  swift_unknownObjectRelease();
                  v80 = 0;
                  goto LABEL_52;
                }

                goto LABEL_71;
              }

              goto LABEL_46;
            }

            goto LABEL_47;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v44 = **(v29 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        v45 = swift_conformsToProtocol2();
        if (v45)
        {
          v46 = v45;
          v47 = *(v45 + 16);

          v47(v44, v46);

          sub_1005B981C(&unk_101A10680);
          CRRegister.wrappedValue.getter();
          sub_100AF3744(v20, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
          v48 = v163;
          if (v163)
          {
            v49 = v159[1];
            v136 = v159[0];
            v50 = v160;
            v51 = v161;
            v52 = v162;
            LOBYTE(v153) = v160 & 1;
            LOBYTE(v160) = v160 & 1;
            HIDWORD(v160) = HIDWORD(v50);
            BYTE4(v161) &= 1u;
            sub_100006370(0, &qword_101A14D70);
            v53 = sub_1009CE208(v159);
            sub_100810A00(v136, v49, v50, v51, v52, v48);
            v43 = v53;
          }

          else
          {
            v43 = 0;
          }

          v29 = v139;
          goto LABEL_24;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v33 = v144;
    }
  }
}

id sub_100AF0D4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLConnectionLineItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLConnectionLineItem()
{
  result = qword_101A10668;
  if (!qword_101A10668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100AF0E10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A06128);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  __chkstk_darwin(v4);
  v39 = &v31 - v6;
  v38 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v37 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v35 = &v31 - v16;
  v18 = type metadata accessor for CRLShapeItemCRDTData(0);
  __chkstk_darwin(v18 - 8);
  v42 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CRLShapeItemCRDTData;
  sub_100AF36DC(a1, v42, type metadata accessor for CRLShapeItemCRDTData);
  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 56);
  v21(v17, 1, 1, v20);
  v21(v14, 1, 1, v20);
  v22 = type metadata accessor for CRLConnectionLineCRDTData(0);
  v33 = v22[5];
  v21(v11, 1, 1, v20);
  sub_10000BE14(v11, v8, &qword_1019F6990);
  v31 = sub_100A02EB4();
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v11, &qword_1019F6990);
  v34 = v22[6];
  v21(v11, 1, 1, v20);
  sub_10000BE14(v11, v8, &qword_1019F6990);
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v11, &qword_1019F6990);
  *(a2 + v22[7]) = _swiftEmptyDictionarySingleton;
  v32 = a2;
  sub_100AF36DC(v42, a2, v36);
  v23 = v35;
  sub_10000BE14(v35, v11, &qword_1019F6990);
  v24 = v39;
  CRRegister.init(_:)();
  v41 = *(v41 + 40);
  v25 = a2 + v33;
  v26 = v24;
  v27 = v24;
  v28 = v40;
  (v41)(v25, v26, v40);
  v29 = v37;
  sub_10000BE14(v37, v11, &qword_1019F6990);
  CRRegister.init(_:)();
  sub_10000CAAC(v29, &qword_1019F6990);
  sub_10000CAAC(v23, &qword_1019F6990);
  sub_100AF3744(v42, type metadata accessor for CRLShapeItemCRDTData);
  return (v41)(v32 + v34, v27, v28);
}