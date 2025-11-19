uint64_t sub_1D68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_1E04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_28C4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_203C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_20A8(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_2114(void *a1, uint64_t a2)
{
  v4 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_21C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_2244()
{
  v2 = *v0;
  sub_B7EB0();
  sub_B7880();
  return sub_B7EE0();
}

void *sub_22A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C0(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC60, type metadata accessor for SPBeaconSharingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_232C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC60, type metadata accessor for SPBeaconSharingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_239C(uint64_t a1)
{
  v2 = sub_2498(&qword_EEC98, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_2498(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2734(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_27CC()
{
  result = qword_EEC88;
  if (!qword_EEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEC88);
  }

  return result;
}

uint64_t sub_28C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t static Destination.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a1;
  v70 = a2;
  v63 = *(a5 - 8);
  v5 = *(v63 + 64);
  v6 = __chkstk_darwin(a1);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v6);
  v58 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v10);
  v56 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v15;
  v67 = v16;
  v71[0] = v16;
  v71[1] = v17;
  v64 = v17;
  v65 = v18;
  v71[2] = v18;
  v71[3] = v15;
  v60 = v19;
  v61 = v20;
  v71[4] = v19;
  v71[5] = v20;
  v21 = type metadata accessor for Destination(0, v71);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v56 - v28;
  __chkstk_darwin(v27);
  v31 = &v56 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  v33 = *(v68 + 64);
  v34 = __chkstk_darwin(TupleTypeMetadata2);
  v36 = &v56 - v35;
  v37 = *(v34 + 48);
  v38 = *(v22 + 16);
  v38(&v56 - v35, v69, v21);
  v38(&v36[v37], v70, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v48 = v66;
    v47 = v67;
    v38(v31, v36, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v56;
      (*(v48 + 32))(v56, &v36[v37], v47);
      v54 = *(*(v57 + 8) + 8);
      v44 = sub_B78C0();
      v55 = *(v48 + 8);
      v55(v53, v47);
      v55(v31, v47);
      goto LABEL_13;
    }

    (*(v48 + 8))(v31, v47);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v38(v26, v36, v21);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = v63;
      v50 = v59;
      v42 = v65;
      (*(v63 + 32))(v59, &v36[v37], v65);
      v51 = *(*(v61 + 8) + 8);
      v44 = sub_B78C0();
      v45 = *(v49 + 8);
      v45(v50, v42);
      v46 = v26;
      goto LABEL_9;
    }

    (*(v63 + 8))(v26, v65);
LABEL_12:
    v44 = 0;
    v22 = v68;
    v21 = TupleTypeMetadata2;
    goto LABEL_13;
  }

  v38(v29, v36, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v29, v64);
    goto LABEL_12;
  }

  v40 = v62;
  v41 = v58;
  v42 = v64;
  (*(v62 + 32))(v58, &v36[v37], v64);
  v43 = *(*(v60 + 8) + 8);
  v44 = sub_B78C0();
  v45 = *(v40 + 8);
  v45(v41, v42);
  v46 = v29;
LABEL_9:
  v45(v46, v42);
LABEL_13:
  (*(v22 + 8))(v36, v21);
  return v44 & 1;
}

uint64_t Destination.hash(into:)(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(v5);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v34;
      (*(v34 + 32))(v13, v24, v9);
      sub_B7EC0(1uLL);
      v29 = *(a2[6] + 8);
      sub_B7880();
      return (*(v28 + 8))(v13, v9);
    }

    else
    {
      v32 = v35;
      (*(v35 + 32))(v7, v24, v3);
      sub_B7EC0(2uLL);
      v33 = *(a2[7] + 8);
      sub_B7880();
      return (*(v32 + 8))(v7, v3);
    }
  }

  else
  {
    (*(v16 + 32))(v20, v24, v15);
    sub_B7EC0(0);
    v31 = *(a2[5] + 8);
    sub_B7880();
    return (*(v16 + 8))(v20, v15);
  }
}

Swift::Int Destination.hashValue.getter(void *a1)
{
  sub_B7EB0();
  Destination.hash(into:)(v3, a1);
  return sub_B7EE0();
}

Swift::Int sub_3278(uint64_t a1, void *a2)
{
  sub_B7EB0();
  Destination.hash(into:)(v4, a2);
  return sub_B7EE0();
}

uint64_t sub_32BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[5];
  v4 = a3[6];
  v5 = a3[7];
  return static Destination.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4]);
}

uint64_t sub_32D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = Path.id.getter(a1, WitnessTable);
  *a2 = result;
  return result;
}

uint64_t Destination.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload)
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    v13 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_34A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v17 = *(a3 + a4 - 48);
  v6 = sub_B7BE0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v11 = *(v10 + 16);
  v12 = *(v5 - 32);
  v15 = *(v5 - 16);
  v16 = v12;
  v11(v9, a1);
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v13 = type metadata accessor for Destination(0, v18);
  return Destination.stack.setter(v9, v13);
}

uint64_t Destination.stack.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.stack.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v7 = *(a2 + 16);
  v8 = sub_B7BE0();
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  Destination.stack.getter(a2, v11);
  return sub_37D0;
}

uint64_t Destination.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 24);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a1 + 24);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

uint64_t sub_3968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 48);
  v7 = *(a3 + a4 - 8);
  v17 = *(a3 + a4 - 40);
  v8 = sub_B7BE0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v13 = *(v12 + 16);
  v16 = *(v5 - 24);
  v13(v11, a1);
  v18 = v6;
  v19 = v17;
  v20 = v16;
  v21 = v7;
  v14 = type metadata accessor for Destination(0, &v18);
  return Destination.sheet.setter(v11, v14);
}

uint64_t Destination.sheet.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.sheet.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v7 = *(a2 + 24);
  v8 = sub_B7BE0();
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  Destination.sheet.getter(a2, v11);
  return sub_3CA8;
}

uint64_t Destination.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 32);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 2)
  {
    v12 = *(a1 + 32);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

uint64_t sub_3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 32);
  v8[0] = *(a2 + a3 - 48);
  v8[1] = v5;
  v8[2] = *(a2 + a3 - 16);
  v6 = type metadata accessor for Destination(0, v8);
  return a4(v6);
}

uint64_t sub_3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v17 = *(a3 + a4 - 32);
  v6 = sub_B7BE0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v11 = *(v10 + 16);
  v12 = *(v5 - 16);
  v15 = *(v5 - 48);
  v16 = v12;
  v11(v9, a1);
  v18[0] = v15;
  v18[1] = v17;
  v18[2] = v16;
  v13 = type metadata accessor for Destination(0, v18);
  return Destination.alert.setter(v9, v13);
}

uint64_t Destination.alert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.alert.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v7 = *(a2 + 32);
  v8 = sub_B7BE0();
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  Destination.alert.getter(a2, v11);
  return sub_41D4;
}

void sub_41EC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = v4[1];
    a3((*a1)[5], *v4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*sub_42C0(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.stack.modify(v4, a2);
  return sub_60EC;
}

uint64_t (*sub_4340(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.sheet.modify(v4, a2);
  return sub_60EC;
}

uint64_t (*sub_43C0(void *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.alert.modify(v4, a2);
  return sub_4438;
}

void sub_443C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Optional<A>.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 32))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t Optional<A>.stack.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v21 - v9;
  v11 = sub_B7BE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v12 + 16))(&v21 - v17, a1, v11);
  if ((*(v7 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(a1, v11);
    v19 = v22;
    (*(*(a2 - 8) + 8))(v22, a2);
    return (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v10, v18, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v22, 1, v5))
    {
      (*(v7 + 16))(v16, v10, AssociatedTypeWitness);
      (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
      (*(v21 + 40))(v16, v5);
    }

    (*(v12 + 8))(a1, v11);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }
}

void (*Optional<A>.stack.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v10 = sub_B7BE0();
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v8[6] = v13;
  Optional<A>.stack.getter(a2, a3, v13);
  return sub_4AD8;
}

uint64_t Optional<A>.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t Optional<A>.sheet.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v21 - v9;
  v11 = sub_B7BE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v12 + 16))(&v21 - v17, a1, v11);
  if ((*(v7 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(a1, v11);
    v19 = v22;
    (*(*(a2 - 8) + 8))(v22, a2);
    return (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v10, v18, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v22, 1, v5))
    {
      (*(v7 + 16))(v16, v10, AssociatedTypeWitness);
      (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
      (*(v21 + 64))(v16, v5);
    }

    (*(v12 + 8))(a1, v11);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }
}

void (*Optional<A>.sheet.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v10 = sub_B7BE0();
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v8[6] = v13;
  Optional<A>.sheet.getter(a2, a3, v13);
  return sub_5144;
}

uint64_t Optional<A>.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 80))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t sub_5330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v10 = sub_B7BE0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a1);
  v15 = sub_B7BE0();
  return a6(v13, v15, v9);
}

uint64_t Optional<A>.alert.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v21 - v9;
  v11 = sub_B7BE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v12 + 16))(&v21 - v17, a1, v11);
  if ((*(v7 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(a1, v11);
    v19 = v22;
    (*(*(a2 - 8) + 8))(v22, a2);
    return (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v10, v18, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v22, 1, v5))
    {
      (*(v7 + 16))(v16, v10, AssociatedTypeWitness);
      (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
      (*(v21 + 88))(v16, v5);
    }

    (*(v12 + 8))(a1, v11);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }
}

void (*Optional<A>.alert.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v10 = sub_B7BE0();
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v8[6] = v13;
  Optional<A>.alert.getter(a2, a3, v13);
  return sub_58BC;
}

void sub_58D4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v4[3];
    v8 = v4[4];
    v10 = v4[1];
    v9 = v4[2];
    v11 = *v4;
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v11, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v12 = v4[2];
    a3((*a1)[6], *v4, v4[1]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_59B4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_5A78(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_5B5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t keypath_get_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v8 = sub_B7BE0();
  return a4(v8, v7);
}

uint64_t sub_5C70(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5D04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_5E4C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_41:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_26;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t DetailsSectionRowView.State.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DelegatedSharesInvalidator.init(urlInvalidationBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_B6E60();
  result = sub_B71F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_6240(uint64_t a1, int a2)
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

uint64_t sub_6288(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppMainView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppMainView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_63C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ContactPickerView();
  sub_A310(v1 + *(v12 + 20), v11, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B6B50();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_B7B50();
    v16 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ContactPickerView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for ContactPickerView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ContactPickerView()
{
  result = qword_EEEF0;
  if (!qword_EEEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v83 = *(v90 - 8);
  v2 = *(v83 + 64);
  __chkstk_darwin(v90);
  v69 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v86 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v69 - v8;
  v9 = type metadata accessor for ContactPickerView();
  v81 = *(v9 - 8);
  v89 = *(v81 + 64);
  __chkstk_darwin(v9 - 8);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_B6DF0();
  v72 = *(v74 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v74);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE10, &qword_BD538);
  v75 = *(v73 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v73);
  v16 = &v69 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE18, &qword_BD540);
  v77 = *(v76 - 8);
  v17 = *(v77 + 64);
  __chkstk_darwin(v76);
  v71 = &v69 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE20, &qword_BD548);
  v79 = *(v91 - 8);
  v19 = *(v79 + 64);
  __chkstk_darwin(v91);
  v88 = &v69 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE28, &qword_BD550);
  v84 = *(v85 - 8);
  v21 = *(v84 + 64);
  __chkstk_darwin(v85);
  v92 = &v69 - v22;
  v23 = *v1;
  swift_getKeyPath();
  v94 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v98 = v23;
  v93 = sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);

  sub_B65C0();

  v24 = *(v23 + 113);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v98 = v23;
  v99 = KeyPath;
  v100 = sub_9734;
  v101 = v26;
  v27 = *(v23 + 24);
  v96 = *(v23 + 16);
  v97 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE38, &unk_BD5B0);
  v29 = sub_A464(&qword_EEE40, &qword_EEE38, &unk_BD5B0, sub_9794);
  v30 = sub_97E8();
  sub_B72D0();

  v31 = v72;
  v32 = v74;
  (*(v72 + 104))(v13, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v74);
  v98 = v28;
  v99 = &type metadata for String;
  v100 = v29;
  v101 = v30;
  v78 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v71;
  v35 = v73;
  sub_B73C0();
  (*(v31 + 8))(v13, v32);
  (*(v75 + 8))(v16, v35);
  v36 = v70;
  v95 = v70;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE60, &qword_BD5C0);
  v98 = v35;
  v99 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_A8CC(&qword_EEE68, &qword_EEE60, &qword_BD5C0);
  v40 = v76;
  sub_B7450();
  (*(v77 + 8))(v34, v40);
  swift_getKeyPath();
  v98 = v23;
  sub_B65C0();

  LOBYTE(v96) = *(v23 + 114);
  v41 = v80;
  sub_9870(v36, v80);
  v42 = *(v81 + 80);
  v77 = ~v42;
  v43 = swift_allocObject();
  sub_98D8(v41, v43 + ((v42 + 16) & ~v42));
  v98 = v40;
  v99 = v37;
  v100 = v38;
  v101 = v39;
  v44 = v90;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v91;
  v81 = v45;
  v47 = v88;
  sub_B7470();
  v48 = v83;

  (*(v79 + 8))(v47, v46);
  swift_getKeyPath();
  v98 = v23;
  sub_B65C0();
  v49 = v82;

  v50 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  v88 = v50;
  sub_A310(v23 + v50, v49, &qword_EEE08, &qword_BD530);
  if ((*(v48 + 48))(v49, 1, v44))
  {
    sub_A194(v49, &qword_EEE08, &qword_BD530);
    v51 = 0xE100000000000000;
    v52 = 45;
  }

  else
  {
    v53 = v69;
    (*(v48 + 16))(v69, v49, v44);
    sub_A194(v49, &qword_EEE08, &qword_BD530);
    v52 = sub_B6920();
    v51 = v54;
    (*(v48 + 8))(v53, v44);
  }

  v98 = v52;
  v99 = v51;
  v83 = sub_B7200();
  v82 = v55;
  LODWORD(v78) = v56;
  v79 = v57;
  sub_9870(v36, v41);
  sub_B7A60();
  v58 = sub_B7A50();
  v59 = (v42 + 32) & v77;
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = &protocol witness table for MainActor;
  sub_98D8(v41, v60 + v59);
  sub_9870(v36, v41);
  v61 = sub_B7A50();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = &protocol witness table for MainActor;
  sub_98D8(v41, v62 + v59);
  sub_B76D0();
  swift_getKeyPath();
  v98 = v23;
  sub_B65C0();

  v63 = v86;
  sub_A310(&v88[v23], v86, &qword_EEE08, &qword_BD530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v98 = v91;
  v99 = &type metadata for Bool;
  v100 = v81;
  v101 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  v64 = v85;
  LOBYTE(v59) = v78;
  v65 = v83;
  v66 = v82;
  v67 = v92;
  sub_B73F0();

  sub_9C84(v65, v66, v59 & 1);

  sub_A194(v63, &qword_EEE08, &qword_BD530);
  return (*(v84 + 8))(v67, v64);
}

uint64_t sub_7398@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF58, &qword_BD700);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v42 = &v35 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF60, &qword_BD708);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v37 = &v35 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF68, &qword_BD710);
  v36 = *(v41 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v41);
  v35 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_B6F50();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF78, &qword_BD720);
  v19 = *(v40 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v40);
  v22 = &v35 - v21;
  sub_B7A60();
  v39 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_B6F20();
  __chkstk_darwin(v23);
  *(&v35 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF80, &qword_BD728);
  sub_A380();
  sub_B6A80();
  if (*(*a1 + 32) == 1)
  {
    v24 = sub_B6F30();
    __chkstk_darwin(v24);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFF0, &qword_BD758);
    sub_A7E8();
    v25 = v35;
    sub_B6A80();
    v26 = sub_A8CC(&qword_EEFE8, &qword_EEF68, &qword_BD710);
    v27 = v37;
    v28 = v41;
    sub_B6F60();
    v29 = v38;
    (*(v5 + 16))(v14, v27, v38);
    (*(v5 + 56))(v14, 0, 1, v29);
    v45 = v28;
    v46 = v26;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A708(v14);
    (*(v5 + 8))(v27, v29);
    (*(v36 + 8))(v25, v28);
  }

  else
  {
    (*(v5 + 56))(v14, 1, 1, v38);
    v30 = sub_A8CC(&qword_EEFE8, &qword_EEF68, &qword_BD710);
    v45 = v41;
    v46 = v30;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A708(v14);
  }

  v31 = v42;
  v32 = *(v43 + 48);
  v33 = v40;
  (*(v19 + 16))(v42, v22, v40);
  sub_A770(v16, &v31[v32]);
  sub_B6EE0();
  sub_A708(v16);
  (*(v19 + 8))(v22, v33);
}

uint64_t sub_79F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_B6C50();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B6ED0();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_B6700();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_B6720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFB0, &qword_BD740);
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFA8, &qword_BD738);
  v21 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v57 = &v47 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF98, &qword_BD730);
  v23 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v56 = &v47 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF80, &qword_BD728);
  v25 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v53 = &v47 - v26;
  sub_B7A60();
  v51 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = *a1;
  v29 = *(*a1 + 40);
  v28 = *(v27 + 48);

  v29(sub_AA90, v27);

  sub_B6710();
  sub_B6EC0();
  v30 = sub_A6C0(&qword_EEFB8, &type metadata accessor for GenericControl);
  v31 = sub_A6C0(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle);
  sub_B7240();
  (*(v50 + 8))(v9, v6);
  (*(v13 + 8))(v16, v12);
  v32 = v52;
  sub_B6C40();
  v61 = v12;
  v62 = v6;
  v63 = v30;
  v64 = v31;
  v33 = 1;
  swift_getOpaqueTypeConformance2();
  v34 = v57;
  v35 = v48;
  sub_B72E0();
  (*(v58 + 8))(v32, v59);
  (*(v47 + 8))(v20, v35);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v61 = v27;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v37 = *(v27 + 113);
  v38 = v34 + *(v49 + 36);
  *v38 = KeyPath;
  *(v38 + 8) = v37;
  swift_getKeyPath();
  v61 = v27;
  sub_B65C0();

  if (*(v27 + 112) == 1)
  {
    swift_getKeyPath();
    v61 = v27;
    sub_B65C0();

    v33 = *(v27 + 113);
  }

  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v41 = v56;
  sub_AB00(v34, v56, &qword_EEFA8, &qword_BD738);
  v42 = (v41 + *(v54 + 36));
  *v42 = v39;
  v42[1] = sub_AB90;
  v42[2] = v40;
  v43 = swift_getKeyPath();
  v44 = v53;
  sub_AB00(v41, v53, &qword_EEF98, &qword_BD730);
  v45 = v44 + *(v55 + 36);
  *v45 = v43;
  *(v45 + 8) = 2;
  sub_AB00(v44, v60, &qword_EEF80, &qword_BD728);
}

uint64_t sub_815C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactPickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_B6A00();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B69F0();
  sub_9870(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_98D8(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_B7620();
  v11 = *a1;
  swift_getKeyPath();
  v16[1] = v11;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  LOBYTE(v11) = *(v11 + 113);
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEFF0, &qword_BD758);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_AB90;
  v15[2] = v13;
  return result;
}

uint64_t sub_83FC()
{
  v0 = sub_B6B50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_63C4(v4);
  sub_B6B40();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_8540(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_B6B50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v9 == v10)
  {
  }

  else
  {
    sub_63C4(v8);
    sub_B6B40();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_86D8@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v12 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a1;
  swift_getKeyPath();
  v12[1] = v8;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v9 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  sub_A310(v8 + v9, v7, &qword_EEE08, &qword_BD530);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  LOBYTE(v8) = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
  sub_A194(v7, &qword_EEE08, &qword_BD530);

  *a2 = v8;
  return result;
}

uint64_t sub_88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v13[-2] = v9;
  v13[-1] = v8;
  v13[1] = v9;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65B0();

  sub_A194(v8, &qword_EEE08, &qword_BD530);
}

uint64_t sub_8AF8()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  sub_B6930();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_8CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[2] = sub_B68C0();
  v23[3] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_A194(v11, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v11, v17);
  }

  (*(v4 + 16))(v7, a1, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v7, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_9018()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_90E0@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  sub_B6940();
  sub_97E8();
  v2 = sub_B7200();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_91DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 113);
  return result;
}

uint64_t sub_92AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 114);
  return result;
}

uint64_t sub_937C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  return sub_A310(v3 + v4, a2, &qword_EEE08, &qword_BD530);
}

uint64_t sub_9454(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_A310(a1, &v10[-v6], &qword_EEE08, &qword_BD530);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_A6C0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65B0();

  return sub_A194(v7, &qword_EEE08, &qword_BD530);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_9660@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_9690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D90();
  *a1 = result & 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_9794()
{
  result = qword_EF120;
  if (!qword_EF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF120);
  }

  return result;
}

unint64_t sub_97E8()
{
  result = qword_EEE58;
  if (!qword_EEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE58);
  }

  return result;
}

uint64_t sub_9870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_993C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for ContactPickerView() - 8) + 80);

  return sub_8540(a1, a2);
}

uint64_t sub_99C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactPickerView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_86D8(v6, a1);
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for ContactPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_B6B50();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_9B60(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactPickerView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_88E0(a1, v4, v5, v6);
}

unint64_t sub_9BD4()
{
  result = qword_EEE78;
  if (!qword_EEE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE78);
  }

  return result;
}

uint64_t sub_9C84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9CC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_9D94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_9E44()
{
  type metadata accessor for ContactPickerViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_9EC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9EC8()
{
  if (!qword_EEF00)
  {
    sub_B6B50();
    v0 = sub_B6A50();
    if (!v1)
    {
      atomic_store(v0, &qword_EEF00);
    }
  }
}

uint64_t sub_9F20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE28, &qword_BD550);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE00, &unk_BDA40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE20, &qword_BD548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE18, &qword_BD540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE60, &qword_BD5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE10, &qword_BD538);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE38, &unk_BD5B0);
  sub_A464(&qword_EEE40, &qword_EEE38, &unk_BD5B0, sub_9794);
  sub_97E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_A8CC(&qword_EEE68, &qword_EEE60, &qword_BD5C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_A1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A288()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);

  return sub_9018();
}

uint64_t sub_A310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_A380()
{
  result = qword_EEF88;
  if (!qword_EEF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEF80, &qword_BD728);
    sub_A464(&qword_EEF90, &qword_EEF98, &qword_BD730, sub_A514);
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEF88);
  }

  return result;
}

uint64_t sub_A464(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A514()
{
  result = qword_EEFA0;
  if (!qword_EEFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFA8, &qword_BD738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFB0, &qword_BD740);
    sub_B6720();
    sub_B6ED0();
    sub_A6C0(&qword_EEFB8, &type metadata accessor for GenericControl);
    sub_A6C0(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEFC8, &qword_EEFD0, &qword_BD748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEFA0);
  }

  return result;
}

uint64_t sub_A6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF70, &qword_BD718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A7E8()
{
  result = qword_EEFF8;
  if (!qword_EEFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEFF0, &qword_BD758);
    sub_A8CC(&qword_EF000, &qword_EF008, &qword_BD760);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEFF8);
  }

  return result;
}

uint64_t sub_A8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for ContactPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_B6B50();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_AA30()
{
  v0 = *(*(type metadata accessor for ContactPickerView() - 8) + 80);

  return sub_83FC();
}

uint64_t sub_AA98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6CE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_AB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_AB94()
{
  v0 = type metadata accessor for ContactPickerViewControllerRepresentable.Coordinator();
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  swift_unknownObjectWeakInit();

  sub_B69B0();
  swift_weakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, "init");

  return v2;
}

uint64_t sub_AC78()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    v12[2] = OBJC_IVAR____TtCV13FindMyAppCore40ContactPickerViewControllerRepresentable11Coordinator_searchController;
    v12[3] = v0;
    v3 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13 = v2;
    sub_C444();

    sub_B65B0();

    swift_allocObject();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v6 = swift_getKeyPath();
    v12[1] = v12;
    __chkstk_darwin(v6);
    v13 = v2;

    sub_B65B0();

    swift_allocObject();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    v13 = v2;

    sub_B65B0();

    swift_allocObject();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    v13 = v2;

    sub_B65B0();
  }

  else
  {
    result = sub_B7D20();
    __break(1u);
  }

  return result;
}

void sub_B0D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong addRecipient:a1];
  }
}

void sub_B134(uint64_t a1, NSString a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      a2 = sub_B78E0();
    }

    [v4 setComposeFieldInfoText:a2];
  }
}

void sub_B1C0(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *a4;
    v9 = Strong;
    [Strong v8];
  }
}

id sub_B2C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactPickerViewControllerRepresentable.Coordinator()
{
  result = qword_EF050;
  if (!qword_EF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3D8()
{
  result = sub_B69C0();
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

void sub_B478(void *a1)
{
  v3 = *(*v1 + 96);
  isa = sub_B79D0().super.isa;
  [a1 setOtherRecipientAddresses:isa];
}

id sub_B4E8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_AB94();
  *a1 = result;
  return result;
}

uint64_t sub_B550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BAD8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_B5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BAD8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_B618()
{
  sub_BAD8();
  sub_B7050();
  __break(1u);
}

void sub_B984(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(id))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (swift_weakLoadStrong())
  {
    v9 = a4;
    v10 = a1;
    a6(v9);
  }

  else
  {
  }
}

unint64_t sub_BAD8()
{
  result = qword_EF128;
  if (!qword_EF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF128);
  }

  return result;
}

uint64_t sub_BB2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C6F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4);
}

uint64_t sub_BBF4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_C6C0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v6);
}

uint64_t sub_BD20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C690;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4);
}

uint64_t sub_BDE8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_C59C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v6);
}

uint64_t sub_BF14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C660;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4);
}

uint64_t sub_BFDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_C628;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v6);
}

uint64_t sub_C108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C444();
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_C5E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4);
}

uint64_t sub_C1D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_C59C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v3);
  sub_C444();
  sub_B65B0();
  sub_C618(v6);
}

id sub_C2FC()
{
  v0 = [objc_allocWithZone(CNAutocompleteSearchController) initWithSearchType:1];
  [v0 setExpandRecipientsInNamedGroups:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_EF130, &qword_BD968);
  sub_B7070();
  [v0 setDelegate:v2];

  sub_B7070();
  swift_unknownObjectWeakAssign();

  sub_B7070();
  sub_AC78();

  return v0;
}

uint64_t sub_C3DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_C444()
{
  result = qword_EEE30;
  if (!qword_EEE30)
  {
    type metadata accessor for ContactPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEE30);
  }

  return result;
}

uint64_t sub_C564()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C59C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_C5D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C5E8(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_C618(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C628(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_C660(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_C690(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_C6C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_C6F8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_C724(void *a1)
{
  v2 = v1;
  v4 = sub_B69A0();
  v5 = sub_B7B60();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_17834(0xD00000000000002ELL, 0x80000000000B8CD0, &v16);
    _os_log_impl(&dword_0, v4, v5, "ContactPickerViewModel: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v15 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v15 setDelegate:v2];
  sub_C9DC();
  v8 = sub_B7B10();
  [v15 setPredicateForEnablingContact:v8];

  v9 = sub_B7B10();
  [v15 setPredicateForSelectionOfContact:v9];

  v10 = sub_B7B10();
  [v15 setPredicateForSelectionOfProperty:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_BD800;
  *(v11 + 32) = sub_B7900();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_B7900();
  *(v11 + 56) = v13;
  isa = sub_B79D0().super.isa;

  [v15 setDisplayedPropertyKeys:isa];

  [a1 presentViewController:v15 animated:1 completion:0];
}

unint64_t sub_C9DC()
{
  result = qword_EF140;
  if (!qword_EF140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_EF140);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_CAF8()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 113);
}

uint64_t sub_CB98()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 112);
}

uint64_t sub_CC38()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  return *(v0 + 114);
}

uint64_t sub_CCD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  return sub_A310(v5 + v3, a1, &qword_EEE08, &qword_BD530);
}

uint64_t sub_CDB0(void *a1)
{
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  v3 = a1;
  v4 = sub_B69A0();
  v5 = sub_B7B30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_17834(0xD000000000000013, 0x80000000000B8FD0, &v14);
    *(v6 + 12) = 2080;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_B7900();
    v11 = v10;

    v12 = sub_17834(v9, v11, &v14);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - recipient: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  return sub_111DC(v3);
}

uint64_t sub_CF98(void *a1)
{
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = sub_B69C0();
  __swift_project_value_buffer(v2, qword_EF150);
  v3 = a1;
  v4 = sub_B69A0();
  v5 = sub_B7B30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_17834(0xD000000000000016, 0x80000000000B8F60, v14);
    *(v6 + 12) = 2080;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_B7900();
    v11 = v10;

    v12 = sub_17834(v9, v11, v14);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "FMRecipientsViewModel: %s - recipient: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  memset(v14, 0, sizeof(v14));
  v15 = -1;
  sub_11808(v14, v3);

  return sub_11D58(v3);
}

void sub_D1A0(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_B6370();
  v9 = *(v8 - 8);
  isa = v9[8].isa;
  v11 = __chkstk_darwin(v8);
  v12 = &v44 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = [a1 normalizedAddress];
  if (v15)
  {
    v45 = v7;
    v49 = v9;
    v16 = v14;
    v17 = v15;
    sub_B7900();
    v46 = v3;

    v48 = v16;
    sub_B6350();
    v18 = v1;
    sub_11D58(a1);
    v19 = sub_B7A80();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v49;
    (v49[2].isa)(v12, v16, v8);
    sub_B7A60();
    v44 = a1;

    v22 = sub_B7A50();
    v23 = *(v21 + 80);
    v24 = v8;
    v47 = v8;
    v25 = (v23 + 40) & ~v23;
    v26 = (isa + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v22;
    *(v27 + 3) = &protocol witness table for MainActor;
    *(v27 + 4) = v20;
    v21[4](&v27[v25], v12, v24);
    v28 = v44;
    *&v27[v26] = v44;
    *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v46;

    v29 = sub_30A3C(0, 0, v45, &unk_BDEE0, v27);
    swift_getKeyPath();
    v51[0] = v18;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v51[0] = v18;
    swift_getKeyPath();
    sub_B65E0();

    v30 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
    swift_beginAccess();
    v31 = *(v18 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v18 + v30);
    *(v18 + v30) = 0x8000000000000000;
    sub_19460(v29, v28, isUniquelyReferenced_nonNull_native);

    *(v18 + v30) = v50;
    swift_endAccess();
    v51[0] = v18;
    swift_getKeyPath();
    sub_B65D0();

    (v49[1].isa)(v48, v47);
  }

  else
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v33 = sub_B69C0();
    __swift_project_value_buffer(v33, qword_EF150);
    v34 = a1;
    v49 = sub_B69A0();
    v35 = sub_B7B40();

    if (os_log_type_enabled(v49, v35))
    {
      v36 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_17834(0xD000000000000024, 0x80000000000B8F30, v51);
      *(v36 + 12) = 2080;
      v37 = v34;
      v38 = [v37 description];
      v39 = sub_B7900();
      v41 = v40;

      v42 = sub_17834(v39, v41, v51);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_0, v49, v35, "FMRecipientsViewModel: %s - recipient: %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v43 = v49;
    }
  }
}

void sub_D7B4(void *a1)
{
  v2 = v1;
  v4 = [a1 contact];
  if ([a1 value])
  {
    sub_B7C00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (*(&v30 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v27;
      v5 = v28;

      v7 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    sub_A194(&v31, &qword_EF440, &qword_BDEC0);
  }

  if ([a1 value])
  {
    sub_B7C00();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (*(&v30 + 1))
  {
    sub_20A70(0, &qword_EF448, CNPhoneNumber_ptr);
    if (swift_dynamicCast())
    {
      v8 = [v27 stringValue];
      v6 = sub_B7900();
      v5 = v9;

      v7 = 1;
      if ((v5 & 0x2000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_A194(&v31, &qword_EF440, &qword_BDEC0);
  }

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v16 = sub_B69C0();
  __swift_project_value_buffer(v16, qword_EF150);
  v17 = a1;
  v18 = sub_B69A0();
  v19 = sub_B7B40();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v31 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_17834(0xD00000000000001CLL, 0x80000000000B8F10, &v31);
    *(v20 + 12) = 2080;
    v21 = v17;
    v22 = [v21 description];
    v23 = sub_B7900();
    v25 = v24;

    v26 = sub_17834(v23, v25, &v31);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_0, v18, v19, "ContactPickerViewModel: %s - Unknown contact: %s", v20, 0x16u);
    swift_arrayDestroy();

    goto LABEL_26;
  }

  v6 = 0;
  v5 = 0xE000000000000000;
  v7 = 5;
LABEL_24:

  if ((v5 & 0x2000000000000000) != 0)
  {
LABEL_14:
    if ((v5 & 0xF00000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_26:

    return;
  }

LABEL_25:
  if ((v6 & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = objc_allocWithZone(CNComposeRecipient);
  v11 = v4;
  v12 = sub_B78E0();

  v13 = [v10 initWithContact:v11 address:v12 kind:v7];

  if (v13)
  {
    swift_getKeyPath();
    *&v31 = v2;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v14 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8);

      v14(v13);

      sub_C618(v14);
      return;
    }
  }
}

uint64_t sub_DC80()
{
  v0 = sub_B69C0();
  __swift_allocate_value_buffer(v0, qword_EF150);
  __swift_project_value_buffer(v0, qword_EF150);
  return sub_B69B0();
}

uint64_t sub_DCF4()
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_DDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_DE6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);

  v5 = sub_1E974(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 104);
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65B0();
  }
}

uint64_t sub_DFB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
}

uint64_t sub_E01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_E0EC(uint64_t result)
{
  if (*(v1 + 112) == (result & 1))
  {
    *(v1 + 112) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E1FC(uint64_t result)
{
  if (*(v1 + 113) == (result & 1))
  {
    *(v1 + 113) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E30C(uint64_t result)
{
  if (*(v1 + 114) == (result & 1))
  {
    *(v1 + 114) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_E41C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  swift_beginAccess();
  sub_21628(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_E488()
{
  swift_getKeyPath();
  v4 = v0;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v1 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_E548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_E610(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1EB4C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65B0();
  }
}

uint64_t sub_E760(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t ContactPickerViewModel.__allocating_init(configuration:dependencies:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ContactPickerViewModel.init(configuration:dependencies:)(a1, a2);
  return v7;
}

uint64_t ContactPickerViewModel.init(configuration:dependencies:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[5];
  v9 = *(a2 + 32);
  *(v2 + 104) = sub_1F86C(&_swiftEmptyArrayStorage);
  *(v2 + 112) = 0;
  *(v2 + 114) = 0;
  v10 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress) = sub_1F98C(&_swiftEmptyArrayStorage);
  v12 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v2 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  *v16 = 0;
  v16[1] = 0;
  sub_B65F0();
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = v7;
  *(v2 + 40) = *(a1 + 3);
  *(v2 + 56) = v8;
  v17 = *(a2 + 16);
  *(v2 + 64) = *a2;
  *(v2 + 80) = v17;
  *(v2 + 96) = v9;
  return v2;
}

uint64_t sub_EB3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_EBC4(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_EC8C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C6C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_C5D8(v4);
}

uint64_t sub_ED84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C44;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_C5D8(v3);
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65B0();
  sub_C618(v6);
}

uint64_t sub_EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v15 - v10;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_B6950();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v15[-2] = a2;
  v15[-1] = v11;
  v15[1] = a2;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65B0();

  sub_A194(v11, &qword_EEE08, &qword_BD530);
}

void *sub_F120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return &unk_BE0C8;
}

uint64_t sub_F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_F248;

  return sub_F33C(a2, a3);
}

uint64_t sub_F248()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_F33C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ContactPickerViewModel.ActionResult(0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF538, &qword_BE0E0);
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ContactPickerViewModel.StepResult(0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = sub_B7A60();
  v3[25] = sub_B7A50();
  v13 = sub_B7A00();
  v3[26] = v13;
  v3[27] = v12;

  return _swift_task_switch(sub_F504, v13, v12);
}

uint64_t sub_F504()
{
  v32 = v0;
  v1 = v0[15];
  swift_getKeyPath();
  v0[5] = v1;
  v0[28] = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v0[29] = sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  v2 = *(v1 + 104);

  v4 = *(sub_1A098(v3, sub_1A208, sub_1A208) + 16);

  if (v4)
  {
    v5 = v0[25];

    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v6 = sub_B69C0();
    __swift_project_value_buffer(v6, qword_EF150);
    v7 = sub_B69A0();
    v8 = sub_B7B40();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_17834(0xD000000000000019, 0x80000000000B9110, &v31);
      _os_log_impl(&dword_0, v7, v8, "ContactPickerViewModel: %s - recipientsContainsPending", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v12 = v0[22];
    v11 = v0[23];
    v14 = v0[18];
    v13 = v0[19];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[15];
    v0[30] = sub_10C64(v2);

    if (*(v17 + 113) == 1)
    {
      *(v17 + 113) = 1;
    }

    else
    {
      v18 = v0[15];
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 1;
      v0[6] = v18;
      sub_B65B0();
    }

    v0[31] = 0;
    v20 = *(v0[15] + 56);
    v0[32] = v20;
    v21 = v20[2];
    v0[33] = v21;
    if (v21)
    {
      v0[34] = 0;
      if (!v20[2])
      {
        __break(1u);
        return result;
      }

      v0[35] = v20[5];
      v22 = v20[4];
      swift_retain_n();
      v30 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      v0[36] = v24;
      *v24 = v0;
      v24[1] = sub_FA04;
      v25 = v0[30];
      v26 = v0[23];
    }

    else
    {
      v30 = (v0[13] + *v0[13]);
      v27 = *(v0[13] + 4);
      v28 = swift_task_alloc();
      v0[43] = v28;
      *v28 = v0;
      v28[1] = sub_10444;
      v25 = v0[30];
      v26 = v0[19];
      v29 = v0[14];
    }

    return v30(v26, v25);
  }
}

uint64_t sub_FA04()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v7 = *v0;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return _swift_task_switch(sub_FB48, v5, v4);
}

uint64_t sub_FB48()
{
  v1 = v0[23];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v14 = v0[24];
    (*(v0[21] + 32))(v0[22], v1, v0[20]);
    v0[37] = sub_B7A50();
    v15 = sub_B7A00();
    v8 = v16;
    v0[38] = v15;
    v0[39] = v16;
    v6 = sub_FE10;
    v7 = v15;

    return _swift_task_switch(v6, v7, v8);
  }

  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  if (v4 + 1 != v5)
  {
    v17 = v0[34] + 1;
    v0[34] = v17;
    v18 = v0[32];
    if (v17 < *(v18 + 16))
    {
      v19 = v18 + 16 * v17;
      v0[35] = *(v19 + 40);
      v20 = *(v19 + 32);
      swift_retain_n();
      v24 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      v0[36] = v22;
      *v22 = v0;
      v22[1] = sub_FA04;
      v11 = v0[30];
      v12 = v0[23];
      goto LABEL_9;
    }

    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  v24 = (v0[13] + *v0[13]);
  v9 = *(v0[13] + 4);
  v10 = swift_task_alloc();
  v0[43] = v10;
  *v10 = v0;
  v10[1] = sub_10444;
  v11 = v0[30];
  v12 = v0[19];
  v13 = v0[14];
LABEL_9:

  return v24(v12, v11);
}

uint64_t sub_FE10()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[15];
  v4 = sub_B7A50();
  v0[40] = v4;
  v5 = swift_task_alloc();
  v0[41] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_FF20;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 50, v4, &protocol witness table for MainActor, 0xD000000000000012, 0x80000000000B9130, sub_217B8, v5, &type metadata for Bool);
}

uint64_t sub_FF20()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 320);
  v8 = *v0;

  v5 = *(v1 + 312);
  v6 = *(v1 + 304);

  return _swift_task_switch(sub_10080, v6, v5);
}

uint64_t sub_10080()
{
  v1 = *(v0 + 296);

  *(v0 + 401) = *(v0 + 400);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  return _swift_task_switch(sub_100EC, v2, v3);
}

uint64_t sub_100EC()
{
  if (*(v0 + 401))
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v2 = *(v0 + 272);
    v1 = *(v0 + 280);
    v3 = *(v0 + 264);

    if (v2 + 1 == v3)
    {
      v33 = (*(v0 + 104) + **(v0 + 104));
      v5 = *(*(v0 + 104) + 4);
      v6 = swift_task_alloc();
      *(v0 + 344) = v6;
      *v6 = v0;
      v6[1] = sub_10444;
      v7 = *(v0 + 240);
      v8 = *(v0 + 152);
      v9 = *(v0 + 112);
    }

    else
    {
      v20 = *(v0 + 272) + 1;
      *(v0 + 272) = v20;
      v21 = *(v0 + 256);
      if (v20 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v21 + 16 * v20;
      *(v0 + 280) = *(v22 + 40);
      v23 = *(v22 + 32);
      swift_retain_n();
      v33 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 288) = v25;
      *v25 = v0;
      v25[1] = sub_FA04;
      v7 = *(v0 + 240);
      v8 = *(v0 + 184);
    }

    return v33(v8, v7);
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 200);
    v12 = *(v0 + 120);

    v13 = *(v12 + 113);
    v14 = *(v0 + 280);
    if (v13)
    {
      v15 = *(v0 + 248);
      v16 = *(v0 + 224);
      v17 = *(v0 + 232);
      v18 = *(v0 + 120);
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v0 + 56) = v18;
      sub_B65B0();
    }

    else
    {
      v26 = *(v0 + 120);
      v27 = *(v0 + 280);

      *(v26 + 113) = 0;
    }

    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10444()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 240);
  v7 = *v0;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return _swift_task_switch(sub_10588, v5, v4);
}

uint64_t sub_10588()
{
  v1 = v0[19];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[15];

    if (*(v4 + 113))
    {
      v5 = v0[31];
      v7 = v0[28];
      v6 = v0[29];
      v8 = v0[15];
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      v0[12] = v8;
      sub_B65B0();
    }

    else
    {
      *(v0[15] + 113) = 0;
    }

    v14 = v0[28];
    v13 = v0[29];
    v15 = v0[15];
    swift_getKeyPath();
    v0[9] = v15;
    sub_B65C0();

    v0[10] = v15;
    swift_getKeyPath();
    sub_B65E0();

    *(v15 + 114) = (*(v15 + 114) & 1) == 0;
    v0[11] = v15;
    swift_getKeyPath();
    sub_B65D0();

    v17 = v0[22];
    v16 = v0[23];
    v19 = v0[18];
    v18 = v0[19];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v10 = v0[24];
    (*(v0[17] + 32))(v0[18], v1, v0[16]);
    v0[44] = sub_B7A50();
    v12 = sub_B7A00();
    v0[45] = v12;
    v0[46] = v11;

    return _swift_task_switch(sub_10844, v12, v11);
  }
}

uint64_t sub_10844()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[15];
  v0[47] = sub_B7A50();
  v4 = swift_task_alloc();
  v0[48] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_10958;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10958()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 376);
  v8 = *v0;

  v5 = *(v1 + 368);
  v6 = *(v1 + 360);

  return _swift_task_switch(sub_10AB8, v6, v5);
}

uint64_t sub_10AB8()
{
  v1 = v0[44];

  v2 = v0[26];
  v3 = v0[27];

  return _swift_task_switch(sub_10B1C, v2, v3);
}

uint64_t sub_10B1C()
{
  v1 = v0[25];
  v2 = v0[15];

  if (*(v2 + 113))
  {
    v3 = v0[31];
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[15];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[8] = v6;
    sub_B65B0();
  }

  else
  {
    *(v0[15] + 113) = 0;
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[18];
  v10 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10C64(uint64_t a1)
{
  v65 = sub_B6370();
  v2 = *(v65 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v65);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20EE8(&_swiftEmptyArrayStorage);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v62 = v2 + 16;
  v63 = v2;
  v64 = (v2 + 8);

  v12 = 0;
  v66 = v5;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = v6;
    v15 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v16 = [v15 normalizedAddress];
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v16;
    v10 &= v10 - 1;
    sub_B7900();

    sub_B6350();
    if (*(a1 + 16) && (v18 = sub_17E94(v15), (v19 & 1) != 0))
    {
      v27 = *(a1 + 56) + 32 * v18;
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      v58 = *v27;
      v59 = v28;
      v60 = v29;
      v61 = a1;
      sub_20AFC(v58, v28, v29, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v14;
      v33 = sub_17ED8(v66);
      v34 = *(v14 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_28;
      }

      if (*(v14 + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = v32;
          sub_19B78();
          v32 = v56;
        }

        v38 = v66;
        v42 = v67;
        if ((v32 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_25:
        v50 = v42[7] + 32 * v33;
        v51 = *v50;
        v52 = *(v50 + 8);
        v53 = *(v50 + 16);
        v54 = v59;
        *v50 = v58;
        *(v50 + 8) = v54;
        *(v50 + 16) = v60;
        v55 = *(v50 + 24);
        *(v50 + 24) = v30;
        sub_20B30(v51, v52, v53, v55);

        (*v64)(v38, v65);
        v6 = v42;
        a1 = v61;
      }

      else
      {
        v37 = v32;
        sub_1848C(v36, isUniquelyReferenced_nonNull_native);
        v38 = v66;
        v39 = sub_17ED8(v66);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_31;
        }

        v33 = v39;
        v41 = v37;
        v42 = v67;
        if (v41)
        {
          goto LABEL_25;
        }

LABEL_20:
        v42[(v33 >> 6) + 8] |= 1 << v33;
        v43 = v63;
        v44 = v65;
        (*(v63 + 16))(v42[6] + *(v63 + 72) * v33, v66, v65);
        v45 = v42[7] + 32 * v33;
        v46 = v59;
        *v45 = v58;
        *(v45 + 8) = v46;
        *(v45 + 16) = v60;
        *(v45 + 24) = v30;

        (*(v43 + 8))(v66, v44);
        v47 = v42[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_29;
        }

        v6 = v42;
        v42[2] = v49;
        a1 = v61;
      }
    }

    else
    {
      v20 = v66;
      v6 = v14;
      v21 = sub_17ED8(v66);
      if (v22)
      {
        v61 = a1;
        v23 = v21;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v67 = v14;
        if (!v24)
        {
          sub_19B78();
          v6 = v67;
        }

        v25 = *(v63 + 8);
        v26 = v65;
        v25(*(v6 + 48) + *(v63 + 72) * v23, v65);
        sub_20B30(*(*(v6 + 56) + 32 * v23), *(*(v6 + 56) + 32 * v23 + 8), *(*(v6 + 56) + 32 * v23 + 16), *(*(v6 + 56) + 32 * v23 + 24));
        sub_18F84(v23, v6);

        v25(v66, v26);
        a1 = v61;
      }

      else
      {
        (*v64)(v20, v65);
      }
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_B7DF0();
  __break(1u);
  return result;
}

void sub_110D8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_19460(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_17E94(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_19A14();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_18DF8(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_111DC(void *a1)
{
  v2 = v1;
  v45 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v46 = &v42 - v6;
  v47 = sub_B6370();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v42 - v10;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v11 = sub_B69C0();
  __swift_project_value_buffer(v11, qword_EF150);
  v12 = a1;
  v13 = sub_B69A0();
  v14 = sub_B7B60();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = v7;
    v16 = v15;
    v42 = swift_slowAlloc();
    v50 = v42;
    *v16 = 136315394;
    *(v16 + 4) = sub_17834(0xD00000000000001BLL, 0x80000000000B8FF0, &v50);
    *(v16 + 12) = 2080;
    v17 = v12;
    v18 = v8;
    v19 = [v17 description];
    v20 = sub_B7900();
    v22 = v21;

    v8 = v18;
    v23 = sub_17834(v20, v22, &v50);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v13, v14, "FMRecipientsViewModel: %s - recipient: %s", v16, 0x16u);
    swift_arrayDestroy();

    v7 = v43;
  }

  v24 = [v12 normalizedAddress];
  if (v24)
  {
    v25 = v24;
    sub_B7900();

    v26 = v48;
    sub_B6350();
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 2;
    sub_11808(&v50, v12);
    sub_11D58(v12);
    v27 = sub_B7A80();
    (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v44;
    (*(v7 + 16))(v44, v26, v47);
    sub_B7A60();
    v30 = v12;

    v31 = sub_B7A50();
    v32 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = v31;
    *(v34 + 3) = &protocol witness table for MainActor;
    *(v34 + 4) = v28;
    v35 = v29;
    v36 = v47;
    (*(v7 + 32))(&v34[v32], v35, v47);
    *&v34[v33] = v30;
    *&v34[(v33 + 15) & 0xFFFFFFFFFFFFFFF8] = v45;

    v37 = sub_30A3C(0, 0, v46, &unk_BDFC8, v34);
    swift_getKeyPath();
    v50 = v2;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v50 = v2;
    swift_getKeyPath();
    sub_B65E0();

    v38 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
    swift_beginAccess();
    v39 = *(v2 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v2 + v38);
    *(v2 + v38) = 0x8000000000000000;
    sub_19460(v37, v30, isUniquelyReferenced_nonNull_native);

    *(v2 + v38) = v49;
    swift_endAccess();
    v50 = v2;
    swift_getKeyPath();
    sub_B65D0();

    return (*(v7 + 8))(v48, v36);
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v50 = (&dword_0 + 1);
    v53 = 1;
    return sub_11808(&v50, v12);
  }
}

uint64_t sub_11808(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v9 = sub_B69C0();
  __swift_project_value_buffer(v9, qword_EF150);
  sub_20AE8(v5, v6, v7, v8);
  v10 = a2;
  v11 = sub_B69A0();
  v12 = sub_B7B30();
  sub_20B1C(v5, v6, v7, v8);

  v32 = v6;
  v33 = v7;
  v31 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_17834(0xD000000000000010, 0x80000000000B8F80, v34);
    *(v13 + 12) = 2080;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    sub_20AE8(v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF470, &qword_BDF40);
    v14 = sub_B7930();
    v16 = sub_17834(v14, v15, v34);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = v10;
    v18 = [v17 description];
    v19 = sub_B7900();
    v21 = v20;

    v22 = sub_17834(v19, v21, v34);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_0, v11, v12, "ContactPickerViewModel: %s - status: %s - recipient: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v35 = v3;
  if (v8 == 255)
  {
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v35 = v3;
    swift_getKeyPath();
    sub_B65E0();

    swift_beginAccess();
    sub_17DDC(v31, &v35);
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    swift_endAccess();
    sub_20B1C(v27, v28, v29, v30);
    v34[0] = v3;
    swift_getKeyPath();
    sub_B65D0();

    v35 = v5;
    v36 = v32;
    v37 = v33;
    v38 = -1;
    return sub_13348(v31, &v35);
  }

  else
  {
    sub_20AE8(v5, v32, v33, v8);
    sub_20AE8(v5, v32, v33, v8);
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    v23 = v31;
    sub_B65C0();

    v35 = v3;
    swift_getKeyPath();
    sub_B65E0();

    swift_beginAccess();
    v24 = *(v3 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *(v3 + 104);
    sub_192B0(v5, v32, v33, v8, v23, isUniquelyReferenced_nonNull_native);

    *(v3 + 104) = v34[0];
    swift_endAccess();
    v35 = v3;
    swift_getKeyPath();
    sub_B65D0();

    v35 = v5;
    v36 = v32;
    v37 = v33;
    v38 = v8;
    sub_13348(v23, &v35);
    return sub_20B1C(v35, v36, v37, v38);
  }
}

uint64_t sub_11D58(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v2 + v4);

    v7 = sub_17E94(a1);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      sub_B7AE0();
    }

    else
    {
    }
  }

  swift_getKeyPath();
  v10 = a1;
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  sub_110D8(0, v10);
  swift_endAccess();
  swift_getKeyPath();
  sub_B65D0();
}

uint64_t sub_11F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  sub_B7A60();
  v6[17] = sub_B7A50();
  v8 = sub_B7A00();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_11FF4, v8, v7);
}

uint64_t sub_11FF4()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 72);
    v10 = (*(Strong + 64) + **(Strong + 64));
    v4 = *(*(Strong + 64) + 4);
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_12148;
    v6 = v0[15];

    return v10(v0 + 8, v6);
  }

  else
  {
    v8 = v0[17];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_12148()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_124E8;
  }

  else
  {
    v7 = sub_12284;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_12284()
{
  v1 = v0[17];

  v3 = v0[8];
  v2 = v0[9];
  if (sub_B7AF0())
  {
    v4 = v0[20];
LABEL_10:
    sub_20AD4(v3, v2);
    goto LABEL_11;
  }

  v5 = objc_opt_self();
  v6 = v0[20];
  if (v2 != 1)
  {
    v12 = [v5 systemGrayColor];
    swift_getKeyPath();
    v0[12] = v6;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v13 = v6 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient;
    v14 = *(v6 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
    v15 = v0[20];
    if (v14)
    {
      v16 = v0[16];
      v17 = *(v13 + 8);

      v14(v12, v16);
      sub_C618(v14);
    }

    goto LABEL_10;
  }

  v7 = [v5 systemBlueColor];
  swift_getKeyPath();
  v0[13] = v6;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  v8 = *(v6 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
  v9 = v0[20];
  if (v8)
  {
    v10 = v0[16];
    v11 = *(v6 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8);

    v8(v7, v10);
    sub_C618(v8);
  }

LABEL_11:

  v18 = v0[1];

  return v18();
}

uint64_t sub_124E8()
{
  v39 = v0;
  v1 = v0[17];

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[16];
  v4 = sub_B69C0();
  __swift_project_value_buffer(v4, qword_EF150);
  swift_errorRetain();
  v5 = v3;
  v6 = sub_B69A0();
  v7 = sub_B7B40();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v37 = v0[16];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_17834(0xD000000000000024, 0x80000000000B8F30, &v38);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v10 = v0[5];
    v11 = *(v0[6] - 8);
    v12 = *(v11 + 64) + 15;
    swift_task_alloc();
    (*(v11 + 16))();
    v13 = sub_B7930();
    v15 = v14;

    v16 = sub_17834(v13, v15, &v38);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = v37;
    v18 = [v17 description];
    v19 = sub_B7900();
    v21 = v20;

    v22 = sub_17834(v19, v21, &v38);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_0, v6, v7, "FMRecipientsViewModel: %s - error: %s - recipient: %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  if (sub_B7AF0())
  {
    v23 = v0[22];
    v24 = v0[20];
  }

  else
  {
    v25 = v0[20];
    swift_getKeyPath();
    v0[10] = v25;
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v26 = v25 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient;
    v27 = *(v25 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient);
    v28 = v0[22];
    v29 = v0[20];
    if (v27)
    {
      v30 = v0[16];
      v31 = *(v26 + 8);
      v32 = objc_opt_self();

      v33 = [v32 systemGrayColor];
      v27();

      sub_C618(v27);

      goto LABEL_11;
    }

    v34 = v0[22];
  }

LABEL_11:
  v35 = v0[1];

  return v35();
}

uint64_t sub_128FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_B7A60();
  v6[16] = sub_B7A50();
  v8 = sub_B7A00();
  v6[17] = v8;
  v6[18] = v7;

  return _swift_task_switch(sub_12998, v8, v7);
}

uint64_t sub_12998()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 88);
    v10 = (*(Strong + 80) + **(Strong + 80));
    v4 = *(*(Strong + 80) + 4);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_12AEC;
    v6 = v0[14];

    return v10(v0 + 8, v6);
  }

  else
  {
    v8 = v0[16];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_12AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_12C0C, v4, v3);
}

uint64_t sub_12C0C()
{
  v20 = v0;
  v2 = v0[8];
  v1 = v0[9];
  if (sub_B7AF0())
  {
    v3 = v0[19];
    v4 = v0[16];

    sub_20AD4(v2, v1);

LABEL_8:
    v14 = v0[1];

    return v14();
  }

  if (v1 != 1)
  {
    v11 = v0[19];
    v13 = v0[15];
    v12 = v0[16];

    v16 = 0;
    v17 = v2;
    v18 = v1;
    v19 = 1;

    sub_11808(&v16, v13);
    sub_20AD4(v2, v1);

    sub_20B1C(v16, v17, v18, v19);
    goto LABEL_8;
  }

  v5 = v0[19];
  v6 = *(v5 + 72);
  v15 = (*(v5 + 64) + **(v5 + 64));
  v7 = *(*(v5 + 64) + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_12DD8;
  v9 = v0[14];

  return v15(v0 + 10, v9);
}

uint64_t sub_12DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_13024;
  }

  else
  {
    v7 = sub_12F14;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_12F14()
{
  v13 = v0;
  v1 = v0[16];

  v3 = v0[10];
  v2 = v0[11];
  if (sub_B7AF0())
  {
    v4 = v0[19];
    sub_20AD4(v3, v2);
LABEL_5:

    goto LABEL_7;
  }

  v5 = v0[19];
  v6 = v0[15];
  if (v2 == 1)
  {
    v10 = 0;
    v11 = 0;
    v9 = 1;
    v12 = 2;
    sub_11808(&v9, v6);
    goto LABEL_5;
  }

  v9 = v3;
  v10 = v2;
  v11 = 0;
  v12 = 0;

  sub_11808(&v9, v6);
  sub_20AD4(v3, v2);

  sub_20B1C(v9, v10, v11, v12);
LABEL_7:
  v7 = v0[1];

  return v7();
}

uint64_t sub_13024()
{
  v32 = v0;
  v1 = v0[16];

  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[15];
  v4 = sub_B69C0();
  __swift_project_value_buffer(v4, qword_EF150);
  swift_errorRetain();
  v5 = v3;
  v6 = sub_B69A0();
  v7 = sub_B7B40();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v29 = v0[15];
    v9 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_17834(0xD00000000000001BLL, 0x80000000000B8FF0, v30);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v10 = v0[5];
    v11 = *(v0[6] - 8);
    v12 = *(v11 + 64) + 15;
    swift_task_alloc();
    (*(v11 + 16))();
    v13 = sub_B7930();
    v15 = v14;

    v16 = sub_17834(v13, v15, v30);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = v29;
    v18 = [v17 description];
    v19 = sub_B7900();
    v21 = v20;

    v22 = sub_17834(v19, v21, v30);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_0, v6, v7, "FMRecipientsViewModel: %s - error: %s - recipient: %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v23 = sub_B7AF0();
  v24 = v0[22];
  v25 = v0[19];
  if ((v23 & 1) == 0)
  {
    v26 = v0[15];
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    sub_11808(v30, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_13348(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v9 = sub_B69C0();
  __swift_project_value_buffer(v9, qword_EF150);
  sub_20AE8(v5, v6, v7, v8);
  v10 = a1;
  v11 = sub_B69A0();
  v12 = sub_B7B60();
  sub_20B1C(v5, v6, v7, v8);

  if (os_log_type_enabled(v11, v12))
  {
    v32 = v10;
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_17834(0xD00000000000002BLL, 0x80000000000B8FA0, &v33);
    *(v13 + 12) = 2080;
    sub_20AE8(v5, v6, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF470, &qword_BDF40);
    v14 = sub_B7930();
    v31 = v6;
    v30 = v12;
    v16 = sub_17834(v14, v15, &v33);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = v32;
    v18 = [v17 description];
    v19 = sub_B7900();
    v20 = v7;
    v21 = v5;
    v22 = v3;
    v24 = v23;

    v6 = v31;
    v25 = sub_17834(v19, v24, &v33);
    v3 = v22;
    v5 = v21;
    v7 = v20;

    *(v13 + 24) = v25;
    _os_log_impl(&dword_0, v11, v30, "ContactPickerViewModel: %s - status: %s - recipient: %s", v13, 0x20u);
    swift_arrayDestroy();

    v10 = v32;
  }

  if (v8 != 255)
  {
    swift_getKeyPath();
    sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
    sub_B65C0();

    v26 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient);
    if (v26)
    {
      v27 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8);
      if (v8)
      {
        if (v8 == 1)
        {
          v28 = 1;
        }

        else if (v6 | v5 | v7)
        {
          v28 = 0;
        }

        else
        {
          v28 = 65540;
        }
      }

      else
      {
        v28 = 196608;
      }

      v26(v28, v10);
      sub_C618(v26);
    }
  }

  return sub_136D4();
}

uint64_t sub_136D4()
{
  v1 = 0;
  swift_getKeyPath();
  v50 = v0;
  sub_212D0(&qword_EEE30, type metadata accessor for ContactPickerViewModel);
  sub_B65C0();

  swift_beginAccess();
  v48 = v0;
  v2 = *(v0 + 104);
  v51 = &_swiftEmptySetSingleton;
  v49 = 1;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  while (v5)
  {
LABEL_11:
    v8 = __clz(__rbit64(v5)) | (v1 << 6);
    v9 = *(*(v2 + 48) + 8 * v8);
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + 32 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (*(v10 + 24))
    {
      if (v14 == 1)
      {
        if (v11)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v17 = *(v10 + 8);
          v18 = *(v10 + 24);

          LOBYTE(v14) = v18;
          v11 = v15;
          v12 = v17;
          v13 = v16;
          goto LABEL_5;
        }

        if (!v13)
        {
          goto LABEL_5;
        }

        v27 = *v10;
        v28 = *(v10 + 8);
        v29 = *(v10 + 16);
        sub_20AFC(v11, v12, v13, 1u);
        sub_20AFC(v27, v28, v29, 1u);
        v30 = v9;
        sub_1BA98(&v50, v28, v29);

        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = 1;
LABEL_19:
        sub_20B30(v23, v24, v25, v26);
      }

      else
      {
        if (v13 | v12 | v11)
        {
          goto LABEL_5;
        }

        sub_20B30(0, 0, 0, 2u);
        v49 = 0;
      }
    }

    else
    {
      if (v12)
      {
        v19 = *v10;
        v20 = *(v10 + 8);
        v21 = *(v10 + 16);
        sub_20AFC(v11, v12, v13, 0);
        sub_20AFC(v19, v20, v21, 0);
        v22 = v9;
        sub_1BA98(&v50, v19, v20);

        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = 0;
        goto LABEL_19;
      }

LABEL_5:
      sub_20B30(v11, v12, v13, v14);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_11;
    }
  }

  v31 = v51;
  v32 = v51[2];
  if (v32)
  {
    v33 = sub_177B0(v51[2], 0);
    v34 = sub_1E7F4(&v50, v33 + 4, v32, v31);

    sub_20BA0();
    if (v34 == v32)
    {
      v50 = v33;
      sub_1BBE8(&v50);
      v35 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF480, &qword_BDF50);
      sub_A8CC(&qword_EF488, &qword_EF480, &qword_BDF50);
      v36 = sub_B78A0();
      v38 = v37;

      goto LABEL_26;
    }

LABEL_35:
    __break(1u);

    __break(1u);
    return result;
  }

  v36 = 0;
  v38 = 0;
  v35 = v48;
LABEL_26:
  swift_getKeyPath();
  v50 = v35;
  sub_B65C0();

  v39 = *&v35[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText];
  if (v39)
  {
    v40 = *&v35[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8];

    v39(v36, v38);
    sub_C618(v39);
  }

  v41 = *(v2 + 16);

  v42 = (v41 != 0) & v49;
  if (v42 == v35[112])
  {
    v35[112] = v42;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v50 = v35;
    sub_B65B0();
  }

  swift_getKeyPath();
  v50 = v35;
  sub_B65C0();

  v45 = *&v35[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus];
  if (v45)
  {
    v46 = *&v35[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8];

    v45(v47);
    return sub_C618(v45);
  }

  return result;
}

char *ContactPickerViewModel.deinit()
{
  v1 = *(v0 + 3);
  v3 = *(v0 + 6);
  v2 = *(v0 + 7);

  v4 = *(v0 + 9);
  v6 = *(v0 + 11);
  v5 = *(v0 + 12);

  v7 = *(v0 + 13);

  sub_A194(&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__alert], &qword_EEE08, &qword_BD530);
  v8 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__reachabilityRequestsPerAddress];

  v9 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient + 8];
  sub_C618(*&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__addSearchControllerRecipient]);
  v10 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient + 8];
  sub_C618(*&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerPresentationOptionsForRecipient]);
  v11 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText + 8];
  sub_C618(*&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerComposeFieldInfoText]);
  v12 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient + 8];
  sub_C618(*&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__setSearchControllerTintColorForAutocompleteRecipient]);
  v13 = *&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus + 8];
  sub_C618(*&v0[OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus]);
  v14 = OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel___observationRegistrar;
  v15 = sub_B6600();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  return v0;
}

uint64_t ContactPickerViewModel.__deallocating_deinit()
{
  ContactPickerViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ContactPickerViewModel.Configuration.init(screenTitle:showNavBarCancelButton:actionControl:actionConfirmationSteps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t static ContactPickerViewModel.ConfirmationStep.denyMyOwnAccount(alertTitleMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = &unk_BDA58;
  a3[1] = v6;
}

uint64_t sub_13E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_13EA0, 0, 0);
}

uint64_t sub_13EA0()
{
  v22 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v21);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (*(v6 + 16))
  {
    v7 = sub_14C70(v6);

    v21[0] = v7;

    sub_1BC54(v21);
    v14 = *(v0 + 16);

    sub_A6A64();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 32) = 0;
    sub_B6880();
    sub_B6910();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v21);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_14320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_14340, 0, 0);
}

uint64_t sub_14340()
{
  v22 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v21);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (*(v6 + 16))
  {
    v7 = sub_14C70(v6);

    v21[0] = v7;

    sub_1BC54(v21);
    v14 = *(v0 + 16);

    sub_A8FA8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 32) = 0;
    sub_B6880();
    sub_B6910();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v21);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_147C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_147E4, 0, 0);
}

uint64_t sub_147E4()
{
  v24 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v23);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A498, sub_1A498);
  if (*(v6 + 16))
  {
    v7 = sub_14C70(v6);

    v23[0] = v7;

    sub_1BC54(v23);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 16);

    v15(v23[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    *(v0 + 48) = 0;
    sub_B6880();
    sub_B6910();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
  }

  else
  {

    v8 = sub_B69A0();
    v9 = sub_B7B60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_17834(0xD000000000000024, 0x80000000000B9030, v23);
      _os_log_impl(&dword_0, v8, v9, "ContactPickerViewModel: %s - No unreachable recipient", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v12 = *(v0 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v21 = *(v0 + 8);

  return v21();
}

unint64_t sub_14C70(uint64_t a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v3 = *(*(v64 - 8) + 64);
  v4 = __chkstk_darwin(v64);
  v63 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v62 = v53 - v7;
  v8 = __chkstk_darwin(v6);
  v61 = v53 - v9;
  __chkstk_darwin(v8);
  v60 = v53 - v10;
  v11 = sub_B6370();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v78 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v80 = &_swiftEmptyArrayStorage;
  if (!v15)
  {
    return v80;
  }

  v53[1] = v1;
  v81 = &_swiftEmptyArrayStorage;
  sub_1E4D0(0, v15, 0);
  v80 = v81;
  v16 = a1 + 64;
  v17 = -1 << *(a1 + 32);
  result = sub_B7C30();
  v19 = 0;
  v79 = *(a1 + 36);
  v77 = v12 + 16;
  v58 = v12 + 32;
  v54 = a1 + 72;
  v55 = v15;
  v59 = a1 + 64;
  v57 = a1;
  v56 = v12;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v16 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v79 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v66 = 1 << result;
    v67 = result >> 6;
    v65 = v19;
    v21 = v64;
    v22 = v60;
    v23 = &v60[*(v64 + 48)];
    v24 = *(a1 + 48);
    v75 = *(v12 + 72);
    v73 = *(v12 + 16);
    v25 = result;
    v73(v60, v24 + v75 * result, v11);
    v26 = *(a1 + 56);
    v76 = v25;
    v27 = v26 + 32 * v25;
    v28 = *v27;
    v71 = *(v27 + 8);
    v29 = v71;
    v72 = v28;
    v70 = *(v27 + 16);
    v30 = v70;
    LODWORD(v27) = *(v27 + 24);
    v69 = v27;
    *v23 = v28;
    *(v23 + 1) = v29;
    *(v23 + 2) = v30;
    v23[24] = v27;
    v31 = *(v12 + 32);
    v32 = v61;
    v31(v61, v22, v11);
    v33 = v32 + *(v21 + 48);
    v34 = *(v23 + 2);
    v35 = v23[24];
    *v33 = *v23;
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    v36 = v62;
    sub_A310(v32, v62, &qword_EF4C0, &qword_BDFF0);
    v37 = *(v21 + 48);
    v68 = *(v36 + v37);
    v38 = *(v36 + v37 + 16);
    v39 = *(v36 + v37 + 24);
    v40 = v63;
    v41 = &v63[v37];
    v74 = v31;
    v31(v63, v36, v11);
    *v41 = v68;
    *(v41 + 2) = v38;
    v41[24] = v39;
    v42 = v80;
    v73(v78, v40, v11);
    sub_20AFC(v72, v71, v70, v69);
    sub_A194(v40, &qword_EF4C0, &qword_BDFF0);
    sub_A194(v32, &qword_EF4C0, &qword_BDFF0);
    v81 = v42;
    v44 = v42[2];
    v43 = v42[3];
    v80 = v42;
    if (v44 >= v43 >> 1)
    {
      sub_1E4D0(v43 > 1, v44 + 1, 1);
      v80 = v81;
    }

    v45 = v80;
    v80[2] = v44 + 1;
    v12 = v56;
    v74(&v45[((*(v12 + 80) + 32) & ~*(v12 + 80)) + v44 * v75], v78, v11);
    a1 = v57;
    v20 = 1 << *(v57 + 32);
    result = v76;
    v16 = v59;
    if (v76 >= v20)
    {
      goto LABEL_24;
    }

    v46 = *(v59 + 8 * v67);
    if ((v46 & v66) == 0)
    {
      goto LABEL_25;
    }

    if (v79 != *(v57 + 36))
    {
      goto LABEL_26;
    }

    v47 = v46 & (-2 << (v76 & 0x3F));
    if (v47)
    {
      v20 = __clz(__rbit64(v47)) | v76 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v48 = v67 << 6;
      v49 = v67 + 1;
      v50 = (v54 + 8 * v67);
      while (v49 < (v20 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          sub_21318(v76, v79, 0);
          v20 = __clz(__rbit64(v51)) + v48;
          goto LABEL_4;
        }
      }

      sub_21318(v76, v79, 0);
    }

LABEL_4:
    v19 = v65 + 1;
    result = v20;
    if (v65 + 1 == v55)
    {
      return v80;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static ContactPickerViewModel.ConfirmationStep.reachabilityRequirement(requires:alertTitleMessage:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *a4 = &unk_C4B00;
  a4[1] = v8;
}

uint64_t sub_15298(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 49) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_152C0, 0, 0);
}

uint64_t sub_152C0()
{
  v25 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000034, 0x80000000000B90D0, v24);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_1A098(*(v0 + 24), sub_1A94C, sub_1A94C);
  if (*(v6 + 16))
  {
    v7 = *(v0 + 49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    if (v7 == 1)
    {
      *(swift_allocObject() + 16) = xmmword_BDA30;
      *(v0 + 48) = 0;
      sub_B6880();
    }

    else
    {
      *(swift_allocObject() + 16) = xmmword_BD800;
      sub_B68F0();
      sub_B68E0();
    }

    v17 = sub_14C70(v6);

    v24[0] = v17;

    sub_1BC54(v24);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *(v0 + 16);

    v19(v24[0]);

    sub_B6910();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {

    v11 = sub_B69A0();
    v12 = sub_B7B60();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_17834(0xD000000000000034, 0x80000000000B90D0, v24);
      _os_log_impl(&dword_0, v11, v12, "ContactPickerViewModel: %s - No unreachable recipient", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    v15 = *(v0 + 16);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t static ContactPickerViewModel.ConfirmationStep.capabilityRequirement(isCapabilityEnabled:notCapableAlertTitleMessage:genericErrorAlertTitleMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  *a7 = &unk_BDA78;
  a7[1] = v14;
}

uint64_t sub_15834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E0, &qword_BE010);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v11 = sub_B6370();
  v8[16] = v11;
  v12 = *(v11 - 8);
  v8[17] = v12;
  v13 = *(v12 + 64) + 15;
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_15960, 0, 0);
}

uint64_t sub_15960()
{
  v14 = v0;
  if (qword_EEA90 != -1)
  {
    swift_once();
  }

  v1 = sub_B69C0();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_EF150);
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, &v13);
    _os_log_impl(&dword_0, v2, v3, "ContactPickerViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = *(v0 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *(v8 + 16) = *(v0 + 32);
  *(v8 + 32) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4F0, &unk_BE030);
  v10 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_15B9C;
  v16 = v9;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v9, 0, 0, &unk_BE028, v8, v7);
}

uint64_t sub_15B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_16398;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_15CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_15CB8()
{
  v71 = v0;
  v1 = v0[22];
  v2 = sub_1A098(v0[2], sub_1AD6C, sub_1AD6C);

  v3 = *(v2 + 16);
  if (v3)
  {
    v55 = v1;
    v4 = v0[17];
    v63 = v0[11];
    v70[0] = &_swiftEmptyArrayStorage;
    sub_1E4D0(0, v3, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = sub_B7C30();
    v9 = result;
    v10 = 0;
    v11 = *(v2 + 36);
    v56 = v2 + 72;
    v57 = v3;
    v12 = v0;
    v62 = v2 + 64;
    v58 = v11;
    v59 = v2;
    v60 = v0;
    v61 = v4;
    do
    {
      if (v9 < 0 || v9 >= 1 << *(v2 + 32))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_33;
      }

      if (v11 != *(v2 + 36))
      {
        goto LABEL_34;
      }

      v65 = v9 >> 6;
      v64 = v10;
      v67 = v12[18];
      v16 = v12[15];
      v15 = v12[16];
      v17 = v12[13];
      v18 = v12[14];
      v69 = v5;
      v19 = v12[12];
      v68 = v4[9];
      v66 = v4[2];
      v66(v16, *(v2 + 48) + v68 * v9, v15);
      v20 = *(*(v2 + 56) + v9);
      v21 = v4[4];
      v21(v18, v16, v15);
      *(v18 + *(v63 + 48)) = v20;
      sub_A310(v18, v17, &qword_EF4E0, &qword_BE010);
      v22 = *(v63 + 48);
      LOBYTE(v16) = *(v17 + v22);
      v21(v19, v17, v15);
      *(v19 + v22) = v16;
      v66(v67, v19, v15);
      v23 = v19;
      v5 = v69;
      sub_A194(v23, &qword_EF4E0, &qword_BE010);
      sub_A194(v18, &qword_EF4E0, &qword_BE010);
      v70[0] = v69;
      v25 = v69[2];
      v24 = v69[3];
      if (v25 >= v24 >> 1)
      {
        sub_1E4D0(v24 > 1, v25 + 1, 1);
        v5 = v70[0];
      }

      v26 = v60[18];
      v27 = v60[16];
      v5[2] = v25 + 1;
      result = (v21)(v5 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v25 * v68, v26, v27);
      v2 = v59;
      v13 = 1 << *(v59 + 32);
      v6 = v62;
      if (v9 >= v13)
      {
        goto LABEL_35;
      }

      v28 = *(v62 + 8 * v65);
      if ((v28 & (1 << v9)) == 0)
      {
        goto LABEL_36;
      }

      v11 = v58;
      if (v58 != *(v59 + 36))
      {
        goto LABEL_37;
      }

      v12 = v60;
      v4 = v61;
      v29 = v28 & (-2 << (v9 & 0x3F));
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v14 = v64;
      }

      else
      {
        v30 = v65 << 6;
        v31 = (v56 + 8 * v65);
        v32 = v65 + 1;
        while (v32 < (v13 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            result = sub_21318(v9, v58, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_20;
          }
        }

        result = sub_21318(v9, v58, 0);
LABEL_20:
        v14 = v64;
        v12 = v60;
      }

      v10 = v14 + 1;
      v9 = v13;
    }

    while (v10 != v57);
    v0 = v12;

    v70[0] = v5;

    sub_1BC54(v70);
    if (!v55)
    {
      v42 = v0[7];
      v41 = v0[8];
      v43 = v0[3];

      v42(v70[0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      *(v0 + 185) = 0;
      sub_B6880();
      sub_B6910();
      v40 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v35 = v0[19];

    v36 = sub_B69A0();
    v37 = sub_B7B60();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, v70);
      _os_log_impl(&dword_0, v36, v37, "ContactPickerViewModel: %s - No incapable recipient", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    v40 = 1;
LABEL_29:
    v47 = v0[18];
    v49 = v0[14];
    v48 = v0[15];
    v51 = v0[12];
    v50 = v0[13];
    v52 = v0[3];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
    (*(*(v53 - 8) + 56))(v52, v40, 1, v53);

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_16398()
{
  v27 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  swift_errorRetain();
  v4 = sub_B69A0();
  v5 = sub_B7B40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_17834(0xD000000000000065, 0x80000000000B9060, &v26);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_0, v4, v5, "ContactPickerViewModel: %s - Error: %@", v7, 0x16u);
    sub_A194(v8, &qword_EF4F8, &qword_C16D0);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 80);
  v13 = *(v0 + 24);
  (*(v0 + 72))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A0, &qword_BDFD8);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4A8, &qword_BDFE0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  *(v0 + 184) = 0;
  sub_B6880();
  sub_B6910();

  v17 = *(v0 + 144);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = *(v0 + 24);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF2D0, &qword_BDC28);
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_166D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF508, &qword_BE048) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF510, &qword_BE050);
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v14 = sub_B6370();
  v5[26] = v14;
  v15 = *(v14 - 8);
  v5[27] = v15;
  v5[28] = *(v15 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_16910, 0, 0);
}

uint64_t sub_16910()
{
  v44 = v0 + 2;
  v1 = v0[12];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v48 = v0[12];
  v49 = v0[27];

  v12 = 0;
  v46 = v8;
  v47 = v3;
  v45 = v0;
  while (v7)
  {
LABEL_11:
    v18 = v0[29];
    v17 = v0[30];
    v19 = v0[25];
    v20 = v0[26];
    v52 = v0[24];
    v53 = v0[28];
    v50 = v19;
    v51 = v0[14];
    v55 = v0[13];
    (*(v49 + 16))(v17, *(v48 + 48) + *(v49 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v20);
    v21 = sub_B7A80();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v19, 1, 1, v21);
    v23 = *(v49 + 32);
    v23(v18, v17, v20);
    v24 = (*(v49 + 80) + 48) & ~*(v49 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v54 = v25 + 2;
    v25[3] = 0;
    v25[4] = v55;
    v25[5] = v51;
    v56 = v25;
    v23(v25 + v24, v18, v20);
    sub_A310(v50, v52, &qword_EF458, &qword_BDED0);
    v0 = v45;
    LODWORD(v24) = (*(v22 + 48))(v52, 1, v21);

    v26 = v45[24];
    if (v24 == 1)
    {
      sub_A194(v45[24], &qword_EF458, &qword_BDED0);
    }

    else
    {
      sub_B7A70();
      (*(v22 + 8))(v26, v21);
    }

    if (*v54)
    {
      v27 = v56[3];
      v28 = *v54;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_B7A00();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = *v45[11];

    if (v31 | v29)
    {
      v13 = v44;
      *v44 = 0;
      v44[1] = 0;
      v45[4] = v29;
      v45[5] = v31;
    }

    else
    {
      v13 = 0;
    }

    v7 &= v7 - 1;
    v14 = v45[25];
    v15 = v45[16];
    v45[6] = 1;
    v45[7] = v13;
    v45[8] = v32;
    swift_task_create();

    v9 = sub_A194(v14, &qword_EF458, &qword_BDED0);
    v8 = v46;
    v3 = v47;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v12;
    if (v7)
    {
      v12 = v16;
      goto LABEL_11;
    }
  }

  v33 = v0[23];
  v34 = v0[16];
  v36 = v0[11];
  v35 = v0[12];

  v37 = *v36;
  v38 = sub_210E8(&_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7B00();
  v0[31] = v38;
  v39 = sub_A8CC(&qword_EF520, &qword_EF510, &qword_BE050);
  v40 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v41 = swift_task_alloc();
  v0[32] = v41;
  *v41 = v0;
  v41[1] = sub_16DB8;
  v42 = v0[23];
  v10 = v0[21];
  v9 = v0[15];
  v11 = v39;

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
}

uint64_t sub_16DB8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[31];
    (*(v2[22] + 8))(v2[23], v2[21]);

    v5 = sub_172EC;
  }

  else
  {
    v5 = sub_16EF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_16EF0()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = (*(v0[17] + 48))(v2, 1, v1);
  v4 = v0[31];
  if (v3 == 1)
  {
    v6 = v0[29];
    v5 = v0[30];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[20];
    v48 = v0[19];
    v49 = v0[18];
    v10 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_A194(v2, &qword_EF508, &qword_BE048);
    *v10 = v4;

    v11 = v0[1];

    return v11();
  }

  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  sub_215B8(v2, v13);
  sub_A310(v13, v14, &qword_EF4E8, &qword_BE018);
  sub_A310(v13, v15, &qword_EF4E8, &qword_BE018);
  v16 = *(v15 + *(v1 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v18 = sub_17ED8(v14);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v1) = v19;
  if (*(v0[31] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v28 = v0[9];
      if (v1)
      {
LABEL_13:
        v29 = v0[20];
        *(v28[7] + v18) = v16;
        sub_A194(v29, &qword_EF4E8, &qword_BE018);
        goto LABEL_18;
      }

LABEL_16:
      v31 = v0[26];
      v32 = v0[27];
      v33 = v0[19];
      v34 = v0[20];
      v28[(v18 >> 6) + 8] |= 1 << v18;
      v35 = v18;
      (*(v32 + 16))(v28[6] + *(v32 + 72) * v18, v33, v31);
      *(v28[7] + v35) = v16;
      v36 = sub_A194(v34, &qword_EF4E8, &qword_BE018);
      v39 = v28[2];
      v22 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v22)
      {
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v36, v37, v38);
      }

      v28[2] = v40;
LABEL_18:
      v41 = v0[26];
      v42 = v0[18];
      v43 = *(v0[27] + 8);
      v43(v0[19], v41);
      v43(v42, v41);
      v0[31] = v28;
      v44 = sub_A8CC(&qword_EF520, &qword_EF510, &qword_BE050);
      v45 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v46 = swift_task_alloc();
      v0[32] = v46;
      *v46 = v0;
      v46[1] = sub_16DB8;
      v47 = v0[23];
      v37 = v0[21];
      v36 = v0[15];
      v38 = v44;

      return dispatch thunk of AsyncIteratorProtocol.next()(v36, v37, v38);
    }

LABEL_15:
    v30 = v18;
    sub_19E28();
    v18 = v30;
    v28 = v0[9];
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v24 = v0[19];
  sub_188A0(v23, isUniquelyReferenced_nonNull_native);
  v25 = v0[9];
  v18 = sub_17ED8(v24);
  if ((v1 & 1) == (v26 & 1))
  {
    goto LABEL_12;
  }

  v27 = v0[26];

  return sub_B7DF0();
}

uint64_t sub_172EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[15];

  v10 = v0[1];
  v11 = v0[33];

  return v10();
}

uint64_t sub_173BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_174B8;

  return v11(a6);
}

uint64_t sub_174B8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_17608, 0, 0);
  }
}

uint64_t sub_17608()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018) + 48);
  v5 = sub_B6370();
  (*(*(v5 - 8) + 16))(v2, v3, v5);
  *(v2 + v4) = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ContactPickerViewModel.Dependencies.init(isReachable:isHandlePartOfSignedInAccount:excludedSuggestedContactHandles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

Swift::Int ItemContactInfoSetupConfirmationViewModel.EditType.hashValue.getter()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_17768()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

void *sub_177B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_17834(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17900(v11, 0, 0, 1, a1, a2);
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
    sub_20814(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_17900(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_17A0C(a5, a6);
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
    result = sub_B7C90();
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

char *sub_17A0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_17A58(a1, a2);
  sub_17B88(&off_E29B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_17A58(uint64_t a1, unint64_t a2)
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

  v6 = sub_17C74(v5, 0);
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

  result = sub_B7C90();
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
        v10 = sub_B79B0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17C74(v10, 0);
        result = sub_B7C70();
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

uint64_t sub_17B88(uint64_t result)
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

  result = sub_17CE8(result, v12, 1, v3);
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

void *sub_17C74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF450, &qword_BDEC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF450, &qword_BDEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void sub_17DDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_17E94(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19870();
      v11 = v15;
    }

    v12 = *(v11 + 56) + 32 * v8;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    sub_18C60(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = -1;
  }
}

unint64_t sub_17E94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_B7BA0(*(v2 + 40));

  return sub_195DC(a1, v4);
}

unint64_t sub_17ED8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_B6370();
  sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
  v5 = sub_B7870();

  return sub_196B0(a1, v5);
}

uint64_t sub_17F70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  v38 = a2;
  result = sub_B7D50();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *(v23 + 8);
      v39 = *v23;
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      if ((v38 & 1) == 0)
      {
        v27 = v22;
        sub_20AFC(v39, v24, v25, v26);
      }

      result = sub_B7BA0(*(v8 + 40));
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v39;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1821C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
  result = sub_B7D50();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_B7BA0(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1848C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_B6370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v12 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  v52 = a2;
  result = sub_B7D50();
  v14 = result;
  if (*(v11 + 16))
  {
    v59 = v10;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = v7;
    v21 = (v17 + 63) >> 6;
    v48 = v2;
    v49 = (v20 + 16);
    v53 = (v20 + 32);
    v22 = result + 64;
    v50 = v20;
    v51 = v11;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v58 = *(v20 + 72);
      v31 = v30 + v58 * v29;
      v32 = 32 * v29;
      if (v52)
      {
        (*v53)(v59, v31, v6);
        v33 = *(v11 + 56) + v32;
        v34 = *v33;
        v56 = *(v33 + 8);
        v57 = v34;
        v55 = *(v33 + 16);
        v54 = *(v33 + 24);
      }

      else
      {
        (*v49)(v59, v31, v6);
        v35 = *(v11 + 56) + v32;
        v36 = *v35;
        v37 = *(v35 + 16);
        v38 = *(v35 + 24);
        v56 = *(v35 + 8);
        v57 = v36;
        v55 = v37;
        v54 = v38;
        sub_20AFC(v36, v56, v37, v38);
      }

      v39 = *(v14 + 40);
      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
      result = sub_B7870();
      v40 = -1 << *(v14 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v22 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v22 + 8 * v42);
          if (v46 != -1)
          {
            v23 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v41) & ~*(v22 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v53)(*(v14 + 48) + v58 * v23, v59, v6);
      v24 = *(v14 + 56) + 32 * v23;
      v25 = v56;
      *v24 = v57;
      *(v24 + 8) = v25;
      *(v24 + 16) = v55;
      *(v24 + 24) = v54;
      ++*(v14 + 16);
      v20 = v50;
      v11 = v51;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v21)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v11 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v16, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v47;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_188A0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_B6370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  v44 = a2;
  result = sub_B7D50();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
      result = sub_B7870();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_18C60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B7C40() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_B7BA0(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v20 >= v21 + 2))
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_18DF8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B7C40() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_B7BA0(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_18F84(int64_t a1, uint64_t a2)
{
  v44 = sub_B6370();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_B7C40();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
      v26 = sub_B7870();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (32 * a1 != 32 * v11 || (a1 = v11, v32 >= v33 + 2))
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

id sub_192B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_17E94(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_17F70(v19, a6 & 1);
      v23 = *v7;
      v14 = sub_17E94(a5);
      if ((v20 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
        result = sub_B7DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      sub_19870();
      v14 = v22;
    }
  }

  v25 = *v7;
  if (v20)
  {
    v26 = v25[7] + 32 * v14;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
    v30 = *(v26 + 24);
    *(v26 + 24) = a4;

    return sub_20B30(v27, v28, v29, v30);
  }

  v25[(v14 >> 6) + 8] |= 1 << v14;
  *(v25[6] + 8 * v14) = a5;
  v32 = v25[7] + 32 * v14;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v33 = v25[2];
  v18 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;

  return a5;
}

id sub_19460(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_17E94(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1821C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_17E94(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
        result = sub_B7DF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_19A14();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_195DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_20A70(0, &qword_EF460, CNComposeRecipient_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_B7BB0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_196B0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_B6370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_212D0(&qword_EF528, &type metadata accessor for PersonModel.Handle);
      v16 = sub_B78C0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_19870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  v25 = v0;
  v1 = *v0;
  v2 = sub_B7D40();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = *(v1 + 56) + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v3 + 48) + 8 * v16) = v17;
        v23 = *(v3 + 56) + 32 * v16;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v24 = v17;
        result = sub_20AFC(v19, v20, v21, v22);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v25 = v3;
  }

  return result;
}

void *sub_19A14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
  v2 = *v0;
  v3 = sub_B7D40();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *sub_19B78()
{
  v1 = v0;
  v2 = sub_B6370();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  v6 = *v0;
  v7 = sub_B7D40();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v43 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v17;
    v39 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v45 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v6 + 48);
        v23 = v41;
        v24 = v42;
        v44 = *(v42 + 72) * v21;
        v25 = v40;
        (*(v42 + 16))(v40, v22 + v44, v41);
        v26 = *(v6 + 56);
        v27 = 32 * v21;
        v28 = v26 + 32 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = v43;
        LOBYTE(v21) = *(v28 + 24);
        (*(v24 + 32))(*(v43 + 48) + v44, v25, v23);
        v33 = *(v32 + 56) + v27;
        v6 = v39;
        *v33 = v29;
        *(v33 + 8) = v30;
        *(v33 + 16) = v31;
        *(v33 + 24) = v21;
        result = sub_20AFC(v29, v30, v31, v21);
        v17 = v38;
        v16 = v45;
      }

      while (v45);
    }

    v19 = v12;
    v8 = v43;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v20 = *(v35 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_19E28()
{
  v1 = v0;
  v32 = sub_B6370();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  v4 = *v0;
  v5 = sub_B7D40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1A098(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1B020(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1A208(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v25 = v8;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v24 = v12;
    v14 = *(a3 + 56) + 32 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    sub_B7A60();
    v27 = v13;
    sub_20AFC(v16, v15, v17, v18);
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v18 >= 2 && (v17 | v15 | v16) == 0)
    {
      sub_20B30(0, 0, 0, 2u);
      sub_20B30(0, 0, 0, 2u);

      sub_20B30(0, 0, 0, 2u);

      *(a1 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v20 = __OFADD__(v23++, 1);
      v8 = v25;
      v7 = v28;
      if (v20)
      {
        __break(1u);
LABEL_21:
        sub_1B0A8(a1, a2, v23, a3);
        return;
      }
    }

    else
    {
      sub_20AFC(v16, v15, v17, v18);
      sub_20B30(v16, v15, v17, v18);
      sub_20B30(0, 0, 0, 2u);

      sub_20B30(v16, v15, v17, v18);

      v8 = v25;
      v7 = v28;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_21;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A498(unint64_t *a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v60 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v4 = *(*(v72 - 8) + 64);
  v5 = __chkstk_darwin(v72);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v71 = &v58 - v8;
  __chkstk_darwin(v7);
  v79 = &v58 - v9;
  v10 = sub_B6370();
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v16 = 0;
  v73 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v68 = v13 + 16;
  v69 = v23;
  v80 = v13;
  v65 = (v13 + 8);
  v66 = v13 + 32;
  v70 = v18;
  v63 = result;
  v64 = v15;
  while (v22)
  {
    v28 = __clz(__rbit64(v22));
    v78 = (v22 - 1) & v22;
LABEL_12:
    v31 = v28 | (v16 << 6);
    v32 = v73;
    v33 = *(v80 + 16);
    v33(v15, v73[6] + *(v80 + 72) * v31, v10);
    v34 = v32[7];
    v62 = v31;
    v35 = v34 + 32 * v31;
    v36 = *v35;
    v37 = *(v35 + 8);
    v38 = v10;
    v39 = *(v35 + 16);
    v40 = *(v35 + 24);
    v41 = v79;
    v33(v79, v15, v38);
    v42 = v72;
    v43 = v41 + *(v72 + 48);
    v76 = v39;
    v77 = v36;
    *v43 = v36;
    *(v43 + 8) = v37;
    v75 = v37;
    *(v43 + 16) = v39;
    v74 = v40;
    *(v43 + 24) = v40;
    v44 = v71;
    sub_A310(v41, v71, &qword_EF4C0, &qword_BDFF0);
    v45 = *(v42 + 48);
    v47 = *(v44 + v45);
    v46 = *(v44 + v45 + 8);
    v48 = *(v44 + v45 + 16);
    v49 = *(v44 + v45 + 24);
    v50 = v67;
    v51 = &v67[v45];
    v10 = v63;
    (*(v80 + 32))(v67, v44, v63);
    *v51 = v47;
    *(v51 + 1) = v46;
    *(v51 + 2) = v48;
    v51[24] = v49;
    if (v49 == 1)
    {
      v53 = v76;
      v52 = v77;
      v54 = v47;
      v55 = v75;
      v56 = v74;
      sub_20AFC(v77, v75, v76, v74);
      sub_20AFC(v52, v55, v53, v56);
      sub_A194(v50, &qword_EF4C0, &qword_BDFF0);
      sub_A194(v79, &qword_EF4C0, &qword_BDFF0);
      sub_20B30(v52, v55, v53, v56);
      v15 = v64;
      result = (*v65)(v64, v10);
      v23 = v69;
      v18 = v70;
      v22 = v78;
      if ((v54 & 1) == 0)
      {
        *(v60 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
        if (__OFADD__(v61++, 1))
        {
          __break(1u);
          return sub_1B310(v60, v59, v61, v73);
        }
      }
    }

    else
    {
      v25 = v76;
      v24 = v77;
      v26 = v75;
      v27 = v74;
      sub_20AFC(v77, v75, v76, v74);
      sub_20AFC(v24, v26, v25, v27);
      sub_A194(v50, &qword_EF4C0, &qword_BDFF0);
      sub_A194(v79, &qword_EF4C0, &qword_BDFF0);
      sub_20B30(v24, v26, v25, v27);
      v15 = v64;
      result = (*v65)(v64, v10);
      v23 = v69;
      v18 = v70;
      v22 = v78;
    }
  }

  v29 = v16;
  while (1)
  {
    v16 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      return sub_1B310(v60, v59, v61, v73);
    }

    v30 = v18[v16];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v78 = (v30 - 1) & v30;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44[0] = a2;
  v45 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C0, &qword_BDFF0);
  v4 = *(*(v55 - 8) + 64);
  v5 = __chkstk_darwin(v55);
  v54 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v53 = v44 - v8;
  __chkstk_darwin(v7);
  v64 = v44 - v9;
  v63 = sub_B6370();
  v10 = *(*(v63 - 8) + 64);
  result = __chkstk_darwin(v63);
  v62 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v56 = a3;
  v15 = *(a3 + 64);
  v48 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v46 = 0;
  v47 = (v16 + 63) >> 6;
  v51 = v12 + 32;
  v52 = v12 + 16;
  v65 = v12;
  v50 = v12 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v61 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v56;
    v24 = *(v65 + 16);
    v26 = v62;
    v25 = v63;
    v24(v62, v56[6] + *(v65 + 72) * v22, v63);
    v27 = v24;
    v28 = v23[7];
    v49 = v22;
    v29 = v28 + 32 * v22;
    v30 = *v29;
    v59 = *(v29 + 8);
    v31 = v59;
    v60 = v30;
    v32 = *(v29 + 16);
    v58 = *(v29 + 24);
    v33 = v64;
    v27(v64, v26, v25);
    v34 = v55;
    v35 = v33 + *(v55 + 48);
    *v35 = v30;
    *(v35 + 8) = v31;
    *(v35 + 16) = v32;
    LOBYTE(v31) = v58;
    *(v35 + 24) = v58;
    v36 = v53;
    sub_A310(v33, v53, &qword_EF4C0, &qword_BDFF0);
    v37 = *(v34 + 48);
    v57 = *(v36 + v37);
    v38 = *(v36 + v37 + 16);
    LODWORD(v34) = *(v36 + v37 + 24);
    v39 = v54;
    v40 = &v54[v37];
    (*(v65 + 32))(v54, v36, v25);
    *v40 = v57;
    *(v40 + 2) = v38;
    v40[24] = v34;
    v41 = v59;
    v42 = v60;
    sub_20AFC(v60, v59, v32, v31);
    sub_20AFC(v42, v41, v32, v31);
    sub_A194(v39, &qword_EF4C0, &qword_BDFF0);
    sub_A194(v64, &qword_EF4C0, &qword_BDFF0);
    sub_20B30(v42, v41, v32, v31);
    result = (*(v65 + 8))(v62, v63);
    v18 = v61;
    if (!v34)
    {
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
        return sub_1B310(v45, v44[0], v46, v56);
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v47)
    {
      return sub_1B310(v45, v44[0], v46, v56);
    }

    v21 = *(v48 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v61 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}