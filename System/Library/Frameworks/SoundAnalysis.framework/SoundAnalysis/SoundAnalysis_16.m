id *sub_1C98E0BB4@<X0>(id *result@<X0>, void *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    v3 = *result;
    result = *result;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C98E0C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CBC58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CBC60);
  v10 = *(v9 - 8);
  v17 = v9;
  v18 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1C97A2CEC(&qword_1EC3CBBD0);
  sub_1C97A2CEC(&qword_1EC3CBC68);
  sub_1C97AE67C(&qword_1EC3CBC70, &qword_1EC3CBBD0);
  sub_1C9A91F68();

  sub_1C97A2CEC(&qword_1EC3CBC78);
  sub_1C9A91C38();
  (*(v6 + 8))(v8, v5);
  sub_1C97BD318(0, &qword_1EC3CBC80);
  sub_1C97AE67C(&qword_1EC3CBC88, &qword_1EC3CBC60);
  v14 = v17;
  sub_1C9A91F38();
  return (*(v18 + 8))(v12, v14);
}

uint64_t sub_1C98E0EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CBCC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CBCC8);
  v10 = *(v9 - 8);
  v17 = v9;
  v18 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1C97A2CEC(&qword_1EC3C8028);
  sub_1C97A2CEC(&qword_1EC3CBCD0);
  sub_1C97AE67C(&qword_1EC3C8040, &qword_1EC3C8028);
  sub_1C9A91F68();

  sub_1C97A2CEC(&qword_1EC3CBCD8);
  sub_1C9A91C38();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for AOPClassificationResult();
  sub_1C97AE67C(&qword_1EC3CBCE0, &qword_1EC3CBCC8);
  v14 = v17;
  sub_1C9A91F38();
  return (*(v18 + 8))(v12, v14);
}

uint64_t sub_1C98E11E4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CBC28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C98E30C8;
  *(v12 + 24) = v11;
  v13 = v10;
  v14 = a2;
  sub_1C97A2CEC(&qword_1EC3CBC30);
  sub_1C97AE67C(&qword_1EC3CBC38, &qword_1EC3CBC30);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CBC40, &qword_1EC3CBC28);
  v15 = sub_1C9A91F28();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v15;
  return result;
}

void sub_1C98E13D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  switch(*(a1 + 40) >> 62)
  {
    case 1:
      if (v1 >> 32 >= v1)
      {
        v2 = v1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2:
      v2 = *(v1 + 16);
LABEL_6:
      sub_1C98E2EFC(v2);
      break;
    default:
      sub_1C98FD6A8();
      break;
  }
}

uint64_t sub_1C98E14C0()
{
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C97AEAD8();
  v3 = (v2 - v1);
  type metadata accessor for SNAOPReport(0);
  sub_1C98E3520();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1C98E3578();
  }

  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v7 = sub_1C9A91B58();
  sub_1C97BFF6C(v7, qword_1EC3D3108);
  sub_1C97C926C();

  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_1C98E2EA8();
    swift_allocError();
    *v12 = v4;
    *(v12 + 8) = v6;
    *(v12 + 16) = v5;

    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1C9788000, v8, v9, "Received AOP error: %@", v10, 0xCu);
    sub_1C97DA1E0(v11, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v11, -1, -1);
    MEMORY[0x1CCA93280](v10, -1, -1);
  }

  sub_1C98E2EA8();
  swift_allocError();
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v5;
  return swift_willThrow();
}

uint64_t sub_1C98E1720@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SNAOPReport.SuccessPayload(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98E3520();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = 1;
  }

  else
  {
    sub_1C98E3578();
    v3 = 0;
  }

  v4 = type metadata accessor for AOPClassificationResult();
  return sub_1C97ACC50(a1, v3, 1, v4);
}

uint64_t sub_1C98E1828()
{
  result = sub_1C9A92348();
  qword_1EC3D31F0 = result;
  return result;
}

void sub_1C98E1868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CBC90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69A2958]) initWithOptions_];
  v10 = sub_1C9A922F8();
  [v9 setDeviceMatching_];

  [v9 setDispatchQueue_];
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_1C98E337C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E1BEC;
  aBlock[3] = &unk_1F493BD60;
  v13 = _Block_copy(aBlock);

  [v9 setDeviceNotificationHandler_];
  _Block_release(v13);
  *(swift_allocObject() + 16) = v9;
  v14 = v9;
  sub_1C9A92A98();
  [v14 activate];
}

uint64_t sub_1C98E1AE4(void *a1, char a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBC98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v10 = a1;
  v11 = a2;
  v8 = a1;
  sub_1C97A2CEC(&qword_1EC3CBC90);
  sub_1C9A92AA8();
  return (*(v5 + 8))(v7, v4);
}

void sub_1C98E1BEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1C98E1C60(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CBC48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  [a2 open];
  [a2 setDispatchQueue_];
  v19 = *(v7 + 16);
  v19(v9, a1, v6);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(v7 + 32);
  v12(v11 + ((v10 + 16) & ~v10), v9, v6);
  v25 = sub_1C98E30D8;
  v26 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C98E20BC;
  v24 = &unk_1F493BC70;
  v13 = _Block_copy(&aBlock);

  [a2 setInputReportHandler_];
  _Block_release(v13);
  v19(v9, v20, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v12(v14 + ((v10 + 24) & ~v10), v9, v6);
  v25 = sub_1C98E31A8;
  v26 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C98E5C5C;
  v24 = &unk_1F493BCC0;
  v15 = _Block_copy(&aBlock);
  v16 = a2;

  [v16 setRemovalHandler_];
  _Block_release(v15);
  *(swift_allocObject() + 16) = v16;
  v17 = v16;
  sub_1C9A92A98();
  return [v17 activate];
}

uint64_t sub_1C98E1F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1C97A2CEC(&qword_1EC3CBC50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v16 = a1;
  sub_1C97CE3DC(a5, a6);
  sub_1C97A2CEC(&qword_1EC3CBC48);
  sub_1C9A92AA8();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1C98E20BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a6;
  v14 = sub_1C9A91618();
  v16 = v15;

  v11(v12, a3, a4, a5, v14, v16);
  sub_1C97A5978(v14, v16);
}

uint64_t sub_1C98E2184(void *a1)
{
  [a1 cancel];
  [a1 close];
  sub_1C97A2CEC(&qword_1EC3CBC48);
  return sub_1C9A92AB8();
}

uint64_t static HIDUtils.standaloneAOPReportStream()()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C8D30);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  sub_1C97A2CEC(&qword_1EC3C8D38);
  sub_1C97AE9C8();
  v21 = v7;
  v22 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  if (qword_1EC3C5DA8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C98E0290(qword_1EC3D31F0);
  v23 = sub_1C97FB98C();
  sub_1C97A2CEC(&qword_1EC3C79C0);
  type metadata accessor for SNAOPReport(0);
  sub_1C97DA9B0();
  sub_1C97AE67C(v11, v12);
  sub_1C9A92048();

  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97AE67C(&qword_1EC3C8D40, &qword_1EC3C8D30);
  sub_1C9A92048();
  (*(v2 + 8))(v5, v0);
  sub_1C97AE67C(&qword_1EC3C8D48, &qword_1EC3C8D38);
  v13 = v22;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C8D50);
  sub_1C97AA878();
  swift_allocObject();
  v14 = sub_1C97C926C();
  v15 = sub_1C98E2E50(v14);
  (*(v21 + 8))(v10, v13);
  v23 = v15;
  sub_1C9835270();
  sub_1C97AE67C(v16, &qword_1EC3C8D50);
  sub_1C9A91F28();
  sub_1C97C926C();

  type metadata accessor for SharedAOPReportStream.Instance();
  sub_1C97F07FC();
  v17 = swift_allocObject();
  *(v17 + 16) = &v23;
  v18 = v17;
  sub_1C97FE0A8();
  sub_1C97C926C();

  return v18;
}

uint64_t sub_1C98E2558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v44 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v5 = sub_1C97A2CEC(&qword_1EC3C8028);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CBCA0);
  sub_1C97AE9C8();
  v13 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  type metadata accessor for IOService();
  result = sub_1C99F24F8(*MEMORY[0x1E696CD60], 0xD000000000000011, 0x80000001C9AD85A0, 0x706F616E73, 0xE500000000000000);
  if (!v3)
  {
    v38 = v10;
    v39 = v5;
    v40 = v16;
    v41 = v7;
    v18 = v44;
    v42 = v13;
    v19 = *(result + 16);
    connect[0] = 0;
    v20 = sub_1C9A70E98();
    v21 = IOServiceOpen(v19, v20, 0, connect);
    sub_1C9A3B42C(v21);
    v22 = sub_1C99F39D0(connect[0]);

    type metadata accessor for IOConnect();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v44 = v18();
    v24 = sub_1C97FE0A8();
    sub_1C97AA878();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = a1;
    v37 = v23;
    sub_1C97DAA28();
    v26 = swift_allocObject();
    v26[2] = sub_1C98E3414;
    v26[3] = v25;
    v26[4] = v24;

    sub_1C97A2CEC(&qword_1EC3C8030);
    sub_1C97DA9B0();
    sub_1C97AE67C(v27, v28);
    v29 = v38;
    sub_1C9A91EF8();
    v30 = v40;
    sub_1C98E0EFC(sub_1C98E1720, 0, v40);
    (*(v41 + 8))(v29, v39);
    sub_1C98E377C();
    sub_1C97AE67C(v31, v32);
    v33 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CBCB0);
    sub_1C97AA878();
    swift_allocObject();
    v34 = sub_1C98E2E50(v33);
    (*(v42 + 8))(v30, v11);
    *connect = v34;
    sub_1C9835270();
    sub_1C97AE67C(v35, &qword_1EC3CBCB0);
    v36 = sub_1C9A91F28();

    type metadata accessor for SharedAOPDebugStream.Instance();
    sub_1C97F07FC();
    result = swift_allocObject();
    *(result + 16) = v36;
  }

  return result;
}

void *sub_1C98E29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SharedAOPDebugStream.AOPSubscription();
  swift_allocObject();

  result = sub_1C9903700(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C98E2A78(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBCD0);
  MEMORY[0x1EEE9AC00](v4);
  a2(a1);
  swift_storeEnumTagMultiPayload();
  return sub_1C98E34C8();
}

void *sub_1C98E2B6C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3;
  v7 = a4;
  result = a1(&v8, &v6);
  if (!v4)
  {
    return v8;
  }

  return result;
}

id sub_1C98E2BBC(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
  }

  else
  {
    v4 = a1;
  }

  return a1;
}

uint64_t sub_1C98E2C34()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CBCD0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v4 - v1);
  sub_1C98E3470();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1C98E34C8();
  }

  v4[1] = *v2;
  sub_1C97A2CEC(&unk_1EC3CA040);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1C98E2DB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C98E2DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C98E2E50(uint64_t a1)
{
  type metadata accessor for SafeRecursiveLock();
  sub_1C97F07FC();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_1C98E2EA8()
{
  result = qword_1EC3CBBC8;
  if (!qword_1EC3CBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBC8);
  }

  return result;
}

void sub_1C98E2EFC(uint64_t a1)
{
  v2 = sub_1C9A91308();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C9A91338();
    if (__OFSUB__(a1, v4))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - v4 + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1C9A91328();
  if (v5)
  {
    memcpy(__dst, v5, sizeof(__dst));
    sub_1C98FD6A8();
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1C98E2FAC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  return sub_1C97D96E8(v9, a2, a3, a4, a5, a6, a7);
}

void *sub_1C98E2FE0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *(*a4)(void **__return_ptr, _BYTE *)@<X4>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  return sub_1C97D9368(v7, a2, a3, a4, a5);
}

void *sub_1C98E3014@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, _OWORD *, void, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  return sub_1C97D9200(v7, a2, a3, a4, a5);
}

uint64_t sub_1C98E3058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C98E30D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1C97A2CEC(&qword_1EC3CBC48);
  sub_1C97DACE4(v12);

  return sub_1C98E1F84(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C98E3190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C98E31A8()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CBC48);
  sub_1C97DACE4(v1);
  v2 = *(v0 + 16);

  return sub_1C98E2184(v2);
}

id sub_1C98E3214()
{
  v1 = *(v0 + 16);
  [v1 cancel];

  return [v1 close];
}

uint64_t sub_1C98E3260@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C98E2A28();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1C98E32AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C98E2BBC(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C98E32E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1C98E2D50(*a1);
  *a2 = result;
  return result;
}

void *sub_1C98E3310@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = sub_1C98E2B6C(a1, a2, *a3, *(a3 + 8));
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C98E337C(void *a1, char a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBC90);
  sub_1C97DACE4(v4);

  return sub_1C98E1AE4(a1, a2);
}

uint64_t sub_1C98E3430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0834();
  *a1 = result;
  return result;
}

uint64_t sub_1C98E3470()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(v1);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

uint64_t sub_1C98E34C8()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(v1);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

uint64_t sub_1C98E3520()
{
  sub_1C98AE1E8();
  v1(0);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

uint64_t sub_1C98E3578()
{
  sub_1C98AE1E8();
  v1(0);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

_BYTE *sub_1C98E35D0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C98E367C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C98E36BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C98E3710()
{
  result = qword_1EC3CBCE8;
  if (!qword_1EC3CBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBCE8);
  }

  return result;
}

uint64_t sub_1C98E3794(void *a1, uint64_t a2)
{
  v4 = v2;
  sub_1C97FD5DC(a1, *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings));
  if (!v3)
  {
    v7 = v6;
    v8 = *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v7, a2, ObjectType, v8);
    sub_1C97FD844(v10, *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings));
    v4 = v11;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v4;
}

void sub_1C98E3960(void *a1)
{
  swift_getObjectType();

  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 34;
  MEMORY[0x1EEE9AC00](v6);

  v7 = sub_1C97E2E88();
  if (v2)
  {

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);
    sub_1C98E56FC(v8, a1, v1);
  }
}

uint64_t sub_1C98E3B94(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v2 = v3;
  if (v3 >= 2 && *(result + 8 * v2) != 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v4 = sub_1C9A91B58();
    v5 = sub_1C98E5A08(v4, qword_1EC3D3108);
    v6 = sub_1C9A92FA8();
    if (sub_1C98E59A4(v6))
    {
      v7 = sub_1C98E59E0();
      sub_1C98139D4(v7);
      sub_1C98E59C0(&dword_1C9788000, v8, v9, "Only single-channel audio is supported.");
      sub_1C9887D60();
    }

    sub_1C9A924A8();
    sub_1C98E5A30();
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98E3C70(uint64_t result)
{
  if ((result - 1) > 1)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    v1 = sub_1C98E5A3C();
    sub_1C9929478(v1, v2, 4, v3, v4, v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98E3CE0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  result = sub_1C98E3C70(*(a1 + 16));
  if (!v2)
  {
    if (*v4 > 1uLL)
    {
      if (v4[*v4] == a2)
      {
        return result;
      }
    }

    else if (a2 == 1)
    {
      return result;
    }

    type metadata accessor for SNError();
    sub_1C9A935B8();

    v6 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v6);

    MEMORY[0x1CCA90230](46, 0xE100000000000000);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD00000000000001BLL, 0x80000001C9AD8700);

    return swift_willThrow();
  }

  return result;
}

void sub_1C98E3E18(void *a1, void *a2)
{
  v4 = [a1 inputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  sub_1C9813994();
  v5 = sub_1C9A92328();

  v6 = *(v5 + 16);

  v7 = [a2 inputDescriptionsByName];
  sub_1C9813994();
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v6 != v7)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v24 = sub_1C9A91B58();
    v25 = sub_1C98E5A08(v24, qword_1EC3D3108);
    v26 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v26))
    {
      goto LABEL_28;
    }

    v27 = sub_1C98E59E0();
    sub_1C98139D4(v27);
    v30 = "Input feature count doesn't match";
    goto LABEL_27;
  }

  v8 = [a1 inputDescriptionsByName];
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v8 != 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v31 = sub_1C9A91B58();
    v25 = sub_1C98E5A08(v31, qword_1EC3D3108);
    v32 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v32))
    {
      goto LABEL_28;
    }

    v33 = sub_1C98E59E0();
    sub_1C98139D4(v33);
    v30 = "Input feature description has > 1 input feature";
    goto LABEL_27;
  }

  v9 = [a1 inputDescriptionsByName];
  v10 = sub_1C9A92328();

  v11 = sub_1C98BBCAC(v10);

  if (!v11 || (v12 = [v11 multiArrayConstraint], v11, !v12))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v34 = sub_1C9A91B58();
    v25 = sub_1C98E5A08(v34, qword_1EC3D3108);
    v35 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v35))
    {
      goto LABEL_28;
    }

    v36 = sub_1C98E59E0();
    sub_1C98139D4(v36);
    v30 = "Input feature isn't an MLMultiArray";
LABEL_27:
    sub_1C98E59C0(&dword_1C9788000, v28, v29, v30);
    sub_1C9887D60();
LABEL_28:

    sub_1C9A924A8();
    sub_1C98E5A30();
    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    swift_willThrow();
    return;
  }

  v93 = a2;
  v94 = a1;
  v13 = [v12 shape];
  v92 = sub_1C97BD318(0, &qword_1EC3C54B0);
  v14 = sub_1C9A92798();

  v15 = sub_1C97BDEE0(v14);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_86;
    }

    v17 = 0;
    v16 = v99;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCA912B0](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 integerValue];

      v22 = *(v99 + 16);
      v21 = *(v99 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1C98E59F8(v21);
        sub_1C97B7C28();
      }

      ++v17;
      *(v99 + 16) = v23;
      *(v99 + 8 * v22 + 32) = v20;
    }

    while (v15 != v17);
  }

  else
  {
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  sub_1C99D13BC(v23);
  if (v97)
  {

    return;
  }

  sub_1C98E3B94(v16);

  v96 = v12;
  if (!v15)
  {

    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v100 = MEMORY[0x1E69E7CC0];
  sub_1C97B7C28();
  if (v15 < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v38 = 0;
  v39 = v100;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1CCA912B0](v38, v14);
    }

    else
    {
      v40 = *(v14 + 8 * v38 + 32);
    }

    v41 = v40;
    v42 = [v40 integerValue];

    v44 = *(v100 + 16);
    v43 = *(v100 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1C98E59F8(v43);
      sub_1C97B7C28();
    }

    ++v38;
    *(v100 + 16) = v44 + 1;
    *(v100 + 8 * v44 + 32) = v42;
  }

  while (v15 != v38);

LABEL_44:
  v45 = sub_1C99D1444(v39);
  v47 = v46;

  if (v47)
  {
    v45 = 1;
  }

  v12 = v96;
  if ([v96 dataType] != 65568)
  {
    if (qword_1EC3C5520 == -1)
    {
LABEL_61:
      v67 = sub_1C9A91B58();
      v68 = sub_1C98E5A08(v67, qword_1EC3D3108);
      v69 = sub_1C9A92FA8();
      if (!sub_1C98E59A4(v69))
      {
LABEL_76:

        sub_1C9A924A8();
        sub_1C98E5A30();
        v83 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1C98E597C();
        swift_willThrow();

        return;
      }

      v70 = sub_1C98E59E0();
      sub_1C98139D4(v70);
      v73 = "Input feature must contain floating point data";
LABEL_75:
      sub_1C98E59C0(&dword_1C9788000, v71, v72, v73);
      sub_1C9887D60();
      goto LABEL_76;
    }

LABEL_87:
    sub_1C97DAA64();
    goto LABEL_61;
  }

  v98 = v45;
  v48 = [v94 outputDescriptionsByName];
  sub_1C9813994();
  v49 = sub_1C9A92328();

  v50 = *(v49 + 16);

  v51 = [v93 outputDescriptionsByName];
  sub_1C9813994();
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v50 != v51)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v74 = sub_1C9A91B58();
    v68 = sub_1C98E5A08(v74, qword_1EC3D3108);
    v75 = sub_1C9A92FA8();
    v12 = v96;
    if (!sub_1C98E59A4(v75))
    {
      goto LABEL_76;
    }

    v76 = sub_1C98E59E0();
    sub_1C98139D4(v76);
    v73 = "Output feature count doesn't match";
    goto LABEL_75;
  }

  v52 = [v94 outputDescriptionsByName];
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v52 != 1)
  {
    v12 = v96;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v77 = sub_1C9A91B58();
    v68 = sub_1C98E5A08(v77, qword_1EC3D3108);
    v78 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v78))
    {
      goto LABEL_76;
    }

    v79 = sub_1C98E59E0();
    sub_1C98139D4(v79);
    v73 = "Output feature description has > 1 feature";
    goto LABEL_75;
  }

  v53 = [v94 outputDescriptionsByName];
  v54 = sub_1C9A92328();

  v55 = sub_1C98BBCAC(v54);

  v12 = v96;
  if (!v55 || (v56 = [v55 multiArrayConstraint], v55, !v56))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v80 = sub_1C9A91B58();
    v68 = sub_1C98E5A08(v80, qword_1EC3D3108);
    v81 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v81))
    {
      goto LABEL_76;
    }

    v82 = sub_1C98E59E0();
    sub_1C98139D4(v82);
    v73 = "No multi array constraint for output feature";
    goto LABEL_75;
  }

  v57 = [v56 shape];
  v58 = sub_1C9A92798();

  v59 = sub_1C97BDEE0(v58);
  if (v59 < 1)
  {

    v84 = v96;
  }

  else
  {
    v60 = v59;
    v95 = v56;
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    for (i = 0; i != v60; ++i)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1CCA912B0](i, v58);
      }

      else
      {
        v62 = *(v58 + 8 * i + 32);
      }

      v63 = v62;
      v64 = [v62 integerValue];

      v66 = *(v101 + 16);
      v65 = *(v101 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1C98E59F8(v65);
        sub_1C97B7C28();
      }

      *(v101 + 16) = v66 + 1;
      *(v101 + 8 * v66 + 32) = v64;
    }

    sub_1C98E3CE0(v101, v98);

    v56 = v95;
    v84 = v96;
  }

  if ([v56 dataType] != 65568)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v85 = sub_1C9A91B58();
    v86 = sub_1C98E5A08(v85, qword_1EC3D3108);
    v87 = sub_1C9A92FA8();
    if (sub_1C98E59A4(v87))
    {
      v88 = sub_1C98E59E0();
      sub_1C98139D4(v88);
      sub_1C98E59C0(&dword_1C9788000, v89, v90, "Output feature must contain floating point data");
      sub_1C9887D60();
    }

    sub_1C9A924A8();
    sub_1C98E5A30();
    v91 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    swift_willThrow();
  }
}

void sub_1C98E48C4(void *a1)
{
  v3 = v1;
  if (sub_1C989BF88())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C98C89D4(33, v5);
  if (v2)
  {

LABEL_7:
    type metadata accessor for SNSoundPrintAFeatureEmbeddingCustomModel();
    swift_deallocPartialClassInstance();
    return;
  }

  v7 = v6;
  type metadata accessor for SNMLModelAdapter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  type metadata accessor for SNSoundPrintAFeatureEmbeddingCustomModel();
  v9 = [v7 modelDescription];
  sub_1C98E3E18(a1, v9);

  v10 = [a1 outputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v11 = sub_1C9A92328();

  v12 = sub_1C98BBCC4(v11);
  v14 = v13;

  if (!v14)
  {

LABEL_24:
    type metadata accessor for SNError();
    sub_1C98573F8();
    v37 = sub_1C98E5A3C();
    sub_1C9929478(v37, v38, 1, v39, v40, v41);
    swift_willThrow();

    goto LABEL_7;
  }

  v44 = v8;
  v15 = [a1 inputDescriptionsByName];
  v16 = sub_1C9A92328();

  v17 = sub_1C98BBCC4(v16);
  v19 = v18;

  if (!v19)
  {

    goto LABEL_24;
  }

  v20 = &v1[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName];
  *v20 = v17;
  v20[1] = v19;
  v21 = &v1[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName];
  *v21 = v12;
  v21[1] = v14;

  v22 = [a1 outputDescriptionsByName];
  v23 = sub_1C9A92328();
  v24 = sub_1C98782A4(v12, v14, v23);

  v25 = v44;
  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = [v24 multiArrayConstraint];

  if (v26)
  {

    v27 = [v26 shape];
    sub_1C97BD318(0, &qword_1EC3C54B0);
    v28 = sub_1C9A92798();

    v29 = sub_1C97BDEE0(v28);
    v43 = a1;
    if (!v29)
    {

      v32 = MEMORY[0x1E69E7CC0];
LABEL_26:
      *&v3[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputShape] = v32;
      sub_1C98E5858(v25, v43, v3);
      return;
    }

    v30 = v29;
    v42 = v3;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    if ((v30 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v45;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1CCA912B0](v31, v28);
        }

        else
        {
          v33 = *(v28 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 integerValue];

        v36 = *(v45 + 16);
        if (v36 >= *(v45 + 24) >> 1)
        {
          sub_1C97B7C28();
        }

        ++v31;
        *(v45 + 16) = v36 + 1;
        *(v45 + 8 * v36 + 32) = v35;
      }

      while (v30 != v31);

      v3 = v42;
      v25 = v44;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
}

void sub_1C98E4E2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_1C98E4EBC(a1, v3, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

void sub_1C98E4EBC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v13 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName);
  v12 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName + 8);
  v14 = sub_1C9A92478();
  v15 = [a1 featureValueForName_];

  if (!v15 || (v16 = [v15 multiArrayValue], v15, !v16))
  {
    v19 = sub_1C9A924A8();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v7 = sub_1C9A3B688(v19, v21, 1, 0);
    swift_willThrow();
    goto LABEL_6;
  }

  v55 = a5;
  v17 = sub_1C998D85C(v16);
  sub_1C998FC50(v17, 3);
  if (v5)
  {

LABEL_6:
    *a4 = v7;
    return;
  }

  v52 = v17;
  v54 = a4;
  v53 = v18;
  v23 = [objc_opt_self() featureValueWithMultiArray_];
  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = v13;
  *(inited + 40) = v12;
  *(inited + 72) = sub_1C97BD318(0, &qword_1EC3C54F8);
  *(inited + 48) = v23;

  v25 = v23;
  sub_1C9A92348();
  v26 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v27 = sub_1C98B6EC8();
  v28 = sub_1C98E3794(v27, a3);
  v51 = v27;

  v29 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName);
  v30 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName + 8);
  v31 = sub_1C9A92478();
  v32 = [v28 featureValueForName_];

  if (v32)
  {
    v33 = swift_allocObject();
    v34 = [v32 multiArrayValue];

    v33[2] = v34;
    if (!v34)
    {
      v41 = sub_1C9A924A8();
      v43 = v42;
      v44 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v7 = sub_1C9A3B688(v41, v43, 0, 0);
      swift_willThrow();

      swift_unknownObjectRelease();

      a4 = v54;
      goto LABEL_6;
    }

    v50 = v25;
    v35 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputShape);
    v36 = sub_1C9A92768();
    v37 = sub_1C998D6A4(v36);

    v38 = v33[2];
    if (v38)
    {
      v39 = [v38 dataPointer];
      v40 = sub_1C97E9580(v35);
      objc_allocWithZone(MEMORY[0x1E695FED0]);

      v45 = sub_1C9990C04(v39, v40, 65568, v37, sub_1C98E56F4, v33);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_1C9A9EDD0;
      *(v46 + 32) = v29;
      *(v46 + 40) = v30;
      *(v46 + 72) = sub_1C97BD318(0, &unk_1EC3C5500);
      *(v46 + 48) = v45;

      v47 = v45;
      sub_1C9A92348();
      v48 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v49 = sub_1C98B6EC8();

      swift_unknownObjectRelease();

      *v55 = v49;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C98E5480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
}

id sub_1C98E54E0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = a6(a3, v10);

  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_1C98E55C4()
{
}

id sub_1C98E5634(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C98E56FC(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_modelDescription] = a2;
  v6 = &a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model];
  *v6 = a1;
  *(v6 + 1) = &off_1F4937390;
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v10 = a2;

  v11 = v9(ObjectType, v7);
  v12 = sub_1C97FD440(v10, v11);

  if (v12)
  {
    *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings] = v12;
    v13 = *(a1 + 24);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 16))(v14, v13);
    v16 = sub_1C97FD44C(v10, v15);

    if (v16)
    {
      *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings] = v16;
      v17.receiver = a3;
      v17.super_class = type metadata accessor for SNSoundPrintFeatureEmbeddingCustomModel();
      objc_msgSendSuper2(&v17, sel_init);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C98E5858(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_modelDescription] = a2;
  v5 = &a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model];
  *v5 = a1;
  *(v5 + 1) = &off_1F4937370;
  v6 = *(a1 + 16);
  v7 = a2;

  v8 = [v6 modelDescription];
  v9 = sub_1C97FD440(v7, v8);

  if (v9)
  {
    *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings] = v9;
    v10 = [*(a1 + 16) modelDescription];
    v11 = sub_1C97FD44C(v7, v10);

    if (v11)
    {
      *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings] = v11;
      v12.receiver = a3;
      v12.super_class = type metadata accessor for SNSoundPrintFeatureEmbeddingCustomModel();
      objc_msgSendSuper2(&v12, sel_init);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C98E597C()
{

  return sub_1C9A3B688(v0, v1, 0, 0);
}

BOOL sub_1C98E59A4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1C98E59C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C98E59E0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C98E5A08(uint64_t a1, uint64_t a2)
{
  sub_1C97BFF6C(a1, a2);

  return sub_1C9A91B38();
}

uint64_t sub_1C98E5A50()
{
}

id static SystemUtils.queryXCapability()()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    return exclaveCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemUtils(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C98E5B58(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C97DA5D0;

  return v8(a1, a2);
}

uint64_t sub_1C98E5C5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_1C98E5DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrampolineXPCListenerDelegate();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13SoundAnalysis29TrampolineXPCListenerDelegate_listenerShouldAcceptNewConnectionFn];
  *v8 = a2;
  *(v8 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v6;

  v9 = objc_msgSendSuper2(&v12, sel_init);
  [a1 setDelegate_];
  [a1 resume];
  v10 = a1;
  return a1;
}

uint64_t sub_1C98E5E6C(void *a1, uint64_t (*a2)(void *, void *, uint64_t))
{
  v17[3] = sub_1C98E7D4C();
  v17[4] = &off_1F4937A48;
  v17[0] = a1;
  v4 = a1;
  v5 = sub_1C99A7FC0(v17, 0xD00000000000002BLL, 0x80000001C9AD88E0);
  if (v5 == 2)
  {
    sub_1C97A592C(v17);
  }

  else
  {
    sub_1C97A592C(v17);
    if (v5)
    {
      sub_1C98E61C0(v4, a2);
      v10 = 1;
      goto LABEL_8;
    }
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C9788000, v7, v8, "Client rejected due to insufficient entitlements.", v9, 2u);
    sub_1C9840CEC();
  }

  v10 = 0;
LABEL_8:
  [v4 resume];
  v11 = [v4 processIdentifier];
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v12 = sub_1C9A91B58();
  sub_1C97BFF6C(v12, qword_1EC3D3108);
  v13 = sub_1C9A91B38();
  v14 = sub_1C9A92FC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = v11;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v10;
    _os_log_impl(&dword_1C9788000, v13, v14, "  Client with PID %d attempted to connect.   Accepted? %{BOOL}d", v15, 0xEu);
    sub_1C9840CEC();
  }

  return v10;
}

void sub_1C98E61C0(void *a1, uint64_t (*a2)(void *, void *, uint64_t))
{
  sub_1C97A2CEC(&qword_1EC3CBDA8);
  swift_allocObject();
  v5 = sub_1C982D06C();
  v6 = [a1 processIdentifier];
  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v31 = sub_1C98E7F80;
  v32 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  v30 = &unk_1F493C190;
  v8 = _Block_copy(aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v30 = sub_1C98E7D4C();
  v31 = &off_1F4937A48;
  aBlock[0] = a1;

  v10 = a1;
  v11 = a2(aBlock, &unk_1C9AB0E80, v9);
  if (v2)
  {

    sub_1C97A592C(aBlock);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    sub_1C97A592C(aBlock);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = &unk_1C9AB0E80;
    v15[5] = v9;
    sub_1C97AA878();
    v16 = swift_allocObject();
    *(v16 + 16) = &unk_1C9AB0E90;
    *(v16 + 24) = v15;

    sub_1C97A7E30(&unk_1C9AB0EA0, v16, &unk_1C9AB0E80, v9);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v33 = v23;

    if (qword_1EC3C5D80 != -1)
    {
      swift_once();
    }

    [v10 setExportedInterface_];
    v24 = type metadata accessor for XPCProxyXPCHost();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted];
    *v26 = v18;
    *(v26 + 1) = v33;
    *(v26 + 2) = v20;
    *(v26 + 3) = v22;
    v28.receiver = v25;
    v28.super_class = v24;

    v27 = objc_msgSendSuper2(&v28, sel_init);
    [v10 setExportedObject_];
  }
}

uint64_t sub_1C98E6568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C985E490();
}

void *sub_1C98E6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97D9AF8(a1, v10);
  sub_1C98137F8();
  v5 = swift_allocObject();
  sub_1C979B054(v10, v5 + 16);
  sub_1C97A2CEC(&qword_1EC3C97B8);
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CBDC0);
  sub_1C97AA878();
  swift_allocObject();
  v7 = sub_1C9A37FC8(v6);
  sub_1C98137F8();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C98E8178;
  *(v8 + 24) = v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = v7;
  *(v8 + 48) = a4;

  return &unk_1C9AB0EC0;
}

uint64_t sub_1C98E6748(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  sub_1C97A5A8C(a3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

void sub_1C98E67C8(int a1)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1C9788000, v3, v4, "Invalidation handler called for connection to PID %d", v5, 8u);
    MEMORY[0x1CCA93280](v5, -1, -1);
  }

  type metadata accessor for SNError();
  v6 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x697463656E6E6F63, 0xEF74736F6C206E6FLL);
  sub_1C9829A5C(v6);
}

uint64_t sub_1C98E6944(uint64_t a1, int a2)
{
  *(v2 + 32) = a2;
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1C98E69EC;

  return sub_1C982A5B4();
}

uint64_t sub_1C98E69EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C98E6AE4, 0, 0);
}

uint64_t sub_1C98E6AE4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v3 = sub_1C9A91B58();
    sub_1C97BFF6C(v3, qword_1EC3D3108);
    v4 = v1;
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92FC8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 67109378;
      *(v8 + 4) = v7;
      *(v8 + 8) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 10) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C9788000, v5, v6, "Connection state invalidated for client with PID %d; error: %@", v8, 0x12u);
      sub_1C97BFFA4(v9);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 24);

  return v12(v13);
}

uint64_t sub_1C98E6C74(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a1;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v6[16] = v8;
  *v8 = v6;
  v8[1] = sub_1C98E6D78;

  return (v10)(v6 + 8, a2);
}

uint64_t sub_1C98E6D78()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_1C98E6F48;
  }

  else
  {
    v5 = sub_1C98E6E7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98E6E7C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_1C97A5A8C((v0 + 64), v4);
  sub_1C99DC400(v2, v3, v4, v5, (v0 + 16));
  if (!v1)
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 16);
    v9 = *(v0 + 48);
    v7[1] = *(v0 + 32);
    v7[2] = v9;
    *v7 = v8;
  }

  sub_1C97A592C(v0 + 64);
  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C98E6F6C()
{
  sub_1C97AA878();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001C9AD6F00;
  type metadata accessor for AnalysisClientUtils.RegenerativeConnection();
  v1 = swift_allocObject();
  result = sub_1C98E7540();
  qword_1EC3D31F8 = v1;
  return result;
}

id sub_1C98E6FF0(uint64_t a1, uint64_t a2)
{

  result = sub_1C98E7038(a1, a2);
  if (v2)
  {
    return v6;
  }

  return result;
}

id sub_1C98E7038(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3CBDA8);
  swift_allocObject();

  v4 = sub_1C982D06C();
  sub_1C98E7D4C();

  v5 = sub_1C98E7284(a1, a2, 4096);
  v13 = sub_1C98E7D44;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C98E5C5C;
  v12 = &unk_1F493C0C8;
  v6 = _Block_copy(&v9);

  [v5 setInterruptionHandler_];
  _Block_release(v6);
  v13 = sub_1C98E7D44;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C98E5C5C;
  v12 = &unk_1F493C0F0;
  v7 = _Block_copy(&v9);

  [v5 setInvalidationHandler_];
  _Block_release(v7);
  [v5 resume];

  if (qword_1EC3C5D80 != -1)
  {
    swift_once();
  }

  [v5 setRemoteObjectInterface_];
  swift_bridgeObjectRelease_n();
  return v5;
}

id sub_1C98E7284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C9A92478();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1C98E7300()
{
  type metadata accessor for SNError();
  v0 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x697463656E6E6F63, 0xEF74736F6C206E6FLL);
  sub_1C9829A5C(v0);
}

uint64_t sub_1C98E73B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98E7454;

  return sub_1C982A5B4();
}

uint64_t sub_1C98E7454()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C98E7540()
{
  sub_1C981E1EC();
  swift_defaultActor_initialize();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return v1;
}

uint64_t sub_1C98E7580()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = v1;

    [v2 invalidate];
  }

  if (*(v0 + 152))
  {

    sub_1C9A92A28();
  }

  sub_1C98E8250();
  *(v0 + 152) = 0;

  sub_1C98E7F00(*(v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C98E7650()
{
  sub_1C98E7580();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C98E76A0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = v1;

    [v2 invalidate];
  }

  if (*(v0 + 152))
  {

    sub_1C9A92A28();
  }

  sub_1C98E8250();
  *(v0 + 152) = 0;
}

uint64_t sub_1C98E7754()
{
  sub_1C97AA884();
  *(v1 + 16) = v0;
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C98E77EC, v0, 0);
}

uint64_t sub_1C98E77EC()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = *(v1 + 128);
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
  }

  else
  {
    v8 = (*(v1 + 112))();
    v9 = v0[3];
    v10 = v8;
    v4 = v11;
    v5 = v12;
    v20 = v0[2];
    v13 = sub_1C9A92988();
    sub_1C97ACC50(v9, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = v4;
    v15[6] = v5;
    v15[7] = v14;
    v16 = v10;
    swift_retain_n();
    v3 = v16;
    sub_1C99A9128();
    v18 = v17;
    v19 = *(v1 + 128);
    *(v1 + 128) = v3;
    *(v1 + 136) = v4;
    *(v1 + 144) = v5;
    sub_1C98E7F00(v19);
    *(v20 + 152) = v18;
  }

  sub_1C98E7F40(v2);

  v6 = v0[1];

  return v6(v3, v4, v5);
}

uint64_t sub_1C98E7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 48) = v8;
  *v8 = v7;
  v8[1] = sub_1C98E7AFC;

  return v10();
}

uint64_t sub_1C98E7AFC()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C98E7BF4, 0, 0);
}

uint64_t sub_1C98E7BF4()
{
  sub_1C97AA884();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C98E7CA4, Strong, 0);
  }

  else
  {
    sub_1C97DA91C();

    return v2();
  }
}

uint64_t sub_1C98E7CA4()
{
  sub_1C97AA884();
  sub_1C98E76A0();

  sub_1C97DA91C();

  return v0();
}

unint64_t sub_1C98E7D4C()
{
  result = qword_1EC3CBDB0;
  if (!qword_1EC3CBDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBDB0);
  }

  return result;
}

uint64_t sub_1C98E7D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C98E7DA8()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98E7454;

  return sub_1C98E73B0();
}

uint64_t sub_1C98E7E34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_1C97AA858(v9);
  *v10 = v11;
  v10[1] = sub_1C97D9C3C;

  return sub_1C98E7A10(a1, v3, v4, v5, v6, v8, v7);
}

void *sub_1C98E7F00(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C98E7F40(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_1C98E7F8C()
{
  sub_1C97AA884();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C98E8234;

  return sub_1C98E6944(v2, v3);
}

uint64_t sub_1C98E8024()
{
  sub_1C981E1EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v6[1] = sub_1C97D9C3C;
  v8 = sub_1C98E8240();

  return sub_1C98E6C74(v8, v9, v1, v2, v4, v3);
}

uint64_t sub_1C98E80D8()
{
  sub_1C981E1EC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97DA5D0;
  v5 = sub_1C98E8240();

  return sub_1C98E5B58(v5, v6, v1);
}

uint64_t sub_1C98E8194()
{
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98E8240();

  return sub_1C98E6568();
}

void *sub_1C98E8250()
{
  v3 = *(v0 + 128);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;

  return sub_1C98E7F00(v3);
}

double SNShazamSignatureResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNShazamSignatureResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNShazamSignatureResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNShazamSignatureResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C98E8394@<D0>(_OWORD *a1@<X8>)
{
  SNShazamSignatureResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNShazamSignatureResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNShazamSignatureResult.timeRange.getter((v3 + 1));
  return sub_1C98E843C;
}

void sub_1C98E843C(void **a1)
{
  v1 = *a1;
  SNShazamSignatureResult.timeRange.setter(*a1 + 8);

  free(v1);
}

void (*SNShazamSignatureResult.signature.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___SNShazamSignatureResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2 + 48);
  *a1 = v3;
  v4 = v3;
  return sub_1C98E85C0;
}

void sub_1C98E85C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
}

void *(*SNShazamSignatureResult.sequenceNum.modify(void *a1))(void *result)
{
  v2 = OBJC_IVAR___SNShazamSignatureResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98E8684;
}

id sub_1C98E8698(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  [a1 copy];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C98E9268();
  if (swift_dynamicCast())
  {
    v7 = v18;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v8 = sub_1C9A91B58();
    sub_1C97BFF6C(v8, qword_1EC3D3108);
    v9 = sub_1C9A91B38();
    v10 = sub_1C9A92FA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C9788000, v9, v10, "Failed to copy Shazam signature", v11, 2u);
      MEMORY[0x1CCA93280](v11, -1, -1);
    }

    v7 = a1;
  }

  v12 = MEMORY[0x1E6960C98];
  v13 = *(MEMORY[0x1E6960C98] + 40);
  v14 = &v3[OBJC_IVAR___SNShazamSignatureResult_impl];
  *v14 = *MEMORY[0x1E6960C98];
  *(v14 + 1) = *(v12 + 8);
  *(v14 + 1) = *(v12 + 16);
  *(v14 + 4) = *(v12 + 32);
  *(v14 + 5) = v13;
  *(v14 + 6) = v7;
  *(v14 + 7) = a2;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

id SNShazamSignatureResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNShazamSignatureResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNShazamSignatureResult_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A64A0(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNShazamSignatureResult.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 16);
  v7 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl);
  v8 = v1;
  v2 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 48);
  v9 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 32);
  v10 = v2;
  sub_1C9A93CC8();
  v3 = v10;
  MEMORY[0x1CCA919B0](v7);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v8);
  MEMORY[0x1CCA919B0](*(&v8 + 1));
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](*(&v9 + 1));
  sub_1C97A64A0(&v7, v6);
  MEMORY[0x1CCA91980]([v3 hash]);
  MEMORY[0x1CCA919B0](*(&v3 + 1));
  v4 = sub_1C9A93D18();
  sub_1C98E91D8(&v7);
  return v4;
}

BOOL SNShazamSignatureResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v18);
  if (v19)
  {
    sub_1C97A2D34(&v18, v17);
    sub_1C97BD360(v17, v16);
    if (swift_dynamicCast())
    {
      v3 = v15;
      v4 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 16);
      v14[0] = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl);
      v14[1] = v4;
      v14[2] = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 32);
      v5 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 48);
      v6 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 56);
      v7 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 16];
      v13[0] = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl];
      v13[1] = v7;
      v13[2] = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 32];
      v8 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 48];
      v9 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 56];
      if (static TimeRange.== infix(_:_:)(v14, v13))
      {
        v10 = [v5 isEqual_];

        if (v10)
        {
          v11 = v6 == v9;
LABEL_9:
          sub_1C97A592C(v17);
          return v11;
        }
      }

      else
      {
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  return 0;
}

id SNShazamSignatureResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1D2C();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNShazamSignatureResult_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C9841DA0();
  return v7;
}

Swift::Void __swiftcall SNShazamSignatureResult.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNShazamSignatureResult_impl);
  sub_1C97A64A0(v3, v2);
  sub_1C979FB24(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C98E91D8(v3);
}

uint64_t SNShazamSignatureResult.description.getter()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v20, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  v21 = v3;
  v22 = v5;
  MEMORY[0x1CCA90230](8236, 0xE200000000000000);
  v6 = &v1[OBJC_IVAR___SNShazamSignatureResult_impl];
  v7 = [*&v1[OBJC_IVAR___SNShazamSignatureResult_impl + 48] description];
  v8 = sub_1C9A924A8();
  v10 = v9;

  MEMORY[0x1CCA90230](v8, v10);

  MEMORY[0x1CCA90230](8236, 0xE200000000000000);
  *&v23[0] = *(v6 + 7);
  v11 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v11);

  MEMORY[0x1CCA90230](8238, 0xE200000000000000);
  SNShazamSignatureResult.timeRange.getter(v23);
  v12 = objc_opt_self();
  v19[0] = v23[0];
  v19[1] = v23[1];
  v19[2] = v23[2];
  v13 = [v12 valueWithCMTimeRange_];
  v14 = [v13 description];
  v15 = sub_1C9A924A8();
  v17 = v16;

  MEMORY[0x1CCA90230](v15, v17);

  return v21;
}

id SNShazamSignatureResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNShazamSignatureResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98E9194@<D0>(_OWORD *a1@<X8>)
{
  SNShazamSignatureResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C98E9268()
{
  result = qword_1EC3CBDD8;
  if (!qword_1EC3CBDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBDD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CInteropUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98E938C()
{
  result = qword_1EC3CBDE0;
  if (!qword_1EC3CBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBDE0);
  }

  return result;
}

uint64_t static SNAOPReport.SuccessPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationResult();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CBDE8);
  sub_1C97DACE4(v16);
  sub_1C97ABFF0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = *(v18 + 56);
  sub_1C98ED0E8(a1, &v32 - v19);
  sub_1C98ED0E8(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C98EE594();
    v23 = sub_1C98EE6C0();
    sub_1C98ED0E8(v23, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C98EE690();
      sub_1C98ECDB4(&v20[v21], v8);
      if (sub_1C9A916B8() & 1) != 0 && (sub_1C9A916B8())
      {
        sub_1C9845534(*&v15[*(v4 + 24)], *(v8 + *(v4 + 24)));
        if (v26)
        {
          sub_1C98EE6A8();
          sub_1C98E96C8(v8, v27);
          sub_1C98E96C8(v15, v4);
          sub_1C98EE564();
          sub_1C98E96C8(v20, v28);
          return 1;
        }
      }

      sub_1C98EE6A8();
      sub_1C98E96C8(v8, v29);
      sub_1C98E96C8(v15, v4);
      sub_1C98EE564();
      sub_1C98E96C8(v20, v30);
      return 0;
    }

    sub_1C98EE5C4();
    sub_1C98E96C8(v15, v25);
LABEL_6:
    sub_1C97DA1E0(v20, &qword_1EC3CBDE8);
    return 0;
  }

  sub_1C98EE594();
  sub_1C98ED0E8(v20, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v22 = *v12 == *&v20[v21];
  sub_1C98E96C8(v20, type metadata accessor for SNAOPReport.SuccessPayload);
  return v22;
}

uint64_t sub_1C98E96C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C98E9720(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C9AD89B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98E97F8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6966697373616C63;
  }
}

uint64_t sub_1C98E9840(uint64_t a1)
{
  v2 = sub_1C98E9E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E987C(uint64_t a1)
{
  v2 = sub_1C98E9E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98E98D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98E9720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98E9900(uint64_t a1)
{
  v2 = sub_1C98E9D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E993C(uint64_t a1)
{
  v2 = sub_1C98E9D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98E9978(uint64_t a1)
{
  v2 = sub_1C98E9D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E99B4(uint64_t a1)
{
  v2 = sub_1C98E9D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SNAOPReport.SuccessPayload.encode(to:)()
{
  sub_1C97AEB94();
  v22 = v0;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CBDF0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CBDF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98EE6CC(v7, v21);
  type metadata accessor for AOPClassificationResult();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v9 = sub_1C98EE728();
  type metadata accessor for SNAOPReport.SuccessPayload(v9);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  sub_1C98EE788();
  sub_1C97A2CEC(&qword_1EC3CBE00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97E86E4();
  sub_1C97BE20C(v4, v4[3]);
  sub_1C98E9D40();
  sub_1C98EE7FC();
  sub_1C98EE594();
  sub_1C98ED0E8(v22, v1);
  sub_1C97AEB30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98E9D94();
    sub_1C98EE6EC();
    sub_1C98E9DE8();
    sub_1C9A93A18();
    v12 = sub_1C98EE738();
    v13(v12);
  }

  else
  {
    sub_1C98ECDB4(v1, v2);
    sub_1C98E9E3C();
    sub_1C98EE6EC();
    sub_1C98EE678();
    sub_1C98EC018(v14, v15);
    sub_1C9A93A18();
    v16 = sub_1C98EE738();
    v17(v16);
    sub_1C98EE5C4();
    sub_1C98E96C8(v2, v18);
  }

  v19 = sub_1C98EE718();
  v20(v19);
  sub_1C97AEB5C();
}

unint64_t sub_1C98E9D40()
{
  result = qword_1EC3CBE08;
  if (!qword_1EC3CBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE08);
  }

  return result;
}

unint64_t sub_1C98E9D94()
{
  result = qword_1EC3CBE10;
  if (!qword_1EC3CBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE10);
  }

  return result;
}

unint64_t sub_1C98E9DE8()
{
  result = qword_1EC3CBE18;
  if (!qword_1EC3CBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE18);
  }

  return result;
}

unint64_t sub_1C98E9E3C()
{
  result = qword_1EC3CBE20;
  if (!qword_1EC3CBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE20);
  }

  return result;
}

uint64_t SNAOPReport.SuccessPayload.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AOPClassificationResult();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  sub_1C98EE788();
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C98EE594();
  sub_1C98ED0E8(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x1CCA91980](1);
    return sub_1C9A93CF8();
  }

  else
  {
    sub_1C98EE690();
    sub_1C98ECDB4(v10, v2);
    MEMORY[0x1CCA91980](0);
    sub_1C9A916E8();
    sub_1C98EE534();
    sub_1C98EC018(v12, v13);
    sub_1C9A92398();
    sub_1C9A92398();
    sub_1C984A234(a1, *(v2 + *(v5 + 24)));
    sub_1C98EE5C4();
    return sub_1C98E96C8(v2, v14);
  }
}

void SNAOPReport.SuccessPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_1C97AEB94();
  v83 = v11;
  v14 = v13;
  v74 = v15;
  v75 = sub_1C97A2CEC(&qword_1EC3CBE30);
  sub_1C97AE9C8();
  v80 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v79 = v18;
  sub_1C97A2CEC(&qword_1EC3CBE38);
  sub_1C97AE9C8();
  v76 = v20;
  v77 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v78 = v22;
  sub_1C97A2CEC(&qword_1EC3CBE40);
  sub_1C97AE9C8();
  v81 = v24;
  v82 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C98EE7B4();
  v27 = type metadata accessor for SNAOPReport.SuccessPayload(v26);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C98435A0();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C98EE7C8();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v68 - v34;
  v36 = v14[3];
  sub_1C97BE20C(v14, v36);
  sub_1C98E9D40();
  v37 = v83;
  sub_1C9A93DB8();
  if (!v37)
  {
    v71 = v10;
    v72 = v31;
    v70 = v35;
    v73 = v27;
    v83 = v14;
    v38 = v82;
    v39 = sub_1C9A93958();
    sub_1C98ECCE8(v39, 0);
    v41 = v40;
    if (v43 != v42 >> 1)
    {
      sub_1C98EE770();
      if (v48 == v49)
      {
        __break(1u);
        return;
      }

      v69 = *(v47 + v45);
      sub_1C98ECC6C(v45 + 1, v44, v41, v47, v45, v46);
      sub_1C98EE7DC();
      v50 = v72;
      if (!v36)
      {
        if (v69)
        {
          sub_1C98E9D94();
          sub_1C98EE614();
          sub_1C98ECD60();
          sub_1C98EE85C();
          swift_unknownObjectRelease();
          v58 = sub_1C98EE6C0();
          v59(v58);
          v60 = sub_1C98715A4();
          v61(v60);
          *v50 = a10;
          swift_storeEnumTagMultiPayload();
          sub_1C98EE54C();
          v62 = v50;
        }

        else
        {
          sub_1C98E9E3C();
          sub_1C98EE614();
          type metadata accessor for AOPClassificationResult();
          sub_1C98EE678();
          sub_1C98EC018(v55, v56);
          v57 = v71;
          sub_1C98EE83C();
          swift_unknownObjectRelease();
          v63 = sub_1C98EE6C0();
          v64(v63);
          v65 = sub_1C97A7890();
          v66(v65);
          swift_storeEnumTagMultiPayload();
          sub_1C98EE54C();
          v62 = v57;
        }

        v67 = v70;
        sub_1C98ECDB4(v62, v70);
        sub_1C98EE54C();
        sub_1C98ECDB4(v67, v74);
        v54 = v83;
        goto LABEL_10;
      }
    }

    v51 = sub_1C9A93648();
    swift_allocError();
    v53 = v52;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    sub_1C98EE81C();
    sub_1C98EE748();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v12, v38);
    v14 = v83;
  }

  v54 = v14;
LABEL_10:
  sub_1C97A592C(v54);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EA5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNAOPReport.SuccessPayload(0);
  v5 = sub_1C97DACE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CC050);
  sub_1C97DACE4(v16);
  sub_1C97ABFF0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = &v29 + *(v18 + 56) - v19;
  sub_1C98ED0E8(a1, &v29 - v19);
  sub_1C98ED0E8(a2, v21);
  sub_1C98EE6C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98EE57C();
    sub_1C98ED0E8(v20, v12);
    v23 = *(v12 + 8);
    v22 = *(v12 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v12 == *v21)
      {
        if (v23 == *(v21 + 1) && v22 == *(v21 + 2))
        {

LABEL_20:
          sub_1C98EE5DC();
          v27 = 1;
          return v27 & 1;
        }

        v25 = sub_1C9A93B18();

        if (v25)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      sub_1C98EE5DC();
      goto LABEL_17;
    }

LABEL_13:
    sub_1C97DA1E0(v20, &qword_1EC3CC050);
LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  sub_1C98EE57C();
  sub_1C98ED0E8(v20, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98EE564();
    sub_1C98E96C8(v15, v26);
    goto LABEL_13;
  }

  sub_1C98EE54C();
  sub_1C98ECDB4(v21, v8);
  v27 = static SNAOPReport.SuccessPayload.== infix(_:_:)(v15, v8);
  sub_1C98E96C8(v8, type metadata accessor for SNAOPReport.SuccessPayload);
  sub_1C98E96C8(v15, type metadata accessor for SNAOPReport.SuccessPayload);
  sub_1C98EE5DC();
  return v27 & 1;
}

uint64_t sub_1C98EA878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98EA948(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

void sub_1C98EA978()
{
  sub_1C97AEB94();
  v24 = v0;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CBFB8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98EE6CC(v6, v23);
  sub_1C97A2CEC(&qword_1EC3CBFC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v9 = sub_1C98EE728();
  type metadata accessor for SNAOPReport.Payload(v9);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  sub_1C98EE788();
  sub_1C97A2CEC(&qword_1EC3CBFC8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97E86E4();
  sub_1C97BE20C(v4, v4[3]);
  sub_1C98EDC5C();
  sub_1C98EE7FC();
  sub_1C98EE57C();
  sub_1C98ED0E8(v24, v1);
  sub_1C97AEB30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98EDCB0();
    sub_1C9A93988();
    sub_1C98EDD04();
    sub_1C9A93A18();
    v12 = sub_1C98715A4();
    v13(v12);
    v14 = sub_1C98EE718();
    v15(v14);
  }

  else
  {
    sub_1C98ECDB4(v1, v2);
    sub_1C98EDD58();
    sub_1C98EE6EC();
    sub_1C98EE660();
    sub_1C98EC018(v16, v17);
    sub_1C9A93A18();
    v18 = sub_1C98EE738();
    v19(v18);
    sub_1C98EE564();
    sub_1C98E96C8(v2, v20);
    v21 = sub_1C98EE718();
    v22(v21);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98EAD00()
{
  v1 = sub_1C98EE70C();
  v2 = type metadata accessor for SNAOPReport.SuccessPayload(v1);
  v3 = sub_1C97DACE4(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C98EE57C();
  sub_1C98ED0E8(v0, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x1CCA91980](1);
    sub_1C9A93CF8();
    sub_1C9A92528();
  }

  else
  {
    sub_1C98EE54C();
    sub_1C98ECDB4(v10, v6);
    MEMORY[0x1CCA91980](0);
    SNAOPReport.SuccessPayload.hash(into:)(v0);
    sub_1C98EE564();
    return sub_1C98E96C8(v6, v12);
  }
}

uint64_t sub_1C98EAE30(void (*a1)(_BYTE *))
{
  sub_1C97BE32C();
  a1(v3);
  return sub_1C9A93D18();
}

void sub_1C98EAE70()
{
  sub_1C97AEB94();
  v4 = v3;
  v66 = v5;
  v67 = sub_1C97A2CEC(&qword_1EC3CBFF8);
  sub_1C97AE9C8();
  v71 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v70 = v8;
  sub_1C97A2CEC(&qword_1EC3CC000);
  sub_1C97AE9C8();
  v68 = v10;
  v69 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98EE6CC(v12, v60);
  sub_1C97A2CEC(&qword_1EC3CC008);
  sub_1C97AE9C8();
  v72 = v14;
  v73 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C98EE7B4();
  v17 = type metadata accessor for SNAOPReport.Payload(v16);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98435A0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98EE7C8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = v4[3];
  sub_1C97BE20C(v4, v26);
  sub_1C98EDC5C();
  sub_1C9A93DB8();
  if (!v1)
  {
    v63 = v0;
    v64 = v21;
    v62 = v25;
    v65 = v17;
    v77 = v4;
    v27 = v73;
    v28 = sub_1C9A93958();
    sub_1C98ECCE8(v28, 0);
    v30 = v29;
    if (v32 != v31 >> 1)
    {
      sub_1C98EE770();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      v61 = *(v36 + v34);
      sub_1C98ECC6C(v34 + 1, v33, v30, v36, v34, v35);
      sub_1C98EE7DC();
      v39 = v64;
      if (!v26)
      {
        if (v61)
        {
          LOBYTE(v74) = 1;
          sub_1C98EDCB0();
          sub_1C98EE614();
          sub_1C98EDDAC();
          sub_1C98EE85C();
          swift_unknownObjectRelease();
          v48 = sub_1C98EE6C0();
          v49(v48);
          v50 = sub_1C98715A4();
          v51(v50);
          v52 = v75;
          v53 = v76;
          *v39 = v74;
          *(v39 + 8) = v52;
          *(v39 + 16) = v53;
          swift_storeEnumTagMultiPayload();
          sub_1C98EE5AC();
          v54 = v39;
        }

        else
        {
          LOBYTE(v74) = 0;
          sub_1C98EDD58();
          sub_1C98EE614();
          type metadata accessor for SNAOPReport.SuccessPayload(0);
          sub_1C98EE660();
          sub_1C98EC018(v45, v46);
          v47 = v63;
          sub_1C98EE83C();
          swift_unknownObjectRelease();
          v55 = sub_1C98EE6C0();
          v56(v55);
          v57 = sub_1C97A7890();
          v58(v57);
          swift_storeEnumTagMultiPayload();
          sub_1C98EE5AC();
          v54 = v47;
        }

        v59 = v62;
        sub_1C98ECDB4(v54, v62);
        sub_1C98EE5AC();
        sub_1C98ECDB4(v59, v66);
        v44 = v77;
        goto LABEL_10;
      }
    }

    v40 = sub_1C9A93648();
    swift_allocError();
    v42 = v41;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    sub_1C98EE81C();
    sub_1C98EE748();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C98EE6E0();
    v43(v2, v27);
    v4 = v77;
  }

  v44 = v4;
LABEL_10:
  sub_1C97A592C(v44);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB3EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C98EB434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245706F61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98EB4FC(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x726F727245706F61;
  }
}

void sub_1C98EB534()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CC040);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98EE788();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C98EDE00();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3CC030);
  sub_1C98EDED0();
  sub_1C98EE638();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C98EE7A8();
    sub_1C9A939C8();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB698()
{
  sub_1C9A93CF8();

  return sub_1C9A92528();
}

uint64_t sub_1C98EB6EC()
{
  sub_1C97BE32C();
  sub_1C9A93CF8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C98EB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v13 = v12;
  v15 = v14;
  sub_1C97A2CEC(&qword_1EC3CC020);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97BE20C(v13, v13[3]);
  sub_1C98EDE00();
  sub_1C9A93DB8();
  if (!v11)
  {
    sub_1C97A2CEC(&qword_1EC3CC030);
    sub_1C98EDE54();
    sub_1C98EE794();
    sub_1C9A938F8();
    sub_1C98EE7A8();
    v17 = sub_1C9A938A8();
    v19 = v18;
    v20 = sub_1C97BE30C();
    v21(v20);
    *v15 = a11;
    *(v15 + 8) = v17;
    *(v15 + 16) = v19;
  }

  sub_1C97A592C(v13);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EA878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EB95C(uint64_t a1)
{
  v2 = sub_1C98EDC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EB998(uint64_t a1)
{
  v2 = sub_1C98EDC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EB9D4(uint64_t a1)
{
  v2 = sub_1C98EDCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBA10(uint64_t a1)
{
  v2 = sub_1C98EDCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBA4C(uint64_t a1)
{
  v2 = sub_1C98EDD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBA88(uint64_t a1)
{
  v2 = sub_1C98EDD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBB40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98EBB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EB434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EBBBC(uint64_t a1)
{
  v2 = sub_1C98EDE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBBF8(uint64_t a1)
{
  v2 = sub_1C98EDE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBC6C()
{
  sub_1C9A93CC8();
  sub_1C98EB698();
  return sub_1C9A93D18();
}

uint64_t sub_1C98EBCC0(uint64_t a1)
{
  v2 = sub_1C98ECE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBCFC(uint64_t a1)
{
  v2 = sub_1C98ECE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SNAOPReport.AOPNewDataAvailable.encode(to:)()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CBE58);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97BE20C(v1, v1[3]);
  sub_1C98ECE10();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  v3 = sub_1C97BE30C();
  v4(v3);
  sub_1C97AEB5C();
}

uint64_t SNAOPReport.AOPNewDataAvailable.hashValue.getter()
{
  sub_1C97BE32C();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void SNAOPReport.AOPNewDataAvailable.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CBE68);
  sub_1C97AE9C8();
  v29 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C97BE20C(v24, v24[3]);
  sub_1C98ECE10();
  sub_1C9A93DB8();
  if (!v20)
  {
    v33 = sub_1C9A93938();
    (*(v29 + 8))(v32, v27);
    *v26 = v33;
  }

  sub_1C97A592C(v24);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EC018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SNAOPReport.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_1C98EE70C();
  v5 = type metadata accessor for SNAOPReport(v4);
  if ((sub_1C9A916B8() & 1) == 0 || *(v2 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(v5 + 28);

  return sub_1C98EA5AC(v2 + v6, a2 + v6);
}

uint64_t sub_1C98EC100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726F706572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64497265646E6573 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C98EC260(char a1)
{
  result = 0x644974726F706572;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x64497265646E6573;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98EC2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EC100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EC314(uint64_t a1)
{
  v2 = sub_1C98ECE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EC350(uint64_t a1)
{
  v2 = sub_1C98ECE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SNAOPReport.encode(to:)(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CBE70);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98EE788();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C98ECE84();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3CBE80);
  sub_1C98ECED8();
  sub_1C98EE638();
  sub_1C9A93A18();
  if (!v1)
  {
    type metadata accessor for SNAOPReport(0);
    sub_1C98EE7A8();
    sub_1C9A916E8();
    sub_1C98EE534();
    sub_1C98EC018(v4, v5);
    sub_1C98EE638();
    sub_1C9A93A18();
    sub_1C97A2CEC(&qword_1EC3CBE90);
    sub_1C98ECF54();
    sub_1C98EE638();
    sub_1C9A93A18();
    type metadata accessor for SNAOPReport.Payload(0);
    sub_1C98EE648();
    sub_1C98EC018(v6, v7);
    sub_1C98EE638();
    sub_1C9A93A18();
  }

  v8 = sub_1C97AEB30();
  return v9(v8);
}

uint64_t SNAOPReport.hash(into:)()
{
  sub_1C9A93CF8();
  type metadata accessor for SNAOPReport(0);
  sub_1C9A916E8();
  sub_1C98EE534();
  sub_1C98EC018(v0, v1);
  sub_1C9A92398();
  sub_1C9A93CF8();
  return sub_1C98EAD00();
}

uint64_t SNAOPReport.hashValue.getter()
{
  sub_1C97BE32C();
  sub_1C9A93CF8();
  type metadata accessor for SNAOPReport(0);
  sub_1C9A916E8();
  sub_1C98EE534();
  sub_1C98EC018(v0, v1);
  sub_1C9A92398();
  sub_1C9A93CF8();
  sub_1C98EAD00();
  return sub_1C9A93D18();
}

void SNAOPReport.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v15 = v14;
  v34 = v16;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AEAD8();
  sub_1C98EE728();
  v38 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v36 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AEAD8();
  v22 = v21 - v20;
  v35 = sub_1C97A2CEC(&qword_1EC3CBEA8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97E86E4();
  v37 = type metadata accessor for SNAOPReport(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AEAD8();
  v27 = (v26 - v25);
  sub_1C97BE20C(v15, v15[3]);
  sub_1C98ECE84();
  sub_1C9A93DB8();
  if (v11)
  {
    sub_1C97A592C(v15);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CBE80);
    sub_1C98ECFF0();
    sub_1C98EE794();
    sub_1C9A938F8();
    *v27 = a11;
    sub_1C98EE7A8();
    sub_1C98EE534();
    sub_1C98EC018(v28, v29);
    sub_1C9A938F8();
    (*(v36 + 32))(&v27[*(v37 + 20)], v22, v38);
    sub_1C97A2CEC(&qword_1EC3CBE90);
    sub_1C98ED06C();
    sub_1C9A938F8();
    *&v27[*(v37 + 24)] = v39;
    sub_1C98EE648();
    sub_1C98EC018(v30, v31);
    sub_1C9A938F8();
    sub_1C98EE6E0();
    v32(v12, v35);
    sub_1C98EE5AC();
    sub_1C98ECDB4(v13, &v27[v33]);
    sub_1C98ED0E8(v27, v34);
    sub_1C97A592C(v15);
    sub_1C98E96C8(v27, type metadata accessor for SNAOPReport);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98ECC24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9A93CC8();
  a4(v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98ECC6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C98ECCE8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C98EE604();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C98ECD24(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C98EE604();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C98ECD60()
{
  result = qword_1EC3CBE48;
  if (!qword_1EC3CBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE48);
  }

  return result;
}

uint64_t sub_1C98ECDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C98EE70C();
  v5(v4);
  sub_1C97DA940();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1C98ECE10()
{
  result = qword_1EC3CBE60;
  if (!qword_1EC3CBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE60);
  }

  return result;
}

unint64_t sub_1C98ECE84()
{
  result = qword_1EC3CBE78;
  if (!qword_1EC3CBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE78);
  }

  return result;
}

unint64_t sub_1C98ECED8()
{
  result = qword_1EC3CBE88;
  if (!qword_1EC3CBE88)
  {
    sub_1C97AA4F0(&qword_1EC3CBE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE88);
  }

  return result;
}

unint64_t sub_1C98ECF54()
{
  result = qword_1EC3CBE98;
  if (!qword_1EC3CBE98)
  {
    sub_1C97AA4F0(&qword_1EC3CBE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE98);
  }

  return result;
}

unint64_t sub_1C98ECFF0()
{
  result = qword_1EC3CBEB0;
  if (!qword_1EC3CBEB0)
  {
    sub_1C97AA4F0(&qword_1EC3CBE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBEB0);
  }

  return result;
}

unint64_t sub_1C98ED06C()
{
  result = qword_1EC3CBEB8;
  if (!qword_1EC3CBEB8)
  {
    sub_1C97AA4F0(&qword_1EC3CBE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBEB8);
  }

  return result;
}

uint64_t sub_1C98ED0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C98EE70C();
  v5(v4);
  sub_1C97DA940();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_1C98ED190()
{
  result = qword_1EC3CBED0;
  if (!qword_1EC3CBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBED0);
  }

  return result;
}

void sub_1C98ED254()
{
  sub_1C98ED308();
  if (v0 <= 0x3F)
  {
    sub_1C9A916E8();
    if (v1 <= 0x3F)
    {
      sub_1C98ED39C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SNAOPReport.Payload(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C98ED308()
{
  if (!qword_1EC3CBEF0)
  {
    type metadata accessor for eSNAOPHIDReportIds(255);
    sub_1C98EC018(&qword_1EC3CBEF8, type metadata accessor for eSNAOPHIDReportIds);
    v0 = type metadata accessor for RawRepresentableWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3CBEF0);
    }
  }
}

void sub_1C98ED39C()
{
  if (!qword_1EC3CBF00)
  {
    type metadata accessor for eSNAOPHIDSenderIds(255);
    sub_1C98EC018(&qword_1EC3CBF08, type metadata accessor for eSNAOPHIDSenderIds);
    v0 = type metadata accessor for RawRepresentableWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3CBF00);
    }
  }
}

uint64_t sub_1C98ED480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98ED4E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C98ED528(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SNAOPReport.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98ED698()
{
  result = qword_1EC3CBF30;
  if (!qword_1EC3CBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF30);
  }

  return result;
}

unint64_t sub_1C98ED6F0()
{
  result = qword_1EC3CBF38;
  if (!qword_1EC3CBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF38);
  }

  return result;
}

unint64_t sub_1C98ED748()
{
  result = qword_1EC3CBF40;
  if (!qword_1EC3CBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF40);
  }

  return result;
}

unint64_t sub_1C98ED7A0()
{
  result = qword_1EC3CBF48;
  if (!qword_1EC3CBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF48);
  }

  return result;
}

unint64_t sub_1C98ED7F8()
{
  result = qword_1EC3CBF50;
  if (!qword_1EC3CBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF50);
  }

  return result;
}

unint64_t sub_1C98ED850()
{
  result = qword_1EC3CBF58;
  if (!qword_1EC3CBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF58);
  }

  return result;
}

unint64_t sub_1C98ED8F0()
{
  result = qword_1EC3CBF68;
  if (!qword_1EC3CBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF68);
  }

  return result;
}

unint64_t sub_1C98ED948()
{
  result = qword_1EC3CBF70;
  if (!qword_1EC3CBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF70);
  }

  return result;
}

unint64_t sub_1C98ED9A0()
{
  result = qword_1EC3CBF78;
  if (!qword_1EC3CBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF78);
  }

  return result;
}

unint64_t sub_1C98ED9F8()
{
  result = qword_1EC3CBF80;
  if (!qword_1EC3CBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF80);
  }

  return result;
}

unint64_t sub_1C98EDA50()
{
  result = qword_1EC3CBF88;
  if (!qword_1EC3CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF88);
  }

  return result;
}

unint64_t sub_1C98EDAA8()
{
  result = qword_1EC3CBF90;
  if (!qword_1EC3CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF90);
  }

  return result;
}

unint64_t sub_1C98EDB00()
{
  result = qword_1EC3CBF98;
  if (!qword_1EC3CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF98);
  }

  return result;
}

unint64_t sub_1C98EDB58()
{
  result = qword_1EC3CBFA0;
  if (!qword_1EC3CBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFA0);
  }

  return result;
}

unint64_t sub_1C98EDBB0()
{
  result = qword_1EC3CBFA8;
  if (!qword_1EC3CBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFA8);
  }

  return result;
}

unint64_t sub_1C98EDC08()
{
  result = qword_1EC3CBFB0;
  if (!qword_1EC3CBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFB0);
  }

  return result;
}

unint64_t sub_1C98EDC5C()
{
  result = qword_1EC3CBFD0;
  if (!qword_1EC3CBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFD0);
  }

  return result;
}

unint64_t sub_1C98EDCB0()
{
  result = qword_1EC3CBFD8;
  if (!qword_1EC3CBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFD8);
  }

  return result;
}

unint64_t sub_1C98EDD04()
{
  result = qword_1EC3CBFE0;
  if (!qword_1EC3CBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFE0);
  }

  return result;
}

unint64_t sub_1C98EDD58()
{
  result = qword_1EC3CBFE8;
  if (!qword_1EC3CBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFE8);
  }

  return result;
}

unint64_t sub_1C98EDDAC()
{
  result = qword_1EC3CC010;
  if (!qword_1EC3CC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC010);
  }

  return result;
}

unint64_t sub_1C98EDE00()
{
  result = qword_1EC3CC028;
  if (!qword_1EC3CC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC028);
  }

  return result;
}

unint64_t sub_1C98EDE54()
{
  result = qword_1EC3CC038;
  if (!qword_1EC3CC038)
  {
    sub_1C97AA4F0(&qword_1EC3CC030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC038);
  }

  return result;
}

unint64_t sub_1C98EDED0()
{
  result = qword_1EC3CC048;
  if (!qword_1EC3CC048)
  {
    sub_1C97AA4F0(&qword_1EC3CC030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC048);
  }

  return result;
}

_BYTE *sub_1C98EDF5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C98EE048(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98EE0F8()
{
  result = qword_1EC3CC058;
  if (!qword_1EC3CC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC058);
  }

  return result;
}

unint64_t sub_1C98EE150()
{
  result = qword_1EC3CC060;
  if (!qword_1EC3CC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC060);
  }

  return result;
}

unint64_t sub_1C98EE1A8()
{
  result = qword_1EC3CC068;
  if (!qword_1EC3CC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC068);
  }

  return result;
}

unint64_t sub_1C98EE200()
{
  result = qword_1EC3CC070;
  if (!qword_1EC3CC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC070);
  }

  return result;
}

unint64_t sub_1C98EE258()
{
  result = qword_1EC3CC078;
  if (!qword_1EC3CC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC078);
  }

  return result;
}

unint64_t sub_1C98EE2B0()
{
  result = qword_1EC3CC080;
  if (!qword_1EC3CC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC080);
  }

  return result;
}

unint64_t sub_1C98EE308()
{
  result = qword_1EC3CC088;
  if (!qword_1EC3CC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC088);
  }

  return result;
}

unint64_t sub_1C98EE360()
{
  result = qword_1EC3CC090;
  if (!qword_1EC3CC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC090);
  }

  return result;
}

unint64_t sub_1C98EE3B8()
{
  result = qword_1EC3CC098;
  if (!qword_1EC3CC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC098);
  }

  return result;
}

unint64_t sub_1C98EE410()
{
  result = qword_1EC3CC0A0;
  if (!qword_1EC3CC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC0A0);
  }

  return result;
}

unint64_t sub_1C98EE468()
{
  result = qword_1EC3CC0A8;
  if (!qword_1EC3CC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC0A8);
  }

  return result;
}

unint64_t sub_1C98EE4C0()
{
  result = qword_1EC3CC0B0[0];
  if (!qword_1EC3CC0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CC0B0);
  }

  return result;
}

uint64_t sub_1C98EE5DC()
{

  return sub_1C98E96C8(v0, type metadata accessor for SNAOPReport.Payload);
}

uint64_t sub_1C98EE614()
{

  return sub_1C9A93858();
}

uint64_t sub_1C98EE6EC()
{

  return sub_1C9A93988();
}

uint64_t sub_1C98EE748()
{

  return sub_1C9A93638();
}

uint64_t sub_1C98EE7DC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C98EE7FC()
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C98EE81C()
{
  *v1 = v0;

  return sub_1C9A93868();
}

uint64_t sub_1C98EE83C()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98EE85C()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98EE8E8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2[6] + 16);
  os_unfair_lock_lock(v5);
  result = swift_beginAccess();
  v7 = v2[4];
  v8 = v2[5] >> 1;
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 < 1)
    {
      v11 = 0;
    }

    else
    {
      swift_beginAccess();
      v11 = sub_1C98EE9AC(a1, a2);
      swift_endAccess();
    }

    os_unfair_lock_unlock(v5);
    return v11;
  }

  return result;
}

uint64_t (*sub_1C98EE9AC(uint64_t (*result)(uint64_t), void (*a2)(uint64_t, uint64_t)))(uint64_t)
{
  v3 = v2[2];
  v4 = v2[3];
  if (v3 == v4 >> 1)
  {
    __break(1u);
  }

  else if (v3 < (v4 >> 1))
  {
    v6 = v2[1] + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = result(v3 + 1);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    a2(v7, v8);
    swift_unknownObjectRelease();
    *v2 = v9;
    v2[1] = v11;
    v2[2] = v13;
    v2[3] = v15;
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98EEA68(uint64_t a1)
{
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CC140);
  swift_allocObject();
  *(v1 + 16) = sub_1C99251C8();
  *(v1 + 32) = *(a1 + 32);
  swift_retain_n();
  swift_retain_n();
  sub_1C97A2CEC(&qword_1EC3CC148);
  sub_1C98F12A8();
  v4 = sub_1C9A920F8();

  *(v2 + 24) = v4;
  return v2;
}

uint64_t sub_1C98EEB64(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    return sub_1C9A91718();
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C98EECB4()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    _os_log_impl(&dword_1C9788000, v1, v2, "Preboard Check required = %{BOOL}d", v3, 8u);
    MEMORY[0x1CCA93280](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_1C98EED9C()
{
  sub_1C98F1340();
  v0 = sub_1C98F1350(102);
  return sub_1C99D1B38(v0, v1, v2, v3, v4);
}

uint64_t sub_1C98EEE00@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v54 = *MEMORY[0x1E69E9840];
  v45 = sub_1C9A91748();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v47 = a1;
  v48 = sub_1C98F1230;
  v49 = v10;
  v50 = &v47;

  v11 = sub_1C97E32C4();
  if (v3)
  {
  }

  v13 = a2;
  v42[2] = v11;

  sub_1C9A91738();
  v52[0] = sub_1C9A91728();
  v52[1] = v14;
  v15 = sub_1C98F1108(v52, v53);
  v16 = *(v6 + 8);
  v17 = v45;
  v16(v8, v45);
  swift_beginAccess();
  v18 = *(v9 + 16);
  v42[1] = v9;
  v43 = v15;
  if (v18)
  {
    sub_1C98EEB64(v15);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v13 + 32);
    sub_1C97EEEF0();
    *(v13 + 32) = v46;
    v16(v8, v17);
    swift_endAccess();
    v19 = v8;
    v20 = v16;
  }

  else
  {
    v42[0] = v16;
    v19 = v8;
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v21 = sub_1C9A91B58();
    sub_1C97BFF6C(v21, qword_1EC3D3108);
    v22 = sub_1C9A91B38();
    v23 = sub_1C9A92FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C9788000, v22, v23, "Cache hit", v24, 2u);
      MEMORY[0x1CCA93280](v24, -1, -1);
    }

    sub_1C98EEB64(v43);
    sub_1C97A2CEC(&qword_1EC3C7B88);
    swift_allocObject();

    sub_1C98EEA68(v25);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v13 + 32);
    sub_1C97EEEF0();
    v26 = v45;
    *(v13 + 32) = v46;
    v20 = v42[0];
    (v42[0])(v8, v26);
    swift_endAccess();
  }

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v27 = sub_1C9A91B58();
  sub_1C97BFF6C(v27, qword_1EC3D3108);
  v28 = v43;

  v29 = v28;
  v30 = sub_1C9A91B38();
  v31 = sub_1C9A92FC8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v19;
    v35 = v45;
    v42[0] = 0;
    v36 = v33;
    v51[0] = v33;
    *v32 = 136315138;
    sub_1C98EEB64(v43);
    sub_1C97AE3DC();
    v37 = sub_1C9A93A98();
    v38 = v20;
    v40 = v39;
    v38(v34, v35);
    v41 = sub_1C9849140(v37, v40, v51);

    *(v32 + 4) = v41;
    v29 = v43;
    _os_log_impl(&dword_1C9788000, v30, v31, "Created XSoundRecognitionSession with ID %s.", v32, 0xCu);
    sub_1C97A592C(v36);
    MEMORY[0x1CCA93280](v36, -1, -1);
    MEMORY[0x1CCA93280](v32, -1, -1);
  }

  *v44 = v29;
  return result;
}

void *sub_1C98EF384@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  *(a2 + 16) = 1;
  v13 = *(a3 + 16);
  v9 = _s17ServerEnvironmentCMa();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  result = sub_1C9923B74(v8, &v13, v9, WitnessTable, v11);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C98EF4C8()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

void sub_1C98EF588(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38[-v10];
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  v12 = *(a2 + 32);

  sub_1C98EEB64(a1);
  v13 = *(v12 + 16);
  v43[7] = v2;
  if (v13)
  {
    sub_1C9A32468();
    v15 = v14;

    v16 = *(v6 + 8);
    v16(v11, v5);
    if (v15)
    {
      v42 = v16;
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v17 = sub_1C9A91B58();
      sub_1C97BFF6C(v17, qword_1EC3D3108);

      v18 = sub_1C9A91B38();
      v19 = sub_1C9A92FC8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v40 = v20;
        v41 = swift_slowAlloc();
        v43[0] = v41;
        *v20 = 136315138;
        sub_1C98EEB64(a1);
        sub_1C97AE3DC();
        v21 = sub_1C9A93A98();
        v39 = v19;
        v23 = v22;
        v24 = v42;
        v42(v9, v5);
        v25 = sub_1C9849140(v21, v23, v43);

        v26 = v40;
        *(v40 + 1) = v25;
        v27 = v26;
        _os_log_impl(&dword_1C9788000, v18, v39, "Removing XSoundRecognitionSession with ID %s.", v26, 0xCu);
        v28 = v41;
        sub_1C97A592C(v41);
        MEMORY[0x1CCA93280](v28, -1, -1);
        MEMORY[0x1CCA93280](v27, -1, -1);
      }

      else
      {

        v24 = v42;
      }

      sub_1C98EEB64(a1);
      swift_beginAccess();
      sub_1C97EE4B8(v9);
      v24(v9, v5);
      swift_endAccess();

      return;
    }
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v11, v5);
  }

  v42 = v16;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v29 = sub_1C9A91B58();
  sub_1C97BFF6C(v29, qword_1EC3D3108);

  v30 = sub_1C9A91B38();
  v31 = sub_1C9A92FA8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v32 = 136315138;
    sub_1C98EEB64(a1);
    sub_1C97AE3DC();
    v34 = sub_1C9A93A98();
    v36 = v35;
    v42(v9, v5);
    v37 = sub_1C9849140(v34, v36, v43);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1C9788000, v30, v31, "Recieved request to remove XSoundRecognitionSession with ID %s but such a session does not exist; Ignoring.", v32, 0xCu);
    sub_1C97A592C(v33);
    MEMORY[0x1CCA93280](v33, -1, -1);
    MEMORY[0x1CCA93280](v32, -1, -1);
  }
}

uint64_t sub_1C98EFA80()
{
  sub_1C98F1340();
  v0 = sub_1C98F1350(117);
  return sub_1C99D1D3C(v0, v1, v2, v3, v4);
}

void sub_1C98EFAFC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();
  v10 = *(a2 + 32);

  v11 = sub_1C987B2FC(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v14 = v12;
  if (!v13)
  {

    v15 = v14 & 1;
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    v16 = sub_1C99D146C(v12);

    sub_1C9792740(v14, 1);
    v15 = v16 | 0x40;
    goto LABEL_12;
  }

  if (v13 != 2)
  {

LABEL_11:
    v15 = -4;
    goto LABEL_12;
  }

  v15 = 0x80;
LABEL_12:
  *a3 = v15;
}

uint64_t sub_1C98EFD58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1[6] + 16) >= a1[8])
  {
    sub_1C985E2B4();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = a1[2];
    v10 = *(v5 + 96);
    v11 = *(v5 + 112);
    v23 = *(v5 + 80);
    v24[0] = v10;
    v24[1] = v11;
    v12 = _s17ServerEnvironmentCMa();
    WitnessTable = swift_getWitnessTable();
    result = sub_1C9925B0C(&v22, v12, WitnessTable);
    if (!v2)
    {
      sub_1C9A91738();
      *&v23 = sub_1C9A91728();
      *(&v23 + 1) = v15;
      v16 = sub_1C98F1108(&v23, v24);
      v20 = a2;
      v17 = *(v7 + 8);
      v17(v9, v6);
      sub_1C98EEB64(v16);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v21 = a1[6];
      sub_1C97EEF04();
      a1[6] = v21;
      v17(v9, v6);
      swift_endAccess();

      *v20 = v16;
    }
  }

  return result;
}

uint64_t sub_1C98F0000()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1C98F0098(uint64_t a1)
{
  v2 = sub_1C9A91748();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 16)
  {
    sub_1C98EEB64(a1);
    swift_beginAccess();
    sub_1C97EE4DC(v5);
    (*(v3 + 8))(v5, v2);
    swift_endAccess();
  }

  else
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C98F01E4()
{
  sub_1C98F1340();
  v0 = sub_1C98F1350(112);
  return sub_1C99D1D3C(v0, v1, v2, v3, v4);
}

void sub_1C98F0260(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();
  v10 = *(a2 + 48);

  v11 = sub_1C987B2FC(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v14 = v12;
  if (!v13)
  {

    goto LABEL_12;
  }

  if (v13 == 1)
  {
    v15 = sub_1C99D146C(v12);

    sub_1C9792740(v14, 1);
    LOBYTE(v14) = v15 | 0x40;
    goto LABEL_12;
  }

  if (v13 != 2)
  {

LABEL_11:
    LOBYTE(v14) = -16;
    goto LABEL_12;
  }

  LOBYTE(v14) = 0x80;
LABEL_12:
  *a3 = v14;
}

uint64_t sub_1C98F045C()
{
  sub_1C98F1340();
  v0 = sub_1C98F1350(113);
  return sub_1C99D1B38(v0, v1, v2, v3, v4);
}

uint64_t sub_1C98F04E4(uint64_t result)
{
  if (*(*result + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98F0540@<X0>(const void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v33[6] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = sub_1C9A91748();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1C999690C(__dst);
  if (!v3)
  {
    v26 = v9;
    v27 = a3;
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    v14 = sub_1C9A91B38();
    v15 = sub_1C9A92FC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C9788000, v14, v15, "Processing request to run a custom model.", v16, 2u);
      MEMORY[0x1CCA93280](v16, -1, -1);
    }

    sub_1C98EECB4();
    swift_beginAccess();
    if (*(a2[3] + 16) >= a2[7])
    {
      sub_1C985E2B4();
      swift_allocError();
      *v24 = 1;
      return swift_willThrow();
    }

    else
    {
      v29 = a2[2];
      v17 = *(v7 + 96);
      v18 = *(v7 + 112);

      v32 = *(v7 + 80);
      v33[0] = v17;
      v33[1] = v18;
      v19 = _s17ServerEnvironmentCMa();
      v31 = *(v7 + 104);
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1C99240FC(a1, &v29, v19, WitnessTable);

      sub_1C9A91738();
      *&v32 = sub_1C9A91728();
      *(&v32 + 1) = v21;
      v22 = sub_1C98F1108(&v32, v33);
      v23 = *(v26 + 8);
      v23(v11, v8);
      sub_1C98EEB64(v22);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v28 = a2[3];
      sub_1C97EEEF0();
      a2[3] = v28;
      v23(v11, v8);
      swift_endAccess();

      *v27 = v22;
    }
  }

  return result;
}

uint64_t sub_1C98F0930()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1C98F09C8(uint64_t a1)
{
  v2 = sub_1C9A91748();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 16)
  {
    sub_1C98EEB64(a1);
    swift_beginAccess();
    sub_1C97EE4B8(v5);
    (*(v3 + 8))(v5, v2);
    swift_endAccess();
  }

  else
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C98F0B14()
{
  sub_1C98F1340();
  v0 = sub_1C98F1350(128);
  return sub_1C99D1D3C(v0, v1, v2, v3, v4);
}

void sub_1C98F0B90(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();
  v10 = *(a2 + 24);

  v11 = sub_1C987B2FC(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v14 = v12;
  if (!v13)
  {

    v15 = v14 & 1;
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    v16 = sub_1C99D146C(v12);

    sub_1C9792740(v14, 1);
    v15 = v16 | 0x40;
    goto LABEL_12;
  }

  if (v13 != 2)
  {

LABEL_11:
    v15 = -4;
    goto LABEL_12;
  }

  v15 = 0x80;
LABEL_12:
  *a3 = v15;
}

uint64_t sub_1C98F0D90()
{

  return v0;
}

uint64_t sub_1C98F0DD0()
{
  sub_1C98F0D90();

  return swift_deallocClassInstance();
}

unint64_t sub_1C98F0FA0()
{
  result = qword_1EC3CC138;
  if (!qword_1EC3CC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC138);
  }

  return result;
}

uint64_t sub_1C98F0FF4(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = a1();
  if (!v3)
  {
    return a3(result);
  }

  return result;
}

void *sub_1C98F1078(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C97A2CEC(&qword_1EC3C69E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1C98F1108(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1C98F1078(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98F124C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E4764(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C98F12A8()
{
  result = qword_1EC3CC150;
  if (!qword_1EC3CC150)
  {
    sub_1C97AA4F0(&qword_1EC3CC148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC150);
  }

  return result;
}

uint64_t sub_1C98F136C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C98F13E4(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98F14E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98F1698()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getMetatypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98F1720(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C98F187C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98F1A88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v46 = a3;
  v47 = a4;
  sub_1C97AE9DC();
  v45 = v5;
  v48 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C9A928B8();
  v12 = a2[2];
  v11 = a2[3];
  v13 = swift_getAssociatedTypeWitness();
  sub_1C98F3FAC();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v10;
  v52 = v13;
  v53 = WitnessTable;
  v54 = AssociatedConformanceWitness;
  sub_1C98F3FF4();
  v43 = sub_1C9A91CF8();
  sub_1C9A93D88();
  sub_1C98F3FC4();
  v42 = swift_getWitnessTable();
  v16 = sub_1C9A91C58();
  v17 = sub_1C9A91E98();
  v18 = swift_getWitnessTable();
  v19 = sub_1C98F3FDC();
  v51 = v16;
  v52 = v17;
  v53 = v18;
  v54 = v19;
  sub_1C98F3FF4();
  v20 = sub_1C9A91C68();
  v21 = sub_1C98F3FDC();
  v51 = v20;
  v52 = v13;
  v53 = v21;
  v54 = AssociatedConformanceWitness;
  sub_1C98F3FF4();
  v22 = sub_1C9A91C18();
  v23 = sub_1C98F3FDC();
  v51 = v22;
  v52 = v12;
  v24 = v12;
  v39 = v12;
  v53 = v23;
  v54 = v11;
  v25 = v11;
  sub_1C98F3FF4();
  v26 = sub_1C9A91CC8();
  v27 = sub_1C98F3FDC();
  v51 = v26;
  v52 = AssociatedTypeWitness;
  v53 = v13;
  v54 = v27;
  type metadata accessor for ExpandResult();
  sub_1C97AE9DC();
  v40 = v28;
  v41 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v39 - v30;
  v33 = v44;
  v32 = v45;
  (*(v45 + 16))(v44, v49, a2);
  v34 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v24;
  *(v35 + 3) = v46;
  *(v35 + 4) = v25;
  v36 = a2[4];
  *(v35 + 5) = v47;
  *(v35 + 6) = v36;
  (*(v32 + 32))(&v35[v34], v33, a2);
  sub_1C9911534(1, sub_1C98F3EF0, v35, v39, v43, v25, v42, v31);

  v37 = v40;
  swift_getWitnessTable();
  sub_1C9A920B8();
  return (*(v41 + 8))(v31, v37);
}

uint64_t sub_1C98F1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v98 = a2;
  v70 = a6;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v63 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = sub_1C9A92EE8();
  v74 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v63 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v72 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v63 - v19;
  v96 = AssociatedTypeWitness;
  v76 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v63 - v25;
  v26 = sub_1C9A928B8();
  WitnessTable = swift_getWitnessTable();
  v93 = v26;
  v100 = v26;
  v101 = MEMORY[0x1E69E73E0];
  v67 = WitnessTable;
  v102 = WitnessTable;
  v103 = MEMORY[0x1E69E7410];
  v28 = sub_1C9A91CF8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v63 - v30;
  v84 = v15;
  v100 = sub_1C9A922E8();
  v31 = swift_checkMetadataState();
  v32 = a1;
  v33 = sub_1C9A92C08();
  v69 = a3;
  v97 = a5;
  result = type metadata accessor for MaximumSlice();
  v35 = *(v98 + *(result + 44));
  v36 = ceilf(v33 / v35);
  if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v36 >= 9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  result = sub_1C9A927E8();
  if ((v37 & 0x8000000000000000) == 0)
  {
    v91 = v22;
    v64 = v29;
    v65 = v28;
    v66 = a4;
    v94 = v32;
    v38 = v95;
    v39 = v92;
    if (!v37)
    {
LABEL_15:
      v99 = v100;
      v61 = v68;
      sub_1C9A92658();

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v62 = v65;
      sub_1C9A91CE8();
      return (*(v64 + 8))(v61, v62);
    }

    v40 = 0;
    v81 = (v76 + 1);
    v78 = v76 + 2;
    v77 = v75 + 2;
    v76 += 4;
    v75 += 4;
    ++v74;
    v73 = (v72 + 2);
    ++v72;
    v80 = v35;
    v79 = v37;
    v71 = v31;
    while (1)
    {
      v41 = v35 * v40;
      if ((v35 * v40) >> 64 != (v35 * v40) >> 63)
      {
        break;
      }

      v98 = v40;
      result = sub_1C9A92C08();
      if (__OFSUB__(result, v41))
      {
        goto LABEL_17;
      }

      if (result - v41 >= v35)
      {
        v42 = v35;
      }

      else
      {
        v42 = result - v41;
      }

      sub_1C9A92BF8();
      sub_1C9A92C28();
      v43 = *v81;
      (*v81)(v38, v96);
      v44 = v39;
      v45 = v91;
      result = sub_1C9A92BF8();
      if (__OFADD__(v41, v42))
      {
        goto LABEL_18;
      }

      sub_1C9A92C28();
      v43(v45, v96);
      result = sub_1C9A923E8();
      if ((result & 1) == 0)
      {
        goto LABEL_19;
      }

      v46 = v44;
      ++v98;
      v47 = *v78;
      v48 = v96;
      v49 = v87;
      (*v78)(v87, v46, v96);
      v50 = TupleTypeMetadata2;
      v47(&v49[*(TupleTypeMetadata2 + 48)], v95, v48);
      v51 = v88;
      (*v77)(v88, v49, v50);
      v52 = *(v50 + 48);
      v53 = *v76;
      v54 = v85;
      (*v76)(v85, v51, v48);
      v43(&v51[v52], v48);
      v55 = v49;
      v38 = v95;
      (*v75)(v51, v55, v50);
      v56 = *(v50 + 48);
      v57 = v86;
      v53(&v54[*(v86 + 36)], &v51[v56], v48);
      v43(v51, v48);
      v58 = v82;
      sub_1C9A92D48();
      v59 = v54;
      v39 = v92;
      (*v74)(v59, v57);
      v60 = v84;
      (*v73)(v83, v58, v84);
      sub_1C9A92888();
      (*v72)(v58, v60);
      v43(v38, v48);
      result = (v43)(v39, v48);
      v40 = v98;
      v35 = v80;
      if (v79 == v98)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98F288C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 60));
  v5 = result - v4;
  if (__OFSUB__(result, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v3 + *(a3 + 64));
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != -1 || v8 != 0x8000000000000000)
  {
    return (v8 / v6) & ~((v8 / v6) >> 63);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C98F28DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v66 = a3;
  v73 = a1;
  sub_1C97AE9DC();
  v69 = v6;
  v70 = v4;
  v71 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v10 + 32);
  v13 = sub_1C9A91C88();
  sub_1C97AE9DC();
  v72 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v52 - v16;
  v60 = a2[3];
  v17 = sub_1C9A928B8();
  v18 = sub_1C98F4000();
  sub_1C98F3FAC();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = v17;
  v75 = v18;
  v76 = WitnessTable;
  v77 = AssociatedConformanceWitness;
  v21 = sub_1C9A91CF8();
  v63 = v21;
  v22 = a2[6];
  sub_1C98F4000();
  v55 = v22;
  swift_getAssociatedTypeWitness();
  v23 = sub_1C9A928B8();
  v61 = v13;
  v62 = v23;
  v24 = swift_getWitnessTable();
  v59 = v24;
  sub_1C98F3FC4();
  v58 = swift_getWitnessTable();
  v74 = v13;
  v75 = v21;
  v76 = v23;
  v77 = v24;
  v78 = v58;
  _s15StatefulFlatMapVMa();
  sub_1C97AE9DC();
  v64 = v25;
  v65 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v52 - v27;
  v28 = swift_allocObject();
  v29 = v11;
  v28[2] = v11;
  v30 = v60;
  v31 = v66;
  v28[3] = v60;
  v28[4] = v31;
  v32 = v12;
  v33 = a2;
  v54 = a2;
  v34 = a2[5];
  v28[5] = v12;
  v28[6] = v34;
  v35 = v68;
  v28[7] = v68;
  v28[8] = v22;
  v36 = v29;
  v52 = v29;
  v37 = v32;
  v53 = v32;
  v38 = v70;
  sub_1C9A92028();

  v39 = v69;
  v40 = v67;
  (*(v69 + 16))(v67, v38, v33);
  v41 = v39;
  v42 = (*(v39 + 80) + 72) & ~*(v39 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = v36;
  *(v43 + 3) = v30;
  *(v43 + 4) = v31;
  *(v43 + 5) = v37;
  *(v43 + 6) = v34;
  *(v43 + 7) = v35;
  v44 = v55;
  *(v43 + 8) = v55;
  (*(v41 + 32))(&v43[v42], v40, v54);
  v45 = swift_allocObject();
  v45[2] = v52;
  v45[3] = v30;
  v46 = v53;
  v45[4] = v31;
  v45[5] = v46;
  v45[6] = v34;
  v45[7] = v35;
  v45[8] = v44;
  v47 = v57;
  v48 = v61;
  v49 = v56;
  sub_1C99E038C(1, sub_1C98F3DD0, v43, sub_1C98F3EA8, v45, v61, v63, v62, v57);

  (*(v72 + 8))(v49, v48);
  v50 = v64;
  swift_getWitnessTable();
  sub_1C9A920B8();
  return (*(v65 + 8))(v47, v50);
}

uint64_t sub_1C98F2E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v133 = a8;
  v137 = a6;
  v139 = a3;
  v107 = a2;
  v136 = a1;
  v98 = a9;
  v135 = a10;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v131 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v119 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v90 - v18;
  v126 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v122 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v129 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v90 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = AssociatedTypeWitness;
  v121 = AssociatedConformanceWitness;
  v117 = sub_1C9A92EE8();
  v110 = *(v117 - 8);
  v25 = MEMORY[0x1EEE9AC00](v117);
  v116 = &v90 - v26;
  v100 = *(a5 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v90 - v29;
  v30 = sub_1C9A928B8();
  WitnessTable = swift_getWitnessTable();
  v147 = v30;
  v148 = MEMORY[0x1E69E73E0];
  v92 = WitnessTable;
  v149 = WitnessTable;
  v150 = MEMORY[0x1E69E7410];
  v95 = sub_1C9A91CF8();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v90 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v130 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v132 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v123 = &v90 - v37;
  v91 = v38;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v90 - v39;
  v134 = swift_checkMetadataState();
  sub_1C9A92D18();
  v136 = v33;
  v41 = sub_1C9A928B8();
  v115 = v40;
  v42 = v107;
  sub_1C9A92888();
  v43 = *v42;
  v152 = 0;
  v153 = v43;
  v140 = a4;
  v141 = a5;
  v142 = v137;
  v143 = a7;
  v44 = v133;
  v144 = v133;
  v145 = v135;
  v146 = a11;

  swift_getWitnessTable();
  v104 = v41;
  sub_1C9A926B8();

  v45 = v147;
  v96 = a4;
  v147 = a4;
  v148 = a5;
  v97 = a7;
  v149 = a7;
  v150 = v44;
  v135 = a11;
  v151 = a11;
  v46 = type metadata accessor for SliceWithStride();
  v48 = sub_1C98F288C(v45, v47, v46);
  v49 = a5;
  v147 = sub_1C9A922E8();
  v106 = v30;
  result = sub_1C9A927E8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v51 = v107;
    v52 = v124;
    v53 = v125;
    v54 = v136;
    v55 = v123;
    if (!v48)
    {
LABEL_19:
      v153 = v147;
      v88 = v93;
      sub_1C9A92658();

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v89 = v95;
      sub_1C9A91CE8();
      return (*(v94 + 8))(v88, v89);
    }

    v108 = 0;
    v56 = *(v46 + 64);
    v99 = *(v139 + *(v46 + 60));
    v102 = *(v139 + v56);
    v127 = (v130 + 16);
    v128 = (v130 + 32);
    v114 = v126 + 1;
    v113 = (v126 + 4);
    v112 = (v131 + 16);
    v111 = (v131 + 32);
    ++v110;
    v126 = (v130 + 8);
    v101 = (v100 + 2);
    ++v100;
    v103 = v48;
    v109 = v49;
    while (1)
    {
      sub_1C9A92ED8();
      v57 = *v51;

      v58 = sub_1C9A927A8();
      v153 = v58;
      v59 = sub_1C9A92878();
      v60 = v54;
      v61 = v57;
      v62 = v132;
      if (v58 != v59)
      {
        break;
      }

LABEL_18:
      v84 = v108 + 1;

      (*v101)(v105, v53, v49);
      sub_1C9A92888();
      v85 = v104;
      v86 = swift_getWitnessTable();
      v87 = swift_getAssociatedConformanceWitness();
      v54 = v60;
      v51 = v107;
      sub_1C97AA99C(v107, v102, v85, v86, v87, MEMORY[0x1E69E6570]);
      (*v100)(v53, v49);
      v108 = v84;
      if (v84 == v103)
      {
        goto LABEL_19;
      }
    }

    v139 = v99;
    v131 = v61;
    while (1)
    {
      v63 = sub_1C9A92858();
      sub_1C9A927D8();
      if (v63)
      {
        (*(v130 + 16))(v55, v61 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v58, v60);
        v64 = v129;
      }

      else
      {
        result = sub_1C9A935F8();
        v64 = v129;
        if (v91 != 8)
        {
          goto LABEL_23;
        }

        v152 = result;
        (*v127)(v55, &v152, v60);
        swift_unknownObjectRelease();
      }

      v65 = v138;
      sub_1C9A928A8();
      (*v128)(v62, v55, v60);
      swift_getAssociatedConformanceWitness();
      v66 = sub_1C9A92C08();
      v67 = v139;
      if (v139 >= v66)
      {
        v67 = v66;
      }

      v137 = v67;
      if (!v67)
      {
        (*v126)(v62, v60);
        goto LABEL_18;
      }

      sub_1C9A92BF8();
      v68 = v122;
      sub_1C9A92BF8();
      sub_1C9A92C28();
      v69 = *v114;
      (*v114)(v68, v65);
      result = sub_1C9A923E8();
      if ((result & 1) == 0)
      {
        break;
      }

      v70 = *v113;
      v71 = v52;
      v72 = v118;
      (*v113)(v118, v71, v65);
      v73 = TupleTypeMetadata2;
      v70(&v72[*(TupleTypeMetadata2 + 48)], v64, v65);
      v74 = v119;
      (*v112)(v119, v72, v73);
      v75 = *(v73 + 48);
      v76 = v116;
      v70(v116, v74, v138);
      v77 = &v74[v75];
      v78 = v138;
      v69(v77, v138);
      (*v111)(v74, v72, v73);
      v79 = *(v73 + 48);
      v80 = v117;
      v70(&v76[*(v117 + 36)], &v74[v79], v78);
      v69(v74, v78);
      v81 = v132;
      sub_1C9A92D48();
      v60 = v136;
      (*v110)(v76, v80);
      v53 = v125;
      v49 = v109;
      sub_1C9A92D88();
      result = (*v126)(v81, v60);
      v82 = __OFSUB__(v139, v137);
      v139 -= v137;
      if (v82)
      {
        goto LABEL_21;
      }

      v62 = v81;
      v61 = v131;
      v83 = sub_1C9A92878();
      v58 = v153;
      v52 = v124;
      v55 = v123;
      if (v153 == v83)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98F3C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1C9A92C08();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t sub_1C98F3D3C@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1C9A922E8();
  *a1 = result;
  return result;
}

uint64_t sub_1C98F3DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v12 = *(v3 + 16);
  v13 = *(v3 + 40);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  v10 = *(type metadata accessor for SliceWithStride() - 8);
  return sub_1C98F2E38(a1, a2, v3 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v12, *(&v12 + 1), v7, v13, *(&v13 + 1), a3, v8, v9);
}

uint64_t sub_1C98F3EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[6];
  v8 = *(type metadata accessor for MaximumSlice() - 8);
  v9 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_1C98F1E84(a1, v9, v5, v6, v7, a2);
}

uint64_t sub_1C98F3FDC()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C98F4000()
{

  return swift_getAssociatedTypeWitness();
}

BOOL sub_1C98F4044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1C98F4070()
{
  v1 = *v0;
  v8 = v0;
  v2 = v1;
  WitnessTable = swift_getWitnessTable();
  sub_1C98F421C(&v9, &v8, v2, WitnessTable, v4, v5, v6, v7, v8, 0, 0);
}

uint64_t sub_1C98F40F8(void *__src)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = 0x40467A0000;
  v14 = 0x45EA600042FA0000;
  v15 = 0x3C23D70A00000002;
  v16 = 0;
  v17 = xmmword_1C9AA7B00;
  v18 = 0;
  sub_1C97E2DB0(__src, v4);
  v2 = sub_1C97DADD4(v12);
  memcpy(v4, __dst, sizeof(v4));
  v5 = 0x40467A0000;
  v6 = 0x45EA600042FA0000;
  v7 = 0x3C23D70A00000002;
  v8 = 0;
  v9 = xmmword_1C9AA7B00;
  v10 = 0;
  sub_1C97DA1E0(v4, &qword_1EC3C7360);
  return v2;
}

void sub_1C98F421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v35 = v11;
  v13 = v12;
  v15 = v14;
  v34 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = sub_1C98FA38C();
  v32 = v23;
  v24 = sub_1C98FA38C();
  v25 = sub_1C98FA38C();
  v36 = AssociatedTypeWitness;
  v37 = v23;
  v38 = v24;
  *v39 = v25;
  v33 = type metadata accessor for SharedLogMelSpectrogram.Configuration();
  sub_1C97AE9C8();
  v27 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v32 - v29;
  (*(v19 + 16))(v22, v34, AssociatedTypeWitness);
  v36 = 0x40467A0000;
  v37 = 0x45EA600042FA0000;
  v38 = 0x3C23D70A00000002;
  v39[0] = 0;
  *&v39[1] = *(&a11 + 1);
  v39[3] = HIBYTE(a11);
  *&v39[4] = xmmword_1C9AA7B00;
  v40 = 0;
  v31 = sub_1C97AC598(&v36, v30);
  (*(v13 + 40))(v30, v15, v13, v31);
  (*(v27 + 8))(v30, v33);
  sub_1C97AEB5C();
}

uint64_t sub_1C98F4478()
{
  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  return sub_1C98F40F8(__dst);
}

uint64_t sub_1C98F44F4()
{
  v6[3] = &unk_1F492E308;
  v6[4] = &off_1F492E690;
  v2 = swift_allocObject();
  v6[0] = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);

  v4 = sub_1C99A7FC0(v6, 0xD000000000000031, 0x80000001C9AD8F40);
  if (!v1)
  {
    LOBYTE(v0) = v4;
  }

  sub_1C97A592C(v6);
  return v0 & 1;
}

void sub_1C98F4610()
{
  swift_getWitnessTable();
  sub_1C98FA360();
  sub_1C98F421C(v0, v1, v2, v0, v3, v4, v5, v6, v7, v8, SHIDWORD(v8));
}

id static AccessibilitySoundActions.isSupported.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v1 = sub_1C99B590C();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return (v1 != 0);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v7 = MGGetProductType();
      if (qword_1EC3C5D98 != -1)
      {
        sub_1C9871824();
      }

      v8 = qword_1EC3D31E8;

      return sub_1C98F4044(v7, v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C98F47E0()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844();
  }

  v0 = qword_1EC3C5BB0;
  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v2 = sub_1C99B590C();
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    if (!v2)
    {
LABEL_9:
      v9 = 0;
      return (v9 & 1);
    }

LABEL_11:
    v10 = [v0 dictionaryRepresentation];
    sub_1C9A92328();

    v11 = sub_1C99B590C();
    LOBYTE(v10) = v12;

    v9 = v10 | (v11 == 0);
    return (v9 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if ((exclaveCapability & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = MGGetProductType();
    if (qword_1EC3C5D98 != -1)
    {
      sub_1C9871824();
    }

    if (!sub_1C98F4044(v8, qword_1EC3D31E8))
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AccessibilitySoundActions.SoundAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AccessibilitySoundActions.SoundAction.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C98F4A3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C98F4ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98F4A3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C98F4B08(uint64_t a1)
{
  v2 = sub_1C98F8574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98F4B44(uint64_t a1)
{
  v2 = sub_1C98F8574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundActions.SoundAction.encode(to:)()
{
  sub_1C97AEB94();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3CC160);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C98F8574();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  (*(v5 + 8))(v0, v3);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundActions.SoundAction.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void AccessibilitySoundActions.SoundAction.init(from:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CC170);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C98F8574();
  sub_1C9A93DB8();
  if (!v0)
  {
    v10 = sub_1C9A938A8();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  sub_1C97A592C(v3);
  sub_1C97AEB5C();
}

uint64_t sub_1C98F4E7C(uint64_t a1)
{
  v2 = sub_1C98F85C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98F4EB8(uint64_t a1)
{
  v2 = sub_1C98F85C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilitySoundActions.Request.encode(to:)(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC178);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98F85C8();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

void sub_1C98F50A4()
{
  sub_1C97AEB94();
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v23 = v7;
  v24 = v6;
  v8 = sub_1C97A2CEC(&unk_1EC3CC2A0);
  sub_1C97AE9C8();
  v25 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2C8();
  v26 = v5;
  sub_1C99B8818();
  if (!v0)
  {
    v21 = v15;
    v22 = AssociatedTypeWitness;
    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C97AE9EC();
    sub_1C97AE67C(v17, &unk_1EC3CC280);
    sub_1C9A91F68();
    sub_1C97AE67C(&qword_1EC3C9B48, &unk_1EC3CC2A0);
    sub_1C9A91F28();
    (*(v25 + 8))(v12, v8);
    sub_1C99F4F74();

    v18 = sub_1C988EB2C();
    sub_1C97A2CEC(v18);
    sub_1C97AE9EC();
    sub_1C98FA360();
    sub_1C97AE67C(v19, v20);
    sub_1C9A92048();

    (*(v21 + 8))(v1, v22);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98F53B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_1C97A2CEC(&qword_1EC3C9AA0);
  *a2 = v3;
}

uint64_t sub_1C98F540C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    sub_1C986F098();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1C98F54A8()
{
  sub_1C97AEB94();
  v157 = v0;
  v158 = v1;
  v160 = v2;
  v163 = v3;
  v139 = v4;
  v136 = type metadata accessor for AccessibilitySoundActions.Session();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98FA34C();
  sub_1C97ABFB4(v6);
  v130 = sub_1C97A2CEC(&qword_1EC3C9AE8);
  sub_1C97AE9C8();
  v129 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97ABFB4(v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABFB4(v119 - v12);
  v134 = sub_1C97A2CEC(&qword_1EC3C7810);
  sub_1C97AE9C8();
  v132 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  sub_1C97ABFB4(v15);
  v135 = sub_1C97A2CEC(&qword_1EC3CC200);
  sub_1C97AE9C8();
  v133 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97ABFB4(v18);
  v140 = sub_1C97A2CEC(&unk_1EC3C9AF0);
  sub_1C97AE9C8();
  v137 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  v154 = v21;
  v147 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v145 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v143 = v24;
  v155 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v142 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C98FA34C();
  sub_1C97ABFB4(v27);
  v148 = sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C97AE9C8();
  v146 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v144 = v30;
  v150 = sub_1C97A2CEC(&unk_1EC3CC270);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v149 = v32;
  sub_1C97A2CEC(&qword_1EC3C9B00);
  sub_1C97AE9C8();
  v151 = v34;
  v152 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v153 = v36;
  v37 = sub_1C9A91748();
  sub_1C97AE9C8();
  v39 = v38;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v119 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v119 - v47;
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v49 = sub_1C9A91B58();
  v50 = sub_1C97BFF6C(v49, qword_1EC3D3108);
  v51 = *(v39 + 16);
  v123 = v39 + 16;
  v122 = v51;
  v51(v46, v48, v37);
  v124 = v50;
  v52 = sub_1C9A91B38();
  v53 = sub_1C9A92FC8();
  v54 = os_log_type_enabled(v52, v53);
  v125 = v43;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v159 = v39;
    v56 = v55;
    v57 = swift_slowAlloc();
    v156 = v48;
    v58 = v57;
    v161 = v57;
    *v56 = 136446210;
    sub_1C97AE3DC();
    v59 = sub_1C9A93A98();
    v60 = v37;
    v62 = v61;
    v63 = *(v159 + 8);
    v63(v46, v60);
    v64 = sub_1C9849140(v59, v62, &v161);
    v37 = v60;

    *(v56 + 4) = v64;
    _os_log_impl(&dword_1C9788000, v52, v53, "Started Creating Accessibility Sound Actions Session %{public}s", v56, 0xCu);
    sub_1C97A592C(v58);
    v48 = v156;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v39 = v159;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v63 = *(v39 + 8);
    v63(v46, v37);
  }

  v65 = v157;
  v66 = v158;
  (*(v158 + 40))(v160, v158);
  if (v65)
  {
    v63(v48, v37);
  }

  else
  {
    v120 = v63;
    v159 = v39;
    v156 = v48;
    v121 = v37;
    v67 = sub_1C97AC6A0();
    v157 = 0;
    v68 = v67;
    v119[2] = v67;

    v161 = v68;
    v69 = v142;
    v70 = v141;
    (*(v142 + 104))(v141, *MEMORY[0x1E695BD20], v155);
    v71 = v143;
    *v143 = sub_1C98F63E0;
    v71[1] = 0;
    v72 = v145;
    v73 = v147;
    (*(v145 + 104))(v71, *MEMORY[0x1E695BD48], v147);
    v119[1] = sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C97AE9EC();
    sub_1C97AE67C(v74, &unk_1EC3CC280);
    v75 = v144;
    sub_1C9A92018();
    (*(v72 + 8))(v71, v73);
    (*(v69 + 8))(v70, v155);

    v76 = sub_1C97A2CEC(&unk_1EC3CC290);
    sub_1C98FA328(&qword_1EC3CD6A0, &unk_1EC3CD670);
    v77 = v148;
    v78 = v149;
    sub_1C9A91F68();
    (*(v146 + 8))(v75, v77);
    v79 = v150;
    *(v78 + *(v150 + 60)) = 96;
    *(v78 + *(v79 + 64)) = 2;
    *(v78 + *(v79 + 68)) = v76;
    sub_1C97A2CEC(&qword_1EC3C9AA0);
    sub_1C97AE67C(&qword_1EC3C9B08, &unk_1EC3CC270);
    v80 = v153;
    sub_1C9A91F68();
    v81 = sub_1C97DA1E0(v78, &unk_1EC3CC270);
    MEMORY[0x1EEE9AC00](v81);
    v119[-4] = v160;
    v119[-3] = v66;
    v119[-2] = v80;
    v119[-1] = v163;
    v82 = v157;
    sub_1C993B85C();
    if (v82)
    {
      v120(v156, v121);
      (*(v151 + 8))(v80, v152);
    }

    else
    {
      sub_1C97AE67C(&qword_1EC3C9B10, &unk_1EC3C9AF0);
      v83 = v128;
      sub_1C9A91F68();
      v84 = v129;
      v85 = v127;
      v86 = v130;
      (*(v129 + 16))(v127, v83, v130);
      v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v88 = swift_allocObject();
      *(v88 + 16) = sub_1C98FA208;
      *(v88 + 24) = 0;
      (*(v84 + 32))(v88 + v87, v85, v86);
      v89 = sub_1C988EB2C();
      sub_1C97A2CEC(v89);
      sub_1C97AE9EC();
      sub_1C98FA360();
      sub_1C97AE67C(v90, v91);
      v92 = v131;
      sub_1C9A91EF8();
      (*(v84 + 8))(v83, v86);
      v161 = 0;
      v162 = 0xE000000000000000;
      sub_1C9A935B8();

      sub_1C98FA3DC();
      v161 = v94;
      v162 = v93;
      sub_1C97AE3DC();
      v95 = v156;
      v96 = v121;
      v97 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v97);

      MEMORY[0x1CCA90230](8250, 0xE200000000000000);
      sub_1C993B1BC();

      (*(v132 + 8))(v92, v134);
      sub_1C98352CC(&unk_1EC3C9B30, &qword_1EC3CC200);
      v98 = sub_1C9A91F28();
      v99 = sub_1C98135E0();
      v100(v99);
      v101 = v138;
      v102 = v122;
      v122(v138, v95, v96);
      *(v101 + *(v136 + 20)) = v98;
      v103 = v125;
      v102(v125, v95, v96);
      v104 = sub_1C9A91B38();
      v105 = sub_1C9A92FC8();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v157 = 0;
        v107 = v106;
        v164 = swift_slowAlloc();
        v161 = v164;
        *v107 = 136446210;
        v108 = sub_1C9A93A98();
        v110 = v109;
        v111 = v103;
        v112 = v120;
        v120(v111, v96);
        v113 = sub_1C9849140(v108, v110, &v161);

        *(v107 + 4) = v113;
        _os_log_impl(&dword_1C9788000, v104, v105, "Finished Creating Accessibility Sound Actions Session %{public}s", v107, 0xCu);
        sub_1C97A592C(v164);
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();

        v114 = sub_1C98FA3AC();
        v115(v114);
        v112(v156, v121);
      }

      else
      {

        v116 = v120;
        v120(v103, v96);
        v117 = sub_1C98FA3AC();
        v118(v117);
        v116(v95, v96);
      }

      sub_1C98F8668(v101, v139);
      (*(v151 + 8))(v153, v152);
    }
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98F63E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10[1] = a1;
  v10[2] = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v10 - v7;
  sub_1C97A2CEC(&qword_1EC3C9B00);
  sub_1C97AE67C(&qword_1EC3C9B40, &qword_1EC3C9B00);
  sub_1C9A91F28();
  (*(v5 + 16))(a2, v5);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C98F50A4();
  (*(v11 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1C98F65FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C98F66B8()
{
  sub_1C97AA95C();
  v0[5] = &unk_1F492E330;
  v0[6] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 2, &unk_1F492E330);
  swift_storeEnumTagMultiPayload();
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[11] = v1;
  *v1 = v2;
  v1[1] = sub_1C98F6780;
  v3 = v0[10];
  v4 = v0[8];

  return v6(v4, v3);
}

uint64_t sub_1C98F6780()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98F687C()
{
  sub_1C97AA95C();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_1C98FA2D8();
  sub_1C98F8668(v1, v2);
  sub_1C97A592C(v0 + 16);

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98F6908()
{
  sub_1C97AA884();
  sub_1C98FA2D8();
  sub_1C97A592C(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

void sub_1C98F6980()
{
  sub_1C97AEB94();
  v2 = v1;
  v81 = v3;
  sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v74 = v5;
  v75 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v73 = v7;
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v71 = v9;
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98FA34C();
  v70 = v10;
  v11 = sub_1C97A2CEC(&qword_1EC3CB640);
  sub_1C97AE9C8();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v60 - v18;
  sub_1C97A2CEC(&qword_1EC3C7810);
  sub_1C97AE9C8();
  v62 = v21;
  v63 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AC02C();
  v61 = v23;
  sub_1C97A2CEC(&qword_1EC3CC200);
  sub_1C97AE9C8();
  v65 = v25;
  v66 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  v64 = v27;
  sub_1C97A2CEC(&qword_1EC3CC208);
  sub_1C97AE9C8();
  v68 = v29;
  v69 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v67 = v31;
  v33 = v2[3];
  v32 = v2[4];
  sub_1C97A5A8C(v2, v33);
  (*(*(v32 + 8) + 8))(v33);
  if (!v0)
  {
    v60[3] = 0;
    v34 = sub_1C99CFB50();

    sub_1C98F9BA0(v2, &v76);
    v35 = swift_allocObject();
    sub_1C98F9C04(&v76, (v35 + 16));
    sub_1C9A91738();
    *&v76 = v34;
    *(&v76 + 1) = sub_1C98F7170;
    v77 = 0;
    v78 = sub_1C98F9C1C;
    v79 = v35;
    v80 = 1;
    v60[2] = v34;

    v60[1] = v35;

    v60[0] = v11;
    sub_1C97A2CEC(&qword_1EC3CC210);
    sub_1C97AE67C(&qword_1EC3CC218, &qword_1EC3CC210);
    sub_1C9A91F68();

    v36 = v60[0];
    (*(v13 + 16))(v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v60[0]);
    v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1C98FA208;
    *(v38 + 24) = 0;
    v39 = v36;
    (*(v13 + 32))(v38 + v37, v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    v40 = sub_1C988EB2C();
    sub_1C97A2CEC(v40);
    sub_1C97AE9EC();
    sub_1C98FA360();
    sub_1C97AE67C(v41, v42);
    v43 = v61;
    sub_1C9A91EF8();
    (*(v13 + 8))(v19, v39);
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C98FA3DC();
    *&v76 = v45;
    *(&v76 + 1) = v44;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v46 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v46);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    sub_1C993B1BC();

    (*(v62 + 8))(v43, v63);
    sub_1C98352CC(&unk_1EC3C9B30, &qword_1EC3CC200);
    v47 = sub_1C9A92008();
    v63 = sub_1C97A2CEC(&qword_1EC3CC220);
    swift_allocObject();
    v48 = sub_1C9945DA4(v47);
    v49 = sub_1C98135E0();
    v50(v49);
    *&v76 = v48;
    v52 = v70;
    v51 = v71;
    v53 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E695BD20], v72);
    v55 = v73;
    v54 = v74;
    *v73 = sub_1C98F75E0;
    v55[1] = 0;
    v56 = v75;
    (*(v54 + 104))(v55, *MEMORY[0x1E695BD48], v75);
    sub_1C97AE67C(&qword_1EC3CC228, &qword_1EC3CC220);
    sub_1C9A92018();
    (*(v54 + 8))(v55, v56);
    (*(v51 + 8))(v52, v53);

    sub_1C98FA328(&unk_1EC3CC230, &qword_1EC3CC208);
    v57 = sub_1C9A91F28();

    v58 = sub_1C98135E0();
    v59(v58);
    *(v81 + *(type metadata accessor for AccessibilitySoundActions.Session() + 20)) = v57;
  }

  sub_1C97AEB5C();
}

void sub_1C98F7170(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CC240);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B58C();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CC248);
      sub_1C97AE67C(&unk_1EC3CC250, &qword_1EC3CC248);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7820);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E68D8();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&unk_1EC3CC260);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C98F7414@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[5];
  v6 = sub_1C97A5A8C(a1, v4);
  v10[3] = v4;
  v10[4] = v5;
  v7 = sub_1C981CDF0(v10);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  v8 = sub_1C9978010(v10);
  result = sub_1C97A592C(v10);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

_BYTE *sub_1C98F74C8@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  switch(*result)
  {
    case 1:
      v2 = 0x6B63756C63;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v2 = 25957;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v2 = 26725;
      break;
    case 4:
      v3 = 0xE200000000000000;
      v2 = 27499;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v2 = 24940;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v2 = 6845805;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v2 = 28527;
      break;
    case 8:
      v3 = 0xE300000000000000;
      v2 = 7368560;
      break;
    case 9:
      v3 = 0xE200000000000000;
      v2 = 28784;
      break;
    case 0xA:
      v3 = 0xE200000000000000;
      v2 = 26739;
      break;
    case 0xB:
      v3 = 0xE200000000000000;
      v2 = 29555;
      break;
    case 0xC:
      v3 = 0xE200000000000000;
      v2 = 29812;
      break;
    case 0xD:
      v3 = 0xE200000000000000;
      v2 = 26741;
      break;
    default:
      break;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C98F75A0@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98F75E8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_1C986F098();
  result = swift_allocError();
  *a2 = result;
  *v5 = a1;
  return result;
}

void AccessibilitySoundActions.Session.soundActions.getter()
{
  sub_1C97BE460();
  v31 = v1;
  v2 = type metadata accessor for AccessibilitySoundActions.Session();
  v3 = v2 - 8;
  v28 = *(v2 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = sub_1C97A2CEC(&qword_1EC3CC188);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v29 = sub_1C97A2CEC(&qword_1EC3CC190);
  sub_1C97AE9C8();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v32 = *(v0 + *(v3 + 28));
  v14 = sub_1C988EB2C();
  v15 = sub_1C97A2CEC(v14);
  sub_1C97AE9EC();
  sub_1C98FA360();
  v18 = sub_1C97AE67C(v16, v17);
  MEMORY[0x1CCA8FD00](v15, v18);
  sub_1C98F86CC(v0, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v20 = swift_allocObject();
  sub_1C98F8668(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1C97AE67C(&qword_1EC3CC198, &qword_1EC3CC188);
  sub_1C9A93738();
  v21 = *(v7 + 32);
  v22 = v27;
  v23 = v29;
  v21(v27, v13, v29);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v21((v25 + v24), v22, v23);
  v26 = v31;
  *v31 = sub_1C98F92E0;
  v26[1] = v25;
  sub_1C97BE478();
}

uint64_t sub_1C98F7930(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1C9A91AA8();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  type metadata accessor for AccessibilitySoundActions.Session();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C98F7A28, 0, 0);
}

uint64_t sub_1C98F7A28()
{
  v25 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1C9A91AD8();
  sub_1C97BFF6C(v3, qword_1EC3D3120);
  sub_1C98F86CC(v2, v1);

  sub_1C9A91A98();
  v4 = sub_1C9A91AB8();
  v5 = sub_1C9A93088();

  if (sub_1C9A93238())
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[6];
    v9 = v0[5];
    v23 = v0[4];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C9849140(v7, v6, &v24);
    *(v10 + 12) = 2080;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v11 = sub_1C9A93A98();
    v13 = v12;
    sub_1C98FA300();
    v14 = sub_1C9849140(v11, v13, &v24);

    *(v10 + 14) = v14;
    v15 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v4, v5, v15, "ClientReadResult_AccessibilitySoundActions", "{identifier:%s,workloadID:%s}", v10, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    (*(v9 + 8))(v8, v23);
  }

  else
  {
    v16 = v0[6];
    v17 = v0[4];
    v18 = v0[5];

    (*(v18 + 8))(v16, v17);
    sub_1C98FA300();
  }

  v19 = v0[9];
  v20 = v0[2];
  *v20 = v0[8];
  v20[1] = v19;

  sub_1C97DA91C();

  return v21();
}

uint64_t sub_1C98F7CAC()
{
  sub_1C99DC5A4();
  v2 = *(v0 + *(type metadata accessor for AccessibilitySoundActions.Session() + 20));
  v7 = sub_1C97A2CEC(&qword_1EC3C9B18);
  v8 = sub_1C98F9E64();
  v6[0] = v2;

  sub_1C99DC674(v6);
  if (!v1)
  {
    sub_1C97A592C(v6);
    v3 = sub_1C9A91748();
    v7 = v3;
    v8 = &off_1F494ACE0;
    v4 = sub_1C981CDF0(v6);
    (*(*(v3 - 8) + 16))(v4, v0, v3);
    sub_1C99DC674(v6);
  }

  return sub_1C97A592C(v6);
}

uint64_t sub_1C98F7DB8()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91748();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C98F7EB0;

  return sub_1C988FC80();
}

uint64_t sub_1C98F7EB0(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = a1;
  v5[9] = v1;

  if (v1)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = sub_1C97DA8BC();
    v5[10] = v12;
    *v12 = v7;
    v12[1] = sub_1C98F8028;

    return v14();
  }
}

uint64_t sub_1C98F8028()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C98F812C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F8194()
{
  sub_1C97AA95C();
  v1 = v0[11];
  v2 = v0[2];
  *(v2 + *(type metadata accessor for AccessibilitySoundActions.Session() + 20)) = v1;
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_1C98F8244;
  v5 = v0[6];

  return v7(v5);
}

uint64_t sub_1C98F8244()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98F8340()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F83B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  (*(v2 + 32))(v4, v1, v3);

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C98F8458()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F84EC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C98FA238(v1);

  return sub_1C98F7DB8();
}

unint64_t sub_1C98F8574()
{
  result = qword_1EC3CC168;
  if (!qword_1EC3CC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC168);
  }

  return result;
}

unint64_t sub_1C98F85C8()
{
  result = qword_1EC3CC180;
  if (!qword_1EC3CC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC180);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilitySoundActions.Session()
{
  result = qword_1EC3CC1B8;
  if (!qword_1EC3CC1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C98F8668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilitySoundActions.Session();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98F86CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilitySoundActions.Session();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98F8730()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AccessibilitySoundActions.Session();
  sub_1C97DACE4(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97D9C3C;

  return sub_1C98F7930(v4, v2, v0 + v7);
}

uint64_t sub_1C98F8804(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C97A2CEC(&qword_1EC3CC2C8);
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8890, 0, 0);
}

uint64_t sub_1C98F8890()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C97AE67C(&qword_1EC3CC2D8, &qword_1EC3CC2C8);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3, v4, v5);
}

uint64_t sub_1C98F8950()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C98F8A70(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C97A2CEC(&qword_1EC3CC328);
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8AFC, 0, 0);
}

uint64_t sub_1C98F8AFC()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC338, &qword_1EC3CC328);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3, v4, v5);
}

uint64_t sub_1C98F8BA8(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C97A2CEC(&qword_1EC3CC310);
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8C34, 0, 0);
}

uint64_t sub_1C98F8C34()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC320, &qword_1EC3CC310);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3, v4, v5);
}

uint64_t sub_1C98F8CE0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C98F8E00()
{
  sub_1C97AA884();
  swift_endAccess();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F8E5C(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1C97A2CEC(&qword_1EC3CC2F0);
  v1[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8EE8, 0, 0);
}

uint64_t sub_1C98F8EE8()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC300, &qword_1EC3CC2F0);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3, v4, v5);
}

void sub_1C98F8F94()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC2C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C98FA280();
  v6(v5);
  sub_1C98FA270();
  sub_1C97AE67C(v7, v8);
  sub_1C98FA36C();
  v9 = swift_allocBox();
  v11 = sub_1C98FA2A0(v9, v10);
  v12(v11);
  *v1 = &unk_1C9AB2658;
  v1[1] = &qword_1EC3CC2C0;
  sub_1C97BE478();
}

uint64_t sub_1C98F90FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC190);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CC328);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_1C97AE67C(&qword_1EC3CC330, &qword_1EC3CC190);
  sub_1C9A92A68();
  v12 = swift_allocBox();
  result = (*(v9 + 32))(v13, v11, v8);
  *a2 = &unk_1C9AB26B8;
  a2[1] = v12;
  return result;
}