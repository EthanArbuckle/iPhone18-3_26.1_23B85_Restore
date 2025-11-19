BOOL AddCustodianRecoveryKeyRequest.hasDynamicInfoAndSig.getter()
{
  v1 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &unk_10029D760, &qword_10021E810);
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &unk_10029D760, &qword_10021E810);
  return v9;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearDynamicInfoAndSig()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v1 + v7) = v10;
  }

  v14 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v6, &v10[v15], &unk_10029D760, &qword_10021E810);
  swift_endAccess();
}

uint64_t AddCustodianRecoveryKeyRequest.metrics.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000CB2E0(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for Metrics);
  v16 = type metadata accessor for Metrics(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v8, &v12[v17], &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Metrics(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100297FE0, &unk_10021E7F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v18 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100097FCC;
}

void sub_100097FCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Metrics);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1000CB2E0(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v14, v18, type metadata accessor for Metrics);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v18, &v7[v19], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
    sub_1000F9228(v13, type metadata accessor for Metrics);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000CB2E0(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v13, v18, type metadata accessor for Metrics);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
    swift_beginAccess();
    sub_1000F9E80(v18, &v23[v31], &qword_100297FE0, &unk_10021E7F0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasMetrics.getter()
{
  v1 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &qword_100297FE0, &unk_10021E7F0);
  v8 = type metadata accessor for Metrics(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &qword_100297FE0, &unk_10021E7F0);
  return v9;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearMetrics()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v1 + v7) = v10;
  }

  v14 = type metadata accessor for Metrics(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v6, &v10[v15], &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
}

uint64_t sub_1000984A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = *(v3 + *(a1(0) + 20));
  v13 = *a2;
  swift_beginAccess();
  sub_100019C6C(v12 + v13, v11, &unk_10029D6F0, &qword_100226B40);
  v14 = type metadata accessor for AccountInfo(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v11, 1, v14) != 1)
  {
    return sub_1000F89AC(v11, a3, type metadata accessor for AccountInfo);
  }

  *a3 = 0;
  v16 = a3 + *(v14 + 20);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v15)(v11, 1, v14);
  if (result != 1)
  {
    return sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyRequest.accountInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000CB2E0(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for AccountInfo);
  v16 = type metadata accessor for AccountInfo(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v8, &v12[v17], &unk_10029D6F0, &qword_100226B40);
  return swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.accountInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for AccountInfo(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &unk_10029D6F0, &qword_100226B40);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v18 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_1000989F4;
}

void sub_1000989F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for AccountInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1000CB2E0(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v14, v18, type metadata accessor for AccountInfo);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v18, &v7[v19], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
    sub_1000F9228(v13, type metadata accessor for AccountInfo);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000CB2E0(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v13, v18, type metadata accessor for AccountInfo);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
    swift_beginAccess();
    sub_1000F9E80(v18, &v23[v31], &unk_10029D6F0, &qword_100226B40);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL AddCustodianRecoveryKeyRequest.hasAccountInfo.getter()
{
  v1 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &unk_10029D6F0, &qword_100226B40);
  v8 = type metadata accessor for AccountInfo(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &unk_10029D6F0, &qword_100226B40);
  return v9;
}

Swift::Void __swiftcall AddCustodianRecoveryKeyRequest.clearAccountInfo()()
{
  v1 = v0;
  v2 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000CB2E0(v10);
    *(v1 + v7) = v10;
  }

  v14 = type metadata accessor for AccountInfo(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_1000F9E80(v6, &v10[v15], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
}

void (*AddCustodianRecoveryKeyRequest.viewKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100098FC0;
}

uint64_t sub_100099044@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 24), v9, &unk_10029D750, &qword_10021E850);
  v11 = type metadata accessor for Changes(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1000F89AC(v9, a2, type metadata accessor for Changes);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  v13 = a2 + *(v11 + 36);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  return result;
}

uint64_t AddCustodianRecoveryKeyResponse.changes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) + 24);
  sub_1000114D4(v1 + v3, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Changes);
  v4 = type metadata accessor for Changes(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AddCustodianRecoveryKeyResponse.changes.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Changes(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = &_swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    v16 = v13 + *(v8 + 36);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t FetchChangesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchChangesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchChangesRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchChangesRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t FetchChangesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchChangesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchChangesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchChangesRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_100099D14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 20), v9, &unk_10029D750, &qword_10021E850);
  v11 = type metadata accessor for Changes(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1000F89AC(v9, a2, type metadata accessor for Changes);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  v13 = a2 + *(v11 + 36);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  return result;
}

uint64_t sub_100099EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1000114D4(v2 + v4, &unk_10029D750, &qword_10021E850);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for Changes);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*FetchChangesResponse.changes.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D750, &qword_10021E850) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Changes(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchChangesResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D750, &qword_10021E850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = &_swiftEmptyArrayStorage;
    *(v13 + 24) = xmmword_10021D470;
    *(v13 + 40) = xmmword_10021D470;
    *(v13 + 56) = 0;
    v16 = v13 + *(v8 + 36);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Changes);
  }

  return sub_100106188;
}

uint64_t FetchViableBottlesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchViableBottlesRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t FetchViableBottlesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchViableBottlesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t FetchViableBottlesRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v3 = a1 + ViableBottlesRequest[5];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = ViableBottlesRequest[6];
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = ViableBottlesRequest[7];
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t FetchViableBottlesResponse.legacyRecords.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t FetchViableBottlesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = &_swiftEmptyArrayStorage;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v3 = a1 + *(ViableBottlesResponse + 44);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t FetchRecoverableTLKSharesRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t FetchRecoverableTLKSharesRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_10009B29C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = a1(0);
  v4 = &a2[v3[5]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = v3[6];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v3[7];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t FetchRecoverableTLKSharesResponse.View.keys.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 28);
  sub_1000114D4(v1 + v3, &qword_100297E40, &unk_10021E7D0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for ViewKeysRecords);
  v4 = type metadata accessor for ViewKeysRecords(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchRecoverableTLKSharesResponse.View.keys.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297E40, &unk_10021E7D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ViewKeysRecords(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297E40, &unk_10021E7D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = v8[5];
    v17 = sub_100216424();
    v18 = *(*(v17 - 8) + 56);
    v18(v13 + v16, 1, 1, v17);
    v18(v13 + v8[6], 1, 1, v17);
    v18(v13 + v8[7], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297E40, &unk_10021E7D0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for ViewKeysRecords);
  }

  return sub_10009B74C;
}

void sub_10009B74C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for ViewKeysRecords);
    sub_1000114D4(v9 + v3, &qword_100297E40, &unk_10021E7D0);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for ViewKeysRecords);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for ViewKeysRecords);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100297E40, &unk_10021E7D0);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for ViewKeysRecords);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t FetchRecoverableTLKSharesResponse.View.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = &_swiftEmptyArrayStorage;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v3 = &a1[*(RecoverableTLKShares + 24)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(RecoverableTLKShares + 28);
  v5 = type metadata accessor for ViewKeysRecords(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t FetchPolicyDocumentsRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchPolicyDocumentsRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t FetchPolicyDocumentsRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchPolicyDocumentsRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_10009C238@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a3 + *(a2(0) + 20);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

void (*GetRepairActionRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

void (*GetRepairActionRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetRepairActionRequest(0) + 52);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_10009C894@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009C930(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t GetRepairActionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  *(a1 + 32) = 0;
  v3 = a1 + RepairActionRequest[11];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = RepairActionRequest[12];
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = RepairActionRequest[13];
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_10009CB00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  sub_1000114D4(v2 + v4, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for Metrics);
  v5 = type metadata accessor for Metrics(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*GetEscrowCheckRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t sub_10009CE68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 52), v9, &unk_10029D6F0, &qword_100226B40);
  v11 = type metadata accessor for AccountInfo(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1000F89AC(v9, a2, type metadata accessor for AccountInfo);
  }

  *a2 = 0;
  v13 = a2 + *(v11 + 20);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t sub_10009CFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 52);
  sub_1000114D4(v2 + v4, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v2 + v4, type metadata accessor for AccountInfo);
  v5 = type metadata accessor for AccountInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*GetEscrowCheckRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetEscrowCheckRequest(0) + 52);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t GetEscrowCheckRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &_swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  v2 = type metadata accessor for GetEscrowCheckRequest(0);
  v3 = a1 + v2[11];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = v2[12];
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[13];
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t EscrowProxyFederationMoveRecordRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_100019C6C(v1 + *(v8 + 32), v7, &qword_100297FE0, &unk_10021E7F0);
  v9 = type metadata accessor for Metrics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v11 = a1 + *(v9 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t EscrowProxyFederationMoveRecordRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 32);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EscrowProxyFederationMoveRecordRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t EscrowProxyFederationMoveRecordRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v2 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v3 = &a1[*(v2 + 28)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v2 + 32);
  v5 = type metadata accessor for Metrics(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t GetRepairActionResponse.repairAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t GetRepairActionResponse.repairAction.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v9);

    *(v3 + v6) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  return result;
}

void (*GetRepairActionResponse.repairAction.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_10009DC70;
}

void sub_10009DC70(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v11 = sub_1000F960C(v8);

    *(v10 + v9) = v11;
    v8 = v11;
  }

  swift_beginAccess();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;

  free(v1);
}

uint64_t GetRepairActionResponse.totalEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t GetRepairActionResponse.totalEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 32) = a1;
  return result;
}

void (*GetRepairActionResponse.totalEscrowRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 32);
  return sub_10009DEDC;
}

void sub_10009DEDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectableEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t GetRepairActionResponse.collectableEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 40) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableEscrowRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);
  return sub_10009E140;
}

void sub_10009E140(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectedEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t GetRepairActionResponse.collectedEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 48) = a1;
  return result;
}

void (*GetRepairActionResponse.collectedEscrowRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 48);
  return sub_10009E3A4;
}

void sub_10009E3A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 48) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 56) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.escrowRecordGarbageCollectionEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 56);
  return sub_10009E60C;
}

void sub_10009E60C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 56) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.totalTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t GetRepairActionResponse.totalTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 64) = a1;
  return result;
}

void (*GetRepairActionResponse.totalTlkShares.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 64);
  return sub_10009E86C;
}

void sub_10009E86C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 64) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectableTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t GetRepairActionResponse.collectableTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 72) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableTlkShares.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 72);
  return sub_10009EAD0;
}

void sub_10009EAD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 72) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectedTlkShares.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t GetRepairActionResponse.collectedTlkShares.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 80) = a1;
  return result;
}

void (*GetRepairActionResponse.collectedTlkShares.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 80);
  return sub_10009ED34;
}

void sub_10009ED34(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 80) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.tlkShareGarbageCollectionEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 88);
}

uint64_t GetRepairActionResponse.tlkShareGarbageCollectionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 88) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.tlkShareGarbageCollectionEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 88);
  return sub_10009EF9C;
}

void sub_10009EF9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 88) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.totalPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 96);
}

uint64_t GetRepairActionResponse.totalPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 96) = a1;
  return result;
}

void (*GetRepairActionResponse.totalPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 96);
  return sub_10009F1FC;
}

void sub_10009F1FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 96) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.trustedPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 104);
}

uint64_t GetRepairActionResponse.trustedPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 104) = a1;
  return result;
}

void (*GetRepairActionResponse.trustedPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 104);
  return sub_10009F460;
}

void sub_10009F460(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 104) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.superfluousPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 112);
}

uint64_t GetRepairActionResponse.superfluousPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 112) = a1;
  return result;
}

void (*GetRepairActionResponse.superfluousPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 112);
  return sub_10009F6C4;
}

void sub_10009F6C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 112) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.peersCleanedup.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 120);
}

uint64_t GetRepairActionResponse.peersCleanedup.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 120) = a1;
  return result;
}

void (*GetRepairActionResponse.peersCleanedup.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 120);
  return sub_10009F928;
}

void sub_10009F928(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 120) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.superfluousPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 128);
}

uint64_t GetRepairActionResponse.superfluousPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 128) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.superfluousPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 128);
  return sub_10009FB90;
}

void sub_10009FB90(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 128) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.duplicateEscrowRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 136);
}

uint64_t GetRepairActionResponse.duplicateEscrowRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  return result;
}

void (*GetRepairActionResponse.duplicateEscrowRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 136);
  return sub_10009FDF0;
}

void sub_10009FDF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.unsetHmacpeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 144);
}

uint64_t GetRepairActionResponse.unsetHmacpeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 144) = a1;
  return result;
}

void (*GetRepairActionResponse.unsetHmacpeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 144);
  return sub_1000A0054;
}

void sub_1000A0054(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 144) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.updatedHmacpeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 152);
}

uint64_t GetRepairActionResponse.updatedHmacpeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 152) = a1;
  return result;
}

void (*GetRepairActionResponse.updatedHmacpeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 152);
  return sub_1000A02B8;
}

void sub_1000A02B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.totalDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 160);
}

uint64_t GetRepairActionResponse.totalDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 160) = a1;
  return result;
}

void (*GetRepairActionResponse.totalDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 160);
  return sub_1000A051C;
}

void sub_1000A051C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 160) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectableDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 168);
}

uint64_t GetRepairActionResponse.collectableDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 168) = a1;
  return result;
}

void (*GetRepairActionResponse.collectableDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 168);
  return sub_1000A0780;
}

void sub_1000A0780(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.collectedDeviceStateRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 176);
}

uint64_t GetRepairActionResponse.collectedDeviceStateRecords.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 176) = a1;
  return result;
}

void (*GetRepairActionResponse.collectedDeviceStateRecords.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 176);
  return sub_1000A09E4;
}

void sub_1000A09E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 176) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.tlkShareDeletionFailed.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 184);
}

uint64_t GetRepairActionResponse.tlkShareDeletionFailed.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 184) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.tlkShareDeletionFailed.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 184);
  return sub_1000A0C4C;
}

void sub_1000A0C4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 184) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.deviceStateRecordDeletionFailed.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 185);
}

uint64_t GetRepairActionResponse.deviceStateRecordDeletionFailed.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 185) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.deviceStateRecordDeletionFailed.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 185);
  return sub_1000A0EB0;
}

void sub_1000A0EB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 185) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.fullyDanglingPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 192);
}

uint64_t GetRepairActionResponse.fullyDanglingPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 192) = a1;
  return result;
}

void (*GetRepairActionResponse.fullyDanglingPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 192);
  return sub_1000A1110;
}

void sub_1000A1110(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 192) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 200);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 200) = a1;
  return result;
}

void (*GetRepairActionResponse.partiallyDanglingPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 200);
  return sub_1000A1374;
}

void sub_1000A1374(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.caesarPeers.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 208);
}

uint64_t GetRepairActionResponse.caesarPeers.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 208) = a1;
  return result;
}

void (*GetRepairActionResponse.caesarPeers.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 208);
  return sub_1000A15D8;
}

void sub_1000A15D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 208) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.danglingPeersCleanedUp.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 216);
}

uint64_t GetRepairActionResponse.danglingPeersCleanedUp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 216) = a1;
  return result;
}

void (*GetRepairActionResponse.danglingPeersCleanedUp.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 216);
  return sub_1000A183C;
}

void sub_1000A183C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 216) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.danglingPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 224);
}

uint64_t GetRepairActionResponse.danglingPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 224) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.danglingPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 224);
  return sub_1000A1AA4;
}

void sub_1000A1AA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 224) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.idmsUpdated.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 225);
}

uint64_t GetRepairActionResponse.idmsUpdated.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 225) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.idmsUpdated.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 225);
  return sub_1000A1D08;
}

void sub_1000A1D08(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 225) = v4;

  free(v1);
}

uint64_t GetRepairActionResponse.fullyDanglingPeerCountValidationFails.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 232);
}

uint64_t GetRepairActionResponse.fullyDanglingPeerCountValidationFails.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 232) = a1;
  return result;
}

void (*GetRepairActionResponse.fullyDanglingPeerCountValidationFails.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 232);
  return sub_1000A1F68;
}

void sub_1000A1F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 240);
}

uint64_t GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 240) = a1;
  return result;
}

void (*GetRepairActionResponse.partiallyDanglingPeerCountValidationFails.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 240);
  return sub_1000A21CC;
}

void sub_1000A21CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 240) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.caesarPeersCleanedUp.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 248);
}

uint64_t GetRepairActionResponse.caesarPeersCleanedUp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 248) = a1;
  return result;
}

void (*GetRepairActionResponse.caesarPeersCleanedUp.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 248);
  return sub_1000A2430;
}

void sub_1000A2430(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 248) = v2;

  free(v1);
}

uint64_t GetRepairActionResponse.caesarPeersCleanupEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for GetRepairActionResponse(0) + 20));
  swift_beginAccess();
  return *(v1 + 256);
}

uint64_t GetRepairActionResponse.caesarPeersCleanupEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v8 = sub_1000F960C(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 256) = a1 & 1;
  return result;
}

void (*GetRepairActionResponse.caesarPeersCleanupEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 256);
  return sub_1000A2698;
}

void sub_1000A2698(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v10 = sub_1000F960C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 256) = v4;

  free(v1);
}

uint64_t GetEscrowCheckResponse.escrowRecordMoveRequest.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for GetEscrowCheckResponse(0);
  sub_100019C6C(v1 + *(v8 + 40), v7, &unk_10029D720, &qword_10021E868);
  v9 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v11 = &a1[*(v9 + 28)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v12 = *(v9 + 32);
  v13 = type metadata accessor for Metrics(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &unk_10029D720, &qword_10021E868);
  }

  return result;
}

uint64_t GetEscrowCheckResponse.escrowRecordMoveRequest.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetEscrowCheckResponse(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D720, &qword_10021E868);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  v4 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetEscrowCheckResponse.escrowRecordMoveRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D720, &qword_10021E868) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetEscrowCheckResponse(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D720, &qword_10021E868);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
    v16 = &v13[*(v8 + 28)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v17 = *(v8 + 32);
    v18 = type metadata accessor for Metrics(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D720, &qword_10021E868);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  return sub_1000A2C68;
}

void sub_1000A2C68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    sub_1000114D4(v9 + v3, &unk_10029D720, &qword_10021E868);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029D720, &qword_10021E868);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t GetEscrowCheckResponse.escrowRepairReason.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t GetEscrowCheckResponse.escrowRepairReason.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t GetEscrowCheckResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for GetEscrowCheckResponse(0);
  v3 = a1 + *(v2 + 36);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t SupportAppView.lastReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SupportAppView(0);
  sub_100019C6C(v1 + *(v8 + 28), v7, &qword_10029D780, &qword_1002265D0);
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_100216494();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t sub_1000A3150(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a2(0) + 28);
  sub_1000114D4(v5 + v10, a3, a4);
  v11 = a5(0);
  v14 = *(v11 - 8);
  (*(v14 + 32))(v5 + v10, a1, v11);
  v12 = *(v14 + 56);

  return v12(v5 + v10, 0, 1, v11);
}

void (*SupportAppView.lastReport.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SupportAppView(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t SupportAppView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for SupportAppView(0);
  v3 = a1 + *(v2 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v2 + 28);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t SupportAppDevice.serialNumber.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SupportAppDevice.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SupportAppDevice.views.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void (*SupportAppDevice.lastHealthReport.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for SupportAppDevice(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t SupportAppDevice.status.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SupportAppDevice.status.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t SupportAppDevice.modelID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SupportAppDevice.modelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SupportAppDevice.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v2 = type metadata accessor for SupportAppDevice(0);
  v3 = a1 + *(v2 + 44);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v2 + 48);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t GetSupportAppInfoRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetSupportAppInfoRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t GetSupportAppInfoRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*GetSupportAppInfoRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_1000A4284@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v4 = a2(0);
  v5 = &a3[v4[5]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v6 = v4[6];
  v7 = type metadata accessor for Metrics(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v4[7];
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a3[v8], 1, 1, v9);
}

uint64_t GetSupportAppInfoResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  v1 = a1 + *(type metadata accessor for GetSupportAppInfoResponse(0) + 36);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000A4440@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 40), v9, &unk_10029D6F0, &qword_100226B40);
  v11 = type metadata accessor for AccountInfo(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1000F89AC(v9, a2, type metadata accessor for AccountInfo);
  }

  *a2 = 0;
  v13 = a2 + *(v11 + 20);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t ResetAccountCDPContentsRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetAccountCDPContentsRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t ResetAccountCDPContentsRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 44);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResetAccountCDPContentsRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 44);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t sub_1000A4CC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  v3 = a1(0);
  v4 = a2 + v3[9];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = v3[10];
  v6 = type metadata accessor for AccountInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = v3[11];
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000A4E68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 48), v9, &qword_10029D780, &qword_1002265D0);
  v11 = sub_1002164A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_100216494();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t sub_1000A4FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  sub_1000114D4(v2 + v4, &qword_10029D780, &qword_1002265D0);
  v5 = sub_1002164A4();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*EscrowInformation.creationDate.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation(0) + 48);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

uint64_t EscrowInformation.escrowInformationMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(v1 + *(v8 + 52), v7, &unk_10029DAA0, &qword_10021E870);
  v9 = type metadata accessor for EscrowInformation.Metadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for EscrowInformation.Metadata);
  }

  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = *(v9 + 20);
  if (qword_1002974B8 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_100298568;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_1000114D4(v7, &unk_10029DAA0, &qword_10021E870);
  }

  return result;
}

uint64_t EscrowInformation.escrowInformationMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowInformation(0) + 52);
  sub_1000114D4(v1 + v3, &unk_10029DAA0, &qword_10021E870);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for EscrowInformation.Metadata);
  v4 = type metadata accessor for EscrowInformation.Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EscrowInformation.escrowInformationMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029DAA0, &qword_10021E870) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for EscrowInformation.Metadata(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation(0) + 52);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029DAA0, &qword_10021E870);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v16 = *(v8 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100298568;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000114D4(v7, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowInformation.Metadata);
  }

  return sub_1000A5844;
}

void sub_1000A5844(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for EscrowInformation.Metadata);
    sub_1000114D4(v9 + v3, &unk_10029DAA0, &qword_10021E870);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for EscrowInformation.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for EscrowInformation.Metadata);
  }

  else
  {
    sub_1000114D4(v9 + v3, &unk_10029DAA0, &qword_10021E870);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for EscrowInformation.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t EscrowInformation.viabilityStatus.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t EscrowInformation.viabilityStatus.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t EscrowInformation.federationID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t EscrowInformation.federationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t EscrowInformation.expectedFederationID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t EscrowInformation.expectedFederationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.backupKeybagDigest.getter()
{
  v1 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_100012558(v2, *(v1 + 24));
  return v2;
}

uint64_t EscrowInformation.Metadata.backupKeybagDigest.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1000E0598(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return sub_100002BF0(v13, v14);
}

void (*EscrowInformation.Metadata.backupKeybagDigest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A5D44;
}

void sub_1000A5D44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_100012558(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_1000E0598(v9);
      *(v11 + v10) = v9;
    }

    swift_beginAccess();
    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;
    sub_100002BF0(v15, v16);
    v17 = *(v2 + 72);
    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_1000E0598(v21);
      *(v23 + v22) = v21;
    }

    swift_beginAccess();
    v17 = *(v21 + 16);
    v18 = *(v21 + 24);
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
  }

  sub_100002BF0(v17, v18);

  free(v2);
}

uint64_t EscrowInformation.Metadata.clientMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v9 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v8 + v9, v7, &qword_100298660, &qword_10021E878);
  v10 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  v12 = a1 + *(v10 + 60);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v13 = *(v10 + 64);
  v14 = sub_1002164A4();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100298660, &qword_10021E878);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  v2 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v3 = a1 + *(v2 + 60);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(v2 + 64);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t EscrowInformation.Metadata.clientMetadata.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000E0598(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v16 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v17, &qword_100298660, &qword_10021E878);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.clientMetadata.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_100298660, &qword_10021E878) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_100298660, &qword_10021E878);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0xE000000000000000;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0xE000000000000000;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0xE000000000000000;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0xE000000000000000;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0xE000000000000000;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0xE000000000000000;
    *(v13 + 120) = 0;
    *(v13 + 128) = 0xE000000000000000;
    *(v13 + 136) = 0;
    v18 = v13 + *(v8 + 60);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v19 = *(v8 + 64);
    v20 = sub_1002164A4();
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  return sub_1000A653C;
}

void sub_1000A653C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1000E0598(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v14, v18, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
    swift_beginAccess();
    sub_1000F9E80(v18, v7 + v19, &qword_100298660, &qword_10021E878);
    swift_endAccess();
    sub_1000F9228(v13, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000E0598(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v13, v18, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
    swift_beginAccess();
    sub_1000F9E80(v18, v23 + v31, &qword_100298660, &qword_10021E878);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasClientMetadata.getter()
{
  v1 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &qword_100298660, &qword_10021E878);
  v8 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &qword_100298660, &qword_10021E878);
  return v9;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearClientMetadata()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v1 + v7) = v10;
  }

  v14 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_1000F9E80(v6, v10 + v15, &qword_100298660, &qword_10021E878);
  swift_endAccess();
}

uint64_t EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.getter()
{
  v1 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v2 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1000E0598(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  result = swift_beginAccess();
  *(v7 + v11) = a1;
  return result;
}

void (*EscrowInformation.Metadata.secureBackupUsesMultipleIcscs.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1000A6B88;
}

void sub_1000A6B88(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_1000E0598(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  *(v7 + v13) = v2;

  free(v1);
}

void (*EscrowInformation.Metadata.bottleID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A6D20;
}

uint64_t EscrowInformation.Metadata.secureBackupTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v9 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v8 + v9, v7, &qword_10029D780, &qword_1002265D0);
  v10 = sub_1002164A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v7, v10);
  }

  sub_100216494();
  result = (v12)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.secureBackupTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v20 - v7;
  v9 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000E0598(v12);
    *(v2 + v9) = v12;
  }

  v16 = sub_1002164A4();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v8, a1, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  v18 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v18, &qword_10029D780, &qword_1002265D0);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.secureBackupTimestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = sub_1002164A4();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_10029D780, &qword_1002265D0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000A729C;
}

void sub_1000A729C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1000E0598(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v16 + 32))(v18, v14, v15);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
    swift_beginAccess();
    sub_1000F9E80(v18, v7 + v19, &qword_10029D780, &qword_1002265D0);
    swift_endAccess();
    (*(v16 + 8))(v13, v15);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000E0598(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v30 + 32))(v18, v13, v29);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
    swift_beginAccess();
    sub_1000F9E80(v18, v23 + v31, &qword_10029D780, &qword_1002265D0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasSecureBackupTimestamp.getter()
{
  v1 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &qword_10029D780, &qword_1002265D0);
  v8 = sub_1002164A4();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &qword_10029D780, &qword_1002265D0);
  return v9;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearSecureBackupTimestamp()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v1 + v7) = v10;
  }

  v14 = sub_1002164A4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_1000F9E80(v6, v10 + v15, &qword_10029D780, &qword_1002265D0);
  swift_endAccess();
}

void (*EscrowInformation.Metadata.escrowedSpki.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A781C;
}

uint64_t sub_1000A7834(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20)) + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_100012558(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1000A78AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1000E0598(v11);
    *(v5 + v8) = v11;
  }

  v15 = (v11 + *a3);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  return sub_100002BF0(v16, v17);
}

void (*EscrowInformation.Metadata.peerInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_100012558(v7, v8);
  return sub_1000A7A10;
}

void sub_1000A7A1C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    sub_100012558(*(*a1 + 72), v7);
    v9 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v4 + 96);
      v13 = *(v4 + 88);
      v14 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v11 = sub_1000E0598(v11);
      *(v13 + v12) = v11;
    }

    v17 = (v11 + *a3);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    *v17 = v5;
    v17[1] = v7;
    sub_100002BF0(v18, v19);
    v20 = *(v4 + 72);
    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v24 = sub_1000E0598(v24);
      *(v26 + v25) = v24;
    }

    v30 = (v24 + *a3);
    swift_beginAccess();
    v20 = *v30;
    v21 = v30[1];
    *v30 = v5;
    v30[1] = v7;
  }

  sub_100002BF0(v20, v21);

  free(v4);
}

uint64_t sub_1000A7B78(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20)) + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1000A7BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1000E0598(v11);
    *(v5 + v8) = v11;
  }

  v15 = (v11 + *a3);
  swift_beginAccess();
  v16 = v15[1];
  *v15 = a1;
  v15[1] = a2;
}

void (*EscrowInformation.Metadata.serial.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A7D54;
}

void sub_1000A7D60(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v12 = sub_1000E0598(v12);
      *(v14 + v13) = v12;
    }

    v18 = (v12 + *a3);
    swift_beginAccess();
    v19 = v18[1];
    *v18 = v5;
    v18[1] = v7;

    v20 = *(v4 + 80);
  }

  else
  {
    v21 = *(v8 + v6);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v8 + v6);
    if ((v22 & 1) == 0)
    {
      v24 = *(v4 + 96);
      v25 = *(v4 + 88);
      v26 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000E0598(v23);
      *(v25 + v24) = v23;
    }

    v29 = (v23 + *a3);
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v5;
    v29[1] = v7;
  }

  free(v4);
}

void (*EscrowInformation.Metadata.build.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000A7F78;
}

uint64_t EscrowInformation.Metadata.passcodeGeneration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v9 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v8 + v9, v7, &qword_1002986A8, &qword_10021E880);
  v10 = type metadata accessor for PasscodeGeneration(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for PasscodeGeneration);
  }

  *a1 = 0;
  v12 = a1 + *(v10 + 20);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_1002986A8, &qword_10021E880);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.passcodeGeneration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000E0598(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for PasscodeGeneration);
  v16 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v17, &qword_1002986A8, &qword_10021E880);
  return swift_endAccess();
}

void (*EscrowInformation.Metadata.passcodeGeneration.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(sub_10001148C(&qword_1002986A8, &qword_10021E880) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for PasscodeGeneration(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v15 + v16, v7, &qword_1002986A8, &qword_10021E880);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v18 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_1002986A8, &qword_10021E880);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for PasscodeGeneration);
  }

  return sub_1000A84C8;
}

void sub_1000A84C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000F91C0(*(v2 + 120), *(v2 + 112), type metadata accessor for PasscodeGeneration);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1000E0598(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v14, v18, type metadata accessor for PasscodeGeneration);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    sub_1000F9E80(v18, v7 + v19, &qword_1002986A8, &qword_10021E880);
    swift_endAccess();
    sub_1000F9228(v13, type metadata accessor for PasscodeGeneration);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1000E0598(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1000F89AC(v13, v18, type metadata accessor for PasscodeGeneration);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    sub_1000F9E80(v18, v23 + v31, &qword_1002986A8, &qword_10021E880);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL EscrowInformation.Metadata.hasPasscodeGeneration.getter()
{
  v1 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = *(v0 + *(type metadata accessor for EscrowInformation.Metadata(0) + 20));
  v7 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(v6 + v7, v5, &qword_1002986A8, &qword_10021E880);
  v8 = type metadata accessor for PasscodeGeneration(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000114D4(v5, &qword_1002986A8, &qword_10021E880);
  return v9;
}

Swift::Void __swiftcall EscrowInformation.Metadata.clearPasscodeGeneration()()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for EscrowInformation.Metadata(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1000E0598(v10);
    *(v1 + v7) = v10;
  }

  v14 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_1000F9E80(v6, v10 + v15, &qword_1002986A8, &qword_10021E880);
  swift_endAccess();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(v1 + *(v8 + 64), v7, &qword_10029D780, &qword_1002265D0);
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_100216494();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
  }

  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  sub_1000114D4(v1 + v3, &qword_10029D780, &qword_1002265D0);
  v4 = sub_1002164A4();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*EscrowInformation.Metadata.ClientMetadata.secureBackupMetadataTimestamp.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D780, &qword_1002265D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1002164A4();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D780, &qword_1002265D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216494();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A8;
}

BOOL EscrowInformation.Metadata.ClientMetadata.hasSecureBackupMetadataTimestamp.getter()
{
  v1 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(v0 + *(v6 + 64), v5, &qword_10029D780, &qword_1002265D0);
  v7 = sub_1002164A4();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1000114D4(v5, &qword_10029D780, &qword_1002265D0);
  return v8;
}

Swift::Void __swiftcall EscrowInformation.Metadata.ClientMetadata.clearSecureBackupMetadataTimestamp()()
{
  v1 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  sub_1000114D4(v0 + v1, &qword_10029D780, &qword_1002265D0);
  v2 = sub_1002164A4();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceEnclosureColor.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceEnclosureColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceMid.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceMid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModel.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelClass.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelClass.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelVersion.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceModelVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceName.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t EscrowInformation.Metadata.ClientMetadata.deviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t sub_1000A921C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A92B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PCSService.publicKey.getter()
{
  v1 = *(v0 + 8);
  sub_100012558(v1, *(v0 + 16));
  return v1;
}

uint64_t PCSService.publicKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100002BF0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PCSService.zone.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PCSService.zone.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1000A946C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A9508(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PCSService.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_10021D470;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for PCSService(0) + 28);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t DirectPCSIdentityFetchRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentityFetchRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t DirectPCSIdentityFetchRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentityFetchRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t sub_1000A9D74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1000114D4(v2 + v4, &qword_10029D9C0, &qword_100226740);
  v5 = sub_100216424();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*DirectPCSIdentity.item.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D9C0, &qword_100226740) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_100216424();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentity(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D9C0, &qword_100226740);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216414();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1001061A4;
}

uint64_t DirectPCSIdentity.pcsService.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DirectPCSIdentity(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297E18, &qword_10021DA28);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for PCSService);
  v4 = type metadata accessor for PCSService(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*DirectPCSIdentity.pcsService.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297E18, &qword_10021DA28) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PCSService(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for DirectPCSIdentity(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297E18, &qword_10021DA28);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = xmmword_10021D470;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0xE000000000000000;
    v16 = v13 + *(v8 + 28);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297E18, &qword_10021DA28);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for PCSService);
  }

  return sub_1000AA3B4;
}

void sub_1000AA3B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for PCSService);
    sub_1000114D4(v9 + v3, &qword_100297E18, &qword_10021DA28);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for PCSService);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for PCSService);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100297E18, &qword_10021DA28);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for PCSService);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1000AA5D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v8 = a1(0);
  v9 = *(v8 + 20);
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4 + v11, 1, 1, v12);
}

uint64_t sub_1000AA7E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t CurrentItemFetchRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentItemFetchRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentItemFetchRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentItemFetchRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t CurrentItemFetchRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentItemFetchRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentItemFetchRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentItemFetchRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

void (*CurrentCKKSItem.item.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_10029D9C0, &qword_100226740) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_100216424();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentCKKSItem(0) + 20);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_10029D9C0, &qword_100226740);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100216414();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000AB18C;
}

uint64_t CurrentCKKSItem.itemSpecifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentCKKSItem(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100298588, &unk_10021E7E0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
  v4 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CurrentCKKSItem.itemSpecifier.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100298588, &unk_10021E7E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CurrentCKKSItem(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100298588, &unk_10021E7E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100298588, &unk_10021E7E0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  return sub_1000AB4EC;
}

void sub_1000AB4EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000F91C0((*a1)[5], v4, type metadata accessor for CurrentCKKSItemSpecifier);
    sub_1000114D4(v9 + v3, &qword_100298588, &unk_10021E7E0);
    sub_1000F89AC(v4, v9 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000F9228(v5, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  else
  {
    sub_1000114D4(v9 + v3, &qword_100298588, &unk_10021E7E0);
    sub_1000F89AC(v5, v9 + v3, type metadata accessor for CurrentCKKSItemSpecifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t CurrentItemFetchResponse.synckeys.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1000AB7D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t RemoveUnreadableCKServerDataRequest.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
  sub_1000114D4(v1 + v3, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for Metrics);
  v4 = type metadata accessor for Metrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveUnreadableCKServerDataRequest.metrics.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&qword_100297FE0, &unk_10021E7F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Metrics(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &qword_100297FE0, &unk_10021E7F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for Metrics);
  }

  return sub_100106194;
}

uint64_t sub_1000ABB7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 28), v9, &unk_10029D6F0, &qword_100226B40);
  v11 = type metadata accessor for AccountInfo(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1000F89AC(v9, a2, type metadata accessor for AccountInfo);
  }

  *a2 = 0;
  v13 = a2 + *(v11 + 20);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  return result;
}

uint64_t RemoveUnreadableCKServerDataRequest.accountInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  sub_1000114D4(v1 + v3, &unk_10029D6F0, &qword_100226B40);
  sub_1000F89AC(a1, v1 + v3, type metadata accessor for AccountInfo);
  v4 = type metadata accessor for AccountInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*RemoveUnreadableCKServerDataRequest.accountInfo.modify(void *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10001148C(&unk_10029D6F0, &qword_100226B40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for AccountInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  *(v4 + 12) = v14;
  sub_100019C6C(v1 + v14, v7, &unk_10029D6F0, &qword_100226B40);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(v8 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1000F89AC(v7, v13, type metadata accessor for AccountInfo);
  }

  return sub_100106198;
}

uint64_t RemoveUnreadableCKServerDataRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v3 = &a1[v2[5]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t _s18TrustedPeersHelper10EscrowPairV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002164D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s18TrustedPeersHelper10EscrowPairV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1002164D4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000AC244()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeyClass._protobuf_nameMap);
  sub_100002648(v0, static ViewKeyClass._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIEW_KEY_CLASS_TLK";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIEW_KEY_CLASS_CLASS_A";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "VIEW_KEY_CLASS_CLASS_C";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AC4BC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ResetReason._protobuf_nameMap);
  sub_100002648(v0, static ResetReason._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D5F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RESET_REASON_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RESET_REASON_USER_INITIATED_RESET";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RESET_REASON_HEALTH_CHECK";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RESET_REASON_NO_BOTTLE_DURING_ESCROW_RECOVERY";
  *(v14 + 1) = 45;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RESET_REASON_LEGACY_JOIN_CIRCLE";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RESET_REASON_RECOVERY_KEY";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RESET_REASON_TEST_GENERATED";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "RESET_REASON_SUPPORT_APP_INITIATED_RESET";
  *(v22 + 1) = 40;
  v22[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AC874()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AccountFlags._protobuf_nameMap);
  sub_100002648(v0, static AccountFlags._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ACCOUNT_FLAGS_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACCOUNT_FLAGS_INTERNAL";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ACCOUNT_FLAGS_DEMO";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ACCOUNT_FLAGS_DBR";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "ACCOUNT_FLAGS_SA_OR_2FAFA";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "ACCOUNT_FLAGS_CDP";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ACBA8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FilteringRequest._protobuf_nameMap);
  sub_100002648(v0, static FilteringRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FILTERING_REQUEST_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FILTERING_REQUEST_BY_OCTAGON_ONLY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ACDDC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RepairAction._protobuf_nameMap);
  sub_100002648(v0, static RepairAction._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REPAIR_ACTION_NO_ACTION";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REPAIR_ACTION_POST_REPAIR_ACCOUNT";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REPAIR_ACTION_POST_REPAIR_ESCROW";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REPAIR_ACTION_RESET_OCTAGON";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REPAIR_ACTION_LEAVE_TRUST";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REPAIR_ACTION_REROLL";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD110()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowCheckResult._protobuf_nameMap);
  sub_100002648(v0, static EscrowCheckResult._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ESCROW_CHECK_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ESCROW_CHECK_OK";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ESCROW_CHECK_REPAIR_NEEDED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ESCROW_CHECK_NA";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD3C0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowRepairReason._protobuf_nameMap);
  sub_100002648(v0, static EscrowRepairReason._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RECORD_REPAIR_REASON_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RECORD_OK";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NO_RECORD_MATCHING_PEER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NO_RECORD_MATCHING_PASSCODE_GENERATION";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NO_RECORD_MATCHING_RECOVERABLE";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RECORD_NEEDS_MIGRATION";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD6F4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowCheckGraphStatus._protobuf_nameMap);
  sub_100002648(v0, static EscrowCheckGraphStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GRAPH_STATUS_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GRAPH_OK";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PEER_UNTRUSTED";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GRAPH_NEEDS_REPAIR";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AD9A4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppDeviceStatus._protobuf_nameMap);
  sub_100002648(v0, static SupportAppDeviceStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUPPORT_APP_DEVICE_STATUS_HEALTHY";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPORT_APP_DEVICE_STATUS_BROKEN";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ADBD8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RecordStatus._protobuf_nameMap);
  sub_100002648(v0, static RecordStatus._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RECORD_STATUS_VALID";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RECORD_STATUS_INVALID";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000ADE0C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SOSViability._protobuf_nameMap);
  sub_100002648(v0, static SOSViability._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SOS_VIABLE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SOS_VIABLE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SOS_NOT_VIABLE";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AE0B0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerPermanentInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerPermanentInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_permanent_info";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t (*sub_1000AE33C(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1000AE378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD58, type metadata accessor for SignedPeerPermanentInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AE418(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AE484()
{
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo);

  return sub_100216644();
}

uint64_t sub_1000AE528()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerStableInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerStableInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_stable_info";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AE76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_100216684();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_100216684();
      if (v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_18;
  }

LABEL_19:
  v18 = v4 + *(a4(0) + 24);
  return sub_1002164B4();
}

uint64_t sub_1000AE8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD50, type metadata accessor for SignedPeerStableInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AE990(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AE9FC()
{
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);

  return sub_100216644();
}

uint64_t sub_1000AEAA0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedPeerDynamicInfo._protobuf_nameMap);
  sub_100002648(v0, static SignedPeerDynamicInfo._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_dynamic_info";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AED44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD48, type metadata accessor for SignedPeerDynamicInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AEDE4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AEE50()
{
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);

  return sub_100216644();
}

uint64_t sub_1000AEEFC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedVoucher._protobuf_nameMap);
  sub_100002648(v0, static SignedVoucher._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voucher";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD40, type metadata accessor for SignedVoucher);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AF264(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AF2D0()
{
  sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher);

  return sub_100216644();
}

uint64_t sub_1000AF374()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedRecoveryVoucher._protobuf_nameMap);
  sub_100002648(v0, static SignedRecoveryVoucher._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recovery_voucher";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AF618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD38, type metadata accessor for SignedRecoveryVoucher);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AF694(uint64_t a1, uint64_t a2)
{
  if ((sub_100052F18(*v2, *(v2 + 8), *a1, *(a1 + 8)) & 1) == 0 || (sub_100052F18(*(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AF76C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AF7D8()
{
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher);

  return sub_100216644();
}

uint64_t sub_1000AF87C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SignedCustodianRecoveryKey._protobuf_nameMap);
  sub_100002648(v0, static SignedCustodianRecoveryKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "custodian_recovery_key";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sig";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000AFAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_100052F18(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_100052F18(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3(0) + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AFC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD30, type metadata accessor for SignedCustodianRecoveryKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AFCA0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AFD0C()
{
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey);

  return sub_100216644();
}

uint64_t sub_1000AFD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100052F18(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_100052F18(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000AFE6C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static IdmsTrustedDevicesVersion._protobuf_nameMap);
  sub_100002648(v0, static IdmsTrustedDevicesVersion._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "IdmsTrustedDevicesVersionString";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t IdmsTrustedDevicesVersion.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1002165B4();
    }

    else if (result == 2)
    {
      sub_1000B010C();
    }
  }

  return result;
}

uint64_t sub_1000B010C()
{
  v0 = *(type metadata accessor for IdmsTrustedDevicesVersion(0) + 24);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t IdmsTrustedDevicesVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000B026C(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for IdmsTrustedDevicesVersion(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_1002164A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &qword_10029D780, &qword_1002265D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D780, &qword_1002265D0);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000B04D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1002164A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1000B055C(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1000B05B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD28, type metadata accessor for IdmsTrustedDevicesVersion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B0650(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B06BC()
{
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);

  return sub_100216644();
}

uint64_t sub_1000B0754()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Peer._protobuf_nameMap);
  sub_100002648(v0, static Peer._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "peer_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "permanent_info_and_sig";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stable_info_and_sig";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dynamic_info_and_sig";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "vouchers";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "recovery_voucher";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "custodian_recovery_key_and_sig";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t Peer.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1002165B4();
            break;
          case 2:
            sub_1000B0C6C();
            break;
          case 3:
            sub_1000B0D20();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_1000B0E88();
        }

        else if (result == 7)
        {
          sub_1000B0F3C();
        }
      }

      else if (result == 4)
      {
        sub_1000B0DD4();
      }

      else
      {
        type metadata accessor for SignedVoucher(0);
        sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher);
        sub_1002165E4();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000B0C6C()
{
  v0 = *(type metadata accessor for Peer(0) + 28);
  type metadata accessor for SignedPeerPermanentInfo(0);
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0D20()
{
  v0 = *(type metadata accessor for Peer(0) + 32);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0DD4()
{
  v0 = *(type metadata accessor for Peer(0) + 36);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000B0E88()
{
  v0 = *(type metadata accessor for Peer(0) + 40);
  type metadata accessor for SignedRecoveryVoucher(0);
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher);
  return sub_1002165F4();
}

uint64_t sub_1000B0F3C()
{
  v0 = *(type metadata accessor for Peer(0) + 44);
  type metadata accessor for SignedCustodianRecoveryKey(0);
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey);
  return sub_1002165F4();
}

uint64_t Peer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000B1180(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000B139C(v3, a1, a2, a3);
      sub_1000B15B8(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for SignedVoucher(0);
        sub_1000F9F28(&qword_10029D8A0, type metadata accessor for SignedVoucher);
        sub_1002166F4();
      }

      sub_1000B17D4(v3, a1, a2, a3);
      sub_1000B19F0(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for Peer(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedPeerPermanentInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v16 + 28), v9, &qword_10029DA00, &unk_10021E800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029DA00, &unk_10021E800);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000F9F28(&qword_100298B48, type metadata accessor for SignedPeerPermanentInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerPermanentInfo);
}

uint64_t sub_1000B139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedPeerStableInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v16 + 32), v9, &qword_1002985A8, &unk_100226650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000B15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedPeerDynamicInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v16 + 36), v9, &unk_10029D760, &qword_10021E810);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000B17D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedRecoveryVoucher(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v16 + 40), v9, &qword_1002985B0, &qword_10021E818);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985B0, &qword_10021E818);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedRecoveryVoucher);
  sub_1000F9F28(&qword_100298BA0, type metadata accessor for SignedRecoveryVoucher);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedRecoveryVoucher);
}