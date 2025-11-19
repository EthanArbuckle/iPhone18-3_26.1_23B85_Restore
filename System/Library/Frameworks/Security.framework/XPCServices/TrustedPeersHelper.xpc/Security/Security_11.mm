uint64_t sub_100146FA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v48 = a2;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Changes(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustResponse(0);
  v16 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = (&v46 - v23);
  sub_100019C6C(a1, &v46 - v23, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v25;
      v52 = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, &v52);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "updateTrust failed: %{public}s", v29, 0xCu);
      sub_100006128(v30);
    }

    swift_errorRetain();
    v50(v25);
  }

  else
  {
    sub_1001AC038(v24, v19, type metadata accessor for UpdateTrustResponse);
    sub_100019C6C(&v19[*(updated + 24)], v9, &unk_10029D750, &qword_10021E850);
    v35 = *(v47 + 48);
    v36 = v19;
    if (v35(v9, 1, v10) == 1)
    {
      *v14 = 0;
      *(v14 + 1) = 0xE000000000000000;
      *(v14 + 2) = _swiftEmptyArrayStorage;
      *(v14 + 24) = xmmword_10021D470;
      *(v14 + 40) = xmmword_10021D470;
      v14[56] = 0;
      v37 = &v14[*(v10 + 36)];
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v38 = v35(v9, 1, v10);
      if (v38 != 1)
      {
        v38 = sub_1000114D4(v9, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v38 = sub_1001AC038(v9, v14, type metadata accessor for Changes);
    }

    v40 = *(v48 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    __chkstk_darwin(v38, v39);
    *(&v46 - 4) = v14;
    *(&v46 - 3) = v41;
    *(&v46 - 16) = 0;
    sub_100216D34();
    sub_1001AC1E4(v14, type metadata accessor for Changes);
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v42 = sub_100216774();
    sub_100002648(v42, qword_10029D160);
    v43 = sub_100216754();
    v44 = sub_100216C54();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "distrust succeeded", v45, 2u);
    }

    v50(0);
    return sub_1001AC1E4(v36, type metadata accessor for UpdateTrustResponse);
  }
}

uint64_t sub_1001476DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C94();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "drop complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000014, 0x800000010023C4E0);
  return a3(a1);
}

id sub_100147904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v8)
  {
    if (qword_100297520 != -1)
    {
LABEL_37:
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    v21 = sub_100216754();
    v22 = sub_100216C74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No dynamic info for self?", v23, 2u);
    }

    sub_1000561D0();
    v17 = swift_allocError();
    v19 = xmmword_10021DA90;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_100216974();
  v12 = v11;

  LOBYTE(v9) = sub_10004C758(v10, v12, a4);

  if (v9)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    v14 = sub_100216754();
    v15 = sub_100216C74();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Self-drop not allowed", v16, 2u);
    }

    sub_1000561D0();
    v17 = swift_allocError();
    v19 = xmmword_100225FE0;
LABEL_12:
    *v18 = v19;
    *(v18 + 16) = 13;
    (a2)(v17);

    v24 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);

    return [v24 rollback];
  }

  v50 = a3;
  v51 = a2;
  v26 = 1 << *(a4 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  a2 = v27 & *(a4 + 56);
  v28 = (v26 + 63) >> 6;

  v29 = 0;
  if (a2)
  {
    while (1)
    {
      v30 = v29;
LABEL_22:
      v31 = (*(a4 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(a2)))));
      v33 = *v31;
      v32 = v31[1];

      v34 = objc_autoreleasePoolPush();
      sub_100148150(a1, v33, v32, &v53);
      a2 &= a2 - 1;

      objc_autoreleasePoolPop(v34);
      v29 = v30;
      if (!a2)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
LABEL_19:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v30 >= v28)
    {
      break;
    }

    a2 = *(a4 + 56 + 8 * v30);
    ++v29;
    if (a2)
    {
      goto LABEL_22;
    }
  }

  v35 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v53 = 0;
  if ([v35 save:&v53])
  {
    v36 = qword_100297520;
    v37 = v53;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_10029D160);
    v39 = sub_100216754();
    v40 = sub_100216C94();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Saved MOC to drop peer MOs", v41, 2u);
    }

    v51(0);
  }

  else
  {
    v42 = v53;
    v43 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    sub_100002648(v44, qword_10029D160);
    swift_errorRetain();
    v45 = sub_100216754();
    v46 = sub_100216C74();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to save MOC to drop peers: %{public}@", v47, 0xCu);
      sub_1000114D4(v48, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    v51(v43);
  }

  return [v35 rollback];
}

void sub_100148150(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  v12 = sub_10019CE9C(v10, v11, a2, a3);

  if (v4)
  {
    *a4 = v4;
  }

  else if (v12)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);

    v14 = sub_100216754();
    v15 = sub_100216C94();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_100005FB0(a2, a3, &v23);
      _os_log_impl(&_mh_execute_header, v14, v15, "Dropping MO for %{public}s", v16, 0xCu);
      sub_100006128(v17);
    }

    [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc) deleteObject:v12];
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);

    v19 = sub_100216754();
    v20 = sub_100216C94();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100005FB0(a2, a3, &v23);
      _os_log_impl(&_mh_execute_header, v19, v20, "MO for peer not found, but that's ok: %{public}s", v21, 0xCu);
      sub_100006128(v22);
    }
  }
}

uint64_t sub_100148428(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD00000000000001BLL, 0x800000010023D030);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = qword_100297520;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  v10 = sub_100216754();
  v11 = sub_100216C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "beginning a fetchEscrowContents", v12, 2u);
  }

  v13 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = sub_1001ABDEC;
  v14[4] = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001ABE18;
  *(v15 + 24) = v14;
  v20[4] = sub_1001ACCC0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_100285588;
  v16 = _Block_copy(v20);
  v17 = v5;

  [v13 performBlockAndWait:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001486E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29._countAndFlagsBits = sub_100216994();
      sub_100216A14(v29);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v28);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v15, "fetchEscrowContents complete: %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a5 = v24;
    a6 = v25;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001BLL, 0x800000010023D030);
  return a9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100148950(uint64_t a1, void (*a2)(void, unint64_t, void, void, void, unint64_t, uint64_t))
{
  v4 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v5)
  {
    v6 = v5;
    sub_100216974();

    v7 = [*(a1 + v4) bottles];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for BottleMO();
      sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO);
      sub_100216BA4();
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    v10 = sub_100216754();
    v11 = sub_100216C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchEscrowContents failed", v12, 2u);
    }

    sub_1000561D0();
    v14 = swift_allocError();
    v15 = xmmword_100226080;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    v17 = sub_100216754();
    v18 = sub_100216C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchEscrowContents failed", v19, 2u);
    }

    sub_1000561D0();
    v14 = swift_allocError();
    v15 = xmmword_10021DA90;
  }

  *v13 = v15;
  *(v13 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0, 0, 0xF000000000000000, v14);
}

uint64_t sub_100149494(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_10010EEEC(0xD000000000000036, 0x800000010023C4A0);
  if (a3)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    swift_errorRetain();
    v10 = sub_100216754();
    v11 = sub_100216C74();
    sub_1001A9B3C(a1, a2, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136446210;
      v23 = v13;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v24._countAndFlagsBits = sub_100216994();
      sub_100216A14(v24);

      sub_1001A9B3C(a1, a2, 1);
      v14 = sub_100005FB0(0x203A726F727265, 0xE700000000000000, &v23);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchViableBottles failed with %{public}s", v12, 0xCu);
      sub_100006128(v13);
    }

    v15 = 0;
    v16 = 0;
    v17 = a1;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);

    v19 = sub_100216754();
    v20 = sub_100216C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349312;
      *(v21 + 4) = *(a1 + 16);

      *(v21 + 12) = 2050;
      *(v21 + 14) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v19, v20, "fetchViableBottles succeeded with %{public}ld viable bottles and %{public}ld partial bottles", v21, 0x16u);
    }

    else
    {
    }

    v15 = a1;
    v16 = a2;
    v17 = 0;
  }

  return a5(v15, v16, v17);
}

void sub_1001497CC(uint64_t a1)
{
  v2 = type metadata accessor for EscrowInformation(0);
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EscrowPair(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v56 - v15;
  v17 = sub_10001148C(&qword_10029DA78, &qword_100226790);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v58 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v56 - v24;
  __chkstk_darwin(v23, v26);
  v28 = (&v56 - v27);
  sub_100019C6C(a1, &v56 - v27, &qword_10029DA78, &qword_100226790);
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  v30 = *(*(ViableBottlesResponse - 8) + 48);
  if (v30(v28, 1, ViableBottlesResponse) != 1)
  {
    v59 = *v28;

    sub_1001AC1E4(v28, type metadata accessor for FetchViableBottlesResponse);
    sub_100019C6C(a1, v25, &qword_10029DA78, &qword_100226790);
    v35 = v30(v25, 1, ViableBottlesResponse);
    v56 = v6;
    if (v35 == 1)
    {
      sub_1000114D4(v25, &qword_10029DA78, &qword_100226790);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v36 = sub_100216774();
      sub_100002648(v36, qword_10029D160);
      v37 = sub_100216754();
      v38 = sub_100216C54();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "fetchViableBottles returned no partially viable bottles, but that's ok", v39, 2u);
      }

      v40 = _swiftEmptyArrayStorage;
    }

    else
    {
      v40 = *(v25 + 1);

      sub_1001AC1E4(v25, type metadata accessor for FetchViableBottlesResponse);
    }

    v41 = v58;
    sub_100019C6C(a1, v58, &qword_10029DA78, &qword_100226790);
    if (v30(v41, 1, ViableBottlesResponse) == 1)
    {
      sub_1000114D4(v41, &qword_10029DA78, &qword_100226790);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v42 = sub_100216774();
      sub_100002648(v42, qword_10029D160);
      v43 = sub_100216754();
      v44 = sub_100216C54();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "fetchViableBottles returned no legacy escrow records", v45, 2u);
      }

      v46 = _swiftEmptyArrayStorage;
    }

    else
    {
      v46 = *(v41 + 16);

      sub_1001AC1E4(v41, type metadata accessor for FetchViableBottlesResponse);
    }

    v47 = v59;
    v48 = *(v59 + 16);
    if (v48)
    {
      v49 = 0;
      while (v49 < *(v47 + 16))
      {
        sub_1001AC0A0(v47 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49, v16, type metadata accessor for EscrowPair);
        sub_10014A054(v16, v60, &selRef_fullyViableEscrowRecords, sub_1001ACC84, "fetchViableBottles already knows about record, re-adding entry, label = %{public}s", &selRef_removeFullyViableEscrowRecords_, 0, sub_1001ACC68);
        ++v49;
        sub_1001AC1E4(v16, type metadata accessor for EscrowPair);
        v47 = v59;
        if (v48 == v49)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:

      v50 = v40[2];
      if (!v50)
      {
LABEL_28:

        v52 = v46[2];
        v54 = v56;
        v53 = v57;
        if (!v52)
        {
LABEL_32:

          return;
        }

        v55 = 0;
        while (v55 < v46[2])
        {
          sub_1001AC0A0(v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v55, v54, type metadata accessor for EscrowInformation);
          sub_10014B678(v54, v60);
          ++v55;
          sub_1001AC1E4(v54, type metadata accessor for EscrowInformation);
          if (v52 == v55)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_35;
      }

      v51 = 0;
      while (v51 < v40[2])
      {
        sub_1001AC0A0(v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v51, v13, type metadata accessor for EscrowPair);
        sub_10014A054(v13, v60, &selRef_partiallyViableEscrowRecords, sub_1001ABDCC, "fetchViableBottles already knows about record, re-adding entry: %{public}s", &selRef_removePartiallyViableEscrowRecords_, 1u, sub_1001ABDAC);
        ++v51;
        sub_1001AC1E4(v13, type metadata accessor for EscrowPair);
        if (v50 == v51)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000114D4(v28, &qword_10029DA78, &qword_100226790);
  if (qword_100297520 != -1)
  {
LABEL_36:
    swift_once();
  }

  v31 = sub_100216774();
  sub_100002648(v31, qword_10029D160);
  v32 = sub_100216754();
  v33 = sub_100216C54();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "fetchViableBottles returned no viable bottles", v34, 2u);
  }
}

uint64_t sub_10014A054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(id *), const char *a5, SEL *a6, unsigned int a7, uint64_t (*a8)(id *))
{
  v131 = a8;
  v132 = a3;
  v129 = a7;
  v125 = a5;
  v126 = a6;
  v127 = a4;
  v137 = a2;
  v9 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v133 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v16 = &v124 - v15;
  v17 = type metadata accessor for EscrowInformation(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v128 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v136 = (&v124 - v24);
  v25 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v29 = &v124 - v28;
  v30 = type metadata accessor for Bottle(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v30, v33);
  v130 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v38 = &v124 - v37;
  v39 = *(a1 + *(type metadata accessor for EscrowPair(0) + 20));
  v40 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(v39 + v40, v29, &unk_10029D880, &qword_10021E830);
  v41 = *(v31 + 48);
  v42 = v41(v29, 1, v30);
  v135 = v38;
  if (v42 == 1)
  {
    *v38 = xmmword_10021D470;
    *(v38 + 1) = xmmword_10021D470;
    *(v38 + 2) = xmmword_10021D470;
    *(v38 + 3) = xmmword_10021D470;
    *(v38 + 8) = 0;
    *(v38 + 9) = 0xE000000000000000;
    *(v38 + 10) = 0;
    *(v38 + 11) = 0xE000000000000000;
    v43 = &v38[*(v30 + 40)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v41(v29, 1, v30) != 1)
    {
      sub_1000114D4(v29, &unk_10029D880, &qword_10021E830);
    }
  }

  else
  {
    sub_1001AC038(v29, v38, type metadata accessor for Bottle);
  }

  v44 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(v39 + v44, v16, &qword_1002985C8, &qword_10021E838);
  v45 = *(v18 + 48);
  if (v45(v16, 1, v17) == 1)
  {
    v46 = v136;
    *v136 = 0;
    v46[1] = 0;
    v46[3] = 0;
    v46[4] = 0;
    v46[2] = 0xE000000000000000;
    *(v46 + 40) = 1;
    v46[6] = 0;
    *(v46 + 56) = 1;
    v46[8] = 0;
    v46[9] = 0xE000000000000000;
    v46[10] = 0;
    v46[11] = 0xE000000000000000;
    v47 = v46 + v17[11];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v48 = v17[12];
    v49 = sub_1002164A4();
    (*(*(v49 - 8) + 56))(v46 + v48, 1, 1, v49);
    v50 = v17[13];
    v51 = type metadata accessor for EscrowInformation.Metadata(0);
    (*(*(v51 - 8) + 56))(v46 + v50, 1, 1, v51);
    if (v45(v16, 1, v17) != 1)
    {
      sub_1000114D4(v16, &qword_1002985C8, &qword_10021E838);
    }
  }

  else
  {
    v46 = v136;
    sub_1001AC038(v16, v136, type metadata accessor for EscrowInformation);
  }

  v52 = v39 + v44;
  v53 = v133;
  sub_100019C6C(v52, v133, &qword_1002985C8, &qword_10021E838);
  v54 = v45(v53, 1, v17);
  sub_1000114D4(v53, &qword_1002985C8, &qword_10021E838);
  if (v54 == 1)
  {
    v55 = v135;
    v56 = v137;
    goto LABEL_24;
  }

  v57 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v56 = v137;
  v58 = [*(v137 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) *v132];
  v55 = v135;
  if (v58)
  {
    v59 = v58;
    v138 = 0;
    v60 = type metadata accessor for EscrowRecordMO();
    v61 = sub_1001A13C4(&qword_10029DA88, type metadata accessor for EscrowRecordMO);
    sub_100216BA4();

    if (v138)
    {
      v133 = v61;
      __chkstk_darwin(v62, v63);
      *(&v124 - 2) = v46;
      v65 = sub_10018843C(v127, (&v124 - 4), v64, &unk_10029DA90, &unk_1002267A0, sub_1001EED88, type metadata accessor for EscrowRecordMO);
      if ((v65 & 0xC000000000000001) != 0)
      {
        v66 = sub_100216ED4();
        v67 = v128;
        if (v66)
        {
LABEL_15:
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v68 = sub_100216774();
          sub_100002648(v68, qword_10029D160);
          sub_1001AC0A0(v136, v67, type metadata accessor for EscrowInformation);
          v69 = sub_100216754();
          v70 = sub_100216C54();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v134 = v60;
            v72 = v71;
            v132 = swift_slowAlloc();
            v138 = v132;
            *v72 = 136446210;
            v73 = v67;
            v75 = *(v67 + 8);
            v74 = *(v67 + 16);

            sub_1001AC1E4(v73, type metadata accessor for EscrowInformation);
            v76 = sub_100005FB0(v75, v74, &v138);

            *(v72 + 4) = v76;
            v55 = v135;
            _os_log_impl(&_mh_execute_header, v69, v70, v125, v72, 0xCu);
            sub_100006128(v132);
          }

          else
          {

            sub_1001AC1E4(v67, type metadata accessor for EscrowInformation);
          }

          v56 = v137;
          v77 = *(v137 + v57);
          isa = sub_100216B94().super.isa;

          [v77 *v126];

          goto LABEL_23;
        }
      }

      else
      {
        v67 = v128;
        if (*(v65 + 16))
        {
          goto LABEL_15;
        }
      }

LABEL_23:
      v46 = v136;
      sub_1001F7878(v136, v129);
    }
  }

LABEL_24:
  v79 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v80 = [*(v56 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) bottles];
  if (!v80)
  {
    goto LABEL_33;
  }

  v81 = v80;
  v138 = 0;
  type metadata accessor for BottleMO();
  sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO);
  sub_100216BA4();

  if (!v138)
  {
    goto LABEL_33;
  }

  __chkstk_darwin(v82, v83);
  *(&v124 - 2) = v55;
  v85 = sub_10018843C(v131, (&v124 - 4), v84, &qword_10029D908, &unk_1002266A8, sub_1001EED5C, type metadata accessor for BottleMO);
  if ((v85 & 0xC000000000000001) == 0)
  {
    v97 = *(v85 + 16);

    if (v97)
    {
      goto LABEL_28;
    }

LABEL_33:
    type metadata accessor for BottleMO();
    v98 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v56 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
    v99 = v55[8];
    v100 = v55[9];
    v101 = sub_100216964();
    [v98 setPeerID:v101];

    v102 = v55[10];
    v103 = v55[11];
    v104 = sub_100216964();
    [v98 setBottleID:v104];

    v105 = v55[2];
    v106 = v55[3];
    v107 = sub_100216204().super.isa;
    [v98 setEscrowedSigningSPKI:v107];

    v108 = v55[4];
    v109 = v55[5];
    v110 = sub_100216204().super.isa;
    [v98 setSignatureUsingEscrowKey:v110];

    v111 = v55[6];
    v112 = v55[7];
    v113 = sub_100216204().super.isa;
    [v98 setSignatureUsingPeerKey:v113];

    v114 = *v55;
    v115 = v55[1];
    v116 = sub_100216204().super.isa;
    [v98 setContents:v116];

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v117 = sub_100216774();
    sub_100002648(v117, qword_10029D160);
    v89 = v98;
    v118 = sub_100216754();
    v119 = sub_100216C54();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138543362;
      *(v120 + 4) = v89;
      *v121 = v89;
      v122 = v89;
      _os_log_impl(&_mh_execute_header, v118, v119, "fetchViableBottles saving new bottle: %{public}@", v120, 0xCu);
      sub_1000114D4(v121, &qword_10029D580, &unk_10021CCC0);

      v56 = v137;
    }

    [*(v56 + v79) addBottlesObject:v89];
    goto LABEL_38;
  }

  v86 = sub_100216ED4();

  if (!v86)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v87 = sub_100216774();
  sub_100002648(v87, qword_10029D160);
  v88 = v130;
  sub_1001AC0A0(v55, v130, type metadata accessor for Bottle);
  v89 = sub_100216754();
  v90 = sub_100216C54();
  if (!os_log_type_enabled(v89, v90))
  {

    sub_1001AC1E4(v88, type metadata accessor for Bottle);
    goto LABEL_39;
  }

  v91 = swift_slowAlloc();
  v92 = swift_slowAlloc();
  v138 = v92;
  *v91 = 136446210;
  v93 = v88;
  v94 = *(v88 + 80);
  v95 = *(v88 + 88);

  sub_1001AC1E4(v93, type metadata accessor for Bottle);
  v96 = sub_100005FB0(v94, v95, &v138);

  *(v91 + 4) = v96;
  _os_log_impl(&_mh_execute_header, v89, v90, "fetchViableBottles already knows about bottle: %{public}s", v91, 0xCu);
  sub_100006128(v92);

LABEL_38:

LABEL_39:
  sub_1001AC1E4(v46, type metadata accessor for EscrowInformation);
  return sub_1001AC1E4(v55, type metadata accessor for Bottle);
}

uint64_t sub_10014ADC0(void **a1, uint64_t a2)
{
  v5 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v40 - v8;
  v10 = type metadata accessor for EscrowInformation.Metadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [v16 label];
  if (!v17)
  {
    v24 = 0;
    return v24 & 1;
  }

  v40[5] = v2;
  v18 = v17;
  v19 = sub_100216974();
  v21 = v20;

  if (v19 == *(a2 + 8) && v21 == *(a2 + 16))
  {
  }

  else
  {
    v23 = sub_1002171A4();

    if ((v23 & 1) == 0)
    {
      v24 = 0;
      return v24 & 1;
    }
  }

  v25 = [v16 escrowMetadata];
  if (v25 && (v26 = v25, v27 = [v25 bottleID], v26, v27))
  {
    v28 = sub_100216974();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = type metadata accessor for EscrowInformation(0);
  sub_100019C6C(a2 + *(v31 + 52), v9, &unk_10029DAA0, &qword_10021E870);
  v32 = *(v11 + 48);
  if (v32(v9, 1, v10) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v33 = *(v10 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *&v15[v33] = qword_100298568;
    v34 = v32(v9, 1, v10);

    if (v34 != 1)
    {
      sub_1000114D4(v9, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001AC038(v9, v15, type metadata accessor for EscrowInformation.Metadata);
  }

  v35 = (*&v15[*(v10 + 20)] + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  sub_1001AC1E4(v15, type metadata accessor for EscrowInformation.Metadata);
  if (v30)
  {
    if (v28 == v37 && v30 == v36)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1002171A4();
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_10014B160(id *a1, uint64_t *a2)
{
  v3 = *a1;
  result = [*a1 peerID];
  if (result)
  {
    v5 = result;
    v6 = sub_100216974();
    v8 = v7;

    if (v6 == a2[8] && v8 == a2[9])
    {
    }

    else
    {
      v10 = sub_1002171A4();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    result = [v3 bottleID];
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = sub_100216974();
    v14 = v13;

    if (v12 == a2[10] && v14 == a2[11])
    {
    }

    else
    {
      v15 = sub_1002171A4();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = [v3 escrowedSigningSPKI];
    if (v16)
    {
      v17 = v16;
      v18 = sub_100216224();
      v20 = v19;

      v21 = a2[2];
      v22 = a2[3];
      if (v20 >> 60 != 15)
      {
        if (v22 >> 60 == 15)
        {
          goto LABEL_42;
        }

        v23 = a2[2];
        v24 = a2[3];
        sub_100012558(v21, v22);
        sub_100012558(v23, v24);
        sub_1000602D0(v18, v20);
        v25 = sub_100052F18(v18, v20, v23, v24);
        sub_10004CD18(v23, v24);
        sub_100002BF0(v23, v24);
        sub_10004CD18(v18, v20);
        sub_10004CD18(v18, v20);
        if ((v25 & 1) == 0)
        {
          return 0;
        }

LABEL_22:
        v26 = [v3 signatureUsingEscrowKey];
        if (v26)
        {
          v27 = v26;
          v18 = sub_100216224();
          v20 = v28;

          v21 = a2[4];
          v22 = a2[5];
          if (v20 >> 60 != 15)
          {
            if (v22 >> 60 == 15)
            {
              goto LABEL_42;
            }

            v29 = a2[4];
            v30 = a2[5];
            sub_100012558(v21, v22);
            sub_100012558(v29, v30);
            sub_1000602D0(v18, v20);
            v31 = sub_100052F18(v18, v20, v29, v30);
            sub_10004CD18(v29, v30);
            sub_100002BF0(v29, v30);
            sub_10004CD18(v18, v20);
            sub_10004CD18(v18, v20);
            if ((v31 & 1) == 0)
            {
              return 0;
            }

LABEL_30:
            v32 = [v3 signatureUsingPeerKey];
            if (v32)
            {
              v33 = v32;
              v18 = sub_100216224();
              v20 = v34;

              v21 = a2[6];
              v22 = a2[7];
              if (v20 >> 60 != 15)
              {
                if (v22 >> 60 != 15)
                {
                  v35 = a2[6];
                  v36 = a2[7];
                  sub_100012558(v21, v22);
                  sub_100012558(v35, v36);
                  sub_1000602D0(v18, v20);
                  v37 = sub_100052F18(v18, v20, v35, v36);
                  sub_10004CD18(v35, v36);
                  sub_100002BF0(v35, v36);
                  sub_10004CD18(v18, v20);
                  sub_10004CD18(v18, v20);
                  if ((v37 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_38:
                  v38 = [v3 contents];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = sub_100216224();
                    v42 = v41;

                    v43 = *a2;
                    v44 = a2[1];
                    if (v42 >> 60 != 15)
                    {
                      if (v44 >> 60 != 15)
                      {
                        v45 = *a2;
                        sub_100012558(v43, v44);
                        sub_100012558(v45, v44);
                        sub_1000602D0(v40, v42);
                        v46 = sub_100052F18(v40, v42, v45, v44);
                        sub_10004CD18(v45, v44);
                        sub_100002BF0(v45, v44);
                        sub_10004CD18(v40, v42);
                        sub_10004CD18(v40, v42);
                        return v46 & 1;
                      }

LABEL_49:
                      v51 = v43;
                      sub_100012558(v43, v44);
                      sub_10004CD18(v40, v42);
                      v49 = v51;
                      v50 = v44;
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v40 = 0;
                    v43 = *a2;
                    v44 = a2[1];
                    v42 = 0xF000000000000000;
                  }

                  if (v44 >> 60 == 15)
                  {
                    sub_100012558(v43, v44);
                    sub_10004CD18(v40, v42);
                    return 1;
                  }

                  goto LABEL_49;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v18 = 0;
              v21 = a2[6];
              v22 = a2[7];
              v20 = 0xF000000000000000;
            }

            if (v22 >> 60 == 15)
            {
              sub_100012558(v21, v22);
              sub_10004CD18(v18, v20);
              goto LABEL_38;
            }

LABEL_42:
            v47 = v21;
            v48 = v22;
            sub_100012558(v21, v22);
            sub_10004CD18(v18, v20);
            v49 = v47;
            v50 = v48;
LABEL_43:
            sub_10004CD18(v49, v50);
            return 0;
          }
        }

        else
        {
          v18 = 0;
          v21 = a2[4];
          v22 = a2[5];
          v20 = 0xF000000000000000;
        }

        if (v22 >> 60 != 15)
        {
          goto LABEL_42;
        }

        sub_100012558(v21, v22);
        sub_10004CD18(v18, v20);
        goto LABEL_30;
      }
    }

    else
    {
      v18 = 0;
      v21 = a2[2];
      v22 = a2[3];
      v20 = 0xF000000000000000;
    }

    if (v22 >> 60 != 15)
    {
      goto LABEL_42;
    }

    sub_100012558(v21, v22);
    sub_10004CD18(v18, v20);
    goto LABEL_22;
  }

  return result;
}

void sub_10014B678(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for EscrowInformation(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v56 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v56 - v16;
  v18 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v19 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) legacyEscrowRecords];
  if (!v19)
  {
    return;
  }

  v20 = v19;
  v64 = 0;
  v21 = type metadata accessor for EscrowRecordMO();
  v63 = sub_1001A13C4(&qword_10029DA88, type metadata accessor for EscrowRecordMO);
  sub_100216BA4();

  if (!v64)
  {
    return;
  }

  v62 = v21;
  __chkstk_darwin(v22, v23);
  *(&v56 - 2) = a1;
  v25 = sub_10018843C(sub_1001ABD8C, (&v56 - 4), v24, &unk_10029DA90, &unk_1002267A0, sub_1001EED88, type metadata accessor for EscrowRecordMO);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_100216ED4();
    p_cache = CKKSSOSSelfPeer.cache;
    if (v26)
    {
LABEL_5:
      v61 = v14;
      if (p_cache[164] != -1)
      {
        swift_once();
      }

      v28 = sub_100216774();
      sub_100002648(v28, qword_10029D160);
      sub_1001AC0A0(a1, v17, type metadata accessor for EscrowInformation);
      v29 = sub_100216754();
      v30 = sub_100216C54();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v58 = a2;
        v32 = v31;
        v33 = swift_slowAlloc();
        v60 = v2;
        v34 = v33;
        v64 = v33;
        *v32 = 136446210;
        v57 = *(v17 + 1);
        v59 = v10;
        v35 = *(v17 + 2);

        sub_1001AC1E4(v17, type metadata accessor for EscrowInformation);
        v36 = sub_100005FB0(v57, v35, &v64);
        v10 = v59;

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "fetchViableBottles already knows about legacy record %{public}s, re-adding entry", v32, 0xCu);
        sub_100006128(v34);

        a2 = v58;
      }

      else
      {

        sub_1001AC1E4(v17, type metadata accessor for EscrowInformation);
      }

      v14 = v61;
      v37 = *(a2 + v18);
      isa = sub_100216B94().super.isa;

      [v37 removeLegacyEscrowRecords:isa];

      goto LABEL_13;
    }
  }

  else
  {
    p_cache = (CKKSSOSSelfPeer + 16);
    if (*(v25 + 16))
    {
      goto LABEL_5;
    }
  }

LABEL_13:
  v39 = a1[1];
  v40 = a1[2];
  v65._countAndFlagsBits = 0x656C62756F642ELL;
  v65._object = 0xE700000000000000;
  if (sub_100216AA4(v65))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v41 = sub_100216774();
    sub_100002648(v41, qword_10029D160);
    sub_1001AC0A0(a1, v14, type metadata accessor for EscrowInformation);
    v42 = sub_100216754();
    v43 = sub_100216C54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136446210;
      v46 = *(v14 + 1);
      v47 = *(v14 + 2);

      sub_1001AC1E4(v14, type metadata accessor for EscrowInformation);
      v48 = sub_100005FB0(v46, v47, &v64);

      *(v44 + 4) = v48;
      v49 = "ignoring double enrollment record %{public}s";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v42, v43, v49, v44, 0xCu);
      sub_100006128(v45);

      return;
    }

    v50 = v14;
  }

  else
  {
    v66._object = 0x800000010023D010;
    v66._countAndFlagsBits = 0xD000000000000016;
    if (sub_100216A94(v66))
    {
      sub_1001F7878(a1, 2);
      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v51 = sub_100216774();
    sub_100002648(v51, qword_10029D160);
    sub_1001AC0A0(a1, v10, type metadata accessor for EscrowInformation);
    v42 = sub_100216754();
    v43 = sub_100216C54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136446210;
      v52 = v10;
      v53 = *(v10 + 1);
      v54 = *(v52 + 16);

      sub_1001AC1E4(v52, type metadata accessor for EscrowInformation);
      v55 = sub_100005FB0(v53, v54, &v64);

      *(v44 + 4) = v55;
      v49 = "ignoring non-iCDP record: %{public}s";
      goto LABEL_25;
    }

    v50 = v10;
  }

  sub_1001AC1E4(v50, type metadata accessor for EscrowInformation);
}

uint64_t sub_10014BD8C(id *a1, uint64_t a2)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100216974();
    v7 = v6;

    if (v5 == *(a2 + 8) && v7 == *(a2 + 16))
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1002171A4();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10014BE34(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v4 = a1;
    a1 = 0;
    a2 = 0;
  }

  else
  {
    v4 = 0;
  }

  return a4(a1, a2, v4);
}

uint64_t sub_10014BE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);
  v7 = sub_100216754();
  v8 = sub_100216C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "beginning a removeEscrowCache", v9, 2u);
  }

  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v10 = v3;
  v11 = sub_10019C8E0(v10, 0xD000000000000019, 0x800000010023CFF0);

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v13 = *&v10[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = sub_1001ABD3C;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001ABD48;
  *(v15 + 24) = v14;
  v20[4] = sub_1001ACCC0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_1002854E8;
  v16 = _Block_copy(v20);
  v17 = v10;

  [v13 performBlockAndWait:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014C13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "removeEscrowCache complete %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023CFF0);
  return a3(a1);
}

id sub_10014C364()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    [*(v0 + v1) removeFullyViableEscrowRecords:v2];
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    [*(v0 + v1) removePartiallyViableEscrowRecords:v4];
  }

  v6 = [*(v0 + v1) legacyEscrowRecords];
  if (v6)
  {
    v7 = v6;
    [*(v0 + v1) removeLegacyEscrowRecords:v6];
  }

  v8 = *(v0 + v1);

  return [v8 setEscrowFetchDate:0];
}

uint64_t sub_10014C458(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a3 & 1) == 0 && (*(a1 + 16) || *(a2 + 16)))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029D160);
    v22 = sub_100216754();
    v23 = sub_100216C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "fetchViableBottlesFromCache returned bottles", v24, 2u);
    }

    return a4(a1, a2, 0);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = sub_100216754();
    v16 = sub_100216C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetchViableBottlesFromCache did not return any bottles, checking cuttlefish", v17, 2u);
    }

    return sub_10014E26C(a7, a8, a9, a10, a4, a5);
  }
}

uint64_t sub_10014C66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchEscrowRecordsWithSemaphore from source %ld", v11, 0xCu);
  }

  if (a1 == 2)
  {
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = v4;

    v14 = v4;
    sub_10014E26C(0, 0, 0, 0, sub_1001ABCC8, v13);
  }

  else
  {
    if (a1 == 1)
    {

      return sub_10014D024(0, a2, a3);
    }

    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = v4;

    v16 = v4;
    sub_10014D024(1, sub_1001ABCB8, v15);
  }
}

uint64_t sub_10014C878(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, void *a5)
{
  if ((a2 & 1) != 0 || !*(a1 + 16))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = sub_100216754();
    v16 = sub_100216C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetchEscrowRecordsFromCache did not return any records, checking cuttlefish", v17, 2u);
    }

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;

    v19 = a5;
    sub_10014E26C(0, 0, 0, 0, sub_1001ACBB4, v18);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    v10 = sub_100216754();
    v11 = sub_100216C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchEscrowRecordsFromCache returned records", v12, 2u);
    }

    return a3(a1, 0);
  }
}

uint64_t sub_10014CAC0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchViableBottlesFromCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  v12 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001ABC60;
  *(v14 + 24) = v13;
  v19[4] = sub_1001ACCC0;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100109050;
  v19[3] = &unk_1002853D0;
  v15 = _Block_copy(v19);
  v16 = v4;

  [v12 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014CD0C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void))
{
  v6 = qword_100297520;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  v8 = sub_100216754();
  v9 = sub_100216C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "starting fetchFromEscrowCacheWithSemaphore and will check timeout: %{BOOL}d", v10, 8u);
  }

  v11 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  __chkstk_darwin(v12, v13);
  sub_10001148C(&qword_10029DA70, &qword_100226788);
  sub_100216D34();
  a3(v15, v16, v17);
  sub_1001A9B3C(v15, v16, v17);
}

BOOL sub_10014CEF4(uint64_t *a1)
{
  v2 = sub_1001FBCB8();
  v3 = [v2 viableBottles];
  v4 = sub_100216B24();

  *a1 = v4;
  v5 = [v2 partialBottles];
  v6 = sub_100216B24();

  a1[1] = v6;
  v7 = [v2 viableBottles];
  v8 = sub_100216B24();

  v9 = *(v8 + 16);

  if (v9)
  {

    return 0;
  }

  else
  {
    v11 = [v2 partialBottles];
    v12 = sub_100216B24();

    v13 = *(v12 + 16);

    return v13 == 0;
  }
}

uint64_t sub_10014D024(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "starting fetchEscrowRecordsFromCacheWithSemaphore and will check timeout: %{BOOL}d", v11, 8u);
  }

  v12 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001ABBBC;
  *(v14 + 24) = v13;
  v19[4] = sub_1001ACCC0;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100109050;
  v19[3] = &unk_100285358;
  v15 = _Block_copy(v19);
  v16 = v4;

  [v12 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014D270(uint64_t a1, char a2, void (*a3)(uint64_t, void))
{
  v6 = qword_100297520;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  v8 = sub_100216754();
  v9 = sub_100216C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "starting fetchFromEscrowCacheWithSemaphore and will check timeout: %{BOOL}d", v10, 8u);
  }

  v11 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  __chkstk_darwin(v12, v13);
  sub_10001148C(&qword_10029DA80, &qword_100226798);
  sub_100216D34();
  a3(v15, v16);
  sub_1001ABC14(v15, v16);
}

BOOL sub_10014D450(char **a1)
{
  sub_1001FBE54();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_1002170F4();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 data];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v20 = a1;
    v12 = v11;
    v13 = sub_100216224();
    v19 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100182FA0(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100182FA0((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    a1 = v20;
    *(v17 + 4) = v13;
    *(v17 + 5) = v19;
  }

  while (v6 != v5);
LABEL_23:

  *a1 = v7;
  return *(v7 + 2) == 0;
}

uint64_t sub_10014D604(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v52 - v16;
  __chkstk_darwin(v15, v18);
  v53 = &v52 - v19;
  v20 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v52 - v23;
  if (a1(&v54))
  {
    v25 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
    if (!v25)
    {
      (*(v8 + 56))(v24, 1, 1, v7);
      sub_1000114D4(v24, &qword_10029D778, &qword_1002265C8);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v41 = sub_100216774();
      sub_100002648(v41, qword_10029D160);
      v42 = sub_100216754();
      v43 = sub_100216C54();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "no cached records were found, no saved escrowFetchDate either, returning no cache error", v44, 2u);
      }

      sub_1000561D0();
      v46 = swift_allocError();
      v47 = xmmword_100226090;
      goto LABEL_29;
    }

    v26 = v25;
    sub_100216344();

    (*(v8 + 56))(v24, 0, 1, v7);
    sub_1000114D4(v24, &qword_10029D778, &qword_1002265C8);
  }

  if ((a4 & 1) == 0)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v36 = sub_100216774();
    sub_100002648(v36, qword_10029D160);
    v37 = sub_100216754();
    v38 = sub_100216C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "skipping timeout check and directly returning cached records", v39, 2u);
    }

    return v54;
  }

  v27 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
  if (v27)
  {
    v28 = v53;
    v29 = v27;
    sub_100216344();

    sub_100216374();
    v30 = *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_escrowCacheTimeout);
    sub_1002162E4();
    LOBYTE(v29) = sub_100216304();
    v31 = *(v8 + 8);
    v31(v13, v7);
    v31(v17, v7);
    if (v29)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v32 = sub_100216774();
      sub_100002648(v32, qword_10029D160);
      v33 = sub_100216754();
      v34 = sub_100216C54();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "escrow cache still valid", v35, 2u);
      }

      v31(v28, v7);
      return v54;
    }

    v31(v28, v7);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v48 = sub_100216774();
  sub_100002648(v48, qword_10029D160);
  v49 = sub_100216754();
  v50 = sub_100216C54();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "escrow cache no longer valid", v51, 2u);
  }

  sub_1000561D0();
  v46 = swift_allocError();
  v47 = xmmword_100226070;
LABEL_29:
  *v45 = v47;
  *(v45 + 16) = 13;

  return v46;
}

uint64_t sub_10014DC3C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v52 - v16;
  __chkstk_darwin(v15, v18);
  v52 = &v52 - v19;
  v20 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v52 - v23;
  if (a1(&v53))
  {
    v25 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
    if (!v25)
    {
      (*(v8 + 56))(v24, 1, 1, v7);
      sub_1000114D4(v24, &qword_10029D778, &qword_1002265C8);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v41 = sub_100216774();
      sub_100002648(v41, qword_10029D160);
      v42 = sub_100216754();
      v43 = sub_100216C54();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "no cached records were found, no saved escrowFetchDate either, returning no cache error", v44, 2u);
      }

      sub_1000561D0();
      v46 = swift_allocError();
      v47 = xmmword_100226090;
      goto LABEL_29;
    }

    v26 = v25;
    sub_100216344();

    (*(v8 + 56))(v24, 0, 1, v7);
    sub_1000114D4(v24, &qword_10029D778, &qword_1002265C8);
  }

  if ((a4 & 1) == 0)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v36 = sub_100216774();
    sub_100002648(v36, qword_10029D160);
    v37 = sub_100216754();
    v38 = sub_100216C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "skipping timeout check and directly returning cached records", v39, 2u);
    }

    return v53;
  }

  v27 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
  if (v27)
  {
    v28 = v52;
    v29 = v27;
    sub_100216344();

    sub_100216374();
    v30 = *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_escrowCacheTimeout);
    sub_1002162E4();
    LOBYTE(v29) = sub_100216304();
    v31 = *(v8 + 8);
    v31(v13, v7);
    v31(v17, v7);
    if (v29)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v32 = sub_100216774();
      sub_100002648(v32, qword_10029D160);
      v33 = sub_100216754();
      v34 = sub_100216C54();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "escrow cache still valid", v35, 2u);
      }

      v31(v28, v7);
      return v53;
    }

    v31(v28, v7);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v48 = sub_100216774();
  sub_100002648(v48, qword_10029D160);
  v49 = sub_100216754();
  v50 = sub_100216C54();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "escrow cache no longer valid", v51, 2u);
  }

  sub_1000561D0();
  v46 = swift_allocError();
  v47 = xmmword_100226070;
LABEL_29:
  *v45 = v47;
  *(v45 + 16) = 13;

  return v46;
}

uint64_t sub_10014E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v33 = a5;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v14 = *(*(ViableBottlesRequest - 8) + 64);
  __chkstk_darwin(ViableBottlesRequest, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  sub_100002648(v18, qword_10029D160);
  v19 = sub_100216754();
  v20 = sub_100216C54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v7;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "starting fetchViableBottlesWithSemaphoreFromCuttlefish", v21, 2u);
    v7 = v32;
  }

  __chkstk_darwin(v22, v23);
  *(&v31 - 4) = a3;
  *(&v31 - 3) = a4;
  *(&v31 - 2) = a1;
  *(&v31 - 1) = a2;
  sub_1001A13C4(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest);
  sub_100216654();
  v24 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v25 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v24);
  v26 = swift_allocObject();
  v26[2] = v33;
  v26[3] = a6;
  v26[4] = v7;
  v27 = *(v25 + 16);
  v28 = *(v27 + 64);

  v29 = v7;
  v28(v17, sub_1001ABB74, v26, v24, v27);

  return sub_1001AC1E4(v17, type metadata accessor for FetchViableBottlesRequest);
}

uint64_t sub_10014E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v25 = a2;
  v8 = type metadata accessor for Metrics(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OctagonPlatformSupportsSOS() && (v14 = SOSCompatibilityModeEnabled(), !v14))
  {
    v20 = 0;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    v17 = sub_100216754();
    v18 = sub_100216C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = a4;
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Requesting Cuttlefish to filter records by Octagon Only", v19, 2u);
      a4 = v24;
    }

    v20 = 1;
  }

  *a1 = v20;
  *(a1 + 8) = 1;
  __chkstk_darwin(v14, v15);
  v21 = v26;
  *(&v24 - 4) = v25;
  *(&v24 - 3) = v21;
  *(&v24 - 2) = a4;
  *(&v24 - 1) = a5;
  sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics);
  sub_100216654();
  v22 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  sub_1000114D4(a1 + v22, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v13, a1 + v22, type metadata accessor for Metrics);
  return (*(v9 + 56))(a1 + v22, 0, 1, v8);
}

uint64_t sub_10014E80C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = a1[3];

  a1[2] = v8;
  a1[3] = v9;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    a4 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = a1[1];

  *a1 = a4;
  a1[1] = v11;
  return result;
}

uint64_t sub_10014E8A0(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  v8 = *(*(ViableBottlesResponse - 8) + 64);
  __chkstk_darwin(ViableBottlesResponse - 8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001148C(&qword_1002984B0, &unk_10021DF20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v31 - v15);
  sub_100019C6C(a1, &v31 - v15, &qword_1002984B0, &unk_10021DF20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);
    swift_errorRetain();
    v19 = sub_100216754();
    v20 = sub_100216C74();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v17;
      v36 = v22;
      *v21 = 136446210;
      v32 = 0x203A726F727265;
      v33 = 0xE700000000000000;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v37._countAndFlagsBits = sub_100216994();
      sub_100216A14(v37);

      v23 = sub_100005FB0(v32, v33, &v36);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "fetchViableBottles failed with %{public}s", v21, 0xCu);
      sub_100006128(v22);
    }

    swift_errorRetain();
    a2(v17, 0, 1);
  }

  else
  {
    v25 = sub_1001AC038(v16, v11, type metadata accessor for FetchViableBottlesResponse);
    v26 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    __chkstk_darwin(v25, v27);
    *(&v31 - 2) = a4;
    *(&v31 - 1) = v11;
    sub_10001148C(&qword_10029DA70, &qword_100226788);
    sub_100216D34();
    v28 = v32;
    v29 = v33;
    v30 = v34;
    a2(v32, v33, v34);
    sub_1001A9B3C(v28, v29, v30);
    return sub_1001AC1E4(v11, type metadata accessor for FetchViableBottlesResponse);
  }
}

void sub_10014EC50(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a3;
  v114 = a2;
  v4 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v117 = v109 - v11;
  v12 = type metadata accessor for Bottle(0);
  v112 = *(v12 - 8);
  v13 = *(v112 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v118 = (v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v17);
  v19 = v109 - v18;
  v121 = type metadata accessor for EscrowPair(0);
  v111 = *(v121 - 8);
  v20 = *(v111 + 64);
  v22 = __chkstk_darwin(v121, v21);
  v120 = v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v122 = (v109 - v25);
  v26 = sub_100216384();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10001148C(&qword_10029DA78, &qword_100226790);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  v36 = v109 - v35;
  sub_10014C364();
  sub_1001AC0A0(v114, v36, type metadata accessor for FetchViableBottlesResponse);
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  (*(*(ViableBottlesResponse - 8) + 56))(v36, 0, 1, ViableBottlesResponse);
  sub_1001497CC(v36);
  sub_1000114D4(v36, &qword_10029DA78, &qword_100226790);
  v38 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  sub_100216374();
  isa = sub_1002162F4().super.isa;
  (*(v27 + 8))(v31, v26);
  [v38 setEscrowFetchDate:isa];

  v40 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v124 = 0;
  v41 = [v40 save:&v124];
  if (v41)
  {
    v42 = qword_100297520;
    v43 = v124;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    v109[1] = sub_100002648(v44, qword_10029D160);
    v45 = sub_100216754();
    v46 = sub_100216C54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "fetchViableBottles saved bottles and records", v47, 2u);
    }

    v48 = *v114;
    v49 = *(*v114 + 16);
    v50 = _swiftEmptyArrayStorage;
    v119 = v12;
    v110 = v41;
    if (v49)
    {
      v109[0] = v9;
      v123 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v49, 0);
      v50 = v123;
      v51 = v48 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      *&v116 = *(v111 + 72);
      v52 = (v112 + 48);
      v115 = xmmword_10021D470;
      do
      {
        v53 = v50;
        v54 = v122;
        sub_1001AC0A0(v51, v122, type metadata accessor for EscrowPair);
        v55 = *(v54 + *(v121 + 20));
        v56 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
        swift_beginAccess();
        v57 = v55 + v56;
        v58 = v117;
        sub_100019C6C(v57, v117, &unk_10029D880, &qword_10021E830);
        v59 = *v52;
        if ((*v52)(v58, 1, v12) == 1)
        {
          v60 = v115;
          *v19 = v115;
          *(v19 + 1) = v60;
          *(v19 + 2) = v60;
          *(v19 + 3) = v60;
          *(v19 + 8) = 0;
          *(v19 + 9) = 0xE000000000000000;
          *(v19 + 10) = 0;
          *(v19 + 11) = 0xE000000000000000;
          v61 = &v19[*(v12 + 40)];
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v59(v58, 1, v12) != 1)
          {
            sub_1000114D4(v58, &unk_10029D880, &qword_10021E830);
          }
        }

        else
        {
          sub_1001AC038(v58, v19, type metadata accessor for Bottle);
        }

        sub_1001AC1E4(v122, type metadata accessor for EscrowPair);
        v63 = *(v19 + 10);
        v62 = *(v19 + 11);

        sub_1001AC1E4(v19, type metadata accessor for Bottle);
        v50 = v53;
        v123 = v53;
        v64 = v53[2];
        v65 = v50[3];
        if (v64 >= v65 >> 1)
        {
          sub_1001877A4((v65 > 1), v64 + 1, 1);
          v50 = v123;
        }

        v50[2] = v64 + 1;
        v66 = &v50[2 * v64];
        v66[4] = v63;
        v66[5] = v62;
        v51 += v116;
        --v49;
        v12 = v119;
      }

      while (v49);
      LOBYTE(v41) = v110;
      v9 = v109[0];
    }

    v77 = v114[1];
    v78 = *(v77 + 16);
    *&v115 = v50;
    if (v78)
    {
      v126 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v78, 0);
      v122 = v126;
      v79 = v77 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v117 = *(v111 + 72);
      v80 = (v112 + 48);
      v116 = xmmword_10021D470;
      do
      {
        v81 = v120;
        sub_1001AC0A0(v79, v120, type metadata accessor for EscrowPair);
        v82 = *(v81 + *(v121 + 20));
        v83 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
        swift_beginAccess();
        sub_100019C6C(v82 + v83, v9, &unk_10029D880, &qword_10021E830);
        v84 = *v80;
        if ((*v80)(v9, 1, v12) == 1)
        {
          v85 = v118;
          v86 = v116;
          *v118 = v116;
          v85[1] = v86;
          v85[2] = v86;
          v85[3] = v86;
          *(v85 + 8) = 0;
          *(v85 + 9) = 0xE000000000000000;
          *(v85 + 10) = 0;
          *(v85 + 11) = 0xE000000000000000;
          v87 = v85 + *(v12 + 40);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v84(v9, 1, v12) != 1)
          {
            sub_1000114D4(v9, &unk_10029D880, &qword_10021E830);
          }
        }

        else
        {
          v85 = v118;
          sub_1001AC038(v9, v118, type metadata accessor for Bottle);
        }

        v88 = v9;
        sub_1001AC1E4(v120, type metadata accessor for EscrowPair);
        v90 = *(v85 + 10);
        v89 = *(v85 + 11);

        sub_1001AC1E4(v85, type metadata accessor for Bottle);
        v91 = v122;
        v126 = v122;
        v93 = v122[2];
        v92 = v122[3];
        if (v93 >= v92 >> 1)
        {
          sub_1001877A4((v92 > 1), v93 + 1, 1);
          v91 = v126;
        }

        v91[2] = v93 + 1;
        v122 = v91;
        v94 = &v91[2 * v93];
        v94[4] = v90;
        v94[5] = v89;
        v79 += v117;
        --v78;
        v9 = v88;
        v12 = v119;
      }

      while (v78);
      LOBYTE(v41) = v110;
    }

    else
    {
      v122 = _swiftEmptyArrayStorage;
    }

    v95 = sub_100216754();
    v96 = sub_100216C54();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v126 = v98;
      *v97 = 136446210;
      v99 = sub_100216B34();
      v101 = sub_100005FB0(v99, v100, &v126);

      *(v97 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v95, v96, "fetchViableBottles returned viable bottles: %{public}s", v97, 0xCu);
      sub_100006128(v98);
    }

    v102 = sub_100216754();
    v103 = sub_100216C54();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v126 = v105;
      *v104 = 136446210;
      v106 = sub_100216B34();
      v108 = sub_100005FB0(v106, v107, &v126);

      *(v104 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v102, v103, "fetchViableBottles returned partial bottles: %{public}s", v104, 0xCu);
      sub_100006128(v105);
    }

    v76 = v113;
    v68 = v115;
    v75 = v122;
  }

  else
  {
    v67 = v124;
    v68 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v69 = sub_100216774();
    sub_100002648(v69, qword_10029D160);
    swift_errorRetain();
    v70 = sub_100216754();
    v71 = sub_100216C74();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v123 = v73;
      *v72 = 136446210;
      v124 = 0x203A726F727265;
      v125 = 0xE700000000000000;
      v126 = v68;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v127._countAndFlagsBits = sub_100216994();
      sub_100216A14(v127);

      v74 = sub_100005FB0(v124, v125, &v123);

      *(v72 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "fetchViableBottles unable to save bottles and records with %{public}s", v72, 0xCu);
      sub_100006128(v73);
    }

    v75 = 0;
    v76 = v113;
  }

  *v76 = v68;
  *(v76 + 8) = v75;
  *(v76 + 16) = v41 ^ 1;
}

uint64_t sub_10014F93C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  sub_10001148C(&qword_10029DA80, &qword_100226798);
  sub_100216D34();
  a4(v9, v10);
  return sub_1001ABC14(v9, v10);
}

uint64_t sub_10014F9F8@<X0>(char *a1@<X0>, char a2@<W2>, unint64_t a3@<X8>)
{
  v3 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1001FBE54();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
LABEL_23:
      v10 = sub_1002170F4();
      v23 = a3;
      if (v10)
      {
LABEL_5:
        v11 = 0;
        a3 = v8 & 0xC000000000000001;
        v25 = _swiftEmptyArrayStorage;
        do
        {
          v12 = v11;
          while (1)
          {
            if (a3)
            {
              v13 = sub_100217014();
            }

            else
            {
              if (v12 >= *(v9 + 16))
              {
                goto LABEL_22;
              }

              v13 = *(v8 + 8 * v12 + 32);
            }

            v14 = v13;
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v15 = [v13 data];
            if (v15)
            {
              break;
            }

            ++v12;
            if (v11 == v10)
            {
              goto LABEL_25;
            }
          }

          v16 = v15;
          v17 = sub_100216224();
          v22 = v18;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100182FA0(0, *(v25 + 2) + 1, 1, v25);
          }

          v20 = *(v25 + 2);
          v19 = *(v25 + 3);
          if (v20 >= v19 >> 1)
          {
            v25 = sub_100182FA0((v19 > 1), v20 + 1, 1, v25);
          }

          *(v25 + 2) = v20 + 1;
          v21 = &v25[16 * v20];
          *(v21 + 4) = v17;
          *(v21 + 5) = v22;
        }

        while (v11 != v10);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = a3;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_25:

    v3 = a2;
    a3 = v23;
    a1 = v25;
    goto LABEL_26;
  }

  result = swift_errorRetain();
LABEL_26:
  *a3 = a1;
  *(a3 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10014FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "fetchCurrentPolicy complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000003DLL, 0x800000010023C460);
  return a5(a1, a2, a3);
}

void sub_10014FE38(char *a1, void *a2, uint64_t a3, void (*a4)(void *, id, id), uint64_t a5, char a6)
{
  v205 = a4;
  v206 = a5;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v11 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v12);
  v14 = v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v16 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v16)
  {
    v17 = v16;
    sub_100216974();

    v18 = [*&a1[v15] egoPeerPermanentInfo];
    if (v18)
    {
      v19 = v18;
      v203 = sub_100216224();
      v204 = v20;

      v21 = [*&a1[v15] egoPeerPermanentInfoSig];
      if (v21)
      {
        v22 = v21;
        v201 = sub_100216224();
        v202 = v23;

        v24 = [*&a1[v15] egoPeerStableInfo];
        if (v24)
        {
          v194 = PolicyDocumentsRequest;
          v25 = a6;
          v199 = a2;
          v26 = v24;
          v27 = sub_100216224();
          v29 = v28;

          v30 = [*&a1[v15] egoPeerStableInfoSig];
          if (v30)
          {
            v193 = a3;
            v192 = v14;
            v197 = v27;
            v198 = v29;
            v31 = v30;
            v200 = sub_100216224();
            v196 = v32;

            v33 = [objc_allocWithZone(TPECPublicKeyFactory) init];
            v34 = v203;
            v35 = v204;
            sub_100012558(v203, v204);
            v37 = v201;
            v36 = v202;
            sub_100012558(v201, v202);
            v38 = sub_100216964();

            isa = sub_100216204().super.isa;
            v40 = sub_100216204().super.isa;
            v41 = [objc_opt_self() permanentInfoWithPeerID:v38 data:isa sig:v40 keyFactory:v33];

            v195 = v33;
            sub_100002BF0(v37, v36);

            v42 = v34;
            v43 = v41;
            sub_100002BF0(v42, v35);

            if (!v41)
            {
              v135 = v200;
              v137 = v196;
              v136 = v197;
              v45 = v198;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v138 = sub_100216774();
              sub_100002648(v138, qword_10029D160);
              v139 = sub_100216754();
              v140 = sub_100216C74();
              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                *v141 = 0;
                _os_log_impl(&_mh_execute_header, v139, v140, "fetchCurrentPolicy failed to create TPPeerPermanentInfo", v141, 2u);
              }

              sub_1000561D0();
              v142 = swift_allocError();
              *v143 = xmmword_10021DA80;
              *(v143 + 16) = 13;
              v205(0, 0, v142);

              sub_100002BF0(v135, v137);
              v144 = v136;
              goto LABEL_60;
            }

            v44 = objc_allocWithZone(TPPeerStableInfo);
            v46 = v197;
            v45 = v198;
            sub_100012558(v197, v198);
            v47 = v200;
            v48 = v196;
            sub_100012558(v200, v196);
            v49 = sub_100216204().super.isa;
            v50 = sub_100216204().super.isa;
            v51 = [v44 initWithData:v49 sig:v50];

            sub_100002BF0(v47, v48);
            sub_100002BF0(v46, v45);
            if (v51)
            {
              v52 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
              aBlock[0] = 0;
              v53 = [v52 allPolicyVersionsWithError:aBlock];
              v54 = aBlock[0];
              if (!v53)
              {
                v166 = v48;
                v167 = aBlock[0];
                v168 = sub_100216154();

                swift_willThrow();
                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v169 = sub_100216774();
                sub_100002648(v169, qword_10029D160);
                swift_errorRetain();
                v170 = sub_100216754();
                v171 = sub_100216C74();

                if (os_log_type_enabled(v170, v171))
                {
                  v172 = swift_slowAlloc();
                  v173 = swift_slowAlloc();
                  *v172 = 138543362;
                  swift_errorRetain();
                  v174 = _swift_stdlib_bridgeErrorToNSError();
                  *(v172 + 4) = v174;
                  *v173 = v174;
                  _os_log_impl(&_mh_execute_header, v170, v171, "Error fetching all policy versions: %{public}@", v172, 0xCu);
                  sub_1000114D4(v173, &qword_10029D580, &unk_10021CCC0);
                }

                swift_errorRetain();
                v205(0, 0, v168);

                sub_100002BF0(v200, v166);
                v175 = v46;
                v176 = v45;
                goto LABEL_73;
              }

              v55 = v53;
              sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
              sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
              v56 = v51;
              v57 = sub_100216BB4();
              v58 = v54;

              v46 = swift_allocObject();
              v59 = v199;
              v46[2] = a1;
              v46[3] = v59;
              v46[4] = v193;
              v46[5] = v43;
              v60 = v205;
              v61 = v206;
              v46[6] = v56;
              v46[7] = v60;
              v46[8] = v61;
              v62 = swift_allocObject();
              v191 = v62;
              *(v62 + 16) = v57;
              v63 = (v62 + 16);
              v64 = v43;
              v65 = swift_allocObject();
              swift_bridgeObjectRetain_n();
              v66 = v64;
              v67 = v56;
              v68 = v63;
              v69 = v67;
              swift_retain_n();
              v70 = a1;
              v45 = v66;
              v190 = v69;
              v188[1] = v57;

              v71 = v70;
              v72 = sub_100019440(_swiftEmptyArrayStorage);
              v189 = v65;
              *(v65 + 16) = v72;
              v73 = *&v71[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
              v74 = swift_allocObject();
              v74[2] = v68;
              v74[3] = v71;
              v74[4] = v65 + 16;
              v75 = swift_allocObject();
              v75[2] = sub_1001ACE80;
              v75[3] = v74;
              aBlock[4] = sub_1001ACCC0;
              aBlock[5] = v75;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100109050;
              aBlock[3] = &unk_100282E00;
              v76 = _Block_copy(aBlock);
              v77 = v71;

              [v73 performBlockAndWait:v76];
              _Block_release(v76);
              LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

              if ((v76 & 1) == 0)
              {
                v80 = *v68;
                v81 = v192;
                if ((*v68 & 0xC000000000000001) != 0)
                {
                  if (v80 < 0)
                  {
                    v82 = *v68;
                  }

                  v83 = *v68;

                  v84 = sub_100216ED4();
                }

                else
                {
                  v84 = *(v80 + 16);
                }

                if (v84)
                {
                  v205 = v45;
                  __chkstk_darwin(v78, v79);
                  v188[-2] = v68;
                  sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
                  sub_100216654();
                  v177 = *&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
                  v178 = *&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
                  sub_100006484(&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v177);
                  v179 = swift_allocObject();
                  v179[2] = v77;
                  v179[3] = sub_1001A9B24;
                  v199 = v74;
                  v180 = v189;
                  v181 = v191;
                  v179[4] = v46;
                  v179[5] = v181;
                  v179[6] = v180;
                  v182 = *(v178 + 16);
                  v194 = *(v182 + 80);
                  v183 = v77;

                  v184 = v182;
                  v45 = v205;
                  v194(v81, sub_1001ACE2C, v179, v177, v184);
                  v185 = v196;

                  sub_1001AC1E4(v81, type metadata accessor for FetchPolicyDocumentsRequest);

                  v186 = v190;
                }

                else
                {
                  v187 = *(v189 + 16);

                  v186 = v190;
                  sub_1001A64F4(0, v77, v199, v193, v45, v190, v205);

                  v185 = v196;
                }

                sub_100002BF0(v200, v185);
                v175 = v197;
                v176 = v198;
LABEL_73:
                sub_100002BF0(v175, v176);
                sub_100002BF0(v201, v202);
                sub_100002BF0(v203, v204);
                return;
              }

              __break(1u);
            }

            else
            {
              v75 = v43;
              v71 = v48;
              if (qword_100297520 == -1)
              {
LABEL_57:
                v156 = sub_100216774();
                sub_100002648(v156, qword_10029D160);
                v157 = sub_100216754();
                v158 = sub_100216C74();
                v159 = os_log_type_enabled(v157, v158);
                v160 = v200;
                if (v159)
                {
                  v161 = swift_slowAlloc();
                  *v161 = 0;
                  _os_log_impl(&_mh_execute_header, v157, v158, "fetchCurrentPolicy failed to create TPPeerStableInfo", v161, 2u);
                }

                sub_1000561D0();
                v162 = swift_allocError();
                *v163 = xmmword_10021DC20;
                *(v163 + 16) = 13;
                v205(0, 0, v162);

                sub_100002BF0(v160, v71);
                v144 = v46;
LABEL_60:
                sub_100002BF0(v144, v45);
                sub_100002BF0(v201, v202);
                v164 = v203;
                v165 = v204;

                sub_100002BF0(v164, v165);
                return;
              }
            }

            swift_once();
            goto LABEL_57;
          }

          sub_100002BF0(v27, v29);
          a6 = v25;
        }

        sub_100002BF0(v201, v202);
      }

      sub_100002BF0(v203, v204);
    }
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v85 = sub_100216774();
  sub_100002648(v85, qword_10029D160);
  v86 = sub_100216754();
  v87 = sub_100216C74();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "fetchCurrentPolicy failed to find ego peer information", v88, 2u);
  }

  if (!a3)
  {
    v110 = sub_100216754();
    v111 = sub_100216C54();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "no model ID override; returning error", v112, 2u);
    }

    sub_1000561D0();
    v113 = swift_allocError();
    *v114 = xmmword_10021DA90;
    *(v114 + 16) = 13;
    v205(0, 0, v113);

    goto LABEL_35;
  }

  v89 = objc_opt_self();
  v90 = sub_100216964();
  v91 = [v89 mungeModelID:v90];

  v92 = v91;
  if (!v91)
  {
    sub_100216974();
    v92 = sub_100216964();
  }

  v93 = sub_100216974();
  v95 = v94;
  v96 = qword_100297228;
  v97 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  if (v96 != -1)
  {
    swift_once();
  }

  v98 = [qword_1002B0318 versionNumber];
  aBlock[0] = 0;
  v99 = [v97 policyWithVersion:v98 error:aBlock];

  v100 = aBlock[0];
  if (!aBlock[0])
  {
    if (v99)
    {
      v115 = v99;
      sub_10001913C(_swiftEmptyArrayStorage);
      v116 = sub_1002168C4().super.isa;

      v117 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
      aBlock[0] = 0;
      v118 = [v115 policyWithSecrets:v116 decrypter:v117 error:aBlock];

      v119 = aBlock[0];
      if (v118)
      {
        aBlock[0] = 0;
        v120 = v119;
        v121 = [v118 syncingPolicyForModel:v92 syncUserControllableViews:0 isInheritedAccount:a6 & 1 error:aBlock];

        if (v121)
        {
          v122 = aBlock[0];

          v123 = sub_100216754();
          v124 = sub_100216C54();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            aBlock[0] = v126;
            *v125 = 136446210;
            v127 = sub_100005FB0(v93, v95, aBlock);

            *(v125 + 4) = v127;
            _os_log_impl(&_mh_execute_header, v123, v124, "returning a policy for model ID %{public}s", v125, 0xCu);
            sub_100006128(v126);
          }

          else
          {
          }

          v155 = v121;
          v205(v121, 0, 0);

          return;
        }

        v145 = aBlock[0];

        v134 = sub_100216154();

        swift_willThrow();
      }

      else
      {
        v133 = aBlock[0];

        v134 = sub_100216154();

        swift_willThrow();
      }

      swift_errorRetain();
      v146 = sub_100216754();
      v147 = sub_100216C74();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        aBlock[0] = v149;
        *v148 = 136446210;
        v207 = v134;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v150 = sub_100216994();
        v152 = sub_100005FB0(v150, v151, aBlock);

        *(v148 + 4) = v152;
        _os_log_impl(&_mh_execute_header, v146, v147, "fetchCurrentPolicy failed to prevailing policy: %{public}s", v148, 0xCu);
        sub_100006128(v149);
      }

      sub_1000561D0();
      v153 = swift_allocError();
      *v154 = xmmword_10021DA90;
      *(v154 + 16) = 13;
      v205(0, 0, v153);
    }

    else
    {

      v128 = sub_100216754();
      v129 = sub_100216C54();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "prevailing policy is missing?", v130, 2u);
      }

      sub_1000561D0();
      v131 = swift_allocError();
      *v132 = xmmword_10021DA90;
      *(v132 + 16) = 13;
      v205(0, 0, v131);
    }

LABEL_35:

    return;
  }

  v101 = aBlock[0];

  swift_willThrow();
  v102 = v101;
  v103 = sub_100216754();
  v104 = sub_100216C74();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 138543362;
    v107 = v102;
    v108 = _swift_stdlib_bridgeErrorToNSError();
    *(v105 + 4) = v108;
    *v106 = v108;
    _os_log_impl(&_mh_execute_header, v103, v104, "error finding prevailing policy: %{public}@", v105, 0xCu);
    sub_1000114D4(v106, &qword_10029D580, &unk_10021CCC0);
  }

  v109 = v102;
  v205(0, 0, v100);
}

id sub_100151404(int a1, int a2, id a3)
{
  v5 = v3;
  v6 = a3;
  v7 = [a3 bestPolicyVersion];
  v8 = [v7 versionNumber];
  if (qword_100297230 != -1)
  {
    swift_once();
  }

  if (v8 >= [qword_1002B0320 versionNumber])
  {
    v15 = v7;
    v10 = v15;
  }

  else
  {
    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v9 = qword_100297520;
    v10 = qword_1002B0318;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029D160);
    v12 = sub_100216754();
    v13 = sub_100216C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring policy version from pre-CKKS4All peer", v14, 2u);
    }
  }

  v17 = *(v5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  __chkstk_darwin(v15, v16);
  sub_10001148C(&qword_10029DA58, &unk_100226778);
  sub_100216D34();
  if (!v4)
  {

    v18 = v38;
    if (v38)
    {
      v19 = [v6 policySecrets];
      if (v19)
      {
        v20 = v19;
        sub_1002168D4();
      }

      else
      {
        sub_10001913C(&_swiftEmptyArrayStorage);
      }

      isa = sub_1002168C4().super.isa;

      v30 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
      v38 = 0;
      v31 = [v18 policyWithSecrets:isa decrypter:v30 error:&v38];

      if (v31)
      {
        v32 = v38;
        v33 = sub_100216964();
        v34 = [v6 syncUserControllableViews];
        v35 = [v6 isInheritedAccount];
        v38 = 0;
        v6 = [v31 syncingPolicyForModel:v33 syncUserControllableViews:v34 isInheritedAccount:v35 error:&v38];

        if (v6)
        {
          v36 = v38;

          return v6;
        }

        v6 = v38;
        sub_100216154();

        swift_willThrow();
      }

      else
      {
        v6 = v38;
        sub_100216154();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v21 = sub_100216774();
      sub_100002648(v21, qword_10029D160);
      v22 = v10;
      v23 = sub_100216754();
      v24 = sub_100216C54();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "best policy(%{public}@) is missing?", v25, 0xCu);
        sub_1000114D4(v26, &qword_10029D580, &unk_10021CCC0);
      }

      v6 = [v22 versionNumber];
      sub_1000561D0();
      swift_allocError();
      *v28 = v6;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      swift_willThrow();
    }

    return v6;
  }

  return v6;
}

void sub_1001519C8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = 0;
  v6 = [v5 policyWithVersion:objc_msgSend(a2 error:{"versionNumber"), &v7}];

  if (v7)
  {
    v7;

    swift_willThrow();
  }

  else
  {
    *a3 = v6;
  }
}

uint64_t sub_100151AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchPolicyDocuments complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023C430);
  return a4(a1, a2);
}

void sub_100151CE4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a3;
  if (!a1)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = a2;
    v6 = sub_10018CFD4();
    a2 = v5;
    v7 = v6;
LABEL_18:
    v3(v7, a2);

    return;
  }

  v31 = a2;
  sub_10001148C(&unk_10029D800, &unk_100226620);
  v8 = sub_100217114();
  v7 = v8;
  v9 = 0;
  v10 = v4 + 64;
  v11 = 1 << *(v4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v4 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v4;
      v20 = *(*(v4 + 48) + 8 * v18);
      v21 = *(*(v4 + 56) + 8 * v18);
      v35 = v20;
      v22 = v21;
      v23 = [v22 protobuf];
      v24 = sub_100216224();
      v26 = v25;

      *(v33 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v7[6] + 8 * v18) = v35;
      v27 = (v7[7] + 16 * v18);
      *v27 = v24;
      v27[1] = v26;
      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v7[2] = v30;
      v4 = v19;
      v13 = v34;
      if (!v34)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        v3 = a3;
        a2 = v31;
        goto LABEL_18;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100151EFC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2)
  {
    a3(0);
  }

  else if (a1 && (v7 = sub_100108220(a5, a1)) != 0)
  {
    v19 = v7;
    (a3)(v7, 0);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_10029D160);

    v9 = sub_100216754();
    v10 = sub_100216C54();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;

      sub_10001148C(&qword_10029D958, &qword_100226700);
      v13 = sub_100216994();
      v15 = sub_100005FB0(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "fetchPolicyDocument: didn't return policy of version: %{public}s", v11, 0xCu);
      sub_100006128(v12);
    }

    v16 = [a5 versionNumber];
    sub_1000561D0();
    v17 = swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    (a3)(0, v17);
  }
}

uint64_t sub_10015215C(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v60 = a1;
  v4 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {

    sub_100216E84();
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v5 = a2;
    sub_100216C04();
    v4 = v65[1];
    v6 = v65[2];
    v7 = v65[3];
    v8 = v65[4];
    v9 = v65[5];
  }

  else
  {
    v5 = a2;
    v10 = -1 << *(v4 + 32);
    v6 = (v4 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(v4 + 56));

    v8 = 0;
  }

  v63 = v4;
  v13 = (v7 + 64) >> 6;
  v62 = a3;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_100216F14())
      {
        return sub_10000D778();
      }

      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      swift_dynamicCast();
      v17 = v65[0];
      v64 = v9;
      v4 = v63;
      if (!v65[0])
      {
        return sub_10000D778();
      }
    }

    else
    {
      v15 = v8;
      v16 = v9;
      if (!v9)
      {
        while (1)
        {
          v8 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v8 >= v13)
          {
            return sub_10000D778();
          }

          v16 = v6[v8];
          ++v15;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

LABEL_15:
      v64 = (v16 - 1) & v16;
      v17 = *(*(v4 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v17)
      {
        return sub_10000D778();
      }
    }

    v18 = [v17 versionNumber];
    v19 = *(v5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v65[0] = 0;
    v20 = [v19 policyWithVersion:v18 error:v65];
    v21 = v20;
    if (v65[0])
    {
      v14 = v65[0];

      swift_willThrow();
      goto LABEL_9;
    }

    if (v20)
    {
      break;
    }

LABEL_9:

    v9 = v64;
  }

  if (qword_100297228 != -1)
  {
    swift_once();
  }

  [qword_1002B0318 versionNumber];
  v22 = [v21 version];
  v23 = [v22 policyHash];

  v24 = sub_100216974();
  v26 = v25;

  v27 = [v17 policyHash];
  v28 = sub_100216974();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {

    v33 = v62;
  }

  else
  {
    v32 = sub_1002171A4();

    v33 = v62;
    if ((v32 & 1) == 0)
    {

LABEL_49:
      v5 = a2;
      v4 = v63;
      goto LABEL_9;
    }
  }

  v34 = [v21 version];
  v35 = *v33;
  if ((*v33 & 0xC000000000000001) != 0)
  {
    if (v35 < 0)
    {
      v36 = *v33;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFFFFFFFF8;
    }

    v37 = v21;
    v38 = sub_1002170B4();
    if (__OFADD__(v38, 1))
    {
      goto LABEL_54;
    }

    *v33 = sub_1001831B8(v36, v38 + 1);
  }

  else
  {
    v39 = *v33;
    v40 = v21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *v33;
  v42 = v65[0];
  *v33 = 0x8000000000000000;
  v44 = sub_100015AE4(v34);
  v45 = v42[2];
  v46 = (v43 & 1) == 0;
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
    goto LABEL_53;
  }

  v48 = v43;
  if (v42[3] >= v47)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v51 = v65[0];
      if (v43)
      {
        goto LABEL_44;
      }
    }

    else
    {
      sub_1001870B8();
      v51 = v65[0];
      if (v48)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v51[(v44 >> 6) + 8] |= 1 << v44;
    *(v51[6] + 8 * v44) = v34;
    *(v51[7] + 8 * v44) = v21;
    v54 = v51[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_55;
    }

    v51[2] = v56;
    goto LABEL_48;
  }

  sub_100184588(v47, isUniquelyReferenced_nonNull_native);
  v49 = sub_100015AE4(v34);
  if ((v48 & 1) == (v50 & 1))
  {
    v44 = v49;
    v51 = v65[0];
    if ((v48 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_44:
    v52 = v51[7];
    v53 = *(v52 + 8 * v44);
    *(v52 + 8 * v44) = v21;

LABEL_48:
    v57 = *v62;
    *v62 = v51;

    v58 = sub_10018DFAC(v17);

    v17 = v58;
    goto LABEL_49;
  }

  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  result = sub_1002171C4();
  __break(1u);
  return result;
}

uint64_t sub_1001526E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;

  v5 = sub_100108960(v4);

  v6 = *a1;

  *a1 = v5;
  return result;
}

uint64_t sub_100152738(void *a1, id a2)
{
  *a1 = [a2 versionNumber];
  v4 = [a2 policyHash];
  v5 = sub_100216974();
  v7 = v6;

  v8 = a1[2];

  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_1001527C0(uint64_t a1, char *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  PolicyDocumentsResponse = type metadata accessor for FetchPolicyDocumentsResponse(0);
  v48 = *(PolicyDocumentsResponse - 8);
  v10 = *(v48 + 64);
  v12 = __chkstk_darwin(PolicyDocumentsResponse - 8, v11);
  v13 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v16 = &v45 - v15;
  v17 = sub_10001148C(&qword_1002984A0, &qword_10021DF10);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = (&v45 - v20);
  sub_100019C6C(a1, &v45 - v20, &qword_1002984A0, &qword_10021DF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v50;
    v23 = *v21;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    swift_errorRetain();
    v25 = sub_100216754();
    v26 = sub_100216C74();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      aBlock[6] = v23;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29 = sub_100216994();
      v31 = sub_100005FB0(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "FetchPolicyDocuments failed: %{public}s", v27, 0xCu);
      sub_100006128(v28);
    }

    swift_errorRetain();
    v22(0, v23);
  }

  else
  {
    v45 = a5 + 16;
    v46 = a6 + 16;
    sub_1001AC038(v21, v16, type metadata accessor for FetchPolicyDocumentsResponse);
    v33 = v49;
    v47 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v16, v13, type metadata accessor for FetchPolicyDocumentsResponse);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_1001AC038(v13, v38 + v34, type metadata accessor for FetchPolicyDocumentsResponse);
    v39 = (v38 + v35);
    v40 = v51;
    *v39 = v50;
    v39[1] = v40;
    v41 = v46;
    *(v38 + v36) = v45;
    *(v38 + v37) = v41;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1001A9A04;
    *(v42 + 24) = v38;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282D60;
    v43 = _Block_copy(aBlock);

    v44 = v33;

    [v47 performBlockAndWait:v43];
    _Block_release(v43);
    sub_1001AC1E4(v16, type metadata accessor for FetchPolicyDocumentsResponse);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100152CA8(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v177 = a5;
  v191 = a4;
  v10 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = (&v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v16);
  v188 = &v167 - v17;
  v187 = type metadata accessor for PolicyDocumentKey(0);
  v18 = *(v187 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v187, v20);
  v174 = (&v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21, v23);
  v185 = (&v167 - v24);
  v186 = type metadata accessor for PolicyDocumentMapEntry(0);
  v25 = *(v186 - 8);
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v186, v27);
  v30 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v28, v31);
  v175 = &v167 - v33;
  __chkstk_darwin(v32, v34);
  v36 = (&v167 - v35);
  v37 = *a1;
  v38 = &off_10029D000;
  v176 = *(*a1 + 16);
  if (!v176)
  {
LABEL_42:
    v101 = *(v38[55] + a6);
    v195[0] = 0;
    v102 = [v101 save:v195];
    v103 = v195[0];
    if (v102)
    {
      v104 = v191;
      swift_beginAccess();
      v105 = *v104;

      v106 = v103;
      v107 = sub_100108F0C(v105);

      if (v107)
      {
        v108 = [v107 versionNumber];
        sub_1000561D0();
        v109 = swift_allocError();
        *v110 = v108;
        *(v110 + 8) = 0;
        *(v110 + 16) = 1;
        a2(0, v109);
      }

      else
      {
        v125 = v177;
        swift_beginAccess();
        v126 = *v125;

        a2(v127, 0);
      }
    }

    else
    {
      v123 = v195[0];
      v124 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      a2(0, v124);
    }

    return;
  }

  v189 = v37;
  v181 = objc_opt_self();
  v169 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v168 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v180 = v189 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  swift_beginAccess();
  v39 = v189;
  v40 = 0;
  v41 = (v18 + 48);
  v42 = &selRef_signingKey;
  v179 = a3;
  v182 = a2;
  v178 = v36;
  v173 = v30;
  v167 = v15;
  v171 = a6;
  v172 = (v18 + 48);
  v170 = v25;
  while (1)
  {
    if (v40 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_70;
    }

    v43 = a2;
    v44 = *(v25 + 72);
    v190 = v40;
    sub_1001AC0A0(v180 + v44 * v40, v36, type metadata accessor for PolicyDocumentMapEntry);
    v45 = v188;
    sub_100019C6C(v36 + *(v186 + 24), v188, &unk_10029D820, &unk_10021E840);
    v46 = *v41;
    v47 = v187;
    if ((*v41)(v45, 1, v187) == 1)
    {
      v48 = v185;
      *v185 = 0;
      v48[1] = 0;
      v48[2] = 0xE000000000000000;
      v49 = v48 + *(v47 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v46(v45, 1, v47) != 1)
      {
        sub_1000114D4(v188, &unk_10029D820, &unk_10021E840);
      }
    }

    else
    {
      v48 = v185;
      sub_1001AC038(v45, v185, type metadata accessor for PolicyDocumentKey);
    }

    v50 = v48[1];
    v51 = v48[2];

    sub_1001AC1E4(v48, type metadata accessor for PolicyDocumentKey);
    v52 = sub_100216964();

    v53 = *v36;
    v54 = v36[1];
    isa = sub_100216204().super.isa;
    v56 = [v181 policyDocWithHash:v52 data:isa];

    v192 = v56;
    if (!v56)
    {
      break;
    }

    v57 = *v191;
    v184 = v57;
    if ((v57 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v52 = sub_100216E84();
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
      sub_100216C04();
      v59 = v195[6];
      v58 = v195[7];
      v60 = v195[8];
      v61 = v195[9];
      v62 = v195[10];
    }

    else
    {
      v63 = -1 << *(v57 + 32);
      v58 = (v57 + 56);
      v60 = ~v63;
      v64 = -v63;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v62 = (v65 & *(v57 + 56));
      v59 = v57;
      swift_bridgeObjectRetain_n();
      v61 = 0;
    }

    ++v190;
    v183 = v60;
    v66 = (v60 + 64) >> 6;
    if (v59 < 0)
    {
LABEL_16:
      v67 = sub_100216F14();
      if (v67)
      {
        v194 = v67;
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        swift_dynamicCast();
        v68 = v195[0];
        v69 = v61;
        v56 = v62;
        if (v195[0])
        {
          goto LABEL_24;
        }
      }

LABEL_45:
      sub_10000D778();

      if (qword_100297520 == -1)
      {
LABEL_46:
        v111 = sub_100216774();
        sub_100002648(v111, qword_10029D160);
        v112 = v192;
        v113 = sub_100216754();
        v114 = sub_100216C54();
        v115 = os_log_type_enabled(v113, v114);
        v116 = v182;
        if (v115)
        {
          v117 = swift_slowAlloc();
          *v117 = 134217984;
          v118 = [v112 v42[36]];
          v119 = [v118 versionNumber];

          *(v117 + 4) = v119;
          _os_log_impl(&_mh_execute_header, v113, v114, "Received a policy version we didn't request: %llu", v117, 0xCu);
        }

        else
        {

          v113 = v112;
        }

        sub_1000561D0();
        v120 = swift_allocError();
        *v121 = xmmword_1002260A0;
        *(v121 + 16) = 13;
        v116(0, v120);

LABEL_50:

        v122 = v178;
        goto LABEL_51;
      }

LABEL_70:
      swift_once();
      goto LABEL_46;
    }

    while (1)
    {
      v70 = v61;
      v71 = v62;
      v69 = v61;
      if (!v62)
      {
        while (1)
        {
          v69 = (v70 + 1);
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if (v69 >= v66)
          {
            goto LABEL_45;
          }

          v71 = v58[v69];
          ++v70;
          if (v71)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

LABEL_23:
      v56 = ((v71 - 1) & v71);
      v68 = *(*(v59 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v71)))));
      if (!v68)
      {
        goto LABEL_45;
      }

LABEL_24:
      v72 = v68;
      v193 = [v68 versionNumber];
      v73 = [v192 v42[36]];
      v52 = [v73 versionNumber];

      if (v193 == v52)
      {
        break;
      }

      v61 = v69;
      v62 = v56;
      v42 = &selRef_signingKey;
      if (v59 < 0)
      {
        goto LABEL_16;
      }
    }

    sub_10000D778();

    v193 = v72;
    v74 = [v72 policyHash];
    v75 = sub_100216974();
    v77 = v76;

    v42 = &selRef_signingKey;
    v78 = [v192 version];
    v46 = [v78 policyHash];

    v79 = sub_100216974();
    v81 = v80;

    if (v75 == v79 && v77 == v81)
    {

      v30 = v173;
      v36 = v177;
      a6 = v171;
      v25 = v170;
      goto LABEL_31;
    }

    v82 = sub_1002171A4();

    v83 = v182;
    v30 = v173;
    v36 = v177;
    a6 = v171;
    v25 = v170;
    if ((v82 & 1) == 0)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v148 = sub_100216774();
      sub_100002648(v148, qword_10029D160);
      v149 = v192;
      v150 = v193;
      v151 = sub_100216754();
      v152 = sub_100216C54();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v195[0] = v193;
        *v153 = 136446466;
        v154 = [v150 policyHash];
        v155 = sub_100216974();
        v157 = v156;

        v158 = sub_100005FB0(v155, v157, v195);

        *(v153 + 4) = v158;
        *(v153 + 12) = 2082;
        v159 = [v149 version];
        v160 = [v159 policyHash];

        v161 = sub_100216974();
        v163 = v162;

        v164 = sub_100005FB0(v161, v163, v195);

        *(v153 + 14) = v164;
        _os_log_impl(&_mh_execute_header, v151, v152, "Requested hash %{public}s does not match fetched hash %{public}s", v153, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000561D0();
      v165 = swift_allocError();
      *v166 = xmmword_1002260A0;
      *(v166 + 16) = 13;
      v83(0, v165);

      goto LABEL_50;
    }

LABEL_31:
    swift_beginAccess();
    v84 = sub_10018DFAC(v193);
    swift_endAccess();

    v59 = v192;
    v85 = [v192 version];
    swift_beginAccess();
    v86 = *v36;
    if ((*v36 & 0xC000000000000001) != 0)
    {
      if (v86 < 0)
      {
        v87 = *v36;
      }

      else
      {
        v87 = v86 & 0xFFFFFFFFFFFFFF8;
      }

      v88 = v59;
      v89 = sub_1002170B4();
      if (!__OFADD__(v89, 1))
      {
        *v36 = sub_1001831B8(v87, v89 + 1);
        goto LABEL_38;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v90 = *v36;
    v91 = v59;
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = *v36;
    sub_100186118(v59, v85, isUniquelyReferenced_nonNull_native);
    *v36 = v194;

    swift_endAccess();
    type metadata accessor for PolicyMO();
    v93 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a6 + v169)];
    v36 = [v59 version];
    v94 = [(Swift::Int *)v36 versionNumber];

    if ((v94 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    [v93 setVersion:v94];
    v95 = [v59 version];
    v96 = [v95 policyHash];

    if (!v96)
    {
      sub_100216974();
      v96 = sub_100216964();
    }

    [v93 setPolicyHash:v96];

    v36 = v178;
    v97 = *v178;
    v98 = v178[1];
    v99 = sub_100216204().super.isa;
    [v93 setPolicyData:v99];

    v100 = *(a6 + v168);
    [v100 addPoliciesObject:v93];

    sub_1001AC1E4(v36, type metadata accessor for PolicyDocumentMapEntry);
    v40 = v190;
    v41 = v172;
    v39 = v189;
    v38 = &off_10029D000;
    a2 = v182;
    if (v190 == v176)
    {
      goto LABEL_42;
    }
  }

  v59 = v43;
  if (qword_100297520 != -1)
  {
LABEL_73:
    swift_once();
  }

  v128 = sub_100216774();
  sub_100002648(v128, qword_10029D160);
  v56 = v175;
  sub_1001AC0A0(v36, v175, type metadata accessor for PolicyDocumentMapEntry);
  sub_1001AC0A0(v36, v30, type metadata accessor for PolicyDocumentMapEntry);
  v52 = sub_100216754();
  v129 = sub_100216C54();
  if (os_log_type_enabled(v52, v129))
  {
    LODWORD(v193) = v129;
    v66 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v66 = 136446466;
    v42 = v167;
    sub_100019C6C(v56 + *(v186 + 24), v167, &unk_10029D820, &unk_10021E840);
    v130 = v187;
    if (v46(v42, 1, v187) == 1)
    {
      v131 = v56;
      v132 = v174;
      *v174 = 0;
      v132[1] = 0;
      v132[2] = 0xE000000000000000;
      v133 = v132 + *(v130 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      sub_1001AC1E4(v131, type metadata accessor for PolicyDocumentMapEntry);
      v134 = v46(v42, 1, v130);
      v135 = v132;
      if (v134 != 1)
      {
        sub_1000114D4(v42, &unk_10029D820, &unk_10021E840);
      }
    }

    else
    {
LABEL_61:
      sub_1001AC1E4(v56, type metadata accessor for PolicyDocumentMapEntry);
      v135 = v174;
      sub_1001AC038(v42, v174, type metadata accessor for PolicyDocumentKey);
    }

    v137 = v135[1];
    v136 = v135[2];

    sub_1001AC1E4(v135, type metadata accessor for PolicyDocumentKey);
    v138 = sub_100005FB0(v137, v136, v195);

    *(v66 + 4) = v138;
    *(v66 + 12) = 2082;
    v139 = v173;
    v140 = *v173;
    v141 = *(v173 + 1);
    v142 = sub_100216214(0);
    v144 = v143;
    sub_1001AC1E4(v139, type metadata accessor for PolicyDocumentMapEntry);
    v145 = sub_100005FB0(v142, v144, v195);

    *(v66 + 14) = v145;
    _os_log_impl(&_mh_execute_header, v52, v193, "Can't make policy document with hash %{public}s and data %{public}s", v66, 0x16u);
    swift_arrayDestroy();

    v36 = v178;
  }

  else
  {

    sub_1001AC1E4(v56, type metadata accessor for PolicyDocumentMapEntry);
    sub_1001AC1E4(v30, type metadata accessor for PolicyDocumentMapEntry);
  }

  sub_1000561D0();
  v146 = swift_allocError();
  *v147 = xmmword_1002260A0;
  *(v147 + 16) = 13;
  (v59)(0, v146);

  v122 = v36;
LABEL_51:
  sub_1001AC1E4(v122, type metadata accessor for PolicyDocumentMapEntry);
}

uint64_t sub_100154078(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = a1[1];

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_1001540D0(uint64_t a1, void *a2, void (*a3)(void, char *), uint64_t a4)
{
  v62 = a2;
  v63 = a4;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v7 = *(RecoverableTLKShares - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(RecoverableTLKShares - 8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesResponse = type metadata accessor for FetchRecoverableTLKSharesResponse(0);
  v13 = *(*(RecoverableTLKSharesResponse - 8) + 64);
  v15 = __chkstk_darwin(RecoverableTLKSharesResponse - 8, v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v59 - v19;
  v21 = sub_10001148C(&qword_100298440, &qword_10021DEB0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21, v23);
  v25 = (&v59 - v24);
  sub_100019C6C(a1, &v59 - v24, &qword_100298440, &qword_10021DEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v25;
    if (qword_100297520 == -1)
    {
LABEL_3:
      v26 = sub_100216774();
      sub_100002648(v26, qword_10029D160);
      swift_errorRetain();
      v27 = sub_100216754();
      v28 = sub_100216C74();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v65 = v30;
        *v29 = 136446210;
        v64 = v17;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v31 = sub_100216994();
        v33 = sub_100005FB0(v31, v32, &v65);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "fetchRecoverableTlkshares failed: %{public}s", v29, 0xCu);
        sub_100006128(v30);
      }

      v34 = v62;
      v35 = sub_100216144();
      [v34 sendMetricWithResult:0 error:v35];

      swift_errorRetain();
      a3(0, v17);
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  sub_1001AC038(v25, v20, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v37 = *v20;
  v38 = *(*v20 + 16);
  if (v38)
  {
    v61 = a3;
    v65 = _swiftEmptyArrayStorage;
    sub_1001877E4(0, v38, 0);
    v39 = v65;
    v40 = *(v7 + 80);
    v60 = v37;
    v41 = v37 + ((v40 + 32) & ~v40);
    v42 = *(v7 + 72);
    do
    {
      sub_1001AC0A0(v41, v11, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      a3 = *(*(v11 + 2) + 16);
      sub_1001AC1E4(v11, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v65 = v39;
      v44 = v39[2];
      v43 = v39[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        sub_1001877E4((v43 > 1), v44 + 1, 1);
        v39 = v65;
      }

      v39[2] = v45;
      v39[v44 + 4] = a3;
      v41 += v42;
      --v38;
    }

    while (v38);
LABEL_14:
    v46 = 0;
    v47 = 4;
    while (1)
    {
      v48 = v39[v47];
      v49 = __OFADD__(v46, v48);
      v46 += v48;
      if (v49)
      {
        break;
      }

      ++v47;
      if (!--v45)
      {
        v37 = v60;
        a3 = v61;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v39 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage[2];
  if (v45)
  {
    v60 = *v20;
    v61 = a3;
    goto LABEL_14;
  }

  v46 = 0;
LABEL_18:

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v50 = sub_100216774();
  sub_100002648(v50, qword_10029D160);
  sub_1001AC0A0(v20, v17, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v51 = sub_100216754();
  v52 = sub_100216C54();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134218240;
    v54 = v37;
    v55 = a3;
    v56 = *(*v17 + 16);
    sub_1001AC1E4(v17, type metadata accessor for FetchRecoverableTLKSharesResponse);
    *(v53 + 4) = v56;
    a3 = v55;
    v37 = v54;
    *(v53 + 12) = 2048;
    *(v53 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v51, v52, "fetchRecoverableTlkshares succeeded: found %ld views and %ld total TLKShares", v53, 0x16u);
  }

  else
  {
    sub_1001AC1E4(v17, type metadata accessor for FetchRecoverableTLKSharesResponse);
  }

  v57 = v62;

  v58 = sub_1001266F4(v37);
  [v57 sendMetricWithResult:1 error:0];
  a3(v58, 0);

  return sub_1001AC1E4(v20, type metadata accessor for FetchRecoverableTLKSharesResponse);
}

void sub_100154700(void *a1, unint64_t a2, char a3)
{
  v6 = [a1 permanentInfo];
  v7 = [v6 peerID];

  v8 = v7;
  if (!v7)
  {
    sub_100216974();
    v8 = sub_100216964();
  }

  v77 = sub_100216974();
  v79 = v9;
  type metadata accessor for PeerMO();
  v74 = v3;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
  [v10 setPeerID:v8];

  v11 = [a1 permanentInfo];
  v12 = [v11 data];

  v13 = sub_100216224();
  v15 = v14;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v13, v15);
  [v10 setPermanentInfo:isa];

  v17 = [a1 permanentInfo];
  v18 = [v17 sig];

  v19 = sub_100216224();
  v21 = v20;

  v22 = sub_100216204().super.isa;
  sub_100002BF0(v19, v21);
  [v10 setPermanentInfoSig:v22];

  v23 = a1;
  v24 = [a1 stableInfo];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 data];

    v27 = sub_100216224();
    v29 = v28;

    v23 = a1;
    v30.super.isa = sub_100216204().super.isa;
    sub_100002BF0(v27, v29);
  }

  else
  {
    v30.super.isa = 0;
  }

  [v10 setStableInfo:{v30.super.isa, v74}];

  v31 = [v23 stableInfo];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 sig];

    v34 = sub_100216224();
    v36 = v35;

    v37.super.isa = sub_100216204().super.isa;
    v38 = v36;
    v23 = a1;
    sub_100002BF0(v34, v38);
  }

  else
  {
    v37.super.isa = 0;
  }

  [v10 setStableInfoSig:v37.super.isa];

  v39 = [v23 dynamicInfo];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 data];

    v42 = sub_100216224();
    v44 = v43;

    v45.super.isa = sub_100216204().super.isa;
    v46 = v44;
    v23 = a1;
    sub_100002BF0(v42, v46);
  }

  else
  {
    v45.super.isa = 0;
  }

  v47 = v75;
  [v10 setDynamicInfo:v45.super.isa];

  v48 = [v23 dynamicInfo];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 sig];

    v51 = sub_100216224();
    v53 = v52;

    v54.super.isa = sub_100216204().super.isa;
    v55 = v53;
    v23 = a1;
    sub_100002BF0(v51, v55);
  }

  else
  {
    v54.super.isa = 0;
  }

  [v10 setDynamicInfoSig:v54.super.isa];

  [v10 setIsEgoPeer:a3 & 1];
  v56 = *(v75 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);

  v57 = sub_10010F154();
  v59 = v58;

  if (v59 >> 60 == 15)
  {
    [v10 setHmacSig:0];
  }

  else
  {
    v60 = sub_100216204().super.isa;
    v61 = [v23 calculateHmacWithHmacKey:v60];

    v62 = sub_100216224();
    v64 = v63;

    v65 = sub_100216204().super.isa;
    sub_100002BF0(v62, v64);
    [v10 setHmacSig:v65];

    sub_10004CD18(v57, v59);
  }

  [*(v75 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) addPeersObject:v10];
  v78 = v10;
  if (a2)
  {
    v66 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
    {
      v68 = v47;
      v69 = 0;
      v70 = a2 & 0xC000000000000001;
      v71 = v66;
      while (1)
      {
        if (v70)
        {
          v47 = a2;
          v72 = sub_100217014();
        }

        else
        {
          if (v69 >= v66[2])
          {
            goto LABEL_32;
          }

          v47 = a2;
          v72 = *(a2 + 8 * v69 + 32);
        }

        v66 = v72;
        a2 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        v80 = v72;
        sub_100154D30(&v80, v78, v68, v77, v79);

        ++v69;
        v73 = a2 == i;
        a2 = v47;
        v66 = v71;
        if (v73)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }
  }

LABEL_30:
}

void sub_100154D30(void **a1, id a2, uint64_t a3, Swift::Int a4, unint64_t a5)
{
  v6 = *a1;
  v7 = [a2 vouchers];
  if (v7)
  {
    v8 = v7;
    v51 = 0;
    type metadata accessor for VoucherMO();
    sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO);
    sub_100216BA4();
  }

  v9 = &_swiftEmptySetSingleton;
  v49 = a3;
  v50 = v6;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for VoucherMO();
    sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO);
    sub_100216C04();
    v9 = v51;
    v10 = v52;
    v11 = v53;
    v12 = v54;
    v13 = v55;
  }

  else
  {
    v14 = -1 << *(&_swiftEmptySetSingleton + 32);
    v10 = &_swiftEmptySetSingleton + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(&_swiftEmptySetSingleton + 7);

    v12 = 0;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v17 = v12;
  v18 = v13;
  v19 = v12;
  if (v13)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v56 = v21;
        v22 = sub_100179798(&v56, v50);

        if (v22)
        {
          break;
        }

        v12 = v19;
        v13 = v20;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        if (sub_100216F14())
        {
          type metadata accessor for VoucherMO();
          swift_dynamicCast();
          v21 = v56;
          v19 = v12;
          v20 = v13;
          if (v56)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      sub_10000D778();

      v23 = v49;
      v25 = v50;
    }

    else
    {
LABEL_21:
      sub_10000D778();

      type metadata accessor for VoucherMO();
      v23 = v49;
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v49 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
      v25 = v50;
      v26 = [v50 data];
      v27 = sub_100216224();
      v29 = v28;

      isa = sub_100216204().super.isa;
      sub_100002BF0(v27, v29);
      [v24 setVoucherInfo:isa];

      v31 = [v50 sig];
      v32 = sub_100216224();
      v34 = v33;

      v35 = sub_100216204().super.isa;
      sub_100002BF0(v32, v34);
      [v24 setVoucherInfoSig:v35];

      [a2 addVouchersObject:v24];
    }

    v36 = [v25 sponsorID];
    v37 = sub_100216974();
    v39 = v38;

    v40 = [*(v23 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
    if (!v40)
    {

      return;
    }

    v41 = v40;
    v42 = sub_100216974();
    v44 = v43;

    if (v37 == v42 && v39 == v44)
    {
    }

    else
    {
      v45 = sub_1002171A4();

      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    sub_1001820D4(a4, a5);
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= ((v11 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v18 = *&v10[8 * v19];
      ++v17;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_1001551F8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a4;
  v81 = a3;
  v82 = a5;
  v76 = a2;
  v7 = type metadata accessor for TLKShare(0);
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v73 - v14;
  v16 = type metadata accessor for ViewKeys(0);
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = *(v84 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = &_swiftEmptyArrayStorage;
  v74 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v75 = v12;
    v73 = v15;
    v86 = a1;
    if (i)
    {
      v12 = 0;
      v22 = a1 & 0xC000000000000001;
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      v23 = &selRef_hasPeerWithID_error_;
      v83 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v24 = sub_100217014();
        }

        else
        {
          if (v12 >= *(v15 + 16))
          {
            goto LABEL_75;
          }

          v24 = *(a1 + 8 * v12 + 32);
        }

        v5 = v24;
        v25 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v24 v23[416]])
        {
          sub_100217044();
          v26 = v22;
          v27 = i;
          v28 = v20;
          v29 = v23;
          v30 = v89[2];
          sub_100217074();
          v23 = v29;
          v20 = v28;
          i = v27;
          v22 = v26;
          v15 = v83;
          sub_100217084();
          sub_100217054();
          a1 = v86;
        }

        else
        {
        }

        ++v12;
        if (v25 == i)
        {
          v31 = v89;
          v12 = v75;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v31 = &_swiftEmptyArrayStorage;
LABEL_16:
    v32 = (v31 >> 62) & 1;
    if (v31 < 0)
    {
      LODWORD(v32) = 1;
    }

    LODWORD(v83) = v32;
    if (v32 == 1)
    {
      v33 = sub_1002170F4();
    }

    else
    {
      v33 = *(v31 + 16);
    }

    if (v33)
    {
      v89 = &_swiftEmptyArrayStorage;
      sub_100187848(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v34 = 0;
      v35 = v89;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v36 = sub_100217014();
        }

        else
        {
          v36 = *(v31 + 8 * v34 + 32);
        }

        v38 = v36;
        *(&v73 - 2) = __chkstk_darwin(v36, v37);
        sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys);
        v39 = v87;
        sub_100216654();
        v87 = v39;

        v89 = v35;
        v41 = v35[2];
        v40 = v35[3];
        v5 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          sub_100187848(v40 > 1, v41 + 1, 1);
          v35 = v89;
        }

        ++v34;
        v35[2] = v5;
        sub_1001AC038(v20, v35 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v41, type metadata accessor for ViewKeys);
      }

      while (v33 != v34);
      v12 = v75;
      a1 = v86;
    }

    v42 = v74 ? sub_1002170F4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = &_swiftEmptyArrayStorage;
    if (v42)
    {
      v89 = &_swiftEmptyArrayStorage;
      sub_100217064();
      if (v42 < 0)
      {
        goto LABEL_81;
      }

      v44 = v31;
      v45 = 0;
      v46 = v86;
      v47 = v86 & 0xC000000000000001;
      do
      {
        if (v47)
        {
          v48 = sub_100217014();
        }

        else
        {
          v48 = *(v46 + 8 * v45 + 32);
        }

        v49 = v48;
        ++v45;
        v50 = [v48 tlk];

        sub_100217044();
        v33 = v89[2];
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v46 = v86;
      }

      while (v42 != v45);
      v43 = v89;
      v51 = v81;
      v52 = v82;
      v31 = v44;
      v12 = v75;
    }

    else
    {
      v51 = v81;
      v52 = v82;
    }

    v53 = v87;
    v54 = sub_10010C3CC(v43, v51, v51, v52);
    v5 = v53;
    if (v53)
    {

      return;
    }

    v86 = v54;

    if (!(v76 >> 62))
    {
      v15 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_82:
    v15 = sub_1002170F4();
LABEL_46:
    if (v15)
    {
      v89 = &_swiftEmptyArrayStorage;
      sub_100187804(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
LABEL_84:
        objc_autoreleasePoolPop(v33);
        __break(1u);
        return;
      }

      v85 = v31;
      v55 = v89;
      if ((v76 & 0xC000000000000001) != 0)
      {
        v56 = 0;
        v57 = v73;
        do
        {
          v58 = sub_100217014();
          *(&v73 - 2) = __chkstk_darwin(v58, v59);
          sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
          sub_100216654();
          swift_unknownObjectRelease();
          v89 = v55;
          v12 = v55[2];
          v60 = v55[3];
          if (v12 >= v60 >> 1)
          {
            sub_100187804(v60 > 1, v12 + 1, 1);
            v55 = v89;
          }

          ++v56;
          v55[2] = v12 + 1;
          sub_1001AC038(v57, v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v12, type metadata accessor for TLKShare);
        }

        while (v15 != v56);
      }

      else
      {
        v61 = (v76 + 32);
        v62 = sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
        v87 = v62;
        do
        {
          v64 = v12;
          v65 = *v61;
          __chkstk_darwin(v62, v63);
          *(&v73 - 2) = v66;
          v67 = v66;
          sub_100216654();

          v89 = v55;
          v69 = v55[2];
          v68 = v55[3];
          if (v69 >= v68 >> 1)
          {
            sub_100187804(v68 > 1, v69 + 1, 1);
            v55 = v89;
          }

          v55[2] = v69 + 1;
          v62 = sub_1001AC038(v64, v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v69, type metadata accessor for TLKShare);
          ++v61;
          --v15;
          v12 = v64;
        }

        while (v15);
      }

      v31 = v85;
    }

    else
    {
      v55 = &_swiftEmptyArrayStorage;
    }

    v89 = &_swiftEmptyArrayStorage;
    if (v83)
    {
      v20 = sub_1002170F4();
      if (!v20)
      {
        break;
      }

      goto LABEL_62;
    }

    v20 = *(v31 + 16);
    if (!v20)
    {
      break;
    }

LABEL_62:
    a1 = 0;
    v87 = v31 & 0xC000000000000001;
    while (1)
    {
      if (v87)
      {
        v15 = v31;
        v70 = sub_100217014();
      }

      else
      {
        if (a1 >= *(v31 + 16))
        {
          goto LABEL_77;
        }

        v15 = v31;
        v70 = *(v31 + 8 * a1 + 32);
      }

      v71 = v70;
      v12 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v33 = objc_autoreleasePoolPush();
      sub_100155B4C(v78, v77, v71, v81, v82, &v89);
      if (v5)
      {
        goto LABEL_84;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v33);

      ++a1;
      v31 = v15;
      if (v12 == v20)
      {
        v72 = v89;
        goto LABEL_73;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v72 = &_swiftEmptyArrayStorage;
LABEL_73:

  v88 = v86;
  sub_10011028C(v72);
  sub_10011028C(v55);
}

void sub_100155B4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a6;
  v96 = a4;
  v97 = a5;
  v10 = type metadata accessor for TLKShare(0);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v91 = a1;
  v15 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v16 = [a3 tlk];
  v17 = [v16 zoneID];

  v18 = [v17 zoneName];
  if (!v18)
  {
    sub_100216974();
    v18 = sub_100216964();
  }

  v101 = 0;
  v19 = [v15 getPeerIDsTrustedByPeerWithDynamicInfo:a2 toAccessView:v18 error:&v101];

  v20 = v101;
  if (v19)
  {
    v99 = v6;
    v21 = sub_100216BB4();
    v22 = v20;

    if (qword_100297520 != -1)
    {
LABEL_46:
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_10029D160);
    v24 = a3;

    v25 = sub_100216754();
    v26 = sub_100216C54();

    v27 = os_log_type_enabled(v25, v26);
    v92 = v14;
    v93 = v24;
    v86 = a3;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v28 = 136446466;
      v29 = [v24 tlk];
      v30 = [v29 description];
      v31 = sub_100216974();
      v33 = v32;

      v34 = sub_100005FB0(v31, v33, &v101);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;
      v35 = sub_100216BC4();
      a3 = v36;
      v37 = sub_100005FB0(v35, v36, &v101);

      *(v28 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Planning to share %{public}s with peers %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v101 = &_swiftEmptyArrayStorage;
    v14 = v21 + 56;
    v38 = 1 << v21[32];
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v21 + 7);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    v98 = &_swiftEmptyArrayStorage;
    while (v40)
    {
LABEL_15:
      v44 = (*(v21 + 6) + ((v42 << 10) | (16 * __clz(__rbit64(v40)))));
      v46 = *v44;
      v45 = v44[1];
      v47 = *&v90[v91];

      v48 = v47;
      v49 = sub_100216964();
      v100 = 0;
      a3 = [v48 peerWithID:v49 error:&v100];

      if (v100)
      {
        v71 = v100;

        swift_willThrow();

LABEL_37:
        a3 = v86;
        goto LABEL_38;
      }

      v40 &= v40 - 1;

      if (a3)
      {
        sub_100216B04();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v50 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v98 = v101;
      }
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v43 >= v41)
      {
        break;
      }

      v40 = *&v14[8 * v43];
      ++v42;
      if (v40)
      {
        v42 = v43;
        goto LABEL_15;
      }
    }

    v51 = v98;
    if (v98 >> 62)
    {
      v84 = v98;
      a3 = sub_1002170F4();
      v51 = v84;
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a3 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_22:
        v52 = v51;
        v101 = &_swiftEmptyArrayStorage;
        sub_100187804(0, a3 & ~(a3 >> 63), 0);
        if (a3 < 0)
        {
          __break(1u);
        }

        v21 = v101;
        v53 = objc_opt_self();
        v54 = 0;
        v55 = v52;
        v90 = v53;
        v91 = v52 & 0xC000000000000001;
        v88 = v52 & 0xFFFFFFFFFFFFFF8;
        v89 = a3;
        while (1)
        {
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_44;
          }

          if (v91)
          {
            v57 = sub_100217014();
          }

          else
          {
            if (v54 >= *(v88 + 16))
            {
              goto LABEL_45;
            }

            v57 = *(v55 + 8 * v54 + 32);
          }

          v58 = v57;
          v59 = [v93 tlk];
          v60 = [v58 permanentInfo];
          v100 = 0;
          v61 = [v90 share:v59 as:v96 to:v60 epoch:v97 poisoned:0 error:&v100];
          if (!v61)
          {
            v72 = v100;

            v71 = sub_100216154();

            swift_willThrow();

            goto LABEL_37;
          }

          v62 = v61;
          v63 = v100;

          __chkstk_darwin(v64, v65);
          *(&v85 - 2) = v62;
          sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
          v66 = v92;
          v67 = v99;
          sub_100216654();
          v99 = v67;

          v101 = v21;
          v69 = *(v21 + 2);
          v68 = *(v21 + 3);
          v14 = (v69 + 1);
          if (v69 >= v68 >> 1)
          {
            sub_100187804(v68 > 1, v69 + 1, 1);
            v21 = v101;
          }

          *(v21 + 2) = v14;
          sub_1001AC038(v66, &v21[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v69], type metadata accessor for TLKShare);
          ++v54;
          a3 = v89;
          v55 = v98;
          if (v56 == v89)
          {

            goto LABEL_49;
          }
        }
      }
    }

    v21 = &_swiftEmptyArrayStorage;
LABEL_49:
    sub_10011028C(v21);
  }

  else
  {
    v70 = v101;
    v71 = sub_100216154();

    swift_willThrow();
LABEL_38:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v73 = sub_100216774();
    sub_100002648(v73, qword_10029D160);
    v74 = a3;
    swift_errorRetain();
    v75 = sub_100216754();
    v76 = sub_100216C74();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v100 = v71;
      v101 = v79;
      *v77 = 138543618;
      *(v77 + 4) = v74;
      *v78 = v74;
      *(v77 + 12) = 2082;
      v80 = v74;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v81 = sub_100216994();
      v83 = sub_100005FB0(v81, v82, &v101);

      *(v77 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to create TLKShares for keyset %{public}@: %{public}s", v77, 0x16u);
      sub_1000114D4(v78, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v79);
    }

    else
    {
    }
  }
}

__CFString *sub_100156564(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v69 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v15 = *(v10 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v16 = sub_100216964();
  if (a7)
  {
    v17 = sub_100216964();
  }

  else
  {
    v17 = 0;
  }

  v74 = a4;
  if (a8)
  {
    v18.super.isa = sub_100216B14().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  v70 = OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey;
  v19 = *(v73 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v20 = *(a10 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  v21 = [v19 machines];
  v72 = a5;
  if (v21)
  {
    v22 = v21;
    *&v76 = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();
  }

  sub_100108644(&_swiftEmptySetSingleton);

  v23 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v25 = [v23 initWithEntries:isa];

  *&v76 = 0;
  v26 = a5;
  v27 = [v15 dynamicInfoForJoiningPeerID:v16 peerPermanentInfo:v74 peerStableInfo:a5 sponsorID:v17 preapprovedKeys:v18.super.isa signingKeyPair:v20 currentMachineIDs:v25 error:&v76];

  if (!v27)
  {
    v31 = v76;
    sub_100216154();

    swift_willThrow();
    return v27;
  }

  v28 = v76;
  v29 = [v72 syncUserControllableViews];
  if (v29 == 2 || v29 == 1)
  {
    v76 = xmmword_1002260B0;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0;
    v30 = v74;
    goto LABEL_43;
  }

  v32 = [v74 modelID];
  sub_100216974();

  v85._countAndFlagsBits = 0x5654656C707041;
  v85._object = 0xE700000000000000;
  if (sub_100216A94(v85) || (v86._countAndFlagsBits = 0x6363416F69647541, v86._object = 0xEE0079726F737365, sub_100216A94(v86)))
  {

LABEL_17:
    v33 = 3;
    goto LABEL_18;
  }

  v87._countAndFlagsBits = 0x6863746157;
  v87._object = 0xE500000000000000;
  v40 = sub_100216A94(v87);

  if (v40)
  {
    goto LABEL_17;
  }

  v41 = *(v73 + v69);
  v75 = 0;
  v42 = [v41 userViewSyncabilityConsensusAmongTrustedPeers:v27 error:&v75];
  v43 = v75;
  if (v75)
  {
    swift_willThrow();
    v44 = qword_100297520;
    v45 = v43;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_100216774();
    sub_100002648(v46, qword_10029D160);
    v47 = v45;
    v48 = sub_100216754();
    v49 = sub_100216C74();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      v52 = v47;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&_mh_execute_header, v48, v49, "error getting user view sync consensus: %{public}@", v50, 0xCu);
      sub_1000114D4(v51, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
LABEL_44:

    return v27;
  }

  v33 = v42;
  if (v42 == 2)
  {
    if ([*(v73 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter) isCloudKeychainSyncAllowed])
    {
      v33 = 2;
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v65 = sub_100216774();
      sub_100002648(v65, qword_10029D160);
      v66 = sub_100216754();
      v67 = sub_100216C54();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "user-controllable views disabled by profile", v68, 2u);
      }

      v33 = 1;
    }
  }

LABEL_18:
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v34 = sub_100216774();
  sub_100002648(v34, qword_10029D160);
  v35 = sub_100216754();
  v36 = sub_100216C54();
  if (!os_log_type_enabled(v35, v36))
  {

LABEL_42:
    LOBYTE(v75) = 1;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    *&v79 = 0;
    BYTE8(v79) = 1;
    *&v80 = 0;
    DWORD2(v80) = v33;
    BYTE12(v80) = 0;
    v82 = 0;
    v81 = 0uLL;
    v26 = v72;
    v30 = v74;
LABEL_43:
    v83[3] = v79;
    v83[4] = v80;
    v83[5] = v81;
    v83[0] = v76;
    v84 = v82;
    v83[1] = v77;
    v83[2] = v78;
    v61 = *(a10 + v70);
    v62 = sub_100179B48(v83, v30, v26, v27, v61, a9);

    sub_1000114D4(&v76, &unk_10029D860, &qword_100226648);
    if (!v71)
    {
      v63 = type metadata accessor for Peer(0);
      __chkstk_darwin(v63, v64);
      sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer);
      sub_100216654();

      return v27;
    }

    goto LABEL_44;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v75 = v38;
  *v37 = 136446210;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      v39 = @"ENABLED";
      goto LABEL_39;
    }

    if (v33 == 3)
    {
      v39 = @"FOLLOWING";
      goto LABEL_39;
    }

LABEL_36:
    v39 = [NSString stringWithFormat:@"(unknown: %i)", v33];
    goto LABEL_40;
  }

  if (!v33)
  {
    v39 = @"UNKNOWN";
    goto LABEL_39;
  }

  if (v33 != 1)
  {
    goto LABEL_36;
  }

  v39 = @"DISABLED";
LABEL_39:
  v54 = v39;
LABEL_40:
  result = v39;
  if (result)
  {
    v56 = result;
    v57 = sub_100216974();
    v59 = v58;

    v60 = sub_100005FB0(v57, v59, &v75);

    *(v37 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v35, v36, "join: setting 'user view sync' control as: %{public}s", v37, 0xCu);
    sub_100006128(v38);

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_100156FCC(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v81 = a8;
  v78 = a7;
  v73 = a6;
  v75 = a5;
  v12 = type metadata accessor for SignedPeerDynamicInfo(0);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SignedPeerStableInfo(0);
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SignedPeerPermanentInfo(0);
  v74 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 1);

  *a1 = a2;
  *(a1 + 1) = a3;
  *v27 = xmmword_10021D470;
  *(v27 + 1) = xmmword_10021D470;
  v82 = xmmword_10021D470;
  v29 = &v27[*(v22 + 24)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v30 = a4;
  v31 = [a4 data];
  v32 = sub_100216224();
  v34 = v33;

  sub_100002BF0(*v27, *(v27 + 1));
  *v27 = v32;
  *(v27 + 1) = v34;
  v35 = [v30 sig];
  v36 = sub_100216224();
  v38 = v37;

  sub_100002BF0(*(v27 + 2), *(v27 + 3));
  *(v27 + 2) = v36;
  *(v27 + 3) = v38;
  v39 = v75;
  v40 = type metadata accessor for Peer(0);
  v41 = v40[7];
  sub_1000114D4(&a1[v41], &qword_10029DA00, &unk_10021E800);
  sub_1001AC038(v27, &a1[v41], type metadata accessor for SignedPeerPermanentInfo);
  (*(v23 + 56))(&a1[v41], 0, 1, v74);
  v42 = v39;
  if (!v39)
  {
    v42 = v73;
  }

  v43 = v82;
  *v21 = v82;
  *(v21 + 1) = v43;
  v44 = v77;
  v45 = *(v77 + 24);
  v46 = v39;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v47 = [v42 data];
  v48 = sub_100216224();
  v50 = v49;

  sub_100002BF0(*v21, *(v21 + 1));
  *v21 = v48;
  *(v21 + 1) = v50;
  v51 = [v42 sig];
  v52 = sub_100216224();
  v54 = v53;

  sub_100002BF0(*(v21 + 2), *(v21 + 3));
  *(v21 + 2) = v52;
  *(v21 + 3) = v54;
  v55 = v40[8];
  sub_1000114D4(&a1[v55], &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v21, &a1[v55], type metadata accessor for SignedPeerStableInfo);
  (*(v76 + 56))(&a1[v55], 0, 1, v44);
  v56 = v82;
  *v16 = v82;
  *(v16 + 1) = v56;
  v57 = v80;
  v58 = &v16[*(v80 + 24)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v59 = v78;
  v60 = [v78 data];
  v61 = sub_100216224();
  v63 = v62;

  sub_100002BF0(*v16, *(v16 + 1));
  *v16 = v61;
  *(v16 + 1) = v63;
  v64 = [v59 sig];
  v65 = sub_100216224();
  v67 = v66;

  sub_100002BF0(*(v16 + 2), *(v16 + 3));
  *(v16 + 2) = v65;
  *(v16 + 3) = v67;
  v68 = v40[9];
  sub_1000114D4(&a1[v68], &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v16, &a1[v68], type metadata accessor for SignedPeerDynamicInfo);
  (*(v79 + 56))(&a1[v68], 0, 1, v57);
  v69 = *(a1 + 2);
  v70 = v81;

  *(a1 + 2) = v70;
  return result;
}

uint64_t sub_1001574BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void))
{
  if (a5)
  {
    v12 = sub_100216C74();
  }

  else
  {
    v12 = sub_100216C54();
  }

  v13 = v12;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  swift_errorRetain();
  v15 = sub_100216754();

  if (os_log_type_enabled(v15, v13))
  {
    v21 = a4;
    v22 = a7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25._countAndFlagsBits = sub_100216994();
      sub_100216A14(v25);

      v18 = 0x203A726F727265;
    }

    else
    {
      v18 = 0x73736563637573;
    }

    v19 = sub_100005FB0(v18, 0xE700000000000000, &v24);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v13, "join complete: %{public}s", v16, 0xCu);
    sub_100006128(v17);

    a7 = v22;
    a4 = v21;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000074, 0x800000010023C6E0);
  return a7(a1, a2, a3, a4, a5);
}

void sub_10015771C(uint64_t a1, void *a2, void *a3, void (*a4)(void, void, void *, void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, char *a14, unint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v132 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v28 = *(*(PolicyDocumentsRequest - 8) + 64);
  v30 = __chkstk_darwin(PolicyDocumentsRequest, v29);
  v32 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v33];

    v34 = sub_100216144();
    [v132 sendMetricWithResult:0 error:v34];

    a4(0, 0, _swiftEmptyArrayStorage, 0, a1);
    return;
  }

  v111 = v30;
  v126 = a8;
  [a2 sendMetricWithResult:1 error:0];
  v35 = kSecurityRTCEventNameFetchPolicyDocument;
  sub_1001A9F94();
  v37 = v36;
  v125 = a7;
  v117 = a6;
  if (a7)
  {
    v38 = sub_100216964();
  }

  else
  {
    v38 = 0;
  }

  v127 = a13;
  v39 = a11;
  v130 = a5;
  v131 = a11;
  v129 = a4;
  if (a9)
  {
    v40 = sub_100216964();
    v39 = v131;
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v120 = a9;
  v116 = a10;
  if (v39)
  {
    v43 = sub_100216964();
  }

  else
  {
    v43 = 0;
  }

  LOBYTE(v104) = a12 & 1;
  v119 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v38 flowID:v41 deviceSessionID:v43 eventName:v35 testsAreEnabled:v37 canSendMetrics:v104 category:v42];

  v44 = v127;
  v45 = *&v127[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  __chkstk_darwin(v46, v47);
  v48 = v132;
  v106[-4] = v44;
  v106[-3] = v48;
  v49 = v130;
  v104 = v129;
  v105 = v130;
  sub_10001148C(&qword_100297E70, &unk_10021DAB0);
  sub_100216D34();
  v50 = aBlock;
  if (!aBlock)
  {

    return;
  }

  v106[1] = 0;
  v109 = v32;
  v128 = a20;
  v121 = a19;
  v122 = a18;
  v115 = v45;
  v114 = a12 & 1;
  v124 = a17;
  v51 = swift_allocObject();
  v52 = v44;
  v53 = v119;
  *(v51 + 16) = v119;
  *(v51 + 24) = v52;
  *(v51 + 32) = a14;
  *(v51 + 40) = a15;
  v118 = a15;
  *(v51 + 48) = a16;
  *(v51 + 56) = a17;
  v123 = a16;
  v54 = v129;
  *(v51 + 64) = v132;
  *(v51 + 72) = v54;
  *(v51 + 80) = v49;
  *(v51 + 88) = a18;
  *(v51 + 96) = a19;
  *(v51 + 104) = a20;
  v55 = v125;
  v56 = v120;
  *(v51 + 112) = v126;
  *(v51 + 120) = v56;
  v57 = v131;
  *(v51 + 128) = v116;
  *(v51 + 136) = v57;
  *(v51 + 144) = v117;
  *(v51 + 152) = v55;
  v107 = v51;
  *(v51 + 160) = v114;
  v58 = swift_allocObject();
  v108 = v58;
  *(v58 + 16) = v50;
  v59 = (v58 + 16);
  v113 = swift_allocObject();
  v60 = v53;
  v119 = v50;
  v61 = v60;
  v62 = v127;
  sub_100012558(a14, a15);
  v63 = v124;
  sub_100012558(a16, v124);

  v112 = v61;
  v110 = v62;
  v64 = v132;

  v127 = a14;
  sub_100012558(a14, v118);
  sub_100012558(v123, v63);
  v132 = v64;

  v65 = v56;

  v66 = sub_100019440(_swiftEmptyArrayStorage);
  v67 = v113;
  *(v113 + 16) = v66;
  v68 = swift_allocObject();
  v69 = v110;
  *(v68 + 2) = v59;
  *(v68 + 3) = v69;
  *(v68 + 4) = v67 + 16;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1001ACE80;
  *(v70 + 24) = v68;
  v137 = sub_1001ACCC0;
  v138 = v70;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_100109050;
  v136 = &unk_1002833C8;
  v71 = _Block_copy(&aBlock);
  v72 = v69;

  [v115 performBlockAndWait:v71];
  _Block_release(v71);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
    __break(1u);
  }

  else
  {
    v75 = *v59;
    v76 = v109;
    if ((*v59 & 0xC000000000000001) != 0)
    {
      if (v75 < 0)
      {
        v77 = *v59;
      }

      v78 = *v59;

      v79 = sub_100216ED4();
    }

    else
    {
      v79 = *(v75 + 16);
    }

    v110 = v68;
    if (v79)
    {
      __chkstk_darwin(v73, v74);
      v104 = v59;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
      sub_100216654();
      v80 = *&v72[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      v129 = *&v72[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      sub_100006484(&v72[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v129);
      v81 = swift_allocObject();
      v81[2] = v72;
      v81[3] = sub_1001AA0E4;
      v82 = v108;
      v81[4] = v107;
      v81[5] = v82;
      v81[6] = v67;
      v83 = *(v80 + 16);
      v84 = *(v83 + 80);
      v85 = v72;

      v84(v76, sub_1001ACE2C, v81, v129, v83);

      sub_1001AC1E4(v76, type metadata accessor for FetchPolicyDocumentsRequest);

      v86 = v118;
LABEL_24:

      sub_100002BF0(v123, v124);
      sub_100002BF0(v127, v86);

      v103 = v112;

      return;
    }

    v111 = *(v67 + 16);

    [v112 sendMetricWithResult:1 error:0];
    v87 = v72;
    v88 = swift_allocObject();
    v89 = v127;
    v90 = v128;
    v91 = v118;
    *(v88 + 16) = v127;
    *(v88 + 24) = v91;
    v92 = v124;
    *(v88 + 32) = v123;
    *(v88 + 40) = v92;
    v93 = v129;
    v94 = v130;
    *(v88 + 48) = v132;
    *(v88 + 56) = v93;
    *(v88 + 64) = v94;
    *(v88 + 72) = v87;
    v95 = v121;
    *(v88 + 80) = v122;
    *(v88 + 88) = v95;
    v96 = v126;
    *(v88 + 96) = v90;
    *(v88 + 104) = v96;
    v97 = v116;
    *(v88 + 112) = v65;
    *(v88 + 120) = v97;
    v98 = v117;
    *(v88 + 128) = v131;
    *(v88 + 136) = v98;
    *(v88 + 144) = v125;
    *(v88 + 152) = v114;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_1001AA148;
    *(v99 + 24) = v88;
    v137 = sub_1001ACCC0;
    v138 = v99;
    aBlock = _NSConcreteStackBlock;
    v134 = 1107296256;
    v135 = sub_100109050;
    v136 = &unk_100283468;
    v100 = _Block_copy(&aBlock);
    v129 = v138;
    v126 = v87;
    v101 = v87;
    v86 = v91;
    sub_100012558(v89, v91);
    sub_100012558(v123, v124);
    v102 = v132;

    [v115 performBlockAndWait:v100];
    _Block_release(v100);
    LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

    if ((v91 & 1) == 0)
    {

      v72 = v126;
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_100158260(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void *, void, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v22 = 0;
  v8 = [v7 allPolicyVersionsWithError:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = v8;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v11 = sub_100216BB4();
    v12 = v9;
  }

  else
  {
    v13 = v22;
    v14 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    swift_errorRetain();
    v16 = sub_100216754();
    v17 = sub_100216C74();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error fetching all policy versions: %{public}@", v18, 0xCu);
      sub_1000114D4(v19, &qword_10029D580, &unk_10021CCC0);
    }

    v21 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v21];

    swift_errorRetain();
    a3(0, 0, _swiftEmptyArrayStorage, 0, v14);

    v11 = 0;
  }

  *a4 = v11;
}

void sub_100158520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = [objc_opt_self() voucherInfoWithData:isa sig:v23];

  if (v24)
  {
    v166 = a6;
    v168 = a5;
    v169 = a7;
    v25 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v26 = [v24 sponsorID];
    if (!v26)
    {
      sub_100216974();
      v26 = sub_100216964();
    }

    v170[0] = 0;
    v27 = [v25 peerWithID:v26 error:v170];

    v28 = v170[0];
    if (v170[0])
    {
      v29 = v170[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v30 = sub_100216774();
      sub_100002648(v30, qword_10029D160);
      v31 = v24;
      v32 = v29;
      v33 = sub_100216754();
      v34 = sub_100216C74();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v170[0] = v37;
        *v35 = 136315394;
        v38 = [v31 sponsorID];
        v39 = sub_100216974();
        v165 = v31;
        v41 = v40;

        v42 = sub_100005FB0(v39, v41, v170);

        *(v35 + 4) = v42;
        *(v35 + 12) = 2114;
        v43 = v32;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v44;
        *v36 = v44;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error getting sponsor (%s): %{public}@", v35, 0x16u);
        sub_1000114D4(v36, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v37);

        v45 = v165;

        v47 = v166;
        v46 = v168;
      }

      else
      {

        v47 = v166;
        v46 = a5;
        v45 = v31;
      }

      v98 = sub_100216144();
      [v46 sendMetricWithResult:0 error:v98];

      v99 = v32;
      v47(0, 0, &_swiftEmptyArrayStorage, 0, v28);

      return;
    }

    if (!v27)
    {
      v100 = [v24 sponsorID];
      v101 = sub_100216974();
      v103 = v102;

      sub_1000561D0();
      swift_allocError();
      *v104 = v101;
      *(v104 + 8) = v103;
      *(v104 + 16) = 0;
      v105 = sub_100216144();
      v106 = sub_100216144();

      [a5 sendMetricWithResult:0 error:v106];

      v107 = [v24 sponsorID];
      v108 = sub_100216974();
      v110 = v109;

      v111 = swift_allocError();
      *v112 = v108;
      *(v112 + 8) = v110;
      *(v112 + 16) = 0;
      a6(0, 0, &_swiftEmptyArrayStorage, 0, v111);

      return;
    }

    v52 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v53 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
    v54 = v27;
    v55 = [v53 egoPeerID];
    if (v55)
    {
      v56 = v55;
      v57 = sub_100216974();
      v59 = v58;

      v60 = [*&a8[v52] egoPeerPermanentInfo];
      if (v60)
      {
        v163._countAndFlagsBits = v57;
        v61 = v60;
        v62 = sub_100216224();
        v64 = v63;

        v65 = [*&a8[v52] egoPeerPermanentInfoSig];
        if (v65)
        {
          v163._object = v59;
          v66 = v65;
          v67 = sub_100216224();
          v164 = v68;

          v69 = [*&a8[v52] egoPeerStableInfo];
          if (v69)
          {
            v161 = v54;
            v162 = v64;
            v70 = v69;
            v71 = sub_100216224();
            v73 = v72;

            v74 = [*&a8[v52] egoPeerStableInfoSig];
            if (v74)
            {
              v155 = v71;
              v156 = v73;
              v75 = v74;
              v157 = sub_100216224();
              v158 = v76;

              v160 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v62, v162);
              sub_100012558(v67, v164);
              v77 = sub_100216964();

              v78 = sub_100216204().super.isa;
              v159 = v62;
              v79 = sub_100216204().super.isa;
              v80 = [objc_opt_self() permanentInfoWithPeerID:v77 data:v78 sig:v79 keyFactory:v160];

              sub_100002BF0(v67, v164);
              sub_100002BF0(v159, v162);

              if (!v80)
              {

                sub_1000561D0();
                swift_allocError();
                *v117 = xmmword_10021DA80;
                *(v117 + 16) = 13;
                v118 = sub_100216144();

                [v168 sendMetricWithResult:0 error:v118];

                v119 = swift_allocError();
                *v120 = xmmword_10021DA80;
                *(v120 + 16) = 13;
                v166(0, 0, &_swiftEmptyArrayStorage, 0, v119);

                sub_100002BF0(v159, v162);
                sub_100002BF0(v67, v164);
                sub_100002BF0(v155, v156);

                sub_100002BF0(v157, v158);

                return;
              }

              v81 = objc_allocWithZone(TPPeerStableInfo);
              sub_100012558(v155, v156);
              sub_100012558(v157, v158);
              v82 = sub_100216204().super.isa;
              v83 = sub_100216204().super.isa;
              v84 = [v81 initWithData:v82 sig:v83];

              sub_100002BF0(v157, v158);
              v85 = v84;
              sub_100002BF0(v155, v156);
              if (!v84)
              {

                sub_1000561D0();
                swift_allocError();
                *v121 = xmmword_10021DC20;
                *(v121 + 16) = 13;
                v122 = sub_100216144();

                [v168 sendMetricWithResult:0 error:v122];

                v123 = swift_allocError();
                *v124 = xmmword_10021DC20;
                *(v124 + 16) = 13;
                v166(0, 0, &_swiftEmptyArrayStorage, 0, v123);

                sub_100002BF0(v159, v162);
                sub_100002BF0(v67, v164);
                sub_100002BF0(v155, v156);

                sub_100002BF0(v157, v158);

                return;
              }

              v86 = [v80 machineID];
              v87 = sub_100216974();
              v89 = v88;

              LOBYTE(v86) = sub_1001E537C(v87, v89);

              v154 = v85;
              if (v86)
              {
                v90 = swift_allocObject();
                *(v90 + 16) = v168;
                *(v90 + 24) = v166;
                *(v90 + 32) = v169;
                *(v90 + 40) = a8;
                *(v90 + 48) = v163;
                *(v90 + 64) = v80;
                *(v90 + 72) = v85;
                *(v90 + 80) = v161;
                *(v90 + 88) = a9;
                *(v90 + 96) = v24;
                *(v90 + 104) = a10;
                *(v90 + 112) = a11;
                *(v90 + 120) = v159;
                *(v90 + 128) = v162;
                *(v90 + 136) = v67;
                *(v90 + 144) = v164;
                *(v90 + 152) = a12;
                *(v90 + 160) = a13;
                *(v90 + 168) = a14;
                *(v90 + 176) = a15;
                *(v90 + 184) = a16;
                *(v90 + 192) = a17;
                *(v90 + 200) = a18 & 1;
                strcpy(v170, "signing-key ");
                BYTE5(v170[1]) = 0;
                HIWORD(v170[1]) = -5120;
                v167 = v161;

                sub_100012558(v159, v162);
                sub_100012558(v67, v164);

                v91 = v168;

                v92 = a8;
                v93 = v80;
                v94 = v85;

                v95 = v24;

                sub_100216A14(v163);
                v96 = v170[0];
                v97 = v170[1];

                sub_100198E8C(v96, v97, sub_1001AA14C, v90, v163._countAndFlagsBits, v163._object);

                swift_bridgeObjectRelease_n();
                sub_100002BF0(v159, v162);
                sub_100002BF0(v67, v164);
                sub_100002BF0(v155, v156);

                sub_100002BF0(v157, v158);

                return;
              }

              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v125 = sub_100216774();
              sub_100002648(v125, qword_10029D160);
              v126 = v80;
              v127 = sub_100216754();
              v128 = sub_100216C54();

              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                v170[0] = v130;
                *v129 = 136446210;
                v131 = [v126 machineID];
                v132 = sub_100216974();
                v134 = v133;

                v135 = sub_100005FB0(v132, v134, v170);

                *(v129 + 4) = v135;
                _os_log_impl(&_mh_execute_header, v127, v128, "join: self machineID %{public}s not on list", v129, 0xCu);
                sub_100006128(v130);
              }

              v136 = objc_allocWithZone(SecTapToRadar);
              v137 = sub_100216964();
              v138 = sub_100216964();
              v139 = sub_100216964();
              v140 = [v136 initTapToRadar:v137 description:v138 radar:v139];

              [v140 trigger];
              v141 = [v126 machineID];
              v142 = sub_100216974();
              v144 = v143;

              sub_1000561D0();
              swift_allocError();
              *v145 = v142;
              *(v145 + 8) = v144;
              *(v145 + 16) = 2;
              v146 = sub_100216144();
              v147 = sub_100216144();

              [v168 sendMetricWithResult:0 error:v147];

              v148 = [v126 machineID];
              v149 = sub_100216974();
              v151 = v150;

              v152 = swift_allocError();
              *v153 = v149;
              *(v153 + 8) = v151;
              *(v153 + 16) = 2;
              v166(0, 0, &_swiftEmptyArrayStorage, 0, v152);

              sub_100002BF0(v159, v162);
              sub_100002BF0(v67, v164);
              sub_100002BF0(v155, v156);

              sub_100002BF0(v157, v158);
LABEL_30:

              return;
            }

            sub_100002BF0(v71, v73);
            v54 = v161;
            v64 = v162;
          }

          sub_100002BF0(v67, v164);
        }

        sub_100002BF0(v62, v64);
      }
    }

    sub_1000561D0();
    swift_allocError();
    *v113 = xmmword_10021DA90;
    *(v113 + 16) = 13;
    v114 = sub_100216144();

    [v168 sendMetricWithResult:0 error:v114];

    v115 = swift_allocError();
    *v116 = xmmword_10021DA90;
    *(v116 + 16) = 13;
    v166(0, 0, &_swiftEmptyArrayStorage, 0, v115);

    goto LABEL_30;
  }

  sub_1000561D0();
  swift_allocError();
  *v48 = xmmword_1002260C0;
  *(v48 + 16) = 13;
  v49 = sub_100216144();

  [a5 sendMetricWithResult:0 error:v49];

  v50 = swift_allocError();
  *v51 = xmmword_1002260C0;
  *(v51 + 16) = 13;
  a6(0, 0, &_swiftEmptyArrayStorage, 0, v50);
}

uint64_t sub_10015967C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v26 = a4;
  if (a1)
  {
    v55 = a4;
    v54 = a5;
    v58 = a24;
    v57 = a22;
    v56 = a20;
    v53 = a15;
    v52 = a14;
    v51 = a13;
    v60 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v26 = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = a6;
    *(v30 + 24) = a7;
    *(v30 + 32) = a8;
    *(v30 + 40) = a9;
    *(v30 + 48) = a10;
    *(v30 + 56) = a11;
    *(v30 + 64) = a12;
    *(v30 + 72) = a13;
    *(v30 + 80) = v26;
    *(v30 + 88) = a3;
    *(v30 + 96) = v55;
    *(v30 + 104) = v54;
    *(v30 + 112) = a14;
    *(v30 + 120) = a15;
    *(v30 + 128) = a16;
    *(v30 + 136) = a17;
    *(v30 + 144) = a18;
    *(v30 + 152) = a19;
    *(v30 + 160) = a20;
    *(v30 + 168) = a21;
    *(v30 + 176) = a22;
    *(v30 + 184) = a23;
    *(v30 + 192) = a24;
    *(v30 + 200) = a25;
    *(v30 + 208) = a26 & 1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1001AA1A8;
    *(v31 + 24) = v30;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283508;
    v32 = _Block_copy(aBlock);

    v33 = a13;
    v34 = a3;

    v35 = v26;
    v36 = a6;

    v37 = a9;
    v38 = a10;
    v39 = a11;
    sub_100012558(a16, a17);
    sub_100012558(a18, a19);

    [v60 performBlockAndWait:v32];

    _Block_release(v32);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v41 = a2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v42 = sub_100216774();
  sub_100002648(v42, qword_10029D160);
  swift_errorRetain();
  v43 = sub_100216754();
  v44 = sub_100216C74();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136446210;
    aBlock[6] = v41;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v47 = sub_100216994();
    v49 = sub_100005FB0(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "Don't have my own peer keys; can't join: %{public}s", v45, 0xCu);
    sub_100006128(v46);
  }

  if (v41)
  {
    v50 = sub_100216144();
  }

  else
  {
    v50 = 0;
  }

  [a3 sendMetricWithResult:0 error:{v50, v51, v52, v53, v54, v55, v56, v57, v58}];

  return (v26)(0, 0, &_swiftEmptyArrayStorage, 0, v41);
}

uint64_t sub_100159B34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, __CFString *a7, uint64_t *a8, uint64_t a9, void *a10, void (*a11)(void, void, void *, void, void), uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, objc_class *a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  v485 = a8;
  v486 = a5;
  v487 = a7;
  v492 = a4;
  *&v493 = a1;
  v489 = a2;
  v490 = a3;
  v482 = a12;
  v481 = a11;
  v488 = a10;
  v491 = a9;
  v462 = type metadata accessor for JoinWithVoucherRequest(0);
  v26 = *(*(v462 - 8) + 64);
  __chkstk_darwin(v462, v27);
  v466 = &v445 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for Metrics(0);
  v29 = *(*(v461 - 8) + 64);
  __chkstk_darwin(v461, v30);
  v465 = (&v445 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v484 = type metadata accessor for SignedVoucher(0);
  v32 = *(v484 - 1);
  v33 = *(v32 + 64);
  __chkstk_darwin(v484, v34);
  v476 = &v445 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v37 = *(*(v36 - 8) + 64);
  v39 = __chkstk_darwin(v36 - 8, v38);
  v452 = &v445 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  v451 = &v445 - v42;
  v460 = type metadata accessor for SignedPeerDynamicInfo(0);
  v459 = *(v460 - 8);
  v43 = *(v459 + 64);
  v45 = __chkstk_darwin(v460, v44);
  v456 = (&v445 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v47);
  v455 = (&v445 - v48);
  v49 = type metadata accessor for Bottle(0);
  v50 = *(*(v49 - 8) + 64);
  v52 = __chkstk_darwin(v49 - 8, v51);
  v469 = &v445 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v54);
  v470 = &v445 - v55;
  v56 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v57 = *(*(v56 - 8) + 64);
  v59 = __chkstk_darwin(v56 - 8, v58);
  v450 = &v445 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v59, v61);
  v449 = &v445 - v63;
  v65 = __chkstk_darwin(v62, v64);
  v474 = (&v445 - v66);
  __chkstk_darwin(v65, v67);
  v475 = (&v445 - v68);
  v477 = type metadata accessor for SignedPeerStableInfo(0);
  v479 = *(v477 - 1);
  v69 = *(v479 + 64);
  v71 = __chkstk_darwin(v477, v70);
  v454 = (&v445 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __chkstk_darwin(v71, v73);
  v453 = (&v445 - v75);
  v77 = __chkstk_darwin(v74, v76);
  v472 = (&v445 - v78);
  __chkstk_darwin(v77, v79);
  v81 = &v445 - v80;
  v478 = type metadata accessor for Peer(0);
  v457 = *(v478 - 8);
  v82 = *(v457 + 64);
  v84 = __chkstk_darwin(v478, v83);
  v458 = &v445 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84, v85);
  v463 = &v445 - v87;
  v89 = __chkstk_darwin(v86, v88);
  v471 = &v445 - v90;
  v92 = __chkstk_darwin(v89, v91);
  v468 = &v445 - v93;
  v95 = __chkstk_darwin(v92, v94);
  v464 = &v445 - v96;
  v98 = __chkstk_darwin(v95, v97);
  v467 = &v445 - v99;
  v101 = __chkstk_darwin(v98, v100);
  v103 = &v445 - v102;
  v105 = __chkstk_darwin(v101, v104);
  __chkstk_darwin(v105, v106);
  v480 = &v445 - v107;
  v473 = a6;
  v108 = a6;
  v110 = v109;
  v111 = [v108 peerID];
  v483 = sub_100216974();
  v113 = v112;

  sub_10001148C(&qword_10029D898, &qword_100226668);
  v114 = *(v32 + 72);
  v115 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_10021D600;
  v495 = v485;
  sub_1001A13C4(&qword_10029D8A0, type metadata accessor for SignedVoucher);
  sub_100216654();
  v117 = sub_100156564(v110, v489, v490, v492, v486, v483, v113, v487, v116, v491);
  v484 = v103;
  v448 = v115;
  v486 = v114;
  v487 = v117;
  v483 = v82;

  v118 = v110;
  v119 = v480;
  sub_1001AC038(v118, v480, type metadata accessor for Peer);
  v120 = *(v478 + 32);
  v121 = v475;
  sub_100019C6C(v119 + v120, v475, &qword_1002985A8, &unk_100226650);
  v122 = v479 + 48;
  v123 = *(v479 + 48);
  v124 = v477;
  v125 = (v123)(v121, 1, v477);
  v479 = v122;
  v485 = v123;
  if (v125 == 1)
  {
    *v81 = xmmword_10021D470;
    *(v81 + 1) = xmmword_10021D470;
    v126 = &v81[*(v124 + 6)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if ((v123)(v121, 1, v124) != 1)
    {
      sub_1000114D4(v121, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v121, v81, type metadata accessor for SignedPeerStableInfo);
  }

  v127 = *v81;
  v128 = *(v81 + 1);
  v130 = *(v81 + 2);
  v129 = *(v81 + 3);
  v131 = objc_allocWithZone(TPPeerStableInfo);
  isa = sub_100216204().super.isa;
  v133 = sub_100216204().super.isa;
  v134 = [v131 initWithData:isa sig:v133];

  sub_1001AC1E4(v81, type metadata accessor for SignedPeerStableInfo);
  if (v134)
  {
    v135 = [v492 epoch];
    if (v135 < 0)
    {
      __break(1u);
      swift_once();
      v138 = sub_100216774();
      sub_100002648(v138, qword_10029D160);
      swift_errorRetain();
      v139 = sub_100216754();
      v140 = sub_100216C74();

      v141 = os_log_type_enabled(v139, v140);
      v164 = v480;
      if (v141)
      {
        v142 = swift_slowAlloc();
        v143 = v134;
        v144 = swift_slowAlloc();
        v496 = v144;
        *v142 = 136446210;
        v494 = 0;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v145 = sub_100216994();
        v147 = sub_100005FB0(v145, v146, &v496);

        *(v142 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v139, v140, "Unable to process keys before joining: %{public}s", v142, 0xCu);
        sub_100006128(v144);
        v134 = v143;
      }

      v148 = sub_100216144();
      [v488 sendMetricWithResult:0 error:v148];

      swift_errorRetain();
      v481(0, 0, &_swiftEmptyArrayStorage, 0, 0);
    }

    else
    {
      v136 = v493;
      sub_1001551F8(a13, a14, v491, v487, v135);
      v137 = v474;
      v491 = v160;
      v475 = v161;
      v446 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
      v162 = *(v136 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
      v163 = v480 + v120;
      v164 = v480;
      sub_100019C6C(v163, v474, &qword_1002985A8, &unk_100226650);
      v165 = v485;
      v166 = (v485)(v137, 1, v124);
      v447 = v134;
      if (v166 == 1)
      {
        v167 = v472;
        *v472 = xmmword_10021D470;
        *(v167 + 1) = xmmword_10021D470;
        v168 = *(v124 + 6);
        v169 = v162;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        if ((v165)(v137, 1, v124) != 1)
        {
          sub_1000114D4(v137, &qword_1002985A8, &unk_100226650);
        }
      }

      else
      {
        v167 = v472;
        sub_1001AC038(v137, v472, type metadata accessor for SignedPeerStableInfo);
        v170 = v162;
      }

      v171 = *v167;
      v172 = v167[1];
      v173 = v167;
      v174 = v167[2];
      v175 = *(v173 + 24);
      v176 = objc_allocWithZone(TPPeerStableInfo);
      v177 = sub_100216204().super.isa;
      v178 = sub_100216204().super.isa;
      v179 = [v176 initWithData:v177 sig:v178];

      sub_1001AC1E4(v173, type metadata accessor for SignedPeerStableInfo);
      v180 = [v473 peerID];
      if (!v180)
      {
        sub_100216974();
        v180 = sub_100216964();
      }

      v496 = 0;
      v181 = [v162 checkIntroductionForCandidate:v492 stableInfo:v179 withSponsorID:v180 error:&v496];

      if (v181)
      {
        v182 = v496;
        v183 = v469;
        sub_10017B39C(v489, v490, v469);
        sub_1001AC038(v183, v470, type metadata accessor for Bottle);
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v197 = sub_100216774();
        v198 = sub_100002648(v197, qword_10029D160);
        v199 = v490;

        v200 = sub_100216754();
        v201 = sub_100216C54();

        v202 = os_log_type_enabled(v200, v201);
        v473 = 0;
        if (v202)
        {
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v496 = v204;
          *v203 = 136446210;
          *(v203 + 4) = sub_100005FB0(v489, v199, &v496);
          _os_log_impl(&_mh_execute_header, v200, v201, "Beginning join for peer %{public}s", v203, 0xCu);
          sub_100006128(v204);
        }

        v205 = v464;
        sub_100012558(a15, a16);
        v206 = sub_100216754();
        v207 = sub_100216C54();
        sub_100002BF0(a15, a16);
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v496 = v209;
          *v208 = 136446210;
          v210 = sub_100216214(0);
          v212 = sub_100005FB0(v210, v211, &v496);

          *(v208 + 4) = v212;
          _os_log_impl(&_mh_execute_header, v206, v207, "Join permanentInfo: %{public}s", v208, 0xCu);
          sub_100006128(v209);
        }

        v213 = v480;
        v214 = v467;
        sub_100012558(a17, a18);
        v215 = sub_100216754();
        v216 = sub_100216C54();
        sub_100002BF0(a17, a18);
        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          v218 = swift_slowAlloc();
          v496 = v218;
          *v217 = 136446210;
          v219 = sub_100216214(0);
          v221 = sub_100005FB0(v219, v220, &v496);

          *(v217 + 4) = v221;
          _os_log_impl(&_mh_execute_header, v215, v216, "Join permanentInfoSig: %{public}s", v217, 0xCu);
          sub_100006128(v218);
        }

        v222 = v476;
        v223 = v471;
        v224 = v484;
        sub_1001AC0A0(v213, v484, type metadata accessor for Peer);
        v225 = sub_100216754();
        v226 = sub_100216C54();
        v227 = os_log_type_enabled(v225, v226);
        v474 = v198;
        if (v227)
        {
          v228 = v205;
          v229 = v224;
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          v496 = v231;
          *v230 = 136446210;
          v232 = v449;
          sub_100019C6C(v229 + *(v478 + 32), v449, &qword_1002985A8, &unk_100226650);
          v233 = v477;
          v234 = v485;
          if ((v485)(v232, 1, v477) == 1)
          {
            v235 = v453;
            *v453 = xmmword_10021D470;
            v235[1] = xmmword_10021D470;
            v236 = v235 + *(v233 + 6);
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v237 = (v234)(v232, 1, v233);
            v205 = v228;
            if (v237 != 1)
            {
              sub_1000114D4(v232, &qword_1002985A8, &unk_100226650);
            }
          }

          else
          {
            v235 = v453;
            sub_1001AC038(v232, v453, type metadata accessor for SignedPeerStableInfo);
            v205 = v228;
          }

          v238 = *v235;
          v239 = *(v235 + 1);
          sub_100012558(*v235, v239);
          sub_1001AC1E4(v235, type metadata accessor for SignedPeerStableInfo);
          v240 = sub_100216214(0);
          v242 = v241;
          sub_100002BF0(v238, v239);
          sub_1001AC1E4(v484, type metadata accessor for Peer);
          v243 = sub_100005FB0(v240, v242, &v496);

          *(v230 + 4) = v243;
          _os_log_impl(&_mh_execute_header, v225, v226, "Join stableInfo: %{public}s", v230, 0xCu);
          sub_100006128(v231);

          v213 = v480;
          v222 = v476;
          v223 = v471;
          v214 = v467;
        }

        else
        {

          sub_1001AC1E4(v224, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v213, v214, type metadata accessor for Peer);
        v244 = sub_100216754();
        v245 = sub_100216C54();
        if (os_log_type_enabled(v244, v245))
        {
          v246 = v205;
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v496 = v248;
          *v247 = 136446210;
          v249 = v450;
          sub_100019C6C(v214 + *(v478 + 32), v450, &qword_1002985A8, &unk_100226650);
          v250 = v477;
          v251 = v485;
          if ((v485)(v249, 1, v477) == 1)
          {
            v252 = v454;
            *v454 = xmmword_10021D470;
            v252[1] = xmmword_10021D470;
            v253 = v252 + *(v250 + 6);
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v254 = (v251)(v249, 1, v250);
            v205 = v246;
            if (v254 != 1)
            {
              sub_1000114D4(v249, &qword_1002985A8, &unk_100226650);
            }
          }

          else
          {
            v252 = v454;
            sub_1001AC038(v249, v454, type metadata accessor for SignedPeerStableInfo);
            v205 = v246;
          }

          v255 = *(v252 + 2);
          v256 = *(v252 + 3);
          sub_100012558(v255, v256);
          sub_1001AC1E4(v252, type metadata accessor for SignedPeerStableInfo);
          v257 = sub_100216214(0);
          v259 = v258;
          sub_100002BF0(v255, v256);
          sub_1001AC1E4(v467, type metadata accessor for Peer);
          v260 = sub_100005FB0(v257, v259, &v496);

          *(v247 + 4) = v260;
          _os_log_impl(&_mh_execute_header, v244, v245, "Join stableInfoSig: %{public}s", v247, 0xCu);
          sub_100006128(v248);

          v213 = v480;
          v222 = v476;
          v223 = v471;
        }

        else
        {

          sub_1001AC1E4(v214, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v213, v205, type metadata accessor for Peer);
        v261 = sub_100216754();
        v262 = sub_100216C54();
        v263 = os_log_type_enabled(v261, v262);
        v264 = v468;
        if (v263)
        {
          v265 = swift_slowAlloc();
          v266 = swift_slowAlloc();
          v496 = v266;
          *v265 = 136446210;
          v267 = v451;
          sub_100019C6C(v205 + *(v478 + 36), v451, &unk_10029D760, &qword_10021E810);
          v268 = *(v459 + 48);
          v269 = v460;
          if (v268(v267, 1, v460) == 1)
          {
            v270 = v455;
            *v455 = xmmword_10021D470;
            v270[1] = xmmword_10021D470;
            v271 = v270 + *(v269 + 24);
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v268(v267, 1, v269) != 1)
            {
              sub_1000114D4(v267, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v270 = v455;
            sub_1001AC038(v267, v455, type metadata accessor for SignedPeerDynamicInfo);
          }

          v272 = *v270;
          v273 = *(v270 + 1);
          sub_100012558(*v270, v273);
          sub_1001AC1E4(v270, type metadata accessor for SignedPeerDynamicInfo);
          v274 = sub_100216214(0);
          v276 = v275;
          sub_100002BF0(v272, v273);
          sub_1001AC1E4(v464, type metadata accessor for Peer);
          v277 = sub_100005FB0(v274, v276, &v496);

          *(v265 + 4) = v277;
          _os_log_impl(&_mh_execute_header, v261, v262, "Join dynamicInfo: %{public}s", v265, 0xCu);
          sub_100006128(v266);

          v213 = v480;
          v222 = v476;
          v223 = v471;
          v264 = v468;
        }

        else
        {

          sub_1001AC1E4(v205, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v213, v264, type metadata accessor for Peer);
        v278 = sub_100216754();
        v279 = sub_100216C54();
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v496 = v281;
          *v280 = 136446210;
          v282 = v452;
          sub_100019C6C(v264 + *(v478 + 36), v452, &unk_10029D760, &qword_10021E810);
          v283 = *(v459 + 48);
          v284 = v460;
          if (v283(v282, 1, v460) == 1)
          {
            v285 = v456;
            *v456 = xmmword_10021D470;
            v285[1] = xmmword_10021D470;
            v286 = v285 + *(v284 + 24);
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v283(v282, 1, v284) != 1)
            {
              sub_1000114D4(v282, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v285 = v456;
            sub_1001AC038(v282, v456, type metadata accessor for SignedPeerDynamicInfo);
          }

          v287 = *(v285 + 2);
          v288 = *(v285 + 3);
          sub_100012558(v287, v288);
          sub_1001AC1E4(v285, type metadata accessor for SignedPeerDynamicInfo);
          v289 = sub_100216214(0);
          v291 = v290;
          sub_100002BF0(v287, v288);
          sub_1001AC1E4(v468, type metadata accessor for Peer);
          v292 = sub_100005FB0(v289, v291, &v496);

          *(v280 + 4) = v292;
          _os_log_impl(&_mh_execute_header, v278, v279, "Join dynamicInfoSig: %{public}s", v280, 0xCu);
          sub_100006128(v281);

          v213 = v480;
          v222 = v476;
          v223 = v471;
        }

        else
        {

          sub_1001AC1E4(v264, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v213, v223, type metadata accessor for Peer);
        v293 = sub_100216754();
        v294 = sub_100216C54();
        if (os_log_type_enabled(v293, v294))
        {
          v295 = swift_slowAlloc();
          v296 = swift_slowAlloc();
          v297 = v296;
          v496 = v296;
          *v295 = 136446210;
          v298 = *(v223 + 16);
          v299 = *(v298 + 16);
          if (v299)
          {
            v485 = v296;
            v494 = &_swiftEmptyArrayStorage;
            sub_1001877A4(0, v299, 0);
            v300 = v494;
            v301 = v298 + v448;
            do
            {
              sub_1001AC0A0(v301, v222, type metadata accessor for SignedVoucher);
              v302 = *v222;
              v303 = v222[1];
              v304 = sub_100216214(0);
              v306 = v305;
              sub_1001AC1E4(v222, type metadata accessor for SignedVoucher);
              v494 = v300;
              v308 = v300[2];
              v307 = v300[3];
              if (v308 >= v307 >> 1)
              {
                sub_1001877A4((v307 > 1), v308 + 1, 1);
                v300 = v494;
              }

              v300[2] = v308 + 1;
              v309 = &v300[2 * v308];
              v309[4] = v304;
              v309[5] = v306;
              v301 += v486;
              --v299;
              v222 = v476;
            }

            while (v299);
            v213 = v480;
            v297 = v485;
          }

          v310 = sub_100216B34();
          v312 = v311;

          sub_1001AC1E4(v471, type metadata accessor for Peer);
          v313 = sub_100005FB0(v310, v312, &v496);

          *(v295 + 4) = v313;
          _os_log_impl(&_mh_execute_header, v293, v294, "Join vouchers: %{public}s", v295, 0xCu);
          sub_100006128(v297);
        }

        else
        {

          sub_1001AC1E4(v223, type metadata accessor for Peer);
        }

        v314 = v213;
        v315 = v463;
        sub_1001AC0A0(v314, v463, type metadata accessor for Peer);
        v316 = sub_100216754();
        v317 = sub_100216C54();
        if (os_log_type_enabled(v316, v317))
        {
          v318 = swift_slowAlloc();
          v319 = swift_slowAlloc();
          v320 = v319;
          v496 = v319;
          *v318 = 136446210;
          v321 = *(v315 + 16);
          v322 = *(v321 + 16);
          if (v322)
          {
            v485 = v319;
            v494 = &_swiftEmptyArrayStorage;
            sub_1001877A4(0, v322, 0);
            v323 = v494;
            v324 = v321 + v448;
            do
            {
              sub_1001AC0A0(v324, v222, type metadata accessor for SignedVoucher);
              v325 = v222[2];
              v326 = v222[3];
              v327 = sub_100216214(0);
              v329 = v328;
              sub_1001AC1E4(v222, type metadata accessor for SignedVoucher);
              v494 = v323;
              v331 = v323[2];
              v330 = v323[3];
              if (v331 >= v330 >> 1)
              {
                sub_1001877A4((v330 > 1), v331 + 1, 1);
                v323 = v494;
              }

              v323[2] = v331 + 1;
              v332 = &v323[2 * v331];
              v332[4] = v327;
              v332[5] = v329;
              v324 += v486;
              --v322;
              v222 = v476;
            }

            while (v322);
            v315 = v463;
            v320 = v485;
          }

          v333 = sub_100216B34();
          v335 = v334;

          sub_1001AC1E4(v315, type metadata accessor for Peer);
          v336 = sub_100005FB0(v333, v335, &v496);

          *(v318 + 4) = v336;
          _os_log_impl(&_mh_execute_header, v316, v317, "Join voucher signatures: %{public}s", v318, 0xCu);
          sub_100006128(v320);
        }

        else
        {

          sub_1001AC1E4(v315, type metadata accessor for Peer);
        }

        v337 = v491;

        v338 = sub_100216754();
        v339 = sub_100216C54();
        if (os_log_type_enabled(v338, v339))
        {
          v340 = swift_slowAlloc();
          *v340 = 134217984;
          *(v340 + 4) = *(v337 + 16);

          _os_log_impl(&_mh_execute_header, v338, v339, "Uploading %ld tlk shares", v340, 0xCu);
        }

        else
        {
        }

        v341 = v473;
        v485 = a19;
        v486 = a20;
        sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer);
        v342 = sub_100216624();
        if (v341)
        {
          swift_errorRetain();
          v344 = sub_100216754();
          v345 = sub_100216C54();

          if (os_log_type_enabled(v344, v345))
          {
            v346 = swift_slowAlloc();
            v347 = swift_slowAlloc();
            v496 = v347;
            *v346 = 136446210;
            v494 = v341;
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v348 = sub_100216994();
            v350 = sub_100005FB0(v348, v349, &v496);

            *(v346 + 4) = v350;
            _os_log_impl(&_mh_execute_header, v344, v345, "Join unable to encode peer: %{public}s", v346, 0xCu);
            sub_100006128(v347);
          }

          else
          {
          }
        }

        else
        {
          v353 = v342;
          v354 = v343;
          v355 = sub_100216214(0);
          v357 = v356;
          sub_100002BF0(v353, v354);

          v358 = sub_100216754();
          v359 = sub_100216C54();

          if (os_log_type_enabled(v358, v359))
          {
            v360 = swift_slowAlloc();
            v361 = swift_slowAlloc();
            v496 = v361;
            *v360 = 136446210;
            v362 = sub_100005FB0(v355, v357, &v496);

            *(v360 + 4) = v362;
            _os_log_impl(&_mh_execute_header, v358, v359, "Join peer: %{public}s", v360, 0xCu);
            sub_100006128(v361);
          }

          else
          {
          }
        }

        v363 = v493;
        __chkstk_darwin(v351, v352);
        v364 = v486;
        *(&v445 - 4) = v485;
        *(&v445 - 3) = v364;
        v443 = a21;
        v444 = a22;
        sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics);
        v365 = v465;
        sub_100216654();
        v366 = [*(v363 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
        if (v366)
        {
          v368 = v366;
          v369 = sub_100216974();
          v371 = v370;
        }

        else
        {
          v369 = 0;
          v371 = 0xE000000000000000;
        }

        v372 = v462;
        v484 = &v445;
        __chkstk_darwin(v366, v367);
        *(&v445 - 8) = v369;
        *(&v445 - 7) = v371;
        v373 = v470;
        *(&v445 - 6) = v374;
        *(&v445 - 5) = v373;
        v375 = v475;
        *(&v445 - 4) = v491;
        *(&v445 - 3) = v375;
        v376 = v493;
        v443 = v493;
        v444 = v365;
        sub_1001A13C4(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);
        sub_100216654();

        v377 = v487;
        v378 = [(__CFString *)v487 includedPeerIDs];
        v379 = sub_100216BB4();

        v380 = *(v379 + 16);

        v381 = [(__CFString *)v377 excludedPeerIDs];
        v382 = sub_100216BB4();

        v383 = *(v382 + 16);

        if (__OFADD__(v380, v383))
        {
          __break(1u);
        }

        else
        {
          v365 = sub_100216C14().super.super.isa;
          v372 = v446;
          v476 = [*(v376 + v446) countTotalNumberOfRecoveryKeys];
          v477 = [*(v376 + v372) countOfDistrustedRecoveryKeys];
          v384 = *(v376 + v372);
          v496 = 0;
          v385 = [v384 isRecoveryKeyEnrolledWithError:&v496];
          v386 = v496;
          v379 = v376;
          if (v496)
          {
            swift_willThrow();
            v387 = v386;
            v388 = sub_100216754();
            v389 = sub_100216C74();

            if (os_log_type_enabled(v388, v389))
            {
              v390 = swift_slowAlloc();
              v391 = swift_slowAlloc();
              *v390 = 138543362;
              v392 = v387;
              v393 = _swift_stdlib_bridgeErrorToNSError();
              *(v390 + 4) = v393;
              *v391 = v393;
              _os_log_impl(&_mh_execute_header, v388, v389, "Error determining whether Recovery Key is enrolled: %{public}@", v390, 0xCu);
              sub_1000114D4(v391, &qword_10029D580, &unk_10021CCC0);

              v379 = v493;
            }

            v394 = [objc_allocWithZone(NSNumber) initWithInteger:0];
          }

          else
          {
            v394 = [objc_allocWithZone(NSNumber) initWithInteger:v385];
          }

          LODWORD(v479) = a25;
          v491 = a24;
          v478 = a23;
          v395 = *(v379 + v372);
          v484 = v394;
          v396 = [v395 allCustodianRecoveryKeys];
          sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
          v397 = sub_100216B24();

          v382 = v458;
          if (!(v397 >> 62))
          {
            v398 = *((v397 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_107:

            v399 = sub_100216C14().super.super.isa;
            [*(v379 + v372) countTotalTrustedCustodians];
            v400 = sub_100216E14().super.super.isa;
            v401 = [(__CFString *)v487 preapprovals];
            v402 = sub_100216BB4();

            v403 = *(v402 + 16);

            v404 = sub_100216C14().super.super.isa;
            sub_10001148C(&qword_1002983D8, &unk_10021DE60);
            v405 = swift_allocObject();
            *(v405 + 16) = xmmword_10021D5F0;
            v496 = sub_100216974();
            v497 = v406;
            sub_100216F74();
            v407 = sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
            *(v405 + 96) = v407;
            *(v405 + 72) = v365;
            v496 = sub_100216974();
            v497 = v408;
            v475 = v365;
            sub_100216F74();
            v409.super.super.isa = sub_100216C14().super.super.isa;
            *(v405 + 168) = v407;
            *(v405 + 144) = v409;
            v496 = sub_100216974();
            v497 = v410;
            sub_100216F74();
            *(v405 + 240) = &type metadata for UInt;
            *(v405 + 216) = v476;
            v496 = sub_100216974();
            v497 = v411;
            sub_100216F74();
            *(v405 + 312) = &type metadata for UInt;
            *(v405 + 288) = v477;
            v496 = sub_100216974();
            v497 = v412;
            sub_100216F74();
            *(v405 + 384) = v407;
            *(v405 + 360) = v399;
            v496 = sub_100216974();
            v497 = v413;
            v477 = v399;
            sub_100216F74();
            *(v405 + 456) = v407;
            *(v405 + 432) = v484;
            v496 = sub_100216974();
            v497 = v414;
            sub_100216F74();
            *(v405 + 528) = v407;
            *(v405 + 504) = v400;
            v496 = sub_100216974();
            v497 = v415;
            v476 = v400;
            sub_100216F74();
            *(v405 + 600) = v407;
            *(v405 + 576) = v404;
            v474 = v404;
            sub_100019254(v405);
            swift_setDeallocating();
            sub_10001148C(&unk_1002983E0, &qword_10021D708);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v416 = sub_1002168C4().super.isa;

            [v488 addMetrics:v416];

            v417 = v493;
            v473 = *(v493 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
            v471 = *(v493 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
            v472 = sub_100006484((v493 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v473);
            sub_1001AC0A0(v480, v382, type metadata accessor for Peer);
            v418 = (*(v457 + 80) + 65) & ~*(v457 + 80);
            v419 = (v483 + v418 + 7) & 0xFFFFFFFFFFFFFFF8;
            v420 = v382;
            v421 = (v419 + 15) & 0xFFFFFFFFFFFFFFF8;
            v422 = (v421 + 15) & 0xFFFFFFFFFFFFFFF8;
            v423 = (v422 + 15) & 0xFFFFFFFFFFFFFFF8;
            v424 = swift_allocObject();
            v426 = v486;
            v425 = v487;
            *(v424 + 16) = v417;
            *(v424 + 24) = v425;
            v427 = v491;
            *(v424 + 32) = v478;
            *(v424 + 40) = v427;
            *(v424 + 48) = v485;
            *(v424 + 56) = v426;
            *(v424 + 64) = v479 & 1;
            sub_1001AC038(v420, v424 + v418, type metadata accessor for Peer);
            v428 = v492;
            *(v424 + v419) = v492;
            v429 = v447;
            *(v424 + v421) = v447;
            v430 = v488;
            *(v424 + v422) = v488;
            v431 = (v424 + v423);
            v432 = v482;
            *v431 = v481;
            v431[1] = v432;
            v433 = (v424 + ((v423 + 23) & 0xFFFFFFFFFFFFFFF8));
            v434 = v490;
            *v433 = v489;
            v433[1] = v434;
            v435 = *(v471 + 16);
            v436 = *(v435 + 24);

            v437 = v428;
            v438 = v429;
            v439 = v430;

            v440 = v487;

            v441 = v493;

            v442 = v466;
            v436(v466, sub_1001AA258, v424, v473, v435);

            sub_1001AC1E4(v442, type metadata accessor for JoinWithVoucherRequest);
            sub_1001AC1E4(v465, type metadata accessor for Metrics);
            sub_1001AC1E4(v470, type metadata accessor for Bottle);
            v159 = v480;
            return sub_1001AC1E4(v159, type metadata accessor for Peer);
          }
        }

        sub_1002170F4();
        goto LABEL_107;
      }

      v184 = v496;

      v185 = sub_100216154();

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v186 = sub_100216774();
      sub_100002648(v186, qword_10029D160);
      swift_errorRetain();
      v187 = sub_100216754();
      v188 = sub_100216C74();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v496 = v190;
        *v189 = 136446210;
        v494 = v185;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v191 = sub_100216994();
        v193 = sub_100005FB0(v191, v192, &v496);

        *(v189 + 4) = v193;
        _os_log_impl(&_mh_execute_header, v187, v188, "Error checking introduction: %{public}s", v189, 0xCu);
        sub_100006128(v190);
      }

      v194 = v447;
      v195 = sub_100216144();
      [v488 sendMetricWithResult:0 error:v195];

      swift_errorRetain();
      v481(0, 0, &_swiftEmptyArrayStorage, 0, v185);
    }

    v159 = v164;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v149 = sub_100216774();
    sub_100002648(v149, qword_10029D160);
    v150 = sub_100216754();
    v151 = sub_100216C54();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v480;
    if (v152)
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "Unable to create new peer stable info for joining", v154, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v493 = xmmword_10021DC20;
    *v155 = xmmword_10021DC20;
    *(v155 + 16) = 13;
    v156 = sub_100216144();

    [v488 sendMetricWithResult:0 error:v156];

    v157 = swift_allocError();
    *v158 = v493;
    *(v158 + 16) = 13;
    v481(0, 0, &_swiftEmptyArrayStorage, 0, v157);

    v159 = v153;
  }

  return sub_1001AC1E4(v159, type metadata accessor for Peer);
}

uint64_t sub_10015CED8(uint64_t a1, id a2)
{
  v4 = [a2 data];
  v5 = sub_100216224();
  v7 = v6;

  sub_100002BF0(*a1, *(a1 + 8));
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = [a2 sig];
  v9 = sub_100216224();
  v11 = v10;

  result = sub_100002BF0(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_10015CF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v117 = a8;
  v115 = a7;
  v114 = a6;
  v113 = a5;
  v110 = a4;
  v109 = a3;
  v108 = a2;
  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v124 = &v108 - v13;
  v14 = type metadata accessor for Metrics(0);
  v122 = *(v14 - 8);
  v123 = v14;
  v15 = *(v122 + 64);
  __chkstk_darwin(v14, v16);
  v121 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v120 = &v108 - v21;
  v22 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v118 = *(v22 - 8);
  v119 = v22;
  v23 = *(v118 + 64);
  __chkstk_darwin(v22, v24);
  v116 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v30 = &v108 - v29;
  v112 = type metadata accessor for Bottle(0);
  v111 = *(v112 - 8);
  v31 = *(v111 + 64);
  __chkstk_darwin(v112, v32);
  v34 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8, v37);
  v39 = &v108 - v38;
  v40 = type metadata accessor for Peer(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40, v43);
  v45 = &v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  v47 = *(a1 + v46);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(a1 + v46);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v49 = sub_1000C12E8(v49);
    *(a1 + v46) = v49;
  }

  swift_beginAccess();
  v53 = *(v49 + 24);
  v54 = v109;
  *(v49 + 16) = v108;
  *(v49 + 24) = v54;

  sub_1001AC0A0(v110, v45, type metadata accessor for Peer);
  v55 = *(a1 + v46);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a1 + v46);
  if ((v56 & 1) == 0)
  {
    v58 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v57 = sub_1000C12E8(v57);
    *(a1 + v46) = v57;
  }

  sub_1001AC038(v45, v39, type metadata accessor for Peer);
  (*(v41 + 56))(v39, 0, 1, v40);
  v61 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v39, v57 + v61, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v113, v34, type metadata accessor for Bottle);
  v62 = *(a1 + v46);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(a1 + v46);
  if ((v63 & 1) == 0)
  {
    v65 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v64 = sub_1000C12E8(v64);
    *(a1 + v46) = v64;
  }

  v68 = v119;
  v69 = v116;
  sub_1001AC038(v34, v30, type metadata accessor for Bottle);
  (*(v111 + 56))(v30, 0, 1, v112);
  v70 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v30, v64 + v70, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v71 = *(a1 + v46);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(a1 + v46);
  if ((v72 & 1) == 0)
  {
    v74 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    v73 = sub_1000C12E8(v73);
    *(a1 + v46) = v73;
  }

  v77 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v78 = *(v73 + v77);
  *(v73 + v77) = v114;

  v79 = *(a1 + v46);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(a1 + v46);
  if ((v80 & 1) == 0)
  {
    v82 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v81 = sub_1000C12E8(v81);
    *(a1 + v46) = v81;
  }

  v85 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v86 = *(v81 + v85);
  *(v81 + v85) = v115;

  __chkstk_darwin(v87, v88);
  *(&v108 - 2) = v117;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_100216654();
  v89 = *(a1 + v46);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(a1 + v46);
  if ((v90 & 1) == 0)
  {
    v92 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    v91 = sub_1000C12E8(v91);
    *(a1 + v46) = v91;
  }

  v95 = v69;
  v96 = v120;
  sub_1001AC038(v95, v120, type metadata accessor for IdmsTrustedDevicesVersion);
  (*(v118 + 56))(v96, 0, 1, v68);
  v97 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v96, v91 + v97, &qword_10029D770, &qword_10021E860);
  swift_endAccess();
  v98 = v121;
  sub_1001AC0A0(a9, v121, type metadata accessor for Metrics);
  v99 = *(a1 + v46);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(a1 + v46);
  if ((v100 & 1) == 0)
  {
    v102 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v101 = sub_1000C12E8(v101);
    *(a1 + v46) = v101;
  }

  v105 = v124;
  sub_1001AC038(v98, v124, type metadata accessor for Metrics);
  (*(v122 + 56))(v105, 0, 1, v123);
  v106 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v105, v101 + v106, &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

uint64_t sub_10015D8A0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void (*a13)(void, void, void *, void, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  v83 = a8;
  v81 = a4;
  v82 = a6;
  v89 = a3;
  v90 = a5;
  v86 = a14;
  v87 = a7;
  v84 = a13;
  v85 = a2;
  v88 = a12;
  v17 = type metadata accessor for Peer(0);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  __chkstk_darwin(v17 - 8, v19);
  v20 = type metadata accessor for JoinWithVoucherResponse(0);
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v24 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v27 = &v71 - v26;
  v28 = sub_10001148C(&qword_1002984F0, &unk_10021DF60);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = (&v71 - v31);
  sub_100019C6C(a1, &v71 - v31, &qword_1002984F0, &unk_10021DF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v84;
    v34 = v88;
    v35 = *v32;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v36 = sub_100216774();
    sub_100002648(v36, qword_10029D160);
    swift_errorRetain();
    v37 = sub_100216754();
    v38 = sub_100216C74();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      aBlock[6] = v35;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v41 = sub_100216994();
      v43 = sub_100005FB0(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "joinWithVoucher failed: %{public}s", v39, 0xCu);
      sub_100006128(v40);
    }

    v44 = sub_100216144();
    [v34 sendMetricWithResult:0 error:v44];

    swift_errorRetain();
    v33(0, 0, &_swiftEmptyArrayStorage, 0, v35);
  }

  else
  {
    v74 = a16;
    v73 = a15;
    v79 = a10;
    v80 = a11;
    v72 = type metadata accessor for JoinWithVoucherResponse;
    v75 = v27;
    sub_1001AC038(v32, v27, type metadata accessor for JoinWithVoucherResponse);
    v46 = *&v85[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v71 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v85;
    v76 = v46;
    sub_1001AC0A0(a9, v71, type metadata accessor for Peer);
    sub_1001AC0A0(v27, v24, type metadata accessor for JoinWithVoucherResponse);
    v48 = (*(v78 + 80) + 72) & ~*(v78 + 80);
    v49 = (v18 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = (*(v77 + 80) + v50 + 8) & ~*(v77 + 80);
    v52 = (v21 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v81;
    *(v55 + 16) = v89;
    *(v55 + 24) = v56;
    v57 = v82;
    *(v55 + 32) = v90;
    *(v55 + 40) = v57;
    *(v55 + 48) = v87;
    *(v55 + 56) = v83 & 1;
    *(v55 + 64) = v47;
    sub_1001AC038(v71, v55 + v48, type metadata accessor for Peer);
    v58 = v80;
    *(v55 + v49) = v79;
    *(v55 + v50) = v58;
    sub_1001AC038(v24, v55 + v51, v72);
    v59 = v88;
    *(v55 + v52) = v88;
    v60 = (v55 + v53);
    v61 = v86;
    *v60 = v84;
    v60[1] = v61;
    v62 = (v55 + v54);
    v63 = v74;
    *v62 = v73;
    v62[1] = v63;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1001AA348;
    *(v64 + 24) = v55;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002835A8;
    v65 = _Block_copy(aBlock);

    v66 = v85;
    v67 = v79;
    v68 = v80;
    v69 = v59;

    v70 = v89;

    [v76 performBlockAndWait:v65];
    _Block_release(v65);
    sub_1001AC1E4(v75, type metadata accessor for JoinWithVoucherResponse);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if (v65)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10015DF74(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t *a11, void *a12, void (*a13)(id, uint64_t, void *, void *, void), uint64_t a14, void *a15, uint64_t a16)
{
  v122 = a8;
  v123 = a7;
  LODWORD(v120) = a6;
  v119 = a5;
  v118 = a4;
  v117 = a2;
  v126 = sub_100216424();
  v109 = *(v126 - 8);
  v18 = *(v109 + 64);
  v20 = __chkstk_darwin(v126, v19);
  v125 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v124 = &v109 - v23;
  v24 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v112 = &v109 - v27;
  v111 = type metadata accessor for Changes(0);
  v110 = *(v111 - 8);
  v28 = *(v110 + 64);
  __chkstk_darwin(v111, v29);
  v113 = (&v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v32 = *(*(v31 - 8) + 64);
  v34 = __chkstk_darwin(v31 - 8, v33);
  v116 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v38 = &v109 - v37;
  v121 = type metadata accessor for SignedPeerStableInfo(0);
  v39 = *(v121 - 1);
  v40 = *(v39 + 64);
  v42 = __chkstk_darwin(v121, v41);
  v44 = &v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v45);
  v47 = &v109 - v46;
  sub_10001148C(&qword_1002983D8, &unk_10021DE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  v127 = sub_100216974();
  v128 = v49;
  sub_100216F74();
  v50 = [a1 includedPeerIDs];
  v51 = sub_100216BB4();

  v52 = *(v51 + 16);

  isa = sub_100216C14().super.super.isa;
  *(inited + 96) = sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  *(inited + 72) = isa;
  sub_100019254(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &unk_1002983E0, &qword_10021D708);
  v54 = kSecurityRTCEventNameNumberOfTrustedOctagonPeers;
  sub_1001A9F94();
  v56 = v55;
  v57.super.isa = sub_1002168C4().super.isa;

  if (a3)
  {
    v58 = sub_100216964();
  }

  else
  {
    v58 = 0;
  }

  v59 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v119)
  {
    v60 = sub_100216964();
  }

  else
  {
    v60 = 0;
  }

  v115 = a10;
  v114 = a9;
  v61 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  LOBYTE(v108) = v120 & 1;
  v62 = [v61 initWithKeychainCircleMetrics:v57.super.isa altDSID:v58 flowID:v60 deviceSessionID:0 eventName:v54 testsAreEnabled:v56 canSendMetrics:v108 category:v59];

  v117 = v62;
  [v62 sendMetricWithResult:1 error:0];
  v63 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v64 = *(v123 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v65 = *(type metadata accessor for Peer(0) + 32);
  sub_100019C6C(v122 + v65, v38, &qword_1002985A8, &unk_100226650);
  v66 = *(v39 + 48);
  v67 = v121;
  if (v66(v38, 1, v121) == 1)
  {
    *v47 = xmmword_10021D470;
    *(v47 + 1) = xmmword_10021D470;
    v68 = *(v67 + 6);
    v69 = v64;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v66(v38, 1, v67) != 1)
    {
      sub_1000114D4(v38, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v38, v47, type metadata accessor for SignedPeerStableInfo);
    v70 = v64;
  }

  v119 = a14;
  v120 = a13;
  v118 = a12;
  v71 = *v47;
  v72 = *(v47 + 1);
  sub_100012558(*v47, v72);
  sub_1001AC1E4(v47, type metadata accessor for SignedPeerStableInfo);
  v73 = sub_100216204().super.isa;
  sub_100002BF0(v71, v72);
  [v64 setEgoPeerStableInfo:v73];

  v74 = *(v123 + v63);
  v75 = v116;
  sub_100019C6C(v122 + v65, v116, &qword_1002985A8, &unk_100226650);
  v76 = v121;
  if (v66(v75, 1, v121) == 1)
  {
    *v44 = xmmword_10021D470;
    *(v44 + 1) = xmmword_10021D470;
    v77 = *(v76 + 6);
    v78 = v74;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v66(v75, 1, v76) != 1)
    {
      sub_1000114D4(v75, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v75, v44, type metadata accessor for SignedPeerStableInfo);
    v79 = v74;
  }

  v80 = *(v44 + 2);
  v81 = *(v44 + 3);
  sub_100012558(v80, v81);
  sub_1001AC1E4(v44, type metadata accessor for SignedPeerStableInfo);
  v82 = sub_100216204().super.isa;
  sub_100002BF0(v80, v81);
  [v74 setEgoPeerStableInfoSig:v82];

  v83 = [v114 modelID];
  LODWORD(v81) = sub_100216974();
  LODWORD(v80) = v84;

  v85 = sub_100151404(v81, v80, v115);

  v86 = type metadata accessor for JoinWithVoucherResponse(0);
  v87 = v112;
  sub_100019C6C(a11 + *(v86 + 24), v112, &unk_10029D750, &qword_10021E850);
  v88 = *(v110 + 48);
  v89 = v111;
  if (v88(v87, 1, v111) == 1)
  {
    v90 = v113;
    *v113 = 0;
    v90[1] = 0xE000000000000000;
    v90[2] = &_swiftEmptyArrayStorage;
    *(v90 + 3) = xmmword_10021D470;
    *(v90 + 5) = xmmword_10021D470;
    *(v90 + 56) = 0;
    v91 = v90 + *(v89 + 36);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v88(v87, 1, v89) != 1)
    {
      sub_1000114D4(v87, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    v90 = v113;
    sub_1001AC038(v87, v113, type metadata accessor for Changes);
  }

  sub_100174C2C(v90, 0);
  sub_1001AC1E4(v90, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v121 = v85;
  v116 = a16;
  v115 = a15;
  v92 = sub_100216774();
  sub_100002648(v92, qword_10029D160);
  v93 = sub_100216754();
  v94 = sub_100216C54();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "JoinWithVoucher succeeded", v95, 2u);
  }

  v96 = *a11;
  v127 = &_swiftEmptyArrayStorage;
  v97 = *(v96 + 16);
  if (v97)
  {
    v123 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v98 = *(v109 + 16);
    v99 = v96 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v100 = *(v109 + 72);
    v101 = (v109 + 8);
    v122 = &_swiftEmptyArrayStorage;
    do
    {
      v102 = v124;
      v103 = v126;
      v98(v124, v99, v126);
      v98(v125, v102, v103);
      v104 = sub_100216D94();
      (*v101)(v102, v103);
      if (v104)
      {
        sub_100216B04();
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v105 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v122 = v127;
      }

      v99 += v100;
      --v97;
    }

    while (v97);
  }

  else
  {
    v122 = &_swiftEmptyArrayStorage;
  }

  [v118 sendMetricWithResult:1 error:{0, v109}];
  v106 = v121;
  v107 = v121;
  v120(v115, v116, v122, v106, 0);
}

uint64_t sub_10015ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "escrow check complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000074, 0x800000010023C300);
  return a4(a1, a2);
}