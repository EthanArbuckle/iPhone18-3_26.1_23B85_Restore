uint64_t sub_1000B19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Peer(0);
  sub_100019C6C(a1 + *(v16 + 44), v9, &unk_10029D7B0, &unk_10021E820);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D7B0, &unk_10021E820);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedCustodianRecoveryKey);
  sub_1000F9F28(&qword_100298BB8, type metadata accessor for SignedCustodianRecoveryKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedCustodianRecoveryKey);
}

uint64_t sub_1000B1C54@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[6]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[7];
  v6 = type metadata accessor for SignedPeerPermanentInfo(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[9];
  v10 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[10];
  v12 = type metadata accessor for SignedRecoveryVoucher(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[11];
  v14 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(&a2[v13], 1, 1, v14);
}

uint64_t sub_1000B1E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD20, type metadata accessor for Peer);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B1ED0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B1F3C()
{
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);

  return sub_100216644();
}

uint64_t sub_1000B1FEC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PeerDifference._protobuf_nameMap);
  sub_100002648(v0, static PeerDifference._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "add";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remove";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "update";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t PeerDifference.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000B2E68(v5, a1, a2, a3);
        break;
      case 2:
        sub_1000B28AC(v5, a1, a2, a3);
        break;
      case 1:
        sub_1000B22FC(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000B22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v50 = &v48 - v12;
  v13 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_100019C6C(a1, v17, &qword_100297E00, &qword_10021DA18);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_1000114D4(v17, &qword_100297E00, &qword_10021DA18);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000F89AC(v17, v27, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v27, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000F9228(v24, type metadata accessor for PeerDifference.OneOf_Operation);
      v40 = v55;
    }

    else
    {
      sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
      v42 = v50;
      sub_1000F89AC(v24, v50, type metadata accessor for Peer);
      sub_1000F89AC(v42, v35, type metadata accessor for Peer);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }
  }

  v43 = v53;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  v44 = v54;
  sub_1002165F4();
  if (v44)
  {
    return sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v35, v43, &unk_10029D7A0, &qword_10021E858);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v43, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v46 = v51;
    sub_1000F89AC(v43, v51, type metadata accessor for Peer);
    if (v39 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    v47 = v49;
    sub_1000114D4(v49, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v46, v47, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000B28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_100019C6C(a1, v17, &qword_100297E00, &qword_10021DA18);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_1000114D4(v17, &qword_100297E00, &qword_10021DA18);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000F89AC(v17, v27, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v27, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
      v42 = v51;
      sub_1000F89AC(v24, v51, type metadata accessor for Peer);
      sub_1000F89AC(v42, v35, type metadata accessor for Peer);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000F9228(v24, type metadata accessor for PeerDifference.OneOf_Operation);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  v44 = v54;
  sub_1002165F4();
  if (v44)
  {
    return sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v35, v43, &unk_10029D7A0, &qword_10021E858);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v43, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v46 = v50;
    sub_1000F89AC(v43, v50, type metadata accessor for Peer);
    if (v39 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    v47 = v49;
    sub_1000114D4(v49, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v46, v47, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_1000B2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Peer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_100019C6C(a1, v17, &qword_100297E00, &qword_10021DA18);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_1000114D4(v17, &qword_100297E00, &qword_10021DA18);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_1000F89AC(v17, v27, type metadata accessor for PeerDifference.OneOf_Operation);
    sub_1000F89AC(v27, v24, type metadata accessor for PeerDifference.OneOf_Operation);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
      v42 = v51;
      sub_1000F89AC(v24, v51, type metadata accessor for Peer);
      sub_1000F89AC(v42, v35, type metadata accessor for Peer);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_1000F9228(v24, type metadata accessor for PeerDifference.OneOf_Operation);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  v44 = v54;
  sub_1002165F4();
  if (v44)
  {
    return sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
  }

  sub_100019C6C(v35, v43, &unk_10029D7A0, &qword_10021E858);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    return sub_1000114D4(v43, &unk_10029D7A0, &qword_10021E858);
  }

  else
  {
    v46 = v50;
    sub_1000F89AC(v43, v50, type metadata accessor for Peer);
    if (v39 != 1)
    {
      sub_100216544();
    }

    sub_1000114D4(v35, &unk_10029D7A0, &qword_10021E858);
    v47 = v49;
    sub_1000114D4(v49, &qword_100297E00, &qword_10021DA18);
    sub_1000F89AC(v46, v47, type metadata accessor for Peer);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t PeerDifference.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  sub_100019C6C(v3, &v17 - v11, &qword_100297E00, &qword_10021DA18);
  v13 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B3808(v3, a1, a2, a3);
    }

    else
    {
      sub_1000B3A40(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1000B35D4(v3, a1, a2, a3);
  }

  result = sub_1000F9228(v12, type metadata accessor for PeerDifference.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    v16 = v3 + *(type metadata accessor for PeerDifference(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000B35D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v9, &qword_100297E00, &qword_10021DA18);
  v15 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_1000114D4(v9, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
    sub_100216704();
    return sub_1000F9228(v14, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v9, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v9, &qword_100297E00, &qword_10021DA18);
  v15 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_1000114D4(v9, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
    sub_100216704();
    return sub_1000F9228(v14, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v9, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019C6C(a1, v9, &qword_100297E00, &qword_10021DA18);
  v15 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_1000114D4(v9, &qword_100297E00, &qword_10021DA18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000F89AC(v9, v14, type metadata accessor for Peer);
    sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
    sub_100216704();
    return sub_1000F9228(v14, type metadata accessor for Peer);
  }

  result = sub_1000F9228(v9, type metadata accessor for PeerDifference.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_1000B3CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000B3D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD18, type metadata accessor for PeerDifference);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B3E04(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3E70()
{
  sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference);

  return sub_100216644();
}

uint64_t sub_1000B3F10()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static TLKShare._protobuf_nameMap);
  sub_100002648(v0, static TLKShare._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10021DFD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "view";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "curve";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "epoch";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "key_uuid";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "poisoned";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "receiver";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "receiver_public_encryption_key";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "sender";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "signature";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "version";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "wrappedkey";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t TLKShare.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          goto LABEL_2;
        }

        if (result == 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_18;
        }

LABEL_2:
        sub_1002165B4();
      }
    }

    else
    {
      if (result <= 9)
      {
        goto LABEL_2;
      }

      if (result == 10)
      {
LABEL_18:
        sub_100216594();
      }

      else if (result == 11)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t TLKShare.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1002166C4(), !v1))
  {
    if (!v0[2] || (result = sub_1002166A4(), !v1))
    {
      if (!v0[3] || (result = sub_1002166A4(), !v1))
      {
        v6 = v0[5];
        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v0[4] & 0xFFFFFFFFFFFFLL;
        }

        if (!v7 || (result = sub_1002166C4(), !v1))
        {
          if (!v0[6] || (result = sub_1002166A4(), !v1))
          {
            v8 = v0[8];
            v9 = HIBYTE(v8) & 0xF;
            if ((v8 & 0x2000000000000000) == 0)
            {
              v9 = v0[7] & 0xFFFFFFFFFFFFLL;
            }

            if (!v9 || (result = sub_1002166C4(), !v1))
            {
              v10 = v0[10];
              v11 = HIBYTE(v10) & 0xF;
              if ((v10 & 0x2000000000000000) == 0)
              {
                v11 = v0[9] & 0xFFFFFFFFFFFFLL;
              }

              if (!v11 || (result = sub_1002166C4(), !v1))
              {
                v12 = v0[12];
                v13 = HIBYTE(v12) & 0xF;
                if ((v12 & 0x2000000000000000) == 0)
                {
                  v13 = v0[11] & 0xFFFFFFFFFFFFLL;
                }

                if (!v13 || (result = sub_1002166C4(), !v1))
                {
                  v14 = v0[14];
                  v15 = HIBYTE(v14) & 0xF;
                  if ((v14 & 0x2000000000000000) == 0)
                  {
                    v15 = v0[13] & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v15 || (result = sub_1002166C4(), !v1))
                  {
                    if (!v0[15] || (result = sub_1002166A4(), !v1))
                    {
                      v16 = v0[17];
                      v17 = HIBYTE(v16) & 0xF;
                      if ((v16 & 0x2000000000000000) == 0)
                      {
                        v17 = v0[16] & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v17 || (result = sub_1002166C4(), !v1))
                      {
                        v18 = v0 + *(type metadata accessor for TLKShare(0) + 60);
                        return sub_1002164B4();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B470C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  a2[11] = 0;
  a2[12] = 0xE000000000000000;
  a2[13] = 0;
  a2[14] = 0xE000000000000000;
  a2[15] = 0;
  a2[16] = 0;
  a2[17] = 0xE000000000000000;
  v2 = a2 + *(a1 + 60);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t (*sub_1000B4754(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_1000B47A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD10, type metadata accessor for TLKShare);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B4848(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B48B4()
{
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);

  return sub_100216644();
}

uint64_t sub_1000B4958()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKey._protobuf_nameMap);
  sub_100002648(v0, static ViewKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "parentkey_uuid";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "keyclass";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wrappedkey_base64";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "upload_os_version";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t ViewKey.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1002165B4();
        }
      }

      else if (result == 3)
      {
        sub_1000F9F70();
        sub_100216564();
      }

      else if (result == 4 || result == 5)
      {
        goto LABEL_4;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t ViewKey.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1002166C4(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1002166C4(), !v1))
    {
      if (!v0[4] || (v13 = v0[4], v14 = *(v0 + 40), sub_1000F9F70(), result = sub_100216674(), !v1))
      {
        v8 = v0[7];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_1002166C4(), !v1))
        {
          v10 = v0[9];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_1002166C4(), !v1))
          {
            v12 = v0 + *(type metadata accessor for ViewKey(0) + 36);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B4EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  v2 = a2 + *(a1 + 36);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t (*sub_1000B4F30(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1000B4F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD08, type metadata accessor for ViewKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B5024(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B5090()
{
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);

  return sub_100216644();
}

uint64_t sub_1000B5130()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeys._protobuf_nameMap);
  sub_100002648(v0, static ViewKeys._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "view";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "new_tlk";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "new_class_a";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "new_class_c";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "old_tlk";
  *(v14 + 8) = 7;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000B5410()
{
  v0 = type metadata accessor for ViewKeys._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  v5 = type metadata accessor for ViewKey(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk, 1, 1, v5);
  qword_100298538 = v3;
  return result;
}

uint64_t sub_1000B551C(uint64_t a1)
{
  v3 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v21 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  v9 = type metadata accessor for ViewKey(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  v10(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA, 1, 1, v9);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  v10(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC, 1, 1, v9);
  v22 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  v10(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk, 1, 1, v9);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v15, v7, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();

  sub_1000F9E80(v7, v1 + v8, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v7, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();
  sub_1000F9E80(v7, v1 + v11, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(a1 + v17, v7, &qword_100297F70, &qword_10021DBF8);
  swift_beginAccess();
  sub_1000F9E80(v7, v1 + v12, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v18, v7, &qword_100297F70, &qword_10021DBF8);

  v19 = v22;
  swift_beginAccess();
  sub_1000F9E80(v7, v1 + v19, &qword_100297F70, &qword_10021DBF8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000B5864()
{
  v1 = v0[3];

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk, &qword_100297F70, &qword_10021DBF8);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA, &qword_100297F70, &qword_10021DBF8);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC, &qword_100297F70, &qword_10021DBF8);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk, &qword_100297F70, &qword_10021DBF8);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
      }

      else if (result == 2)
      {
        sub_1000B5AC4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1000B5BA0();
          break;
        case 4:
          sub_1000B5C7C();
          break;
        case 5:
          sub_1000B5D58();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000B5AC4()
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5BA0()
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5C7C()
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5D58()
{
  swift_beginAccess();
  type metadata accessor for ViewKey(0);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = *(a1 + 24), , sub_1002166C4(), result = , !v4))
  {
    result = sub_1000B5F84(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1000B61AC(a1, a2, a3, a4);
      sub_1000B63D4(a1, a2, a3, a4);
      return sub_1000B65FC(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000B5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ViewKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297F70, &qword_10021DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for ViewKey);
}

uint64_t sub_1000B61AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ViewKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297F70, &qword_10021DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for ViewKey);
}

uint64_t sub_1000B63D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ViewKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297F70, &qword_10021DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for ViewKey);
}

uint64_t sub_1000B65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ViewKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297F70, &qword_10021DBF8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297F70, &qword_10021DBF8);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for ViewKey);
  sub_1000F9F28(&qword_100297F78, type metadata accessor for ViewKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for ViewKey);
}

BOOL sub_1000B6824(uint64_t a1, uint64_t a2)
{
  v106 = type metadata accessor for ViewKey(0);
  v108 = *(v106 - 8);
  v4 = *(v108 + 64);
  __chkstk_darwin(v106, v5);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10001148C(&qword_10029CDD8, &qword_100225D68);
  v7 = *(*(v107 - 8) + 64);
  v9 = __chkstk_darwin(v107, v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v100 = &v96 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v104 = &v96 - v17;
  __chkstk_darwin(v16, v18);
  v20 = &v96 - v19;
  v21 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v24, v27);
  v101 = &v96 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v99 = (&v96 - v32);
  v34 = __chkstk_darwin(v31, v33);
  v103 = &v96 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v102 = (&v96 - v38);
  v40 = __chkstk_darwin(v37, v39);
  v42 = &v96 - v41;
  v44 = __chkstk_darwin(v40, v43);
  v46 = (&v96 - v45);
  __chkstk_darwin(v44, v47);
  v49 = &v96 - v48;
  swift_beginAccess();
  v51 = *(a1 + 16);
  v50 = *(a1 + 24);
  swift_beginAccess();
  if ((v51 != *(a2 + 16) || v50 != *(a2 + 24)) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v96 = v26;
  v97 = v11;
  v52 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v52, v49, &qword_100297F70, &qword_10021DBF8);
  v53 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  v54 = *(v107 + 48);
  sub_100019C6C(v49, v20, &qword_100297F70, &qword_10021DBF8);
  sub_100019C6C(a2 + v53, &v20[v54], &qword_100297F70, &qword_10021DBF8);
  v56 = v108 + 48;
  v55 = *(v108 + 48);
  v57 = v106;
  if (v55(v20, 1, v106) == 1)
  {

    sub_1000114D4(v49, &qword_100297F70, &qword_10021DBF8);
    if (v55(&v20[v54], 1, v57) == 1)
    {
      v98 = v55;
      sub_1000114D4(v20, &qword_100297F70, &qword_10021DBF8);
      goto LABEL_11;
    }

LABEL_9:
    v58 = v20;
LABEL_24:
    sub_1000114D4(v58, &qword_10029CDD8, &qword_100225D68);
    goto LABEL_25;
  }

  sub_100019C6C(v20, v46, &qword_100297F70, &qword_10021DBF8);
  if (v55(&v20[v54], 1, v57) == 1)
  {

    sub_1000114D4(v49, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v46, type metadata accessor for ViewKey);
    goto LABEL_9;
  }

  v98 = v55;
  v59 = v105;
  sub_1000F89AC(&v20[v54], v105, type metadata accessor for ViewKey);

  LODWORD(v108) = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v46, v59);
  sub_1000F9228(v59, type metadata accessor for ViewKey);
  sub_1000114D4(v49, &qword_100297F70, &qword_10021DBF8);
  v57 = v106;
  sub_1000F9228(v46, type metadata accessor for ViewKey);
  sub_1000114D4(v20, &qword_100297F70, &qword_10021DBF8);
  if ((v108 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v108 = v56;
  v60 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_100019C6C(a1 + v60, v42, &qword_100297F70, &qword_10021DBF8);
  v61 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  v62 = *(v107 + 48);
  v63 = v104;
  sub_100019C6C(v42, v104, &qword_100297F70, &qword_10021DBF8);
  sub_100019C6C(a2 + v61, v63 + v62, &qword_100297F70, &qword_10021DBF8);
  v64 = v98;
  if (v98(v63, 1, v57) == 1)
  {
    sub_1000114D4(v42, &qword_100297F70, &qword_10021DBF8);
    if (v64(v63 + v62, 1, v57) == 1)
    {
      v98 = v64;
      sub_1000114D4(v63, &qword_100297F70, &qword_10021DBF8);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v65 = v102;
  sub_100019C6C(v63, v102, &qword_100297F70, &qword_10021DBF8);
  if (v64(v63 + v62, 1, v57) == 1)
  {
    sub_1000114D4(v42, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v65, type metadata accessor for ViewKey);
LABEL_16:
    v58 = v63;
    goto LABEL_24;
  }

  v98 = v64;
  v66 = v105;
  sub_1000F89AC(v63 + v62, v105, type metadata accessor for ViewKey);
  v67 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v65, v66);
  sub_1000F9228(v66, type metadata accessor for ViewKey);
  sub_1000114D4(v42, &qword_100297F70, &qword_10021DBF8);
  sub_1000F9228(v65, type metadata accessor for ViewKey);
  v57 = v106;
  sub_1000114D4(v63, &qword_100297F70, &qword_10021DBF8);
  if ((v67 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v68 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  v69 = v103;
  sub_100019C6C(a1 + v68, v103, &qword_100297F70, &qword_10021DBF8);
  v70 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  v71 = *(v107 + 48);
  v72 = v100;
  sub_100019C6C(v69, v100, &qword_100297F70, &qword_10021DBF8);
  v73 = v72;
  sub_100019C6C(a2 + v70, v72 + v71, &qword_100297F70, &qword_10021DBF8);
  v74 = v98;
  if (v98(v72, 1, v57) != 1)
  {
    v77 = v99;
    sub_100019C6C(v72, v99, &qword_100297F70, &qword_10021DBF8);
    v78 = v74(v72 + v71, 1, v57);
    v76 = v101;
    if (v78 == 1)
    {
      sub_1000114D4(v103, &qword_100297F70, &qword_10021DBF8);
      sub_1000F9228(v77, type metadata accessor for ViewKey);
      goto LABEL_23;
    }

    v80 = v73 + v71;
    v81 = v105;
    sub_1000F89AC(v80, v105, type metadata accessor for ViewKey);
    v82 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v77, v81);
    sub_1000F9228(v81, type metadata accessor for ViewKey);
    sub_1000114D4(v103, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v77, type metadata accessor for ViewKey);
    sub_1000114D4(v73, &qword_100297F70, &qword_10021DBF8);
    if (v82)
    {
      goto LABEL_29;
    }

LABEL_25:

    return 0;
  }

  sub_1000114D4(v69, &qword_100297F70, &qword_10021DBF8);
  v75 = v74(v72 + v71, 1, v57);
  v76 = v101;
  if (v75 != 1)
  {
LABEL_23:
    v58 = v73;
    goto LABEL_24;
  }

  sub_1000114D4(v73, &qword_100297F70, &qword_10021DBF8);
LABEL_29:
  v83 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  sub_100019C6C(a1 + v83, v76, &qword_100297F70, &qword_10021DBF8);
  v84 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__oldTlk;
  swift_beginAccess();
  v85 = *(v107 + 48);
  v86 = v76;
  v87 = v76;
  v88 = v97;
  sub_100019C6C(v86, v97, &qword_100297F70, &qword_10021DBF8);
  v89 = a2 + v84;
  v90 = v88;
  sub_100019C6C(v89, v88 + v85, &qword_100297F70, &qword_10021DBF8);
  v91 = v98;
  if (v98(v88, 1, v57) == 1)
  {

    sub_1000114D4(v87, &qword_100297F70, &qword_10021DBF8);
    if (v91(v88 + v85, 1, v57) == 1)
    {
      sub_1000114D4(v88, &qword_100297F70, &qword_10021DBF8);
      return 1;
    }

    goto LABEL_34;
  }

  v92 = v88;
  v93 = v96;
  sub_100019C6C(v92, v96, &qword_100297F70, &qword_10021DBF8);
  if (v91(v90 + v85, 1, v57) == 1)
  {

    sub_1000114D4(v101, &qword_100297F70, &qword_10021DBF8);
    sub_1000F9228(v93, type metadata accessor for ViewKey);
LABEL_34:
    sub_1000114D4(v90, &qword_10029CDD8, &qword_100225D68);
    return 0;
  }

  v94 = v105;
  sub_1000F89AC(v90 + v85, v105, type metadata accessor for ViewKey);
  v95 = _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(v93, v94);

  sub_1000F9228(v94, type metadata accessor for ViewKey);
  sub_1000114D4(v101, &qword_100297F70, &qword_10021DBF8);
  sub_1000F9228(v93, type metadata accessor for ViewKey);
  sub_1000114D4(v90, &qword_100297F70, &qword_10021DBF8);
  return (v95 & 1) != 0;
}

uint64_t sub_1000B7604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CD00, type metadata accessor for ViewKeys);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B76A8(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B7714()
{
  sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);

  return sub_100216644();
}

uint64_t sub_1000B77C0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static ViewKeysRecords._protobuf_nameMap);
  sub_100002648(v0, static ViewKeysRecords._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tlk";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "class_a";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "class_c";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t ViewKeysRecords.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000B7C44();
        break;
      case 2:
        sub_1000B7B90();
        break;
      case 1:
        sub_1000B7ADC();
        break;
    }
  }

  return result;
}

uint64_t sub_1000B7ADC()
{
  v0 = *(type metadata accessor for ViewKeysRecords(0) + 20);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000B7B90()
{
  v0 = *(type metadata accessor for ViewKeysRecords(0) + 24);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000B7C44()
{
  v0 = *(type metadata accessor for ViewKeysRecords(0) + 28);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t ViewKeysRecords.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E7D20(v3, a1, a2, a3, type metadata accessor for ViewKeysRecords);
  if (!v4)
  {
    sub_1000B7D94(v3, a1, a2, a3);
    sub_1000B7FB0(v3, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000B7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_100216424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &qword_10029D9C0, &qword_100226740);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D9C0, &qword_100226740);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_100216424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(a1 + *(v16 + 28), v9, &qword_10029D9C0, &qword_100226740);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D9C0, &qword_100226740);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000B8218@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[5];
  v5 = sub_100216424();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[6], 1, 1, v5);
  v6 = a2 + a1[7];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_1000B8324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCF8, type metadata accessor for ViewKeysRecords);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B83C4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B8430()
{
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords);

  return sub_100216644();
}

uint64_t sub_1000B84CC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Bottle._protobuf_nameMap);
  sub_100002648(v0, static Bottle._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10021DFA0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 2;
  *v5 = "contents";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "escrowed_signing_spki";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "signature_using_escrow_key";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "signature_using_peer_key";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "peer_id";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "bottle_id";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t Bottle.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_2;
      }

      if (result == 6 || result == 7)
      {
        sub_1002165B4();
      }
    }

    else if (result == 2 || result == 3 || result == 4)
    {
LABEL_2:
      sub_100216574();
    }
  }
}

uint64_t Bottle.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_100216684();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_100216684();
  if (v1)
  {
    return result;
  }

LABEL_19:
  v13 = v0[4];
  v14 = v0[5];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
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
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = sub_100216684();
  if (v1)
  {
    return result;
  }

LABEL_28:
  v18 = v0[6];
  v19 = v0[7];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_37;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      result = sub_100216684();
      if (v1)
      {
        return result;
      }

      goto LABEL_37;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 != v22)
  {
    goto LABEL_36;
  }

LABEL_37:
  v23 = v0[9];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v0[8] & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (result = sub_1002166C4(), !v1))
  {
    v25 = v0[11];
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v0[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!v26 || (result = sub_1002166C4(), !v1))
    {
      v27 = v0 + *(type metadata accessor for Bottle(0) + 40);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000B8B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_10021D470;
  *(a2 + 16) = xmmword_10021D470;
  *(a2 + 32) = xmmword_10021D470;
  *(a2 + 48) = xmmword_10021D470;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  v2 = a2 + *(a1 + 40);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t (*sub_1000B8B60(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1000B8BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCF0, type metadata accessor for Bottle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B8C58(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B8CC4()
{
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);

  return sub_100216644();
}

uint64_t sub_1000B8D6C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowPair._protobuf_nameMap);
  sub_100002648(v0, static EscrowPair._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "escrow_record_id";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottle";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "record";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000B8FD0()
{
  v0 = type metadata accessor for EscrowPair._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v5 = type metadata accessor for Bottle(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  v7 = type metadata accessor for EscrowInformation(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  qword_100298540 = v3;
  return result;
}

uint64_t sub_1000B90A4(uint64_t a1)
{
  v3 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v22 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v14 = type metadata accessor for Bottle(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  v16 = type metadata accessor for EscrowInformation(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v17;
  *(v1 + 24) = v18;
  v19 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v19, v12, &unk_10029D880, &qword_10021E830);
  swift_beginAccess();

  sub_1000F9E80(v12, v1 + v13, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(a1 + v20, v7, &qword_1002985C8, &qword_10021E838);

  swift_beginAccess();
  sub_1000F9E80(v7, v1 + v15, &qword_1002985C8, &qword_10021E838);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000B9348()
{
  v1 = v0[3];

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle, &unk_10029D880, &qword_10021E830);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record, &qword_1002985C8, &qword_10021E838);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_1000B951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1000B96C4();
        break;
      case 2:
        sub_1000B95E8();
        break;
      case 1:
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
        break;
    }
  }

  return result;
}

uint64_t sub_1000B95E8()
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B96C4()
{
  swift_beginAccess();
  type metadata accessor for EscrowInformation(0);
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000B97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000B9860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = *(a1 + 24), , sub_1002166C4(), result = , !v4))
  {
    result = sub_1000B9940(a1, a2, a3, a4);
    if (!v4)
    {
      return sub_1000B9B68(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000B9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Bottle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D880, &qword_10021E830);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Bottle);
}

uint64_t sub_1000B9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for EscrowInformation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_1002985C8, &qword_10021E838);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985C8, &qword_10021E838);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for EscrowInformation);
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for EscrowInformation);
}

BOOL sub_1000B9D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EscrowInformation(0);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10001148C(&qword_10029CE10, &unk_100225DB0);
  v9 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65, v10);
  v12 = &v60 - v11;
  v13 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v63 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v18);
  v66 = &v60 - v19;
  v69 = type metadata accessor for Bottle(0);
  v20 = *(v69 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v69, v22);
  v64 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v60 - v27;
  v29 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v30 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29 - 8, v31);
  v68 = (&v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32, v34);
  v36 = &v60 - v35;
  swift_beginAccess();
  v70 = a1;
  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  swift_beginAccess();
  if ((v38 != *(a2 + 16) || v37 != *(a2 + 24)) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v60 = v8;
  v61 = v4;
  v62 = v12;
  v39 = a2;
  v40 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v41 = v70;
  swift_beginAccess();
  sub_100019C6C(v41 + v40, v36, &unk_10029D880, &qword_10021E830);
  v42 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v43 = *(v24 + 48);
  sub_100019C6C(v36, v28, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(v39 + v42, &v28[v43], &unk_10029D880, &qword_10021E830);
  v44 = *(v20 + 48);
  v45 = v69;
  if (v44(v28, 1, v69) != 1)
  {
    v46 = v68;
    sub_100019C6C(v28, v68, &unk_10029D880, &qword_10021E830);
    if (v44(&v28[v43], 1, v45) != 1)
    {
      v47 = v64;
      sub_1000F89AC(&v28[v43], v64, type metadata accessor for Bottle);
      v41 = v70;

      v48 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v46, v47);
      sub_1000F9228(v47, type metadata accessor for Bottle);
      sub_1000114D4(v36, &unk_10029D880, &qword_10021E830);
      sub_1000F9228(v46, type metadata accessor for Bottle);
      sub_1000114D4(v28, &unk_10029D880, &qword_10021E830);
      if (v48)
      {
        goto LABEL_12;
      }

LABEL_10:

      return 0;
    }

    sub_1000114D4(v36, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v46, type metadata accessor for Bottle);
LABEL_9:
    sub_1000114D4(v28, &qword_10029CE00, &qword_100225DA0);
    goto LABEL_10;
  }

  sub_1000114D4(v36, &unk_10029D880, &qword_10021E830);
  if (v44(&v28[v43], 1, v45) != 1)
  {
    goto LABEL_9;
  }

  sub_1000114D4(v28, &unk_10029D880, &qword_10021E830);
LABEL_12:
  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  v50 = v66;
  sub_100019C6C(v41 + v49, v66, &qword_1002985C8, &qword_10021E838);
  v51 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  v52 = *(v65 + 48);
  v53 = v62;
  sub_100019C6C(v50, v62, &qword_1002985C8, &qword_10021E838);
  sub_100019C6C(v39 + v51, v53 + v52, &qword_1002985C8, &qword_10021E838);
  v54 = *(v67 + 48);
  v55 = v61;
  if (v54(v53, 1, v61) == 1)
  {

    sub_1000114D4(v50, &qword_1002985C8, &qword_10021E838);
    if (v54(v53 + v52, 1, v55) == 1)
    {
      sub_1000114D4(v53, &qword_1002985C8, &qword_10021E838);
      return 1;
    }

    goto LABEL_17;
  }

  v56 = v63;
  sub_100019C6C(v53, v63, &qword_1002985C8, &qword_10021E838);
  if (v54(v53 + v52, 1, v55) == 1)
  {

    sub_1000114D4(v50, &qword_1002985C8, &qword_10021E838);
    sub_1000F9228(v56, type metadata accessor for EscrowInformation);
LABEL_17:
    sub_1000114D4(v53, &qword_10029CE10, &unk_100225DB0);
    return 0;
  }

  v58 = v60;
  sub_1000F89AC(v53 + v52, v60, type metadata accessor for EscrowInformation);
  v59 = _s18TrustedPeersHelper17EscrowInformationV2eeoiySbAC_ACtFZ_0(v56, v58);

  sub_1000F9228(v58, type metadata accessor for EscrowInformation);
  sub_1000114D4(v50, &qword_1002985C8, &qword_10021E838);
  sub_1000F9228(v56, type metadata accessor for EscrowInformation);
  sub_1000114D4(v53, &qword_1002985C8, &qword_10021E838);
  return (v59 & 1) != 0;
}

uint64_t sub_1000BA68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCE8, type metadata accessor for EscrowPair);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BA730(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA79C()
{
  sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair);

  return sub_100216644();
}

uint64_t sub_1000BA83C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Changes._protobuf_nameMap);
  sub_100002648(v0, static Changes._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "differences";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "recovery_signing_pub_key";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "recovery_encryption_pub_key";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "more";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t Changes.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1002165B4();
        }

        else if (result == 2)
        {
          type metadata accessor for PeerDifference(0);
          sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference);
          sub_1002165E4();
        }
      }

      else if (result == 3 || result == 4)
      {
        sub_100216574();
      }

      else if (result == 5)
      {
        sub_100216554();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t Changes.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1002166C4(), !v1))
  {
    v6 = v1;
    if (*(v0[2] + 16))
    {
      type metadata accessor for PeerDifference(0);
      sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference);
      result = sub_1002166F4();
      if (v1)
      {
        return result;
      }

      v6 = 0;
    }

    v7 = v0[3];
    v8 = v0[4];
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = v6;
        goto LABEL_19;
      }

      v11 = *(v7 + 16);
      v12 = *(v7 + 24);
    }

    else
    {
      if (!v9)
      {
        v10 = v6;
        if ((v8 & 0xFF000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v11 = v7;
      v12 = v7 >> 32;
    }

    v10 = v6;
    if (v11 == v12)
    {
      goto LABEL_19;
    }

LABEL_16:
    result = sub_100216684();
    if (v10)
    {
      return result;
    }

LABEL_19:
    v13 = v0[5];
    v14 = v0[6];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_28;
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
          goto LABEL_28;
        }

LABEL_27:
        result = sub_100216684();
        if (v10)
        {
          return result;
        }

        goto LABEL_28;
      }

      v16 = v13;
      v17 = v13 >> 32;
    }

    if (v16 != v17)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (*(v0 + 56) != 1 || (result = sub_100216664(), !v10))
    {
      v18 = v0 + *(type metadata accessor for Changes(0) + 36);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000BAEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  v2 = a2 + *(a1 + 36);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000BAF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCE0, type metadata accessor for Changes);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BAFD4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BB040()
{
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);

  return sub_100216644();
}

uint64_t sub_1000BB0E8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PolicyDocumentKey._protobuf_nameMap);
  sub_100002648(v0, static PolicyDocumentKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t PolicyDocumentKey.decodeMessage<A>(decoder:)()
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
      sub_1002165D4();
    }

    else if (result == 2)
    {
      sub_1002165B4();
    }
  }

  return result;
}

uint64_t PolicyDocumentKey.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1002166E4(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1002166C4(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PolicyDocumentKey(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000BB480@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000BB4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCD8, type metadata accessor for PolicyDocumentKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BB580(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BB5EC()
{
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey);

  return sub_100216644();
}

uint64_t sub_1000BB690()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PolicyDocumentMapEntry._protobuf_nameMap);
  sub_100002648(v0, static PolicyDocumentMapEntry._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t PolicyDocumentMapEntry.decodeMessage<A>(decoder:)()
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
      sub_1000BB930();
    }

    else if (result == 2)
    {
      sub_100216574();
    }
  }

  return result;
}

uint64_t sub_1000BB930()
{
  v0 = *(type metadata accessor for PolicyDocumentMapEntry(0) + 24);
  type metadata accessor for PolicyDocumentKey(0);
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey);
  return sub_1002165F4();
}

uint64_t PolicyDocumentMapEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BBAB8(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_10:
      sub_100216684();
    }

LABEL_11:
    v11 = v3 + *(type metadata accessor for PolicyDocumentMapEntry(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000BBAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PolicyDocumentKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PolicyDocumentMapEntry(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D820, &unk_10021E840);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D820, &unk_10021E840);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for PolicyDocumentKey);
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for PolicyDocumentKey);
}

uint64_t sub_1000BBD1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_10021D470;
  v4 = &a2[*(a1 + 20)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for PolicyDocumentKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000BBDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCD0, type metadata accessor for PolicyDocumentMapEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BBE78(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BBEE4()
{
  sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry);

  return sub_100216644();
}

uint64_t AccountInfo.decodeMessage<A>(decoder:)()
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
      sub_1002165C4();
    }
  }

  return result;
}

uint64_t AccountInfo.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1002166D4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AccountInfo(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t static AccountInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AccountInfo(0) + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BC1D4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000BC228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCC8, type metadata accessor for AccountInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BC2C8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BC334()
{
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);

  return sub_100216644();
}

uint64_t sub_1000BC3B0(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BC478()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Metrics._protobuf_nameMap);
  sub_100002648(v0, static Metrics._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "flow_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_session_id";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000BC72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCC0, type metadata accessor for Metrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BC7CC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BC838()
{
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);

  return sub_100216644();
}

uint64_t sub_1000BC8B4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BCA50()
{
  v0 = *(type metadata accessor for ResetRequest(0) + 40);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000BCB04()
{
  v0 = *(type metadata accessor for ResetRequest(0) + 44);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000BCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResetRequest(0);
  sub_100019C6C(a1 + *(v16 + 40), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000BCE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResetRequest(0);
  sub_100019C6C(a1 + *(v16 + 44), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000BD0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCB8, type metadata accessor for ResetRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BD194(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CE0, type metadata accessor for ResetRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BD200()
{
  sub_1000F9F28(&qword_100298CE0, type metadata accessor for ResetRequest);

  return sub_100216644();
}

uint64_t sub_1000BD338()
{
  v0 = *(type metadata accessor for ResetResponse(0) + 20);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000BD490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCB0, type metadata accessor for ResetResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BD534(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CF8, type metadata accessor for ResetResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BD5A0()
{
  sub_1000F9F28(&qword_100298CF8, type metadata accessor for ResetResponse);

  return sub_100216644();
}

uint64_t sub_1000BD644()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EstablishRequest._protobuf_nameMap);
  sub_100002648(v0, static EstablishRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10021DFA0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "peer";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bottle";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "view_keys";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tlk_shares";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000BD960()
{
  v0 = type metadata accessor for EstablishRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v5 = type metadata accessor for Peer(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v7 = type metadata accessor for Bottle(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v9 = type metadata accessor for Metrics(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v11 = type metadata accessor for AccountInfo(0);
  result = (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  qword_100298548 = v3;
  return result;
}

uint64_t sub_1000BDADC(uint64_t a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v49 = &v46 - v6;
  v7 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v48 = &v46 - v10;
  v11 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v46 - v14;
  v16 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v22 = type metadata accessor for Peer(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v24 = type metadata accessor for Bottle(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = &_swiftEmptyArrayStorage;
  v26 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = &_swiftEmptyArrayStorage;
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v46 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v28 = type metadata accessor for Metrics(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v47 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v30 = type metadata accessor for AccountInfo(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v31, v20, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();
  sub_1000F9E80(v20, v1 + v21, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v32, v15, &unk_10029D880, &qword_10021E830);
  swift_beginAccess();
  sub_1000F9E80(v15, v1 + v23, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v34 = *(a1 + v33);
  swift_beginAccess();
  v35 = *(v1 + v25);
  *(v1 + v25) = v34;

  v36 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  v38 = *(v1 + v26);
  *(v1 + v26) = v37;

  v39 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v40 = v48;
  sub_100019C6C(a1 + v39, v48, &qword_100297FE0, &unk_10021E7F0);
  v41 = v46;
  swift_beginAccess();
  sub_1000F9E80(v40, v1 + v41, &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v43 = v49;
  sub_100019C6C(a1 + v42, v49, &unk_10029D6F0, &qword_100226B40);

  v44 = v47;
  swift_beginAccess();
  sub_1000F9E80(v43, v1 + v44, &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000BE034()
{
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer, &unk_10029D7A0, &qword_10021E858);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle, &unk_10029D880, &qword_10021E830);
  v1 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);

  v2 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares);

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics, &qword_100297FE0, &unk_10021E7F0);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo, &unk_10029D6F0, &qword_100226B40);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BE190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1000BE494();
            break;
          case 5:
            sub_1000BE570();
            break;
          case 6:
            sub_1000BE64C();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1000BE2DC();
            break;
          case 2:
            sub_1000BE3B8();
            break;
          case 3:
            sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000BE2DC()
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE3B8()
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE494()
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000BE570()
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE64C()
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000BE95C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1000BEB84(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for ViewKeys(0);
      sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);

      sub_1002166F4();
    }

    v11 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {
      type metadata accessor for TLKShare(0);
      sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);

      sub_1002166F4();
    }

    sub_1000BEDAC(a1, a2, a3, a4);
    return sub_1000BEFD4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1000BE95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D7A0, &qword_10021E858);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Peer);
}

uint64_t sub_1000BEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Bottle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D880, &qword_10021E830);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Bottle);
}

uint64_t sub_1000BEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000BEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

BOOL sub_1000BF1FC(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v3 = type metadata accessor for AccountInfo(0);
  v135 = *(v3 - 8);
  v136 = v3;
  v4 = *(v135 + 64);
  __chkstk_darwin(v3, v5);
  v131 = (&v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v7 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134, v8);
  v137 = &v131 - v9;
  v10 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v132 = (&v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v15);
  v138 = &v131 - v16;
  v143 = type metadata accessor for Metrics(0);
  v141 = *(v143 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin(v143, v18);
  v133 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v20 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140, v21);
  v142 = &v131 - v22;
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v139 = (&v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26, v28);
  v151 = &v131 - v29;
  v30 = type metadata accessor for Bottle(0);
  v148 = *(v30 - 8);
  v149 = v30;
  v31 = *(v148 + 64);
  __chkstk_darwin(v30, v32);
  v144 = (&v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  v34 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147, v35);
  v150 = &v131 - v36;
  v37 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v38 = *(*(v37 - 8) + 64);
  v40 = __chkstk_darwin(v37 - 8, v39);
  v145 = (&v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40, v42);
  v152 = &v131 - v43;
  v153 = type metadata accessor for Peer(0);
  v44 = *(v153 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v153, v46);
  v146 = (&v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48, v51);
  v53 = &v131 - v52;
  v54 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v55 = *(*(v54 - 8) + 64);
  v57 = __chkstk_darwin(v54 - 8, v56);
  v154 = (&v131 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v57, v59);
  v61 = &v131 - v60;
  v62 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v62, v61, &unk_10029D7A0, &qword_10021E858);
  v63 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v64 = v155;
  swift_beginAccess();
  v65 = *(v49 + 56);
  sub_100019C6C(v61, v53, &unk_10029D7A0, &qword_10021E858);
  v66 = v64;
  v67 = v153;
  v68 = v66 + v63;
  v69 = v66;
  sub_100019C6C(v68, &v53[v65], &unk_10029D7A0, &qword_10021E858);
  v70 = *(v44 + 48);
  if (v70(v53, 1, v67) == 1)
  {

    sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
    v71 = v69;
    if (v70(&v53[v65], 1, v67) == 1)
    {
      sub_1000114D4(v53, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000114D4(v53, &qword_10029CDD0, &qword_100225D60);
    goto LABEL_21;
  }

  v71 = v69;
  sub_100019C6C(v53, v154, &unk_10029D7A0, &qword_10021E858);
  if (v70(&v53[v65], 1, v67) == 1)
  {

    sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v154, type metadata accessor for Peer);
    goto LABEL_6;
  }

  v72 = v146;
  sub_1000F89AC(&v53[v65], v146, type metadata accessor for Peer);

  v73 = v154;
  v74 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v154, v72);
  sub_1000F9228(v72, type metadata accessor for Peer);
  sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v73, type metadata accessor for Peer);
  sub_1000114D4(v53, &unk_10029D7A0, &qword_10021E858);
  if ((v74 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v75 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v76 = a1;
  v77 = v152;
  sub_100019C6C(a1 + v75, v152, &unk_10029D880, &qword_10021E830);
  v78 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v79 = *(v147 + 48);
  v80 = v150;
  sub_100019C6C(v77, v150, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(v71 + v78, v80 + v79, &unk_10029D880, &qword_10021E830);
  v81 = v149;
  v82 = *(v148 + 48);
  if (v82(v80, 1, v149) == 1)
  {
    sub_1000114D4(v77, &unk_10029D880, &qword_10021E830);
    v83 = v82(v80 + v79, 1, v81);
    v84 = v76;
    v85 = v151;
    if (v83 == 1)
    {
      sub_1000114D4(v80, &unk_10029D880, &qword_10021E830);
      goto LABEL_16;
    }

LABEL_14:
    sub_1000114D4(v80, &qword_10029CE00, &qword_100225DA0);
    goto LABEL_21;
  }

  v86 = v145;
  sub_100019C6C(v80, v145, &unk_10029D880, &qword_10021E830);
  v87 = v82(v80 + v79, 1, v81);
  v85 = v151;
  if (v87 == 1)
  {
    sub_1000114D4(v152, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v86, type metadata accessor for Bottle);
    goto LABEL_14;
  }

  v88 = v80 + v79;
  v89 = v144;
  sub_1000F89AC(v88, v144, type metadata accessor for Bottle);
  v90 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v86, v89);
  sub_1000F9228(v89, type metadata accessor for Bottle);
  sub_1000114D4(v152, &unk_10029D880, &qword_10021E830);
  sub_1000F9228(v86, type metadata accessor for Bottle);
  sub_1000114D4(v80, &unk_10029D880, &qword_10021E830);
  v84 = v76;
  if ((v90 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v91 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v92 = *(v84 + v91);
  v93 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v94 = *(v71 + v93);

  v95 = sub_100051748(v92, v94);

  if ((v95 & 1) == 0)
  {
    goto LABEL_21;
  }

  v96 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v97 = *(v84 + v96);
  v98 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v99 = *(v71 + v98);

  v100 = sub_1000516F4(v97, v99);

  if ((v100 & 1) == 0)
  {
    goto LABEL_21;
  }

  v101 = v84;
  v102 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v101 + v102, v85, &qword_100297FE0, &unk_10021E7F0);
  v103 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v104 = *(v140 + 48);
  v105 = v142;
  sub_100019C6C(v85, v142, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v71 + v103, v105 + v104, &qword_100297FE0, &unk_10021E7F0);
  v106 = *(v141 + 48);
  v107 = v143;
  if (v106(v105, 1, v143) != 1)
  {
    v109 = v139;
    sub_100019C6C(v105, v139, &qword_100297FE0, &unk_10021E7F0);
    if (v106(v105 + v104, 1, v107) == 1)
    {
      sub_1000114D4(v85, &qword_100297FE0, &unk_10021E7F0);
      sub_1000F9228(v109, type metadata accessor for Metrics);
      goto LABEL_26;
    }

    v113 = v133;
    sub_1000F89AC(v105 + v104, v133, type metadata accessor for Metrics);
    if ((*v109 != *v113 || v109[1] != v113[1]) && (sub_1002171A4() & 1) == 0 || (v109[2] != v113[2] || v109[3] != v113[3]) && (sub_1002171A4() & 1) == 0)
    {
      sub_1000114D4(v151, &qword_100297FE0, &unk_10021E7F0);
      sub_1000F9228(v113, type metadata accessor for Metrics);
      sub_1000F9228(v109, type metadata accessor for Metrics);
      v112 = v105;
      v110 = &qword_100297FE0;
      v111 = &unk_10021E7F0;
      goto LABEL_27;
    }

    v114 = *(v143 + 24);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v115 = sub_100216954();
    sub_1000114D4(v151, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v113, type metadata accessor for Metrics);
    sub_1000F9228(v109, type metadata accessor for Metrics);
    sub_1000114D4(v105, &qword_100297FE0, &unk_10021E7F0);
    if (v115)
    {
      goto LABEL_36;
    }

LABEL_21:

    return 0;
  }

  sub_1000114D4(v85, &qword_100297FE0, &unk_10021E7F0);
  if (v106(v105 + v104, 1, v107) != 1)
  {
LABEL_26:
    v110 = &qword_10029CD78;
    v111 = &qword_100225CE8;
    v112 = v105;
LABEL_27:
    sub_1000114D4(v112, v110, v111);
    goto LABEL_21;
  }

  sub_1000114D4(v105, &qword_100297FE0, &unk_10021E7F0);
LABEL_36:
  v116 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v117 = v138;
  sub_100019C6C(v76 + v116, v138, &unk_10029D6F0, &qword_100226B40);
  v118 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v119 = *(v134 + 48);
  v120 = v137;
  sub_100019C6C(v117, v137, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v71 + v118, v120 + v119, &unk_10029D6F0, &qword_100226B40);
  v121 = v136;
  v122 = *(v135 + 48);
  if (v122(v120, 1, v136) == 1)
  {

    sub_1000114D4(v117, &unk_10029D6F0, &qword_100226B40);
    if (v122(v120 + v119, 1, v121) == 1)
    {
      sub_1000114D4(v120, &unk_10029D6F0, &qword_100226B40);
      return 1;
    }

    goto LABEL_42;
  }

  v123 = v132;
  sub_100019C6C(v120, v132, &unk_10029D6F0, &qword_100226B40);
  if (v122(v120 + v119, 1, v121) == 1)
  {

    sub_1000114D4(v138, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v123, type metadata accessor for AccountInfo);
LABEL_42:
    v124 = &qword_10029CD70;
    v125 = &qword_100225CE0;
    v126 = v120;
LABEL_43:
    sub_1000114D4(v126, v124, v125);
    return 0;
  }

  v127 = v120 + v119;
  v128 = v131;
  sub_1000F89AC(v127, v131, type metadata accessor for AccountInfo);
  if (*v123 != *v128)
  {

    sub_1000F9228(v128, type metadata accessor for AccountInfo);
    sub_1000114D4(v138, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v123, type metadata accessor for AccountInfo);
    v126 = v120;
    v124 = &unk_10029D6F0;
    v125 = &qword_100226B40;
    goto LABEL_43;
  }

  v129 = *(v121 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v130 = sub_100216954();

  sub_1000F9228(v128, type metadata accessor for AccountInfo);
  sub_1000114D4(v138, &unk_10029D6F0, &qword_100226B40);
  sub_1000F9228(v123, type metadata accessor for AccountInfo);
  sub_1000114D4(v120, &unk_10029D6F0, &qword_100226B40);
  return (v130 & 1) != 0;
}

uint64_t sub_1000C0418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCA8, type metadata accessor for EstablishRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C04BC(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D920, type metadata accessor for EstablishRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0528()
{
  sub_1000F9F28(&unk_10029D920, type metadata accessor for EstablishRequest);

  return sub_100216644();
}

uint64_t sub_1000C05CC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EstablishResponse._protobuf_nameMap);
  sub_100002648(v0, static EstablishResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C0810()
{
  v0 = *(type metadata accessor for EstablishResponse(0) + 24);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C0904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Changes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EstablishResponse(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D750, &qword_10021E850);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000C0B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCA0, type metadata accessor for EstablishResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C0C70(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D20, type metadata accessor for EstablishResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0CDC()
{
  sub_1000F9F28(&qword_100298D20, type metadata accessor for EstablishResponse);

  return sub_100216644();
}

uint64_t sub_1000C0D80()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static JoinWithVoucherRequest._protobuf_nameMap);
  sub_100002648(v0, static JoinWithVoucherRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D5F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bottle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tlk_shares";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "view_keys";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "trusted_devices_version";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000C111C()
{
  v0 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v5 = type metadata accessor for Peer(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v7 = type metadata accessor for Bottle(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = &_swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v13 = type metadata accessor for AccountInfo(0);
  result = (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  qword_100298550 = v3;
  return result;
}

uint64_t sub_1000C12E8(uint64_t a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v66 = &v58 - v6;
  v7 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v65 = &v58 - v10;
  v11 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v64 = &v58 - v14;
  v15 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v60 = &v58 - v18;
  v19 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v58 - v22;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v24 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v25 = type metadata accessor for Peer(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v59 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v27 = type metadata accessor for Bottle(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = &_swiftEmptyArrayStorage;
  v29 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = &_swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v61 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v31 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v62 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v33 = type metadata accessor for Metrics(0);
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v63 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v35 = type metadata accessor for AccountInfo(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  swift_beginAccess();
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v36;
  *(v1 + 24) = v37;
  v38 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v38, v23, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();

  sub_1000F9E80(v23, v1 + v24, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v40 = v60;
  sub_100019C6C(a1 + v39, v60, &unk_10029D880, &qword_10021E830);
  v41 = v59;
  swift_beginAccess();
  sub_1000F9E80(v40, v1 + v41, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v43 = *(a1 + v42);
  swift_beginAccess();
  v44 = *(v1 + v28);
  *(v1 + v28) = v43;

  v45 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v46 = *(a1 + v45);
  swift_beginAccess();
  v47 = *(v1 + v29);
  *(v1 + v29) = v46;

  v48 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  v49 = v64;
  sub_100019C6C(a1 + v48, v64, &qword_10029D770, &qword_10021E860);
  v50 = v61;
  swift_beginAccess();
  sub_1000F9E80(v49, v1 + v50, &qword_10029D770, &qword_10021E860);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v52 = v65;
  sub_100019C6C(a1 + v51, v65, &qword_100297FE0, &unk_10021E7F0);
  v53 = v62;
  swift_beginAccess();
  sub_1000F9E80(v52, v1 + v53, &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v55 = v66;
  sub_100019C6C(a1 + v54, v66, &unk_10029D6F0, &qword_100226B40);

  v56 = v63;
  swift_beginAccess();
  sub_1000F9E80(v55, v1 + v56, &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000C1998()
{
  v1 = v0[3];

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer, &unk_10029D7A0, &qword_10021E858);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle, &unk_10029D880, &qword_10021E830);
  v2 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares);

  v3 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion, &qword_10029D770, &qword_10021E860);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics, &qword_100297FE0, &unk_10021E7F0);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo, &unk_10029D6F0, &qword_100226B40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_1000C2044();
          }

          else if (result == 8)
          {
            sub_1000C2120();
          }
        }

        else if (result == 5)
        {
          sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
        }

        else
        {
          sub_1000C1F68();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_1000C1DB0();
        }

        else
        {
          sub_1000C1E8C();
        }
      }

      else if (result == 1)
      {
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
      }

      else if (result == 2)
      {
        sub_1000C1CD4();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C1CD4()
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C1DB0()
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C1E8C()
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000C1F68()
{
  swift_beginAccess();
  type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C2044()
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C2120()
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = *(a1 + 24), , sub_1002166C4(), result = , !v4))
  {
    result = sub_1000C24C8(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1000C26F0(a1, a2, a3, a4);
      v13 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
      swift_beginAccess();
      if (*(*(a1 + v13) + 16))
      {
        type metadata accessor for TLKShare(0);
        sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);

        sub_1002166F4();
      }

      v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
      swift_beginAccess();
      if (*(*(a1 + v14) + 16))
      {
        type metadata accessor for ViewKeys(0);
        sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);

        sub_1002166F4();
      }

      sub_1000C2918(a1, a2, a3, a4);
      sub_1000C2B40(a1, a2, a3, a4);
      return sub_1000C2D68(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000C24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D7A0, &qword_10021E858);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Peer);
}

uint64_t sub_1000C26F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Bottle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D880, &qword_10021E830);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Bottle);
}

uint64_t sub_1000C2918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_10029D770, &qword_10021E860);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D770, &qword_10021E860);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for IdmsTrustedDevicesVersion);
}

uint64_t sub_1000C2B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000C2D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

BOOL sub_1000C2F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v171 = *(v4 - 8);
  v172 = v4;
  v5 = *(v171 + 64);
  __chkstk_darwin(v4, v6);
  v167 = (&v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v8 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170, v9);
  v11 = &v166 - v10;
  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v168 = (&v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v17);
  v179 = &v166 - v18;
  v178 = type metadata accessor for Metrics(0);
  v176 = *(v178 - 8);
  v19 = *(v176 + 64);
  __chkstk_darwin(v178, v20);
  v169 = (&v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v22 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175, v23);
  v177 = &v166 - v24;
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v173 = (&v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28, v30);
  v185 = &v166 - v31;
  v32 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v182 = *(v32 - 8);
  v183 = v32;
  v33 = *(v182 + 64);
  __chkstk_darwin(v32, v34);
  v174 = (&v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_10001148C(&qword_10029CE08, &qword_100225DA8);
  v36 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181, v37);
  v184 = &v166 - v38;
  v39 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v40 = *(*(v39 - 8) + 64);
  v42 = __chkstk_darwin(v39 - 8, v41);
  v180 = (&v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42, v44);
  v194 = &v166 - v45;
  v46 = type metadata accessor for Bottle(0);
  v191 = *(v46 - 8);
  v192 = v46;
  v47 = *(v191 + 64);
  __chkstk_darwin(v46, v48);
  v186 = (&v166 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  v50 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189, v51);
  v193 = &v166 - v52;
  v53 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v54 = *(*(v53 - 8) + 64);
  v56 = __chkstk_darwin(v53 - 8, v55);
  v187 = (&v166 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v56, v58);
  v190 = &v166 - v59;
  v196 = type metadata accessor for Peer(0);
  v60 = *(v196 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v196, v62);
  v188 = (&v166 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64, v66);
  v68 = &v166 - v67;
  v69 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v70 = *(*(v69 - 8) + 64);
  v72 = __chkstk_darwin(v69 - 8, v71);
  v195 = (&v166 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v72, v74);
  v76 = &v166 - v75;
  swift_beginAccess();
  v77 = *(a1 + 16);
  v78 = *(a1 + 24);
  v198 = a1;
  swift_beginAccess();
  if ((v77 != *(a2 + 16) || v78 != *(a2 + 24)) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v166 = v11;
  v197 = a2;
  v79 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v80 = v198;
  swift_beginAccess();
  v81 = v80 + v79;
  v82 = v197;
  sub_100019C6C(v81, v76, &unk_10029D7A0, &qword_10021E858);
  v83 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  v84 = *(v64 + 48);
  sub_100019C6C(v76, v68, &unk_10029D7A0, &qword_10021E858);
  sub_100019C6C(v82 + v83, &v68[v84], &unk_10029D7A0, &qword_10021E858);
  v85 = *(v60 + 48);
  v86 = v196;
  if (v85(v68, 1, v196) == 1)
  {

    sub_1000114D4(v76, &unk_10029D7A0, &qword_10021E858);
    if (v85(&v68[v84], 1, v86) == 1)
    {
      sub_1000114D4(v68, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_12;
    }

LABEL_9:
    sub_1000114D4(v68, &qword_10029CDD0, &qword_100225D60);
    goto LABEL_26;
  }

  v87 = v195;
  sub_100019C6C(v68, v195, &unk_10029D7A0, &qword_10021E858);
  if (v85(&v68[v84], 1, v86) == 1)
  {

    sub_1000114D4(v76, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v87, type metadata accessor for Peer);
    goto LABEL_9;
  }

  v88 = v188;
  sub_1000F89AC(&v68[v84], v188, type metadata accessor for Peer);
  v80 = v198;

  v89 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v87, v88);
  sub_1000F9228(v88, type metadata accessor for Peer);
  sub_1000114D4(v76, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v87, type metadata accessor for Peer);
  sub_1000114D4(v68, &unk_10029D7A0, &qword_10021E858);
  if ((v89 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v90 = v82;
  v91 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v92 = v190;
  sub_100019C6C(v80 + v91, v190, &unk_10029D880, &qword_10021E830);
  v93 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v94 = *(v189 + 48);
  v95 = v193;
  sub_100019C6C(v92, v193, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(v90 + v93, v95 + v94, &unk_10029D880, &qword_10021E830);
  v96 = v192;
  v97 = *(v191 + 48);
  if (v97(v95, 1, v192) != 1)
  {
    v101 = v187;
    sub_100019C6C(v95, v187, &unk_10029D880, &qword_10021E830);
    v102 = v97(v95 + v94, 1, v96);
    v99 = v194;
    if (v102 == 1)
    {
      sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
      sub_1000F9228(v101, type metadata accessor for Bottle);
      goto LABEL_17;
    }

    v106 = v95 + v94;
    v107 = v186;
    sub_1000F89AC(v106, v186, type metadata accessor for Bottle);
    v108 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v101, v107);
    sub_1000F9228(v107, type metadata accessor for Bottle);
    sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v101, type metadata accessor for Bottle);
    sub_1000114D4(v95, &unk_10029D880, &qword_10021E830);
    v100 = v197;
    if (v108)
    {
      goto LABEL_21;
    }

LABEL_26:

    return 0;
  }

  sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
  v98 = v97(v95 + v94, 1, v96);
  v99 = v194;
  if (v98 != 1)
  {
LABEL_17:
    v103 = &qword_10029CE00;
    v104 = &qword_100225DA0;
    v105 = v95;
LABEL_18:
    sub_1000114D4(v105, v103, v104);
    goto LABEL_26;
  }

  sub_1000114D4(v95, &unk_10029D880, &qword_10021E830);
  v100 = v197;
LABEL_21:
  v109 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v110 = *(v80 + v109);
  v111 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v112 = *(v100 + v111);

  v113 = sub_1000516F4(v110, v112);

  if ((v113 & 1) == 0)
  {
    goto LABEL_26;
  }

  v114 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v115 = *(v80 + v114);
  v116 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v117 = *(v100 + v116);

  v118 = sub_100051748(v115, v117);

  if ((v118 & 1) == 0)
  {
    goto LABEL_26;
  }

  v119 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(v80 + v119, v99, &qword_10029D770, &qword_10021E860);
  v120 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  v121 = *(v181 + 48);
  v122 = v184;
  sub_100019C6C(v99, v184, &qword_10029D770, &qword_10021E860);
  sub_100019C6C(v100 + v120, v122 + v121, &qword_10029D770, &qword_10021E860);
  v123 = v183;
  v124 = *(v182 + 48);
  if (v124(v122, 1, v183) == 1)
  {
    sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
    v125 = v124(v122 + v121, 1, v123);
    v126 = v185;
    if (v125 == 1)
    {
      sub_1000114D4(v122, &qword_10029D770, &qword_10021E860);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v128 = v180;
  sub_100019C6C(v122, v180, &qword_10029D770, &qword_10021E860);
  v129 = v124(v122 + v121, 1, v123);
  v126 = v185;
  if (v129 == 1)
  {
    sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
    sub_1000F9228(v128, type metadata accessor for IdmsTrustedDevicesVersion);
LABEL_30:
    v103 = &qword_10029CE08;
    v104 = &qword_100225DA8;
    v105 = v122;
    goto LABEL_18;
  }

  v130 = v122 + v121;
  v131 = v174;
  sub_1000F89AC(v130, v174, type metadata accessor for IdmsTrustedDevicesVersion);
  v132 = _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(v128, v131);
  sub_1000F9228(v131, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
  sub_1000F9228(v128, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v122, &qword_10029D770, &qword_10021E860);
  if ((v132 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_32:
  v133 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v80 + v133, v126, &qword_100297FE0, &unk_10021E7F0);
  v134 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v135 = v126;
  v136 = v197;
  swift_beginAccess();
  v137 = *(v175 + 48);
  v138 = v177;
  sub_100019C6C(v135, v177, &qword_100297FE0, &unk_10021E7F0);
  v139 = v136 + v134;
  v140 = v138;
  sub_100019C6C(v139, v138 + v137, &qword_100297FE0, &unk_10021E7F0);
  v141 = *(v176 + 48);
  v142 = v178;
  if (v141(v138, 1, v178) == 1)
  {
    sub_1000114D4(v135, &qword_100297FE0, &unk_10021E7F0);
    v143 = v141(v138 + v137, 1, v142);
    v144 = v179;
    if (v143 == 1)
    {
      sub_1000114D4(v138, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  v145 = v173;
  sub_100019C6C(v138, v173, &qword_100297FE0, &unk_10021E7F0);
  v146 = v141(v138 + v137, 1, v142);
  v144 = v179;
  if (v146 == 1)
  {
    sub_1000114D4(v185, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v145, type metadata accessor for Metrics);
LABEL_37:
    v103 = &qword_10029CD78;
    v104 = &qword_100225CE8;
    v105 = v138;
    goto LABEL_18;
  }

  v147 = v169;
  sub_1000F89AC(v140 + v137, v169, type metadata accessor for Metrics);
  if ((*v145 != *v147 || v145[1] != v147[1]) && (sub_1002171A4() & 1) == 0 || (v145[2] != v147[2] || v145[3] != v147[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000114D4(v185, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v147, type metadata accessor for Metrics);
    sub_1000F9228(v145, type metadata accessor for Metrics);
    v105 = v140;
    v103 = &qword_100297FE0;
    v104 = &unk_10021E7F0;
    goto LABEL_18;
  }

  v148 = *(v178 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v149 = sub_100216954();
  sub_1000114D4(v185, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F9228(v147, type metadata accessor for Metrics);
  sub_1000F9228(v145, type metadata accessor for Metrics);
  sub_1000114D4(v140, &qword_100297FE0, &unk_10021E7F0);
  if ((v149 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  v150 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(v80 + v150, v144, &unk_10029D6F0, &qword_100226B40);
  v151 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v152 = v144;
  v153 = v197;
  swift_beginAccess();
  v154 = *(v170 + 48);
  v155 = v166;
  sub_100019C6C(v152, v166, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v153 + v151, v155 + v154, &unk_10029D6F0, &qword_100226B40);
  v156 = v172;
  v157 = *(v171 + 48);
  if (v157(v155, 1, v172) != 1)
  {
    v158 = v168;
    sub_100019C6C(v155, v168, &unk_10029D6F0, &qword_100226B40);
    if (v157(v155 + v154, 1, v156) == 1)
    {

      sub_1000114D4(v179, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v158, type metadata accessor for AccountInfo);
      goto LABEL_51;
    }

    v162 = v155 + v154;
    v163 = v167;
    sub_1000F89AC(v162, v167, type metadata accessor for AccountInfo);
    if (*v158 != *v163)
    {

      sub_1000F9228(v163, type metadata accessor for AccountInfo);
      sub_1000114D4(v179, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v158, type metadata accessor for AccountInfo);
      v161 = v155;
      v159 = &unk_10029D6F0;
      v160 = &qword_100226B40;
      goto LABEL_52;
    }

    v164 = *(v156 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v165 = sub_100216954();

    sub_1000F9228(v163, type metadata accessor for AccountInfo);
    sub_1000114D4(v179, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v158, type metadata accessor for AccountInfo);
    sub_1000114D4(v155, &unk_10029D6F0, &qword_100226B40);
    return (v165 & 1) != 0;
  }

  sub_1000114D4(v152, &unk_10029D6F0, &qword_100226B40);
  if (v157(v155 + v154, 1, v156) != 1)
  {
LABEL_51:
    v159 = &qword_10029CD70;
    v160 = &qword_100225CE0;
    v161 = v155;
LABEL_52:
    sub_1000114D4(v161, v159, v160);
    return 0;
  }

  sub_1000114D4(v155, &unk_10029D6F0, &qword_100226B40);
  return 1;
}

uint64_t sub_1000C4594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC98, type metadata accessor for JoinWithVoucherRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C4638(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C46A4()
{
  sub_1000F9F28(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);

  return sub_100216644();
}

uint64_t sub_1000C4748()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static JoinWithVoucherResponse._protobuf_nameMap);
  sub_100002648(v0, static JoinWithVoucherResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C498C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_100216534();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        a4(a1, v7, a2, a3);
      }

      else if (result == 2)
      {
        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
        sub_1002165E4();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C4A94()
{
  v0 = *(type metadata accessor for JoinWithVoucherResponse(0) + 24);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v10 = *v5;
    if (*(*v8 + 16))
    {
      sub_100216424();
      sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
      sub_1002166F4();
    }

    v11 = v8 + *(a5(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000C4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Changes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for JoinWithVoucherResponse(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D750, &qword_10021E850);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000C4EF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = &a2[*(a1 + 20)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Changes(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000C4FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC90, type metadata accessor for JoinWithVoucherResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C508C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D48, type metadata accessor for JoinWithVoucherResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C50F8()
{
  sub_1000F9F28(&qword_100298D48, type metadata accessor for JoinWithVoucherResponse);

  return sub_100216644();
}

uint64_t sub_1000C519C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static UpdateTrustRequest._protobuf_nameMap);
  sub_100002648(v0, static UpdateTrustRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stable_info_and_sig";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dynamic_info_and_sig";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tlk_shares";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "view_keys";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "trusted_devices_version";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "metrics";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "accountInfo";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t UpdateTrustRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1000C57D4();
          }

          else
          {
            sub_1000C5888();
          }
        }

        else if (result == 1 || result == 2)
        {
          sub_1002165B4();
        }
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
        }

        else
        {
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);
        }

        sub_1002165E4();
      }

      else
      {
        switch(result)
        {
          case 7:
            sub_1000C593C();
            break;
          case 8:
            sub_1000D5990(a1, v5, a2, a3, type metadata accessor for UpdateTrustRequest);
            break;
          case 9:
            sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for UpdateTrustRequest);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C57D4()
{
  v0 = *(type metadata accessor for UpdateTrustRequest(0) + 36);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C5888()
{
  v0 = *(type metadata accessor for UpdateTrustRequest(0) + 40);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C593C()
{
  v0 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
  type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  return sub_1002165F4();
}

uint64_t UpdateTrustRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_1002166C4(), !v4))
    {
      result = sub_1000C5C58(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000C5E74(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
          sub_1002166F4();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);
          sub_1002166F4();
        }

        sub_1000C6090(v3, a1, a2, a3);
        sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for UpdateTrustRequest, 8);
        sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for UpdateTrustRequest, 9);
        v14 = v3 + *(type metadata accessor for UpdateTrustRequest(0) + 32);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000C5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 36), v9, &qword_1002985A8, &unk_100226650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 40), v9, &unk_10029D760, &qword_10021E810);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000C6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 44), v9, &qword_10029D770, &qword_10021E860);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D770, &qword_10021E860);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for IdmsTrustedDevicesVersion);
}

uint64_t sub_1000C62F4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = &_swiftEmptyArrayStorage;
  *(a2 + 5) = &_swiftEmptyArrayStorage;
  v4 = &a2[a1[8]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[9];
  v6 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[10];
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[11];
  v10 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[12];
  v12 = type metadata accessor for Metrics(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[13];
  v14 = type metadata accessor for AccountInfo(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(&a2[v13], 1, 1, v14);
}

uint64_t sub_1000C64A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000C6518(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000C658C(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1000C65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC88, type metadata accessor for UpdateTrustRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6680(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D60, type metadata accessor for UpdateTrustRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C66EC()
{
  sub_1000F9F28(&qword_100298D60, type metadata accessor for UpdateTrustRequest);

  return sub_100216644();
}

uint64_t sub_1000C6790()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static UpdateTrustResponse._protobuf_nameMap);
  sub_100002648(v0, static UpdateTrustResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C69D4()
{
  v0 = *(type metadata accessor for UpdateTrustResponse(0) + 24);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C6AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Changes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustResponse(0);
  sub_100019C6C(a1 + *(updated + 24), v9, &unk_10029D750, &qword_10021E850);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000C6D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC80, type metadata accessor for UpdateTrustResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6E34(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D78, type metadata accessor for UpdateTrustResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6EA0()
{
  sub_1000F9F28(&qword_100298D78, type metadata accessor for UpdateTrustResponse);

  return sub_100216644();
}

uint64_t sub_1000C6F44()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SetRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static SetRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "recovery_signing_pub_key";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "recovery_encryption_pub_key";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "stable_info_and_sig";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tlk_shares";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "view_keys";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t SetRecoveryKeyRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          sub_100216574();
        }

        else if (result == 1 || result == 2)
        {
          sub_1002165B4();
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v11 = v4;
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
LABEL_20:
          v4 = v11;
          sub_1002165E4();
          goto LABEL_5;
        }

        sub_1000C7558();
      }

      else
      {
        if (result == 7)
        {
          sub_1000D5990(a1, v5, a2, a3, type metadata accessor for SetRecoveryKeyRequest);
          goto LABEL_5;
        }

        if (result != 8)
        {
          if (result != 9)
          {
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);
          goto LABEL_20;
        }

        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for SetRecoveryKeyRequest);
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C7558()
{
  v0 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t SetRecoveryKeyRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_1002166C4(), !v4))
    {
      v14 = v3[4];
      v15 = v3[5];
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
      }

      else
      {
        if (!v16)
        {
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v17 = v14;
        v18 = v14 >> 32;
      }

      if (v17 == v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      result = sub_100216684();
      if (v4)
      {
        return result;
      }

LABEL_18:
      v19 = v3[6];
      v20 = v3[7];
      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_27;
        }

        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
      }

      else
      {
        if (!v21)
        {
          if ((v20 & 0xFF000000000000) == 0)
          {
LABEL_27:
            result = sub_1000C78F4(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3[8] + 16))
              {
                type metadata accessor for TLKShare(0);
                sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
                sub_1002166F4();
              }

              sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for SetRecoveryKeyRequest, 7);
              sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for SetRecoveryKeyRequest, 8);
              if (*(v3[9] + 16))
              {
                type metadata accessor for ViewKeys(0);
                sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);
                sub_1002166F4();
              }

              v24 = v3 + *(type metadata accessor for SetRecoveryKeyRequest(0) + 40);
              return sub_1002164B4();
            }

            return result;
          }

LABEL_26:
          result = sub_100216684();
          if (v4)
          {
            return result;
          }

          goto LABEL_27;
        }

        v22 = v19;
        v23 = v19 >> 32;
      }

      if (v22 == v23)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1000C78F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for SetRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v16 + 44), v9, &qword_1002985A8, &unk_100226650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C7B58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_10021D470;
  *(a2 + 48) = xmmword_10021D470;
  *(a2 + 64) = &_swiftEmptyArrayStorage;
  *(a2 + 72) = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[10];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[11];
  v6 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[12];
  v8 = type metadata accessor for Metrics(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[13];
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_1000C7C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000C7D00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000C7DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC78, type metadata accessor for SetRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C7E44(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7EB0()
{
  sub_1000F9F28(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000C7F54()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SetRecoveryKeyResponse._protobuf_nameMap);
  sub_100002648(v0, static SetRecoveryKeyResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C8198()
{
  v0 = *(type metadata accessor for SetRecoveryKeyResponse(0) + 24);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Changes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SetRecoveryKeyResponse(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D750, &qword_10021E850);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000C8520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC70, type metadata accessor for SetRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C85F8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DA8, type metadata accessor for SetRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C8664()
{
  sub_1000F9F28(&qword_100298DA8, type metadata accessor for SetRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000C8708()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RemoveRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static RemoveRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "change_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "peer_id";
  *(v10 + 8) = 7;
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
  *v16 = "metrics";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "accountInfo";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t RemoveRecoveryKeyRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_1000C8BF0();
          break;
        case 5:
          sub_1000C8CA4();
          break;
        case 6:
          sub_1000C8D58();
          break;
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1002165B4();
    }

    else if (result == 3)
    {
      sub_1000C8B3C();
    }
  }

  return result;
}

uint64_t sub_1000C8B3C()
{
  v0 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 28);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C8BF0()
{
  v0 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 32);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C8CA4()
{
  v0 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 36);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000C8D58()
{
  v0 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 40);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t RemoveRecoveryKeyRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_1002166C4(), !v4))
    {
      result = sub_1000C8F30(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000C914C(v3, a1, a2, a3);
        sub_1000C9368(v3, a1, a2, a3);
        sub_1000C9584(v3, a1, a2, a3);
        v14 = v3 + *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 24);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000C8F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v16 + 28), v9, &qword_1002985A8, &unk_100226650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v16 + 32), v9, &unk_10029D760, &qword_10021E810);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000C9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v16 + 36), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000C9584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v16 + 40), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000C97EC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[a1[6]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[7];
  v6 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[9];
  v10 = type metadata accessor for Metrics(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[10];
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(&a2[v11], 1, 1, v12);
}

uint64_t sub_1000C997C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC68, type metadata accessor for RemoveRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C9A1C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9A88()
{
  sub_1000F9F28(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000C9BB8()
{
  v0 = *(type metadata accessor for RemoveRecoveryKeyResponse(0) + 20);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_1000CFF94(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000C9D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000C9E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC60, type metadata accessor for RemoveRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C9EB4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DD0, type metadata accessor for RemoveRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9F20()
{
  sub_1000F9F28(&qword_100298DD0, type metadata accessor for RemoveRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000C9FC4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PerformATOPRVActionsRequest._protobuf_nameMap);
  sub_100002648(v0, static PerformATOPRVActionsRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metrics";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountInfo";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CA214()
{
  v0 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 20);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000CA2C8()
{
  v0 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 24);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t PerformATOPRVActionsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CA3EC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000CA608(v3, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000CA3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(a1 + *(v16 + 20), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000CA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CA8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC58, type metadata accessor for PerformATOPRVActionsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CA96C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA9D8()
{
  sub_1000F9F28(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest);

  return sub_100216644();
}

uint64_t PerformATOPRVActionsResponse.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_100216534();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1000CAB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC50, type metadata accessor for PerformATOPRVActionsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CAC14(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DF8, type metadata accessor for PerformATOPRVActionsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CAC80()
{
  sub_1000F9F28(&qword_100298DF8, type metadata accessor for PerformATOPRVActionsResponse);

  return sub_100216644();
}

uint64_t sub_1000CAD24()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AddCustodianRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static AddCustodianRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "peer";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "stable_info_and_sig";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tlk_shares";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "dynamic_info_and_sig";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "view_keys";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000CB108()
{
  v0 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v5 = type metadata accessor for Peer(0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v7 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares] = &_swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v13 = type metadata accessor for AccountInfo(0);
  result = (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  *&v3[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys] = &_swiftEmptyArrayStorage;
  qword_100298558 = v3;
  return result;
}

char *sub_1000CB2E0(void *a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v69 = &v60 - v6;
  v7 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v68 = &v60 - v10;
  v11 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v67 = &v60 - v14;
  v15 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v64 = &v60 - v18;
  v19 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v60 - v22;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  v24 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v25 = type metadata accessor for Peer(0);
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v61 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v27 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v27 - 8) + 56))(&v1[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *&v1[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares] = &_swiftEmptyArrayStorage;
  v29 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v62 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v30 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v30 - 8) + 56))(&v1[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v63 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v32 = type metadata accessor for Metrics(0);
  (*(*(v32 - 8) + 56))(&v1[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v65 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v34 = type metadata accessor for AccountInfo(0);
  (*(*(v34 - 8) + 56))(&v1[v33], 1, 1, v34);
  v66 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *&v1[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys] = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  v35 = a1[2];
  v36 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v35;
  *(v1 + 3) = v36;
  swift_beginAccess();
  v37 = a1[4];
  v38 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v37;
  *(v1 + 5) = v38;
  v39 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;

  swift_beginAccess();
  sub_100019C6C(a1 + v39, v23, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();
  sub_1000F9E80(v23, &v1[v24], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v41 = v64;
  sub_100019C6C(a1 + v40, v64, &qword_1002985A8, &unk_100226650);
  v42 = v61;
  swift_beginAccess();
  sub_1000F9E80(v41, &v1[v42], &qword_1002985A8, &unk_100226650);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v44 = *(a1 + v43);
  swift_beginAccess();
  v45 = *&v1[v28];
  *&v1[v28] = v44;

  v46 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v47 = v67;
  sub_100019C6C(a1 + v46, v67, &unk_10029D760, &qword_10021E810);
  v48 = v62;
  swift_beginAccess();
  sub_1000F9E80(v47, &v1[v48], &unk_10029D760, &qword_10021E810);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v50 = v68;
  sub_100019C6C(a1 + v49, v68, &qword_100297FE0, &unk_10021E7F0);
  v51 = v63;
  swift_beginAccess();
  sub_1000F9E80(v50, &v1[v51], &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v53 = v69;
  sub_100019C6C(a1 + v52, v69, &unk_10029D6F0, &qword_100226B40);
  v54 = v65;
  swift_beginAccess();
  sub_1000F9E80(v53, &v1[v54], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v56 = *(a1 + v55);

  v57 = v66;
  swift_beginAccess();
  v58 = *&v1[v57];
  *&v1[v57] = v56;

  return v1;
}

uint64_t sub_1000CB9DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer, &unk_10029D7A0, &qword_10021E858);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig, &qword_1002985A8, &unk_100226650);
  v3 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares);

  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig, &unk_10029D760, &qword_10021E810);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics, &qword_100297FE0, &unk_10021E7F0);
  sub_1000114D4(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo, &unk_10029D6F0, &qword_100226B40);
  v4 = *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);

  return v0;
}

uint64_t sub_1000CBB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1000CBDA4();
          }

          else
          {
            sub_1000CBE80();
          }
        }

        else if (result == 1)
        {
          sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
        }

        else if (result == 2)
        {
          sub_1000CBD20();
        }
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          sub_1000CBF5C();
        }

        else
        {
          sub_1000CC038();
        }
      }

      else
      {
        switch(result)
        {
          case 7:
            sub_1000CC114();
            break;
          case 8:
            sub_1000CC1F0();
            break;
          case 9:
            sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000CBD20()
{
  swift_beginAccess();
  sub_1002165B4();
  return swift_endAccess();
}

uint64_t sub_1000CBDA4()
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CBE80()
{
  swift_beginAccess();
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CBF5C()
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000CC038()
{
  swift_beginAccess();
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC114()
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC1F0()
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for ViewKeys(0);
  sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000CC3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = a1[3];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a1[3];

    sub_1002166C4();

    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v14 = a1[5];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = a1[5];

    v17 = v5;
    sub_1002166C4();

    if (v5)
    {
      return result;
    }
  }

  else
  {
    v17 = v5;
  }

  result = sub_1000CC6E0(a1, a2, a3, a4);
  if (!v17)
  {
    sub_1000CC908(a1, a2, a3, a4);
    v18 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    if (*(*(a1 + v18) + 16))
    {
      type metadata accessor for TLKShare(0);
      sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare);

      sub_1002166F4();
    }

    sub_1000CCB30(a1, a2, a3, a4);
    sub_1000CCD58(a1, a2, a3, a4);
    sub_1000CCF80(a1, a2, a3, a4);
    v19 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    result = swift_beginAccess();
    if (*(*(a1 + v19) + 16))
    {
      type metadata accessor for ViewKeys(0);
      sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys);

      sub_1002166F4();
    }
  }

  return result;
}

uint64_t sub_1000CC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Peer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D7A0, &qword_10021E858);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Peer);
}

uint64_t sub_1000CC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedPeerStableInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_1002985A8, &unk_100226650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000CCB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for SignedPeerDynamicInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D760, &qword_10021E810);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000CCD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000CCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CD1EC(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v175 = *(v4 - 8);
  v176 = v4;
  v5 = *(v175 + 64);
  __chkstk_darwin(v4, v6);
  v171 = (&v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v8 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174, v9);
  v11 = &v169 - v10;
  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v172 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v17);
  v177 = &v169 - v18;
  v183 = type metadata accessor for Metrics(0);
  v181 = *(v183 - 8);
  v19 = *(v181 + 64);
  __chkstk_darwin(v183, v20);
  v173 = (&v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v22 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180, v23);
  v182 = &v169 - v24;
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v178 = (&v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28, v30);
  v197 = &v169 - v31;
  v188 = type metadata accessor for SignedPeerDynamicInfo(0);
  v186 = *(v188 - 8);
  v32 = *(v186 + 64);
  __chkstk_darwin(v188, v33);
  v179 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  v35 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185, v36);
  v187 = &v169 - v37;
  v38 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v39 = *(*(v38 - 8) + 64);
  v41 = __chkstk_darwin(v38 - 8, v40);
  v184 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v43);
  v189 = &v169 - v44;
  v45 = type metadata accessor for SignedPeerStableInfo(0);
  v194 = *(v45 - 8);
  v195 = v45;
  v46 = *(v194 + 64);
  __chkstk_darwin(v45, v47);
  v190 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  v49 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193, v50);
  v196 = &v169 - v51;
  v52 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v53 = *(*(v52 - 8) + 64);
  v55 = __chkstk_darwin(v52 - 8, v54);
  v191 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v57);
  v200 = &v169 - v58;
  v201 = type metadata accessor for Peer(0);
  v59 = *(v201 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v201, v61);
  v192 = (&v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63, v65);
  v67 = &v169 - v66;
  v68 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v69 = *(*(v68 - 8) + 64);
  v71 = __chkstk_darwin(v68 - 8, v70);
  v199 = (&v169 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v71, v73);
  v75 = &v169 - v74;
  swift_beginAccess();
  v77 = a1[2];
  v76 = a1[3];
  swift_beginAccess();
  if ((v77 != a2[2] || v76 != a2[3]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_63;
  }

  swift_beginAccess();
  v78 = a1[4];
  v79 = a1[5];
  swift_beginAccess();
  if ((v78 != a2[4] || v79 != a2[5]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_63;
  }

  v170 = v11;
  v198 = a2;
  v80 = a1;
  v81 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v81, v75, &unk_10029D7A0, &qword_10021E858);
  v82 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v83 = v198;
  swift_beginAccess();
  v84 = *(v63 + 48);
  sub_100019C6C(v75, v67, &unk_10029D7A0, &qword_10021E858);
  sub_100019C6C(v83 + v82, &v67[v84], &unk_10029D7A0, &qword_10021E858);
  v85 = *(v59 + 48);
  v86 = v201;
  if (v85(v67, 1, v201) == 1)
  {

    sub_1000114D4(v75, &unk_10029D7A0, &qword_10021E858);
    if (v85(&v67[v84], 1, v86) == 1)
    {
      sub_1000114D4(v67, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_15;
    }

LABEL_12:
    sub_1000114D4(v67, &qword_10029CDD0, &qword_100225D60);
    goto LABEL_62;
  }

  v87 = v199;
  sub_100019C6C(v67, v199, &unk_10029D7A0, &qword_10021E858);
  if (v85(&v67[v84], 1, v86) == 1)
  {

    sub_1000114D4(v75, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v87, type metadata accessor for Peer);
    goto LABEL_12;
  }

  v88 = v192;
  sub_1000F89AC(&v67[v84], v192, type metadata accessor for Peer);

  v89 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v87, v88);
  sub_1000F9228(v88, type metadata accessor for Peer);
  sub_1000114D4(v75, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v87, type metadata accessor for Peer);
  v83 = v198;
  sub_1000114D4(v67, &unk_10029D7A0, &qword_10021E858);
  if ((v89 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_15:
  v90 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v201 = v80;
  v91 = v80 + v90;
  v92 = v200;
  sub_100019C6C(v91, v200, &qword_1002985A8, &unk_100226650);
  v93 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v94 = *(v193 + 48);
  v95 = v196;
  sub_100019C6C(v92, v196, &qword_1002985A8, &unk_100226650);
  v96 = v83 + v93;
  v97 = v95;
  sub_100019C6C(v96, v95 + v94, &qword_1002985A8, &unk_100226650);
  v98 = v195;
  v99 = *(v194 + 48);
  if (v99(v95, 1, v195) == 1)
  {
    sub_1000114D4(v92, &qword_1002985A8, &unk_100226650);
    v100 = v99(v95 + v94, 1, v98);
    v101 = v197;
    if (v100 == 1)
    {
      sub_1000114D4(v95, &qword_1002985A8, &unk_100226650);
      goto LABEL_18;
    }

LABEL_27:
    v125 = &qword_10029CDC8;
    v126 = &qword_100225D58;
    v127 = v95;
LABEL_61:
    sub_1000114D4(v127, v125, v126);
    goto LABEL_62;
  }

  v123 = v191;
  sub_100019C6C(v95, v191, &qword_1002985A8, &unk_100226650);
  v124 = v99(v95 + v94, 1, v98);
  v101 = v197;
  if (v124 == 1)
  {
    sub_1000114D4(v200, &qword_1002985A8, &unk_100226650);
    sub_1000F9228(v123, type metadata accessor for SignedPeerStableInfo);
    goto LABEL_27;
  }

  v128 = v190;
  sub_1000F89AC(v97 + v94, v190, type metadata accessor for SignedPeerStableInfo);
  if ((sub_100052F18(*v123, *(v123 + 8), *v128, *(v128 + 8)) & 1) == 0 || (sub_100052F18(*(v123 + 16), *(v123 + 24), *(v128 + 16), *(v128 + 24)) & 1) == 0)
  {
    v133 = &qword_1002985A8;
    v134 = v123;
    v135 = &unk_100226650;
    sub_1000114D4(v200, &qword_1002985A8, &unk_100226650);
    sub_1000F9228(v128, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v134, type metadata accessor for SignedPeerStableInfo);
    v127 = v97;
LABEL_33:
    v125 = v133;
    v126 = v135;
    goto LABEL_61;
  }

  v129 = v98;
  v130 = v123;
  v131 = *(v129 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v132 = sub_100216954();
  sub_1000114D4(v200, &qword_1002985A8, &unk_100226650);
  sub_1000F9228(v128, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v130, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v97, &qword_1002985A8, &unk_100226650);
  if ((v132 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_18:
  v102 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  v103 = v201;
  swift_beginAccess();
  v104 = *(v103 + v102);
  v105 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v106 = *(v83 + v105);

  v107 = sub_1000516F4(v104, v106);

  if ((v107 & 1) == 0)
  {
    goto LABEL_62;
  }

  v108 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v109 = v189;
  sub_100019C6C(v103 + v108, v189, &unk_10029D760, &qword_10021E810);
  v110 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v111 = *(v185 + 48);
  v112 = v187;
  sub_100019C6C(v109, v187, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v83 + v110, v112 + v111, &unk_10029D760, &qword_10021E810);
  v113 = *(v186 + 48);
  v114 = v188;
  if (v113(v112, 1, v188) == 1)
  {
    sub_1000114D4(v109, &unk_10029D760, &qword_10021E810);
    if (v113(v112 + v111, 1, v114) == 1)
    {
      sub_1000114D4(v112, &unk_10029D760, &qword_10021E810);
      goto LABEL_22;
    }

LABEL_37:
    v125 = &qword_10029CDC0;
    v126 = &qword_100225D50;
    v127 = v112;
    goto LABEL_61;
  }

  v136 = v184;
  sub_100019C6C(v112, v184, &unk_10029D760, &qword_10021E810);
  if (v113(v112 + v111, 1, v114) == 1)
  {
    sub_1000114D4(v189, &unk_10029D760, &qword_10021E810);
    sub_1000F9228(v136, type metadata accessor for SignedPeerDynamicInfo);
    goto LABEL_37;
  }

  v137 = v179;
  sub_1000F89AC(v112 + v111, v179, type metadata accessor for SignedPeerDynamicInfo);
  if ((sub_100052F18(*v136, *(v136 + 8), *v137, *(v137 + 8)) & 1) == 0 || (sub_100052F18(*(v136 + 16), *(v136 + 24), *(v137 + 16), *(v137 + 24)) & 1) == 0)
  {
    v133 = &unk_10029D760;
    v141 = v136;
    v135 = &qword_10021E810;
    sub_1000114D4(v189, &unk_10029D760, &qword_10021E810);
    v142 = type metadata accessor for SignedPeerDynamicInfo;
    sub_1000F9228(v137, type metadata accessor for SignedPeerDynamicInfo);
    v143 = v141;
LABEL_43:
    sub_1000F9228(v143, v142);
    v127 = v112;
    goto LABEL_33;
  }

  v138 = v136;
  v139 = *(v188 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v140 = sub_100216954();
  sub_1000114D4(v189, &unk_10029D760, &qword_10021E810);
  sub_1000F9228(v137, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v138, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v112, &unk_10029D760, &qword_10021E810);
  if ((v140 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_22:
  v115 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v116 = v201;
  swift_beginAccess();
  sub_100019C6C(v116 + v115, v101, &qword_100297FE0, &unk_10021E7F0);
  v117 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v118 = *(v180 + 48);
  v112 = v182;
  sub_100019C6C(v101, v182, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v83 + v117, v112 + v118, &qword_100297FE0, &unk_10021E7F0);
  v119 = *(v181 + 48);
  v120 = v183;
  if (v119(v112, 1, v183) == 1)
  {
    sub_1000114D4(v101, &qword_100297FE0, &unk_10021E7F0);
    v121 = v119(v112 + v118, 1, v120);
    v122 = v170;
    if (v121 == 1)
    {
      sub_1000114D4(v112, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  v144 = v178;
  sub_100019C6C(v112, v178, &qword_100297FE0, &unk_10021E7F0);
  v145 = v119(v112 + v118, 1, v120);
  v122 = v170;
  if (v145 == 1)
  {
    sub_1000114D4(v101, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v144, type metadata accessor for Metrics);
LABEL_46:
    v125 = &qword_10029CD78;
    v126 = &qword_100225CE8;
    v127 = v112;
    goto LABEL_61;
  }

  v146 = v173;
  sub_1000F89AC(v112 + v118, v173, type metadata accessor for Metrics);
  if ((*v144 != *v146 || v144[1] != v146[1]) && (sub_1002171A4() & 1) == 0 || (v144[2] != v146[2] || v144[3] != v146[3]) && (sub_1002171A4() & 1) == 0)
  {
    v133 = &qword_100297FE0;
    v135 = &unk_10021E7F0;
    sub_1000114D4(v101, &qword_100297FE0, &unk_10021E7F0);
    v142 = type metadata accessor for Metrics;
    sub_1000F9228(v146, type metadata accessor for Metrics);
    v143 = v144;
    goto LABEL_43;
  }

  v147 = *(v183 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v148 = sub_100216954();
  sub_1000114D4(v101, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F9228(v146, type metadata accessor for Metrics);
  sub_1000F9228(v144, type metadata accessor for Metrics);
  sub_1000114D4(v112, &qword_100297FE0, &unk_10021E7F0);
  if ((v148 & 1) == 0)
  {
LABEL_62:

LABEL_63:
    v162 = 0;
    return v162 & 1;
  }

LABEL_54:
  v149 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v150 = v201;
  swift_beginAccess();
  v151 = v150 + v149;
  v152 = v177;
  sub_100019C6C(v151, v177, &unk_10029D6F0, &qword_100226B40);
  v153 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v154 = *(v174 + 48);
  sub_100019C6C(v152, v122, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v83 + v153, v122 + v154, &unk_10029D6F0, &qword_100226B40);
  v155 = v176;
  v156 = *(v175 + 48);
  if (v156(v122, 1, v176) != 1)
  {
    v163 = v172;
    sub_100019C6C(v122, v172, &unk_10029D6F0, &qword_100226B40);
    if (v156(v122 + v154, 1, v155) != 1)
    {
      v165 = v122 + v154;
      v166 = v171;
      sub_1000F89AC(v165, v171, type metadata accessor for AccountInfo);
      if (*v163 == *v166)
      {
        v167 = *(v155 + 20);
        sub_1002164D4();
        sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
        v168 = sub_100216954();
        sub_1000F9228(v166, type metadata accessor for AccountInfo);
        sub_1000114D4(v177, &unk_10029D6F0, &qword_100226B40);
        sub_1000F9228(v163, type metadata accessor for AccountInfo);
        sub_1000114D4(v122, &unk_10029D6F0, &qword_100226B40);
        if (v168)
        {
          goto LABEL_57;
        }

        goto LABEL_62;
      }

      sub_1000F9228(v166, type metadata accessor for AccountInfo);
      sub_1000114D4(v177, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v163, type metadata accessor for AccountInfo);
      v127 = v122;
      v125 = &unk_10029D6F0;
      v126 = &qword_100226B40;
      goto LABEL_61;
    }

    sub_1000114D4(v177, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v163, type metadata accessor for AccountInfo);
    goto LABEL_60;
  }

  sub_1000114D4(v152, &unk_10029D6F0, &qword_100226B40);
  if (v156(v122 + v154, 1, v155) != 1)
  {
LABEL_60:
    v125 = &qword_10029CD70;
    v126 = &qword_100225CE0;
    v127 = v122;
    goto LABEL_61;
  }

  sub_1000114D4(v122, &unk_10029D6F0, &qword_100226B40);
LABEL_57:
  v157 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  v158 = v201;
  swift_beginAccess();
  v159 = *(v158 + v157);
  v160 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v161 = *(v83 + v160);

  v162 = sub_100051748(v159, v161);

  return v162 & 1;
}

uint64_t sub_1000CE984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC48, type metadata accessor for AddCustodianRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEA24(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CEA90()
{
  sub_1000F9F28(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000CEB34()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AddCustodianRecoveryKeyResponse._protobuf_nameMap);
  sub_100002648(v0, static AddCustodianRecoveryKeyResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CED78()
{
  v0 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) + 24);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Changes(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &unk_10029D750, &qword_10021E850);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000CF130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC40, type metadata accessor for AddCustodianRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF1D0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E28, type metadata accessor for AddCustodianRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF23C()
{
  sub_1000F9F28(&qword_100298E28, type metadata accessor for AddCustodianRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000CF2E0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchChangesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchChangesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "change_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CF588()
{
  v0 = *(type metadata accessor for FetchChangesRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000CF63C()
{
  v0 = *(type metadata accessor for FetchChangesRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000CF744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(a1 + *(ChangesRequest + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000CF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(a1 + *(ChangesRequest + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CFBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC38, type metadata accessor for FetchChangesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CFC94(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029DA40, type metadata accessor for FetchChangesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CFD00()
{
  sub_1000F9F28(&unk_10029DA40, type metadata accessor for FetchChangesRequest);

  return sub_100216644();
}

uint64_t sub_1000CFE30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_100216534();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000CFEB4()
{
  v0 = *(type metadata accessor for FetchChangesResponse(0) + 20);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000CFF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[0] = a2;
  v20[1] = a3;
  v7 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for Changes(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0);
  sub_100019C6C(a1 + *(v18 + 20), v11, &unk_10029D750, &qword_10021E850);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000114D4(v11, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v11, v17, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes);
  sub_100216704();
  return sub_1000F9228(v17, type metadata accessor for Changes);
}

uint64_t sub_1000D022C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC30, type metadata accessor for FetchChangesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D02D0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E50, type metadata accessor for FetchChangesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D033C()
{
  sub_1000F9F28(&qword_100298E50, type metadata accessor for FetchChangesResponse);

  return sub_100216644();
}

uint64_t sub_1000D03E0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchViableBottlesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchViableBottlesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "filter_request";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchViableBottlesRequest.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000D07E0();
          break;
        case 2:
          sub_1000D072C();
          break;
        case 1:
          sub_1000FA038();
          sub_100216564();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D072C()
{
  v0 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D07E0()
{
  v0 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t FetchViableBottlesRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_1000FA038(), result = sub_100216674(), !v4))
  {
    result = sub_1000D0978(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000D0B94(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for FetchViableBottlesRequest(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D0978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(a1 + *(ViableBottlesRequest + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000D0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(a1 + *(ViableBottlesRequest + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D0DF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000D0F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC28, type metadata accessor for FetchViableBottlesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D0FA0(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D100C()
{
  sub_1000F9F28(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest);

  return sub_100216644();
}

uint64_t sub_1000D10B0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchViableBottlesResponse._protobuf_nameMap);
  sub_100002648(v0, static FetchViableBottlesResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "viable_bottles";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "partial_bottles";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "legacy_records";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "total_escrow_records";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "total_escrow_records_fully_viable";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "total_escrow_records_partially_viable";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "total_escrow_records_legacy";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchViableBottlesResponse.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
          v3 = v0;
          type metadata accessor for EscrowPair(0);
          sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair);
        }

        else
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for EscrowInformation(0);
          sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);
        }

        v0 = v3;
        sub_1002165E4();
      }

      else if (result <= 6 || result == 7)
      {
        sub_1002165D4();
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t FetchViableBottlesResponse.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for EscrowPair(0);
    sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair);
    result = sub_1002166F4();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for EscrowPair(0);
    sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair);
    result = sub_1002166F4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    type metadata accessor for EscrowInformation(0);
    sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);
    v4 = v2;
    result = sub_1002166F4();
    if (v2)
    {
      return result;
    }

    if (!v0[3])
    {
      goto LABEL_13;
    }

LABEL_12:
    result = sub_1002166E4();
    if (v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = v2;
  if (v0[3])
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!v0[4] || (result = sub_1002166E4(), !v4))
  {
    if (!v0[5] || (result = sub_1002166E4(), !v4))
    {
      if (!v0[6] || (result = sub_1002166E4(), !v4))
      {
        v5 = v0 + *(type metadata accessor for FetchViableBottlesResponse(0) + 44);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000D1898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = &_swiftEmptyArrayStorage;
  *(a2 + 16) = &_swiftEmptyArrayStorage;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v2 = a2 + *(a1 + 44);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t (*sub_1000D18D4(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1000D1928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC20, type metadata accessor for FetchViableBottlesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D19C8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E78, type metadata accessor for FetchViableBottlesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D1A34()
{
  sub_1000F9F28(&qword_100298E78, type metadata accessor for FetchViableBottlesResponse);

  return sub_100216644();
}

uint64_t sub_1000D1AD8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchRecoverableTLKSharesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchRecoverableTLKSharesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000D1D80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_100216534();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        a4(a1, v9, a2, a3);
        break;
      case 1:
        sub_1002165B4();
        break;
    }
  }

  return result;
}

uint64_t sub_1000D1E4C()
{
  v0 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D1F00()
{
  v0 = *(type metadata accessor for FetchRecoverableTLKSharesRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000D2008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v14 = *v6;
  v15 = v6[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = sub_1002166C4(), !v7))
  {
    result = a4(v6, a1, a2, a3);
    if (!v7)
    {
      a5(v6, a1, a2, a3);
      v18 = v6 + *(a6(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D20EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  sub_100019C6C(a1 + *(RecoverableTLKSharesRequest + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000D2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  sub_100019C6C(a1 + *(RecoverableTLKSharesRequest + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D2570@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1000D2674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC18, type metadata accessor for FetchRecoverableTLKSharesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2714(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2780()
{
  sub_1000F9F28(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);

  return sub_100216644();
}

uint64_t FetchRecoverableTLKSharesResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for FetchRecoverableTLKSharesResponse.View(0), sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View), result = sub_1002166F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchRecoverableTLKSharesResponse(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000D29F0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D2B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC10, type metadata accessor for FetchRecoverableTLKSharesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2BC0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298EA0, type metadata accessor for FetchRecoverableTLKSharesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2C2C()
{
  sub_1000F9F28(&qword_100298EA0, type metadata accessor for FetchRecoverableTLKSharesResponse);

  return sub_100216644();
}

uint64_t sub_1000D2CE8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchRecoverableTLKSharesResponse.View._protobuf_nameMap);
  sub_100002648(v0, static FetchRecoverableTLKSharesResponse.View._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keys";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tlk_shares";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchRecoverableTLKSharesResponse.View.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_100216424();
          sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
          sub_1002165E4();
          break;
        case 2:
          sub_1000D306C();
          break;
        case 1:
          sub_1002165B4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D306C()
{
  v0 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 28);
  type metadata accessor for ViewKeysRecords(0);
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords);
  return sub_1002165F4();
}

uint64_t FetchRecoverableTLKSharesResponse.View.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_1000D324C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
        sub_1002166F4();
      }

      v12 = v3 + *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ViewKeysRecords(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  sub_100019C6C(a1 + *(RecoverableTLKShares + 28), v9, &qword_100297E40, &unk_10021E7D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297E40, &unk_10021E7D0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for ViewKeysRecords);
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for ViewKeysRecords);
}

uint64_t sub_1000D34B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = &_swiftEmptyArrayStorage;
  v4 = &a2[*(a1 + 24)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for ViewKeysRecords(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000D3578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC08, type metadata accessor for FetchRecoverableTLKSharesResponse.View);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D3618(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D3684()
{
  sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View);

  return sub_100216644();
}

uint64_t sub_1000D3728()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchPolicyDocumentsRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchPolicyDocumentsRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keys";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchPolicyDocumentsRequest.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000D3B5C();
          break;
        case 2:
          sub_1000D3AA8();
          break;
        case 1:
          type metadata accessor for PolicyDocumentKey(0);
          sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D3AA8()
{
  v0 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D3B5C()
{
  v0 = *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t FetchPolicyDocumentsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PolicyDocumentKey(0), sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey), result = sub_1002166F4(), !v4))
  {
    result = sub_1000D3D24(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000D3F40(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for FetchPolicyDocumentsRequest(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Metrics(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(a1 + *(PolicyDocumentsRequest + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000D3F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(a1 + *(PolicyDocumentsRequest + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D41D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC00, type metadata accessor for FetchPolicyDocumentsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D42C0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D432C()
{
  sub_1000F9F28(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);

  return sub_100216644();
}

uint64_t sub_1000D448C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_100216534();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1000F9F28(a5, a6);
      sub_1002165E4();
    }
  }

  return result;
}

uint64_t FetchPolicyDocumentsResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PolicyDocumentMapEntry(0), sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry), result = sub_1002166F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchPolicyDocumentsResponse(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000D46C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBF8, type metadata accessor for FetchPolicyDocumentsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D4740(uint64_t *a1, uint64_t a2)
{
  if ((sub_10004F82C(*v2, *a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D4808(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298ED8, type metadata accessor for FetchPolicyDocumentsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4874()
{
  sub_1000F9F28(&qword_100298ED8, type metadata accessor for FetchPolicyDocumentsResponse);

  return sub_100216644();
}

uint64_t sub_1000D4908(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D49DC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetRepairActionRequest._protobuf_nameMap);
  sub_100002648(v0, static GetRepairActionRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "peer_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "requires_escrow_check";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "known_federations";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "perform_cleanup";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "perform_dangling_peer_cleanup";
  *(v19 + 1) = 29;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "update_idms";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "perform_caesar_peer_cleanup";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t GetRepairActionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_2;
        }

        sub_1002165A4();
      }

      else if (result == 1)
      {
        sub_1002165B4();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1000D5990(a1, v5, a2, a3, type metadata accessor for GetRepairActionRequest);
      }

      else
      {
        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for GetRepairActionRequest);
      }
    }

    else if (result == 7 || result == 8 || result == 9)
    {
LABEL_2:
      sub_100216554();
    }
  }
}

uint64_t GetRepairActionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1002166C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_100216664(), !v4))
    {
      if (!*(*(v3 + 24) + 16) || (result = sub_1002166B4(), !v4))
      {
        if (*(v3 + 32) != 1 || (result = sub_100216664(), !v4))
        {
          result = sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for GetRepairActionRequest, 5);
          if (!v4)
          {
            sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for GetRepairActionRequest, 6);
            if (*(v3 + 33) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 34) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 35) == 1)
            {
              sub_100216664();
            }

            v12 = v3 + *(type metadata accessor for GetRepairActionRequest(0) + 44);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D5164@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  v4 = a2 + a1[11];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[12];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[13];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000D527C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBF0, type metadata accessor for GetRepairActionRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D531C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D710, type metadata accessor for GetRepairActionRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D5388()
{
  sub_1000F9F28(&unk_10029D710, type metadata accessor for GetRepairActionRequest);

  return sub_100216644();
}

uint64_t sub_1000D542C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetEscrowCheckRequest._protobuf_nameMap);
  sub_100002648(v0, static GetEscrowCheckRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "peer_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_background_check";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "passcode_generation";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "known_federations";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "disable_with_error";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "disable_repair";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "requires_escrow_check";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t GetEscrowCheckRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1002165D4();
        }

        else
        {
          sub_1002165A4();
        }
      }

      else if (result == 1)
      {
        sub_1002165B4();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1000D5990(a1, v5, a2, a3, type metadata accessor for GetEscrowCheckRequest);
      }

      else
      {
        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for GetEscrowCheckRequest);
      }
    }

    else if (result == 7 || result == 8 || result == 9)
    {
LABEL_2:
      sub_100216554();
    }
  }
}

uint64_t sub_1000D5990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 48);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D5A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 52);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t GetEscrowCheckRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1002166C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_100216664(), !v4))
    {
      if (!*(v3 + 24) || (result = sub_1002166E4(), !v4))
      {
        if (!*(*(v3 + 32) + 16) || (result = sub_1002166B4(), !v4))
        {
          result = sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for GetEscrowCheckRequest, 5);
          if (!v4)
          {
            sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for GetEscrowCheckRequest, 6);
            if (*(v3 + 40) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 41) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 42) == 1)
            {
              sub_100216664();
            }

            v12 = v3 + *(type metadata accessor for GetEscrowCheckRequest(0) + 44);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v21[2] = a6;
  v21[3] = a3;
  v21[5] = a4;
  v21[1] = a2;
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v21 - v11;
  v13 = type metadata accessor for Metrics(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5(0);
  sub_100019C6C(a1 + *(v19 + 48), v12, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000114D4(v12, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v12, v18, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v18, type metadata accessor for Metrics);
}

uint64_t sub_1000D5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v21[2] = a6;
  v21[3] = a3;
  v21[5] = a4;
  v21[1] = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v21 - v11;
  v13 = type metadata accessor for AccountInfo(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5(0);
  sub_100019C6C(a1 + *(v19 + 52), v12, &unk_10029D6F0, &qword_100226B40);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000114D4(v12, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v12, v18, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v18, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D6170@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = &_swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 42) = 0;
  v4 = a2 + a1[11];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[12];
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[13];
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000D628C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBE8, type metadata accessor for GetEscrowCheckRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D632C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6398()
{
  sub_1000F9F28(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest);

  return sub_100216644();
}

uint64_t sub_1000D643C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowProxyFederationMoveRecordRequest._protobuf_nameMap);
  sub_100002648(v0, static EscrowProxyFederationMoveRecordRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "escrow_record_label";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current_federation";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intended_federation";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metrics";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_100216724();
}