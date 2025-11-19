uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)()
{
  if (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)()
{
  if (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of static Comparable.> infix(_:_:)() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a5;
  v35 = type metadata accessor for Optional();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v31 - v9;
  v33 = *(a4 - 8);
  __chkstk_darwin(v11);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Result();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  if ((*(v13 + 48))(a1, 1, a3, v19) != 1)
  {
    (*(v8 + 8))(v34, v35);
    v27 = *(v13 + 32);
    v27(v16, a1, a3);
    v27(v21, v16, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v26 = v36;
    (*(v18 + 32))(v36, v21, v17);
    v25 = 0;
    return (*(v18 + 56))(v26, v25, 1, v17);
  }

  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v35;
  (*(v8 + 32))(v10, v34, v35);
  v24 = v33;
  if ((*(v33 + 48))(v10, 1, a4) != 1)
  {
    v28 = *(v24 + 32);
    v29 = v32;
    v28(v32, v10, a4);
    v28(v21, v29, a4);
    goto LABEL_6;
  }

  (*(v8 + 8))(v10, v23);
  v25 = 1;
  v26 = v36;
  return (*(v18 + 56))(v26, v25, 1, v17);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  if (dispatch thunk of Collection.count.getter() > a1 && __OFSUB__(dispatch thunk of Collection.count.getter(), a1))
  {
    __break(1u);
  }

  return Sequence.dropLast(_:)();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(Collection.asyncForEach<A>(operation:), 0, 0);
}

uint64_t Collection.asyncForEach<A>(operation:)()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = Collection.asyncForEach<A>(operation:);
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 8, 0, 0, &async function pointer to partial apply for closure #1 in Collection.asyncForEach<A>(operation:), v1, v5);
}

{

  return _swift_task_switch(MetricsReportingController.flushUnreportedEvents(), 0, 0);
}

uint64_t closure #1 in Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3);
  v8[14] = swift_task_alloc();
  type metadata accessor for Optional();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collection.asyncForEach<A>(operation:), 0, 0);
}

uint64_t closure #1 in Collection.asyncForEach<A>(operation:)()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = type metadata accessor for TaskPriority();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = type metadata accessor for TaskGroup();

    _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v4, &async function pointer to partial apply for closure #1 in closure #1 in Collection.asyncForEach<A>(operation:), v12, v13);
    _sScPSgWOh_1(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t partial apply for closure #1 in Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Collection.asyncForEach<A>(operation:)(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t closure #1 in closure #1 in Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v11(a1, a6);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  _sScPSgWOc_2(a1, v22 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    _sScPSgWOh_1(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = type metadata accessor for Optional();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(Collection.asyncMap<A>(transform:), 0, 0);
}

void Collection.asyncMap<A>(transform:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = dispatch thunk of Collection.count.getter();
  v9 = specialized Array.init(repeating:count:)(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = Collection.asyncMap<A>(transform:);

  JUMPOUT(0x100414C0CLL);
}

uint64_t Collection.asyncMap<A>(transform:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = Collection.asyncMap<A>(transform:);
  }

  else
  {

    v2 = Collection.asyncMap<A>(transform:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v4 = Sequence.compactMap<A>(_:)();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = type metadata accessor for Optional();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  v8[21] = swift_task_alloc();
  v8[22] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd_2);
  v12 = type metadata accessor for ThrowingTaskGroup.Iterator();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = type metadata accessor for EnumeratedSequence();
  v8[32] = swift_task_alloc();
  v14 = type metadata accessor for EnumeratedSequence.Iterator();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collection.asyncMap<A>(transform:), 0, 0);
}

uint64_t closure #1 in Collection.asyncMap<A>(transform:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  Sequence.enumerated()();
  EnumeratedSequence.makeIterator()();
  v25 = v3;
  v26 = v2;
  v27 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    EnumeratedSequence.Iterator.next()();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v27 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v31 = *(v0 + 80);
    v12 = *(v0 + 48);
    v30 = *(v0 + 40);
    v29 = *v8;
    v13 = *(v26 + 48);
    v14 = type metadata accessor for TaskPriority();
    v28 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v25 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v25 + 80) + 80) & ~*(v25 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v28;
    *(v17 + 48) = v31;
    *(v17 + 56) = v29;
    *(v17 + 64) = v30;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    type metadata accessor for ThrowingTaskGroup();

    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v9, &async function pointer to partial apply for closure #1 in closure #1 in Collection.asyncMap<A>(transform:), v17);
    _sScPSgWOh_1(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  ThrowingTaskGroup.makeAsyncIterator()();
  v18 = type metadata accessor for Array();
  *(v0 + 288) = v18;
  Array._makeMutableAndUnique()();
  v19.location = v18;
  CFRange.init(_:)(v19);
  Array._makeMutableAndUnique()();
  v20.location = v18;
  CFRange.init(_:)(v20);
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  *v21 = v0;
  v21[1] = closure #1 in Collection.asyncMap<A>(transform:);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, 0, 0, v22, v0 + 16);
}

{

  if (v0)
  {
    v1 = closure #1 in Collection.asyncMap<A>(transform:);
  }

  else
  {
    v1 = closure #1 in Collection.asyncMap<A>(transform:);
  }

  return _swift_task_switch(v1, 0, 0);
}

{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[36];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[7];
    v11 = *v1;
    v12 = *(v2 + 48);
    v13 = *(v9 - 8);
    (*(v13 + 32))(v6, v1 + v12, v9);
    (*(v13 + 56))(v6, 0, 1, v9);
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(v11);
    (*(v7 + 40))(*v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
    v14.location = v5;
    CFRange.init(_:)(v14);
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = closure #1 in Collection.asyncMap<A>(transform:);
    v16 = v0[23];
    v17 = v0[21];

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v16, v0 + 2);
  }
}

{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(closure #1 in closure #1 in Collection.asyncMap<A>(transform:), 0, 0);
}

uint64_t closure #1 in closure #1 in Collection.asyncMap<A>(transform:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in Collection.asyncMap<A>(transform:);
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  _sScPSgWOc_2(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _sScPSgWOh_1(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  Sequence.first(where:)();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v38 = *(a3 - 8);
  __chkstk_darwin(a1);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v31 - v6;
  v35 = v7;
  v8 = type metadata accessor for DisplayUnit();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = __chkstk_darwin(TupleTypeMetadata2);
  v19 = &v31 - v18;
  v21 = *(v20 + 48);
  v34 = v9;
  v22 = *(v9 + 16);
  v22(&v31 - v18, v36, v8, v17);
  (v22)(&v19[v21], v37, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v22)(v14, v19, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v38;
      v29 = v32;
      (*(v38 + 32))(v32, &v19[v21], a3);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v28 + 8);
      v26(v29, a3);
      v27 = v14;
      goto LABEL_6;
    }

LABEL_8:
    (*(v38 + 8))(v14, a3);
    v25 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  (v22)(v11, v19, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = v11;
    goto LABEL_8;
  }

  v23 = v38;
  v24 = v33;
  (*(v38 + 32))(v33, &v19[v21], a3);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v23 + 8);
  v26(v24, a3);
  v27 = v11;
LABEL_6:
  v26(v27, a3);
  v16 = v34;
LABEL_9:
  (*(v16 + 8))(v19, v8);
  return v25 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v7, v8);
  ClosedRange<>.normalize(_:)(v6, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Array.extract(_:)()
{

  swift_getWitnessTable();
  result = _ArrayProtocol.filter(_:)();
  if (!v0)
  {
    v2 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeAll(where:)();
    return v2;
  }

  return result;
}

uint64_t Array.extractFirst(where:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (!v2)
  {
    if (v6)
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
    }

    else
    {
      Array.remove(at:)();
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 0, 1);
    }
  }

  return result;
}

uint64_t Array.removingDuplicates<A>(with:)()
{
  Set.init()();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v0 = _ArrayProtocol.filter(_:)();

  return v0;
}

uint64_t closure #1 in Array.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v8 = Set.insert(_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin(a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = Set.init()();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = Sequence.filter(_:)();

  return v12;
}

uint64_t closure #1 in Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v8 = Set.insert(_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t closure #1 in Sequence.sorted<A>(by:comparator:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = a3(v12, v9);
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(partial apply for implicit closure #2 in implicit closure #1 in Sequence<>.excluding(_:), v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v7 = Set.init<A>(_:)();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(partial apply for implicit closure #2 in implicit closure #1 in Sequence<>.excluding(_:), v8, a2, a3);

  return v9;
}

uint64_t implicit closure #2 in implicit closure #1 in Sequence<>.excluding(_:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence<>.contains(_:)() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin(a1);
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return Sequence.filter(_:)();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(partial apply for closure #1 in Sequence<>.exclude(_:), v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(partial apply for closure #1 in Sequence<>.exclude(_:), v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(partial apply for closure #1 in Sequence<>.exclude(_:), v4, a2, a3);
}

uint64_t Sequence.firstNonNil<A>(_:)()
{
  v0 = type metadata accessor for LazySequence();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  Sequence.lazy.getter();
  swift_getWitnessTable();
  v4 = Sequence.compactMap<A>(_:)();
  (*(v1 + 8))(v3, v0);
  v6 = v4;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

uint64_t Sequence.firstNonNilWithOriginal<A>(_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)();
}

uint64_t closure #1 in Sequence.firstNonNilWithOriginal<A>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25[0] = a5;
  v25[1] = a3;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - v12;
  v14 = *(a4 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v16);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v18, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v21((a6 + v24), v18, a4);
    return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
  }
}

void partial apply for closure #1 in Collection.asyncMap<A>(transform:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  JUMPOUT(0x100413C04);
}

uint64_t partial apply for closure #1 in Collection<>.first(approximatelyMatching:)()
{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1;
}

{
  return partial apply for closure #1 in Collection<>.firstIndex(approximatelyMatching:)() & 1;
}

uint64_t partial apply for closure #1 in Sequence<>.exclude(_:)()
{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for DisplayUnit()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayUnit(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for DisplayUnit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1004171F0()
{

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in Sequence<>.excluding(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return Set.contains(_:)(a1, v3, AssociatedTypeWitness, v4);
}

uint64_t sub_10041729C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in Collection.asyncMap<A>(transform:)()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  JUMPOUT(0x1004147ECLL);
}

uint64_t sub_1004174E0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Collection.asyncForEach<A>(operation:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in Collection.asyncForEach<A>(operation:)(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_10041770C()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t Text.withChevron<A>(_:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:a1];

  if (v13)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    v15._countAndFlagsBits = 41154;
    v15._object = 0xA200000000000000;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    v17 = [v13 imageWithRenderingMode:2];
    Image.init(uiImage:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    LocalizedStringKey.init(stringInterpolation:)();
    v19 = Text.init(_:tableName:bundle:comment:)();
    v21 = v20;
    v23 = v22;
    v24 = Text.foregroundStyle<A>(_:)();
    v26 = v25;
    v28 = v27;
    outlined consume of Text.Storage(v19, v21, v23 & 1);

    v29 = static Text.+ infix(_:_:)();
    a3 = v30;
    v32 = v31;
    a5 = v33;

    outlined consume of Text.Storage(v24, v26, v28 & 1);

    *a6 = v29;
  }

  else
  {
    *a6 = a2;
    v32 = a4;
    outlined copy of Text.Storage(a2, a3, a4 & 1);
  }

  *(a6 + 8) = a3;
  *(a6 + 16) = v32 & 1;
  *(a6 + 24) = a5;
  return result;
}

uint64_t Text.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2)
{
  v4 = __chkstk_darwin(a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v4);
  if (swift_dynamicCast())
  {
    if (a2)
    {
      v8 = v10[7];
    }

    else
    {
      v8 = static HierarchicalShapeStyle.tertiary.getter();
    }

    v10[3] = v8;
  }

  return Text.foregroundStyle<A>(_:)();
}

uint64_t View.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlayableForegroundStyle();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  (*(v8 + 32))(v15, v10, a4);
  v15[*(v11 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t PlayableForegroundStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = *(a2 + 16);
  v59[2] = *(a2 + 24);
  v72 = type metadata accessor for _ForegroundStyleModifier();
  v8 = type metadata accessor for ModifiedContent();
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd_0);
  v12 = v6;
  v13 = type metadata accessor for ModifiedContent();
  v64 = *(v13 - 8);
  __chkstk_darwin(v13);
  v61 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  __chkstk_darwin(v18);
  v60 = v59 - v19;
  v20 = *(v7 - 8);
  __chkstk_darwin(v21);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v24;
  v25 = type metadata accessor for _ConditionalContent();
  v69 = *(v25 - 8);
  v70 = v25;
  v26 = __chkstk_darwin(v25);
  v28 = v59 - v27;
  v29 = v4;
  (*(v20 + 16))(v23, v4, v7, v26);
  v30 = swift_dynamicCast();
  v66 = v12;
  if (v30)
  {
    v31 = v68;
    v65 = v28;
    v32 = *(v29 + *(a2 + 36));
    v59[1] = v8;
    if (v32)
    {
      v33 = v87;
    }

    else
    {
      v33 = static HierarchicalShapeStyle.quaternary.getter();
    }

    v87 = v33;
    WitnessTable = swift_getWitnessTable();
    View.foregroundStyle<A>(_:)();
    v44 = lazy protocol witness table accessor for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>();
    v75 = WitnessTable;
    v76 = v44;
    v67 = swift_getWitnessTable();
    v45 = v64;
    v46 = *(v64 + 16);
    v47 = v60;
    v46(v60, v17, v31);
    v48 = *(v45 + 8);
    v48(v17, v31);
    v49 = v61;
    v46(v61, v47, v31);
    v50 = swift_getWitnessTable();
    v73 = WitnessTable;
    v74 = v50;
    swift_getWitnessTable();
    v28 = v65;
    _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_1(v49, v31);
    v48(v49, v31);
    v48(v47, v31);
  }

  else
  {
    v34 = swift_getWitnessTable();
    v35 = v62;
    View.foregroundStyle<A>(_:)();
    v36 = swift_getWitnessTable();
    v85 = v34;
    v86 = v36;
    v67 = swift_getWitnessTable();
    v37 = v65;
    v38 = *(v65 + 2);
    v39 = v63;
    v38(v63, v35, v8);
    v40 = *(v37 + 1);
    v40(v35, v8);
    v38(v35, v39, v8);
    v41 = lazy protocol witness table accessor for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>();
    v83 = v34;
    v84 = v41;
    v42 = v68;
    swift_getWitnessTable();
    _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_1(v35, v42, v8);
    v40(v35, v8);
    v40(v39, v8);
  }

  v51 = swift_getWitnessTable();
  v52 = lazy protocol witness table accessor for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>();
  v81 = v51;
  v82 = v52;
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v79 = v51;
  v80 = v54;
  v55 = swift_getWitnessTable();
  v77 = v53;
  v78 = v55;
  v56 = v70;
  swift_getWitnessTable();
  v57 = v69;
  (*(v69 + 16))(v71, v28, v56);
  return (*(v57 + 8))(v28, v56);
}

uint64_t _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_1(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t _UIHostingView.init(content:)(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return dispatch thunk of _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_100418808()
{
  type metadata accessor for PlayableForegroundStyle();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for PlayableForegroundStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayableForegroundStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for PlayableForegroundStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>()
{
  result = _s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGACyxGAA04ViewE0AAWL_0;
  if (!_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGACyxGAA04ViewE0AAWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGACyxGAA04ViewE0AAWL_0);
  }

  return result;
}

uint64_t sub_100418D5C()
{
  type metadata accessor for PlayableForegroundStyle();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd_0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ForegroundStyleModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id TextKitManager.container.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TextKitManager.container.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t TextKitManager.fragments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TextKitManager.__allocating_init(text:size:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  TextKitManager.init(text:size:)(a1, a2);
  return v4;
}

uint64_t TextKitManager.init(text:size:)(void *a1, double a2)
{
  v2[5] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(NSTextLayoutManager) init];
  [v5 setUsesFontLeading:0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:isa forKey:v7];

  v2[2] = v5;
  v8 = objc_allocWithZone(NSTextContentStorage);
  v9 = v5;
  v10 = [v8 init];
  [v10 setAttributedString:a1];
  [v10 addTextLayoutManager:v9];
  v2[3] = v10;
  v11 = objc_allocWithZone(NSTextContainer);
  v12 = v10;
  v13 = [v11 initWithSize:{a2, 0.0}];
  [v13 setLineFragmentPadding:0.0];
  v14 = v13;
  [v9 setTextContainer:v14];
  v2[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in TextKitManager.init(text:size:);
  *(v15 + 24) = v2;
  v19[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  v19[3] = &block_descriptor_76;
  v16 = _Block_copy(v19);

  v17 = [v9 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t closure #1 in TextKitManager.init(text:size:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

Swift::Void __swiftcall TextKitManager.update(with:)(NSAttributedString with)
{
  [*(v1 + 24) setAttributedString:with.super.isa];
  v2 = *(v1 + 16);
  v3 = [v2 documentRange];
  [v2 invalidateLayoutForRange:v3];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in TextKitManager.invalidateLayout();
  *(v4 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_7_1;
  v5 = _Block_copy(aBlock);

  v6 = [v2 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v5];
  swift_unknownObjectRelease();
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t TextKitManager.update(with:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  [v3 size];
  [v3 setSize:a1];

  v4 = *(v1 + 16);
  v5 = [v4 documentRange];
  [v4 invalidateLayoutForRange:v5];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in TextKitManager.init(text:size:);
  *(v6 + 24) = v1;
  v10[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  v10[3] = &block_descriptor_15_0;
  v7 = _Block_copy(v10);

  v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id *TextKitManager.linesWithFrames()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v45 = v1 & 0xC000000000000001;
  v42 = v1 + 32;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v44 = v2;
  do
  {
    if (v45)
    {
      v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v1 = *(v42 + 8 * v3);
    }

    v5 = v1;
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (v6)
    {
      goto LABEL_33;
    }

    v46 = v7;
    v8 = [v1 textLineFragments];
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTextLineFragment);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v1;
      if (v1)
      {
LABEL_12:
        if (v10 < 1)
        {
          goto LABEL_34;
        }

        for (i = 0; v10 != i; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 typographicBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v13 boundsWithType:2 options:0];
          v23 = v22;
          v47.origin.x = v15;
          v47.origin.y = v17;
          v47.size.width = v19;
          v47.size.height = v21;
          Height = CGRectGetHeight(v47);
          [v5 layoutFragmentFrame];
          v26 = v25;
          [v5 layoutFragmentFrame];
          v28 = v27;
          v29 = [v13 characterRange];
          v31 = v30;
          v32 = [v5 rangeInElement];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 range];

            v6 = __OFADD__(v29, v34);
            v29 = &v34[v29];
            if (v6)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v40 = v1;
              v2 = _CocoaArrayWrapper.endIndex.getter();
              v1 = v40;
              if (!v2)
              {
                return _swiftEmptyArrayStorage;
              }

              goto LABEL_3;
            }
          }

          else
          {
          }

          v35 = v15 + v26;
          v36 = v17 + v28 - (v23 - Height);
          v48.origin.x = v35;
          v48.origin.y = v36;
          v48.size.width = v19;
          v48.size.height = v23;
          if (CGRectGetWidth(v48) <= 0.0)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
            }

            v38 = v4[2];
            v37 = v4[3];
            if (v38 >= v37 >> 1)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v4);
            }

            v4[2] = (v38 + 1);
            v39 = &v4[7 * v38];
            v39[4] = v13;
            *(v39 + 5) = v35;
            *(v39 + 6) = v36;
            *(v39 + 7) = v19;
            *(v39 + 8) = v23;
            v39[9] = v29;
            v39[10] = v31;
          }
        }
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v3 = v46;
  }

  while (v46 != v44);

  return v4;
}

uint64_t TextKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id NSTextLayoutFragment.View.FragmentLayer.init(fragment:)(void *a1)
{
  *&v1[OBJC_IVAR____TtCCE14MusicUtilitiesCSo20NSTextLayoutFragment4View13FragmentLayer_fragment] = a1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for NSTextLayoutFragment.View.FragmentLayer();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, "init");
  [v3 renderingSurfaceBounds];
  [v4 setBounds:?];
  [v4 bounds];
  v6 = -v5;
  [v4 bounds];
  v8 = v6 / v7;
  [v4 bounds];
  v10 = -v9;
  [v4 bounds];
  [v4 setAnchorPoint:{v8, v10 / v11}];
  [v3 layoutFragmentFrame];
  [v4 setPosition:?];
  v12 = [objc_opt_self() currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  [v4 setContentsScale:v14];
  [v4 setNeedsDisplay];

  return v4;
}

uint64_t NSTextLayoutFragment.View.__allocating_init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  specialized NSTextLayoutFragment.View.init(fragments:colorOverride:)(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  specialized NSTextLayoutFragment.View.init(fragments:colorOverride:)(a1, a2);
  v4 = v3;

  return v4;
}

id NSTextLineFragment.View.__allocating_init(line:size:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v9 setOpaque:{0, v11.receiver, v11.super_class}];

  return v9;
}

id NSTextLineFragment.View.init(line:size:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NSTextLineFragment.View();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v8 setOpaque:{0, v10.receiver, v10.super_class}];

  return v8;
}

void NSTextLineFragment.View.draw(_:)()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    [*(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line) drawAtPoint:0.0 inContext:0.0];
  }
}

id NSTextLayoutFragment.View.FragmentLayer.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCE14MusicUtilitiesCSo20NSTextLayoutFragment4View_fragments] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for NSTextLayoutFragment.View();

  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (a2)
  {
    v6 = kCAFilterColorMonochrome;
    v7 = objc_allocWithZone(CAFilter);
    v8 = a2;
    v9 = [v7 initWithType:{v6, v25.receiver, v25.super_class}];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setValue:isa forKey:kCAFilterInputBias];

    v11 = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setValue:v11 forKey:kCAFilterInputAmount];

    v12 = [v8 CGColor];
    [v9 setValue:v12 forKey:kCAFilterInputColor];

    v13 = [v5 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_2);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1004F2400;
    *(v14 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_0);
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v13 setFilters:v16];
  }

  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v5 setOpaque:0];
    return;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = objc_allocWithZone(type metadata accessor for NSTextLayoutFragment.View.FragmentLayer());
      v22 = v20;
      v23 = NSTextLayoutFragment.View.FragmentLayer.init(fragment:)(v22);
      v24 = [v5 layer];
      [v24 addSublayer:v23];
    }

    while (v17 != v18);
    goto LABEL_12;
  }

  __break(1u);
}

size_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of NSUserDefaults._Observer.HandlerAssociation(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for UIAction(0, &_sSo16UIViewControllerCML_1);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for SyncedLyricsLineView();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id closure #1 in Collection<>.first(embedding:)(id *a1, void *a2)
{
  result = [*a1 customView];
  if (result)
  {
    v4 = result;
    type metadata accessor for UIAction(0, &_sSo6UIViewCML_1);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    return (v6 & 1);
  }

  return result;
}

id *specialized Collection<>.all(embedding:)(unint64_t a1, unint64_t a2)
{
  v14 = a1;
  v17 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v15 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 customView];
      if (v8 && (v16 = v8, __chkstk_darwin(v8), v13[2] = &v16, v10 = v9, v11 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v13, v14), v10, (v11 & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Collection<>.all(embedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __chkstk_darwin(a1);
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return Sequence.filter(_:)();
}

uint64_t closure #1 in Collection<>.all(embedding:)(id *a1, unint64_t a2)
{
  v3 = [*a1 customView];
  if (v3)
  {
    v9 = v3;
    __chkstk_darwin(v3);
    v8[2] = &v9;
    v5 = v4;
    v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id *UINavigationItem.existingBarButtonItems(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 rightBarButtonItems];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_1);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Collection<>.all(embedding:)(a1, v6);

    _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSo15UIBarButtonItemC_SayAFGTg5_0(v7);
  }

  v8 = [v2 leftBarButtonItems];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_1);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = specialized Collection<>.all(embedding:)(a1, v10);

    _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSo15UIBarButtonItemC_SayAFGTg5_0(v11);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIWindow);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void UICollectionView.register<A>(_:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

void UICollectionView.register<A>(_:ofKind:reuseIdentifier:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v2 withReuseIdentifier:v3];
}

uint64_t UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)()
{
  v1 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v0 dequeueReusableCellWithReuseIdentifier:v1 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    _StringGuts.grow(_:)(38);

    v5._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 544497952;
    v6._object = 0xE400000000000000;
    String.append(_:)(v6);
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [v0 dequeueReusableSupplementaryViewOfKind:v1 withReuseIdentifier:v2 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    _StringGuts.grow(_:)(52);
    v6._object = 0x80000001004D5FA0;
    v6._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 544497952;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.globalIndex(for:)()
{
  v1 = [v0 numberOfSections];
  result = IndexPath.section.getter();
  if (__OFADD__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result + 1 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = result + 1;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v0 numberOfItemsInSection:v4];
    result = IndexPath.section.getter();
    if (v4 == result)
    {
      goto LABEL_13;
    }

    ++v4;
    v7 = __OFADD__(v5, v6);
    v5 += v6;
  }

  while (!v7);
  __break(1u);
LABEL_13:
  if (IndexPath.item.getter() >= v6)
  {
    return 0;
  }

  v8 = IndexPath.item.getter();
  v7 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v7)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(*(v9 - 8) + 56);
  v10(a2, 1, 1, v9);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v12 = result;
    v18 = a2;
    v13 = 0;
    v14 = 0;
    while (v12 != v13)
    {
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v15 = v14;
      result = [v3 numberOfItemsInSection:v13];
      v14 = v15 + result;
      if (__OFADD__(v15, result))
      {
        goto LABEL_11;
      }

      ++v13;
      if (v14 > a1)
      {
        result = a1 - v15;
        if (__OFSUB__(a1, v15))
        {
          goto LABEL_13;
        }

        IndexPath.init(item:section:)();
        v16 = v18;
        outlined destroy of TaskPriority?(v18, &_s10Foundation9IndexPathVSgMd_0);
        v10(v8, 0, 1, v9);
        return _s10Foundation9IndexPathVSgWOb_0(v8, v16);
      }
    }
  }

  return result;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *UICollectionView.isLast(indexPath:)()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  result = [v0 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v2 != result - 1)
    {
      return 0;
    }

    v4 = IndexPath.item.getter();
    result = [v1 numberOfItemsInSection:v2];
    if (!__OFSUB__(result, 1))
    {
      return (v4 == (result - 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:v5];

  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v2;

  return v7;
}

void closure #1 in UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_So24UICollectionReusableViewCSgtMd) + 48);
  v7 = type metadata accessor for IndexPath();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a2 supplementaryViewForElementKind:v8 atIndexPath:isa];

  *(a3 + v6) = v10;
}

id UICollectionView.clearSelection(using:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 indexPathsForSelectedItems];
  if (result)
  {
    v12 = result;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v3;
      *(v14 + 32) = a2 & 1;
      v32 = partial apply for closure #1 in UICollectionView.clearSelection(using:animated:);
      v33 = v14;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v31 = &block_descriptor_77;
      v15 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v16 = v3;

      v17 = swift_allocObject();
      *(v17 + 16) = v13;
      *(v17 + 24) = v16;
      v32 = partial apply for closure #2 in UICollectionView.clearSelection(using:animated:);
      v33 = v17;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v31 = &block_descriptor_9_1;
      v18 = _Block_copy(&aBlock);
      v19 = v16;

      [a1 animateAlongsideTransition:v15 completion:v18];
      _Block_release(v18);
      _Block_release(v15);
      return swift_unknownObjectRelease();
    }

    else
    {
      v20 = *(v13 + 16);
      if (v20)
      {
        v22 = *(v7 + 16);
        v21 = v7 + 16;
        v26 = v13;
        v27 = v22;
        v23 = v13 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v24 = *(v21 + 56);
        do
        {
          v27(v10, v23, v6);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v3 deselectItemAtIndexPath:isa animated:{a2 & 1, v26}];

          (*(v21 - 8))(v10, v6);
          v23 += v24;
          --v20;
        }

        while (v20);
      }

      else
      {
      }
    }
  }

  return result;
}

void closure #1 in UICollectionView.clearSelection(using:animated:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6, v8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v19 & 1];

      (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

id closure #2 in UICollectionView.clearSelection(using:animated:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if (result)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      do
      {
        v14(v10, v16, v6);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v13 - 8))(v10, v6);
        v16 += v17;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t UICollectionView.isDraggingCell(at:)()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v15 = [v14 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    v16 = static UICellConfigurationState.DragState.== infix(_:_:)();

    v17 = *(v3 + 8);
    v17(v5, v2);
    v17(v8, v2);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

id UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id UIColor.interpolate(to:ratio:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v12 blue:&v10 alpha:&v8];
  [a1 getRed:&v13 green:&v11 blue:&v9 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v13 green:(1.0 - v5) * v12 + v5 * v11 blue:(1.0 - v5) * v10 + v5 * v9 alpha:(1.0 - v5) * v8 + v5 * v7];
}

double UIColor.hsba.getter()
{

  return UIColor.hsba.getter(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgba.getter()
{

  return UIColor.hsba.getter(&selRef_getRed_green_blue_alpha_);
}

double UIColor.hsba.getter(SEL *a1)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return v6;
}

UIImage_optional __swiftcall UIImage.init(systemName:font:scale:)(Swift::String systemName, UIFont font, UIImageSymbolScale scale)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() configurationWithFont:font.super.isa scale:scale];
  v8 = [ObjCClassFromMetadata systemImageNamed:v6 withConfiguration:v7];

  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id UIImage.init(systemName:pointSize:weight:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() configurationWithPointSize:a4 weight:a1];
  v9 = [ObjCClassFromMetadata systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

UIImage_optional __swiftcall UIImage.byCroppingToUniformCenter()()
{
  v1 = v0;
  v2 = v0;
  [(CGImage *)v2 size];
  v4 = v3;
  v6 = v5;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    if (v6 >= v4)
    {
      v9 = round((v6 - v4) * 0.5);
      v8 = 0.0;
      v10 = v4;
      v11 = v4;
    }

    else
    {
      v8 = round((v4 - v6) * 0.5);
      v9 = 0.0;
      v10 = v6;
      v11 = v6;
    }

    v1 = UIImage.byCropping(to:)(v8, v9, v10, v11);
  }

  v12 = v1;
  result.value.super.isa = v12;
  result.is_nil = v7;
  return result;
}

CGImage *UIImage.byCropping(to:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v11 = result;
    _sSo6CGSizeVMa_2(0);
    if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    [v4 scale];
    v13 = v12;
    v14 = static ApproximatelyEquatable.!=~ infix(_:_:)();
    v15 = v13 * a1;
    v16 = v13 * a2;
    v17 = v13 * a3;
    v18 = v13 * a4;
    if ((v14 & 1) == 0)
    {
      v18 = a4;
      v17 = a3;
      v16 = a2;
      v15 = a1;
    }

    v19 = CGImageCreateWithImageInRect(v11, *&v15);
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:objc_msgSend(v5 orientation:{"imageOrientation", 0x3FF0000000000000), v13}];

      return v21;
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

UIViewController_optional __swiftcall UINavigationController.removeViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = [v2 viewControllers];
  type metadata accessor for UIAction(0, &_sSo16UIViewControllerCML_1);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Collection<>.firstIndex(of:)(_.super.super.isa, v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v11 = 0;
  }

  else
  {
    v12 = specialized Array.remove(at:)(v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setViewControllers:isa animated:animated];

    v11 = v12;
  }

  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

double UIScrollView.normalizedContentOffset.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  [v0 contentOffset];
  return v2 + v3;
}

uint64_t UIScrollView.isScrolling.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, "isDecelerating") & 1) != 0 || (objc_msgSend(v0, "_isVerticalBouncing"))
  {
    return 1;
  }

  else
  {
    return [v0 _isHorizontalBouncing];
  }
}

id UIView.forAutolayout.getter()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

void UIView.Shadow.hash(into:)()
{
  NSObject.hash(into:)();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[2];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[3];
  v4 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  Hasher._combine(_:)(*&v5);
}

Swift::Int UIView.Shadow.hashValue.getter()
{
  Hasher.init(_seed:)();
  UIView.Shadow.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIView.Shadow()
{
  Hasher.init(_seed:)();
  UIView.Shadow.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UIView.Shadow(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
  v10 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

id UIView.shadowPathIsBounds.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPathIsBounds];

  return v2;
}

void UIView.shadowPathIsBounds.setter(char a1)
{
  v3 = [v1 layer];
  [v3 setShadowPathIsBounds:a1 & 1];
}

void (*UIView.shadowPathIsBounds.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 layer];
  v4 = [v3 shadowPathIsBounds];

  *(a1 + 8) = v4;
  return UIView.shadowPathIsBounds.modify;
}

void UIView.shadowPathIsBounds.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 layer];
  [v2 setShadowPathIsBounds:v1];
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  specialized UIView.shadow.setter(a1);

  return outlined destroy of UIView.Shadow(a1);
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return UIView.shadow.modify;
}

void UIView.shadow.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    outlined init with copy of UIView.Shadow(v2, (v2 + 120));
    specialized UIView.shadow.setter(v2);
    outlined destroy of UIView.Shadow(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    specialized UIView.shadow.setter((v2 + 40));
    outlined destroy of UIView.Shadow((v2 + 40));
  }

  free(v2);
}

uint64_t UIView.Border.init(view:)(void *a1)
{
  v2 = specialized UIView.Border.init(view:)(a1);

  return v2;
}

uint64_t UIView.border.getter()
{
  v1 = v0;
  v2 = specialized UIView.Border.init(view:)(v1);

  return v2;
}

void UIView.border.setter(uint64_t a1, char a2, void *a3)
{
  specialized UIView.border.setter(a1, a2, a3);
}

void (*UIView.border.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1;
  v4 = specialized UIView.Border.init(view:)(v3);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return UIView.border.modify;
}

void UIView.border.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v4 = v6;
    specialized UIView.border.setter(v2, v3, v6);

    v5 = v4;
  }

  else
  {
    specialized UIView.border.setter(v2, v3, v6);
    v5 = v6;
  }
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

id UIView.untransformedFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

void (*UIView.untransformedFrame.modify(uint64_t *a1))(CGFloat **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = UIView.untransformedFrame.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return UIView.untransformedFrame.modify;
}

void UIView.untransformedFrame.modify(CGFloat **a1)
{
  v1 = *a1;
  UIView.untransformedFrame.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

float UIView.contentCompressionResistancePriority.getter()
{
  [v0 contentCompressionResistancePriorityForAxis:0];
  v2 = v1;
  [v0 contentCompressionResistancePriorityForAxis:1];
  return v2;
}

float UIView.CompressionResistancePriority.init(view:)(void *a1)
{
  [a1 contentCompressionResistancePriorityForAxis:0];
  v3 = v2;
  [a1 contentCompressionResistancePriorityForAxis:1];

  return v3;
}

id UIView.contentCompressionResistancePriority.setter(double a1, float a2)
{
  [v2 setContentCompressionResistancePriority:0 forAxis:?];
  *&v4 = a2;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

id (*UIView.contentCompressionResistancePriority.modify(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 contentCompressionResistancePriorityForAxis:0];
  v4 = v3;
  [v1 contentCompressionResistancePriorityForAxis:1];
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return UIView.contentCompressionResistancePriority.modify;
}

id UIView.contentCompressionResistancePriority.modify(uint64_t a1, double a2)
{
  v2 = *a1;
  LODWORD(a2) = *(a1 + 8);
  v3 = *(a1 + 12);
  [*a1 setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v4) = v3;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

UIImage *UIView.screenshot.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 isOpaque];
  v8.width = v2;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, v5, 0.0);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v6;
}

Swift::Void __swiftcall UIView.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 viewWithTag:1234];
  if (v4)
  {
    isa = v4;
    [v1 bringSubviewToFront:?];
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
    [v5 setBackgroundColor:v6];

    v7 = with.super.isa;
    specialized UIView.border.setter(0x3FF0000000000000, 1, with.super.isa);

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTag:1234];
    [v5 setUserInteractionEnabled:0];
    [v2 addSubview:v5];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_1);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004F3040;
    v10 = [v5 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v5 bottomAnchor];
    v14 = [v2 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v5 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v5 trailingAnchor];
    v20 = [v2 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];
  }
}

uint64_t UIView.traverseViewHierarchy(_:)(uint64_t (*a1)(void *, char *), uint64_t a2)
{
  v3 = v2;
  v14 = 0;
  result = a1(v3, &v14);
  if ((v14 & 1) == 0)
  {
    v7 = [v3 subviews];
    type metadata accessor for UIAction(0, &_sSo6UIViewCML_1);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v14)
        {

          goto LABEL_14;
        }

        specialized UIView.traverseViewHierarchy(_:)(v11, a1, a2, &v14);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

void UIView.statusBarFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 window];
  v4 = 0uLL;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 windowScene];

    if (v6)
    {
      v7 = [v6 statusBarManager];
      if (v7)
      {
        v8 = v7;
        if (([v7 isStatusBarHidden] & 1) == 0)
        {
          [v8 statusBarFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v6 screen];
          v20 = [v19 coordinateSpace];

          [v1 convertRect:v20 fromCoordinateSpace:{v12, v14, v16, v18}];
          v26 = v21;
          v27 = v22;
          v25 = v23;
          v28 = v24;

          swift_unknownObjectRelease();
          *&v10 = v25;
          *&v4 = v26;
          v9 = 0;
          *(&v4 + 1) = v27;
          *(&v10 + 1) = v28;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v9 = 1;
    v10 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v9 = 1;
    v10 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id UIView.allowsAnimatedChanges.getter()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = [v0 window];
    if (result)
    {
      v2 = result;
      v3 = [result windowScene];

      if (v3)
      {
        v4 = [v3 activationState];

        return (v4 == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall UILayoutGuide.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 owningView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewWithTag:1234];
    if (v6)
    {
      isa = v6;
      [v5 bringSubviewToFront:?];
    }

    else
    {
      v7 = [objc_allocWithZone(UIView) init];
      v8 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
      [v7 setBackgroundColor:v8];

      v9 = with.super.isa;
      specialized UIView.border.setter(0x3FF0000000000000, 1, with.super.isa);

      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setTag:1234];
      [v7 setUserInteractionEnabled:0];
      [v5 addSubview:v7];
      v10 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_1);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1004F3040;
      v12 = [v7 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v7 bottomAnchor];
      v16 = [v2 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      v18 = [v7 leadingAnchor];
      v19 = [v2 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v11 + 48) = v20;
      v21 = [v7 trailingAnchor];
      v22 = [v2 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v11 + 56) = v23;
      type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 activateConstraints:isa];

      v5 = v7;
    }
  }
}

BOOL UIViewController.canPresentViewControllers.getter()
{
  v1 = [v0 popoverPresentationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL UIViewController.canBeDismissed.getter()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall UIViewController.dismiss(after:)(Swift::Double after)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_2);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in UIViewController.dismiss(after:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_17_3;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_2, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v3, v1);
  (*(v18 + 8))(v6, v19);
  v17(v13, v7);
}

void closure #1 in UIViewController.dismiss(after:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 presentedViewController];
      if (v4)
      {
        v5 = v4;
        type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
        if (static NSObject.== infix(_:_:)())
        {
          [v3 dismissViewControllerAnimated:1 completion:0];
        }

        v1 = v3;
      }

      else
      {
        v5 = v3;
      }

      v1 = v5;
    }
  }
}

Swift::Void __swiftcall UIViewController.add(_:)(UIViewController a1)
{
  [v1 addChildViewController:a1.super.super.isa];
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [(objc_class *)a1.super.super.isa view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview:v5];

        v7 = [v1 view];
        if (v7)
        {
          v8 = v7;
          [v7 setNeedsLayout];

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:

  [(objc_class *)a1.super.super.isa didMoveToParentViewController:v1];
}

Swift::Void __swiftcall UIViewController.remove(_:)(UIViewController a1)
{
  v3 = [(objc_class *)a1.super.super.isa parentViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;

  if (v4 != v1)
  {
    return;
  }

  [(objc_class *)a1.super.super.isa willMoveToParentViewController:0];
  if (![v1 isViewLoaded] || !-[objc_class isViewLoaded](a1.super.super.isa, "isViewLoaded"))
  {
    goto LABEL_11;
  }

  v5 = [(objc_class *)a1.super.super.isa view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 isDescendantOfView:v7];

  if (v9)
  {
    v10 = [(objc_class *)a1.super.super.isa view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:

  [(objc_class *)a1.super.super.isa removeFromParentViewController];
}

Swift::Bool __swiftcall UIViewController.isDescendant(of:)(UIViewController of)
{
  v3 = [v1 parentViewController];
  if (v3 && (v4 = v3, v3, v4 == of.super.super.isa))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = UIViewController.isDescendant(of:)(of);

      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

void UIViewController.traverseViewControllerHierarchy(_:)(void (*a1)(void *, _BYTE *), uint64_t a2)
{
  v44[0] = 0;
  a1(v2, v44);
  v38 = v2;
  v3 = [v2 childViewControllers];
  type metadata accessor for UIAction(0, &_sSo16UIViewControllerCML_1);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v4;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (i)
    {
      v6 = 0;
      v40 = i;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v9 = *(v39 + 32 + 8 * v6);
        }

        v10 = v9;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (v44[0])
        {

          goto LABEL_32;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v13 = (v12 + 16);
        swift_beginAccess();
        a1(v10, v44);
        swift_endAccess();
        *(v12 + 16) = v44[0];
        v14 = [v10 childViewControllers];
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v10;
        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        if (v16)
        {
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (*v13 == 1)
            {

              goto LABEL_25;
            }

            specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v18, v12, a1, a2, v44);

            ++v17;
            if (v20 == v16)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

LABEL_25:

        swift_beginAccess();
        if (*v13 == 1)
        {

          v7 = v40;
          v8 = v41;
        }

        else
        {
          v8 = v41;
          v21 = [v41 presentedViewController];
          v7 = v40;
          if (v21)
          {
            v22 = v21;
            specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v21, v12, a1, a2, v44);
          }

          else
          {
          }
        }

        if (v6 == v7)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_32:

    swift_beginAccess();
    if (v44[0])
    {
      return;
    }

    v23 = [v38 presentedViewController];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = (v25 + 16);
    swift_beginAccess();
    a1(v24, v44);
    swift_endAccess();
    *(v25 + 16) = v44[0];
    v27 = [v24 childViewControllers];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v24;
    v30 = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    swift_beginAccess();
    if (!v30)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (*v26 == 1)
      {

        goto LABEL_47;
      }

      specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v32, v25, a1, a2, v44);

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_47:

  swift_beginAccess();
  if (*v26 == 1)
  {

    v35 = v29;
  }

  else
  {
    v35 = v29;
    v36 = [v29 presentedViewController];
    if (v36)
    {
      v37 = v36;
      specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v36, v25, a1, a2, v44);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  a3(a1, a5);
  swift_endAccess();
  result = swift_beginAccess();
  *a2 = *a5;
  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority:*&priority.rawValue];

  return v3;
}

void UIView.constrain(to:padding:)()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17NSLayoutAttributeV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of UIView.constrain(to:padding:));
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo17NSLayoutAttributeV12CoreGraphics7CGFloatVG_So0D10ConstraintCs5NeverOTg506_sSo17de3V12f9Graphics7h7VSo0A10i27CIgyyo_AB3key_AE5valuetAGs5J11OIegnrzr_TRAgjMIgyyo_Tf1cn_nTf4ng_n(v0, partial apply for closure #1 in UIView.constrain(to:padding:));

  v1 = objc_opt_self();
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id closure #1 in UIView.constrain(to:padding:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  _sypSgWOc_1(a3, v20);
  v9 = v21;
  if (v21)
  {
    v10 = __swift_project_boxed_opaque_existential_0Tm(v20, v21);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = a2;
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v17 = a2;
    v16 = 0;
  }

  v18 = [objc_opt_self() constraintWithItem:a2 attribute:a1 relatedBy:0 toItem:v16 attribute:a1 multiplier:1.0 constant:a4 * a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t UIView.constrainToBounds(of:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 layoutMarginsGuide];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v9[3] = type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
  v9[0] = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17NSLayoutAttributeV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of UIView.constrain(to:padding:));
  __chkstk_darwin(v4);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo17NSLayoutAttributeV12CoreGraphics7CGFloatVG_So0D10ConstraintCs5NeverOTg506_sSo17de3V12f9Graphics7h7VSo0A10i27CIgyyo_AB3key_AE5valuetAGs5J11OIegnrzr_TRAgjMIgyyo_Tf1cn_nTf4ng_n(v5, closure #1 in UIView.constrain(to:padding:)partial apply);

  v6 = objc_opt_self();
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return outlined destroy of TaskPriority?(v9, &_sypSgMd_2);
}

uint64_t UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  if (a2)
  {
    v5 = [v2 layoutMarginsGuide];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;
  v12[3] = type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
  v12[0] = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17NSLayoutAttributeV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of UIView.constrain(to:padding:));
  __chkstk_darwin(v7);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo17NSLayoutAttributeV12CoreGraphics7CGFloatVG_So0D10ConstraintCs5NeverOTg506_sSo17de3V12f9Graphics7h7VSo0A10i27CIgyyo_AB3key_AE5valuetAGs5J11OIegnrzr_TRAgjMIgyyo_Tf1cn_nTf4ng_n(v8, closure #1 in UIView.constrain(to:padding:)partial apply);

  v9 = objc_opt_self();
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];

  return outlined destroy of TaskPriority?(v12, &_sypSgMd_2);
}

void Array<A>.activate()(uint64_t a1, SEL *a2)
{
  v3 = objc_opt_self();
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 *a2];
}

uint64_t NSTextAlignment.init(languageCode:)()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Locale.Language.init(identifier:)();
  v4 = Locale.Language.characterDirection.getter();
  (*(v1 + 8))(v3, v0);
  v5 = 4;
  if (v4 == 2)
  {
    v5 = 2;
  }

  if (v4 == 1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall NSTextAlignment.flip()()
{
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  *v0 = v1;
}

uint64_t NSTextAlignment.ctTextAlignment.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x403010200uLL >> (8 * a1));
  }
}

uint64_t UIViewPropertyAnimator.UpdateReason.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance UIViewPropertyAnimator.UpdateReason@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

void UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_26;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

UIViewPropertyAnimator __swiftcall UIViewPropertyAnimator.init(springTimingParameters:)(UISpringTimingParameters springTimingParameters)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  [(objc_class *)springTimingParameters.super.isa settlingDuration];
  v3 = [v2 initWithDuration:springTimingParameters.super.isa timingParameters:?];

  return v3;
}

id UISpringTimingParameters.init(dampingRatio:response:)(double a1, double a2)
{
  v2 = 6.28318531 / a2 * (6.28318531 / a2);
  v3 = sqrt(v2);
  v4 = (v3 + v3) * a1;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithMass:1.0 stiffness:v2 damping:v4 initialVelocity:{0.0, 0.0}];
}

id UIView.setAnchorPoint(_:preserveFrame:)(char a1, double a2, double a3)
{
  if (a1)
  {
    v6 = UIView.untransformedFrame.getter();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 setAnchorPoint:{a2, a3}];

    return UIView.untransformedFrame.setter(v6, v8, v10, v12);
  }

  else
  {

    return [v3 setAnchorPoint:?];
  }
}

uint64_t *UIView.Shadow.identity.unsafeMutableAddressor()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return &static UIView.Shadow.identity;
}

id static UIView.Shadow.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static UIView.Shadow.identity;
  *a1 = static UIView.Shadow.identity;
  *(a1 + 8) = *algn_10063FA20;
  *(a1 + 24) = *&algn_10063FA20[16];

  return v2;
}

uint64_t _s10Foundation9IndexPathVSgWOb_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004201B4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t specialized static UIView.Border.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (*&a1 == *&a4)
  {
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

id *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo17NSLayoutAttributeV12CoreGraphics7CGFloatVG_So0D10ConstraintCs5NeverOTg506_sSo17de3V12f9Graphics7h7VSo0A10i27CIgyyo_AB3key_AE5valuetAGs5J11OIegnrzr_TRAgjMIgyyo_Tf1cn_nTf4ng_n(uint64_t a1, void (*a2)(void, double))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v18 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v7;
      a2(*(*(a1 + 48) + 8 * v6), *(*(a1 + 56) + 8 * v6));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v5 + 8 * v10);
      if ((v11 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v6 & 0x3F));
      if (v12)
      {
        v9 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a1 + 72 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v6, v8, 0);
            v9 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v6, v8, 0);
      }

LABEL_4:
      v7 = v20 + 1;
      v6 = v9;
      if (v20 + 1 == v18)
      {
        return _swiftEmptyArrayStorage;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

void specialized UIView.shadow.setter(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor:v4];

  v5 = [v1 layer];
  [v5 setShadowOffset:{*(a1 + 24), *(a1 + 32)}];

  v6 = [v1 layer];
  [v6 setShadowRadius:*(a1 + 16)];

  v8 = [v1 layer];
  v7 = *(a1 + 8);
  *&v7 = v7;
  [v8 setShadowOpacity:v7];
}

uint64_t specialized UIView.Border.init(view:)(void *a1)
{
  v2 = [a1 layer];
  [v2 borderWidth];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = [a1 layer];
  v6 = [v5 borderColor];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 layer];
  [v7 borderWidth];
  v9 = v8;

  [objc_allocWithZone(UIColor) initWithCGColor:v6];
  return v9;
}

void specialized UIView.border.setter(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v7 = [v3 layer];
    v8 = v7;
    if (a2)
    {
      [v7 setBorderWidth:*&a1];
    }

    else
    {
      v9 = [v3 traitCollection];
      [v9 displayScale];
      v11 = v10;

      [v8 setBorderWidth:{*&a1 / fmax(v11, 1.0)}];
    }
  }

  else
  {
    v8 = [v3 layer];
    [v8 setBorderWidth:0.0];
  }

  v12 = [v3 layer];
  if (a3)
  {
    v13 = [a3 CGColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setBorderColor:?];
}

uint64_t specialized UIView.traverseViewHierarchy(_:)(void *a1, uint64_t (*a2)(void *, char *), uint64_t a3, char *a4)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  result = a2(a1, a4);
  v15 = *a4;
  if ((v15 & 1) == 0)
  {
    v7 = [a1 subviews];
    type metadata accessor for UIAction(0, &_sSo6UIViewCML_1);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * j + 32);
        }

        v12 = v11;
        v13 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v15 == 1)
        {
        }

        specialized UIView.traverseViewHierarchy(_:)(v11, partial apply for closure #1 in UIView.traverseViewHierarchy(_:), v14, &v15);

        if (v13 == i)
        {
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return result;
}

uint64_t sub_100420AAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, _BYTE *a5)
{
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  swift_beginAccess();
  swift_beginAccess();
  a3(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  v11 = *a5;
  *(a2 + 16) = *a5;
  swift_endAccess();
  *(v9 + 16) = v11;
  v12 = [a1 childViewControllers];
  type metadata accessor for UIAction(0, &_sSo16UIViewControllerCML_1);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = a1;
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*v10 == 1)
      {

        goto LABEL_14;
      }

      specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v16, v9, partial apply for closure #1 in traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:), v23, a2 + 16);

      ++v15;
      if (v18 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:

  swift_beginAccess();
  if (*v10 == 1 || (v19 = [v22 presentedViewController]) == 0)
  {
  }

  else
  {
    v20 = a2 + 16;
    v21 = v19;
    specialized traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:)(v19, v9, partial apply for closure #1 in traverseInnerViewController #1 (_:) in UIViewController.traverseViewControllerHierarchy(_:), v23, v20);
  }
}

unint64_t lazy protocol witness table accessor for type UIView.Shadow and conformance UIView.Shadow()
{
  result = lazy protocol witness table cache variable for type UIView.Shadow and conformance UIView.Shadow;
  if (!lazy protocol witness table cache variable for type UIView.Shadow and conformance UIView.Shadow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView.Shadow and conformance UIView.Shadow);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIViewPropertyAnimator.UpdateReason and conformance UIViewPropertyAnimator.UpdateReason()
{
  result = lazy protocol witness table cache variable for type UIViewPropertyAnimator.UpdateReason and conformance UIViewPropertyAnimator.UpdateReason;
  if (!lazy protocol witness table cache variable for type UIViewPropertyAnimator.UpdateReason and conformance UIViewPropertyAnimator.UpdateReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewPropertyAnimator.UpdateReason and conformance UIViewPropertyAnimator.UpdateReason);
  }

  return result;
}

__n128 __swift_memcpy40_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8_3(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _sypSgWOc_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in UIView.traverseViewHierarchy(_:)(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1, v4);
  *a2 = *v4;
  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_1);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for SyncedLyricsLineView();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t outlined init with take of NSUserDefaults._Observer.HandlerAssociation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t URL.init(string:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_2);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (!a1)
  {
    goto LABEL_4;
  }

  URL.init(string:)();

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    outlined destroy of TaskPriority?(v6, &_s10Foundation3URLVSgMd_2);
LABEL_4:
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  (*(v8 + 32))(a2, v6, v7);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t URL.parametrize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_2);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v68 = type metadata accessor for URLQueryItem();
  v66 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v67 = &v50 - v11;
  __chkstk_darwin(v10);
  v62 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd_0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  result = (*(v21 + 16))(a2, v2, v20);
  if (*(a1 + 16))
  {
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return outlined destroy of TaskPriority?(v15, &_s10Foundation13URLComponentsVSgMd_0);
    }

    else
    {
      v53 = v21;
      v55 = v20;
      v56 = v7;
      v52 = v17;
      v23 = *(v17 + 32);
      v54 = v16;
      v23(v19, v15, v16);
      v51 = v19;
      v24 = URLComponents.queryItems.getter();
      v25 = _swiftEmptyArrayStorage;
      if (v24)
      {
        IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = v24;
      }

      else
      {
        IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = _swiftEmptyArrayStorage;
      }

      v27 = *(a1 + 16);
      if (v27)
      {
        v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SS5valuet_Tt1g5(*(a1 + 16), 0);
        v28 = specialized Sequence._copySequenceContents(initializing:)(v69, v25 + 4, v27, a1);
        v65 = v69[4];

        outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
        if (v28 != v27)
        {
          __break(1u);
        }
      }

      v69[0] = v25;
      specialized MutableCollection<>.sort(by:)(v69);
      v29 = v69[0];
      v61 = v69[0][2];
      if (v61)
      {
        v50 = a2;
        v30 = 0;
        v59 = v69[0];
        v60 = v69[0] + 4;
        v65 = (v66 + 16);
        v31 = (v66 + 8);
        v57 = (v66 + 40);
        v58 = v66 + 32;
        while (1)
        {
          if (v30 >= v29[2])
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v64 = v30;
          v34 = &v60[4 * v30];
          v35 = *v34;
          v36 = v34[1];

          URLQueryItem.init(name:value:)();

          v37 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2];
          if (v37)
          {
            break;
          }

LABEL_22:

          v43 = v62;
          (*v65)(v63, v62, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(0, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2] + 1, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1);
          }

          v45 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2];
          v44 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[3];
          if (v45 >= v44 >> 1)
          {
            IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(v44 > 1, v45 + 1, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1);
          }

          v32 = v66;
          v33 = v68;
          (*(v66 + 8))(v43, v68);
          IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2] = (v45 + 1);
          (*(v32 + 32))(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v45, v63, v33);
LABEL_13:
          v30 = v64 + 1;
          v29 = v59;
          if ((v64 + 1) == v61)
          {

            a2 = v50;
            goto LABEL_33;
          }
        }

        v38 = 0;
        while (1)
        {
          if (v38 >= IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2])
          {
            __break(1u);
            goto LABEL_38;
          }

          v39 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v40 = *(v66 + 72) * v38;
          (*(v66 + 16))(v67, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + v39 + v40, v68);
          if (URLQueryItem.name.getter() == v35 && v41 == v36)
          {
            break;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v31)(v67, v68);
          if (v42)
          {
            goto LABEL_27;
          }

          if (v37 == ++v38)
          {
            goto LABEL_22;
          }
        }

        (*v31)(v67, v68);
LABEL_27:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = specialized _ArrayBuffer._consumeAndCreateNew()(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1);
        }

        if (v38 < IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2])
        {
          (*v57)(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + v39 + v40, v62, v68);
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);

        __break(1u);
      }

      else
      {

LABEL_33:
        v46 = v51;
        URLComponents.queryItems.setter();
        v47 = v56;
        URLComponents.url.getter();
        (*(v52 + 8))(v46, v54);
        v48 = v53;
        v49 = v55;
        if ((*(v53 + 48))(v47, 1, v55) == 1)
        {
          return outlined destroy of TaskPriority?(v47, &_s10Foundation3URLVSgMd_2);
        }

        else
        {
          (*(v48 + 8))(a2, v49);
          return (*(v48 + 32))(a2, v47, v49);
        }
      }
    }
  }

  return result;
}

uint64_t URLComponents.queryItemsDictionary.getter()
{
  v0 = type metadata accessor for URLQueryItem();
  v34 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = URLComponents.queryItems.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v33 = *(v3 + 16);
  if (!v33)
  {

    return 0;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
  v6 = 0;
  v32 = v4 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v30 = (v34 + 8);
  v31 = v34 + 16;
  v28 = v4;
  v29 = v2;
  while (v6 < *(v4 + 16))
  {
    (*(v34 + 16))(v2, v32 + *(v34 + 72) * v6, v0);
    v7 = URLQueryItem.value.getter();
    if (v8)
    {
      v9 = v8;
      v35 = v7;
      v10 = v0;
      URLQueryItem.name.getter();
      v11 = String.lowercased()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v5;
      v14 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v11._countAndFlagsBits, v11._object);
      v15 = v5[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_25;
      }

      v18 = v13;
      if (v5[3] >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v0 = v10;
          if ((v13 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          _ss17_NativeDictionaryV4copyyyFSS_SSTg5_0();
          v0 = v10;
          if ((v18 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        _ss17_NativeDictionaryV20_copyOrMoveAndResize8capacity12moveElementsySi_SbtFSS_SSTg5_0(v17, isUniquelyReferenced_nonNull_native);
        v19 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v11._countAndFlagsBits, v11._object);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_27;
        }

        v14 = v19;
        v0 = v10;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v5 = v36;
          v36[(v14 >> 6) + 8] |= 1 << v14;
          *(v5[6] + 16 * v14) = v11;
          v22 = (v5[7] + 16 * v14);
          *v22 = v35;
          v22[1] = v9;
          v2 = v29;
          (*v30)(v29, v0);
          v23 = v5[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v5[2] = v25;
          goto LABEL_19;
        }
      }

      v5 = v36;
      v21 = (v36[7] + 16 * v14);
      *v21 = v35;
      v21[1] = v9;

      v2 = v29;
      (*v30)(v29, v0);
LABEL_19:
      v4 = v28;
      goto LABEL_5;
    }

    (*v30)(v2, v0);
LABEL_5:
    if (v33 == ++v6)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13MPModelObjectC14MusicUtilitiesE16LoggingComponentOGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SS5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  return _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _ss17_NativeDictionaryV20_copyOrMoveAndResize8capacity12moveElementsySi_SbtFSS_SSTg5_0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *_ss17_NativeDictionaryV4copyyyFSS_SSTg5_0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = *(v6 - 4) == v20 && *(v6 - 3) == v21;
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 176) < *(*v4 + 176))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 176) < *(*v17 + 176))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t _sSa6remove2atxSi_tFSnySiG_Tgq5_1(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tgq5_0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd_1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

__n128 __swift_memcpy17_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v9 = *(a6 - 8);
  __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0);
  v13 = v12 - 8;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  v15 = __chkstk_darwin(v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v38 = &v36 - v17;
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  (*(v9 + 16))(v11, a1, a6);
  v20 = String.init<A>(_:)();
  v22 = v21;
  UUID.init()();
  v23 = &v19[*(v13 + 28)];
  *v23 = v39;
  *(v23 + 1) = a3;
  v24 = &v19[*(v13 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = one-time initialization token for shared;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static NSUserDefaults._Observer.shared;
  v27 = *(static NSUserDefaults._Observer.shared + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v42;
  closure #1 in NSUserDefaults._Observer.addObserver(identifiedBy:handler:)(v26, v19, v40, v41);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v19, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);
  }

  v30 = v38;
  outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(v19, v38, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);
  v31 = v37;
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v19, v37, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);
  v32 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v33 = swift_allocObject();
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v31, v33 + v32, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v34 = swift_allocObject();
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v30, v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);
  result = v34;
  v35 = (v34 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v35 = partial apply for closure #1 in static NSUserDefaults.observe<A>(_:in:valueChanged:);
  v35[1] = v33;
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a3 + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(*(a3 + 56) + 8 * v11);
      v22[0] = *v12;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v16;

      v17 = v15;

      v18 = v23;
      v19 = a1(v22);
      if (v18)
      {

        return v14;
      }

      v23 = 0;
      if (v19)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t UserDefault.init(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a2;
  v9 = type metadata accessor for UserDefault();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 44)], a3, a4);
  v10 = *(v9 + 48);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a1, v11);
}

uint64_t UserDefault.init<A>(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v21 = a2;
  v22 = a6;
  v20 = a7;
  __chkstk_darwin(a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - v16;
  (*(v14 + 16))(&v19 - v16, a1, v13, v15);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(v14 + 8))(a1, v13);
  return UserDefault.init(wrappedValue:defaults:key:)(v17, v21, v12, a4, v20);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  NSUserDefaults.subscript.getter(v2 + *(a1 + 44), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2);
  v10 = swift_dynamicCast();
  v11 = *(*(v5 - 8) + 56);
  if (v10)
  {
    v12 = *(v5 - 8);
    v11(v9, 0, 1, v5);
    (*(v12 + 32))(a2, v9, v5);
    return (v11)(a2, 0, 1, v5);
  }

  else
  {
    v11(v9, 1, 1, v5);
    return (*(v7 + 16))(a2, v2 + *(a1 + 48), v6);
  }
}

double NSUserDefaults.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  String.init<A>(_:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v2 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized UserDefault.wrappedValue.setter(a1, a2);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sypSgWOc_1(v9, &v16);
  if (v17)
  {
    outlined init with take of Any(&v16, &v18);
    __swift_project_boxed_opaque_existential_0Tm(&v18, v19);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 16))(v11, a2, a3);
    String.init<A>(_:)();
    v13 = String._bridgeToObjectiveC()();

    [v4 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    (*(v8 + 8))(a2, a3);
    _sypSgWOh_1(a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  }

  else
  {
    _sypSgWOh_1(&v16);
    (*(v8 + 16))(v11, a2, a3);
    String.init<A>(_:)();
    v15 = String._bridgeToObjectiveC()();

    [v4 removeObjectForKey:v15];

    (*(v8 + 8))(a2, a3);
    return _sypSgWOh_1(a1);
  }
}

{
  specialized NSUserDefaults.subscript.setter(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = type metadata accessor for Optional();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return UserDefault.wrappedValue.modify;
}

void UserDefault.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized UserDefault.wrappedValue.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized UserDefault.wrappedValue.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.Suite()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NSUserDefaults.Suite()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.Suite()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSUserDefaults.Suite(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = v4;
  v9[8] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[11] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[12] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v10[13] = v14;
  (*(v12 + 16))();
  NSUserDefaults.subscript.getter(a2, v10);
  return NSUserDefaults.subscript.modify;
}

void NSUserDefaults.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = v2[11];
    v6 = v2[8];
    _sypSgWOc_1(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v6);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v6);
    _sypSgWOh_1(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[8];
    _sypSgWOc_1(*a1, (v2 + 4));
    specialized NSUserDefaults.subscript.setter((v2 + 4));
    (*(v4 + 8))(v3, v5);
    _sypSgWOh_1(v2);
  }

  else
  {
    v6 = v2[12];
    v3 = v2[13];
    v7 = v2[8];
    specialized NSUserDefaults.subscript.setter(*a1);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v8 - v4;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = NSUserDefaults.subscript.getter(v5, a1);
  return (*(v3 + 8))(v5, AssociatedTypeWitness, v6);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return NSUserDefaults.subscript.modify;
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NSUserDefaults.Migrator();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 44);

  return v8(v9, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a3 - 8);
  __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a4 - 8) + 8))(a2, a4);
  *a5 = a1;
  v13 = type metadata accessor for NSUserDefaults.Migrator();
  return (*(v10 + 32))(&a5[*(v13 + 44)], v12, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v61 = a2;
  v9 = v8;
  v56 = a7;
  v54 = a4;
  v60 = a3;
  v50 = a1;
  v57 = a8;
  v55 = a6;
  v49 = *(a6 - 8);
  __chkstk_darwin(a1);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v59 = *(v13 - 8);
  __chkstk_darwin(v14);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v16;
  v52 = type metadata accessor for Optional();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v47 - v19;
  v20 = *(a5 + 24);
  v68 = type metadata accessor for Optional();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v22 = &v47 - v21;
  v23 = *v9;
  v24 = *(a5 + 44);
  NSUserDefaults.subscript.getter(v9 + v24, v67);
  _sypSgWOc_1(v67, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2);
  v25 = swift_dynamicCast();
  v26 = *(v20 - 8);
  (*(v26 + 56))(v22, v25 ^ 1u, 1, v20);
  _sypSgWOc_1(v67, &v65);
  v27 = *(&v66 + 1);
  _sypSgWOh_1(&v65);
  if (v27 && (*(v26 + 48))(v22, 1, v20) == 1)
  {
    type metadata accessor for NSUserDefaults.Migrator.Error();
    swift_getWitnessTable();
    swift_allocError();
    (*(v59 + 16))(v28, v9 + v24, v13);
    swift_willThrow();
LABEL_5:
    _sypSgWOh_1(v67);
    return (*(v64 + 8))(v22, v68);
  }

  v29 = v62;
  v30 = v63;
  v61(v22);
  if (v29)
  {
    goto LABEL_5;
  }

  v31 = v47;
  (*(v59 + 16))(v47, v9 + v24, v13);
  v65 = 0u;
  v66 = 0u;
  NSUserDefaults.subscript.setter(&v65, v31, v13);
  v32 = v54;
  if (v54)
  {
    v62 = v54;
  }

  else
  {
    v62 = v23;
  }

  v33 = v53;
  v34 = v52;
  v35 = v51;
  v36 = v55;
  (*(v49 + 16))(v58, v50, v55);
  v37 = v48;
  (*(v35 + 16))(v48, v30, v34);
  v38 = v35;
  v39 = *(v33 - 8);
  if ((*(v39 + 48))(v37, 1, v33) == 1)
  {
    v40 = *(v38 + 8);
    v41 = v32;
    v40(v37, v34);
    v65 = 0u;
    v66 = 0u;
  }

  else
  {
    *(&v66 + 1) = v33;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
    (*(v39 + 32))(boxed_opaque_existential_1, v37, v33);
    v43 = v32;
  }

  v44 = v34;
  v45 = v62;
  NSUserDefaults.subscript.setter(&v65, v58, v36);

  _sypSgWOh_1(v67);
  (*(v38 + 32))(v57, v63, v44);
  return (*(v64 + 8))(v22, v68);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v19 = a5;
  v17 = a3;
  v18 = a4;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v15 - v12;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v13, a1, a2, v17, v18, AssociatedTypeWitness, v16, a6);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, partial apply for closure #1 in static ArrayBuilder.buildExpression(_:), v13, a2, a3, a4, a5, a6);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v12 - v9;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v10, a1, a2, AssociatedTypeWitness, v12, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSUserDefaults.Migrator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, a3, v14);
  *v16 = v5;
  (*(v9 + 32))(&v16[*(v12 + 44)], v11, a3);
  v17 = v5;
  NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v20, v12, a3, a4, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v10 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v8, a1, AssociatedTypeWitness, v10, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier);

  return swift_deallocClassInstance();
}

void closure #1 in static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static NSUserDefaults._Observer.shared;
  v3 = *(static NSUserDefaults._Observer.shared + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in NSUserDefaults._Observer.removeObserver(identifiedBy:)(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a5;
  v17[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = v17 - v13;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v14, a2, a3, a4, v17[0], AssociatedTypeWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t closure #1 in NSUserDefaults._Observer.addObserver(identifiedBy:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v57 = a2;

  v10 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in NSUserDefaults._Observer.addObserver(identifiedBy:handler:), v56, v9);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v50 = v4;
  }

  else
  {
    type metadata accessor for UIAction(0, &_sSo14NSUserDefaultsCML_0);
    v15 = (a2 + *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) + 20));
    v10 = *v15;
    v12 = v15[1];

    v16 = NSUserDefaults.init(suite:)(v10, v12);
    if (!v16)
    {
      lazy protocol witness table accessor for type NSUserDefaults.Error and conformance NSUserDefaults.Error();
      swift_allocError();
      *v47 = v10;
      v47[1] = v12;
      swift_willThrow();
    }

    v14 = v16;
    v50 = v4;
  }

  v17 = *(a1 + v8);
  v18 = *(v17 + 16);

  v19 = v14;
  if (v18)
  {

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12, v19);
    if (v21)
    {
      v48 = *(*(v17 + 56) + 8 * v20);

      goto LABEL_10;
    }
  }

  v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
LABEL_10:
  v22 = *(a1 + v8);
  v23 = *(v22 + 16);
  v49 = v10;
  if (!v23)
  {
LABEL_17:
    v33 = _swiftEmptyArrayStorage;
LABEL_18:
    v34 = (a2 + *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) + 24));
    v29 = *v34;
    v30 = v34[1];
    v35 = String._bridgeToObjectiveC()();
    [v19 addObserver:a1 forKeyPath:v35 options:0 context:0];

    goto LABEL_19;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12, v19);
  if ((v25 & 1) == 0 || (v26 = *(*(v22 + 56) + 8 * v24), , , v27 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0), !*(v26 + 16)) || (v28 = (a2 + *(v27 + 24)), v29 = *v28, v30 = v28[1], v31 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(*v28, v30), (v32 & 1) == 0))
  {

    goto LABEL_17;
  }

  v33 = *(*(v26 + 56) + 8 * v31);

  if (!v33[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v36 = type metadata accessor for UUID();
  v37 = v55;
  (*(*(v36 - 8) + 16))(v55, a2, v36);
  v38 = (v37 + *(v51 + 20));
  v39 = v53;
  *v38 = v52;
  v38[1] = v39;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
  }

  v41 = v33[2];
  v40 = v33[3];
  if (v41 >= v40 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v33);
  }

  v33[2] = (v41 + 1);
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v55, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, type metadata accessor for NSUserDefaults._Observer.HandlerAssociation);

  v42 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v42;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v29, v30, isUniquelyReferenced_nonNull_native);

  v44 = v58;
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v49, v12, v19, v45);

  *(a1 + v8) = v59;
  swift_endAccess();
}

uint64_t sub_100427220()
{
  v1 = *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t closure #1 in NSUserDefaults._Observer.removeObserver(identifiedBy:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v43 = a2;

  v9 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in NSUserDefaults._Observer.removeObserver(identifiedBy:), v42, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v41 = v9;
    v17 = (a2 + *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v15 + 16);

    if (v20 && (v40 = v18, v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v18, v19), (v22 & 1) != 0))
    {
      v39 = v19;
      v23 = *(*(v15 + 56) + 8 * v21);

      v47 = v23;
      __chkstk_darwin(v24);
      *(&v36 - 2) = a2;

      v38 = specialized Collection.firstIndex(where:)(partial apply for closure #2 in closure #1 in NSUserDefaults._Observer.removeObserver(identifiedBy:), (&v36 - 4), v23);
      v26 = v25;

      if (v26)
      {
      }

      else
      {

        v27 = v13;
        specialized Array.remove(at:)(v38, v6);
        outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v6, type metadata accessor for NSUserDefaults._Observer.HandlerAssociation);
        v38 = v47;
        v28 = v39;
        if (!*(v47 + 16))
        {
          v29 = v27;
          v30 = String._bridgeToObjectiveC()();
          [v29 removeObserver:a1 forKeyPath:v30];
        }

        v31 = v27;
        v37 = NSUserDefaults._Observer.registeredSuites.modify();
        v33 = specialized Dictionary.subscript.modify(v45, v41, v11, v31);
        if (*v32)
        {
          v34 = v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *v34;
          *v34 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v40, v28, isUniquelyReferenced_nonNull_native);

          *v34 = v44;
        }

        else
        {
        }

        (v33)(v45, 0);

        (v37)(v46, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

BOOL closure #1 in closure #1 in NSUserDefaults._Observer.addObserver(identifiedBy:handler:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

void NSUserDefaults._Observer.observeValue(forKeyPath:of:change:context:)(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v10 = type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (!a2)
  {
LABEL_12:
    _sypSgWOc_1(a3, &v41);
    v27 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v28 = __swift_project_boxed_opaque_existential_0Tm(&v41, *(&v42 + 1));
      v29 = *(v27 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v29 + 8))(v32, v27);
      __swift_destroy_boxed_opaque_existential_0Tm(&v41);
      if (a4)
      {
LABEL_14:
        type metadata accessor for NSKeyValueChangeKey(0);
        lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
        v34.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_17:
        v35 = type metadata accessor for NSUserDefaults._Observer();
        v40.receiver = v5;
        v40.super_class = v35;
        objc_msgSendSuper2(&v40, "observeValueForKeyPath:ofObject:change:context:", a2, v33, v34.super.isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v33 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v34.super.isa = 0;
    goto LABEL_17;
  }

  v15 = v12;
  _sypSgWOc_1(a3, &v41);
  if (!*(&v42 + 1))
  {
    _sypSgWOh_1(&v41);
    goto LABEL_11;
  }

  type metadata accessor for UIAction(0, &_sSo14NSUserDefaultsCML_0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }

  v16 = v39;
  v17 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = v16;
  closure #1 in NSUserDefaults._Observer.observeValue(forKeyPath:of:change:context:)(v5, v16, v38, v37, &v41);
  os_unfair_lock_unlock(*(v17 + 16));
  v19 = *(v41 + 16);
  if (v19)
  {
    v20 = &v14[*(v15 + 20)];
    v21 = *(v11 + 80);
    v36[1] = v41;
    v22 = v41 + ((v21 + 32) & ~v21);
    v23 = *(v11 + 72);
    do
    {
      outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(v22, v14, type metadata accessor for NSUserDefaults._Observer.HandlerAssociation);
      v24 = *v20;
      v25 = String._bridgeToObjectiveC()();
      v26 = [v18 valueForKey:v25];

      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v24(&v41);
      _sypSgWOh_1(&v41);
      outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v14, type metadata accessor for NSUserDefaults._Observer.HandlerAssociation);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {
  }
}

uint64_t closure #1 in NSUserDefaults._Observer.observeValue(forKeyPath:of:change:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, id **a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  result = swift_beginAccess();
  v12 = 0;
  v13 = *(a1 + v10);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = _swiftEmptyArrayStorage;
  while (v16)
  {
    v18 = v12;
LABEL_10:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    if (*(*(v13 + 48) + 24 * v20 + 16) == a2)
    {
      v21 = *(*(v13 + 56) + 8 * v20);
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
LABEL_19:
        v28 = __clz(__rbit64(v24)) | (v26 << 6);
        v29 = (*(v21 + 48) + 16 * v28);
        v17 = *(*(v21 + 56) + 8 * v28);
        if (*v29 != a3 || v29[1] != a4)
        {
          v24 &= v24 - 1;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_29;
        }

        if (v27 >= v25)
        {
          v17 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= ((v14 + 63) >> 6))
    {
LABEL_27:
      *a5 = v17;
      return result;
    }

    v16 = *(v13 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSUserDefaults._Observer.SuiteAssociation(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

id NSUserDefaults._Observer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSUserDefaults._Observer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v7];

  return outlined consume of Data._Representation(v3, v5);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    _sypSgWOh_1(v13);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v9, v10);

  v7 = 0;
  return (*(*(a1 - 8) + 56))(a2, v7, 1, a1);
}

uint64_t one-time initialization function for userDefaults()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.userDefaults);
  __swift_project_value_buffer(v0, static Logger.userDefaults);
  return Logger.init(subsystem:category:)();
}

uint64_t specialized UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a2 + 16);
  __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v11);
  (*(v7 + 16))(v10, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v15 + 32))(boxed_opaque_existential_1, v10, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v11);
}

uint64_t specialized NSUserDefaults.subscript.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v6[-v3];
  dispatch thunk of RawRepresentable.rawValue.getter();
  _sypSgWOc_1(a1, v6);
  NSUserDefaults.subscript.setter(v6, v4, AssociatedTypeWitness);
  return _sypSgWOh_1(a1);
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Suite and conformance NSUserDefaults.Suite()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Suite and conformance NSUserDefaults.Suite;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Suite and conformance NSUserDefaults.Suite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Suite and conformance NSUserDefaults.Suite);
  }

  return result;
}

uint64_t type metadata completion function for UserDefault()
{
  result = type metadata accessor for UIAction(319, &_sSo14NSUserDefaultsCML_0);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefault(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for UserDefault(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t type metadata instantiation function for NSUserDefaults.ValueTransformer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for NSUserDefaults.Migrator()
{
  result = type metadata accessor for UIAction(319, &_sSo14NSUserDefaultsCML_0);
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

uint64_t getEnumTagSinglePayload for NSUserDefaults.Migrator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void storeEnumTagSinglePayload for NSUserDefaults.Migrator(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t type metadata completion function for NSUserDefaults.KeyValueRegistration()
{
  result = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(319);
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

uint64_t sub_1004295CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10042969C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for NSUserDefaults._Observer.HandlerAssociation()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = _syycMa_1();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t _syycMa_1()
{
  result = _syycML_1;
  if (!_syycML_1)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &_syycML_1);
  }

  return result;
}

uint64_t type metadata completion function for NSUserDefaults.Migrator.Error(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_100429914(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004299E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for NSUserDefaults.KeyValueRegistration.Identifier()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation;
  if (!lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults._Observer.SuiteAssociation and conformance NSUserDefaults._Observer.SuiteAssociation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  result = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
  }

  return result;
}

uint64_t outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Error and conformance NSUserDefaults.Error()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Error and conformance NSUserDefaults.Error);
  }

  return result;
}

uint64_t outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t one-time initialization function for http()
{
  result = _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(&outlined read-only object #0 of one-time initialization function for httpOnly);
  static URL.ITMSSchemes.http = &outlined read-only object #0 of one-time initialization function for standard;
  return result;
}

uint64_t one-time initialization function for https()
{
  v0 = 10;
  _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0(0, 10, 0);
  v1 = &unk_1005CDF80;
  do
  {
    v7 = *(v1 - 1);
    v8 = *v1;
    swift_bridgeObjectRetain_n();
    v2._countAndFlagsBits = 115;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);

    v4 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage[3];
    if (v4 >= v3 >> 1)
    {
      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0((v3 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = (v4 + 1);
    v5 = &_swiftEmptyArrayStorage[2 * v4];
    v5[4] = v7;
    v5[5] = v8;
    v1 += 2;
    --v0;
  }

  while (v0);
  result = _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(&outlined read-only object #0 of one-time initialization function for httpsOnly);
  static URL.ITMSSchemes.https = _swiftEmptyArrayStorage;
  return result;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TaskPriority?(v4, &_s10Foundation13URLComponentsVSgMd_0);
LABEL_9:
    v15 = type metadata accessor for URL();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = URLComponents.scheme.getter();
  if (!v10)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  if (one-time initialization token for https != -1)
  {
    v9 = swift_once();
  }

  v20 = v11;
  v21 = v12;
  __chkstk_darwin(v9);
  *&v19[-16] = &v20;
  v14 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_1, &v19[-32], v13);
  if (v14)
  {
  }

  else
  {
    if (one-time initialization token for http != -1)
    {
      v14 = swift_once();
    }

    v20 = v11;
    v21 = v12;
    __chkstk_darwin(v14);
    *&v19[-16] = &v20;
    v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v19[-32], v17);

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  URLComponents.scheme.setter();
LABEL_14:
  URLComponents.url.getter();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = URLComponents.path.getter();
  v5 = specialized BidirectionalCollection.last.getter(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = URLComponents.path.modify();
      v10._countAndFlagsBits = countAndFlagsBits;
      v10._object = object;
      String.append(_:)(v10);
      v9(v16, 0);
      return;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v11 = String.withLeadingSlash.getter(countAndFlagsBits, object);
  v13 = v12;
  v14 = URLComponents.path.modify();
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  String.append(_:)(v15);

  v14(v16, 0);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t String.withLeadingSlash.getter(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = specialized Collection.first.getter(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7._countAndFlagsBits = v3;
    v7._object = a2;
    String.append(_:)(v7);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (URLComponents.queryItems.getter())
  {

    _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation12URLQueryItemV_SayAGGTg5_0(v1);
  }

  else
  {
  }

  URLComponents.queryItems.setter();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12URLQueryItemVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    result = URLComponents.queryItems.getter();
    if (!result)
    {
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    v15 = result;
    v25 = v13;
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v30 = *(result + 16);
    if (!v30)
    {
LABEL_18:

      (*(v26 + 8))(v25, v27);
      v24 = v28;
      (*(v1 + 56))(v28, 1, 1, v0);
      outlined destroy of TaskPriority?(v24, &_s10Foundation12URLQueryItemVSgMd);
      return 0;
    }

    v16 = 0;
    v17 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v29 = 0x80000001004D6110;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v17 + *(v1 + 72) * v16, v0);
      if (URLQueryItem.name.getter() == 0x6E6F69746361 && v19 == 0xE600000000000000)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v21 = URLQueryItem.value.getter();
      if (v22)
      {
        if (v21 == 0xD000000000000016 && v22 == v29)
        {

LABEL_17:
          (*(v26 + 8))(v25, v27);

          v23 = v28;
          (*(v1 + 32))(v28, v3, v0);
          (*(v1 + 56))(v23, 0, 1, v0);
          outlined destroy of TaskPriority?(v23, &_s10Foundation12URLQueryItemVSgMd);
          return 1;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v16;
      result = (*(v1 + 8))(v3, v0);
      if (v30 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  outlined destroy of TaskPriority?(v9, &_s10Foundation13URLComponentsVSgMd_0);
  return 0;
}

id *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_0(id *a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(id *result, int64_t a2, char a3, id *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D4Line_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}