uint64_t sub_1884D1F68()
{
  sub_1883F7120();
  v3 = v2;
  sub_1883F78EC();
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_188415198, 0, 0);
  }

  else
  {
    sub_1883F7910();

    return v9(v3);
  }
}

uint64_t sub_1884D2090()
{
  sub_1883F78E0();
  v3 = v2;
  *(v1 + 536) = v0;
  v4 = type metadata accessor for URL();
  *(v1 + 544) = v4;
  v5 = *(v4 - 8);
  *(v1 + 552) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 728) = *v3;
  *(v1 + 568) = *(v3 + 8);
  *(v1 + 584) = *(v3 + 24);
  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884D216C()
{
  v41 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = type metadata accessor for Logger();
  *(v0 + 592) = sub_1883FDE5C(v5, qword_1EA90C9F8);

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v2))
  {
    v10 = *(v0 + 584);
    v11 = *(v0 + 576);
    v12 = *(v0 + 568);
    v35 = *(v0 + 728);
    v13 = *(v0 + 536);
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_1883FE43C();
    v17 = sub_1883FE340(v15, v16, &v36);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v37 = v35;
    v38 = v12;
    v39 = v11;
    v40 = v10;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    Asset = CKSyncEngine.FetchAssetContext.description.getter();
    v23 = v22;
    v24 = v39;
    v25 = v40;

    v26 = sub_1883FE340(Asset, v23, &v36);

    *(v14 + 14) = v26;
    sub_1884037B8(&dword_1883EA000, v27, v28, "%s fetching asset with context %s");
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883F7B60();
  }

  static Task<>.checkCancellation()();
  v29 = *(v0 + 576);
  v30 = *(v0 + 536);
  sub_1883FB6F8(*(v0 + 568));
  v31 = v29;
  *(v0 + 96) = v29;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0xC000000000000000;
  v32 = v31;
  v33 = swift_task_alloc();
  *(v0 + 600) = v33;
  *v33 = v0;
  sub_1883FE6B8(v33);

  return sub_1883FBEA8();
}

uint64_t sub_1884D2474()
{
  sub_1883F78E0();
  v1 = *v0;
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;
  v4 = v1[75];
  v5 = *v0;
  *v3 = *v0;

  memcpy(v2 + 2, v2 + 12, 0x50uLL);
  sub_1883FBF6C((v2 + 2));
  v6 = swift_task_alloc();
  v2[76] = v6;
  *v6 = v5;
  v6[1] = sub_1884D25C0;
  v7 = v1[67];

  return sub_1884D0668();
}

uint64_t sub_1884D25C0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 608);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 616) = v0;

  if (v0)
  {
    v9 = *(v3 + 536);

    v10 = sub_1884D38D0;
    v11 = v9;
  }

  else
  {
    v11 = *(v3 + 536);
    v10 = sub_1884D26D0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1884D26D0()
{
  v5 = v1[72];
  v1[78] = [objc_allocWithZone(CKOperationConfiguration) init];
  v6 = [v5 recordID];
  if (!v6 || (v0 = v6, v14 = [v6 zoneID], v1[79] = v14, v0, !v14))
  {
    sub_1883F8EE0(v6, v7, v8, v9, v10, v11, v12, v13, v31, v32);
    v22 = *(v2 + 136);
    v23 = sub_1883F986C(&unk_1886F7EF8);
    v24 = v4;
    v25 = v3;
    v26 = v23;
    v27 = v0;
    v28 = swift_task_alloc();
    v1[83] = v28;
    *v28 = v1;
    sub_1883F9374(v28);
    sub_1883F7E58();

    __asm { BR              X8 }
  }

  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  inited = swift_initStackObject();
  v1[80] = inited;
  *(inited + 16) = xmmword_1886F79A0;
  *(inited + 32) = v14;
  v16 = v14;
  v17 = swift_task_alloc();
  v1[81] = v17;
  *v17 = v1;
  sub_1883FE6B8(v17);
  sub_1883F7E58();

  return sub_1884E5CF0(v18, v19);
}

uint64_t sub_1884D288C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[81];
  v3 = v1[80];
  v4 = v1[67];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;
  *(v8 + 656) = v7;

  swift_setDeallocating();
  sub_1884E3A30();
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1884D29AC()
{
  v4 = v1[82];
  if (v4)
  {
    v5 = v1[79];
    if (v4[2])
    {
      v0 = v1[78];
      v6 = v4[4];
      v7 = v4[5];

      sub_1884DFA94(v6, v7, v0);
    }

    else
    {
      v8 = v1[82];
    }
  }

  else
  {
    v5 = v1[79];
  }

  sub_1883F8EE0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27);
  v17 = v5[17];
  v18 = sub_1883F986C(&unk_1886F7EF8);
  v19 = v3;
  v20 = v2;
  v21 = v18;
  v22 = v0;
  v23 = swift_task_alloc();
  v1[83] = v23;
  *v23 = v1;
  sub_1883F9374(v23);
  sub_1883F7E58();

  __asm { BR              X8 }
}

uint64_t sub_1884D2AA8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 664);
  *v4 = *v1;
  *(v3 + 672) = v7;
  *(v3 + 680) = v0;

  if (v0)
  {
    v8 = *(v3 + 536);
    v9 = sub_1884D39B4;
  }

  else
  {
    v10 = *(v3 + 536);

    v9 = sub_1884D2BC4;
    v8 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1884D2BC4()
{
  v23 = v0;
  v1 = *(v0 + 672);
  if (!v1)
  {
    v11 = *(v0 + 576);

    if ((*(v0 + 728) & 1) == 0)
    {
      v15 = *(v0 + 536);
      sub_18840D758();
      v16 = *(v15 + 128);
      v17 = *(v0 + 576);
      v22 = v17;
      if (v18)
      {
        sub_18850BE74(&v22, 0);
      }

      else
      {
        sub_18850BEFC(&v22);
      }

      goto LABEL_15;
    }

LABEL_7:

LABEL_15:
    *(v0 + 696) = 0;
    v19 = swift_task_alloc();
    v20 = sub_1883FDB3C(v19);
    *v20 = v21;
    sub_1883F74B4(v20);

    return sub_18840E178();
  }

  v2 = [*(v0 + 672) fileURL];
  if (v2)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v6);
    v2 = v7;
    (*(v4 + 8))(v3, v5);
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 728);
  [v8 setFileURL_];

  [v8 setDownloaded_];
  v10 = *(v0 + 576);
  if (v9)
  {

    goto LABEL_7;
  }

  *(v0 + 416) = v10;
  *(v0 + 464) = 0;
  *(v0 + 480) = 0xD000000000000000;
  v12 = v10;
  v13 = swift_task_alloc();
  *(v0 + 688) = v13;
  *v13 = v0;
  sub_1883FE6B8(v13);

  return sub_1883FBEA8();
}

uint64_t sub_1884D2DEC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 688);
  v6 = *(v4 + 536);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 336), (v2 + 416), 0x50uLL);
  sub_1883FBF6C(v2 + 336);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D2EF4()
{
  sub_1883F78E0();
  v12 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 576);

  v3 = *(v0 + 536);
  sub_18840D758();
  v4 = *(v3 + 128);
  v5 = *(v0 + 576);
  v11 = v5;
  if (v6)
  {
    sub_18850BE74(&v11, 0);
  }

  else
  {
    sub_18850BEFC(&v11);
  }

  *(v0 + 696) = 0;
  v7 = swift_task_alloc();
  v8 = sub_1883FDB3C(v7);
  *v8 = v9;
  sub_1883F74B4(v8);

  return sub_18840E178();
}

uint64_t sub_1884D2FC0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 704);
  v3 = *(v1 + 536);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D30B8()
{
  sub_1883F7120();
  v1 = v0[72];
  v0[32] = v1;
  v0[33] = 0;
  v0[38] = 0;
  v0[40] = 0xE000000000000000;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[89] = v3;
  *v3 = v0;
  sub_1883FE6B8(v3);

  return sub_1883FBEA8();
}

uint64_t sub_1884D3164()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 712);
  v6 = *(v4 + 536);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 176), (v2 + 256), 0x50uLL);
  sub_1883FBF6C(v2 + 176);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D326C()
{
  v84 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v6 = *(v0 + 536);
  if (!v1)
  {
    v38 = *(v0 + 536);

    v39 = v5;
    v40 = v4;
    v41 = v3;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 584);
      v45 = *(v0 + 576);
      v46 = *(v0 + 568);
      v77 = *(v0 + 728);
      v47 = *(v0 + 536);
      v48 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = sub_1883FE43C();
      v51 = sub_1883FE340(v49, v50, &v79);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v80 = v77;
      v81 = v46;
      v82 = v45;
      v83 = v44;
      v78 = v46;
      v52 = v45;
      v53 = v44;
      Asset = CKSyncEngine.FetchAssetContext.description.getter();
      v56 = v55;
      v57 = v82;
      v58 = v83;

      v59 = sub_1883FE340(Asset, v56, &v79);

      *(v48 + 14) = v59;
      sub_1884037B8(&dword_1883EA000, v60, v61, "%s finished fetching asset with context %s");
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {
      v68 = *(v0 + 576);
      v69 = *(v0 + 568);
    }

    v70 = *(v0 + 560);

    sub_1883F7910();
    v71 = *(v0 + 576);
    sub_1883F8300();

    __asm { BRAA            X2, X16 }
  }

  v7 = v1;

  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 584);
    v76 = v11;
    v15 = *(v0 + 576);
    v16 = *(v0 + 568);
    v74 = *(v0 + 728);
    v17 = *(v0 + 536);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v79 = v75;
    *v18 = 136315650;
    v20 = sub_1883FE43C();
    v22 = sub_1883FE340(v20, v21, &v79);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v80 = v74;
    v81 = v16;
    v82 = v15;
    v83 = v14;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v26 = CKSyncEngine.FetchAssetContext.description.getter();
    v28 = v27;
    v29 = v82;
    v30 = v83;

    v11 = v76;
    v31 = sub_1883FE340(v26, v28, &v79);

    *(v18 + 14) = v31;
    *(v18 + 22) = 2112;
    v32 = v76;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v33;
    *v19 = v33;
    _os_log_impl(&dword_1883EA000, v12, v13, "%s error fetching asset with context %s: %@", v18, 0x20u);
    sub_188462FE0(v19);
    sub_1883F7B60();
    v2 = v75;
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883F7B60();
  }

  if (*(v0 + 728))
  {
    sub_1883F8C2C();

    v34 = *(v0 + 696);
    v35 = *(v0 + 560);

    sub_1883F816C();
    sub_1883F8300();

    __asm { BRAA            X1, X16 }
  }

  v62 = v11;
  v63 = swift_task_alloc();
  *(v0 + 720) = v63;
  *v63 = v0;
  v63[1] = sub_1884D3738;
  v64 = *(v0 + 696);
  v65 = *(v0 + 536);
  sub_1883F8300();

  return sub_1884115F4();
}

uint64_t sub_1884D3738()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[90];
  v3 = v1[87];
  v4 = v1[67];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884D3848()
{
  sub_1883F8C2C();

  v4 = *(v2 + 696);
  v5 = *(v2 + 560);

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884D38D0()
{
  sub_1883F78E0();
  v1 = sub_18840EFC4(*(v0 + 616));
  if (*(v0 + 728))
  {
  }

  else
  {
    v2 = *(v0 + 536);
    sub_18840D758();
    v3 = *(v2 + 128);
    v4 = *(v0 + 576);
    if (v5)
    {
      sub_18840B028();
      sub_18850BE74(v6, 0);
    }

    else
    {
      sub_18840B028();
      sub_18850BEFC(v7);
    }
  }

  *(v0 + 696) = v1;
  if (v1)
  {
    v8 = *(v0 + 536);
    v9 = v1;
    sub_18840F1E8(v1);
  }

  v10 = swift_task_alloc();
  v11 = sub_1883FDB3C(v10);
  *v11 = v12;
  sub_1883F74B4(v11);

  return sub_18840E178();
}

uint64_t sub_1884D39B4()
{
  sub_1883F78E0();
  v1 = *(v0 + 624);
  v2 = *(v0 + 568);

  v3 = sub_18840EFC4(*(v0 + 680));
  if (*(v0 + 728))
  {
  }

  else
  {
    v4 = *(v0 + 536);
    sub_18840D758();
    v5 = *(v4 + 128);
    v6 = *(v0 + 576);
    if (v7)
    {
      sub_18840B028();
      sub_18850BE74(v8, 0);
    }

    else
    {
      sub_18840B028();
      sub_18850BEFC(v9);
    }
  }

  *(v0 + 696) = v3;
  if (v3)
  {
    v10 = *(v0 + 536);
    v11 = v3;
    sub_18840F1E8(v3);
  }

  v12 = swift_task_alloc();
  v13 = sub_1883FDB3C(v12);
  *v13 = v14;
  sub_1883F74B4(v13);

  return sub_18840E178();
}

uint64_t sub_1884D3AB0()
{
  sub_1883F7120();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1884D3B44;

  return sub_1884D1EB8(v2);
}

uint64_t sub_1884D3B44()
{
  sub_1883F7120();
  v2 = v1;
  sub_1883F78EC();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_1883F7910();

  return v7(v2);
}

uint64_t sub_1884D3C2C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = v2[243];
  v6 = *v1;
  sub_1883F78D4();
  *v7 = v6;
  *(v9 + 2016) = v8;
  *(v9 + 1952) = v0;

  v10 = v2[242];
  v11 = v2[232];

  if (v0)
  {
    v12 = sub_1884D3D70;
  }

  else
  {
    v12 = sub_1884D3E08;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1884D3D70()
{
  sub_1883F78E0();
  v3 = sub_18840EFC4(*(v2 + 1952));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

uint64_t sub_1884D3E08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *(v9 + 2016);
  if ((*(v9 + 1928) & 2) != 0)
  {
LABEL_13:
    *(v9 + 2017) = v10;
    v25 = sub_1883FA45C();
    sub_1883F8010(v25);
    v26 = swift_task_alloc();
    *(v9 + 1968) = v26;
    *v26 = v9;
    sub_1883F8F18();
    goto LABEL_14;
  }

  if ((*(v9 + 2016) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1884E01C8(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31);
  sub_1884023F4();
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 88);
  *(v9 + 1928) = v12;
  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
LABEL_6:
      v13 = *(v9 + 1872);
      v14 = sub_1884D44E8();
      v15 = v14;
      if (v14)
      {
        v16 = *(v9 + 1856);
        v17 = v14;
        v18 = sub_18842D4B4();
        sub_18840F1E8(v18);
      }

      *(v9 + 1984) = v15;
      v19 = swift_task_alloc();
      v20 = sub_188410CE8(v19);
      *v20 = v21;
      sub_1883F74DC(v20);

      return sub_18840E178();
    }

    v10 = 0;
    goto LABEL_13;
  }

  v23 = sub_1883FA45C();
  sub_1883FAAD4(v23);
  v24 = swift_task_alloc();
  *(v9 + 1944) = v24;
  *v24 = v9;
  sub_1883FE6C4();
LABEL_14:
  v27 = sub_1883FEB9C();

  return sub_188427A34(v27, v28, v29);
}

uint64_t sub_1884D3FA4()
{
  sub_1883FB4AC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  v7 = v4[246];
  *v6 = *v1;
  v5[247] = v0;

  v8 = v4[245];
  v9 = v4[232];
  if (v0)
  {

    v10 = sub_1884D4290;
  }

  else
  {
    *(v5 + 2018) = v3 & 1;

    v10 = sub_1884D40F8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884D40F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((*(v9 + 2017) & 1) == 0 && !*(v9 + 2018))
  {
    goto LABEL_6;
  }

  sub_1884E01C8(a1, a2, a3, a4, a5, a6, a7, a8, v29, v30);
  sub_1884023F4();
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 88);
  *(v9 + 1928) = v11;
  if (v11)
  {
    v22 = sub_1883FA45C();
    sub_1883FAAD4(v22);
    v23 = swift_task_alloc();
    *(v9 + 1944) = v23;
    *v23 = v9;
    sub_1883FE6C4(v23);
  }

  else
  {
    if ((v11 & 2) == 0)
    {
LABEL_6:
      v12 = *(v9 + 1872);
      v13 = sub_1884D44E8();
      v14 = v13;
      if (v13)
      {
        v15 = *(v9 + 1856);
        v16 = v13;
        v17 = sub_18842D4B4();
        sub_18840F1E8(v17);
      }

      *(v9 + 1984) = v14;
      v18 = swift_task_alloc();
      v19 = sub_188410CE8(v18);
      *v19 = v20;
      sub_1883F74DC(v19);

      return sub_18840E178();
    }

    *(v9 + 2017) = 0;
    v24 = sub_1883FA45C();
    sub_1883F8010(v24);
    v25 = swift_task_alloc();
    *(v9 + 1968) = v25;
    *v25 = v9;
    sub_1883F8F18();
  }

  v26 = sub_1883FEB9C();

  return sub_188427A34(v26, v27, v28);
}

uint64_t sub_1884D4290()
{
  sub_1883F78E0();
  v3 = sub_18840EFC4(*(v2 + 1976));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

uint64_t sub_1884D4328()
{
  sub_1883F78E0();

  v3 = sub_18840EFC4(*(v2 + 1920));
  v4 = sub_1883FE500(v3);
  v5 = sub_18842D4B4();
  sub_18840F1E8(v5);

  *(v2 + 1984) = v0;
  v6 = swift_task_alloc();
  v7 = sub_188410CE8(v6);
  *v7 = v8;
  sub_1883F74DC(v7);

  return sub_18840E178();
}

void sub_1884D43C8(void *a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v3 + 96));
  if (a1)
  {
    v6 = a1;
    v7 = *(v3 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 104);
    sub_1884AF4F4(v6, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 104) = v9;
  }

  else
  {
  }

  os_unfair_lock_unlock((v3 + 96));
}

void *sub_1884D4468()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 112));
  return v1;
}

void sub_1884D44A0(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 112));

  *(v1 + 120) = a1;

  os_unfair_lock_unlock((v1 + 112));
}

void *sub_1884D44E8()
{
  result = sub_1884D4468();
  if (!result)
  {
    os_unfair_lock_lock((v0 + 96));
    v2 = *(v0 + 104);

    os_unfair_lock_unlock((v0 + 96));
    if (*(v2 + 16))
    {
      sub_18847F360(v2);
      v4 = v3;

      return sub_18847FB50(v4, 0xD000000000000023, 0x8000000188702300);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1884D4574()
{
  v1 = v0;
  v2 = sub_1884D4468();
  if (!v2)
  {
    os_unfair_lock_lock((v1 + 96));
    v3 = *(v1 + 104);
    if (*(v3 + 16) && (sub_188486310(), (v5 & 1) != 0))
    {
      v2 = *(*(v3 + 56) + 8 * v4);
      v6 = v2;
    }

    else
    {
      v2 = 0;
    }

    os_unfair_lock_unlock((v1 + 96));
  }

  return v2;
}

uint64_t sub_1884D45EC()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1884D4720()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v2 + 1048);
  v6 = *v1;
  sub_1883F78D4();
  *v7 = v6;
  *(v9 + 1056) = v8;
  *(v9 + 1064) = v10;
  *(v9 + 1072) = v11;
  *(v9 + 1121) = v12;
  *(v9 + 1080) = v0;

  v13 = *(v2 + 960);
  if (v0)
  {
    v14 = sub_1884D56F4;
  }

  else
  {
    v14 = sub_1884D4854;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1884D4854()
{
  sub_1884E0128();
  v66 = v0;
  v2 = *(v0 + 1056);
  [*(*(v0 + 992) + 16) setServerChangeTokenForDatabase_];
  v3 = v2[2];
  *(v0 + 1088) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (v0 + 944);
    v6 = *(v0 + 1056);
    *(v0 + 944) = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (v6 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(*v5 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    v4 = *v5;
  }

  v11 = (v0 + 1016);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 992);
  sub_18850BFF4(1, v4);

  v14 = 0;
  v15 = *(v12 + 16);
  v16 = (v12 + 32);
  while (v15 != v14)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    ++v14;
    v17 = *v16;
    v16 += 2;
    [*(*(v0 + 992) + 16) removeRecordZoneWithZoneID_];
  }

  if (!(v2[2] | v15))
  {
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1056);

    if ((*(v0 + 1121) & 1) == 0)
    {
      sub_1884E00A8();
      v47 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        v48 = *(v0 + 960);
        sub_1883F9984();
        v2 = sub_1883F8C00();
        __src[0] = v2;
        *v16 = 136315138;
        v49 = sub_1883FE43C();
        sub_1883FE340(v49, v50, __src);
        sub_1883FE2FC();
        *(v16 + 4) = &off_1E70C3000;
        sub_1883F831C();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        sub_1883FE944(v2);
        sub_1883FD784();
        sub_1883F82B8();
      }

      [sub_1883F988C() setNeedsToFetchDatabaseChanges_];
      v56 = *(v14 + 16);
      Date.init()();
      Date._bridgeToObjectiveC()();
      v57 = sub_1884E000C();
      v58(v57);
      [v56 setLastFetchDatabaseChangesDate_];

      v59 = *(v0 + 984);

      sub_1883F7910();
      v60 = *(v0 + 1120);
      sub_18840DDB4();

      __asm { BRAA            X2, X16 }
    }

    v1 = *(v0 + 1040);
    v63 = *v11;

    *v11 = v63;
    if (qword_1EA90C9F0 != -1)
    {
LABEL_26:
      sub_1883F7480();
    }

    v28 = sub_188428FE0();
    *(v0 + 1032) = sub_1883F85F4(v28, qword_1EA90C9F8);

    v29 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v30 = *(v0 + 960);
      v31 = *(v0 + 952);
      sub_18840FB34();
      v64 = sub_1883FEEE0();
      *v16 = 136315394;
      v32 = sub_1883FE43C();
      sub_1883FE340(v32, v33, &v64);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1883FDED8((v0 + 736));
      v1 = *(v0 + 760);
      sub_1883FDED8(__src);
      sub_1883FB38C();
      CKSyncEngine.FetchChangesContext.description.getter();
      sub_188404258();
      memcpy((v0 + 656), __src, 0x50uLL);
      v34 = sub_1883FB300(v0 + 656);
      sub_18840C150(v34, v35, &v64);
      sub_188404FC8();

      *(v16 + 14) = __src;
      sub_1883F831C();
      _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    *(v0 + 1040) = v1;
    v41 = *(v0 + 1008);
    sub_1883F7B10(&unk_1886F7EF0);
    v42 = swift_task_alloc();
    v43 = sub_1884E0140(v42);
    *v43 = v44;
    sub_1883F8A00();
    sub_18840DDB4();

    __asm { BR              X5 }
  }

  v18 = *(v0 + 1064);
  v19 = *(v0 + 1016) & 1;
  v20 = *(v0 + 1024) & 1 | 0x2000000000000000;
  *(v0 + 336) = *(v0 + 1056);
  *(v0 + 344) = v18;
  *(v0 + 384) = v19;
  *(v0 + 400) = v20;

  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 1096) = v21;
  *v21 = v22;
  v21[1] = sub_1884D4CE8;
  v23 = *(v0 + 960);
  sub_18840DDB4();

  return sub_1883FBEA8();
}

uint64_t sub_1884D4CE8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 1096);
  v6 = *(v4 + 960);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 256), (v2 + 336), 0x50uLL);
  sub_1883FBF6C(v2 + 256);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D51F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 1112);
  v3 = *(v1 + 960);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D52EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v35;
  a32 = v36;
  sub_1884E0128();
  a30 = v33;
  p_src = *(v33 + 1032);
  v38 = *(v33 + 960);
  v39 = *(v33 + 952);

  v40 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1883FF744();

  if (sub_1883F9084())
  {
    v41 = *(v33 + 1104);
    v42 = *(v33 + 960);
    v43 = *(v33 + 952);
    sub_1883FE540();
    v39 = sub_1883FEEE0();
    a11 = v39;
    *v38 = 136315650;
    v44 = sub_1883FE43C();
    sub_1883FE340(v44, v45, &a11);
    sub_1883FE2FC();
    *(v38 + 4) = v34;
    *(v38 + 6) = 2048;
    *(v38 + 14) = v41;
    *(v38 + 11) = 2080;
    sub_18841397C((v33 + 496));
    v46 = *(v33 + 520);
    sub_18841397C(&__src);
    sub_1883FAB38(v33 + 496, v33 + 576);
    p_src = &__src;
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v33 + 416), &__src, 0x50uLL);
    v47 = sub_1883FB300(v33 + 416);
    sub_18840C150(v47, v48, &a11);
    sub_188404FC8();

    *(v38 + 3) = &__src;
    sub_1883F831C();
    _os_log_impl(v49, v50, v51, v52, v53, 0x20u);
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  else
  {

    v46 = *(v33 + 1040);
  }

  if (*(v33 + 1121))
  {
    sub_188404A90();
    *(v33 + 1024) = p_src;
    *(v33 + 1016) = v40;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v54 = sub_188428FE0();
    *(v33 + 1032) = sub_1883F85F4(v54, qword_1EA90C9F8);

    v55 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();

    if (sub_1883F9084())
    {
      v56 = *(v33 + 960);
      v57 = *(v33 + 952);
      sub_18840FB34();
      a11 = sub_1883FEEE0();
      *v38 = 136315394;
      v58 = sub_1883FE43C();
      sub_1883FE340(v58, v59, &a11);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_18841397C((v33 + 736));
      v46 = *(v33 + 760);
      sub_18841397C(&__src);
      sub_1883FB38C();
      CKSyncEngine.FetchChangesContext.description.getter();
      sub_188404258();
      memcpy((v33 + 656), &__src, 0x50uLL);
      v60 = sub_1883FB300(v33 + 656);
      sub_18840C150(v60, v61, &a11);
      sub_188404FC8();

      *(v38 + 14) = &__src;
      sub_1883F831C();
      _os_log_impl(v62, v63, v64, v65, v66, 0x16u);
      swift_arrayDestroy();
      sub_1883FD784();
      sub_1883F82B8();
    }

    *(v33 + 1040) = v46;
    v67 = *(v33 + 1008);
    sub_1883F7B10(&unk_1886F7EF0);
    v103 = v68;
    v69 = swift_task_alloc();
    v70 = sub_1884E0140(v69);
    *v70 = v71;
    sub_1883F8A00();
    sub_18840562C();

    return v77(v72, v73, v74, v75, v76, v77, v78, v79, a9, v103, a11, __src, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    sub_1884E00A8();
    v81 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v82 = *(v33 + 960);
      sub_1883F9984();
      v39 = sub_1883F8C00();
      __src = v39;
      *v38 = 136315138;
      v83 = sub_1883FE43C();
      sub_1883FE340(v83, v84, &__src);
      sub_1883FE2FC();
      *(v38 + 4) = v34;
      sub_1883F831C();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_1883FE944(v39);
      sub_1883FD784();
      sub_1883F82B8();
    }

    [sub_1883F988C() setNeedsToFetchDatabaseChanges_];
    v90 = *(v32 + 16);
    Date.init()();
    Date._bridgeToObjectiveC()();
    v91 = sub_1884E000C();
    v92(v91);
    [v90 setLastFetchDatabaseChangesDate_];

    v93 = *(v33 + 984);

    sub_1883F7910();
    v94 = *(v33 + 1120);
    sub_18840562C();

    return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, __src, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_1884D56F4()
{
  v35 = v0;
  v1 = v0 + 116;
  v2 = v0 + 117;
  v3 = v0[135];
  v4 = v0[129];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v3;
  v8 = sub_18840EFC4(v3);

  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[120];
    v13 = v0[119];
    v14 = sub_1883FE540();
    v15 = sub_18840DEBC();
    v33 = sub_18840BE14();
    *v14 = 136315650;
    v16 = sub_1883FE43C();
    v18 = sub_1883FE340(v16, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    memcpy(v0 + 12, (v13 + 16), 0x50uLL);
    v19 = (v13 + 16);
    v1 = v0 + 116;
    memcpy(__dst, v19, sizeof(__dst));
    sub_1883FAB38((v0 + 12), (v0 + 22));
    Changes = CKSyncEngine.FetchChangesContext.description.getter();
    v22 = v21;
    memcpy(v0 + 2, __dst, 0x50uLL);
    sub_1883FB300((v0 + 2));
    v23 = sub_1883FE340(Changes, v22, &v33);
    v2 = v0 + 117;

    *(v14 + 14) = v23;
    *(v14 + 22) = 2112;
    v24 = v9;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v15 = v25;
    _os_log_impl(&dword_1883EA000, v10, v11, "%s failed to fetch database changes for context %s: %@", v14, 0x20u);
    sub_188442B84(v15, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883FC7E4();
  }

  *v1 = v9;
  type metadata accessor for CKError(0);
  sub_1883F93BC();
  sub_188400BF0(v26, v27);
  _BridgedStoredNSError.code.getter();
  if (*v2 == 21)
  {
    [*(v0[124] + 16) setServerChangeTokenForDatabase_];
  }

  v28 = v0[135];
  v29 = v0[123];
  swift_willThrow();

  v30 = sub_1883F8C1C();

  return v31(v30);
}

uint64_t sub_1884D59D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1884D5A70;

  return sub_1884D5BD4(a3);
}

uint64_t sub_1884D5A70()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1884D5BA4()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1883F816C();
  return v1();
}

uint64_t sub_1884D5BD4(uint64_t a1)
{
  v2[163] = v1;
  v2[162] = a1;
  v4 = type metadata accessor for CancellationError();
  v2[164] = v4;
  v5 = *(v4 - 8);
  v2[165] = v5;
  v6 = *(v5 + 64) + 15;
  v2[166] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[167] = v7;
  *v7 = v2;
  v7[1] = sub_1884D5CD4;

  return sub_1884DA744((v2 + 2), a1);
}

uint64_t sub_1884D5CD4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 1336);
  v3 = *(v1 + 1304);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D5DCC()
{
  v79 = v0;
  v1 = *(v0 + 16);
  *(v0 + 1344) = v1;
  v2 = *(v0 + 32);
  *(v0 + 1352) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  *(v0 + 1376) = v4;
  *(v0 + 1360) = v3;
  *(v0 + 105) = *(v0 + 104);
  if (!v2)
  {
LABEL_33:
    if (qword_1EA90C9F0 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_34;
  }

  v5 = v4;
  v6 = sub_1883F4C9C(v4);
  if (!v6)
  {

    goto LABEL_33;
  }

  v7 = v6;
  v74 = v5;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v8 = *(v0 + 1304);
  v9 = *(v0 + 1296);
  v10 = type metadata accessor for Logger();
  *(v0 + 1392) = sub_1883F85F4(v10, qword_1EA90C9F8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v76 = v0;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = sub_18840FB34();
    v77 = sub_18840BE14();
    *v15 = 136315394;
    v16 = sub_1883FE43C();
    v18 = sub_1883FE340(v16, v17, &v77);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_1884439D8((v76 + 512));
    sub_1884439D8(__src);
    sub_1883FAB38(v76 + 512, v76 + 112);
    Changes = CKSyncEngine.FetchChangesContext.description.getter();
    v21 = v20;
    memcpy((v76 + 592), __src, 0x50uLL);
    sub_1883FB300(v76 + 592);
    v1 = sub_1883FE340(Changes, v21, &v77);

    *(v15 + 14) = v1;
    _os_log_impl(&dword_1883EA000, v11, v12, "%s will fetch next record zone changes for context %s", v15, 0x16u);
    swift_arrayDestroy();
    v0 = v76;
    sub_1883F7B60();
    sub_1883FC7E4();
  }

  v22 = *(v0 + 1304);
  __src[0] = MEMORY[0x1E69E7CC0];
  sub_1883FE5A0();
  v23 = 0;
  v24 = v74 & 0xC000000000000001;
  v25 = v74 & 0xFFFFFFFFFFFFFF8;
  v75 = v22;
LABEL_8:
  while (v23 != v7)
  {
    if (v24)
    {
      v26 = MEMORY[0x18CFD59D0](v23, v74);
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        goto LABEL_47;
      }

      v26 = *(v74 + 32 + 8 * v23);
    }

    v27 = v26;
    if (__OFADD__(v23++, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      sub_1883F7480();
LABEL_34:
      v46 = *(v0 + 1304);
      v47 = *(v0 + 1296);
      v48 = type metadata accessor for Logger();
      sub_1883F85F4(v48, qword_1EA90C9F8);

      v49 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();

      if (sub_1883F9084())
      {
        v50 = *(v0 + 1304);
        v51 = *(v0 + 1296);
        sub_18840FB34();
        v77 = sub_1883FEEE0();
        *v46 = 136315394;
        v52 = sub_1883FE43C();
        sub_1883FE340(v52, v53, &v77);
        sub_1883FE2FC();
        sub_1883FED4C();
        sub_1883FDED8((v0 + 912));
        sub_1883FDED8(__src);
        sub_1883FAB38(v0 + 912, v0 + 272);
        CKSyncEngine.FetchChangesContext.description.getter();
        sub_188404258();
        memcpy((v0 + 832), __src, 0x50uLL);
        v54 = sub_1883FB300(v0 + 832);
        sub_18840C150(v54, v55, &v77);
        sub_188404FC8();

        *(v46 + 14) = __src;
        sub_1883F831C();
        _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
        sub_1884022C8();
        sub_1883FD784();
        sub_1883F82B8();
      }

      v61 = *(v0 + 1328);

      sub_1883F8C1C();
      sub_188407640();

      __asm { BRAA            X2, X16 }
    }

    v29 = *(v0 + 1304);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v30 = *(v0 + 1304);
      swift_task_reportUnexpectedExecutor();
    }

    v31 = *(v22 + 216);
    if ((v31 & 0xC000000000000001) != 0)
    {
      if (v31 < 0)
      {
        v32 = *(v22 + 216);
      }

      v33 = *(v22 + 216);

      v1 = v27;
      v34 = __CocoaSet.contains(_:)();

      if ((v34 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*(v31 + 16))
      {
        v35 = v7;
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v36 = *(v31 + 40);

        v37 = NSObject._rawHashValue(seed:)(v36);
        v38 = ~(-1 << *(v31 + 32));
        while (1)
        {
          v39 = v37 & v38;
          if (((*(v31 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
          {
            break;
          }

          v40 = *(*(v31 + 48) + 8 * v39);
          v1 = static NSObject.== infix(_:_:)();

          v37 = v39 + 1;
          if (v1)
          {

            v22 = v75;
            v0 = v76;
            v7 = v35;
            v25 = v74 & 0xFFFFFFFFFFFFFF8;
            v24 = v74 & 0xC000000000000001;
            goto LABEL_8;
          }
        }

        v22 = v75;
        v0 = v76;
        v7 = v35;
        v25 = v74 & 0xFFFFFFFFFFFFFF8;
        v24 = v74 & 0xC000000000000001;
      }

LABEL_26:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v41 = *(__src[0] + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = __src;
      specialized ContiguousArray._endMutation()();
    }
  }

  v42 = __src[0];
  *(v0 + 1400) = __src[0];
  result = sub_1883F4C9C(v42);
  *(v0 + 1408) = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 1416) = 0;
      v44 = *(v0 + 1400);
      if ((v44 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x18CFD59D0](0);
      }

      else
      {
        v45 = *(v44 + 32);
      }

      sub_1883FF3C8(v45);
      v69 = v1;
      sub_188406C1C(__src, v69);
      swift_endAccess();

      sub_1883F9B24();
      v70 = v69;
      swift_task_alloc();
      sub_1883FF2B8();
      *(v0 + 1432) = v71;
      *v71 = v72;
      sub_1884052F0(v71);
      sub_188407640();

      return sub_1883FBEA8();
    }
  }

  else
  {
    *(v0 + 1440) = *(*(v0 + 1304) + 128);
    *(v0 + 1448) = [objc_allocWithZone(CKOperationConfiguration) init];
    v64 = swift_task_alloc();
    *(v0 + 1456) = v64;
    *v64 = v0;
    sub_1883F909C(v64);
    sub_1883FF484(v65);
    sub_188407640();

    return sub_1884E5CF0(v66, v67);
  }

  return result;
}

uint64_t sub_1884D64DC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 1432);
  v6 = *(v4 + 1304);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 352), (v2 + 432), 0x50uLL);
  sub_1883FBF6C(v2 + 352);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D65E4()
{
  sub_1883F78E0();
  v17 = v0;
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];

  if (v2 + 1 == v3)
  {
    v0[180] = *(v0[163] + 128);
    v0[181] = [objc_allocWithZone(CKOperationConfiguration) init];
    v4 = swift_task_alloc();
    v0[182] = v4;
    *v4 = v0;
    sub_1883F909C(v4);
    v6 = sub_1883FF484(v5);

    return sub_1884E5CF0(v6, v7);
  }

  else
  {
    v9 = v0[177] + 1;
    v0[177] = v9;
    v10 = v0[175];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18CFD59D0]();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    sub_1883FF3C8(v11);
    v12 = v1;
    sub_188406C1C(&v16, v12);
    swift_endAccess();

    sub_1883F9B24();
    v13 = v12;
    swift_task_alloc();
    sub_1883FF2B8();
    v0[179] = v14;
    *v14 = v15;
    sub_1884052F0();

    return sub_1883FBEA8();
  }
}

uint64_t sub_1884D6760()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 1456);
  v5 = *(v3 + 1304);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 1464) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884D685C()
{
  sub_1883FB4AC();
  v1 = v0[183];
  if (v1 && v1[2])
  {
    v2 = v0[181];
    v3 = v1[4];
    v4 = v1[5];

    sub_1884DFA94(v3, v4, v2);
  }

  v5 = v0[181];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[163];
  v10 = sub_18844C2F0(MEMORY[0x1E69E7CC0]);
  v0[149] = 0;
  v0[150] = v10;
  v0[184] = *(v9 + 136);

  v11 = v5;
  v12 = v8;
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

id sub_1884D6940()
{
  sub_1883FB4AC();
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1352);
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v2;
  v5 = v3;
  v6 = sub_1884296E8(v2, v3);
  *(v0 + 1480) = v6;
  result = [v1 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = *(v0 + 1472);
  swift_getObjectType();

  result = [v9 container];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = *(v0 + 1472);
  v12 = *(v0 + 105);
  v13 = [result implementation];

  v14 = v6;
  v15 = sub_1884276B8(v13, v6);
  *(v0 + 1488) = v15;
  *(v0 + 1496) = [v15 databaseWithDatabaseScope_];
  v16 = swift_task_alloc();
  *(v0 + 1504) = v16;
  *v16 = v0;
  v16[1] = sub_1884D6AF4;
  v17 = *(v0 + 1384);
  v18 = sub_1883FF484(*(v0 + 1376));

  return sub_18846D398(v18, v19, v20);
}

uint64_t sub_1884D6AF4()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 1504);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 1512) = v0;

  if (!v0)
  {
    *(v5 + 1520) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884D6C00()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1376);
  v6 = *(v0 + 1352);
  v7 = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1884D6CBC, v7, 0);
}

void sub_1884D6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v12 = v10;
  v263 = (v10 + 152);
  v271 = v10 + 155;
  v273 = (v10 + 156);
  v279 = v10 + 158;
  v280 = v10 + 157;
  v275 = v10 + 159;
  v13 = v10[190];
  v10[191] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v10[160] = MEMORY[0x1E69E7CC0];
  v10[159] = v14;
  v15 = *(v13 + 64);
  v16 = -1 << *(v13 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v278 = v10[180];
  v18 = (v17 & v15);
  v269 = 0x80000001886FFF40;
  v267 = (v10[165] + 8);
  v268 = *MEMORY[0x1E696A578];
  v274 = "ine_FetchChanges.swift";
  v264 = v10[189];
  BYTE4(v276) = v264 != 0;
  a9.n128_u64[0] = 136315650;
  v277 = a9;
  *(&v19 + 1) = 3;
  *&v19 = 136315394;
  v272 = v19;
  v265 = xmmword_1886F7400;
  v270 = (v10 + 161);
  while (1)
  {
    v12[192] = v14;
    v281 = v14;
LABEL_6:
    sub_1883F96EC(a1, a2, a3, a4, a5, a6, a7, a8, v251, v252, v253, v254, isUnique, v258, v259, v260, v261, v262, v263, v264, v265, *(&v265 + 1), v266, v267, v268, v269, v270, v271, v272, *(&v272 + 1), v273, v274, v275, v276, SBYTE4(v276));
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v23 = v20;
LABEL_11:
      sub_1883FEEFC();
      sub_18840F90C(v24);
      v26 = *v25;
      v292 = *v25;
      v293 = v25[2];
      v290 = *(v25 + 32);
      v289 = v25[3];
      v291 = v25[1];
      if ((*(v25 + 33) & 1) == 0)
      {
        break;
      }

      v27 = v12[174];
      v28 = v12[163];
      v29 = *v25;
      sub_188415154(v26);
      v30 = v10;
      sub_188415154(v29);
      v31 = sub_18840EFC4(v29);

      v32 = v30;
      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v11 = v33;

      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v288 + 1304);
        v37 = sub_1883FE540();
        v38 = swift_slowAlloc();
        v294 = sub_1883FE540();
        *v37 = v277.n128_u32[0];
        v39 = sub_1883FE43C();
        sub_188405F34(v39, v40);
        sub_1883F9B0C();
        *(v37 + 4) = v29;
        v12 = v288;
        *(v37 + 12) = 2112;
        *(v37 + 14) = v32;
        *v38 = v32;
        *(v37 + 22) = 2112;
        v41 = v32;
        v42 = v11;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 24) = v43;
        v38[1] = v43;
        _os_log_impl(&dword_1883EA000, v34, v35, "%s error fetching changes for zone %@: %@", v37, 0x20u);
        sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
        sub_188426CB8();
        v14 = v281;
        sub_1883F7B60();
        sub_1883FE944(v294);
        sub_1883F7B60();
        sub_1883FD784();
      }

      else
      {

        v12 = v288;
        v14 = v281;
      }

      *v279 = v11;
      type metadata accessor for CKError(0);
      sub_1883F93BC();
      sub_188400BF0(&qword_1EA90CAE0, v44);
      v10 = v280;
      _BridgedStoredNSError.code.getter();
      v45 = *v280;
      v46 = *v280 == 28 || v45 == 26;
      if (v46)
      {
        sub_188412578(*(v278 + 16), sel_setServerChangeToken_forZoneID_);
      }

      else if (v45 == 21)
      {
        sub_188412578(*(v278 + 16), sel_setServerChangeToken_forZoneID_);
        v47 = 1;
        goto LABEL_24;
      }

      v47 = 0;
LABEL_24:
      v48 = v12[163];
      v49 = v11;
      sub_18840D758();
      if ((v50 & 1) == 0)
      {
        v51 = v12[180];
        sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
        v52 = sub_1884E02E0();
        sub_1883F85E4(v52, v53, v54, v55, v56, v57, v58, v59, v251, v252, v253, v254, isUnique, v258, v259, v260, v261, v262, v263, v264, v265, *(&v265 + 1), v266, v267, v268, v269, v270, v271, v272, *(&v272 + 1), v273, v274, v275, v276, v277.n128_i64[0], v277.n128_i64[1], v60);
        *(v61 + 32) = v32;
        v62 = v32;
        sub_1884E02B0();
        swift_setDeallocating();
        sub_1884E3A30();
      }

      if ((v47 & 1) == 0)
      {
        v284 = v11;
        v63 = v12[150];
        v10 = *(v63 + 16);
        if (v12[149])
        {
          v64 = v12[149];

          sub_188404D70();
          v11 = v65;
          v10 = v66;

          v9 = v289;
          if ((v11 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          sub_1884DE724(v32, v10);
        }

        else
        {
          sub_1884DECAC(v32, v63 + 32, *(v63 + 16));
          v9 = v289;
          if (v67)
          {
            v10 = 0;
            goto LABEL_33;
          }
        }

LABEL_34:
        v68 = v12[162];
        sub_1884D43C8(v284, v32);

        sub_188410204();
        sub_1884DFE14(v292, v291, v293, v9, v290, 1);

        goto LABEL_6;
      }

      sub_1884DFE14(v292, v291, v293, v289, v290, 1);
      v20 = v23;
    }

    v69 = v26 + 64;
    v70 = -1 << v26[32];
    if (-v70 < 64)
    {
      v71 = ~(-1 << -v70);
    }

    else
    {
      v71 = -1;
    }

    v9 = v71 & *(v26 + 8);
    v261 = v10;
    sub_1884061B8();
    sub_1884DFDA8(v72, v73, v74, v75, v76, v77);
    v78 = (63 - v70) >> 6;

    v79 = 0;
    v262 = MEMORY[0x1E69E7CC8];
    v14 = v281;
    v285 = v78;
LABEL_39:
    if (v9)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v80 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
LABEL_128:

        sub_1884E0208();
        sub_1883F6164();
        swift_getErrorValue();
        v248 = *(v14 + 1168);
        v249 = *(v14 + 1176);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        sub_1884E0108();
        sub_1884E0188();
        sub_188410EF4();
        return;
      }

      if (v80 >= v78)
      {
        break;
      }

      v9 = *&v69[8 * v80];
      ++v79;
      if (v9)
      {
        v79 = v80;
LABEL_44:
        sub_1883FE0AC();
        v82 = v81 | (v79 << 6);
        v84 = *(*(v83 + 48) + 8 * v82);
        v85 = *(v83 + 56) + 16 * v82;
        v86 = *v85;
        if ((*(v85 + 8) & 1) == 0)
        {
          sub_18844264C(v86);
          sub_18844264C(v86);
          v87 = v84;
          sub_188404FC8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = *(v14 + 16);
            sub_1884773D4();
            v14 = v118;
          }

          v88 = v14;
          v89 = *(v14 + 16);
          v90 = v88;
          v91 = *(v88 + 24);
          if (v89 >= v91 >> 1)
          {
            sub_1883F8DD4(v91);
            sub_1884773D4();
            v90 = v119;
          }

          sub_18844CAFC(v86);

          *(v90 + 16) = v89 + 1;
          v92 = v90 + 8 * v89;
          v14 = v90;
          *(v92 + 32) = v86;
          v78 = v285;
          goto LABEL_39;
        }

        v282 = v14;
        *v273 = v86;
        sub_18844264C(v86);
        sub_18844264C(v86);
        v260 = v84;
        v93 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
        type metadata accessor for CKError(0);
        HIDWORD(isUnique) = v94;
        HIDWORD(v258) = HIDWORD(v93);
        v259 = v86;
        if (swift_dynamicCast())
        {
          v255 = *v271;
          v95 = v273;
          goto LABEL_54;
        }

        v14 = v288;
        v96 = *(v288 + 1328);
        v256 = *(v288 + 1312);

        *(v288 + 1288) = v86;
        v97 = v86;
        if (!swift_dynamicCast())
        {
          goto LABEL_128;
        }

        v258 = *(v288 + 1328);
        v253 = *(v288 + 1312);
        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        v98 = swift_allocObject();
        *(v98 + 16) = v265;
        *(v98 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v98 + 40) = v99;
        sub_1884E011C();
        *(v98 + 48) = v100;
        *(v98 + 56) = v269;
        v101 = Dictionary.init(dictionaryLiteral:)();
        *(v288 + 1224) = 20;
        sub_18847E984(v101);
        sub_188402E5C();

        sub_1883F93BC();
        sub_188400BF0(&qword_1EA90CAE0, v102);
        _BridgedStoredNSError.init(_:userInfo:)();
        v255 = *(v288 + 1232);
        (*v267)(v258, v253);
        v95 = v270;
LABEL_54:

        LODWORD(isUnique) = swift_isUniquelyReferenced_nonNull_native();
        sub_188486398();
        v103 = *(v262 + 16);
        LODWORD(v258) = v104;
        sub_1883FE314();
        v108 = v106 + v107;
        if (__OFADD__(v106, v107))
        {
          goto LABEL_133;
        }

        v109 = v105;
        sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v108))
        {
          sub_188486398();
          sub_188442C00();
          v14 = v282;
          if (!v46)
          {
            sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
            sub_188410EF4();

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v109 = v110;
        }

        else
        {
          v14 = v282;
          v111 = v258;
        }

        if (v111)
        {
          sub_188413F84(v262, v251, v252, v253, v255);
          sub_18844CAFC(v259);
        }

        else
        {
          sub_1883F9628(v109 >> 6);
          sub_1884E00F4(v112, v251, v252, v253, v255);
          sub_18844CAFC(v113);
          v114 = *(v262 + 16);
          v115 = __OFADD__(v114, 1);
          v116 = v114 + 1;
          if (v115)
          {
            goto LABEL_134;
          }

          *(v262 + 16) = v116;
        }

        goto LABEL_39;
      }
    }

    v12 = v288;
    sub_1884723C0(v120);

    sub_188472474(v121);
    v11 = v262;
    if (*(v262 + 16))
    {
      v10 = *(v288 + 1304);
      v122 = *(v288 + 1296);
      sub_18847F374(v262);
      v124 = v123;

      sub_1884E011C();
      v9 = sub_18847FB50(v124, v125 + 17, v274 | 0x8000000000000000);
      v11 = v261;
      sub_1884D43C8(v9, v261);
      sub_18840D758();
      v126 = v290;
      if (v127)
      {
        v128 = *(v288 + 1392);
        v10 = *(v288 + 1304);

        v129 = v261;
        v130 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v130, v11))
        {
          v286 = v130;
          v131 = *(v288 + 1304);
          v10 = sub_18840FB34();
          v283 = v14;
          v132 = sub_18840DEBC();
          v295 = sub_1883FE540();
          *v10 = v272;
          v133 = sub_1883FE43C();
          sub_188405F34(v133, v134);
          sub_1883F9B0C();
          *(v10 + 4) = v288;
          v12 = v288;
          sub_1884062FC();
          *(v10 + 14) = v129;
          *v132 = v129;
          v135 = v129;
          v130 = v286;
          _os_log_impl(&dword_1883EA000, v286, v11, "%s not clearing needsToFetchChanges for %@ due to retryable record-level error", v10, 0x16u);
          sub_188442B84(v132, &qword_1EA90DC70, &unk_1886FA190);
          v14 = v283;
          sub_1883F7B60();
          sub_1883FE944(v295);
          v126 = v290;
          sub_1883F7B60();
          sub_1883F7B60();
        }

        if (v126)
        {

          goto LABEL_74;
        }

        sub_188410204();
        v11 = 1;
LABEL_78:
        v148 = v12[149];
        v149 = v12[150];
        v12[152] = v261;
        v9 = swift_task_alloc();
        *(v9 + 16) = v148;
        *(v9 + 24) = v149;
        sub_18840581C(v9, v263);
        LOBYTE(v149) = v150;
        v10 = v151;

        if (v149)
        {
          sub_1884DE724(v261, v10);
        }

        if (v11)
        {

          sub_188443358();
          sub_1884061B8();
          sub_1884DFE14(v152, v153, v154, v155, v156, v157);
        }

        else
        {
          v158 = v12[180];
          sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
          v159 = sub_1884E02E0();
          sub_1883F85E4(v159, v160, v161, v162, v163, v164, v165, v166, v251, v252, v253, v254, isUnique, v258, v259, v260, v261, v262, v263, v264, v265, *(&v265 + 1), v266, v267, v268, v269, v270, v271, v272, *(&v272 + 1), v273, v274, v275, v276, v277.n128_i64[0], v277.n128_i64[1], v167);
          *(v168 + 32) = v261;
          v9 = v261;
          sub_1884E02B0();

          sub_188443358();
          sub_1884061B8();
          sub_1884DFE14(v169, v170, v171, v172, v173, v174);
          swift_setDeallocating();
          a1 = sub_1884E3A30();
        }
      }

      else
      {

        if ((v290 & 1) == 0)
        {
          v11 = 0;
          sub_188410204();
          goto LABEL_78;
        }

        sub_188443358();
LABEL_74:
        sub_1884061B8();
        sub_1884DFE14(v142, v143, v144, v145, v146, v147);
        sub_188410204();
      }
    }

    else
    {

      v10 = v261;
      [*(v278 + 16) setServerChangeToken:v289 forZoneID:v261];
      if ((v290 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_78;
      }

      sub_1884061B8();
      sub_1884DFE14(v136, v137, v138, v139, v140, v141);
    }
  }

  while (2)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_111:
      v215 = v12[200];
      v216 = v12[199];

      goto LABEL_112;
    }

    if (v23 < v21)
    {
      v18 = *(v22 + 8 * v23);
      ++v20;
      if (v18)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v175 = *(v14 + 16);
  v176 = v12[160];
  v12[193] = v176;
  if (v175)
  {
    v10 = *v275;
    goto LABEL_87;
  }

  v10 = *v275;
  if (!*(v176 + 16) && !v10[2])
  {
    v12[196] = v10;
    v180 = v12[172];

    v182 = sub_1884DD690(v181);
    v184 = sub_1884E0068(v182, v183);
    v186 = sub_1884059A0(v184, v185);
    if (v187)
    {
      v10 = v186;
      v188 = v12[163];
      v12[202] = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

      sub_1883FE5A0();
      v189 = 0;
      v9 = -1;
      v11 = "BUG IN CLOUDKIT: CKSyncEngine finished fetching changes for a zone that it never started: %@";
      while (1)
      {
        v12[205] = v189;
        v190 = v12[200];
        sub_18841E620();
        if (v192)
        {
          break;
        }

        sub_1883FDCE0(v191);
        if (v46)
        {
          if (*(v14 + 16))
          {
            v201 = *(v14 + 40);
            v202 = v23;
            sub_1884E02C8();
            NSObject._rawHashValue(seed:)(v201);
            sub_18840F8C8();
            while (1)
            {
              sub_1884E0090(v203);
              if ((v204 & 1) == 0)
              {
                break;
              }

              v205 = v12[202];
              v206 = *(*(v14 + 48) + 8 * &dword_1883EA000);
              LOBYTE(v205) = static NSObject.== infix(_:_:)();

              v12 = v288;
              v203 = &dword_1883EA000 + 1;
              if (v205)
              {

                goto LABEL_109;
              }
            }

            v9 = -1;
          }

          else
          {
            v207 = v23;
          }
        }

        else
        {
          sub_1883FC674();
          v193 = v23;
          sub_1884E02C8();
          v194 = __CocoaSet.contains(_:)();

          if (v194)
          {
LABEL_109:
            v208 = v12[162];
            v209 = v23;
            v210 = sub_1884D4574();
            sub_1883FEE7C(v210);
            v211 = v209;
            v212 = v208;
            swift_task_alloc();
            sub_1883F9524();
            v12[208] = v213;
            *v213 = v214;
            sub_1883FE084(v213);
            goto LABEL_88;
          }
        }

        v195 = v12[174];
        v10 = v23;
        v196 = Logger.logObject.getter();
        v197 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v196, v197))
        {
          v23 = sub_1883F9984();
          v198 = sub_18840DEBC();
          sub_1883FB368(v198);
          sub_1884E0020();
          sub_188442B84(v18, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
        }

        else
        {
          v14 = v196;
          v196 = v10;
        }

        v12 = v288;
        v199 = *(v288 + 1640);
        v200 = *(v288 + 1608);
        sub_1884E00E8();
        if (v46)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

LABEL_112:
    if (*(v12 + 106) == 1)
    {
      v217 = v12[162];
      if (!sub_1884D44E8())
      {
        goto LABEL_135;
      }

      sub_18840F6B4();

      v218 = v9;
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v219, v220))
      {
        v221 = v12[163];
        v10 = sub_18840FB34();
        v222 = sub_18840DEBC();
        v14 = sub_1883FE540();
        *v10 = v272;
        v223 = sub_1883FE43C();
        v225 = sub_188405F34(v223, v224);

        *(v10 + 4) = v225;
        sub_1884062FC();
        v226 = v218;
        v227 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 14) = v227;
        *v222 = v227;
        sub_1884E0168(&dword_1883EA000, v228, v229, "%s error fetching record zone changes: %@");
        sub_188442B84(v222, &qword_1EA90DC70, &unk_1886FA190);
        v12 = v288;
        sub_1883F7B60();
        sub_1883FE944(v14);
        sub_1883FC7E4();
        sub_1883F7B60();
      }

      v230 = v12[163];
      v231 = v218;
      v232 = sub_1883FE860();
      sub_18840F1E8(v232);

      v233 = v10;
      v234 = _convertErrorToNSError(_:)();

      ShouldDefer = CKErrorShouldDefer(v234);
      sub_1883F8488();
      if (ShouldDefer)
      {
        v287 = v234[166];
        swift_willThrow();

        sub_1883F8C1C();
        goto LABEL_124;
      }
    }

    else
    {
      sub_1884110F8();

      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.debug.getter();

      os_log_type_enabled(v236, v237);
      sub_188405714();
      if (v239)
      {
        v240 = *(v238 + 1304);
        sub_1883F9984();
        v296 = sub_1883F8C00();
        *v11 = 136315138;
        v241 = sub_1883FE43C();
        sub_188405F34(v241, v242);
        sub_1883FE2FC();
        *(v11 + 4) = v14;
        sub_18841006C(&dword_1883EA000, v243, v244, "%s finished fetch record zone changes request");
        sub_1883FE944(v296);
        sub_1883FD784();
        sub_1883F82B8();
      }

      else
      {
      }
    }

    v245 = *(v288 + 1328);

    sub_188400894();
LABEL_124:
    sub_188410EF4();

    __asm { BRAA            X2, X16 }
  }

LABEL_87:
  v12[194] = v10;
  v12[124] = v14;
  sub_1883F5A6C();

  swift_task_alloc();
  sub_1883F9524();
  v12[195] = v177;
  *v177 = v178;
  sub_1883FF75C(v177);
LABEL_88:
  sub_188410EF4();

  sub_1883FBEA8();
}

uint64_t sub_1884D8098()
{
  sub_1883FB4AC();
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1884D8138, v5, 0);
}

void sub_1884D8138()
{
  v2 = v0;
  v265 = (v0 + 152);
  v273 = v0 + 155;
  v278 = (v0 + 156);
  v284 = v0 + 158;
  v285 = v0 + 157;
  v279 = v0 + 159;
  v272 = (v0 + 161);
  v3 = v0[189];
  v4 = v2[172];
  v5 = v2[169];
  v6 = v2[162];

  v7 = sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18844E6FC(&qword_1EA90E278, &unk_1886FB440);
  sub_18841A9C8();
  v8 = MEMORY[0x1E69E7CC0];
  v276 = v7;
  v9 = Dictionary.init(dictionaryLiteral:)();
  v10 = v3;
  v11 = sub_18840EFC4(v3);
  v12 = v11;
  sub_1884D44A0(v11);
  sub_1884DC7DC(v4);

  v266 = 0;
  v2[191] = v12;
  v2[160] = v8;
  v2[159] = v8;
  v22 = -1 << *(v9 + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = (v23 & *(v9 + 64));
  v283 = v2[180];
  v271 = 0x80000001886FFF40;
  v269 = (v2[165] + 8);
  v270 = *MEMORY[0x1E696A578];
  v277 = "ine_FetchChanges.swift";
  BYTE4(v280) = v2[189] != 0;
  *&v21 = 136315650;
  v281 = v21;
  *(&v25 + 1) = 3;
  *&v25 = 136315394;
  v274 = v25;
  v267 = xmmword_1886F7400;
  v286 = v2;
  while (1)
  {
    v282 = v8;
    v2[192] = v8;
LABEL_6:
    sub_1883F96EC(v13, v14, v15, v16, v17, v18, v19, v20, v255, v256, v257, v258, isUnique, v262, v263, v264, v265, v266, v267, *(&v267 + 1), v268, v269, v270, v271, v272, v273, v274, *(&v274 + 1), v275, v276, v277, v278, v279, v280, SBYTE4(v280));
    if (!v24)
    {
      break;
    }

    while (1)
    {
      v29 = v26;
LABEL_11:
      sub_1883FEEFC();
      sub_18840F90C(v30);
      v32 = *v31;
      v296 = *v31;
      v289 = *(v31 + 32);
      v287 = *(v31 + 24);
      v290 = *(v31 + 16);
      v291 = *(v31 + 8);
      if ((*(v31 + 33) & 1) == 0)
      {
        break;
      }

      v33 = v2[174];
      v34 = v2[163];
      sub_1883FB624();
      sub_1884DFDA8(v35, v36, v37, v38, v39, 1);
      v40 = v3;
      p_isa = v296;
      sub_1883FB624();
      sub_1884DFDA8(v41, v42, v43, v44, v45, 1);
      v46 = sub_18840EFC4(v296);

      v47 = v40;
      v48 = v46;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      v292 = v48;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = v2[163];
        v52 = sub_1883FE540();
        v53 = swift_slowAlloc();
        v297 = sub_1883FE540();
        *v52 = v281;
        v54 = sub_1883FE43C();
        sub_188405F34(v54, v55);
        sub_1883F9B0C();
        *(v52 + 4) = v2;
        *(v52 + 12) = 2112;
        *(v52 + 14) = v47;
        *v53 = v47;
        *(v52 + 22) = 2112;
        v56 = v47;
        v57 = v48;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 24) = v58;
        v53[1] = v58;
        _os_log_impl(&dword_1883EA000, v49, v50, "%s error fetching changes for zone %@: %@", v52, 0x20u);
        sub_18844E6FC(&qword_1EA90DC70, &unk_1886FA190);
        sub_188426CB8();
        p_isa = v296;
        v59 = v285;
        sub_1883F7B60();
        sub_1883FE944(v297);
        sub_1883F7B60();
        sub_1883F7B60();
      }

      else
      {

        v59 = v285;
      }

      *v284 = v48;
      type metadata accessor for CKError(0);
      sub_1883F93BC();
      sub_188400BF0(&qword_1EA90CAE0, v60);
      _BridgedStoredNSError.code.getter();
      v61 = *v59;
      v62 = *v59 == 28 || v61 == 26;
      v12 = v289;
      if (v62)
      {
        sub_188412578(*(v283 + 16), sel_setServerChangeToken_forZoneID_);
        v63 = 0;
        v2 = v286;
      }

      else
      {
        v2 = v286;
        if (v61 == 21)
        {
          sub_188412578(*(v283 + 16), sel_setServerChangeToken_forZoneID_);
          v63 = 1;
        }

        else
        {
          v63 = 0;
        }
      }

      v64 = v2[163];
      v3 = v292;
      v65 = v292;
      sub_18840D758();
      if ((v66 & 1) == 0)
      {
        v67 = v2[180];
        sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
        v68 = sub_1884E02E0();
        sub_1883F85E4(v68, v69, v70, v71, v72, v73, v74, v75, v255, v256, v257, v258, isUnique, v262, v263, v264, v265, v266, v267, *(&v267 + 1), v268, v269, v270, v271, v272, v273, v274, *(&v274 + 1), v275, v276, v277, v278, v279, v280, v281, *(&v281 + 1), v76);
        *(v77 + 32) = v47;
        v78 = v47;
        sub_1884E02B0();
        swift_setDeallocating();
        sub_1884E3A30();
      }

      if ((v63 & 1) == 0)
      {
        v4 = v2[150];
        v3 = *(v4 + 16);
        if (v2[149])
        {
          v79 = v2[149];

          sub_188404D70();
          v4 = v80;
          v3 = v81;

          if ((v4 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_33:
          sub_1884DE724(v47, v3);
        }

        else
        {
          sub_1884DECAC(v47, v4 + 32, *(v4 + 16));
          if (v82)
          {
            v3 = 0;
            goto LABEL_33;
          }
        }

LABEL_34:
        v83 = v2[162];
        sub_1884D43C8(v292, v47);

        sub_188410204();
        sub_188405EBC();

        goto LABEL_6;
      }

      sub_188405EBC();
      v26 = v29;
    }

    v84 = v32 + 8;
    v293 = -1 << *(v32 + 32);
    if (-v293 < 64)
    {
      v85 = ~(-1 << -v293);
    }

    else
    {
      v85 = -1;
    }

    v86 = v85 & v32[8];
    v264 = v3;
    sub_1883FB624();
    sub_1884DFDA8(v87, v88, v89, v90, v91, 0);
    v4 = (63 - v293) >> 6;

    v12 = 0;
    v294 = MEMORY[0x1E69E7CC8];
LABEL_39:
    v92 = v278;
    if (v86)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v93 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_128:

        sub_1884E0208();
        sub_1883F6164();
        swift_getErrorValue();
        v252 = v92[146];
        v253 = v92[147];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        sub_1884E0108();
        sub_1884E0188();
        sub_188410EF4();
        return;
      }

      if (v93 >= v4)
      {
        break;
      }

      v86 = v84[v93];
      ++v12;
      if (v86)
      {
        v12 = v93;
LABEL_44:
        v94 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v95 = v94 | (v12 << 6);
        v96 = *(v296[6] + 8 * v95);
        v97 = v296[7] + 16 * v95;
        v98 = *v97;
        if ((*(v97 + 8) & 1) == 0)
        {
          sub_18844264C(v98);
          sub_18844264C(v98);
          v99 = v96;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = *(v282 + 16);
            sub_1884773D4();
            v282 = v128;
          }

          v101 = *(v282 + 16);
          v100 = *(v282 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_1883F8DD4(v100);
            sub_1884773D4();
            v282 = v129;
          }

          sub_18844CAFC(v98);

          *(v282 + 16) = v101 + 1;
          *(v282 + 8 * v101 + 32) = v98;
          goto LABEL_39;
        }

        *v278 = v98;
        v102 = sub_1884E0134();
        sub_18844264C(v102);
        v103 = sub_1884E0134();
        sub_18844264C(v103);
        v263 = v96;
        sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
        type metadata accessor for CKError(0);
        HIDWORD(v262) = v104;
        if (swift_dynamicCast())
        {
          v259 = *v273;
          goto LABEL_54;
        }

        v92 = v286;
        v105 = *(v286 + 1328);
        *isUniquea = *(v286 + 1312);

        *(v286 + 1288) = v98;
        v106 = v98;
        if (!swift_dynamicCast())
        {
          goto LABEL_128;
        }

        isUnique = *(v286 + 1328);
        v257 = *(v286 + 1312);
        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        v107 = swift_allocObject();
        *(v107 + 16) = v267;
        *(v107 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v107 + 40) = v108;
        sub_1884E011C();
        *(v107 + 48) = v109;
        *(v107 + 56) = v271;
        v110 = Dictionary.init(dictionaryLiteral:)();
        *(v286 + 1224) = 20;
        sub_18847E984(v110);
        sub_188402E5C();

        sub_1883F93BC();
        sub_188400BF0(&qword_1EA90CAE0, v111);
        _BridgedStoredNSError.init(_:userInfo:)();
        v259 = *(v286 + 1232);
        (*v269)(isUnique, v257);
        v92 = v272;
LABEL_54:

        LODWORD(isUnique) = swift_isUniquelyReferenced_nonNull_native();
        sub_188486398();
        v112 = *(v294 + 16);
        LODWORD(v262) = v113;
        sub_1883FE314();
        v117 = v115 + v116;
        if (__OFADD__(v115, v116))
        {
          goto LABEL_133;
        }

        v118 = v114;
        sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v117))
        {
          sub_188486398();
          sub_188442C00();
          if (!v62)
          {
            sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
            sub_188410EF4();

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v118 = v119;
        }

        else
        {
          v120 = v262;
        }

        if (v120)
        {
          sub_188413F84(v294, v255, v256, v257, v259);
          v121 = sub_1884E0134();
          sub_18844CAFC(v121);
        }

        else
        {
          sub_1883F9628(v118 >> 6);
          sub_1884E00F4(v122, v255, v256, v257, v259);
          v123 = sub_1884E0134();
          sub_18844CAFC(v123);
          v124 = *(v294 + 16);
          v125 = __OFADD__(v124, 1);
          v126 = v124 + 1;
          if (v125)
          {
            goto LABEL_134;
          }

          *(v294 + 16) = v126;
        }

        goto LABEL_39;
      }
    }

    p_isa = v296;

    v2 = v286;
    sub_1884723C0(v130);

    sub_188472474(v131);
    if (*(v294 + 16))
    {
      v132 = *(v286 + 1304);
      v133 = *(v286 + 1296);
      sub_18847F374(v294);
      v135 = v134;

      sub_1884E011C();
      v137 = sub_18847FB50(v135, v136 + 17, v277 | 0x8000000000000000);
      v4 = v264;
      sub_1884D43C8(v137, v264);
      sub_18840D758();
      if (v138)
      {
        v139 = *(v286 + 1392);
        v140 = *(v286 + 1304);

        v12 = v286;
        v141 = v264;
        v142 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v142, v4))
        {
          v295 = v142;
          v143 = *(v286 + 1304);
          v144 = sub_18840FB34();
          v145 = sub_18840DEBC();
          v12 = sub_1883FE540();
          *v144 = v274;
          v146 = sub_1883FE43C();
          v148 = sub_188405F34(v146, v147);

          *(v144 + 4) = v148;
          sub_1884062FC();
          *(v144 + 14) = v141;
          *v145 = v141;
          v149 = v141;
          v142 = v295;
          _os_log_impl(&dword_1883EA000, v295, v4, "%s not clearing needsToFetchChanges for %@ due to retryable record-level error", v144, 0x16u);
          sub_188442B84(v145, &qword_1EA90DC70, &unk_1886FA190);
          p_isa = v296;
          sub_1883F7B60();
          sub_1883FE944(v12);
          sub_1883F82B8();
          sub_1883F7B60();
        }

        v3 = v287;
        if (v289)
        {

          v150 = sub_1883F9AB0();
          sub_1884DFE14(v150, v151, v152, v287, v289, 0);
          sub_188410204();
          v2 = v286;
          goto LABEL_74;
        }

        sub_188410204();
        v12 = 1;
        v2 = v286;
      }

      else
      {

        v3 = v287;
        if (v289)
        {

          v157 = sub_1883F9AB0();
          sub_1884DFE14(v157, v158, v159, v287, v289, 0);
          sub_188410204();
          goto LABEL_74;
        }

        v12 = 0;
        sub_188410204();
      }
    }

    else
    {

      v3 = v264;
      [*(v283 + 16) setServerChangeToken:v287 forZoneID:v264];
      if (v289)
      {
        v153 = sub_1883F9AB0();
        sub_1884DFE14(v153, v154, v155, v287, v156, 0);

        goto LABEL_74;
      }

      v12 = 0;
    }

    v160 = v2[149];
    v161 = v2[150];
    v2[152] = v264;
    v4 = swift_task_alloc();
    *(v4 + 16) = v160;
    *(v4 + 24) = v161;
    sub_18840581C(v4, v265);
    LOBYTE(v161) = v162;
    v3 = v163;

    if (v161)
    {
      sub_1884DE724(v264, v3);
    }

    if (v12)
    {

      v164 = sub_1883F9AB0();
      sub_1884DFE14(v164, v165, v166, v287, v289, 0);
    }

    else
    {
      v167 = v2[180];
      sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v168 = sub_1884E02E0();
      sub_1883F85E4(v168, v169, v170, v171, v172, v173, v174, v175, v255, v256, v257, v258, isUnique, v262, v263, v264, v265, v266, v267, *(&v267 + 1), v268, v269, v270, v271, v272, v273, v274, *(&v274 + 1), v275, v276, v277, v278, v279, v280, v281, *(&v281 + 1), v176);
      *(v177 + 32) = v264;
      v4 = v264;
      sub_1884E02B0();

      v178 = sub_1883F9AB0();
      sub_1884DFE14(v178, v179, v180, v287, v289, 0);
      swift_setDeallocating();
      v13 = sub_1884E3A30();
    }

LABEL_74:
    v8 = v282;
  }

  while (2)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_111:
      v219 = v2[200];
      v220 = v2[199];

      goto LABEL_112;
    }

    if (v29 < v27)
    {
      v24 = *(v28 + 8 * v29);
      ++v26;
      if (v24)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v181 = *(v282 + 16);
  v182 = v2[160];
  v2[193] = v182;
  if (v181)
  {
    v3 = *v279;
    goto LABEL_87;
  }

  v3 = *v279;
  if (!*(v182 + 16) && !v3[2])
  {
    v2[196] = v3;
    v186 = v2[172];

    v188 = sub_1884DD690(v187);
    v190 = sub_1884E0068(v188, v189);
    sub_1884059A0(v190, v191);
    if (v192)
    {
      v3 = v2[163];
      v2[202] = v276;

      sub_1883FE5A0();
      v193 = 0;
      v4 = -1;
      v12 = "BUG IN CLOUDKIT: CKSyncEngine finished fetching changes for a zone that it never started: %@";
      while (1)
      {
        v2[205] = v193;
        v194 = v2[200];
        sub_18841E620();
        if (v196)
        {
          break;
        }

        sub_1883FDCE0(v195);
        if (v62)
        {
          if (p_isa[2])
          {
            v205 = p_isa[5];
            v206 = v29;
            sub_1884E02C8();
            NSObject._rawHashValue(seed:)(v205);
            sub_18840F8C8();
            while (1)
            {
              sub_1884E0090(v207);
              if ((v208 & 1) == 0)
              {
                break;
              }

              v209 = v2[202];
              v210 = *(p_isa[6] + 8 * &dword_1883EA000);
              LOBYTE(v209) = static NSObject.== infix(_:_:)();

              v2 = v286;
              v207 = &dword_1883EA000 + 1;
              if (v209)
              {

                goto LABEL_109;
              }
            }

            v4 = -1;
          }

          else
          {
            v211 = v29;
          }
        }

        else
        {
          sub_1883FC674();
          v197 = v29;
          sub_1884E02C8();
          v198 = __CocoaSet.contains(_:)();

          if (v198)
          {
LABEL_109:
            v212 = v2[162];
            v213 = v29;
            v214 = sub_1884D4574();
            sub_1883FEE7C(v214);
            v215 = v213;
            v216 = v212;
            swift_task_alloc();
            sub_1883F9524();
            v2[208] = v217;
            *v217 = v218;
            sub_1883FE084(v217);
            goto LABEL_88;
          }
        }

        v199 = v2[174];
        v3 = v29;
        v200 = Logger.logObject.getter();
        v201 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v200, v201))
        {
          v29 = sub_1883F9984();
          v202 = sub_18840DEBC();
          sub_1883FB368(v202);
          sub_1884E0020();
          sub_188442B84(v24, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
        }

        else
        {
          p_isa = &v200->isa;
          v200 = v3;
        }

        v2 = v286;
        v203 = *(v286 + 1640);
        v204 = *(v286 + 1608);
        sub_1884E00E8();
        if (v62)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

LABEL_112:
    if (*(v2 + 106) == 1)
    {
      v221 = v2[162];
      if (!sub_1884D44E8())
      {
        goto LABEL_135;
      }

      sub_18840F6B4();

      v222 = v4;
      v223 = Logger.logObject.getter();
      v224 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v223, v224))
      {
        v225 = v2[163];
        v3 = sub_18840FB34();
        v226 = sub_18840DEBC();
        p_isa = sub_1883FE540();
        *v3 = v274;
        v227 = sub_1883FE43C();
        v229 = sub_188405F34(v227, v228);

        *(v3 + 4) = v229;
        sub_1884062FC();
        v230 = v222;
        v231 = _swift_stdlib_bridgeErrorToNSError();
        *(v3 + 14) = v231;
        *v226 = v231;
        sub_1884E0168(&dword_1883EA000, v232, v233, "%s error fetching record zone changes: %@");
        sub_188442B84(v226, &qword_1EA90DC70, &unk_1886FA190);
        v2 = v286;
        sub_1883F7B60();
        sub_1883FE944(p_isa);
        sub_1883FC7E4();
        sub_1883F7B60();
      }

      v234 = v2[163];
      v235 = v222;
      v236 = sub_1883FE860();
      sub_18840F1E8(v236);

      v237 = v3;
      v238 = _convertErrorToNSError(_:)();

      ShouldDefer = CKErrorShouldDefer(v238);
      sub_1883F8488();
      if (ShouldDefer)
      {
        v288 = v238[166];
        swift_willThrow();

        sub_1883F8C1C();
        goto LABEL_124;
      }
    }

    else
    {
      sub_1884110F8();

      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.debug.getter();

      os_log_type_enabled(v240, v241);
      sub_188405714();
      if (v243)
      {
        v244 = *(v242 + 1304);
        sub_1883F9984();
        v298 = sub_1883F8C00();
        *v12 = 136315138;
        v245 = sub_1883FE43C();
        sub_188405F34(v245, v246);
        sub_1883FE2FC();
        *(v12 + 4) = p_isa;
        sub_18841006C(&dword_1883EA000, v247, v248, "%s finished fetch record zone changes request");
        sub_1883FE944(v298);
        sub_1883FD784();
        sub_1883F82B8();
      }

      else
      {
      }
    }

    v249 = *(v286 + 1328);

    sub_188400894();
LABEL_124:
    sub_188410EF4();

    __asm { BRAA            X2, X16 }
  }

LABEL_87:
  v2[194] = v3;
  v2[124] = v282;
  sub_1883F5A6C();

  swift_task_alloc();
  sub_1883F9524();
  v2[195] = v183;
  *v183 = v184;
  sub_1883FF75C(v183);
LABEL_88:
  sub_188410EF4();

  sub_1883FBEA8();
}

uint64_t sub_1884D957C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 1560);
  v6 = *(v4 + 1304);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 192), (v2 + 992), 0x50uLL);
  sub_1883FBF6C(v2 + 192);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884D9DE8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v5 = *(v4 + 1664);
  v6 = *(v4 + 1304);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 752), (v2 + 672), 0x50uLL);
  sub_1883FBF6C(v2 + 752);
  v9 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884DA58C()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1883F78EC();
  v11 = v10;
  sub_1883F7B78();
  *v12 = v11;
  v14 = *(v13 + 40);
  v15 = *v1;
  sub_1883F7110();
  *v16 = v15;
  *(v11 + 48) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {

    v20 = *(v15 + 8);

    return v20(v9, v7, v5, v3 & 1);
  }
}

uint64_t sub_1884DA6E4()
{
  sub_1883F7120();

  sub_1883F816C();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1884DA744(uint64_t a1, uint64_t a2)
{
  v3[151] = v2;
  v3[150] = a2;
  v3[149] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884DA76C, v2, 0);
}

void sub_1884DA76C()
{
  v189 = v0;
  v1 = v0;
  v2 = *(v0 + 1208);
  Strong = swift_weakLoadStrong();
  *(v0 + 1216) = Strong;
  if (!Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v40 = *(v0 + 1208);
    v41 = type metadata accessor for Logger();
    sub_1883F85F4(v41, qword_1EA90C9F8);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v1 + 1208);
      v45 = sub_1883F9984();
      v46 = sub_1883FE540();
      __src[0].n128_u64[0] = v46;
      *v45 = 136315138;
      v47 = sub_1883FE43C();
      v49 = sub_1883FE340(v47, v48, __src);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1883EA000, v42, v43, "%s not fetching changes for deallocated engine", v45, 0xCu);
      sub_1883FE944(v46);
      sub_1883F82B8();
      sub_1883F7B60();
    }

    v50 = *(v1 + 1192);
    *(v50 + 73) = 0u;
    v50[3] = 0u;
    v50[4] = 0u;
    v50[1] = 0u;
    v50[2] = 0u;
    *v50 = 0u;
LABEL_139:
    v164 = *(v1 + 8);
    sub_18841B948();

    __asm { BRAA            X1, X16 }
  }

  v4 = Strong;
  v5 = *(v1 + 1208);
  memcpy((v1 + 112), (*(v1 + 1200) + 16), 0x50uLL);
  sub_1884C7AD8(__src);
  memcpy((v1 + 16), __src, 0x60uLL);
  if (!*(v1 + 24))
  {
    v56 = *(*(v1 + 1208) + 152);
    sub_188443314();
    v57 = swift_allocObject();
    *(v1 + 1224) = v57;
    memcpy((v57 + 16), (v1 + 112), 0x50uLL);
    *(v57 + 96) = v4;
    sub_1883FAB38(v1 + 112, v1 + 192);

    v58 = swift_task_alloc();
    *(v1 + 1232) = v58;
    *v58 = v1;
    v58[1] = sub_1884DB620;
    sub_18841B948();

    __asm { BR              X3 }
  }

  sub_188442B84(v1 + 16, &unk_1EA90E4D0, &unk_1886FB460);
  v6 = *(v1 + 120);
  LODWORD(v7) = *(v1 + 128);
  v9 = *(v1 + 136);
  v8 = *(v1 + 144);
  v10 = *(v1 + 152);
  v11 = *(v1 + 160);
  i = *(v1 + 168);
  v13 = *(v1 + 176);
  v14 = *(v1 + 184);
  sub_1883FAB38(v1 + 112, v1 + 512);
  *(v1 + 664) = v6;
  LODWORD(v180) = v7;
  *(v1 + 672) = v7;
  *(v1 + 680) = v9;
  *(v1 + 688) = v8;
  v174 = v10;
  *(v1 + 696) = v10;
  HIDWORD(v172) = v11;
  *(v1 + 704) = v11 & 1;
  v170 = i;
  *(v1 + 712) = i;
  *(v1 + 720) = v13 & 1;
  *(v1 + 728) = v14;
  if (qword_1EA90C9F0 != -1)
  {
LABEL_157:
    sub_1883F7480();
  }

  v175 = v1 + 1176;
  v176 = v1 + 1168;
  v15 = *(v1 + 1208);
  v16 = type metadata accessor for Logger();
  sub_1883F85F4(v16, qword_1EA90C9F8);
  sub_1883FAB38(v1 + 112, v1 + 272);

  sub_1883F697C(v1 + 664, v1 + 736);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  sub_1883FB300(v1 + 112);
  sub_1883F7768(v1 + 664);
  v184 = v8;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v1 + 1208);
    v20 = sub_1883FE540();
    v188[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = sub_1883FE43C();
    sub_1883FE340(v21, v22, v188);
    sub_1883FE2FC();
    *(v20 + 4) = i;
    v8 = 2080;
    *(v20 + 12) = 2080;
    memcpy(__src, (v1 + 112), 0x50uLL);
    sub_1883FAB38(v1 + 112, v1 + 432);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v1 + 352), __src, 0x50uLL);
    v23 = sub_1883FB300(v1 + 352);
    sub_18840C150(v23, v24, v188);
    sub_188404FC8();

    *(v20 + 14) = __src;
    *(v20 + 22) = 2080;
    memcpy(__src, (v1 + 664), 0x48uLL);
    sub_1883F697C(v1 + 664, v1 + 880);
    CKSyncEngine.FetchChangesOptions.description.getter();
    sub_188404258();
    memcpy((v1 + 808), __src, 0x48uLL);
    v25 = sub_1883F7768(v1 + 808);
    sub_18840C150(v25, v26, v188);
    sub_188404FC8();

    *(v20 + 24) = __src;
    sub_1883F6560(&dword_1883EA000, v27, v18, "%s next fetch changes options for context %s: %s");
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v28 = (v1 + 952);
  v182 = v1;
  v183 = v1 + 1008;
  v178 = v1 + 1064;
  v171 = *(*(v1 + 1208) + 128);
  v29 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v173 = MEMORY[0x1E69E7CC0];
  __src[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  sub_1883F4C9C(v29);
  sub_1884E00C4();
  v30 = 0;
  v185 = 0;
  while (v1 != v30)
  {
    if (v181)
    {
      v31 = MEMORY[0x18CFD59D0](v30, v29);
    }

    else
    {
      if (v30 >= *(v8 + 16))
      {
        goto LABEL_146;
      }

      v31 = *(v29 + 8 * v30 + 32);
    }

    v32 = v31;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_145;
    }

    if (v180)
    {
      if (v180 != 1)
      {
        goto LABEL_15;
      }

      v17 = (v1 + 1176);
      v33 = sub_1884E0298();
      sub_188402ED8(v33);
      sub_1883FDBF4();
      sub_1884E0268();
      sub_1883FF670();

      if (v7)
      {
LABEL_15:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = *(__src[0].n128_u64[0] + 16);
        sub_1883FAA5C();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_1883FAA5C();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_18;
      }
    }

    else
    {
      v17 = (v1 + 1168);
      v34 = sub_1884E0298();
      sub_188402ED8(v34);
      sub_1883FDBF4();
      sub_1884E0268();
      sub_1883FF670();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    ++v30;
  }

  v8 = __src[0].n128_u64[0];
  __src[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  v35 = v184;
  v36 = sub_1883F4C9C(v184);
  for (i = 0; v36 != i; ++i)
  {
    sub_1884E01E8();
    if ((v184 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x18CFD59D0](i, v35);
    }

    else
    {
      v37 = *(v35 + 8 * i + 32);
    }

    v38 = v37;
    if (__OFADD__(i, 1))
    {
      goto LABEL_147;
    }

    v17 = (v1 + 1184);
    *(v1 + 1184) = v37;
    v39 = swift_task_alloc();
    sub_1883FC7AC(v39);
    sub_1883FF670();

    if (v7)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(__src[0].n128_u64[0] + 16);
      sub_1883FAA5C();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1883FAA5C();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v35 = v184;
  }

  sub_188472318(v8);
  v52 = sub_1884DD690(__src[0].n128_u64[0]);
  v187 = v51;
  if (!*(v51 + 16))
  {
    v162 = *(v1 + 1216);
    v163 = *(v1 + 1192);

    sub_1883F7768(v1 + 664);

    *(v163 + 73) = 0u;
    v163[3] = 0u;
    v163[4] = 0u;
    v163[1] = 0u;
    v163[2] = 0u;
    *v163 = 0u;
    goto LABEL_139;
  }

  v17 = sub_1884DE588(0, v51);
  if (*(v174 + 16) && (sub_188486310(), (v54 & 1) != 0))
  {
    v55 = *(*(v174 + 56) + 16 * v53);
  }

  else
  {
    v55 = HIDWORD(v172);
  }

  LODWORD(v175) = v55;
  v8 = MEMORY[0x1E69E7CC8];
  v188[0] = MEMORY[0x1E69E7CC0];
  v61 = v52;
  v179 = v17;
LABEL_44:
  v180 = v8 & 0xC000000000000001;
  v62 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 < 0)
  {
    v62 = v8;
  }

  v176 = v8;
  v177 = v62;
  while (1)
  {
    if (v180)
    {
      v63 = __CocoaSet.count.getter();
    }

    else
    {
      v63 = *(v176 + 16);
    }

    v64 = *(v1 + 1208);
    if (v63 >= sub_1884C6868() || (v7 = v187, !*(v187 + 16)))
    {
      v160 = *(v1 + 1216);

LABEL_137:
      v161 = *(v1 + 1192);

      memcpy(v161, (v1 + 664), 0x48uLL);
      *(v161 + 72) = v173;
      *(v161 + 80) = v176;
      *(v161 + 88) = v175 & 1;

      goto LABEL_139;
    }

    if (!v61)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1885143C8(v7);
        v187 = v7;
      }

      v78 = *(v7 + 16);
      if (!v78)
      {
        goto LABEL_154;
      }

      sub_1883FF1E0(v78);
      *(v7 - 16) = v64;
      specialized ContiguousArray._endMutation()();
      v61 = 0;
      goto LABEL_115;
    }

    v181 = v52;
    sub_18841105C();
    v65 = v64;
    NSObject._rawHashValue(seed:)(v63);
    sub_18840767C();
    if (v66)
    {
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v67 = sub_188410B90();
    v69 = v68;
    v71 = v70;

    __src[0].n128_u64[0] = i;
    __src[0].n128_u64[1] = v63;
    __src[1].n128_u64[0] = v8;
    __src[1].n128_u64[1] = v67;
    __src[2].n128_u64[0] = v69;
    __src[2].n128_u64[1] = v71;
    __src[3].n128_u8[0] = 0;
    if (!v67)
    {
      goto LABEL_158;
    }

    while (1)
    {
      v72 = __src[1];
      *v28 = __src[0];
      v28[1] = v72;
      v28[2] = __src[2];
      v28[3].n128_u8[0] = __src[3].n128_u8[0];
      v73 = _HashTable.BucketIterator.currentValue.getter();
      if ((v74 & 1) == 0 && !v73)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
      if (!__src[1].n128_u64[1])
      {
        goto LABEL_158;
      }
    }

    if (!*(v182 + 976))
    {
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      return;
    }

    v8 = __src[1].n128_i64[0];

    v75 = *(v7 + 16);
    v1 = v182;
    sub_1883FE844();
    v76 = sub_188413F40();
    if (v77)
    {
      if (!v75)
      {
        goto LABEL_70;
      }
    }

    else if (v75 <= MEMORY[0x18CFD4CC0](v76))
    {
LABEL_70:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1885143C8(v7);
        v187 = v7;
      }

      v79 = *(v7 + 16);
      if (!v79)
      {
        goto LABEL_156;
      }

      sub_1883FF1E0(v79);
      *(v7 - 16) = v75;
      specialized ContiguousArray._endMutation()();
      sub_1883FE844();
      v80 = v187;
      v81 = *(v187 + 16);
      v82 = *(v52 + 24) & 0x3FLL;
      if (v82 || v81 >= 0x10)
      {
        v124 = MEMORY[0x18CFD4CE0](v81);
        if (v82 <= v124)
        {
          v125 = v124;
        }

        else
        {
          v125 = v82;
        }

        v52 = sub_1884DE9B0(v80, v125, 0, v82, sub_1884DEBA8);

        v61 = v52;
      }

      else
      {

        v52 = 0;
        v61 = 0;
      }

      v17 = v179;
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_native())
    {
      v17 = v179;
    }

    else
    {
      v17 = v179;
      if (!v52)
      {
        goto LABEL_164;
      }

      v83 = _HashTable.copy()();

      v52 = v83;
    }

    if (!v52)
    {
      goto LABEL_163;
    }

    v1 = v52 + 32;
    sub_1883FE1E0();
    v84 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    __src[0].n128_u64[0] = v52 + 16;
    __src[0].n128_u64[1] = v52 + 32;
    __src[1].n128_u64[0] = v8;
    __src[1].n128_u64[1] = v84;
    __src[2].n128_u64[0] = v85;
    __src[2].n128_u64[1] = v86;
    __src[3].n128_u8[0] = 0;
    _HashTable.BucketIterator.advance()();
    if (__src[1].n128_u64[1])
    {
      break;
    }

    sub_1884038D4();

LABEL_111:

    sub_1883FF02C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1885143C8(v7);
      v187 = v7;
    }

    v1 = v182;
    v126 = *(v7 + 16);
    if (!v126)
    {
      goto LABEL_155;
    }

    sub_1883FF1E0(v126);
    *(v7 - 16) = __src;
    specialized ContiguousArray._endMutation()();
    v61 = v52;
LABEL_115:
    v127 = *(v1 + 1200);
    v128 = sub_1884D4574();
    if (!v128)
    {
      if (*(v174 + 16) && (sub_188486310(), (v131 & 1) != 0))
      {
        v132 = (*(v174 + 56) + 16 * v130);
        v133 = *v132;
        v134 = *(v132 + 1);
      }

      else
      {
        v133 = HIDWORD(v172);
        v134 = v170;
      }

      if ((v175 ^ v133))
      {
        goto LABEL_148;
      }

      v135 = [*(v171 + 16) fetchChangesZoneConfigurationForZoneID_];
      [v135 setResultsLimit_];
      v136 = v8;
      v137 = v135;
      v138 = v176;
      if (v180)
      {
        v139 = __CocoaSet.count.getter();
        if (__OFADD__(v139, 1))
        {
          goto LABEL_160;
        }

        v138 = sub_1885112B4(v177, v139 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __src[0].n128_u64[0] = v138;
      sub_188486310();
      v141 = *(v138 + 16);
      sub_1883FE314();
      v146 = v144 + v145;
      if (__OFADD__(v144, v145))
      {
        goto LABEL_159;
      }

      v147 = v142;
      v148 = v143;
      sub_18844E6FC(&unk_1EA90E4F0, &qword_1886FB488);
      v149 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v146);
      v150 = __src[0].n128_u64[0];
      if (v149)
      {
        sub_188486310();
        v1 = v182;
        if ((v148 & 1) != (v152 & 1))
        {
          goto LABEL_150;
        }

        v147 = v151;
        if (v148)
        {
LABEL_132:
          v156 = *(v150 + 56);
          v157 = *(v156 + 8 * v147);
          *(v156 + 8 * v147) = v137;

          goto LABEL_133;
        }
      }

      else
      {
        v1 = v182;
        if (v148)
        {
          goto LABEL_132;
        }
      }

      sub_1883F9628(v147 >> 6);
      *(v153 + 8 * v147) = v136;
      *(*(v150 + 56) + 8 * v147) = v137;
      v154 = *(v150 + 16);
      v66 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v66)
      {
        goto LABEL_161;
      }

      *(v150 + 16) = v155;
LABEL_133:
      v8 = v150;
      v158 = v136;
      MEMORY[0x18CFD52F0]();
      i = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v159 = *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (i >= v159 >> 1)
      {
        sub_1883F8DD4(v159);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v173 = v188[0];
      v17 = v179;
      goto LABEL_44;
    }

    v129 = v128;
  }

  sub_1883FE1E0();
  i = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
  v181 = v52;

  while (1)
  {
    v95 = sub_1883FD92C(__src[0], __src[1], v87, v88, v89, v90, v91, v92, v93, v94, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, __src[0].n128_i64[0], __src[0].n128_i64[1], __src[1].n128_i64[0], __src[1].n128_i64[1], *&__src[2], __src[3].n128_i8[0]);
    if (v96)
    {
      goto LABEL_162;
    }

    if ((v95 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      v167 = *(v1 + 1216);

      goto LABEL_137;
    }

    if (v95 >= *(v7 + 16))
    {
      goto LABEL_143;
    }

    v97 = *(v52 + 16);
    v98 = *(v184 + 8 * v95);
    v99 = sub_188402E5C();
    v100 = NSObject._rawHashValue(seed:)(v99);

    sub_188410C10();
    if (v66)
    {
      goto LABEL_144;
    }

    v109 = v52 & v100;
    if (v8 >= i)
    {
      if (v109 < i || v8 < v109)
      {
        goto LABEL_103;
      }
    }

    else if (v109 < i && v8 < v109)
    {
      goto LABEL_103;
    }

    v112 = sub_1883FD92C(__src[0], __src[1], v101, v102, v103, v104, v105, v106, v107, v108, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, __src[0].n128_i64[0], __src[0].n128_i64[1], __src[1].n128_i64[0], __src[1].n128_i64[1], *&__src[2], __src[3].n128_i8[0]);
    if (v113)
    {
      v120 = 0;
    }

    else
    {
      sub_188404C1C(v112, v113, v114, v115, v116, v117, v118, v119, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
    }

    sub_1883F7F50(v120);
    if (!v123)
    {
      break;
    }

LABEL_102:
    v8 = *(v182 + 1080);
LABEL_103:
    _HashTable.BucketIterator.advance()();
    if (!__src[1].n128_u64[1])
    {
      sub_1884038D4();
      v17 = v179;
      v52 = v181;
      goto LABEL_111;
    }
  }

  if (!__OFADD__(v122 << v122, 64))
  {
    sub_18840AD78(v121);
    goto LABEL_102;
  }

  __break(1u);
LABEL_150:
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18841B948();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1884DB620()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[154];
  v3 = v1[153];
  v4 = v1[151];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  v7 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1884DB734()
{
  v166 = v0;
  v3 = *(v0 + 600);
  v4 = *(v0 + 608);
  v5 = *(v0 + 616);
  v6 = *(v0 + 624);
  v7 = *(v0 + 632);
  v8 = *(v0 + 640);
  v9 = *(v0 + 648);
  v10 = *(v0 + 656);
  v153 = *(v0 + 592);
  *(v0 + 664) = v153;
  LODWORD(v157) = v3;
  *(v0 + 672) = v3;
  *(v0 + 680) = v4;
  *(v0 + 688) = v5;
  *(v0 + 696) = v6;
  HIDWORD(v150) = v7;
  *(v0 + 704) = v7;
  v147 = v8;
  *(v0 + 712) = v8;
  *(v0 + 720) = v9;
  *(v0 + 728) = v10;
  if (qword_1EA90C9F0 != -1)
  {
    goto LABEL_145;
  }

LABEL_2:
  v151 = v0 + 1176;
  v152 = (v0 + 1168);
  v155 = (v0 + 1184);
  v11 = *(v0 + 1208);
  v12 = type metadata accessor for Logger();
  sub_1883F85F4(v12, qword_1EA90C9F8);
  sub_1883FAB38(v0 + 112, v0 + 272);

  sub_1883F697C(v0 + 664, v0 + 736);
  v13 = Logger.logObject.getter();
  LOBYTE(v14) = static os_log_type_t.info.getter();

  sub_1883FB300(v0 + 112);
  sub_1883F7768(v0 + 664);
  v149 = v6;
  v161 = v5;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 1208);
    v16 = sub_1883FE540();
    v164 = swift_slowAlloc();
    *v16 = 136315650;
    v17 = sub_1883FE43C();
    sub_1883FE340(v17, v18, &v164);
    sub_1883FE2FC();
    *(v16 + 4) = v1;
    v6 = 2080;
    *(v16 + 12) = 2080;
    memcpy(__dst, (v0 + 112), sizeof(__dst));
    sub_1883FAB38(v0 + 112, v0 + 432);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v0 + 352), __dst, 0x50uLL);
    v19 = sub_1883FB300(v0 + 352);
    sub_18840C150(v19, v20, &v164);
    sub_188404FC8();

    *(v16 + 14) = __dst;
    *(v16 + 22) = 2080;
    memcpy(__dst, (v0 + 664), 0x48uLL);
    sub_1883F697C(v0 + 664, v0 + 880);
    CKSyncEngine.FetchChangesOptions.description.getter();
    sub_188404258();
    memcpy((v0 + 808), __dst, 0x48uLL);
    v21 = sub_1883F7768(v0 + 808);
    sub_18840C150(v21, v22, &v164);
    sub_188404FC8();

    *(v16 + 24) = __dst;
    sub_1883F6560(&dword_1883EA000, v23, v14, "%s next fetch changes options for context %s: %s");
    swift_arrayDestroy();
    sub_1883FD784();
    sub_1883F82B8();
  }

  v24 = (v0 + 952);
  v159 = v0;
  v160 = v0 + 1008;
  v154 = v0 + 1064;
  v146 = *(*(v0 + 1208) + 128);
  v25 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v148 = MEMORY[0x1E69E7CC0];
  __dst[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
  sub_1883F4C9C(v25);
  sub_1884E00C4();
  v26 = 0;
  v162 = 0;
  while (1)
  {
    if (isUniquelyReferenced_nonNull_native == v26)
    {

      v6 = __dst[0].n128_u64[0];
      __dst[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
      v30 = v5;
      isUniquelyReferenced_nonNull_native = sub_1883F4C9C(v5);
      v31 = 0;
      v32 = v5 & 0xC000000000000001;
      v0 = v159;
      while (isUniquelyReferenced_nonNull_native != v31)
      {
        sub_1884E01E8();
        if (v32)
        {
          v33 = MEMORY[0x18CFD59D0](v31, v30);
        }

        else
        {
          v33 = *(v30 + 8 * v31 + 32);
        }

        v34 = v33;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_135;
        }

        *v155 = v33;
        v35 = swift_task_alloc();
        sub_1883FC7AC(v35);
        sub_1883FF670();

        if (v14)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = *(__dst[0].n128_u64[0] + 16);
          sub_18840C6A8();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_18840C6A8();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v31;
        v30 = v161;
      }

      sub_188472318(v6);
      v1 = sub_1884DD690(__dst[0].n128_u64[0]);
      v163 = v36;
      if (!*(v36 + 16))
      {
        v141 = v159[152];
        v142 = v159[149];

        sub_1883F7768((v159 + 83));

        *(v142 + 73) = 0u;
        v142[3] = 0u;
        v142[4] = 0u;
        v142[1] = 0u;
        v142[2] = 0u;
        *v142 = 0u;
        goto LABEL_127;
      }

      v152 = sub_1884DE588(0, v36);
      v37 = HIDWORD(v150);
      if (*(v149 + 16))
      {
        sub_188486310();
        v37 = HIDWORD(v150);
        if (v39)
        {
          v37 = *(*(v149 + 56) + 16 * v38);
        }
      }

      LODWORD(v151) = v37;
      v5 = MEMORY[0x1E69E7CC8];
      v164 = MEMORY[0x1E69E7CC0];
      v40 = v1;
LABEL_33:
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v153 = v5;
      if (v5 < 0)
      {
        v41 = v5;
      }

      v156 = v41;
      v157 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v157)
        {
          v6 = __CocoaSet.count.getter();
        }

        else
        {
          v6 = *(v153 + 16);
        }

        v42 = *(v0 + 1208);
        if (v6 >= sub_1884C6868() || (v43 = v163, !*(v163 + 16)))
        {
          v139 = *(v0 + 1216);

          goto LABEL_125;
        }

        if (!v40)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1885143C8(v163);
            v163 = v43;
          }

          v100 = *(v43 + 16);
          if (!v100)
          {
            goto LABEL_142;
          }

          sub_1883FF1E0(v100);
          *(v43 - 16) = v42;
          specialized ContiguousArray._endMutation()();
          goto LABEL_93;
        }

        v158 = v1;
        sub_18841105C();
        v44 = v42;
        NSObject._rawHashValue(seed:)(v0);
        sub_18840767C();
        if (v45)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_188410B90();
        v47 = v46;
        v49 = v48;

        __dst[0].n128_u64[0] = v1;
        __dst[0].n128_u64[1] = v0;
        __dst[1].n128_u64[0] = v6;
        __dst[1].n128_u64[1] = isUniquelyReferenced_nonNull_native;
        __dst[2].n128_u64[0] = v47;
        __dst[2].n128_u64[1] = v49;
        __dst[3].n128_u8[0] = 0;
        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_146;
        }

        while (1)
        {
          v50 = __dst[1];
          *v24 = __dst[0];
          v24[1] = v50;
          v24[2] = __dst[2];
          v24[3].n128_u8[0] = __dst[3].n128_u8[0];
          v51 = _HashTable.BucketIterator.currentValue.getter();
          if ((v52 & 1) == 0 && !v51)
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          if (!__dst[1].n128_u64[1])
          {
            goto LABEL_146;
          }
        }

        if (!v159[122])
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          return;
        }

        v6 = __dst[1].n128_i64[0];

        v53 = *(v163 + 16);
        v0 = v159;
        sub_1883FE844();
        v54 = sub_188413F40();
        if (!v55)
        {
          if (v53 <= MEMORY[0x18CFD4CC0](v54))
          {
            goto LABEL_87;
          }

LABEL_52:
          if ((swift_isUniquelyReferenced_native() & 1) == 0)
          {
            if (!v1)
            {
              goto LABEL_152;
            }

            _HashTable.copy()();
            sub_188404FC8();

            v1 = v53;
          }

          if (!v1)
          {
            goto LABEL_151;
          }

          v56 = (v1 + 16);
          isUniquelyReferenced_nonNull_native = v1 + 32;
          sub_1883FE1E0();
          v57 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          __dst[0].n128_u64[0] = v1 + 16;
          __dst[0].n128_u64[1] = v1 + 32;
          __dst[1].n128_u64[0] = v6;
          __dst[1].n128_u64[1] = v57;
          __dst[2].n128_u64[0] = v58;
          __dst[2].n128_u64[1] = v59;
          __dst[3].n128_u8[0] = 0;
          _HashTable.BucketIterator.advance()();
          if (!__dst[1].n128_u64[1])
          {
            sub_1884038D4();

LABEL_99:

            sub_1883FF02C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_1885143C8(v43);
              v163 = v43;
            }

            v0 = v159;
            v106 = *(v43 + 16);
            if (!v106)
            {
              goto LABEL_143;
            }

            sub_1883FF1E0(v106);
            *(v43 - 16) = __dst;
            specialized ContiguousArray._endMutation()();
            goto LABEL_103;
          }

          sub_1883FE1E0();
          v60 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
          v61 = v1;
          v62 = v60;
          v158 = v61;

          while (2)
          {
            v71 = sub_1883FF44C(__dst[0], __dst[1], v63, v64, v65, v66, v67, v68, v69, v70, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, __dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0], __dst[1].n128_i64[1], *&__dst[2], __dst[3].n128_i8[0]);
            if (v72)
            {
              goto LABEL_150;
            }

            if ((v71 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            if (v71 >= *(v43 + 16))
            {
              goto LABEL_131;
            }

            v73 = *v56;
            v74 = *(v161 + 8 * v71);
            v75 = sub_188402E5C();
            v76 = NSObject._rawHashValue(seed:)(v75);

            sub_188410C10();
            if (v45)
            {
              goto LABEL_132;
            }

            v85 = v5 & v76;
            if (v6 >= v62)
            {
              if (v85 >= v62 && v6 >= v85)
              {
LABEL_73:
                v88 = sub_1883FF44C(__dst[0], __dst[1], v77, v78, v79, v80, v81, v82, v83, v84, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, __dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0], __dst[1].n128_i64[1], *&__dst[2], __dst[3].n128_i8[0]);
                if (v89)
                {
                  v96 = 0;
                }

                else
                {
                  sub_188404C1C(v88, v89, v90, v91, v92, v93, v94, v95, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v156, v157, v158);
                }

                sub_1883F7F50(v96);
                if (!v99)
                {
                  if (__OFADD__(v98 << v98, 64))
                  {
                    __break(1u);
                    goto LABEL_138;
                  }

                  sub_18840AD78(v97);
                }

                v6 = v159[135];
              }
            }

            else if (v85 >= v62 || v6 >= v85)
            {
              goto LABEL_73;
            }

            _HashTable.BucketIterator.advance()();
            if (!__dst[1].n128_u64[1])
            {
              sub_1884038D4();
              v1 = v158;
              goto LABEL_99;
            }

            continue;
          }
        }

        if (v53)
        {
          goto LABEL_52;
        }

LABEL_87:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1885143C8(v163);
          v163 = v43;
        }

        v101 = *(v43 + 16);
        if (!v101)
        {
          goto LABEL_144;
        }

        sub_1883FF1E0(v101);
        *(v43 - 16) = v53;
        specialized ContiguousArray._endMutation()();
        sub_1883FE844();
        v102 = *(v163 + 16);
        v103 = *(v5 + 24) & 0x3FLL;
        if (!v103 && v102 < 0x10)
        {

          v1 = 0;
LABEL_93:
          v40 = 0;
          goto LABEL_104;
        }

        v104 = MEMORY[0x18CFD4CE0](v102);
        if (v103 <= v104)
        {
          v105 = v104;
        }

        else
        {
          v105 = v103;
        }

        v1 = sub_1884DE9B0(v163, v105, 0, v103, sub_1884DEBA8);

LABEL_103:
        v40 = v1;
LABEL_104:
        v107 = *(v0 + 1200);
        v108 = sub_1884D4574();
        if (!v108)
        {
          v110 = HIDWORD(v150);
          v111 = v147;
          if (*(v149 + 16))
          {
            sub_188486310();
            v110 = HIDWORD(v150);
            v111 = v147;
            if (v113)
            {
              v114 = (*(v149 + 56) + 16 * v112);
              v110 = *v114;
              v111 = *(v114 + 1);
            }
          }

          if (v151 != v110)
          {
            goto LABEL_136;
          }

          v158 = v1;
          v115 = [*(v146 + 16) fetchChangesZoneConfigurationForZoneID_];
          [v115 setResultsLimit_];
          v116 = v6;
          v117 = v115;
          v118 = v153;
          if (v157)
          {
            v119 = __CocoaSet.count.getter();
            if (__OFADD__(v119, 1))
            {
              goto LABEL_148;
            }

            v118 = sub_1885112B4(v156, v119 + 1);
          }

          v161 = v117;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __dst[0].n128_u64[0] = v118;
          v120 = v116;
          sub_188486310();
          v121 = *(v118 + 16);
          sub_1883FE314();
          v126 = v124 + v125;
          if (__OFADD__(v124, v125))
          {
            goto LABEL_147;
          }

          v127 = v122;
          v128 = v123;
          sub_18844E6FC(&unk_1EA90E4F0, &qword_1886FB488);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v126))
          {
            v129 = v120;
            v5 = __dst[0].n128_u64[0];
            sub_188486310();
            v0 = v159;
            if ((v128 & 1) != (v131 & 1))
            {
LABEL_138:
              sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              return;
            }

            v127 = v130;
            if (v128)
            {
LABEL_120:
              v135 = *(v5 + 56);
              v136 = *(v135 + 8 * v127);
              *(v135 + 8 * v127) = v161;
              v134 = v161;

              goto LABEL_121;
            }
          }

          else
          {
            v5 = __dst[0].n128_u64[0];
            v0 = v159;
            v129 = v120;
            if (v128)
            {
              goto LABEL_120;
            }
          }

          *(v5 + 8 * (v127 >> 6) + 64) |= 1 << v127;
          *(*(v5 + 48) + 8 * v127) = v129;
          *(*(v5 + 56) + 8 * v127) = v161;
          v132 = *(v5 + 16);
          v45 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v45)
          {
            goto LABEL_149;
          }

          v134 = v161;
          *(v5 + 16) = v133;
LABEL_121:
          v137 = v129;
          MEMORY[0x18CFD52F0]();
          v138 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v138 >> 1)
          {
            sub_1883F8DD4(v138);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v148 = v164;
          v1 = v158;
          goto LABEL_33;
        }

        v109 = v108;
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      sub_1883F7480();
      goto LABEL_2;
    }

    if (v158)
    {
      v27 = MEMORY[0x18CFD59D0](v26, v25);
    }

    else
    {
      if (v26 >= *(v6 + 16))
      {
        goto LABEL_134;
      }

      v27 = *(v25 + 8 * v26 + 32);
    }

    v0 = v27;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v157)
    {
      if (v157 != 1 || (v28 = sub_1884E0298(), sub_188402ED8(v28), sub_1883FDBF4(), sub_1884E0268(), sub_1883FF670(), , , (v14 & 1) != 0))
      {
LABEL_13:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = *(__dst[0].n128_u64[0] + 16);
        sub_18840C6A8();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_18840C6A8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_16;
      }
    }

    else
    {
      v29 = sub_1884E0298();
      sub_188402ED8(v29);
      sub_1883FDBF4();
      sub_1884E0268();
      sub_1883FF670();

      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    ++v26;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  v144 = *(v0 + 1216);

LABEL_125:
  v140 = *(v0 + 1192);

  memcpy(v140, (v0 + 664), 0x48uLL);
  *(v140 + 72) = v148;
  *(v140 + 80) = v153;
  *(v140 + 88) = v151;

LABEL_127:
  sub_1883F816C();

  v143();
}

uint64_t sub_1884DC3C0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
LABEL_4:
  while (v5)
  {
LABEL_9:
    sub_1883FE0AC();
    v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    v14 = *v1;
    v15 = v1[1];
    v16 = *(v15 + 16);
    if (!*v1)
    {
      v22 = (v15 + 40);
      v23 = v16 + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        result = *(v22 - 1);
        if (result != v13 || *v22 != v12)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v22 = v24;
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      v21 = 0;
LABEL_21:
      sub_1884DE5AC(v13, v12, v21);
      goto LABEL_22;
    }

    v17 = v11[1];

    sub_1884DED58(v13, v12, v15 + 32, v16, (v14 + 16));
    v19 = v18;
    v21 = v20;

    if (v19)
    {
      goto LABEL_21;
    }

LABEL_22:
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

void sub_1884DC550(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v36 = a4 >> 1;
LABEL_2:
  while (a3 != v36)
  {
    if (a3 >= v36)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v7 = *(a2 + 8 * a3++);
    v9 = *v5;
    v8 = v5[1];
    v10 = (v8 + 32);
    v11 = *(v8 + 16);
    if (!*v5)
    {
      v21 = v7;
      while (v11)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v22 = *v10++;
        v23 = v22;
        v24 = static NSObject.== infix(_:_:)();

        --v11;
        if (v24)
        {

          goto LABEL_2;
        }
      }

      goto LABEL_7;
    }

    v12 = v7;

    sub_1884DEE84(v12, v10, v11, (v9 + 16));
    v14 = v13;

    if (v14)
    {
LABEL_7:
      v15 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(v5[1] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = v5[1];
      v18 = *(v17 + 16);
      if (v9)
      {
        swift_beginAccess();
        if (MEMORY[0x18CFD4CB0](*(v9 + 16) & 0x3FLL) >= v18)
        {
          v28 = *v5;
          isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
          v30 = *v5;
          if ((isUniquelyReferenced_native & 1) == 0)
          {
            if (!v30)
            {
              goto LABEL_34;
            }

            v31 = *v5;
            v32 = _HashTable.copy()();

            *v5 = v32;
            v30 = v32;
          }

          if (!v30)
          {
            goto LABEL_33;
          }

          v33 = *(v30 + 16);
          v34 = *(v17 + 16) + ~(*(v30 + 24) >> 6);
          _HashTable.UnsafeHandle.subscript.setter();
          goto LABEL_31;
        }

        v19 = *(v9 + 24) & 0x3FLL;
        if (v18 <= 0xF && v19 == 0)
        {

          *v5 = 0;
        }

        else
        {
LABEL_22:
          v25 = MEMORY[0x18CFD4CE0](v18);
          if (v19 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v19;
          }

          v27 = sub_1884DE9B0(v17, v26, 0, v19, sub_1884DEBA8);

          *v5 = v27;
        }
      }

      else
      {
        if (v18 > 0xF)
        {
          v19 = 0;
          goto LABEL_22;
        }

LABEL_31:
      }
    }

    else
    {
    }
  }
}

void sub_1884DC7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1883F4C9C(a1);
  v5 = 0;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1 & 0xC000000000000001;
  v34 = a1;
  v35 = v4;
  v36 = a1 + 32;
LABEL_2:
  while (v5 != v4)
  {
    if (v38)
    {
      v6 = MEMORY[0x18CFD59D0](v5, v34);
    }

    else
    {
      if (v5 >= *(v37 + 16))
      {
        goto LABEL_37;
      }

      v6 = *(v36 + 8 * v5);
    }

    v7 = v6;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v10 = *v2;
    v9 = v2[1];
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    if (*v2)
    {
      v13 = *v2;

      sub_1884DEE84(v7, v11, v12, (v10 + 16));
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      while (v12)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v16 = *v11++;
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        --v12;
        if (v18)
        {

          v4 = v35;
          goto LABEL_2;
        }
      }

      v4 = v35;
    }

    v7 = v7;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(v2[1] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 = v2[1];
    v21 = *(v20 + 16);
    if (v10)
    {
      swift_beginAccess();
      if (MEMORY[0x18CFD4CB0](*(v10 + 16) & 0x3FLL) >= v21)
      {
        v27 = *v2;
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v29 = *v2;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v29)
          {
            goto LABEL_39;
          }

          v30 = *v2;
          v31 = _HashTable.copy()();

          *v2 = v31;
          v29 = v31;
          v4 = v35;
        }

        if (!v29)
        {
          goto LABEL_38;
        }

        v32 = *(v29 + 16);
        v33 = *(v20 + 16) + ~(*(v29 + 24) >> 6);
        _HashTable.UnsafeHandle.subscript.setter();
LABEL_33:
      }

      else
      {
        v22 = *(v10 + 24) & 0x3FLL;
        if (v21 > 0xF || v22 != 0)
        {
          goto LABEL_24;
        }

        *v2 = 0;
      }
    }

    else
    {
      if (v21 <= 0xF)
      {
        goto LABEL_33;
      }

      v22 = 0;
LABEL_24:
      v24 = MEMORY[0x18CFD4CE0](v21);
      if (v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      v26 = sub_1884DE9B0(v20, v25, 0, v22, sub_1884DEBA8);

      *v2 = v26;
    }
  }
}

void sub_1884DCAB4(void *a1)
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  sub_1883FA550();
  sub_1884C7AD8(__src);

  if (!__src[1])
  {
    memcpy(v74, __src, sizeof(v74));
    sub_188442B84(v74, &unk_1EA90E4D0, &unk_1886FB460);
LABEL_15:

    goto LABEL_16;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v2 = __dst[5];
  v1 = __dst[6];
  v3 = __dst[9];
  memcpy(v74, __src, sizeof(v74));
  v4 = __dst[11];

  v5 = v4;
  sub_188442B84(v74, &unk_1EA90E4D0, &unk_1886FB460);
  v6 = [a1 recordID];
  v7 = [v6 zoneID];

  if (*(v3 + 16) && (sub_188486310(), (v9 & 1) != 0))
  {
    v10 = (*(v3 + 56) + 56 * v8);
    v11 = v10[1];
    v12 = v10[3];
    v2 = v10[5];
    v1 = v10[6];
  }

  else
  {
  }

  sub_188442B84(__dst, &unk_1EA90E4D0, &unk_1886FB460);

  if (!v1)
  {
    goto LABEL_15;
  }

  if (v2 == 0xD000000000000021 && 0x8000000188702330 == v1)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v15 = [a1 valueStore];
  v16 = [v15 allKeys];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];
  v20 = *(v17 + 16);
  v21 = v17 + 40;
  v70 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v22 = (v21 + 16 * v18);
  while (v20 != v18)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }

    v24 = *(v22 - 1);
    v23 = *v22;

    v25 = [a1 values];
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v26 + 16) && (v27 = sub_188420F2C(v24, v23), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      swift_unknownObjectRetain();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x18CFD52F0]();
        if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v18;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = __src[0];
        v21 = v17 + 40;
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v22 += 2;
    ++v18;
  }

  v30 = sub_1883F4C9C(v19);
  for (i = 0; v30 != i; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x18CFD59D0](i, v19);
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v32 = *(v19 + 8 * i + 32);
    }

    v33 = v32;
    if (__OFADD__(i, 1))
    {
      goto LABEL_72;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (swift_weakLoadStrong())
    {
      sub_1883FA550();
      v35 = v34;

      v36 = *(v35 + 128);

      sub_18844E6FC(&unk_1EA90E4E0, &qword_1886F86B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1886F7400;
      *(inited + 32) = v33;
      v38 = v33;
      CKSyncEngine.State.add(pendingAssetSyncs:)(inited);

      swift_setDeallocating();
      sub_1884E3A78();
    }

    else
    {
    }
  }

  v39 = [a1 encryptedValueStore];
  v40 = [v39 allKeys];

  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = 0;
  __src[0] = MEMORY[0x1E69E7CC0];
  v43 = *(v41 + 16);
  v44 = v41 + 40;
LABEL_46:
  v45 = (v44 + 16 * v42);
  while (v43 != v42)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_74;
    }

    v46 = *(v45 - 1);
    v47 = *v45;

    v48 = [a1 encryptedValues];
    v49 = MEMORY[0x18CFD5010](v46, v47);
    v50 = [v48 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v50)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x18CFD52F0]();
        if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v42;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v70 = __src[0];
        v44 = v41 + 40;
        goto LABEL_46;
      }

      swift_unknownObjectRelease();
    }

    v45 += 2;
    ++v42;
  }

  v51 = v70;
  v52 = sub_1883F4C9C(v70);
  v53 = 0;
  v54 = v70 & 0xC000000000000001;
  v71 = v52;
  while (v52 != v53)
  {
    if (v54)
    {
      v55 = MEMORY[0x18CFD59D0](v53, v51);
    }

    else
    {
      if (v53 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v55 = *(v51 + 8 * v53 + 32);
    }

    v56 = v55;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_75;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1883FDE5C(v57, qword_1EA90C9F8);

    v58 = v56;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      __src[0] = v63;
      *v61 = 136315394;
      v64 = sub_1883FE43C();
      v66 = sub_1883FE340(v64, v65, __src);

      *(v61 + 4) = v66;
      v51 = v70;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v58;
      *v62 = v58;
      v67 = v58;
      _os_log_impl(&dword_1883EA000, v59, v60, "%s found CKAsset in encryptedValueStore, but we're not attempting to fetch it. %@", v61, 0x16u);
      sub_188442B84(v62, &qword_1EA90DC70, &unk_1886FA190);
      v68 = v62;
      v52 = v71;
      MEMORY[0x18CFD7E80](v68, -1, -1);
      sub_1883FE944(v63);
      MEMORY[0x18CFD7E80](v63, -1, -1);
      v69 = v61;
      v54 = v70 & 0xC000000000000001;
      MEMORY[0x18CFD7E80](v69, -1, -1);
    }

    else
    {
    }

    ++v53;
  }

LABEL_16:
}

uint64_t sub_1884DD410(void *a1)
{
  v6 = sub_1884DE34C();
  v7 = sub_1884DE354(&v31, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v31;
  if (v31 != v8)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = sub_18842A7A4(0, v31, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_35;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_36;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    while (1)
    {
      sub_18851087C(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v32 = v7;
      v33 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    v8 = sub_18842A7A4(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v2 = v18;

    v19 = v2 >> 1;
    while (1)
    {
LABEL_14:
      if (v1 == v19)
      {
        swift_unknownObjectRelease();

        return v32;
      }

      if (v1 >= v19)
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = (v9 + 16 * v1);
      v3 = *v20;
      v2 = v20[1];
      ++v1;
      a1 = v32;
      v21 = v33;
      v22 = *(v33 + 16);
      if (!v32)
      {
        break;
      }

      v23 = v20[1];

      sub_1884DED58(v3, v2, v21 + 32, v22, a1 + 2);
      v25 = v24;
      v4 = v26;

      if (v25)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v27 = (v33 + 40);
    a1 = (v22 + 1);
    while (1)
    {
      a1 = (a1 - 1);
      if (!a1)
      {
        break;
      }

      v4 = (v27 + 2);
      if (*(v27 - 1) != v3 || *v27 != v2)
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v27 = v4;
        if ((v29 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v4 = 0;
LABEL_29:
    a1 = &v32;
    sub_1884DE5AC(v3, v2, v4);
    goto LABEL_30;
  }

  return v7;
}

uint64_t sub_1884DD690(unint64_t a1)
{
  v5 = sub_1884DE34C();
  v6 = sub_1884DE41C(&v32, a1, 0, 1, v5);
  v7 = sub_1883F4C9C(a1);
  v8 = v32;
  if (v32 == v7)
  {
    sub_18844C2F0(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_1884DFCA0(0, a1);
  sub_1884DFCA0(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = _CocoaArrayWrapper.subscript.getter();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1884DFCA0(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_18851092C(v12, v13, i, v14);
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_1884DC550(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1884DD9AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v36 = v6;
    v7 = a4[2];
    if (!v7)
    {
      break;
    }

    v31 = 0;
    v6 = 0;
    v8 = 0;
    v33 = a4 + 4;
    v32 = a4;
    while (v6 < v7)
    {
      v9 = *(a2 + 16);
      v10 = v33[v6];
      if (!a1)
      {
        v13 = (a2 + 32);
        while (v9)
        {
          sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
          v14 = *v13++;
          v15 = v14;
          v16 = static NSObject.== infix(_:_:)();

          --v9;
          if (v16)
          {
            goto LABEL_11;
          }
        }

LABEL_7:

        goto LABEL_32;
      }

      sub_1884DEE84(v10, a2 + 32, v9, (a1 + 16));
      v12 = v11;

      if (v12)
      {
        goto LABEL_7;
      }

LABEL_11:
      a4 = v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = *(v36 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 = *(v36 + 16);
      if (!v8)
      {
        if (v18 > 0xF)
        {
          v19 = 0;
LABEL_18:
          v20 = MEMORY[0x18CFD4CE0](v18);
          if (v19 <= v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = v19;
          }

          v22 = sub_1884DE9B0(v36, v21, 0, v19, sub_1884DEBA8);

          v31 = v22;
          v8 = v22;
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      swift_beginAccess();
      if (MEMORY[0x18CFD4CB0](*(v8 + 16) & 0x3FLL) < v18)
      {
        v19 = *(v8 + 24) & 0x3FLL;
        if (v18 > 0xF || v19)
        {
          goto LABEL_18;
        }

        v31 = 0;
LABEL_31:
        v8 = 0;
        goto LABEL_32;
      }

      v8 = v31;
      result = swift_isUniquelyReferenced_native();
      if ((result & 1) == 0)
      {
        if (!v31)
        {
          goto LABEL_42;
        }

        v24 = _HashTable.copy()();

        v8 = v24;
      }

      if (!v8)
      {
        goto LABEL_41;
      }

      v25 = *(v8 + 16);

      NSObject._rawHashValue(seed:)(v25);
      if (__OFSUB__(1 << *(v8 + 16), 1))
      {
        goto LABEL_37;
      }

      if (_HashTable.UnsafeHandle._startIterator(bucket:)())
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
        }
      }

      v26 = *(v36 + 16);
      _HashTable.BucketIterator.currentValue.setter();

      v31 = v8;
LABEL_32:
      ++v6;
      a4 = v32;
      v7 = v32[2];
      if (v6 == v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      v28 = v27;
      v6 = sub_1883F5E14(v27, 0);
      sub_188426A14(v6 + 32, v28, MEMORY[0x1E69E7CC0]);
      v30 = v29;

      if (v30 != v28)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1884DDD40(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 328) = a3;
  *(v4 + 336) = a4;
  *(v4 + 320) = a1;
  *(v4 + 344) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1884DDD70, 0, 0);
}

uint64_t sub_1884DDD70()
{
  sub_1883FB4AC();
  if (*(v0 + 344))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 328);
    v3 = *(v0 + 344);
    ObjectType = swift_getObjectType();
    memcpy((v0 + 96), v2, 0x50uLL);
    v5 = *(v1 + 24);
    v13 = (v5 + *v5);
    v6 = v5[1];
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 360) = v7;
    *v7 = v8;
    v7[1] = sub_1884DDF0C;
    v9 = *(v0 + 336);

    return v13(v0 + 248, v0 + 96, v9, ObjectType, v1);
  }

  else
  {
    v11 = *(v0 + 328);
    memcpy(*(v0 + 320), (v11 + 8), 0x48uLL);
    sub_1883FAB38(v11, v0 + 16);
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_1884DDF0C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 360);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884DDFF4()
{
  sub_1883F7120();
  v1 = v0[40];
  memcpy(v0 + 22, v0 + 31, 0x48uLL);
  memcpy(v1, v0 + 22, 0x48uLL);
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884DE068()
{
  sub_1883F78E0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_1883FAED8(v4);

  return sub_1884D59D0(v6, v7, v8);
}

uint64_t sub_1884DE0FC()
{
  sub_1883FB4AC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1883F78EC();
  v10 = *(v9 + 16);
  v11 = *v0;
  sub_1883F7110();
  *v12 = v11;

  v13 = *(v11 + 8);

  return v13(v8, v6, v4, v2);
}

uint64_t sub_1884DE258()
{
  v1 = v0;
  v2 = *v0;
  sub_188486310();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v8 = *(*v1 + 24);
  sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v5);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  type metadata accessor for CKError(0);
  sub_18841A9C8();
  _NativeDictionary._delete(at:)();
  *v1 = v11;
  return v9;
}

uint64_t sub_1884DE354(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x18CFD4CE0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = MEMORY[0x18CFD4CF0]();
    sub_1884DF300(a2 + 32, v8, (v13 + 16));
    *a1 = v14;
  }

  else
  {
    v13 = 0;
    if (v8 >= 2)
    {
      *a1 = sub_1884DEFC0(a2 + 32, v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  return v13;
}

uint64_t sub_1884DE41C(uint64_t *a1, int64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1883F4C9C(a2);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x18CFD4CE0](v10);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x18CFD4CF0]();
    sub_1884DF280(&v18, a2, (v16 + 16));
    *a1 = v18;
  }

  else
  {
    if (sub_1883F4C9C(a2) >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v15 = sub_1884DFAF8(a2, sub_1884DFEA4);
      }

      else
      {
        v15 = sub_1884DF0FC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v15 = sub_1883F4C9C(a2);
    }

    v16 = 0;
    *a1 = v15;
  }

  return v16;
}

uint64_t sub_1884DE528(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

unint64_t sub_1884DE588(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_18840489C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_18840489C((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x18CFD4CB0](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x18CFD4CE0](v13 + 1);
    return sub_1884DE964(v18, v16, sub_1884DEA80);
  }

  result = sub_1884DE8A8();
  if (*v4)
  {
    return sub_1884DE8FC((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE724(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v6 = *(v2[1] + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v8 = *v2;
  v9 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x18CFD4CB0](*(v8 + 16) & 0x3FLL) < v9)
    {
      v10 = *(v8 + 24) & 0x3FLL;
      if (v9 <= 0xF && v10 == 0)
      {

        *v3 = 0;
        return result;
      }

      goto LABEL_11;
    }

    result = sub_1884DE8A8();
    if (*v3)
    {
      return sub_1884DE8FC((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v9 > 0xF)
  {
    v10 = 0;
LABEL_11:
    v12 = MEMORY[0x18CFD4CE0](v9);
    return sub_1884DE964(v12, v10, sub_1884DEBA8);
  }

  return result;
}

void *sub_1884DE858(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1884DE8A8()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v3 = *v0;
        _HashTable.copy()();
        sub_18842D4B4();

        *v0 = v1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1884DE8FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_1884DE964(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v4 = a2;
  v5 = v3[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v6 = sub_1884DE9B0(v3[1], a2, 0, v4, a3);
  v7 = *v3;

  *v3 = v6;
  return result;
}

uint64_t sub_1884DE9B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x18CFD4CE0](v8);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x18CFD4CF0]();
    sub_1884DEA38(a1, v11 + 16, v11 + 32, a5);
  }

  return v11;
}

Swift::Int sub_1884DEA80(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v10)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1884DEBA8(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        v7 = *(v9 + 8 * v5);
        result = NSObject._rawHashValue(seed:)(v6);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1884DECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = *(a2 + 8 * i);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_1884DED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

Swift::Int sub_1884DEE84(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v7 = v11;
    if ((v12 & 1) == 0)
    {
      do
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v8 = *(a2 + 8 * v7);
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v10 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1884DEFC0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_18840489C(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; i != v2; ++i)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = (a1 + 16 * i);
    v7 = *v6;
    v8 = v6[1];
    v9 = v15 + 5;
    v10 = v15[2] + 1;
    while (--v10)
    {
      if (v7 != *(v9 - 1) || v8 != *v9)
      {
        v9 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return i;
    }

    v12 = v15[2];
    v13 = v15[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_18840489C((v13 > 1), v12 + 1, 1);
    }

    v15[2] = v12 + 1;
    v14 = &v15[2 * v12];
    v14[4] = v7;
    v14[5] = v8;
  }

  return v2;
}

uint64_t sub_1884DF0FC(uint64_t a1, uint64_t a2)
{
  v8 = sub_18844C2F0(MEMORY[0x1E69E7CC0]);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  while (1)
  {
    if (a2 == v5)
    {
      goto LABEL_8;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * v5);
    if (sub_1884DF1E4(v6, v8))
    {

      a2 = v5;
LABEL_8:

      return a2;
    }

    ++v5;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v7 = *(v8 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

BOOL sub_1884DF1E4(uint64_t a1, uint64_t a2)
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

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = *v3++;
    v7 = v6;
    v8 = static NSObject.== infix(_:_:)();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1884DF280(void *a1, int64_t a2, Swift::Int *a3)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v4 = sub_1884DFB64(a2, sub_1884DFF04);
  }

  else
  {
    v4 = sub_1884DF4B4((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v5;
  return v4 & 1;
}

Swift::Int sub_1884DF300(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = v5 + 1;
    v6 = (v4 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v3;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v10 = _HashTable.BucketIterator.currentValue.getter();
      if (v11)
      {
        break;
      }

      v12 = (v4 + 16 * v10);
      v13 = *v12 == *v6 && v12[1] == v6[1];
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    _HashTable.BucketIterator.currentValue.setter();
    result = 1;
    ++v5;
    v3 = a3;
    if (v16 != a2)
    {
      continue;
    }

    return result;
  }
}

Swift::Int sub_1884DF4B4(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = *v3;
    v7 = *(v4 + 8 * v5);
    result = NSObject._rawHashValue(seed:)(v6);
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v17 = v5 + 1;
    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
        break;
      }

      v10 = *(v4 + 8 * v8);
      v11 = *(v4 + 8 * v5);
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      v12 = v10;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    ++v5;
    v3 = a3;
    if (v17 != v16)
    {
      continue;
    }

    return 1;
  }
}

void sub_1884DF66C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v14 = a2;
      v15 = __OFSUB__(v8, a2);
      v16 = v8 - a2;
      if (v15)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v16 >= MEMORY[0x18CFD4CB0](*a4 & 0x3F) / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v29 = _HashTable.BucketIterator.currentValue.getter();
        if ((v30 & 1) == 0 && v29 >= v14)
        {
          if (__OFSUB__(v29, v4))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_1884DE528(v14, a3);
      v18 = v17;
      v20 = v19;
      v22 = v21 >> 1;
      while (v20 != v22)
      {
        if (v20 >= v22)
        {
          goto LABEL_51;
        }

        v23 = *a4;
        v24 = *(v18 + 8 * v20);
        NSObject._rawHashValue(seed:)(v23);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v25 = _HashTable.BucketIterator.currentValue.getter();
            if ((v26 & 1) == 0 && v25 == v14)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v14, v4))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v15 = __OFADD__(v14++, 1);
        if (v15)
        {
          goto LABEL_54;
        }

        ++v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x18CFD4CB0](*a4 & 0x3F) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v10 = *a4;
          v11 = *(a3 + 32 + 8 * i);
          NSObject._rawHashValue(seed:)(v10);
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v12 = _HashTable.BucketIterator.currentValue.getter();
              if ((v13 & 1) == 0 && v12 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v27 = _HashTable.BucketIterator.currentValue.getter();
      if ((v28 & 1) == 0 && v27 < a1)
      {
        if (__OFADD__(v27, v4))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v31 = a4[1];
      if (__OFSUB__(v31 >> 6, v4))
      {
        goto LABEL_59;
      }

      v32 = 1 << *a4;
      v15 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v15)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v34 = (v33 & (((v31 >> 6) - v4) >> 63)) + (v31 >> 6) - v4;
      if (v34 < v33)
      {
        v33 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v34 - v33) << 6);
    }
  }
}

void sub_1884DFA94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x18CFD5010]();

  [a3 setApplicationBundleIdentifierOverrideForNetworkAttribution_];
}

void *sub_1884DFAF8(int64_t a1, void *(*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1884DFBE0(a1);
  v5 = v4[2];

  result = a2(&v7, v4 + 4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1884DFB64(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1884DFBE0(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_1884DFBE0(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1885109F8(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1884DFCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1884DFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1884DEE84(v8, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1884DECAC(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

id sub_1884DFDA8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    a1 = a4;
  }

  return a1;
}

void sub_1884DFE14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    a1 = a4;
  }
}

uint64_t sub_1884DFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1884DF0FC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_1884DFED0@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1884DF4B4(a1, a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
    *(a4 + 8) = v7;
  }

  return result;
}

uint64_t sub_1884DFF20()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 96);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1884061E0;

  return sub_1884DDD40(v5, v3, v0 + 16, v6);
}

void sub_1884E0020()
{

  _os_log_impl(v1, v0, v3, v2, v4, 0xCu);
}

void sub_1884E004C(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1304);
  *(v2 + 1648) = *(v1 + 8 * a1 + 32);
  v4 = *(v3 + 216);
}

uint64_t sub_1884E0068(uint64_t a1, void *a2)
{
  v6 = v2[149];
  v2[197] = v6;
  v7 = v2[150];
  v2[198] = v7;

  return sub_1884DD9AC(v6, v7, a1, a2);
}

uint64_t sub_1884E00A8()
{
  v2 = *(v0 + 1032);
  v3 = *(v0 + 960);
}

uint64_t sub_1884E00C4()
{
}

void sub_1884E0168(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1884E0188()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void *sub_1884E01A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 1856);

  return memcpy(&a9, (v9 + 24), 0x48uLL);
}

void *sub_1884E01C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *(v10 + 1856);

  return memcpy(&__dst, (v10 + 24), 0x48uLL);
}

uint64_t sub_1884E01E8()
{

  return sub_188426C84(v2, v1 == 0, v0);
}

void sub_1884E0208()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(38);
}

void *sub_1884E0228(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{
  v14 = *(v11 + 760);

  return memcpy(&__dst, (v12 + 16), 0x50uLL);
}

uint64_t sub_1884E0248()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
}

uint64_t sub_1884E0268()
{

  return sub_18850DE28();
}

uint64_t sub_1884E0280(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1883FE340(a1, a2, va);
}

uint64_t sub_1884E0298()
{
  *v0 = v1;

  return swift_task_alloc();
}

void sub_1884E02B0()
{

  sub_18850BFF4(0, v0);
}

uint64_t sub_1884E02C8()
{
}

uint64_t sub_1884E02E0()
{

  return swift_allocObject();
}

uint64_t sub_1884E02F8()
{
  v12 = *MEMORY[0x1E69E9840];
  type metadata accessor for SyncEngine();
  v0 = sub_1883F8A48();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  inited = swift_initStackObject();
  v2 = sub_1883F7504(inited, xmmword_1886F8960);
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = v4;
  v2[3].n128_u64[0] = 0x7373416863746546;
  v2[3].n128_u64[1] = 0xEA00000000007465;
  v5 = !v0;
  if (v0)
  {
    v6 = 0x6974616D6F747541;
  }

  else
  {
    v6 = 0x6C61756E614DLL;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE900000000000063;
  }

  sub_1883F93D4();
  sub_1883F8CAC();
  v8[2] = 3;
  v8[8] = v6;
  v8[9] = v7;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  v9 = BidirectionalCollection<>.joined(separator:)();

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1884E04B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v9 = sub_1883F8AE4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_1884C2128(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1883F9014();
  v17 = sub_1883F971C(v15, v16, v14);

  if (v17 == 1)
  {
    sub_188442B84(v13, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      String.utf8CString.getter();

      if (v22 | v20)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v20;
        v27[3] = v22;
      }

      else
      {
        v23 = 0;
      }

      sub_18840ADB4(v23);
      v24 = swift_task_create();

      sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);

      return v24;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);
  if (v22 | v20)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v20;
    v27[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_1884E0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v9 = sub_1883F8AE4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_1884C2128(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1883F9014();
  v17 = sub_1883F971C(v15, v16, v14);

  if (v17 == 1)
  {
    sub_188442B84(v13, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      String.utf8CString.getter();
      sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);

      if (v22 | v20)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v20;
        v27[3] = v22;
      }

      else
      {
        v23 = 0;
      }

      sub_18840ADB4(v23);
      v24 = swift_task_create();

      sub_188442B84(v26[0], &qword_1EA90E6A0, &qword_1886F7030);

      return v24;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188442B84(a3, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
  if (v22 | v20)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v20;
    v27[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_1884E0B38()
{
  sub_1883FE320();
  v0 = sub_18844E6FC(&qword_1EA90D380, &qword_1886F7800);
  sub_1883FF784(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0C2C()
{
  sub_1883FE320();
  v0 = sub_18844E6FC(&qword_1EA90E368, &qword_1886FAB68);
  sub_1883FF784(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0CD4()
{
  sub_1883FE320();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883FF784(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1884E0D10(uint64_t a1)
{
  result = sub_1884E482C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1884E486C(result, v3, 0, a1);
  }
}

uint64_t sub_1884E0D98()
{
  sub_1883F816C();
  v1 = *(v0 + 48);
  return v2();
}

unint64_t sub_1884E0DBC()
{
  if (*(v0 + 384))
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 384);
  }

  else
  {
    v1 = sub_188420248();
  }

  return v1;
}

void sub_1884E0E08(void *a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = type metadata accessor for TaskPriority();
      sub_1883F90F4(v5, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v7;
      v11[5] = v9;
      v12 = a1;
      sub_188453610();
    }

    else
    {
      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1883FDE5C(v13, qword_1EA90C9F8);
      v14 = a1;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v15, v16))
      {

        return;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v17 = 136315394;

      v20 = sub_1883FE43C();
      v22 = v21;

      v23 = sub_1883FE340(v20, v22, &v25);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = v14;
      v24 = v14;
      _os_log_impl(&dword_1883EA000, v15, v16, "%s received notification in sync engine that is not a database notification: %@", v17, 0x16u);
      sub_188442B84(v18, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v18, -1, -1);
      sub_1883FE944(v19);
      MEMORY[0x18CFD7E80](v19, -1, -1);
      MEMORY[0x18CFD7E80](v17, -1, -1);
    }
  }
}

uint64_t sub_1884E10FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;

  return sub_1884E1198();
}

uint64_t sub_1884E1198()
{
  sub_1883F7120();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884E122C, v0, 0);
}

uint64_t sub_1884E122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v16 = v14[3];
  if (swift_weakLoadStrong())
  {
    v17 = v14[2];

    v18 = [v17 recordZoneID];
    v14[5] = v18;
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v19 = v14[3];
    v20 = type metadata accessor for Logger();
    v14[6] = sub_1883FDE5C(v20, qword_1EA90C9F8);

    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v14[3];
      swift_slowAlloc();
      v25 = sub_1883FDDF4();
      v71 = sub_1883FE540();
      *v19 = 136315394;
      v26 = sub_1883FE43C();
      v30 = sub_1883FB598(v26, v27, v28, v29);

      *(v19 + 4) = v30;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v21;
      *v25 = v18;
      v31 = v21;
      _os_log_impl(&dword_1883EA000, v22, v23, "%s received database notification (zone=%@", v19, 0x16u);
      sub_188442B84(v25, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      sub_1883FE944(v71);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v32 = v14[3];
    [*(*(v32 + 128) + 16) setNeedsToFetchDatabaseChanges_];
    if (*(v32 + 392) == 1)
    {
      v33 = v14[3];

      v34 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        v35 = v14[3];
        sub_1883F9984();
        sub_1883F8C00();
        sub_18840531C();
        *v33 = 136315138;
        v36 = sub_1883FE43C();
        sub_1883FB598(v36, v37, v38, v39);
        sub_1883FE2FC();
        *(v33 + 4) = v21;
        sub_1883F7A44(&dword_1883EA000, v40, v41, "%s sync after push notification");
        sub_1883F8EAC();
        sub_1883F82B8();
      }

      v42 = swift_task_alloc();
      v14[7] = v42;
      *v42 = v14;
      v42[1] = sub_1884E1614;
      v43 = v14[3];
      sub_1883FEB30();

      return sub_1884E1AA0();
    }

    else
    {
      v65 = v14[4];
      type metadata accessor for Date();
      v66 = sub_1883F9014();
      sub_1883F90F4(v66, v67, 1, v68);
      v69 = swift_task_alloc();
      v14[9] = v69;
      *v69 = v14;
      sub_1883FE6E4(v69);
      sub_1883FEB30();

      return sub_18840EDE4();
    }
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v46 = v14[3];
    v47 = type metadata accessor for Logger();
    sub_1883FDE5C(v47, qword_1EA90C9F8);

    v48 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v49 = v14[3];
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v46 = 136315138;
      v50 = sub_1883FE43C();
      sub_1883FB598(v50, v51, v52, v53);
      sub_1883FE2FC();
      *(v46 + 4) = v15;
      sub_1883F7A44(&dword_1883EA000, v54, v55, "%s not processing database notification for deallocated engine");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    v56 = v14[4];

    sub_1883F816C();
    sub_1883FEB30();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1884E1614()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v2 + 56);
  *v4 = *v1;
  *(v3 + 64) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1884E18C0;
  }

  else
  {
    v7 = sub_1884E48F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1884E1734()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[9];
  v3 = v1[4];
  v4 = v1[3];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_188442B84(v3, &unk_1EA90D7B0, &dword_1886F8780);

  return MEMORY[0x1EEE6DFA0](sub_1884E1860, v4, 0);
}

uint64_t sub_1884E1860()
{
  sub_1883F7120();

  v1 = *(v0 + 32);

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884E18C0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = sub_1883FE540();
    *v10 = 136315394;
    v12 = sub_1883FE43C();
    v15 = sub_1883FC788(v12, v13, v14);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1883EA000, v5, v6, "%s push sync failed with error: %@", v10, 0x16u);
    sub_188442B84(v11, &qword_1EA90DC70, &unk_1886FA190);
    sub_1884037D8();
    sub_1883FE944(v24);
    sub_1883F7B60();
    sub_1883F82B8();
  }

  else
  {
  }

  v18 = v0[4];
  type metadata accessor for Date();
  v19 = sub_1883F9014();
  sub_1883F90F4(v19, v20, 1, v21);
  v22 = swift_task_alloc();
  v0[9] = v22;
  *v22 = v0;
  sub_1883FE6E4(v22);

  return sub_18840EDE4();
}

uint64_t sub_1884E1AA0()
{
  sub_1883F7120();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v2);
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884E1B5C, v0, 0);
}

uint64_t sub_1884E1B5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1883F4C5C(0, &qword_1EA90E528, off_1E70BA028);
  v4 = sub_1884E5E90();
  v6 = sub_1884E1FC0(v4, v5, &selRef_initWithIdentifier_);
  v0[11] = v6;
  [v6 start];
  v7 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v1, 1, 1, v7);
  v8 = sub_18840F920();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v3;
  v9[5] = v6;
  v9[6] = v2;
  swift_retain_n();
  v10 = v6;
  v11 = MEMORY[0x1E69E7CA8];
  v12 = sub_1884E04B8(0, 0, v1, &unk_1886FB4F0, v9);
  v0[12] = v12;
  v0[6] = sub_1884E3C78;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1884C4F80;
  v0[5] = &unk_1EFA2C0E0;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  [v10 setExpirationHandler_];
  _Block_release(v13);
  v15 = *(MEMORY[0x1E69E86A8] + 4);
  v16 = swift_task_alloc();
  v0[13] = v16;
  v17 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v16 = v0;
  v16[1] = sub_1884E1DAC;
  v18 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v17, v12, v11 + 8, v17, v18);
}

uint64_t sub_1884E1DAC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v2 + 104);
  *v4 = *v1;
  *(v3 + 112) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1884E1F50;
  }

  else
  {
    v7 = sub_1884E1ECC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1884E1ECC()
{
  sub_1883F78E0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  [v1 complete];

  sub_1883FDB48();

  return v3();
}

uint64_t sub_1884E1F50()
{
  sub_1883F7120();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  sub_1883F816C();
  v4 = *(v0 + 112);

  return v3();
}

id sub_1884E1FC0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](a1, a2);

  v8 = [v6 *a3];

  return v8;
}

uint64_t sub_1884E2034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884E20C8, 0, 0);
}

uint64_t sub_1884E20C8()
{
  sub_1883F7120();
  v1 = v0;
  v11 = *MEMORY[0x1E69E9840];
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v3 = _os_activity_create(&dword_1883EA000, "engine/fetch-on-push", v2, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[0] = v3;
  os_activity_scope_enter(v3, v0 + 1);
  v4 = swift_task_alloc();
  v1[4].opaque[1] = v4;
  *v4 = v1;
  v4[1] = sub_1884E21C8;
  v5 = v1[3].opaque[0];
  v6 = v1[3].opaque[1];
  v7 = v1[2].opaque[0];
  v8 = v1[2].opaque[1];
  v9 = *MEMORY[0x1E69E9840];

  return sub_1884E241C(v7, v8, v5, v6);
}

uint64_t sub_1884E21C8()
{
  sub_1883F7120();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  sub_1883F8D80();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v9 + 80) = v0;

  if (v0)
  {
    v10 = sub_1884E2388;
  }

  else
  {
    v10 = sub_1884E22F4;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1884E22F4()
{
  sub_1883F7120();
  v5 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F816C();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1884E2388()
{
  sub_1883F7120();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  sub_1883F816C();
  v3 = v0[5].opaque[0];
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1884E241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[58] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884E2440, 0, 0);
}

id sub_1884E2440()
{
  v33 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v2 = v0[58];
  v3 = type metadata accessor for Logger();
  sub_1883FDE5C(v3, qword_1EA90C9F8);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v5 = v0[58];
    sub_1883F9984();
    __src[0] = sub_1883F8C00();
    *v2 = 136315138;
    v6 = sub_1883FE43C();
    sub_1883FC788(v6, v7, v8);
    sub_1883FE2FC();
    *(v2 + 4) = v1;
    sub_1883F7A44(&dword_1883EA000, v9, v10, "%s performing immediate push fetch");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v11 = v0[60];
  v12 = sub_1883F57B8();
  v0[61] = v12;
  sub_1883F60E8(0xD000000000000020, 0x80000001887023D0, v12);
  result = [v12 defaultConfiguration];
  if (result)
  {
    v14 = result;
    v15 = v0 + 64;
    v16 = (v0 + 519);
    v17 = (v0 + 526);
    [result setBackgroundTask_];

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18841A9C8();
    v18 = v12;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = Dictionary.init(dictionaryLiteral:)();

    v0[22] = 0;
    *(v0 + 184) = 2;
    v0[24] = v18;
    v0[25] = v19;
    v0[26] = v20;
    *(v0 + 216) = 1;
    v0[28] = 0;
    *(v0 + 232) = 0;
    v0[30] = 3;
    v21 = v18;
    sub_1883F697C((v0 + 22), (v0 + 31));
    sub_1883F69F4(v21);
    if (v22 && (sub_1883F7624() & 1) == 0)
    {
    }

    else
    {
      v23 = v0[22];
      v24 = *(v0 + 184);
      type metadata accessor for SyncEngine();
      __src[0] = v23;
      LOBYTE(__src[1]) = v24;
      v19 = MEMORY[0x1E69E7CC0];

      v16 = (v0 + 519);
      v15 = v0 + 64;
      v25 = sub_1883F6734(__src);
      v27 = v26;

      v28 = v27;
      v17 = (v0 + 526);
      sub_1883F60E8(v25, v28, v21);
    }

    sub_1883F7768((v0 + 22));
    v0[40] = 0;
    *(v0 + 328) = 2;
    *(v0 + 329) = *v15;
    *(v0 + 83) = *(v15 + 3);
    v0[42] = v21;
    v0[43] = v19;
    v0[44] = v20;
    *(v0 + 360) = 1;
    *(v0 + 361) = *v16;
    *(v0 + 91) = *(v16 + 3);
    v0[46] = 0;
    *(v0 + 376) = 0;
    v29 = *v17;
    *(v0 + 95) = *(v17 + 3);
    *(v0 + 377) = v29;
    v0[48] = 3;
    memcpy(__src + 7, v0 + 40, 0x48uLL);
    *(v0 + 16) = 0;
    memcpy(v0 + 17, __src, 0x4FuLL);
    memcpy(v0 + 12, v0 + 2, 0x50uLL);
    sub_1883F697C((v0 + 40), (v0 + 49));
    v30 = swift_task_alloc();
    v0[62] = v30;
    *v30 = v0;
    v30[1] = sub_1884E2838;
    v31 = v0[58];

    return sub_1883FA8A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884E2838()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 504) = v0;

  if (v0)
  {
    v9 = sub_1884E299C;
  }

  else
  {
    v9 = sub_1884E2934;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1884E2934()
{
  sub_1883F7120();
  v1 = *(v0 + 488);
  sub_1883FB300(v0 + 16);
  sub_1883F7768(v0 + 320);

  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884E299C()
{
  sub_1883F7120();

  sub_1883F7768(v0 + 320);
  sub_1883FB300(v0 + 16);
  sub_1883F816C();
  v2 = *(v0 + 504);

  return v1();
}

void sub_1884E2A08()
{
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);

  JUMPOUT(0x18CFD54D0);
}

uint64_t sub_1884E2A68()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_1883F816C();
  v5 = *(v0 + 64);

  return v4();
}

uint64_t sub_1884E2AE4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  v5 = *(v3 + 360);
  if (v4)
  {
    v6 = sub_1884E35C0;
  }

  else
  {
    v6 = sub_1884E2BF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884E2BF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F98A8();
  sub_1884008A8();
  v24 = *(v22 + 440);
  v25 = *(v22 + 360);

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v27 = *(v22 + 360);
    sub_1883F9984();
    sub_1883F8C00();
    sub_18840531C();
    *v25 = 136315138;
    v28 = sub_1883FE43C();
    sub_1883FB598(v28, v29, v30, v31);
    sub_1883FE2FC();
    *(v25 + 4) = v23;
    sub_1883F7A44(&dword_1883EA000, v32, v33, "%s saved subscription");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v34 = *(v22 + 416);
  [*(v34 + 16) setNeedsToSaveDatabaseSubscription_];
  if (([*(v34 + 16) needsToFetchDatabaseChanges] & 1) == 0)
  {
    v35 = *(v22 + 440);
    v36 = *(v22 + 360);

    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v38 = *(v22 + 360);
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v36 = 136315138;
      v39 = sub_1883FE43C();
      sub_1883FB598(v39, v40, v41, v42);
      sub_1883FE2FC();
      *(v36 + 4) = v23;
      sub_1883F7A44(&dword_1883EA000, v43, v44, "%s scheduling fetch changes after saving subscription");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    v45 = *(v22 + 360);
    [*(*(v22 + 416) + 16) setNeedsToFetchDatabaseChanges_];
    sub_1884E5EAC();
  }

  v46 = *(v22 + 448);
  v48 = *(v22 + 376);
  v47 = *(v22 + 384);
  v49 = *(v22 + 368);
  v54 = *(v22 + 352);
  *(v22 + 80) = v22;
  *(v22 + 120) = v22 + 344;
  *(v22 + 88) = sub_1884E2EC4;
  swift_continuation_init();
  *(v22 + 264) = v49;
  v50 = sub_188403664((v22 + 240));
  sub_18844E6FC(&qword_1EA90E538, &qword_1886FB528);
  CheckedContinuation.init(continuation:function:)();
  (*(v48 + 32))(v50, v47, v49);
  *(v22 + 208) = MEMORY[0x1E69E9820];
  *(v22 + 216) = 1107296256;
  *(v22 + 224) = sub_1884E38F0;
  *(v22 + 232) = &unk_1EFA2C130;
  [v54 fetchAllSubscriptionsWithCompletionHandler_];
  (*(v48 + 8))(v50, v49);
  sub_1883FEB30();

  return MEMORY[0x1EEE6DEC8](v51);
}

uint64_t sub_1884E2EC4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 464) = v4;
  v5 = *(v3 + 360);
  if (v4)
  {
    v6 = sub_1884E3758;
  }

  else
  {
    v6 = sub_1884E2FD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1884E2FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F98A8();
  a21 = v23;
  a22 = v24;
  sub_1884008A8();
  a20 = v22;
  v107 = v22;
  v25 = *(v22 + 344);
  v26 = MEMORY[0x1E69E7CC0];
  a11 = MEMORY[0x1E69E7CC0];
  v27 = sub_1883F4C9C(v25);
  for (i = 0; v27 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x18CFD59D0](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v29 = *(v25 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    if ([v29 subscriptionType] == 3)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = *(a11 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v32 = a11;
  v33 = sub_1883F4C9C(a11);
  if (v33)
  {
    v34 = v33;
    a11 = v26;
    sub_18840489C(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_47;
    }

    v35 = 0;
    v36 = a11;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x18CFD59D0](v35, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v37 subscriptionID];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      a11 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_18840489C((v43 > 1), v44 + 1, 1);
        v36 = a11;
      }

      ++v35;
      *(v36 + 16) = v44 + 1;
      v45 = v36 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
    }

    while (v34 != v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v46 = v107;
  v47 = *(v107 + 360);
  sub_18844E6FC(&qword_1EA90E520, &qword_1886FB4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  *(inited + 32) = sub_188420248();
  *(inited + 40) = v49;
  v50 = *(v47 + 384);
  *(inited + 48) = *(v47 + 376);
  *(inited + 56) = v50;

  v51 = 0;
  v52 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v53 = (inited + 40 + 16 * v51);
  while (++v51 != 3)
  {
    v54 = v53 + 2;
    v55 = *v53;
    v53 += 2;
    if (v55)
    {
      v56 = *(v54 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = *(v52 + 16);
        sub_1883F8CAC();
        v52 = v60;
      }

      v57 = *(v52 + 16);
      if (v57 >= *(v52 + 24) >> 1)
      {
        sub_1883F8CAC();
        v52 = v61;
      }

      *(v52 + 16) = v57 + 1;
      v58 = v52 + 16 * v57;
      *(v58 + 32) = v56;
      *(v58 + 40) = v55;
      goto LABEL_24;
    }
  }

  swift_setDeallocating();
  sub_18841F82C();
  sub_18841F88C(v36);
  v63 = v62;
  sub_18841F88C(v52);
  v65 = sub_1884E39DC(v64, v63);

  v66 = sub_1884E0D10(v65);
  if (v67)
  {
    v68 = v66;
    v69 = v67;
    if (*(v65 + 16) > 1uLL)
    {
      v70 = *(v107 + 440);
      v71 = *(v107 + 360);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = sub_1883FA47C();
        a11 = swift_slowAlloc();
        *v74 = 136315394;
        v75 = sub_1883FE43C();
        v79 = sub_1883FB598(v75, v76, v77, v78);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2080;
        v80 = Set.description.getter();
        v82 = v81;

        v83 = sub_1883FE340(v80, v82, &a11);
        v46 = v107;

        *(v74 + 14) = v83;
        _os_log_impl(&dword_1883EA000, v72, v73, "%s found more than one existing database subscription: %s", v74, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1884037D8();

LABEL_39:
        v84 = *(v46 + 440);
        v85 = *(v46 + 360);

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = sub_1883FA47C();
          a11 = swift_slowAlloc();
          *v88 = 136315394;
          v89 = sub_1883FE43C();
          v93 = sub_1883FB598(v89, v90, v91, v92);

          *(v88 + 4) = v93;
          *(v88 + 12) = 2080;
          *(v88 + 14) = sub_1883FE340(v68, v69, &a11);
          _os_log_impl(&dword_1883EA000, v86, v87, "%s found an untracked existing database subscription: %s", v88, 0x16u);
          swift_arrayDestroy();
          sub_1884037D8();
          sub_1883F7B60();
        }

        v94 = *(v46 + 416);
        v95 = *(v46 + 360);
        sub_18850C0D8(v68, v69);
        sub_18841FD50();
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  v96 = *(v46 + 424);

  v97 = *(v46 + 408);
  v98 = *(v46 + 384);

  sub_1883FDB48();
  sub_1883FEB30();

  v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, v107, a11, a12, a13, a14);
}

uint64_t sub_1884E35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v17 = v14[57];
  swift_willThrow();
  v18 = v14[57];
  v19 = v14[55];
  v20 = v14[45];
  v21 = v18;
  v22 = sub_18840EFC4(v18);

  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    sub_1883FA47C();
    v16 = sub_1883FDDF4();
    v15 = sub_1883FE540();
    a10 = v15;
    *v20 = 136315394;
    v26 = sub_1883FE43C();
    v29 = sub_1883FC788(v26, v27, v28);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2112;
    v30 = v23;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v31;
    *v16 = v31;
    sub_188404264(&dword_1883EA000, v32, v33, "%s error saving subscriptions: %@");
    sub_188442B84(v16, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v15);
    sub_1884037D8();
    sub_1883FD784();
  }

  v34 = sub_188405D78();
  sub_18840F1E8(v23);

  swift_willThrow();

  sub_1883F816C();
  sub_1883FEB30();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884E3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v17 = v14[58];
  swift_willThrow();
  v18 = v14[58];
  v19 = v14[55];
  v20 = v14[45];
  v21 = v18;
  v22 = sub_18840EFC4(v18);

  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    sub_1883FA47C();
    v16 = sub_1883FDDF4();
    v15 = sub_1883FE540();
    a10 = v15;
    *v20 = 136315394;
    v26 = sub_1883FE43C();
    v29 = sub_1883FC788(v26, v27, v28);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2112;
    v30 = v23;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v31;
    *v16 = v31;
    sub_188404264(&dword_1883EA000, v32, v33, "%s error saving subscriptions: %@");
    sub_188442B84(v16, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v15);
    sub_1884037D8();
    sub_1883FD784();
  }

  v34 = sub_188405D78();
  sub_18840F1E8(v23);

  swift_willThrow();

  sub_1883F816C();
  sub_1883FEB30();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

void sub_1884E38F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_18840AC9C(v4, v5, &unk_1EA90E530, &unk_1886FB520, MEMORY[0x1E69E8538]);
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1884E0CD4();
  }
}

uint64_t sub_1884E39DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_188504600();
    return a2;
  }

  else
  {

    return sub_1884E3C80(a1, a2);
  }
}

uint64_t sub_1884E3A30()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}