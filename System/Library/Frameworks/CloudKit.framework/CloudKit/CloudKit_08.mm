uint64_t sub_1884A11A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1883F7B50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1883F7EE0();
  v8(v7);
  return a2;
}

uint64_t sub_1884A11FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1883F7B50(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1884A1254(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO17ListeningToDaemonVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A12B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A1348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F971C(a1, a2, v4);
}

uint64_t sub_1884A1390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F90F4(a1, a2, a3, v6);
}

uint64_t sub_1884A1400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1884A1440(uint64_t result, int a2, int a3)
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

uint64_t sub_1884A148C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionReadinessError();

  return sub_1883F971C(a1, a2, v4);
}

uint64_t sub_1884A14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionReadinessError();

  return sub_1883F90F4(a1, a2, a3, v6);
}

uint64_t sub_1884A1544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a4(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

id sub_1884A15F0(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakAssign();
  v4 = OBJC_IVAR____TtC8CloudKit25CKSessionAcquirerXPCProxy_taskUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CKSessionAcquirerXPCProxy();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  (*(v6 + 8))(a2, v5);
  return v7;
}

uint64_t sub_1884A16EC()
{
  v0 = type metadata accessor for SessionReadinessError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1883F7100();
  v5 = v4 - v3;
  result = swift_weakLoadStrong();
  if (result)
  {
    CKSessionReadinessErrorBox.sessionReadinessError.getter();
    sub_18849CD8C();

    return (*(v1 + 8))(v5, v0);
  }

  return result;
}

id sub_1884A1894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSessionAcquirerXPCProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1884A194C()
{
  result = qword_1EA90E160;
  if (!qword_1EA90E160)
  {
    type metadata accessor for CKSessionAcquirerXPCProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E160);
  }

  return result;
}

uint64_t sub_1884A19A4()
{
  v1 = type metadata accessor for PropertyDescription();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v7 = v6 - v5;
  v8 = type metadata accessor for OSLogPrivacy();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v10 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v2 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1886F7400;
  v12 = OBJC_IVAR____TtC8CloudKit25CKSessionAcquirerXPCProxy_taskUUID;
  v13 = type metadata accessor for UUID();
  v20 = v13;
  v14 = sub_188403664(v19);
  (*(*(v13 - 8) + 16))(v14, v0 + v12, v13);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v20 = type metadata accessor for CKSessionAcquirer();
    v19[0] = v16;

    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v11 = v17;

    *(v11 + 16) = 2;
    (*(v3 + 32))(v11 + v10, v7, v1);
  }

  return v11;
}

uint64_t CKSessionAcquisitionManager.acquire<A>(sessionID:sessionConfiguration:previousInvalidationContext:testDeviceReferenceProtocol:streamMap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v44 = a7;
  v45 = a1;
  v50 = a8;
  v51 = a5;
  v48 = a4;
  v46 = a2;
  v10 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SessionID();
  v15 = sub_1883F70DC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for AnySessionConfiguration();
  v22 = sub_1883F70DC(v52);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - v30;
  v49 = a6;
  v32 = v44;
  dispatch thunk of SessionConfiguration.asAnySessionConfiguration.getter();
  if (a3)
  {
    v53 = &unk_1EFAC8920;
    swift_unknownObjectRetain();
    a3 = swift_dynamicCastObjCProtocolUnconditional();
  }

  (*(v17 + 16))(v21, v45, v14);
  v33 = *(v24 + 16);
  v47 = v31;
  v33(v28, v31, v52);
  sub_18843DE64(v46, v13, &unk_1EA90E170, &qword_1886FA450);
  v34 = type metadata accessor for CKSessionAcquisitionStream();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v54 = sub_1884A29DC(v21, v28, v13, a3);
  v37 = swift_allocObject();
  v38 = v48;
  v37[2] = v49;
  v37[3] = v32;
  v39 = v51;
  v37[4] = v38;
  v37[5] = v39;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SessionReadiness();
  sub_1884A25E0(&qword_1EA90C218, 255, type metadata accessor for CKSessionAcquisitionStream);
  v40 = type metadata accessor for AsyncMapSequence();
  v41 = v50;
  v50[3] = v40;
  v41[4] = swift_getWitnessTable();
  sub_188403664(v41);

  AsyncSequence.map<A>(_:)();
  swift_unknownObjectRelease();

  return (*(v24 + 8))(v47, v52);
}

uint64_t sub_1884A2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for AnySessionAcquiredInfo();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  v6[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A21F0, 0, 0);
}

uint64_t sub_1884A21F0()
{
  v1 = v0[14];
  sub_18843DE64(v0[3], v0[15], &qword_1EA90E088, &unk_1886FA520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[2];
    v5 = type metadata accessor for SessionReadinessError();
    sub_1883F7308(v5);
    (*(v6 + 32))(v4, v3);
    v7 = MEMORY[0x1E69947D0];
  }

  else
  {
    v9 = v0[12];
    v8 = v0[13];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v28 = v0[8];
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    (*(v9 + 32))(v8, v3, v10);
    v14(v8);
    (*(v9 + 8))(v8, v10);
    (*(v12 + 32))(v15, v11, v28);
    v7 = MEMORY[0x1E69947C8];
  }

  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[6];
  v22 = v0[2];
  v23 = *v7;
  swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for SessionReadiness();
  sub_1883F7308(v24);
  (*(v25 + 104))(v22, v23);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1884A2424(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1884A25E0(&qword_1EA90E190, a2, type metadata accessor for CKSessionAcquisitionManager);
  return PropertyDescribable<>.description.getter();
}

uint64_t sub_1884A2494(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_188496548;

  return sub_1884A2074(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1884A25E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1884A2628()
{
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t sub_1884A2644()
{
  sub_1883F7120();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for CloudCoreError();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A2700, 0, 0);
}

uint64_t sub_1884A2700()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(MEMORY[0x1E6994750] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  *v3 = v0;
  v3[1] = sub_1884A27E0;
  v5 = v0[9];
  v6 = v0[5];

  return MEMORY[0x1EEDF40D8](v6, v4, v5);
}

uint64_t sub_1884A27E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884A290C, 0, 0);
  }

  else
  {
    v9 = *(v3 + 72);
    swift_endAccess();

    sub_1883F816C();

    return v10();
  }
}

uint64_t sub_1884A290C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1883F731C();
  sub_1884A3B8C(v4, v5);
  swift_allocError();
  (*(v2 + 32))(v6, v1, v3);
  swift_endAccess();

  sub_1883F816C();

  return v7();
}

uint64_t sub_1884A29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v78 = a2;
  v74 = a1;
  v5 = *(*(sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450) - 8) + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v64 - v7;
  v76 = type metadata accessor for AnySessionConfiguration();
  v8 = sub_1883F70DC(v76);
  v73 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v75 = v13 - v12;
  v72 = type metadata accessor for SessionID();
  v14 = sub_1883F70DC(v72);
  v83 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v84 = v19 - v18;
  v71 = sub_18844E6FC(&qword_1EA90E1B8, &qword_1886FA6B0);
  sub_1883F7B50(v71);
  v21 = *(v20 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v64 - v23;
  v24 = sub_18844E6FC(&qword_1EA90E1C0, &qword_1886FA6B8);
  sub_1883F70DC(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v32 = sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  v33 = sub_1883F70DC(v32);
  v81 = v34;
  v82 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v69 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v64 - v39;
  v41 = sub_18844E6FC(&qword_1EA90E1B0, &unk_1886FA6A0);
  sub_1883F70DC(v41);
  v43 = v42;
  v68 = v42;
  v45 = *(v44 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v64 - v47;
  *(v4 + 16) = 0;
  sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  type metadata accessor for CloudCoreError();
  (*(v26 + 104))(v31, *MEMORY[0x1E6994748], v24);
  sub_1883F731C();
  sub_1884A3B8C(v49, v50);
  v64 = v40;
  static CloudCoreThrowingStream.makeStream(of:throwing:bufferingPolicy:)();
  (*(v26 + 8))(v31, v24);
  v51 = *(v43 + 16);
  v65 = v4;
  v66 = v48;
  v67 = v41;
  v51(v4 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStream, v48, v41);
  CloudCoreThrowingStream.makeAsyncIterator()();
  sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  swift_dynamicCast();
  (*(v81 + 16))(v69, v40, v82);
  v52 = v74;
  v53 = v72;
  (*(v83 + 16))(v84, v74, v72);
  v54 = v73;
  v55 = v76;
  v56 = v78;
  (*(v73 + 16))(v75, v78, v76);
  v57 = v79;
  sub_1884A3BD4(v79, v77);
  v58 = type metadata accessor for CKSessionAcquirer();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_188499C08();
  v62 = v61;
  sub_1884A3C44(v57);
  (*(v54 + 8))(v56, v55);
  (*(v83 + 8))(v52, v53);
  (*(v81 + 8))(v64, v82);
  (*(v68 + 8))(v66, v67);
  result = v65;
  *(v65 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquirer) = v62;
  return result;
}

uint64_t sub_1884A2F70()
{
  v1 = OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStream;
  v2 = sub_18844E6FC(&qword_1EA90E1B0, &unk_1886FA6A0);
  sub_1883F7B50(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquisitionStreamIterator;
  v5 = sub_18844E6FC(&qword_1EA90E1A0, &unk_1886FA690);
  sub_1883F7B50(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquirer);

  return v0;
}

uint64_t sub_1884A3028()
{
  sub_1884A2F70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CKSessionAcquisitionStream()
{
  result = qword_1EA90C3B8;
  if (!qword_1EA90C3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1884A30D4()
{
  sub_1884A31EC(319, &qword_1EA90C508, MEMORY[0x1E6994760]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1884A31EC(319, &unk_1EA90C510, MEMORY[0x1E6994758]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1884A31EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_18844E798(&qword_1EA90E088, &unk_1886FA520);
    v7 = type metadata accessor for CloudCoreError();
    sub_1883F731C();
    v10 = sub_1884A3B8C(v8, v9);
    v11 = a3(a1, v6, v7, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1884A32E4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1884A2628();

  *a1 = v3;
  return result;
}

uint64_t sub_1884A3318()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1884061E0;

  return sub_1884A2644();
}

uint64_t sub_1884A33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for CloudCoreError();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1884A34E8;

  return sub_1884A35FC(a1, a2, a3, v11);
}

uint64_t sub_1884A34E8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  else
  {
    v10 = v3[5];
  }

  sub_1883F816C();

  return v9();
}

uint64_t sub_1884A35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
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

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1884A36A0, v6, v8);
}

uint64_t sub_1884A36A0()
{
  sub_1883F7120();
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1884A3738;
  v3 = *(v0 + 24);

  return sub_1884A2644();
}

uint64_t sub_1884A3738()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1884A384C, v9, v10);
  }

  else
  {
    sub_1883F816C();

    return v11();
  }
}

uint64_t sub_1884A384C()
{
  v1 = v0[5];
  v0[2] = v0[9];
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CloudCoreError();
  swift_dynamicCast();
  sub_1883F731C();
  sub_1884A3B8C(v2, v3);
  swift_willThrowTypedImpl();
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884A392C()
{
  v1 = *v0;
  sub_1884A3B8C(&qword_1EA90E1A8, type metadata accessor for CKSessionAcquisitionStream);
  return PropertyDescribable<>.description.getter();
}

uint64_t sub_1884A3990()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v3 = *(type metadata accessor for PropertyDescription() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1886F7400;
  v7 = *(v0 + OBJC_IVAR____TtC8CloudKit26CKSessionAcquisitionStream_acquirer);
  type metadata accessor for CKSessionAcquirer();

  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v6;
}

uint64_t sub_1884A3B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1884A3BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884A3C44(uint64_t a1)
{
  v2 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1884A3CE0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return CKSessionConfiguration.anySessionConfiguration.setter(v8);
}

uint64_t CKSessionConfiguration.anySessionConfiguration.setter(uint64_t a1)
{
  v6 = type metadata accessor for AnySessionConfiguration();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v20 = v2;
  v21 = sub_1883F9CF4(&qword_1EA90C4A8);
  v22 = sub_1883F7334(&qword_1EA90C4B8);
  v23 = sub_1883F8890(&qword_1EA90C4B0);
  v14 = sub_188403664(&v19);
  (v4)(v14, v3, v2);
  v15 = *(v9 + 8);
  v15(a1, v2);
  v15(v3, v2);
  v16 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v16));
  sub_188499B68(&v19, v1 + v16);
  return swift_endAccess();
}

void (*CKSessionConfiguration.anySessionConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for AnySessionConfiguration();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionConfiguration.anySessionConfiguration.getter();
  return sub_1884A3FDC;
}

void sub_1884A3FDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKSessionConfiguration.anySessionConfiguration.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKSessionConfiguration.anySessionConfiguration.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionConfiguration.init(_:)(uint64_t a1)
{
  v6 = type metadata accessor for AnySessionConfiguration();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v21 = v2;
  v22 = sub_1883F9CF4(&qword_1EA90C4A8);
  v23 = sub_1883F7334(&qword_1EA90C4B8);
  v24 = sub_1883F8890(&qword_1EA90C4B0);
  v14 = sub_188403664(v20);
  (v4)(v14, v3, v2);
  sub_188445B70(v20, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CKSecureCodingBox();
  v15 = objc_msgSendSuper2(&v19, sel_init);
  sub_1883FE944(v20);
  v16 = *(v9 + 8);
  v16(a1, v2);
  v16(v3, v2);
  return v15;
}

id CKSessionConfiguration.init(coder:)(void *a1)
{
  v2 = type metadata accessor for AnySessionConfiguration();
  v3 = sub_1883F9CF4(&qword_1EA90C4A8);
  v4 = sub_1883F7334(&qword_1EA90C4B8);
  v5 = sub_1883F8890(&qword_1EA90C4B0);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSessionID.sessionID.getter()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v0 + v1, v3);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionID();
  return swift_dynamicCast();
}

uint64_t sub_1884A451C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SessionID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return CKSessionID.sessionID.setter(v8);
}

uint64_t CKSessionID.sessionID.setter(uint64_t a1)
{
  v6 = type metadata accessor for SessionID();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v20 = v2;
  v21 = sub_1883F9D18(&qword_1EA90C470);
  v22 = sub_1883F7358(&qword_1EA90C480);
  v23 = sub_1883F88B4(&qword_1EA90C478);
  v14 = sub_188403664(&v19);
  (v4)(v14, v3, v2);
  v15 = *(v9 + 8);
  v15(a1, v2);
  v15(v3, v2);
  v16 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v16));
  sub_188499B68(&v19, v1 + v16);
  return swift_endAccess();
}

void (*CKSessionID.sessionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionID();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionID.sessionID.getter();
  return sub_1884A4818;
}

void sub_1884A4818(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKSessionID.sessionID.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKSessionID.sessionID.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionID.init(_:)(uint64_t a1)
{
  v6 = type metadata accessor for SessionID();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v21 = v2;
  v22 = sub_1883F9D18(&qword_1EA90C470);
  v23 = sub_1883F7358(&qword_1EA90C480);
  v24 = sub_1883F88B4(&qword_1EA90C478);
  v14 = sub_188403664(v20);
  (v4)(v14, v3, v2);
  sub_188445B70(v20, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CKSecureCodingBox();
  v15 = objc_msgSendSuper2(&v19, sel_init);
  sub_1883FE944(v20);
  v16 = *(v9 + 8);
  v16(a1, v2);
  v16(v3, v2);
  return v15;
}

uint64_t sub_1884A4A30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CKSessionID.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionID();
  v3 = sub_1883F9D18(&qword_1EA90C470);
  v4 = sub_1883F7358(&qword_1EA90C480);
  v5 = sub_1883F88B4(&qword_1EA90C478);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionID.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionID();
  v5 = sub_1883F9D18(&qword_1EA90C470);
  v6 = sub_1883F7358(&qword_1EA90C480);
  v7 = sub_1883F88B4(&qword_1EA90C478);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSessionInvalidationContext.sessionInvalidationContext.getter()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v0 + v1, v3);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionInvalidationContext();
  return swift_dynamicCast();
}

uint64_t sub_1884A4E80(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SessionInvalidationContext();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return CKSessionInvalidationContext.sessionInvalidationContext.setter(v8);
}

uint64_t CKSessionInvalidationContext.sessionInvalidationContext.setter(uint64_t a1)
{
  v5 = type metadata accessor for SessionInvalidationContext();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F9298();
  v11 = sub_1883F7CA0();
  v3(v11);
  v17 = v5;
  v18 = sub_1883F9D3C(&qword_1EA90C490);
  v19 = sub_1883F737C(&qword_1EA90C4A0);
  v20 = sub_1883F88D8(&qword_1EA90C498);
  v12 = sub_188403664(&v16);
  (v3)(v12, v2, v5);
  v13 = *(v8 + 8);
  v13(a1, v5);
  v13(v2, v5);
  v14 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v14));
  sub_188499B68(&v16, v1 + v14);
  return swift_endAccess();
}

void (*CKSessionInvalidationContext.sessionInvalidationContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionInvalidationContext();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  return sub_1884A5184;
}

void sub_1884A5184(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKSessionInvalidationContext.sessionInvalidationContext.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKSessionInvalidationContext.sessionInvalidationContext.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionInvalidationContext.init(_:)(uint64_t a1)
{
  v5 = type metadata accessor for SessionInvalidationContext();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F9298();
  v11 = sub_1883F7CA0();
  v3(v11);
  v17[3] = v5;
  v17[4] = sub_1883F9D3C(&qword_1EA90C490);
  v17[5] = sub_1883F737C(&qword_1EA90C4A0);
  v17[6] = sub_1883F88D8(&qword_1EA90C498);
  v12 = sub_188403664(v17);
  (v3)(v12, v2, v5);
  sub_188445B70(v17, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CKSecureCodingBox();
  v13 = objc_msgSendSuper2(&v16, sel_init);
  sub_1883FE944(v17);
  v14 = *(v8 + 8);
  v14(a1, v5);
  v14(v2, v5);
  return v13;
}

id CKSessionInvalidationContext.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionInvalidationContext();
  v3 = sub_1883F9D3C(&qword_1EA90C490);
  v4 = sub_1883F737C(&qword_1EA90C4A0);
  v5 = sub_1883F88D8(&qword_1EA90C498);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionInvalidationContext.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionInvalidationContext();
  v5 = sub_1883F9D3C(&qword_1EA90C490);
  v6 = sub_1883F737C(&qword_1EA90C4A0);
  v7 = sub_1883F88D8(&qword_1EA90C498);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionInvalidationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKSessionInvalidationContext.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SessionInvalidationContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1883F9298();
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  v6 = objc_allocWithZone(ObjectType);
  result = CKSessionInvalidationContext.init(_:)(v1);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::String __swiftcall CKSessionInvalidationContext.CKXPCSuitableString()()
{
  v0 = type metadata accessor for SessionInvalidationContext();
  v1 = sub_1883F70DC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSessionInvalidationContext.sessionInvalidationContext.getter();
  sub_1884A5854(&unk_1EA90C2E8);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  (*(v3 + 8))(v7, v0);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1884A5854(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionInvalidationContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CKSessionReadinessErrorBox.sessionReadinessError.getter()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v0 + v1, v3);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for SessionReadinessError();
  return swift_dynamicCast();
}

uint64_t sub_1884A5A14(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SessionReadinessError();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return CKSessionReadinessErrorBox.sessionReadinessError.setter(v8);
}

uint64_t CKSessionReadinessErrorBox.sessionReadinessError.setter(uint64_t a1)
{
  v6 = type metadata accessor for SessionReadinessError();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F9298();
  v12 = sub_1883F7CA0();
  v4(v12);
  v18 = v2;
  v19 = sub_1883F88FC(&qword_1EA90C4E0);
  v20 = sub_1883F9D60(&unk_1EA90C4F0);
  v21 = sub_1883F73A0(&qword_1EA90C4E8);
  v13 = sub_188403664(&v17);
  (v4)(v13, v3, v2);
  v14 = *(v9 + 8);
  v14(a1, v2);
  v14(v3, v2);
  v15 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v15));
  sub_188499B68(&v17, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_1884A5C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionReadinessError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*CKSessionReadinessErrorBox.sessionReadinessError.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for SessionReadinessError();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  return sub_1884A5D58;
}

void sub_1884A5D58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKSessionReadinessErrorBox.sessionReadinessError.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKSessionReadinessErrorBox.sessionReadinessError.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionReadinessErrorBox.init(_:)(uint64_t a1)
{
  v6 = type metadata accessor for SessionReadinessError();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F9298();
  v12 = sub_1883F7CA0();
  v4(v12);
  v19 = v2;
  v20 = sub_1883F88FC(&qword_1EA90C4E0);
  v21 = sub_1883F9D60(&unk_1EA90C4F0);
  v22 = sub_1883F73A0(&qword_1EA90C4E8);
  v13 = sub_188403664(v18);
  (v4)(v13, v3, v2);
  sub_188445B70(v18, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CKSecureCodingBox();
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_1883FE944(v18);
  v15 = *(v9 + 8);
  v15(a1, v2);
  v15(v3, v2);
  return v14;
}

id CKSessionReadinessErrorBox.init(coder:)(void *a1)
{
  v2 = type metadata accessor for SessionReadinessError();
  v3 = sub_1883F88FC(&qword_1EA90C4E0);
  v4 = sub_1883F9D60(&unk_1EA90C4F0);
  v5 = sub_1883F73A0(&qword_1EA90C4E8);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionReadinessErrorBox.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SessionReadinessError();
  v5 = sub_1883F88FC(&qword_1EA90C4E0);
  v6 = sub_1883F9D60(&unk_1EA90C4F0);
  v7 = sub_1883F73A0(&qword_1EA90C4E8);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

id CKSessionReadinessErrorBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKSessionReadinessErrorBox.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SessionReadinessError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1883F9298();
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  v6 = objc_allocWithZone(ObjectType);
  result = CKSessionReadinessErrorBox.init(_:)(v1);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::String __swiftcall CKSessionReadinessErrorBox.CKXPCSuitableString()()
{
  v0 = type metadata accessor for SessionReadinessError();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  CKSessionReadinessErrorBox.sessionReadinessError.getter();
  v2 = String.init<A>(describing:)();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t CKContainerID.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ContainerID.Environment();
  v3 = sub_1883F70DC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContainerID.environment.getter();
  v10 = (*(v5 + 88))(v9, v2);
  if (v10 == *MEMORY[0x1E69947A0])
  {
    v11 = 1;
LABEL_5:
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v13 = ContainerID.name.getter();
    v14 = MEMORY[0x18CFD5010](v13);

    v15 = [v12 initWithContainerIdentifier:v14 environment:v11];

    v16 = type metadata accessor for ContainerID();
    (*(*(v16 - 8) + 8))(a1, v16);
    return v15;
  }

  if (v10 == *MEMORY[0x1E69947A8])
  {
    v11 = 2;
    goto LABEL_5;
  }

  result = sub_1883F73C4();
  __break(1u);
  return result;
}

uint64_t ContainerID.init(_:)(void *a1)
{
  v2 = type metadata accessor for ContainerID.Environment();
  v3 = sub_1883F70DC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v18 - v12;
  v14 = [a1 environment];
  if (v14 == 2)
  {
    v15 = MEMORY[0x1E69947A8];
LABEL_5:
    (*(v5 + 104))(v13, *v15, v2);
    v16 = [a1 containerIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 16))(v9, v13, v2);
    ContainerID.init(name:environment:)();

    return (*(v5 + 8))(v13, v2);
  }

  if (v14 == 1)
  {
    v15 = MEMORY[0x1E69947A0];
    goto LABEL_5;
  }

  result = sub_1883F73C4();
  __break(1u);
  return result;
}

uint64_t sub_1884A6844()
{
  dispatch thunk of Session.anyContainer.getter();
  type metadata accessor for CloudCoreContainer();
  sub_1883F73EC();

  return swift_dynamicCastClassUnconditional();
}

char *sub_1884A6888(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SessionID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1883F7100();
  v7 = v6 - v5;
  v8 = [v20 options];
  sub_188498C74();
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {

    return v20;
  }

  else
  {
    v11 = &v20[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
    os_unfair_lock_lock(&v20[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex]);
    v12 = sub_18847E5F4(a1, *(v11 + 1));
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = [v20 containerID];
      sub_1884A7924(v7);
      v15 = objc_allocWithZone(ObjectType);
      v16 = a1;
      v17 = sub_1884A6B24(v14, v7, v16);
      v18 = sub_1884A79E8();
      sub_1884A7A88(v18, v19);
      v13 = v17;
      sub_18846FE60(v13, v16);
    }

    os_unfair_lock_unlock(v11);
    return v13;
  }
}

uint64_t sub_1884A6A38(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  *v7 = 0;
  *(v7 + 1) = MEMORY[0x1E69E7CC8];
  type metadata accessor for CloudCoreContainerImplementation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v10.receiver = v3;
    v10.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v10, sel_initWithImplementation_convenienceConfiguration_, a1, a2);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1884A6B24(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for SessionID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v14 = v13 - v12;
  v15 = &v4[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  *v15 = 0;
  *(v15 + 1) = MEMORY[0x1E69E7CC8];
  (*(v10 + 16))(v14, a2, v9);
  objc_allocWithZone(type metadata accessor for CloudCoreContainerImplementation());
  v16 = a1;
  v17 = a3;
  sub_1884A8888(v16, v14, v17);
  v19 = v18;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_initUnconfiguredContainerWithImplementation_, v18);

  v21 = *(v10 + 8);
  v22 = sub_1883F7228();
  v23(v22);
  return v20;
}

uint64_t sub_1884A6D10()
{
  v1 = [v0 implementation];
  v2 = [v1 description];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1883F7228();
}

uint64_t sub_1884A6D98()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_18844E6FC(&qword_1EA90E1E8, &qword_1886FA870);
  *v4 = v0;
  v4[1] = sub_1884A6EA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000188700A80, sub_1884A857C, v2, v5);
}

uint64_t sub_1884A6EA0()
{
  sub_1883F7120();
  v3 = *(*v1 + 40);
  v2 = *v1;
  sub_1883F7110();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1884A8880;
  }

  else
  {
    v6 = *(v2 + 32);

    v5 = sub_188463250;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1884A6FB0(uint64_t a1, void *a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = [objc_allocWithZone(CKFetchRegisteredBundleIDsOperation) init];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(sub_1884A8584, v11);
  v12 = [a2 implementation];
  v13 = [a2 convenienceConfiguration];
  [v12 _scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_];
}

uint64_t sub_1884A716C(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvedBundleID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for CloudCoreError();
    sub_1884A8534(&qword_1EA90C500, 255, MEMORY[0x1E6994790]);
    v11 = swift_allocError();
    v13 = v12;
    v14 = a1;
    sub_1884AFB5C(a1, v13);
    v24 = v11;
    sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v16 = a1[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v23 = a3;
      v24 = MEMORY[0x1E69E7CC0];
      sub_188477884(0, v16, 0);
      v17 = v24;
      v18 = a1 + 5;
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        ResolvedBundleID.init(_:)();
        v24 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_188477884(v21 > 1, v22 + 1, 1);
          v17 = v24;
        }

        *(v17 + 16) = v22 + 1;
        (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v10, v6);
        v18 += 2;
        --v16;
      }

      while (v16);
    }

    v24 = v17;
    sub_18844E6FC(&qword_1EA90E1F0, &unk_1886FA878);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1884A73E0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1884A74D8;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000188700A60, sub_1884A8504, v2, v5);
}

uint64_t sub_1884A74D8()
{
  sub_1883F7120();
  v3 = *(*v1 + 40);
  v2 = *v1;
  sub_1883F7110();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1884A75E8;
  }

  else
  {
    v6 = *(v2 + 32);

    v5 = sub_18845F268;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1884A75E8()
{
  sub_1883F7120();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_1884A7648(uint64_t a1, void *a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = [objc_allocWithZone(CKFetchUserQuotaOperation) init];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(sub_1884A850C, v11);
  v12 = [a2 privateCloudDatabase];
  v13 = [v12 implementation];
  v14 = [a2 convenienceConfiguration];
  [v13 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_1884A7820(void *a1, char a2)
{
  if (a2)
  {
    type metadata accessor for CloudCoreError();
    sub_1884A8534(&qword_1EA90C500, 255, MEMORY[0x1E6994790]);
    swift_allocError();
    v4 = v3;
    v5 = a1;
    sub_1884AFB5C(a1, v4);
    sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_18844E6FC(&qword_1EA90E1E0, &qword_1886FA860);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1884A7924(uint64_t a1@<X8>)
{
  v6 = [v1 implementation];
  type metadata accessor for CloudCoreContainerImplementation();
  sub_1883F73EC();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID;
  v5 = type metadata accessor for SessionID();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1884A79E8()
{
  v1 = [v0 implementation];
  type metadata accessor for CloudCoreContainerImplementation();
  sub_1883F73EC();
  v2 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_1883F5CC0(v4);

  return v4;
}

uint64_t sub_1884A7A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 implementation];
  type metadata accessor for CloudCoreContainerImplementation();
  sub_1883F73EC();
  v7 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_1883F5CC0(a1);
  sub_1883F5BA0(v8);

  return sub_1883F5BA0(a1);
}

uint64_t sub_1884A7CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884A8884;

  return sub_1884A6D84();
}

uint64_t sub_1884A7D78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884A7E04;

  return sub_1884A73CC();
}

uint64_t sub_1884A7E04()
{
  sub_1883F7120();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t (*sub_1884A7F00(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1884A79E8();
  a1[1] = v3;
  return sub_1884A7F48;
}

uint64_t sub_1884A7F48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    sub_1884A7A88(v6, v7);
    v8 = sub_1883F7228();

    return sub_1883F5BA0(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return sub_1884A7A88(v10, v11);
  }
}

uint64_t sub_1884A7FB4()
{
  v1 = v0;
  v2 = type metadata accessor for PropertyDescription();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  v8 = v7 - v6;
  v9 = type metadata accessor for OSLogPrivacy();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v11 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v3 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1886F7400;
  v13 = [v1 implementation];
  v14 = type metadata accessor for CloudCoreContainerImplementation();
  sub_1883F73EC();
  v20 = v14;
  v19[0] = swift_dynamicCastClassUnconditional();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v15 = &v1[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC8CloudKit18CloudCoreContainer_subContainersMutex]);
  sub_1884A824C(v15 + 1, v19);
  os_unfair_lock_unlock(v15);
  v16 = v19[0];
  if (*(v19[0] + 16))
  {
    v20 = sub_18844E6FC(&qword_1EA90E1F8, &qword_1886FA888);
    v19[0] = v16;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v12 = v17;
    *(v17 + 16) = 2;
    (*(v4 + 32))(v17 + v11, v8, v2);
  }

  else
  {
  }

  return v12;
}

void sub_1884A824C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v34 = *a1 & 0xC000000000000001;
  if (!v34)
  {
    v5 = *(v4 + 16);
    swift_bridgeObjectRetain_n();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    swift_bridgeObjectRelease_n();
    v6 = MEMORY[0x1E69E7CC0];
LABEL_18:
    *a2 = v6;
    return;
  }

  swift_bridgeObjectRetain_n();
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  v40 = MEMORY[0x1E69E7CC0];
  sub_1884778DC(0, v5 & ~(v5 >> 63), 0);
  v6 = v40;
  v37 = sub_1884A8644(v4);
  v38 = v7;
  v39 = v8 & 1;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v31 = a2;
    v32 = v2;
    v9 = 0;
    v33 = v5;
    while (!__OFADD__(v9, 1))
    {
      v10 = v37;
      v11 = v38;
      v12 = v39;
      v13 = v4;
      sub_1884A86A4(v37, v38, v39, v4);
      v15 = v14;

      v40 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1884778DC((v20 > 1), v21 + 1, 1);
        v6 = v40;
      }

      *(v6 + 16) = v21 + 1;
      *(v6 + 8 * v21 + 32) = v15;
      v35 = v6;
      if (v34)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

        v4 = v13;
        if (__CocoaDictionary.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v28 = v33;
        v29 = v9 + 1;
        sub_18844E6FC(&qword_1EA90E200, &qword_1886FA890);
        v30 = Dictionary.Index._asCocoa.modify();
        __CocoaDictionary.formIndex(after:isUnique:)();
        v30(v36, 0);
      }

      else
      {
        v4 = v13;
        sub_188488088(v10, v11, v12, v13, v16, v17, v18, v19, v31, v32);
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_188487EB8(v10, v11, v12);
        v37 = v23;
        v38 = v25;
        v39 = v27 & 1;
        v28 = v33;
        v29 = v9 + 1;
      }

      ++v9;
      v6 = v35;
      if (v29 == v28)
      {
        swift_bridgeObjectRelease_n();
        sub_188487EB8(v37, v38, v39);
        a2 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1884A8534(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1884A85AC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(sub_18844E6FC(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1884A8644(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

void sub_1884A86A4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaDictionary.value(at:)();
      type metadata accessor for CloudCoreContainer();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  __CocoaDictionary.Index.key.getter();
  sub_188498C74();
  swift_dynamicCast();
  a2 = v12;
  sub_188486518();
  a1 = v7;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a4 + 56) + 8 * a1);

  v11 = v10;
}

uint64_t sub_1884A8818(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E208, &qword_1886FA898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1884A8888(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken] = -1;
  v9 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID;
  v10 = type metadata accessor for SessionID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a2, v10);
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithContainerID_options_, a1, a3);
  LODWORD(ObjectType) = sub_1884A89B0();

  v13 = *(v11 + 8);
  v14 = sub_1883FDAB8();
  v15(v14);
  *&v12[OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken] = ObjectType;

  sub_1883F8750();
}

id sub_1884A89B0()
{
  swift_getObjectType();
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = @"com.apple.cloudd.cloudCoreSessionInvalidated";
  SessionID.uuid.getter();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = MEMORY[0x18CFD5010](v6, v8);

  v10 = CKNotificationKey(v5, v9);

  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x18CFD5010](v11);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1884AB46C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884C4F80;
  aBlock[3] = &unk_1EFA29120;
  v14 = _Block_copy(aBlock);

  v15 = [ObjCClassFromMetadata registerForDaemonNotificationsWithKey:v10 callback:v14];
  _Block_release(v14);

  return v15;
}

id sub_1884A8BE4()
{
  ObjectType = swift_getObjectType();
  sub_1884A8C2C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1884A8C2C()
{
  v1 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken;
  v2 = *(v0 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionInvalidationRegistrationToken);
  if (v2 != -1)
  {
    swift_getObjectType();
    [swift_getObjCClassFromMetadata() unregisterForDaemonNotificationsWithToken_];
    *(v0 + v1) = -1;
  }
}

uint64_t type metadata accessor for CloudCoreContainerImplementation()
{
  result = qword_1EA90C458;
  if (!qword_1EA90C458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1884A8D7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1884A8DD0();
  }
}

uint64_t sub_1884A8DD0()
{
  v1 = v0;
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for Logger();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v47 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v22 = *(v11 + 16);
  v22(&v42 - v20, v1 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_sessionID, v10, v19);
  CCLog.getter();
  v52 = v21;
  v46 = v22;
  (v22)(v16, v21, v10);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = v11;
    v26 = v25;
    v43 = swift_slowAlloc();
    v53 = v43;
    *v26 = 136315138;
    sub_1884AB584(&qword_1EA90C2E0, MEMORY[0x1E69948C8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v1;
    v28 = v5;
    v30 = v29;
    v49 = *(v45 + 8);
    v49(v16, v10);
    v31 = sub_1883FE340(v27, v30, &v53);
    v5 = v28;
    v1 = v44;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1883EA000, v23, v24, "Received notification that session was invalidated. sessionID: %s", v26, 0xCu);
    v32 = v43;
    sub_1883FE944(v43);
    MEMORY[0x18CFD7E80](v32, -1, -1);
    v33 = v26;
    v11 = v45;
    MEMORY[0x18CFD7E80](v33, -1, -1);
  }

  else
  {

    v49 = *(v11 + 8);
    v49(v16, v10);
  }

  (*(v50 + 8))(v9, v51);
  sub_1884A8C2C();
  v34 = OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler;
  swift_beginAccess();
  v35 = v52;
  if (*(v1 + v34))
  {
    v36 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v5, 1, 1, v36);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v48;
    v46(v48, v35, v10);
    v39 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v40 = swift_allocObject();
    *(v40 + 2) = 0;
    *(v40 + 3) = 0;
    *(v40 + 4) = v37;
    (*(v11 + 32))(&v40[v39], v38, v10);
    sub_188453610();
  }

  return (v49)(v35, v10);
}

uint64_t sub_1884A929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = *(*(sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for SessionInvalidationContext();
  v5[30] = v7;
  v8 = *(v7 - 8);
  v5[31] = v8;
  v9 = *(v8 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = *(*(sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v11 = type metadata accessor for SessionReadinessError();
  v5[35] = v11;
  v12 = *(v11 - 8);
  v5[36] = v12;
  v13 = *(v12 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v14 = type metadata accessor for SessionID();
  v5[39] = v14;
  v15 = *(v14 - 8);
  v5[40] = v15;
  v16 = *(v15 + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v5[44] = v17;
  v18 = *(v17 - 8);
  v5[45] = v18;
  v19 = *(v18 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v20 = sub_18844E6FC(&qword_1EA90E210, &qword_1886FA908);
  v5[49] = v20;
  v21 = *(v20 - 8);
  v5[50] = v21;
  v22 = *(v21 + 64) + 15;
  v5[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884A9590, 0, 0);
}

uint64_t sub_1884A9590()
{
  v1 = v0[27];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[52] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[50];
    v4 = v0[51];
    v6 = v0[49];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1884A9824;
    swift_continuation_init();
    v0[17] = v6;
    v7 = sub_188403664(v0 + 14);
    sub_18844E6FC(&unk_1EA90E218, &unk_1886FA910);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(v7, v4, v6);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1884AA420;
    v0[13] = &unk_1EFA29170;
    [v3 getCloudCoreSessionValidityError_];
    (*(v5 + 8))(v7, v6);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1883F7CB8();
    v8 = v0[34];
    v11 = v0[33];
    v12 = v0[32];
    v13 = v0[29];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1884A9824()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1884A9904, 0, 0);
}

uint64_t sub_1884A9904()
{
  v142 = v0;
  v2 = v0[21];
  v1 = v0[22];
  if (v1)
  {
    v3 = v0[48];
    v4 = v0[43];
    v5 = v0[39];
    v6 = v0[40];
    v7 = v0[28];
    v8 = v1;
    CCLog.getter();
    v9 = *(v6 + 16);
    v10 = sub_1883FDAB8();
    v11(v10);
    v12 = v1;
    v13 = Logger.logObject.getter();
    LOBYTE(v3) = static os_log_type_t.error.getter();

    v127 = v3;
    v14 = os_log_type_enabled(v13, v3);
    v136 = v0[52];
    v15 = v0[48];
    v17 = v0[44];
    v16 = v0[45];
    v18 = v0[43];
    v19 = v0[39];
    v20 = v0[40];
    if (v14)
    {
      v132 = v2;
      v21 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = sub_1883FE540();
      v141 = v117;
      *v21 = 136315394;
      sub_1883F73FC();
      sub_1884AB584(v22, v23);
      v120 = v17;
      v124 = v15;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v20 + 8))(v18, v19);
      v27 = sub_1883FE340(v24, v26, &v141);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2112;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v29;
      *v115 = v29;
      _os_log_impl(&dword_1883EA000, v13, v127, "Session was invalidated, but we failed to retrieve the details. sessionID: %s, error: %@", v21, 0x16u);
      sub_1883F9FEC(v115, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      sub_1883FE944(v117);
      sub_1883F7B60();
      sub_1883F7B60();

      (*(v16 + 8))(v124, v120);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
      (*(v16 + 8))(v15, v17);
    }
  }

  else
  {
    if (v2)
    {
      v0[23] = v2;
      v30 = v2;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v31 = v0[24];
        v0[25] = v31;
        sub_1883F8920();
        sub_1884AB584(v32, v33);
        _BridgedStoredNSError.code.getter();
        if (v0[26] == 170)
        {
          v34 = v0[34];
          v35 = v0[35];
          related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
          v36 = sub_1883FF150();
          if (sub_1883F971C(v36, v37, v35) == 1)
          {
            sub_1883F9FEC(v0[34], &qword_1EA90E0D0, &qword_1886FA1A0);
          }

          else
          {
            v63 = v0[29];
            v64 = v0[30];
            (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
            related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
            v65 = sub_1883FF150();
            if (sub_1883F971C(v65, v66, v64) != 1)
            {
              v135 = v2;
              v67 = v0[47];
              v68 = v0[39];
              v69 = v0[40];
              v126 = v0[37];
              v130 = v0[38];
              v70 = v0[36];
              v118 = v0[42];
              v122 = v0[35];
              v71 = v0[33];
              v139 = v0[32];
              v73 = v0[30];
              v72 = v0[31];
              v74 = v0[28];
              (*(v72 + 32))(v71, v0[29], v73);
              CCLog.getter();
              (*(v69 + 16))(v118, v74, v68);
              v75 = *(v70 + 16);
              v75(v126, v130, v122);
              (*(v72 + 16))(v139, v71, v73);
              v76 = Logger.logObject.getter();
              v111 = static os_log_type_t.default.getter();
              v131 = v76;
              v77 = os_log_type_enabled(v76, v111);
              v123 = v0[47];
              v78 = v0[45];
              v140 = v0[44];
              v79 = v0[42];
              v80 = v0[39];
              v81 = v0[40];
              v82 = v0[36];
              v112 = v0[35];
              v113 = v0[37];
              v83 = v0[31];
              v84 = v0[30];
              v116 = v84;
              v119 = v0[32];
              if (v77)
              {
                v85 = sub_1883FE540();
                v110 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                *v85 = 136315650;
                sub_1883F73FC();
                sub_1884AB584(v86, v87);
                dispatch thunk of CustomStringConvertible.description.getter();
                v109 = v78;
                (*(v81 + 8))(v79, v80);
                v88 = sub_1883FDAB8();
                v91 = sub_1883FE340(v88, v89, v90);

                *(v85 + 4) = v91;
                *(v85 + 12) = 2112;
                sub_1884AB584(&qword_1EA90C2F8, MEMORY[0x1E6994830]);
                swift_allocError();
                v75(v92, v113, v112);
                v93 = _swift_stdlib_bridgeErrorToNSError();
                v94 = *(v82 + 8);
                v95 = sub_1883FDAB8();
                v114 = v96;
                (v96)(v95);
                *(v85 + 14) = v93;
                *v110 = v93;
                *(v85 + 22) = 2080;
                sub_1884AB584(&unk_1EA90C2E8, MEMORY[0x1E6994898]);
                v97 = dispatch thunk of CustomStringConvertible.description.getter();
                v99 = v98;
                v100 = *(v83 + 8);
                v100(v119, v116);
                v101 = sub_1883FE340(v97, v99, &v141);

                *(v85 + 24) = v101;
                _os_log_impl(&dword_1883EA000, v131, v111, "Session %s was invalidated due to %@, invalidationContext: %s", v85, 0x20u);
                sub_1883F9FEC(v110, &qword_1EA90DC70, &unk_1886FA190);
                sub_1883F7B60();
                swift_arrayDestroy();
                sub_1883F7B60();
                sub_1883F7B60();

                (*(v109 + 8))(v123, v140);
              }

              else
              {

                v102 = *(v83 + 8);
                v102(v119, v116);
                v114 = *(v82 + 8);
                v114(v113, v112);
                (*(v81 + 8))(v79, v80);
                v100 = v102;
                (*(v78 + 8))(v123, v140);
              }

              v103 = v0[52];
              v104 = v0[38];
              v105 = v0[35];
              v106 = v0[33];
              v107 = v0[30];
              v108 = v31;
              sub_1884AA480(v108);

              v100(v106, v107);
              v114(v104, v105);
              goto LABEL_15;
            }

            sub_1883F9FEC(v0[29], &unk_1EA90E170, &qword_1886FA450);
          }

          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

    v38 = v0[46];
    v40 = v0[40];
    v39 = v0[41];
    v41 = v0[39];
    v42 = v0[28];
    CCLog.getter();
    (*(v40 + 16))(v39, v42, v41);
    v43 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v43, v137);
    v45 = v0[52];
    v47 = v0[45];
    v46 = v0[46];
    v48 = v0[44];
    v50 = v0[40];
    v49 = v0[41];
    v51 = v0[39];
    if (v44)
    {
      v128 = v0[46];
      v52 = swift_slowAlloc();
      v133 = v2;
      v53 = sub_1883FE540();
      v141 = v53;
      *v52 = 136315138;
      sub_1883F73FC();
      sub_1884AB584(v54, v55);
      v121 = v45;
      v125 = v48;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v50 + 8))(v49, v51);
      v59 = sub_1883FE340(v56, v58, &v141);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1883EA000, v43, v137, "Session was invalidated, but we failed to retrieve the details. sessionID: %s", v52, 0xCu);
      sub_1883FE944(v53);
      sub_1883F7B60();
      sub_1883F7B60();

      (*(v47 + 8))(v128, v125);
    }

    else
    {

      (*(v50 + 8))(v49, v51);
      (*(v47 + 8))(v46, v48);
    }
  }

LABEL_15:
  sub_1883F7CB8();
  v60 = v0[34];
  v129 = v0[33];
  v134 = v0[32];
  v138 = v0[29];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1884AA420(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  v5 = a3;
  v6 = a2;

  return sub_1884E5038();
}

uint64_t sub_1884AA480(void *a1)
{
  v101 = type metadata accessor for SessionInvalidationContext();
  v3 = sub_1883F70DC(v101);
  v99 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F7100();
  v96 = v8 - v7;
  v9 = type metadata accessor for SessionReadinessError();
  v10 = sub_1883F70DC(v9);
  v97 = v11;
  v98 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v95 = v15 - v14;
  v16 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1883F926C();
  v93 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v87 - v23;
  v24 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  sub_1883F926C();
  v92 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v87 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v87 - v31;
  v89 = type metadata accessor for Logger();
  v33 = sub_1883F70DC(v89);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F7100();
  v40 = v39 - v38;
  CCLog.getter();
  v41 = v1;
  v42 = a1;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v45 = os_log_type_enabled(v43, v44);
  v100 = v32;
  v91 = v21;
  v90 = v41;
  if (v45)
  {
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = sub_1883FE540();
    v87 = v29;
    v48 = v47;
    v102 = v47;
    *v21 = 136315394;
    type metadata accessor for SessionID();
    v88 = a1;
    sub_1883F73FC();
    sub_1884AB584(v49, v50);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_1883FE340(v51, v52, &v102);

    *(v21 + 4) = v53;
    a1 = v88;
    *(v21 + 6) = 2112;
    v54 = a1;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v55;
    *v46 = v55;
    _os_log_impl(&dword_1883EA000, v43, v44, "Session %s was invalidated with error %@", v21, 0x16u);
    sub_1883F9FEC(v46, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v48);
    v29 = v87;
    sub_1883F7B60();
    sub_1883F7B60();
  }

  (*(v35 + 8))(v40, v89);
  v56 = sub_1883FF150();
  v57 = v98;
  sub_1883F90F4(v56, v58, 1, v98);
  v59 = v94;
  sub_1883F90F4(v94, 1, 1, v101);
  v102 = a1;
  v60 = a1;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CKUnderlyingError(0);
  v61 = sub_1883FECF4();
  v62 = v95;
  if (v61)
  {
    v63 = v103;
    v102 = v103;
    sub_1884AB584(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);
    sub_1883F8BC4();
    if (v103 == 12000)
    {
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter(v29);
      sub_1883F9804();
      sub_1883F8250();
      sub_18840AFE8();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter(v64);
      goto LABEL_10;
    }
  }

  v102 = a1;
  v65 = a1;
  type metadata accessor for CKError(0);
  if ((sub_1883FECF4() & 1) == 0)
  {
LABEL_19:
    sub_1883FE65C();
    _StringGuts.grow(_:)(58);
    MEMORY[0x18CFD5140](0xD000000000000038, 0x8000000188700C60);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v86 = 116;
    goto LABEL_20;
  }

  v63 = v103;
  v102 = v103;
  sub_1883F8920();
  sub_1884AB584(v66, v67);
  sub_1883F8BC4();
  if (v103 != 170)
  {

    goto LABEL_19;
  }

  related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
  sub_1883F9804();
  sub_1883F8250();
  sub_18840AFE8();
  related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
LABEL_10:

  sub_1883F9FEC(v59, &unk_1EA90E170, &qword_1886FA450);
  sub_1884AB374(v41, v59, &unk_1EA90E170, &qword_1886FA450);
  v68 = v92;
  sub_188442C8C(v21, v92, &qword_1EA90E0D0, &qword_1886FA1A0);
  v69 = sub_1883FF150();
  if (sub_1883F971C(v69, v70, v57) == 1)
  {
    sub_1883F9FEC(v68, &qword_1EA90E0D0, &qword_1886FA1A0);
    sub_1883FE65C();
    _StringGuts.grow(_:)(49);
    MEMORY[0x18CFD5140](0xD00000000000002FLL, 0x8000000188700CA0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v86 = 120;
LABEL_20:
    v87 = v86;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v71 = v97;
  (*(v97 + 32))(v62, v68, v57);
  v72 = v93;
  sub_188442C8C(v59, v93, &unk_1EA90E170, &qword_1886FA450);
  v73 = sub_1883FF150();
  v75 = sub_1883F971C(v73, v74, v101);
  v76 = v90;
  if (v75 == 1)
  {
    sub_1883F9FEC(v72, &unk_1EA90E170, &qword_1886FA450);
    sub_1883FE65C();
    _StringGuts.grow(_:)(55);
    MEMORY[0x18CFD5140](0xD000000000000035, 0x8000000188700CD0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_1883F8E6C();
    v86 = 123;
    goto LABEL_20;
  }

  v77 = v96;
  (*(v99 + 32))(v96, v72, v101);
  v78 = v76 + OBJC_IVAR____TtC8CloudKit32CloudCoreContainerImplementation_invalidationHandler;
  swift_beginAccess();
  v79 = *v78;
  if (*v78)
  {
    v80 = *(v78 + 8);
    swift_endAccess();

    v79(v62, v77);
    sub_1883F5BA0(v79);
    v81 = sub_1883F79DC();
    v82(v81);
    (*(v71 + 8))(v62, v57);
    sub_1883F9FEC(v59, &unk_1EA90E170, &qword_1886FA450);
    return sub_1883F9FEC(v100, &qword_1EA90E0D0, &qword_1886FA1A0);
  }

  else
  {
    v84 = sub_1883F79DC();
    v85(v84);
    (*(v71 + 8))(v62, v57);
    sub_1883F9FEC(v59, &unk_1EA90E170, &qword_1886FA450);
    sub_1883F9FEC(v100, &qword_1EA90E0D0, &qword_1886FA1A0);
    return swift_endAccess();
  }
}

void sub_1884AADC4(void *a1)
{
  if ([objc_opt_self() isSupported] && (v3 = sub_1884AB3C4(a1), v4))
  {
    v5 = v3;
    v6 = v4;
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1883FDE5C(v7, qword_1ED4B5C70);
    v8 = v1;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      type metadata accessor for SessionID();
      sub_1883F73FC();
      sub_1884AB584(v12, v13);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_1883FE340(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1883FE340(v5, v6, &v19);
      _os_log_impl(&dword_1883EA000, v9, v10, "Session %s will adopt persona %s on use", v11, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    sub_1884AB428();
    [v8 setPersona_];
    sub_1883F8750();
  }

  else
  {
    sub_1883F8750();
  }
}

uint64_t sub_1884AB0D4()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel_CKPropertiesDescription);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  strcpy(v9, ", sessionID=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  type metadata accessor for SessionID();
  sub_1883F73FC();
  sub_1884AB584(v5, v6);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v7);

  MEMORY[0x18CFD5140](v9[0], v9[1]);

  return v11;
}

uint64_t sub_1884AB2CC()
{
  result = type metadata accessor for SessionID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1884AB374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1884AB3C4(void *a1)
{
  v1 = [a1 personaIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1884AB428()
{
  result = qword_1EA90C320;
  if (!qword_1EA90C320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C320);
  }

  return result;
}

uint64_t sub_1884AB474(uint64_t a1)
{
  v4 = *(type metadata accessor for SessionID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188496548;

  return sub_1884A929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1884AB584(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1884AB5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](a1, a2);

  v8 = [v6 initWithIdentifier:v7 type:a3];

  return v8;
}

void sub_1884AB648()
{
  sub_1883F8AF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v9);
  v11 = *(v10 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F83A4();
  v13 = type metadata accessor for AnySessionConfiguration();
  v14 = sub_1883F70DC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v21 = v20 - v19;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  (*(v16 + 16))(v21, v7, v13);
  v23 = v22;
  sub_1884AB884(v21);
  v24 = type metadata accessor for AnySessionAcquiredInfo();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v1, v5, v24);
  sub_1883F90F4(v1, 0, 1, v24);
  sub_1884AB9A4(v1);
  if (v3)
  {
    swift_unknownObjectRetain();
    v26 = swift_dynamicCastObjCProtocolUnconditional();
  }

  else
  {
    v26 = 0;
  }

  [v23 setTestDeviceReferenceProtocol_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v25 + 8))(v5, v24);
  (*(v16 + 8))(v7, v13);
  sub_1883F8178();
}

uint64_t sub_1884AB884(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = objc_allocWithZone(type metadata accessor for CKSessionConfiguration());
  v11 = CKSessionConfiguration.init(_:)(v9);
  [v2 setCkSessionConfiguration_];

  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1884AB9A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for AnySessionAcquiredInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1884AD5D4(a1, v7);
  if (sub_1883F971C(v7, 1, v8) == 1)
  {
    sub_188442B84(v7, &unk_1EA90E238, &qword_1886FA950);
    [v2 setCkSessionAcquiredInfo_];
    return sub_188442B84(a1, &unk_1EA90E238, &qword_1886FA950);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v12, v15, v8);
    v17 = objc_allocWithZone(type metadata accessor for CKSessionAcquiredInfo());
    v18 = CKSessionAcquiredInfo.init(_:)(v12);
    [v2 setCkSessionAcquiredInfo_];

    sub_188442B84(a1, &unk_1EA90E238, &qword_1886FA950);
    return (*(v9 + 8))(v15, v8);
  }
}

id sub_1884ABBD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1884ABC88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1884ABD1C()
{
  v1 = sub_1883FF15C();
  v2 = sub_1883F7E8C();
  v3 = MEMORY[0x18CFD5010](v2);

  v6.receiver = v0;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithSqliteRepresentation_, v3);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1884ABDC4@<X0>(uint64_t a1@<X8>)
{
  if ([v1 ckSessionAcquiredInfo])
  {
    type metadata accessor for CKSessionAcquiredInfo();
    swift_dynamicCastClassUnconditional();
    swift_unknownObjectRetain();
    CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
    swift_unknownObjectRelease_n();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for AnySessionAcquiredInfo();

  return sub_1883F90F4(a1, v3, 1, v4);
}

void sub_1884ABE98()
{
  sub_1883F8AF0();
  v3 = type metadata accessor for BundleID.Payload();
  v4 = sub_1883F70DC(v3);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  sub_1883FED1C();
  v38 = type metadata accessor for BundleID();
  v8 = sub_1883F70DC(v38);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  sub_1883FE66C();
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v14 = sub_1883F70DC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  sub_1883F9824();
  v19 = type metadata accessor for AnySessionConfiguration();
  v20 = sub_1883F70DC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  v27 = v26 - v25;
  sub_188445AC0();
  AnySessionConfiguration.application.getter();
  (*(v22 + 8))(v27, v19);
  AuthenticatedSession.Configuration.Application.bundleID.getter();
  (*(v16 + 8))(v2, v13);
  BundleID.payload.getter();
  (*(v10 + 8))(v1, v38);
  v28 = sub_1883F7CD4();
  if (v29(v28) == *MEMORY[0x1E69948C0])
  {
    v30 = *(v39 + 96);
    v31 = sub_1883F7E8C();
    v32(v31);
    v33 = *v0;
    v34 = v0[1];
  }

  else
  {
    v35 = *(v39 + 8);
    v36 = sub_1883F7E8C();
    v37(v36);
    sub_1883FF490();
  }

  sub_1883F8178();
}

void sub_1884AC128()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

void sub_1884AC1F0()
{
  sub_1883F8AF0();
  v3 = type metadata accessor for BundleID.Payload();
  v4 = sub_1883F70DC(v3);
  v50 = v5;
  v51 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  sub_1883F8424(v8);
  v9 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  v54 = sub_1883F70DC(v9);
  v55 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1883F7100();
  sub_1883FE66C();
  v53 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  v13 = sub_1883F70DC(v53);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  sub_1883F9824();
  v52 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v18 = sub_1883F70DC(v52);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F7100();
  v25 = v24 - v23;
  v26 = type metadata accessor for AnySessionConfiguration();
  v27 = sub_1883F70DC(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1883F7100();
  sub_1883FEA80();
  v32 = type metadata accessor for BundleID();
  v33 = sub_1883F70DC(v32);
  v47 = v34;
  v48 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F7100();
  v39 = v38 - v37;
  sub_188445AC0();
  AnySessionConfiguration.application.getter();
  (*(v29 + 8))(v0, v26);
  AuthenticatedSession.Configuration.Application.pushRegistration.getter();
  (*(v20 + 8))(v25, v52);
  AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter();
  (*(v15 + 8))(v2, v53);
  if ((*(v55 + 88))(v1, v54) != *MEMORY[0x1E69947F8])
  {
    (*(v55 + 8))(v1, v54);
LABEL_6:
    sub_1883FF490();
    goto LABEL_7;
  }

  (*(v55 + 96))(v1, v54);
  (*(v47 + 32))(v39, v1, v48);
  BundleID.payload.getter();
  (*(v47 + 8))(v39, v48);
  v40 = sub_1883F7CD4();
  if (v41(v40) != *MEMORY[0x1E69948C0])
  {
    (*(v50 + 8))(v49, v51);
    goto LABEL_6;
  }

  v42 = *(v50 + 96);
  v43 = sub_1883F7E8C();
  v44(v43);
  v45 = *v49;
  v46 = v49[1];
LABEL_7:
  sub_1883F8178();
}

void sub_1884AC5E4()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

void sub_1884AC6AC()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

void sub_1884AC774()
{
  sub_1883FF15C();
  sub_1883F92B0();

  sub_1883F8938();
  sub_1883FA3E4();

  sub_188405548();
  sub_1883F7F10();
  sub_1883F95DC();
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

id sub_1884AC868()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  v1 = sub_1883F8AE4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v6 = v5 - v4;
  sub_1883F4C5C(0, &unk_1EA90C350, off_1E70B9FB0);
  sub_188445AC0();
  return CKAccountOverrideInfo.init(sessionConfiguration:)(v6);
}

void sub_1884AC924(void *a1)
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  sub_188405548();
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188700F60);
  sub_1883F95DC();
  v3 = a1;
  sub_18844E6FC(&unk_1EA90E248, &qword_1886FA958);
  String.init<A>(describing:)();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

id sub_1884ACA70()
{
  ObjectType = swift_getObjectType();
  v3 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v3);
  v5 = *(v4 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1883FE66C();
  v7 = type metadata accessor for AnySessionAcquiredInfo();
  v8 = sub_1883F70DC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v15 = v14 - v13;
  sub_1884ABDC4(v1);
  if (sub_1883F971C(v1, 1, v7) == 1)
  {
    sub_188442B84(v1, &unk_1EA90E238, &qword_1886FA950);
    v23.receiver = v0;
    v23.super_class = ObjectType;
    return objc_msgSendSuper2(&v23, sel_persona);
  }

  else
  {
    (*(v10 + 32))(v15, v1, v7);
    AnySessionAcquiredInfo.userPersonaUniqueString.getter();
    if (v17)
    {
      sub_1883F4C5C(0, &qword_1EA90C320, off_1E70BA570);

      v16 = sub_1884ACDD0();
      v20 = sub_1883F8270();
      v21(v20);
    }

    else
    {
      v18 = sub_1883F8270();
      v19(v18);
      return 0;
    }
  }

  return v16;
}

void sub_1884ACCE4(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  sub_1883F8AE4(v5);
  v7 = *(v6 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F83A4();
  sub_1884ABDC4(v2);
  v9 = type metadata accessor for AnySessionAcquiredInfo();
  v10 = sub_1883F971C(v2, 1, v9);
  sub_188442B84(v2, &unk_1EA90E238, &qword_1886FA950);
  if (v10 == 1)
  {
    v11.receiver = v1;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_setPersona_, a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1884ACDD0()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x18CFD5010]();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() personaWithIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1884ACF38(int a1)
{
  sub_188445778();
  if ((v2 ^ a1))
  {
    __break(1u);
  }
}

id sub_1884ACF88(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x18CFD5010](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1884AD008()
{
  sub_1883F8AF0();
  v2 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload();
  v3 = sub_1883F70DC(v2);
  v49 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F7100();
  sub_1883FED1C();
  v7 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v8 = sub_1883F70DC(v7);
  v47 = v9;
  v48 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v14 = v13 - v12;
  v15 = sub_18844E6FC(&qword_1EA90E228, &unk_1886FA940);
  sub_1883F8AE4(v15);
  v17 = *(v16 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F83A4();
  v19 = type metadata accessor for AnySessionConfiguration();
  v20 = sub_1883F70DC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  v27 = v26 - v25;
  v28 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  v29 = sub_1883F70DC(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1883F7100();
  v36 = v35 - v34;
  sub_188445AC0();
  AnySessionConfiguration.encryption.getter();
  (*(v22 + 8))(v27, v19);
  if (sub_1883F971C(v1, 1, v28) == 1)
  {
    sub_188442B84(v1, &qword_1EA90E228, &unk_1886FA940);
LABEL_6:
    sub_1883FF490();
    goto LABEL_7;
  }

  (*(v31 + 32))(v36, v1, v28);
  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter();
  (*(v47 + 8))(v14, v48);
  (*(v31 + 8))(v36, v28);
  v37 = sub_1883F7CD4();
  if (v38(v37) != *MEMORY[0x1E69947F0])
  {
    v44 = *(v49 + 8);
    v45 = sub_1883F7E8C();
    v46(v45);
    goto LABEL_6;
  }

  v39 = *(v49 + 96);
  v40 = sub_1883F7E8C();
  v41(v40);
  v42 = *v0;
  v43 = v0[1];
LABEL_7:
  sub_1883F8178();
}

void sub_1884AD334(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
  __break(1u);
}

void sub_1884AD38C()
{
  sub_1883FF15C();
  sub_1883F92B0();

  _typeName(_:qualified:)();
  sub_1883FA3E4();

  sub_188405548();
  MEMORY[0x18CFD5140](0xD000000000000015, 0x8000000188700FF0);
  sub_1883F95DC();
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858();
  sub_1883FE048();

  sub_1883FA110();
  __break(1u);
}

void sub_1884AD484(char a1)
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](2126631, 0xE300000000000000);
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188701010);
  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x18CFD5140](v3, v4);

  sub_1883FA110();
  __break(1u);
}

uint64_t sub_1884AD5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id CKAccountOverrideInfo.init(sessionConfiguration:)(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E260, &qword_1886FA968);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for AuthenticatedSession.Configuration.Account.ExplicitCredentials();
  v7 = sub_1883F70DC(v6);
  v51 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v18 = sub_1883F70DC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  AnySessionConfiguration.account.getter();
  if (sub_1883F971C(v16, 1, v17) == 1)
  {
    v25 = type metadata accessor for AnySessionConfiguration();
    sub_1883F7158(v25);
    (*(v26 + 8))(a1);
    v27 = &qword_1EA90E258;
    v28 = &qword_1886FA960;
    v29 = v16;
LABEL_5:
    sub_18845B1B0(v29, v27, v28);
    return 0;
  }

  (*(v20 + 32))(v24, v16, v17);
  AuthenticatedSession.Configuration.Account.explicitCredentials.getter();
  if (sub_1883F971C(v5, 1, v6) == 1)
  {
    v30 = type metadata accessor for AnySessionConfiguration();
    sub_1883F7158(v30);
    (*(v31 + 8))(a1);
    (*(v20 + 8))(v24, v17);
    v27 = &qword_1EA90E260;
    v28 = &qword_1886FA968;
    v29 = v5;
    goto LABEL_5;
  }

  (*(v51 + 32))(v12, v5, v6);
  v33 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.hsa2RecoveryKey.getter();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v37 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.getter();
    v49 = MEMORY[0x18CFD5010](v37);

    v38 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.getter();
    v39 = MEMORY[0x18CFD5010](v38);

    v40 = MEMORY[0x18CFD5010](v35, v36);

    v41 = v49;
    v32 = [v50 initWithEmail:v49 password:v39 recoveryKey:v40];
  }

  else
  {
    v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v43 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.getter();
    v39 = MEMORY[0x18CFD5010](v43);

    v44 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.getter();
    v40 = MEMORY[0x18CFD5010](v44);

    v32 = [v42 initWithEmail:v39 password:v40];
  }

  v45 = type metadata accessor for AnySessionConfiguration();
  sub_1883F7158(v45);
  (*(v46 + 8))(a1);
  (*(v51 + 8))(v12, v6);
  (*(v20 + 8))(v24, v17);
  return v32;
}

void EntitlementsProtocol.ckCompatibilityOverlay(configuration:)(uint64_t a1)
{
  v117 = a1;
  v116 = type metadata accessor for AuthenticatedSession.Configuration.System();
  v1 = sub_1883F70DC(v116);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v8 = v7 - v6;
  v103 = type metadata accessor for BundleID.Payload();
  v9 = sub_1883F70DC(v103);
  v101 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v15 = v14 - v13;
  v105 = type metadata accessor for BundleID();
  v16 = sub_1883F70DC(v105);
  v102 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F7100();
  v100 = v21 - v20;
  v22 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v111 = sub_1883F70DC(v22);
  v112 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v111);
  sub_1883F926C();
  v106 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v96 - v28;
  v29 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v30 = sub_1883F70DC(v29);
  v109 = v31;
  v110 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1883F926C();
  v104 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v107 = &v96 - v36;
  v37 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v96 - v39;
  v115 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v41 = sub_1883F70DC(v115);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1883F7100();
  v114 = v47 - v46;
  v48 = dispatch thunk of EntitlementsProtocol.allowCustomBundleIDs.getter();
  v49 = MEMORY[0x1E69E7CC8];
  if (v48)
  {
    v50 = MEMORY[0x1E69E7CC8];
    v51 = v43;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v3;
    v54 = v53;
    swift_isUniquelyReferenced_nonNull_native();
    v118 = v50;
    v55 = sub_1883FDAC4();
    v56 = v52;
    v43 = v51;
    sub_1884AF200(v55, v57, v56, v54, v58);
    v3 = v113;

    v49 = v118;
  }

  if (dispatch thunk of EntitlementsProtocol.allowCustomAuthorizationUI.getter())
  {
    AnySessionConfiguration.account.getter();
    if (sub_1883F971C(v40, 1, v115) == 1)
    {
      sub_1884AF354(v40);
    }

    else
    {
      v98 = v49;
      v97 = v15;
      v99 = v8;
      v113 = v3;
      (*(v43 + 4))(v114, v40, v115);
      v59 = v107;
      AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
      v60 = v108;
      AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
      v61 = v110;
      v109 = *(v109 + 8);
      (v109)(v59, v110);
      v63 = v111;
      v62 = v112;
      v64 = *(v112 + 88);
      LODWORD(v59) = v64(v60, v111);
      v65 = *MEMORY[0x1E6994800];
      v108 = *(v62 + 8);
      (v108)(v60, v63);
      if (v59 == v65)
      {
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;
        v69 = v98;
        swift_isUniquelyReferenced_nonNull_native();
        v118 = v69;
        v70 = sub_1883FDAC4();
        sub_1884AF200(v70, v71, v66, v68, v72);

        (*(v43 + 1))(v114, v115);
        v49 = v118;
        v3 = v113;
        v8 = v99;
      }

      else
      {
        v107 = v43;
        v73 = v104;
        v74 = v114;
        AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
        v75 = v106;
        AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
        (v109)(v73, v61);
        if (v64(v75, v63) == *MEMORY[0x1E6994808])
        {
          (*(v112 + 96))(v75, v63);
          v76 = v102;
          v77 = v100;
          (*(v102 + 32))(v100, v75, v105);
          v78 = v97;
          BundleID.payload.getter();
          v79 = v101;
          v80 = v103;
          v81 = (*(v101 + 88))(v78, v103);
          v3 = v113;
          v49 = v98;
          v8 = v99;
          if (v81 == *MEMORY[0x1E69948C0])
          {
            (*(v79 + 8))(v78, v80);
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v77;
            v85 = v84;
            swift_isUniquelyReferenced_nonNull_native();
            v118 = v49;
            v86 = sub_1883FDAC4();
            sub_1884AF200(v86, v87, v82, v85, v88);

            (*(v76 + 8))(v83, v105);
            (*(v107 + 1))(v114, v115);
            v49 = v118;
          }

          else
          {
            (*(v76 + 8))(v77, v105);
            (*(v107 + 1))(v114, v115);
            (*(v79 + 8))(v78, v80);
          }
        }

        else
        {
          (*(v107 + 1))(v74, v115);
          (v108)(v75, v63);
          v3 = v113;
          v49 = v98;
          v8 = v99;
        }
      }
    }
  }

  AnySessionConfiguration.system.getter();
  v89 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
  (*(v3 + 8))(v8, v116);
  if (v89)
  {
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
    swift_isUniquelyReferenced_nonNull_native();
    v118 = v49;
    v93 = sub_1883FDAC4();
    sub_1884AF200(v93, v94, v90, v92, v95);
  }

  sub_1883F8178();
}

void sub_1884AE418(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for URL();
  v8 = sub_1883F70DC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v15 = v14 - v13;
  v16 = *v3;
  sub_1884863DC();
  sub_1883F8964(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v19;
  v23 = v20;
  sub_18844E6FC(&qword_1EA90E308, &qword_1886FA9F8);
  if (!sub_1883F8438())
  {
    goto LABEL_5;
  }

  v24 = *v4;
  sub_1884863DC();
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v22 = v25;
LABEL_5:
  v27 = *v4;
  if (v23)
  {
    v28 = v27[7] + 16 * v22;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = a1;
    *(v28 + 8) = a2 & 1;
    sub_1883F8178();

    sub_18844CAFC(v31);
  }

  else
  {
    (*(v10 + 16))(v15, a3, v7);
    sub_1884AF6EC(v22, v15, a1, a2 & 1, v27);
    sub_1883F8178();
  }
}

uint64_t sub_1884AEB48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v11 = v8;
  v15 = *v8;
  v16 = sub_188420F2C(a3, a4);
  sub_1883F8964(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  sub_18844E6FC(a6, a7);
  if (!sub_1883F8438())
  {
    goto LABEL_5;
  }

  v23 = *v11;
  v24 = sub_188420F2C(a3, a4);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v11;
  if (v22)
  {
    v27 = *(v26 + 56) + 16 * v21;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2 & 1;

    return a8(v28, v29);
  }

  else
  {
    sub_1884AF7B4(v21, a3, a4, a1, a2 & 1, v26);
  }
}

uint64_t sub_1884AF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188420F2C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_18844E6FC(&qword_1EA90E2B8, &qword_1886FA9A8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_188420F2C(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1884AF980(v18, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1884AF354(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1884AF3BC(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1884864E0();
  sub_1883F8964(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_18844E6FC(&qword_1EA90E2B0, &qword_1886FA9A0);
  v14 = sub_1883F8E7C();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v3;
    sub_1884864E0();
    sub_1883F7AE8();
    if (!v18)
    {
      goto LABEL_12;
    }

    v12 = v17;
  }

  v19 = *v3;
  if (v13)
  {
    v20 = (v19[7] + 32 * v12);
    sub_1883FE944(v20);

    return sub_188419138(a1, v20);
  }

  else
  {
    sub_1884802A8(a2, v22);
    return sub_1884AF9CC(v12, v22, a1, v19);
  }
}

uint64_t sub_1884AF6EC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for URL();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1884AF7B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1883F9834(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1884AF808(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1883F9834(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * result) = v7;
  v8 = v6[7] + 16 * result;
  *v8 = v9;
  *(v8 + 8) = v10 & 1;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_1884AF858(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1884AF89C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1884AF8F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1883F9834(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1884AF93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1883F9834(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1884AF980(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1884AF9CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_188419138(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1884AFA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E278, &unk_1886FB440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884AFAB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1883F9834(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = v9[7] + 32 * result;
  *v13 = v14;
  *(v13 + 8) = v15;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

unint64_t sub_1884AFB0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1884AFB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - v6;
  v8 = type metadata accessor for SessionInvalidationContext();
  v9 = sub_1883F70DC(v8);
  v54 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v15 = (v14 - v13);
  v16 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v52 - v18;
  v20 = type metadata accessor for SessionReadinessError();
  v21 = sub_1883F70DC(v20);
  v55 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F7100();
  v27 = (v26 - v25);
  v57 = a1;
  v28 = a1;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v31 = *MEMORY[0x1E6994780];
    v32 = type metadata accessor for CloudCoreError();
    sub_1883F7308(v32);
    return (*(v33 + 104))(a2, v31);
  }

  v53 = a2;
  v29 = v56;
  v57 = v56;
  sub_1884B034C(&qword_1EA90CAE0, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (v56 == 3)
  {

    v30 = MEMORY[0x1E6994778];
  }

  else
  {
    if (v56 == 170)
    {
      related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
      if (sub_1883F971C(v19, 1, v20) == 1)
      {

        v35 = &qword_1EA90E0D0;
        v36 = &qword_1886FA1A0;
        v37 = v19;
      }

      else
      {
        v41 = v55;
        v52 = *(v55 + 32);
        v52(v27, v19, v20);
        related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();

        if (sub_1883F971C(v7, 1, v8) != 1)
        {
          v46 = *(v54 + 32);
          v46(v15, v7, v8);
          v47 = *(sub_18844E6FC(&qword_1EA90E320, &unk_1886FAA10) + 48);
          v48 = v53;
          v52(v53, v27, v20);
          v46(v48 + v47, v15, v8);
          v49 = *MEMORY[0x1E6994788];
          v50 = type metadata accessor for CloudCoreError();
          sub_1883F7308(v50);
          return (*(v51 + 104))(v48, v49);
        }

        (*(v41 + 8))(v27, v20);
        v35 = &unk_1EA90E170;
        v36 = &qword_1886FA450;
        v37 = v7;
      }

      sub_188442B84(v37, v35, v36);
      v42 = v53;
      v43 = *MEMORY[0x1E6994780];
      v44 = type metadata accessor for CloudCoreError();
      sub_1883F7308(v44);
      return (*(v45 + 104))(v42, v43);
    }

    if (v56 == 5)
    {

      v30 = MEMORY[0x1E6994770];
    }

    else if (v56 == 4)
    {

      v30 = MEMORY[0x1E6994768];
    }

    else
    {

      v30 = MEMORY[0x1E6994780];
    }
  }

  v38 = *v30;
  v39 = type metadata accessor for CloudCoreError();
  sub_1883F7308(v39);
  return (*(v40 + 104))(v53, v38);
}

uint64_t related decl e for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionInvalidationContext();
  v5 = sub_1883F70DC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  v12 = v11 - v10;
  v13 = type metadata accessor for SessionReadinessError();
  v14 = sub_1883F70DC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v21 = v20 - v19;
  (*(v16 + 16))(v20 - v19, a1, v13);
  v22 = objc_allocWithZone(type metadata accessor for CKSessionReadinessErrorBox());
  v23 = CKSessionReadinessErrorBox.init(_:)(v21);
  (*(v7 + 16))(v12, a2, v4);
  v24 = objc_allocWithZone(type metadata accessor for CKSessionInvalidationContext());
  v25 = CKSessionInvalidationContext.init(_:)(v12);
  v26 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)(v23, v25);
  (*(v7 + 8))(a2, v4);
  (*(v16 + 8))(a1, v13);
  return v26;
}

uint64_t related decl e for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)(void *a1, void *a2)
{
  type metadata accessor for CKUnderlyingError(0);
  sub_18844E6FC(&qword_1EA90D870, &qword_1886F89B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = type metadata accessor for CKSessionReadinessErrorBox();
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = type metadata accessor for CKSessionInvalidationContext();
  *(inited + 96) = a2;
  v7 = a1;
  v8 = a2;
  Dictionary.init(dictionaryLiteral:)();
  sub_1884B034C(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);
  _BridgedStoredNSError.init(_:userInfo:)();

  return v10;
}

uint64_t sub_1884B034C(unint64_t *a1, void (*a2)(uint64_t))
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

id CKSecureCodingBox.init(wrapping:)(void *a1)
{
  sub_18840B008(a1);
  sub_1883F9C28();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1883F8978(v5, v16);
  v7(v6);
  v8 = sub_1883F92F0();
  v14 = sub_1884B19D8(v8, v9, v10, v11, v12, v13);
  sub_1883FE944(v1);
  return v14;
}

id CKSecureCodingBox.init(coder:wrappedType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v55 = type metadata accessor for Logger();
  sub_1883F9C28();
  v54 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  sub_1884B1ADC();
  v20 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v20)
  {
    CCLog.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60[0] = v32;
      *v31 = 136315138;
      v33 = sub_1883F828C(&v61);
      v35 = sub_1883FE340(v33, v34, v60);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1883EA000, v29, v30, "No data found in secure-coded %s)", v31, 0xCu);
      sub_1883FE944(v32);
      sub_1883F7B60();
      sub_1883F7B60();
    }

    sub_1883FF188(&v62);
    v48(v16, v55);
    goto LABEL_12;
  }

  v21 = v20;
  v51 = v19;
  v22 = a1;
  v52 = v5;
  v23 = type metadata accessor for JSONDecoder();
  sub_1883FEA90(v23);
  v24 = v21;
  JSONDecoder.init()();
  v25 = v24;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v60[3] = a2;
  v60[4] = a3;
  v60[5] = a4;
  v60[6] = a5;
  sub_188403664(v60);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_188423CCC(v26, v28);

  sub_1884B1B70(v60, &v57, &qword_1EA90E328, &qword_1886FAA20);
  if (!v58)
  {
    sub_18840E840(&v57, &qword_1EA90E328, &qword_1886FAA20);
    v38 = v51;
    CCLog.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *&v59[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_1883F828C(&v61);
      v44 = sub_1883FE340(v42, v43, v59);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = _typeName(_:qualified:)();
      v47 = sub_1883FE340(v45, v46, v59);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_1883EA000, v39, v40, "%s data couldn't be parsed as an encoded %s", v41, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {
    }

    sub_1883FF188(&v62);
    v49(v38, v55);
    sub_18840E840(v60, &qword_1EA90E328, &qword_1886FAA20);
LABEL_12:
    type metadata accessor for CKSecureCodingBox();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_188499B68(&v57, v59);
  sub_188499B68(v59, v52 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  sub_18840E840(v60, &qword_1EA90E328, &qword_1886FAA20);
  v36 = type metadata accessor for CKSecureCodingBox();
  sub_1883FDAD8(v36);
  v37 = objc_msgSendSuper2(&v56, sel_init);

  return v37;
}

uint64_t sub_1884B097C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0();
  return sub_188445B70(v1 + v3, a1);
}

uint64_t sub_1884B09CC(void *a1)
{
  sub_18840B008(a1);
  sub_1883F9C28();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1883F8978(v5, v15);
  v7(v6);
  v8 = sub_1883F92F0();
  sub_1884B192C(v8, v9, v10, v11, v12, v13);
  return sub_1883FE944(v1);
}

uint64_t sub_1884B0AE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0();
  sub_188445B70(v1 + v3, v12);
  sub_188400B68(v12, v12[3]);
  v4 = type metadata accessor for JSONEncoder();
  sub_1883FEA90(v4);
  JSONEncoder.init()();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  sub_1883FE944(v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = sub_1883F95F8();
  v10 = MEMORY[0x18CFD5010](v9, 0xE700000000000000);
  [a1 encodeObject:isa forKey:v10];

  return sub_188423CCC(v5, v7);
}

uint64_t sub_1884B0C0C()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0();
  sub_188445B70(v0 + v1, v7);
  sub_188400B68(v7, v7[3]);
  v2 = type metadata accessor for JSONEncoder();
  sub_1883FEA90(v2);
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  sub_1883FE944(v7);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  v4 = sub_1883F7EE0();
  sub_188423CCC(v4, v5);
  return countAndFlagsBits;
}

uint64_t sub_1884B0D10(uint64_t a1, uint64_t *a2)
{
  sub_188445B70(a1, v16);
  v3 = *a2;
  v4 = v17;
  v5 = v18;
  v6 = v19;
  v7 = v20;
  v8 = sub_1884B1A8C(v16, v17);
  v9 = *(*(v4 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_1884B192C(v12, v3, v4, v5, v6, v7);
  return sub_1883FE944(v16);
}

id CKSecureCodingBox.__allocating_init(wrapping:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  sub_1884B1A8C(a1, a1[3]);
  sub_1883F9C28();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1883F8978(v10, v21);
  v12(v11);
  v13 = sub_1883F92F0();
  v19 = sub_1884B19D8(v13, v14, v15, v16, v17, v18);
  sub_1883FE944(a1);
  return v19;
}

uint64_t sub_1884B1028(uint64_t a1)
{
  swift_getObjectType();
  sub_1884B1B70(a1, v31, &qword_1EA90DD10, &qword_1886F8770);
  if (!v32)
  {
    sub_18840E840(v31, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v26 = 0;
    return v26 & 1;
  }

  v3 = v30[0];
  v4 = v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883F7BE8();
  v5 = *(v4 + 24);
  v6 = *(v4 + 48);
  v7 = sub_1883F7EE0();
  sub_188400B68(v7, v8);
  sub_1883F9C28();
  v10 = *(v9 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1883F7434(v12, v28);
  v14(v13);
  sub_1883F7EE0();
  AnyHashable.init<A>(_:)();
  v15 = v30[0] + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883F7BE8();
  v16 = *(v15 + 24);
  v17 = *(v15 + 48);
  v18 = sub_1883F7EE0();
  sub_188400B68(v18, v19);
  sub_1883F9C28();
  v21 = *(v20 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1883F7434(v23, v29);
  v25(v24);
  sub_1883F7EE0();
  AnyHashable.init<A>(_:)();
  v26 = MEMORY[0x18CFD58F0](v31, v30);

  sub_1884889C4(v30);
  sub_1884889C4(v31);
  return v26 & 1;
}

uint64_t sub_1884B12F8()
{
  v1 = v0 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883F7BE8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = sub_1883F7EE0();
  sub_188400B68(v4, v5);
  sub_1883F9C28();
  v7 = *(v6 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F7434(v9, v14[0]);
  v11(v10);
  sub_1883F7EE0();
  AnyHashable.init<A>(_:)();
  v12 = AnyHashable.hashValue.getter();
  sub_1884889C4(v14);
  return v12;
}

id CKSecureCodingBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSecureCodingBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSecureCodingBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSecureCodingBox.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v3 = *(type metadata accessor for PropertyDescription() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1886F7400;
  v7 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  sub_1883FE5A0();
  v8 = v7[3];
  sub_188400B68(v7, v8);
  v11[3] = v8;
  sub_188403664(v11);
  sub_1883F7930(v8);
  (*(v9 + 16))();
  static OSLogPrivacy.auto.getter();
  sub_1883F95F8();
  PropertyDescription.init(_:_:privacy:)();
  return v6;
}

id sub_1884B1764(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t CKSecureCodingBox.description.getter()
{
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v1);

  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](8251, 0xE200000000000000);
  v2 = v0 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883F7BE8();
  v3 = *(v2 + 24);
  v4 = sub_1883F7EE0();
  sub_188400B68(v4, v5);
  sub_1883F9C28();
  v7 = *(v6 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1883F7434(v9, v14);
  v11(v10);
  sub_1883F7EE0();
  v12 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v12);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1884B192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  sub_188403664(&v11);
  sub_1883F7930(a3);
  (*(v8 + 32))();
  v9 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((a2 + v9));
  sub_188499B68(&v11, a2 + v9);
  return swift_endAccess();
}

id sub_1884B19D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v9 = sub_188403664(v13);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  sub_188445B70(v13, a2 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v12.receiver = a2;
  v12.super_class = type metadata accessor for CKSecureCodingBox();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1883FE944(v13);
  return v10;
}

uint64_t sub_1884B1A8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1884B1ADC()
{
  result = qword_1EA90C330;
  if (!qword_1EA90C330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C330);
  }

  return result;
}

uint64_t *sub_1884B1B20(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x18CFD7E80);
  }

  return result;
}

uint64_t sub_1884B1B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18844E6FC(a3, a4);
  sub_1883F7930(v5);
  v7 = *(v6 + 16);
  v8 = sub_1883F7EE0();
  v9(v8);
  return a2;
}

unint64_t sub_1884B1BD4()
{
  result = qword_1EA90E348;
  if (!qword_1EA90E348)
  {
    type metadata accessor for CKSecureCodingBox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E348);
  }

  return result;
}

id static CloudCoreEntryPoint.makeContainer<A>(sessionID:sessionConfiguration:anySessionAcquiredInfo:testDeviceReferenceProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for SessionID();
  v3 = sub_1883F70DC(v35);
  v32 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F7100();
  v33 = v8 - v7;
  v9 = type metadata accessor for AnySessionAcquiredInfo();
  v10 = sub_1883F70DC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v17 = v16 - v15;
  v18 = type metadata accessor for AnySessionConfiguration();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1883F7100();
  v20 = type metadata accessor for ContainerID();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1883F7100();
  v24 = v23 - v22;
  sub_1884B208C();
  dispatch thunk of SessionConfiguration.containerID.getter();
  v25 = CKContainerID.init(_:)(v24);
  dispatch thunk of SessionConfiguration.asAnySessionConfiguration.getter();
  (*(v12 + 16))(v17, a3, v9);
  v26 = objc_allocWithZone(type metadata accessor for CloudCoreContainerOptions());
  swift_unknownObjectRetain();
  sub_1884AB648();
  v28 = v27;
  (*(v32 + 16))(v33, a1, v35);
  v29 = objc_allocWithZone(type metadata accessor for CloudCoreContainer());
  v30 = sub_1884A6B24(v25, v33, v28);
  sub_1884B2154(&qword_1EA90C2D8, type metadata accessor for CloudCoreContainer);
  return v30;
}

unint64_t sub_1884B208C()
{
  result = qword_1EA90C8C0;
  if (!qword_1EA90C8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C8C0);
  }

  return result;
}

uint64_t CloudCoreEntryPoint.sessionAcquisitionManager.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CKSessionAcquisitionManager();
  inited = swift_initStaticObject();
  a1[3] = v2;
  result = sub_1884B2154(qword_1EA90C1E8, type metadata accessor for CKSessionAcquisitionManager);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t sub_1884B2154(unint64_t *a1, void (*a2)(uint64_t))
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

id CloudCoreEntryPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudCoreEntryPoint.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloudCoreEntryPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CKQueryOperation.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

id CKQueryOperation.recordMatchedBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA291C0;
    v7 = _Block_copy(v9);

    [v3 setRecordMatchedBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setRecordMatchedBlock_];
  }
}

id CKQueryOperation.queryResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_18845C9D8;
    v8[3] = &unk_1EFA29210;
    v6 = _Block_copy(v8);

    [v2 setQueryCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setQueryCompletionBlock_];
  }
}

void sub_1884B2578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKQueryOperation.desiredKeys.setter(v4);
}

void (*CKQueryOperation.desiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1884B25F0;
}

void sub_1884B25F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKQueryOperation.desiredKeys.setter(v5);
  }

  else
  {
    CKQueryOperation.desiredKeys.setter(*a1);
  }
}

uint64_t (*CKQueryOperation.recordMatchedBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 recordMatchedBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884B26E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKQueryOperation.recordMatchedBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2D14;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B2754(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2D08;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKQueryOperation.recordMatchedBlock.setter(v6, v5);
}

uint64_t (*CKQueryOperation.recordMatchedBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKQueryOperation.recordMatchedBlock.getter();
  a1[1] = v3;
  return sub_1884B282C;
}

uint64_t (*CKQueryOperation.queryResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 queryCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884B2C50;
  }

  return result;
}

uint64_t sub_1884B2908@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKQueryOperation.queryResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2CD4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B2978(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2C94;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKQueryOperation.queryResultBlock.setter(v6, v5);
}

void sub_1884B2A08(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0);
    return;
  }

  v7 = a2;
  a3(a2, 1);
}

uint64_t (*CKQueryOperation.queryResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKQueryOperation.queryResultBlock.getter();
  a1[1] = v3;
  return sub_1884B2B24;
}

uint64_t sub_1884B2B64(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884B2BF8(void *a1)
{
  v1 = [a1 desiredKeys];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884B2C50(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (a2)
  {
    a1 = 0;
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v4(a1, v6);
}

uint64_t sub_1884B2C94(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1884B2CD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

void CKFetchRecordsOperation.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

id CKFetchRecordsOperation.perRecordResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = a1;
    v5[4] = a2;
    sub_1883F71C0();
    v11[1] = 1107296256;
    v11[2] = sub_1884B3490;
    v11[3] = &unk_1EFA293A0;
    v6 = _Block_copy(v11);
    v7 = v2;
    v8 = sub_1883F7E8C();
    sub_1883F5CC0(v8);

    [v7 setPerRecordCompletionBlock_];
    _Block_release(v6);
    v9 = sub_1883F7E8C();
    return sub_1883F5BA0(v9);
  }

  else
  {

    return [v2 setPerRecordCompletionBlock_];
  }
}

id CKFetchRecordsOperation.fetchRecordsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884B2FD4;
    v9[3] = &unk_1EFA293F0;
    v6 = _Block_copy(v9);

    [v2 setFetchRecordsCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    v7 = sub_1883F7E8C();
    return sub_1883F5BA0(v7);
  }

  else
  {

    return [v2 setFetchRecordsCompletionBlock_];
  }
}

uint64_t sub_1884B2FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    sub_1884B3B58();
    sub_1883F7BC0();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = sub_1883F7E8C();
  v5(v7);
}

void sub_1884B30A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKFetchRecordsOperation.desiredKeys.setter(v4);
}

void (*CKFetchRecordsOperation.desiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1884B311C;
}

void sub_1884B311C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKFetchRecordsOperation.desiredKeys.setter(v5);
  }

  else
  {
    CKFetchRecordsOperation.desiredKeys.setter(*a1);
  }
}

uint64_t (*CKFetchRecordsOperation.perRecordResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_1884B3AFC;
  }

  return result;
}

uint64_t sub_1884B3210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordsOperation.perRecordResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2D14;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B3280(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2D08;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRecordsOperation.perRecordResultBlock.setter(v6, v5);
}

void sub_1884B3310(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(id, void *, uint64_t))
{
  if (a2)
  {
    if (a3)
    {
      v8 = a2;
      v9 = a3;
      a5(v8, a3, 1);

      v10 = a3;

LABEL_5:

      return;
    }

    if (a1)
    {
      v14 = a2;
      v12 = a1;
      a5(v14, a1, 0);

      v10 = v14;

      goto LABEL_5;
    }

    type metadata accessor for CKError(0);
    v13 = a2;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    a5(v13, v15, 1);
  }
}

void sub_1884B3490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t (*CKFetchRecordsOperation.perRecordResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordsOperation.perRecordResultBlock.getter();
  a1[1] = v3;
  return sub_1884B3580;
}

uint64_t (*CKFetchRecordsOperation.fetchRecordsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B3B44;
    *(v4 + 24) = v3;
    return sub_1884B3B4C;
  }

  return result;
}

uint64_t sub_1884B365C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordsOperation.fetchRecordsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B36CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRecordsOperation.fetchRecordsResultBlock.setter(v6, v5);
}

void sub_1884B375C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    sub_1884B3B58();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884B383C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  sub_1884B3B58();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t (*CKFetchRecordsOperation.fetchRecordsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordsOperation.fetchRecordsResultBlock.getter();
  a1[1] = v3;
  return sub_1884B3A28;
}

uint64_t sub_1884B3A68(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884B3AFC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (a3)
  {
    v8 = 0;
    v9 = a2;
  }

  else
  {
    v8 = a2;
    v9 = 0;
  }

  return v6(v8, a1, v9);
}

unint64_t sub_1884B3B58()
{
  result = qword_1EA90C7E0;
  if (!qword_1EA90C7E0)
  {
    sub_1883F4C5C(255, &qword_1EA90CA70, off_1E70BA618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C7E0);
  }

  return result;
}

void __swiftcall CKFetchRecordZoneChangesConfiguration.init(previousServerChangeToken:resultsLimit:desiredKeys:)(CKFetchRecordZoneChangesConfiguration *__return_ptr retstr, CKServerChangeToken_optional previousServerChangeToken, Swift::Int_optional resultsLimit, Swift::OpaquePointer_optional desiredKeys)
{
  value = resultsLimit.value;
  is_nil = previousServerChangeToken.is_nil;
  data = previousServerChangeToken.value._data;
  isa = previousServerChangeToken.value.super.isa;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v8;
  if (isa)
  {
    [v8 setPreviousServerChangeToken_];
  }

  if (!is_nil)
  {
    [v9 setResultsLimit_];
  }

  if (value)
  {
    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(value);
  }
}

void CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1, void *a2, void *a3, void *a4), void *a12, void (*a13)(uint64_t a1, void *a2, void *a3), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v23;
  a22 = v26;
  if (v24)
  {
    v27 = v25;
    v28 = v24;
    v29 = sub_1883FEAA8();
    [v29 v30];
    sub_1883F8708();
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    a13 = sub_18849539C;
    a14 = v31;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884953A4;
    a12 = &unk_1EFA29580;
    _Block_copy(&a9);
    sub_1883F899C();

    sub_1883F7A00(v32, sel_setRecordWasChangedBlock_);
    _Block_release(v22);
    sub_1883FDAEC();
    sub_1883FE68C();
  }

  else
  {
    sub_1883FEAA8();
    sub_1883FE68C();

    [v33 v34];
  }
}

void CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B4610;
    a12 = &unk_1EFA295A8;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordWithIDWasDeletedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

void CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5, void *a6), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v24;
  a22 = v27;
  if (v25)
  {
    v28 = v26;
    v29 = v25;
    [v22 setErrorReportingStyle_];
    sub_1883F8708();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    a13 = sub_1884B5B80;
    a14 = v30;
    sub_1883F7188();
    sub_1883FA158();
    a11 = v31;
    a12 = &unk_1EFA295F8;
    _Block_copy(&a9);
    sub_1883F899C();

    [v22 setRecordZoneFetchCompletionBlock_];
    _Block_release(v23);
    [v22 setCanDropItemResultsEarly_];
    sub_1883F5BA0(v29);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v32 v33];
  }
}

void CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(void *a1), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v23;
  a22 = v26;
  if (v24)
  {
    v27 = v25;
    v28 = v24;
    v29 = sub_1883FEAA8();
    [v29 v30];
    sub_1883F8708();
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    a13 = sub_1884B5B88;
    a14 = v31;
    sub_1883F7188();
    sub_1883F930C();
    a11 = v32;
    a12 = &unk_1EFA29648;
    _Block_copy(&a9);
    sub_1883F899C();

    sub_1883F7A00(v33, sel_setFetchRecordZoneChangesCompletionBlock_);
    _Block_release(v22);
    sub_1883FDAEC();
    sub_1883FE68C();
  }

  else
  {
    sub_1883FEAA8();
    sub_1883FE68C();

    [v34 v35];
  }
}

void CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void *), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B5E6C;
    a12 = &unk_1EFA29670;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setZoneAttributesChangedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t (*CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter())()
{
  result = [v0 recordChangedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5E64;
  }

  return result;
}

uint64_t sub_1884B4228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5E68;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void *), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B5E6C;
    a12 = &unk_1EFA296C0;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordChangedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v0 recordWithIDWasDeletedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5B90;
  }

  return result;
}

uint64_t sub_1884B44A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5DF0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B45A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x18CFD5010](a2, a3);
  (*(a4 + 16))(a4, a1, v6);
}

void sub_1884B4610(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a2;
  v4();
}

uint64_t CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter())()
{
  result = [v0 zoneAttributesChangedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5B98;
  }

  return result;
}

uint64_t sub_1884B478C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5D84;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 recordWasChangedBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884B49A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2D14;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t CKFetchRecordZoneChangesOperation.recordWasChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  result = [v0 recordZoneFetchCompletionBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5BAC;
  }

  return result;
}

uint64_t sub_1884B4B90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5D04;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1884B4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t *, void *, char *, uint64_t *))
{
  v12 = a1;
  v10[1] = a4;
  v11 = a2;
  v10[0] = a3;
  v9 = a5;
  v8 = a6;
  return a7(&v12, &v11, v10, &v9, &v8);
}

void CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883FA158();
    a11 = v28;
    a12 = &unk_1EFA297B0;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordZoneFetchCompletionBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

void sub_1884B4D70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (a6)
    {
LABEL_3:
      v13 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = v13;
  (*(a7 + 16))(a7, a1, a2, isa, a5 & 1);
}

uint64_t sub_1884B4E30(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a4)
  {

    v13 = a2;
    v14 = a3;
    v15 = v8;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {

    v18 = a2;
    v19 = a3;
    v17 = 0xF000000000000000;
  }

  v20 = a6;
  v12(a2, a3, v8, v17, a5, a6);

  sub_18841BA74(v8, v17);
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  result = [v0 recordZoneFetchCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B5E44;
    *(v4 + 24) = v3;
    return sub_1884B5BB4;
  }

  return result;
}

uint64_t sub_1884B5034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5CF4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1884B5184(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int16 a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a2;
  if ((a5 & 0x100) != 0)
  {
    a2 = 0;
    a3 = 0;
    a4 = 0xF000000000000000;
    v8 = 0;
  }

  else
  {
    v8 = a5 & 1;
    v7 = 0;
  }

  return a6(a1, a2, a3, a4, v8, v7);
}

void sub_1884B51D8(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5, void *a6, void (*a7)(void *, void *, uint64_t, unint64_t, uint64_t))
{
  v8 = a5;
  if (a6)
  {
    swift_getErrorValue();
    v14 = a6;
    if (!sub_1885164AC(v25[8]))
    {
      v20 = a6;
      a7(a1, a6, 0, 0, 256);

      v19 = a6;
      goto LABEL_7;
    }

    v26 = a6;
    v15 = a6;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    type metadata accessor for CKError(0);
    swift_dynamicCast();
    v16 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();

    if (v16)
    {
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_18841A9C8();
      v23 = a1;
      AnyHashable.init<A>(_:)();
      v17 = sub_18847E698(v25, v16);

      sub_1884889C4(v25);
      if (v17)
      {
        v18 = v17;
        a7(v23, v17, 0, 0, 256);

        v19 = v17;
LABEL_7:

        return;
      }
    }

    v8 = a5;
  }

  if (a2)
  {
    v21 = a2;
    sub_188424184(a3, a4);
    a7(a1, a2, a3, a4, v8 & 1);

    sub_18841BA74(a3, a4);
  }

  else
  {
    type metadata accessor for CKError(0);
    v26 = 1;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v25[0];
    a7(a1, v25[0], 0, 0, 256);
  }
}

uint64_t CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter())(uint64_t a1)
{
  result = [v0 fetchRecordZoneChangesCompletionBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_188412818;
  }

  return result;
}

uint64_t sub_1884B5568@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B5CA0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F930C();
    a11 = v28;
    a12 = &unk_1EFA29850;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setFetchRecordZoneChangesCompletionBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordZoneChangesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412CC8;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884B5808@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B5908(void *a1, void (*a2)(void *, uint64_t))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v4 = a1;
  if (sub_1885164AC(v6))
  {

LABEL_4:
    a2(0, 0);
    return;
  }

  v5 = a1;
  a2(a1, 1);
}

uint64_t CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884B5A44(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

void sub_1884B5AE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(v4);
}

void CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

uint64_t sub_1884B5BC8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return v3(a1);
}

uint64_t CKFetchRecordZoneChangesConfiguration.desiredKeys.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1883F7BCC();
}

void sub_1884B5C40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(v5);
  }

  else
  {
    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(*a1);
  }
}

uint64_t sub_1884B5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a5 & 0x1FF;
  v11 = a1;
  return v6(&v11, v9);
}

uint64_t sub_1884B5D04(void *a1, void *a2, void *a3, unsigned __int8 *a4, void *a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return v6(*a1, *a2, *a3, a3[1], *a4, *a5);
}

uint64_t sub_1884B5D4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1884B5D84(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1884B5DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[1] = a3;
  v8 = a1;
  v7[0] = a2;
  return v4(&v8, v7);
}

uint64_t sub_1884B5DF0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, a2[1]);
}

void CKModifyRecordsOperation.perRecordSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_18849539C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884953A4;
    v11[3] = &unk_1EFA29B70;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordsOperation.perRecordDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884958AC;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884958B4;
    v11[3] = &unk_1EFA29BC0;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordsOperation.modifyRecordsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9DB4();
    v11[2] = v7;
    v11[3] = &unk_1EFA29C10;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifyRecordsCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t sub_1884B62BC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v7 = a1;
  v5 = a2;
  v6 = a3 & 1;
  return a4(&v7, &v5);
}

uint64_t (*CKModifyRecordsOperation.perRecordSaveBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884B639C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordsOperation.perRecordSaveBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AA8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B640C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordsOperation.perRecordSaveBlock.setter(v6, v5);
}

uint64_t CKModifyRecordsOperation.perRecordSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.perRecordSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordsOperation.perRecordDeleteBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t sub_1884B65B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordsOperation.perRecordDeleteBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AEC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B6624(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495AE8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordsOperation.perRecordDeleteBlock.setter(v6, v5);
}

uint64_t CKModifyRecordsOperation.perRecordDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.perRecordDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifyRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884B6F58;
  }

  return result;
}

uint64_t sub_1884B67A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B7088;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B6814(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B7080;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter(v6, v5);
}

uint64_t sub_1884B68A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

void CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    sub_1883F7188();
    sub_1883F9DB4();
    v7[2] = v6;
    v7[3] = &unk_1EFA29D00;
    _Block_copy(v7);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifyRecordsCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1);
  sub_1883FE68C();
}

void sub_1884B698C(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884B6A70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordsOperation.modifyRecordsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifyRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B70C8;
    *(v4 + 24) = v3;
    return sub_1884B6F60;
  }

  return result;
}

uint64_t sub_1884B6C68@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordsOperation.modifyRecordsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884B6CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter(v6, v5);
}

uint64_t sub_1884B6D68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

void sub_1884B6E90(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (!a3)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a3;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a4(0, 0);
    return;
  }

  v7 = a3;
  a4(a3, 1);
}

uint64_t CKModifyRecordsOperation.modifyRecordsResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.modifyRecordsResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884B6FEC(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884B7088(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

id CKAcceptSharesOperation.perShareResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA29EE0;
    v7 = _Block_copy(v9);

    [v3 setPerShareCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerShareCompletionBlock_];
  }
}

id CKAcceptSharesOperation.acceptSharesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA29F30;
    v6 = _Block_copy(v8);

    [v2 setAcceptSharesCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setAcceptSharesCompletionBlock_];
  }
}

uint64_t (*CKAcceptSharesOperation.perShareResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884B73AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKAcceptSharesOperation.perShareResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AAC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B741C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A60;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKAcceptSharesOperation.perShareResultBlock.setter(v6, v5);
}

void sub_1884B74AC(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, void *, uint64_t))
{
  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v7 = v10;

LABEL_4:

    return;
  }

  if (a3)
  {
    v9 = a3;
    a4(a1, a3, 1);
    v7 = a3;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

uint64_t (*CKAcceptSharesOperation.perShareResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKAcceptSharesOperation.perShareResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7644;
}

uint64_t (*CKAcceptSharesOperation.acceptSharesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 acceptSharesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884B7720@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKAcceptSharesOperation.acceptSharesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B7790(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKAcceptSharesOperation.acceptSharesResultBlock.setter(v6, v5);
}

uint64_t (*CKAcceptSharesOperation.acceptSharesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKAcceptSharesOperation.acceptSharesResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7868;
}

uint64_t sub_1884B78A8(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

id CKDeclineSharesOperation.perShareResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884958B4;
    v9[3] = &unk_1EFA2A0C0;
    v7 = _Block_copy(v9);

    [v3 setPerShareCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerShareCompletionBlock_];
  }
}

id CKDeclineSharesOperation.declineSharesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A110;
    v6 = _Block_copy(v8);

    [v2 setDeclineSharesCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setDeclineSharesCompletionBlock_];
  }
}

uint64_t (*CKDeclineSharesOperation.perShareResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t sub_1884B7C18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKDeclineSharesOperation.perShareResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AAC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B7C88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A60;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKDeclineSharesOperation.perShareResultBlock.setter(v6, v5);
}

void sub_1884B7D18(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0, 0);
    return;
  }

  v7 = a2;
  a3(a1, a2, 1);
}

uint64_t (*CKDeclineSharesOperation.perShareResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDeclineSharesOperation.perShareResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7E3C;
}

uint64_t (*CKDeclineSharesOperation.declineSharesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 declineSharesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884B7F18@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKDeclineSharesOperation.declineSharesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B7F88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKDeclineSharesOperation.declineSharesResultBlock.setter(v6, v5);
}

uint64_t (*CKDeclineSharesOperation.declineSharesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDeclineSharesOperation.declineSharesResultBlock.getter();
  a1[1] = v3;
  return sub_1884B8060;
}

uint64_t sub_1884B80A0(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

id CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884B883C;
    v9[3] = &unk_1EFA2A2A0;
    v7 = _Block_copy(v9);

    [v3 setPerShareMetadataBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerShareMetadataBlock_];
  }
}

id CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A2F0;
    v6 = _Block_copy(v8);

    [v2 setFetchShareMetadataCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchShareMetadataCompletionBlock_];
  }
}

void sub_1884B837C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(v4);
}

void CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setRootRecordDesiredKeys_];
}

void (*CKFetchShareMetadataOperation.rootRecordDesiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B8CAC(v1);
  return sub_1884B8468;
}

void sub_1884B8468(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(v5);
  }

  else
  {
    CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(*a1);
  }
}

uint64_t (*CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareMetadataBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B8D04;
    *(v4 + 24) = v3;
    return sub_1884B8D0C;
  }

  return result;
}

uint64_t sub_1884B855C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2)@<X8>)
{
  v3 = *a1;
  result = CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B8D90;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B85CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B8D50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(v6, v5);
}

void sub_1884B865C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSURL *a4@<X8>)
{
  URL._bridgeToObjectiveC()(a4);
  v8 = v7;
  if (a2)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a3 + 16))(a3, v8, a1);
}

void sub_1884B86EC(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, id, uint64_t))
{
  if (a3)
  {
    v7 = a3;
    a4(a1, a3, 1);
    v8 = a3;

LABEL_4:

    return;
  }

  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v8 = v10;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

uint64_t sub_1884B883C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = a3;
  v15 = a4;
  v13(v11, a3, a4);

  return (*(v8 + 8))(v11, v7);
}

uint64_t (*CKFetchShareMetadataOperation.perShareMetadataResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter();
  a1[1] = v3;
  return sub_1884B89B4;
}

uint64_t (*CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchShareMetadataCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884B8A90@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B8B00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(v6, v5);
}

uint64_t (*CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter();
  a1[1] = v3;
  return sub_1884B8BD8;
}

uint64_t sub_1884B8C18(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884B8CAC(void *a1)
{
  v1 = [a1 rootRecordDesiredKeys];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884B8D0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a3)
  {
    a2 = 0;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, v7);
}

uint64_t sub_1884B8D50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a2;
  v8 = a3 & 1;
  return v4(a1, &v7);
}

uint64_t sub_1884B8D90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, *(a2 + 8));
}

id CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A480;
    v6 = _Block_copy(v8);

    [v2 setShareRequestAccessCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setShareRequestAccessCompletionBlock_];
  }
}

void (*CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareAccessRequestCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B9734;
    *(v4 + 24) = v3;
    return sub_1884B973C;
  }

  return result;
}

uint64_t sub_1884B8F8C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2)@<X8>)
{
  v3 = *a1;
  result = CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B8D90;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B8FFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B8D50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKShareRequestAccessOperation.perShareAccessRequestResultBlock.setter(v6, v5);
}

id CKShareRequestAccessOperation.perShareAccessRequestResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884B938C;
    v9[3] = &unk_1EFA2A520;
    v7 = _Block_copy(v9);

    [v3 setPerShareAccessRequestCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerShareAccessRequestCompletionBlock_];
  }
}

void sub_1884B91A0(uint64_t a1@<X1>, uint64_t a2@<X2>, NSURL *a3@<X8>)
{
  URL._bridgeToObjectiveC()(a3);
  v6 = v5;
  if (a1)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a2 + 16))(a2, v6);
}

void sub_1884B9228(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, id))
{
  if (a3)
  {
    v6 = _convertErrorToNSError(_:)();
    a4(a1, v6);
  }

  else
  {
    a4(a1, 0);
  }
}

void sub_1884B92B8(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0, 0);
    return;
  }

  v7 = a2;
  a3(a1, a2, 1);
}

uint64_t sub_1884B938C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = a3;
  v11(v9, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t (*CKShareRequestAccessOperation.perShareAccessRequestResultBlock.modify(void (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter();
  a1[1] = v3;
  return sub_1884B94E8;
}

void (*CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 shareRequestAccessCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B9750;
  }

  return result;
}

uint64_t sub_1884B95C4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B9634(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(v6, v5);
}

void sub_1884B96C4(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
    a3();
  }

  else
  {
    (a3)(0);
  }
}

uint64_t (*CKShareRequestAccessOperation.shareAccessRequestResultBlock.modify(void (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter();
  a1[1] = v3;
  return sub_1884B97A4;
}

uint64_t sub_1884B97E4(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

void __swiftcall CKFetchSubscriptionsOperation.init(subscriptionIDs:)(CKFetchSubscriptionsOperation *__return_ptr retstr, Swift::OpaquePointer subscriptionIDs)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithSubscriptionIDs_];
}

id CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_1884BA014;
    v9[5] = v7;
    sub_1883F7188();
    v9[1] = 1107296256;
    v9[2] = sub_1884BA01C;
    v9[3] = &unk_1EFA2A660;
    _Block_copy(v9);
    sub_1883F899C();

    [v4 setPerSubscriptionCompletionBlock_];
    _Block_release(v3);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerSubscriptionCompletionBlock_];
  }
}

id CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_188479A50;
    v9[5] = v6;
    sub_1883F7188();
    sub_1883F9DCC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2A6B0;
    _Block_copy(v9);
    sub_1883F899C();

    [v2 setFetchSubscriptionCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchSubscriptionCompletionBlock_];
  }
}

void sub_1884B9B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKFetchSubscriptionsOperation.subscriptionIDs.setter(v4);
}

void CKFetchSubscriptionsOperation.subscriptionIDs.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSubscriptionIDs_];
}

uint64_t CKFetchSubscriptionsOperation.subscriptionIDs.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884BA964(v1);
  return sub_1883F7BCC();
}

void sub_1884B9BFC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKFetchSubscriptionsOperation.subscriptionIDs.setter(v5);
  }

  else
  {
    CKFetchSubscriptionsOperation.subscriptionIDs.setter(*a1);
  }
}

uint64_t (*CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BA9BC;
    *(v4 + 24) = v3;
    return sub_1884BA9C4;
  }

  return result;
}

uint64_t sub_1884B9CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BAA5C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884B9D5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BAA50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(v6, v5);
}

void sub_1884B9DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x18CFD5010]();
  if (a4)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t sub_1884B9E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a3;
  if (a4)
  {
    a3 = 0;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return a5(a1, a2, a3, v6);
}

void sub_1884B9EBC(uint64_t a1, uint64_t a2, void *a3, id a4, void (*a5)(uint64_t, uint64_t, id, uint64_t))
{
  if (a4)
  {
    v9 = a4;
    a5(a1, a2, a4, 1);
    v10 = a4;

LABEL_4:

    return;
  }

  if (a3)
  {
    v12 = a3;
    a5(a1, a2, a3, 0);
    v10 = v12;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a5(a1, a2, v13, 1);
}

void sub_1884BA01C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v12 = a3;
  v11 = a4;
  v7(v8, v10, a3, a4);
}

uint64_t CKFetchSubscriptionsOperation.perSubscriptionResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, char a4))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

void (*CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter())(objc_class *a1, uint64_t a2)
{
  result = [v0 fetchSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BA9D0;
  }

  return result;
}

uint64_t sub_1884BA1C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BAA20;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1884BA234(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BA9E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.setter(v6, v5);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F9DCC();
    v8[2] = v6;
    v8[3] = &unk_1EFA2A750;
    _Block_copy(v8);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setFetchSubscriptionCompletionBlock_];
  _Block_release(v3);
  return sub_1883F5BA0(a1);
}

void sub_1884BA36C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1884BAA64();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884BA418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1884BAA64();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.modify(void (**a1)(objc_class *a1, uint64_t a2))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BAAB0;
    *(v4 + 24) = v3;
    return sub_1884BA9D8;
  }

  return result;
}

uint64_t sub_1884BA5D8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BA648(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(v6, v5);
}

uint64_t sub_1884BA6D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1884BAA64();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t sub_1884BA8D0(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884BA964(void *a1)
{
  v1 = [a1 subscriptionIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884BA9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1884BAA20(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

unint64_t sub_1884BAA64()
{
  result = qword_1EA90CA90;
  if (!qword_1EA90CA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA90);
  }

  return result;
}

void CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884BA014;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884BA01C;
    v11[3] = &unk_1EFA2A8E0;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerSubscriptionSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884BB54C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884BB554;
    v11[3] = &unk_1EFA2A930;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerSubscriptionDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9DE4();
    v11[2] = v7;
    v11[3] = &unk_1EFA2A980;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifySubscriptionsCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t sub_1884BAEE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t *))
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = a3;
  v7 = a4 & 1;
  return a5(v8, &v6);
}

void sub_1884BAF38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(v4);
}

void CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSubscriptionIDsToDelete_];
}

uint64_t CKModifySubscriptionsOperation.subscriptionIDsToDelete.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884BC04C(v1);
  return sub_1883F7BCC();
}

void sub_1884BB020(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(v5);
  }

  else
  {
    CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(*a1);
  }
}

uint64_t (*CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BA9BC;
    *(v4 + 24) = v3;
    return sub_1884BA9C4;
  }

  return result;
}

uint64_t sub_1884BB110@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BC140;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BB180(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BC0F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(v6, v5);
}

uint64_t CKModifySubscriptionsOperation.perSubscriptionSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BC0A4;
    *(v4 + 24) = v3;
    return sub_1884BC0AC;
  }

  return result;
}

uint64_t sub_1884BB328@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BC190;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}