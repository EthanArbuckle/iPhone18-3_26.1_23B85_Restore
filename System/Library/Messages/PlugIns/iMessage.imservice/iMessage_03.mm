unint64_t sub_97980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123EB0, &qword_CE448);
    v3 = sub_BDCF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_97DF4(v4, &v13, &qword_123EC8, &unk_CE510);
      v5 = v13;
      v6 = v14;
      result = sub_94048(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_94D98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_97AB0()
{
  result = qword_123EA0;
  if (!qword_123EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_123EA0);
  }

  return result;
}

uint64_t *sub_97AFC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_97B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v3 = sub_BDCF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_97DF4(v4, v13, &qword_123EC0, &qword_CE450);
      result = sub_97008(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_94D98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_97C9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_97D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_97DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_94950(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_97E5C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_97EC0()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1244F8);
  sub_96A28(v0, qword_1244F8);
  sub_BD784();
  return sub_BD7A4();
}

Swift::Int sub_97F60()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

Swift::Int sub_97FD4()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

uint64_t sub_98018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A7DA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void MessageServiceSession.setTranscriptBackground(_:andSendToChatIdentifier:chatStyle:transferID:isRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a4;
  v34 = a7;
  v35 = a5;
  v32 = a2;
  v11 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v31 - v14;
  v16 = sub_94950(&qword_123ED8, &qword_CEE50);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v31 - v18;
  v20 = [objc_opt_self() sharedFeatureFlags];
  v21 = [v20 isTranscriptBackgroundsEnabled];

  if (v21)
  {
    sub_BD9D4();
    v22 = sub_BD9F4();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    sub_97DF4(a1, v15, &qword_123ED0, &unk_CE4D0);
    sub_BD9B4();

    v23 = v7;
    v24 = sub_BD9A4();
    v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v27[2] = v24;
    v27[3] = &protocol witness table for MainActor;
    v27[4] = v23;
    sub_ACF94(v15, v27 + v25, &qword_123ED0, &unk_CE4D0);
    v28 = v27 + v26;
    *v28 = v32;
    *(v28 + 1) = a3;
    v29 = v34;
    v28[16] = v33;
    v28[17] = v29 & 1;
    v30 = (v27 + ((v26 + 25) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v35;
    v30[1] = a6;
    sub_9B0BC(0, 0, v19, &unk_CE4E8, v27);
  }
}

uint64_t sub_98304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = sub_BD9B4();
  v8[3] = sub_BD9A4();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_98410;
  if (v17)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return sub_985AC(a5, a6, a7, a8, v14, v18, v19);
}

uint64_t sub_98410()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_BD994();

  return _swift_task_switch(sub_9854C, v5, v4);
}

uint64_t sub_9854C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_985AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 648) = v7;
  *(v8 + 640) = a7;
  *(v8 + 632) = a6;
  *(v8 + 434) = a5;
  *(v8 + 433) = a4;
  *(v8 + 624) = a3;
  *(v8 + 616) = a2;
  *(v8 + 608) = a1;
  v9 = sub_94950(&qword_123F98, &qword_CE890);
  *(v8 + 656) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  v11 = type metadata accessor for BackgroundUploadContext();
  *(v8 + 672) = v11;
  v12 = *(v11 - 8);
  *(v8 + 680) = v12;
  *(v8 + 688) = *(v12 + 64);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  v13 = sub_94950(&qword_123FA0, &qword_CE898);
  *(v8 + 720) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  v15 = sub_BD544();
  *(v8 + 768) = v15;
  v16 = *(v15 - 8);
  *(v8 + 776) = v16;
  *(v8 + 784) = *(v16 + 64);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  v17 = *(*(sub_94950(&qword_123ED0, &unk_CE4D0) - 8) + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  sub_BD9B4();
  *(v8 + 896) = sub_BD9A4();
  v18 = sub_BD994();
  *(v8 + 904) = v18;
  *(v8 + 912) = v19;

  return _swift_task_switch(sub_988DC, v18, v19);
}

uint64_t sub_988DC()
{
  v177 = v0;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 888);
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = sub_BD7B4();
  *(v0 + 920) = sub_96A28(v4, qword_1244F8);
  sub_97DF4(v3, v1, &qword_123ED0, &unk_CE4D0);

  v5 = sub_BD794();
  v6 = sub_BDA84();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 888);
  if (v7)
  {
    v9 = *(v0 + 880);
    v10 = *(v0 + 776);
    v165 = *(v0 + 768);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = swift_slowAlloc();
    v176[0] = swift_slowAlloc();
    *v13 = 136315394;
    if (v11)
    {
      v14 = v2;
    }

    else
    {
      v12 = 0x3E6C696E3CLL;
      v14 = 0xE500000000000000;
    }

    v15 = sub_96A60(v12, v14, v176);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    sub_97DF4(v8, v9, &qword_123ED0, &unk_CE4D0);
    v16 = (*(v10 + 48))(v9, 1, v165);
    v17 = *(v0 + 880);
    if (v16 == 1)
    {
      sub_75B0(*(v0 + 880), &qword_123ED0, &unk_CE4D0);
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v32 = *(v0 + 776);
      v33 = *(v0 + 768);
      v34 = *(v0 + 880);
      v19 = sub_BD514(1);
      v18 = v35;
      (*(v32 + 8))(v17, v33);
    }

    sub_75B0(*(v0 + 888), &qword_123ED0, &unk_CE4D0);
    v36 = sub_96A60(v19, v18, v176);

    *(v13 + 14) = v36;
    _os_log_impl(&dword_0, v5, v6, "Received request to change background for chat %s to %s.", v13, 0x16u);
    swift_arrayDestroy();

    if (!*(v0 + 624))
    {
      goto LABEL_14;
    }
  }

  else
  {

    sub_75B0(v8, &qword_123ED0, &unk_CE4D0);
    if (!*(v0 + 624))
    {
LABEL_14:
      v37 = *(v0 + 896);

      v38 = sub_BD794();
      v39 = sub_BDA84();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "Bailing early, no identifier provided.", v40, 2u);
      }

      goto LABEL_61;
    }
  }

  v20 = *(v0 + 648);
  v21 = *(v0 + 433);
  v22 = *(v0 + 616);
  v23 = sub_BD884();
  v24 = [v20 chatForChatIdentifier:v23 style:v21 updatingAccount:1];
  *(v0 + 928) = v24;

  *(v0 + 592) = 0;
  v25 = _LastAddressedURIForChat(v24, v20, (v0 + 592));
  v26 = *(v0 + 592);
  *(v0 + 936) = v26;
  if (v25)
  {
    v27 = v25;
    v28 = sub_BD8B4();
    v30 = v29;
    v31 = v26;
  }

  else
  {
    v41 = v26;
    v28 = 0;
    v30 = 0;
  }

  *(v0 + 952) = v30;
  *(v0 + 944) = v28;

  v42 = v24;
  v43 = v24;

  v44 = sub_BD794();
  v45 = sub_BDA84();

  v169 = v28;
  v171 = v42;
  if (os_log_type_enabled(v44, v45))
  {
    v166 = v26;
    v46 = v30;
    v47 = *(v0 + 616);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v176[0] = swift_slowAlloc();
    *v48 = 136315650;
    *(v48 + 4) = sub_96A60(v47, v2, v176);
    *(v48 + 12) = 2080;
    if (v46)
    {
      v50 = v28;
    }

    else
    {
      v50 = 0x3E6C696E3CLL;
    }

    if (v46)
    {
      v51 = v46;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = sub_96A60(v50, v51, v176);

    *(v48 + 14) = v52;
    v30 = v46;
    v26 = v166;
    *(v48 + 22) = 2112;
    *(v48 + 24) = v43;
    *v49 = v171;
    v53 = v43;
    _os_log_impl(&dword_0, v44, v45, "Found chat for identifier %s, callerURI: %s. Chat: %@", v48, 0x20u);
    sub_75B0(v49, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();
  }

  if (!v26 || !v43 || !v30)
  {
    v62 = *(v0 + 896);

    v63 = v43;
    v64 = sub_BD794();
    v65 = sub_BDA84();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v176[0] = v68;
      *v66 = 138412802;
      *(v66 + 4) = v63;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v26;
      *v67 = v171;
      v67[1] = v26;
      *(v66 + 22) = 2080;
      if (v30)
      {
        v69 = v169;
      }

      else
      {
        v69 = 0;
      }

      if (!v30)
      {
        v30 = 0xE000000000000000;
      }

      v70 = v63;
      v71 = v26;
      v72 = sub_96A60(v69, v30, v176);

      *(v66 + 24) = v72;
      _os_log_impl(&dword_0, v64, v65, "Failed to set transcript background for chat %@. Missing either chat, idsAccount: %@, or callerURI: %s", v66, 0x20u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();

      sub_97C9C(v68);
    }

    else
    {
    }

    goto LABEL_61;
  }

  v172 = v30;
  v54 = *(v0 + 434);
  v55 = v43;
  v56 = v26;
  if (v54)
  {
    goto LABEL_52;
  }

  v57 = [v55 transcriptBackgroundPath];
  v167 = v56;
  if (v57)
  {
    v58 = v57;
    v59 = sub_BD8B4();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v163 = v55;
  v73 = *(v0 + 872);
  v74 = *(v0 + 776);
  v75 = *(v0 + 768);
  sub_97DF4(*(v0 + 608), v73, &qword_123ED0, &unk_CE4D0);
  v76 = *(v74 + 48);
  v77 = v76(v73, 1, v75);
  v78 = *(v0 + 872);
  if (v77 == 1)
  {
    sub_75B0(*(v0 + 872), &qword_123ED0, &unk_CE4D0);
    v56 = v167;
    if (!v61)
    {
      goto LABEL_68;
    }

    goto LABEL_51;
  }

  v161 = v59;
  v79 = v76;
  v80 = *(v0 + 776);
  v81 = *(v0 + 768);
  v82 = sub_BD514(1);
  v84 = v83;
  (*(v80 + 8))(v78, v81);
  if (!v61)
  {
    v56 = v167;
    v76 = v79;
    if (!v84)
    {
LABEL_68:
      v136 = *(v0 + 896);
      goto LABEL_69;
    }

    goto LABEL_51;
  }

  v56 = v167;
  if (!v84)
  {
LABEL_51:

    v55 = v163;
    goto LABEL_52;
  }

  v76 = v79;
  if (v161 == v82 && v61 == v84)
  {
    v85 = *(v0 + 896);

LABEL_69:
    v55 = v163;
    goto LABEL_70;
  }

  v153 = sub_BDD24();

  v55 = v163;
  if ((v153 & 1) == 0)
  {
LABEL_52:
    v86 = [v55 transcriptBackgroundVersion];
    v87 = [v86 unsignedLongLongValue];

    if (!v54)
    {
      v88 = [objc_opt_self() __im_dateWithCurrentServerTime];
      if (!v88)
      {
        goto LABEL_80;
      }

      v89 = v88;
      v87 = [v88 __im_nanosecondTimeInterval];

      if (v87 < 0)
      {
        __break(1u);
      }
    }

    *(v0 + 960) = v87;
    v90 = *(v0 + 848);
    v91 = *(v0 + 776);
    v92 = *(v0 + 768);
    sub_97DF4(*(v0 + 608), v90, &qword_123ED0, &unk_CE4D0);
    v93 = *(v91 + 48);
    *(v0 + 968) = v93;
    *(v0 + 976) = (v91 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v93(v90, 1, v92) == 1)
    {
      v94 = *(v0 + 896);
      v95 = *(v0 + 848);

      sub_75B0(v95, &qword_123ED0, &unk_CE4D0);
      v96 = sub_BD794();
      v97 = sub_BDA84();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_0, v96, v97, "No background URL specified, removing the background from the chat.", v98, 2u);
      }

      v99 = *(v0 + 648);
      v100 = *(v0 + 434);

      sub_94950(&qword_123EE8, &qword_CE508);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_CE480;
      *(inited + 32) = sub_BD8B4();
      *(inited + 72) = &type metadata for UInt64;
      *(inited + 40) = v102;
      *(inited + 48) = v87;
      *(inited + 80) = sub_BD8B4();
      *(inited + 88) = v103;
      *(inited + 120) = &type metadata for Int;
      *(inited + 96) = 1;
      *(inited + 128) = sub_BD8B4();
      *(inited + 136) = v104;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      v105 = sub_97980(inited);
      swift_setDeallocating();
      sub_94950(&qword_123EC8, &unk_CE510);
      swift_arrayDestroy();
      sub_9BBD0(v105, v55, v169, v172);

      if (v100 != 1)
      {
        v106 = *(v0 + 648);
        sub_9BFE0(v55, 0, 0, v87);
      }

      goto LABEL_61;
    }

    v119 = *(v0 + 848);
    v120 = *(v0 + 840);
    v121 = *(v0 + 832);
    v122 = *(v0 + 776);
    v123 = *(v0 + 768);
    v124 = *(v122 + 32);
    *(v0 + 984) = v124;
    *(v0 + 992) = (v122 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v124(v120, v119, v123);
    sub_BD4E4(v125);
    v127 = v126;
    v128 = [v126 im_associatedWatchBackgroundURL];

    sub_BD504();
    v88 = [objc_opt_self() sharedInstance];
    *(v0 + 1000) = v88;
    if (v88)
    {
      v130 = v88;
      v131 = *(v0 + 840);
      v132 = *(v0 + 752);
      sub_BD4E4(v129);
      v134 = v133;
      *(v0 + 1008) = v133;
      *(v0 + 16) = v0;
      *(v0 + 56) = v132;
      *(v0 + 24) = sub_999CC;
      v135 = swift_continuation_init();
      *(v0 + 496) = sub_94950(&qword_123FA8, &qword_CE8A0);
      *(v0 + 440) = _NSConcreteStackBlock;
      *(v0 + 448) = 1107296256;
      *(v0 + 456) = sub_9CC80;
      *(v0 + 464) = &unk_1151B8;
      *(v0 + 472) = v135;
      [v130 generateReadOnlyPosterConfig:v134 completionBlock:v0 + 440];
      v88 = (v0 + 16);

      return _swift_continuation_await(v88);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    return _swift_continuation_await(v88);
  }

  v154 = *(v0 + 896);
LABEL_70:

  sub_97DF4(*(v0 + 608), *(v0 + 864), &qword_123ED0, &unk_CE4D0);
  v137 = sub_BD794();
  v138 = sub_BDA84();
  v139 = os_log_type_enabled(v137, v138);
  v140 = *(v0 + 864);
  if (v139)
  {
    v141 = *(v0 + 856);
    v142 = *(v0 + 768);
    v143 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v176[0] = v175;
    *v143 = 136315138;
    sub_97DF4(v140, v141, &qword_123ED0, &unk_CE4D0);
    v144 = v76(v141, 1, v142);
    v145 = *(v0 + 856);
    if (v144 == 1)
    {
      v146 = 0x3E6C696E3CLL;
      sub_75B0(*(v0 + 856), &qword_123ED0, &unk_CE4D0);
      v147 = 0xE500000000000000;
    }

    else
    {
      v148 = *(v0 + 776);
      v149 = *(v0 + 768);
      v150 = *(v0 + 856);
      v146 = sub_BD514(1);
      v147 = v151;
      (*(v148 + 8))(v145, v149);
    }

    sub_75B0(*(v0 + 864), &qword_123ED0, &unk_CE4D0);
    v152 = sub_96A60(v146, v147, v176);

    *(v143 + 4) = v152;
    _os_log_impl(&dword_0, v137, v138, "New background path is the same as the existing one. Bailing early. Path: %s", v143, 0xCu);
    sub_97C9C(v175);
  }

  else
  {

    sub_75B0(v140, &qword_123ED0, &unk_CE4D0);
  }

LABEL_61:
  v107 = *(v0 + 888);
  v108 = *(v0 + 880);
  v109 = *(v0 + 872);
  v110 = *(v0 + 864);
  v111 = *(v0 + 856);
  v112 = *(v0 + 848);
  v113 = *(v0 + 840);
  v114 = *(v0 + 832);
  v115 = *(v0 + 824);
  v116 = *(v0 + 816);
  v155 = *(v0 + 808);
  v156 = *(v0 + 800);
  v157 = *(v0 + 792);
  v158 = *(v0 + 760);
  v159 = *(v0 + 752);
  v160 = *(v0 + 744);
  v162 = *(v0 + 736);
  v164 = *(v0 + 728);
  v168 = *(v0 + 712);
  v170 = *(v0 + 704);
  v173 = *(v0 + 696);
  v174 = *(v0 + 664);

  v117 = *(v0 + 8);

  return v117();
}

uint64_t sub_999CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1016) = v3;
  if (v3)
  {
    v4 = v1[119];

    v5 = v1[114];
    v6 = v1[113];
    v7 = sub_9AC20;
  }

  else
  {
    v5 = v1[114];
    v6 = v1[113];
    v7 = sub_99B20;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_99B20()
{
  v208 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 896);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 720);

  sub_ACF94(v5, v6, &qword_123FA0, &qword_CE898);
  v8 = *(v7 + 48);
  *v4 = *v6;
  sub_ACF94(&v6[v8], &v4[v8], &qword_123ED0, &unk_CE4D0);

  sub_97DF4(v4, v6, &qword_123FA0, &qword_CE898);
  LODWORD(v4) = *v6;
  sub_75B0(&v6[*(v7 + 48)], &qword_123ED0, &unk_CE4D0);
  if (v4 == 1)
  {
    v9 = *(v0 + 976);
    v10 = *(v0 + 968);
    v11 = *(v0 + 768);
    v12 = *(v0 + 736);
    sub_97DF4(*(v0 + 760), v12, &qword_123FA0, &qword_CE898);
    v13 = *(v7 + 48);
    if (v10(v12 + v13, 1, v11) == 1)
    {
      v14 = *(v0 + 952);

      sub_75B0(v12 + v13, &qword_123ED0, &unk_CE4D0);
      goto LABEL_5;
    }

    v182 = *(v0 + 992);
    v159 = *(v0 + 984);
    v188 = *(v0 + 960);
    v171 = *(v0 + 944);
    v175 = *(v0 + 952);
    v178 = *(v0 + 936);
    v157 = *(v0 + 928);
    v203 = *(v0 + 920);
    v162 = *(v0 + 832);
    v35 = *(v0 + 824);
    v36 = *(v0 + 776);
    v37 = *(v0 + 768);
    v155 = *(v0 + 760);
    v38 = *(v0 + 712);
    v39 = *(v0 + 672);
    v193 = *(v0 + 648);
    v198 = *(v0 + 704);
    loga = *(v0 + 632);
    aBlocka = *(v0 + 640);
    v40 = *(v0 + 434);

    LOBYTE(v40) = v40 == 2;
    sub_75B0(v155, &qword_123FA0, &qword_CE898);
    v159(v35, v12 + v13, v37);
    v41 = *(v36 + 16);
    v41(v38, v35, v37);
    v183 = v39[5];
    v160 = v41;
    v41(v38 + v183, v162, v37);
    v42 = v38;
    *(v38 + v39[6]) = v157;
    v43 = (v38 + v39[7]);
    *v43 = v171;
    v43[1] = v175;
    *(v38 + v39[8]) = v178;
    *(v38 + v39[9]) = v40;
    v44 = (v38 + v39[10]);
    *v44 = loga;
    v44[1] = aBlocka;
    *(v38 + v39[11]) = v188;
    v45 = swift_allocObject();
    *(v45 + 16) = loga;
    *(v45 + 24) = aBlocka;
    log = v40;
    *(v45 + 32) = v40;
    *(v45 + 40) = v193;
    *(v45 + 48) = v157;
    *(v45 + 56) = v171;
    *(v45 + 64) = v175;
    v179 = v45;
    *(v45 + 72) = v188;
    v46 = v157;
    sub_AD408(v38, v198);
    swift_bridgeObjectRetain_n();
    v47 = v46;
    swift_bridgeObjectRetain_n();
    v48 = v193;
    v49 = v47;
    v50 = v48;
    v51 = sub_BD794();
    v52 = sub_BDA84();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 704);
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v207[0] = v56;
      *v55 = 136315138;
      v57 = (v54 + v39[10]);
      v58 = *v57;
      v59 = v57[1];

      sub_AD46C(v54);
      v60 = sub_96A60(v58, v59, v207);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_0, v51, v52, "Preparing to upload group background with transferID: %s", v55, 0xCu);
      sub_97C9C(v56);
    }

    else
    {

      sub_AD46C(v54);
    }

    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    sub_B4F04(*(v0 + 712), v42 + v183, *(v0 + 664));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *(v0 + 920);
      v64 = **(v0 + 664);
      sub_AD4C8(v64);
      v65 = sub_BD794();
      v66 = sub_BDA84();
      sub_AD4D8(v64);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        sub_AD4E8();
        swift_allocError();
        *v69 = v64;
        sub_AD4C8(v64);
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&dword_0, v65, v66, "Refusing to upload background with error: %@, bailing early.", v67, 0xCu);
        sub_75B0(v68, &qword_123E98, &unk_CEE80);
      }

      v71 = *(v0 + 928);
      v72 = *(v0 + 920);

      sub_AD4E8();
      swift_allocError();
      *v73 = v64;
      swift_errorRetain();
      v74 = v71;
      sub_AD4C8(v64);
      swift_errorRetain();
      v75 = sub_BD794();
      v76 = sub_BDA64();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = *(v0 + 928);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412546;
        *(v78 + 4) = v77;
        *v79 = v77;
        *(v78 + 12) = 2112;
        v80 = v77;
        swift_errorRetain();
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 14) = v81;
        v79[1] = v81;
        _os_log_impl(&dword_0, v75, v76, "Failed to upload background for chat %@. Error: %@", v78, 0x16u);
        sub_94950(&qword_123E98, &unk_CEE80);
        swift_arrayDestroy();
      }

      else
      {
      }

      v103 = *(v0 + 952);
      v104 = *(v0 + 928);
      v105 = *(v0 + 648);
      v106 = *(v0 + 434);

      sub_AD4D8(v64);

      if (v106 == 1)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v82 = *(v0 + 992);
      v83 = *(v0 + 640);
      (*(v0 + 984))(*(v0 + 816), *(v0 + 664), *(v0 + 768));
      v84 = objc_opt_self();

      v204 = [v84 sharedInstance];
      if (!v204)
      {
        v142 = *(v0 + 952);
        v143 = *(v0 + 928);
        v144 = *(v0 + 648);
        v145 = *(v0 + 640);

        __break(1u);
        return result;
      }

      v152 = *(v0 + 984);
      v153 = *(v0 + 992);
      v194 = *(v0 + 928);
      v199 = *(v0 + 952);
      v85 = *(v0 + 816);
      v86 = *(v0 + 808);
      v87 = *(v0 + 776);
      v172 = v87;
      v88 = *(v0 + 768);
      v89 = *(v0 + 696);
      v146 = v89;
      v147 = *(v0 + 712);
      v149 = *(v0 + 784);
      v150 = *(v0 + 688);
      v151 = *(v0 + 648);
      v90 = *(v0 + 640);
      v148 = *(v0 + 680);
      v91 = *(v0 + 632);
      v189 = *(v0 + 434);
      v184 = v85;
      sub_BD514(1);
      v176 = sub_BD884();

      v158 = IDSServiceNameiMessage;
      v154 = v88;
      v156 = sub_BD884();
      v160(v86, v85, v88);
      sub_AD408(v147, v89);
      v92 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v93 = (v149 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
      v95 = (*(v148 + 80) + v94 + 8) & ~*(v148 + 80);
      v96 = swift_allocObject();
      v152(v96 + v92, v86, v88);
      v97 = (v96 + v93);
      *v97 = v91;
      v97[1] = v90;
      *(v96 + v94) = v151;
      sub_AD5A4(v146, v96 + v95);
      v98 = (v96 + ((v150 + v95 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v98 = sub_ACFFC;
      v98[1] = v179;
      *(v0 + 536) = sub_AD608;
      *(v0 + 544) = v96;
      *(v0 + 504) = _NSConcreteStackBlock;
      *(v0 + 512) = 1107296256;
      *(v0 + 520) = sub_9EA54;
      *(v0 + 528) = &unk_115230;
      v99 = _Block_copy((v0 + 504));
      v100 = *(v0 + 544);
      v101 = v151;

      [v204 sendFilePath:v176 topic:v158 transferID:v156 encryptFile:1 progressBlock:0 completionBlock:v99];
      _Block_release(v99);

      (*(v172 + 8))(v184, v154);

      if (v189 == 1)
      {
        goto LABEL_21;
      }
    }

    v102 = *(v0 + 840);
    v107 = sub_BD554();
    v109 = v108;
    v110 = *(v0 + 832);
    v111 = sub_BD554();
    v190 = *(v0 + 928);
    v195 = *(v0 + 960);
    v112 = *(v0 + 840);
    v205 = *(v0 + 648);
    v113 = *(v0 + 640);
    v114 = *(v0 + 632);
    v200 = *(v0 + 434);
    v115 = v111;
    v117 = v116;
    v118 = sub_BD514(0);
    v185 = v119;
    sub_94950(&qword_123FB8, &qword_CE8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_CE490;
    *(v0 + 576) = sub_BD8B4();
    *(v0 + 584) = v121;
    sub_BDBC4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v114;
    *(inited + 80) = v113;

    v122 = sub_97B60(inited);
    swift_setDeallocating();
    sub_75B0(inited + 32, &qword_123EC0, &qword_CE450);
    *(v0 + 360) = v190;
    *(v0 + 368) = v118;
    *(v0 + 376) = v185;
    *(v0 + 384) = v114;
    *(v0 + 392) = v113;
    *(v0 + 400) = v195;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0;
    *(v0 + 408) = v122;
    *(v0 + 432) = log;

    sub_AD53C(v107, v109);
    sub_AD53C(v115, v117);
    sub_AD590(v107, v109);
    sub_AD590(v115, v117);
    sub_9D51C(v0 + 360, v200, v107, v109, v115, v117);
    sub_ABCAC(v107, v109);
    sub_ABCAC(v115, v117);
    sub_AC360(v0 + 360);
    sub_ABCAC(v107, v109);
    sub_ABCAC(v115, v117);
    sub_AB36C(v115, v117);
    sub_AB36C(v107, v109);
LABEL_22:
    v123 = *(v0 + 936);
    v124 = *(v0 + 840);
    v125 = *(v0 + 832);
    v126 = *(v0 + 824);
    v127 = *(v0 + 776);
    v128 = *(v0 + 768);
    sub_AD46C(*(v0 + 712));
    v129 = *(v127 + 8);
    v129(v126, v128);
    v129(v125, v128);
    v129(v124, v128);

    goto LABEL_23;
  }

  v15 = *(v0 + 952);

LABEL_5:
  v16 = *(v0 + 920);
  v17 = *(v0 + 760);
  v18 = *(v0 + 728);
  (*(*(v0 + 776) + 16))(*(v0 + 800), *(v0 + 840), *(v0 + 768));
  sub_97DF4(v17, v18, &qword_123FA0, &qword_CE898);
  v19 = sub_BD794();
  v20 = sub_BDA64();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 936);
  v23 = *(v0 + 840);
  v202 = *(v0 + 832);
  v24 = *(v0 + 800);
  v25 = *(v0 + 776);
  v26 = *(v0 + 768);
  v192 = *(v0 + 928);
  v197 = *(v0 + 760);
  if (v21)
  {
    v27 = *(v0 + 744);
    v170 = *(v0 + 728);
    v187 = *(v0 + 840);
    v28 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v207[0] = v181;
    *v28 = 136315394;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL);
    v174 = v22;
    v29 = sub_BDD14();
    aBlock = v20;
    v31 = v30;
    v32 = *(v25 + 8);
    v32(v24, v26);
    v33 = sub_96A60(v29, v31, v207);

    *(v28 + 4) = v33;
    *(v28 + 12) = 1024;
    sub_97DF4(v170, v27, &qword_123FA0, &qword_CE898);
    LODWORD(v31) = *v27;
    sub_75B0(&v27[*(v7 + 48)], &qword_123ED0, &unk_CE4D0);
    sub_75B0(v170, &qword_123FA0, &qword_CE898);
    *(v28 + 14) = v31;
    _os_log_impl(&dword_0, v19, aBlock, "Could not generate a readOnly poster for file %s. Response success: %{BOOL}d Bailing", v28, 0x12u);
    sub_97C9C(v181);

    sub_75B0(v197, &qword_123FA0, &qword_CE898);
    v32(v202, v26);
    v32(v187, v26);
  }

  else
  {
    sub_75B0(*(v0 + 728), &qword_123FA0, &qword_CE898);

    v34 = *(v25 + 8);
    v34(v24, v26);
    sub_75B0(v197, &qword_123FA0, &qword_CE898);
    v34(v202, v26);
    v34(v23, v26);
  }

LABEL_23:
  v130 = *(v0 + 888);
  v131 = *(v0 + 880);
  v132 = *(v0 + 872);
  v133 = *(v0 + 864);
  v134 = *(v0 + 856);
  v135 = *(v0 + 848);
  v136 = *(v0 + 840);
  v137 = *(v0 + 832);
  v138 = *(v0 + 824);
  v139 = *(v0 + 816);
  v161 = *(v0 + 808);
  v163 = *(v0 + 800);
  logb = *(v0 + 792);
  aBlockb = *(v0 + 760);
  v173 = *(v0 + 752);
  v177 = *(v0 + 744);
  v180 = *(v0 + 736);
  v186 = *(v0 + 728);
  v191 = *(v0 + 712);
  v196 = *(v0 + 704);
  v201 = *(v0 + 696);
  v206 = *(v0 + 664);

  v140 = *(v0 + 8);

  return v140();
}

uint64_t sub_9AC20()
{
  v66 = v0;
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[115];
  v5 = v0[112];
  v6 = v0[105];
  v7 = v0[99];
  v8 = v0[97];
  v9 = v0[96];

  swift_willThrow();

  (*(v8 + 16))(v7, v6, v9);
  swift_errorRetain();
  v10 = sub_BD794();
  v11 = sub_BDA64();

  if (os_log_type_enabled(v10, v11))
  {
    v53 = v0[127];
    v57 = v0[117];
    v59 = v0[116];
    v61 = v0[104];
    v63 = v0[105];
    v12 = v0[99];
    v13 = v0[97];
    v14 = v0[96];
    v15 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v15 = 136315394;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL);
    v16 = sub_BDD14();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_96A60(v16, v18, v65);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[69];
    v22 = v0[70];
    v23 = v0[71];
    v24 = sub_BDD74();
    v26 = sub_96A60(v24, v25, v65);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_0, v10, v11, "Could not generate a readOnly poster for file %s. Got error: %s Bailing", v15, 0x16u);
    swift_arrayDestroy();

    v19(v61, v14);
    v19(v63, v14);
  }

  else
  {
    v27 = v0[127];
    v28 = v0[117];
    v29 = v0[116];
    v30 = v0[105];
    v31 = v0[104];
    v32 = v0[99];
    v33 = v0[97];
    v34 = v0[96];

    v35 = *(v33 + 8);
    v35(v32, v34);
    v35(v31, v34);
    v35(v30, v34);
  }

  v36 = v0[111];
  v37 = v0[110];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[107];
  v41 = v0[106];
  v42 = v0[105];
  v43 = v0[104];
  v44 = v0[103];
  v45 = v0[102];
  v48 = v0[101];
  v49 = v0[100];
  v50 = v0[99];
  v51 = v0[95];
  v52 = v0[94];
  v54 = v0[93];
  v55 = v0[92];
  v56 = v0[91];
  v58 = v0[89];
  v60 = v0[88];
  v62 = v0[87];
  v64 = v0[83];

  v46 = v0[1];

  return v46();
}

uint64_t sub_9B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_94950(&qword_123ED8, &qword_CEE50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_97DF4(a3, v26 - v10, &qword_123ED8, &qword_CEE50);
  v12 = sub_BD9F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_75B0(v11, &qword_123ED8, &qword_CEE50);
  }

  else
  {
    sub_BD9E4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_BD994();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_BD8D4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_75B0(a3, &qword_123ED8, &qword_CEE50);

      return v24;
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

  sub_75B0(a3, &qword_123ED8, &qword_CEE50);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void MessageServiceSession.retryTranscriptBackgroundUpload(_:chatIdentifier:style:transferID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v30 = a4;
  v29 = a2;
  v10 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v28 - v13;
  v15 = sub_94950(&qword_123ED8, &qword_CEE50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  v19 = [objc_opt_self() sharedFeatureFlags];
  v20 = [v19 isTranscriptBackgroundsEnabled];

  if (v20)
  {
    sub_BD9D4();
    v21 = sub_BD9F4();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    sub_97DF4(a1, v14, &qword_123ED0, &unk_CE4D0);
    sub_BD9B4();

    v22 = v6;
    v23 = sub_BD9A4();
    v24 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v22;
    sub_ACF94(v14, v25 + v24, &qword_123ED0, &unk_CE4D0);
    v26 = v25 + ((v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v29;
    *(v26 + 1) = a3;
    v26[16] = v30;
    v27 = (v25 + ((v24 + v12 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v31;
    v27[1] = a6;
    sub_9B0BC(0, 0, v18, &unk_CE4F8, v25);
  }
}

uint64_t sub_9B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = sub_BD9B4();
  v8[3] = sub_BD9A4();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_9B8FC;

  return sub_985AC(a5, a6, a7, a8, 1, v16, v17);
}

uint64_t sub_9B8FC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_BD994();

  return _swift_task_switch(sub_AE050, v5, v4);
}

void sub_9BBD0(unint64_t a1, uint32_t *a2, uint64_t a3, unint64_t a4)
{
  p_align = a2;
  v8 = [(uint32_t *)a2 participants];
  if (!v8)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_7610(0, &qword_123F68, IMDHandle_ptr);
  v10 = sub_BD954();

  v32 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
LABEL_17:
    v11 = sub_BDCC4();
    if (v11)
    {
LABEL_4:
      v27 = a1;
      v28 = p_align;
      v29 = a3;
      v30 = a4;
      a1 = 0;
      a4 = v10 & 0xFFFFFFFFFFFFFF8;
      p_align = &stru_11EFE8.align;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = sub_BDC34();
        }

        else
        {
          if (a1 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v12 = *(v10 + 8 * a1 + 32);
        }

        v13 = v12;
        a3 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (![v12 ID])
        {
          break;
        }

        sub_BD934();
        if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v32 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_BD974();
        }

        sub_BD984();
        ++a1;
        if (a3 == v11)
        {
          a3 = v29;
          a4 = v30;
          a1 = v27;
          p_align = v28;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }
  }

LABEL_18:

  sub_7610(0, &qword_123F48, NSString_ptr);
  isa = sub_BD944().super.isa;
  v15 = [(objc_class *)isa _URIsFromIDs];

  if (v15 && (v16 = sub_BD954(), v15, v17 = sub_9EC40(v16), , v17))
  {

    v18 = sub_A82A4(v17);

    sub_9ED4C(a1, v18, p_align, a3, a4, 1);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v19 = sub_BD7B4();
    sub_96A28(v19, qword_1244F8);

    oslog = sub_BD794();
    v20 = sub_BDA84();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = sub_BD964();
      v25 = v24;

      v26 = sub_96A60(v23, v25, &v32);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, oslog, v20, "Could not get participantURIs for %s", v21, 0xCu);
      sub_97C9C(v22);
    }

    else
    {
    }
  }
}

void sub_9BFE0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v103 = a4;
  v104 = a3;
  v102 = a2;
  v7 = sub_BD544();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v12 = sub_BD7B4();
  v13 = sub_96A28(v12, qword_1244F8);
  v14 = a1;
  v15 = sub_BD794();
  v16 = sub_BDA84();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_0, v15, v16, "Asked to remove background for %@.", v17, 0xCu);
    sub_75B0(v18, &qword_123E98, &unk_CEE80);
  }

  v20 = [v14 transcriptBackgroundPath];
  if (!v20)
  {
    v105 = sub_BD794();
    v48 = sub_BDA84();
    if (os_log_type_enabled(v105, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v105, v48, "No background to remove, bailing.", v49, 2u);
    }

    v50 = v105;

    return;
  }

  v21 = v20;
  v105 = v13;
  v101 = v5;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultManager];
  v106 = 0;
  v25 = [v24 removeItemAtPath:v23 error:&v106];

  v26 = v106;
  if (!v25)
  {
    v51 = v26;

    goto LABEL_19;
  }

  v27 = [v22 defaultManager];
  v28 = [objc_allocWithZone(NSURL) initFileURLWithPath:v23];

  v29 = [v28 im_associatedWatchBackgroundURL];
  sub_BD504();

  sub_BD4E4(v30);
  v32 = v31;
  (*(v8 + 8))(v11, v7);
  v106 = 0;
  LODWORD(v28) = [v27 removeItemAtURL:v32 error:&v106];

  v33 = v106;
  if (!v28)
  {
    v51 = v106;
LABEL_19:
    sub_BD4A4();

    swift_willThrow();
    v52 = v14;
    swift_errorRetain();
    v53 = sub_BD794();
    v54 = sub_BDA64();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412546;
      *(v55 + 4) = v52;
      *v56 = v52;
      *(v55 + 12) = 2112;
      v57 = v52;
      swift_errorRetain();
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v58;
      v56[1] = v58;
      _os_log_impl(&dword_0, v53, v54, "Failed to remove background for %@: %@", v55, 0x16u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE490;
  *(inited + 32) = sub_BD8B4();
  *(inited + 40) = v35;
  v36 = objc_allocWithZone(NSNumber);
  v37 = v33;
  v38 = [v36 initWithUnsignedLongLong:v103];
  *(inited + 72) = sub_7610(0, &qword_123EA0, NSNumber_ptr);
  *(inited + 48) = v38;
  sub_97980(inited);
  swift_setDeallocating();
  sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
  isa = sub_BD834().super.isa;

  [v14 updateTranscriptBackgroundProperties:isa];

  v40 = &selRef_setScheduleType_;
  v41 = [v14 style];
  v42 = [v14 chatIdentifier];
  if (v42)
  {
    v43 = v42;
    v44 = v101;
    v45 = [v101 broadcasterForChatListeners];
    v46 = [v44 account];
    v47 = [v46 accountID];

    if (!v47)
    {
      sub_BD8B4();
      v47 = sub_BD884();
    }

    [v45 transcriptBackgroundUpdatedForChatIdentifier:v43 style:v41 account:v47 userInfo:0];
    swift_unknownObjectRelease();

    v40 = &selRef_setScheduleType_;
  }

  else
  {
    v59 = v14;
    v60 = sub_BD794();
    v61 = sub_BDA64();
    v62 = os_log_type_enabled(v60, v61);
    v44 = v101;
    if (v62)
    {
      LODWORD(v103) = v61;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v106 = v100;
      *v63 = 16777986;
      *(v63 + 4) = [v59 style];

      *(v63 + 5) = 2080;
      v65 = [v59 chatIdentifier];
      if (v65)
      {
        v66 = v65;
        v67 = sub_BD8B4();
        v69 = v68;
      }

      else
      {
        v67 = 0x3E6C696E3CLL;
        v69 = 0xE500000000000000;
      }

      v70 = sub_96A60(v67, v69, &v106);

      *(v63 + 7) = v70;
      *(v63 + 15) = 2112;
      *(v63 + 17) = v59;
      *v64 = v59;
      v71 = v59;
      _os_log_impl(&dword_0, v60, v103, "No valid IMChatStyle or chatIdentifier found on chat when removing background. Style: %hhu. Chat identifier: %s, chat: %@", v63, 0x19u);
      sub_75B0(v64, &qword_123E98, &unk_CEE80);

      sub_97C9C(v100);

      v40 = &selRef_setScheduleType_;
    }

    else
    {
    }
  }

  v72 = [objc_opt_self() contextWithAssetChangeType:1 isHidden:0 hasSensitiveContent:0];
  if (v104)
  {
    v73 = sub_BD884();
  }

  else
  {
    v73 = 0;
  }

  v74 = [v44 generateAndStoreAssetChangeStatusItemForChat:v14 sender:v73 fileTransferGuid:0 assetStatusChange:v72];

  if (v74)
  {
    v75 = [v14 chatIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = v44;
      v78 = [v14 v40[113]];
      v79 = [v77 broadcasterForChatListeners];
      v80 = [v77 account];
      v81 = [v80 accountID];

      if (!v81)
      {
        sub_BD8B4();
        v81 = sub_BD884();
      }

      v82 = [v14 groupID];
      if (v82)
      {
        v83 = v82;
        sub_BD8B4();
      }

      v93 = sub_BD884();

      v94 = [v14 personCentricID];
      if (v94)
      {
        v95 = v94;
        sub_BD8B4();
      }

      v96 = sub_BD884();

      [v79 account:v81 chat:v76 style:v78 chatProperties:0 groupID:v93 chatPersonCentricID:v96 messageReceived:v74];
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = v14;
      v85 = sub_BD794();
      v86 = sub_BDA64();
      if (!os_log_type_enabled(v85, v86))
      {

        return;
      }

      v87 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v105;
      *v87 = 16777986;
      *(v87 + 4) = [v84 v40[113]];

      *(v87 + 5) = 2080;
      v88 = [v84 chatIdentifier];
      if (v88)
      {
        v89 = v88;
        v90 = sub_BD8B4();
        v92 = v91;
      }

      else
      {
        v90 = 0x3E6C696E3CLL;
        v92 = 0xE500000000000000;
      }

      v97 = sub_96A60(v90, v92, &v106);

      *(v87 + 7) = v97;
      *(v87 + 15) = 2112;
      *(v87 + 17) = v84;
      v98 = v104;
      *v104 = v14;
      v99 = v84;
      _os_log_impl(&dword_0, v85, v86, "No valid chatIdentifier or chatStyle found on chat when removing background. ChatStyle: %hhu, Chat identifier: %s, chat: %@", v87, 0x19u);
      sub_75B0(v98, &qword_123E98, &unk_CEE80);

      sub_97C9C(v105);
    }
  }
}

uint64_t sub_9CC80(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_94950(&qword_123FA0, &qword_CE898);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = *sub_ADC6C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_94950(&qword_123E68, &qword_CE400);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;

    return _swift_continuation_throwingResumeWithError(v16, v17);
  }

  else
  {
    *v15 = a2;
    if (a3)
    {
      sub_BD504();
      v20 = sub_BD544();
      (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    }

    else
    {
      v21 = sub_BD544();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    sub_ACF94(v11, &v15[*(v12 + 48)], &qword_123ED0, &unk_CE4D0);
    sub_ACF94(v15, *(*(v16 + 64) + 40), &qword_123FA0, &qword_CE898);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_9CEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_94D98(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_97558(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_75B0(a1, &qword_123E88, qword_CE420);
    sub_9704C(a2, a3, v10);

    return sub_75B0(v10, &qword_123E88, qword_CE420);
  }

  return result;
}

uint64_t sub_9CF94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_97D3C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_94D98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_94D98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_94D98(v31, v32);
    result = sub_BDBA4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_94D98(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_9D25C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_94D98(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_94D98(v31, v32);
    result = sub_BDBA4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_94D98(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_9D51C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v127 = a6;
  v123 = a5;
  v126 = a4;
  v122 = a3;
  v129 = a2;
  v7 = sub_BD544();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v121 = v120 - v14;
  v15 = __chkstk_darwin(v13);
  v134 = v120 - v16;
  v17 = __chkstk_darwin(v15);
  v130 = v120 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v120 - v20;
  __chkstk_darwin(v19);
  v23 = v120 - v22;
  v24 = IMTranscriptBackgroundDirectory();
  sub_BD504();

  v132 = objc_opt_self();
  v25 = [v132 defaultManager];
  sub_BD524();
  v26 = sub_BD884();

  LOBYTE(v24) = [v25 fileExistsAtPath:v26];

  v135 = v21;
  if (v24)
  {
LABEL_4:
    v124 = *a1;
    v140 = *(a1 + 24);
    v138 = 47;
    v139 = 0xE100000000000000;
    v136 = 95;
    v137 = 0xE100000000000000;
    sub_ABD60();
    sub_BDB14();
    sub_BD4F4();

    v33 = *(a1 + 16);
    if (v33)
    {
      v34 = *(a1 + 8);
      if (v34 == sub_BD514(1) && v33 == v35)
      {
      }

      else
      {
        v54 = sub_BDD24();

        if ((v54 & 1) == 0)
        {
          v55 = [v132 defaultManager];
          v56 = sub_BD884();
          *&v140 = 0;
          v57 = [v55 removeItemAtPath:v56 error:&v140];

          if (v57)
          {
            v58 = v140;
          }

          else
          {
            v60 = v8;
            v61 = v140;
            sub_BD4A4();

            v8 = v60;
            swift_willThrow();
          }
        }

        v21 = v135;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v62 = sub_BD7B4();
    v63 = sub_96A28(v62, qword_1244F8);
    v64 = v130;
    (*(v8 + 16))(v130, v21, v7);
    v120[1] = v63;
    v65 = sub_BD794();
    v66 = sub_BDA84();
    v67 = os_log_type_enabled(v65, v66);
    v133 = a1;
    v125 = v7;
    v131 = v8;
    if (v67)
    {
      v68 = v64;
      v69 = swift_slowAlloc();
      v70 = v23;
      v71 = swift_slowAlloc();
      *&v140 = v71;
      *v69 = 136315138;
      v72 = sub_BD514(1);
      v73 = v7;
      v75 = v74;
      v130 = *(v8 + 8);
      (v130)(v68, v73);
      v76 = sub_96A60(v72, v75, &v140);

      *(v69 + 4) = v76;
      _os_log_impl(&dword_0, v65, v66, "Writing poster to %s", v69, 0xCu);
      sub_97C9C(v71);
      v23 = v70;
      a1 = v133;
    }

    else
    {

      v130 = *(v8 + 8);
      (v130)(v64, v7);
    }

    v77 = v134;
    v78 = v124;
    v79 = v135;
    v124 = v126 & 0xF000000000000000;
    if (v126 >> 60 != 15 && (v126 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_BD5A4();
    }

    v80 = [v78 transcriptBackgroundPath];
    if (v80)
    {
      v81 = v80;
      v82 = sub_BD8B4();
      v84 = v83;
      if (v82 == sub_BD514(1) && v84 == v85)
      {

LABEL_32:
        v87 = v125;
        a1 = v133;
        v88 = &v142;
        v79 = v135;
        goto LABEL_40;
      }

      v86 = sub_BDD24();

      if (v86)
      {

        goto LABEL_32;
      }

      v89 = sub_BD794();
      v90 = sub_BDA84();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v140 = v92;
        *v91 = 136315138;
        v93 = sub_96A60(v82, v84, &v140);

        *(v91 + 4) = v93;
        _os_log_impl(&dword_0, v89, v90, "Removing old poster path: %s", v91, 0xCu);
        sub_97C9C(v92);
        v77 = v134;
      }

      else
      {
      }

      v94 = [v132 defaultManager];
      *&v140 = 0;
      v95 = [v94 removeItemAtPath:v81 error:&v140];

      a1 = v133;
      v79 = v135;
      if (v95)
      {
        v96 = v140;
      }

      else
      {
        v97 = v140;
        sub_BD4A4();

        swift_willThrow();
      }
    }

    v88 = &v141;
    v87 = v125;
LABEL_40:
    sub_BD4E4(v88);
    v99 = v98;
    v100 = [v98 im_associatedWatchBackgroundURL];

    sub_BD504();
    if (v124 != 0xB000000000000000 && v127 >> 60 != 15)
    {
      sub_BD5A4();
    }

    v101 = [v78 transcriptBackgroundPath];
    if (!v101)
    {
      goto LABEL_49;
    }

    v102 = v101;
    v103 = [objc_allocWithZone(NSURL) initFileURLWithPath:v101];

    v104 = [v103 im_associatedWatchBackgroundURL];
    v105 = v121;
    sub_BD504();

    sub_AC3A8(&qword_123F90, &type metadata accessor for URL);
    if ((sub_BD874() & 1) == 0)
    {
      v106 = [v132 defaultManager];
      sub_BD4E4(v107);
      v109 = v108;
      *&v140 = 0;
      v110 = [v106 removeItemAtURL:v108 error:&v140];

      if (v110)
      {
        v111 = v140;
        (v130)(v105, v87);
LABEL_49:
        v113 = swift_allocObject();
        *(v113 + 16) = v78;
        v114 = *a1;
        *(v113 + 40) = *(a1 + 16);
        v115 = *(a1 + 48);
        *(v113 + 56) = *(a1 + 32);
        *(v113 + 72) = v115;
        *(v113 + 81) = *(a1 + 57);
        *(v113 + 24) = v114;
        v116 = v128;
        *(v113 + 104) = v128;
        *(v113 + 112) = v129;
        v117 = v78;
        sub_AC214(a1, &v140);
        v118 = v116;
        sub_B62FC(v79, v77, sub_AC3F0, v113);

        v119 = v130;
        (v130)(v77, v87);
        (v119)(v79, v87);
        return (v119)(v23, v87);
      }

      v112 = v140;
      sub_BD4A4();

      swift_willThrow();
    }

    (v130)(v105, v87);
    goto LABEL_49;
  }

  v27 = [v132 defaultManager];
  sub_BD4E4(v28);
  v30 = v29;
  *&v140 = 0;
  v31 = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v140];

  if (v31)
  {
    v32 = v140;
    v21 = v135;
    goto LABEL_4;
  }

  v36 = v8;
  v37 = v140;
  sub_BD4A4();

  swift_willThrow();
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v38 = sub_BD7B4();
  sub_96A28(v38, qword_1244F8);
  (*(v36 + 16))(v12, v23, v7);
  swift_errorRetain();
  v39 = sub_BD794();
  v40 = sub_BDA64();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v135 = v23;
    v42 = v41;
    v43 = swift_slowAlloc();
    v133 = v43;
    v134 = swift_slowAlloc();
    *&v140 = v134;
    *v42 = 138412802;
    swift_errorRetain();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v44;
    *v43 = v44;
    *(v42 + 12) = 2080;
    swift_getErrorValue();
    v45 = sub_BDD74();
    v47 = sub_96A60(v45, v46, &v140);

    *(v42 + 14) = v47;
    *(v42 + 22) = 2080;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL);
    v48 = sub_BDD14();
    v50 = v49;
    v51 = *(v36 + 8);
    v51(v12, v7);
    v52 = sub_96A60(v48, v50, &v140);

    *(v42 + 24) = v52;
    _os_log_impl(&dword_0, v39, v40, "Failed to persist transcript background with error: %@. Description: %s. Dir path: %s", v42, 0x20u);
    sub_75B0(v133, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();

    return (v51)(v135, v7);
  }

  else
  {

    v59 = *(v36 + 8);
    v59(v12, v7);
    return (v59)(v23, v7);
  }
}

void sub_9E62C(void *a1, char a2)
{
  if ([a1 style] == 45 && (a2 & 1) == 0)
  {
    v5 = sub_BD8B4();
    v7 = v6;
    v39 = 0u;
    v40 = 0u;
    v8 = v5;
    v9 = v7;
LABEL_6:
    sub_9CEC4(&v39, v8, v9);
    return;
  }

  if ([a1 style] == 43)
  {
    v10 = sub_BD8B4();
    v12 = v11;
    v13 = [v2 groupIDForChat:a1];
    v14 = sub_BD8B4();
    v16 = v15;

    *(&v40 + 1) = &type metadata for String;
    *&v39 = v14;
    *(&v39 + 1) = v16;
    v8 = v10;
    v9 = v12;
    goto LABEL_6;
  }

  v17 = [a1 participants];
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v17;
  sub_7610(0, &qword_123F68, IMDHandle_ptr);
  v19 = sub_BD954();

  *&v39 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
LABEL_23:
    v20 = sub_BDCC4();
    if (v20)
    {
LABEL_10:
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = sub_BDC34();
        }

        else
        {
          if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_22;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (![v22 ID])
        {
          break;
        }

        sub_BD934();
        if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v35 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
          sub_BD974();
        }

        sub_BD984();
        ++v21;
        if (v24 == v20)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_10;
    }
  }

LABEL_24:

  sub_7610(0, &qword_123F48, NSString_ptr);
  isa = sub_BD944().super.isa;
  v26 = [(objc_class *)isa _URIsFromIDs];

  if (v26)
  {

    v27 = sub_BD954();

    if (*(v27 + 16))
    {
      sub_97D3C(v27 + 32, &v39);
    }

    else
    {

      v39 = 0u;
      v40 = 0u;
    }

    v28 = sub_BD8B4();
    v30 = v29;
    sub_97DF4(&v39, &v37, &qword_123E88, qword_CE420);
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast())
      {
        v31 = [v36 _stripFZIDPrefix];

        if (v31)
        {
          v32 = sub_BD8B4();
          v34 = v33;

          *(&v38 + 1) = &type metadata for String;
          *&v37 = v32;
          *(&v37 + 1) = v34;
LABEL_34:
          sub_9CEC4(&v37, v28, v30);
          sub_75B0(&v39, &qword_123E88, qword_CE420);
          return;
        }
      }
    }

    else
    {
      sub_75B0(&v37, &qword_123E88, qword_CE420);
    }

    v37 = 0u;
    v38 = 0u;
    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_9EA54(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v15 = a9;
  v16 = *(a1 + 40);
  v38 = *(a1 + 32);
  if (a2)
  {
    v35 = sub_BD8B4();
    v18 = v17;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v34 = 0;
    v36 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 0;
  v18 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v34 = sub_BD8B4();
  v36 = v19;
  if (a6)
  {
LABEL_4:
    v33 = sub_BD8B4();
    a6 = v20;
    goto LABEL_8;
  }

LABEL_7:
  v33 = 0;
LABEL_8:

  v21 = a4;
  if (a7)
  {
    v22 = a7;
    a7 = sub_BD594();
    v24 = v23;

    if (a8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v25 = 0;
    if (a9)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v24 = 0xF000000000000000;
  if (!a8)
  {
    goto LABEL_13;
  }

LABEL_10:
  v25 = sub_BD8B4();
  a8 = v26;
  if (a9)
  {
LABEL_11:
    v27 = a6;
    v28 = v18;
    v29 = a9;
    v15 = sub_BD594();
    v31 = v30;

    v18 = v28;
    a6 = v27;
    goto LABEL_15;
  }

LABEL_14:
  v31 = 0xF000000000000000;
LABEL_15:
  v38(v35, v18, a3, v21, v34, v36, v33, a6, a7, v24, v25, a8, v15, v31, a10);
  sub_ABCAC(v15, v31);

  sub_ABCAC(a7, v24);
}

void *sub_9EC40(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_BDC74();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_97D3C(i, v6);
    sub_7610(0, &qword_123F48, NSString_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_BDC54();
    v4 = v7[2];
    sub_BDC84();
    sub_BDC94();
    sub_BDC64();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_9ED4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  *&aBlock = 0;

  if (!aBlock)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v20 = sub_BD7B4();
    sub_96A28(v20, qword_1244F8);
    v21 = sub_BD794();
    v22 = sub_BDA84();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No IDS account or callerURI, not responding to background request.", v23, 2u);
    }

    goto LABEL_19;
  }

  v118 = a6;
  v122 = aBlock;

  sub_9E62C(a3, 0);
  v124 = a5;
  if ([v7 isReplicating])
  {
    v14 = sub_BD8B4();
    v16 = v15;
    v17 = [v7 service];
    v18 = [v17 replicationSourceID];

    v129 = &type metadata for Int;
    *&aBlock = v18;
    sub_94D98(&aBlock, v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_97558(v126, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  sub_9CF94(v24);

  isa = sub_BD834().super.isa;

  v26 = JWEncodeDictionary();

  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = [v26 _FTCopyGzippedData];

  if (!v27)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v55 = sub_BD7B4();
    sub_96A28(v55, qword_1244F8);
    v56 = sub_BD794();
    v57 = sub_BDA64();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136315138;

      v60 = sub_BD854();
      v62 = v61;

      v63 = sub_96A60(v60, v62, &aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_0, v56, v57, "No encoded dictionary created. Bailing. recipientTransferDict: %s", v58, 0xCu);
      sub_97C9C(v59);
    }

    v21 = v122;
LABEL_19:

    return;
  }

  v110 = a1;
  v111 = a3;
  v120 = v7;
  v28 = sub_BD594();
  v30 = v29;

  v31 = sub_BD574().super.isa;
  sub_AB36C(v28, v30);
  sub_94950(&qword_123F30, &qword_CE830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE4A0;
  *(inited + 32) = sub_BD8B4();
  *(inited + 40) = v33;
  sub_7610(0, &qword_123EA0, NSNumber_ptr);
  *(inited + 48) = sub_BDAD4(1);
  *(inited + 56) = sub_BD8B4();
  *(inited + 64) = v34;
  *(inited + 72) = sub_BDAD4(1);
  *(inited + 80) = sub_BD8B4();
  *(inited + 88) = v35;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:138];
  *(inited + 104) = sub_BD8B4();
  *(inited + 112) = v36;
  *&aBlock = sub_BD8B4();
  *(&aBlock + 1) = v37;

  v38 = sub_BDD44();
  v39 = [objc_opt_self() setWithObject:v38];

  swift_unknownObjectRelease();
  *(inited + 120) = v39;
  *(inited + 128) = sub_BD8B4();
  *(inited + 136) = v40;
  *(inited + 144) = v31;
  v112 = v31;
  v41 = sub_A83E4(inited);
  swift_setDeallocating();
  sub_94950(&qword_123F38, &qword_CE838);
  swift_arrayDestroy();
  v42 = qword_1244F0;

  if (v42 != -1)
  {
    swift_once();
  }

  v116 = v41;
  v43 = sub_BD7B4();
  sub_96A28(v43, qword_1244F8);
  v44 = a2;

  v45 = sub_BD794();
  v46 = sub_BDA84();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v47 = 136315650;

    v48 = sub_BD854();
    v50 = v49;

    v51 = sub_96A60(v48, v50, &aBlock);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    sub_7610(0, &qword_123F48, NSString_ptr);
    sub_AB6B0();
    v52 = sub_BDA24();
    v54 = sub_96A60(v52, v53, &aBlock);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_96A60(a4, v124, &aBlock);
    _os_log_impl(&dword_0, v45, v46, "About to send dictionary: %s toURIS: %s, from: %s", v47, 0x20u);
    swift_arrayDestroy();
  }

  v114 = [v120 deliveryController];
  sub_97B60(_swiftEmptyArrayStorage);
  v113 = sub_BD834().super.isa;

  v64 = sub_BD884();
  v65 = v122;
  sub_9FDA8(v44);
  v66 = sub_BDA04().super.isa;

  sub_9D25C(v116);

  v67 = sub_BD834().super.isa;

  v68 = swift_allocObject();
  *(v68 + 16) = v44;
  v130 = sub_AB3C0;
  v131 = v68;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v128 = sub_A0124;
  v129 = &unk_114F60;
  v69 = _Block_copy(&aBlock);

  [v114 sendMessageDictionary:v113 encryptDictionary:1 fromID:v64 fromAccount:v65 toURIs:v66 toGroup:0 priority:300 options:v67 willSendBlock:0 completionBlock:v69];
  _Block_release(v69);

  if ((v118 & 1) == 0)
  {

LABEL_29:
    return;
  }

  v70 = sub_BD884();
  *&v126[0] = v110;

  v71 = v120;
  sub_9E62C(v111, 1);

  sub_9CF94(v72);

  v73 = sub_BD834().super.isa;

  v74 = JWEncodeDictionary();

  if (!v74)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v75 = [v74 _FTCopyGzippedData];

  if (!v75)
  {

    v95 = sub_BD794();
    v96 = sub_BDA64();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&aBlock = v98;
      *v97 = 136315138;

      v99 = sub_BD854();
      v101 = v100;

      v102 = sub_96A60(v99, v101, &aBlock);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_0, v95, v96, "No peer encoded dictionary created. Bailing. peerTransferDict: %s", v97, 0xCu);
      sub_97C9C(v98);
    }

    goto LABEL_29;
  }

  v123 = v65;
  v76 = sub_BD594();
  v78 = v77;

  v79 = sub_BD574().super.isa;
  sub_AB36C(v76, v78);
  v80 = sub_BD8B4();
  v82 = v81;
  v83 = v79;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v116;
  v119 = v83;
  sub_A7910(v83, v80, v82, v84);

  v117 = aBlock;

  v85 = v70;
  v86 = sub_BD794();
  v87 = sub_BDA84();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v88 = 136315650;

    v90 = sub_BD854();
    v92 = v91;

    v93 = sub_96A60(v90, v92, &aBlock);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2112;
    *(v88 + 14) = v85;
    *v89 = v85;
    *(v88 + 22) = 2080;
    v94 = v85;
    *(v88 + 24) = sub_96A60(a4, v124, &aBlock);
    _os_log_impl(&dword_0, v86, v87, "About to send dictionary to peer devices: %s toURIS: %@, from: %s", v88, 0x20u);
    sub_75B0(v89, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();

    v71 = v120;
  }

  v121 = [v71 deliveryController];
  sub_97B60(_swiftEmptyArrayStorage);
  v115 = sub_BD834().super.isa;

  v125 = sub_BD884();
  sub_94950(&qword_123F40, &unk_CE840);
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_CE490;
  *&aBlock = v85;
  sub_7610(0, &qword_123F48, NSString_ptr);
  sub_AB6B0();
  v104 = v85;
  sub_BDBC4();
  sub_A84E8(v103);
  swift_setDeallocating();
  sub_97CE8(v103 + 32);
  v105 = sub_BDA04().super.isa;

  sub_9D25C(v117);

  v106 = sub_BD834().super.isa;

  v107 = swift_allocObject();
  *(v107 + 16) = v104;
  v130 = sub_AB718;
  v131 = v107;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v128 = sub_A0124;
  v129 = &unk_114FB0;
  v108 = _Block_copy(&aBlock);
  v109 = v104;

  [v121 sendMessageDictionary:v115 encryptDictionary:1 fromID:v125 fromAccount:v123 toURIs:v105 toGroup:0 priority:300 options:v106 willSendBlock:0 completionBlock:v108];

  _Block_release(v108);
}

uint64_t sub_9FDA8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_BDB74())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_94950(&qword_123F58, &qword_CE850);
  v3 = sub_BDC04();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_BDB64();
  sub_7610(0, &qword_123F48, NSString_ptr);
  sub_AB6B0();
  result = sub_BDA44();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = sub_BDB94();
    if (!v16)
    {
LABEL_34:
      sub_75A8();

      return v3;
    }

    *&v27 = v16;
    sub_7610(0, &qword_123F48, NSString_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_7610(0, &qword_123F48, NSString_ptr);
    swift_dynamicCast();
    result = sub_BDBA4(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_A0124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a3)
  {
    v12 = sub_BD954();
  }

  else
  {
    v12 = 0;
  }

  v13 = a2;
  v11(a2, v12, a4, a5, a6);
}

void MessageServiceSession.receiveIncomingBlastdoorBackgroundCommand(_:for:sender:senderContext:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = a1;
  sub_A88DC(a1, v22);
  v24[5] = v22[5];
  v24[6] = v22[6];
  v25[0] = v23[0];
  *(v25 + 9) = *(v23 + 9);
  v24[2] = v22[2];
  v24[3] = v22[3];
  v24[4] = v22[4];
  v24[0] = v22[0];
  v24[1] = v22[1];
  if (sub_A9758(v24) == 1)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v11 = sub_BD7B4();
    sub_96A28(v11, qword_1244F8);
    v12 = v10;

    v13 = sub_BD794();
    v14 = sub_BDA64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315394;
      if (a1)
      {
        v16 = [v12 debugDescription];
        v17 = sub_BD8B4();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_96A60(v17, v19, &v21);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_96A60(a3, a4, &v21);
      _os_log_impl(&dword_0, v13, v14, "Failed to parse background command for %s. Sender: %s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    sub_A0458(v22, a2, a3, a4, a5);
    sub_75B0(v22, &qword_123EE0, &qword_CE500);
  }
}

void sub_A0458(__int128 *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v11 = sub_BD7C4();
  v295 = *(v11 - 8);
  v296 = v11;
  v12 = *(v295 + 64);
  __chkstk_darwin(v11);
  v293 = v272 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_BD7F4();
  v292 = *(v294 - 8);
  v14 = *(v292 + 64);
  __chkstk_darwin(v294);
  v291 = v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD814();
  v17 = *(v16 - 8);
  v298 = v16;
  v299 = v17;
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v290 = v272 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v297 = v272 - v21;
  v22 = sub_BD624();
  isa = v22[-1].isa;
  v305 = v22;
  v23 = isa[8];
  __chkstk_darwin(v22);
  v303 = v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD544();
  v301 = *(v25 - 8);
  v302 = v25;
  v26 = *(v301 + 64);
  v27 = __chkstk_darwin(v25);
  v29 = v272 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v300 = v272 - v30;
  v31 = [objc_opt_self() sharedFeatureFlags];
  v32 = [v31 isTranscriptBackgroundsEnabled];

  if (!v32)
  {
    return;
  }

  if (![a5 isTrustedSender])
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v45 = sub_BD7B4();
    sub_96A28(v45, qword_1244F8);
    v305 = sub_BD794();
    v46 = sub_BDA84();
    if (os_log_type_enabled(v305, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v305, v46, "Refusing to receive transcript background. Sender context indicates untrusted sender.", v47, 2u);
    }

    v48 = v305;

    return;
  }

  v33 = v29;
  v284 = a3;
  v288 = v5;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v282 = a5;
  v34 = sub_BD7B4();
  v35 = sub_96A28(v34, qword_1244F8);

  v36 = a2;
  sub_97DF4(a1, &v341, &qword_123EE0, &qword_CE500);
  v287 = v35;
  v37 = sub_BD794();
  LODWORD(v35) = sub_BDA84();

  v289 = v36;

  sub_75B0(a1, &qword_123EE0, &qword_CE500);
  LODWORD(v283) = v35;
  v38 = os_log_type_enabled(v37, v35);
  v285 = a4;
  v286 = a2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *&v333 = swift_slowAlloc();
    *v39 = 136315650;
    v281 = v33;
    if (a2)
    {
      v40 = [v289 chatIdentifier];
      if (v40)
      {
        v41 = v40;
        v42 = sub_BD8B4();
        v44 = v43;
      }

      else
      {
        v44 = 0xE500000000000000;
        v42 = 0x3E6C696E3CLL;
      }
    }

    else
    {
      v42 = 0x3E6C696E3CLL;
      v44 = 0xE500000000000000;
    }

    v50 = sub_96A60(v42, v44, &v333);

    *(v39 + 4) = v50;
    *(v39 + 12) = 2080;
    if (v285)
    {
      v51 = v284;
    }

    else
    {
      v51 = 0x3E6C696E3CLL;
    }

    if (v285)
    {
      v52 = v285;
    }

    else
    {
      v52 = 0xE500000000000000;
    }

    v53 = sub_96A60(v51, v52, &v333);

    *(v39 + 14) = v53;
    *(v39 + 22) = 2080;
    v54 = a1[7];
    v347 = a1[6];
    v348[0] = v54;
    *(v348 + 9) = *(a1 + 121);
    v55 = a1[3];
    v343 = a1[2];
    v344 = v55;
    v56 = a1[5];
    v345 = a1[4];
    v346 = v56;
    v57 = a1[1];
    v341 = *a1;
    v342 = v57;
    sub_94950(&qword_123EE0, &qword_CE500);
    v58 = sub_BDB04();
    v60 = sub_96A60(v58, v59, &v333);

    *(v39 + 24) = v60;
    _os_log_impl(&dword_0, v37, v283, "Received incoming transcript background for chatID: %s from: %s. Incoming command: %s", v39, 0x20u);
    swift_arrayDestroy();

    v49 = v281;
  }

  else
  {

    v49 = v33;
  }

  v61 = a1[7];
  v321 = a1[6];
  v322[0] = v61;
  *(v322 + 9) = *(a1 + 121);
  v62 = a1[3];
  v317 = a1[2];
  v318 = v62;
  v63 = a1[5];
  v319 = a1[4];
  v320 = v63;
  v64 = a1[1];
  v315 = *a1;
  v316 = v64;
  if (sub_A9758(&v315) == 1)
  {
    goto LABEL_30;
  }

  v329 = v321;
  v330[0] = v322[0];
  *(v330 + 9) = *(v322 + 9);
  v325 = v317;
  v326 = v318;
  v327 = v319;
  v328 = v320;
  v323 = v315;
  v324 = v316;
  if (!v286)
  {
LABEL_30:
    v68 = v289;
    sub_97DF4(a1, &v341, &qword_123EE0, &qword_CE500);
    v69 = sub_BD794();
    v70 = sub_BDA84();
    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *&v333 = swift_slowAlloc();
      *v71 = 136315394;
      v72 = a1[7];
      v347 = a1[6];
      v348[0] = v72;
      *(v348 + 9) = *(a1 + 121);
      v73 = a1[3];
      v343 = a1[2];
      v344 = v73;
      v74 = a1[5];
      v345 = a1[4];
      v346 = v74;
      v75 = a1[1];
      v341 = *a1;
      v342 = v75;
      sub_94950(&qword_123EE0, &qword_CE500);
      v76 = sub_BDB04();
      v78 = sub_96A60(v76, v77, &v333);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2080;
      if (v286)
      {
        v79 = [v68 description];
        v80 = sub_BD8B4();
        v82 = v81;
      }

      else
      {
        v80 = 0x3E6C696E3CLL;
        v82 = 0xE500000000000000;
      }

      v108 = sub_96A60(v80, v82, &v333);

      *(v71 + 14) = v108;
      _os_log_impl(&dword_0, v69, v70, "Refusing to receive transcript background. Missing either backgroundCommand: %s or chat: %s", v71, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_38;
  }

  v331[6] = v321;
  v332[0] = v322[0];
  *(v332 + 9) = *(v322 + 9);
  v331[2] = v317;
  v331[3] = v318;
  v331[4] = v319;
  v331[5] = v320;
  v331[0] = v315;
  v331[1] = v316;
  v65 = sub_A9770(v331);
  v66 = sub_2748(v331);
  if (v65 == 2)
  {
    v67 = v289;
    sub_97DF4(a1, &v341, &qword_123EE0, &qword_CE500);
    sub_A2750(v67, v284, v285);

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    return;
  }

  v83 = *(v66 + 96);
  v84 = *(v66 + 112);
  v85 = *(v66 + 136);
  v86 = *(v66 + 104);
  v88 = *(v66 + 80);
  v87 = *(v66 + 88);
  v90 = *(v66 + 64);
  v89 = *(v66 + 72);
  v92 = *(v66 + 48);
  v91 = *(v66 + 56);
  v94 = *(v66 + 32);
  v93 = *(v66 + 40);
  v96 = *(v66 + 16);
  v95 = *(v66 + 24);
  v97 = *(v66 + 8);
  v99 = *(v66 + 120);
  *&v307 = *v66;
  v98 = v307;
  *(&v307 + 1) = v97;
  v276 = v90;
  v277 = v97;
  v283 = v96;
  *&v308 = v96;
  *(&v308 + 1) = v95;
  v272[2] = v95;
  v272[3] = v93;
  v279 = v92;
  v280 = v94;
  *&v309 = v94;
  *(&v309 + 1) = v93;
  *&v310 = v92;
  *(&v310 + 1) = v91;
  v273 = v87;
  v274 = v91;
  *&v311 = v90;
  *(&v311 + 1) = v89;
  v272[4] = v89;
  v281 = v88;
  *&v312 = v88;
  *(&v312 + 1) = v87;
  v275 = v83;
  LOBYTE(v313) = v83 & 1;
  *(&v313 + 1) = v86;
  LOBYTE(v314[0]) = v84 & 1;
  *(v314 + 8) = v99;
  BYTE8(v314[1]) = v85 & 1;
  v343 = v309;
  v344 = v310;
  v341 = v307;
  v342 = v308;
  *(v348 + 9) = *(v314 + 9);
  v347 = v313;
  v348[0] = v314[0];
  v345 = v311;
  v346 = v312;
  sub_97DF4(a1, &v333, &qword_123EE0, &qword_CE500);
  v100 = v289;
  sub_97DF4(a1, &v333, &qword_123EE0, &qword_CE500);
  v101 = [v100 transcriptBackgroundVersion];
  v102 = [v101 unsignedLongLongValue];

  v289 = v98;
  if (v98 < v102)
  {
    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    v69 = v100;
    sub_ABB78(&v307, &v333);
    v103 = sub_BD794();
    v104 = sub_BDA84();

    if (!os_log_type_enabled(v103, v104))
    {
      sub_ABBB0(&v307);
      sub_ABBB0(&v307);

      return;
    }

    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 134218242;
    sub_ABBB0(&v307);
    *(v105 + 4) = v289;
    sub_ABBB0(&v307);
    *(v105 + 12) = 2112;
    v107 = [v69 transcriptBackgroundVersion];
    *(v105 + 14) = v107;
    *v106 = v107;
    _os_log_impl(&dword_0, v103, v104, "Incoming background version: %llu is lower than current chat background version: %@.", v105, 0x16u);
    sub_75B0(v106, &qword_123E98, &unk_CEE80);

    goto LABEL_38;
  }

  v109 = [v100 transcriptBackgroundProperties];
  v278 = v100;
  v110 = v283;
  if (v109)
  {
    v111 = v109;
    v112 = sub_BD844();

    v113 = sub_BD8B4();
    v115 = v114;
    v116 = *(v112 + 16);
    v272[1] = v112;
    if (v116)
    {
      v117 = v113;

      v118 = sub_94048(v117, v115);
      v120 = v119;

      if (v120)
      {
        sub_97D3C(*(v112 + 56) + 32 * v118, &v333);
        v121 = swift_dynamicCast();
        if (v121)
        {
          v122 = v306[0];
        }

        else
        {
          v122 = 0;
        }

        if (v121)
        {
          v123 = v306[1];
        }

        else
        {
          v123 = 0;
        }
      }

      else
      {
        v122 = 0;
        v123 = 0;
      }

      v100 = v278;
    }

    else
    {

      v122 = 0;
      v123 = 0;
    }

    if (v110)
    {
      if (v123)
      {
        if (v277 == v122 && v110 == v123)
        {
        }

        else
        {
          v124 = sub_BDD24();

          if ((v124 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_62;
      }
    }

    else if (!v123)
    {
LABEL_62:
      v125 = [v100 transcriptBackgroundPath];
      if (!v125)
      {
        goto LABEL_77;
      }

      v126 = v125;
      v127 = sub_BD8B4();
      v129 = v128;
      v130 = [objc_opt_self() defaultManager];
      v131 = [v130 fileExistsAtPath:v126];

      if (v131)
      {
        v132 = sub_BD794();
        v133 = sub_BDA84();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&dword_0, v132, v133, "We already have this transfer ID and asset, skipping.", v134, 2u);
        }

        v339 = v329;
        v340[0] = v330[0];
        *(v340 + 9) = *(v330 + 9);
        v335 = v325;
        v336 = v326;
        v337 = v327;
        v338 = v328;
        v333 = v323;
        v334 = v324;
        if (sub_A9770(&v333) == 1)
        {
          sub_2748(&v333);
          v135 = v278;
          v136 = [v278 style];
          v137 = [v135 chatIdentifier];
          if (v137)
          {
            v138 = v137;

            v139 = sub_BD794();
            v140 = sub_BDA84();

            v141 = os_log_type_enabled(v139, v140);
            LODWORD(v305) = v136;
            if (v141)
            {
              v142 = v127;
              v143 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              v306[0] = v144;
              *v143 = 136315138;
              *(v143 + 4) = sub_96A60(v142, v129, v306);
              _os_log_impl(&dword_0, v139, v140, "Asked to refresh, but we already have the correct background asset. Ping the client with the current properties. Asset path: %s", v143, 0xCu);
              sub_97C9C(v144);
            }

            v145 = v288;
            v146 = [v288 broadcasterForChatListeners];
            v147 = v278;
            v148 = [v278 guid];
            if (v148)
            {
              v149 = v148;
              v150 = [v147 properties];
              if (v150)
              {
                v151 = v150;

                sub_75B0(a1, &qword_123EE0, &qword_CE500);

                sub_ABBB0(&v307);
                sub_BD844();

                v152 = sub_BD834().super.isa;

                [v146 chat:v149 propertiesUpdated:v152];
                swift_unknownObjectRelease();

                v153 = [v145 broadcasterForChatListeners];
                v154 = [v145 account];
                v155 = [v154 accountID];

                if (!v155)
                {
                  sub_BD8B4();
                  v155 = sub_BD884();
                }

                [v153 transcriptBackgroundUpdatedForChatIdentifier:v138 style:v305 account:v155 userInfo:0];
                swift_unknownObjectRelease();

                goto LABEL_106;
              }
            }

            else
            {

              __break(1u);
            }

            __break(1u);
LABEL_140:
            __break(1u);
            return;
          }
        }

        else
        {
        }

        sub_ABBB0(&v307);
        sub_75B0(a1, &qword_123EE0, &qword_CE500);
        return;
      }
    }

LABEL_77:
  }

  if (v85)
  {
    sub_ABBB0(&v307);
    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    v156 = sub_BD794();
    v157 = sub_BDA84();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_0, v156, v157, "Got explicit request to remove background. Removing.", v158, 2u);
    }

    v159 = v284;
    if (v285)
    {
      v160 = sub_BD884();
      v161 = [v160 _stripFZIDPrefix];

      if (v161)
      {
        v159 = sub_BD8B4();
        v163 = v162;

LABEL_97:
        v181 = v278;
        sub_9BFE0(v278, v159, v163, v289);

        return;
      }

      v159 = 0;
    }

    v163 = 0;
    goto LABEL_97;
  }

  v164 = IMSafeTemporaryDirectory();
  sub_BD504();

  v165 = v300;
  sub_BD4F4();
  v166 = *(v301 + 8);
  v167 = v49;
  v168 = v302;
  v166(v167, v302);
  sub_BD514(1);
  v166(v165, v168);
  v169 = [objc_opt_self() defaultManager];
  v170 = v303;
  sub_BD614();
  sub_BD604();
  (isa[1])(v170, v305);
  v171 = sub_BD884();

  v172 = sub_BD884();
  v173 = [v169 createUniqueDirectoryWithName:v171 atPath:v172 ofType:0];

  isa = v173;
  if (v173)
  {
    v174 = v173;
    v175 = sub_BD884();
    v176 = [v174 stringByAppendingPathComponent:v175];

    v177 = sub_BD8B4();
    v305 = v178;
  }

  else
  {
    v177 = 0;
    v305 = 0;
  }

  v179 = v283;
  v180 = v288;
  if (!v283)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
LABEL_104:

    sub_ABB78(&v307, &v333);
    v182 = sub_BD794();
    v183 = sub_BDA64();
    sub_ABBB0(&v307);
    if (!os_log_type_enabled(v182, v183))
    {

      sub_ABBB0(&v307);
      return;
    }

    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *&v333 = v185;
    *v184 = 136315138;
    sub_A3284();
    sub_ABBB0(&v307);
    v186 = sub_BD854();
    v188 = v187;

    v189 = sub_96A60(v186, v188, &v333);

    *(v184 + 4) = v189;
    _os_log_impl(&dword_0, v182, v183, "Missing a necessary parameter in incoming background command: %s", v184, 0xCu);
    sub_97C9C(v185);

LABEL_106:
    return;
  }

  if (!v280)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    goto LABEL_103;
  }

  if (!v279)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (!v276)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (!v281)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (v275)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

LABEL_103:

    goto LABEL_104;
  }

  v303 = v177;
  v190 = [v180 transcriptBackgroundTransfersCurrentlyDownloading];
  v191 = v277;
  v192 = sub_BD884();
  v193 = v179;
  v194 = [v190 containsObject:v192];

  if (v194)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    v69 = v278;
    sub_ABB78(&v307, &v333);
    v195 = sub_BD794();
    v196 = sub_BDA84();
    sub_ABBB0(&v307);

    if (os_log_type_enabled(v195, v196))
    {
      v197 = 0x3E6C696E3CLL;
      v198 = swift_slowAlloc();
      *&v333 = swift_slowAlloc();
      *v198 = 136315650;
      v199 = [v69 displayName];
      if (v199)
      {
        v200 = v199;
        v201 = sub_BD8B4();
        v203 = v202;
      }

      else
      {
        v203 = 0xE500000000000000;
        v201 = 0x3E6C696E3CLL;
      }

      v263 = sub_96A60(v201, v203, &v333);

      *(v198 + 4) = v263;
      *(v198 + 12) = 2080;
      v264 = v283;

      sub_ABBB0(&v307);
      v265 = sub_96A60(v277, v264, &v333);

      *(v198 + 14) = v265;
      *(v198 + 22) = 2080;
      v266 = [v69 guid];
      if (v266)
      {
        v267 = v266;
        v197 = sub_BD8B4();
        v269 = v268;
      }

      else
      {
        v269 = 0xE500000000000000;
      }

      v270 = sub_96A60(v197, v269, &v333);

      *(v198 + 24) = v270;
      _os_log_impl(&dword_0, v195, v196, "Not downloading background for chat displayname: %s, already attempting a download for transfer ID: %s. Chat: %s", v198, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_ABBB0(&v307);
    }

LABEL_38:

    return;
  }

  v204 = [v180 transcriptBackgroundTransfersCurrentlyDownloading];
  v205 = sub_BD884();
  [v204 addObject:v205];

  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v206 = v180;
  v301 = sub_BDAA4();
  v207 = v290;
  sub_BD804();
  sub_BD824();
  v208 = v299[1];
  ++v299;
  v302 = v208;
  v208(v207, v298);
  v209 = swift_allocObject();
  v209[2] = v206;
  v209[3] = v191;
  v209[4] = v193;
  *&v335 = sub_ABBE0;
  *(&v335 + 1) = v209;
  *&v333 = _NSConcreteStackBlock;
  *(&v333 + 1) = 1107296256;
  *&v334 = sub_AE028;
  *(&v334 + 1) = &unk_115050;
  v210 = _Block_copy(&v333);

  v300 = v206;
  v211 = v291;
  sub_BD7E4();
  v306[0] = _swiftEmptyArrayStorage;
  sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags);
  sub_94950(&qword_123F08, &qword_CE530);
  sub_A9D9C();
  v212 = v293;
  v213 = v296;
  sub_BDB34();
  v214 = v297;
  v215 = v301;
  sub_BDA94();
  _Block_release(v210);

  (*(v295 + 8))(v212, v213);
  (*(v292 + 8))(v211, v294);
  v302(v214, v298);

  v216 = v278;

  v217 = v193;
  v218 = v276;

  v219 = sub_BD794();
  v220 = sub_BDA84();
  v302 = v216;

  if (os_log_type_enabled(v219, v220))
  {
    v221 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    *&v333 = v301;
    *v221 = 136315906;
    v222 = v277;
    *(v221 + 4) = sub_96A60(v277, v217, &v333);
    *(v221 + 12) = 2080;
    *(v221 + 14) = sub_96A60(v274, v218, &v333);
    *(v221 + 22) = 2080;
    if (v305)
    {
      v223 = v303;
    }

    else
    {
      v223 = 0x3E6C696E3CLL;
    }

    if (v305)
    {
      v224 = v305;
    }

    else
    {
      v224 = 0xE500000000000000;
    }

    v225 = sub_96A60(v223, v224, &v333);

    *(v221 + 24) = v225;
    *(v221 + 32) = 2112;
    v226 = v302;
    *(v221 + 34) = v302;
    v227 = v299;
    *v299 = v286;
    v228 = v226;
    _os_log_impl(&dword_0, v219, v220, "Preparing to fetch background asset for transferID: %s. Request URL: %s. To path: %s Chat: %@", v221, 0x2Au);
    sub_75B0(v227, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();
  }

  else
  {

    v222 = v277;
  }

  v229 = [objc_opt_self() sharedInstance];
  if (!v229)
  {
    goto LABEL_140;
  }

  v230 = v229;

  v301 = sub_BD884();
  v299 = IDSServiceNameiMessage;
  if (v305)
  {
    v303 = sub_BD884();
  }

  else
  {
    v303 = 0;
  }

  v305 = sub_BD884();

  v298 = sub_BD884();

  v231 = sub_BD564();
  v233 = v232;

  v234 = 0;
  if (v233 >> 60 != 15)
  {
    v234 = sub_BD574().super.isa;
    sub_ABCAC(v231, v233);
  }

  v235 = v234;
  v236 = sub_BD564();
  v238 = v237;

  v239 = 0;
  if (v238 >> 60 != 15)
  {
    v239 = sub_BD574().super.isa;
    sub_ABCAC(v236, v238);
  }

  v297 = v239;
  v240 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v241 = swift_allocObject();
  *(v241 + 16) = v240;
  *(v241 + 24) = v222;
  v242 = v302;
  *(v241 + 32) = v283;
  *(v241 + 40) = v242;
  v243 = v348[0];
  *(v241 + 144) = v347;
  *(v241 + 160) = v243;
  *(v241 + 169) = *(v348 + 9);
  v244 = v344;
  *(v241 + 80) = v343;
  *(v241 + 96) = v244;
  v245 = v346;
  *(v241 + 112) = v345;
  *(v241 + 128) = v245;
  v246 = v342;
  *(v241 + 48) = v341;
  *(v241 + 64) = v246;
  v247 = v330[0];
  *(v241 + 288) = v329;
  *(v241 + 304) = v247;
  *(v241 + 313) = *(v330 + 9);
  v248 = v326;
  *(v241 + 224) = v325;
  *(v241 + 240) = v248;
  v249 = v328;
  *(v241 + 256) = v327;
  *(v241 + 272) = v249;
  v250 = v324;
  *(v241 + 192) = v323;
  *(v241 + 208) = v250;
  v251 = v285;
  *(v241 + 336) = v284;
  *(v241 + 344) = v251;
  v252 = v282;
  *(v241 + 352) = v282;
  *&v335 = sub_ABC60;
  *(&v335 + 1) = v241;
  *&v333 = _NSConcreteStackBlock;
  *(&v333 + 1) = 1107296256;
  *&v334 = sub_A4590;
  *(&v334 + 1) = &unk_1150A0;
  v253 = _Block_copy(&v333);
  v254 = v242;

  v255 = v252;

  v271 = v239;
  v256 = v230;
  v257 = v230;
  v258 = v301;
  v259 = v298;
  v260 = v299;
  v261 = v303;
  v262 = v305;
  [v257 receiveFileTransfer:v301 topic:v299 path:v303 requestURLString:v305 ownerID:v298 signature:v235 decryptionKey:v271 fileSize:v273 progressBlock:0 completionBlock:v253];

  _Block_release(v253);
}

void sub_A2750(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD7B4();
  sub_96A28(v6, qword_1244F8);

  v7 = a1;
  v8 = sub_BD794();
  v9 = sub_BDA84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v101[0] = v12;
    *v10 = 136315394;
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      a2 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_96A60(a2, v13, v101);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v15 = v7;
    _os_log_impl(&dword_0, v8, v9, "Asked by %s to send background info for chat %@", v10, 0x16u);
    sub_75B0(v11, &qword_123E98, &unk_CEE80);

    sub_97C9C(v12);
  }

  v16 = [v7 transcriptBackgroundProperties];
  if (v16)
  {
    v17 = v16;
    v18 = sub_BD844();

    if (a3)
    {
      v19 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_48;
      }

      v21 = sub_94048(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_97D3C(*(v18 + 56) + 32 * v21, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_49;
      }

      v24 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_47;
      }

      v26 = sub_94048(v24, v25);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_48;
      }

      sub_97D3C(*(v18 + 56) + 32 * v26, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_48;
      }

      v29 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_46;
      }

      v31 = sub_94048(v29, v30);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_97D3C(*(v18 + 56) + 32 * v31, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      v34 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_54;
      }

      v36 = sub_94048(v34, v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
LABEL_46:

LABEL_47:

LABEL_48:

LABEL_49:

        v75 = sub_BD794();
        v76 = sub_BDA84();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v101[0] = v78;
          *v77 = 136315138;
          v79 = sub_BD854();
          v81 = v80;

          v82 = sub_96A60(v79, v81, v101);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_0, v75, v76, "Unable to respond to a background request because we don't have all the required properties. Current properties: %s", v77, 0xCu);
          sub_97C9C(v78);
        }

        else
        {
        }

LABEL_52:

        return;
      }

      sub_97D3C(*(v18 + 56) + 32 * v36, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_48;
      }

      v39 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_60;
      }

      v41 = sub_94048(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
LABEL_54:

        goto LABEL_46;
      }

      sub_97D3C(*(v18 + 56) + 32 * v41, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_48;
      }

      v44 = sub_BD8B4();
      if (*(v18 + 16))
      {
        v46 = sub_94048(v44, v45);
        v48 = v47;

        if ((v48 & 1) == 0)
        {
          goto LABEL_60;
        }

        sub_97D3C(*(v18 + 56) + 32 * v46, v101);
        sub_7610(0, &qword_123EA0, NSNumber_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_62;
        }

        v86 = [v92[0] integerValue];

        v49 = sub_BD8B4();
        if (*(v18 + 16))
        {
          v51 = sub_94048(v49, v50);
          v53 = v52;

          if (v53)
          {
            sub_97D3C(*(v18 + 56) + 32 * v51, v101);
            if (swift_dynamicCast())
            {
              v87 = [v92[0] integerValue];

              v54 = sub_BD8B4();
              if (*(v18 + 16))
              {
                v56 = sub_94048(v54, v55);
                v58 = v57;

                if (v58)
                {
                  sub_97D3C(*(v18 + 56) + 32 * v56, v100);
                  if (swift_dynamicCast())
                  {

                    v59 = [v99 unsignedLongLongValue];

                    v91 = sub_97980(_swiftEmptyArrayStorage);
                    v93 = *v92;
                    v94 = *v92;
                    v95 = *v92;
                    v96 = *v92;
                    *&v97 = v86;
                    *(&v97 + 1) = v87;
                    *&v98 = v59;
                    *(&v98 + 1) = 4;
                    v101[0] = *v92;
                    v101[1] = *v92;
                    v101[5] = v97;
                    v101[6] = v98;
                    v101[3] = *v92;
                    v101[4] = *v92;
                    v101[2] = *v92;
                    sub_A8648(v101);
                    sub_ACE58(v92);
                    v90 = 0;
                    v60 = _LastAddressedURIForChat(v7, oslog, &v90);
                    v61 = v90;
                    if (v60)
                    {
                      v62 = v60;
                      v63 = sub_BD8B4();
                      v65 = v64;
                      v66 = v61;

                      v67 = v91;
                      sub_94950(&qword_123F28, &qword_CE828);
                      inited = swift_initStackObject();
                      *(inited + 16) = xmmword_CE4B0;
                      *(inited + 32) = sub_BD884();
                      sub_A977C(inited);
                      v70 = v69;
                      swift_setDeallocating();
                      v71 = *(inited + 16);
                      swift_arrayDestroy();
                      sub_9ED4C(v67, v70, v7, v63, v65, 0);

                      return;
                    }

                    v83 = v90;

                    v75 = sub_BD794();
                    v84 = sub_BDA84();
                    if (os_log_type_enabled(v75, v84))
                    {
                      v85 = swift_slowAlloc();
                      *v85 = 0;
                      _os_log_impl(&dword_0, v75, v84, "No IDS account or callerURI, not responding to background request.", v85, 2u);
                    }

                    goto LABEL_52;
                  }

                  goto LABEL_62;
                }

                goto LABEL_60;
              }

              goto LABEL_59;
            }

LABEL_62:

            goto LABEL_48;
          }

LABEL_60:

          goto LABEL_54;
        }
      }

LABEL_59:

      goto LABEL_60;
    }

    osloga = sub_BD794();
    v72 = sub_BDA84();
    if (os_log_type_enabled(osloga, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "No sender, not responding to background request.";
      goto LABEL_40;
    }
  }

  else
  {
    osloga = sub_BD794();
    v72 = sub_BDA84();
    if (os_log_type_enabled(osloga, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "We have no background properties, not responding to background request.";
LABEL_40:
      _os_log_impl(&dword_0, osloga, v72, v74, v73, 2u);
    }
  }
}

unint64_t sub_A3284()
{
  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE4C0;
  *(inited + 32) = sub_BD8B4();
  v2 = *v0;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  *(inited + 80) = sub_BD8B4();
  *(inited + 88) = v4;
  v5 = v0[1];
  v6 = v0[2];
  *(inited + 120) = &type metadata for String;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 128) = sub_BD8B4();
  *(inited + 136) = v8;
  v9 = v0[3];
  v10 = v0[4];
  *(inited + 168) = &type metadata for String;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v11;
  *(inited + 176) = sub_BD8B4();
  *(inited + 184) = v12;
  v13 = v0[5];
  v14 = v0[6];
  *(inited + 216) = &type metadata for String;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *(inited + 192) = v13;
  *(inited + 200) = v15;
  *(inited + 224) = sub_BD8B4();
  *(inited + 232) = v16;
  v17 = v0[7];
  v18 = v0[8];
  *(inited + 264) = &type metadata for String;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v19;
  *(inited + 272) = sub_BD8B4();
  *(inited + 280) = v20;
  v21 = v0[9];
  v22 = v0[10];
  *(inited + 312) = &type metadata for String;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  *(inited + 288) = v21;
  *(inited + 296) = v23;
  *(inited + 320) = sub_BD8B4();
  *(inited + 328) = v24;
  if (v0[12])
  {
    *(inited + 360) = &type metadata for String;
    *(inited + 336) = 0;
    *(inited + 344) = 0xE000000000000000;
  }

  else
  {
    v25 = v0[11];
    v37 = &type metadata for UInt;
    *&v36 = v25;
    sub_94D98(&v36, (inited + 336));
  }

  *(inited + 368) = sub_BD8B4();
  *(inited + 376) = v26;
  if (v0[14])
  {
    *(inited + 408) = &type metadata for String;
    *(inited + 384) = 0;
    *(inited + 392) = 0xE000000000000000;
  }

  else
  {
    v27 = v0[13];
    v37 = &type metadata for UInt;
    *&v36 = v27;
    sub_94D98(&v36, (inited + 384));
  }

  *(inited + 416) = sub_BD8B4();
  *(inited + 424) = v28;
  v29 = *(v0 + 136);
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = v29;
  *(inited + 464) = sub_BD8B4();
  *(inited + 472) = v30;
  v31 = v0[15];
  v32 = v0[16];
  *(inited + 504) = &type metadata for String;
  if (!v32)
  {
    v31 = 0;
  }

  v33 = 0xE000000000000000;
  if (v32)
  {
    v33 = v32;
  }

  *(inited + 480) = v31;
  *(inited + 488) = v33;

  v34 = sub_97980(inited);
  swift_setDeallocating();
  sub_94950(&qword_123EC8, &unk_CE510);
  swift_arrayDestroy();
  return v34;
}

void sub_A355C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v137 = a8;
  v138 = a4;
  v127 = a7;
  v134 = a6;
  LODWORD(v135) = a5;
  v129 = a1;
  v130 = a3;
  v139 = a2;
  v136 = a13;
  v131 = a10;
  v17 = a14[6];
  v18 = a14[7];
  v19 = a14[4];
  v160[5] = a14[5];
  v160[6] = v17;
  v161[0] = v18;
  *(v161 + 9) = *(a14 + 121);
  v20 = a14[3];
  v160[2] = a14[2];
  v160[3] = v20;
  v160[4] = v19;
  v22 = *a14;
  v21 = a14[1];
  v125 = a14;
  v160[0] = v22;
  v160[1] = v21;
  v23 = sub_BD544();
  v123 = *(v23 - 8);
  v124 = v23;
  v24 = *(v123 + 64);
  v25 = __chkstk_darwin(v23);
  v122 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v126 = &v121 - v28;
  __chkstk_darwin(v27);
  v128 = &v121 - v29;
  v30 = sub_BD7C4();
  v133 = *(v30 - 8);
  v31 = *(v133 + 64);
  __chkstk_darwin(v30);
  v33 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_BD7F4();
  v34 = *(v132 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v132);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v38 = sub_BDAA4();
  v39 = swift_allocObject();
  v40 = v131;
  v39[2] = a9;
  v39[3] = v40;
  v39[4] = a11;
  *&v151 = sub_ABCC0;
  *(&v151 + 1) = v39;
  *&v149 = _NSConcreteStackBlock;
  *(&v149 + 1) = 1107296256;
  *&v150 = sub_AE028;
  *(&v150 + 1) = &unk_1150F0;
  v41 = _Block_copy(&v149);
  v131 = a9;

  sub_BD7E4();
  *&v149 = _swiftEmptyArrayStorage;
  sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags);
  sub_94950(&qword_123F08, &qword_CE530);
  sub_A9D9C();
  sub_BDB34();
  sub_BDAB4();
  _Block_release(v41);

  v42 = v33;
  v43 = v138;
  (*(v133 + 8))(v42, v30);
  (*(v34 + 8))(v37, v132);
  v44 = v139;
  if (v139 && (v135 & 1) != 0 && v43 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v137 = Strong;
    v135 = a17;

    v46 = v125;
    v47 = sub_A4348();
    v48 = sub_9CF94(v47);

    v49 = v46[7];
    v155 = v46[6];
    v156[0] = v49;
    *(v156 + 9) = *(v46 + 121);
    v50 = v46[3];
    v151 = v46[2];
    v152 = v50;
    v51 = v46[5];
    v153 = v46[4];
    v154 = v51;
    v52 = v46[1];
    v149 = *v46;
    v150 = v52;
    if (sub_A9770(&v149) == 1)
    {
      sub_2748(&v149);
      v53 = 1;
    }

    else
    {
      v53 = sub_A9770(v160) == 3;
    }

    v75 = *v136;
    *&v157 = a12;
    *(&v157 + 1) = v130;
    *&v158[0] = v43;
    *(&v158[0] + 1) = v129;
    *&v158[1] = v44;
    *(&v158[1] + 1) = v75;
    *&v159[0] = v48;
    *(&v159[0] + 1) = a15;
    *&v159[1] = a16;
    BYTE8(v159[1]) = v53;

    v76 = a12;
    v77 = IMTranscriptBackgroundDirectory();
    sub_BD504();

    v78 = objc_opt_self();
    v79 = [v78 defaultManager];
    sub_BD524();
    v80 = sub_BD884();

    LOBYTE(v77) = [v79 fileExistsAtPath:v80];

    if ((v77 & 1) == 0)
    {
      v81 = [v78 defaultManager];
      sub_BD4E4(v82);
      v84 = v83;
      *&v144 = 0;
      v85 = [v81 createDirectoryAtURL:v83 withIntermediateDirectories:1 attributes:0 error:&v144];

      if (v85)
      {
        v86 = v144;
      }

      else
      {
        v87 = v144;
        sub_BD4A4();

        swift_willThrow();
        if (qword_1244F0 != -1)
        {
          swift_once();
        }

        v88 = sub_BD7B4();
        sub_96A28(v88, qword_1244F8);
        swift_errorRetain();
        v89 = sub_BD794();
        v90 = sub_BDA84();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *&v144 = v92;
          *v91 = 136315138;
          swift_getErrorValue();
          v93 = sub_BDD74();
          v95 = sub_96A60(v93, v94, &v144);

          *(v91 + 4) = v95;
          v46 = v125;
          _os_log_impl(&dword_0, v89, v90, "Got error creating background directory: %s", v91, 0xCu);
          sub_97C9C(v92);
        }

        else
        {
        }
      }
    }

    v144 = *(v158 + 8);
    v142 = 47;
    v143 = 0xE100000000000000;
    v140 = 95;
    v141 = 0xE100000000000000;
    sub_ABD60();
    sub_BDB14();
    sub_BD4F4();

    v133 = sub_BD514(1);
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    v98 = v136;
    v99 = v136[7];
    *(v97 + 112) = v136[6];
    *(v97 + 128) = v99;
    *(v97 + 137) = *(v98 + 121);
    v100 = v98[3];
    *(v97 + 48) = v98[2];
    *(v97 + 64) = v100;
    v101 = v98[5];
    *(v97 + 80) = v98[4];
    *(v97 + 96) = v101;
    v102 = v98[1];
    *(v97 + 16) = *v98;
    *(v97 + 32) = v102;
    *(v97 + 160) = v134;
    *(v97 + 168) = v96;
    v139 = v96;
    v103 = v159[0];
    *(v97 + 208) = v158[1];
    *(v97 + 224) = v103;
    *(v97 + 233) = *(v159 + 9);
    v104 = v158[0];
    *(v97 + 176) = v157;
    *(v97 + 192) = v104;
    v105 = v46[7];
    *(v97 + 352) = v46[6];
    *(v97 + 368) = v105;
    *(v97 + 377) = *(v46 + 121);
    v106 = v46[3];
    *(v97 + 288) = v46[2];
    *(v97 + 304) = v106;
    v107 = v46[5];
    *(v97 + 320) = v46[4];
    *(v97 + 336) = v107;
    v108 = v46[1];
    *(v97 + 256) = *v46;
    *(v97 + 272) = v108;
    sub_ABB78(v98, &v144);
    swift_errorRetain();

    sub_AC214(&v157, &v144);
    sub_AC24C(v46, &v144);
    v109 = v122;
    sub_BD4D4();
    sub_BD4E4(v110);
    v112 = v111;
    v113 = v124;
    v114 = *(v123 + 8);
    v114(v109, v124);
    sub_BD4D4();

    sub_BD4E4(v115);
    v117 = v116;
    v114(v109, v113);
    v118 = swift_allocObject();
    *(v118 + 16) = sub_ABDB4;
    *(v118 + 24) = v97;
    v147 = sub_AC284;
    v148 = v118;
    *&v144 = _NSConcreteStackBlock;
    *(&v144 + 1) = 1107296256;
    v145 = sub_A46B0;
    v146 = &unk_115168;
    v119 = _Block_copy(&v144);

    v120 = v137;
    [v137 generateTranscriptBackground:v112 destinationURL:v117 senderContext:v135 resultBlock:v119];
    _Block_release(v119);

    sub_AC360(&v157);
    v114(v126, v113);
    v114(v128, v113);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v54 = sub_BD7B4();
    sub_96A28(v54, qword_1244F8);

    v55 = v136;
    sub_ABB78(v136, &v149);
    v56 = v134;
    swift_errorRetain();

    v57 = sub_BD794();
    v58 = sub_BDA64();
    sub_ABBB0(v55);

    if (os_log_type_enabled(v57, v58))
    {
      v59 = 0x3E6C696E3CLL;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v149 = v133;
      *v60 = 136316418;
      if (*(v55 + 16))
      {
        v59 = *(v55 + 8);
        v62 = *(v55 + 16);
      }

      else
      {
        v62 = 0xE500000000000000;
      }

      v63 = sub_96A60(v59, v62, &v149);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2112;
      if (v56)
      {
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        v65 = v64;
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

      *(v60 + 14) = v64;
      *v61 = v65;
      *(v60 + 22) = 2080;
      if (v137)
      {
        v66 = v127;
      }

      else
      {
        v66 = 0;
      }

      if (v137)
      {
        v67 = v137;
      }

      else
      {
        v67 = 0xE000000000000000;
      }

      v68 = sub_96A60(v66, v67, &v149);

      *(v60 + 24) = v68;
      *(v60 + 32) = 1024;
      *(v60 + 34) = v135 & 1;
      *(v60 + 38) = 2080;
      if (v139)
      {
        v69 = v129;
      }

      else
      {
        v69 = 0x3E6C696E3CLL;
      }

      if (v139)
      {
        v70 = v139;
      }

      else
      {
        v70 = 0xE500000000000000;
      }

      v71 = sub_96A60(v69, v70, &v149);

      *(v60 + 40) = v71;
      *(v60 + 48) = 2080;
      if (v138)
      {
        v72 = v130;
      }

      else
      {
        v72 = 0x3E6C696E3CLL;
      }

      if (v138)
      {
        v73 = v138;
      }

      else
      {
        v73 = 0xE500000000000000;
      }

      v74 = sub_96A60(v72, v73, &v149);

      *(v60 + 50) = v74;
      _os_log_impl(&dword_0, v57, v58, "Failed to download background with transferID: %s. Error: %@, MMCS error info: %s. Success: %{BOOL}d, outTransferID: %s, path: %s", v60, 0x3Au);
      sub_75B0(v61, &qword_123E98, &unk_CEE80);

      swift_arrayDestroy();
    }
  }
}

uint64_t sub_A4304(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_A4348()
{
  v1 = v0[7];
  v37[6] = v0[6];
  v38[0] = v1;
  *(v38 + 9) = *(v0 + 121);
  v2 = v0[3];
  v37[2] = v0[2];
  v37[3] = v2;
  v3 = v0[5];
  v37[4] = v0[4];
  v37[5] = v3;
  v4 = v0[1];
  v37[0] = *v0;
  v37[1] = v4;
  sub_94950(&qword_123EE8, &qword_CE508);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_CE490;
  *(v5 + 32) = sub_BD8B4();
  *(v5 + 40) = v6;
  v7 = sub_A9770(v37);
  *(v5 + 72) = &type metadata for Int;
  *(v5 + 48) = v7 + 1;
  v8 = sub_97980(v5);
  swift_setDeallocating();
  sub_75B0(v5 + 32, &qword_123EC8, &unk_CE510);
  swift_deallocClassInstance();
  v9 = v0[7];
  v29[6] = v0[6];
  v30[0] = v9;
  *(v30 + 9) = *(v0 + 121);
  v10 = v0[3];
  v29[2] = v0[2];
  v29[3] = v10;
  v11 = v0[5];
  v29[4] = v0[4];
  v29[5] = v11;
  v12 = v0[1];
  v29[0] = *v0;
  v29[1] = v12;
  v13 = sub_A9770(v29);
  v14 = sub_2748(v29);
  if (v13 == 2)
  {
    v15 = sub_A67FC(*v14, *(v14 + 8));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = v8;
    sub_A9A6C(v15, sub_A7BFC, 0, isUniquelyReferenced_nonNull_native, v31);

    return *&v31[0];
  }

  else
  {
    v18 = *(v14 + 112);
    v19 = *(v14 + 136);
    v20 = *(v14 + 104);
    v28 = *(v14 + 96) & 1;
    v27 = v18 & 1;
    v21 = *(v14 + 16);
    v31[0] = *v14;
    v31[1] = v21;
    v22 = *(v14 + 48);
    v31[2] = *(v14 + 32);
    v31[3] = v22;
    v23 = *(v14 + 80);
    v31[4] = *(v14 + 64);
    v31[5] = v23;
    v32 = v28;
    v33 = v20;
    v34 = v18 & 1;
    v35 = *(v14 + 120);
    v36 = v19 & 1;
    v24 = sub_A3284();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v8;
    sub_A9A6C(v24, sub_A7BFC, 0, v25, &v26);

    return v26;
  }
}

uint64_t sub_A4590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a3;
  v10 = *(a1 + 40);
  v20 = *(a1 + 32);
  if (a2)
  {
    v11 = sub_BD8B4();
    v13 = v12;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v13 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_BD8B4();
  v9 = v15;
  if (a6)
  {
LABEL_4:
    v16 = sub_BD8B4();
    a6 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:

  v18 = a5;
  v20(v11, v13, v14, v9, a4, a5, v16, a6);
}

void sub_A46B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_A4728()
{
  v1 = [v0 style];
  if (v1 == 35 || v1 == 45)
  {
    result = [v0 guid];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = sub_BD8B4();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }

    return 0;
  }

  if (v1 != 43)
  {
    return 0;
  }

  result = [v0 groupID];
  if (result)
  {
    v3 = result;
    v4 = sub_BD8B4();

    return v4;
  }

  return result;
}

void MessageServiceSession.requestTranscriptBackground(_:toIdentifier:fromIdentifier:messageIsFromStorage:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a1 && a3 && a5)
  {
    v13 = a1;
    v14 = sub_BD884();
    oslog = sub_BD884();
    [v6 _requestTranscriptBackground:v13 toIdentifier:v14 fromIdentifier:oslog messageIsFromStorage:a6 & 1];
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v15 = sub_BD7B4();
    sub_96A28(v15, qword_1244F8);

    v16 = a1;

    oslog = sub_BD794();
    v17 = sub_BDA84();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v18 = 138412802;
      *(v18 + 4) = v16;
      *v19 = a1;
      *(v18 + 12) = 2080;
      if (a3)
      {
        v20 = a3;
      }

      else
      {
        a2 = 0x3E6C696E3CLL;
        v20 = 0xE500000000000000;
      }

      v21 = v16;

      v22 = sub_96A60(a2, v20, &v26);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      if (a5)
      {
        v23 = a5;
      }

      else
      {
        a4 = 0x3E6C696E3CLL;
        v23 = 0xE500000000000000;
      }

      v24 = sub_96A60(a4, v23, &v26);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_0, oslog, v17, "Not requesting background for chat or identifier(s) are nil. chat: %@, toIdentifier: %s, fromIdentifier: %s.", v18, 0x20u);
      sub_75B0(v19, &qword_123E98, &unk_CEE80);

      swift_arrayDestroy();
    }
  }
}

void MessageServiceSession.requestTranscriptBackgroundIfNecessary(_:incomingVersion:toIdentifier:fromIdentifier:messageIsFromStorage:)(void *a1, NSObject *a2, uint64_t a3, unint64_t a4, NSObject *a5, unint64_t a6, int a7)
{
  v105 = a7;
  v110 = a5;
  v111 = a2;
  v11 = sub_94950(&qword_123EF0, &unk_CE520);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v106 = &v96 - v13;
  v14 = sub_BD5F4();
  v107 = *(v14 - 8);
  v15 = *(v107 + 64);
  v16 = __chkstk_darwin(v14);
  v103 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v96 - v18;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v19 = sub_BD7B4();
  v20 = sub_96A28(v19, qword_1244F8);
  v21 = a1;

  v22 = sub_BD794();
  v23 = sub_BDA84();

  if (os_log_type_enabled(v22, v23))
  {
    v109 = v21;
    v98 = v20;
    v99 = v14;
    v24 = 0x3E6C696E3CLL;
    v25 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v114[0] = v97;
    *v25 = 134218754;
    *(v25 + 4) = v111;
    *(v25 + 12) = 2080;
    v26 = a4 == 0;
    v27 = a4;
    v28 = a1;
    v100 = a3;
    if (v26)
    {
      v29 = 0x3E6C696E3CLL;
    }

    else
    {
      v29 = a3;
    }

    v30 = 0xE500000000000000;
    if (v26)
    {
      v31 = 0xE500000000000000;
    }

    else
    {
      v31 = v27;
    }

    v101 = v27;

    v32 = sub_96A60(v29, v31, v114);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2080;
    if (a6)
    {
      v33 = v110;
    }

    else
    {
      v33 = 0x3E6C696E3CLL;
    }

    if (a6)
    {
      v34 = a6;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    v102 = a6;

    v35 = sub_96A60(v33, v34, v114);
    a1 = v28;

    *(v25 + 24) = v35;
    *(v25 + 32) = 2080;
    if (v28)
    {
      v36 = [v109 description];
      v24 = sub_BD8B4();
      v30 = v37;
    }

    v38 = sub_96A60(v24, v30, v114);

    *(v25 + 34) = v38;
    _os_log_impl(&dword_0, v22, v23, "Asked to request background for chat if needed. incomingVersion: %llu, toIdentifier: %s, fromIdentifier: %s, chat: %s", v25, 0x2Au);
    swift_arrayDestroy();

    a6 = v102;
    a4 = v101;
    a3 = v100;
    v14 = v99;
    v21 = v109;
    if (!a1)
    {
LABEL_31:

      v53 = v21;
      v111 = sub_BD794();
      v54 = sub_BDA84();

      if (os_log_type_enabled(v111, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v114[0] = swift_slowAlloc();
        *v55 = 138412802;
        *(v55 + 4) = v53;
        *v56 = a1;
        *(v55 + 12) = 2080;
        if (a4)
        {
          v57 = a4;
        }

        else
        {
          a3 = 0x3E6C696E3CLL;
          v57 = 0xE500000000000000;
        }

        v58 = v53;
        v59 = sub_96A60(a3, v57, v114);

        *(v55 + 14) = v59;
        *(v55 + 22) = 2080;
        if (a6)
        {
          v60 = v110;
        }

        else
        {
          v60 = 0x3E6C696E3CLL;
        }

        if (!a6)
        {
          a6 = 0xE500000000000000;
        }

        v61 = sub_96A60(v60, a6, v114);

        *(v55 + 24) = v61;
        _os_log_impl(&dword_0, v111, v54, "Not requesting background for chat or identifier(s) are nil. chat: %@, toIdentifier: %s, fromIdentifier: %s.", v55, 0x20u);
        sub_75B0(v56, &qword_123E98, &unk_CEE80);

        swift_arrayDestroy();

        return;
      }

      goto LABEL_46;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_31;
    }
  }

  if (!a4 || !a6)
  {
    goto LABEL_31;
  }

  v39 = v21;
  v109 = [v39 transcriptBackgroundVersion];
  v40 = [v109 unsignedLongLongValue];
  if (v40 < v111)
  {
    v41 = [v39 guid];
    if (!v41)
    {
      goto LABEL_43;
    }

    v42 = v41;
    v43 = sub_BD8B4();
    v45 = v44;

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v47 = sub_A4728();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        v51 = [v108 transcriptBackgroundMostRecentRequestDates];
        *&v112 = v49;
        *(&v112 + 1) = v50;
        v52 = [v51 __swift_objectForKeyedSubscript:sub_BDD44()];
        swift_unknownObjectRelease();

        if (v52)
        {
          sub_BDB24();
          swift_unknownObjectRelease();
        }

        else
        {
          v112 = 0u;
          v113 = 0u;
        }

        v76 = v106;
        v75 = v107;
        v114[0] = v112;
        v114[1] = v113;
        if (*(&v113 + 1))
        {
          v77 = swift_dynamicCast();
          (*(v75 + 56))(v76, v77 ^ 1u, 1, v14);
          if ((*(v75 + 48))(v76, 1, v14) != 1)
          {
            v78 = v104;
            (*(v75 + 32))(v104, v76, v14);
            v79 = v103;
            sub_BD5D4();
            sub_BD5B4();
            v81 = v80;
            v82 = v107 + 8;
            v83 = v79;
            v84 = *(v107 + 8);
            (v84)(v83, v14);
            if (v81 < sub_A8158())
            {
              v111 = v84;
              v107 = v82;
              v85 = v39;
              v86 = sub_BD794();
              v87 = sub_BDA84();

              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                *v88 = 138412290;
                *(v88 + 4) = v85;
                *v89 = a1;
                v90 = v85;
                _os_log_impl(&dword_0, v86, v87, "Not requesting background for chat %@", v88, 0xCu);
                sub_75B0(v89, &qword_123E98, &unk_CEE80);

                v91 = v109;
              }

              else
              {
                v91 = v86;
                v86 = v109;
              }

              v95 = v104;

              (v111)(v95, v14);
              return;
            }

            (v84)(v78, v14);
LABEL_62:
            v92 = v39;
            v93 = sub_BD884();
            v94 = sub_BD884();
            [v108 requestTranscriptBackground:v92 toIdentifier:v93 fromIdentifier:v94 messageIsFromStorage:v105 & 1];

            return;
          }
        }

        else
        {
          sub_75B0(v114, &qword_123E88, qword_CE420);
          (*(v75 + 56))(v76, 1, 1, v14);
        }

        sub_75B0(v76, &qword_123EF0, &unk_CE520);
        goto LABEL_62;
      }

      v68 = v39;
      v69 = sub_BD794();
      v70 = sub_BDA84();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        *(v71 + 4) = v68;
        *v72 = a1;
        v111 = v68;
        v73 = "Not requesting background for chat because its requestDateID is nil. Chat: %@";
        goto LABEL_45;
      }
    }

    else
    {
LABEL_43:
      v68 = v39;
      v69 = sub_BD794();
      v70 = sub_BDA84();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        *(v71 + 4) = v68;
        *v72 = a1;
        v111 = v68;
        v73 = "Not requesting background for chat because its GUID is nil. Chat: %@";
LABEL_45:
        _os_log_impl(&dword_0, v69, v70, v73, v71, 0xCu);
        sub_75B0(v72, &qword_123E98, &unk_CEE80);

        goto LABEL_46;
      }
    }

    v74 = v109;
    goto LABEL_51;
  }

  v62 = v39;
  v63 = v109;
  v110 = sub_BD794();
  v64 = sub_BDA84();

  if (!os_log_type_enabled(v110, v64))
  {

    v74 = v110;
    goto LABEL_51;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  *v65 = 138412802;
  *(v65 + 4) = v63;
  *(v65 + 12) = 2048;
  *(v65 + 14) = v111;
  *(v65 + 22) = 2112;
  *(v65 + 24) = v62;
  *v66 = v63;
  v66[1] = a1;
  v111 = v62;
  v67 = v63;
  _os_log_impl(&dword_0, v110, v64, "Not requesting background for chat because it has a newer version: %@. Incoming version: (%llu) Chat: %@.", v65, 0x20u);
  sub_94950(&qword_123E98, &unk_CEE80);
  swift_arrayDestroy();

LABEL_46:
  v74 = v111;
LABEL_51:
}

void MessageServiceSession.refetchChatBackgroundIfNeeded(forChatIdentifier:chatStyle:)(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_BD7C4();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_BD7F4();
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v56);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD7D4();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() sharedFeatureFlags];
  v18 = [v17 isTranscriptBackgroundsEnabled];

  if (v18)
  {
    LODWORD(v52) = a3;
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v19 = sub_BD7B4();
    v20 = sub_96A28(v19, qword_1244F8);

    v50 = v20;
    v21 = sub_BD794();
    v22 = sub_BDA84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51 = a1;
      v25 = v24;
      aBlock[0] = v24;
      *v23 = 136315138;
      v49 = v6;
      if (a2)
      {
        v26 = v51;
      }

      else
      {
        v26 = 0x3E6C696E3CLL;
      }

      v27 = v13;
      if (a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      v29 = sub_96A60(v26, v28, aBlock);
      v13 = v27;

      *(v23 + 4) = v29;
      v6 = v49;
      _os_log_impl(&dword_0, v21, v22, "Asked to refetch chat background for %s", v23, 0xCu);
      sub_97C9C(v25);
      a1 = v51;
    }

    v30 = v52;
    if (a2)
    {
      v31 = a2;
      v32 = sub_BD884();
      v33 = [v58 chatForChatIdentifier:v32 style:v30 updatingAccount:0];

      if (v33)
      {
        sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
        v35 = v53;
        v34 = v54;
        v36 = v55;
        (*(v54 + 104))(v53, enum case for DispatchQoS.QoSClass.background(_:), v55);
        v52 = sub_BDAC4();
        (*(v34 + 8))(v35, v36);
        v37 = v13;
        v38 = v10;
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v33;
        aBlock[4] = sub_A9D7C;
        aBlock[5] = v40;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_AE028;
        aBlock[3] = &unk_114C80;
        v41 = _Block_copy(aBlock);

        v42 = v33;
        sub_BD7E4();
        v59 = _swiftEmptyArrayStorage;
        sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags);
        sub_94950(&qword_123F08, &qword_CE530);
        sub_A9D9C();
        sub_BDB34();
        v43 = v52;
        sub_BDAB4();
        _Block_release(v41);

        (*(v57 + 8))(v9, v6);
        (*(v38 + 8))(v37, v56);
      }

      else
      {

        v58 = sub_BD794();
        v44 = sub_BDA84();

        if (os_log_type_enabled(v58, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          aBlock[0] = v46;
          *v45 = 136315138;
          *(v45 + 4) = sub_96A60(a1, v31, aBlock);
          _os_log_impl(&dword_0, v58, v44, "Could not find chat for identifier: %s", v45, 0xCu);
          sub_97C9C(v46);
        }

        else
        {
          v47 = v58;
        }
      }
    }
  }
}

void sub_A6048(uint64_t a1, void *a2)
{
  v3 = sub_BD7C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD7F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [a2 transcriptBackgroundPath];
    if (v15)
    {
      v16 = v15;
      v50 = v4;
      v17 = [objc_allocWithZone(NSURL) initWithString:v15];

      if (v17)
      {
        if ([v17 checkResourceIsReachableAndReturnError:0])
        {

          return;
        }

        v18 = [a2 transcriptBackgroundProperties];
        if (v18)
        {
          v49 = v17;
          v19 = v18;
          v20 = sub_BD844();

          v21 = sub_9CF94(v20);
          sub_AA724(v21, v68);
          if (sub_AB97C(v68) != 1)
          {
            v58 = v68[6];
            v59[0] = v69[0];
            *(v59 + 9) = *(v69 + 9);
            v54 = v68[2];
            v55 = v68[3];
            v56 = v68[4];
            v57 = v68[5];
            v52 = v68[0];
            v53 = v68[1];

            v66 = v58;
            v67[0] = v59[0];
            *(v67 + 9) = *(v59 + 9);
            v62 = v54;
            v63 = v55;
            v64 = v56;
            v65 = v57;
            v60 = v52;
            v61 = v53;
            sub_AB9A0(&v60);
            v76 = v66;
            v77[0] = v67[0];
            *(v77 + 9) = *(v67 + 9);
            v72 = v62;
            v73 = v63;
            v74 = v64;
            v75 = v65;
            v70 = v60;
            v71 = v61;
            sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
            v48 = sub_BDAA4();
            v38 = swift_allocObject();
            v39 = v74;
            *(v38 + 104) = v75;
            v40 = v77[0];
            *(v38 + 120) = v76;
            *(v38 + 136) = v40;
            *(v38 + 145) = *(v77 + 9);
            v41 = v70;
            *(v38 + 40) = v71;
            v42 = v73;
            *(v38 + 56) = v72;
            *(v38 + 72) = v42;
            *(v38 + 88) = v39;
            *(v38 + 16) = v14;
            *(v38 + 24) = v41;
            *(v38 + 168) = a2;
            v51[4] = sub_ABA5C;
            v51[5] = v38;
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 1107296256;
            v51[2] = sub_AE028;
            v51[3] = &unk_115000;
            v43 = _Block_copy(v51);
            v44 = v14;
            v45 = a2;

            sub_BD7E4();
            v51[0] = _swiftEmptyArrayStorage;
            sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags);
            sub_94950(&qword_123F08, &qword_CE530);
            sub_A9D9C();
            sub_BDB34();
            v46 = v48;
            sub_BDAB4();
            _Block_release(v43);

            (*(v50 + 8))(v7, v3);
            (*(v9 + 8))(v12, v8);
            return;
          }

          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v22 = sub_BD7B4();
          sub_96A28(v22, qword_1244F8);

          v23 = sub_BD794();
          v24 = sub_BDA64();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *&v70 = v26;
            *v25 = 136315138;
            v27 = sub_BD854();
            v29 = v28;

            v30 = sub_96A60(v27, v29, &v70);

            *(v25 + 4) = v30;
            _os_log_impl(&dword_0, v23, v24, "Could not get background refresh info for chat properties %s", v25, 0xCu);
            sub_97C9C(v26);
          }

          else
          {
          }
        }

        else
        {
          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v31 = sub_BD7B4();
          sub_96A28(v31, qword_1244F8);
          v32 = a2;
          v33 = sub_BD794();
          v34 = sub_BDA64();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v35 = 138412290;
            *(v35 + 4) = v32;
            *v36 = v32;
            v37 = v32;
            _os_log_impl(&dword_0, v33, v34, "We have a background path but no background properties for chat %@. This should not be possible.", v35, 0xCu);
            sub_75B0(v36, &qword_123E98, &unk_CEE80);
          }
        }
      }
    }
  }
}

unint64_t sub_A67FC(uint64_t a1, unint64_t a2)
{
  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE490;
  *(inited + 32) = sub_BD8B4();
  *(inited + 72) = &type metadata for String;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (a2)
  {
    v7 = a2;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 56) = v7;

  v8 = sub_97980(inited);
  swift_setDeallocating();
  sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
  return v8;
}

uint64_t sub_A68D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_A69C8;

  return v7(a1);
}

uint64_t sub_A69C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_A6AC0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_BDB84();

    if (v9)
    {

      sub_7610(0, &qword_123F48, NSString_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_BDB74();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_A6CF8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_A6EE8(v21 + 1);
    }

    v19 = v8;
    sub_A7110(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_7610(0, &qword_123F48, NSString_ptr);
  v11 = sub_BDAE4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_A7194(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_BDAF4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_A6CF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_94950(&qword_123F70, &qword_CE870);
    v2 = sub_BDBF4();
    v15 = v2;
    sub_BDB64();
    if (sub_BDB94())
    {
      sub_7610(0, &qword_123F48, NSString_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_A6EE8(v9 + 1);
        }

        v2 = v15;
        result = sub_BDAE4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_BDB94());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_A6EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_123F70, &qword_CE870);
  result = sub_BDBE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_BDAE4(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_A7110(uint64_t a1, uint64_t a2)
{
  sub_BDAE4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_BDB54();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_A7194(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_A6EE8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_A7304();
      goto LABEL_12;
    }

    sub_A7454(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_BDAE4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_7610(0, &qword_123F48, NSString_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_BDAF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_BDD54();
  __break(1u);
}

id sub_A7304()
{
  v1 = v0;
  sub_94950(&qword_123F70, &qword_CE870);
  v2 = *v0;
  v3 = sub_BDBD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_A7454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_123F70, &qword_CE870);
  result = sub_BDBE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_BDAE4(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_A7668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_123F60, &qword_CE858);
  v38 = a2;
  result = sub_BDCE4();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_A7910(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_94048(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_A7668(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_94048(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_BDD64();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_A7A8C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_A7A8C()
{
  v1 = v0;
  sub_94950(&qword_123F60, &qword_CE858);
  v2 = *v0;
  v3 = sub_BDCD4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

uint64_t sub_A7BFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_97D3C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_A7C48@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_97D3C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_94D98(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_75B0(v22, &qword_123F78, &qword_CE878);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_A7DA8(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_A7DBC()
{
  v2 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = v0 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 17);
  v11 = (v0 + v5);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v7 + 16);
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_A7F18;

  return sub_98304(v15, v16, v17, v6, v0 + v3, v8, v9, v14);
}

uint64_t sub_A7F18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_A800C()
{
  v2 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 32);
  v6 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = (v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v6 + 16);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_AE02C;

  return sub_9B804(v13, v14, v15, v5, v0 + v3, v7, v8, v12);
}

double sub_A8158()
{
  v0 = IMFeatureFlagDomain;
  v1 = sub_BD884();
  v2 = IMGetDomainIntForKey();

  if (v2 < 1)
  {
    return 300.0;
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v3 = sub_BD7B4();
  sub_96A28(v3, qword_1244F8);
  v4 = sub_BD794();
  v5 = sub_BDA84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_0, v4, v5, "Got a custom background request rate limit of %ld seconds", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_A82A4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_7610(0, &qword_123F48, NSString_ptr);
    sub_AB6B0();
    result = sub_BDA34();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_BDC34();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_A6AC0(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_BDCC4();
  }

  v6 = result;
  v5 = sub_BDCC4();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_A83E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123F60, &qword_CE858);
    v3 = sub_BDCF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_94048(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_A84E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123F58, &qword_CE850);
    v3 = sub_BDC04();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_97D98(v6 + 40 * v4, v19);
      result = sub_BDBA4(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_97D98(*(v3 + 48) + 40 * i, v18);
        v11 = sub_BDBB4();
        result = sub_97CE8(v18);
        if (v11)
        {
          sub_97CE8(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_A8648(void **a1)
{
  v2 = sub_BD8B4();
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  v45 = &type metadata for String;
  v43 = v6;
  v44 = v5;

  sub_9CEC4(&v43, v2, v4);
  v7 = sub_BD8B4();
  v9 = v8;
  v11 = a1[2];
  v10 = a1[3];
  v45 = &type metadata for String;
  v43 = v11;
  v44 = v10;

  sub_9CEC4(&v43, v7, v9);
  v12 = sub_BD8B4();
  v14 = v13;
  v16 = a1[4];
  v15 = a1[5];
  v45 = &type metadata for String;
  v43 = v16;
  v44 = v15;

  sub_9CEC4(&v43, v12, v14);
  v17 = sub_BD8B4();
  v19 = v18;
  v21 = a1[6];
  v20 = a1[7];
  v45 = &type metadata for String;
  v43 = v21;
  v44 = v20;

  sub_9CEC4(&v43, v17, v19);
  v22 = sub_BD8B4();
  v24 = v23;
  v26 = a1[8];
  v25 = a1[9];
  v45 = &type metadata for String;
  v43 = v26;
  v44 = v25;

  sub_9CEC4(&v43, v22, v24);
  v27 = sub_BD8B4();
  v29 = v28;
  v30 = [objc_allocWithZone(NSNumber) initWithInteger:a1[10]];
  v31 = sub_7610(0, &qword_123EA0, NSNumber_ptr);
  v45 = v31;
  v43 = v30;
  sub_9CEC4(&v43, v27, v29);
  v32 = sub_BD8B4();
  v34 = v33;
  v35 = [objc_allocWithZone(NSNumber) initWithInteger:a1[11]];
  v45 = v31;
  v43 = v35;
  sub_9CEC4(&v43, v32, v34);
  v36 = sub_BD8B4();
  v37 = a1[12];
  v45 = &type metadata for UInt64;
  v43 = v37;
  sub_9CEC4(&v43, v36, v38);
  v39 = sub_BD8B4();
  v40 = a1[13];
  v45 = &type metadata for Int;
  v43 = v40;
  return sub_9CEC4(&v43, v39, v41);
}

__n128 sub_A88DC@<Q0>(id a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1 || (v4 = [a1 type]) == 0)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v17 = sub_BD7B4();
    sub_96A28(v17, qword_1244F8);
    v18 = sub_BD794();
    v19 = sub_BDA64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Got blastdoorCommand with no type.", v20, 2u);
    }

    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 type];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == &dword_0 + 1)
      {
        v7 = [v5 refresh];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 backgroundVersion];

          v10 = [v5 refresh];
          if (v10)
          {
            v11 = v10;
            v197 = [v10 posterWasRemoved];

            v12 = [v5 refresh];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 transferId];

              v15 = sub_BD8B4();
              v191 = v16;
              v194 = v15;
            }

            else
            {
              v191 = 0;
              v194 = 0;
            }

            v59 = [v5 refresh];
            if (v59)
            {
              v60 = v59;
              v61 = [v59 ownerId];

              v62 = sub_BD8B4();
              v185 = v63;
              v188 = v62;
            }

            else
            {
              v185 = 0;
              v188 = 0;
            }

            v69 = [v5 refresh];
            if (v69)
            {
              v70 = v69;
              v71 = [v69 signature];

              v72 = sub_BD8B4();
              v179 = v73;
              v182 = v72;
            }

            else
            {
              v179 = 0;
              v182 = 0;
            }

            v79 = [v5 refresh];
            if (v79)
            {
              v80 = v79;
              v81 = [v79 requestURL];

              v82 = sub_BD8B4();
              v173 = v83;
              v176 = v82;
            }

            else
            {
              v173 = 0;
              v176 = 0;
            }

            v89 = [v5 refresh];
            if (v89)
            {
              v90 = v89;
              v91 = [v89 encryptionKey];

              v92 = sub_BD8B4();
              v167 = v93;
              v170 = v92;
            }

            else
            {
              v167 = 0;
              v170 = 0;
            }

            v200 = v9;
            v99 = [v5 refresh];
            if (v99)
            {
              v100 = v99;
              v101 = [v99 fileSize];

              v102 = v101 >> 63;
              v164 = v101 & ~(v101 >> 63);
            }

            else
            {
              v164 = 0;
              LOBYTE(v102) = 1;
            }

            v107 = [v5 refresh];
            if (v107)
            {
              v108 = v107;
              v109 = [v107 posterDataVersion];

              v110 = v109 >> 63;
              v111 = v109 & ~(v109 >> 63);
            }

            else
            {
              v111 = 0;
              LOBYTE(v110) = 1;
            }

            v117 = [v5 refresh];
            if (v117 && (v118 = v117, v119 = [v117 chatId], v118, v119))
            {
              v120 = sub_BD8B4();
              v122 = v121;
            }

            else
            {

              v120 = 0;
              v122 = 0;
            }

            LOBYTE(v219) = v102;
            LOBYTE(v211) = v110;
            *&v203 = v200;
            *(&v203 + 1) = v194;
            v204.n128_u64[0] = v191;
            v204.n128_u64[1] = v188;
            *&v205 = v185;
            *(&v205 + 1) = v182;
            *&v206 = v179;
            *(&v206 + 1) = v176;
            *&v207 = v173;
            *(&v207 + 1) = v170;
            *&v208 = v167;
            *(&v208 + 1) = v164;
            LOBYTE(v209) = v102;
            *(&v209 + 1) = v111;
            v210[0] = v110;
            *&v210[8] = v120;
            *&v210[16] = v122;
            v210[24] = v197;
            sub_AB9A0(&v203);
LABEL_120:
            v217 = v209;
            v218[0] = *v210;
            *(v218 + 9) = *&v210[9];
            v213 = v205;
            v214 = v206;
            v215 = v207;
            v216 = v208;
            v211 = v203;
            v212 = v204;
            MessageServiceSession.UpdateType.rawValue.getter(&v211);
            v225 = v217;
            v226[0] = v218[0];
            v58 = *(v218 + 9);
LABEL_121:
            *(v226 + 9) = v58;
            v221 = v213;
            v222 = v214;
            v223 = v215;
            v224 = v216;
            v219 = v211;
            v220 = v212;
            goto LABEL_17;
          }
        }

        if (qword_1244F0 != -1)
        {
          swift_once();
        }

        v51 = sub_BD7B4();
        sub_96A28(v51, qword_1244F8);
        v52 = sub_BD794();
        v53 = sub_BDA64();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_45;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "Got refresh blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    v35 = [v5 update];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 backgroundVersion];

      v38 = [v5 update];
      if (v38)
      {
        v39 = v38;
        v199 = [v38 posterWasRemoved];

        v40 = [v5 update];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 transferId];

          v43 = sub_BD8B4();
          v193 = v44;
          v196 = v43;
        }

        else
        {
          v193 = 0;
          v196 = 0;
        }

        v129 = [v5 update];
        if (v129)
        {
          v130 = v129;
          v131 = [v129 ownerId];

          v132 = sub_BD8B4();
          v187 = v133;
          v190 = v132;
        }

        else
        {
          v187 = 0;
          v190 = 0;
        }

        v134 = [v5 update];
        if (v134)
        {
          v135 = v134;
          v136 = [v134 signature];

          v137 = sub_BD8B4();
          v181 = v138;
          v184 = v137;
        }

        else
        {
          v181 = 0;
          v184 = 0;
        }

        v139 = [v5 update];
        if (v139)
        {
          v140 = v139;
          v141 = [v139 requestURL];

          v142 = sub_BD8B4();
          v175 = v143;
          v178 = v142;
        }

        else
        {
          v175 = 0;
          v178 = 0;
        }

        v144 = [v5 update];
        if (v144)
        {
          v145 = v144;
          v146 = [v144 encryptionKey];

          v147 = sub_BD8B4();
          v169 = v148;
          v172 = v147;
        }

        else
        {
          v169 = 0;
          v172 = 0;
        }

        v202 = v37;
        v149 = [v5 update];
        if (v149)
        {
          v150 = v149;
          v151 = [v149 fileSize];

          v152 = v151 >> 63;
          v166 = v151 & ~(v151 >> 63);
        }

        else
        {
          v166 = 0;
          LOBYTE(v152) = 1;
        }

        v153 = [v5 update];
        if (v153)
        {
          v154 = v153;
          v155 = [v153 posterDataVersion];

          v156 = v155 >> 63;
          v157 = v155 & ~(v155 >> 63);
        }

        else
        {
          v157 = 0;
          LOBYTE(v156) = 1;
        }

        v158 = [v5 update];
        if (v158 && (v159 = v158, v160 = [v158 chatId], v159, v160))
        {
          v161 = sub_BD8B4();
          v163 = v162;
        }

        else
        {

          v161 = 0;
          v163 = 0;
        }

        LOBYTE(v219) = v152;
        LOBYTE(v211) = v156;
        *&v203 = v202;
        *(&v203 + 1) = v196;
        v204.n128_u64[0] = v193;
        v204.n128_u64[1] = v190;
        *&v205 = v187;
        *(&v205 + 1) = v184;
        *&v206 = v181;
        *(&v206 + 1) = v178;
        *&v207 = v175;
        *(&v207 + 1) = v172;
        *&v208 = v169;
        *(&v208 + 1) = v166;
        LOBYTE(v209) = v152;
        *(&v209 + 1) = v157;
        v210[0] = v156;
        *&v210[8] = v161;
        *&v210[16] = v163;
        v210[24] = v199;
        sub_ACF08(&v203);
        goto LABEL_120;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v57 = sub_BD7B4();
    sub_96A28(v57, qword_1244F8);
    v52 = sub_BD794();
    v53 = sub_BDA64();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_45;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Got update blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
LABEL_44:
    _os_log_impl(&dword_0, v52, v53, v55, v54, 2u);

LABEL_45:

    goto LABEL_16;
  }

  if (v6 == &dword_0 + 2)
  {
    v45 = [v5 request];
    if (v45 && (v46 = v45, v47 = [v45 chatId], v46, v47))
    {
      v48 = sub_BD8B4();
      v50 = v49;
    }

    else
    {

      v48 = 0;
      v50 = 0;
    }

    *&v203 = v48;
    *(&v203 + 1) = v50;
    sub_ACEDC(&v203);
    v217 = v209;
    v218[0] = *v210;
    *(v218 + 9) = *&v210[9];
    v213 = v205;
    v214 = v206;
    v215 = v207;
    v216 = v208;
    v211 = v203;
    v212 = v204;
    MessageServiceSession.UpdateType.rawValue.getter(&v211);
    v225 = v217;
    v226[0] = v218[0];
    v58 = *(v218 + 9);
    goto LABEL_121;
  }

  if (v6 == &dword_0 + 3)
  {
    v25 = [v5 requestResponse];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 backgroundVersion];

      v28 = [v5 requestResponse];
      if (v28)
      {
        v29 = v28;
        v198 = [v28 posterWasRemoved];

        v30 = [v5 requestResponse];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 transferId];

          v33 = sub_BD8B4();
          v192 = v34;
          v195 = v33;
        }

        else
        {
          v192 = 0;
          v195 = 0;
        }

        v64 = [v5 requestResponse];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 ownerId];

          v67 = sub_BD8B4();
          v186 = v68;
          v189 = v67;
        }

        else
        {
          v186 = 0;
          v189 = 0;
        }

        v74 = [v5 requestResponse];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 signature];

          v77 = sub_BD8B4();
          v180 = v78;
          v183 = v77;
        }

        else
        {
          v180 = 0;
          v183 = 0;
        }

        v84 = [v5 requestResponse];
        if (v84)
        {
          v85 = v84;
          v86 = [v84 requestURL];

          v87 = sub_BD8B4();
          v174 = v88;
          v177 = v87;
        }

        else
        {
          v174 = 0;
          v177 = 0;
        }

        v94 = [v5 requestResponse];
        if (v94)
        {
          v95 = v94;
          v96 = [v94 encryptionKey];

          v97 = sub_BD8B4();
          v168 = v98;
          v171 = v97;
        }

        else
        {
          v168 = 0;
          v171 = 0;
        }

        v201 = v27;
        v103 = [v5 requestResponse];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 fileSize];

          v106 = v105 >> 63;
          v165 = v105 & ~(v105 >> 63);
        }

        else
        {
          v165 = 0;
          LOBYTE(v106) = 1;
        }

        v112 = [v5 requestResponse];
        if (v112)
        {
          v113 = v112;
          v114 = [v112 posterDataVersion];

          v115 = v114 >> 63;
          v116 = v114 & ~(v114 >> 63);
        }

        else
        {
          v116 = 0;
          LOBYTE(v115) = 1;
        }

        v123 = [v5 requestResponse];
        if (v123 && (v124 = v123, v125 = [v123 chatId], v124, v125))
        {
          v126 = sub_BD8B4();
          v128 = v127;
        }

        else
        {

          v126 = 0;
          v128 = 0;
        }

        LOBYTE(v219) = v106;
        LOBYTE(v211) = v115;
        *&v203 = v201;
        *(&v203 + 1) = v195;
        v204.n128_u64[0] = v192;
        v204.n128_u64[1] = v189;
        *&v205 = v186;
        *(&v205 + 1) = v183;
        *&v206 = v180;
        *(&v206 + 1) = v177;
        *&v207 = v174;
        *(&v207 + 1) = v171;
        *&v208 = v168;
        *(&v208 + 1) = v165;
        LOBYTE(v209) = v106;
        *(&v209 + 1) = v116;
        v210[0] = v115;
        *&v210[8] = v126;
        *&v210[16] = v128;
        v210[24] = v198;
        sub_ACEB0(&v203);
        goto LABEL_120;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v56 = sub_BD7B4();
    sub_96A28(v56, qword_1244F8);
    v52 = sub_BD794();
    v53 = sub_BDA64();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_45;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Got request response blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
    goto LABEL_44;
  }

LABEL_24:

LABEL_15:
  v5 = a1;
LABEL_16:

  sub_ACE88(&v219);
LABEL_17:
  v21 = v226[0];
  *(a2 + 96) = v225;
  *(a2 + 112) = v21;
  *(a2 + 121) = *(v226 + 9);
  v22 = v222;
  *(a2 + 32) = v221;
  *(a2 + 48) = v22;
  v23 = v224;
  *(a2 + 64) = v223;
  *(a2 + 80) = v23;
  result = v220;
  *a2 = v219;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_A9758(uint64_t a1)
{
  if ((*(a1 + 96) >> 1) > 0x80000000)
  {
    return -(*(a1 + 96) >> 1);
  }

  else
  {
    return 0;
  }
}

void sub_A977C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_BDCC4())
    {
LABEL_3:
      sub_94950(&qword_123F70, &qword_CE870);
      v3 = sub_BDC04();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_BDCC4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_BDC34();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_BDAE4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_7610(0, &qword_123F48, NSString_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_BDAF4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_BDAE4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_7610(0, &qword_123F48, NSString_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_BDAF4();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_A9A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_A7C48(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_94D98(v46, v44);
  v14 = *a5;
  result = sub_94048(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_970F0(v20, a4 & 1);
    v22 = *a5;
    result = sub_94048(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_BDD64();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_977DC();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_97C9C(v26);
    sub_94D98(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_94D98(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_A7C48(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_94D98(v46, v44);
        v33 = *a5;
        result = sub_94048(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_970F0(v37, 1);
          v38 = *a5;
          result = sub_94048(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_97C9C(v32);
          sub_94D98(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_94D98(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_A7C48(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_75A8();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_A9D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_A9D9C()
{
  result = qword_123F10;
  if (!qword_123F10)
  {
    sub_A9E00(&qword_123F08, &qword_CE530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F10);
  }

  return result;
}

uint64_t sub_A9E00(uint64_t *a1, uint64_t *a2)
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

void sub_A9E48(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v68 = a4;
  v67 = a3;
  v66 = a2;
  v9 = sub_94950(&qword_123EF0, &unk_CE520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_BD5F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  v21 = sub_A4728();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v64 = a5;
    v65 = a1;
    v69 = v6;
    v25 = [v6 transcriptBackgroundMostRecentRequestDates];
    v63 = v23;
    *&v70 = v23;
    *(&v70 + 1) = v24;

    v26 = [v25 __swift_objectForKeyedSubscript:sub_BDD44()];
    swift_unknownObjectRelease();

    if (v26)
    {
      sub_BDB24();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v70 = 0u;
    }

    v72[0] = v70;
    v72[1] = v71;
    v34 = v69;
    if (*(&v71 + 1))
    {
      v35 = swift_dynamicCast();
      (*(v14 + 56))(v12, v35 ^ 1u, 1, v13);
      v36 = (*(v14 + 48))(v12, 1, v13);
      v37 = v64;
      if (v36 != 1)
      {
        (*(v14 + 32))(v20, v12, v13);
        sub_BD5D4();
        sub_BD5B4();
        v39 = v38;
        v40 = *(v14 + 8);
        v40(v18, v13);
        if (v39 < sub_A8158())
        {

          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v41 = sub_BD7B4();
          sub_96A28(v41, qword_1244F8);
          v42 = v65;
          v43 = sub_BD794();
          v44 = sub_BDA84();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138412290;
            *(v45 + 4) = v42;
            *v46 = v42;
            v47 = v42;
            _os_log_impl(&dword_0, v43, v44, "Not requesting background for chat %@", v45, 0xCu);
            sub_75B0(v46, &qword_123E98, &unk_CEE80);
          }

          v40(v20, v13);
          return;
        }

        v40(v20, v13);
        goto LABEL_22;
      }
    }

    else
    {
      sub_75B0(v72, &qword_123E88, qword_CE420);
      (*(v14 + 56))(v12, 1, 1, v13);
      v37 = v64;
    }

    sub_75B0(v12, &qword_123EF0, &unk_CE520);
LABEL_22:
    sub_94950(&qword_123EE8, &qword_CE508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_CE490;
    *(inited + 32) = sub_BD8B4();
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = v49;
    *(inited + 48) = 3;
    v50 = sub_97980(inited);
    swift_setDeallocating();
    sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
    v51 = [v34 transcriptBackgroundMostRecentRequestDates];
    sub_BD5D4();
    isa = sub_BD5C4().super.isa;
    (*(v14 + 8))(v18, v13);
    *&v72[0] = v63;
    *(&v72[0] + 1) = v24;
    [v51 __swift_setObject:isa forKeyedSubscript:sub_BDD44()];

    swift_unknownObjectRelease();
    v53 = v66;
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v54 = sub_BD7B4();
    sub_96A28(v54, qword_1244F8);
    v55 = v67;

    v56 = sub_BD794();
    v57 = sub_BDA84();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v72[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_96A60(v53, v55, v72);
      _os_log_impl(&dword_0, v56, v57, "About to send background request to %s.", v58, 0xCu);
      sub_97C9C(v59);
    }

    sub_94950(&qword_123F28, &qword_CE828);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_CE4B0;
    *(v60 + 32) = sub_BD884();
    v61 = sub_A82A4(v60);
    swift_setDeallocating();
    v62 = *(v60 + 16);
    swift_arrayDestroy();
    sub_9ED4C(v50, v61, v65, v68, v37, 0);

    return;
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v27 = sub_BD7B4();
  sub_96A28(v27, qword_1244F8);
  v28 = a1;
  v69 = sub_BD794();
  v29 = sub_BDA84();

  if (os_log_type_enabled(v69, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v28;
    *v31 = v28;
    v32 = v28;
    _os_log_impl(&dword_0, v69, v29, "Not requesting background for chat because its requestDateID is nil. Chat: %@", v30, 0xCu);
    sub_75B0(v31, &qword_123E98, &unk_CEE80);
  }

  v33 = v69;
}

__n128 sub_AA724@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = sub_BD8B4();
  v80 = v4;
  sub_BDBC4();
  if (*(a1 + 16) && (v5 = sub_97008(&v82), (v6 & 1) != 0))
  {
    sub_97D3C(*(a1 + 56) + 32 * v5, &v71);
    sub_97CE8(&v82);
    sub_7610(0, &qword_123EA0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v7 = v79;
      v70 = [v79 unsignedLongLongValue];

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v8;
      sub_BDBC4();
      if (*(a1 + 16) && (v9 = sub_97008(&v82), (v10 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v9, &v71);
        sub_97CE8(&v82);
        v11 = swift_dynamicCast();
        if (v11)
        {
          v12 = v79;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = v80;
        }

        else
        {
          v13 = 0;
        }

        v68 = v13;
        v69 = v12;
      }

      else
      {
        sub_97CE8(&v82);
        v68 = 0;
        v69 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v27;
      sub_BDBC4();
      if (*(a1 + 16) && (v28 = sub_97008(&v82), (v29 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v28, &v71);
        sub_97CE8(&v82);
        v30 = swift_dynamicCast();
        if (v30)
        {
          v31 = v79;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v80;
        }

        else
        {
          v32 = 0;
        }

        v66 = v32;
        v67 = v31;
      }

      else
      {
        sub_97CE8(&v82);
        v66 = 0;
        v67 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v33;
      sub_BDBC4();
      if (*(a1 + 16) && (v34 = sub_97008(&v82), (v35 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v34, &v71);
        sub_97CE8(&v82);
        v36 = swift_dynamicCast();
        if (v36)
        {
          v37 = v79;
        }

        else
        {
          v37 = 0;
        }

        if (v36)
        {
          v38 = v80;
        }

        else
        {
          v38 = 0;
        }

        v64 = v38;
        v65 = v37;
      }

      else
      {
        sub_97CE8(&v82);
        v64 = 0;
        v65 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v39;
      sub_BDBC4();
      if (*(a1 + 16) && (v40 = sub_97008(&v82), (v41 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v40, &v71);
        sub_97CE8(&v82);
        v42 = swift_dynamicCast();
        v43 = v79;
        if (!v42)
        {
          v43 = 0;
        }

        v63 = v43;
        if (v42)
        {
          v44 = v80;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        sub_97CE8(&v82);
        v63 = 0;
        v44 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v45;
      sub_BDBC4();
      if (*(a1 + 16) && (v46 = sub_97008(&v82), (v47 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v46, &v71);
        sub_97CE8(&v82);
        v48 = swift_dynamicCast();
        if (v48)
        {
          v49 = v79;
        }

        else
        {
          v49 = 0;
        }

        if (v48)
        {
          v50 = v80;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        sub_97CE8(&v82);
        v49 = 0;
        v50 = 0;
      }

      v79 = sub_BD8B4();
      v80 = v51;
      sub_BDBC4();
      if (*(a1 + 16) && (v52 = sub_97008(&v82), (v53 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v52, &v71);
        sub_97CE8(&v82);
        if (swift_dynamicCast())
        {
          v54 = v79;
          v55 = [v79 unsignedIntegerValue];

          v56 = 0;
LABEL_65:
          v81 = v56;
          v79 = sub_BD8B4();
          v80 = v57;
          sub_BDBC4();
          if (*(a1 + 16) && (v58 = sub_97008(&v82), (v59 & 1) != 0))
          {
            sub_97D3C(*(a1 + 56) + 32 * v58, &v71);
            sub_97CE8(&v82);

            if (swift_dynamicCast())
            {
              v60 = v79;
              v61 = [v79 unsignedIntegerValue];

              v62 = 0;
LABEL_71:
              LOBYTE(v79) = v62;
              *&v71 = v70;
              *(&v71 + 1) = v69;
              v72.n128_u64[0] = v68;
              v72.n128_u64[1] = v67;
              *&v73 = v66;
              *(&v73 + 1) = v65;
              *&v74 = v64;
              *(&v74 + 1) = v63;
              *&v75 = v44;
              *(&v75 + 1) = v49;
              *&v76 = v50;
              *(&v76 + 1) = v55;
              LOBYTE(v77) = v81;
              *(&v77 + 1) = v61;
              LOBYTE(v78[0]) = v62;
              memset(v78 + 8, 0, 17);
              MessageServiceSession.UpdateType.rawValue.getter(&v71);
              v88 = v77;
              v89[0] = v78[0];
              *(v89 + 9) = *(v78 + 9);
              v84 = v73;
              v85 = v74;
              v86 = v75;
              v87 = v76;
              v82 = v71;
              v83 = v72;
              goto LABEL_20;
            }
          }

          else
          {

            sub_97CE8(&v82);
          }

          v61 = 0;
          v62 = 1;
          goto LABEL_71;
        }
      }

      else
      {
        sub_97CE8(&v82);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_65;
    }
  }

  else
  {
    sub_97CE8(&v82);
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v14 = sub_BD7B4();
  sub_96A28(v14, qword_1244F8);

  v15 = sub_BD794();
  v16 = sub_BDA64();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v82 = v18;
    *v17 = 136315138;
    v19 = sub_BD854();
    v21 = v20;

    v22 = sub_96A60(v19, v21, &v82);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Found no background version in chat properties %s.", v17, 0xCu);
    sub_97C9C(v18);
  }

  else
  {
  }

  sub_AB948(&v82);
LABEL_20:
  v23 = v89[0];
  *(a2 + 96) = v88;
  *(a2 + 112) = v23;
  *(a2 + 121) = *(v89 + 9);
  v24 = v85;
  *(a2 + 32) = v84;
  *(a2 + 48) = v24;
  v25 = v87;
  *(a2 + 64) = v86;
  *(a2 + 80) = v25;
  result = v83;
  *a2 = v82;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_AAEE4()
{
  result = qword_123F18;
  if (!qword_123F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F18);
  }

  return result;
}

__n128 sub_AAF48(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_AAF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_AAFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_AB02C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_AB060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_AB0B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 136) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 137) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 2 * -a2;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}