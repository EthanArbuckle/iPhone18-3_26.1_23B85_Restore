uint64_t EscrowProxyFederationMoveRecordRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1000D6790();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1002165B4();
    }
  }
}

uint64_t sub_1000D6790()
{
  v0 = *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 32);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t EscrowProxyFederationMoveRecordRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v14 = v3[5];
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (result = sub_1002166C4(), !v4))
      {
        result = sub_1000D6950(v3, a1, a2, a3);
        if (!v4)
        {
          v16 = v3 + *(type metadata accessor for EscrowProxyFederationMoveRecordRequest(0) + 28);
          return sub_1002164B4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_100019C6C(a1 + *(v16 + 32), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000D6BB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  v4 = &a2[*(a1 + 28)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Metrics(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1000D6C48(uint64_t a1, uint64_t a2))()
{
  result = EscrowCheckGraphStatus.rawValue.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1000D6C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBE0, type metadata accessor for EscrowProxyFederationMoveRecordRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D6D3C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6DA8()
{
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest);

  return sub_100216644();
}

uint64_t sub_1000D6E50()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetRepairActionResponse._protobuf_nameMap);
  sub_100002648(v0, static GetRepairActionResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10021E000;
  v4 = v69 + v3;
  v5 = v69 + v3 + v1[14];
  *(v69 + v3) = 1;
  *v5 = "repair_action";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "total_escrow_records";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "collectable_escrow_records";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "collected_escrow_records";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "escrow_record_garbage_collection_enabled";
  *(v15 + 1) = 40;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "total_tlk_shares";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "collectable_tlk_shares";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "collected_tlk_shares";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "tlk_share_garbage_collection_enabled";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "total_peers";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "trusted_peers";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "superfluous_peers";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "peers_cleanedup";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "superfluous_peers_cleanup_enabled";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "duplicate_escrow_records";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "unsetHMACpeers";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "updatedHMACpeers";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "total_device_state_records";
  *(v39 + 1) = 26;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "collectable_device_state_records";
  *(v41 + 1) = 32;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "collected_device_state_records";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "tlk_share_deletion_failed";
  *(v45 + 1) = 25;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "device_state_record_deletion_failed";
  *(v47 + 1) = 35;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "fully_dangling_peers";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "partially_dangling_peers";
  *(v51 + 1) = 24;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "caesar_peers";
  *(v53 + 1) = 12;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "dangling_peers_cleaned_up";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "dangling_peers_cleanup_enabled";
  *(v57 + 1) = 30;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "idms_updated";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "fully_dangling_peer_count_validation_fails";
  *(v61 + 1) = 42;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "partially_dangling_peer_count_validation_fails";
  *(v63 + 1) = 46;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "caesar_peers_cleaned_up";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 33;
  *v67 = "caesar_peers_cleanup_enabled";
  *(v67 + 1) = 28;
  v67[16] = 2;
  v8();
  return sub_100216724();
}

double sub_1000D77BC()
{
  type metadata accessor for GetRepairActionResponse._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 256) = 0;
  *(v0 + 248) = 0;
  qword_100298560 = v0;
  return result;
}

uint64_t GetRepairActionResponse.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v7 = sub_1000F960C(v6);

    *(v1 + v2) = v7;
  }

  return sub_1000D7904();
}

uint64_t sub_1000D7904()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1000D7CFC();
        break;
      case 3:
        sub_1000D7D90();
        break;
      case 4:
        sub_1000D7E14();
        break;
      case 5:
        sub_1000D7E98();
        break;
      case 6:
        sub_1000D7F1C();
        break;
      case 7:
        sub_1000D7FA0();
        break;
      case 8:
        sub_1000D8024();
        break;
      case 9:
        sub_1000D80A8();
        break;
      case 10:
        sub_1000D812C();
        break;
      case 11:
        sub_1000D81B0();
        break;
      case 12:
        sub_1000D8234();
        break;
      case 13:
        sub_1000D82B8();
        break;
      case 14:
        sub_1000D833C();
        break;
      case 15:
        sub_1000D83C0();
        break;
      case 16:
        sub_1000D8444();
        break;
      case 17:
        sub_1000D84C8();
        break;
      case 18:
        sub_1000D854C();
        break;
      case 19:
        sub_1000D85D0();
        break;
      case 20:
        sub_1000D8654();
        break;
      case 21:
        sub_1000D86D8();
        break;
      case 22:
        sub_1000D875C();
        break;
      case 23:
        sub_1000D87E0();
        break;
      case 24:
        sub_1000D8864();
        break;
      case 25:
        sub_1000D88E8();
        break;
      case 26:
        sub_1000D896C();
        break;
      case 27:
        sub_1000D89F0();
        break;
      case 28:
        sub_1000D8A74();
        break;
      case 29:
        sub_1000D8AF8();
        break;
      case 30:
        sub_1000D8B7C();
        break;
      case 31:
        sub_1000D8C00();
        break;
      case 32:
        sub_1000D8C84();
        break;
      case 33:
        sub_1000D8D08();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1000D7CFC()
{
  swift_beginAccess();
  sub_100105EEC();
  sub_100216564();
  return swift_endAccess();
}

uint64_t sub_1000D7D90()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7E14()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7E98()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7F1C()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D7FA0()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8024()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D80A8()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D812C()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D81B0()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8234()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D82B8()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D833C()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D83C0()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8444()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D84C8()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D854C()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D85D0()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8654()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D86D8()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D875C()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D87E0()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8864()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D88E8()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D896C()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D89F0()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8A74()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8AF8()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8B7C()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8C00()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8C84()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8D08()
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8DCC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v5 = *(a1 + 24);
    sub_100105EEC();
    result = sub_100216674();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 32))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 56) == 1)
  {
    result = sub_100216664();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 72))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 88) == 1)
  {
    result = sub_100216664();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 96))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 104))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 112))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 120))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 128) == 1)
  {
    result = sub_100216664();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 136))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 144))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 152))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 160))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 168))
  {
    result = sub_1002166E4();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (!*(a1 + 176) || (result = sub_1002166E4(), !v2))
  {
    swift_beginAccess();
    if (*(a1 + 184) != 1 || (result = sub_100216664(), !v2))
    {
      swift_beginAccess();
      if (*(a1 + 185) != 1 || (result = sub_100216664(), !v2))
      {
        swift_beginAccess();
        if (!*(a1 + 192) || (result = sub_1002166E4(), !v2))
        {
          swift_beginAccess();
          if (!*(a1 + 200) || (result = sub_1002166E4(), !v2))
          {
            swift_beginAccess();
            if (!*(a1 + 208) || (result = sub_1002166E4(), !v2))
            {
              swift_beginAccess();
              if (!*(a1 + 216) || (result = sub_1002166E4(), !v2))
              {
                swift_beginAccess();
                if (*(a1 + 224) != 1 || (result = sub_100216664(), !v2))
                {
                  swift_beginAccess();
                  if (*(a1 + 225) != 1 || (result = sub_100216664(), !v2))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 232) || (result = sub_1002166E4(), !v2))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 240) || (result = sub_1002166E4(), !v2))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 248) || (result = sub_1002166E4(), !v2))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 256) == 1)
                          {
                            return sub_100216664();
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
    }
  }

  return result;
}

uint64_t static GetRepairActionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_1000D9628(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D9628(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v4 == v5)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

    if (v5 == 4)
    {
      if (v4 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

    if (v4 == 5)
    {
      goto LABEL_8;
    }

LABEL_50:
    v37 = 0;
    return v37 & 1;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  if (v5 == 1)
  {
    if (v4 != 1)
    {
      goto LABEL_50;
    }
  }

  else if (v4 != 2)
  {
    goto LABEL_50;
  }

LABEL_8:
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  if (v8 != *(a2 + 48))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  swift_beginAccess();
  if (v9 != *(a2 + 56))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v10 = *(a1 + 64);
  swift_beginAccess();
  if (v10 != *(a2 + 64))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v11 = *(a1 + 72);
  swift_beginAccess();
  if (v11 != *(a2 + 72))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v12 = *(a1 + 80);
  swift_beginAccess();
  if (v12 != *(a2 + 80))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v13 = *(a1 + 88);
  swift_beginAccess();
  if (v13 != *(a2 + 88))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v14 = *(a1 + 96);
  swift_beginAccess();
  if (v14 != *(a2 + 96))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v15 = *(a1 + 104);
  swift_beginAccess();
  if (v15 != *(a2 + 104))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v16 = *(a1 + 112);
  swift_beginAccess();
  if (v16 != *(a2 + 112))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v17 = *(a1 + 120);
  swift_beginAccess();
  if (v17 != *(a2 + 120))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v18 = *(a1 + 128);
  swift_beginAccess();
  if (v18 != *(a2 + 128))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v19 = *(a1 + 136);
  swift_beginAccess();
  if (v19 != *(a2 + 136))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v20 = *(a1 + 144);
  swift_beginAccess();
  if (v20 != *(a2 + 144))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v21 = *(a1 + 152);
  swift_beginAccess();
  if (v21 != *(a2 + 152))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v22 = *(a1 + 160);
  swift_beginAccess();
  if (v22 != *(a2 + 160))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v23 = *(a1 + 168);
  swift_beginAccess();
  if (v23 != *(a2 + 168))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v24 = *(a1 + 176);
  swift_beginAccess();
  if (v24 != *(a2 + 176))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v25 = *(a1 + 184);
  swift_beginAccess();
  if (v25 != *(a2 + 184))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v26 = *(a1 + 185);
  swift_beginAccess();
  if (v26 != *(a2 + 185))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v27 = *(a1 + 192);
  swift_beginAccess();
  if (v27 != *(a2 + 192))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v28 = *(a1 + 200);
  swift_beginAccess();
  if (v28 != *(a2 + 200))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v29 = *(a1 + 208);
  swift_beginAccess();
  if (v29 != *(a2 + 208))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v30 = *(a1 + 216);
  swift_beginAccess();
  if (v30 != *(a2 + 216))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v31 = *(a1 + 224);
  swift_beginAccess();
  if (v31 != *(a2 + 224))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v32 = *(a1 + 225);
  swift_beginAccess();
  if (v32 != *(a2 + 225))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v33 = *(a1 + 232);
  swift_beginAccess();
  if (v33 != *(a2 + 232))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v34 = *(a1 + 240);
  swift_beginAccess();
  if (v34 != *(a2 + 240))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v35 = *(a1 + 248);
  swift_beginAccess();
  if (v35 != *(a2 + 248))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v36 = *(a1 + 256);
  swift_beginAccess();
  v37 = v36 ^ *(a2 + 256) ^ 1;
  return v37 & 1;
}

uint64_t sub_1000D9E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBD8, type metadata accessor for GetRepairActionResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D9F14(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F30, type metadata accessor for GetRepairActionResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D9F80()
{
  sub_1000F9F28(&qword_100298F30, type metadata accessor for GetRepairActionResponse);

  return sub_100216644();
}

uint64_t sub_1000D9FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (sub_1000D9628(v4, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000DA0D0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetEscrowCheckResponse._protobuf_nameMap);
  sub_100002648(v0, static GetEscrowCheckResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "escrow_check_result";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "escrow_record_move_request";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "escrow_proxy_error";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "escrow_repair_reason";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "graph_status";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "repair_disabled";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t GetEscrowCheckResponse.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            sub_1000FA0E0();
            goto LABEL_5;
          case 5:
            v3 = v0;
            sub_1000FA134();
            goto LABEL_5;
          case 6:
            goto LABEL_16;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_1000FA08C();
LABEL_5:
          v0 = v3;
          sub_100216564();
          goto LABEL_6;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_6;
          }

LABEL_16:
          sub_100216554();
          goto LABEL_6;
        }

        sub_1000DA534();
      }

LABEL_6:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DA534()
{
  v0 = *(type metadata accessor for GetEscrowCheckResponse(0) + 40);
  type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  return sub_1002165F4();
}

uint64_t GetEscrowCheckResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v13 = *(v3 + 8), sub_1000FA08C(), result = sub_100216674(), !v4))
  {
    result = sub_1000DA7A0(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 9) == 1)
      {
        sub_100216664();
      }

      if (*(v3 + 16))
      {
        v11 = *(v3 + 16);
        v14 = *(v3 + 24);
        sub_1000FA0E0();
        sub_100216674();
      }

      if (*(v3 + 32))
      {
        v12 = *(v3 + 32);
        v15 = *(v3 + 40);
        sub_1000FA134();
        sub_100216674();
      }

      if (*(v3 + 41) == 1)
      {
        sub_100216664();
      }

      v9 = v3 + *(type metadata accessor for GetEscrowCheckResponse(0) + 36);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000DA7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GetEscrowCheckResponse(0);
  sub_100019C6C(a1 + *(v16 + 40), v9, &unk_10029D720, &qword_10021E868);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D720, &qword_10021E868);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
}

uint64_t sub_1000DAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = a2 + *(a1 + 36);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000DAAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBD0, type metadata accessor for GetEscrowCheckResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DAB74(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F48, type metadata accessor for GetEscrowCheckResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DABE0()
{
  sub_1000F9F28(&qword_100298F48, type metadata accessor for GetEscrowCheckResponse);

  return sub_100216644();
}

uint64_t sub_1000DAC8C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppView._protobuf_nameMap);
  sub_100002648(v0, static SupportAppView._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_report";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "enabled";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t SupportAppView.decodeMessage<A>(decoder:)()
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
        sub_100216554();
        break;
      case 2:
        sub_1000DAFA0();
        break;
      case 1:
        sub_1002165B4();
        break;
    }
  }

  return result;
}

uint64_t sub_1000DAFA0()
{
  v0 = *(type metadata accessor for SupportAppView(0) + 28);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t SupportAppView.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_1000DB128(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_100216664();
      }

      v12 = v3 + *(type metadata accessor for SupportAppView(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000DB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for SupportAppView(0);
  sub_100019C6C(a1 + *(v16 + 28), v9, &qword_10029D780, &qword_1002265D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D780, &qword_1002265D0);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000DB390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 28);
  v6 = sub_1002164A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000DB44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBC8, type metadata accessor for SupportAppView);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DB4EC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB558()
{
  sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView);

  return sub_100216644();
}

uint64_t sub_1000DB5FC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppDevice._protobuf_nameMap);
  sub_100002648(v0, static SupportAppDevice._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D5F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "sos";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "octagon";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "escrow";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "serial_number";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "views";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "last_health_report";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "model_id";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t SupportAppDevice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        if (result > 6)
        {
          if (result != 7)
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            goto LABEL_19;
          }

          sub_1000FA188();
          sub_100216564();
        }

        else if (result == 5)
        {
          type metadata accessor for SupportAppView(0);
          sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView);
          sub_1002165E4();
        }

        else
        {
          sub_1000DBB68(a1, v5, a2, a3, type metadata accessor for SupportAppDevice);
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

LABEL_19:
          sub_1002165B4();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_100216554();
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DBB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 48);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t SupportAppDevice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_100216664(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_100216664(), !v4))
    {
      if (*(v3 + 2) != 1 || (result = sub_100216664(), !v4))
      {
        v9 = *(v3 + 16);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
        }

        if (!v10 || (result = sub_1002166C4(), !v4))
        {
          if (!*(*(v3 + 24) + 16) || (type metadata accessor for SupportAppView(0), sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView), result = sub_1002166F4(), !v4))
          {
            result = sub_1000DF788(v3, a1, a2, a3, type metadata accessor for SupportAppDevice, 6);
            if (!v4)
            {
              if (*(v3 + 32))
              {
                v14 = *(v3 + 32);
                v15 = *(v3 + 40);
                sub_1000FA188();
                sub_100216674();
              }

              v11 = *(v3 + 56);
              v12 = HIBYTE(v11) & 0xF;
              if ((v11 & 0x2000000000000000) == 0)
              {
                v12 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
              }

              if (v12)
              {
                sub_1002166C4();
              }

              v13 = v3 + *(type metadata accessor for SupportAppDevice(0) + 44);
              return sub_1002164B4();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DBEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v4 = a2 + *(a1 + 44);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 48);
  v6 = sub_1002164A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000DBF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBC0, type metadata accessor for SupportAppDevice);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DC024(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC090()
{
  sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice);

  return sub_100216644();
}

uint64_t sub_1000DC134()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetSupportAppInfoRequest._protobuf_nameMap);
  sub_100002648(v0, static GetSupportAppInfoRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "page";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t GetSupportAppInfoRequest.decodeMessage<A>(decoder:)()
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
        sub_1002165D4();
        break;
      case 2:
        sub_1000DC4F8();
        break;
      case 1:
        sub_1000DC444();
        break;
    }
  }

  return result;
}

uint64_t sub_1000DC444()
{
  v0 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000DC4F8()
{
  v0 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t GetSupportAppInfoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000DC660(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000DC87C(v3, a1, a2, a3);
    if (*v3)
    {
      sub_1002166E4();
    }

    v9 = v3 + *(type metadata accessor for GetSupportAppInfoRequest(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000DC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  sub_100019C6C(a1 + *(SupportAppInfoRequest + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000DC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  sub_100019C6C(a1 + *(SupportAppInfoRequest + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000DCAEC@<X0>(int *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  *a3 = a2;
  v5 = &a3[a1[5]];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v6 = a1[6];
  v7 = type metadata accessor for Metrics(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a3[v8], 1, 1, v9);
}

uint64_t sub_1000DCBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBB8, type metadata accessor for GetSupportAppInfoRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DCC8C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCCF8()
{
  sub_1000F9F28(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest);

  return sub_100216644();
}

uint64_t sub_1000DCD9C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetSupportAppInfoResponse._protobuf_nameMap);
  sub_100002648(v0, static GetSupportAppInfoResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "devices";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "passwordKeychainItemCount";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalDevices";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "paginationToken";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "more";
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t GetSupportAppInfoResponse.decodeMessage<A>(decoder:)()
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
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_1002165D4();
          goto LABEL_5;
        }

        type metadata accessor for SupportAppDevice(0);
        sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice);
        sub_1002165E4();
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            sub_1002165B4();
            break;
          case 5:
            sub_100216554();
            break;
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t GetSupportAppInfoResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SupportAppDevice(0), sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice), result = sub_1002166F4(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_1002166E4(), !v1))
    {
      if (!*(v0 + 16) || (result = sub_1002166E4(), !v1))
      {
        v3 = *(v0 + 32);
        v4 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v4 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
        }

        if (!v4 || (result = sub_1002166C4(), !v1))
        {
          if (*(v0 + 40) != 1 || (result = sub_100216664(), !v1))
          {
            v5 = v0 + *(type metadata accessor for GetSupportAppInfoResponse(0) + 36);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DD390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 36);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000DD3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBB0, type metadata accessor for GetSupportAppInfoResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DD49C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD508()
{
  sub_1000F9F28(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse);

  return sub_100216644();
}

uint64_t sub_1000DD5B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100216744();
  sub_1000025E4(v3, a2);
  sub_100002648(v3, a2);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v4 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021DFC0;
  v7 = v23 + v6 + v4[14];
  *(v23 + v6) = 1;
  *v7 = "reset_reason";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = enum case for _NameMap.NameDescription.standard(_:);
  v9 = sub_100216714();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v23 + v6 + v5 + v4[14];
  *(v23 + v6 + v5) = 2;
  *v11 = "idmsTargetContext";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v10();
  v12 = (v23 + v6 + 2 * v5);
  v13 = v12 + v4[14];
  *v12 = 3;
  *v13 = "idmsCuttlefishPassword";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v23 + v6 + 3 * v5);
  v15 = v14 + v4[14];
  *v14 = 4;
  *v15 = "testingNotifyIdms";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v10();
  v16 = (v23 + v6 + 4 * v5);
  v17 = v16 + v4[14];
  *v16 = 5;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v10();
  v18 = (v23 + v6 + 5 * v5);
  v19 = v18 + v4[14];
  *v18 = 6;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v10();
  v20 = (v23 + v6 + 6 * v5);
  v21 = v20 + v4[14];
  *v20 = 8;
  *v21 = "isDBRv2";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v10();
  return sub_100216724();
}

uint64_t sub_1000DD944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = sub_100216534();
  if (!v6)
  {
    while (1)
    {
      if (v14)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_1000F9FC4();
          sub_100216564();
        }

        else if (result == 2 || result == 3)
        {
          sub_1002165B4();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            a4(a1, v9, a2, a3);
            goto LABEL_5;
          }

LABEL_17:
          sub_100216554();
          goto LABEL_5;
        }

        if (result != 6)
        {
          if (result != 8)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }

        a5(a1, v9, a2, a3);
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DDAB0()
{
  v0 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000DDB64()
{
  v0 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 44);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000DDC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  if (!*v6 || (v20 = *v6, v21 = *(v6 + 8), sub_1000F9FC4(), result = sub_100216674(), !v7))
  {
    v15 = v6[3];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_1002166C4(), !v7))
    {
      v17 = v6[5];
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v6[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (result = sub_1002166C4(), !v7))
      {
        if (*(v6 + 48) != 1 || (result = sub_100216664(), !v7))
        {
          result = a4(v6, a1, a2, a3);
          if (!v7)
          {
            a5(v6, a1, a2, a3);
            if (*(v6 + 49) == 1)
            {
              sub_100216664();
            }

            v19 = v6 + *(a6(0) + 36);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DDE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for ResetAccountCDPContentsRequest(0);
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

uint64_t sub_1000DE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for ResetAccountCDPContentsRequest(0);
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

uint64_t sub_1000DE2D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  v4 = a2 + a1[9];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[10];
  v6 = type metadata accessor for AccountInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[11];
  v8 = type metadata accessor for Metrics(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000DE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DE434(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000DE4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBA8, type metadata accessor for ResetAccountCDPContentsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE578(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DE5E4()
{
  sub_1000F9F28(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest);

  return sub_100216644();
}

uint64_t sub_1000DE724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBA0, type metadata accessor for ResetAccountCDPContentsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE7C4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FC0, type metadata accessor for ResetAccountCDPContentsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DE830()
{
  sub_1000F9F28(&qword_100298FC0, type metadata accessor for ResetAccountCDPContentsResponse);

  return sub_100216644();
}

uint64_t sub_1000DE8EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100216744();
  sub_1000025E4(v7, a2);
  sub_100002648(v7, a2);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v8 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10021D600;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = sub_100216714();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_100216724();
}

uint64_t PasscodeGeneration.decodeMessage<A>(decoder:)()
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
  }

  return result;
}

uint64_t PasscodeGeneration.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1002166E4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PasscodeGeneration(0) + 20);
    return sub_1002164B4();
  }

  return result;
}

uint64_t static PasscodeGeneration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for PasscodeGeneration(0) + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000DEC88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000DECDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB98, type metadata accessor for PasscodeGeneration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DED7C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DEDE8()
{
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration);

  return sub_100216644();
}

uint64_t sub_1000DEE64(void *a1, void *a2, uint64_t a3)
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

uint64_t sub_1000DEF30()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "creation_date";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "remaining_attempts";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "escrow_information_metadata";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "label";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 9;
  *v15 = "silent_attempt_allowed";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 10;
  *v17 = "record_status";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "viability_status";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 12;
  *v21 = "federation_id";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "expected_federation_id";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t EscrowInformation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 8)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1000DBB68(a1, v5, a2, a3, type metadata accessor for EscrowInformation);
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_26:
          sub_1002165D4();
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1000DF4B4();
        }

        else if (result == 4)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result <= 10)
        {
          if (result != 9)
          {
            v11 = v4;
            sub_1000FA1FC();
LABEL_25:
            v4 = v11;
            sub_100216564();
            goto LABEL_5;
          }

          goto LABEL_26;
        }

        if (result == 11)
        {
          v11 = v4;
          sub_1000FA250();
          goto LABEL_25;
        }

        if (result == 12 || result == 13)
        {
LABEL_4:
          sub_1002165B4();
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DF4B4()
{
  v0 = *(type metadata accessor for EscrowInformation(0) + 52);
  type metadata accessor for EscrowInformation.Metadata(0);
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata);
  return sub_1002165F4();
}

uint64_t EscrowInformation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000DF788(v3, a1, a2, a3, type metadata accessor for EscrowInformation, 1);
  if (!v4)
  {
    if (*v3)
    {
      sub_1002166E4();
    }

    sub_1000DF9AC(v3, a1, a2, a3);
    v9 = *(v3 + 16);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1002166C4();
    }

    if (*(v3 + 24))
    {
      sub_1002166E4();
    }

    if (*(v3 + 32))
    {
      v16 = *(v3 + 32);
      v18 = *(v3 + 40);
      sub_1000FA1FC();
      sub_100216674();
    }

    if (*(v3 + 48))
    {
      v17 = *(v3 + 48);
      v19 = *(v3 + 56);
      sub_1000FA250();
      sub_100216674();
    }

    v11 = *(v3 + 72);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1002166C4();
    }

    v13 = *(v3 + 88);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v3 + 80) & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1002166C4();
    }

    v15 = v3 + *(type metadata accessor for EscrowInformation(0) + 44);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000DF788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v21[2] = a6;
  v21[3] = a3;
  v21[5] = a4;
  v21[1] = a2;
  v8 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v21 - v11;
  v13 = sub_1002164A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5(0);
  sub_100019C6C(a1 + *(v19 + 48), v12, &qword_10029D780, &qword_1002265D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000114D4(v12, &qword_10029D780, &qword_1002265D0);
  }

  (*(v14 + 32))(v18, v12, v13);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1000DF9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for EscrowInformation.Metadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(a1 + *(v16 + 52), v9, &unk_10029DAA0, &qword_10021E870);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029DAA0, &qword_10021E870);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for EscrowInformation.Metadata);
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for EscrowInformation.Metadata);
}

uint64_t sub_1000DFC14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  v4 = a2 + a1[11];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = a1[12];
  v6 = sub_1002164A4();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[13];
  v8 = type metadata accessor for EscrowInformation.Metadata(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1000DFD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DFD7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000DFE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB90, type metadata accessor for EscrowInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DFEC0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DFF2C()
{
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation);

  return sub_100216644();
}

uint64_t sub_1000DFFD0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation.Metadata._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation.Metadata._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10021E010;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "backup_keybag_digest";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client_metadata";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "secure_backup_uses_multiple_icscs";
  *(v11 + 1) = 33;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bottle_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "secure_backup_timestamp";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "escrowed_spki";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "peer_info";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "serial";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "build";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "passcodeGeneration";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000E03E4()
{
  v0 = type metadata accessor for EscrowInformation.Metadata._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000E0424();
  qword_100298568 = result;
  return result;
}

uint64_t sub_1000E0424()
{
  *(v0 + 16) = xmmword_10021D470;
  v1 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v2 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs) = 0;
  v3 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v5 = sub_1002164A4();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki) = xmmword_10021D470;
  *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo) = xmmword_10021D470;
  v6 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  v9 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  return v0;
}

uint64_t sub_1000E0598(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v79 = &v70 - v7;
  v8 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v75 = &v70 - v11;
  v12 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v71 = &v70 - v15;
  v78 = xmmword_10021D470;
  *(v1 + 16) = xmmword_10021D470;
  v16 = (v1 + 16);
  v17 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v70 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  v18 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v72 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs) = 0;
  v19 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v73 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  v21 = sub_1002164A4();
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v22 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  v23 = v78;
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki) = v78;
  v74 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  *(v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo) = v23;
  v24 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  v76 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  v77 = (v2 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  *&v78 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  v27 = type metadata accessor for PasscodeGeneration(0);
  (*(*(v27 - 8) + 56))(v2 + v26, 1, 1, v27);
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  v30 = *v16;
  v31 = *(v2 + 24);
  *v16 = v28;
  *(v2 + 24) = v29;
  sub_100012558(v28, v29);
  sub_100002BF0(v30, v31);
  v32 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v33 = v71;
  sub_100019C6C(a1 + v32, v71, &qword_100298660, &qword_10021E878);
  v34 = v70;
  swift_beginAccess();
  sub_1000F9E80(v33, v2 + v34, &qword_100298660, &qword_10021E878);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v72;
  swift_beginAccess();
  *(v2 + v37) = v36;
  v38 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  swift_beginAccess();
  v41 = v19[1];
  *v19 = v40;
  v19[1] = v39;

  v42 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v43 = v75;
  sub_100019C6C(a1 + v42, v75, &qword_10029D780, &qword_1002265D0);
  v44 = v73;
  swift_beginAccess();
  sub_1000F9E80(v43, v2 + v44, &qword_10029D780, &qword_1002265D0);
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  swift_beginAccess();
  v48 = *v22;
  v49 = v22[1];
  *v22 = v47;
  v22[1] = v46;
  sub_100012558(v47, v46);
  sub_100002BF0(v48, v49);
  v50 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v74;
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  *v53 = v52;
  v53[1] = v51;
  sub_100012558(v52, v51);
  sub_100002BF0(v54, v55);
  v56 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v76;
  swift_beginAccess();
  v60 = v59[1];
  *v59 = v58;
  v59[1] = v57;

  v61 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  v64 = v77;
  swift_beginAccess();
  v65 = v64[1];
  *v64 = v63;
  v64[1] = v62;

  v66 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v67 = v79;
  sub_100019C6C(a1 + v66, v79, &qword_1002986A8, &qword_10021E880);

  v68 = v78;
  swift_beginAccess();
  sub_1000F9E80(v67, v2 + v68, &qword_1002986A8, &qword_10021E880);
  swift_endAccess();
  return v2;
}

uint64_t sub_1000E0BF0()
{
  sub_100002BF0(*(v0 + 16), *(v0 + 24));
  sub_1000114D4(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata, &qword_100298660, &qword_10021E878);
  v1 = *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID + 8);

  sub_1000114D4(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp, &qword_10029D780, &qword_1002265D0);
  sub_100002BF0(*(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki), *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki + 8));
  sub_100002BF0(*(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo), *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo + 8));
  v2 = *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial + 8);

  v3 = *(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build + 8);

  sub_1000114D4(v0 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration, &qword_1002986A8, &qword_10021E880);
  return v0;
}

uint64_t sub_1000E0CEC(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v16 = &dispatch thunk of Decoder.decodeSingularBytesField(value:);
          if (result == 6)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial;
LABEL_5:
            sub_1000E1300(v11, v12, v13, v14, v15, v16);
            break;
          case 9:
            v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build;
            goto LABEL_5;
          case 10:
            sub_1000E1398();
            break;
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularBytesField(value:));
        }

        else if (result == 2)
        {
          sub_1000E10BC();
        }
      }

      else if (result == 3)
      {
        sub_1000E1198();
      }

      else
      {
        if (result == 4)
        {
          v16 = &dispatch thunk of Decoder.decodeSingularStringField(value:);
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID;
          goto LABEL_5;
        }

        sub_1000E1224();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1000E10BC()
{
  swift_beginAccess();
  type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000E1198()
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000E1224()
{
  swift_beginAccess();
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000E1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1000E1398()
{
  swift_beginAccess();
  type metadata accessor for PasscodeGeneration(0);
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000E14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    if (v9 == v9 >> 32)
    {
      goto LABEL_10;
    }
  }

  else if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  sub_100012558(*(a1 + 16), *(a1 + 24));
  sub_100216684();
  result = sub_100002BF0(v9, v10);
  if (v4)
  {
    return result;
  }

LABEL_10:
  result = sub_1000E18E0(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v13 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  if (*(a1 + v13))
  {
    sub_1002166E4();
  }

  v14 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v15 = *v14;
  v14[1];

  sub_1002166C4();

  sub_1000E1B08(a1, a2, a3, a4);
  v16 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_23;
    }

    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
LABEL_21:
    if (v20 == v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v19)
  {
    v20 = v17;
    v21 = v17 >> 32;
    goto LABEL_21;
  }

  if ((v18 & 0xFF000000000000) != 0)
  {
LABEL_22:
    sub_100012558(v17, v18);
    sub_100216684();
    sub_100002BF0(v17, v18);
  }

LABEL_23:
  v22 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_32;
    }

    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
  }

  else
  {
    if (!v25)
    {
      if ((v24 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v26 = v23;
    v27 = v23 >> 32;
  }

  if (v26 != v27)
  {
LABEL_31:
    sub_100012558(v23, v24);
    sub_100216684();
    sub_100002BF0(v23, v24);
  }

LABEL_32:
  v28 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_1002166C4();
  }

  v32 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v33 = *v32;
  v32[1];

  sub_1002166C4();

  return sub_1000E1D30(a1, a2, a3, a4);
}

uint64_t sub_1000E18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_100298660, &qword_10021E878);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100298660, &qword_10021E878);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
}

uint64_t sub_1000E1B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_1002164A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_10029D780, &qword_1002265D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D780, &qword_1002265D0);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000E1D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v5 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PasscodeGeneration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  sub_100019C6C(a1 + v16, v9, &qword_1002986A8, &qword_10021E880);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_1002986A8, &qword_10021E880);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for PasscodeGeneration);
  sub_1000F9F28(&qword_100298FD8, type metadata accessor for PasscodeGeneration);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for PasscodeGeneration);
}

BOOL sub_1000E1F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasscodeGeneration(0);
  v124 = *(v4 - 8);
  v125 = v4;
  v5 = *(v124 + 64);
  __chkstk_darwin(v4, v6);
  v121 = (&v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_10001148C(&qword_10029CDA0, &qword_100225D20);
  v8 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123, v9);
  v126 = &v121 - v10;
  v11 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v122 = (&v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v16);
  v127 = &v121 - v17;
  v133 = sub_1002164A4();
  v131 = *(v133 - 8);
  v18 = *(v131 + 64);
  __chkstk_darwin(v133, v19);
  v128 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v21 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130, v22);
  v132 = &v121 - v23;
  v24 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v25 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24 - 8, v26);
  v129 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v134 = &v121 - v30;
  v31 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v138 = *(v31 - 8);
  v139 = v31;
  v32 = *(v138 + 64);
  __chkstk_darwin(v31, v33);
  v135 = (&v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_10001148C(&qword_10029CDA8, &qword_100225D28);
  v35 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137, v36);
  v38 = &v121 - v37;
  v39 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v40 = *(*(v39 - 8) + 64);
  v42 = __chkstk_darwin(v39 - 8, v41);
  v136 = (&v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42, v44);
  v46 = &v121 - v45;
  swift_beginAccess();
  v48 = *(a1 + 16);
  v47 = *(a1 + 24);
  swift_beginAccess();
  v49 = *(a2 + 16);
  v50 = *(a2 + 24);

  sub_100012558(v48, v47);
  sub_100012558(v49, v50);
  v51 = sub_100052F18(v48, v47, v49, v50);
  sub_100002BF0(v49, v50);
  sub_100002BF0(v48, v47);
  if ((v51 & 1) == 0)
  {
    goto LABEL_34;
  }

  v52 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(a1 + v52, v46, &qword_100298660, &qword_10021E878);
  v53 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v54 = *(v137 + 48);
  sub_100019C6C(v46, v38, &qword_100298660, &qword_10021E878);
  sub_100019C6C(a2 + v53, &v38[v54], &qword_100298660, &qword_10021E878);
  v55 = v139;
  v56 = *(v138 + 48);
  v57 = a2;
  if (v56(v38, 1, v139) == 1)
  {
    sub_1000114D4(v46, &qword_100298660, &qword_10021E878);
    if (v56(&v38[v54], 1, v55) == 1)
    {
      sub_1000114D4(v38, &qword_100298660, &qword_10021E878);
      goto LABEL_11;
    }

LABEL_8:
    v59 = &qword_10029CDA8;
    v60 = &qword_100225D28;
LABEL_9:
    sub_1000114D4(v38, v59, v60);
    goto LABEL_34;
  }

  v58 = v136;
  sub_100019C6C(v38, v136, &qword_100298660, &qword_10021E878);
  if (v56(&v38[v54], 1, v55) == 1)
  {
    sub_1000114D4(v46, &qword_100298660, &qword_10021E878);
    sub_1000F9228(v58, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    goto LABEL_8;
  }

  v61 = v135;
  sub_1000F89AC(&v38[v54], v135, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v62 = _s18TrustedPeersHelper17EscrowInformationV8MetadataV06ClientF0V2eeoiySbAG_AGtFZ_0(v58, v61);
  sub_1000F9228(v61, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000114D4(v46, &qword_100298660, &qword_10021E878);
  sub_1000F9228(v58, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  sub_1000114D4(v38, &qword_100298660, &qword_10021E878);
  if ((v62 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_11:
  v63 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v64 = *(a1 + v63);
  v65 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  if (v64 != *(v57 + v65))
  {
    goto LABEL_34;
  }

  v66 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = (v57 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  if ((v67 != *v69 || v68 != v69[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v70 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v71 = v57;
  v72 = v134;
  sub_100019C6C(a1 + v70, v134, &qword_10029D780, &qword_1002265D0);
  v73 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v74 = *(v130 + 48);
  v38 = v132;
  sub_100019C6C(v72, v132, &qword_10029D780, &qword_1002265D0);
  v139 = v71;
  sub_100019C6C(v71 + v73, &v38[v74], &qword_10029D780, &qword_1002265D0);
  v75 = v131;
  v76 = *(v131 + 48);
  v77 = v133;
  if (v76(v38, 1, v133) != 1)
  {
    v80 = v129;
    sub_100019C6C(v38, v129, &qword_10029D780, &qword_1002265D0);
    if (v76(&v38[v74], 1, v77) != 1)
    {
      v81 = v128;
      (*(v75 + 32))(v128, &v38[v74], v77);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
      LODWORD(v138) = sub_100216954();
      v82 = *(v75 + 8);
      v82(v81, v77);
      sub_1000114D4(v134, &qword_10029D780, &qword_1002265D0);
      v82(v80, v77);
      sub_1000114D4(v38, &qword_10029D780, &qword_1002265D0);
      v79 = v139;
      if (v138)
      {
        goto LABEL_22;
      }

LABEL_34:

      return 0;
    }

    sub_1000114D4(v134, &qword_10029D780, &qword_1002265D0);
    (*(v75 + 8))(v80, v77);
    goto LABEL_20;
  }

  sub_1000114D4(v72, &qword_10029D780, &qword_1002265D0);
  v78 = v76(&v38[v74], 1, v77);
  v79 = v139;
  if (v78 != 1)
  {
LABEL_20:
    v59 = &qword_100297E30;
    v60 = &qword_10021DA38;
    goto LABEL_9;
  }

  sub_1000114D4(v38, &qword_10029D780, &qword_1002265D0);
LABEL_22:
  v83 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];
  v86 = (v79 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];
  sub_100012558(v85, v84);
  sub_100012558(v88, v87);
  v89 = sub_100052F18(v85, v84, v88, v87);
  sub_100002BF0(v88, v87);
  sub_100002BF0(v85, v84);
  if ((v89 & 1) == 0)
  {
    goto LABEL_34;
  }

  v90 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = (v79 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo);
  swift_beginAccess();
  v95 = *v93;
  v94 = v93[1];
  sub_100012558(v92, v91);
  sub_100012558(v95, v94);
  v96 = sub_100052F18(v92, v91, v95, v94);
  sub_100002BF0(v95, v94);
  sub_100002BF0(v92, v91);
  if ((v96 & 1) == 0)
  {
    goto LABEL_34;
  }

  v97 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = (v79 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial);
  swift_beginAccess();
  if ((v98 != *v100 || v99 != v100[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v101 = (a1 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (v79 + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build);
  swift_beginAccess();
  if ((v102 != *v104 || v103 != v104[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v105 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v106 = v127;
  sub_100019C6C(a1 + v105, v127, &qword_1002986A8, &qword_10021E880);
  v107 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v108 = *(v123 + 48);
  v109 = v126;
  sub_100019C6C(v106, v126, &qword_1002986A8, &qword_10021E880);
  sub_100019C6C(v79 + v107, v109 + v108, &qword_1002986A8, &qword_10021E880);
  v110 = v125;
  v111 = *(v124 + 48);
  if (v111(v109, 1, v125) == 1)
  {

    sub_1000114D4(v106, &qword_1002986A8, &qword_10021E880);
    if (v111(v109 + v108, 1, v110) == 1)
    {
      sub_1000114D4(v109, &qword_1002986A8, &qword_10021E880);
      return 1;
    }

    goto LABEL_38;
  }

  v113 = v122;
  sub_100019C6C(v109, v122, &qword_1002986A8, &qword_10021E880);
  if (v111(v109 + v108, 1, v110) == 1)
  {

    sub_1000114D4(v127, &qword_1002986A8, &qword_10021E880);
    sub_1000F9228(v113, type metadata accessor for PasscodeGeneration);
LABEL_38:
    v114 = &qword_10029CDA0;
    v115 = &qword_100225D20;
    v116 = v109;
LABEL_39:
    sub_1000114D4(v116, v114, v115);
    return 0;
  }

  v117 = v109 + v108;
  v118 = v121;
  sub_1000F89AC(v117, v121, type metadata accessor for PasscodeGeneration);
  if (*v113 != *v118)
  {

    sub_1000F9228(v118, type metadata accessor for PasscodeGeneration);
    sub_1000114D4(v127, &qword_1002986A8, &qword_10021E880);
    sub_1000F9228(v113, type metadata accessor for PasscodeGeneration);
    v116 = v109;
    v114 = &qword_1002986A8;
    v115 = &qword_10021E880;
    goto LABEL_39;
  }

  v119 = *(v110 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v120 = sub_100216954();

  sub_1000F9228(v118, type metadata accessor for PasscodeGeneration);
  sub_1000114D4(v127, &qword_1002986A8, &qword_10021E880);
  sub_1000F9228(v113, type metadata accessor for PasscodeGeneration);
  sub_1000114D4(v109, &qword_1002986A8, &qword_10021E880);
  return (v120 & 1) != 0;
}

uint64_t sub_1000E2F60@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1000E300C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB88, type metadata accessor for EscrowInformation.Metadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E30AC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E3118()
{
  sub_1000F9F28(&qword_100299000, type metadata accessor for EscrowInformation.Metadata);

  return sub_100216644();
}

void sub_1000E3194()
{
  v0._countAndFlagsBits = 0x4D746E65696C432ELL;
  v0._object = 0xEF61746164617465;
  sub_100216A14(v0);
  static EscrowInformation.Metadata.ClientMetadata.protoMessageName = 0xD00000000000001ALL;
  unk_1002B09C0 = 0x80000001002393B0;
}

uint64_t *EscrowInformation.Metadata.ClientMetadata.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002974C0 != -1)
  {
    swift_once();
  }

  return &static EscrowInformation.Metadata.ClientMetadata.protoMessageName;
}

uint64_t static EscrowInformation.Metadata.ClientMetadata.protoMessageName.getter()
{
  if (qword_1002974C0 != -1)
  {
    swift_once();
  }

  v0 = static EscrowInformation.Metadata.ClientMetadata.protoMessageName;

  return v0;
}

uint64_t sub_1000E32C4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowInformation.Metadata.ClientMetadata._protobuf_nameMap);
  sub_100002648(v0, static EscrowInformation.Metadata.ClientMetadata._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021E020;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "secure_backup_metadata_timestamp";
  *(v5 + 8) = 32;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "secure_backup_numeric_passphrase_length";
  *(v9 + 8) = 39;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "secure_backup_uses_complex_passphrase";
  *(v11 + 1) = 37;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "secure_backup_uses_numeric_passphrase";
  *(v13 + 1) = 37;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "device_color";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "device_enclosure_color";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "device_mid";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "device_model";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "device_model_class";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "device_model_version";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "device_name";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "device_platform";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_100216534();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result < 12)
      {
        goto LABEL_2;
      }

      if (result == 12)
      {
        goto LABEL_18;
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_18;
      }

LABEL_2:
      sub_1002165B4();
    }

    else if (result == 1)
    {
      sub_1000E3898();
    }

    else if (result == 2 || result == 3)
    {
LABEL_18:
      sub_1002165D4();
    }
  }
}

uint64_t sub_1000E3898()
{
  v0 = *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 64);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t EscrowInformation.Metadata.ClientMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E3B9C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1002166E4();
    }

    if (v3[1])
    {
      sub_1002166E4();
    }

    if (v3[2])
    {
      sub_1002166E4();
    }

    v6 = v3[4];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[3] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1002166C4();
    }

    v8 = v3[6];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[5] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_1002166C4();
    }

    v10 = v3[8];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v3[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1002166C4();
    }

    v12 = v3[10];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[9] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1002166C4();
    }

    v14 = v3[12];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[11] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1002166C4();
    }

    v16 = v3[14];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v3[13] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_1002166C4();
    }

    v18 = v3[16];
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v3[15] & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_1002166C4();
    }

    if (v3[17])
    {
      sub_1002166E4();
    }

    v20 = v3 + *(type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0) + 60);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E3B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  sub_100019C6C(a1 + *(v16 + 64), v9, &qword_10029D780, &qword_1002265D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_10029D780, &qword_1002265D0);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000E3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0xE000000000000000;
  *(a2 + 136) = 0;
  v4 = a2 + *(a1 + 60);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 64);
  v6 = sub_1002164A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000E3EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E3F20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E3FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB80, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4064(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E40D0()
{
  sub_1000F9F28(&qword_100299018, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);

  return sub_100216644();
}

uint64_t sub_1000E4174()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PCSService._protobuf_nameMap);
  sub_100002648(v0, static PCSService._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "service_identifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "public_key";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zone";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t PCSService.decodeMessage<A>(decoder:)()
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
        sub_1002165B4();
        break;
      case 2:
        sub_100216574();
        break;
      case 1:
        sub_100216584();
        break;
    }
  }

  return result;
}

uint64_t PCSService.traverse<A>(visitor:)()
{
  if (*v0)
  {
    result = sub_100216694();
    if (v1)
    {
      return result;
    }
  }

  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_100216684();
      if (v1)
      {
        return result;
      }

      goto LABEL_12;
    }

    v6 = v3;
    v7 = v3 >> 32;
  }

  if (v6 != v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = *(v0 + 32);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v1))
  {
    v10 = v0 + *(type metadata accessor for PCSService(0) + 28);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E45DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_10021D470;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000E4614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E4688(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E472C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB78, type metadata accessor for PCSService);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E47CC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E4838()
{
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService);

  return sub_100216644();
}

uint64_t sub_1000E48DC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentityFetchRequest._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentityFetchRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pcs_services";
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
  *v11 = "account_info";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t DirectPCSIdentityFetchRequest.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000E4D18();
          break;
        case 2:
          sub_1000E4C64();
          break;
        case 1:
          type metadata accessor for PCSService(0);
          sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E4C64()
{
  v0 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E4D18()
{
  v0 = *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t DirectPCSIdentityFetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PCSService(0), sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService), result = sub_1002166F4(), !v4))
  {
    result = sub_1000E4EE0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000E50FC(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for DirectPCSIdentityFetchRequest(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E4EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000E50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E53D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB70, type metadata accessor for DirectPCSIdentityFetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5474(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E54E0()
{
  sub_1000F9F28(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest);

  return sub_100216644();
}

uint64_t sub_1000E5584()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentity._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentity._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pcs_service";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E57DC()
{
  v0 = *(type metadata accessor for DirectPCSIdentity(0) + 20);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000E5890()
{
  v0 = *(type metadata accessor for DirectPCSIdentity(0) + 24);
  type metadata accessor for PCSService(0);
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService);
  return sub_1002165F4();
}

uint64_t sub_1000E5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1000E7D20(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E5A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PCSService(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DirectPCSIdentity(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &qword_100297E18, &qword_10021DA28);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297E18, &qword_10021DA28);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for PCSService);
  sub_1000F9F28(&qword_10029D9A0, type metadata accessor for PCSService);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for PCSService);
}

uint64_t sub_1000E5C94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_1000E5DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB68, type metadata accessor for DirectPCSIdentity);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5E40(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E5EAC()
{
  sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity);

  return sub_100216644();
}

uint64_t sub_1000E5F50()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static DirectPCSIdentityFetchResponse._protobuf_nameMap);
  sub_100002648(v0, static DirectPCSIdentityFetchResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "synckeys";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t DirectPCSIdentityFetchResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for DirectPCSIdentity(0), sub_1000F9F28(&qword_100298940, type metadata accessor for DirectPCSIdentity), result = sub_1002166F4(), !v1))
  {
    if (!*(v0[1] + 16) || (sub_100216424(), sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport), result = sub_1002166F4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for DirectPCSIdentityFetchResponse(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E63BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB60, type metadata accessor for DirectPCSIdentityFetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E645C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299068, type metadata accessor for DirectPCSIdentityFetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E64C8()
{
  sub_1000F9F28(&qword_100299068, type metadata accessor for DirectPCSIdentityFetchResponse);

  return sub_100216644();
}

uint64_t sub_1000E6584()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentCKKSItemSpecifier._protobuf_nameMap);
  sub_100002648(v0, static CurrentCKKSItemSpecifier._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "item_pointer_name";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E67C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_100216534();
    if (v5 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v9 = v4;
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = v4 + 16;
LABEL_3:
      a4(v9, a2, a3);
    }
  }
}

uint64_t sub_1000E6884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1002166C4(), !v5))
    {
      v13 = v4 + *(a4(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E69D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000E6A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB58, type metadata accessor for CurrentCKKSItemSpecifier);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E6AB4(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E6B20()
{
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);

  return sub_100216644();
}

uint64_t sub_1000E6BC4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentItemFetchRequest._protobuf_nameMap);
  sub_100002648(v0, static CurrentItemFetchRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "current_items";
  *(v6 + 8) = 13;
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
  *v11 = "account_info";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t CurrentItemFetchRequest.decodeMessage<A>(decoder:)()
{
  result = sub_100216534();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000E7000();
          break;
        case 2:
          sub_1000E6F4C();
          break;
        case 1:
          type metadata accessor for CurrentCKKSItemSpecifier(0);
          sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000E6F4C()
{
  v0 = *(type metadata accessor for CurrentItemFetchRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E7000()
{
  v0 = *(type metadata accessor for CurrentItemFetchRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t CurrentItemFetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CurrentCKKSItemSpecifier(0), sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier), result = sub_1002166F4(), !v4))
  {
    result = sub_1000E71C8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000E73E4(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for CurrentItemFetchRequest(0) + 20);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E71C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000E73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  sub_100019C6C(a1 + *(Request + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E76BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB50, type metadata accessor for CurrentItemFetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E775C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100299090, type metadata accessor for CurrentItemFetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E77C8()
{
  sub_1000F9F28(&qword_100299090, type metadata accessor for CurrentItemFetchRequest);

  return sub_100216644();
}

uint64_t sub_1000E7874()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentCKKSItem._protobuf_nameMap);
  sub_100002648(v0, static CurrentCKKSItem._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "item_specifier";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E7ACC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_100216534();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000E7B78()
{
  v0 = *(type metadata accessor for CurrentCKKSItem(0) + 20);
  sub_100216424();
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  return sub_1002165F4();
}

uint64_t sub_1000E7C2C()
{
  v0 = *(type metadata accessor for CurrentCKKSItem(0) + 24);
  type metadata accessor for CurrentCKKSItemSpecifier(0);
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);
  return sub_1002165F4();
}

uint64_t sub_1000E7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[0] = a2;
  v20[1] = a3;
  v7 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v20 - v10;
  v12 = sub_100216424();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0);
  sub_100019C6C(a1 + *(v18 + 20), v11, &qword_10029D9C0, &qword_100226740);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000114D4(v11, &qword_10029D9C0, &qword_100226740);
  }

  (*(v13 + 32))(v17, v11, v12);
  sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
  sub_100216704();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1000E7F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CurrentCKKSItem(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &qword_100298588, &unk_10021E7E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100298588, &unk_10021E7E0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000F9F28(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for CurrentCKKSItemSpecifier);
}

uint64_t sub_1000E8204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB48, type metadata accessor for CurrentCKKSItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E82A4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8310()
{
  sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem);

  return sub_100216644();
}

uint64_t sub_1000E83B4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static CurrentItemFetchResponse._protobuf_nameMap);
  sub_100002648(v0, static CurrentItemFetchResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "synckeys";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000E8620(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  result = sub_100216534();
  if (!v6)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result == 1)
      {
        a4(0);
        sub_1000F9F28(a5, a6);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_4;
        }

        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport);
      }

      sub_1002165E4();
LABEL_4:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t CurrentItemFetchResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CurrentCKKSItem(0), sub_1000F9F28(&qword_100298968, type metadata accessor for CurrentCKKSItem), result = sub_1002166F4(), !v1))
  {
    if (!*(v0[1] + 16) || (sub_100216424(), sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport), result = sub_1002166F4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CurrentItemFetchResponse(0) + 24);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000E88E8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (sub_10004E39C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a4(0) + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000E89F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E8A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E8B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB40, type metadata accessor for CurrentItemFetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E8BB0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990B8, type metadata accessor for CurrentItemFetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8C1C()
{
  sub_1000F9F28(&qword_1002990B8, type metadata accessor for CurrentItemFetchResponse);

  return sub_100216644();
}

uint64_t sub_1000E8CB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0 || (sub_10004E39C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000E8D94()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RemoveUnreadableCKServerDataRequest._protobuf_nameMap);
  sub_100002648(v0, static RemoveUnreadableCKServerDataRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "metrics";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "account_info";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "isDBRv2";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t RemoveUnreadableCKServerDataRequest.decodeMessage<A>(decoder:)()
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
      case 4:
        sub_100216554();
        break;
      case 3:
        sub_1000E915C();
        break;
      case 2:
        sub_1000E90A8();
        break;
    }
  }

  return result;
}

uint64_t sub_1000E90A8()
{
  v0 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000E915C()
{
  v0 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  return sub_1002165F4();
}

uint64_t RemoveUnreadableCKServerDataRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E92CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000E94E8(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_100216664();
    }

    v9 = &v3[*(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 20)];
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000E92CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  sub_100019C6C(a1 + *(v16 + 24), v9, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Metrics);
}

uint64_t sub_1000E94E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v16 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  sub_100019C6C(a1 + *(v16 + 28), v9, &unk_10029D6F0, &qword_100226B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v9, v15, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for AccountInfo);
}

uint64_t sub_1000E9750@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
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

uint64_t sub_1000E9820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E9894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E9938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB38, type metadata accessor for RemoveUnreadableCKServerDataRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E99D8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E9A44()
{
  sub_1000F9F28(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest);

  return sub_100216644();
}

uint64_t sub_1000E9AF4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100216744();
  sub_1000025E4(v3, a2);
  sub_100002648(v3, a2);
  return sub_100216734();
}

uint64_t sub_1000E9B60(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_100216744();

  return sub_100002648(v3, a2);
}

uint64_t sub_1000E9BD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100216744();
  v6 = sub_100002648(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _s18TrustedPeersHelper28PerformATOPRVActionsResponseV2eeoiySbAC_ACtFZ_0()
{
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

Swift::Int sub_1000E9D40(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_100217264();
  a1(0);
  sub_1000F9F28(a2, a3);
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_1000E9DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CB30, type metadata accessor for RemoveUnreadableCKServerDataResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E9E68@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100216744();
  v6 = sub_100002648(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000E9F04(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002990E8, type metadata accessor for RemoveUnreadableCKServerDataResponse);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E9F70()
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_1000E9FC8()
{
  sub_1000F9F28(&qword_1002990E8, type metadata accessor for RemoveUnreadableCKServerDataResponse);

  return sub_100216644();
}

Swift::Int sub_1000EA044()
{
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t _s18TrustedPeersHelper7ViewKeyV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (sub_1002171A4()) && (a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72) || (sub_1002171A4()))
  {
    v8 = *(type metadata accessor for ViewKey(0) + 36);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    return sub_100216954() & 1;
  }

  return 0;
}

uint64_t _s18TrustedPeersHelper35RemoveUnreadableCKServerDataRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4, v6);
  v55 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v56 = (&v54 - v11);
  v58 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58, v13);
  v62 = &v54 - v14;
  v15 = type metadata accessor for Metrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v57 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = (&v54 - v23);
  v25 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v54 - v29;
  v59 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v31 = *(v59 + 24);
  v32 = *(v26 + 56);
  v63 = a1;
  sub_100019C6C(&a1[v31], v30, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(&a2[v31], &v30[v32], &qword_100297FE0, &unk_10021E7F0);
  v33 = *(v16 + 48);
  if (v33(v30, 1, v15) == 1)
  {
    if (v33(&v30[v32], 1, v15) == 1)
    {
      sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v30, v24, &qword_100297FE0, &unk_10021E7F0);
  if (v33(&v30[v32], 1, v15) == 1)
  {
    sub_1000F9228(v24, type metadata accessor for Metrics);
LABEL_6:
    v34 = &qword_10029CD78;
    v35 = &qword_100225CE8;
LABEL_7:
    v36 = v30;
LABEL_24:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_25;
  }

  v37 = v57;
  sub_1000F89AC(&v30[v32], v57, type metadata accessor for Metrics);
  if ((*v24 != *v37 || v24[1] != v37[1]) && (sub_1002171A4() & 1) == 0 || (v24[2] != v37[2] || v24[3] != v37[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v37, type metadata accessor for Metrics);
    sub_1000F9228(v24, type metadata accessor for Metrics);
    v34 = &qword_100297FE0;
    v35 = &unk_10021E7F0;
    goto LABEL_7;
  }

  v38 = *(v15 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v39 = sub_100216954();
  sub_1000F9228(v37, type metadata accessor for Metrics);
  sub_1000F9228(v24, type metadata accessor for Metrics);
  sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
  if ((v39 & 1) == 0)
  {
LABEL_25:
    v48 = 0;
    return v48 & 1;
  }

LABEL_15:
  v40 = v59;
  v41 = *(v59 + 28);
  v42 = *(v58 + 48);
  v44 = v62;
  v43 = v63;
  sub_100019C6C(&v63[v41], v62, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(&a2[v41], v44 + v42, &unk_10029D6F0, &qword_100226B40);
  v45 = v61;
  v46 = *(v60 + 48);
  if (v46(v44, 1, v61) == 1)
  {
    if (v46(v44 + v42, 1, v45) == 1)
    {
      sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v49 = v56;
  sub_100019C6C(v44, v56, &unk_10029D6F0, &qword_100226B40);
  if (v46(v44 + v42, 1, v45) == 1)
  {
    sub_1000F9228(v49, type metadata accessor for AccountInfo);
LABEL_22:
    v34 = &qword_10029CD70;
    v35 = &qword_100225CE0;
LABEL_23:
    v36 = v44;
    goto LABEL_24;
  }

  v51 = v44 + v42;
  v52 = v55;
  sub_1000F89AC(v51, v55, type metadata accessor for AccountInfo);
  if (*v49 != *v52)
  {
    sub_1000F9228(v52, type metadata accessor for AccountInfo);
    sub_1000F9228(v49, type metadata accessor for AccountInfo);
    v34 = &unk_10029D6F0;
    v35 = &qword_100226B40;
    goto LABEL_23;
  }

  v53 = *(v45 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v53) = sub_100216954();
  sub_1000F9228(v52, type metadata accessor for AccountInfo);
  sub_1000F9228(v49, type metadata accessor for AccountInfo);
  sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
  if ((v53 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (*v43 != *a2)
  {
    goto LABEL_25;
  }

  v47 = *(v40 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v48 = sub_100216954();
  return v48 & 1;
}

uint64_t _s18TrustedPeersHelper33FetchRecoverableTLKSharesResponseV4ViewV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ViewKeysRecords(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &RecoverableTLKShares - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &RecoverableTLKShares - v13;
  v15 = sub_10001148C(&qword_100297E48, &unk_100225D40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &RecoverableTLKShares - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = v9;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v20 = *(RecoverableTLKShares + 28);
  v21 = *(v15 + 48);
  sub_100019C6C(a1 + v20, v19, &qword_100297E40, &unk_10021E7D0);
  sub_100019C6C(a2 + v20, &v19[v21], &qword_100297E40, &unk_10021E7D0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000114D4(v19, &qword_100297E40, &unk_10021E7D0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v19, v14, &qword_100297E40, &unk_10021E7D0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1000F9228(v14, type metadata accessor for ViewKeysRecords);
LABEL_9:
    sub_1000114D4(v19, &qword_100297E48, &unk_100225D40);
LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  v23 = v29;
  sub_1000F89AC(&v19[v21], v29, type metadata accessor for ViewKeysRecords);
  v24 = _s18TrustedPeersHelper15ViewKeysRecordsV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_1000F9228(v23, type metadata accessor for ViewKeysRecords);
  sub_1000F9228(v14, type metadata accessor for ViewKeysRecords);
  sub_1000114D4(v19, &qword_100297E40, &unk_10021E7D0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_10004E39C(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = *(RecoverableTLKShares + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v26 = sub_100216954();
  return v26 & 1;
}

uint64_t _s18TrustedPeersHelper32FetchRecoverableTLKSharesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v62 = (&v59 - v12);
  v63 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63, v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for Metrics(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v59 - v26);
  v28 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v59 - v31;
  v33 = *a1;
  v34 = a1[1];
  v35 = *a2;
  v36 = a2[1];
  v66 = a2;
  if ((v33 != v35 || v34 != v36) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v59 = v8;
  v61 = v16;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v37 = *(RecoverableTLKSharesRequest + 24);
  v38 = *(v28 + 48);
  sub_100019C6C(a1 + v37, v32, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v66 + v37, &v32[v38], &qword_100297FE0, &unk_10021E7F0);
  v39 = *(v18 + 48);
  if (v39(v32, 1, v17) == 1)
  {
    if (v39(&v32[v38], 1, v17) == 1)
    {
      sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v32, v27, &qword_100297FE0, &unk_10021E7F0);
  if (v39(&v32[v38], 1, v17) == 1)
  {
    sub_1000F9228(v27, type metadata accessor for Metrics);
LABEL_9:
    v40 = &qword_10029CD78;
    v41 = &qword_100225CE8;
LABEL_10:
    v42 = v32;
LABEL_26:
    sub_1000114D4(v42, v40, v41);
    goto LABEL_27;
  }

  sub_1000F89AC(&v32[v38], v22, type metadata accessor for Metrics);
  if ((*v27 != *v22 || v27[1] != v22[1]) && (sub_1002171A4() & 1) == 0 || (v27[2] != v22[2] || v27[3] != v22[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
    sub_1000F9228(v27, type metadata accessor for Metrics);
    v40 = &qword_100297FE0;
    v41 = &unk_10021E7F0;
    goto LABEL_10;
  }

  v43 = *(v17 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v44 = sub_100216954();
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000F9228(v27, type metadata accessor for Metrics);
  sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v46 = RecoverableTLKSharesRequest;
  v45 = v61;
  v47 = *(RecoverableTLKSharesRequest + 28);
  v48 = *(v63 + 48);
  sub_100019C6C(a1 + v47, v61, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v66 + v47, v45 + v48, &unk_10029D6F0, &qword_100226B40);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v45, 1, v65) != 1)
  {
    v53 = v62;
    sub_100019C6C(v45, v62, &unk_10029D6F0, &qword_100226B40);
    if (v50(v45 + v48, 1, v49) == 1)
    {
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      goto LABEL_24;
    }

    v55 = v45 + v48;
    v56 = v59;
    sub_1000F89AC(v55, v59, type metadata accessor for AccountInfo);
    if (*v53 != *v56)
    {
      sub_1000F9228(v56, type metadata accessor for AccountInfo);
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      v40 = &unk_10029D6F0;
      v41 = &qword_100226B40;
      goto LABEL_25;
    }

    v57 = *(v49 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v58 = sub_100216954();
    sub_1000F9228(v56, type metadata accessor for AccountInfo);
    sub_1000F9228(v53, type metadata accessor for AccountInfo);
    sub_1000114D4(v45, &unk_10029D6F0, &qword_100226B40);
    if (v58)
    {
      goto LABEL_21;
    }

LABEL_27:
    v52 = 0;
    return v52 & 1;
  }

  if (v50(v45 + v48, 1, v49) != 1)
  {
LABEL_24:
    v40 = &qword_10029CD70;
    v41 = &qword_100225CE0;
LABEL_25:
    v42 = v45;
    goto LABEL_26;
  }

  sub_1000114D4(v45, &unk_10029D6F0, &qword_100226B40);
LABEL_21:
  v51 = *(v46 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v52 = sub_100216954();
  return v52 & 1;
}

uint64_t _s18TrustedPeersHelper27PerformATOPRVActionsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4, v6);
  v51 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v52 = (&v51 - v11);
  v55 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v12 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55, v13);
  v58 = &v51 - v14;
  v15 = type metadata accessor for Metrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v53 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = (&v51 - v23);
  v25 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v51 - v29;
  v54 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v31 = *(v54 + 20);
  v32 = *(v26 + 56);
  v59 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_100297FE0, &unk_10021E7F0);
  v60 = a2;
  sub_100019C6C(a2 + v31, &v30[v32], &qword_100297FE0, &unk_10021E7F0);
  v33 = *(v16 + 48);
  if (v33(v30, 1, v15) == 1)
  {
    if (v33(&v30[v32], 1, v15) == 1)
    {
      sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v30, v24, &qword_100297FE0, &unk_10021E7F0);
  if (v33(&v30[v32], 1, v15) == 1)
  {
    sub_1000F9228(v24, type metadata accessor for Metrics);
LABEL_6:
    v34 = &qword_10029CD78;
    v35 = &qword_100225CE8;
LABEL_7:
    v36 = v30;
LABEL_23:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_24;
  }

  v37 = v53;
  sub_1000F89AC(&v30[v32], v53, type metadata accessor for Metrics);
  if ((*v24 != *v37 || v24[1] != v37[1]) && (sub_1002171A4() & 1) == 0 || (v24[2] != v37[2] || v24[3] != v37[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v37, type metadata accessor for Metrics);
    sub_1000F9228(v24, type metadata accessor for Metrics);
    v34 = &qword_100297FE0;
    v35 = &unk_10021E7F0;
    goto LABEL_7;
  }

  v38 = *(v15 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v39 = sub_100216954();
  sub_1000F9228(v37, type metadata accessor for Metrics);
  sub_1000F9228(v24, type metadata accessor for Metrics);
  sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v40 = *(v54 + 24);
  v41 = *(v55 + 48);
  v42 = v58;
  sub_100019C6C(v59 + v40, v58, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v60 + v40, v42 + v41, &unk_10029D6F0, &qword_100226B40);
  v43 = v57;
  v44 = *(v56 + 48);
  if (v44(v42, 1, v57) != 1)
  {
    v46 = v52;
    sub_100019C6C(v42, v52, &unk_10029D6F0, &qword_100226B40);
    if (v44(v42 + v41, 1, v43) == 1)
    {
      sub_1000F9228(v46, type metadata accessor for AccountInfo);
      goto LABEL_21;
    }

    v48 = v42 + v41;
    v49 = v51;
    sub_1000F89AC(v48, v51, type metadata accessor for AccountInfo);
    if (*v46 != *v49)
    {
      sub_1000F9228(v49, type metadata accessor for AccountInfo);
      sub_1000F9228(v46, type metadata accessor for AccountInfo);
      v34 = &unk_10029D6F0;
      v35 = &qword_100226B40;
      goto LABEL_22;
    }

    v50 = *(v43 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    LOBYTE(v50) = sub_100216954();
    sub_1000F9228(v49, type metadata accessor for AccountInfo);
    sub_1000F9228(v46, type metadata accessor for AccountInfo);
    sub_1000114D4(v42, &unk_10029D6F0, &qword_100226B40);
    if (v50)
    {
      goto LABEL_18;
    }

LABEL_24:
    v45 = 0;
    return v45 & 1;
  }

  if (v44(v42 + v41, 1, v43) != 1)
  {
LABEL_21:
    v34 = &qword_10029CD70;
    v35 = &qword_100225CE0;
LABEL_22:
    v36 = v42;
    goto LABEL_23;
  }

  sub_1000114D4(v42, &unk_10029D6F0, &qword_100226B40);
LABEL_18:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v45 = sub_100216954();
  return v45 & 1;
}

uint64_t _s18TrustedPeersHelper26FetchViableBottlesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000503CC(*a1, *a2) & 1) == 0 || (sub_1000503CC(a1[1], a2[1]) & 1) == 0 || (sub_10005063C(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  v4 = *(type metadata accessor for FetchViableBottlesResponse(0) + 44);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper25GetSupportAppInfoResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_100050690(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1002171A4() & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(type metadata accessor for GetSupportAppInfoResponse(0) + 36);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper25FetchViableBottlesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v61 = (&v58 - v12);
  v62 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for Metrics(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v58 - v26);
  v28 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v58 - v31;
  v33 = *a1;
  v34 = *a2;
  if (*(a1 + 8))
  {
    v33 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v34)
    {
      if (v33 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v33)
    {
      goto LABEL_33;
    }
  }

  else if (v33 != v34)
  {
    goto LABEL_33;
  }

  v58 = v8;
  v60 = v16;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v65 = a2;
  v59 = ViableBottlesRequest;
  v36 = *(ViableBottlesRequest + 24);
  v37 = *(v28 + 48);
  sub_100019C6C(a1 + v36, v32, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v65 + v36, &v32[v37], &qword_100297FE0, &unk_10021E7F0);
  v38 = *(v18 + 48);
  if (v38(v32, 1, v17) == 1)
  {
    if (v38(&v32[v37], 1, v17) == 1)
    {
      sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  sub_100019C6C(v32, v27, &qword_100297FE0, &unk_10021E7F0);
  if (v38(&v32[v37], 1, v17) == 1)
  {
    sub_1000F9228(v27, type metadata accessor for Metrics);
LABEL_15:
    v39 = &qword_10029CD78;
    v40 = &qword_100225CE8;
LABEL_16:
    v41 = v32;
LABEL_32:
    sub_1000114D4(v41, v39, v40);
    goto LABEL_33;
  }

  sub_1000F89AC(&v32[v37], v22, type metadata accessor for Metrics);
  if ((*v27 != *v22 || v27[1] != v22[1]) && (sub_1002171A4() & 1) == 0 || (v27[2] != v22[2] || v27[3] != v22[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
    sub_1000F9228(v27, type metadata accessor for Metrics);
    v39 = &qword_100297FE0;
    v40 = &unk_10021E7F0;
    goto LABEL_16;
  }

  v42 = *(v17 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v43 = sub_100216954();
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000F9228(v27, type metadata accessor for Metrics);
  sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
  if ((v43 & 1) == 0)
  {
LABEL_33:
    v51 = 0;
    return v51 & 1;
  }

LABEL_24:
  v45 = v59;
  v44 = v60;
  v46 = *(v59 + 28);
  v47 = *(v62 + 48);
  sub_100019C6C(a1 + v46, v60, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v65 + v46, v44 + v47, &unk_10029D6F0, &qword_100226B40);
  v48 = v64;
  v49 = *(v63 + 48);
  if (v49(v44, 1, v64) == 1)
  {
    if (v49(v44 + v47, 1, v48) == 1)
    {
      sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v52 = v61;
  sub_100019C6C(v44, v61, &unk_10029D6F0, &qword_100226B40);
  if (v49(v44 + v47, 1, v48) == 1)
  {
    sub_1000F9228(v52, type metadata accessor for AccountInfo);
LABEL_30:
    v39 = &qword_10029CD70;
    v40 = &qword_100225CE0;
LABEL_31:
    v41 = v44;
    goto LABEL_32;
  }

  v54 = v44 + v47;
  v55 = v58;
  sub_1000F89AC(v54, v58, type metadata accessor for AccountInfo);
  if (*v52 != *v55)
  {
    sub_1000F9228(v55, type metadata accessor for AccountInfo);
    sub_1000F9228(v52, type metadata accessor for AccountInfo);
    v39 = &unk_10029D6F0;
    v40 = &qword_100226B40;
    goto LABEL_31;
  }

  v56 = *(v48 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v57 = sub_100216954();
  sub_1000F9228(v55, type metadata accessor for AccountInfo);
  sub_1000F9228(v52, type metadata accessor for AccountInfo);
  sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
  if ((v57 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v50 = *(v45 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v51 = sub_100216954();
  return v51 & 1;
}

uint64_t _s18TrustedPeersHelper24RemoveRecoveryKeyRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v105 = (&v100 - v12);
  v107 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107, v14);
  v16 = &v100 - v15;
  v115 = type metadata accessor for Metrics(0);
  v113 = *(v115 - 8);
  v17 = *(v113 + 64);
  __chkstk_darwin(v115, v18);
  v106 = (&v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v110 = (&v100 - v23);
  v112 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v24 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112, v25);
  v114 = &v100 - v26;
  v27 = type metadata accessor for SignedPeerDynamicInfo(0);
  v118 = *(v27 - 8);
  v119 = v27;
  v28 = *(v118 + 64);
  __chkstk_darwin(v27, v29);
  v111 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v116 = &v100 - v34;
  v117 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  v35 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v36);
  v120 = &v100 - v37;
  v38 = type metadata accessor for SignedPeerStableInfo(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38, v41);
  v43 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8, v46);
  v48 = &v100 - v47;
  v49 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49, v51);
  v53 = &v100 - v52;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_26;
  }

  v101 = v8;
  v102 = v16;
  v54 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v55 = *(v54 + 28);
  v56 = *(v49 + 48);
  v103 = v54;
  v104 = a1;
  sub_100019C6C(a1 + v55, v53, &qword_1002985A8, &unk_100226650);
  v57 = a2 + v55;
  v58 = a2;
  sub_100019C6C(v57, &v53[v56], &qword_1002985A8, &unk_100226650);
  v59 = *(v39 + 48);
  if (v59(v53, 1, v38) == 1)
  {
    if (v59(&v53[v56], 1, v38) == 1)
    {
      sub_1000114D4(v53, &qword_1002985A8, &unk_100226650);
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_100019C6C(v53, v48, &qword_1002985A8, &unk_100226650);
  if (v59(&v53[v56], 1, v38) == 1)
  {
    sub_1000F9228(v48, type metadata accessor for SignedPeerStableInfo);
LABEL_18:
    v75 = &qword_10029CDC8;
    v76 = &qword_100225D58;
LABEL_24:
    v79 = v53;
LABEL_25:
    sub_1000114D4(v79, v75, v76);
    goto LABEL_26;
  }

  sub_1000F89AC(&v53[v56], v43, type metadata accessor for SignedPeerStableInfo);
  if ((sub_100052F18(*v48, *(v48 + 1), *v43, *(v43 + 1)) & 1) == 0 || (sub_100052F18(*(v48 + 2), *(v48 + 3), *(v43 + 2), *(v43 + 3)) & 1) == 0)
  {
    sub_1000F9228(v43, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v48, type metadata accessor for SignedPeerStableInfo);
    v75 = &qword_1002985A8;
    v76 = &unk_100226650;
    goto LABEL_24;
  }

  v77 = *(v38 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v78 = sub_100216954();
  sub_1000F9228(v43, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v48, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v53, &qword_1002985A8, &unk_100226650);
  if ((v78 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  v61 = v103;
  v60 = v104;
  v62 = v103[8];
  v63 = *(v117 + 48);
  v64 = v120;
  sub_100019C6C(v104 + v62, v120, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v58 + v62, v64 + v63, &unk_10029D760, &qword_10021E810);
  v65 = v119;
  v66 = *(v118 + 48);
  if (v66(v64, 1, v119) == 1)
  {
    if (v66(v64 + v63, 1, v65) == 1)
    {
      sub_1000114D4(v64, &unk_10029D760, &qword_10021E810);
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v82 = v116;
  sub_100019C6C(v64, v116, &unk_10029D760, &qword_10021E810);
  if (v66(v64 + v63, 1, v65) == 1)
  {
    sub_1000F9228(v82, type metadata accessor for SignedPeerDynamicInfo);
LABEL_30:
    v75 = &qword_10029CDC0;
    v76 = &qword_100225D50;
    v79 = v64;
    goto LABEL_25;
  }

  v83 = v111;
  sub_1000F89AC(v64 + v63, v111, type metadata accessor for SignedPeerDynamicInfo);
  if ((sub_100052F18(*v82, *(v82 + 8), *v83, *(v83 + 8)) & 1) == 0 || (sub_100052F18(*(v82 + 16), *(v82 + 24), *(v83 + 16), *(v83 + 24)) & 1) == 0)
  {
    sub_1000F9228(v83, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v82, type metadata accessor for SignedPeerDynamicInfo);
    v75 = &unk_10029D760;
    v76 = &qword_10021E810;
    v79 = v64;
    goto LABEL_25;
  }

  v84 = *(v65 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v85 = sub_100216954();
  sub_1000F9228(v83, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v82, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v64, &unk_10029D760, &qword_10021E810);
  if ((v85 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v67 = v61[9];
  v68 = *(v112 + 48);
  v69 = v114;
  sub_100019C6C(v60 + v67, v114, &qword_100297FE0, &unk_10021E7F0);
  v70 = v58 + v67;
  v71 = v69;
  sub_100019C6C(v70, v69 + v68, &qword_100297FE0, &unk_10021E7F0);
  v72 = *(v113 + 48);
  v73 = v69;
  v74 = v115;
  if (v72(v73, 1, v115) == 1)
  {
    if (v72(v71 + v68, 1, v74) == 1)
    {
      sub_1000114D4(v71, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  v86 = v110;
  sub_100019C6C(v71, v110, &qword_100297FE0, &unk_10021E7F0);
  if (v72(v71 + v68, 1, v74) == 1)
  {
    sub_1000F9228(v86, type metadata accessor for Metrics);
LABEL_38:
    v75 = &qword_10029CD78;
    v76 = &qword_100225CE8;
    v79 = v71;
    goto LABEL_25;
  }

  v87 = v106;
  sub_1000F89AC(v71 + v68, v106, type metadata accessor for Metrics);
  if ((*v86 != *v87 || v86[1] != v87[1]) && (sub_1002171A4() & 1) == 0 || (v86[2] != v87[2] || v86[3] != v87[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v87, type metadata accessor for Metrics);
    sub_1000F9228(v86, type metadata accessor for Metrics);
    v75 = &qword_100297FE0;
    v76 = &unk_10021E7F0;
    v79 = v71;
    goto LABEL_25;
  }

  v88 = *(v115 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v89 = sub_100216954();
  sub_1000F9228(v87, type metadata accessor for Metrics);
  sub_1000F9228(v86, type metadata accessor for Metrics);
  sub_1000114D4(v71, &qword_100297FE0, &unk_10021E7F0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_46:
  v90 = v61[10];
  v91 = *(v107 + 48);
  v92 = v102;
  sub_100019C6C(v60 + v90, v102, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v58 + v90, v92 + v91, &unk_10029D6F0, &qword_100226B40);
  v93 = v109;
  v94 = *(v108 + 48);
  if (v94(v92, 1, v109) == 1)
  {
    if (v94(v92 + v91, 1, v93) == 1)
    {
      sub_1000114D4(v92, &unk_10029D6F0, &qword_100226B40);
LABEL_49:
      v95 = v61[6];
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v80 = sub_100216954();
      return v80 & 1;
    }

    goto LABEL_52;
  }

  v96 = v105;
  sub_100019C6C(v92, v105, &unk_10029D6F0, &qword_100226B40);
  if (v94(v92 + v91, 1, v93) == 1)
  {
    sub_1000F9228(v96, type metadata accessor for AccountInfo);
LABEL_52:
    v75 = &qword_10029CD70;
    v76 = &qword_100225CE0;
    v79 = v92;
    goto LABEL_25;
  }

  v97 = v101;
  sub_1000F89AC(v92 + v91, v101, type metadata accessor for AccountInfo);
  if (*v96 != *v97)
  {
    sub_1000F9228(v97, type metadata accessor for AccountInfo);
    sub_1000F9228(v96, type metadata accessor for AccountInfo);
    v75 = &unk_10029D6F0;
    v76 = &qword_100226B40;
    v79 = v92;
    goto LABEL_25;
  }

  v98 = *(v109 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v99 = sub_100216954();
  sub_1000F9228(v97, type metadata accessor for AccountInfo);
  sub_1000F9228(v96, type metadata accessor for AccountInfo);
  sub_1000114D4(v92, &unk_10029D6F0, &qword_100226B40);
  if (v99)
  {
    goto LABEL_49;
  }

LABEL_26:
  v80 = 0;
  return v80 & 1;
}

uint64_t _s18TrustedPeersHelper24GetSupportAppInfoRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4, v6);
  v55 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v56 = (&v54 - v11);
  v58 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58, v13);
  v62 = &v54 - v14;
  v15 = type metadata accessor for Metrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v57 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = (&v54 - v23);
  v25 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v54 - v29;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v31 = *(SupportAppInfoRequest + 24);
  v32 = *(v26 + 56);
  v63 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v31, &v30[v32], &qword_100297FE0, &unk_10021E7F0);
  v33 = *(v16 + 48);
  if (v33(v30, 1, v15) == 1)
  {
    if (v33(&v30[v32], 1, v15) == 1)
    {
      sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v30, v24, &qword_100297FE0, &unk_10021E7F0);
  if (v33(&v30[v32], 1, v15) == 1)
  {
    sub_1000F9228(v24, type metadata accessor for Metrics);
LABEL_6:
    v34 = &qword_10029CD78;
    v35 = &qword_100225CE8;
LABEL_7:
    v36 = v30;
LABEL_24:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_25;
  }

  v37 = v57;
  sub_1000F89AC(&v30[v32], v57, type metadata accessor for Metrics);
  if ((*v24 != *v37 || v24[1] != v37[1]) && (sub_1002171A4() & 1) == 0 || (v24[2] != v37[2] || v24[3] != v37[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v37, type metadata accessor for Metrics);
    sub_1000F9228(v24, type metadata accessor for Metrics);
    v34 = &qword_100297FE0;
    v35 = &unk_10021E7F0;
    goto LABEL_7;
  }

  v38 = *(v15 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v39 = sub_100216954();
  sub_1000F9228(v37, type metadata accessor for Metrics);
  sub_1000F9228(v24, type metadata accessor for Metrics);
  sub_1000114D4(v30, &qword_100297FE0, &unk_10021E7F0);
  if ((v39 & 1) == 0)
  {
LABEL_25:
    v48 = 0;
    return v48 & 1;
  }

LABEL_15:
  v40 = SupportAppInfoRequest;
  v41 = *(SupportAppInfoRequest + 28);
  v42 = *(v58 + 48);
  v44 = v62;
  v43 = v63;
  sub_100019C6C(v63 + v41, v62, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v41, v44 + v42, &unk_10029D6F0, &qword_100226B40);
  v45 = v61;
  v46 = *(v60 + 48);
  if (v46(v44, 1, v61) == 1)
  {
    if (v46(v44 + v42, 1, v45) == 1)
    {
      sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v49 = v56;
  sub_100019C6C(v44, v56, &unk_10029D6F0, &qword_100226B40);
  if (v46(v44 + v42, 1, v45) == 1)
  {
    sub_1000F9228(v49, type metadata accessor for AccountInfo);
LABEL_22:
    v34 = &qword_10029CD70;
    v35 = &qword_100225CE0;
LABEL_23:
    v36 = v44;
    goto LABEL_24;
  }

  v51 = v44 + v42;
  v52 = v55;
  sub_1000F89AC(v51, v55, type metadata accessor for AccountInfo);
  if (*v49 != *v52)
  {
    sub_1000F9228(v52, type metadata accessor for AccountInfo);
    sub_1000F9228(v49, type metadata accessor for AccountInfo);
    v34 = &unk_10029D6F0;
    v35 = &qword_100226B40;
    goto LABEL_23;
  }

  v53 = *(v45 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v53) = sub_100216954();
  sub_1000F9228(v52, type metadata accessor for AccountInfo);
  sub_1000F9228(v49, type metadata accessor for AccountInfo);
  sub_1000114D4(v44, &unk_10029D6F0, &qword_100226B40);
  if ((v53 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (*v43 != *a2)
  {
    goto LABEL_25;
  }

  v47 = *(v40 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v48 = sub_100216954();
  return v48 & 1;
}

uint64_t sub_1000EDD34(void *a1, void *a2, uint64_t (*a3)(void))
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

  v8 = *(a3(0) + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000EDE34(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for AccountInfo(0);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  __chkstk_darwin(v8, v10);
  v59 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v60 = (&v56 - v15);
  v61 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v16 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61, v17);
  v64 = &v56 - v18;
  v19 = type metadata accessor for Metrics(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v29 = (&v56 - v28);
  v30 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30, v32);
  v34 = &v56 - v33;
  if ((a3(*a1, *a2) & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = a4(0);
  v65 = a2;
  v57 = v35;
  v58 = a1;
  v36 = *(v35 + 24);
  v37 = *(v30 + 48);
  sub_100019C6C(a1 + v36, v34, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v65 + v36, &v34[v37], &qword_100297FE0, &unk_10021E7F0);
  v38 = *(v20 + 48);
  if (v38(v34, 1, v19) == 1)
  {
    if (v38(&v34[v37], 1, v19) == 1)
    {
      sub_1000114D4(v34, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  sub_100019C6C(v34, v29, &qword_100297FE0, &unk_10021E7F0);
  if (v38(&v34[v37], 1, v19) == 1)
  {
    sub_1000F9228(v29, type metadata accessor for Metrics);
LABEL_7:
    v39 = &qword_10029CD78;
    v40 = &qword_100225CE8;
LABEL_8:
    v41 = v34;
LABEL_24:
    sub_1000114D4(v41, v39, v40);
    goto LABEL_25;
  }

  sub_1000F89AC(&v34[v37], v24, type metadata accessor for Metrics);
  if ((*v29 != *v24 || v29[1] != v24[1]) && (sub_1002171A4() & 1) == 0 || (v29[2] != v24[2] || v29[3] != v24[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v24, type metadata accessor for Metrics);
    sub_1000F9228(v29, type metadata accessor for Metrics);
    v39 = &qword_100297FE0;
    v40 = &unk_10021E7F0;
    goto LABEL_8;
  }

  v42 = *(v19 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v42) = sub_100216954();
  sub_1000F9228(v24, type metadata accessor for Metrics);
  sub_1000F9228(v29, type metadata accessor for Metrics);
  sub_1000114D4(v34, &qword_100297FE0, &unk_10021E7F0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v43 = v57;
  v44 = *(v57 + 28);
  v45 = *(v61 + 48);
  v46 = v64;
  sub_100019C6C(v58 + v44, v64, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v65 + v44, v46 + v45, &unk_10029D6F0, &qword_100226B40);
  v47 = v63;
  v48 = *(v62 + 48);
  if (v48(v46, 1, v63) != 1)
  {
    v51 = v60;
    sub_100019C6C(v46, v60, &unk_10029D6F0, &qword_100226B40);
    if (v48(v46 + v45, 1, v47) == 1)
    {
      sub_1000F9228(v51, type metadata accessor for AccountInfo);
      goto LABEL_22;
    }

    v53 = v46 + v45;
    v54 = v59;
    sub_1000F89AC(v53, v59, type metadata accessor for AccountInfo);
    if (*v51 != *v54)
    {
      sub_1000F9228(v54, type metadata accessor for AccountInfo);
      sub_1000F9228(v51, type metadata accessor for AccountInfo);
      v39 = &unk_10029D6F0;
      v40 = &qword_100226B40;
      goto LABEL_23;
    }

    v55 = *(v47 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    LOBYTE(v55) = sub_100216954();
    sub_1000F9228(v54, type metadata accessor for AccountInfo);
    sub_1000F9228(v51, type metadata accessor for AccountInfo);
    sub_1000114D4(v46, &unk_10029D6F0, &qword_100226B40);
    if (v55)
    {
      goto LABEL_19;
    }

LABEL_25:
    v50 = 0;
    return v50 & 1;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
LABEL_22:
    v39 = &qword_10029CD70;
    v40 = &qword_100225CE0;
LABEL_23:
    v41 = v46;
    goto LABEL_24;
  }

  sub_1000114D4(v46, &unk_10029D6F0, &qword_100226B40);
LABEL_19:
  v49 = *(v43 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v50 = sub_100216954();
  return v50 & 1;
}

uint64_t _s18TrustedPeersHelper22PolicyDocumentMapEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyDocumentKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v34 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = (&v32 - v12);
  v14 = sub_10001148C(&qword_100297E50, &qword_10021DA40);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v32 - v18;
  v33 = type metadata accessor for PolicyDocumentMapEntry(0);
  v20 = *(v33 + 24);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_100019C6C(a1 + v20, v19, &unk_10029D820, &unk_10021E840);
  sub_100019C6C(a2 + v20, &v19[v21], &unk_10029D820, &unk_10021E840);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000114D4(v19, &unk_10029D820, &unk_10021E840);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100019C6C(v19, v13, &unk_10029D820, &unk_10021E840);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1000F9228(v13, type metadata accessor for PolicyDocumentKey);
LABEL_8:
    v25 = &qword_100297E50;
    v26 = &qword_10021DA40;
LABEL_18:
    sub_1000114D4(v19, v25, v26);
    goto LABEL_19;
  }

  v27 = v34;
  sub_1000F89AC(&v19[v21], v34, type metadata accessor for PolicyDocumentKey);
  if (*v13 != *v27 || (v13[1] == v27[1] ? (v28 = v13[2] == v27[2]) : (v28 = 0), !v28 && (sub_1002171A4() & 1) == 0))
  {
    sub_1000F9228(v27, type metadata accessor for PolicyDocumentKey);
    sub_1000F9228(v13, type metadata accessor for PolicyDocumentKey);
    v25 = &unk_10029D820;
    v26 = &unk_10021E840;
    goto LABEL_18;
  }

  v29 = *(v4 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v30 = sub_100216954();
  sub_1000F9228(v27, type metadata accessor for PolicyDocumentKey);
  sub_1000F9228(v13, type metadata accessor for PolicyDocumentKey);
  sub_1000114D4(v19, &unk_10029D820, &unk_10021E840);
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((sub_100052F18(*v35, *(v35 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
LABEL_19:
    v24 = 0;
    return v24 & 1;
  }

  v23 = *(v33 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v24 = sub_100216954();
  return v24 & 1;
}

uint64_t _s18TrustedPeersHelper8TLKShareV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1002171A4() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3] || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1002171A4() & 1) == 0 || a1[6] != a2[6] || (a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1002171A4() & 1) == 0 || (a1[9] != a2[9] || a1[10] != a2[10]) && (sub_1002171A4() & 1) == 0 || (a1[11] != a2[11] || a1[12] != a2[12]) && (sub_1002171A4() & 1) == 0 || (a1[13] != a2[13] || a1[14] != a2[14]) && (sub_1002171A4() & 1) == 0 || a1[15] != a2[15] || (a1[16] != a2[16] || a1[17] != a2[17]) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TLKShare(0) + 60);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper22GetRepairActionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4, v6);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v63 = (&v58 - v11);
  v12 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for Metrics(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v58 - v26);
  v28 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v58 - v31;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1002171A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_100051664(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_33;
  }

  v61 = v16;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v33 = *(RepairActionRequest + 48);
  v34 = *(v28 + 48);
  sub_100019C6C(a1 + v33, v32, &qword_100297FE0, &unk_10021E7F0);
  v35 = a2 + v33;
  v36 = v34;
  sub_100019C6C(v35, &v32[v34], &qword_100297FE0, &unk_10021E7F0);
  v37 = *(v18 + 48);
  if (v37(v32, 1, v17) == 1)
  {
    v38 = v37(&v32[v36], 1, v17);
    v39 = v61;
    if (v38 == 1)
    {
      sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_100019C6C(v32, v27, &qword_100297FE0, &unk_10021E7F0);
  v59 = v36;
  v40 = v37(&v32[v36], 1, v17);
  v39 = v61;
  if (v40 == 1)
  {
    sub_1000F9228(v27, type metadata accessor for Metrics);
LABEL_12:
    v41 = &qword_10029CD78;
    v42 = &qword_100225CE8;
LABEL_13:
    v43 = v32;
LABEL_32:
    sub_1000114D4(v43, v41, v42);
    goto LABEL_33;
  }

  sub_1000F89AC(&v32[v59], v22, type metadata accessor for Metrics);
  if ((*v27 != *v22 || v27[1] != v22[1]) && (sub_1002171A4() & 1) == 0 || (v27[2] != v22[2] || v27[3] != v22[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
    sub_1000F9228(v27, type metadata accessor for Metrics);
    v41 = &qword_100297FE0;
    v42 = &unk_10021E7F0;
    goto LABEL_13;
  }

  v44 = *(v17 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v45 = sub_100216954();
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000F9228(v27, type metadata accessor for Metrics);
  sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v46 = RepairActionRequest;
  v47 = *(RepairActionRequest + 52);
  v48 = *(v12 + 48);
  sub_100019C6C(a1 + v47, v39, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v47, v39 + v48, &unk_10029D6F0, &qword_100226B40);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v39, 1, v65) != 1)
  {
    v53 = v63;
    sub_100019C6C(v39, v63, &unk_10029D6F0, &qword_100226B40);
    if (v50(v39 + v48, 1, v49) == 1)
    {
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      goto LABEL_30;
    }

    v55 = v62;
    sub_1000F89AC(v39 + v48, v62, type metadata accessor for AccountInfo);
    if (*v53 != *v55)
    {
      sub_1000F9228(v55, type metadata accessor for AccountInfo);
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      v41 = &unk_10029D6F0;
      v42 = &qword_100226B40;
      goto LABEL_31;
    }

    v56 = *(v49 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v57 = sub_100216954();
    sub_1000F9228(v55, type metadata accessor for AccountInfo);
    sub_1000F9228(v53, type metadata accessor for AccountInfo);
    sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
    if (v57)
    {
      goto LABEL_24;
    }

LABEL_33:
    v52 = 0;
    return v52 & 1;
  }

  if (v50(v39 + v48, 1, v49) != 1)
  {
LABEL_30:
    v41 = &qword_10029CD70;
    v42 = &qword_100225CE0;
LABEL_31:
    v43 = v39;
    goto LABEL_32;
  }

  sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
LABEL_24:
  if (*(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34) || *(a1 + 35) != *(a2 + 35))
  {
    goto LABEL_33;
  }

  v51 = *(v46 + 44);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v52 = sub_100216954();
  return v52 & 1;
}

uint64_t _s18TrustedPeersHelper38EscrowProxyFederationMoveRecordRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Metrics(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = (&v33 - v13);
  v15 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v33 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_17;
  }

  v33 = v9;
  v34 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v20 = *(v34 + 32);
  v21 = *(v15 + 48);
  sub_100019C6C(a1 + v20, v19, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v20, &v19[v21], &qword_100297FE0, &unk_10021E7F0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000114D4(v19, &qword_100297FE0, &unk_10021E7F0);
LABEL_28:
      v32 = *(v34 + 28);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v25 = sub_100216954();
      return v25 & 1;
    }

    goto LABEL_15;
  }

  sub_100019C6C(v19, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1000F9228(v14, type metadata accessor for Metrics);
LABEL_15:
    v23 = &qword_10029CD78;
    v24 = &qword_100225CE8;
LABEL_16:
    sub_1000114D4(v19, v23, v24);
    goto LABEL_17;
  }

  v27 = &v19[v21];
  v28 = v33;
  sub_1000F89AC(v27, v33, type metadata accessor for Metrics);
  v29 = *v14 == *v28 && v14[1] == v28[1];
  if (!v29 && (sub_1002171A4() & 1) == 0 || (v14[2] != v28[2] || v14[3] != v28[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v28, type metadata accessor for Metrics);
    sub_1000F9228(v14, type metadata accessor for Metrics);
    v23 = &qword_100297FE0;
    v24 = &unk_10021E7F0;
    goto LABEL_16;
  }

  v30 = *(v4 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v31 = sub_100216954();
  sub_1000F9228(v28, type metadata accessor for Metrics);
  sub_1000F9228(v14, type metadata accessor for Metrics);
  sub_1000114D4(v19, &qword_100297FE0, &unk_10021E7F0);
  if (v31)
  {
    goto LABEL_28;
  }

LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s18TrustedPeersHelper22GetEscrowCheckResponseV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = (&v34 - v13);
  v15 = sub_10001148C(&qword_10029CDB8, &qword_100225D38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v34 - v18;
  v20 = *a1;
  v21 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v20 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v21)
    {
      if (v20 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v20)
    {
      goto LABEL_22;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_22;
  }

  v22 = type metadata accessor for GetEscrowCheckResponse(0);
  v23 = *(v22 + 40);
  v24 = *(v15 + 48);
  v34 = v22;
  v35 = a1;
  sub_100019C6C(a1 + v23, v19, &unk_10029D720, &qword_10021E868);
  sub_100019C6C(a2 + v23, &v19[v24], &unk_10029D720, &qword_10021E868);
  v25 = *(v5 + 48);
  if (v25(v19, 1, v4) != 1)
  {
    sub_100019C6C(v19, v14, &unk_10029D720, &qword_10021E868);
    if (v25(&v19[v24], 1, v4) != 1)
    {
      sub_1000F89AC(&v19[v24], v9, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      v26 = _s18TrustedPeersHelper38EscrowProxyFederationMoveRecordRequestV2eeoiySbAC_ACtFZ_0(v14, v9);
      sub_1000F9228(v9, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      sub_1000F9228(v14, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
      sub_1000114D4(v19, &unk_10029D720, &qword_10021E868);
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    sub_1000F9228(v14, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
LABEL_15:
    sub_1000114D4(v19, &qword_10029CDB8, &qword_100225D38);
    goto LABEL_22;
  }

  if (v25(&v19[v24], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1000114D4(v19, &unk_10029D720, &qword_10021E868);
LABEL_21:
  if (*(v35 + 9) == *(a2 + 9))
  {
    v29 = v35[2];
    v30 = *(a2 + 16);
    if (*(a2 + 24) == 1)
    {
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          if (v29 != 3)
          {
            goto LABEL_22;
          }
        }

        else if (v30 == 4)
        {
          if (v29 != 4)
          {
            goto LABEL_22;
          }
        }

        else if (v29 != 5)
        {
          goto LABEL_22;
        }
      }

      else if (v30)
      {
        if (v30 == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v29 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v29)
      {
        goto LABEL_22;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_22;
    }

    v31 = v35[4];
    v32 = *(a2 + 32);
    if (*(a2 + 40) == 1)
    {
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v31 != 2)
          {
            goto LABEL_22;
          }
        }

        else if (v31 != 3)
        {
          goto LABEL_22;
        }
      }

      else if (v32)
      {
        if (v31 != 1)
        {
          goto LABEL_22;
        }
      }

      else if (v31)
      {
        goto LABEL_22;
      }
    }

    else if (v31 != v32)
    {
      goto LABEL_22;
    }

    if (*(v35 + 41) == *(a2 + 41))
    {
      v33 = *(v34 + 36);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v27 = sub_100216954();
      return v27 & 1;
    }
  }

LABEL_22:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s18TrustedPeersHelper21SetRecoveryKeyRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v82 = (&v78 - v12);
  v84 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84, v14);
  v16 = &v78 - v15;
  v91 = type metadata accessor for Metrics(0);
  v89 = *(v91 - 8);
  v17 = *(v89 + 64);
  __chkstk_darwin(v91, v18);
  v83 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v87 = (&v78 - v23);
  v88 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v24 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88, v25);
  v90 = &v78 - v26;
  v27 = type metadata accessor for SignedPeerStableInfo(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8, v35);
  v37 = &v78 - v36;
  v38 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v40);
  v42 = &v78 - v41;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0 || (sub_100052F18(a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (sub_100052F18(a1[6], a1[7], a2[6], a2[7]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v81 = v8;
  v79 = v16;
  v80 = type metadata accessor for SetRecoveryKeyRequest(0);
  v43 = *(v80 + 44);
  v44 = *(v38 + 48);
  sub_100019C6C(a1 + v43, v42, &qword_1002985A8, &unk_100226650);
  v45 = a2 + v43;
  v46 = v44;
  sub_100019C6C(v45, &v42[v44], &qword_1002985A8, &unk_100226650);
  v47 = *(v28 + 48);
  if (v47(v42, 1, v27) == 1)
  {
    if (v47(&v42[v46], 1, v27) == 1)
    {
      sub_1000114D4(v42, &qword_1002985A8, &unk_100226650);
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  sub_100019C6C(v42, v37, &qword_1002985A8, &unk_100226650);
  if (v47(&v42[v46], 1, v27) == 1)
  {
    sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
LABEL_18:
    v55 = &qword_10029CDC8;
    v56 = &qword_100225D58;
LABEL_27:
    v61 = v42;
    goto LABEL_28;
  }

  sub_1000F89AC(&v42[v46], v32, type metadata accessor for SignedPeerStableInfo);
  if ((sub_100052F18(*v37, *(v37 + 1), *v32, *(v32 + 1)) & 1) == 0 || (sub_100052F18(*(v37 + 2), *(v37 + 3), *(v32 + 2), *(v32 + 3)) & 1) == 0)
  {
    sub_1000F9228(v32, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
    v55 = &qword_1002985A8;
    v56 = &unk_100226650;
    goto LABEL_27;
  }

  v57 = *(v27 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v58 = sub_100216954();
  sub_1000F9228(v32, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v37, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v42, &qword_1002985A8, &unk_100226650);
  if ((v58 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((sub_1000516F4(a1[8], a2[8]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v48 = v80;
  v49 = *(v80 + 48);
  v50 = *(v88 + 48);
  v42 = v90;
  sub_100019C6C(a1 + v49, v90, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v49, &v42[v50], &qword_100297FE0, &unk_10021E7F0);
  v51 = *(v89 + 48);
  v52 = v91;
  if (v51(v42, 1, v91) == 1)
  {
    v53 = v51(&v42[v50], 1, v52);
    v54 = v81;
    if (v53 == 1)
    {
      sub_1000114D4(v42, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  v59 = v87;
  sub_100019C6C(v42, v87, &qword_100297FE0, &unk_10021E7F0);
  v60 = v51(&v42[v50], 1, v52);
  v54 = v81;
  if (v60 == 1)
  {
    sub_1000F9228(v59, type metadata accessor for Metrics);
LABEL_26:
    v55 = &qword_10029CD78;
    v56 = &qword_100225CE8;
    goto LABEL_27;
  }

  v64 = v83;
  sub_1000F89AC(&v42[v50], v83, type metadata accessor for Metrics);
  if ((*v59 != *v64 || v59[1] != v64[1]) && (sub_1002171A4() & 1) == 0 || (v59[2] != v64[2] || v59[3] != v64[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v64, type metadata accessor for Metrics);
    sub_1000F9228(v59, type metadata accessor for Metrics);
    v55 = &qword_100297FE0;
    v56 = &unk_10021E7F0;
    goto LABEL_27;
  }

  v65 = *(v91 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v66 = sub_100216954();
  sub_1000F9228(v64, type metadata accessor for Metrics);
  sub_1000F9228(v59, type metadata accessor for Metrics);
  sub_1000114D4(v42, &qword_100297FE0, &unk_10021E7F0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_38:
  v67 = *(v48 + 52);
  v68 = *(v84 + 48);
  v69 = v79;
  sub_100019C6C(a1 + v67, v79, &unk_10029D6F0, &qword_100226B40);
  v70 = a2 + v67;
  v71 = v69;
  sub_100019C6C(v70, v69 + v68, &unk_10029D6F0, &qword_100226B40);
  v72 = v86;
  v73 = *(v85 + 48);
  if (v73(v69, 1, v86) != 1)
  {
    v75 = v82;
    sub_100019C6C(v71, v82, &unk_10029D6F0, &qword_100226B40);
    if (v73(v71 + v68, 1, v72) == 1)
    {
      sub_1000F9228(v75, type metadata accessor for AccountInfo);
      goto LABEL_45;
    }

    sub_1000F89AC(v71 + v68, v54, type metadata accessor for AccountInfo);
    if (*v75 == *v54)
    {
      v76 = *(v72 + 20);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v77 = sub_100216954();
      sub_1000F9228(v54, type metadata accessor for AccountInfo);
      sub_1000F9228(v75, type metadata accessor for AccountInfo);
      sub_1000114D4(v71, &unk_10029D6F0, &qword_100226B40);
      if ((v77 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }

    sub_1000F9228(v54, type metadata accessor for AccountInfo);
    sub_1000F9228(v75, type metadata accessor for AccountInfo);
    v55 = &unk_10029D6F0;
    v56 = &qword_100226B40;
    v61 = v71;
LABEL_28:
    sub_1000114D4(v61, v55, v56);
    goto LABEL_29;
  }

  if (v73(v69 + v68, 1, v72) != 1)
  {
LABEL_45:
    v55 = &qword_10029CD70;
    v56 = &qword_100225CE0;
    v61 = v71;
    goto LABEL_28;
  }

  sub_1000114D4(v69, &unk_10029D6F0, &qword_100226B40);
LABEL_41:
  if (sub_100051748(a1[9], a2[9]))
  {
    v74 = *(v48 + 40);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v62 = sub_100216954();
    return v62 & 1;
  }

LABEL_29:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s18TrustedPeersHelper21GetEscrowCheckRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4, v6);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v63 = (&v58 - v11);
  v12 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for Metrics(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v58 - v26);
  v28 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v58 - v31;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1002171A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || (sub_100051664(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_33;
  }

  v61 = v16;
  v60 = type metadata accessor for GetEscrowCheckRequest(0);
  v33 = *(v60 + 48);
  v34 = *(v28 + 48);
  sub_100019C6C(a1 + v33, v32, &qword_100297FE0, &unk_10021E7F0);
  v35 = a2 + v33;
  v36 = v34;
  sub_100019C6C(v35, &v32[v34], &qword_100297FE0, &unk_10021E7F0);
  v37 = *(v18 + 48);
  if (v37(v32, 1, v17) == 1)
  {
    v38 = v37(&v32[v36], 1, v17);
    v39 = v61;
    if (v38 == 1)
    {
      sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_100019C6C(v32, v27, &qword_100297FE0, &unk_10021E7F0);
  v59 = v36;
  v40 = v37(&v32[v36], 1, v17);
  v39 = v61;
  if (v40 == 1)
  {
    sub_1000F9228(v27, type metadata accessor for Metrics);
LABEL_12:
    v41 = &qword_10029CD78;
    v42 = &qword_100225CE8;
LABEL_13:
    v43 = v32;
LABEL_32:
    sub_1000114D4(v43, v41, v42);
    goto LABEL_33;
  }

  sub_1000F89AC(&v32[v59], v22, type metadata accessor for Metrics);
  if ((*v27 != *v22 || v27[1] != v22[1]) && (sub_1002171A4() & 1) == 0 || (v27[2] != v22[2] || v27[3] != v22[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
    sub_1000F9228(v27, type metadata accessor for Metrics);
    v41 = &qword_100297FE0;
    v42 = &unk_10021E7F0;
    goto LABEL_13;
  }

  v44 = *(v17 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v45 = sub_100216954();
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000F9228(v27, type metadata accessor for Metrics);
  sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v46 = v60;
  v47 = *(v60 + 52);
  v48 = *(v12 + 48);
  sub_100019C6C(a1 + v47, v39, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(a2 + v47, v39 + v48, &unk_10029D6F0, &qword_100226B40);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v39, 1, v65) != 1)
  {
    v53 = v63;
    sub_100019C6C(v39, v63, &unk_10029D6F0, &qword_100226B40);
    if (v50(v39 + v48, 1, v49) == 1)
    {
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      goto LABEL_30;
    }

    v55 = v62;
    sub_1000F89AC(v39 + v48, v62, type metadata accessor for AccountInfo);
    if (*v53 != *v55)
    {
      sub_1000F9228(v55, type metadata accessor for AccountInfo);
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      v41 = &unk_10029D6F0;
      v42 = &qword_100226B40;
      goto LABEL_31;
    }

    v56 = *(v49 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v57 = sub_100216954();
    sub_1000F9228(v55, type metadata accessor for AccountInfo);
    sub_1000F9228(v53, type metadata accessor for AccountInfo);
    sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
    if (v57)
    {
      goto LABEL_24;
    }

LABEL_33:
    v52 = 0;
    return v52 & 1;
  }

  if (v50(v39 + v48, 1, v49) != 1)
  {
LABEL_30:
    v41 = &qword_10029CD70;
    v42 = &qword_100225CE0;
LABEL_31:
    v43 = v39;
    goto LABEL_32;
  }

  sub_1000114D4(v39, &unk_10029D6F0, &qword_100226B40);
LABEL_24:
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41) || *(a1 + 42) != *(a2 + 42))
  {
    goto LABEL_33;
  }

  v51 = *(v46 + 44);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v52 = sub_100216954();
  return v52 & 1;
}

uint64_t sub_1000F1150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v29 = a1;
  v5 = type metadata accessor for Changes(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v28 - v13;
  v15 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v28 - v19;
  v21 = *(a3(0) + 20);
  v22 = *(v16 + 56);
  sub_100019C6C(v29 + v21, v20, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v21, &v20[v22], &unk_10029D750, &qword_10021E850);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) == 1)
  {
    if (v23(&v20[v22], 1, v5) == 1)
    {
      sub_1000114D4(v20, &unk_10029D750, &qword_10021E850);
LABEL_9:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v24 = sub_100216954();
      return v24 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v20, v14, &unk_10029D750, &qword_10021E850);
  if (v23(&v20[v22], 1, v5) == 1)
  {
    sub_1000F9228(v14, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v20, &qword_100297DF8, &qword_10021DA10);
    goto LABEL_7;
  }

  v25 = v28;
  sub_1000F89AC(&v20[v22], v28, type metadata accessor for Changes);
  v26 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v14, v25);
  sub_1000F9228(v25, type metadata accessor for Changes);
  sub_1000F9228(v14, type metadata accessor for Changes);
  sub_1000114D4(v20, &unk_10029D750, &qword_10021E850);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s18TrustedPeersHelper19FetchChangesRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v62 = (&v59 - v12);
  v63 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63, v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for Metrics(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = (&v59 - v26);
  v28 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = &v59 - v31;
  v33 = *a1;
  v34 = a1[1];
  v35 = *a2;
  v36 = a2[1];
  v66 = a2;
  if ((v33 != v35 || v34 != v36) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v59 = v8;
  v61 = v16;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v37 = *(ChangesRequest + 24);
  v38 = *(v28 + 48);
  sub_100019C6C(a1 + v37, v32, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(v66 + v37, &v32[v38], &qword_100297FE0, &unk_10021E7F0);
  v39 = *(v18 + 48);
  if (v39(v32, 1, v17) == 1)
  {
    if (v39(&v32[v38], 1, v17) == 1)
    {
      sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v32, v27, &qword_100297FE0, &unk_10021E7F0);
  if (v39(&v32[v38], 1, v17) == 1)
  {
    sub_1000F9228(v27, type metadata accessor for Metrics);
LABEL_9:
    v40 = &qword_10029CD78;
    v41 = &qword_100225CE8;
LABEL_10:
    v42 = v32;
LABEL_26:
    sub_1000114D4(v42, v40, v41);
    goto LABEL_27;
  }

  sub_1000F89AC(&v32[v38], v22, type metadata accessor for Metrics);
  if ((*v27 != *v22 || v27[1] != v22[1]) && (sub_1002171A4() & 1) == 0 || (v27[2] != v22[2] || v27[3] != v22[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v22, type metadata accessor for Metrics);
    sub_1000F9228(v27, type metadata accessor for Metrics);
    v40 = &qword_100297FE0;
    v41 = &unk_10021E7F0;
    goto LABEL_10;
  }

  v43 = *(v17 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v44 = sub_100216954();
  sub_1000F9228(v22, type metadata accessor for Metrics);
  sub_1000F9228(v27, type metadata accessor for Metrics);
  sub_1000114D4(v32, &qword_100297FE0, &unk_10021E7F0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v46 = ChangesRequest;
  v45 = v61;
  v47 = *(ChangesRequest + 28);
  v48 = *(v63 + 48);
  sub_100019C6C(a1 + v47, v61, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v66 + v47, v45 + v48, &unk_10029D6F0, &qword_100226B40);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v45, 1, v65) != 1)
  {
    v53 = v62;
    sub_100019C6C(v45, v62, &unk_10029D6F0, &qword_100226B40);
    if (v50(v45 + v48, 1, v49) == 1)
    {
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      goto LABEL_24;
    }

    v55 = v45 + v48;
    v56 = v59;
    sub_1000F89AC(v55, v59, type metadata accessor for AccountInfo);
    if (*v53 != *v56)
    {
      sub_1000F9228(v56, type metadata accessor for AccountInfo);
      sub_1000F9228(v53, type metadata accessor for AccountInfo);
      v40 = &unk_10029D6F0;
      v41 = &qword_100226B40;
      goto LABEL_25;
    }

    v57 = *(v49 + 20);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v58 = sub_100216954();
    sub_1000F9228(v56, type metadata accessor for AccountInfo);
    sub_1000F9228(v53, type metadata accessor for AccountInfo);
    sub_1000114D4(v45, &unk_10029D6F0, &qword_100226B40);
    if (v58)
    {
      goto LABEL_21;
    }

LABEL_27:
    v52 = 0;
    return v52 & 1;
  }

  if (v50(v45 + v48, 1, v49) != 1)
  {
LABEL_24:
    v40 = &qword_10029CD70;
    v41 = &qword_100225CE0;
LABEL_25:
    v42 = v45;
    goto LABEL_26;
  }

  sub_1000114D4(v45, &unk_10029D6F0, &qword_100226B40);
LABEL_21:
  v51 = *(v46 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v52 = sub_100216954();
  return v52 & 1;
}

uint64_t _s18TrustedPeersHelper18UpdateTrustRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = *(v129 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v126 = (&v121 - v12);
  v128 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v13 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128, v14);
  v16 = &v121 - v15;
  v17 = type metadata accessor for Metrics(0);
  v134 = *(v17 - 8);
  v135 = v17;
  v18 = *(v134 + 64);
  __chkstk_darwin(v17, v19);
  v127 = (&v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  v131 = (&v121 - v24);
  v133 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v25 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133, v26);
  v136 = &v121 - v27;
  v28 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v139 = *(v28 - 8);
  v140 = v28;
  v29 = *(v139 + 64);
  __chkstk_darwin(v28, v30);
  v132 = (&v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  v137 = (&v121 - v35);
  v138 = sub_10001148C(&qword_10029CE08, &qword_100225DA8);
  v36 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138, v37);
  v141 = &v121 - v38;
  v39 = type metadata accessor for SignedPeerDynamicInfo(0);
  v145 = *(v39 - 8);
  v146 = v39;
  v40 = *(v145 + 64);
  __chkstk_darwin(v39, v41);
  v142 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8, v45);
  v143 = &v121 - v46;
  v144 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  v47 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144, v48);
  v147 = &v121 - v49;
  v50 = type metadata accessor for SignedPeerStableInfo(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50, v53);
  v55 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8, v58);
  v60 = &v121 - v59;
  v61 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  v62 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61, v63);
  v65 = &v121 - v64;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_28;
  }

  v122 = v8;
  v125 = v16;
  v66 = a2;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v67 = *(updated + 36);
  v68 = *(v61 + 48);
  v123 = a1;
  sub_100019C6C(a1 + v67, v65, &qword_1002985A8, &unk_100226650);
  v69 = v66 + v67;
  v70 = v66;
  sub_100019C6C(v69, &v65[v68], &qword_1002985A8, &unk_100226650);
  v71 = *(v51 + 48);
  if (v71(v65, 1, v50) == 1)
  {
    if (v71(&v65[v68], 1, v50) == 1)
    {
      sub_1000114D4(v65, &qword_1002985A8, &unk_100226650);
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  sub_100019C6C(v65, v60, &qword_1002985A8, &unk_100226650);
  if (v71(&v65[v68], 1, v50) == 1)
  {
    sub_1000F9228(v60, type metadata accessor for SignedPeerStableInfo);
LABEL_20:
    v87 = &qword_10029CDC8;
    v88 = &qword_100225D58;
LABEL_26:
    v91 = v65;
LABEL_27:
    sub_1000114D4(v91, v87, v88);
    goto LABEL_28;
  }

  sub_1000F89AC(&v65[v68], v55, type metadata accessor for SignedPeerStableInfo);
  if ((sub_100052F18(*v60, *(v60 + 1), *v55, *(v55 + 1)) & 1) == 0 || (sub_100052F18(*(v60 + 2), *(v60 + 3), *(v55 + 2), *(v55 + 3)) & 1) == 0)
  {
    sub_1000F9228(v55, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v60, type metadata accessor for SignedPeerStableInfo);
    v87 = &qword_1002985A8;
    v88 = &unk_100226650;
    goto LABEL_26;
  }

  v89 = *(v50 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v90 = sub_100216954();
  sub_1000F9228(v55, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v60, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v65, &qword_1002985A8, &unk_100226650);
  if ((v90 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v72 = updated;
  v73 = *(updated + 40);
  v74 = *(v144 + 48);
  v75 = v123;
  v76 = v147;
  sub_100019C6C(v123 + v73, v147, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v70 + v73, v76 + v74, &unk_10029D760, &qword_10021E810);
  v77 = v146;
  v78 = *(v145 + 48);
  if (v78(v76, 1, v146) == 1)
  {
    v79 = v78(v76 + v74, 1, v77);
    v80 = v125;
    v81 = v122;
    if (v79 == 1)
    {
      sub_1000114D4(v76, &unk_10029D760, &qword_10021E810);
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v94 = v143;
  sub_100019C6C(v76, v143, &unk_10029D760, &qword_10021E810);
  v95 = v78(v76 + v74, 1, v77);
  v80 = v125;
  v81 = v122;
  if (v95 == 1)
  {
    sub_1000F9228(v94, type metadata accessor for SignedPeerDynamicInfo);
LABEL_32:
    v87 = &qword_10029CDC0;
    v88 = &qword_100225D50;
    v91 = v76;
    goto LABEL_27;
  }

  v96 = v76 + v74;
  v97 = v142;
  sub_1000F89AC(v96, v142, type metadata accessor for SignedPeerDynamicInfo);
  if ((sub_100052F18(*v94, *(v94 + 8), *v97, *(v97 + 8)) & 1) == 0 || (sub_100052F18(*(v94 + 16), *(v94 + 24), *(v97 + 16), *(v97 + 24)) & 1) == 0)
  {
    sub_1000F9228(v97, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v94, type metadata accessor for SignedPeerDynamicInfo);
    v87 = &unk_10029D760;
    v88 = &qword_10021E810;
    v91 = v76;
    goto LABEL_27;
  }

  v98 = *(v77 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v98) = sub_100216954();
  sub_1000F9228(v97, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v94, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v76, &unk_10029D760, &qword_10021E810);
  if ((v98 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  if ((sub_1000516F4(v75[4], v70[4]) & 1) == 0 || (sub_100051748(v75[5], v70[5]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v82 = v72[11];
  v83 = *(v138 + 48);
  v84 = v141;
  sub_100019C6C(v75 + v82, v141, &qword_10029D770, &qword_10021E860);
  sub_100019C6C(v70 + v82, v84 + v83, &qword_10029D770, &qword_10021E860);
  v85 = v140;
  v86 = *(v139 + 48);
  if (v86(v84, 1, v140) == 1)
  {
    if (v86(v84 + v83, 1, v85) == 1)
    {
      sub_1000114D4(v84, &qword_10029D770, &qword_10021E860);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v99 = v137;
  sub_100019C6C(v84, v137, &qword_10029D770, &qword_10021E860);
  if (v86(v84 + v83, 1, v85) == 1)
  {
    sub_1000F9228(v99, type metadata accessor for IdmsTrustedDevicesVersion);
LABEL_40:
    v87 = &qword_10029CE08;
    v88 = &qword_100225DA8;
    v91 = v84;
    goto LABEL_27;
  }

  v100 = v84 + v83;
  v101 = v132;
  sub_1000F89AC(v100, v132, type metadata accessor for IdmsTrustedDevicesVersion);
  v102 = _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(v99, v101);
  sub_1000F9228(v101, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9228(v99, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v84, &qword_10029D770, &qword_10021E860);
  v80 = v125;
  if ((v102 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_42:
  v103 = v72[12];
  v104 = *(v133 + 48);
  v105 = v136;
  sub_100019C6C(v75 + v103, v136, &qword_100297FE0, &unk_10021E7F0);
  v106 = v70 + v103;
  v107 = v105;
  sub_100019C6C(v106, v105 + v104, &qword_100297FE0, &unk_10021E7F0);
  v108 = v135;
  v109 = *(v134 + 48);
  if (v109(v105, 1, v135) == 1)
  {
    if (v109(v105 + v104, 1, v108) == 1)
    {
      sub_1000114D4(v105, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_55;
    }

    goto LABEL_47;
  }

  v110 = v131;
  sub_100019C6C(v107, v131, &qword_100297FE0, &unk_10021E7F0);
  if (v109(v107 + v104, 1, v108) == 1)
  {
    sub_1000F9228(v110, type metadata accessor for Metrics);
LABEL_47:
    v87 = &qword_10029CD78;
    v88 = &qword_100225CE8;
    v91 = v107;
    goto LABEL_27;
  }

  v111 = v107 + v104;
  v112 = v127;
  sub_1000F89AC(v111, v127, type metadata accessor for Metrics);
  if ((*v110 != *v112 || v110[1] != v112[1]) && (sub_1002171A4() & 1) == 0 || (v110[2] != v112[2] || v110[3] != v112[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v112, type metadata accessor for Metrics);
    sub_1000F9228(v110, type metadata accessor for Metrics);
    v87 = &qword_100297FE0;
    v88 = &unk_10021E7F0;
    v91 = v107;
    goto LABEL_27;
  }

  v113 = *(v108 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v113) = sub_100216954();
  sub_1000F9228(v112, type metadata accessor for Metrics);
  sub_1000F9228(v110, type metadata accessor for Metrics);
  sub_1000114D4(v107, &qword_100297FE0, &unk_10021E7F0);
  v72 = updated;
  if ((v113 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_55:
  v114 = v72[13];
  v115 = *(v128 + 48);
  sub_100019C6C(v75 + v114, v80, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(v70 + v114, v80 + v115, &unk_10029D6F0, &qword_100226B40);
  v116 = v130;
  v117 = *(v129 + 48);
  if (v117(v80, 1, v130) == 1)
  {
    if (v117(v80 + v115, 1, v116) == 1)
    {
      sub_1000114D4(v80, &unk_10029D6F0, &qword_100226B40);
LABEL_58:
      v118 = v72[8];
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v92 = sub_100216954();
      return v92 & 1;
    }

    goto LABEL_61;
  }

  v119 = v126;
  sub_100019C6C(v80, v126, &unk_10029D6F0, &qword_100226B40);
  if (v117(v80 + v115, 1, v116) == 1)
  {
    sub_1000F9228(v119, type metadata accessor for AccountInfo);
LABEL_61:
    v87 = &qword_10029CD70;
    v88 = &qword_100225CE0;
    v91 = v80;
    goto LABEL_27;
  }

  sub_1000F89AC(v80 + v115, v81, type metadata accessor for AccountInfo);
  if (*v119 != *v81)
  {
    sub_1000F9228(v81, type metadata accessor for AccountInfo);
    sub_1000F9228(v119, type metadata accessor for AccountInfo);
    v87 = &unk_10029D6F0;
    v88 = &qword_100226B40;
    v91 = v80;
    goto LABEL_27;
  }

  v120 = *(v116 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v120) = sub_100216954();
  sub_1000F9228(v81, type metadata accessor for AccountInfo);
  sub_1000F9228(v119, type metadata accessor for AccountInfo);
  sub_1000114D4(v80, &unk_10029D6F0, &qword_100226B40);
  if (v120)
  {
    goto LABEL_58;
  }

LABEL_28:
  v92 = 0;
  return v92 & 1;
}

uint64_t _s18TrustedPeersHelper17PolicyDocumentKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for PolicyDocumentKey(0) + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F2F68(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Changes(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v30 - v14;
  v16 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v30 - v20;
  v31 = a3(0);
  v22 = *(v31 + 24);
  v23 = *(v17 + 56);
  v33 = a1;
  sub_100019C6C(a1 + v22, v21, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v22, &v21[v23], &unk_10029D750, &qword_10021E850);
  v24 = *(v7 + 48);
  if (v24(v21, 1, v6) == 1)
  {
    if (v24(&v21[v23], 1, v6) == 1)
    {
      sub_1000114D4(v21, &unk_10029D750, &qword_10021E850);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v21, v15, &unk_10029D750, &qword_10021E850);
  if (v24(&v21[v23], 1, v6) == 1)
  {
    sub_1000F9228(v15, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v21, &qword_100297DF8, &qword_10021DA10);
LABEL_10:
    v28 = 0;
    return v28 & 1;
  }

  v25 = v32;
  sub_1000F89AC(&v21[v23], v32, type metadata accessor for Changes);
  v26 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v15, v25);
  sub_1000F9228(v25, type metadata accessor for Changes);
  sub_1000F9228(v15, type metadata accessor for Changes);
  sub_1000114D4(v21, &unk_10029D750, &qword_10021E850);
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_10004E39C(*v33, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = *(v31 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v28 = sub_100216954();
  return v28 & 1;
}

uint64_t _s18TrustedPeersHelper17EscrowInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for EscrowInformation.Metadata(0);
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4, v6);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v64 = &v63 - v11;
  v65 = sub_10001148C(&qword_10029CDB0, &qword_100225D30);
  v12 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65, v13);
  v68 = &v63 - v14;
  v15 = sub_1002164A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v63 - v23;
  v25 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v63 - v29;
  v69 = type metadata accessor for EscrowInformation(0);
  v31 = *(v69 + 48);
  v32 = *(v26 + 56);
  v71 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_10029D780, &qword_1002265D0);
  v72 = a2;
  sub_100019C6C(a2 + v31, &v30[v32], &qword_10029D780, &qword_1002265D0);
  v33 = *(v16 + 48);
  if (v33(v30, 1, v15) == 1)
  {
    if (v33(&v30[v32], 1, v15) == 1)
    {
      sub_1000114D4(v30, &qword_10029D780, &qword_1002265D0);
      goto LABEL_9;
    }

LABEL_6:
    v34 = &qword_100297E30;
    v35 = &qword_10021DA38;
    v36 = v30;
LABEL_7:
    sub_1000114D4(v36, v34, v35);
    goto LABEL_51;
  }

  sub_100019C6C(v30, v24, &qword_10029D780, &qword_1002265D0);
  if (v33(&v30[v32], 1, v15) == 1)
  {
    (*(v16 + 8))(v24, v15);
    goto LABEL_6;
  }

  v37 = v70;
  (*(v16 + 32))(v70, &v30[v32], v15);
  sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
  v38 = sub_100216954();
  v39 = *(v16 + 8);
  v39(v37, v15);
  v39(v24, v15);
  sub_1000114D4(v30, &qword_10029D780, &qword_1002265D0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_9:
  v41 = v71;
  v40 = v72;
  if (*v71 != *v72)
  {
    goto LABEL_51;
  }

  v43 = v68;
  v42 = v69;
  v44 = *(v69 + 52);
  v45 = *(v65 + 48);
  sub_100019C6C(v71 + v44, v68, &unk_10029DAA0, &qword_10021E870);
  sub_100019C6C(v40 + v44, v43 + v45, &unk_10029DAA0, &qword_10021E870);
  v46 = v67;
  v47 = *(v66 + 48);
  if (v47(v43, 1, v67) == 1)
  {
    if (v47(v43 + v45, 1, v46) == 1)
    {
      sub_1000114D4(v43, &unk_10029DAA0, &qword_10021E870);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v48 = v64;
  sub_100019C6C(v43, v64, &unk_10029DAA0, &qword_10021E870);
  if (v47(v43 + v45, 1, v46) == 1)
  {
    sub_1000F9228(v48, type metadata accessor for EscrowInformation.Metadata);
LABEL_15:
    v34 = &qword_10029CDB0;
    v35 = &qword_100225D30;
LABEL_16:
    v36 = v43;
    goto LABEL_7;
  }

  v49 = v63;
  sub_1000F89AC(v43 + v45, v63, type metadata accessor for EscrowInformation.Metadata);
  v50 = *(v46 + 20);
  v51 = *(v48 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {
    v53 = *(v48 + v50);

    v54 = sub_1000E1F9C(v51, v52);

    if (!v54)
    {
      sub_1000F9228(v49, type metadata accessor for EscrowInformation.Metadata);
      sub_1000F9228(v48, type metadata accessor for EscrowInformation.Metadata);
      v34 = &unk_10029DAA0;
      v35 = &qword_10021E870;
      goto LABEL_16;
    }
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v55 = sub_100216954();
  sub_1000F9228(v49, type metadata accessor for EscrowInformation.Metadata);
  sub_1000F9228(v48, type metadata accessor for EscrowInformation.Metadata);
  sub_1000114D4(v43, &unk_10029DAA0, &qword_10021E870);
  if ((v55 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  if ((v41[1] != v40[1] || v41[2] != v40[2]) && (sub_1002171A4() & 1) == 0 || v41[3] != v40[3])
  {
    goto LABEL_51;
  }

  v56 = v41[4];
  v57 = v40[4];
  if (*(v41 + 40))
  {
    v56 = v56 != 0;
  }

  if (*(v40 + 40) == 1)
  {
    if (v57)
    {
      if (v56 != 1)
      {
        goto LABEL_51;
      }
    }

    else if (v56)
    {
      goto LABEL_51;
    }
  }

  else if (v56 != v57)
  {
    goto LABEL_51;
  }

  v58 = v41[6];
  v59 = v40[6];
  if (*(v40 + 56) != 1)
  {
    if (v58 == v59)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (!v59)
  {
    if (!v58)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (v59 == 1)
  {
    if (v58 == 1)
    {
      goto LABEL_44;
    }

LABEL_51:
    v61 = 0;
    return v61 & 1;
  }

  if (v58 != 2)
  {
    goto LABEL_51;
  }

LABEL_44:
  if ((v41[8] != v40[8] || v41[9] != v40[9]) && (sub_1002171A4() & 1) == 0 || (v41[10] != v40[10] || v41[11] != v40[11]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_51;
  }

  v60 = *(v42 + 44);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v61 = sub_100216954();
  return v61 & 1;
}

uint64_t _s18TrustedPeersHelper17EscrowInformationV8MetadataV06ClientF0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v31 - v12;
  v14 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v31 - v18;
  v31 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v20 = *(v31 + 64);
  v21 = *(v15 + 56);
  v33 = a1;
  sub_100019C6C(a1 + v20, v19, &qword_10029D780, &qword_1002265D0);
  v34 = a2;
  sub_100019C6C(a2 + v20, &v19[v21], &qword_10029D780, &qword_1002265D0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_100019C6C(v19, v13, &qword_10029D780, &qword_1002265D0);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v23 = v32;
      (*(v5 + 32))(v32, &v19[v21], v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
      v24 = sub_100216954();
      v25 = *(v5 + 8);
      v25(v23, v4);
      v25(v13, v4);
      sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
      if (v24)
      {
        goto LABEL_8;
      }

LABEL_34:
      v29 = 0;
      return v29 & 1;
    }

    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_1000114D4(v19, &qword_100297E30, &qword_10021DA38);
    goto LABEL_34;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
LABEL_8:
  v27 = v33;
  v26 = v34;
  if (*v33 != *v34 || v33[1] != v34[1] || v33[2] != v34[2] || (v33[3] != v34[3] || v33[4] != v34[4]) && (sub_1002171A4() & 1) == 0 || (v27[5] != v26[5] || v27[6] != v26[6]) && (sub_1002171A4() & 1) == 0 || (v27[7] != v26[7] || v27[8] != v26[8]) && (sub_1002171A4() & 1) == 0 || (v27[9] != v26[9] || v27[10] != v26[10]) && (sub_1002171A4() & 1) == 0 || (v27[11] != v26[11] || v27[12] != v26[12]) && (sub_1002171A4() & 1) == 0 || (v27[13] != v26[13] || v27[14] != v26[14]) && (sub_1002171A4() & 1) == 0 || (v27[15] != v26[15] || v27[16] != v26[16]) && (sub_1002171A4() & 1) == 0 || v27[17] != v26[17])
  {
    goto LABEL_34;
  }

  v28 = *(v31 + 60);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v29 = sub_100216954();
  return v29 & 1;
}

uint64_t _s18TrustedPeersHelper17DirectPCSIdentityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCSService(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4, v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v55 = &v53 - v11;
  v58 = sub_10001148C(&qword_100297E20, &unk_100225D10);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58, v13);
  v61 = &v53 - v14;
  v15 = sub_100216424();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v53 - v23;
  v25 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v53 - v29;
  v57 = type metadata accessor for DirectPCSIdentity(0);
  v31 = *(v57 + 20);
  v32 = *(v26 + 56);
  v62 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_10029D9C0, &qword_100226740);
  v33 = a2 + v31;
  v34 = a2;
  sub_100019C6C(v33, &v30[v32], &qword_10029D9C0, &qword_100226740);
  v35 = *(v16 + 48);
  if (v35(v30, 1, v15) == 1)
  {
    if (v35(&v30[v32], 1, v15) == 1)
    {
      sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_100297E28;
    v37 = &qword_10021DA30;
    v38 = v30;
LABEL_24:
    sub_1000114D4(v38, v36, v37);
    goto LABEL_25;
  }

  sub_100019C6C(v30, v24, &qword_10029D9C0, &qword_100226740);
  if (v35(&v30[v32], 1, v15) == 1)
  {
    (*(v16 + 8))(v24, v15);
    goto LABEL_6;
  }

  v39 = v56;
  (*(v16 + 32))(v56, &v30[v32], v15);
  sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport);
  v40 = sub_100216954();
  v41 = *(v16 + 8);
  v41(v39, v15);
  v41(v24, v15);
  sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
  if ((v40 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v42 = *(v57 + 24);
  v43 = *(v58 + 48);
  v44 = v61;
  sub_100019C6C(v62 + v42, v61, &qword_100297E18, &qword_10021DA28);
  sub_100019C6C(v34 + v42, v44 + v43, &qword_100297E18, &qword_10021DA28);
  v45 = v60;
  v46 = *(v59 + 48);
  if (v46(v44, 1, v60) != 1)
  {
    v48 = v55;
    sub_100019C6C(v44, v55, &qword_100297E18, &qword_10021DA28);
    if (v46(v44 + v43, 1, v45) == 1)
    {
      sub_1000F9228(v48, type metadata accessor for PCSService);
      goto LABEL_14;
    }

    v49 = v44 + v43;
    v50 = v54;
    sub_1000F89AC(v49, v54, type metadata accessor for PCSService);
    if (*v48 != *v50 || (sub_100052F18(*(v48 + 8), *(v48 + 16), *(v50 + 8), *(v50 + 16)) & 1) == 0 || (*(v48 + 24) != *(v50 + 24) || *(v48 + 32) != *(v50 + 32)) && (sub_1002171A4() & 1) == 0)
    {
      sub_1000F9228(v50, type metadata accessor for PCSService);
      sub_1000F9228(v48, type metadata accessor for PCSService);
      v36 = &qword_100297E18;
      v37 = &qword_10021DA28;
      goto LABEL_23;
    }

    v51 = *(v45 + 28);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    LOBYTE(v51) = sub_100216954();
    sub_1000F9228(v50, type metadata accessor for PCSService);
    sub_1000F9228(v48, type metadata accessor for PCSService);
    sub_1000114D4(v44, &qword_100297E18, &qword_10021DA28);
    if (v51)
    {
      goto LABEL_11;
    }

LABEL_25:
    v47 = 0;
    return v47 & 1;
  }

  if (v46(v44 + v43, 1, v45) != 1)
  {
LABEL_14:
    v36 = &qword_100297E20;
    v37 = &unk_100225D10;
LABEL_23:
    v38 = v44;
    goto LABEL_24;
  }

  sub_1000114D4(v44, &qword_100297E18, &qword_10021DA28);
LABEL_11:
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v47 = sub_100216954();
  return v47 & 1;
}

uint64_t _s18TrustedPeersHelper16SupportAppDeviceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v33 - v13;
  v15 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v33 - v19;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    goto LABEL_14;
  }

  v21 = v18;
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_1000519D4(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
    goto LABEL_14;
  }

  v33 = type metadata accessor for SupportAppDevice(0);
  v22 = *(v33 + 48);
  v23 = *(v21 + 48);
  sub_100019C6C(&a1[v22], v20, &qword_10029D780, &qword_1002265D0);
  v34 = v23;
  sub_100019C6C(&a2[v22], &v20[v23], &qword_10029D780, &qword_1002265D0);
  v24 = *(v5 + 48);
  if (v24(v20, 1, v4) != 1)
  {
    sub_100019C6C(v20, v14, &qword_10029D780, &qword_1002265D0);
    v25 = v34;
    if (v24(&v20[v34], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v25], v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
      v28 = sub_100216954();
      v29 = *(v5 + 8);
      v29(v9, v4);
      v29(v14, v4);
      sub_1000114D4(v20, &qword_10029D780, &qword_1002265D0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v14, v4);
LABEL_13:
    sub_1000114D4(v20, &qword_100297E30, &qword_10021DA38);
    goto LABEL_14;
  }

  if (v24(&v20[v34], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1000114D4(v20, &qword_10029D780, &qword_1002265D0);
LABEL_17:
  v30 = *(a1 + 4);
  v31 = *(a2 + 4);
  if (a1[40])
  {
    v30 = v30 != 0;
  }

  if (a2[40] == 1)
  {
    if (v31)
    {
      if (v30 != 1)
      {
        goto LABEL_14;
      }
    }

    else if (v30)
    {
      goto LABEL_14;
    }
  }

  else if (v30 != v31)
  {
    goto LABEL_14;
  }

  if (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) || (sub_1002171A4() & 1) != 0)
  {
    v32 = *(v33 + 44);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v26 = sub_100216954();
    return v26 & 1;
  }

LABEL_14:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s18TrustedPeersHelper15ViewKeysRecordsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100216424();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4, v7);
  v63 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v58 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12, v14);
  v60 = &v56[-v16];
  __chkstk_darwin(v15, v17);
  v19 = &v56[-v18];
  v20 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20, v22);
  v59 = &v56[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v23, v25);
  v61 = &v56[-v27];
  __chkstk_darwin(v26, v28);
  v30 = &v56[-v29];
  v64 = type metadata accessor for ViewKeysRecords(0);
  v31 = v64[5];
  v62 = v20;
  v32 = *(v20 + 48);
  v66 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_10029D9C0, &qword_100226740);
  v65 = a2;
  v33 = a2 + v31;
  v34 = v5;
  sub_100019C6C(v33, &v30[v32], &qword_10029D9C0, &qword_100226740);
  v35 = v5[6];
  if (v35(v30, 1, v4) == 1)
  {
    if (v35(&v30[v32], 1, v4) != 1)
    {
LABEL_11:
      v43 = v30;
LABEL_12:
      sub_1000114D4(v43, &qword_100297E28, &qword_10021DA30);
      goto LABEL_13;
    }

    sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
  }

  else
  {
    sub_100019C6C(v30, v19, &qword_10029D9C0, &qword_100226740);
    if (v35(&v30[v32], 1, v4) == 1)
    {
LABEL_10:
      (v34[1])(v19, v4);
      goto LABEL_11;
    }

    v36 = v5[4];
    v37 = v63;
    v36(v63, &v30[v32], v4);
    sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport);
    v38 = sub_100216954();
    v39 = v34[1];
    v39(v37, v4);
    v39(v19, v4);
    sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
    if ((v38 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v40 = v64[6];
  v30 = v61;
  v41 = v62;
  v42 = *(v62 + 48);
  sub_100019C6C(v66 + v40, v61, &qword_10029D9C0, &qword_100226740);
  sub_100019C6C(v65 + v40, &v30[v42], &qword_10029D9C0, &qword_100226740);
  if (v35(v30, 1, v4) != 1)
  {
    v19 = v60;
    sub_100019C6C(v30, v60, &qword_10029D9C0, &qword_100226740);
    if (v35(&v30[v42], 1, v4) != 1)
    {
      v46 = v63;
      (v34[4])(v63, &v30[v42], v4);
      sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport);
      v57 = sub_100216954();
      v47 = v34[1];
      v47(v46, v4);
      v47(v19, v4);
      sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
      if ((v57 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v35(&v30[v42], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
LABEL_16:
  v48 = v64[7];
  v49 = *(v41 + 48);
  v50 = v59;
  sub_100019C6C(v66 + v48, v59, &qword_10029D9C0, &qword_100226740);
  sub_100019C6C(v65 + v48, &v50[v49], &qword_10029D9C0, &qword_100226740);
  if (v35(v50, 1, v4) == 1)
  {
    if (v35(&v50[v49], 1, v4) == 1)
    {
      sub_1000114D4(v50, &qword_10029D9C0, &qword_100226740);
LABEL_23:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v44 = sub_100216954();
      return v44 & 1;
    }

    goto LABEL_21;
  }

  v51 = v58;
  sub_100019C6C(v50, v58, &qword_10029D9C0, &qword_100226740);
  if (v35(&v50[v49], 1, v4) == 1)
  {
    (v34[1])(v51, v4);
LABEL_21:
    v43 = v50;
    goto LABEL_12;
  }

  v52 = &v50[v49];
  v53 = v63;
  (v34[4])(v63, v52, v4);
  sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport);
  v54 = sub_100216954();
  v55 = v34[1];
  v55(v53, v4);
  v55(v51, v4);
  sub_1000114D4(v50, &qword_10029D9C0, &qword_100226740);
  if (v54)
  {
    goto LABEL_23;
  }

LABEL_13:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s18TrustedPeersHelper15CurrentCKKSItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4, v6);
  v54 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v55 = (&v53 - v11);
  v58 = sub_10001148C(&qword_10029CD90, &unk_100225D00);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58, v13);
  v61 = &v53 - v14;
  v15 = sub_100216424();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v53 - v23;
  v25 = sub_10001148C(&qword_100297E28, &qword_10021DA30);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v53 - v29;
  v57 = type metadata accessor for CurrentCKKSItem(0);
  v31 = *(v57 + 20);
  v32 = *(v26 + 56);
  v62 = a1;
  sub_100019C6C(a1 + v31, v30, &qword_10029D9C0, &qword_100226740);
  v33 = a2 + v31;
  v34 = a2;
  sub_100019C6C(v33, &v30[v32], &qword_10029D9C0, &qword_100226740);
  v35 = *(v16 + 48);
  if (v35(v30, 1, v15) != 1)
  {
    sub_100019C6C(v30, v24, &qword_10029D9C0, &qword_100226740);
    if (v35(&v30[v32], 1, v15) != 1)
    {
      v39 = v56;
      (*(v16 + 32))(v56, &v30[v32], v15);
      sub_1000F9F28(&qword_100297E10, &type metadata accessor for Ckcode_RecordTransport);
      v40 = sub_100216954();
      v41 = *(v16 + 8);
      v41(v39, v15);
      v41(v24, v15);
      sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    (*(v16 + 8))(v24, v15);
LABEL_6:
    v36 = &qword_100297E28;
    v37 = &qword_10021DA30;
    v38 = v30;
LABEL_15:
    sub_1000114D4(v38, v36, v37);
    goto LABEL_16;
  }

  if (v35(&v30[v32], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1000114D4(v30, &qword_10029D9C0, &qword_100226740);
LABEL_8:
  v42 = *(v57 + 24);
  v43 = *(v58 + 48);
  v44 = v61;
  sub_100019C6C(v62 + v42, v61, &qword_100298588, &unk_10021E7E0);
  sub_100019C6C(v34 + v42, v44 + v43, &qword_100298588, &unk_10021E7E0);
  v45 = v60;
  v46 = *(v59 + 48);
  if (v46(v44, 1, v60) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      sub_1000114D4(v44, &qword_100298588, &unk_10021E7E0);
LABEL_25:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v48 = sub_100216954();
      return v48 & 1;
    }

    goto LABEL_13;
  }

  v47 = v55;
  sub_100019C6C(v44, v55, &qword_100298588, &unk_10021E7E0);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    sub_1000F9228(v47, type metadata accessor for CurrentCKKSItemSpecifier);
LABEL_13:
    v36 = &qword_10029CD90;
    v37 = &unk_100225D00;
LABEL_14:
    v38 = v44;
    goto LABEL_15;
  }

  v50 = v44 + v43;
  v51 = v54;
  sub_1000F89AC(v50, v54, type metadata accessor for CurrentCKKSItemSpecifier);
  if ((*v47 != *v51 || v47[1] != v51[1]) && (sub_1002171A4() & 1) == 0 || (v47[2] != v51[2] || v47[3] != v51[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000F9228(v51, type metadata accessor for CurrentCKKSItemSpecifier);
    sub_1000F9228(v47, type metadata accessor for CurrentCKKSItemSpecifier);
    v36 = &qword_100298588;
    v37 = &unk_10021E7E0;
    goto LABEL_14;
  }

  v52 = *(v45 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v52) = sub_100216954();
  sub_1000F9228(v51, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000F9228(v47, type metadata accessor for CurrentCKKSItemSpecifier);
  sub_1000114D4(v44, &qword_100298588, &unk_10021E7E0);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_16:
  v48 = 0;
  return v48 & 1;
}