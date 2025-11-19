uint64_t sub_A23FC()
{
  v1 = v0[128];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[106];

  v0[129] = sub_A39B8((v0 + 65), v6);

  return _swift_task_switch(sub_A24BC, v7, 0);
}

uint64_t sub_A24BC()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 848);
  sub_A414C((v0 + 400), v0 + 520, v0 + 16);
  v3 = sub_A73A0(v1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 848);
    v6.entries._rawValue = sub_A74A4(v4).entries._rawValue;
  }

  else
  {
    v6.entries._rawValue = 0;
  }

  *(v0 + 1040) = v6;
  v7 = *(v0 + 1016);
  *(v0 + 1048) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_A25A4, v9, v8);
}

uint64_t sub_A25A4()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);

  *(v0 + 139) = [v2 secure];
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  *(v0 + 140) = static NSUserDefaults.forceEncryption.getter() & 1;

  return _swift_task_switch(sub_A2650, v3, 0);
}

id sub_A2650()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 864);
  v3 = *(v0 + 832);
  v4 = *(v0 + 140) | *(v0 + 139);
  v5 = [v3 originalId];
  v6 = v5;
  *(v0 + 1056) = v5;
  v7 = v4 & 1;
  if (v5)
  {
    v7 = v5;
  }

  v98 = v7;
  sub_5BD2C(v0 + 16, v0 + 144);
  v8 = [v3 uuid];
  v97 = sub_F07EC();
  v95 = v9;

  v10 = [v3 extractRawMessageID];
  v11 = sub_F07EC();
  v93 = v12;
  v94 = v11;

  v13 = type metadata accessor for RCSMessage.Content(0);
  v86 = *(v13 - 8);
  v87 = v13;
  (*(v86 + 56))(v2, 1, 1);
  sub_37380(v0 + 520, v0 + 560, &qword_127B08, &qword_F29A0);
  if (v1)
  {
    rawValue = *(v0 + 1040);
  }

  else
  {
    rawValue = RCSMessageMetadata.init(pairs:)(_swiftEmptyArrayStorage).entries._rawValue;
  }

  v100 = (v0 + 640);
  v14 = *(v0 + 1008);
  v15 = *(v0 + 992);
  v89 = *(v0 + 984);
  v90 = *(v0 + 1000);
  v16 = *(v0 + 960);
  v17 = *(v0 + 904);
  v91 = *(v0 + 936);
  v92 = *(v0 + 896);
  v18 = *(v0 + 888);
  v19 = *(v0 + 864);

  v20 = [v16 from];
  v21 = [v20 isBot];

  v85 = v6;

  RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 144, v97, v95, v94, v93, v89, v15, v90, v18, v14, v19, v0 + 560, v98, rawValue, v21);
  v22 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 1064) = v22;
  v23 = *(v17 + 16);
  *(v0 + 1072) = v23;
  *(v0 + 1080) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v96 = v23;
  v23(v91, v22, v92);
  v24 = v16;
  v25 = sub_F06AC();
  v26 = sub_F0CDC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 960);
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138740227;
    *(v29 + 4) = v28;
    *v30 = v28;
    *(v29 + 12) = 1024;
    v31 = v28;
    v32 = [v31 from];
    v33 = [v32 isBot];

    *(v29 + 14) = v33;
    _os_log_impl(&dword_0, v25, v26, "Generating RCSMessage from CT envelope %{sensitive}@, is chat bot: %{BOOL}d", v29, 0x12u);
    sub_372B0(v30, &qword_127AF0, &qword_F28E0);
  }

  else
  {

    v25 = v28;
  }

  v34 = *(v0 + 960);
  v35 = *(v0 + 936);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v36 + 8);
  *(v0 + 1088) = v38;
  *(v0 + 1096) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v35, v37);
  v39 = [v34 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128BD0, &qword_F3F98);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 976);
    v41 = *(v0 + 888);
    sub_3928(v100, v0 + 600);
    v42 = *(v0 + 624);
    v43 = *(v0 + 632);
    sub_373E8((v0 + 600), v42);
    (*(v43 + 8))(v41, v42, v43);
    if (v40)
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v45 = result;
      v46 = *(v0 + 960);

      sub_3CAB8(v0 + 400);
      v47 = [v46 content];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_373E8((v0 + 712), *(v0 + 736));
      DynamicType = swift_getDynamicType();
      sub_1EDC((v0 + 712));
      *(v0 + 824) = DynamicType;
      sub_388C8(&qword_128BE0, &qword_F58B0);
      v103._countAndFlagsBits = sub_F083C();
      sub_F08CC(v103);

      v49 = sub_F0FBC();
      *(v0 + 464) = 1;
      *(v0 + 472) = v49;
      *(v0 + 480) = v50;
      *(v0 + 488) = 0x65746E6F63205443;
      *(v0 + 496) = 0xEB0000000020746ELL;
      *(v0 + 504) = v40;
      *(v0 + 512) = 0;
      swift_errorRetain();
      sub_94528((v0 + 464));
    }

    else
    {

      sub_3CAB8(v0 + 400);
    }

    sub_1EDC((v0 + 600));
  }

  else
  {

    sub_3CAB8(v0 + 400);
    *v100 = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0;
    sub_372B0(v100, &qword_128BD8, &qword_F3FA0);
  }

  v51 = *(v0 + 856);
  sub_37380(*(v0 + 888) + *(*(v0 + 872) + 32), v51, &unk_127FA0, &qword_F34C0);
  if ((*(v86 + 48))(v51, 1, v87) == 1)
  {
    v52 = *(v0 + 960);
    v53 = *(v0 + 952);
    v54 = *(v0 + 920);
    v55 = *(v0 + 896);
    v56 = *(v0 + 856);

    sub_372B0(v56, &unk_127FA0, &qword_F34C0);
    v96(v54, v22, v55);
    v57 = v52;
    v58 = sub_F06AC();
    v59 = sub_F0CFC();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 1032);
    v62 = *(v0 + 968);
    v63 = *(v0 + 960);
    v64 = *(v0 + 920);
    v101 = *(v0 + 896);
    v65 = *(v0 + 888);
    if (v60)
    {
      v99 = *(v0 + 920);
      v66 = *(v0 + 1032);
      v67 = *(v0 + 888);
      v68 = v38;
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = [v63 type];

      _os_log_impl(&dword_0, v58, v59, "Unhandled message %ld, message was NOT processed!", v69, 0xCu);
      v38 = v68;
      v65 = v67;
      v61 = v66;
      v64 = v99;

      v70 = v85;
    }

    else
    {

      v70 = v63;
      v62 = v63;
    }

    v38(v64, v101);
    sub_5EFF4(v0 + 16);
    sub_372B0(v0 + 520, &qword_127B08, &qword_F29A0);
    sub_3897C(v65);
    v75 = *(v0 + 944);
    v76 = *(v0 + 936);
    v77 = *(v0 + 928);
    v78 = *(v0 + 920);
    v79 = *(v0 + 912);
    v80 = *(v0 + 888);
    v81 = *(v0 + 880);
    v82 = *(v0 + 864);
    v83 = *(v0 + 856);

    v84 = *(v0 + 8);

    return v84();
  }

  else
  {
    sub_372B0(*(v0 + 856), &unk_127FA0, &qword_F34C0);
    v71 = swift_task_alloc();
    *(v0 + 1104) = v71;
    *v71 = v0;
    v71[1] = sub_A2FE4;
    v72 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v74 = *(v0 + 848);

    return sub_A1184(v73, v72);
  }
}

uint64_t sub_A2FE4(char a1)
{
  v2 = *(*v1 + 1104);
  v3 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 141) = a1;

  return _swift_task_switch(sub_A30FC, v3, 0);
}

uint64_t sub_A30FC()
{
  v33 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 928);
  v5 = *(v0 + 896);
  *(*(v0 + 888) + *(*(v0 + 872) + 52)) = *(v0 + 141);
  v2(v4, v3, v5);
  v6 = sub_F06AC();
  v7 = sub_F0CDC();
  if (os_log_type_enabled(v6, v7))
  {
    v30 = *(v0 + 1088);
    v31 = *(v0 + 1096);
    v8 = *(v0 + 928);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 872);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136642819;
    swift_beginAccess();
    sub_3C9A4(v10, v11);
    v15 = sub_F085C();
    v17 = sub_3E850(v15, v16, &v32);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Processing generated RCSMessage %{sensitive}s", v13, 0xCu);
    sub_1EDC(v14);

    v30(v8, v9);
  }

  else
  {
    v18 = *(v0 + 1096);
    v19 = *(v0 + 1088);
    v20 = *(v0 + 928);
    v21 = *(v0 + 896);

    v19(v20, v21);
  }

  v22 = *(v0 + 960);
  v23 = *(v0 + 888);
  swift_beginAccess();
  v24 = swift_task_alloc();
  *(v0 + 1112) = v24;
  *v24 = v0;
  v24[1] = sub_A3344;
  v25 = *(v0 + 968);
  v26 = *(v0 + 888);
  v27 = *(v0 + 848);
  v28 = *(v0 + 840);

  return sub_A4248(v26, v28, v22, v25);
}

uint64_t sub_A3344()
{
  v1 = *(*v0 + 1112);
  v2 = *(*v0 + 952);
  v4 = *v0;

  return _swift_task_switch(sub_A3454, v2, 0);
}

uint64_t sub_A3454()
{
  v1 = v0[132];
  v2 = v0[129];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[111];

  sub_5EFF4((v0 + 2));
  sub_372B0((v0 + 65), &qword_127B08, &qword_F29A0);
  sub_3897C(v6);
  v7 = v0[118];
  v8 = v0[117];
  v9 = v0[116];
  v10 = v0[115];
  v11 = v0[114];
  v12 = v0[111];
  v13 = v0[110];
  v14 = v0[108];
  v15 = v0[107];

  v16 = v0[1];

  return v16();
}

id sub_A3580(uint64_t a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v36[-v12];
  v14 = *(*(v2 + OBJC_IVAR___RCSServiceSession_state) + 16);
  v37 = 0;
  result = [v14 _retrieveMessage:a1 withMessageID:a2 withError:{&v37, v11}];
  if (v37)
  {
    v16 = result;
    v17 = v37;

    swift_willThrow();
    v18 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v18, v5);
    v19 = a2;
    v20 = sub_F06AC();
    v21 = sub_F0CFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_3E850(0xD000000000000018, 0x80000000000FF8F0, &v37);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v25 = v19;
      _os_log_impl(&dword_0, v20, v21, "%{public}s error retrieving message from CT with identifier %@", v22, 0x16u);
      sub_372B0(v23, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v24);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  if (!result)
  {
    v26 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v13, v26, v5);
    v27 = a2;
    v28 = sub_F06AC();
    v29 = sub_F0CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_3E850(0xD000000000000018, 0x80000000000FF8F0, &v37);
      *(v30 + 12) = 2080;
      v31 = [v27 uuid];
      v32 = sub_F07EC();
      v34 = v33;

      v35 = sub_3E850(v32, v34, &v37);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_0, v28, v29, "%{public}s lazuli told us about a message %s but when we asked for it, it returned nil", v30, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v13, v5);
    return 0;
  }

  return result;
}

id sub_A39B8(uint64_t a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v63 - v12;
  v14 = [a2 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128C10, &qword_F41D0);
  if (!swift_dynamicCast())
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_372B0(&v69, &qword_128C18, &qword_F41D8);
    result = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_3928(&v69, v72);
  v15 = v73;
  v16 = v74;
  sub_373E8(v72, v73);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = [a2 secure];
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v20 = static NSUserDefaults.forceEncryption.getter();
    *(&v70 + 1) = &type metadata for CTRCSGroupIdentity;
    v71 = &off_11F358;
    *&v69 = v18;
    BYTE8(v69) = (v20 | v19) & 1;
    v21 = sub_5270C(v18, SBYTE8(v69), v2);
    if (v21)
    {
      v22 = v21;
      result = [v21 participants];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      sub_37310(0, &qword_127F70, IMDHandle_ptr);
      v25 = sub_F09FC();

      if (v25 >> 62)
      {
        v26 = sub_F10DC();
      }

      else
      {
        v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      }

      if (v26 > 1)
      {
        sub_1F28(&v69, a1);
        sub_1EDC(&v69);
        sub_1EDC(v72);
        return v22;
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v40 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v13, v40, v5);
      sub_1F28(&v69, v68);
      v41 = a2;
      v42 = sub_F06AC();
      v43 = sub_F0CEC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v67 = v65;
        *v44 = 136315394;
        sub_1F28(v68, v66);
        sub_388C8(&qword_128C48, qword_F4230);
        v45 = sub_F085C();
        v46 = v6;
        v48 = v47;
        sub_1EDC(v68);
        v49 = sub_3E850(v45, v48, &v67);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2080;
        v50 = [v41 messageID];
        v51 = [v50 uuid];

        v52 = sub_F07EC();
        v54 = v53;

        v55 = sub_3E850(v52, v54, &v67);

        *(v44 + 14) = v55;
        _os_log_impl(&dword_0, v42, v43, "Couldn't find an existing chat for group identity %s - incoming message %s will be sent to a 1:1 with the sender", v44, 0x16u);
        swift_arrayDestroy();

        (*(v46 + 8))(v13, v5);
      }

      else
      {

        sub_1EDC(v68);
        (*(v6 + 8))(v13, v5);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    sub_1EDC(&v69);
  }

  else
  {
    v27 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v27, v5);
    sub_1F28(v72, &v69);
    v28 = a2;
    v29 = sub_F06AC();
    v30 = sub_F0CEC();

    if (os_log_type_enabled(v29, v30))
    {
      v65 = v6;
      v31 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68[0] = v64;
      *v31 = 136315394;
      v33 = *(&v70 + 1);
      v32 = v71;
      sub_373E8(&v69, *(&v70 + 1));
      v34 = (v32[1])(v33, v32);
      if (v34)
      {
        v35 = v34;
        v36 = [v34 debugDescription];

        v37 = sub_F07EC();
        v39 = v38;
      }

      else
      {
        v39 = 0xE500000000000000;
        v37 = 0x3E6C696E3CLL;
      }

      sub_1EDC(&v69);
      v56 = sub_3E850(v37, v39, v68);

      *(v31 + 4) = v56;
      *(v31 + 12) = 2080;
      v57 = [v28 messageID];
      v58 = [v57 uuid];

      v59 = sub_F07EC();
      v61 = v60;

      v62 = sub_3E850(v59, v61, v68);

      *(v31 + 14) = v62;
      _os_log_impl(&dword_0, v29, v30, "Couldn't find an existing chat for group URI %s - incoming message %s will be sent to a 1:1 with the sender", v31, 0x16u);
      swift_arrayDestroy();

      (*(v65 + 8))(v9, v5);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      sub_1EDC(&v69);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  sub_1EDC(v72);
  return 0;
}

uint64_t sub_A414C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_37380(a2, &v10, &qword_127B08, &qword_F29A0);
  if (*(&v11 + 1))
  {
    sub_3928(&v10, v9);
    sub_3928(v9, &v10);
    v12[25] = 1;
  }

  else
  {
    sub_372B0(&v10, &qword_127B08, &qword_F29A0);
    v5 = a1[1];
    v10 = *a1;
    v11 = v5;
    *v12 = a1[2];
    *&v12[9] = *(a1 + 41);
    v12[25] = 0;
    sub_38910(a1, v9);
  }

  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = a1[2];
  *(a3 + 41) = *(a1 + 41);
  v7 = v11;
  *(a3 + 64) = v10;
  *(a3 + 80) = v7;
  *(a3 + 96) = *v12;
  *(a3 + 106) = *&v12[10];
  *(a3 + 122) = 1;
  return sub_38910(a1, &v10);
}

uint64_t sub_A4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  v6 = sub_388C8(&qword_128C08, &qword_F41C8);
  v5[45] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v8 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v5[47] = v8;
  v9 = *(v8 - 8);
  v5[48] = v9;
  v10 = *(v9 + 64) + 15;
  v5[49] = swift_task_alloc();
  v11 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v12 = sub_F06CC();
  v5[55] = v12;
  v13 = *(v12 - 8);
  v5[56] = v13;
  v14 = *(v13 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v15 = RCSActor.shared.unsafeMutableAddressor();
  v16 = *v15;
  v5[62] = *v15;

  return _swift_task_switch(sub_A448C, v16, 0);
}

uint64_t sub_A448C()
{
  v1 = *(v0[44] + OBJC_IVAR___RCSServiceSession_state);
  v0[63] = v1;
  v2 = *(v1 + 104);
  v0[64] = v2;
  if (!v2)
  {
    __break(1u);
  }

  v3 = *(*v2 + 144);

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_A4608;
  v6 = v0[40];

  return (v8)(v0 + 37, v6);
}

uint64_t sub_A4608(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v10 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v5 = v3[62];
    v6 = sub_A6048;
  }

  else
  {
    v7 = v3[64];
    v8 = v3[62];

    v6 = sub_A4780;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_A4780()
{
  v114 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = Logger.rcs.unsafeMutableAddressor();
  v9 = *(v3 + 16);
  v9(v1, v8, v2);
  sub_3C9A4(v6, v4);
  sub_3C9A4(v6, v5);
  v10 = sub_F06AC();
  v11 = sub_F0CCC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 488);
  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 432);
  if (v12)
  {
    v105 = v11;
    v18 = swift_slowAlloc();
    v109 = v7;
    v19 = swift_slowAlloc();
    v112 = v19;
    *v18 = 136315394;
    v106 = v13;
    v107 = v15;
    v20 = v9;
    v22 = *(v17 + 128);
    v21 = *(v17 + 136);

    sub_3897C(v17);
    v23 = v22;
    v9 = v20;
    v24 = sub_3E850(v23, v21, &v112);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    LODWORD(v21) = RCSMessage.fromChatBot.getter() & 1;
    sub_3897C(v16);
    *(v18 + 14) = v21;
    _os_log_impl(&dword_0, v10, v105, "Successfully processed message %s - sending delivery, is from chat bot: %{BOOL}d", v18, 0x12u);
    sub_1EDC(v19);
    v7 = v109;

    v25 = *(v14 + 8);
    v25(v106, v107);
  }

  else
  {
    sub_3897C(*(v0 + 424));

    sub_3897C(v17);
    v25 = *(v14 + 8);
    v25(v13, v15);
  }

  v26 = *(v0 + 536);
  *(v0 + 584) = *(v0 + 528);
  *(v0 + 576) = v7;
  *(v0 + 568) = 0;
  *(v0 + 560) = v9;
  *(v0 + 552) = v25;
  *(v0 + 544) = v26;
  v27 = *(v0 + 320);
  if (RCSMessage.fromChatBot.getter())
  {
    v28 = *(v0 + 320);
    sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
    v29 = *(v28 + 128);
    v30 = *(v28 + 136);

    *(v0 + 592) = CTLazuliOperationID.init(id:)(v29, v30);
    sub_F0AEC();
    *(v0 + 600) = sub_F0ADC();
    v31 = sub_F0A6C();
    v33 = sub_A5090;
LABEL_24:
    v91 = v31;
    v92 = v32;
    v53 = v33;
    v54 = v91;
    v55 = v92;

    return _swift_task_switch(v53, v54, v55);
  }

  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 384);
  v34 = *(v0 + 392);
  v36 = *(v0 + 376);
  v37 = sub_3C96C(v36, qword_127D00);
  v38 = *(v35 + 16);
  v38(v34, v37, v36);
  sub_F044C();
  v39 = *(v35 + 8);
  v39(v34, v36);
  if (*(v0 + 65))
  {
    v110 = v38;
    v40 = *(v0 + 504);
    v41 = *(v0 + 328);
    v42 = *(v0 + 336);
    v43 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    sub_388C8(&qword_128BB8, &unk_F41E0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_F3F80;
    *(v44 + 32) = [v42 messageID];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v45 = sub_F09EC();

    [v43 setList:v45];

    v46 = *(v40 + 16);
    *(v0 + 312) = 0;
    v47 = [v46 acknowledgeIncomingMessages:v41 withMessageIDList:v43 withError:v0 + 312];
    v48 = *(v0 + 312);
    if (v47)
    {
      v49 = v48;

      v50 = *(v0 + 544);
    }

    else
    {
      v51 = v48;
      v52 = sub_F015C();

      swift_willThrow();
      v53 = [objc_opt_self() sharedInstance];
      if (!v53)
      {
        __break(1u);
        return _swift_task_switch(v53, v54, v55);
      }

      v56 = v53;
      v57 = *(v0 + 336);
      v112 = 0x206567617373656DLL;
      v113 = 0xEB00000000204449;
      v58 = [v57 messageID];
      v59 = [v58 uuid];

      v60 = sub_F07EC();
      v62 = v61;

      v116._countAndFlagsBits = v60;
      v116._object = v62;
      sub_F08CC(v116);

      v63 = v112;
      v64 = v113;
      v65 = sub_F0FBC();
      *(v0 + 72) = 3;
      *(v0 + 80) = v65;
      *(v0 + 88) = v66;
      *(v0 + 96) = v63;
      *(v0 + 104) = v64;
      *(v0 + 112) = v52;
      *(v0 + 120) = 0;
      swift_errorRetain();
      sub_94528((v0 + 72));

      v50 = 0;
    }

    v38 = v110;
  }

  else
  {
    v50 = *(v0 + 544);
  }

  *(v0 + 608) = v50;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 392);
  v68 = *(v0 + 376);
  v69 = sub_3C96C(v68, qword_127CE8);
  v38(v67, v69, v68);
  sub_F044C();
  v39(v67, v68);
  if (*(v0 + 66) == 1)
  {
    v70 = [*(v0 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v71 = *(v0 + 248);
      v72 = *(v0 + 256);
      sub_373E8((v0 + 224), v71);
      v73 = (*(v72 + 8))(v71, v72);
      sub_1EDC((v0 + 224));
    }

    else
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      sub_372B0(v0 + 224, &qword_128C18, &qword_F41D8);
      v73 = 0;
    }

    *(v0 + 616) = v73;
    *(v0 + 624) = sub_F0AEC();
    *(v0 + 632) = sub_F0ADC();
    v31 = sub_F0A6C();
    v33 = sub_A5828;
    goto LABEL_24;
  }

  v74 = *(v0 + 560);
  v75 = *(v0 + 496);
  v76 = *(v0 + 472);
  v77 = *(v0 + 440);
  v78 = *(v0 + 448);

  v79 = Logger.rcs.unsafeMutableAddressor();
  v74(v76, v79, v77);
  v80 = sub_F06AC();
  v81 = sub_F0CCC();
  v82 = os_log_type_enabled(v80, v81);
  v83 = *(v0 + 584);
  v84 = *(v0 + 576);
  v85 = *(v0 + 552);
  v86 = *(v0 + 472);
  v87 = *(v0 + 440);
  v88 = *(v0 + 448);
  if (v82)
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_0, v80, v81, "Not sending disposition notification due to override", v89, 2u);

    v90 = v84;
  }

  else
  {
    v90 = *(v0 + 584);
    v83 = *(v0 + 576);
  }

  v85(v86, v87);
  v94 = *(v0 + 480);
  v93 = *(v0 + 488);
  v96 = *(v0 + 464);
  v95 = *(v0 + 472);
  v97 = *(v0 + 456);
  v99 = *(v0 + 424);
  v98 = *(v0 + 432);
  v101 = *(v0 + 408);
  v100 = *(v0 + 416);
  v102 = *(v0 + 400);
  v108 = *(v0 + 392);
  v111 = *(v0 + 368);

  v103 = *(v0 + 8);

  return v103();
}

uint64_t sub_A5090()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[62];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[41];

  sub_62F9C(v6, v5, v2);

  return _swift_task_switch(sub_A5158, v3, 0);
}

uint64_t sub_A5158()
{
  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_3C96C(v3, qword_127D00);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_F044C();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 65))
  {
    v71 = v5;
    v7 = *(v0 + 504);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v10 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    sub_388C8(&qword_128BB8, &unk_F41E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_F3F80;
    *(v11 + 32) = [v9 messageID];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v12 = sub_F09EC();

    [v10 setList:v12];

    v13 = *(v7 + 16);
    *(v0 + 312) = 0;
    v14 = [v13 acknowledgeIncomingMessages:v8 withMessageIDList:v10 withError:v0 + 312];
    v15 = *(v0 + 312);
    if (v14)
    {
      v16 = v15;

      v17 = *(v0 + 544);
    }

    else
    {
      v18 = v15;
      v19 = sub_F015C();

      swift_willThrow();
      v20 = [objc_opt_self() sharedInstance];
      if (!v20)
      {
        __break(1u);
        return _swift_task_switch(v20, v21, v22);
      }

      v23 = v20;
      v24 = [*(v0 + 336) messageID];
      v25 = [v24 uuid];

      v26 = sub_F07EC();
      v28 = v27;

      v74._countAndFlagsBits = v26;
      v74._object = v28;
      sub_F08CC(v74);

      v29 = sub_F0FBC();
      *(v0 + 72) = 3;
      *(v0 + 80) = v29;
      *(v0 + 88) = v30;
      *(v0 + 96) = 0x206567617373656DLL;
      *(v0 + 104) = 0xEB00000000204449;
      *(v0 + 112) = v19;
      *(v0 + 120) = 0;
      swift_errorRetain();
      sub_94528((v0 + 72));

      v17 = 0;
    }

    v5 = v71;
  }

  else
  {
    v17 = *(v0 + 544);
  }

  *(v0 + 608) = v17;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 392);
  v32 = *(v0 + 376);
  v33 = sub_3C96C(v32, qword_127CE8);
  v5(v31, v33, v32);
  sub_F044C();
  v6(v31, v32);
  if (*(v0 + 66) == 1)
  {
    v34 = [*(v0 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v35 = *(v0 + 248);
      v36 = *(v0 + 256);
      sub_373E8((v0 + 224), v35);
      v37 = (*(v36 + 8))(v35, v36);
      sub_1EDC((v0 + 224));
    }

    else
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      sub_372B0(v0 + 224, &qword_128C18, &qword_F41D8);
      v37 = 0;
    }

    *(v0 + 616) = v37;
    *(v0 + 624) = sub_F0AEC();
    *(v0 + 632) = sub_F0ADC();
    v55 = sub_F0A6C();
    v57 = v56;
    v20 = sub_A5828;
    v21 = v55;
    v22 = v57;

    return _swift_task_switch(v20, v21, v22);
  }

  v38 = *(v0 + 560);
  v39 = *(v0 + 496);
  v40 = *(v0 + 472);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);

  v43 = Logger.rcs.unsafeMutableAddressor();
  v38(v40, v43, v41);
  v44 = sub_F06AC();
  v45 = sub_F0CCC();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 584);
  v48 = *(v0 + 576);
  v49 = *(v0 + 552);
  v50 = *(v0 + 472);
  v51 = *(v0 + 440);
  v52 = *(v0 + 448);
  if (v46)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v44, v45, "Not sending disposition notification due to override", v53, 2u);

    v54 = v48;
  }

  else
  {
    v54 = *(v0 + 584);
    v47 = *(v0 + 576);
  }

  v49(v50, v51);
  v59 = *(v0 + 480);
  v58 = *(v0 + 488);
  v61 = *(v0 + 464);
  v60 = *(v0 + 472);
  v62 = *(v0 + 456);
  v64 = *(v0 + 424);
  v63 = *(v0 + 432);
  v66 = *(v0 + 408);
  v65 = *(v0 + 416);
  v67 = *(v0 + 400);
  v70 = *(v0 + 392);
  v72 = *(v0 + 368);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_A5828()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 496);
  v3 = *(v0 + 336);

  *(v0 + 67) = [v3 secure];
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  *(v0 + 68) = static NSUserDefaults.forceEncryption.getter() & 1;

  return _swift_task_switch(sub_A5908, v2, 0);
}

uint64_t sub_A5908()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 568);
  v4 = *(v0 + 336);
  v5 = *(v0 + 68) | *(v0 + 67);
  v6 = [v4 messageID];
  *(v0 + 640) = v6;
  v7 = [v4 from];
  *(v0 + 648) = v7;
  *(v0 + 184) = v3;
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = v5 & 1;
  *(v0 + 216) = v2;
  v8 = v2;
  *(v0 + 656) = sub_F0ADC();
  v10 = sub_F0A6C();

  return _swift_task_switch(sub_A5A44, v10, v9);
}

uint64_t sub_A5A44()
{
  v1 = v0[82];
  v2 = v0[76];
  v3 = v0[44];
  v4 = v0[41];

  sub_A0894(v4, v0 + 23);
  v0[83] = v2;
  v5 = v0[62];
  if (v2)
  {
    v6 = sub_A6CF8;
  }

  else
  {
    v6 = sub_A5B10;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_A5B10()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);

  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 496);
    v8 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);

    v11 = Logger.rcs.unsafeMutableAddressor();
    v6(v8, v11, v9);
    v12 = v4;
    v13 = v3;
    v14 = sub_F06AC();
    v15 = sub_F0CEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 584);
      v17 = *(v0 + 576);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      *(v18 + 4) = v13;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v12;
      *v19 = v16;
      v19[1] = v17;
      v20 = v13;
      v21 = v12;
      _os_log_impl(&dword_0, v14, v15, "Processed message but relay message %@ or chat %@ is nil", v18, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    else
    {
      v20 = v14;
      v14 = v13;
    }

    v25 = *(v0 + 552);
    v26 = *(v0 + 480);
    v27 = *(v0 + 440);
    v28 = *(v0 + 448);

    v25(v26, v27);
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 456);
    v35 = *(v0 + 424);
    v34 = *(v0 + 432);
    v37 = *(v0 + 408);
    v36 = *(v0 + 416);
    v38 = *(v0 + 400);
    v41 = *(v0 + 392);
    v42 = *(v0 + 368);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v22 = *(v0 + 624);
    *(v0 + 672) = sub_F0ADC();
    v23 = sub_F0A6C();

    return _swift_task_switch(sub_A5E50, v23, v24);
  }
}

uint64_t sub_A5E50()
{
  v1 = v0[84];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[62];
  v5 = v0[44];

  RCSServiceSession.relayReceivedMessage(_:for:)(v2, v3);

  return _swift_task_switch(sub_A5F10, v4, 0);
}

uint64_t sub_A5F10()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[62];

  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[57];
  v10 = v0[53];
  v9 = v0[54];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[50];
  v16 = v0[49];
  v17 = v0[46];

  v14 = v0[1];

  return v14();
}

uint64_t sub_A6048()
{
  v155 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 512);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);

  *(v0 + 304) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v7 = *(v0 + 536);
      v8 = *(v0 + 464);
      v9 = *(v0 + 440);
      v10 = *(v0 + 448);
      v12 = *(v0 + 408);
      v11 = *(v0 + 416);

      v13 = (v6 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
      v14 = v13[1];
      v146 = *v13;
      sub_3CA08(v6, v11);
      v15 = Logger.rcs.unsafeMutableAddressor();
      v16 = *(v10 + 16);
      v16(v8, v15, v9);
      sub_3C9A4(v11, v12);

      v17 = sub_F06AC();
      v18 = sub_F0CCC();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 464);
      v22 = *(v0 + 440);
      v21 = *(v0 + 448);
      v24 = *(v0 + 408);
      v23 = *(v0 + 416);
      if (v19)
      {
        v149 = v16;
        v25 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v25 = 136315394;
        v142 = v20;
        v143 = v23;
        v27 = *(v24 + 128);
        v26 = *(v24 + 136);

        sub_3897C(v24);
        v28 = sub_3E850(v27, v26, &v153);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v29 = sub_3E850(v146, v14, &v153);

        *(v25 + 14) = v29;
        _os_log_impl(&dword_0, v17, v18, "Skip processing message %s: %s - sending delivery", v25, 0x16u);
        swift_arrayDestroy();

        v16 = v149;

        v30 = *(v21 + 8);
        v30(v142, v22);
        v31 = v143;
      }

      else
      {

        sub_3897C(v24);
        v30 = *(v21 + 8);
        v30(v20, v22);
        v31 = v23;
      }

      sub_3897C(v31);
      v66 = *(v0 + 304);

      v64 = 0;
      goto LABEL_13;
    }

    sub_372B0(v6, &qword_128C08, &qword_F41C8);
  }

  v32 = *(v0 + 536);
  v34 = *(v0 + 448);
  v33 = *(v0 + 456);
  v35 = *(v0 + 440);
  v36 = *(v0 + 400);
  v37 = *(v0 + 320);
  v38 = *(v0 + 304);

  v39 = Logger.rcs.unsafeMutableAddressor();
  v16 = *(v34 + 16);
  v16(v33, v39, v35);
  sub_3C9A4(v37, v36);
  swift_errorRetain();
  v40 = sub_F06AC();
  v41 = sub_F0CEC();

  if (os_log_type_enabled(v40, v41))
  {
    v150 = v16;
    v42 = *(v0 + 536);
    v144 = *(v0 + 448);
    v145 = *(v0 + 440);
    v147 = *(v0 + 456);
    v43 = *(v0 + 400);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v153 = v46;
    *v44 = 136315394;
    v47 = *(v43 + 128);
    v48 = *(v43 + 136);

    sub_3897C(v43);
    v49 = sub_3E850(v47, v48, &v153);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2112;
    swift_errorRetain();
    v16 = v150;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v50;
    *v45 = v50;
    _os_log_impl(&dword_0, v40, v41, "Failed to process message %s: %@ - sending negative delivery", v44, 0x16u);
    sub_372B0(v45, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v46);

    v30 = *(v144 + 8);
    v30(v147, v145);
  }

  else
  {
    v52 = *(v0 + 448);
    v51 = *(v0 + 456);
    v53 = *(v0 + 440);
    v54 = *(v0 + 400);

    sub_3897C(v54);
    v30 = *(v52 + 8);
    v30(v51, v53);
  }

  v55 = [objc_opt_self() sharedInstance];
  if (!v55)
  {
    __break(1u);
    goto LABEL_41;
  }

  v58 = v55;
  v59 = *(v0 + 536);
  v60 = *(v0 + 320);
  v153 = 0x206567617373656DLL;
  v154 = 0xEB00000000204449;
  sub_F08CC(v60[8]);
  v61 = v153;
  v62 = v154;
  v63 = sub_F0FBC();
  v64 = 3;
  *(v0 + 16) = 3;
  *(v0 + 24) = v63;
  *(v0 + 32) = v65;
  *(v0 + 40) = v61;
  *(v0 + 48) = v62;
  *(v0 + 56) = v59;
  *(v0 + 64) = 0;
  swift_errorRetain();
  sub_94528((v0 + 16));

LABEL_13:
  *(v0 + 576) = 0u;
  *(v0 + 568) = v64;
  *(v0 + 560) = v16;
  *(v0 + 552) = v30;
  *(v0 + 544) = 0;
  v67 = *(v0 + 320);
  if (RCSMessage.fromChatBot.getter())
  {
    v68 = *(v0 + 320);
    sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
    v69 = *(v68 + 128);
    v70 = *(v68 + 136);

    *(v0 + 592) = CTLazuliOperationID.init(id:)(v69, v70);
    sub_F0AEC();
    *(v0 + 600) = sub_F0ADC();
    v71 = sub_F0A6C();
    v73 = sub_A5090;
LABEL_33:
    v128 = v71;
    v129 = v72;
    v55 = v73;
    v56 = v128;
    v57 = v129;

    return _swift_task_switch(v55, v56, v57);
  }

  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 384);
  v74 = *(v0 + 392);
  v76 = *(v0 + 376);
  v77 = sub_3C96C(v76, qword_127D00);
  v78 = *(v75 + 16);
  v78(v74, v77, v76);
  sub_F044C();
  v79 = *(v75 + 8);
  v79(v74, v76);
  if ((*(v0 + 65) & 1) == 0)
  {
    v90 = *(v0 + 544);
    goto LABEL_24;
  }

  v151 = v78;
  v80 = *(v0 + 504);
  v81 = *(v0 + 328);
  v82 = *(v0 + 336);
  v83 = [objc_allocWithZone(CTLazuliMessageIDList) init];
  sub_388C8(&qword_128BB8, &unk_F41E0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_F3F80;
  *(v84 + 32) = [v82 messageID];
  sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
  v85 = sub_F09EC();

  [v83 setList:v85];

  v86 = *(v80 + 16);
  *(v0 + 312) = 0;
  v87 = [v86 acknowledgeIncomingMessages:v81 withMessageIDList:v83 withError:v0 + 312];
  v88 = *(v0 + 312);
  if (!v87)
  {
    v91 = v88;
    v92 = sub_F015C();

    swift_willThrow();
    v55 = [objc_opt_self() sharedInstance];
    if (v55)
    {
      v93 = v55;
      v94 = *(v0 + 336);
      v153 = 0x206567617373656DLL;
      v154 = 0xEB00000000204449;
      v95 = [v94 messageID];
      v96 = [v95 uuid];

      v97 = sub_F07EC();
      v99 = v98;

      v157._countAndFlagsBits = v97;
      v157._object = v99;
      sub_F08CC(v157);

      v100 = v153;
      v101 = v154;
      v102 = sub_F0FBC();
      *(v0 + 72) = 3;
      *(v0 + 80) = v102;
      *(v0 + 88) = v103;
      *(v0 + 96) = v100;
      *(v0 + 104) = v101;
      *(v0 + 112) = v92;
      *(v0 + 120) = 0;
      swift_errorRetain();
      sub_94528((v0 + 72));

      v90 = 0;
      goto LABEL_23;
    }

LABEL_41:
    __break(1u);
    return _swift_task_switch(v55, v56, v57);
  }

  v89 = v88;

  v90 = *(v0 + 544);
LABEL_23:
  v78 = v151;
LABEL_24:
  *(v0 + 608) = v90;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v104 = *(v0 + 392);
  v105 = *(v0 + 376);
  v106 = sub_3C96C(v105, qword_127CE8);
  v78(v104, v106, v105);
  sub_F044C();
  v79(v104, v105);
  if (*(v0 + 66) == 1)
  {
    v107 = [*(v0 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v108 = *(v0 + 248);
      v109 = *(v0 + 256);
      sub_373E8((v0 + 224), v108);
      v110 = (*(v109 + 8))(v108, v109);
      sub_1EDC((v0 + 224));
    }

    else
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      sub_372B0(v0 + 224, &qword_128C18, &qword_F41D8);
      v110 = 0;
    }

    *(v0 + 616) = v110;
    *(v0 + 624) = sub_F0AEC();
    *(v0 + 632) = sub_F0ADC();
    v71 = sub_F0A6C();
    v73 = sub_A5828;
    goto LABEL_33;
  }

  v111 = *(v0 + 560);
  v112 = *(v0 + 496);
  v113 = *(v0 + 472);
  v114 = *(v0 + 440);
  v115 = *(v0 + 448);

  v116 = Logger.rcs.unsafeMutableAddressor();
  v111(v113, v116, v114);
  v117 = sub_F06AC();
  v118 = sub_F0CCC();
  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 584);
  v121 = *(v0 + 576);
  v122 = *(v0 + 552);
  v123 = *(v0 + 472);
  v124 = *(v0 + 440);
  v125 = *(v0 + 448);
  if (v119)
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_0, v117, v118, "Not sending disposition notification due to override", v126, 2u);

    v127 = v121;
  }

  else
  {
    v127 = *(v0 + 584);
    v120 = *(v0 + 576);
  }

  v122(v123, v124);
  v131 = *(v0 + 480);
  v130 = *(v0 + 488);
  v133 = *(v0 + 464);
  v132 = *(v0 + 472);
  v134 = *(v0 + 456);
  v136 = *(v0 + 424);
  v135 = *(v0 + 432);
  v138 = *(v0 + 408);
  v137 = *(v0 + 416);
  v139 = *(v0 + 400);
  v148 = *(v0 + 392);
  v152 = *(v0 + 368);

  v140 = *(v0 + 8);

  return v140();
}

uint64_t sub_A6CF8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);

  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *(v0 + 664);
  v6 = [*(v0 + 336) messageID];
  v7 = [v6 description];
  v8 = sub_F07EC();
  v10 = v9;

  v53._countAndFlagsBits = v8;
  v53._object = v10;
  sub_F08CC(v53);

  v11 = sub_F0FBC();
  *(v0 + 128) = 3;
  *(v0 + 136) = v11;
  *(v0 + 144) = v12;
  *(v0 + 152) = 0x206567617373656DLL;
  *(v0 + 160) = 0xEB00000000204449;
  *(v0 + 168) = v5;
  *(v0 + 176) = 0;
  swift_errorRetain();
  sub_94528((v0 + 128));

  v13 = *(v0 + 584);
  v14 = *(v0 + 576);
  if (v13 && v14)
  {
    v15 = *(v0 + 624);
    *(v0 + 672) = sub_F0ADC();
    v17 = sub_F0A6C();

    return _swift_task_switch(sub_A5E50, v17, v16);
  }

  else
  {
    v18 = *(v0 + 560);
    v19 = *(v0 + 496);
    v20 = *(v0 + 480);
    v21 = *(v0 + 440);
    v22 = *(v0 + 448);

    v23 = Logger.rcs.unsafeMutableAddressor();
    v18(v20, v23, v21);
    v24 = v14;
    v25 = v13;
    v26 = sub_F06AC();
    v27 = sub_F0CEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 584);
      v29 = *(v0 + 576);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v25;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v24;
      *v31 = v28;
      v31[1] = v29;
      v32 = v25;
      v33 = v24;
      _os_log_impl(&dword_0, v26, v27, "Processed message but relay message %@ or chat %@ is nil", v30, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    else
    {
      v32 = v26;
      v26 = v25;
    }

    v34 = *(v0 + 552);
    v35 = *(v0 + 480);
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);

    v34(v35, v36);
    v39 = *(v0 + 480);
    v38 = *(v0 + 488);
    v41 = *(v0 + 464);
    v40 = *(v0 + 472);
    v42 = *(v0 + 456);
    v44 = *(v0 + 424);
    v43 = *(v0 + 432);
    v46 = *(v0 + 408);
    v45 = *(v0 + 416);
    v47 = *(v0 + 400);
    v50 = *(v0 + 392);
    v51 = *(v0 + 368);

    v48 = *(v0 + 8);

    return v48();
  }
}

void *RCSServiceSession.DispositionInfo.group.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_A72CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_37C54;

  return RCSServiceSession.dequeueAndProcess(messageID:context:)(v3, v4);
}

uint64_t sub_A7370@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_A73A0(void *a1)
{
  v1 = [a1 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128C38, &qword_F4220);
  if (swift_dynamicCast())
  {
    sub_3928(v6, v8);
    v2 = v9;
    v3 = v10;
    sub_373E8(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1EDC(v8);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_372B0(v6, &qword_128C40, &qword_F4228);
    return 0;
  }
}

CoreRCS::RCSMessageMetadata sub_A74A4(void *a1)
{
  v1 = [a1 list];
  sub_37310(0, &qword_128040, CTLazuliCustomMetaDataWrapper_ptr);
  v2 = sub_F09FC();

  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_F10DC();

    if (v3 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v3)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = [a1 list];
      v7 = sub_F09FC();

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = sub_F0FCC();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_20;
        }

        v8 = *(v7 + 8 * v4 + 32);
      }

      v9 = v8;

      v10 = [v9 header];
      v11 = sub_F07EC();
      v13 = v12;

      v14 = [v9 value];
      v15 = sub_F07EC();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_6E830(0, v5[2] + 1, 1, v5);
      }

      v19 = v5[2];
      v18 = v5[3];
      if (v19 >= v18 >> 1)
      {
        v5 = sub_6E830((v18 > 1), v19 + 1, 1, v5);
      }

      ++v4;
      v5[2] = v19 + 1;
      v20 = &v5[4 * v19];
      v20[4] = v11;
      v20[5] = v13;
      v20[6] = v15;
      v20[7] = v17;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_16:

  return RCSMessageMetadata.init(pairs:)(v5);
}

id sub_A76E4(void *a1)
{
  v40 = a1;
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = __chkstk_darwin(v1).n128_u64[0];
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v40 extractedUri];
  v8 = sub_F07EC();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = &selRef_extractedUri;
  }

  else
  {
    v12 = &selRef_uri;
  }

  v13 = [v40 *v12];
  v14 = sub_F07EC();
  v16 = v15;

  v17 = sub_F07BC();
  v18 = [v17 __im_isSipHandle];

  if ((v18 & 1) == 0)
  {
    v19 = [v40 identities];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 identityList];

      v22 = sub_F09FC();
      if (v22[2])
      {
        v24 = v22[4];
        v23 = v22[5];

        v25 = sub_F07BC();
        v26 = [v25 __im_isChatBotPatterned];

        if (v26)
        {
          v27 = Logger.chatbot.unsafeMutableAddressor();
          (*(v2 + 16))(v6, v27, v1);

          v28 = sub_F06AC();
          v29 = sub_F0CCC();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v39 = v24;
            v41 = v31;
            *v30 = 136315394;
            *(v30 + 4) = sub_3E850(v39, v23, &v41);
            *(v30 + 12) = 2080;
            v32 = sub_3E850(v14, v16, &v41);

            *(v30 + 14) = v32;
            _os_log_impl(&dword_0, v28, v29, "Found chatbot sip uri: %s for original uri: %s", v30, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*(v2 + 8))(v6, v1);
          v35 = [objc_allocWithZone(CTLazuliDestination) init];
          v36 = sub_F07BC();

          [v35 setUri:v36];

          v37 = [v40 conversationID];
          if (!v37)
          {
            sub_F07EC();
            v37 = sub_F07BC();
          }

          [v35 setConversationID:v37];

          return v35;
        }
      }
    }
  }

  v33 = v40;

  return v33;
}

__n128 sub_A7B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A7B4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_A7B94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A7BEC(uint64_t a1)
{
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_37C54;

  return sub_A161C(a1, v7, v8, v1 + v5, v9, v10);
}

void sub_A7E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_F06AC();
  v12 = sub_F0CCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "RCS Relay received message delivered", v13, 2u);
  }

  (*(v6 + 8))(v9, v5);
  if (a2)
  {
    v14 = sub_F07BC();
    v15 = sub_F030C();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02DC();
    v20 = sub_F028C();
    (*(v16 + 8))(v19, v15);
    [v3 didReceiveMessageDeliveryReceiptForMessageID:v14 date:v20];
  }
}

id CTLazuliGroupChatUri.init(identity:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_5F3F4(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_A84F0(v9, v1, v3, v4);
  sub_1EDC(a1);
  return v11;
}

uint64_t sub_A818C()
{
  v1 = [*v0 originalGroupID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

void sub_A81F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_F07BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setOriginalGroupID:?];
}

uint64_t sub_A8258()
{
  v1 = [*v0 properties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F076C();

  return v3;
}

id sub_A82C8(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = sub_F075C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 updateProperties:v3];

  return v4;
}

uint64_t sub_A8338(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_F07BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 latestIdentifierForDomain:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_F07EC();

  return v6;
}

void sub_A83C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  if (a2)
  {
    v7 = sub_F07BC();
    if (a4)
    {
LABEL_3:
      v8 = sub_F07BC();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  [v6 assignIdentifier:v7 forDomain:? isHistoricalIdentifier:?];
}

uint64_t sub_A8494(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_F07EC();

  return v5;
}

id sub_A84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24[-v11];
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 32))(v16, a1, a3);
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(a4 + 8))(a3, a4);
  if (v18)
  {
    v19 = sub_F07BC();

    [v17 setFocus:v19];
  }

  if (qword_127A70 != -1)
  {
    swift_once();
  }

  v20 = sub_3C96C(v7, qword_127D48);
  (*(v8 + 16))(v12, v20, v7);
  sub_F044C();
  (*(v8 + 8))(v12, v7);
  if (v24[15] == 1 && ((*(a4 + 16))(a3, a4), v21))
  {
    v22 = sub_F07BC();
  }

  else
  {
    v22 = sub_F07BC();
  }

  [v17 setConversationID:v22];

  (*(v13 + 8))(v16, a3);
  return v17;
}

uint64_t sub_A87D0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_A87E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_A882C(uint64_t result, int a2, int a3)
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

uint64_t RCSServiceSession.calculateReachability(with:responseHandler:)(void *a1, uint64_t a2)
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  sub_F0AFC();
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_F0AEC();
  v10 = v2;
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = sub_F0ADC();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  sub_3CC0C(0, 0, v8, &unk_F42B0, v13);
}

uint64_t sub_A89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_F0AEC();
  v6[5] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_A8A68, v8, v7);
}

void sub_A8A68()
{
  v1 = *(*(v0[2] + OBJC_IVAR___RCSServiceSession_state) + 120);
  v0[8] = v1;
  if (v1)
  {
    v2 = *(*v1 + 160);

    v7 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_A8BB0;
    v6 = v0[3];
    v5 = v0[4];

    v7(v6, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A8BB0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_4A2A0, v5, v4);
}

uint64_t sub_A8CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38B0C;

  return sub_A89CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_A8F38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_A8F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_A89CC(a1, v4, v5, v6, v7, v8);
}

void sub_A9050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 56);
  v30 = a2;
  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = sub_F07BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_F035C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  sub_F032C();
  (*(v10 + 8))(v13, v9);
  v14 = sub_F07BC();

  if (*(a1 + 8))
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = sub_F07BC();
    if (*(a1 + 72))
    {
LABEL_6:
      v18 = *(a1 + 64);
      v19 = sub_F07BC();
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    if (*(a1 + 72))
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_9:
  v20 = *(a1 + 96);
  v21 = [v20 chatIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = [v20 style];
    v24 = [v3 account];
    LOBYTE(v28) = 1;
    [v3 didReceiveDisplayNameChange:v8 guid:v14 fromID:v17 toIdentifier:v19 forChat:v22 style:v23 account:v24 shouldRelay:v28];

    if (*(*&v3[OBJC_IVAR___RCSServiceSession_state] + 40))
    {
      v25 = *(a1 + 80);
      v31[4] = *(a1 + 64);
      v31[5] = v25;
      v32 = *(a1 + 96);
      v26 = *(a1 + 16);
      v31[0] = *a1;
      v31[1] = v26;
      v27 = *(a1 + 48);
      v31[2] = *(a1 + 32);
      v31[3] = v27;

      RCSGroupController.convergeParticipants(with:group:)(v31, v30);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_A92D0(void *a1)
{
  v3 = a1[12];
  v4 = [v3 chatIdentifier];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v3 style];
  v7 = a1[10];
  v8 = a1[11];
  if (!a1[9])
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v9 = a1[8];
  v10 = sub_F07BC();
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = sub_F07BC();
LABEL_7:
  v12 = v11;
  [v1 _updateLastAddressedIDsIfNeededForChatWithIdentifier:v5 style:v6 lastAddressedHandle:v10 lastAddressedSIMID:?];
}

unint64_t sub_A93BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_128590, &qword_F3930);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_54ED8(*(a1 + 48) + 40 * v14, v29);
        sub_3FE38(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_54ED8(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_3FE38(v27 + 8, v22);
        sub_372B0(v26, &qword_128518, &unk_F36B0);
        v23 = v20;
        sub_54F88(v22, v24);
        v15 = v23;
        sub_54F88(v24, v25);
        sub_54F88(v25, &v23);
        result = sub_51FEC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1EDC(v12);
          result = sub_54F88(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_54F88(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_372B0(v26, &qword_128518, &unk_F36B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_A9698(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 80) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_F0AEC();
  *(v7 + 72) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_A9770, v9, v8);
}

uint64_t sub_A9770()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 80);
  v8 = *(v0 + 24);

  v9 = [objc_allocWithZone(CTLazuliDestination) init];
  v10 = sub_F07BC();
  [v9 setUri:v10];

  v11 = [objc_allocWithZone(CTLazuliFetchRemoteCapabilitiesOptions) init];
  v12 = v11;
  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  [v11 setType:v13];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 16);

  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);

  v16 = CTLazuliOperationID.init(id:)(v4, v3);
  *(v0 + 16) = 0;
  v17 = [v15 fetchRemoteCapabilities:v5 forDestination:v9 withOptions:v12 withOperationID:v16 withError:v0 + 16];

  v18 = *(v0 + 16);
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v21 = v18;
    sub_F015C();

    swift_willThrow();
  }

  v20 = *(v0 + 8);

  return v20();
}

id sub_A99A4(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  result = sub_AAD24(a1);
  if (result)
  {
    v11 = result;
    v12 = [result labelID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_F07EC();
      v16 = v15;

      Strong = swift_unknownObjectUnownedLoadStrong();
      v18 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 24);

      if (*(v18 + 16))
      {
        v19 = sub_51FEC(v14, v16);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v18 + 56) + 8 * v19);

          return v22;
        }
      }

      else
      {
      }

      v30 = Logger.reachability.unsafeMutableAddressor();
      (*(v3 + 16))(v9, v30, v2);
      v31 = v11;
      v32 = sub_F06AC();
      v33 = sub_F0CEC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v11;
        v36 = v31;
        _os_log_impl(&dword_0, v32, v33, "Missing RCS configuration for subscription context %@", v34, 0xCu);
        sub_372B0(v35, &qword_127AF0, &qword_F28E0);
      }

      else
      {
        v36 = v32;
        v32 = v31;
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      v23 = Logger.reachability.unsafeMutableAddressor();
      (*(v3 + 16))(v6, v23, v2);
      v24 = v11;
      v25 = sub_F06AC();
      v26 = sub_F0CFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v11;
        v29 = v24;
        _os_log_impl(&dword_0, v25, v26, "Unexpectedly found nil labelID on subscription context %@", v27, 0xCu);
        sub_372B0(v28, &qword_127AF0, &qword_F28E0);
      }

      else
      {
        v29 = v25;
        v25 = v24;
      }

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_A9D70(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter() & 1) != 0 || (Strong = swift_unknownObjectUnownedLoadStrong(), v8 = sub_8E448(a1), Strong, (v8))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    v9 = sub_A99A4(a1);
    LODWORD(v10) = sub_AB26C(v9, &v28);

    v11 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v11, v2);
    v12 = v28;
    v13 = v29;
    v14 = a1;

    v15 = sub_F06AC();
    v16 = sub_F0CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v26 = v10;
      v10 = v20;
      v27 = v20;
      *v17 = 138412802;
      *(v17 + 4) = v14;
      *v19 = v14;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v26 & 1;
      *(v17 + 18) = 2080;
      v21 = v14;
      v22 = sub_3E850(v12, v13, &v27);

      *(v17 + 20) = v22;
      _os_log_impl(&dword_0, v15, v16, "RCS is enabled for %@: %{BOOL}d (%s)", v17, 0x1Cu);
      sub_372B0(v19, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v10);
      LOBYTE(v10) = v26;

      (*(v3 + 8))(v6, v25);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

id sub_AA05C(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v3 = sub_8E448(a1);

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_AAD24(a1);
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() sharedManager];
    v7 = [v6 networkSupportsInterworkingForContext:v5];

    return v7;
  }

  return result;
}

uint64_t sub_AA130(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v11 = sub_8E448(a1);

    if ((v11 & 1) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v12 = sub_A99A4(a1);
  if (v12 && (v13 = v12, v14 = [v12 groupChatCapabilites], v13, v14) && (v15 = objc_msgSend(v14, "maxGroupSize"), v14, v15))
  {
    v16 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v9, v16, v2);
    v17 = a1;
    v18 = v15;
    v19 = sub_F06AC();
    v20 = sub_F0CCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v22 = v17;
      v22[1] = v15;
      v23 = v17;
      v24 = v18;
      _os_log_impl(&dword_0, v19, v20, "RCS max group size for %@: %@", v21, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v9, v2);
    v25 = [v18 integerValue];

    return v25;
  }

  else
  {
    v27 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v27, v2);
    v28 = a1;
    v29 = sub_F06AC();
    v30 = sub_F0CCC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_0, v29, v30, "Returning RCS max group size, can't find configuration for %@", v31, 0xCu);
      sub_372B0(v32, &qword_127AF0, &qword_F28E0);
    }

    (*(v3 + 8))(v6, v2);
    return 100;
  }
}

id sub_AA650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSServiceReachabilityDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AA6B8(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter())
  {
    return 1;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_8E448(a1);

  return v4 & 1;
}

uint64_t sub_AA738()
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter())
  {
    return 1;
  }

  else
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }
}

BOOL sub_AA784()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 96);

  v2 = *(v1 + 16);

  return v2 != 0;
}

uint64_t sub_AA7E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_37C54;

  return sub_A9698(a1, a2, a3, v12, a5, a6);
}

id sub_AA8B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_AAD24(a1);
  *a2 = result;
  return result;
}

double sub_AA8E0@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v5 = *a1;
  RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  a2[2] = v7[0];
  result = *(v7 + 9);
  *(a2 + 41) = *(v7 + 9);
  return result;
}

id sub_AA958(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_64FFC(a1, a2);

  return v5;
}

uint64_t sub_AA9B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    v7 = sub_A93BC(a1);
  }

  else
  {
    v7 = 0;
  }

  sub_65010(v7, a2, a3);
}

id sub_AAA3C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_65614(a1, a2);

  return v5;
}

uint64_t sub_AAA94()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_65898();

  return v1;
}

uint64_t sub_AAAF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    v11 = sub_A93BC(a1);
  }

  else
  {
    v11 = 0;
  }

  sub_65A60(v11, a2, a3, a4, a5);
}

void sub_AABBC(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0 && ((static NSUserDefaults.forceReachable.getter() & 1) == 0 && !IMSharedHelperRetrieveSimDetailsFromTelephony() || (sub_A9D70(a1) & 1) == 0))
  {

    sub_AB4F0(a1);
  }
}

uint64_t sub_AAC58()
{
  v0 = sub_F07BC();
  v1 = IMBagBoolValueWithDefault();

  return v1;
}

void sub_AACAC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 calculateReachabilityWithRequest:a1 responseHandler:a2];
}

id sub_AAD24(void *a1)
{
  v2 = sub_F06CC();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v48 - v7;
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v13 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v14 = [v12 ctSubscriptionInfo];

  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = [a1 senderLastAddressedSIMID];
  v16 = v5;
  v17 = v2;
  v18 = [a1 senderLastAddressedHandle];
  v19 = [v14 __im_subscriptionContextForForSimID:v15 phoneNumber:v18];

  v2 = v17;
  v5 = v16;
  v13 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  if (!v19)
  {
LABEL_5:
    v30 = [v11 sharedInstance];
    v31 = [v30 v13[139]];

    if (v31 && (v19 = [v31 preferredOrDefaultSubscriptionContext], v31, v19))
    {
      v32 = Logger.reachability.unsafeMutableAddressor();
      v33 = v48;
      v21 = v49;
      (*(v49 + 16))(v48, v32, v2);
      v34 = a1;
      v35 = v19;
      v24 = sub_F06AC();
      v36 = sub_F0CDC();

      if (!os_log_type_enabled(v24, v36))
      {
        v10 = v33;
        goto LABEL_14;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v35;
      *v38 = v34;
      v38[1] = v19;
      v39 = v34;
      v40 = v35;
      _os_log_impl(&dword_0, v24, v36, "Context %@ doesn't have subscription info - using default subscription %@", v37, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
      v10 = v33;
    }

    else
    {
      v41 = Logger.reachability.unsafeMutableAddressor();
      v21 = v49;
      (*(v49 + 16))(v5, v41, v2);
      v42 = a1;
      v24 = sub_F06AC();
      v43 = sub_F0CEC();

      if (!os_log_type_enabled(v24, v43))
      {
        v19 = 0;
        v10 = v5;
        goto LABEL_14;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v42;
      *v45 = v42;
      v46 = v42;
      _os_log_impl(&dword_0, v24, v43, "Device has no subscriptions, returning nil subscription for reachability context %@", v44, 0xCu);
      sub_372B0(v45, &qword_127AF0, &qword_F28E0);
      v19 = 0;
      v10 = v5;
    }

    goto LABEL_11;
  }

  v20 = Logger.reachability.unsafeMutableAddressor();
  v21 = v49;
  (*(v49 + 16))(v10, v20, v2);
  v22 = a1;
  v23 = v19;
  v24 = sub_F06AC();
  v25 = sub_F0CDC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412546;
    *(v26 + 4) = v22;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v22;
    v27[1] = v19;
    v28 = v22;
    v29 = v23;
    _os_log_impl(&dword_0, v24, v25, "Found exact match for subscription context %@: %@", v26, 0x16u);
    sub_388C8(&qword_127AF0, &qword_F28E0);
    swift_arrayDestroy();
LABEL_11:
  }

LABEL_14:

  (*(v21 + 8))(v10, v2);
  return v19;
}

uint64_t sub_AB26C(void *a1, unint64_t *a2)
{
  v4 = 0xD000000000000010;
  v5 = a2[1];

  if (a1)
  {
    v6 = a1;
    v7 = [v6 operationStatus];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 registrationState];
      if (v9)
      {
        v10 = v9 == &dword_0 + 1;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10;
      sub_F0F9C(20);

      v12 = [v8 description];
      v13 = sub_F07EC();
      v15 = v14;

      v18._countAndFlagsBits = v13;
      v18._object = v15;
      sub_F08CC(v18);

      v4 = 0xD000000000000012;
      v16 = 0x80000000000FFA60;
    }

    else
    {

      v11 = 0;
      v16 = 0x80000000000FFA40;
      v4 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v11 = 0;
    v16 = 0x80000000000FFA20;
  }

  *a2 = v4;
  a2[1] = v16;
  return v11;
}

id sub_AB3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_F07BC();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    sub_F07EC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    v9 = [a3 slotID];
    if (v7)
    {
      v10 = sub_F07BC();
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_allocWithZone(CTPhoneNumber) initWithDigits:v9 digits:v10 countryCode:0];

    if (v11)
    {
      v12 = [v11 isShortCode];

      return v12;
    }
  }

  else
  {
  }

  return 0;
}

void sub_AB4F0(void *a1)
{
  v2 = sub_F06CC();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  __chkstk_darwin(v15);
  v63 = &v62 - v16;
  __chkstk_darwin(v17);
  v62 = &v62 - v18;
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = objc_opt_self();
  v23 = [v22 sharedInstance];
  if (!v23)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = v23;
  v25 = [v23 hasRelayDevice];

  if (!v25)
  {
    v39 = Logger.reachability.unsafeMutableAddressor();
    v38 = v64;
    v37 = v65;
    (*(v64 + 16))(v5, v39, v65);
    v32 = sub_F06AC();
    v40 = sub_F0CCC();
    if (os_log_type_enabled(v32, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v32, v40, "Returning that RCS relay is unavailable, we have no relay devices", v41, 2u);
    }

    v21 = v5;
    goto LABEL_37;
  }

  v26 = [v22 sharedInstance];
  if (!v26)
  {
    goto LABEL_39;
  }

  v27 = v26;
  v28 = [v26 enrollmentController];

  if (!v28)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v29 = [v28 hasBeenRemoteApproved];

  if (!v29)
  {
    v42 = Logger.reachability.unsafeMutableAddressor();
    v38 = v64;
    v37 = v65;
    (*(v64 + 16))(v8, v42, v65);
    v32 = sub_F06AC();
    v43 = sub_F0CCC();
    if (os_log_type_enabled(v32, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v32, v43, "Returning that RCS relay is unavailable, we are not approved for relay", v44, 2u);
    }

    v21 = v8;
    goto LABEL_37;
  }

  v30 = [a1 senderLastAddressedHandle];
  if (!v30)
  {
LABEL_20:
    v45 = [v22 sharedInstance];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 hasPhoneNumberAliasActiveCheckingSelf:0];

      v48 = Logger.reachability.unsafeMutableAddressor();
      v38 = v64;
      v37 = v65;
      v49 = *(v64 + 16);
      if (v47)
      {
        v49(v14, v48, v65);
        v32 = sub_F06AC();
        v50 = sub_F0CCC();
        if (os_log_type_enabled(v32, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_0, v32, v50, "Returning that RCS relay is available, we are approved and have a phone number alias that provides relay", v51, 2u);
        }

        v21 = v14;
        goto LABEL_37;
      }

      v49(v11, v48, v65);
      v32 = sub_F06AC();
      v52 = sub_F0CCC();
      if (!os_log_type_enabled(v32, v52))
      {
        goto LABEL_36;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Returning that RCS relay is unavailable, we are approved but have no phone number aliases that provide relay";
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v8 = v30;
  if (!IMStringIsPhoneNumber())
  {

    goto LABEL_20;
  }

  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 ctSubscriptionInfo];

  if (v32)
  {
    if ([v32 __im_containsPhoneNumber:v8])
    {

      v33 = Logger.reachability.unsafeMutableAddressor();
      (*(v64 + 16))(v21, v33, v65);
      v34 = sub_F06AC();
      v35 = sub_F0CCC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "Returning that RCS relay is unavailable, preferred handle is locally provided. Relay is impossible", v36, 2u);
      }

      v38 = v64;
      v37 = v65;
      goto LABEL_37;
    }
  }

  v55 = [v22 sharedInstance];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 isAliasActiveAndRelayCapable:v8 checkingSelf:0];

    v58 = Logger.reachability.unsafeMutableAddressor();
    v38 = v64;
    v37 = v65;
    v59 = *(v64 + 16);
    if (v57)
    {
      v11 = v62;
      v59(v62, v58, v65);
      v32 = sub_F06AC();
      v60 = sub_F0CCC();
      if (os_log_type_enabled(v32, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v32, v60, "Returning that RCS relay is available, we are approved and the last-addressed handle is from a device that supports relay", v61, 2u);
      }

      goto LABEL_36;
    }

    v11 = v63;
    v59(v63, v58, v65);
    v32 = sub_F06AC();
    LOBYTE(v52) = sub_F0CCC();
    if (!os_log_type_enabled(v32, v52))
    {
LABEL_36:
      v21 = v11;
LABEL_37:

      (*(v38 + 8))(v21, v37);
      return;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Returning that RCS relay is unavailable, we are approved but the last-addressed handle is not from a device that supports relay";
LABEL_35:
    _os_log_impl(&dword_0, v32, v52, v54, v53, 2u);

    goto LABEL_36;
  }

LABEL_42:

  __break(1u);
}

uint64_t CTXPCServiceSubscriptionContext.canonicalPhoneNumber.getter()
{
  v1 = [v0 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();
  v5 = v4;

  v6 = sub_53E04(_swiftEmptyArrayStorage);
  v7._countAndFlagsBits = 7103860;
  v7._object = 0xE300000000000000;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v12, v7, v8, v6, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  __chkstk_darwin(v9);
  RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v13);
  sub_3CAB8(&v12);
  v10 = v14;

  sub_3CAB8(&v13);
  return v10;
}

id sub_ABD88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v11 = sub_F07BC();
  v12 = [v5 chatForChatIdentifier:v11 style:45 updatingAccount:1];

  if (!v12)
  {
    sub_388C8(&qword_128508, "ȷ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F4320;
    sub_F07EC();
    sub_F0F3C();
    *(inited + 96) = &type metadata for Int32;
    *(inited + 72) = 2;
    sub_F07EC();
    sub_F0F3C();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = a1;
    *(inited + 152) = a2;
    sub_F07EC();

    sub_F0F3C();
    *(inited + 240) = &type metadata for Bool;
    *(inited + 216) = a3 & 1;
    v23 = sub_F07EC();
    v24 = v14;
    sub_F0F3C();
    *(inited + 312) = &type metadata for String;
    if (a5)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (a5)
    {
      v16 = a5;
    }

    *(inited + 288) = v15;
    *(inited + 296) = v16;

    v17 = sub_80F34(inited);
    swift_setDeallocating();
    sub_388C8(&qword_128510, &unk_F36A0);
    swift_arrayDestroy();
    v18 = sub_F07BC();
    sub_388C8(&qword_127F78, &qword_F2EB8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_F2C60;
    *(v19 + 56) = sub_388C8(&qword_128528, &unk_F36C0);
    *(v19 + 32) = v17;
    v20 = sub_F09EC();

    [v5 didJoinChat:v18 style:45 displayName:0 groupID:0 handleInfo:{v20, v23, v24}];

    v21 = sub_F07BC();
    v12 = [v5 chatForChatIdentifier:v21 style:45];
  }

  return v12;
}

void *sub_AC068(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_388C8(&qword_128288, &qword_F3460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_F2C60;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (a4)
  {
    v12 = sub_F084C();
    v13 = v11;
    if (v12 == a1 && v11 == a2 || (sub_F122C() & 1) != 0)
    {
    }

    else
    {
      v36 = a3;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        v35 = v14 > 1;
        v16 = v15 + 1;
        v10 = sub_6E2D8(v35, v15 + 1, 1, v10);
      }

      else
      {
        v16 = v15 + 1;
      }

      *(v10 + 16) = v16;
      v17 = v10 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      a3 = v36;
    }

    v19 = sub_F086C();
    v20 = v18;
    if (v19 == a1 && v18 == a2 || (sub_F122C() & 1) != 0)
    {
    }

    else
    {
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        v10 = sub_6E2D8((v21 > 1), v22 + 1, 1, v10);
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
    }
  }

  else
  {
  }

  v24 = [objc_opt_self() synchronousDatabase];
  v25 = [v4 service];
  v26 = [v25 internalName];

  v27 = sub_F07EC();
  v29 = v28;

  v30 = sub_AC558(v10, a3 & 1, v27, v29);

  aBlock[4] = sub_ACA10;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_AC4D4;
  aBlock[3] = &unk_11F3F0;
  v31 = _Block_copy(aBlock);

  [v24 fetchMessageRecordsFilteredUsingPredicate:v30 sortedUsingDescriptors:0 limit:1 completionHandler:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v32 = *(v9 + 16);
  v33 = v32;

  return v32;
}

void sub_AC3C4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v9 = a1;
    v10 = sub_F10DC();
    a1 = v9;
    if (!v10)
    {
      return;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = IMDMessageRecordRefFromIMDMessageRecord();
  v6 = IMDCreateIMMessageItemFromIMDMessageRecordRef();

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    swift_beginAccess();
    v8 = *(a2 + 16);
    *(a2 + 16) = v7;
  }
}

uint64_t sub_AC4D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_37310(0, &qword_128DE8, IMDMessageRecord_ptr);
  v3 = sub_F09FC();

  v2(v3);
}

uint64_t sub_AC558(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_37310(0, &qword_128DF0, NSPredicate_ptr);
  sub_388C8(&qword_128DF8, qword_F4340);
  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_F4320;
    v9 = sub_F07EC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_ACA30();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    *(v8 + 96) = sub_388C8(&qword_128558, &unk_F4430);
    *(v8 + 104) = sub_ACA78();
    *(v8 + 72) = a1;
    v13 = sub_F07EC();
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v12;
    *(v8 + 112) = v13;
    *(v8 + 120) = v14;
    *(v8 + 176) = &type metadata for String;
    *(v8 + 184) = v12;
    *(v8 + 152) = a3;
    *(v8 + 160) = a4;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_F4330;
    v16 = sub_F07EC();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_ACA30();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v20 = sub_388C8(&qword_128558, &unk_F4430);
    *(v15 + 96) = v20;
    v21 = sub_ACA78();
    *(v15 + 104) = v21;
    *(v15 + 72) = a1;
    v22 = sub_F07EC();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v19;
    *(v15 + 112) = v22;
    *(v15 + 120) = v23;
    *(v15 + 176) = v20;
    *(v15 + 184) = v21;
    *(v15 + 152) = a1;
    v24 = sub_F07EC();
    *(v15 + 216) = &type metadata for String;
    *(v15 + 224) = v19;
    *(v15 + 192) = v24;
    *(v15 + 200) = v25;
    *(v15 + 256) = &type metadata for String;
    *(v15 + 264) = v19;
    *(v15 + 232) = a3;
    *(v15 + 240) = a4;
    swift_bridgeObjectRetain_n();
  }

  return sub_F0CBC();
}

id sub_AC78C(void *a1)
{
  result = [a1 fallbackHash];
  if (result || (result = [a1 guid]) != 0)
  {
    v3 = result;
    v4 = sub_F07EC();
    v6 = v5;

    v7 = [a1 messageSummaryInfo];
    if (v7)
    {
      v8 = v7;
      v9 = sub_F076C();

      sub_F07EC();
      sub_F0F3C();
      if (*(v9 + 16))
      {
        v10 = sub_51FA8(v15);
        if (v11)
        {
          sub_3FE38(*(v9 + 56) + 32 * v10, v16);
          sub_54F34(v15);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_13:

            goto LABEL_12;
          }

          v14 = sub_F07EC();
          sub_F0F3C();
          if (*(v9 + 16))
          {
            v12 = sub_51FA8(v15);
            if (v13)
            {
              sub_3FE38(*(v9 + 56) + 32 * v12, v16);
              sub_54F34(v15);

              sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
              if (swift_dynamicCast())
              {
                sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
                return CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v4, v6, v14);
              }

              goto LABEL_13;
            }
          }
        }
      }

      sub_54F34(v15);
    }

LABEL_12:
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    return CTLazuliMessageID.init(uuid:)(v4, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_ACA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_ACA30()
{
  result = qword_128E00;
  if (!qword_128E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E00);
  }

  return result;
}

unint64_t sub_ACA78()
{
  result = qword_128E08;
  if (!qword_128E08)
  {
    sub_3CB70(&qword_128558, &unk_F4430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E08);
  }

  return result;
}

void RCSServiceSession.improvisedFallbackGUIDs(forMessage:)(void *a1)
{
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v2 = [a1 description];
    v3 = sub_F07EC();
    v5 = v4;

    v8[0] = 3;
    v9 = sub_F0FBC();
    v10 = v6;
    v11 = v3;
    v12 = v5;
    v13 = 0;
    v14 = 0;
    sub_94528(v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_ACBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata createFallbackTextForMessage:a1 processedMessageItem:a2 leadingFallbackText:a3 trailingFallbackText:a4];
}

uint64_t sub_ACC2C(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() getPlainTextForMessage:a1 processedMessageItem:a2];
  v3 = sub_F07EC();

  return v3;
}

id sub_ACDD0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___RCSMessageSender_session] = a1;
  *&v6[OBJC_IVAR___RCSMessageSender_rcsSession] = a1;
  *&v6[OBJC_IVAR___RCSMessageSender_message] = a2;
  *&v6[OBJC_IVAR___RCSMessageSender_chat] = a3;
  v6[OBJC_IVAR___RCSMessageSender_style] = a4;
  *&v6[OBJC_IVAR___RCSMessageSender_recipients] = a5;
  v6[OBJC_IVAR___RCSMessageSender_sendAsGroupMessage] = 0;
  *&v6[OBJC_IVAR___RCSMessageSender_context] = a6;
  *&v6[OBJC_IVAR___RCSMessageSender_outgoing] = _swiftEmptyArrayStorage;
  swift_unknownObjectUnownedInit();
  sub_B1244(v11, &v6[OBJC_IVAR___RCSMessageSender_compatibilityTransformer]);
  v10.receiver = v6;
  v10.super_class = RCSMessageSender;
  v8 = a1;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_AD028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 rcsSession];
  v7 = [v6 attachmentController];

  v8 = [v3 message];
  v9 = [v3 chat];
  v10 = [v9 lastAddressedLocalHandle];

  v11 = [v3 chat];
  v12 = [v11 lastAddressedSIMID];

  v14[4] = a1;
  v14[5] = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_AD1D4;
  v14[3] = &unk_11F550;
  v13 = _Block_copy(v14);

  [v7 processAttachmentsForMessage:v8 generateTextParts:1 lastAddressedHandle:v10 lastAddressedSIMID:v12 completionBlock:v13];
  _Block_release(v13);
}

void sub_AD1D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_388C8(&qword_128568, &qword_F3950);
  sub_F09FC();

  v5 = a2;
  v4();
}

void sub_AD320(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_388C8(&qword_128568, &qword_F3950);
  v9 = sub_F09EC();
  (*(a5 + 16))(a5, a1, a2 & 1, v9, a4);
}

uint64_t sub_AD3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_F06CC();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = *(*(sub_388C8(&qword_128F00, &unk_F43F0) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = type metadata accessor for RCSMessage(0);
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_AD524, 0, 0);
}

void sub_AD524()
{
  v1 = [*(v0 + 32) sendAsGroupMessage];
  v2 = *(v0 + 32);
  if (v1)
  {
    *(v0 + 128) = [*(v0 + 32) rcsSession];
    v3 = [v2 chat];
    *(v0 + 136) = v3;
    v4 = [v2 context];
    *(v0 + 144) = v4;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_AD83C;
    v6 = *(v0 + 120);
    v7 = *(v0 + 40);

    sub_5524C(v6, v7, 0, v3, v4);
  }

  else
  {
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v8 = [v2 recipients];
    sub_388C8(&qword_128568, &qword_F3950);
    v9 = sub_F09FC();
    *(v0 + 184) = v9;

    v10 = *(v9 + 16);
    v11 = OBJC_IVAR___RCSMessageSender_compatibilityTransformer;
    *(v0 + 192) = v10;
    *(v0 + 200) = v11;
    if (v10)
    {
      *(v0 + 208) = 0;
      v12 = *(v0 + 184);
      if (*(v12 + 16))
      {
        v13 = *(v0 + 32);
        v14 = *(v12 + 32);
        *(v0 + 216) = v14;

        *(v0 + 224) = [v13 rcsSession];
        v15 = [v13 context];
        *(v0 + 232) = v15;
        v16 = swift_task_alloc();
        *(v0 + 240) = v16;
        *v16 = v0;
        v16[1] = sub_ADBC4;
        v17 = *(v0 + 88);
        v18 = *(v0 + 40);

        sub_56124(v17, v18, 0, v14, v15);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v19 = *(v0 + 184);
      v20 = *(v0 + 32);

      v21 = *(v20 + OBJC_IVAR___RCSMessageSender_outgoing);
      *(v20 + OBJC_IVAR___RCSMessageSender_outgoing) = _swiftEmptyArrayStorage;

      v23 = *(v0 + 112);
      v22 = *(v0 + 120);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = *(v0 + 56);
      (*(v0 + 48))(1);

      v27 = *(v0 + 8);

      v27();
    }
  }
}

uint64_t sub_AD83C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  *(v3 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_AE614, 0, 0);
  }

  else
  {
    v4 = *(v3 + 136);
    v5 = *(v3 + 128);
    v6 = *(v3 + 32);

    v7 = swift_task_alloc();
    *(v3 + 168) = v7;
    v8 = sub_388C8(&qword_128F08, &qword_F4400);
    *v7 = v3;
    v7[1] = sub_AD9FC;
    v9 = *(v3 + 120);
    v10 = *(v3 + 40);

    return RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(v9, v10, v8);
  }
}

uint64_t sub_AD9FC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_ADAFC, 0, 0);
}

uint64_t sub_ADAFC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 32);
  sub_3897C(*(v0 + 120));
  v3 = *(v2 + OBJC_IVAR___RCSMessageSender_outgoing);
  *(v2 + OBJC_IVAR___RCSMessageSender_outgoing) = v1;

  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 56);
  (*(v0 + 48))(1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_ADBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v12 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);
    v6 = *(v2 + 216);
    v7 = *(v2 + 184);

    v8 = *(v2 + 16);

    v9 = sub_AE6B0;
  }

  else
  {
    v10 = *(v2 + 224);

    v9 = sub_ADD14;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_ADD14()
{
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    v2 = *(v0 + 216);

    sub_372B0(v1, &qword_128F00, &unk_F43F0);
    v3 = *(v0 + 208) + 1;
    if (v3 == *(v0 + 192))
    {
      v4 = *(v0 + 16);
      v5 = *(v0 + 184);
      v6 = *(v0 + 32);

      v7 = *(v6 + OBJC_IVAR___RCSMessageSender_outgoing);
      *(v6 + OBJC_IVAR___RCSMessageSender_outgoing) = v4;

      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 56);
      (*(v0 + 48))(1);

      v13 = *(v0 + 8);

      v13();
      return;
    }

    *(v0 + 208) = v3;
    v47 = *(v0 + 184);
    if (v3 < *(v47 + 16))
    {
      v48 = *(v0 + 32);
      v49 = *(v47 + 8 * v3 + 32);
      *(v0 + 216) = v49;

      *(v0 + 224) = [v48 rcsSession];
      v50 = [v48 context];
      *(v0 + 232) = v50;
      v51 = swift_task_alloc();
      *(v0 + 240) = v51;
      *v51 = v0;
      v51[1] = sub_ADBC4;
      v52 = *(v0 + 88);
      v53 = *(v0 + 40);

      sub_56124(v52, v53, 0, v49, v50);
      return;
    }

    __break(1u);
LABEL_21:
    v68 = *(v0 + 40);
    swift_bridgeObjectRelease_n();

    __break(1u);
    return;
  }

  sub_3CA08(v1, *(v0 + 112));
  v14 = *(v0 + 216);
  if (*(*(v0 + 16) + 16))
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);
    v72 = *(v0 + 40);
    v18 = sub_F035C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    sub_F034C();
    v22 = sub_F032C();
    v24 = v23;
    (*(v19 + 8))(v21, v18);

    v25 = Logger.rcs.unsafeMutableAddressor();
    (*(v16 + 16))(v15, v25, v17);
    v26 = v24;

    v27 = v72;
    v28 = sub_F06AC();
    v29 = sub_F0D0C();

    v71 = v22;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 40);
      v31 = swift_slowAlloc();
      *(v0 + 24) = swift_slowAlloc();
      *v31 = 136315650;
      v32 = v22;
      v33 = v24;
      *(v31 + 4) = sub_3E850(v32, v24, (v0 + 24));
      *(v31 + 12) = 2080;
      v34 = [v30 guid];
      v35 = *(v0 + 216);
      if (!v34)
      {
        goto LABEL_21;
      }

      v36 = v34;
      v37 = *(v0 + 72);
      v69 = *(v0 + 64);
      v70 = *(v0 + 80);
      v38 = *(v0 + 40);

      v39 = sub_F07EC();
      v41 = v40;

      v42 = sub_3E850(v39, v41, (v0 + 24));

      *(v31 + 14) = v42;
      *(v31 + 22) = 2080;
      v43 = sub_F077C();
      v45 = v44;

      v46 = sub_3E850(v43, v45, (v0 + 24));

      *(v31 + 24) = v46;
      _os_log_impl(&dword_0, v28, v29, "Assigning new ID %s for message %s to be sent to %s", v31, 0x20u);
      swift_arrayDestroy();

      (*(v37 + 8))(v70, v69);
      v26 = v33;
    }

    else
    {
      v55 = *(v0 + 216);
      v57 = *(v0 + 72);
      v56 = *(v0 + 80);
      v58 = *(v0 + 64);
      v59 = *(v0 + 40);
      swift_bridgeObjectRelease_n();

      (*(v57 + 8))(v56, v58);
    }

    v60 = *(v0 + 112);
    v61 = *(v60 + 136);

    *(v60 + 128) = v71;
    *(v60 + 136) = v26;
  }

  else
  {
    v54 = *(v0 + 216);
  }

  v62 = *(v0 + 200);
  v63 = *(v0 + 32);
  v64 = swift_task_alloc();
  *(v0 + 256) = v64;
  v65 = sub_388C8(&qword_128F08, &qword_F4400);
  *v64 = v0;
  v64[1] = sub_AE328;
  v66 = *(v0 + 112);
  v67 = *(v0 + 40);

  RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(v66, v67, v65);
}

uint64_t sub_AE328(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_AE428, 0, 0);
}

uint64_t sub_AE428()
{
  v1 = *(v0 + 112);
  sub_AE738(*(v0 + 264));
  result = sub_3897C(v1);
  v3 = *(v0 + 208) + 1;
  if (v3 == *(v0 + 192))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 184);
    v6 = *(v0 + 32);

    v7 = *(v6 + OBJC_IVAR___RCSMessageSender_outgoing);
    *(v6 + OBJC_IVAR___RCSMessageSender_outgoing) = v4;

    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 56);
    (*(v0 + 48))(1);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    *(v0 + 208) = v3;
    v14 = *(v0 + 184);
    if (v3 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 32);
      v16 = *(v14 + 8 * v3 + 32);
      *(v0 + 216) = v16;

      *(v0 + 224) = [v15 rcsSession];
      v17 = [v15 context];
      *(v0 + 232) = v17;
      v18 = swift_task_alloc();
      *(v0 + 240) = v18;
      *v18 = v0;
      v18[1] = sub_ADBC4;
      v19 = *(v0 + 88);
      v20 = *(v0 + 40);

      return sub_56124(v19, v20, 0, v16, v17);
    }
  }

  return result;
}

uint64_t sub_AE614()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_AE6B0()
{
  v1 = v0[31];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_AE738(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_6E964(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RCSMessage(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_AE864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_3FBA0(a3, v24 - v10);
  v12 = sub_F0B1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_372B0(v11, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_F0A6C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_F087C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_AEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_AEC7C, 0, 0);
}

uint64_t sub_AEC7C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_AED64;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 7, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_F43A0, v2, &type metadata for Bool);
}

uint64_t sub_AED64()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_AEE7C, 0, 0);
}

uint64_t sub_AEE7C()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 56));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_AF02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_388C8(&qword_128EF0, &qword_F43A8);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = *(type metadata accessor for RCSMessage(0) - 8);
  v3[15] = v7;
  v3[16] = *(v7 + 64);
  v3[17] = swift_task_alloc();
  v8 = *(*(sub_388C8(&qword_127EB0, &unk_F2B30) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_AF1A0, 0, 0);
}

uint64_t sub_AF1A0()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR___RCSMessageSender_outgoing);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v37 = *(v0 + 128);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v36 = **(v0 + 80);
    v34 = (v4 + 40) & ~v4;
    v35 = *(v3 + 72);
    v6 = sub_F0B1C();
    v7 = *(v6 - 8);
    v33 = *(v7 + 56);
    v32 = (v7 + 48);
    v31 = (v7 + 8);

    while (1)
    {
      v38 = v2;
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v12 = *(v0 + 136);
      v13 = *(v0 + 88);
      v33(v10, 1, 1, v6);
      sub_3C9A4(v5, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v13;
      sub_3CA08(v12, v14 + v34);
      sub_3FBA0(v10, v11);
      LODWORD(v11) = (*v32)(v11, 1, v6);
      v16 = v13;
      v17 = *(v0 + 144);
      if (v11 == 1)
      {
        sub_372B0(*(v0 + 144), &qword_127EB0, &unk_F2B30);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_F0B0C();
        (*v31)(v17, v6);
        if (*v15)
        {
LABEL_9:
          v20 = v14[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_F0A6C();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_F43C8;
      *(v22 + 24) = v14;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v36;
      swift_task_create();

      sub_372B0(v9, &qword_127EB0, &unk_F2B30);
      v5 += v35;
      v2 = v38 - 1;
      if (v38 == 1)
      {

        break;
      }
    }
  }

  v23 = *(v0 + 112);
  v24 = **(v0 + 80);
  sub_F0AAC();
  v25 = sub_B10EC();
  v26 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v27 = swift_task_alloc();
  *(v0 + 160) = v27;
  *v27 = v0;
  v27[1] = sub_AF544;
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v29, v25);
}

uint64_t sub_AF544()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v4 = sub_AF7CC;
  }

  else
  {
    v4 = sub_AF670;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AF670()
{
  v1 = *(v0 + 176);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v7 = v1 == 2;
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    v11 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v11 = v7;

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = sub_B10EC();
    v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_AF544;
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v6, v2);
  }
}

uint64_t sub_AF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = sub_F06CC();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_AF8C4, 0, 0);
}

uint64_t sub_AF8C4()
{
  v1 = v0[3];
  v2 = [v1 message];
  v0[9] = v2;
  v3 = [v1 chat];
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_AF9A8;
  v6 = v0[3];
  v5 = v0[4];

  return sub_B01F0(v2, v5, v3);
}

uint64_t sub_AF9A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_AFD18;
  }

  else
  {
    v6 = *(v3 + 72);

    v5 = sub_AFAC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_AFAC8()
{
  *(v0 + 112) = [*(v0 + 24) rcsSession];
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_AFB7C;
  v2 = *(v0 + 96);

  return sub_85668(v2);
}

uint64_t sub_AFB7C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_AFF84;
  }

  else
  {

    v4 = sub_AFC98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AFC98()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  **(v0 + 16) = 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_AFD18()
{
  v29 = v0;

  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);
  sub_3C9A4(v6, v5);
  swift_errorRetain();
  v8 = sub_F06AC();
  v9 = sub_F0CEC();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    v27 = v11;
    v28 = v25;
    v26 = v13;
    v17 = *(v14 + 128);
    v18 = *(v14 + 136);

    sub_3897C(v14);
    v19 = sub_3E850(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_0, v8, v9, "Error while sending message %s, %@", v15, 0x16u);
    sub_372B0(v16, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v25);

    (*(v12 + 8))(v27, v26);
  }

  else
  {

    sub_3897C(v14);
    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 64);
  v22 = *(v0 + 40);
  **(v0 + 16) = 0;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_AFF84()
{
  v30 = v0;
  v1 = *(v0 + 96);

  v2 = *(v0 + 128);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);

  v8 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v8, v5);
  sub_3C9A4(v7, v6);
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136315394;
    v28 = v12;
    v29 = v26;
    v27 = v14;
    v18 = *(v15 + 128);
    v19 = *(v15 + 136);

    sub_3897C(v15);
    v20 = sub_3E850(v18, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_0, v9, v10, "Error while sending message %s, %@", v16, 0x16u);
    sub_372B0(v17, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v26);

    (*(v13 + 8))(v28, v27);
  }

  else
  {

    sub_3897C(v15);
    (*(v13 + 8))(v12, v14);
  }

  v22 = *(v0 + 64);
  v23 = *(v0 + 40);
  **(v0 + 16) = 0;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_B01F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_F06CC();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_B02E0, 0, 0);
}

uint64_t sub_B02E0()
{
  v1 = [*(v0 + 16) guid];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = *(v0 + 40);
    *(v0 + 88) = sub_F07EC();
    *(v0 + 96) = v3;
    *(v0 + 104) = [v2 rcsSession];
    *(v0 + 112) = sub_F0AEC();
    *(v0 + 120) = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_B0454, v5, v4);
  }

  else
  {
    sub_5F980();
    swift_allocError();
    v6 = *(v0 + 72);
    v7 = *(v0 + 48);
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_B0454()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  sub_55CFC(v3, v4);
  v6 = v5;
  LOBYTE(v4) = v7;

  *(v0 + 128) = v6;
  *(v0 + 188) = v4;

  return _swift_task_switch(sub_B04F0, 0, 0);
}

uint64_t sub_B04F0()
{
  v44 = v0;
  if (*(v0 + 188))
  {
    v1 = *(v0 + 96);
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = Logger.rcs.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v5, v4);

    v6 = sub_F06AC();
    v7 = sub_F0CEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);
      v11 = *(v0 + 64);
      v42 = *(v0 + 72);
      v12 = *(v0 + 56);
      v13 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_3E850(v10, v9, &v43);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v0 + 184) = v8;
      type metadata accessor for FZErrorType(0);
      v15 = sub_F083C();
      v17 = sub_3E850(v15, v16, &v43);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_0, v6, v7, "Cannot find context to send message %s error %s", v13, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v42, v12);
    }

    else
    {
      v35 = *(v0 + 96);
      v37 = *(v0 + 64);
      v36 = *(v0 + 72);
      v38 = *(v0 + 56);

      (*(v37 + 8))(v36, v38);
    }

    v39 = *(v0 + 112);
    *(v0 + 136) = [*(v0 + 40) rcsSession];
    *(v0 + 144) = sub_F0ADC();
    v41 = sub_F0A6C();

    return _swift_task_switch(sub_B08A0, v41, v40);
  }

  else
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    v24 = *(v0 + 16);

    sub_3C9A4(v22, v21);
    v25 = type metadata accessor for RCSMessageSendItem(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v29 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    v30 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v30 - 8) + 56))(v28 + v29, 1, 4, v30);
    *(v28 + 16) = v24;
    sub_3CA08(v21, v28 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
    *(v28 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context) = v18;
    *(v28 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) = v23;
    v31 = v24;
    v32 = v23;

    v33 = *(v0 + 8);

    return v33(v28);
  }
}

uint64_t sub_B08A0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];

  [v2 didReceiveError:5 forMessageID:v3 forceError:1];

  return _swift_task_switch(sub_B092C, 0, 0);
}

uint64_t sub_B092C()
{
  v1 = *(v0 + 112);
  *(v0 + 152) = [*(v0 + 40) rcsSession];
  *(v0 + 160) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_B09D4, v3, v2);
}

uint64_t sub_B09D4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[10];

  [v2 processMessageSendFailure:v3];

  return _swift_task_switch(sub_B0A5C, 0, 0);
}

uint64_t sub_B0A5C()
{
  v1 = *(v0 + 112);
  *(v0 + 168) = [*(v0 + 40) rcsSession];
  *(v0 + 176) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_B0B04, v3, v2);
}

uint64_t sub_B0B04()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  sub_92540(v5, v3, v4, 5u, 0.0);

  return _swift_task_switch(sub_B0B98, 0, 0);
}

uint64_t sub_B0B98()
{
  sub_5F980();
  swift_allocError();
  v1 = v0[9];
  v2 = v0[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

unint64_t type metadata accessor for RCSMessageSender()
{
  result = qword_128EE8;
  if (!qword_128EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128EE8);
  }

  return result;
}

uint64_t sub_B0DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_AEC58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_B0E8C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_38B0C;

  return sub_AF02C(a1, a2, v6);
}

uint64_t sub_B0F3C(uint64_t a1)
{
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38B0C;

  return sub_AF7D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_B1034(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38B0C;

  return sub_3EE7C(a1, v5);
}

unint64_t sub_B10EC()
{
  result = qword_128EF8;
  if (!qword_128EF8)
  {
    sub_3CB70(&qword_128EF0, &qword_F43A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128EF8);
  }

  return result;
}

uint64_t sub_B1150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_37C54;

  return sub_AD3C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_B122C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B1244(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128F08, &qword_F4400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B12B8()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_128F18);
  v1 = sub_3C96C(v0, qword_128F18);
  if (qword_128F50 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.groups);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RCSSpamReportOperation.id.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_B13EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for RCSGroupOperation();
  v9 = (a5 + *(result + 28));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_B146C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_B1480(uint64_t a1)
{
  sub_37380(a1, v11, &unk_127FB0, &qword_F2F40);
  v3 = v12;
  if (v12)
  {
    v4 = sub_373E8(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_F121C();
    (*(v5 + 8))(v8, v3);
    sub_1EDC(v11);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_128F30, v9, &dword_0 + 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_372B0(a1, &unk_127FB0, &qword_F2F40);
}

uint64_t RCSSpamReportingController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RCSGroupController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_5EA8;
}

uint64_t sub_B1728(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_11F660;
  v7._object = a2;
  v4 = sub_F112C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B177C(char a1)
{
  if (a1)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_B17A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B181C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B1888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B18F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B1968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_B1728(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_B19A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_B177C(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_B19D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_F035C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_B1A48(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 32);
  if (v4 <= 1)
  {
    if (*(v1 + 32))
    {
      v11 = v1 + *(a1 + 36);
      return sub_F032C();
    }

    v9 = 0x7247657461657263;
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    v9 = 0x6F7247657661656CLL;
LABEL_14:
    v12 = v9;
    goto LABEL_16;
  }

  if (v4 == 3)
  {
    v5 = *(v1 + 24);
    v6 = *(v1 + 16);
    sub_F0F9C(30);

    v12 = 0xD000000000000013;
    v13._countAndFlagsBits = v3;
    v13._object = v2;
    sub_F08CC(v13);
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    sub_F08CC(v14);
    if (v6)
    {
      v7._countAndFlagsBits = 0x65766F6D6572;
    }

    else
    {
      v7._countAndFlagsBits = 6579297;
    }

    if (v6)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v7._object = v8;
    sub_F08CC(v7);

    v15._countAndFlagsBits = 8236;
    v15._object = 0xE200000000000000;
    sub_F08CC(v15);
    sub_388C8(&qword_128558, &unk_F4430);
    sub_96AA4();
    v16._countAndFlagsBits = sub_F079C();
    sub_F08CC(v16);

    goto LABEL_17;
  }

  sub_F0F9C(23);

  v12 = 0xD000000000000014;
LABEL_16:
  v17._countAndFlagsBits = v3;
  v17._object = v2;
  sub_F08CC(v17);
LABEL_17:
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  sub_F08CC(v18);
  return v12;
}

uint64_t sub_B1C50()
{
  if (*(v0 + 32) > 3u)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t sub_B1CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t RCSGroupController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  RCSGroupController.init(delegate:operationConfiguration:)(a1, a2);
  return v4;
}

uint64_t *RCSGroupController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7 = *(a2 + 32);
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = *(v6 + 80);
  *(v10 + 24) = *(v6 + 88);
  v11 = *(a2 + 1);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 72) = a1;
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = &unk_F4428;
  v13[3] = v10;
  v14 = v7;
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  v3[3] = RCSOperationController.init(configuration:)(v13);
  return v3;
}

uint64_t sub_B1E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[22] = AssociatedTypeWitness;
  v9 = sub_F0DEC();
  v7[23] = v9;
  v10 = *(v9 - 8);
  v7[24] = v10;
  v11 = *(v10 + 64) + 15;
  v7[25] = swift_task_alloc();
  v12 = *(AssociatedTypeWitness - 8);
  v7[26] = v12;
  v13 = *(v12 + 64) + 15;
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_5F28, 0, 0);
}

unint64_t RCSGroupController.GroupOperationError.errorDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000018;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000043;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = *v6;
    if (EnumCaseMultiPayload == 1)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_F0F9C(52);
      v18._countAndFlagsBits = 0xD000000000000032;
      v18._object = 0x80000000000FFF50;
      sub_F08CC(v18);
      v15[1] = v8;
      sub_388C8(&qword_128558, &unk_F4430);
      sub_96AA4();
      v9 = sub_F079C();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
    }

    else
    {
      v14 = v6[1];
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_F0F9C(18);

      v16 = 0xD000000000000010;
      v17 = 0x80000000000FFF30;
      v12._countAndFlagsBits = v8;
      v12._object = v14;
    }

    sub_F08CC(v12);

    return v16;
  }

  else
  {
    (*(v2 + 8))(v6, a1);
    return 0xD000000000000047;
  }
}

uint64_t RCSSpamReportingController.deinit()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RCSSpamReportingController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_B2298(unint64_t a1, void *a2, uint64_t a3)
{
  v92 = a1;
  v6 = *v3;
  v89 = v3;
  v90 = v6;
  v7 = (*(*(sub_388C8(&qword_127EB0, &unk_F2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v91 = &v77 - v8;
  v9 = sub_F0DEC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = (__chkstk_darwin)();
  v14 = &v77 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v82 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v83 = &v77 - v20;
  __chkstk_darwin(v19);
  v22 = &v77 - v21;
  sub_3CB70(&qword_127B88, &qword_F3680);
  v23 = sub_F133C();
  v87 = *(v23 - 8);
  v88 = v23;
  v24 = *(v87 + 64);
  v25 = __chkstk_darwin(v23);
  v84 = v26;
  v85 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v86 = (&v77 - v27);
  v28 = a2[3];
  v29 = a2[4];
  sub_373E8(a2, v28);
  v30 = *(v29 + 8);
  v31 = v29;
  v32 = a3;
  v93 = v30(v28, v31);
  v34 = v33;
  (*(v10 + 16))(v14, v92, v9);
  v35 = (*(v15 + 48))(v14, 1, v32);
  v92 = v34;
  if (v35 == 1)
  {
    (*(v10 + 8))(v14, v9);
    v36 = v90;
LABEL_9:
    v52 = a2[3];
    v53 = a2[4];
    sub_373E8(a2, v52);
    v54 = (*(v53 + 24))(v52, v53);
    if (v54)
    {
      v55 = v54;
    }

    else
    {
      v56 = *(v36 + 80);
      v57 = *(v36 + 88);
      type metadata accessor for RCSGroupController.GroupOperationError();
      swift_getWitnessTable();
      v55 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    if (qword_128F10 != -1)
    {
      swift_once();
    }

    v58 = sub_F06CC();
    sub_3C96C(v58, qword_128F18);

    swift_errorRetain();
    v59 = sub_F06AC();
    v60 = sub_F0CEC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v94 = v63;
      *v61 = 136315394;
      *(v61 + 4) = sub_3E850(v93, v34, &v94);
      *(v61 + 12) = 2112;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v64;
      *v62 = v64;
      _os_log_impl(&dword_0, v59, v60, "Group operation failed with ID %s error %@", v61, 0x16u);
      sub_372B0(v62, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v63);
    }

    v65 = v86;
    *v86 = v55;
    goto LABEL_19;
  }

  v37 = *(v15 + 32);
  v37(v22, v14, v32);
  v38 = v32;
  v39 = a2[3];
  v40 = a2[4];
  sub_373E8(a2, v39);
  if (((*(v40 + 16))(v39, v40) & 1) == 0)
  {
    (*(v15 + 8))(v22, v38);
    v32 = v38;
    v36 = v90;
    v34 = v92;
    goto LABEL_9;
  }

  v79 = v37;
  v80 = v22;
  v81 = v38;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v41 = sub_F06CC();
  sub_3C96C(v41, qword_128F18);
  v42 = *(v15 + 16);
  v43 = v83;
  v32 = v81;
  v42(v83, v80, v81);
  v44 = v92;

  v45 = sub_F06AC();
  v46 = sub_F0CDC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v94 = v78;
    *v47 = 136315394;
    *(v47 + 4) = sub_3E850(v93, v44, &v94);
    *(v47 + 12) = 2080;
    v42(v82, v43, v32);
    v48 = sub_F083C();
    v50 = v49;
    (*(v15 + 8))(v43, v81);
    v51 = sub_3E850(v48, v50, &v94);
    v32 = v81;

    *(v47 + 14) = v51;
    _os_log_impl(&dword_0, v45, v46, "Group operation completed with ID %s output %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v15 + 8))(v43, v32);
  }

  v36 = v90;
  v66 = v86;
  v79(v86, v80, v32);
  v65 = v66;
LABEL_19:
  v67 = v88;
  swift_storeEnumTagMultiPayload();
  v68 = v91;
  sub_F0AFC();
  v69 = sub_F0B1C();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v89[3];
  v71 = v87;
  v72 = v85;
  (*(v87 + 16))(v85, v65, v67);
  v73 = (*(v71 + 80) + 80) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 2) = 0;
  *(v74 + 3) = 0;
  *(v74 + 4) = *(v36 + 80);
  *(v74 + 5) = v32;
  *(v74 + 6) = *(v36 + 88);
  *(v74 + 7) = v70;
  v75 = v92;
  *(v74 + 8) = v93;
  *(v74 + 9) = v75;
  (*(v71 + 32))(&v74[v73], v72, v67);

  sub_3CC0C(0, 0, v68, &unk_F4A50, v74);

  return (*(v71 + 8))(v65, v67);
}

uint64_t sub_B2BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_12798;

  return RCSOperationController.operation<A>(id:completedWithResult:)(a5, a6, a7, v14);
}

uint64_t RCSGroupController.groupOperationFailed(with:operationID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v12 = sub_F06CC();
  sub_3C96C(v12, qword_128F18);

  swift_errorRetain();
  v13 = sub_F06AC();
  v14 = sub_F0CEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_3E850(a2, a3, &v24);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&dword_0, v13, v14, "Group operation failed with ID %s error %@", v15, 0x16u);
    sub_372B0(v16, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v17);
  }

  sub_F0AFC();
  v19 = sub_F0B1C();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  v20 = *(v4 + 24);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a1;

  swift_errorRetain();

  sub_3CC0C(0, 0, v11, &unk_F4448, v21);
}

uint64_t sub_B2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_68F4;

  return (sub_E10D8)(a5, a6, a7, 1);
}

unint64_t RCSGroupController.GroupCreateError.errorDescription.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return 0xD000000000000022;
    }

    v3 = v0;
    v2 = *v0;
    v1 = v3[1];
  }

  else
  {
    v5 = v0 + 2;
    v2 = v0[2];
    v4 = v5[1];
  }

  return v2;
}

uint64_t *sub_B3094(uint64_t a1)
{
  v4 = *v1;
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = *(v4 + 88);
  v11 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v12 = *(v71 + 64);
  v13 = __chkstk_darwin(AssociatedTypeWitness);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = (&v63 - v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v11;
  }

  v17 = Strong;
  v64 = v9;
  v65 = v6;
  v66 = v5;
  v70 = [objc_allocWithZone(CTLazuliGroupChatParticipantList) init];
  v18 = (*(v10 + 48))(a1, v11, v10);
  v75 = v11;
  v76 = v19;
  v20 = *(v10 + 64);
  v69 = a1;
  v72 = v17;
  v21 = v20(a1, v11, v10);
  v22 = v21;
  v79 = &_swiftEmptyArrayStorage;
  v23 = *(v21 + 16);
  v73 = v10;
  if (v23)
  {
    v24 = 0;
    v11 = (v21 + 40);
    while (v24 < *(v22 + 16))
    {
      v25 = *v11;
      v78[0] = *(v11 - 1);
      v78[1] = v25;

      sub_B39EC(v78, v18, v76, &v77);
      if (v2)
      {

        swift_unknownObjectRelease();

        return v11;
      }

      if (v77)
      {
        sub_F09DC();
        if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_F0A1C();
        }

        sub_F0A3C();
        v10 = v73;
      }

      ++v24;
      v11 += 2;
      v6 = v74;
      if (v23 == v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = v74;
LABEL_13:

    sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
    v26 = sub_F09EC();

    v18 = v70;
    [v70 setMemberList:v26];

    v27 = [v18 memberList];
    v28 = sub_F09FC();

    if (!(v28 >> 62))
    {
      v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_15;
    }
  }

  v29 = sub_F10DC();
LABEL_15:
  v30 = v71;
  v31 = v75;

  if (v29)
  {
    (*(v10 + 88))(v69, v31, v10);
    if (v32)
    {
      v33 = [objc_allocWithZone(CTLazuliGroupChatSubject) init];
      v34 = sub_F07BC();

      [v33 setDisplayString:v34];
    }

    else
    {
      v33 = 0;
    }

    v48 = [objc_allocWithZone(CTLazuliGroupChatInformation) init];
    v49 = v18;
    [v48 setParticipants:v18];
    [v48 setSubject:v33];
    if (qword_128F88 != -1)
    {
      swift_once();
    }

    v50 = v66;
    v51 = sub_3C96C(v66, qword_129D98);
    v52 = v64;
    v53 = v65;
    (v65[2])(v64, v51, v50);
    sub_F044C();
    (v53[1])(v52, v50);
    if (v78[0])
    {
      v54 = 0;
    }

    else
    {
      v54 = (*(v10 + 96))(v69, v31, v10);
    }

    [v48 setSecure:v54 & 1];
    v55 = v49;
    if (qword_128F10 != -1)
    {
      swift_once();
    }

    v56 = sub_F06CC();
    sub_3C96C(v56, qword_128F18);
    v11 = v48;
    v57 = sub_F06AC();
    v58 = sub_F0CCC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67109120;
      *(v59 + 4) = [v11 secure];

      _os_log_impl(&dword_0, v57, v58, "Creating group with encryption: %{BOOL}d", v59, 8u);
    }

    else
    {

      v55 = v33;
      v33 = v11;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v35 = sub_F06CC();
    sub_3C96C(v35, static Logger.groups);
    v36 = *(v30 + 16);
    v37 = AssociatedTypeWitness;
    v36(v6, v69, AssociatedTypeWitness);
    v38 = sub_F06AC();
    v39 = sub_F0CFC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v76) = v39;
      v41 = v40;
      v74 = swift_slowAlloc();
      v78[0] = v74;
      *v41 = 136315138;
      v36(v67, v6, v37);
      v42 = sub_F083C();
      v43 = v6;
      v44 = v42;
      v46 = v45;
      (*(v30 + 8))(v43, v37);
      v47 = sub_3E850(v44, v46, v78);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_0, v38, v76, "Refusing to create group chat information for empty group %s", v41, 0xCu);
      v11 = v74;
      sub_1EDC(v74);
    }

    else
    {

      v60 = *(v30 + 8);
      v11 = (v30 + 8);
      v60(v6, v37);
    }

    type metadata accessor for RCSGroupController.GroupCreateError();
    swift_getWitnessTable();
    swift_allocError();
    *v61 = 0u;
    *(v61 + 16) = 0u;
    *(v61 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v11;
}

void sub_B39EC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_F07BC();
  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    v10 = sub_53E04(&_swiftEmptyArrayStorage);
    sub_E7DC8(&_swiftEmptyArrayStorage);
    v11 = sub_E5BB4(v10);

    v19[0] = 7103860;
    v19[1] = 0xE300000000000000;
    v19[2] = v6;
    v19[3] = v7;
    v19[5] = 0;
    v19[6] = 0;
    v19[4] = v11;
    v20 = 0;
    v16[0] = 7103860;
    v16[1] = 0xE300000000000000;
    v16[2] = v6;
    v16[3] = v7;
    v16[5] = 0;
    v16[6] = 0;
    v16[4] = v11;
    v17 = 0;
    sub_38910(v19, v15);
    sub_3CAB8(v16);

    sub_E9B14(v18, v19, a2, a3);

    sub_3CAB8(v19);
    RCSHandle.rawValue.getter();
    sub_3CAB8(v18);
    v12 = [objc_allocWithZone(CTLazuliGroupChatParticipant) init];
    v13 = sub_F07BC();

    [v12 setMember:v13];

    *v21 = v12;
  }

  else
  {
    sub_F0F9C(62);
    v22._object = 0x80000000001000F0;
    v22._countAndFlagsBits = 0xD00000000000003CLL;
    sub_F08CC(v22);
    v23._countAndFlagsBits = v6;
    v23._object = v7;
    sub_F08CC(v23);
    type metadata accessor for RCSGroupController.GroupCreateError();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v7;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = 0;
    swift_willThrow();
  }
}

uint64_t sub_B3C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *v3;
  v4[9] = *(*v3 + 88);
  v4[10] = *(v5 + 80);
  v4[11] = swift_getAssociatedTypeWitness();
  v6 = sub_F0DEC();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_69E8, 0, 0);
}

uint64_t sub_B3D70(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *v2;
  v3[13] = *(*v2 + 88);
  v3[14] = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v5 = sub_F0DEC();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[19] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v3[20] = v8;
  v3[21] = *(v8 + 64);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_6E90, 0, 0);
}

uint64_t sub_B3F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v9 = *a3;
  v6[7] = *(*a3 + 88);
  v6[8] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v11 = type metadata accessor for RCSGroupOperation();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v14 = *(AssociatedTypeWitness - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[16] = v16;
  v17 = swift_task_alloc();
  v6[17] = v17;
  *v17 = v6;
  v17[1] = sub_7544;

  return sub_B3C4C(v16, a4, a5);
}

uint64_t RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = *v3;
  return _swift_task_switch(sub_7DFC, 0, 0);
}

uint64_t RCSGroupController.groupCreationCompleted(with:operationResult:subscriptionContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  if (a1)
  {
    v9 = *(v6 + 80);
    v8 = *(v6 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14[3] = AssociatedTypeWitness;
    v11 = sub_37474(v14);
    (*(*(AssociatedTypeWitness - 8) + 16))(v11, a3, AssociatedTypeWitness);
    sub_B1480(v14);
  }

  v14[0] = a1;
  v12 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  return sub_B2298(v14, a2, v12);
}

uint64_t RCSGroupController.renameGroup(chat:to:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = *v4;
  v5[34] = *(*v4 + 88);
  v5[35] = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_F0DEC();
  v5[36] = v7;
  v8 = *(v7 - 8);
  v5[37] = v8;
  v5[38] = *(v8 + 64);
  v5[39] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[40] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v5[41] = v10;
  v5[42] = *(v10 + 64);
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_8BA8, 0, 0);
}

uint64_t sub_B43E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v22;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a1;
  v8[3] = a2;
  v11 = *a3;
  v8[8] = *(*a3 + 88);
  v8[9] = *(v11 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v13 = type metadata accessor for RCSGroupOperation();
  v8[11] = v13;
  v14 = *(v13 - 8);
  v8[12] = v14;
  v15 = *(v14 + 64) + 15;
  v8[13] = swift_task_alloc();
  v16 = *(AssociatedTypeWitness - 8);
  v8[14] = v16;
  v17 = *(v16 + 64) + 15;
  v8[15] = swift_task_alloc();
  v18 = swift_task_alloc();
  v8[16] = v18;
  v19 = swift_task_alloc();
  v8[17] = v19;
  *v19 = v8;
  v19[1] = sub_9708;

  return sub_B3C4C(v18, a4, a5);
}

uint64_t RCSGroupController.groupRenameCompleted(with:operationResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return sub_B2298(v4, a3, &type metadata for String);
}

uint64_t RCSGroupController.leaveGroup(chat:subscriptionContext:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = *v2;
  v3[32] = *(*v2 + 88);
  v3[33] = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v5 = sub_F0DEC();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v3[36] = *(v6 + 64);
  v3[37] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[38] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v3[39] = v8;
  v3[40] = *(v8 + 64);
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_9B3C, 0, 0);
}

uint64_t sub_B479C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a2;
  v10 = *a3;
  v7[6] = *(*a3 + 88);
  v7[7] = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  v12 = type metadata accessor for RCSGroupOperation();
  v7[9] = v12;
  v13 = *(v12 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v15 = *(AssociatedTypeWitness - 8);
  v7[12] = v15;
  v16 = *(v15 + 64) + 15;
  v7[13] = swift_task_alloc();
  v17 = swift_task_alloc();
  v7[14] = v17;
  v18 = swift_task_alloc();
  v7[15] = v18;
  *v18 = v7;
  v18[1] = sub_A654;

  return sub_B3C4C(v17, a4, a5);
}

uint64_t RCSGroupController.groupExitCompleted(with:)(void *a1)
{
  v4 = &type metadata for () + 8;
  v2 = sub_388C8(qword_128FC8, &qword_F44A8);
  return sub_B2298(&v4, a1, v2);
}

uint64_t sub_B49C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v6 + 80);
    v37 = *(v6 + 88);
    v9 = type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v9;
  }

  v39 = (*(*(v6 + 88) + 32))(a2, *(v6 + 80));
  v8 = v7;
  v9 = sub_E88C4(_swiftEmptyArrayStorage);
  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_17:

    swift_unknownObjectRelease();
    return v9;
  }

  v11 = (a1 + 40);
  while (1)
  {
    v16 = *(v11 - 1);
    v15 = *v11;
    swift_bridgeObjectRetain_n();
    v17._countAndFlagsBits = v16;
    v17._object = v15;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v40, v17, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v18)
    {

      swift_unknownObjectRelease();

      return v9;
    }

    sub_E9B14(v41, &v40, v39, v8);

    sub_3CAB8(&v40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v9;
    v20 = sub_E759C(v41);
    v22 = v9[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v9[3] < v25)
    {
      sub_BA910(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_E759C(v41);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v35 = v20;
    sub_BCAF4();
    v20 = v35;
    if (v26)
    {
LABEL_4:
      v12 = v20;
      sub_3CAB8(v41);
      v9 = v43;
      v13 = (v43[7] + 16 * v12);
      v14 = v13[1];
      *v13 = v16;
      v13[1] = v15;

      goto LABEL_5;
    }

LABEL_13:
    v9 = v43;
    v43[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v9[6] + (v20 << 6));
    v29 = *&v42[9];
    v30 = *v42;
    v31 = v41[1];
    *v28 = v41[0];
    v28[1] = v31;
    v28[2] = v30;
    *(v28 + 41) = v29;
    v32 = (v9[7] + 16 * v20);
    *v32 = v16;
    v32[1] = v15;

    v33 = v9[2];
    v24 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v24)
    {
      goto LABEL_22;
    }

    v9[2] = v34;
LABEL_5:
    v11 += 2;
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t sub_B4D10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);

      do
      {
        v11 = v5[1];
        v23[0] = *v5;
        v23[1] = v11;
        v24[0] = v5[2];
        *(v24 + 9) = *(v5 + 41);
        sub_38910(v23, v21);
        v12 = sub_E759C(v23);
        v14 = v13;
        sub_3CAB8(v23);
        if (v14)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v3;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_BCAF4();
            v3 = v25;
          }

          v6 = (v3[6] + (v12 << 6));
          v7 = *(v6 + 41);
          v8 = v6[2];
          v9 = *v6;
          v21[1] = v6[1];
          v22[0] = v8;
          v21[0] = v9;
          *(v22 + 9) = v7;
          sub_3CAB8(v21);
          v10 = *(v3[7] + 16 * v12 + 8);

          sub_ED014(v12, v3);
        }

        v5 += 4;
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    type metadata accessor for RCSGroupController.GroupOperationError();
    swift_getWitnessTable();
    swift_allocError();
    v17 = v16;
    v18 = v3[2];
    if (v18)
    {
      v19 = sub_9D6B8(v3[2], 0);
      v20 = sub_BDF68(v21, v19 + 4, v18, v3);

      sub_66138();
      if (v20 == v18)
      {
LABEL_15:
        *v17 = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      __break(1u);
    }

    v19 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_B4F28@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  sub_3928(a2, (a9 + 8));
  *(a9 + 6) = a3;
  *(a9 + 7) = a4;
  *(a9 + 8) = a5;
  v16 = type metadata accessor for RCSGroupController.ParticipantModificationContext();
  v17 = *(v16 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v17], a6, AssociatedTypeWitness);
  v20 = &a9[*(v16 + 52)];
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t sub_B5018(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 497) = a3;
  *(v7 + 216) = a1;
  *(v7 + 224) = a2;
  v8 = *v6;
  *(v7 + 264) = *(*v6 + 80);
  *(v7 + 272) = *(v8 + 88);
  v9 = type metadata accessor for RCSGroupController.OperationID();
  *(v7 + 280) = v9;
  v10 = *(v9 - 8);
  *(v7 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 304) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v7 + 312) = v13;
  *(v7 + 320) = *(v13 + 64);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  *(v7 + 344) = v14;
  v15 = *(v14 - 8);
  *(v7 + 352) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_AA74, 0, 0);
}

uint64_t sub_B5210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v19;
  v8[18] = v20;
  v8[15] = v17;
  v8[16] = v18;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for RCSGroupController.ParticipantModificationContext();
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_BAE8, 0, 0);
}

char *RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(void *a1, id a2)
{
  if (a1)
  {
    v2 = [a1 memberList];
    sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
    v3 = sub_F09FC();

    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_51;
    }

    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    while (1)
    {
      if (v5)
      {
        v6 = v4;
        v77 = _swiftEmptyArrayStorage;
        result = sub_6EB68(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          return result;
        }

        v8 = 0;
        v9 = v77;
        v10 = v6;
        v73 = v6 & 0xC000000000000001;
        v11 = v6;
        v12 = v5;
        do
        {
          if (v73)
          {
            v13 = sub_F0FCC();
          }

          else
          {
            v13 = *&v10[8 * v8 + 32];
          }

          v14 = v13;
          v15 = [v14 member];
          v16 = sub_F07EC();
          v18 = v17;

          v77 = v9;
          v20 = v9[2];
          v19 = v9[3];
          if (v20 >= v19 >> 1)
          {
            sub_6EB68((v19 > 1), v20 + 1, 1);
            v9 = v77;
          }

          ++v8;
          v9[2] = v20 + 1;
          v21 = &v9[2 * v20];
          v21[4] = v16;
          v21[5] = v18;
          v10 = v11;
        }

        while (v12 != v8);

        v22 = v9[2];
        if (v22)
        {
LABEL_14:
          v77 = _swiftEmptyArrayStorage;
          v4 = sub_B6864(0, v22, 0);
          v23 = 0;
          v24 = v77;
          v25 = (v9 + 5);
          while (1)
          {
            if (v23 >= v9[2])
            {
              __break(1u);
              goto LABEL_50;
            }

            v26 = *(v25 - 1);
            v27 = *v25;

            v28._countAndFlagsBits = v26;
            v28._object = v27;
            RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v75, v28, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
            if (v29)
            {
              break;
            }

            v77 = v24;
            v31 = v24[2];
            v30 = v24[3];
            if (v31 >= v30 >> 1)
            {
              v4 = sub_B6864((v30 > 1), v31 + 1, 1);
              v24 = v77;
            }

            ++v23;
            v24[2] = v31 + 1;
            v32 = &v24[8 * v31];
            scheme = v75.scheme;
            id = v75.id;
            v35 = *&v75.attributes._rawValue;
            *(v32 + 73) = *(&v75.alternateHandle + 1);
            *(v32 + 3) = id;
            *(v32 + 4) = v35;
            *(v32 + 2) = scheme;
            v25 += 2;
            if (v22 == v23)
            {

              goto LABEL_26;
            }
          }

          v37 = a2;
LABEL_47:

          return v24;
        }
      }

      else
      {

        v9 = _swiftEmptyArrayStorage;
        v22 = _swiftEmptyArrayStorage[2];
        if (v22)
        {
          goto LABEL_14;
        }
      }

      v24 = _swiftEmptyArrayStorage;
LABEL_26:
      v36 = a2;
      if (!a2)
      {

        return v24;
      }

LABEL_27:
      v38 = [v36 memberList];
      sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
      v39 = sub_F09FC();

      if (v39 >> 62)
      {
        v40 = sub_F10DC();
        if (!v40)
        {
LABEL_53:

          v42 = _swiftEmptyArrayStorage;
          v55 = _swiftEmptyArrayStorage[2];
          if (!v55)
          {
            goto LABEL_54;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
        if (!v40)
        {
          goto LABEL_53;
        }
      }

      v77 = _swiftEmptyArrayStorage;
      result = sub_6EB68(0, v40 & ~(v40 >> 63), 0);
      if (v40 < 0)
      {
        goto LABEL_57;
      }

      v70 = v24;
      v41 = 0;
      v42 = v77;
      v43 = v39;
      v74 = v39 & 0xC000000000000001;
      v44 = v39;
      v45 = v40;
      do
      {
        if (v74)
        {
          v46 = sub_F0FCC();
        }

        else
        {
          v46 = *(v43 + 8 * v41 + 32);
        }

        v47 = v46;
        v48 = [v47 member];
        v49 = sub_F07EC();
        v51 = v50;

        v77 = v42;
        v53 = v42[2];
        v52 = v42[3];
        if (v53 >= v52 >> 1)
        {
          sub_6EB68((v52 > 1), v53 + 1, 1);
          v42 = v77;
        }

        ++v41;
        v42[2] = v53 + 1;
        v54 = &v42[2 * v53];
        v54[4] = v49;
        v54[5] = v51;
        v43 = v44;
      }

      while (v45 != v41);

      v24 = v70;
      v55 = v42[2];
      if (!v55)
      {
LABEL_54:

        return v24;
      }

LABEL_38:
      v77 = _swiftEmptyArrayStorage;
      v4 = sub_B6864(0, v55, 0);
      v56 = 0;
      v57 = v77;
      v58 = (v42 + 5);
      while (v56 < v42[2])
      {
        v59 = *(v58 - 1);
        v60 = *v58;

        v61._countAndFlagsBits = v59;
        v61._object = v60;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v76, v61, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v62)
        {

          v37 = a1;
          goto LABEL_47;
        }

        v77 = v57;
        v64 = v57[2];
        v63 = v57[3];
        if (v64 >= v63 >> 1)
        {
          v4 = sub_B6864((v63 > 1), v64 + 1, 1);
          v57 = v77;
        }

        ++v56;
        v57[2] = v64 + 1;
        v65 = &v57[8 * v64];
        v66 = v76.scheme;
        v67 = v76.id;
        v68 = *&v76.attributes._rawValue;
        *(v65 + 73) = *(&v76.alternateHandle + 1);
        *(v65 + 3) = v67;
        *(v65 + 4) = v68;
        *(v65 + 2) = v66;
        v58 += 2;
        if (v55 == v56)
        {
          goto LABEL_54;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v69 = v4;
      v5 = sub_F10DC();
      v4 = v69;
    }
  }

  v36 = a2;
  if (a2)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_B59A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RCSGroupOperation();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_BEC0, 0, 0);
}

uint64_t RCSGroupController.addParticipants(_:to:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_C0F4, 0, 0);
}

uint64_t sub_B5B3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for RCSGroupController.ParticipantModificationContext();
  *v1 = v0;
  v1[1] = sub_C378;

  return sub_B59A8(v2);
}

uint64_t sub_B5BF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RCSGroupOperation();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_C470, 0, 0);
}

uint64_t RCSGroupController.removeParticipants(_:from:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_C5C4, 0, 0);
}

uint64_t sub_B5D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for RCSGroupController.ParticipantModificationContext();
  *v1 = v0;
  v1[1] = sub_1279C;

  return sub_B5BF8(v2);
}

double variable initialization expression of RCSGroup.icon@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_B5E98(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_CE3C, v1, 0);
}

uint64_t sub_B5EB8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(sub_D434, v1, 0);
}

uint64_t sub_B5ED8(uint64_t a1)
{
  sub_37380(a1, v7, &qword_128B88, &qword_F3F30);
  if (v8)
  {
    return *&v7[0];
  }

  v2 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if (swift_dynamicCast())
  {
    v1 = *&v6[0];
    sub_1EDC(v7);
  }

  else
  {
    sub_54F88(v7, v6);
    sub_B777C();
    v1 = swift_allocError();
    v4 = v3;
    sub_3FE38(v6, v3);
    *(v4 + 32) = v2;
    *(v4 + 56) = 1;
    sub_1EDC(v6);
  }

  return v1;
}

uint64_t sub_B5FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_37380(a1, v9, &qword_128B88, &qword_F3F30);
  if (v10)
  {
    *a2 = *&v9[0];
    *(a2 + 40) = 1;
  }

  else
  {
    v4 = sub_388C8(&qword_129378, &qword_F49E0);
    if (swift_dynamicCast())
    {
      sub_3928(v8, a2);
      *(a2 + 40) = 0;
      return sub_1EDC(v9);
    }

    else
    {
      sub_54F88(v9, v8);
      sub_B777C();
      v5 = swift_allocError();
      v7 = v6;
      sub_3FE38(v8, v6);
      *(v7 + 32) = v4;
      *(v7 + 56) = 1;
      result = sub_1EDC(v8);
      *a2 = v5;
      *(a2 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_B60E8(uint64_t a1)
{
  sub_B5ED8(a1);
  if (v1)
  {
    sub_388C8(qword_1293A0, &unk_F4A80);
    return sub_F0A7C();
  }

  else
  {
    sub_388C8(qword_1293A0, &unk_F4A80);
    return sub_F0A8C();
  }
}

uint64_t sub_B6164(uint64_t a1)
{
  sub_37380(a1, v3, &qword_128B88, &qword_F3F30);
  if (v4)
  {
    v5[0] = *&v3[0];
    v6 = 1;
  }

  else
  {
    sub_3FE38(v3, v5);
    v6 = 0;
    sub_1EDC(v3);
  }

  sub_37380(v5, v3, &qword_128B88, &qword_F3F30);
  if (v4)
  {
    *&v2 = *&v3[0];
    sub_388C8(&qword_129398, &unk_F4A38);
    sub_F0A7C();
  }

  else
  {
    sub_54F88(v3, &v2);
    sub_388C8(&qword_129398, &unk_F4A38);
    sub_F0A8C();
  }

  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_B626C(uint64_t a1)
{
  sub_B5FD8(a1, v5);
  sub_37380(v5, v3, &qword_127EC0, &qword_F2C90);
  if (v4)
  {
    v2[0] = *&v3[0];
    sub_388C8(&qword_129388, &qword_F49E8);
    sub_F0A7C();
  }

  else
  {
    sub_3928(v3, v2);
    sub_388C8(&qword_129388, &qword_F49E8);
    sub_F0A8C();
  }

  return sub_372B0(v5, &qword_127EC0, &qword_F2C90);
}

uint64_t variable initialization expression of RCSOperationController.operationQueues()
{
  v0 = sub_388C8(&qword_128A58, &qword_F3D30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  sub_F039C();
  sub_F0AFC();
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return sub_F038C();
}

uint64_t sub_B64CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  return _swift_task_switch(sub_DDC0, v3, 0);
}

uint64_t sub_B64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  return _swift_task_switch(sub_EC04, v4, 0);
}

uint64_t sub_B6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  return _swift_task_switch(sub_F99C, v4, 0);
}

double variable initialization expression of RCSMessage.groupIdentity@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_B65B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_B65E0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_B667C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_B8234(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_B66BC(uint64_t a1)
{
  v2 = sub_12734(&qword_129538, type metadata accessor for FileAttributeKey);
  v3 = sub_12734(&qword_129540, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_B6778(uint64_t a1)
{
  v2 = sub_12734(&qword_129528, type metadata accessor for Key);
  v3 = sub_12734(&qword_129530, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_B6864(char *a1, int64_t a2, char a3)
{
  result = sub_B68BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_B689C(void *a1, int64_t a2, char a3)
{
  result = sub_B69C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_B68BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_129390, &unk_F52C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_B69C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_388C8(&qword_1284C8, &unk_F3640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
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
    sub_388C8(&qword_1284D0, &qword_F49F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_B6B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B6BAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_B6CE8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_B6F24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_126E4(319, &qword_129150, &type metadata for String, &type metadata accessor for Array);
    if (v4 <= 0x3F)
    {
      sub_B7350();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_B6FE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 16;
  if (v8 > 0x10)
  {
    v9 = v8;
  }

  v10 = 252 - (2u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v15 = ((~(-1 << v12) + a2 - v10) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v15 < 2)
    {
LABEL_27:
      v17 = *(a1 + v9);
      if (v10 <= (v17 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v17);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_27;
  }

LABEL_16:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + v10 + 1;
}

void sub_B715C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 0x10)
  {
    v9 = 16;
  }

  v10 = 252 - (2u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = v9 + 1;
  if (v10 >= a3)
  {
    v12 = 0;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v9] = -a2;
        return;
      }

      *&a1[v11] = 0;
    }

    else if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v12 = 1;
  if (v11 <= 3)
  {
    v13 = ((~(-1 << (8 * v11)) + a3 - v10) >> (8 * v11)) + 1;
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

  if (v10 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v17 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v17;
    v18 = 1;
    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v18 = (v17 >> (8 * v11)) + 1;
  if (v9 == -1)
  {
LABEL_37:
    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v19 = v17 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_37;
  }

  if (v11 == 2)
  {
    *a1 = v19;
    if (v12 > 1)
    {
LABEL_41:
      if (v12 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v12 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v12)
  {
    a1[v11] = v18;
  }
}

void *sub_B7350()
{
  result = qword_129158[0];
  if (!qword_129158[0])
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, qword_129158);
  }

  return result;
}

uint64_t sub_B7380()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B73BC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_B73D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_B73EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B7434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_B747C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_B74B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B74EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_B7534(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_B7598(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for RCSGroupController.OperationType();
  if (v4 <= 0x3F)
  {
    result = sub_F035C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_B7660()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B76A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B76F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_B7740(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B777C()
{
  result = qword_129380;
  if (!qword_129380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129380);
  }

  return result;
}

void sub_B7820(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_B7CE0();
    if (v4 <= 0x3F)
    {
      sub_126E4(319, &qword_129430, &type metadata for RCSHandle, &type metadata accessor for Array);
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        swift_getAssociatedTypeWitness();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_B7928(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v14 = ((v13 + ((v12 + 72) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14)) == 0)
  {
LABEL_28:
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *(v9 + 48);

      return v23((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
    }

    else
    {
      v22 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    LODWORD(v15) = *a1;
  }

  return v11 + (v15 | v21) + 1;
}

void sub_B7AD8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((*(v9 + 64) + ((v11 + 72) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v9 + 64) + ((v11 + 72) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v9 + 56);

        v21((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *a1 = v20;
      }

      return;
    }
  }

  if (((*(v9 + 64) + ((v11 + 72) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((*(v9 + 64) + ((v11 + 72) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

unint64_t sub_B7CE0()
{
  result = qword_129428;
  if (!qword_129428)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_129428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.SubscriptionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSMessage.Typing(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B8234(uint64_t a1)
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

uint64_t sub_B82C0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_F0C7C();
  if (!v26)
  {
    return sub_F0A2C();
  }

  v48 = v26;
  v52 = sub_F107C();
  v39 = sub_F108C();
  sub_F101C(v48);
  result = sub_F0C6C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_F0C9C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_F106C();
      result = sub_F0C8C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}