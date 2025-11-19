uint64_t sub_5A9B64()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_5AA8B8;
  }

  else
  {
    v2 = sub_5A9C78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5A9C78()
{
  sub_15F84(v0[51], (v0 + 44), &qword_E0EB30);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_1(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_AB9940();
    v0[74] = sub_AB9930();
    v3 = sub_AB98B0();

    return _swift_task_switch(sub_5A9E20, v3, v2);
  }

  else
  {
    sub_12E1C((v0 + 44), &qword_E0EB30);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_5A9E20()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_720990(v3, 0, v2, v1);
  sub_5B0254(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_5A9ED0, 0, 0);
}

uint64_t sub_5A9ED0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 44));
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A9FA4()
{
  v6 = v0[76];

  sub_6004AC(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_5AA0D4;
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_5AA0D4()
{
  v1 = *v0;

  sub_111904(v1 + 280);

  return _swift_task_switch(sub_5B0324, 0, 0);
}

uint64_t sub_5AA1D8()
{
  v1 = sub_AB9930();
  v0[84] = v1;
  v2 = swift_task_alloc();
  v0[85] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[86] = v3;
  *v3 = v0;
  v3[1] = sub_5AA2EC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 92, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v2, &type metadata for Bool);
}

uint64_t sub_5AA2EC()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_5AA44C, v3, v2);
}

uint64_t sub_5AA44C()
{

  return _swift_task_switch(sub_5AA4B4, 0, 0);
}

uint64_t sub_5AA4B4()
{
  sub_1611C((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5AA5A0()
{
  v6 = v0[88];

  sub_5FEC68(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = sub_5AA6D0;
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_5AA6D0()
{
  v1 = *v0;

  sub_111904(v1 + 208);

  return _swift_task_switch(sub_5AA7D4, 0, 0);
}

uint64_t sub_5AA7D4()
{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5AA8B8()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + v4);
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      sub_17774(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_5AAAD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_5A94C4(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_5AAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_5AAE1C, 0, 0);
}

uint64_t sub_5AAE1C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_15F84(*(v0 + 88), v4, &qword_E0EAA0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 232), &qword_E0EAA0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_53EEE4(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_AB31C0();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_51717C(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 328) = sub_AB9930();
    v19 = sub_AB98B0();

    return _swift_task_switch(sub_5AB128, v19, v18);
  }
}

uint64_t sub_5AB128()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_15F84(v36 + v14[6], *(v0 + 208), &qword_E0DC30);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_36B0C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_5AB8DC, 0, 0);
}

uint64_t sub_5AB8DC()
{
  sub_5B0254(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_AB31C0();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_5ABCE8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_5AAC04(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_53EAA8;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_53F19C;
}

uint64_t (*sub_5ABFA4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_53F19C;
}

uint64_t (*sub_5AC038())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_53F19C;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_53F19C;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_53F19C;
}

uint64_t (*sub_5AC26C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_53F19C;
}

uint64_t (*sub_5AC30C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_53F19C;
}

uint64_t sub_5AC43C()
{
  v0 = sub_AB81C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB4050();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_5AC610();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_5AC610()
{
  v1 = v0;
  v2 = sub_AB81B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8E8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, v1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = sub_5ADE84(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_ABAD90(27);

    v17 = 0xD000000000000019;
    v18 = 0x8000000000B6B4A0;
    v13(v10, v1, v6);
    v19._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v19);

    v15 = v17;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

uint64_t sub_5AC8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_5AC9C4;

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t sub_5AC9C4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_5ACB10, 0, 0);
  }
}

uint64_t sub_5ACB10()
{
  sub_15F84(v0[7], (v0 + 2), &qword_E0EB30);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    sub_AB9940();
    v0[14] = sub_AB9930();
    v3 = sub_AB98B0();

    return _swift_task_switch(sub_5ACC48, v3, v2);
  }

  else
  {
    sub_12E1C((v0 + 2), &qword_E0EB30);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_5ACC48()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_720990(v3, 0, v2, v1);
  sub_5B0254(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_5ACCF0, 0, 0);
}

uint64_t sub_5ACCF0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5ACD5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_5ACE34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17BD0;

  return sub_5AC8D8(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_5ACF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_5AD158, 0, 0);
}

uint64_t sub_5AD158()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 216), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_53EEE4(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_AB31C0();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_51717C(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 312) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_5AD44C, v18, v17);
  }
}

uint64_t sub_5AD44C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_15F84(v36 + v14[6], *(v0 + 192), &qword_E0DC30);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_36B0C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_5ADC00, 0, 0);
}

uint64_t sub_5ADC00()
{
  sub_5B0254(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5ADD3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_5ACF44(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_5ADE84(uint64_t a1)
{
  v2 = sub_AB81B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(v3 + 16);
  v9(&v14 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_ABAD90(17);

  v14 = 0x206E776F6E6B6E55;
  v15 = 0xEF206E6F73616572;
  v9(v6, a1, v2);
  v16._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v16);

  v13 = v14;
  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_5AE1CC()
{
  v0 = sub_AB82E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB3FD0();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_5AE3E8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_5AE3E8()
{
  v1 = sub_AB82D0();
  v20 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8E0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = *(v8 + 16);
  v19 = v0;
  v14(&v19 - v12, v0, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    v16 = v20;
    (*(v20 + 32))(v6, v13, v1);
    (*(v16 + 16))(v4, v6, v1);
    v17 = sub_AB9350();
    (*(v16 + 8))(v6, v1);
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_ABAD90(27);

    v21 = 0xD000000000000019;
    v22 = 0x8000000000B6B4A0;
    v14(v11, v19, v7);
    v23._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v23);

    v17 = v21;
    (*(v8 + 8))(v13, v7);
  }

  return v17;
}

uint64_t sub_5AE6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_17CF8;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t objectdestroyTm_13()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_5AE86C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_17CF8;

  return sub_5AE6F8(v5, v0 + v4, v2, v3);
}

uint64_t sub_5AE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_5AEB64, 0, 0);
}

uint64_t sub_5AEB64()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 216), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_53EEE4(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_AB31C0();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_51717C(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 312) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_5AEE58, v18, v17);
  }
}

uint64_t sub_5AEE58()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6405;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_15F84(v36 + v14[6], *(v0 + 192), &qword_E0DC30);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_36B0C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_5B02C0, 0, 0);
}

uint64_t sub_5AF60C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_5AE950(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_5AF774()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.SuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_53F19C;
}

uint64_t sub_5AFA1C()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_5AFBFC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_53F19C;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x8000000000B6B4C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x8000000000B6B4C0;
  return sub_53F19C;
}

uint64_t (*sub_5AFD48())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x8000000000B6B4C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x8000000000B6B4C0;
  return sub_53F19C;
}

uint64_t _s9MusicCore7ActionsO15UndoSuggestLessO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO12UndoFavoriteO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_5B021C()
{

  return swift_deallocObject();
}

uint64_t sub_5B0254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t (*Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v31 = a8;
  v32 = a3;
  v29 = a7;
  v30 = a2;
  v33 = a4;
  v34 = a5;
  v28 = a1;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v18 = v31;
  *(v17 + 4) = v31;
  *(v17 + 5) = a2;
  v19 = *(v11 + 32);
  v19(&v17[(v16 + 48) & ~v16], v15, a6);
  v19(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a6);
  v20 = (v16 + 56) & ~v16;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 4) = v18;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  v19(&v22[v20], v27, a6);
  *&v22[v21] = v30;
  sub_17704(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return sub_5B0DE8;
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = sub_53842C;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_B1AB60;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_B1AB68;
  *(a5 + 88) = 0;
}

uint64_t sub_5B05FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = sub_53842C;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_B1AB60;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_B1AB68;
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x8000000000B6B680;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x8000000000B6B680;
  return sub_53EAA8;
}

uint64_t (*sub_5B0918())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x8000000000B6B680;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x8000000000B6B680;
  return sub_53F19C;
}

unint64_t sub_5B09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = sub_AB8410();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  sub_AB8510();
  sub_AB8500();
  v13 = sub_AB8340();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_AB9260();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  sub_AB4000();
  sub_AB82C0();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = sub_AB8400();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}

uint64_t sub_5B0D2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = sub_AB9260();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_5B0E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v9 = *(a6 - 8);
  v8[34] = v9;
  v8[35] = *(v9 + 64);
  v8[36] = swift_task_alloc();
  sub_AB35C0();
  v8[37] = swift_task_alloc();
  v10 = sub_AB9250();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  sub_AB9940();
  v8[42] = sub_AB9930();
  v12 = sub_AB98B0();

  return _swift_task_switch(sub_5B1018, v12, v11);
}

uint64_t sub_5B1018()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_AB91E0();
  v49 = *(v3 + 16);
  v49(v2, v1, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v47 = v0[40];
  v6 = v0[38];
  v7 = v0[39];
  v42 = v0[36];
  v45 = v0[30];
  v43 = v0[33];
  v44 = v0[29];
  v41 = v0[34];
  v38 = v0[28];
  v39 = v0[26];
  v8 = qword_E71B20;
  v48 = *(v0 + 31);
  sub_AB3550();
  v9 = v8;
  sub_AB9320();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = sub_AB9260();

  v36 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  sub_AB91E0();
  v49(v47, v5, v6);
  sub_AB3550();
  sub_AB9320();
  v10(v5, v6);
  v12 = sub_AB9260();

  v37 = objc_opt_self();
  v13 = [v37 actionWithTitle:v12 style:1 handler:0];

  v46 = v13;
  [v36 addAction:v13];
  v14 = v39(v38);
  v40 = v15;
  sub_AB91E0();
  v49(v47, v5, v6);
  sub_AB3550();
  sub_AB9320();
  v10(v5, v6);
  (*(v41 + 16))(v42, v38, v48);
  v16 = (*(v41 + 80) + 64) & ~*(v41 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v48;
  *(v17 + 32) = v43;
  *(v17 + 40) = v14;
  *(v17 + 48) = v40;
  *(v17 + 56) = v44;
  (*(v41 + 32))(v17 + v16, v42, v48);
  v18 = v14;

  v19 = sub_AB9260();

  v0[18] = sub_5B1D58;
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_1546C;
  v0[17] = &block_descriptor_171;
  v20 = _Block_copy(v0 + 14);

  v21 = [v37 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v36 addAction:v21];
  [v36 setPreferredAction:v21];
  [v36 setContentViewController:v18];
  v22 = *(v45 + 80);
  if (v22)
  {
    v23 = qword_E0CF08;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_AB4BC0();
    __swift_project_value_buffer(v24, qword_E14920);
    v25 = sub_AB4BA0();
    v26 = sub_AB9F50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Deferring presentation…", v27, 2u);
    }

    v28 = v0[30];

    v29 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = sub_71E354;
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_71F2F4;
    v0[23] = &block_descriptor_24_0;
    v30 = _Block_copy(v0 + 20);
    v31 = [v29 initWithTimeout:v30 interruptionHandler:10.0];
    _Block_release(v30);

    sub_15F28(v28, (v0 + 2));
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_17704((v0 + 2), v32 + 24);
    *(v32 + 120) = v36;
    *(v32 + 128) = 257;
    *(v32 + 136) = 0;
    *(v32 + 144) = 0;
    v33 = v31;
    v22(v28, v36, sub_53F0C4, v32);
    sub_17654(v22);
  }

  else
  {
    sub_71C834(v36, &dword_0 + 1, &dword_0 + 1, 0, 0);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_5B17B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B18DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v7 = (*(*(v2 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[6];
  v10 = *(v0 + v7);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17BD0;

  return sub_5B0E8C(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_5B1A38()
{

  return swift_deallocObject();
}

uint64_t sub_5B1A70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_AB9990();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a5, a6);
  sub_AB9940();
  v20 = a2;

  v21 = sub_AB9930();
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  *(v23 + 3) = &protocol witness table for MainActor;
  v25 = v27;
  v24 = v28;
  *(v23 + 4) = a6;
  *(v23 + 5) = v25;
  *(v23 + 6) = v24;
  *(v23 + 7) = v20;
  *(v23 + 8) = a3;
  *(v23 + 9) = a4;
  (*(v13 + 32))(&v23[v22], v15, a6);
  sub_5E89D8(0, 0, v18, &unk_B1ABF8, v23);
}

uint64_t sub_5B1C94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B1DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_AB9940();
  v8[13] = sub_AB9930();
  v10 = sub_AB98B0();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(sub_5B1EBC, v10, v9);
}

uint64_t sub_5B1EBC()
{
  v1 = v0[8];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v0[16] = v4;
  v5 = v4 / 5.0;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = *(v1 + 8);
  *v6 = v0;
  v6[1] = sub_5B1FA4;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

uint64_t sub_5B1FA4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_5B2150;
  }

  else
  {
    v5 = sub_5B20E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5B20E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5B2150()
{
  v31 = v0;

  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v12 = v0[11];
    v11 = v0[12];
    v29 = v8;
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[16] / 5.0;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 134349570;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2082;
    v6(v12, v11, v14);
    v17 = sub_AB9350();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_500C84(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v21 = sub_AB9350();
    v23 = sub_500C84(v21, v22, &v30);

    *(v16 + 24) = v23;
    _os_log_impl(&dword_0, v7, v29, "Failed to set userRating=%{public}f for item=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_5B2448()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B24DC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_5B25A8(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_5B1DB4(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

uint64_t View.alertPresenting(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F920);
  sub_36A00(&qword_E0F928, &qword_E0F920);
  sub_AB5B50();
  v4 = sub_5B27C0();
  View.viewPresenting<A, B>(_:modifier:)(a1, v4, a2);
}

unint64_t sub_5B27C0()
{
  result = qword_E0F930;
  if (!qword_E0F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F930);
  }

  return result;
}

uint64_t sub_5B2814()
{
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F938);
  sub_AB5D50();
  sub_5B27C0();
  swift_getWitnessTable();
  sub_36A00(&qword_E0F940, &qword_E0F938);
  return swift_getWitnessTable();
}

uint64_t sub_5B2928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F960);
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v46 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F968);
  __chkstk_darwin(v61);
  v62 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F970);
  v57 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F978);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v46 - v11;
  v12 = (a1 + *(*a1 + 96));
  swift_beginAccess();
  v13 = v12[3];
  v84 = v12[2];
  v85 = v13;
  v86 = *(v12 + 8);
  v14 = v12[1];
  v83[0] = *v12;
  v83[1] = v14;
  if (!*(&v85 + 1))
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  v52 = v7;
  v53 = v10;
  v54 = v9;
  v55 = v4;
  v56 = a2;
  v15 = v84;
  v16 = v83[0];
  v77 = v83[0];
  *v80 = *(v12 + 33);
  v17 = v12[3];
  v75[2] = v12[2];
  v75[3] = v17;
  v18 = *v12;
  v78 = v12[1];
  v79 = v84;
  *&v80[15] = *(v12 + 6);
  v81 = *(&v85 + 1);
  v82 = v86;
  v76 = *(v12 + 8);
  v75[0] = v18;
  v75[1] = v78;
  sub_5B3FC4(v75, &v67);
  v19 = sub_AB7490();
  if (*(&v16 + 1))
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (*(&v16 + 1))
  {
    v21 = *(&v16 + 1);
  }

  v50 = v21;
  v51 = v19;
  v65 = v21;
  v66 = v19;
  v64 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F920);
  sub_36A00(&qword_E0F928, &qword_E0F920);
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  if (v15)
  {
    v60 = &v46;
    LODWORD(v58) = v69;
    v23 = __chkstk_darwin(v22);
    __chkstk_darwin(v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F980);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F988);
    v47 = sub_4FD6CC();
    v48 = sub_5B407C();
    v49 = sub_5B4170();
    v26 = v59;
    sub_AB7170();

    v27 = v57;
    v28 = v52;
    (*(v57 + 16))(v62, v26, v52);
    swift_storeEnumTagMultiPayload();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v24;
    v70 = v25;
    v29 = v24;
    v30 = v47;
    v31 = v48;
    v71 = &protocol witness table for Color;
    v72 = v47;
    v32 = v49;
    v73 = v48;
    v74 = v49;
    swift_getOpaqueTypeConformance2();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v29;
    v70 = v25;
    v71 = &protocol witness table for Color;
    v72 = v30;
    v73 = v31;
    v74 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v63;
    sub_AB6610();

    sub_12E1C(v83, &qword_E0F9B0);
    (*(v27 + 8))(v59, v28);
  }

  else
  {
    v59 = &v46;
    LODWORD(v57) = v69;
    v35 = __chkstk_darwin(v22);
    __chkstk_darwin(v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F980);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F988);
    v47 = sub_4FD6CC();
    v48 = sub_5B407C();
    v49 = sub_5B4170();
    v38 = v37;
    v39 = v60;
    sub_AB7270();

    v40 = v58;
    v41 = v55;
    (*(v58 + 16))(v62, v39, v55);
    swift_storeEnumTagMultiPayload();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v36;
    v70 = v38;
    v42 = v47;
    v43 = v48;
    v71 = &protocol witness table for Color;
    v72 = v47;
    v44 = v49;
    v73 = v48;
    v74 = v49;
    swift_getOpaqueTypeConformance2();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v36;
    v70 = v38;
    v71 = &protocol witness table for Color;
    v72 = v42;
    v73 = v43;
    v74 = v44;
    swift_getOpaqueTypeConformance2();
    v33 = v63;
    sub_AB6610();

    sub_12E1C(v83, &qword_E0F9B0);
    (*(v40 + 8))(v60, v41);
  }

  v45 = v56;
  sub_5B41EC(v33, v56);
  return (*(v53 + 56))(v45, 0, 1, v54);
}

uint64_t sub_5B32D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_5B3368()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_5B33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[9] = *(a1 + 56);
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v6;

  sub_5B3FC4(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F9C0);
  sub_5B42DC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F998);
  v11 = sub_36A00(&qword_E0F9A0, &qword_E0F998);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_AB78B0();
}

uint64_t sub_5B3594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_4FD6CC();

    result = sub_AB6F20();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_5B3618@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F9E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E780);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F998);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v33 = a2[1];
  v31 = a2[1];
  v16 = *(a2 + 32);
  if (v16 == 2)
  {
    v17 = sub_AB5680();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  else
  {

    if (v16)
    {
      sub_AB5650();
    }

    else
    {
      sub_AB5670();
    }

    v18 = sub_AB5680();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  v32 = *a2;
  v19 = *(a2 + 5);
  v20 = swift_allocObject();
  v21 = a2[1];
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = a2[2];
  v22 = *a3;
  *(v20 + 88) = *(a3 + 16);
  v23 = *(a3 + 48);
  *(v20 + 104) = *(a3 + 32);
  *(v20 + 120) = v23;
  *(v20 + 64) = *(a2 + 6);
  *(v20 + 136) = *(a3 + 64);
  *(v20 + 72) = v22;
  sub_C8C3C(&v33, v30);
  sub_C8C3C(&v32, v30);
  sub_307CC(v19);
  sub_5B3FC4(a3, v30);
  sub_4FD6CC();
  sub_AB76C0();
  v24 = 1;
  if ((*(a3 + 48) & 1) == 0 && *(a3 + 40) == v28)
  {
    sub_AB5DC0();
    v24 = 0;
  }

  v25 = sub_AB5DD0();
  (*(*(v25 - 8) + 56))(v8, v24, 1, v25);
  sub_36A00(&qword_E0F9A0, &qword_E0F998);
  sub_AB7100();
  sub_12E1C(v8, &qword_E0F9E0);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_5B39E4(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5 - 8];
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a1;
  v18 = a1[1];
  v19 = v8;
  v9 = *(a1 + 5);
  sub_AB9940();
  sub_C8C3C(&v19, v17);
  sub_C8C3C(&v18, v17);
  sub_307CC(v9);
  sub_5B3FC4(a2, v17);
  v10 = sub_AB9930();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = *(a2 + 16);
  v14 = *(a2 + 48);
  *(v11 + 120) = *(a2 + 32);
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 64);
  *(v11 + 88) = v13;
  sub_5E89D8(0, 0, v6, &unk_B1AD58, v11);
}

uint64_t sub_5B3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = sub_AB9940();
  *(v5 + 96) = sub_AB9930();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_5B3D10;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = sub_AB98B0();

    return _swift_task_switch(sub_5B3E54, v13, v12);
  }
}

uint64_t sub_5B3D10()
{

  v1 = sub_AB98B0();

  return _swift_task_switch(sub_5B3E54, v1, v0);
}

uint64_t sub_5B3E54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5B3ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_AB7A30();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F948) + 36);
  sub_5B2928(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F950) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F958);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_5B407C()
{
  result = qword_E0F990;
  if (!qword_E0F990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F998);
    sub_36A00(&qword_E0F9A0, &qword_E0F998);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F990);
  }

  return result;
}

unint64_t sub_5B4170()
{
  result = qword_E0F9A8;
  if (!qword_E0F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F9A8);
  }

  return result;
}

uint64_t sub_5B41EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_5B42DC()
{
  result = qword_E0F9C8;
  if (!qword_E0F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F9B8);
    sub_36A00(&qword_E0F9D0, &qword_E0F9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F9C8);
  }

  return result;
}

uint64_t sub_5B438C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B4408()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B4480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_5B3B84(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

uint64_t sub_5B4584()
{

  return swift_deallocObject();
}

uint64_t sub_5B45BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t sub_5B4638()
{
  result = qword_E0F9E8;
  if (!qword_E0F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F948);
    sub_36A00(&qword_E0F9F0, &qword_E0F958);
    sub_36A00(&qword_E0F9F8, &qword_E0F950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F9E8);
  }

  return result;
}

uint64_t sub_5B4744(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6 - 8];
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *a2;
  v19 = a2[1];
  v20 = v9;
  v10 = *(a2 + 5);
  sub_AB9940();
  sub_C8C3C(&v20, v18);
  sub_C8C3C(&v19, v18);
  sub_307CC(v10);
  sub_5B3FC4(a3, v18);
  v11 = sub_AB9930();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = *(a3 + 16);
  v15 = *(a3 + 48);
  *(v12 + 120) = *(a3 + 32);
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 64);
  *(v12 + 88) = v14;
  sub_5E89D8(0, 0, v7, &unk_B1ADC8, v12);
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v43 = a7;
  v44 = a8;
  v45 = sub_AB31C0();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v45);
  v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v41 - v23;
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_62DE74(a1, a2, a3, a4, a5, a6, v43, v44, v24, a9 & 1);
    sub_5B513C(v24, v22);
    v25 = v45;
    if ((*(v15 + 48))(v22, 1, v45) == 1)
    {
      sub_4FE5BC(v24);
      v26 = v22;
    }

    else
    {
      v27 = *(v15 + 32);
      v28 = v42;
      v27();
      v29 = [objc_opt_self() sharedApplication];
      sub_AB30F0(v30);
      v32 = v31;
      v33 = [v29 canOpenURL:v31];

      if (v33)
      {
        v34 = v41;
        (*(v15 + 16))(v41, v28, v25);
        v35 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v36 = swift_allocObject();
        (v27)(v36 + v35, v34, v25);
        v37 = sub_AB9260();
        aBlock[4] = sub_5B5234;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1546C;
        aBlock[3] = &block_descriptor_172;
        v38 = _Block_copy(aBlock);

        v39 = [swift_getObjCClassFromMetadata() actionWithTitle:v37 style:0 handler:v38];
        _Block_release(v38);

        (*(v15 + 8))(v28, v25);
        sub_4FE5BC(v24);
        return v39;
      }

      (*(v15 + 8))(v28, v25);
      v26 = v24;
    }

    sub_4FE5BC(v26);
  }

  return 0;
}

void sub_5B4D04()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_AB30F0(v1);
  v3 = v2;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_5B52BC();
  isa = sub_AB8FD0().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id sub_5B4DF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 8))
  {
    v5 = sub_AB9260();
    if (*(a1 + 24))
    {
LABEL_5:
      v6 = sub_AB9260();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 24))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 56);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = *(a1 + 16);
      v21 = *(a1 + 48);
      *(v19 + 104) = *(a1 + 32);
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 64);
      *(v19 + 72) = v20;

      sub_307CC(v11);

      sub_307CC(v11);
      sub_5B3FC4(a1, aBlock);
      v24 = sub_AB9260();
      aBlock[4] = sub_5B5384;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_6_0;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (*(a1 + 48))
      {

        sub_17654(v11);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 40))
        {
          [v29 setPreferredAction:v26];

          sub_17654(v23);
        }

        else
        {

          sub_17654(v23);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_5B513C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B51AC()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_5B5234()
{
  sub_AB31C0();

  sub_5B4D04();
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_5B52BC()
{
  result = qword_E0DE20;
  if (!qword_E0DE20)
  {
    _s3__C25OpenExternalURLOptionsKeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DE20);
  }

  return result;
}

uint64_t sub_5B5314()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B5390()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5B5408(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_5B3B84(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t Alert.Action.init(id:title:role:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a7;
  v15 = sub_AB3470();
  v16 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    a1 = sub_AB3440();
    a2 = v20;
    result = (*(v16 + 8))(v19, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v21 = v23;
  *(a8 + 40) = a6;
  *(a8 + 48) = v21;
  return result;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_17BD0;

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_5B5794()
{
  result = qword_E0FA00;
  if (!qword_E0FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FA00);
  }

  return result;
}

unint64_t sub_5B57EC()
{
  result = qword_E0FA08;
  if (!qword_E0FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FA08);
  }

  return result;
}

uint64_t sub_5B5840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5B5888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore5AlertV6ActionVACSgIeghHgg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_5B5930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v40 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v15 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  *(v15 + 4) = *(a1 + 64);
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  sub_5B66B0(a1, v44);
  v43.receiver = v4;
  v43.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  v19 = sub_AB9260();
  [v18 setTitle:v19];

  if (*(a1 + 40))
  {

    v20 = sub_AB9260();
  }

  else
  {
    v20 = 0;
  }

  [v18 setMessage:{v20, v40, v41}];

  v21 = v18;
  [v21 setPreferredStyle:1];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = *a1;
  *(v23 + 40) = *(a1 + 16);
  v25 = *(a1 + 48);
  *(v23 + 56) = *(a1 + 32);
  *(v23 + 72) = v25;
  *(v23 + 88) = *(a1 + 64);
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  aBlock[4] = sub_5B6788;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_173;
  v26 = _Block_copy(aBlock);
  sub_5B66B0(a1, v44);

  [v21 addTextFieldWithConfigurationHandler:v26];
  _Block_release(v26);
  sub_AB91E0();
  (*(v9 + 16))(v12, v14, v8);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v27 = qword_E71B20;
  sub_AB3550();
  sub_AB9320();
  (*(v9 + 8))(v14, v8);
  v28 = sub_AB9260();

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v28 style:1 handler:0];

  [v21 addAction:v30];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = swift_allocObject();
  v33 = v40;
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v41;

  v34 = sub_AB9260();
  v44[4] = sub_5B67EC;
  v44[5] = v32;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 1107296256;
  v44[2] = sub_1546C;
  v44[3] = &block_descriptor_11;
  v35 = _Block_copy(v44);

  v36 = [v29 actionWithTitle:v34 style:0 handler:v35];
  _Block_release(v35);

  sub_5B67F8(a1);
  [v36 setEnabled:0];
  v37 = *&v21[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction];
  *&v21[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = v36;
  v38 = v36;

  [v21 addAction:v38];
  [v21 setPreferredAction:v38];

  return v21;
}

void sub_5B5F24(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v9 = sub_AB9260();
    sub_501D64(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = sub_AB9260();
  }

  else
  {
    v10 = 0;
  }

  [a1 setPlaceholder:v10];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v6];
}

void sub_5B6060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_5B6828();
    v8 = sub_AB9760();

    if (v8 >> 62)
    {
      if (sub_ABB060())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_ABAE20();
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_5B6200(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    sub_AB92A0();
  }

  v8 = objc_allocWithZone(NSString);
  v9 = sub_AB9260();

  v10 = [v8 initWithString:v9];

  v11 = sub_AB9260();
  v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

  v13 = sub_AB92A0();
  v15 = v14;

  v16 = String.trim()();

  v17 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v16._object & 0x2000000000000000) != 0)
  {
    v17 = (v16._object >> 56) & 0xF;
  }

  v18 = v17 != 0;
  v19 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v19 == 1)
  {

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v19)
  {
    if (v13 == *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v19 == v15)
    {
LABEL_11:

      v18 = 0;
      goto LABEL_14;
    }

    v20 = sub_ABB3C0();

    v18 = v20 ^ 1;
  }

  else
  {

    v18 = 1;
  }

LABEL_14:
  v21 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v21)
  {
    [v21 setEnabled:v18 & 1];
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14TextFieldAlertC13ConfigurationV4ModeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy80_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_5B6604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5B664C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5B66E8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5B6720()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B67AC()
{

  return swift_deallocObject();
}

unint64_t sub_5B6828()
{
  result = qword_E0FAA8[0];
  if (!qword_E0FAA8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_E0FAA8);
  }

  return result;
}

uint64_t sub_5B6874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_5B68D0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = sub_AB97C0();
  v4 = sub_5B8BEC(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t ArtworkVideoReportingController.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_307CC(v1);
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_17654(v5);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v33 = *(v4 - 8);
  __chkstk_darwin(a1);
  v35 = &v25[-v5];
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v3 + 88);

  v34 = a1;
  v32 = v10;
  sub_AB90A0();

  v11 = v36;
  if (v36 == &dword_0 + 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v26 = 4;
LABEL_6:
    v17 = objc_opt_self();
    sub_AB3420();
    isa = sub_AB3370().super.isa;
    (*(v7 + 8))(v9, v6);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v33 + 16))(v35, v34, v4);
    v20 = v30;
    v21 = v31;
    v36 = v19;
    v37 = v30;
    v23 = v28;
    v22 = v29;
    v38 = v31;
    v39 = v29;
    v24 = v27;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    swift_beginAccess();
    v34 = sub_AB9080();
    v11 = v19;
    v15 = v20;
    v16 = v21;
    v14 = v22;
    v12 = v23;
    v13 = v24;
    sub_AB90B0();
    swift_endAccess();
    goto LABEL_7;
  }

  v12 = v40;
  v13 = v41;
  v14 = v39;
  if (!v36)
  {
    v26 = v42;
    v30 = v37;
    v31 = v38;
    v28 = v40;
    v29 = v39;
    v27 = v41;
    goto LABEL_6;
  }

  v15 = v37;
  v16 = v38;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v29[-v6];
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v32 = v12;
    v33 = a1;
    sub_AB90A0();

    v13 = v37;
    if (v37 == &dword_0 + 1)
    {
      v31 = v1;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v14 = 0;
      v13 = 0;
      v15 = 4;
    }

    else
    {
      v35 = v41;
      v36 = v42;
      v14 = v39;
      v34 = v40;
      v16 = v38;
      if (v38)
      {

        v17 = v36;
LABEL_8:

        return;
      }

      v31 = v1;
      v15 = v43;
    }

    v30 = v15;
    v18 = objc_opt_self();
    sub_AB3420();
    isa = sub_AB3370().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v5 + 16))(v7, v33, v4);
    v37 = v13;
    v38 = v20;
    v21 = v34;
    v22 = v35;
    v39 = v14;
    v40 = v34;
    v23 = v36;
    v41 = v35;
    v42 = v36;
    v43 = v30;
    swift_beginAccess();
    sub_AB9080();
    v17 = v13;
    v24 = v20;
    v25 = v14;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    sub_AB90B0();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = v38 - v9;
  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = a2;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    sub_AB90A0();

    v16 = v41;
    v40 = a1;
    if (v41 == &dword_0 + 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    sub_AB3420();
    isa = sub_AB3370().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_5B7610(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    sub_AB9080();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    sub_AB90B0();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

uint64_t sub_5B7610(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = sub_ABB3C0();

    if (v4)
    {
      return result;
    }
  }

  else if (v3 == 3)
  {
  }

  if (v2)
  {
    *(v1 + 48) = 0;
    return result;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return result;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
  return result;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v29 - v7;
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v35 = v8;
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    sub_AB90A0();

    v14 = v36;
    v34 = a1;
    if (v36 == &dword_0 + 1)
    {
      v14 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v15 = 0;
    }

    else
    {
      v31 = v40;
      v32 = v41;
      v15 = v39;
      v30 = v38;
      v29 = v37;
    }

    v16 = objc_opt_self();
    sub_AB3420();
    isa = sub_AB3370().super.isa;
    (*(v10 + 8))(v12, v9);
    v18 = [v16 serverTimeFromDate:isa];

    (*(v6 + 16))(v35, v34, v5);
    v19 = v29;
    v36 = v14;
    v37 = v29;
    v20 = v30;
    v38 = v30;
    v39 = v18;
    v21 = v31;
    v22 = v32;
    v40 = v31;
    v41 = v32;
    v42 = 4;
    swift_beginAccess();
    sub_AB9080();
    v23 = v14;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v22;
    sub_AB90B0();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v29 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v36 = v12;
    sub_AB90A0();

    v13 = v37;
    if (v37 != &dword_0 + 1)
    {
      v34 = v43;
      v29[0] = v42;
      v32 = v40;
      v33 = v41;
      v31 = v39;
      v30 = v38;
      v14 = objc_opt_self();
      sub_AB3420();
      v29[1] = v1;
      v15.super.isa = sub_AB3370().super.isa;
      v16 = a1;
      v35 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v30;
      v37 = v13;
      v38 = v30;
      v20 = v31;
      v22 = v32;
      v21 = v33;
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v18;
      v43 = v34;
      swift_beginAccess();
      sub_AB9080();
      v36 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v21;
      v27 = v18;
      sub_AB90B0();
      swift_endAccess();
      v28 = v35;
      sub_5B81BC(v35);
      _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(v28);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v28 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v35 = v12;
    sub_AB90A0();

    v13 = v36;
    if (v36 != &dword_0 + 1)
    {
      v33 = v42;
      v32 = v41;
      v28[0] = v40;
      v31 = v39;
      v30 = v38;
      v29 = v37;
      v14 = objc_opt_self();
      sub_AB3420();
      v28[1] = v1;
      v15.super.isa = sub_AB3370().super.isa;
      v16 = a1;
      v34 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v29;
      v36 = v13;
      v37 = v29;
      v20 = v30;
      v22 = v31;
      v21 = v32;
      v38 = v30;
      v39 = v31;
      v40 = v18;
      v41 = v32;
      v42 = v33;
      swift_beginAccess();
      sub_AB9080();
      v35 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v18;
      v27 = v21;
      sub_AB90B0();
      swift_endAccess();
      sub_5B81BC(v34);
    }
  }
}

void sub_5B81BC(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v52[-v8];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();

    sub_AB90A0();

    v10 = v80;
    if (v80 != 1)
    {
      v66 = a1;
      v59 = v7;
      v60 = v4;
      v64 = v9;
      v61 = v3;
      v11 = *(&v80 + 1);
      v12 = *(&v81 + 1);
      v13 = v81;
      v14 = *(&v82 + 1);
      v15 = v82;
      v16 = v83;
      v86[0] = v80;
      v86[1] = v81;
      v86[2] = v82;
      v87 = v83;
      swift_beginAccess();
      v17 = *(v1 + 24);
      if (v17)
      {
        v65 = v16;

        v18 = v17(v66);
        v62 = v19;
        v63 = v18;
        v21 = v20;
        sub_17654(v17);
        v22 = v14;
        v23 = v10;
        v24 = v11;
        v25 = v13;
        v26 = v12;
        v27 = v15;
        sub_5B9038(v86, v63, v62, v21, &v76);
        v74 = v78;
        v75[0] = *v79;
        *(v75 + 9) = *&v79[9];
        v72 = v76;
        v73 = v77;
        v28 = *v79;
        if (*v79)
        {
          v80 = v76;
          v81 = v77;
          v82 = v78;
          v83 = *v79;
          v84 = *&v79[8];
          v85 = v79[24];
          if (*&v79[8])
          {
            v55 = v11;
            v56 = v13;
            v57 = v10;
            v58 = v12;
            v62 = v15;
            v63 = v14;
            v29 = *&v79[8];
            [v29 doubleValue];
            v31 = v30;
            [v28 doubleValue];
            v33 = v32;
            if (qword_E0CD88 != -1)
            {
              swift_once();
            }

            v34 = sub_AB4BC0();
            __swift_project_value_buffer(v34, static Logger.motion);
            v36 = v60;
            v35 = v61;
            v37 = *(v60 + 16);
            v38 = v64;
            v37(v64, v66, v61);
            v70[2] = v74;
            v71[0] = v75[0];
            *(v71 + 9) = *(v75 + 9);
            v70[0] = v72;
            v70[1] = v73;
            sub_5B92C0(v70, v69);
            v39 = sub_AB4BA0();
            v40 = sub_AB9F20();
            sub_5B9258(&v76);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v66 = v29;
              v42 = v36;
              v43 = v41;
              v54 = swift_slowAlloc();
              v68 = v54;
              *v43 = 136315650;
              v69[0] = v80;
              v67[1] = v80;
              v53 = v40;
              sub_15F84(v69, v67, &unk_E12FB0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
              v44 = sub_AB9350();
              v46 = sub_500C84(v44, v45, &v68);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2080;
              v47 = v64;
              v37(v59, v64, v35);
              v48 = sub_AB9350();
              v50 = v49;
              (*(v42 + 8))(v47, v35);
              v51 = sub_500C84(v48, v50, &v68);

              *(v43 + 14) = v51;
              *(v43 + 22) = 2048;
              *(v43 + 24) = v31 - v33;
              _os_log_impl(&dword_0, v39, v53, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v43, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v36 + 8))(v38, v35);
            }

            v15 = v62;
            v14 = v63;
            v10 = v57;
            v12 = v58;
            v11 = v55;
            v13 = v56;
          }

          if (qword_E0CC50 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v80);
          sub_5B9258(&v76);
        }
      }

      sub_5B91E4(v10, v11, v13, v12, v15, v14);
    }
  }
}

void _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - v5;
  swift_beginAccess();

  sub_AB90A0();

  v7 = v19;
  if (v19 != &dword_0 + 1)
  {
    v17 = v20;
    v8 = v23;
    v18 = v22;
    v9 = v24;
    v10 = v25;

    if (v8)
    {

      v10 = 3;
    }

    (*(v4 + 16))(v6, a1, v3);
    v12 = v17;
    v11 = v18;
    v19 = v7;
    v20 = v17;
    v21 = 0;
    v22 = v18;
    v23 = 0;
    v24 = 0;
    v25 = v10;
    swift_beginAccess();
    sub_AB9080();
    v13 = v7;
    v14 = v12;
    v15 = v11;
    sub_AB90B0();
    swift_endAccess();
  }
}

uint64_t ArtworkVideoReportingController.deinit()
{
  sub_17654(*(v0 + 24));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_17654(*(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_5B8A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB90D0();

  return sub_5B8A64(a1, v6, a2, a3);
}

unint64_t sub_5B8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_AB91C0();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_5B8BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_AB9800())
  {
    sub_ABB0D0();
    v13 = sub_ABB0C0();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = sub_AB9860();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_AB97E0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_ABAE10();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_5B8A08(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

__n128 __swift_memcpy49_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5B8F68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_5B8FC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_5B9038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 24);
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = *(a1 + 8);
    v42 = v11;
    v12 = *(a1 + 16);
    v13 = *(a1 + 40);
    v39 = *(a1 + 32);
    v40 = v12;
    v38 = v13;
    sub_15F84(&v43, v29, &qword_E0FB38);
    sub_15F84(&v42, v29, &qword_E0FB38);
    sub_15F84(&v41, v29, &qword_E0FB38);
    sub_15F84(&v40, v29, &qword_E0FB38);
    sub_15F84(&v39, v29, &qword_E0FB38);
    sub_15F84(&v38, v29, &qword_E0FB38);
    sub_5B931C(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    sub_5B92C0(&v23, &v22);
    result = sub_5B934C(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_5B931C(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void sub_5B91E4(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_5B9258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Library.Menu.Revision.selected.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_5B9410()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_5B94C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5BB0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5B94FC(uint64_t a1)
{
  v2 = sub_5B97CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5B9538(uint64_t a1)
{
  v2 = sub_5B97CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_5B97CC();
  sub_ABB690();
  v14 = 0;
  sub_ABB260();
  if (!v2)
  {
    v13 = 1;
    sub_ABB270();
    v12 = 2;
    sub_ABB260();
    v11 = *(v3 + 24);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB50);
    sub_5BBD04(&qword_E0FB58);
    sub_ABB280();
    v10[14] = 4;
    sub_ABB270();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_5B97CC()
{
  result = qword_E0FB48;
  if (!qword_E0FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FB48);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_5BB2B4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a1@<X8>)
{
  sub_5BB540(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (qword_E0CBA8 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_AB2B00();
    swift_allocObject();
    sub_AB2AF0();
    sub_5BB8E8();
    v2 = sub_AB2AE0();
    v4 = v3;

    v5 = [objc_opt_self() standardUserDefaults];
    isa = sub_AB3250().super.isa;
    v7 = sub_AB9260();

    [v5 setValue:isa forKey:v7];

    sub_466B8(v2, v4);
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v8 = sub_AB9260();

    [v1 setValue:0 forKey:v8];
  }
}

void sub_5B9CEC(int a1)
{
  v64 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v3 - 8);
  v63 = &v60 - v4;
  v5 = sub_AB36A0();
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3430();
  v66 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v60 - v10;
  if (qword_E0CBA8 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.carMetrics);
  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();
  v15 = os_log_type_enabled(v13, v14);
  v67 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v70 = v17;
    *v16 = 136446210;
    LOBYTE(v74) = a1 & 1;
    v18 = sub_AB9350();
    v20 = v11;
    v21 = sub_500C84(v18, v19, &v70);

    *(v16 + 4) = v21;
    v11 = v20;
    _os_log_impl(&dword_0, v13, v14, "Reporting %{public}s playsSummary event if needed", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v22 = COERCE_DOUBLE(sub_5C7658());
  if (v23)
  {
    v24 = 86400000.0;
  }

  else
  {
    v24 = v22;
  }

  v25 = v67 & 1;
  sub_5BB540(&v70);
  v26 = v72;
  if (v72)
  {
    v27 = v71;
    v28 = v73;
    v74 = v70;
    sub_AB3400();
    sub_AB33D0();
    v30 = v29;
    v31 = *(v66 + 8);
    v31(v11, v7);
    v32 = (v30 - v27) * 1000.0;
    if (v24 < v32)
    {
      sub_AB3400();
      sub_AB33D0();
      v34 = v33;
      v31(v11, v7);
      v35 = v65;
      sub_AB3660();
      v36 = v62;
      sub_AB3400();
      sub_AB35F0();
      v31(v36, v7);
      (*(v61 + 8))(v35, v5);
      sub_AB33D0();
      v38 = v37;
      v31(v11, v7);
      v39 = sub_AB9990();
      v40 = v63;
      (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
      sub_AB9940();
      v41 = sub_AB9930();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = &protocol witness table for MainActor;
      *(v42 + 32) = v74;
      *(v42 + 48) = v27;
      *(v42 + 56) = v26;
      *(v42 + 64) = v28;
      *(v42 + 72) = v38;
      *(v42 + 80) = v25;
      *(v42 + 88) = v34;
      *(v42 + 96) = v64;
      sub_5E89D8(0, 0, v40, &unk_B1B3D0, v42);

      return;
    }

    sub_12E1C(&v70, &qword_E0FC28);
    v43 = sub_AB4BA0();
    v55 = sub_AB9F50();
    if (os_log_type_enabled(v43, v55))
    {
      v56 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69 = v46;
      *v56 = 136446722;
      v68 = v25;
      v57 = sub_AB9350();
      v59 = sub_500C84(v57, v58, &v69);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2050;
      *(v56 + 14) = v32;
      *(v56 + 22) = 2050;
      *(v56 + 24) = v24;
      v50 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v51 = v55;
      v52 = v43;
      v53 = v56;
      v54 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v43 = sub_AB4BA0();
    v44 = sub_AB9F50();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v74 = v46;
      *v45 = 136446210;
      LOBYTE(v69) = v25;
      v47 = sub_AB9350();
      v49 = sub_500C84(v47, v48, &v74);

      *(v45 + 4) = v49;
      v50 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v51 = v44;
      v52 = v43;
      v53 = v45;
      v54 = 12;
LABEL_17:
      _os_log_impl(&dword_0, v52, v51, v50, v53, v54);
      __swift_destroy_boxed_opaque_existential_0(v46);
    }
  }
}

uint64_t sub_5BA3F0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = sub_AB3470();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = sub_AB7CC0();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  sub_AB9940();
  *(v7 + 680) = sub_AB9930();
  v11 = sub_AB98B0();

  return _swift_task_switch(sub_5BA54C, v11, v10);
}

uint64_t sub_5BA54C()
{

  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v35 = static MetricsReportingController.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_AF85E0;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000000B6B8A0;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x8000000000B6B8C0;
  v13 = sub_5C9274(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_52995C(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA58);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_58B7D4();
  *v1 = sub_ABA150();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = sub_AB7CF0();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_AB8FD0().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_AF4EC0;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_AB3440();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    sub_52995C(v22);
    swift_setDeallocating();
    sub_12E1C(v22 + 32, &qword_E0EA58);
    v26 = sub_AB8FD0().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x8000000000B6B880;
    v28[5] = v35;
    v28[6] = sub_5BBC30;
    v28[7] = v15;
    *(v0 + 592) = sub_5BBC88;
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_1B5EB4;
    *(v0 + 584) = &block_descriptor_174;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5BAC04(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_E0CBA8 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, static Logger.carMetrics);
    swift_errorRetain();
    v2 = sub_AB4BA0();
    v3 = sub_AB9F30();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v4 = 136446466;
      v5 = sub_AB9350();
      v7 = sub_500C84(v5, v6, &v21);

      *(v4 + 4) = v7;
      *(v4 + 12) = 2082;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
      v8 = sub_AB9350();
      v10 = sub_500C84(v8, v9, &v21);

      *(v4 + 14) = v10;
      _os_log_impl(&dword_0, v2, v3, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v4, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_E0CBA8 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    __swift_project_value_buffer(v11, static Logger.carMetrics);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v16 = sub_AB9350();
      v18 = sub_500C84(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "✅ Reported %{public}s playsSummary event", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    v19 = [objc_opt_self() standardUserDefaults];
    v20 = sub_AB9260();

    [v19 setValue:0 forKey:v20];
  }
}

uint64_t sub_5BAFC0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.carMetrics);
  __swift_project_value_buffer(v0, static Logger.carMetrics);
  return sub_AB4BB0();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CBA8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_5BB0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000B6B840 == a2 || (sub_ABB3C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000000B6B860 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_5BB2B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FC38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_5B97CC();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = 0;
  sub_ABB1C0();
  v10 = v9;
  v21 = 1;
  v11 = sub_ABB1D0();
  v20 = 2;
  sub_ABB1C0();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FB50);
  v19 = 3;
  sub_5BBD04(&qword_E0FC40);
  sub_ABB1E0();
  v14 = v17[1];
  v18 = 4;
  v15 = sub_ABB1D0();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t sub_5BB540@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_AB9260();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v10 = v15;
  v11 = v16;
  if (!*(&v16 + 1))
  {
    result = sub_12E1C(&v10, &qword_E11F60);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0uLL;
    goto LABEL_9;
  }

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_5BBCB0();
  sub_AB2AB0();
  sub_466B8(v13, v14);

  v6 = v10;
  v8 = *(&v11 + 1);
  v7 = v11;
  v9 = v12;
LABEL_9:
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_5BB8E8()
{
  result = qword_E0FB60;
  if (!qword_E0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FB60);
  }

  return result;
}

unint64_t sub_5BB940()
{
  result = qword_E0FB68;
  if (!qword_E0FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FB68);
  }

  return result;
}

unint64_t sub_5BB9FC()
{
  result = qword_E0FC10;
  if (!qword_E0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FC10);
  }

  return result;
}

unint64_t sub_5BBA54()
{
  result = qword_E0FC18;
  if (!qword_E0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FC18);
  }

  return result;
}

unint64_t sub_5BBAAC()
{
  result = qword_E0FC20;
  if (!qword_E0FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FC20);
  }

  return result;
}

uint64_t sub_5BBB00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_5BBB40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_5BA3F0(v6, v8, a1, v4, v5, v1 + 32, v7);
}

uint64_t sub_5BBC38()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_5BBCB0()
{
  result = qword_E0FC30;
  if (!qword_E0FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FC30);
  }

  return result;
}

uint64_t sub_5BBD04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0FB50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = sub_AB8FF0();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FC48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v30 = sub_AB92A0();
    v31 = v17;
    sub_ABAD10();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = sub_52A468(inited);
    swift_setDeallocating();
    sub_5BC578(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_AB92A0();
      sub_ABAD10();
      v29 = &type metadata for String;
      *&v28 = sub_AB92A0();
      *(&v28 + 1) = v18;
      sub_9ACFC(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_525988(v27, &v30, isUniquelyReferenced_nonNull_native);
      sub_8085C(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == &dword_8 + 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FC48);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_AF85F0;
        sub_AB92A0();
        sub_ABAD10();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = sub_AB92A0();
        v31 = v23;
        sub_ABAD10();
        v24 = sub_AB92A0();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = sub_52A468(v22);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0EA70);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(int a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = sub_ABB580().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_13C80(0, &qword_E0FC50);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_13C80(0, &unk_E10E80);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = sub_ABB660().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_13C80(0, &qword_E0FC50);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_13C80(v8, qword_E0FC58);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_AB92A0();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = sub_ABB580().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = sub_AB92A0();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_13C80(0, &qword_E0FC50);
  if (!swift_dynamicCastMetatype())
  {
    sub_13C80(0, &unk_E10E80);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = sub_AB92A0();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    sub_13C80(0, qword_E0FC58);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t sub_5BC578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0EA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v77 = a8;
  v72 = a6;
  v73 = a7;
  v69 = a5;
  v68 = a4;
  v71 = a12;
  v70 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v18 - 8);
  v75 = &v67[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v21 = __chkstk_darwin(v20 - 8);
  v79 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v78 = &v67[-v24];
  v25 = __chkstk_darwin(v23);
  v76 = &v67[-v26];
  v27 = __chkstk_darwin(v25);
  v74 = &v67[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v67[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v67[-v33];
  __chkstk_darwin(v32);
  v36 = &v67[-v35];
  v37 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v37[19]) = 0;
  v38 = (a9 + v37[20]);
  *v38 = 0;
  v38[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v68;
  sub_36B0C(v69, a9 + v37[7], &qword_E0DC30);
  v39 = v73;
  *(a9 + v37[8]) = v72;
  v40 = (a9 + v37[9]);
  v41 = v77;
  *v40 = v39;
  v40[1] = v41;
  v42 = a9 + v37[10];
  *v42 = v70;
  *(v42 + 16) = a11;
  *(v42 + 24) = v71;
  v77 = a13;
  sub_15F84(a13, v36, &qword_E0E348);
  v43 = type metadata accessor for MetricsEvent.Page(0);
  v44 = *(*(v43 - 1) + 48);
  if (v44(v36, 1, v43) == 1)
  {
    sub_12E1C(v36, &qword_E0E348);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = *v36;
    v46 = v36[1];

    sub_5C95F4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v47 = (a9 + v37[12]);
  *v47 = v45;
  v47[1] = v46;
  v48 = v77;
  sub_15F84(v77, v34, &qword_E0E348);
  if (v44(v34, 1, v43) == 1)
  {
    sub_12E1C(v34, &qword_E0E348);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = *(v34 + 2);
    v50 = *(v34 + 3);

    sub_5C95F4(v34, type metadata accessor for MetricsEvent.Page);
  }

  v51 = (a9 + v37[13]);
  *v51 = v49;
  v51[1] = v50;
  sub_15F84(v48, v31, &qword_E0E348);
  v52 = v44(v31, 1, v43);
  v53 = v75;
  if (v52 == 1)
  {
    sub_12E1C(v31, &qword_E0E348);
    v54 = sub_AB31C0();
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
  }

  else
  {
    sub_15F84(v31 + v43[6], v75, &qword_E0DC30);
    sub_5C95F4(v31, type metadata accessor for MetricsEvent.Page);
  }

  v55 = v78;
  v56 = v76;
  sub_36B0C(v53, a9 + v37[14], &qword_E0DC30);
  v57 = v74;
  sub_15F84(v48, v74, &qword_E0E348);
  if (v44(v57, 1, v43) == 1)
  {
    sub_12E1C(v57, &qword_E0E348);
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + v43[7]);

    sub_5C95F4(v57, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[15]) = v58;
  sub_15F84(v48, v56, &qword_E0E348);
  if (v44(v56, 1, v43) == 1)
  {
    sub_12E1C(v56, &qword_E0E348);
    v59 = 1;
  }

  else
  {
    v59 = *(v56 + v43[9]);
    sub_5C95F4(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[16]) = v59;
  sub_15F84(v48, v55, &qword_E0E348);
  if (v44(v55, 1, v43) == 1)
  {
    sub_12E1C(v55, &qword_E0E348);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = (v55 + v43[8]);
    v60 = *v62;
    v61 = v62[1];

    sub_5C95F4(v55, type metadata accessor for MetricsEvent.Page);
  }

  v63 = (a9 + v37[18]);
  *v63 = v60;
  v63[1] = v61;
  v64 = v79;
  sub_36B0C(v48, v79, &qword_E0E348);
  if (v44(v64, 1, v43) == 1)
  {
    result = sub_12E1C(v64, &qword_E0E348);
    v66 = 2;
  }

  else
  {
    v66 = *(v64 + v43[11]);
    result = sub_5C95F4(v64, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[17]) = v66;
  *(a9 + v37[11]) = a14;
  return result;
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  return &static MetricsReportingController.shared;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(uint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  sub_512C74(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  sub_5B92C0(&v15, &v14);
  sub_5B934C(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_5BD04C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  v3 = __chkstk_darwin(v2 - 8);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - v6;
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = sub_AB3430();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - v18;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  swift_beginAccess();
  v22 = *(v0 + 16);
  v23 = sub_5CE730();

  if (v23)
  {
    return 1;
  }

  v25 = sub_5CEA88();
  v24 = 1;
  if (v25)
  {
    v46 = 0.0;
    v47 = 1;
    v26 = v25;
    sub_AB9A90();

    if (v47 != 1)
    {
      v27 = v46;
      v28 = sub_5CE54C();
      if (v28)
      {
        v46 = 0.0;
        v47 = 1;
        v29 = v28;
        sub_AB9A90();

        if ((v47 & 1) == 0)
        {
          sub_AB3420();
          v30 = *(v1 + 16);
          sub_5CE7D8(v7);
          sub_36B0C(v7, v9, &qword_E0FF60);

          v31 = v44;
          v32 = v45;
          if ((*(v44 + 48))(v9, 1, v45))
          {
            sub_12E1C(v9, &qword_E0FF60);
            v33 = v32;
            v34 = v31;
          }

          else
          {
            (*(v31 + 16))(v13, v9, v32);
            sub_12E1C(v9, &qword_E0FF60);
            sub_AB3360();
            v35 = v13;
            v36 = *(v31 + 8);
            v36(v35, v32);
            (*(v31 + 32))(v19, v16, v32);
            v37 = sub_AB3390();
            v36(v19, v32);
            v33 = v32;
            v34 = v31;
            if (v37)
            {
              v36(v21, v32);
              return 1;
            }
          }

          v38 = sub_5C9088(0x20000000000001uLL);
          if (v38 == 0x20000000000000)
          {
            if (v27 >= 1.0)
            {
LABEL_17:
              (*(v34 + 16))(v7, v21, v33);
              v24 = 1;
              (*(v34 + 56))(v7, 0, 1, v33);
              swift_beginAccess();
              v40 = v43;
              sub_15F84(v7, v43, &qword_E0FF60);
              sub_5CE8F4(v40);
              swift_endAccess();
              sub_12E1C(v7, &qword_E0FF60);
              (*(v34 + 8))(v21, v33);
              return v24;
            }
          }

          else
          {
            v39 = vcvtd_n_f64_u64(v38, 0x35uLL);
            if (v39 > 0.0 && v39 <= v27)
            {
              goto LABEL_17;
            }
          }

          (*(v34 + 8))(v21, v33);
          return 0;
        }
      }
    }
  }

  return v24;
}

uint64_t sub_5BD534()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  v3 = __chkstk_darwin(v2 - 8);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - v6;
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = sub_AB3430();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - v18;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  swift_beginAccess();
  v22 = *(v0 + 16);
  v23 = sub_5CEE40();

  if (v23)
  {
    return 1;
  }

  v25 = sub_5C8FAC();
  v24 = 1;
  if (v25)
  {
    v46 = 0.0;
    v47 = 1;
    v26 = v25;
    sub_AB9A90();

    if (v47 != 1)
    {
      v27 = v46;
      v28 = sub_5C8FAC();
      if (v28)
      {
        v46 = 0.0;
        v47 = 1;
        v29 = v28;
        sub_AB9A90();

        if ((v47 & 1) == 0)
        {
          sub_AB3420();
          v30 = *(v1 + 16);
          sub_5CEEE8(v7);
          sub_36B0C(v7, v9, &qword_E0FF60);

          v31 = v44;
          v32 = v45;
          if ((*(v44 + 48))(v9, 1, v45))
          {
            sub_12E1C(v9, &qword_E0FF60);
            v33 = v32;
            v34 = v31;
          }

          else
          {
            (*(v31 + 16))(v13, v9, v32);
            sub_12E1C(v9, &qword_E0FF60);
            sub_AB3360();
            v35 = v13;
            v36 = *(v31 + 8);
            v36(v35, v32);
            (*(v31 + 32))(v19, v16, v32);
            v37 = sub_AB3390();
            v36(v19, v32);
            v33 = v32;
            v34 = v31;
            if (v37)
            {
              v36(v21, v32);
              return 1;
            }
          }

          v38 = sub_5C9088(0x20000000000001uLL);
          if (v38 == 0x20000000000000)
          {
            if (v27 >= 1.0)
            {
LABEL_17:
              (*(v34 + 16))(v7, v21, v33);
              v24 = 1;
              (*(v34 + 56))(v7, 0, 1, v33);
              swift_beginAccess();
              v40 = v43;
              sub_15F84(v7, v43, &qword_E0FF60);
              sub_5CF004(v40);
              swift_endAccess();
              sub_12E1C(v7, &qword_E0FF60);
              (*(v34 + 8))(v21, v33);
              return v24;
            }
          }

          else
          {
            v39 = vcvtd_n_f64_u64(v38, 0x35uLL);
            if (v39 > 0.0 && v39 <= v27)
            {
              goto LABEL_17;
            }
          }

          (*(v34 + 8))(v21, v33);
          return 0;
        }
      }
    }
  }

  return v24;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != &dword_4)
    {
      if (v2 == (&dword_4 + 3))
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != (&dword_0 + 1))
    {
      if (v2 == (&dword_0 + 2))
      {

        return 3;
      }

LABEL_8:
      sub_AB9F30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_AF4EC0;
      [a1 itemType];
      _s3__C33MPModelStoreBrowseContentItemTypeOMa_0(0);
      v5 = sub_AB9350();
      v7 = v6;
      *(v4 + 56) = &type metadata for String;
      *(v4 + 64) = sub_5C2204();
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      sub_13C80(0, &qword_E15F40);
      v8 = sub_ABA980();
      sub_AB4A90();

      return 27;
    }

    return 0;
  }
}

uint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5BDF34@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_5BDF64@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for MetricsEvent.Page(0);
  result = sub_36B0C(a5, a9 + v18[6], &qword_E0DC30);
  *(a9 + v18[7]) = a6;
  v20 = (a9 + v18[8]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v18[9]) = a10 & 1;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v18[11]) = a13;
  return result;
}

uint64_t static MetricsEvent.Page.contextualActionMenu(storeID:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x8000000000B6B9C0;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = sub_AB31C0();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = 0xD000000000000014;
  a3[3] = 0x8000000000B6B9C0;
  *(a3 + v6[7]) = 0;
  v9 = (a3 + v6[8]);
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v6[9]) = 1;
  v10 = (a3 + v6[10]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v6[11]) = 2;
}

uint64_t sub_5BE160()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryLanding);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x7972617262694CLL;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0x676E69646E614CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE2A0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE3C8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for MetricsEvent.Page(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_5BE440@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MetricsEvent.Page(0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_9D330(v6, a3);
}

uint64_t sub_5BE4A0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE5E8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000000B6BEE0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE730()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000000B6BEC0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE878()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x8000000000B6BEA0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BE9C0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000000B6BE80;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BEB08()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000000B6BE60;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BEC50()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000000B6BE40;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BED98()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000000B6BE20;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BEEE0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.librarySongsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x8000000000B6BE00;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF028()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x8000000000B6BDE0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF170()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x8000000000B6BDC0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF2B8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_5BF400()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_5BF54C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF69C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF7E8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000000B6BDA0;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BF934()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.playlistCreation);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_5BFA7C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.playlistPicker);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = sub_AB31C0();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = v1[1];
  v19 = *v1;
  v8 = v1[2];
  v7 = v1[3];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  sub_15F84(v1 + v9[6], v5, &qword_E0DC30);
  v10 = *(v1 + v9[7]);
  v11 = (v1 + v9[10]);
  v12 = v11[1];
  v20 = *v11;
  v13 = type metadata accessor for MetricsPageProperties();
  v14 = v13[6];
  v15 = sub_AB31C0();
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = &a1[v13[8]];
  *a1 = v19;
  *(a1 + 1) = v6;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;

  result = sub_5C9584(v5, &a1[v14]);
  *&a1[v16] = v10;
  *v17 = v20;
  *(v17 + 1) = v12;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1AB70;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  return v4 != 0;
}

Swift::Int sub_5BFDA4()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_5BFE10()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_5BFE60@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D1ABA8;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_36B0C(a5, a9 + v29[7], &qword_E0DC30);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = sub_36B0C(a17, a9 + v29[14], &qword_E0DC30);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties();
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  sub_15F84(a13 + v21, a9 + v22[14], &qword_E0DC30);
  v23 = *(a13 + *(v20 + 28));

  sub_5C95F4(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_36B0C(a5, a9 + v22[7], &qword_E0DC30);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5C0B50(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

Swift::Int sub_5C0BFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C0C80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_AB93F0();
}

Swift::Int sub_5C0CF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C0D58@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_5C0D88@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        sub_ABB5D0(v3);
        return;
    }
  }

  sub_ABB5D0(0xAuLL);

  sub_AB93F0();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return sub_ABB610();
}

Swift::Int sub_5C0F40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_ABB5C0();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_ABB610();
}

Swift::Int sub_5C0F94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_ABB5C0();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_ABB610();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_513BF8(v4, a2, a3, a4, 2);
      v4 = sub_529834(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_529834(&off_D1A2F8);
      v7 = &unk_D1A318;
    }

LABEL_10:
    sub_12E1C(v7, &qword_E0FCF0);
    return v4;
  }

  if (!BYTE1(a4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FA0);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_AF4EC0;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_529834(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_529834(&off_D1A298);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCF0);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = sub_AB92A0();
  v26 = v25;

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FA0);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_AF8820;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = sub_5CBD70(v4);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v28);
  *(v27 + 56) = v29;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v30 = 16718;
  if (v26)
  {
    v30 = v23;
  }

  v31 = 0xE200000000000000;
  if (v26)
  {
    v31 = v26;
  }

  *(v27 + 80) = v30;
  *(v27 + 88) = v31;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (a3)
  {
    v33 = a3;
  }

  *(v27 + 112) = v32;
  *(v27 + 120) = v33;
  v4 = sub_529834(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCF0);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x8000000000B48D50 == v34)
    {
    }

    else
    {
      v37 = sub_ABB3C0();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_52568C(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  sub_5C96A8(&v17, v16);
  sub_5C96E0(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.messageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LibraryModelRequest.scopedContainers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MetricsEvent.Dialog.subjectID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.targetID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MetricsEvent.Dialog.targetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65636E61436B4FLL;
  }

  else
  {
    return 27471;
  }
}

uint64_t sub_5C1810(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v3 = 27471;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v5 = 27471;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_5C18AC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C1924()
{
  sub_AB93F0();
}

Swift::Int sub_5C1988()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_5C1A08(uint64_t *a1@<X8>)
{
  v2 = 27471;
  if (*v1)
  {
    v2 = 0x6C65636E61436B4FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_5C1A48(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_ABB140(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Dialog.ActionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C436C65636E6163;
  }

  else
  {
    return 27503;
  }
}

uint64_t sub_5C1AD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C436C65636E6163;
  }

  else
  {
    v3 = 27503;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED000064656B6369;
  }

  if (*a2)
  {
    v5 = 0x6C436C65636E6163;
  }

  else
  {
    v5 = 27503;
  }

  if (*a2)
  {
    v6 = 0xED000064656B6369;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_5C1B78()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C1BFC()
{
  sub_AB93F0();
}

Swift::Int sub_5C1C6C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_5C1CF8(uint64_t *a1@<X8>)
{
  v2 = 27503;
  if (*v1)
  {
    v2 = 0x6C436C65636E6163;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED000064656B6369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MetricsEvent.ComponentRender.PreloadStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819047270;
  v2 = 0x6C6F686563616C70;
  if (a1 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (a1)
  {
    v1 = 0x6C616974726170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_5C1DD0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C1EA0()
{
  sub_AB93F0();
}

Swift::Int sub_5C1F5C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5C2028@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_5C2058(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xEB00000000726564;
  v5 = 0x6C6F686563616C70;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x6C616974726170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *MetricsEvent.ComponentRender.componentMotionActivationTime.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_5C21D4()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController()) init];
  static MetricsReportingController.shared = result;
  return result;
}

unint64_t sub_5C2204()
{
  result = qword_E0FCE8;
  if (!qword_E0FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FCE8);
  }

  return result;
}

id static MetricsReportingController.shared.getter()
{
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v1 = static MetricsReportingController.shared;

  return v1;
}

void MetricsReportingController.recordPerformanceMetrics(for:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 performanceMetrics];
    if (v1)
    {
      v2 = v1;
      sub_5C9710(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_5C9B60(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v74 = a4;
  v71 = a5;
  v72 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v17 = v16;
    if (a3)
    {
      v18 = sub_AB9260();
    }

    else
    {
      v18 = 0;
    }

    [v16 setPageContext:{v18, v71, v72}];

    v20 = *a1;
    v19 = a1[1];
    v21 = sub_AB9260();
    v22 = sub_AB9260();
    [v16 setProperty:v21 forBodyKey:v22];

    v24 = a1[2];
    v23 = a1[3];
    v25 = sub_AB9260();
    [v16 setPageType:v25];

    v73 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v26 = *&v75[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v26 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00), v27 = swift_allocObject(), *(v27 + 16) = xmmword_AF85F0, *(v27 + 32) = v24, *(v27 + 40) = v23, *(v27 + 88) = &type metadata for String, *(v27 + 56) = &type metadata for String, *(v27 + 64) = v20, *(v27 + 72) = v19, , , v28 = v26, isa = sub_AB9740().super.isa, , v30 = [v28 compoundStringWithElements:isa], v28, isa, !v30))
    {
      v30 = 0;
    }

    [v16 setPageDescription:v30];

    v31 = type metadata accessor for MetricsEvent.Page(0);
    sub_15F84(a1 + v31[6], v10, &qword_E0DC30);
    v32 = sub_AB31C0();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v10, 1, v32) == 1)
    {
      sub_12E1C(v10, &qword_E0DC30);
      v34 = 0;
    }

    else
    {
      _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
      (*(v33 + 8))(v10, v32);
      v34 = sub_AB9260();
    }

    [v16 setPageURL:v34];

    v35 = *(a1 + v31[7]);
    if (v35)
    {
      v36.super.isa = sub_AB8FD0().super.isa;
    }

    else
    {
      v36.super.isa = 0;
    }

    v37 = sub_AB9260();
    [v16 setProperty:v36.super.isa forBodyKey:v37];

    swift_unknownObjectRelease();
    v38 = (a1 + v31[8]);
    v39 = v38[1];
    v40 = &selRef_isMovingFromParentViewController;
    if (v39)
    {
      v41 = *v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v41;
      *(inited + 56) = v39;

      sub_52995C(inited);
      swift_setDeallocating();
      v40 = &selRef_isMovingFromParentViewController;
      sub_12E1C(inited + 32, &qword_E0EA58);
      v43 = sub_AB8FD0().super.isa;

      [v16 addPropertiesWithDictionary:v43];
    }

    if ((*(a1 + v31[9]) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_AF4EC0;
      *(v44 + 32) = 0x7073694465676170;
      v45 = v44 + 32;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 40) = 0xEF6570795479616CLL;
      *(v44 + 48) = 0x7765695664726163;
      *(v44 + 56) = 0xE800000000000000;
      sub_52995C(v44);
      swift_setDeallocating();
      sub_12E1C(v45, &qword_E0EA58);
      v46 = sub_AB8FD0().super.isa;
      v40 = &selRef_isMovingFromParentViewController;

      [v16 addPropertiesWithDictionary:v46];
    }

    v47 = *(a1 + v31[11]);
    if (v47 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_AF4EC0;
      *(v48 + 32) = 0xD000000000000014;
      v49 = v48 + 32;
      *(v48 + 40) = 0x8000000000B6B9E0;
      *(v48 + 72) = &type metadata for Bool;
      *(v48 + 48) = v47 & 1;
      sub_52995C(v48);
      swift_setDeallocating();
      sub_12E1C(v49, &qword_E0EA58);
      v50 = sub_AB8FD0().super.isa;
      v40 = &selRef_isMovingFromParentViewController;

      [v16 addPropertiesWithDictionary:v50];
    }

    if (v35)
    {
      if (*(v35 + 16))
      {
        v51 = sub_52215C(0x4974655361746164, 0xE900000000000064);
        if (v52)
        {
          v53 = (*(v35 + 56) + 16 * v51);
          v55 = *v53;
          v54 = v53[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
          v56 = swift_initStackObject();
          *(v56 + 16) = xmmword_AF4EC0;
          *(v56 + 32) = 0x4974655361746164;
          *(v56 + 72) = &type metadata for String;
          *(v56 + 40) = 0xE900000000000064;
          *(v56 + 48) = v55;
          *(v56 + 56) = v54;

          sub_52995C(v56);
          swift_setDeallocating();
          v40 = &selRef_isMovingFromParentViewController;
          sub_12E1C(v56 + 32, &qword_E0EA58);
          v57 = sub_AB8FD0().super.isa;

          [v16 addPropertiesWithDictionary:v57];
        }
      }
    }

    if (v74 != 2 && sub_5C9380(v74 & 1, v71, v72))
    {
      v58 = sub_AB8FD0().super.isa;

      [v16 v40[447]];
    }

    v59 = (a1 + v31[10]);
    v60 = v59[1];
    if (v60)
    {
      v61 = *v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
      v62 = swift_initStackObject();
      *(v62 + 32) = 0x7255666552747865;
      *(v62 + 16) = xmmword_AF4EC0;
      *(v62 + 72) = &type metadata for String;
      *(v62 + 40) = 0xE90000000000006CLL;
      *(v62 + 48) = v61;
      *(v62 + 56) = v60;

      sub_52995C(v62);
      swift_setDeallocating();
      sub_12E1C(v62 + 32, &qword_E0EA58);
      v63 = sub_AB8FD0().super.isa;

      [v16 v40[447]];
    }

    v64 = v75;
    v65 = *&v75[v73];
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v16;
    aBlock[4] = sub_5C9BD0;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_175;
    v67 = _Block_copy(aBlock);
    v68 = v65;
    v69 = v64;
    v70 = v16;

    [v70 setStandardPropertiesWith:v68 completionHandler:v67];
    _Block_release(v67);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v57 = a6;
  v61 = a5;
  v62 = a2;
  v60 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD08);
  v10 = __chkstk_darwin(v9 - 8);
  v58 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = sub_AB7CC0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v23 = sub_ABA150();
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v24 = sub_AB7CF0();
  (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v25 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v56 = a7;
    if (a4)
    {
      v26 = sub_AB9260();
    }

    else
    {
      v26 = 0;
    }

    v27 = v62;
    [v25 setPageContext:v26];

    sub_15F84(v27, v19, &qword_E0FD08);
    v28 = type metadata accessor for MetricsPageProperties();
    v29 = *(*(v28 - 8) + 48);
    if (v29(v19, 1, v28) == 1)
    {
      sub_12E1C(v19, &qword_E0FD08);
      v30 = 0;
    }

    else
    {

      sub_5C95F4(v19, type metadata accessor for MetricsPageProperties);
      v30 = sub_AB9260();
    }

    v31 = sub_AB9260();
    [v25 setProperty:v30 forBodyKey:v31];
    swift_unknownObjectRelease();

    sub_15F84(v27, v17, &qword_E0FD08);
    if (v29(v17, 1, v28) == 1)
    {
      sub_12E1C(v17, &qword_E0FD08);
      v32 = 0;
    }

    else
    {

      sub_5C95F4(v17, type metadata accessor for MetricsPageProperties);
      v32 = sub_AB9260();
    }

    [v25 setPageType:v32];

    v59 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v33 = *&v63[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v33)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_AF85F0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    *(v34 + 56) = v35;
    sub_15F84(v27, v14, &qword_E0FD08);
    if (v29(v14, 1, v28) == 1)
    {
      v36 = v33;
      sub_12E1C(v14, &qword_E0FD08);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *(v14 + 2);
      v38 = *(v14 + 3);
      v39 = v33;

      sub_5C95F4(v14, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = v35;
    v40 = v58;
    sub_15F84(v62, v58, &qword_E0FD08);
    if (v29(v40, 1, v28) == 1)
    {
      sub_12E1C(v40, &qword_E0FD08);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = *v40;
      v42 = v40[1];

      sub_5C95F4(v40, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 64) = v41;
    *(v34 + 72) = v42;
    isa = sub_AB9740().super.isa;

    v44 = [v33 compoundStringWithElements:isa];

    if (!v44)
    {
LABEL_19:
      v44 = 0;
    }

    [v25 setPageDescription:v44];

    [v25 setEventType:SSMetricsEventTypeImpressions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E418);
    *(inited + 48) = v60;

    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E0EA58);
    v46 = sub_AB8FD0().super.isa;

    [v25 addPropertiesWithDictionary:v46];

    if (v61 != 2)
    {
      if (sub_5C9380(v61 & 1, v57, v56))
      {
        v47 = sub_AB8FD0().super.isa;

        [v25 addPropertiesWithDictionary:v47];
      }
    }

    v48 = v63;
    v49 = *&v63[v59];
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v25;
    aBlock[4] = sub_5C9C20;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_18_2;
    v51 = _Block_copy(aBlock);
    v52 = v49;
    v53 = v48;
    v54 = v25;

    [v54 setStandardPropertiesWith:v52 completionHandler:v51];
    _Block_release(v51);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5C3614(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_13C80(0, &qword_E103C0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a1;
  v9 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a4, v7);
}

void MetricsReportingController.recordSearchEvent(_:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = sub_AB9260();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:v17];

    v18 = type metadata accessor for MetricsEvent.Click(0);
    v19 = a1 + v18[10];
    v20 = *(v19 + 24);
    if (v20 >> 8 <= 0xFE && (v21 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v19, *(v19 + 8), *(v19 + 16), v20)) != 0)
    {
      aBlock[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD10);
      v22 = sub_ABB3A0();
      sub_12E1C(aBlock, &qword_E0FD10);
    }

    else
    {
      v22 = 0;
    }

    [v15 setActionDetails:v22];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v23 = sub_AB9260();

    [v15 setActionType:v23];

    v24 = sub_AB9260();
    [v15 setTargetIdentifier:v24];

    sub_15F84(a1 + v18[7], v9, &qword_E0DC30);
    v25 = sub_AB31C0();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v9, 1, v25) == 1)
    {
      sub_12E1C(v9, &qword_E0DC30);
      v27 = 0;
    }

    else
    {
      _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
      (*(v26 + 8))(v9, v25);
      v27 = sub_AB9260();
    }

    [v15 setTargetURL:v27];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v28 = sub_AB9260();

    [v15 setTargetType:v28];

    if (*(a1 + v18[13] + 8))
    {
      v29 = sub_AB9260();
    }

    else
    {
      v29 = 0;
    }

    [v15 setPageType:v29];

    v30 = (a1 + v18[9]);
    v31 = v30[1];
    if (v31 == 12)
    {
      v32 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(*v30, v31);
      v32 = sub_AB9260();
    }

    v33 = sub_AB9260();
    [v15 setProperty:v32 forBodyKey:v33];

    swift_unknownObjectRelease();
    if (*(a1 + v18[15]))
    {
      v34.super.isa = sub_AB8FD0().super.isa;
    }

    else
    {
      v34.super.isa = 0;
    }

    v35 = sub_AB9260();
    [v15 setProperty:v34.super.isa forBodyKey:v35];

    swift_unknownObjectRelease();
    if (*(a1 + v18[12] + 8))
    {
      v36 = sub_AB9260();
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_AB9260();
    [v15 setProperty:v36 forBodyKey:v37];

    swift_unknownObjectRelease();
    isa = *(a1 + v18[8]);
    if (isa)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
      isa = sub_AB9740().super.isa;
    }

    v39 = sub_AB9260();
    [v15 setProperty:isa forBodyKey:v39];

    swift_unknownObjectRelease();
    if (*(a1 + v18[18] + 8))
    {
      v40 = sub_AB9260();
    }

    else
    {
      v40 = 0;
    }

    [v15 setSearchTerm:v40];

    v41 = *&v4[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v42 = swift_allocObject();
    *(v42 + 16) = v4;
    *(v42 + 24) = v15;
    aBlock[4] = sub_5C9C58;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_24_1;
    v43 = _Block_copy(aBlock);
    v44 = v41;
    v45 = v4;
    v46 = v15;

    [v46 setStandardPropertiesWith:v44 completionHandler:v43];
    _Block_release(v43);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v102 = a5;
  v103 = a6;
  v110 = a4;
  v104 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v101 - v14;
  v16 = sub_AB7CC0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v19 = sub_ABA150();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_AB7CF0();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    if (qword_E0CC58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v109 = v13;
  v21 = sub_AB4BC0();
  __swift_project_value_buffer(v21, qword_E71D40);
  v22 = sub_AB4BA0();
  v23 = sub_AB9F50();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "[MetricsReportingController] Recording click event", v24, 2u);
  }

  v25 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v26 = sub_AB9260();
  [v25 setTargetIdentifier:v26];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v27 = sub_AB9260();

  [v25 setTargetType:v27];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v28 = sub_AB9260();

  [v25 setActionType:v28];

  v29 = type metadata accessor for MetricsEvent.Click(0);
  sub_15F84(a1 + v29[7], v15, &qword_E0DC30);
  v30 = sub_AB31C0();
  v31 = *(v30 - 8);
  v106 = *(v31 + 48);
  v107 = v31 + 48;
  v32 = v106(v15, 1, v30);
  v108 = v30;
  v101 = v31;
  if (v32 == 1)
  {
    sub_12E1C(v15, &qword_E0DC30);
    v33 = 0;
  }

  else
  {
    _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    (*(v31 + 8))(v15, v30);
    v33 = sub_AB9260();
  }

  [v25 setTargetURL:{v33, v101}];

  isa = *(a1 + v29[8]);
  v35 = v25;
  v36 = v35;
  if (isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
    isa = sub_AB9740().super.isa;
  }

  v37 = sub_AB9260();
  [v35 setProperty:isa forBodyKey:v37];
  swift_unknownObjectRelease();

  v38 = (a1 + v29[9]);
  v39 = v38[1];
  if (v39 == 12)
  {
    v40 = 0;
  }

  else
  {
    MetricsEvent.Click.ActionContext.rawValue.getter(*v38, v39);
    v40 = sub_AB9260();
  }

  v41 = sub_AB9260();
  [v35 setProperty:v40 forBodyKey:v41];

  swift_unknownObjectRelease();
  v42 = a1 + v29[10];
  v43 = *(v42 + 24);
  if (v43 >> 8 <= 0xFE && (v44 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v42, *(v42 + 8), *(v42 + 16), v43)) != 0)
  {
    aBlock[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD10);
    v45 = sub_ABB3A0();
    sub_12E1C(aBlock, &qword_E0FD10);
  }

  else
  {
    v45 = 0;
  }

  [v35 setActionDetails:v45];
  swift_unknownObjectRelease();
  v46 = *(a1 + v29[11]);
  v111 = v7;
  if (v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18);
    v46 = sub_AB9740().super.isa;
  }

  v105 = a3;
  [v35 setImpressions:v46];
  swift_unknownObjectRelease();
  if (*(a1 + v29[19]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v48 = inited + 32;
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(v48, &qword_E0EA58);
    v49 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v49];
  }

  v50 = (a1 + v29[20]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_AF4EC0;
    *(v53 + 32) = 0xD000000000000013;
    *(v53 + 72) = &type metadata for String;
    *(v53 + 40) = 0x8000000000B5B050;
    *(v53 + 48) = v52;
    *(v53 + 56) = v51;

    sub_52995C(v53);
    swift_setDeallocating();
    sub_12E1C(v53 + 32, &qword_E0EA58);
    v54 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v54];
  }

  v55 = (a1 + v29[18]);
  v56 = v55[1];
  if (v56)
  {
    v57 = *v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    v58 = swift_initStackObject();
    *(v58 + 32) = 0x6554686372616573;
    *(v58 + 16) = xmmword_AF4EC0;
    *(v58 + 72) = &type metadata for String;
    *(v58 + 40) = 0xEA00000000006D72;
    *(v58 + 48) = v57;
    *(v58 + 56) = v56;

    sub_52995C(v58);
    swift_setDeallocating();
    sub_12E1C(v58 + 32, &qword_E0EA58);
    v59 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v59];
  }

  v60 = v105;
  if (v110 != 2 && sub_5C9380(v110 & 1, v102, v103))
  {
    v61 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v61];
  }

  v62 = v111;
  if (v60)
  {
    v63 = sub_AB9260();
  }

  else
  {
    v63 = 0;
  }

  [v35 setPageContext:v63];

  v64 = (a1 + v29[12]);
  v66 = *v64;
  v65 = v64[1];
  v67 = v35;
  if (v65)
  {
    v68 = sub_AB9260();
    v67 = sub_AB9260();
    [v35 setProperty:v68 forBodyKey:v67];
  }

  v69 = (a1 + v29[13]);
  v71 = *v69;
  v70 = v69[1];
  v72 = v35;
  if (v70)
  {
    v72 = sub_AB9260();
    [v35 setPageType:v72];
  }

  v110 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v73 = *&v62[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v73 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00), v74 = swift_allocObject(), *(v74 + 16) = xmmword_AF85F0, v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0), *(v74 + 32) = v71, *(v74 + 40) = v70, *(v74 + 88) = v75, *(v74 + 56) = v75, *(v74 + 64) = v66, *(v74 + 72) = v65, , v76 = v73, , v77 = sub_AB9740().super.isa, , v78 = [v76 compoundStringWithElements:v77], v76, v77, !v78))
  {
    v78 = 0;
  }

  [v35 setPageDescription:v78];

  v79 = v109;
  sub_15F84(a1 + v29[14], v109, &qword_E0DC30);
  v80 = v108;
  if (v106(v79, 1, v108) == 1)
  {
    sub_12E1C(v79, &qword_E0DC30);
    v81 = 0;
  }

  else
  {
    _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    (*(v101 + 8))(v79, v80);
    v81 = sub_AB9260();
  }

  v82 = v111;
  [v35 setPageURL:v81];

  if (*(a1 + v29[15]))
  {
    v83.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v83.super.isa = 0;
  }

  v84 = sub_AB9260();
  [v35 setProperty:v83.super.isa forBodyKey:v84];

  swift_unknownObjectRelease();
  if ((*(a1 + v29[16]) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_AF4EC0;
    *(v85 + 32) = 0x7073694465676170;
    v86 = v85 + 32;
    *(v85 + 72) = &type metadata for String;
    *(v85 + 40) = 0xEF6570795479616CLL;
    *(v85 + 48) = 0x7765695664726163;
    *(v85 + 56) = 0xE800000000000000;
    sub_52995C(v85);
    swift_setDeallocating();
    sub_12E1C(v86, &qword_E0EA58);
    v87 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v87];
  }

  v88 = *(a1 + v29[17]);
  if (v88 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_AF4EC0;
    *(v89 + 32) = 0xD000000000000014;
    v90 = v89 + 32;
    *(v89 + 40) = 0x8000000000B6B9E0;
    *(v89 + 72) = &type metadata for Bool;
    *(v89 + 48) = v88 & 1;
    sub_52995C(v89);
    swift_setDeallocating();
    sub_12E1C(v90, &qword_E0EA58);
    v91 = sub_AB8FD0().super.isa;

    [v35 addPropertiesWithDictionary:v91];
  }

  v92 = objc_allocWithZone(NSNumber);
  v93 = v35;
  v94 = [v92 initWithInteger:5];
  [v93 setEventVersion:v94];

  v95 = *&v82[v110];
  v96 = swift_allocObject();
  *(v96 + 16) = v82;
  *(v96 + 24) = v93;
  aBlock[4] = sub_5C9C90;
  aBlock[5] = v96;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_30_3;
  v97 = _Block_copy(aBlock);
  v98 = v95;
  v99 = v82;
  v100 = v93;

  [v100 setStandardPropertiesWith:v98 completionHandler:v97];
  _Block_release(v97);
}