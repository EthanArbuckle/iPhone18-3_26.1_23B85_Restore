uint64_t sub_8F130(void *a1)
{
  _objc_retain(a1);
  sub_9745C();
  sub_974C0();
  return sub_99B60();
}

uint64_t sub_8F22C(uint64_t a1, void *a2)
{
  v57 = a1;
  v63 = a2;
  v65 = sub_96614;
  v69 = sub_966C4;
  v71 = sub_96648;
  v73 = sub_9667C;
  v76 = sub_96710;
  v51 = &protocol witness table for MainActor;
  v52 = &unk_9C2C0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  v53 = 0;
  v2 = sub_22FC(&unk_B5960, &qword_9BC48);
  v54 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v55 = &v31 - v54;
  v62 = sub_993B0();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v58 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v57);
  v4 = &v31 - v58;
  v59 = &v31 - v58;
  v91 = v3;
  v90 = v5;
  v89 = v6;
  v7 = sub_81788();
  (*(v60 + 16))(v4, v7, v62);
  _objc_retain(v63);
  v67 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v63;
  v80 = sub_99390();
  v81 = sub_99D60();
  v64 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v66 = 32;
  v8 = swift_allocObject();
  v9 = v68;
  v70 = v8;
  *(v8 + 16) = v65;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v70;
  v77 = v10;
  *(v10 + 16) = v69;
  *(v10 + 24) = v11;
  v79 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v75 = sub_99F80();
  v78 = v12;

  v13 = v72;
  v14 = v78;
  *v78 = v71;
  v14[1] = v13;

  v15 = v74;
  v16 = v78;
  v78[2] = v73;
  v16[3] = v15;

  v17 = v77;
  v18 = v78;
  v78[4] = v76;
  v18[5] = v17;
  sub_29D0();

  if (os_log_type_enabled(v80, v81))
  {
    v19 = v53;
    v44 = sub_99E40();
    v43 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v45 = sub_F444(0);
    v46 = sub_F444(1);
    v47 = &v86;
    v86 = v44;
    v48 = &v85;
    v85 = v45;
    v49 = &v84;
    v84 = v46;
    sub_F498(2, &v86);
    sub_F498(1, v47);
    v82 = v71;
    v83 = v72;
    sub_F4AC(&v82, v47, v48, v49);
    v50 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v82 = v73;
      v83 = v74;
      sub_F4AC(&v82, &v86, &v85, &v84);
      v42 = 0;
      v82 = v76;
      v83 = v77;
      sub_F4AC(&v82, &v86, &v85, &v84);
      _os_log_impl(&dword_0, v80, v81, "Received rollbackDidFinish event with descriptor: %s", v44, 0xCu);
      sub_F5B0(v45);
      sub_F5B0(v46);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v80);
  (*(v60 + 8))(v59, v62);
  v41 = [v63 productBuildVersion];
  if (v41)
  {
    v40 = v41;
    v35 = v41;
    v36 = sub_99B30();
    v37 = v20;
    _objc_release(v35);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v34 = v39;
  v31 = v38;
  v87 = v38;
  v88 = v39;
  v32 = 0;
  v21 = sub_99D00();
  (*(*(v21 - 8) + 56))(v55, 1);

  _objc_retain(v56);
  sub_99CD0();
  v33 = sub_99CC0();
  v22 = swift_allocObject();
  v23 = v51;
  v24 = v31;
  v25 = v56;
  v26 = v32;
  v27 = v55;
  v28 = v52;
  v29 = v34;
  v22[2] = v33;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = v29;
  v22[6] = v25;
  sub_2A6F4(v26, v26, v27, v28, v22, &type metadata for () + 8);
}

uint64_t sub_8FAF8(void *a1)
{
  _objc_retain(a1);
  sub_9745C();
  sub_974C0();
  return sub_99B60();
}

uint64_t sub_8FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a6;
  v6[19] = a5;
  v6[18] = a4;
  v6[16] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[17] = 0;
  v7 = sub_993B0();
  v6[21] = v7;
  v12 = *(v7 - 8);
  v6[22] = v12;
  v8 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[6] = a4;
  v6[7] = a5;
  v6[17] = a6;
  sub_99CD0();
  v6[24] = sub_99CC0();
  v9 = sub_99CA0();
  v10 = v6[16];

  return _swift_task_switch(sub_8FCB8, v9);
}

uint64_t sub_8FCB8()
{
  v57 = v0;
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[18];
  v0[16] = v0;
  v0[8] = v3;
  v0[9] = v2;
  v51 = sub_4CE5C();
  if (v51)
  {
    v49 = [v51 productBuildVersion];
    if (v49)
    {
      v43 = sub_99B30();
      v44 = v4;
      _objc_release(v49);
      v45 = v43;
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    _objc_release(v51);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  sub_944CC((v50 + 64), (v50 + 16));
  *(v50 + 32) = v47;
  *(v50 + 40) = v48;
  if (!*(v50 + 24))
  {
    if (!*(v50 + 40))
    {
      sub_48490(v50 + 16);

      goto LABEL_17;
    }

LABEL_15:
    sub_941CC(v50 + 16);

    goto LABEL_18;
  }

  sub_944CC((v50 + 16), (v50 + 80));
  if (!*(v50 + 40))
  {
    sub_CF00(v50 + 80);
    goto LABEL_15;
  }

  *(v50 + 96) = *(v50 + 80);
  *(v50 + 112) = *(v50 + 32);
  v5 = *(v50 + 96);
  v6 = *(v50 + 104);
  v7 = *(v50 + 112);
  v8 = *(v50 + 120);
  v42 = sub_99BA0();
  sub_CF00(v50 + 112);
  sub_CF00(v50 + 96);
  sub_48490(v50 + 16);

  if ((v42 & 1) == 0)
  {
LABEL_18:
    v10 = *(v50 + 184);
    v25 = *(v50 + 168);
    v28 = *(v50 + 160);
    v27 = *(v50 + 152);
    v26 = *(v50 + 144);
    v24 = *(v50 + 176);
    v11 = sub_81788();
    (*(v24 + 16))(v10, v11, v25);

    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    _objc_retain(v28);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    oslog = sub_99390();
    v41 = sub_99D80();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_97580;
    *(v30 + 24) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_97684;
    *(v35 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_975D4;
    *(v32 + 24) = v31;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_97784;
    *(v38 + 24) = v32;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    sub_99F80();
    v39 = v12;

    *v39 = sub_97608;
    v39[1] = v33;

    v39[2] = sub_9763C;
    v39[3] = v34;

    v39[4] = sub_976D0;
    v39[5] = v35;

    v39[6] = sub_97708;
    v39[7] = v36;

    v39[8] = sub_9773C;
    v39[9] = v37;

    v39[10] = sub_977D0;
    v39[11] = v38;
    sub_29D0();

    if (os_log_type_enabled(oslog, v41))
    {
      buf = sub_99E40();
      sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v22 = sub_F444(0);
      v23 = sub_F444(2);
      v52 = buf;
      v53 = v22;
      v54 = v23;
      sub_F498(2, &v52);
      sub_F498(2, &v52);
      v55 = sub_97608;
      v56 = v33;
      sub_F4AC(&v55, &v52, &v53, &v54);
      v55 = sub_9763C;
      v56 = v34;
      sub_F4AC(&v55, &v52, &v53, &v54);
      v55 = sub_976D0;
      v56 = v35;
      sub_F4AC(&v55, &v52, &v53, &v54);
      v55 = sub_97708;
      v56 = v36;
      sub_F4AC(&v55, &v52, &v53, &v54);
      v55 = sub_9773C;
      v56 = v37;
      sub_F4AC(&v55, &v52, &v53, &v54);
      v55 = sub_977D0;
      v56 = v38;
      sub_F4AC(&v55, &v52, &v53, &v54);
      _os_log_impl(&dword_0, oslog, v41, "Received rollbackDidFinish event with descriptor: %s, \nbut that's not the displaying descriptor: %s, ignoring this callback", buf, 0x16u);
      sub_F5B0(v22);
      sub_F5B0(v23);
      sub_99E20();
    }

    else
    {
    }

    v19 = *(v50 + 184);
    v20 = *(v50 + 168);
    v18 = *(v50 + 176);
    _objc_release(oslog);
    (*(v18 + 8))(v19, v20);
    goto LABEL_22;
  }

LABEL_17:
  v9 = *(v50 + 160);
  sub_5A694(1u, 0);
LABEL_22:
  v13 = *(v50 + 192);
  v17 = *(v50 + 184);

  v14 = *(*(v50 + 128) + 8);
  v15 = *(v50 + 128);

  return v14();
}

uint64_t sub_908BC(uint64_t a1, uint64_t a2)
{

  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_99B90("", 0, 1);
    v9 = v2;
  }

  return v8;
}

uint64_t sub_9095C()
{
  v11 = sub_4CE5C();
  if (v11)
  {
    v0 = [v11 productBuildVersion];
    v8 = v0;
    if (v0)
    {
      v4 = sub_99B30();
      v5 = v1;
      _objc_release(v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    _objc_release(v11);
    v9 = v6;
    v10 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = v9;
  v13 = v10;
  if (v10)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = sub_99B90("nil", 3uLL, 1);
    v15 = v2;
  }

  return v14;
}

uint64_t sub_90B84(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = a1;
  v81 = a2;
  v83 = a3;
  v84 = sub_969D4;
  v86 = sub_96ACC;
  v91 = sub_96A1C;
  v95 = sub_96BCC;
  v97 = sub_96A50;
  v99 = sub_96A84;
  v101 = sub_96B18;
  v103 = sub_96B50;
  v105 = sub_96B84;
  v108 = sub_96C18;
  v69 = &protocol witness table for MainActor;
  v70 = &unk_9C2D0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v71 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v72 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v73 = &v44 - v72;
  v80 = sub_993B0();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v76 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v75);
  v5 = &v44 - v76;
  v77 = &v44 - v76;
  v124 = v4;
  v123 = v6;
  v122 = v7;
  v121 = v8;
  v9 = sub_81788();
  (*(v78 + 16))(v5, v9, v80);
  _objc_retain(v81);
  v82 = 24;
  v93 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v81;
  swift_errorRetain();
  v94 = swift_allocObject();
  *(v94 + 16) = v83;
  v112 = sub_99390();
  v113 = sub_99D80();
  v89 = 17;
  v98 = swift_allocObject();
  v88 = 32;
  *(v98 + 16) = 32;
  v100 = swift_allocObject();
  v90 = 8;
  *(v100 + 16) = 8;
  v92 = 32;
  v10 = swift_allocObject();
  v11 = v85;
  v87 = v10;
  *(v10 + 16) = v84;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v87;
  v102 = v12;
  *(v12 + 16) = v86;
  *(v12 + 24) = v13;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v106 = swift_allocObject();
  *(v106 + 16) = v90;
  v14 = swift_allocObject();
  v15 = v94;
  v96 = v14;
  *(v14 + 16) = v91;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v96;
  v109 = v16;
  *(v16 + 16) = v95;
  *(v16 + 24) = v17;
  v111 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v107 = sub_99F80();
  v110 = v18;

  v19 = v98;
  v20 = v110;
  *v110 = v97;
  v20[1] = v19;

  v21 = v100;
  v22 = v110;
  v110[2] = v99;
  v22[3] = v21;

  v23 = v102;
  v24 = v110;
  v110[4] = v101;
  v24[5] = v23;

  v25 = v104;
  v26 = v110;
  v110[6] = v103;
  v26[7] = v25;

  v27 = v106;
  v28 = v110;
  v110[8] = v105;
  v28[9] = v27;

  v29 = v109;
  v30 = v110;
  v110[10] = v108;
  v30[11] = v29;
  sub_29D0();

  if (os_log_type_enabled(v112, v113))
  {
    v31 = v71;
    v61 = sub_99E40();
    v60 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v62 = sub_F444(0);
    v63 = sub_F444(2);
    v65 = &v118;
    v118 = v61;
    v66 = &v117;
    v117 = v62;
    v67 = &v116;
    v116 = v63;
    v64 = 2;
    sub_F498(2, &v118);
    sub_F498(v64, v65);
    v114 = v97;
    v115 = v98;
    sub_F4AC(&v114, v65, v66, v67);
    v68 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v114 = v99;
      v115 = v100;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v59 = 0;
      v114 = v101;
      v115 = v102;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v58 = 0;
      v114 = v103;
      v115 = v104;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v57 = 0;
      v114 = v105;
      v115 = v106;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v56 = 0;
      v114 = v108;
      v115 = v109;
      sub_F4AC(&v114, &v118, &v117, &v116);
      _os_log_impl(&dword_0, v112, v113, "Received rollbackDidFail event for: %s, error: %s", v61, 0x16u);
      sub_F5B0(v62);
      sub_F5B0(v63);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v112);
  (*(v78 + 8))(v77, v80);
  v55 = [v81 productBuildVersion];
  if (v55)
  {
    v54 = v55;
    v49 = v55;
    v50 = sub_99B30();
    v51 = v32;
    _objc_release(v49);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v48 = v53;
  v45 = v52;
  v119 = v52;
  v120 = v53;
  v46 = 0;
  v33 = sub_99D00();
  (*(*(v33 - 8) + 56))(v73, 1);

  _objc_retain(v74);
  swift_errorRetain();
  sub_99CD0();
  v47 = sub_99CC0();
  v34 = swift_allocObject();
  v35 = v69;
  v36 = v45;
  v37 = v74;
  v38 = v83;
  v39 = v46;
  v40 = v73;
  v41 = v70;
  v42 = v48;
  v34[2] = v47;
  v34[3] = v35;
  v34[4] = v36;
  v34[5] = v42;
  v34[6] = v37;
  v34[7] = v38;
  sub_2A6F4(v39, v39, v40, v41, v34, &type metadata for () + 8);
}

uint64_t sub_917F0(void *a1)
{
  _objc_retain(a1);
  sub_9745C();
  sub_974C0();
  return sub_99B60();
}

uint64_t sub_9188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a7;
  v7[21] = a6;
  v7[20] = a5;
  v7[19] = a4;
  v7[16] = v7;
  v7[6] = 0;
  v7[7] = 0;
  v7[17] = 0;
  v7[18] = 0;
  v8 = sub_993B0();
  v7[23] = v8;
  v13 = *(v8 - 8);
  v7[24] = v13;
  v9 = *(v13 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[6] = a4;
  v7[7] = a5;
  v7[17] = a6;
  v7[18] = a7;
  sub_99CD0();
  v7[26] = sub_99CC0();
  v10 = sub_99CA0();
  v11 = v7[16];

  return _swift_task_switch(sub_91A10, v10);
}

uint64_t sub_91A10()
{
  v58 = v0;
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[19];
  v0[16] = v0;
  v0[8] = v3;
  v0[9] = v2;
  v52 = sub_4CE5C();
  if (v52)
  {
    v50 = [v52 productBuildVersion];
    if (v50)
    {
      v44 = sub_99B30();
      v45 = v4;
      _objc_release(v50);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    _objc_release(v52);
    v48 = v46;
    v49 = v47;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  sub_944CC((v51 + 64), (v51 + 16));
  *(v51 + 32) = v48;
  *(v51 + 40) = v49;
  if (!*(v51 + 24))
  {
    if (!*(v51 + 40))
    {
      sub_48490(v51 + 16);

      goto LABEL_17;
    }

LABEL_15:
    sub_941CC(v51 + 16);

    goto LABEL_18;
  }

  sub_944CC((v51 + 16), (v51 + 80));
  if (!*(v51 + 40))
  {
    sub_CF00(v51 + 80);
    goto LABEL_15;
  }

  *(v51 + 96) = *(v51 + 80);
  *(v51 + 112) = *(v51 + 32);
  v5 = *(v51 + 96);
  v6 = *(v51 + 104);
  v7 = *(v51 + 112);
  v8 = *(v51 + 120);
  v43 = sub_99BA0();
  sub_CF00(v51 + 112);
  sub_CF00(v51 + 96);
  sub_48490(v51 + 16);

  if ((v43 & 1) == 0)
  {
LABEL_18:
    v10 = *(v51 + 200);
    v25 = *(v51 + 184);
    v28 = *(v51 + 168);
    v27 = *(v51 + 160);
    v26 = *(v51 + 152);
    v24 = *(v51 + 192);
    v11 = sub_81788();
    (*(v24 + 16))(v10, v11, v25);

    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    _objc_retain(v28);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    oslog = sub_99390();
    v41 = sub_99D80();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_97200;
    *(v30 + 24) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_97304;
    *(v35 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_97254;
    *(v32 + 24) = v31;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_97404;
    *(v38 + 24) = v32;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    sub_99F80();
    v39 = v12;

    *v39 = sub_97288;
    v39[1] = v33;

    v39[2] = sub_972BC;
    v39[3] = v34;

    v39[4] = sub_97350;
    v39[5] = v35;

    v39[6] = sub_97388;
    v39[7] = v36;

    v39[8] = sub_973BC;
    v39[9] = v37;

    v39[10] = sub_97450;
    v39[11] = v38;
    sub_29D0();

    if (os_log_type_enabled(oslog, v41))
    {
      buf = sub_99E40();
      sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v22 = sub_F444(0);
      v23 = sub_F444(2);
      v53 = buf;
      v54 = v22;
      v55 = v23;
      sub_F498(2, &v53);
      sub_F498(2, &v53);
      v56 = sub_97288;
      v57 = v33;
      sub_F4AC(&v56, &v53, &v54, &v55);
      v56 = sub_972BC;
      v57 = v34;
      sub_F4AC(&v56, &v53, &v54, &v55);
      v56 = sub_97350;
      v57 = v35;
      sub_F4AC(&v56, &v53, &v54, &v55);
      v56 = sub_97388;
      v57 = v36;
      sub_F4AC(&v56, &v53, &v54, &v55);
      v56 = sub_973BC;
      v57 = v37;
      sub_F4AC(&v56, &v53, &v54, &v55);
      v56 = sub_97450;
      v57 = v38;
      sub_F4AC(&v56, &v53, &v54, &v55);
      _os_log_impl(&dword_0, oslog, v41, "Received rollbackDidFail event with descriptor: %s,\nbut that's not the displaying descriptor: %s, ignoring this callback", buf, 0x16u);
      sub_F5B0(v22);
      sub_F5B0(v23);
      sub_99E20();
    }

    else
    {
    }

    v19 = *(v51 + 200);
    v20 = *(v51 + 184);
    v18 = *(v51 + 192);
    _objc_release(oslog);
    (*(v18 + 8))(v19, v20);
    goto LABEL_22;
  }

LABEL_17:
  v42 = *(v51 + 176);
  v9 = *(v51 + 168);
  swift_errorRetain();
  sub_5A694(0, v42);

LABEL_22:
  v13 = *(v51 + 208);
  v17 = *(v51 + 200);

  v14 = *(*(v51 + 128) + 8);
  v15 = *(v51 + 128);

  return v14();
}

uint64_t sub_926C4(uint64_t a1, uint64_t a2)
{

  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_99B90("", 0, 1);
    v9 = v2;
  }

  return v8;
}

uint64_t sub_92764()
{
  v11 = sub_4CE5C();
  if (v11)
  {
    v0 = [v11 productBuildVersion];
    v8 = v0;
    if (v0)
    {
      v4 = sub_99B30();
      v5 = v1;
      _objc_release(v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    _objc_release(v11);
    v9 = v6;
    v10 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = v9;
  v13 = v10;
  if (v10)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = sub_99B90("nil", 3uLL, 1);
    v15 = v2;
  }

  return v14;
}

uint64_t sub_929AC(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v27 = a3;
  v29 = a2;
  v28 = a1;
  v39 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v26 = 0;
  v36 = sub_993B0();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v33 = *(v31 + 64);
  v3 = &v11 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v50 = __chkstk_darwin(v28);
  v48 = v4;
  v49 = v5;
  v47 = v6;
  v7 = sub_81788();
  (*(v35 + 16))(v3, v7, v36);
  v41 = sub_99390();
  v37 = v41;
  v40 = sub_99D60();
  v38 = v40;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v42 = sub_99F80();
  if (os_log_type_enabled(v41, v40))
  {
    v8 = v26;
    v17 = sub_99E40();
    v13 = v17;
    v14 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v15 = 0;
    v18 = sub_F444(0);
    v16 = v18;
    v19 = sub_F444(v15);
    v46 = v17;
    v45 = v18;
    v44 = v19;
    v20 = 0;
    v21 = &v46;
    sub_F498(0, &v46);
    sub_F498(v20, v21);
    v43 = v42;
    v22 = &v11;
    __chkstk_darwin(&v11);
    v23 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v45;
    *(&v11 - 2) = &v44;
    v24 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v25 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v37, v38, "User interaction required", v13, 2u);
      v11 = 0;
      sub_F5B0(v16);
      sub_F5B0(v19);
      sub_99E20();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v32 + 8))(v34, v30);

  v29(1, 0);
}

void sub_92ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_992A0();
  swift_errorRetain();
  if (a2)
  {
    v3 = sub_99150();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v6 & 1);
  _objc_release(v4);
}

void sub_92F84(uint64_t a1, void *a2)
{
  v97 = a1;
  v108 = a2;
  v110 = sub_96F6C;
  v114 = sub_9701C;
  v116 = sub_96FA0;
  v118 = sub_96FD4;
  v121 = sub_97068;
  v91 = sub_970B4;
  v92 = sub_97168;
  v93 = sub_970EC;
  v94 = sub_97120;
  v95 = sub_971B4;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v137 = 0;
  v138 = 0;
  v96 = 0;
  v105 = sub_993B0();
  v103 = *(v105 - 8);
  v104 = v105 - 8;
  v99 = v103[8];
  v98 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v97);
  v100 = v38 - v98;
  v101 = v98;
  v3 = __chkstk_darwin(v2);
  v4 = v38 - v101;
  v102 = v38 - v101;
  v141 = v3;
  v140 = v5;
  v139 = v6;
  v7 = sub_81788();
  v106 = v103[2];
  v107 = v103 + 2;
  v106(v4, v7, v105);
  _objc_retain(v108);
  v112 = 7;
  v113 = swift_allocObject();
  *(v113 + 16) = v108;
  v125 = sub_99390();
  v126 = sub_99D60();
  v109 = 17;
  v117 = swift_allocObject();
  *(v117 + 16) = 32;
  v119 = swift_allocObject();
  *(v119 + 16) = 8;
  v111 = 32;
  v8 = swift_allocObject();
  v9 = v113;
  v115 = v8;
  *(v8 + 16) = v110;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v115;
  v122 = v10;
  *(v10 + 16) = v114;
  *(v10 + 24) = v11;
  v124 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v120 = sub_99F80();
  v123 = v12;

  v13 = v117;
  v14 = v123;
  *v123 = v116;
  v14[1] = v13;

  v15 = v119;
  v16 = v123;
  v123[2] = v118;
  v16[3] = v15;

  v17 = v122;
  v18 = v123;
  v123[4] = v121;
  v18[5] = v17;
  sub_29D0();

  if (os_log_type_enabled(v125, v126))
  {
    v19 = v96;
    v84 = sub_99E40();
    v83 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v85 = sub_F444(0);
    v86 = sub_F444(1);
    v87 = &v131;
    v131 = v84;
    v88 = &v130;
    v130 = v85;
    v89 = &v129;
    v129 = v86;
    sub_F498(2, &v131);
    sub_F498(1, v87);
    v127 = v116;
    v128 = v117;
    sub_F4AC(&v127, v87, v88, v89);
    v90 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v127 = v118;
      v128 = v119;
      sub_F4AC(&v127, &v131, &v130, &v129);
      v81 = 0;
      v127 = v121;
      v128 = v122;
      sub_F4AC(&v127, &v131, &v130, &v129);
      v80 = 0;
      _os_log_impl(&dword_0, v125, v126, "Handling DDM declaration: %s", v84, 0xCu);
      sub_F5B0(v85);
      sub_F5B0(v86);
      sub_99E20();

      v82 = v80;
    }
  }

  else
  {
    v20 = v96;

    v82 = v20;
  }

  v77 = v82;
  _objc_release(v125);
  v78 = v103[1];
  v79 = v103 + 1;
  v78(v102, v105);
  _objc_retain(v108);
  if (v108)
  {
    v76 = v108;
    v74 = v108;
    v75 = [v108 declarationKey];
    if (v75)
    {
      v73 = v75;
      v68 = v75;
      v69 = sub_99B30();
      v70 = v21;
      _objc_release(v68);
      v71 = v69;
      v72 = v70;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v65 = v72;
    v64 = v71;
    _objc_release(v74);
    v66 = v64;
    v67 = v65;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v62 = v67;
  v63 = v66;
  if (v67)
  {
    v60 = v63;
    v61 = v62;
    v22 = v100;
    v47 = v62;
    v46 = v63;
    v137 = v63;
    v138 = v62;
    v23 = sub_81788();
    v106(v22, v23, v105);

    v49 = 32;
    v50 = 7;
    v24 = swift_allocObject();
    v25 = v47;
    v51 = v24;
    *(v24 + 16) = v46;
    *(v24 + 24) = v25;
    v58 = sub_99390();
    v59 = sub_99D60();
    v48 = 17;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v26 = swift_allocObject();
    v27 = v51;
    v52 = v26;
    *(v26 + 16) = v91;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v52;
    v56 = v28;
    *(v28 + 16) = v92;
    *(v28 + 24) = v29;
    v55 = sub_99F80();
    v57 = v30;

    v31 = v53;
    v32 = v57;
    *v57 = v93;
    v32[1] = v31;

    v33 = v54;
    v34 = v57;
    v57[2] = v94;
    v34[3] = v33;

    v35 = v56;
    v36 = v57;
    v57[4] = v95;
    v36[5] = v35;
    sub_29D0();

    if (os_log_type_enabled(v58, v59))
    {
      v37 = v77;
      v39 = sub_99E40();
      v38[2] = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v40 = sub_F444(0);
      v41 = sub_F444(1);
      v42 = &v136;
      v136 = v39;
      v43 = &v135;
      v135 = v40;
      v44 = &v134;
      v134 = v41;
      sub_F498(2, &v136);
      sub_F498(1, v42);
      v132 = v93;
      v133 = v53;
      sub_F4AC(&v132, v42, v43, v44);
      v45 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v132 = v94;
        v133 = v54;
        sub_F4AC(&v132, &v136, &v135, &v134);
        v38[1] = 0;
        v132 = v95;
        v133 = v56;
        sub_F4AC(&v132, &v136, &v135, &v134);
        _os_log_impl(&dword_0, v58, v59, "Processing DDM declaration with declarationKey: %s", v39, 0xCu);
        sub_F5B0(v40);
        sub_F5B0(v41);
        sub_99E20();
      }
    }

    else
    {
    }

    _objc_release(v58);
    v78(v100, v105);
  }
}

uint64_t sub_93E70(void *a1)
{
  _objc_retain(a1);
  sub_22FC(&qword_B59D8, qword_9C2D8);
  return sub_99B50();
}

uint64_t sub_93FA0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_94134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_941CC(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_94284()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_94334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94380()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_944CC(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_9450C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9454C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_858F8();
  return result;
}

uint64_t sub_945C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9460C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94698()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_869E4();
  return result;
}

uint64_t sub_9475C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_947A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9485C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_948A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_94900(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_949F0;

  return sub_86AA8(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_949F0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_94B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94BB8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_88668();
  return result;
}

uint64_t sub_94C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_94D1C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_94E0C;

  return sub_8869C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_94E0C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_94F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_94F74()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_89D8C();
  return result;
}

uint64_t sub_94F80()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_95030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9507C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95130()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9517C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_951C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_95228(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_95324;

  return sub_89E00(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_95324()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_95484()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_954C4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_8B594();
  return result;
}

uint64_t sub_95538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_955D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9561C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9565C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_7B0BC();

  return sub_7AA68(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_95738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95784()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_957D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_95828(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_95928;

  return sub_8B5C8(a1, v6, v7, v8, v9, v10, v11 & 1);
}

uint64_t sub_95928()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_95B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95BA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_95BF8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_95CE8;

  return sub_8C6C4(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_95CE8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_95E60()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_95F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_95F5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9605C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_960A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_96108(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_96204;

  return sub_8DAAC(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_96204()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_963E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_966D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_9671C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_96774(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_96864;

  return sub_8FB54(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_96864()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_969DC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_96A8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96AD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96B8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96BD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_96C24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_96C84(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_96D80;

  return sub_9188C(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_96D80()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_96FDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97074()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_970B4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_93ECC();
  return result;
}

uint64_t sub_97128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_971C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_972C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97310()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_973C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_9745C()
{
  v2 = qword_B59E0;
  if (!qword_B59E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B59E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_974C0()
{
  v2 = qword_B59E8;
  if (!qword_B59E8)
  {
    sub_9745C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B59E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_97540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97744()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_97790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_977DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_7AC7C();
}

uint64_t sub_9780C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_97854(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_97948;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_97948()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_97A70()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_97AB8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_97BAC;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_97BAC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_97D08()
{
  v2 = qword_B5A10;
  if (!qword_B5A10)
  {
    sub_7B3A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5A10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_97D88(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2._rawValue = sub_99F80();
  *v3 = "BACKGROUND_SECURITY_IMPROVEMENT_GROUP";
  *(v3 + 8) = 37;
  *(v3 + 16) = 2;
  *(v3 + 24) = "AUTOMATIC_SECURITY_UPDATES_TOGGLE";
  *(v3 + 32) = 33;
  *(v3 + 40) = 2;
  *(v3 + 48) = "SECURITY_UPDATE_HISTORY_GROUP";
  *(v3 + 56) = 29;
  *(v3 + 64) = 2;
  *(v3 + 72) = "NEW_SECURITY_UPDATE_GROUP";
  *(v3 + 80) = 25;
  *(v3 + 88) = 2;
  *(v3 + 96) = "SECURITY_IMPROVEMENT_STATUS";
  *(v3 + 104) = 27;
  *(v3 + 112) = 2;
  sub_29D0();
  v8 = sub_99F20(v2, v7);

  switch(v8)
  {
    case 0:
      v6 = 0;
LABEL_12:

      return v6;
    case 1:
      v6 = 1;
      goto LABEL_12;
    case 2:
      v6 = 2;
      goto LABEL_12;
    case 3:
      v6 = 3;
      goto LABEL_12;
    case 4:
      v6 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_97F98(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_99B90("BACKGROUND_SECURITY_IMPROVEMENT_GROUP", 0x25uLL, 1);
    case 1:
      return sub_99B90("AUTOMATIC_SECURITY_UPDATES_TOGGLE", 0x21uLL, 1);
    case 2:
      return sub_99B90("SECURITY_UPDATE_HISTORY_GROUP", 0x1DuLL, 1);
    case 3:
      return sub_99B90("NEW_SECURITY_UPDATE_GROUP", 0x19uLL, 1);
  }

  return sub_99B90("SECURITY_IMPROVEMENT_STATUS", 0x1BuLL, 1);
}

unint64_t sub_98128()
{
  v2 = qword_B5A80;
  if (!qword_B5A80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5A80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_98274@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_97D88(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_982AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_97F98(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_982E0(char a1)
{
  sub_97F98(a1);
  sub_997E0();
}

unint64_t sub_98358()
{
  v2 = qword_B5A88;
  if (!qword_B5A88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5A88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_983E0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_98548(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_9876C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_99610();
  sub_994A0();
  sub_987F8();
  return swift_getWitnessTable();
}

unint64_t sub_987F8()
{
  v2 = qword_B5A90;
  if (!qword_B5A90)
  {
    sub_99610();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5A90);
    return WitnessTable;
  }

  return v2;
}

id sub_9893C()
{
  sub_98984();
  type metadata accessor for FindBackgroundSecurityImprovementClass();
  result = sub_98A10();
  qword_B64E8 = result;
  return result;
}

unint64_t sub_98984()
{
  v2 = qword_B5A98;
  if (!qword_B5A98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5A98);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_98A10()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_98A68()
{
  if (qword_B63A0 != -1)
  {
    swift_once();
  }

  return &qword_B64E8;
}

void *sub_98AC8()
{
  v1 = *sub_98A68();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_98B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_98B08();
  *a1 = result;
  return result;
}

unint64_t sub_98B88()
{
  v2 = qword_B5B38;
  if (!qword_B5B38)
  {
    sub_87B4(&qword_B5B40, qword_9C4F0);
    sub_98C20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5B38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_98C20()
{
  v2 = qword_B5B48;
  if (!qword_B5B48)
  {
    type metadata accessor for StatefulManager();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5B48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_98CA0()
{
  sub_98CEC();
  sub_99500();
  return v1;
}

unint64_t sub_98CEC()
{
  v2 = qword_B63B0;
  if (!qword_B63B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B63B0);
    return WitnessTable;
  }

  return v2;
}

void sub_98D68(void *a1)
{
  _objc_retain(a1);
  sub_98CEC();
  sub_99510();
  _objc_release(a1);
}

void (*sub_98DE8(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_98CA0();
  return sub_98E44;
}

void sub_98E44(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    _objc_retain(*a1);
    sub_98D68(v3);
    sub_1D370(a1);
  }

  else
  {
    sub_98D68(*a1);
  }
}

uint64_t sub_98EC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_98EB8();
  *a1 = result;
  return result;
}

uint64_t sub_98F08()
{
  sub_98F54();
  sub_99500();
  return v1;
}

unint64_t sub_98F54()
{
  v2 = qword_B63B8[0];
  if (!qword_B63B8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_B63B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_98FD0()
{

  sub_98F54();
  sub_99510();
}

uint64_t *(*sub_99040(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_98F08();
  return sub_9909C;
}

uint64_t *sub_9909C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v5 = *a1;

    sub_98FD0();
    return sub_1D3A4(a1);
  }

  else
  {
    v3 = *a1;
    return sub_98FD0();
  }
}