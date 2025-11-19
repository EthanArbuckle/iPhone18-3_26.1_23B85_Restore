uint64_t sub_182238D38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(a1 + 24);
  v9 = __OFADD__(v5, 4);
  v6 = v5 + 4;
  if (v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(a1 + 48);
  v9 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if (v10 < 0 != v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10 != 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = v2;
  v3 = a2;
  if (qword_1EA837250 != -1)
  {
LABEL_27:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();

    *&v63 = 0xD000000000000016;
    *(&v63 + 1) = 0x8000000182BE1C10;
    v62 = sub_182AD2B68();
    v35 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v35);

    v77 = 0xD000000000000016;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v36 = sub_182AD2698();
    __swift_project_value_buffer(v36, qword_1EA843418);
    v37 = swift_allocObject();
    *(v37 + 16) = "openHeader(packet:frame:)";
    *(v37 + 24) = 25;
    *(v37 + 32) = 2;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_181F8C724;
    *(v38 + 24) = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = 1564427099;
    *(v39 + 24) = 0xE400000000000000;
    v40 = swift_allocObject();
    *(v40 + 16) = v77;
    *(v40 + 24) = 0x8000000182BE1C10;

    v77 = sub_182AD2678();
    v59 = sub_182AD38A8();
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v55 = swift_allocObject();
    v55[16] = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C71C;
    *(v41 + 24) = v38;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C718;
    *(v42 + 24) = v41;
    v57 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C720;
    *(v43 + 24) = v39;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C718;
    *(v44 + 24) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C720;
    *(v47 + 24) = v40;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C718;
    *(v48 + 24) = v47;
    if (os_log_type_enabled(v77, v59))
    {
      v53 = v46;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = 0;
      *v49 = 770;
      v52 = v50;
      v60 = v50;
      v62 = (v49 + 2);
      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v56;
      sub_181F73AE0(&v63, &v62, &v61, &v60);
      if (v4)
      {

        while (1)
        {

          __break(1u);
        }
      }

      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v55;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C714;
      *(&v63 + 1) = v57;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v58;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v54;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C714;
      *(&v63 + 1) = v44;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v45;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C728;
      *(&v63 + 1) = v53;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      *&v63 = sub_181F8C714;
      *(&v63 + 1) = v48;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v51 = v77;
      _os_log_impl(&dword_181A37000, v77, v59, "%s %s %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v52, -1, -1);
      MEMORY[0x1865DF520](v49, -1, -1);
    }

    else
    {
    }
  }

  v11 = *(v3 + 160);
  v12 = *(v3 + 192);
  v74 = *(v3 + 176);
  v75 = v12;
  v13 = *(v3 + 96);
  v14 = *(v3 + 128);
  v15 = *(v3 + 144);
  v70 = *(v3 + 112);
  v71 = v14;
  v76 = *(v3 + 208);
  v72 = v15;
  v73 = v11;
  v16 = *(v3 + 48);
  v65 = *(v3 + 32);
  v66 = v16;
  v17 = *(v3 + 80);
  v67 = *(v3 + 64);
  v68 = v17;
  v69 = v13;
  v18 = *(v3 + 16);
  v63 = *v3;
  v64 = v18;
  Frame.unclaimedBytes.getter();
  if (v19)
  {
    v63 = xmmword_182AED510;
    LOBYTE(v64) = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }

  else
  {
    v20 = sub_182AD3428();
    v20[2] = 16;
    v20[4] = 0;
    v20[5] = 0;
    v62 = v20;
    v21 = type metadata accessor for SecFramerAESGCM(0);
    MEMORY[0x1EEE9AC00](v21);
    sub_182AD2B48();
    v22 = v63;
    if (!v63)
    {
      return v62;
    }

    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v63 = 0xD000000000000016;
    *(&v63 + 1) = 0x8000000182BE1BF0;
    LODWORD(v61) = v22;
    v23 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v23);

    v24 = v63;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v25 = sub_182AD2698();
    __swift_project_value_buffer(v25, qword_1EA843418);

    v26 = sub_182AD2678();
    v27 = sub_182AD38B8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v63 = v29;
      *v28 = 136315650;
      v30 = sub_182AD3BF8();
      v32 = sub_181C64FFC(v30, v31, &v63);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
      *(v28 + 22) = 2080;
      v33 = sub_181C64FFC(v24, *(&v24 + 1), &v63);

      *(v28 + 24) = v33;
      _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v29, -1, -1);
      MEMORY[0x1865DF520](v28, -1, -1);
    }

    else
    {
    }

    v63 = xmmword_182AED510;
    LOBYTE(v64) = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }

  return 2;
}

uint64_t sub_182239AE4@<X0>(const void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X4>, const void *a4@<X5>, _DWORD *a5@<X8>, uint64_t a6)
{
  dataOutMoved[1] = *MEMORY[0x1E69E9840];
  v11 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    dataOutMoved[0] = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = sub_182083570(v11);
  *a3 = v11;
  dataOutMoved[0] = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_3:
  type metadata accessor for SecFramerAESGCM(0);
  v13 = sub_182AD2B68();
  if (!a1)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (*(a6 + 32))
  {
    goto LABEL_13;
  }

  v14 = *(a6 + 24);
  v15 = __OFADD__(v14, 4);
  v16 = v14 + 4;
  if (v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(a6 + 48);
  v15 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 < v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFSUB__(v18, v16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = CCCrypt(0, 0, 2u, a4, v13 / 8, a1, (a2 + v16), v18 - v16, v11 + 32, 0x10uLL, dataOutMoved);
  *a3 = v11;
  *a5 = result;
  return result;
}

uint64_t sub_182239C54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BE1AB0);
    v85 = sub_182AD2B68();
    v52 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v52);

    MEMORY[0x1865D9CA0](0x2065636E6F6E202CLL, 0xEC000000206E656CLL);
    v85 = *(a1 + 16);
    v53 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v53);

    MEMORY[0x1865D9CA0](0x726564616568202CLL, 0xE900000000000020);
    v85 = *(a2 + 16);
    v54 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v54);

    MEMORY[0x1865D9CA0](0x616F6C796170202CLL, 0xEA00000000002064);
    v85 = *(a2 + 40);
    v55 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v55);

    MEMORY[0x1865D9CA0](0x20676174202CLL, 0xE600000000000000);
    v85 = *(a2 + 48);
    v56 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v56);

    MEMORY[0x1865D9CA0](0x206E70202CLL, 0xE500000000000000);
    v85 = *(a2 + 112);
    v57 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v57);

    MEMORY[0x1865D9CA0](0x4449656361707320, 0xE900000000000020);
    v58 = sub_181F5F2C0(*(a2 + 72), *(a2 + 80));
    MEMORY[0x1865D9CA0](v58);

    v82 = 0xE000000000000000;
    v100 = 0;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v10 = *(a3 + 160);
    v11 = *(a3 + 192);
    v97 = *(a3 + 176);
    v98 = v11;
    v12 = *(a3 + 96);
    v13 = *(a3 + 128);
    v14 = *(a3 + 144);
    v93 = *(a3 + 112);
    v94 = v13;
    v99 = *(a3 + 208);
    v95 = v14;
    v96 = v10;
    v15 = *(a3 + 48);
    v88 = *(a3 + 32);
    v89 = v15;
    v16 = *(a3 + 80);
    v90 = *(a3 + 64);
    v91 = v16;
    v92 = v12;
    v17 = *(a3 + 16);
    v86 = *a3;
    v87 = v17;
    v18 = Frame.unclaimedBytes.getter();
    if (v19)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);
      v21 = sub_182AD2678();
      v22 = sub_182AD38B8();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_25;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v86 = v24;
      *v23 = 136315650;
      v25 = sub_182AD3BF8();
      v27 = sub_181C64FFC(v25, v26, &v86);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v86);
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_181C64FFC(0xD000000000000013, 0x8000000182BE1A70, &v86);
      _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
      swift_arrayDestroy();
      v28 = v24;
      goto LABEL_23;
    }

    v29 = v18;
    v30 = *(v6 + *(type metadata accessor for SecFramerAESGCM(0) + 36));
    v6 = CCCryptorGCMReset();
    v31 = CCCryptorGCMSetIV();
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_39:
    swift_once();
LABEL_28:
    v59 = sub_182AD2698();
    __swift_project_value_buffer(v59, qword_1EA843418);
    v60 = swift_allocObject();
    *(v60 + 16) = "open(nonce:packet:frame:)";
    *(v60 + 24) = 25;
    *(v60 + 32) = 2;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_181F8C258;
    *(v61 + 24) = v60;
    v62 = swift_allocObject();
    *(v62 + 16) = 1564427099;
    *(v62 + 24) = 0xE400000000000000;
    v63 = swift_allocObject();
    *(v63 + 16) = v100;
    *(v63 + 24) = v82;

    v100 = sub_182AD2678();
    v81 = sub_182AD38A8();
    v75 = swift_allocObject();
    v75[16] = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C264;
    *(v64 + 24) = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_181F8C27C;
    *(v65 + 24) = v64;
    v77 = v65;
    v78 = swift_allocObject();
    *(v78 + 16) = 32;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_181F8C26C;
    *(v66 + 24) = v62;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_181F8C718;
    *(v67 + 24) = v66;
    v80 = swift_allocObject();
    *(v80 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C26C;
    *(v69 + 24) = v63;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C718;
    *(v70 + 24) = v69;
    if (os_log_type_enabled(v100, v81))
    {
      v71 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = 0;
      v73 = v83;
      buf = v71;
      *v71 = 770;
      v85 = (v71 + 2);
      *&v86 = sub_181F8C274;
      *(&v86 + 1) = v75;
      sub_181F73AE0(&v86, &v85, &v84, &v83);
      if (v5)
      {

        while (1)
        {

          __break(1u);
        }
      }

      *&v86 = sub_181F8C728;
      *(&v86 + 1) = v76;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C284;
      *(&v86 + 1) = v77;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C728;
      *(&v86 + 1) = v78;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C728;
      *(&v86 + 1) = v79;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C714;
      *(&v86 + 1) = v67;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C728;
      *(&v86 + 1) = v80;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C728;
      *(&v86 + 1) = v68;
      sub_181F73AE0(&v86, &v85, &v84, &v83);

      *&v86 = sub_181F8C714;
      *(&v86 + 1) = v70;
      sub_181F73AE0(&v86, &v85, &v84, &v83);
      v5 = 0;

      v72 = v100;
      _os_log_impl(&dword_181A37000, v100, v81, "%s %s %s", buf, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v73, -1, -1);
      MEMORY[0x1865DF520](buf, -1, -1);
    }

    else
    {
    }
  }

  v32 = *(a2 + 16);
  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  a1 = v31;
  v33 = CCCryptorGCMAddAAD();
  v34 = *(a2 + 40);
  v35 = v32 + v34;
  if (__OFADD__(v32, v34))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v35 < v32)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = v33;
  v37 = MEMORY[0x1865DB290](*(v30 + 24), v29 + v32, v34, v29 + v32);
  v38 = *(a2 + 48);
  v39 = __OFADD__(v35, v38);
  v40 = v35 + v38;
  if (v39)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_21:
    v44 = sub_182AD2698();
    __swift_project_value_buffer(v44, qword_1EA843418);

    v21 = sub_182AD2678();
    v45 = sub_182AD38B8();

    if (!os_log_type_enabled(v21, v45))
    {

      goto LABEL_25;
    }

    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v86 = v46;
    *v23 = 136315650;
    v47 = sub_182AD3BF8();
    v49 = sub_181C64FFC(v47, v48, &v86);

    *(v23 + 4) = v49;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v86);
    *(v23 + 22) = 2080;
    v50 = sub_181C64FFC(v6, a1, &v86);

    *(v23 + 24) = v50;
    _os_log_impl(&dword_181A37000, v21, v45, "%s %s %s", v23, 0x20u);
    swift_arrayDestroy();
    v28 = v46;
LABEL_23:
    MEMORY[0x1865DF520](v28, -1, -1);
    MEMORY[0x1865DF520](v23, -1, -1);
LABEL_25:

    v86 = xmmword_182AED520;
    LOBYTE(v87) = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 3;
  }

  if (v40 < v35)
  {
    goto LABEL_35;
  }

  v41 = v37;
  v42 = CCCryptorGCMFinalize();
  if (a1 || v36 || v41 || v6 | v42)
  {
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v86 = 0xD00000000000001DLL;
    *(&v86 + 1) = 0x8000000182BE1A90;
    v85 = *(a2 + 112);
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    a1 = *(&v86 + 1);
    v6 = v86;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  return 3;
}

uint64_t sub_18223AB48(int64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v99 - v8);
  v10 = sub_182AD2B08();
  isa = v10[-1].isa;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA837250 == -1)
  {
    goto LABEL_2;
  }

LABEL_38:
  swift_once();
LABEL_2:
  v115 = v9;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v111 = v13;
    v113 = isa;
    *&v125 = 0;
    *(&v125 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000028, 0x8000000182BE1D70);
    v119 = *(a1 + 16);
    v72 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v72);

    MEMORY[0x1865D9CA0](0x726564616568202CLL, 0xE900000000000020);
    v73 = v116;
    v119 = *(v116 + 16);
    v74 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v74);

    MEMORY[0x1865D9CA0](0x616F6C796170202CLL, 0xEA00000000002064);
    v119 = *(v73 + 40);
    v75 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v75);

    MEMORY[0x1865D9CA0](0x2067617420, 0xE500000000000000);
    v119 = *(v73 + 48);
    v76 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v76);

    v14 = *(&v125 + 1);
    v112 = v125;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  while (1)
  {
    while (1)
    {
      v14 = &v125;
      v15 = *(a3 + 160);
      v16 = *(a3 + 192);
      v136 = *(a3 + 176);
      v137 = v16;
      v17 = *(a3 + 96);
      v18 = *(a3 + 128);
      v19 = *(a3 + 144);
      v132 = *(a3 + 112);
      v133 = v18;
      v134 = v19;
      v135 = v15;
      v20 = *(a3 + 32);
      v21 = *(a3 + 64);
      v22 = *(a3 + 80);
      v128 = *(a3 + 48);
      v129 = v21;
      v138 = *(a3 + 208);
      v130 = v22;
      v131 = v17;
      v23 = *(a3 + 16);
      v125 = *a3;
      v126 = v23;
      v127 = v20;
      v24 = Frame.unclaimedBytes.getter();
      if (v26)
      {
        v125 = 0uLL;
        LOBYTE(v126) = 48;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 0;
      }

      v27 = v24;
      v28 = v25;
      v112 = v10;
      v113 = isa;
      *&v125 = a1;

      v10 = &unk_182AE6070;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
      sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
      v29 = v139;
      sub_182AD2AF8();
      if (v29)
      {
        v13 = v29;
LABEL_16:
        v125 = 0uLL;
        LOBYTE(v126) = 48;
        sub_181F5F494();
        swift_willThrowTypedImpl();

        return 0;
      }

      v111 = v13;
      if (v27)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      a1 = *(v116 + 16);
      if (a1 < 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v31 = *(v116 + 40);
      v32 = __OFADD__(a1, v31);
      v33 = a1 + v31;
      if (v32)
      {
        goto LABEL_45;
      }

      v139 = 0;
      if (v33 < a1)
      {
        goto LABEL_46;
      }

      *&v125 = a1;
      *(&v125 + 1) = v33;
      *&v126 = v27;
      *(&v126 + 1) = v30;
      v34 = v112;
      v35 = v113;
      v10 = v115;
      (*(v113 + 16))(v115, v111, v112);
      (*(v35 + 56))(v10, 0, 1, v34);
      v119 = 0;
      v120 = a1;
      v121 = v27;
      v122 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4B0);
      sub_1822424FC();
      v36 = v139;
      v37 = sub_182AD2AE8();
      v13 = v36;
      if (v36)
      {
        sub_181F49A88(v10, &qword_1EA83B4E0);
        (*(v35 + 8))(v111, v34);
        goto LABEL_16;
      }

      v40 = v38;
      v139 = a1;
      isa = v37;
      sub_181F49A88(v10, &qword_1EA83B4E0);
      if (*(a3 + 24) == 2)
      {
        v41 = swift_projectBox();
        v42 = v40;
        v43 = v114;
        sub_181AB5D28(v41, v114, &qword_1EA8398E0);
        sub_181F49B58(isa, v42);
        v44 = sub_182AD2868();
        (*(*(v44 - 8) + 8))(v43, v44);
        sub_1822AFAA4(a3, 0, isa, v42, v124);
        sub_181C1F2E4(isa, v42);
        (*(v113 + 8))(v111, v112);
        return 0;
      }

      v45 = *(a3 + 160);
      v46 = *(a3 + 192);
      v136 = *(a3 + 176);
      v137 = v46;
      v47 = *(a3 + 96);
      v48 = *(a3 + 128);
      v49 = *(a3 + 144);
      v132 = *(a3 + 112);
      v133 = v48;
      v134 = v49;
      v135 = v45;
      v50 = *(a3 + 32);
      v51 = *(a3 + 64);
      v52 = *(a3 + 80);
      v128 = *(a3 + 48);
      v129 = v51;
      v138 = *(a3 + 208);
      v130 = v52;
      v131 = v47;
      v53 = *(a3 + 16);
      v125 = *a3;
      v126 = v53;
      v127 = v50;
      sub_181F49B58(isa, v40);
      a1 = v40;
      v54 = Frame.unclaimedBytes.getter();
      v56 = v113;
      v57 = v111;
      if (v58)
      {
        sub_181C1F2E4(isa, a1);
        (*(v56 + 8))(v57, v112);
LABEL_22:
        sub_181C1F2E4(isa, a1);
        return 0;
      }

      if (*(a3 + 24) == 5)
      {
        v59 = v54;
        v60 = v55;
        nw_frame_unclaimed_length(*a3);
        v55 = v60;
        v54 = v59;
      }

      if (!v54)
      {
        v62 = v139;
        if (!v139)
        {
          v61 = 0;
          goto LABEL_31;
        }

LABEL_29:
        v61 = 0;
        v62 = 2;
        goto LABEL_31;
      }

      v61 = v139;
      if (v55 - v54 < v139)
      {
        goto LABEL_29;
      }

      v62 = 0;
LABEL_31:
      v119 = v54;
      v120 = v55;
      v121 = v61;
      v122 = v62;
      v123 = 1;
      v63 = sub_182AD2B18();
      v65 = v64;
      v66 = MEMORY[0x1E6969080];
      *(&v126 + 1) = MEMORY[0x1E6969080];
      v67 = sub_181F7D470();
      *&v127 = v67;
      *&v125 = v63;
      *(&v125 + 1) = v65;
      InPlaceSerializer.buffer(_:)(&v125, v118);
      __swift_destroy_boxed_opaque_existential_1(&v125);
      v68 = sub_182AD2B28();
      *(&v126 + 1) = v66;
      *&v127 = v67;
      *&v125 = v68;
      *(&v125 + 1) = v69;
      InPlaceSerializer.buffer(_:)(&v125, &v117);
      __swift_destroy_boxed_opaque_existential_1(&v125);
      sub_181C1F2E4(isa, a1);
      (*(v113 + 8))(v111, v112);
      if (v123 != 1 || v122)
      {
        goto LABEL_22;
      }

      a3 = v120;
      v9 = v121;
      v14 = v119;
      sub_181C1F2E4(isa, a1);
      v70 = a3 - v14;
      if (!v14)
      {
        v70 = 0;
      }

      v32 = __OFSUB__(v70, v9);
      v71 = v70 - v9;
      if (!v32)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
LABEL_40:
      v77 = sub_182AD2698();
      __swift_project_value_buffer(v77, qword_1EA843418);
      v78 = swift_allocObject();
      *(v78 + 16) = "seal(nonce:packet:frame:)";
      *(v78 + 24) = 25;
      *(v78 + 32) = 2;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_181F8C724;
      *(v79 + 24) = v78;
      v80 = swift_allocObject();
      *(v80 + 16) = 1564427099;
      *(v80 + 24) = 0xE400000000000000;
      v81 = swift_allocObject();
      v102 = v81;
      *(v81 + 16) = v112;
      *(v81 + 24) = v14;

      v112 = sub_182AD2678();
      v110 = sub_182AD38A8();
      v103 = swift_allocObject();
      v103[16] = 32;
      v104 = swift_allocObject();
      *(v104 + 16) = 8;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_181F8C71C;
      *(v82 + 24) = v79;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_181F8C718;
      *(v83 + 24) = v82;
      v105 = v83;
      v106 = swift_allocObject();
      *(v106 + 16) = 32;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_181F8C720;
      *(v84 + 24) = v80;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_181F8C718;
      *(v85 + 24) = v84;
      v109 = swift_allocObject();
      *(v109 + 16) = 32;
      v86 = swift_allocObject();
      v107 = v14;
      v87 = v86;
      *(v86 + 16) = 8;
      v88 = v112;
      v89 = swift_allocObject();
      v90 = v102;
      *(v89 + 16) = sub_181F8C720;
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_181F8C718;
      *(v91 + 24) = v89;
      if (os_log_type_enabled(v88, v110))
      {
        break;
      }

      isa = v113;
      v13 = v111;
    }

    v100 = v85;
    v101 = v87;
    v102 = v91;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v124[0] = 0;
    *v92 = 770;
    v99 = v93;
    v118[0] = v93;
    v119 = v92 + 2;
    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v103;
    v94 = v139;
    sub_181F73AE0(&v125, &v119, v124, v118);
    isa = v113;
    v13 = v111;
    if (v94)
    {
      break;
    }

    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v104;
    sub_181F73AE0(&v125, &v119, v124, v118);
    v103 = v92;

    *&v125 = sub_181F8C714;
    *(&v125 + 1) = v105;
    sub_181F73AE0(&v125, &v119, v124, v118);

    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v106;
    sub_181F73AE0(&v125, &v119, v124, v118);

    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v108;
    sub_181F73AE0(&v125, &v119, v124, v118);
    v95 = v101;

    *&v125 = sub_181F8C714;
    *(&v125 + 1) = v100;
    sub_181F73AE0(&v125, &v119, v124, v118);

    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v109;
    sub_181F73AE0(&v125, &v119, v124, v118);

    *&v125 = sub_181F8C728;
    *(&v125 + 1) = v95;
    sub_181F73AE0(&v125, &v119, v124, v118);

    *&v125 = sub_181F8C714;
    *(&v125 + 1) = v102;
    sub_181F73AE0(&v125, &v119, v124, v118);
    v139 = 0;

    v96 = v112;
    v97 = v103;
    _os_log_impl(&dword_181A37000, v112, v110, "%s %s %s", v103, 0x20u);
    v98 = v99;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v98, -1, -1);
    MEMORY[0x1865DF520](v97, -1, -1);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18223BACC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a1 + 24);
  v6 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 48);
  v5 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v5, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 != 16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = v2;
  v3 = a2;
  if (qword_1EA837250 != -1)
  {
LABEL_21:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000002CLL, 0x8000000182BE1D40);
    v62 = v6;
    v46[1] = 0xE000000000000000;
    v47 = v5;
    v46[0] = 0;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](3943982, 0xE300000000000000);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0, 0xE000000000000000);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);
    v24 = swift_allocObject();
    *(v24 + 16) = "sealHeader(packet:frame:)";
    *(v24 + 24) = 25;
    *(v24 + 32) = 2;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C724;
    *(v42 + 24) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = 1564427099;
    *(v25 + 24) = 0xE400000000000000;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0xE000000000000000;

    v45 = sub_182AD2678();
    v44 = sub_182AD38A8();
    v35 = swift_allocObject();
    v35[16] = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C71C;
    *(v26 + 24) = v42;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C718;
    *(v27 + 24) = v26;
    v37 = v27;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C720;
    *(v28 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C718;
    *(v29 + 24) = v28;
    v40 = v29;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C720;
    *(v30 + 24) = v34;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C718;
    *(v31 + 24) = v30;
    v20 = v45;
    if (!os_log_type_enabled(v45, v44))
    {
      goto LABEL_29;
    }

    v32 = swift_slowAlloc();
    v62 = 0;
    v33 = swift_slowAlloc();
    *v32 = 770;
    v46[0] = v32 + 1;
    v47 = v33;
    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v35;
    sub_181F73AE0(&v48, v46, &v62, &v47);
    if (v4)
    {

      while (1)
      {

        __break(1u);
      }
    }

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v36;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v37;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v38;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v39;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v40;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v41;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v43;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v31;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    _os_log_impl(&dword_181A37000, v45, v44, "%s %s %s", 0, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v33, -1, -1);
    MEMORY[0x1865DF520](0, -1, -1);
  }

  while (1)
  {
    v9 = *(v3 + 176);
    v58 = *(v3 + 160);
    v59 = v9;
    v60 = *(v3 + 192);
    v61 = *(v3 + 208);
    v10 = *(v3 + 112);
    v54 = *(v3 + 96);
    v55 = v10;
    v11 = *(v3 + 144);
    v56 = *(v3 + 128);
    v57 = v11;
    v12 = *(v3 + 48);
    v50 = *(v3 + 32);
    v51 = v12;
    v13 = *(v3 + 80);
    v52 = *(v3 + 64);
    v53 = v13;
    v14 = *(v3 + 16);
    v48 = *v3;
    v49 = v14;
    v15 = Frame.unclaimedBytes.getter();
    if (v17)
    {
      v48 = 0uLL;
      LOBYTE(v49) = 48;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 0;
    }

    v3 = v15;
    v19 = v16;
    v20 = 16;
    v21 = sub_182AD3428();
    v21[2] = 16;
    v21[4] = 0;
    v21[5] = 0;
    v46[0] = v21;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v5 + 4 >= v6)
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
  }

  *&v48 = v6;
  *(&v48 + 1) = v5 + 4;
  *&v49 = v3;
  *(&v49 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4D8);
  sub_182AD44B8();
  v22 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v22);
  sub_182AD2B48();
  return v46[0];
}

uint64_t sub_18223C538(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a1 + 24);
  v6 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 48);
  v5 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFSUB__(v5, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 != 16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = v2;
  v3 = a2;
  if (qword_1EA837250 != -1)
  {
LABEL_21:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000002CLL, 0x8000000182BE1C30);
    v62 = v6;
    v46[1] = 0xE000000000000000;
    v47 = v5;
    v46[0] = 0;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](3943982, 0xE300000000000000);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0, 0xE000000000000000);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);
    v24 = swift_allocObject();
    *(v24 + 16) = "openHeader(packet:frame:)";
    *(v24 + 24) = 25;
    *(v24 + 32) = 2;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C724;
    *(v42 + 24) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = 1564427099;
    *(v25 + 24) = 0xE400000000000000;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0xE000000000000000;

    v45 = sub_182AD2678();
    v44 = sub_182AD38A8();
    v35 = swift_allocObject();
    v35[16] = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C71C;
    *(v26 + 24) = v42;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C718;
    *(v27 + 24) = v26;
    v37 = v27;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C720;
    *(v28 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C718;
    *(v29 + 24) = v28;
    v40 = v29;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C720;
    *(v30 + 24) = v34;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C718;
    *(v31 + 24) = v30;
    v20 = v45;
    if (!os_log_type_enabled(v45, v44))
    {
      goto LABEL_29;
    }

    v32 = swift_slowAlloc();
    v62 = 0;
    v33 = swift_slowAlloc();
    *v32 = 770;
    v46[0] = v32 + 1;
    v47 = v33;
    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v35;
    sub_181F73AE0(&v48, v46, &v62, &v47);
    if (v4)
    {

      while (1)
      {

        __break(1u);
      }
    }

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v36;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v37;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v38;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v39;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v40;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v41;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C728;
    *(&v48 + 1) = v43;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    *&v48 = sub_181F8C714;
    *(&v48 + 1) = v31;
    sub_181F73AE0(&v48, v46, &v62, &v47);

    _os_log_impl(&dword_181A37000, v45, v44, "%s %s %s", 0, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v33, -1, -1);
    MEMORY[0x1865DF520](0, -1, -1);
  }

  while (1)
  {
    v9 = *(v3 + 176);
    v58 = *(v3 + 160);
    v59 = v9;
    v60 = *(v3 + 192);
    v61 = *(v3 + 208);
    v10 = *(v3 + 112);
    v54 = *(v3 + 96);
    v55 = v10;
    v11 = *(v3 + 144);
    v56 = *(v3 + 128);
    v57 = v11;
    v12 = *(v3 + 48);
    v50 = *(v3 + 32);
    v51 = v12;
    v13 = *(v3 + 80);
    v52 = *(v3 + 64);
    v53 = v13;
    v14 = *(v3 + 16);
    v48 = *v3;
    v49 = v14;
    v15 = Frame.unclaimedBytes.getter();
    if (v17)
    {
      v48 = 0uLL;
      LOBYTE(v49) = 48;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 0;
    }

    v3 = v15;
    v19 = v16;
    v20 = 16;
    v21 = sub_182AD3428();
    v21[2] = 16;
    v21[4] = 0;
    v21[5] = 0;
    v46[0] = v21;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v5 + 4 >= v6)
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
  }

  *&v48 = v6;
  *(&v48 + 1) = v5 + 4;
  *&v49 = v3;
  *(&v49 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4D8);
  sub_182AD44B8();
  v22 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v22);
  sub_182AD2B48();
  return v46[0];
}

uint64_t sub_18223CFA4(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  result = sub_181AC1C5C(a1, a2);
  if (*(a5 + 32))
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = *(a5 + 24);
  v14 = v13 + 4;
  if (__OFADD__(v13, 4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(a5 + 48);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v14 + 4;
  if (__OFADD__(v14, 4))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 < v14 || v17 < v18)
  {
    goto LABEL_22;
  }

  v20 = a4 - a3;
  if (!a3)
  {
    v20 = 0;
  }

  if (v17 < 0 || v17 >= v20)
  {
    goto LABEL_23;
  }

  if (v18 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = result;
  v22 = v17 + 1;
  v23 = v17 + 1 - v18;
  if (v17 + 1 == v18)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v25 = *a6;

    v26 = sub_182241E00(v21, a7, v24, v25);

    *a6 = v26;
  }

  v24 = sub_181AC1BE8(v17 + 1 - v18, 0);
  result = sub_1820F4AE4(v27, v24 + 4, v23, v18, v22, a3, a4);
  if (result == v23)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18223D114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v120 - v9;
  v10 = sub_182AD2B08();
  isa = v10[-1].isa;
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v120 - v13;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v137 = a2;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v159 = v14;
    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000028, 0x8000000182BE1B10);
    v139 = *(a1 + 16);
    v90 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v90);

    MEMORY[0x1865D9CA0](0x726564616568202CLL, 0xE900000000000020);
    v139 = *(a2 + 16);
    v91 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v91);

    MEMORY[0x1865D9CA0](0x616F6C796170202CLL, 0xEA00000000002064);
    v139 = *(a2 + 40);
    v92 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v92);

    MEMORY[0x1865D9CA0](0x20676174202CLL, 0xE600000000000000);
    v139 = *(a2 + 48);
    v93 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v93);

    MEMORY[0x1865D9CA0](0x496563617073202CLL, 0xEA00000000002044);
    v94 = sub_181F5F2C0(*(a2 + 72), *(a2 + 80));
    MEMORY[0x1865D9CA0](v94);

    v15 = *(&v145 + 1);
    v133 = v145;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  while (1)
  {
    v15 = &v145;
    v16 = *(a3 + 176);
    v155 = *(a3 + 160);
    v156 = v16;
    v157 = *(a3 + 192);
    v158 = *(a3 + 208);
    v17 = *(a3 + 112);
    v151 = *(a3 + 96);
    v152 = v17;
    v18 = *(a3 + 144);
    v153 = *(a3 + 128);
    v154 = v18;
    v19 = *(a3 + 48);
    v147 = *(a3 + 32);
    v148 = v19;
    v20 = *(a3 + 80);
    v149 = *(a3 + 64);
    v150 = v20;
    v21 = *(a3 + 16);
    v145 = *a3;
    v146 = v21;
    v22 = Frame.unclaimedBytes.getter();
    if (v24)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v25 = sub_182AD2698();
      __swift_project_value_buffer(v25, qword_1EA843418);
      v26 = sub_182AD2678();
      v27 = sub_182AD38B8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v145 = v29;
        *v28 = 136315650;
        v30 = sub_182AD3BF8();
        v32 = sub_181C64FFC(v30, v31, &v145);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v145);
        *(v28 + 22) = 2080;
        *(v28 + 24) = sub_181C64FFC(0x6E20726566667562, 0xEA00000000006C69, &v145);
        _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
      }

      v145 = xmmword_182AED520;
      LOBYTE(v146) = 48;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 3;
    }

    v33 = v22;
    v34 = v23;
    v133 = v10;
    *&v145 = a1;

    v159 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
    sub_182AD2AF8();
    v10 = v4;
    if (v4)
    {
      goto LABEL_23;
    }

    if (v33)
    {
      a1 = v34;
    }

    else
    {
      a1 = 0;
    }

    v4 = v137;
    v35 = v137[2].isa;
    if (v35 < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v36 = v137[5].isa;
    v37 = (v36 + v35);
    if (__OFADD__(v35, v36))
    {
      goto LABEL_56;
    }

    if (v37 < v35)
    {
      goto LABEL_57;
    }

    v38 = v137[6].isa;
    v39 = v38 + v37;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_58;
    }

    v132 = 0;
    v137 = v35;
    if (v39 < v37)
    {
      goto LABEL_59;
    }

    v40 = isa;
    (*(isa + 2))(v136, v159, v133);
    *&v145 = v137;
    *(&v145 + 1) = v37;
    *&v146 = v33;
    *(&v146 + 1) = a1;
    v139 = v37;
    v140 = v39;
    p_isa = v33;
    v142 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4B0);
    sub_1822424FC();
    v41 = v132;
    v42 = sub_182AD2B38();
    v10 = v41;
    if (v41)
    {
      break;
    }

    *&v145 = 0;
    *(&v145 + 1) = v137;
    *&v146 = v33;
    *(&v146 + 1) = a1;
    v44 = v42;
    v45 = v43;
    v46 = sub_182AD2AD8();
    v132 = 0;
    v10 = v46;
    v136 = v60;
    sub_181C1F2E4(v44, v45);
    v61 = v133;
    v62 = v159;
    if (*(a3 + 24) == 2)
    {
      v63 = swift_projectBox();
      v64 = v134;
      sub_181AB5D28(v63, v134, &qword_1EA8398E0);
      v65 = v10;
      v66 = v10;
      v67 = v136;
      sub_181F49B58(v66, v136);
      v68 = sub_182AD2868();
      (*(*(v68 - 8) + 8))(v64, v68);
      sub_1822A82F4(a3, 0, v65, v67, v144);
      sub_181C1F2E4(v65, v67);
      (v40[1].isa)(v62, v61);
      return 3;
    }

    v69 = *(a3 + 176);
    v155 = *(a3 + 160);
    v156 = v69;
    v157 = *(a3 + 192);
    v158 = *(a3 + 208);
    v70 = *(a3 + 112);
    v151 = *(a3 + 96);
    v152 = v70;
    v71 = *(a3 + 144);
    v153 = *(a3 + 128);
    v154 = v71;
    v72 = *(a3 + 48);
    v147 = *(a3 + 32);
    v148 = v72;
    v73 = *(a3 + 80);
    v149 = *(a3 + 64);
    v150 = v73;
    v74 = *(a3 + 16);
    v145 = *a3;
    v146 = v74;
    v75 = v136;
    sub_181F49B58(v10, v136);
    v76 = Frame.unclaimedBytes.getter();
    if (v78)
    {
      sub_181C1F2E4(v10, v75);
      (v40[1].isa)(v159, v61);
      sub_181C1F2E4(v10, v75);
      return 3;
    }

    v79 = v159;
    a1 = v132;
    if (*(a3 + 24) == 5)
    {
      v80 = v76;
      v81 = v77;
      nw_frame_unclaimed_length(*a3);
      v77 = v81;
      v79 = v159;
      v76 = v80;
    }

    if (!v76)
    {
      v82 = v137;
      if (!v137)
      {
        a3 = a1;
        v83 = 0;
        goto LABEL_42;
      }

LABEL_40:
      a3 = a1;
      v83 = 0;
      v82 = 2;
      goto LABEL_42;
    }

    if (v77 - v76 < v137)
    {
      goto LABEL_40;
    }

    a3 = a1;
    v82 = 0;
    v83 = v137;
LABEL_42:
    v139 = v76;
    v140 = v77;
    p_isa = &v83->isa;
    v142 = v82;
    v143 = 1;
    *(&v146 + 1) = MEMORY[0x1E6969080];
    *&v147 = sub_181F7D470();
    *&v145 = v10;
    *(&v145 + 1) = v136;
    InPlaceSerializer.buffer(_:)(&v145, v138);
    v84 = v40[1].isa;
    v4 = v40 + 1;
    v84(v79, v61);
    __swift_destroy_boxed_opaque_existential_1(&v145);
    if (v143 != 1 || v142)
    {
      goto LABEL_49;
    }

    v86 = v140;
    v85 = p_isa;
    v15 = v139;
    sub_181C1F2E4(v10, v136);
    v87 = v86 - v15;
    if (!v15)
    {
      v87 = 0;
    }

    v88 = __OFSUB__(v87, v85);
    v89 = v87 - v85;
    if (!v88)
    {
      if ((v89 & 0x8000000000000000) == 0)
      {
        return 3;
      }

      __break(1u);
LABEL_49:
      sub_181C1F2E4(v10, v136);
      return 3;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_51:
    v95 = sub_182AD2698();
    __swift_project_value_buffer(v95, qword_1EA843418);
    v96 = swift_allocObject();
    *(v96 + 16) = "open(nonce:packet:frame:)";
    *(v96 + 24) = 25;
    *(v96 + 32) = 2;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_181F8C724;
    *(v97 + 24) = v96;
    v98 = swift_allocObject();
    v130 = v98;
    *(v98 + 16) = 1564427099;
    *(v98 + 24) = 0xE400000000000000;
    v99 = swift_allocObject();
    v124 = v99;
    *(v99 + 16) = v133;
    *(v99 + 24) = v15;

    v100 = sub_182AD2678();
    v126 = v15;
    v133 = v100;
    LODWORD(v132) = sub_182AD38A8();
    v131 = swift_allocObject();
    v131[16] = 32;
    v125 = swift_allocObject();
    *(v125 + 16) = 8;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_181F8C71C;
    *(v101 + 24) = v97;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_181F8C718;
    *(v102 + 24) = v101;
    v127 = v102;
    v128 = swift_allocObject();
    *(v128 + 16) = 32;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v103 = swift_allocObject();
    v104 = v130;
    *(v103 + 16) = sub_181F8C720;
    *(v103 + 24) = v104;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_181F8C718;
    *(v105 + 24) = v103;
    v130 = swift_allocObject();
    *(v130 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = 8;
    v107 = swift_allocObject();
    v108 = v124;
    *(v107 + 16) = sub_181F8C720;
    *(v107 + 24) = v108;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_181F8C718;
    *(v109 + 24) = v107;
    if (os_log_type_enabled(v133, v132))
    {
      v110 = v105;
      v111 = v125;
      v121 = v110;
      v123 = v106;
      v124 = v109;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v144[0] = 0;
      *v112 = 770;
      v122 = v113;
      v138[0] = v113;
      v139 = (v112 + 1);
      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v131;
      sub_181F73AE0(&v145, &v139, v144, v138);
      if (v4)
      {

        while (1)
        {

          __break(1u);
        }
      }

      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v111;
      sub_181F73AE0(&v145, &v139, v144, v138);
      v114 = v130;
      v115 = v121;
      v131 = v112;

      *&v145 = sub_181F8C714;
      *(&v145 + 1) = v127;
      sub_181F73AE0(&v145, &v139, v144, v138);
      v116 = v128;

      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v116;
      sub_181F73AE0(&v145, &v139, v144, v138);

      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v129;
      sub_181F73AE0(&v145, &v139, v144, v138);
      v14 = v159;

      *&v145 = sub_181F8C714;
      *(&v145 + 1) = v115;
      sub_181F73AE0(&v145, &v139, v144, v138);

      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v114;
      sub_181F73AE0(&v145, &v139, v144, v138);

      *&v145 = sub_181F8C728;
      *(&v145 + 1) = v123;
      sub_181F73AE0(&v145, &v139, v144, v138);

      *&v145 = sub_181F8C714;
      *(&v145 + 1) = v124;
      sub_181F73AE0(&v145, &v139, v144, v138);
      v4 = 0;

      v117 = v133;
      v118 = v131;
      _os_log_impl(&dword_181A37000, v133, v132, "%s %s %s", v131, 0x20u);
      v119 = v122;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v119, -1, -1);
      MEMORY[0x1865DF520](v118, -1, -1);
    }

    else
    {

      v14 = v159;
    }
  }

  (v40[1].isa)(v159, v133);
LABEL_23:
  *&v145 = 0;
  *(&v145 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v145 = 0xD000000000000015;
  *(&v145 + 1) = 0x8000000182BE1AF0;
  v139 = v10;
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  v48 = sub_182AD3018();
  MEMORY[0x1865D9CA0](v48);

  v49 = v145;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v50 = sub_182AD2698();
  __swift_project_value_buffer(v50, qword_1EA843418);

  v51 = sub_182AD2678();
  v52 = sub_182AD38B8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&v145 = v159;
    *v53 = 136315650;
    v54 = sub_182AD3BF8();
    v56 = sub_181C64FFC(v54, v55, &v145);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v145);
    *(v53 + 22) = 2080;
    v57 = sub_181C64FFC(v49, *(&v49 + 1), &v145);

    *(v53 + 24) = v57;
    _os_log_impl(&dword_181A37000, v51, v52, "%s %s %s", v53, 0x20u);
    v58 = v159;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v58, -1, -1);
    MEMORY[0x1865DF520](v53, -1, -1);
  }

  else
  {
  }

  v145 = xmmword_182AED520;
  LOBYTE(v146) = 48;
  sub_181F5F494();
  swift_willThrowTypedImpl();

  return 3;
}

uint64_t sub_18223E444(char a1, void **a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = sub_18225AA00(MEMORY[0x1E69E7CC0]);
  *(v3 + 24) = sub_18225AA00(v6);
  *(v3 + 40) = sub_18225ABD8(v6);
  v7 = (v3 + 40);
  *(v3 + 32) = a1;
  v26 = v5;
  sub_182232DCC(&v26);

  v8 = 0;
  while (1)
  {
    v9 = byte_1EEF96C98[v8 + 32];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v7;
    v25 = *v7;
    *v7 = 0x8000000000000000;
    v12 = sub_18224EF74(v9);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_1822518D4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_18224EF74(v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v20 = v25;
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v23 = v12;
    sub_18225590C();
    v12 = v23;
    v20 = v25;
    if (v18)
    {
LABEL_2:
      *(v20[7] + 8 * v12) = 0;
      goto LABEL_3;
    }

LABEL_10:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v9;
    *(v20[7] + 8 * v12) = 0;
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_16;
    }

    v20[2] = v22;
LABEL_3:
    ++v8;
    *v7 = v20;
    swift_endAccess();
    if (v8 == 3)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t sub_18223E628(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v85 = type metadata accessor for SecFramer(0);
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v84 = v22;
  v78 = v6;
  v83 = v3;
  if (byte_1EA843430 != 1)
  {
    goto LABEL_8;
  }

  if (qword_1EA837248 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);
    v24 = sub_182AD2678();
    v25 = sub_182AD38A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v88[0] = v3;
      *v26 = 136315650;
      v27 = sub_182AD3BF8();
      v29 = v4;
      v30 = sub_181C64FFC(v27, v28, v88);

      *(v26 + 4) = v30;
      v4 = v29;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v88);
      *(v26 + 22) = 2080;
      v22 = v84;
      *(v26 + 24) = sub_181C64FFC(0xD000000000000025, 0x8000000182BE1B60, v88);
      _os_log_impl(&dword_181A37000, v24, v25, "%s %s %s", v26, 0x20u);
      swift_arrayDestroy();
      v31 = v3;
      LOBYTE(v3) = v83;
      MEMORY[0x1865DF520](v31, -1, -1);
      MEMORY[0x1865DF520](v26, -1, -1);
    }

LABEL_8:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v2 + 24);
    v33 = v87;
    *(v2 + 24) = 0x8000000000000000;
    v35 = sub_18224EFDC(v3);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      __break(1u);
      goto LABEL_39;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v79 = v35;
        if ((v34 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_182255294();
        v79 = v35;
        if ((v39 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_182250A84(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_18224EFDC(v3);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_45;
      }

      v35 = v40;
      v79 = v40;
      if ((v39 & 1) == 0)
      {
LABEL_12:
        v42 = 1;
        goto LABEL_16;
      }
    }

    sub_182241160(v87[7] + *(v4 + 72) * v35, v22, type metadata accessor for SecFramer);
    v42 = 0;
LABEL_16:
    v43 = v4;
    v45 = *(v4 + 56);
    v4 += 56;
    v44 = v45;
    v45(v22, v42, 1, v85);
    swift_beginAccess();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v2 + 16);
    v46 = v86;
    *(v2 + 16) = 0x8000000000000000;
    v48 = sub_18224EFDC(v3);
    v49 = *(v46 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (!__OFADD__(v49, v50))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v52 = v47;
  if (*(v46 + 24) >= v51)
  {
    if (v22)
    {
      v55 = v84;
      if ((v47 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_182255294();
      v55 = v84;
      if ((v52 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_182250A84(v51, v22);
    v53 = sub_18224EFDC(v83);
    if ((v52 & 1) != (v54 & 1))
    {
LABEL_45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4D0);
      result = sub_182AD4408();
      __break(1u);
      return result;
    }

    v48 = v53;
    v55 = v84;
    if ((v52 & 1) == 0)
    {
LABEL_20:
      v56 = 1;
      v57 = v43;
      goto LABEL_24;
    }
  }

  v57 = v43;
  sub_182241160(v86[7] + *(v43 + 72) * v48, v19, type metadata accessor for SecFramer);
  v56 = 0;
LABEL_24:
  v58 = v85;
  v44(v19, v56, 1, v85);
  v59 = v81;
  sub_1822412D8(v55, v81);
  sub_1822412D8(v19, v55);
  sub_1822412D8(v59, v19);
  v60 = v19;
  v61 = v82;
  sub_1822412D8(v60, v82);
  v62 = *(v57 + 48);
  v63 = v57;
  if (v62(v61, 1, v58) != 1)
  {
    v66 = v61;
    v67 = v77;
    sub_182241160(v66, v77, type metadata accessor for SecFramer);
    v64 = v86;
    if ((v52 & 1) == 0)
    {
      v68 = v76;
      sub_182241160(v67, v76, type metadata accessor for SecFramer);
      v65 = v83;
      sub_182257E68(v48, v83, v68, v64);
      goto LABEL_31;
    }

    sub_182241160(v67, v86[7] + *(v63 + 72) * v48, type metadata accessor for SecFramer);
    goto LABEL_29;
  }

  sub_181F49A88(v61, &qword_1EA83A558);
  v64 = v86;
  if ((v52 & 1) == 0)
  {
LABEL_29:
    v65 = v83;
    goto LABEL_31;
  }

  sub_181FAA6B8(v48, v86);
  v65 = v83;
LABEL_31:
  v69 = v80;
  *(v2 + 16) = v64;
  swift_endAccess();
  sub_1822412D8(v84, v69);
  if (v62(v69, 1, v85) == 1)
  {
    sub_181F49A88(v69, &qword_1EA83A558);
    v70 = v87;
    if (v39)
    {
      sub_181FAA6B8(v79, v87);
    }
  }

  else
  {
    v71 = v69;
    v72 = v78;
    sub_182241160(v71, v78, type metadata accessor for SecFramer);
    v70 = v87;
    if (v39)
    {
      sub_182241160(v72, v87[7] + *(v63 + 72) * v79, type metadata accessor for SecFramer);
    }

    else
    {
      v73 = v72;
      v74 = v76;
      sub_182241160(v73, v76, type metadata accessor for SecFramer);
      sub_182257E68(v79, v65, v74, v70);
    }
  }

  *(v2 + 24) = v70;
  return swift_endAccess();
}

int8x16_t *sub_18223EE58(_BYTE *a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || (v7 = a2 - a1, a2 == a1))
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v12 = sub_182242180(v8, *(a5 + 112), 0, 1);

    *a3 = v12;
  }

  v9 = a5;
  result = sub_181AC1BE8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = result;
      memmove(&result[2], a1, v7);
      a5 = v9;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18223EF20(unsigned __int8 a1, int a2)
{
  v188 = a2;
  v192 = *MEMORY[0x1E69E9840];
  v175 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v159 = &v157 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v157 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v157 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v161 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v157 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v157 - v18;
  v180 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v174 = &v157 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v165 = &v157 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v157 - v25;
  v27 = sub_182AD2B78();
  v189 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v170 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v157 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v158 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v157 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v177 = &v157 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v176 = &v157 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v167 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v185 = &v157 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v186 = &v157 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v179 = &v157 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v157 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v157 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v181 = &v157 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v166 = &v157 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v157 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v157 - v61;
  v63 = type metadata accessor for SecFramer(0);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v168 = &v157 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = (&v157 - v67);
  MEMORY[0x1EEE9AC00](v69);
  v187 = &v157 - v71;
  if (a1 == 3)
  {
    v72 = 4;
  }

  else
  {
    if (a1 != 4)
    {
      __break(1u);
    }

    v72 = 3;
  }

  v164 = v72;
  v184 = v70;
  v162 = v64;
  if (v188)
  {
    v73 = v182;
    swift_beginAccess();
    v74 = *(v73 + 16);
    if (*(v74 + 16) && (v75 = sub_18224EFDC(a1), (v76 & 1) != 0))
    {
      sub_1822411C8(*(v74 + 56) + *(v64 + 72) * v75, v62, type metadata accessor for SecFramer);
      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v83 = *(v64 + 56);
    v84 = v64;
    v64 = v184;
    v163 = v83;
    v83(v62, v77, 1, v184);
    swift_endAccess();
    if ((*(v84 + 48))(v62, 1, v64) != 1)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v62 = v59;
    v78 = v182;
    swift_beginAccess();
    v79 = *(v78 + 24);
    if (*(v79 + 16))
    {
      v80 = sub_18224EFDC(a1);
      if (v81)
      {
        sub_1822411C8(*(v79 + 56) + *(v64 + 72) * v80, v62, type metadata accessor for SecFramer);
        v82 = 0;
        goto LABEL_16;
      }
    }
  }

  v82 = 1;
LABEL_16:
  v85 = *(v64 + 56);
  v86 = v64;
  v87 = v184;
  v163 = v85;
  v85(v62, v82, 1, v184);
  swift_endAccess();
  if ((*(v86 + 48))(v62, 1, v87) == 1)
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_17:
  v88 = type metadata accessor for SecFramer;
  v89 = v187;
  sub_182241160(v62, v187, type metadata accessor for SecFramer);
  sub_1822411C8(v89, v68, type metadata accessor for SecFramer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_182241160(v68, v26, type metadata accessor for SecFramerAESGCM);
    v91 = v189;
    v88 = (v189 + 48);
    if ((v188 & 1) == 0)
    {
      goto LABEL_25;
    }

    v68 = v180;
    v10 = v160;
    sub_181AB5D28(&v26[v180[7]], v160, &qword_1EA83B450);
    EnumCaseMultiPayload = (*v88)(v10, 1, v27);
    v92 = v181;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_55;
  }

  sub_182241160(v68, v10, type metadata accessor for SecFramerChaChaPoly);
  v91 = v189;
  v93 = (v189 + 48);
  v26 = v175;
  if ((v188 & 1) == 0)
  {
    v52 = v161;
    sub_181AB5D28(&v10[*(v175 + 32)], v161, &qword_1EA83B450);
    v103 = (*v93)(v52, 1, v27);
    v92 = v181;
    if (v103 == 1)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    goto LABEL_29;
  }

  v52 = v183;
  sub_181AB5D28(&v10[*(v175 + 28)], v183, &qword_1EA83B450);
  v94 = (*v93)(v52, 1, v27);
  v92 = v181;
  if (v94 != 1)
  {
LABEL_29:
    v104 = *(v91 + 32);
    v104(v49, v52, v27);
    v157 = v104;
    v104(v92, v49, v27);
    v105 = sub_182AD2B68();
    v106 = sub_182AD2B68();
    sub_182241230(v10, type metadata accessor for SecFramerChaChaPoly);
    v160 = v105 / 8;
    v161 = v106 / 8;
    goto LABEL_30;
  }

  __break(1u);
LABEL_25:
  v10 = v157;
  sub_181AB5D28(&v26[v180[8]], v157, &qword_1EA83B450);
  v95 = (*v88)(v10, 1, v27);
  v92 = v181;
  if (v95 == 1)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_26:
  v96 = *(v91 + 32);
  v96(v52, v10, v27);
  v157 = v96;
  v96(v92, v52, v27);
  v97 = sub_182AD2B68();
  v98 = sub_182AD2B68();
  v99 = sub_182AD2B68();
  sub_182241230(v26, type metadata accessor for SecFramerAESGCM);
  v160 = v98 / 8;
  v161 = v99 / 8;
  if (v97 != 256)
  {
LABEL_30:
    v107 = v167;
    v183 = *(v91 + 16);
    (v183)(v167, v92, v27);
    v108 = sub_182AD2B68();
    v191 = sub_182240F24(0x756B2063697571, 0xE700000000000000, v108 / 8);
    sub_182AD2BA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    sub_182241290(&qword_1EA83B490, MEMORY[0x1E6966620]);
    sub_182241290(&qword_1EA83B498, MEMORY[0x1E6966458]);
    sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
    sub_182AD2B88();
    v102 = *(v189 + 8);
    (v102)(v107, v27);

    v191 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, v160);
    sub_182AD2B88();
    goto LABEL_31;
  }

  v100 = v167;
  v183 = *(v91 + 16);
  (v183)(v167, v92, v27);
  v101 = sub_182AD2B68();
  v191 = sub_182240F24(0x756B2063697571, 0xE700000000000000, v101 / 8);
  sub_182AD2BB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  sub_182241290(&qword_1EA83B4A8, MEMORY[0x1E6966630]);
  sub_182241290(&qword_1EA83B498, MEMORY[0x1E6966458]);
  sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
  sub_182AD2B88();
  v102 = *(v189 + 8);
  (v102)(v100, v27);

  v191 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, v160);
  sub_182AD2B88();
LABEL_31:

  v191 = sub_182240F24(0x76692063697571, 0xE700000000000000, v161);
  sub_182AD2B88();

  v109 = v27;
  v110 = v168;
  sub_1822411C8(v187, v168, type metadata accessor for SecFramer);
  v111 = swift_getEnumCaseMultiPayload();
  v112 = v174;
  v113 = v171;
  v114 = v176;
  if (!v111)
  {
    v115 = v110;
    v116 = v165;
    sub_182241160(v115, v165, type metadata accessor for SecFramerAESGCM);
    v117 = v189;
    v118 = v183;
    (v183)(v114, v186, v109);
    v118(v177, v185, v109);
    v119 = v180;
    v118(v113, (v116 + v180[6]), v109);
    v120 = *(v117 + 56);
    v121 = v178;
    v120(&v178[v119[7]], 1, 1, v109);
    v122 = &v121[v119[8]];
    v175 = v120;
    v120(v122, 1, 1, v109);
    v123 = sub_182AD2B68();
    if (v123 != sub_182AD2B68() || sub_182AD2B68() != 128 && sub_182AD2B68() != 256)
    {
      goto LABEL_55;
    }

    v124 = v178;
    v125 = v183;
    (v183)(v178, v114, v109);
    v126 = v180;
    v125(&v124[v180[5]], v177, v109);
    v127 = (v125)(&v124[v126[6]], v113, v109);
    v190 = 0;
    v191 = 0;
    MEMORY[0x1EEE9AC00](v127);
    sub_182AD2B48();
    v128 = v191;
    if (v191)
    {
      v129 = v190;
      if (v190)
      {
        (v102)(v113, v109);
        (v102)(v177, v109);
        (v102)(v176, v109);
        type metadata accessor for SecFramerAESGCM.CryptoContext();
        v130 = swift_allocObject();
        *(v130 + 16) = v128;
        *(v130 + 24) = v129;
        v131 = v180;
        v132 = v178;
        *&v178[v180[9]] = v130;
        sub_182241160(v132, v112, type metadata accessor for SecFramerAESGCM);
        if (v188)
        {
          v133 = v131[7];
        }

        else
        {
          v133 = v131[8];
        }

        sub_181F49A88(v112 + v133, &qword_1EA83B450);
        v134 = v179;
        (v183)(v112 + v133, v179, v109);
        (v175)(v112 + v133, 0, 1, v109);
        v135 = v166;
        sub_1822411C8(v112, v166, type metadata accessor for SecFramerAESGCM);
        v136 = v184;
        swift_storeEnumTagMultiPayload();
        v163(v135, 0, 1, v136);
        swift_beginAccess();
        sub_1820F9F64(v135, v164);
        swift_endAccess();
        v155 = type metadata accessor for SecFramerAESGCM;
        sub_182241230(v165, type metadata accessor for SecFramerAESGCM);
        (v102)(v185, v109);
        (v102)(v186, v109);
        (v102)(v134, v109);
        (v102)(v181, v109);
LABEL_48:
        sub_182241230(v187, type metadata accessor for SecFramer);
        return sub_182241230(v112, v155);
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v111 == 1)
  {
    v137 = v110;
    v138 = v173;
    sub_182241160(v137, v173, type metadata accessor for SecFramerChaChaPoly);
    v139 = v189;
    v140 = v158;
    v141 = v183;
    (v183)(v158, v186, v109);
    v141(v169, v185, v109);
    v142 = v175;
    v141(v170, (v138 + *(v175 + 24)), v109);
    v143 = *(v139 + 56);
    v144 = v172;
    v143(&v172[v142[7]], 1, 1, v109);
    v143(&v144[v142[8]], 1, 1, v109);
    v145 = sub_182AD2B68();
    v146 = sub_182AD2B68();
    v112 = v159;
    if (v145 == v146)
    {
      v180 = v102;
      if (sub_182AD2B68() == 256)
      {
        v147 = v140;
        v148 = v172;
        v149 = v157;
        (v157)(v172, v147, v109);
        (v149)(v148 + v142[5], v169, v109);
        (v149)(v148 + v142[6], v170, v109);
        sub_182241160(v148, v112, type metadata accessor for SecFramerChaChaPoly);
        if (v188)
        {
          v150 = v142[7];
        }

        else
        {
          v150 = v142[8];
        }

        sub_181F49A88(v112 + v150, &qword_1EA83B450);
        v151 = v179;
        (v183)(v112 + v150, v179, v109);
        v143((v112 + v150), 0, 1, v109);
        v152 = v166;
        sub_1822411C8(v112, v166, type metadata accessor for SecFramerChaChaPoly);
        v153 = v184;
        swift_storeEnumTagMultiPayload();
        v163(v152, 0, 1, v153);
        swift_beginAccess();
        sub_1820F9F64(v152, v164);
        swift_endAccess();
        v154 = v180;
        v155 = type metadata accessor for SecFramerChaChaPoly;
        sub_182241230(v173, type metadata accessor for SecFramerChaChaPoly);
        (v154)(v185, v109);
        (v154)(v186, v109);
        (v154)(v151, v109);
        (v154)(v181, v109);
        goto LABEL_48;
      }
    }
  }

LABEL_55:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182240974()
{

  return swift_deallocClassInstance();
}

uint64_t sub_182240A00()
{
  result = type metadata accessor for SecFramerAESGCM(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SecFramerChaChaPoly(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SecFramerQUICPod(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_182240B10()
{
  sub_182240B7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_182240B7C()
{
  if (!qword_1EA83B468)
  {
    sub_182AD2B78();
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA83B468);
    }
  }
}

void sub_182240BFC()
{
  sub_182AD2B78();
  if (v0 <= 0x3F)
  {
    sub_182240B7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_182240CB0()
{
  sub_182AD2B78();
  if (v0 <= 0x3F)
  {
    sub_182240B7C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SecFramerAESGCM.CryptoContext();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_182240D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Frame.unclaimedBytes.getter();
  if ((v7 & 1) == 0)
  {
    v8 = *(a3 + 16);
    if (*(a1 + 168) == 1)
    {
      if (!v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = 15;
    }

    else
    {
      if (!v8)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = 31;
    }

    v10 = *result ^ *(a3 + 32) & v9;
    *result = v10;
    v11 = *(a1 + 112);
    if (v11 == -1)
    {
      if (*(a1 + 32))
      {
LABEL_26:
        __break(1u);
        v19 = v6;
        v20 = result;
        v21 = v7;
        sub_181F5F494();
        swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v15 = (v10 & 3u) + 1;
    }

    else
    {
      v12 = result;
      v13 = sub_1822238E8();
      if (v13 == 4)
      {
        sub_181F5EDC8(*(a1 + 8), 4, v11);
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }

      result = v12;
      if (*(a1 + 32))
      {
        goto LABEL_25;
      }

      v15 = v14 + 1;
    }

    v16 = *(a3 + 16);
    if (v16 >= 2 && v15 < v16)
    {
      v17 = 0;
      v18 = *(a1 + 24);
      while (!__OFADD__(v18, v17))
      {
        result[v18 + v17] ^= *(a3 + 33 + v17);
        if (v15 == ++v17)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_182240F24(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = v7 + 6;
  if (__OFADD__(v7, 6))
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    while (!__OFADD__(v8, 3))
    {
      v9 = v8 + 4;
      if (__OFADD__(v8 + 3, 1))
      {
        goto LABEL_39;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v8 == -4)
      {
        v10 = MEMORY[0x1E69E7CC0];
        v9 = *(MEMORY[0x1E69E7CC0] + 16);

        if (!v9)
        {
          goto LABEL_41;
        }
      }

      else
      {

        v10 = sub_182AD3428();
        *(v10 + 16) = v9;
        bzero((v10 + 32), v9);
      }

      *(v10 + 32) = BYTE1(a3);
      if (v9 == 1)
      {
        goto LABEL_42;
      }

      *(v10 + 33) = a3;
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v8 > 0xFF)
      {
        goto LABEL_44;
      }

      if (v9 < 3)
      {
        goto LABEL_45;
      }

      *(v10 + 34) = v8;
      v15 = v10;
      a3 = &v15;
      sub_181FCCD18(3uLL, 9, 0x203331736C74, 0xE600000000000000);
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_182AD3168();
        v11 = v12 + 9;
        if (!__OFADD__(v12, 9))
        {
          goto LABEL_22;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v11 = v6 + 9;
        if (!__OFADD__(v6, 9))
        {
LABEL_22:
          if (v11 < 9)
          {
            goto LABEL_46;
          }

          sub_181FCCD18(9uLL, v11, a1, a2);

          if ((a2 & 0x1000000000000000) != 0)
          {
            v6 = sub_182AD3168();
          }

          else if ((a2 & 0x2000000000000000) == 0)
          {
            v6 = a1 & 0xFFFFFFFFFFFFLL;
          }

          a3 = v6 + 9;
          if (__OFADD__(v6, 9))
          {
            goto LABEL_47;
          }

          v6 = v15;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_48;
          }

          if ((a3 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v11 = (a1 & 0xFFFFFFFFFFFFLL) + 9;
        if (!__OFADD__(a1 & 0xFFFFFFFFFFFFLL, 9))
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_35:
      v14 = sub_182AD3168();
      v8 = v14 + 6;
      if (__OFADD__(v14, 6))
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_182083570(v6);
  v6 = result;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_30:
    if (a3 < *(v6 + 16))
    {
      *(v6 + a3 + 32) = 0;
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182241160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1822411C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_182241230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_182241290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1822412D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_182241368(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_182241378(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= 0xD)
  {
    v1 = a1;
    v8 = *(v6 + 48);
    v9 = v8 + *(v6 + 32);
    HIDWORD(v10) = *(v6 + 80) ^ v9;
    LODWORD(v10) = HIDWORD(v10);
    v3 = v10 >> 16;
    v4 = v3 + *(v6 + 64);
    HIDWORD(v10) = v4 ^ v8;
    LODWORD(v10) = v4 ^ v8;
    v5 = v10 >> 20;
    v2 = v5 + v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1820835D4(v6);
  v6 = result;
LABEL_6:
  *(v6 + 32) = v2;
  v12 = *(v6 + 16);
  if (v12 < 5)
  {
    __break(1u);
    goto LABEL_19;
  }

  HIDWORD(v14) = v2 ^ v3;
  LODWORD(v14) = v2 ^ v3;
  v13 = v14 >> 24;
  HIDWORD(v14) = (v13 + v4) ^ v5;
  LODWORD(v14) = HIDWORD(v14);
  *(v6 + 48) = v14 >> 25;
  if (v12 < 9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v6 + 64) = v13 + v4;
  if (v12 < 0xD)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v6 + 80) = v13;
  *v1 = v6;
  if (v12 == 13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v6 + 52);
  v16 = *(v6 + 36) + v15;
  HIDWORD(v18) = *(v6 + 84) ^ v16;
  LODWORD(v18) = HIDWORD(v18);
  v17 = v18 >> 16;
  v19 = v17 + *(v6 + 68);
  HIDWORD(v18) = v19 ^ v15;
  LODWORD(v18) = v19 ^ v15;
  v20 = v18 >> 20;
  v21 = v20 + v16;
  HIDWORD(v18) = (v20 + v16) ^ v17;
  LODWORD(v18) = HIDWORD(v18);
  v22 = v18 >> 24;
  *(v6 + 36) = v21;
  v23 = v22 + v19;
  *(v6 + 68) = v22 + v19;
  *(v6 + 84) = v22;
  *v1 = v6;
  if (v12 < 0xF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = *(v6 + 56);
  v25 = *(v6 + 40) + v24;
  HIDWORD(v27) = *(v6 + 88) ^ v25;
  LODWORD(v27) = HIDWORD(v27);
  v26 = v27 >> 16;
  v28 = v26 + *(v6 + 72);
  HIDWORD(v27) = v28 ^ v24;
  LODWORD(v27) = v28 ^ v24;
  v29 = v27 >> 20;
  v30 = v29 + v25;
  HIDWORD(v27) = v30 ^ v26;
  LODWORD(v27) = v30 ^ v26;
  v31 = v27 >> 24;
  v32 = v31 + v28;
  *(v6 + 40) = v30;
  HIDWORD(v27) = (v31 + v28) ^ v29;
  LODWORD(v27) = HIDWORD(v27);
  *(v6 + 56) = v27 >> 25;
  *(v6 + 88) = v31;
  *v1 = v6;
  if (v12 != 15)
  {
    v33 = *(v6 + 60);
    HIDWORD(v35) = v23 ^ v20;
    LODWORD(v35) = v23 ^ v20;
    v34 = v35 >> 25;
    v36 = *(v6 + 44) + v33;
    HIDWORD(v35) = *(v6 + 92) ^ v36;
    LODWORD(v35) = HIDWORD(v35);
    v37 = v35 >> 16;
    v38 = v37 + *(v6 + 76);
    HIDWORD(v35) = v38 ^ v33;
    LODWORD(v35) = v38 ^ v33;
    v39 = v35 >> 20;
    v40 = v39 + v36;
    HIDWORD(v35) = v40 ^ v37;
    LODWORD(v35) = v40 ^ v37;
    v41 = v35 >> 24;
    v42 = v41 + v38;
    HIDWORD(v35) = v42 ^ v39;
    LODWORD(v35) = v42 ^ v39;
    *(v6 + 44) = v40;
    *(v6 + 60) = v35 >> 25;
    v43 = v34 + v2;
    HIDWORD(v35) = v41 ^ (v34 + v2);
    LODWORD(v35) = HIDWORD(v35);
    v44 = v35 >> 16;
    v45 = v44 + v32;
    HIDWORD(v35) = v45 ^ v34;
    LODWORD(v35) = v45 ^ v34;
    v46 = v35 >> 20;
    v47 = v46 + v43;
    HIDWORD(v35) = v47 ^ v44;
    LODWORD(v35) = v47 ^ v44;
    v48 = v35 >> 24;
    v49 = v48 + v45;
    HIDWORD(v35) = v49 ^ v46;
    LODWORD(v35) = v49 ^ v46;
    *(v6 + 32) = v47;
    *(v6 + 52) = v35 >> 25;
    *(v6 + 72) = v49;
    *(v6 + 76) = v42;
    *(v6 + 92) = v48;
    *v1 = v6;
    v50 = *(v6 + 56);
    v51 = v50 + *(v6 + 36);
    HIDWORD(v35) = *(v6 + 80) ^ v51;
    LODWORD(v35) = HIDWORD(v35);
    v52 = v35 >> 16;
    v53 = v52 + *(v6 + 76);
    HIDWORD(v35) = v53 ^ v50;
    LODWORD(v35) = v53 ^ v50;
    v54 = v35 >> 20;
    v55 = v54 + v51;
    HIDWORD(v35) = v55 ^ v52;
    LODWORD(v35) = v55 ^ v52;
    v56 = v35 >> 24;
    v57 = v56 + v53;
    HIDWORD(v35) = v57 ^ v54;
    LODWORD(v35) = v57 ^ v54;
    *(v6 + 36) = v55;
    *(v6 + 56) = v35 >> 25;
    *(v6 + 76) = v57;
    *(v6 + 80) = v56;
    *v1 = v6;
    v58 = *(v6 + 60);
    v59 = v58 + *(v6 + 40);
    HIDWORD(v35) = *(v6 + 84) ^ v59;
    LODWORD(v35) = HIDWORD(v35);
    v60 = v35 >> 16;
    v61 = v60 + *(v6 + 64);
    HIDWORD(v35) = v61 ^ v58;
    LODWORD(v35) = v61 ^ v58;
    v62 = v35 >> 20;
    v63 = v62 + v59;
    HIDWORD(v35) = v63 ^ v60;
    LODWORD(v35) = v63 ^ v60;
    v64 = v35 >> 24;
    v65 = v64 + v61;
    HIDWORD(v35) = v65 ^ v62;
    LODWORD(v35) = v65 ^ v62;
    *(v6 + 40) = v63;
    *(v6 + 60) = v35 >> 25;
    *(v6 + 64) = v65;
    *(v6 + 84) = v64;
    *v1 = v6;
    v66 = *(v6 + 48);
    v67 = v66 + *(v6 + 44);
    HIDWORD(v35) = *(v6 + 88) ^ v67;
    LODWORD(v35) = HIDWORD(v35);
    v68 = v35 >> 16;
    v69 = v68 + *(v6 + 68);
    HIDWORD(v35) = v69 ^ v66;
    LODWORD(v35) = v69 ^ v66;
    v70 = v35 >> 20;
    v71 = v70 + v67;
    HIDWORD(v35) = v71 ^ v68;
    LODWORD(v35) = v71 ^ v68;
    v72 = v35 >> 24;
    v73 = v72 + v69;
    HIDWORD(v35) = v73 ^ v70;
    LODWORD(v35) = v73 ^ v70;
    *(v6 + 44) = v71;
    *(v6 + 48) = v35 >> 25;
    *(v6 + 68) = v73;
    *(v6 + 88) = v72;
    *v1 = v6;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1822416A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = sub_182AD3428();
  *(v7 + 16) = 16;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = xmmword_182B008F0;
  v8 = *(a1 + 16);
  if (v8 < 4)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v7 + 48) = *(a1 + 32);
  if (v8 < 8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = v7;
  *(v7 + 52) = *(a1 + 36);
  if (v8 < 0xC)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 56) = *(a1 + 40);
  if (v8 < 0x10)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v7 + 60) = *(a1 + 44);
  if (v8 < 0x14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v7 + 64) = *(a1 + 48);
  if (v8 < 0x18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v7 + 68) = *(a1 + 52);
  if (v8 < 0x1C)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v7 + 72) = *(a1 + 56);
  if (v8 < 0x20)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v7 + 76) = *(a1 + 60);
  *(v7 + 80) = a2;
  v9 = *(a3 + 16);
  if (v9 < 4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v7 + 84) = *(a3 + 32);
  if (v9 < 8)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v7 + 88) = *(a3 + 36);
  if (v9 < 0xC)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v7 + 92) = *(a3 + 40);
  v24[0] = v7;

  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  sub_182241378(v24);
  a2 = *(v3 + 2);
  if (!a2)
  {
    goto LABEL_21;
  }

  a3 = v24[0];
  if (a2 > *(v24[0] + 16))
  {
    goto LABEL_69;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_70;
  }

  if (a2 >= 8)
  {
    goto LABEL_16;
  }

LABEL_18:
  v11 = 0;
LABEL_19:
  v12 = a2 - v11;
  v13 = 4 * v11 + 32;
  do
  {
    *&v3[v13] += *(a3 + v13);
    v13 += 4;
    --v12;
  }

  while (v12);
  while (1)
  {
LABEL_21:
    a3 = 64;
    v14 = sub_182AD3428();
    *(v14 + 16) = 64;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    v23 = v14;
    if (!*(v3 + 2))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v22 = *(v3 + 8);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0, 4, a2);

    if (*(v3 + 2) < 2uLL)
    {
      goto LABEL_54;
    }

    v22 = *(v3 + 9);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(4, 8, a2);

    if (*(v3 + 2) < 3uLL)
    {
      goto LABEL_55;
    }

    v22 = *(v3 + 10);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(8, 12, a2);

    if (*(v3 + 2) < 4uLL)
    {
      goto LABEL_56;
    }

    v22 = *(v3 + 11);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0xC, 16, a2);

    if (*(v3 + 2) < 5uLL)
    {
      goto LABEL_57;
    }

    v22 = *(v3 + 12);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x10, 20, a2);

    if (*(v3 + 2) < 6uLL)
    {
      goto LABEL_58;
    }

    v22 = *(v3 + 13);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x14, 24, a2);

    if (*(v3 + 2) < 7uLL)
    {
      goto LABEL_59;
    }

    v22 = *(v3 + 14);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x18, 28, a2);

    if (*(v3 + 2) < 8uLL)
    {
      goto LABEL_60;
    }

    v22 = *(v3 + 15);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x1C, 32, a2);

    if (*(v3 + 2) < 9uLL)
    {
      goto LABEL_61;
    }

    v22 = *(v3 + 16);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x20, 36, a2);

    if (*(v3 + 2) < 0xAuLL)
    {
      goto LABEL_62;
    }

    v22 = *(v3 + 17);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x24, 40, a2);

    if (*(v3 + 2) < 0xBuLL)
    {
      goto LABEL_63;
    }

    v22 = *(v3 + 18);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x28, 44, a2);

    if (*(v3 + 2) < 0xCuLL)
    {
      goto LABEL_64;
    }

    v22 = *(v3 + 19);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x2C, 48, a2);

    if (*(v3 + 2) < 0xDuLL)
    {
      goto LABEL_65;
    }

    v22 = *(v3 + 20);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x30, 52, a2);

    if (*(v3 + 2) < 0xEuLL)
    {
      goto LABEL_66;
    }

    v22 = *(v3 + 21);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x34, 56, a2);

    if (*(v3 + 2) < 0xFuLL)
    {
      goto LABEL_67;
    }

    v22 = *(v3 + 22);
    a2 = sub_181AC1C5C(&v22, &v23);
    a3 = &v23;
    sub_181FCDC2C(0x38, 60, a2);

    if (*(v3 + 2) >= 0x10uLL)
    {
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v3 = sub_1820835D4(v3);
    if (a2 < 8)
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = 4 * a2 + 32;
    if ((v3 + 32) < a3 + v10 && a3 + 32 < &v3[v10])
    {
      goto LABEL_18;
    }

    v11 = a2 & 0x7FFFFFFFFFFFFFF8;
    v18 = (v3 + 48);
    v19 = (a3 + 48);
    v20 = a2 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v21 = vaddq_s32(*v19, *v18);
      v18[-1] = vaddq_s32(v19[-1], v18[-1]);
      *v18 = v21;
      v18 += 2;
      v19 += 2;
      v20 -= 8;
    }

    while (v20);
    if (a2 != v11)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v3 + 23);
  v15 = sub_181AC1C5C(&v22, &v23);
  sub_181FCDC2C(0x3C, 64, v15);

  v16 = v23;

  return v16;
}

char *sub_182241E00(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v34 = *(a4 + 16);
  v8 = floor(vcvtd_n_f64_u64(v34, 6uLL));
  if (v8 == INFINITY)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v9 = v8;
  v10 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v4 = a4;
  if (v10 >= 1)
  {
    v29 = v8;
    v6 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (!__CFADD__(a2, v6))
    {
      v11 = sub_1822416A4(a1, (a2 + v6), v32);
      if (v6 == v34 >> 6)
      {
        goto LABEL_42;
      }

      v7 = v11;
      if (v34 == 64)
      {

        v12 = v4;
      }

      else
      {
        sub_1822D0918(v4, v4 + 32, v6 << 6, (v6 << 7) + 129);
        v12 = v19;
      }

      if (*(v12 + 16) < 0x10uLL)
      {
        goto LABEL_43;
      }

      if (*(v7 + 16) < 0x10uLL)
      {
        goto LABEL_44;
      }

      v13 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_181ADBA10(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      for (i = 32; i != 48; ++i)
      {
        v16 = *(v12 + i);
        v17 = *(v7 + i);
        v18 = *(v5 + 3);
        if (v14 >= v18 >> 1)
        {
          v5 = sub_181ADBA10((v18 > 1), v14 + 1, 1, v5);
        }

        *(v5 + 2) = v14 + 1;
        v5[v14++ + 32] = v17 ^ v16;
      }

      if (v6 == v13)
      {
        v9 = v29;
        v4 = a4;
        goto LABEL_25;
      }

      v10 = v13;
      ++v6;
      v4 = a4;
      if (v6 == 0x100000000)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v7 = v34 & 0x3F;
  if ((v34 & 0x3F) != 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v9))
      {
        v20 = v9;
        if (!__CFADD__(a2, v9))
        {
          v21 = sub_1822416A4(a1, (a2 + v9), v32);
          a3 = v20 << 6;
          if (v34 > v20 << 6)
          {
            v6 = v21;
            if (!v20)
            {

              goto LABEL_32;
            }

LABEL_54:
            sub_1822D0918(v4, v4 + 32, a3, (2 * v34) | 1);
            v4 = v28;
LABEL_32:
            if (v7 > *(v4 + 16))
            {
              __break(1u);
            }

            else if (v7 <= *(v6 + 16))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_35;
              }

              goto LABEL_57;
            }

            __break(1u);
LABEL_57:
            v5 = sub_181ADBA10(0, *(v5 + 2) + 1, 1, v5);
LABEL_35:
            v22 = *(v5 + 2);
            v23 = 32;
            do
            {
              v24 = *(v4 + v23);
              v25 = *(v6 + v23);
              v26 = *(v5 + 3);
              if (v22 >= v26 >> 1)
              {
                v5 = sub_181ADBA10((v26 > 1), v22 + 1, 1, v5);
              }

              *(v5 + 2) = v22 + 1;
              v5[v22 + 32] = v25 ^ v24;
              ++v23;
              ++v22;
              --v7;
            }

            while (v7);

            return v5;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return v5;
}

uint64_t sub_182242180(int8x16_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1[1].u64[0];
  if (v8)
  {
    v9 = sub_182AD3428();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    if (a4)
    {
LABEL_3:
      v10 = *(v9 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (a3 < 0x100000000)
  {
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *(v9 + 32) |= BYTE3(a3);
    if (v10 == 1)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    *(v9 + 33) |= BYTE2(a3);
    if (v10 < 3)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *(v9 + 34) |= BYTE1(a3);
    if (v10 == 3)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(v9 + 35) |= a3;
LABEL_11:
    if (v10 < 5)
    {
      __break(1u);
    }

    else
    {
      *(v9 + 36) |= HIBYTE(a2);
      if (v10 != 5)
      {
        *(v9 + 37) |= BYTE6(a2);
        if (v10 >= 7)
        {
          *(v9 + 38) |= BYTE5(a2);
          if (v10 != 7)
          {
            *(v9 + 39) |= BYTE4(a2);
            if (v10 >= 9)
            {
              *(v9 + 40) |= BYTE3(a2);
              if (v10 != 9)
              {
                *(v9 + 41) |= BYTE2(a2);
                if (v10 >= 0xB)
                {
                  *(v9 + 42) |= BYTE1(a2);
                  if (v10 != 11)
                  {
                    *(v9 + 43) |= a2;
                    if (!v8)
                    {
                      return v9;
                    }

                    if (v8 <= v10)
                    {
                      if (v8 < 8 || v9 + 32 < a1[2].u64 + v8 && &a1[2] < v9 + v8 + 32)
                      {
                        v11 = 0;
LABEL_25:
                        v12 = v8 - v11;
                        v13 = v11 + 32;
                        v14 = (v9 + v11 + 32);
                        v15 = &a1->i8[v13];
                        do
                        {
                          v16 = *v15++;
                          *v14++ ^= v16;
                          --v12;
                        }

                        while (v12);
                        return v9;
                      }

                      if (v8 >= 0x20)
                      {
                        v11 = v8 & 0x7FFFFFFFFFFFFFE0;
                        v18 = a1 + 3;
                        v19 = (v9 + 48);
                        v20 = v8 & 0x7FFFFFFFFFFFFFE0;
                        do
                        {
                          v21 = veorq_s8(*v19, *v18);
                          v19[-1] = veorq_s8(v19[-1], v18[-1]);
                          *v19 = v21;
                          v18 += 2;
                          v19 += 2;
                          v20 -= 32;
                        }

                        while (v20);
                        if (v8 == v11)
                        {
                          return v9;
                        }

                        if ((v8 & 0x18) == 0)
                        {
                          goto LABEL_25;
                        }
                      }

                      else
                      {
                        v11 = 0;
                      }

                      v22 = v11;
                      v11 = v8 & 0x7FFFFFFFFFFFFFF8;
                      v23 = &a1[2].i8[v22];
                      v24 = (v9 + v22 + 32);
                      v25 = v22 - (v8 & 0x7FFFFFFFFFFFFFF8);
                      do
                      {
                        v26 = *v23++;
                        *v24 = veor_s8(*v24, v26);
                        ++v24;
                        v25 += 8;
                      }

                      while (v25);
                      if (v8 == v11)
                      {
                        return v9;
                      }

                      goto LABEL_25;
                    }

                    goto LABEL_46;
                  }

LABEL_45:
                  __break(1u);
LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_51:
  sub_182AD3BA8();

  v27 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v27);

  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BE1AD0);
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

unint64_t sub_1822424FC()
{
  result = qword_1EA83B4B8;
  if (!qword_1EA83B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B4B0);
    sub_181CA5CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B4B8);
  }

  return result;
}

unint64_t sub_182242714()
{
  result = qword_1EA83B4E8;
  if (!qword_1EA83B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B4E8);
  }

  return result;
}

unint64_t sub_182242768()
{
  result = qword_1EA83B4F0;
  if (!qword_1EA83B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B4F0);
  }

  return result;
}

uint64_t sub_182242854(uint64_t a1, uint64_t a2)
{
  v4 = sub_182242904();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_1822428B0()
{
  result = qword_1EA83B4F8;
  if (!qword_1EA83B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B4F8);
  }

  return result;
}

unint64_t sub_182242904()
{
  result = qword_1EA83B500;
  if (!qword_1EA83B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B500);
  }

  return result;
}

uint64_t NWApplicationID.hash(into:)()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v5 = v9;
  sub_182242B70(nw_application_id_get_uuid);
  sub_182242AAC();
  sub_182AD2EB8();
  v6 = *(v2 + 8);
  v6(v4, v1);
  v9 = v5;
  NWApplicationID.persona.getter();
  sub_182AD2EB8();
  return (v6)(v4, v1);
}

unint64_t sub_182242AAC()
{
  result = qword_1EA836BF0;
  if (!qword_1EA836BF0)
  {
    sub_182AD2258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BF0);
  }

  return result;
}

uint64_t NWApplicationID.persona.getter()
{

  return sub_182242B70(nw_application_id_get_persona);
}

uint64_t sub_182242B70(void (*a1)(uint64_t, void *))
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v5[0] = 0;
  v5[1] = 0;
  a1(v3, v5);
  return sub_182AD2228();
}

uint64_t static NWApplicationID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_182AD2258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = *a2;
  v17 = *a1;
  sub_182242B70(nw_application_id_get_uuid);
  v16 = v12;
  sub_182242B70(nw_application_id_get_uuid);
  LOBYTE(a2) = sub_182AD2218();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (a2)
  {
    v17 = v11;
    NWApplicationID.persona.getter();
    v16 = v12;
    NWApplicationID.persona.getter();
    v14 = sub_182AD2218();
    v13(v7, v4);
    v13(v10, v4);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_182242DF4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v71 = *MEMORY[0x1E69E9840];
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v14 = a6;
  v15 = a5;
  v60 = a8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v59 = a5;
    v63 = a1;
    v64 = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(a3 + 40);
    v15 = *(a3 + 48);

    sub_181F88CC0(a3, v65);

    sub_181F88CC0(a3, v65);

    sub_181F88CC0(a3, v65);
    v25 = sub_181CA4798(v18, v15);
    v61 = v10;
    if ((v25 & 1) == 0)
    {
      v29 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v29 = v18;
      }

      v30 = 7;
      if (((v15 >> 60) & ((v18 & 0x800000000000000) == 0)) != 0)
      {
        v30 = 11;
      }

      isStackAllocationSafe = sub_18224A3EC(0xFuLL, v30 | (v29 << 16), v18, v15);
      v32 = isStackAllocationSafe + 1;
      if (!__OFADD__(isStackAllocationSafe, 1))
      {
        if (v32 < 0)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
        }

        if (v32 < 1025)
        {
LABEL_21:
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v34 = v58 - v33;
          sub_182243F74(v58 - v33, v35, v18, v15);
          v36 = sub_182AD30F8();
          v37 = sub_182AD30F8();
          a4(&v63, v36, v34, v37);
          goto LABEL_30;
        }

LABEL_46:
        v50 = v32;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v51 = v50;
          v52 = swift_slowAlloc();

          sub_181F88CC0(a3, v65);
          v53 = v61;
          sub_18224402C(v52, v51, v18, v15, a4, v59, &v63, v14, a7, a3);
          v61 = v53;
          v54 = v52;
          if (!v53)
          {
LABEL_48:
            MEMORY[0x1865DF520](v54, -1, -1);
            goto LABEL_30;
          }

          goto LABEL_51;
        }

        goto LABEL_21;
      }

      goto LABEL_44;
    }

    MEMORY[0x1EEE9AC00](v25);
    if ((v15 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        v62[0] = v18;
        v62[1] = v15 & 0xFFFFFFFFFFFFFFLL;

        sub_181F88CC0(a3, v65);
        v26 = sub_182AD30F8();
        v27 = sub_182AD30F8();
        v28 = v62;
        goto LABEL_32;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {

        sub_181F88CC0(a3, v65);
        v26 = sub_182AD30F8();
        v27 = sub_182AD30F8();
        v28 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_32:
        a4(&v63, v26, v28, v27);
        goto LABEL_33;
      }
    }

    sub_181F88CC0(a3, v65);
    sub_182AD3B78();
    if (v61)
    {
LABEL_43:

      sub_181CA27BC(a3);
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_33:

    sub_181CA27BC(a3);

    sub_181CA27BC(a3);
    goto LABEL_37;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_39:
    sub_182AD3B78();
    v61 = v10;
    goto LABEL_38;
  }

  v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v17 = *(a3 + 40);
  v18 = *(a3 + 48);

  sub_181F88CC0(a3, v65);

  sub_181F88CC0(a3, v65);

  sub_181F88CC0(a3, v65);
  v19 = sub_181CA4798(v17, v18);
  v61 = v10;
  if (v19)
  {
    v58[1] = v58;
    MEMORY[0x1EEE9AC00](v19);
    if ((v18 & 0x1000000000000000) == 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v63 = v17;
        v64 = v18 & 0xFFFFFFFFFFFFFFLL;

        sub_181F88CC0(a3, v65);
        v47 = sub_182AD30F8();
        v21 = sub_182AD30F8();
        v22 = &v63;
        v23 = v16;
        v24 = v47;
        goto LABEL_35;
      }

      if ((v17 & 0x1000000000000000) != 0)
      {
        v59 = v15;

        sub_181F88CC0(a3, v65);
        v20 = sub_182AD30F8();
        v21 = sub_182AD30F8();
        v22 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v23 = v16;
        v24 = v20;
LABEL_35:
        a4(v23, v24, v22, v21);
LABEL_36:

        sub_181CA27BC(a3);

        sub_181CA27BC(a3);
        goto LABEL_37;
      }
    }

    v14 = a10;

    sub_181F88CC0(a3, v65);
    v49 = v61;
    sub_182AD3B78();
    v61 = v49;
    if (!v49)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  v59 = v16;
  v38 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v38 = v17;
  }

  v39 = 7;
  if (((v18 >> 60) & ((v17 & 0x800000000000000) == 0)) != 0)
  {
    v39 = 11;
  }

  v40 = sub_18224A3EC(0xFuLL, v39 | (v38 << 16), v17, v18);
  v32 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
    goto LABEL_45;
  }

  if (v32 < 0)
  {
    goto LABEL_53;
  }

  if (v32 >= 1025)
  {
    v55 = v40 + 1;
    v40 = swift_stdlib_isStackAllocationSafe();
    if ((v40 & 1) == 0)
    {
      v56 = v55;
      v57 = swift_slowAlloc();

      sub_181F88CC0(a3, v65);
      sub_18224402C(v57, v56, v17, v18, a4, v15, v59, v14, a7, a3);
      v54 = v57;
      if (!v61)
      {
        goto LABEL_48;
      }

LABEL_51:
      MEMORY[0x1865DF520](v54, -1, -1);
      __break(1u);
      goto LABEL_52;
    }
  }

  MEMORY[0x1EEE9AC00](v40);
  v42 = v58 - v41;
  sub_182243F74(v58 - v41, v43, v17, v18);
  v44 = a4;
  v45 = sub_182AD30F8();
  v46 = sub_182AD30F8();
  v44(v59, v45, v42, v46);
LABEL_30:

  sub_181CA27BC(a3);
LABEL_37:

  sub_181CA27BC(a3);

  sub_181CA27BC(a3);
LABEL_38:
  sub_181CA27BC(a3);
}

uint64_t sub_1822435C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_182AD3B78();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_182AD3B78();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t sub_182243630(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = sub_18224FE14();
    v10 = v9;

    v3 = v8;
    *v1 = v8;
    v1[1] = v10;
    v4 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v4) & 0xF;
    v12[0] = v3;
    v12[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return a1(v7, v6);
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_182AD3CF8();
  }

  v7 = v5;
  return a1(v7, v6);
}

uint64_t sub_18224370C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v37 = a9;
  v41 = *MEMORY[0x1E69E9840];
  v38 = v9;
  if ((sub_181CA4798(a1, a2) & 1) == 0)
  {
    v36 = a6;
    v20 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v20 = a1;
    }

    v21 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 11;
    }

    v22 = sub_18224A3EC(0xFuLL, v21 | (v20 << 16), a1, a2);
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      if (v24 < 0)
      {
        __break(1u);
      }

      v23 = v40;
      v22 = a8;
      if (v24 < 1025)
      {
        sub_181F88CC0(a8, v40);

        isStackAllocationSafe = sub_181F88CC0(a8, v40);
LABEL_14:
        v37 = &v35;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v27 = &v35 - v26;
        sub_182243F74(&v35 - v26, v24, a1, a2);
        v28 = sub_182AD30F8();
        v29 = sub_182AD30F8();
        a3(a5, v28, v27, v29);

        sub_181CA27BC(a8);
        goto LABEL_16;
      }
    }

    sub_181F88CC0(v22, v23);

    sub_181F88CC0(a8, v40);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v34 = swift_slowAlloc();

      sub_181F88CC0(a8, v40);
      sub_18224402C(v34, v24, a1, a2, a3, a4, a5, v36, a7, a8);
      MEMORY[0x1865DF520](v34, -1, -1);

      sub_181CA27BC(a8);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](&v35);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v39[0] = a1;
    v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;

    sub_181F88CC0(a8, v40);
    sub_181F88CC0(a8, v40);
    v30 = sub_182AD30F8();
    v31 = sub_182AD30F8();
    a3(a5, v30, v39, v31);
    sub_181CA27BC(a8);
    goto LABEL_16;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_17:

    sub_181F88CC0(a8, v40);
    sub_181F88CC0(a8, v40);
    v33 = v38;
    sub_182AD3B78();
    sub_181CA27BC(a8);
    v38 = v33;
    goto LABEL_16;
  }

  sub_181F88CC0(a8, v40);
  sub_181F88CC0(a8, v40);
  v18 = sub_182AD30F8();
  v19 = sub_182AD30F8();
  a3(a5, v18, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, v19);
  sub_181CA27BC(a8);
LABEL_16:

  sub_181CA27BC(a8);

  return sub_181CA27BC(a8);
}

void sub_182243B18(unint64_t a1, unint64_t a2, void (**a3)(void, void))
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (sub_181CA4798(a1, a2))
  {
    sub_181DE94C8(a1, a2, sub_181AA94F4);
    _Block_release(a3);
    return;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v7 | (v6 << 16), a1, a2);
  v9 = isStackAllocationSafe + 1;
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 < 0)
    {
      __break(1u);
    }

    if (v9 < 1025)
    {
      goto LABEL_10;
    }
  }

  v13 = isStackAllocationSafe + 1;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v14 = swift_slowAlloc();
    sub_182243F74(v14, v13, a1, a2);
    a3[2](a3, v14);
    MEMORY[0x1865DF520](v14, -1, -1);
    goto LABEL_11;
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = &v15[-v10];
  sub_182243F74(&v15[-v10], v12, a1, a2);
  (a3)[2](a3, v11);
LABEL_11:
  _Block_release(a3);
}

uint64_t sub_182243CF4(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (sub_181CA4798(a3, a4))
  {
    return sub_1822435C0(a1, a2, a3, a4);
  }

  v10 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3;
  }

  v11 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v11 | (v10 << 16), a3, a4);
  v13 = isStackAllocationSafe + 1;
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
  }

  else
  {
    if (v13 < 0)
    {
      __break(1u);
    }

    if (v13 < 1025)
    {
      goto LABEL_10;
    }
  }

  v17 = isStackAllocationSafe + 1;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v18 = swift_slowAlloc();
    sub_182243F74(v18, v17, a3, a4);
    a1(v18);
    return MEMORY[0x1865DF520](v18, -1, -1);
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = v19 - v14;
  sub_182243F74(v19 - v14, v16, a3, a4);
  result = a1(v15);
  if (v4)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_182243EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);

  sub_181F88CC0(a2, v17);
  return sub_18224370C(v13, v14, a3, a4, a1, a5, a6, a2, a7);
}

unint64_t sub_182243F74(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v8 = sub_182286F6C();
    if ((v9 & 0x100000000) != 0)
    {
      break;
    }

    *(a1 + v8) = v9;
  }

  v10 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  result = sub_18224A3EC(0xFuLL, v10 | (v7 << 16), a3, a4);
  *(a1 + result) = 0;
  return result;
}

uint64_t sub_18224402C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_182243F74(a1, a2, a3, a4);
  v13 = sub_182AD30F8();
  v14 = sub_182AD30F8();
  a5(a7, v13, a1, v14);

  return sub_181CA27BC(a10);
}

uint64_t sub_1822440F4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_181CA0008(a2, -1, &v10);
  v5 = v11;
  if (v11)
  {
    v6 = v10;
    if (v3 == v12 && v13 == v4)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_182AD4268();
    }

    sub_181CA2810(v6, v5);
    return v8 & 1;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_182244218(uint64_t a1)
{
  v2 = sub_182AD3158();
  v4 = v3;
  if ((sub_181CA4798(v2, v3) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
    sub_182AD30A8();

    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = sub_181CA1930(v2, v4);
  v7 = v6;

  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
}

uint64_t _nw_http_field_access(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  v5 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v5;
  v15[2] = *(a1 + 32);
  v16 = *(a1 + 48);
  v13 = v4;
  v10 = sub_18224A774;
  v11 = &v12;
  v6 = v15[0];
  sub_181F88CC0(v15, v14);
  sub_181F88CC0(v15, v14);

  sub_182242DF4(v6, *(&v6 + 1), v15, sub_18224A798, v9, v6, *(&v6 + 1), v7, sub_18224B174, sub_18224B278);
  _Block_release(v3);
  _Block_release(v4);
  return sub_181CA27BC(v15);
}

uint64_t _nw_http_field_access_canonical(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  v5 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v5;
  v15[2] = *(a1 + 32);
  v16 = *(a1 + 48);
  v13 = v4;
  v10 = sub_18224B290;
  v11 = &v12;
  v6 = v5;
  sub_181F88CC0(v15, v14);
  sub_181F88CC0(v15, v14);

  sub_182242DF4(v6, *(&v6 + 1), v15, sub_18224B2B8, v9, v6, *(&v6 + 1), v7, sub_18224B174, sub_18224B278);
  _Block_release(v3);
  _Block_release(v4);
  return sub_181CA27BC(v15);
}

uint64_t _nw_http_field_set_indexing_strategy(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t _nw_http_field_get_indexing_strategy(uint64_t a1)
{
  if (*(a1 + 32) - 1 < 3)
  {
    return (*(a1 + 32) - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_182244764@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  a1[3] = &type metadata for HTTPFields;
  a1[4] = &off_1EEF9F2A0;
  *a1 = v3;
}

uint64_t sub_1822447C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t sub_182244848(uint64_t a1)
{
  if (*a1 == _TtC7NetworkP33_CFBD4EB2ABB20EFC96032331681B9C8314__NWHTTPFields)
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    swift_beginAccess();
    v4 = *(a1 + 16);

    v5 = sub_18208BC10(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _nw_http_fields_copy(uint64_t a1)
{
  v1 = *(*a1 + 104);

  v3 = v1(v2);

  return v3;
}

uint64_t _nw_http_fields_is_equal(uint64_t a1)
{
  v1 = *(*a1 + 112);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t _nw_http_fields_get_count()
{

  (*(*v0 + 80))(&v2, sub_182244A84, 0, MEMORY[0x1E69E6530]);

  return v2;
}

uint64_t sub_182244A84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(*(v3 + 16) + 16);
  return result;
}

uint64_t sub_182244AD4(uint64_t a1, unint64_t a2)
{

  sub_181CA0008(a2, -1, &v9);
  v5 = v10;
  if (v10)
  {
    v6 = v9;
    v7 = MEMORY[0x1EEE9AC00](v4);
    (*(*a1 + 88))(sub_18224A7C0, v7);

    return sub_181CA2810(v6, v5);
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t _nw_http_fields_remove(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  v2 = *(*a1 + 88);

  v2(sub_18224A7F0, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_182244C98(uint64_t a1, unint64_t a2)
{
  sub_182088AC8(a2, v3);
}

uint64_t sub_182244CFC(uint64_t a1, unint64_t a2)
{

  sub_181CA0008(a2, -1, &v23);
  v5 = v24;
  if (v24)
  {
    v6 = v23;
    v8 = v25;
    v7 = v26;
    MEMORY[0x1EEE9AC00](v4);
    v20[2] = v6;
    v20[3] = v5;
    v21 = v8;
    v22 = v7;
    v9 = *(*a1 + 80);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B508);
    v9(&v23, sub_18224A7F8, v20, v10);
    v11 = v24;
    if (!v24)
    {
      sub_181CA2810(v6, v5);

      return 0;
    }

    v12 = v23;
    v13 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v13 = v23;
    }

    v14 = 7;
    if (((v24 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
    {
      v14 = 11;
    }

    v15 = sub_18224A3EC(0xFuLL, v14 | (v13 << 16), v23, v24);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = malloc(v15 + 1);
      if (v17)
      {
        v18 = v17;
        sub_181CA2810(v6, v5);
        sub_182243F74(v18, v16, v12, v11);

        return v18;
      }
    }

    __break(1u);
  }

  LODWORD(v22) = 0;
  v21 = 387;
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182244F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *a1;
  v12[3] = a5;
  v12[4] = v7;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;

  v8 = sub_181DE8E9C(v12);
  v10 = v9;

  *a6 = v8;
  a6[1] = v10;
  return result;
}

uint64_t sub_182244FAC(uint64_t a1, unint64_t a2)
{

  sub_181CA0008(a2, -1, &v9);
  v5 = v10;
  if (v10)
  {
    v6 = v9;
    v7 = MEMORY[0x1EEE9AC00](v4);
    (*(*a1 + 80))(&v9, sub_18224A804, v7);

    sub_181CA2810(v6, v5);
    return v9;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

void _nw_http_fields_append_advanced(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4, size_t a5, void *aBlock)
{
  v11 = _Block_copy(aBlock);
  sub_182245170(a1, a2, a3, a4, a5, v11);

  _Block_release(v11);
}

uint64_t sub_182245170(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4, size_t a5, void *aBlock)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = _Block_copy(aBlock);

  sub_181CA0008(a2, a3, v22);
  if (v22[1])
  {
    if (a5 == -1)
    {
      a5 = strlen(a4);
    }

    v23 = 0;
    if (a5)
    {
      v12 = 0;
      while ((a4[v12] & 0x80000000) == 0)
      {
        if (a5 == ++v12)
        {
          goto LABEL_8;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
LABEL_8:
      v13 = sub_182AD30B8();
      v15 = v14;
    }

    v16 = sub_181CA1930(v13, v15);
    v18 = v17;

    v24 = v16;
    v25 = v18;
    v11[2](v11, v22);
    _Block_release(v11);
    v20 = MEMORY[0x1EEE9AC00](v19);
    (*(*a1 + 88))(sub_18224A858, v20);
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18224541C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a2 + 32);
  v8 = a2[5];
  v7 = a2[6];
  v9 = *a1;
  swift_beginAccess();
  v10 = *(*(v9 + 16) + 16);
  v12[0] = v3;
  v12[1] = v2;
  v12[2] = v5;
  v12[3] = v4;
  v13 = v6;
  v14 = v8;
  v15 = v7;

  sub_181DAE9E4(v10, v10, v12);
}

void _nw_http_fields_access_field(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);
  v8[2] = a2;
  v8[3] = v6;
  v7 = *(*a1 + 88);

  v7(sub_18224A860, v8, MEMORY[0x1E69E7CA8] + 8);
  _Block_release(v5);

  _Block_release(v6);
}

uint64_t sub_1822455A0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) <= a2)
  {
    goto LABEL_5;
  }

  v7 = v6 + (a2 << 6);
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  v11 = *(v7 + 64);
  v12 = *(v7 + 72);
  v13 = *(v7 + 80);
  *&v22 = *(v7 + 32);
  *(&v22 + 1) = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v14 = *(a3 + 16);

  v14(a3, &v22);
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  return HTTPFields.subscript.setter(&v16, a2);
}

unint64_t _nw_http_fields_enumerate_by_name(uint64_t a1, unint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  LOBYTE(a2) = sub_182245718(a1, a2, v5);
  _Block_release(v5);
  return a2 & 1;
}

uint64_t sub_182245718(uint64_t a1, unint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  sub_181CA0008(a2, -1, &v11);
  v7 = v12;
  if (v12)
  {
    v8 = v11;
    v9 = MEMORY[0x1EEE9AC00](v6);
    (*(*a1 + 80))(&v11, sub_18224A868, v9);

    sub_181CA2810(v8, v7);
    _Block_release(v5);
    return v11;
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_182245884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v29 = a6;
  v27 = a7;
  v32[0] = *a1;
  *&v33 = a2;
  *(&v33 + 1) = a3;
  *&v34 = a4;
  *(&v34 + 1) = a5;
  sub_181DE0CB8(&v33);
  v8 = v7;

  v10 = sub_181DE90B8(v9, v8);

  v30 = -*(v10 + 16);
  v12 = -1;
  v13 = 32;
  v28 = v10;
  while (1)
  {
    if (v30 + v12 == -1)
    {
      v24 = 1;
      goto LABEL_14;
    }

    if (++v12 >= *(v10 + 16))
    {
      break;
    }

    v15 = *(v10 + v13 + 16);
    v14 = *(v10 + v13 + 32);
    v16 = *(v10 + v13);
    v36 = *(v10 + v13 + 48);
    v34 = v15;
    v35 = v14;
    v33 = v16;
    v17 = v16;
    MEMORY[0x1EEE9AC00](result);
    v26[6] = v29;
    MEMORY[0x1EEE9AC00](v18);
    v26[2] = sub_18224B294;
    v26[3] = v19;
    MEMORY[0x1EEE9AC00](v20);
    if ((*(&v17 + 1) & 0x1000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if ((*(&v17 + 1) & 0x2000000000000000) != 0)
    {
      v31[0] = v17;
      v31[1] = *(&v17 + 1) & 0xFFFFFFFFFFFFFFLL;
      v21 = *(&v35 + 1);
      v22 = v36;
      sub_181F88CC0(&v33, v32);

      v23 = v31;
    }

    else
    {
      if ((v17 & 0x1000000000000000) == 0)
      {
LABEL_12:
        sub_181F88CC0(&v33, v32);

        sub_182AD3B78();
        goto LABEL_10;
      }

      v21 = *(&v35 + 1);
      v22 = v36;
      sub_181F88CC0(&v33, v32);

      v23 = ((*(&v17 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v28;
    }

    LOBYTE(v32[0]) = sub_18224ACA0(v21, v22, sub_18224B2C0, v26, v23, v17, *(&v17 + 1), &v33) & 1;
LABEL_10:

    result = sub_181CA27BC(&v33);
    v13 += 56;
    if ((v32[0] & 1) == 0)
    {
      v24 = 0;
LABEL_14:
      v25 = v27;

      *v25 = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182245B4C@<X0>(char *a1@<X1>, char *a2@<X8>)
{
  v20 = a2;
  v21 = a1;

  result = swift_beginAccess();
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(v22 + 16);
    v6 = *(v5 + 16);
    if (v4 == v6)
    {
      v19 = 1;
      goto LABEL_15;
    }

    if (v4 >= v6)
    {
      break;
    }

    v8 = *(v5 + v3 + 32);
    v7 = *(v5 + v3 + 40);
    v9 = *(v5 + v3 + 48);
    v10 = *(v5 + v3 + 56);
    v11 = *(v5 + v3 + 64);
    v13 = *(v5 + v3 + 72);
    v12 = *(v5 + v3 + 80);
    v26[0] = v8;
    v26[1] = v7;
    v26[2] = v9;
    v26[3] = v10;
    v27 = v11;
    v28 = v13;
    v29 = v12;
    if (v4 >= *(v5 + 16))
    {
      goto LABEL_17;
    }

    MEMORY[0x1EEE9AC00](result);
    *(&v20 - 2) = v21;
    MEMORY[0x1EEE9AC00](v14);
    *(&v20 - 2) = sub_18224AC20;
    *(&v20 - 1) = v15;
    MEMORY[0x1EEE9AC00](v16);
    *(&v20 - 6) = v26;
    *(&v20 - 5) = sub_18224AC54;
    *(&v20 - 4) = (&v20 - 4);
    *(&v20 - 3) = v8;
    *(&v20 - 2) = v7;
    v23 = v17;
    if ((v7 & 0x1000000000000000) != 0)
    {
LABEL_13:
      swift_bridgeObjectRetain_n();

      sub_182AD3B78();
      goto LABEL_11;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v24[0] = v8;
      v24[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      swift_bridgeObjectRetain_n();

      v18 = v24;
    }

    else
    {
      if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_13;
      }

      swift_bridgeObjectRetain_n();

      v18 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    v25 = sub_18224ACA0(v13, v12, sub_18224AC54, (&v20 - 4), v18, v8, v7, v26) & 1;
LABEL_11:

    result = swift_bridgeObjectRelease_n();
    v3 += 64;
    ++v4;
    if ((v25 & 1) == 0)
    {
      v19 = 0;
LABEL_15:

      *v20 = v19;
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t _nw_http_fields_enumerate_field(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);

  v6[2] = v4;
  (*(*a1 + 88))(&v7, sub_18224A880, v6, MEMORY[0x1E69E6370]);
  _Block_release(v3);

  _Block_release(v4);
  return v7;
}

uint64_t sub_182245EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  result = swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = *(*(v6 + 16) + 16);
  while (v10 != v9)
  {
    v11 = *a1;
    swift_beginAccess();
    v12 = *(v11 + 16);
    if (v9 >= *(v12 + 16))
    {
      __break(1u);
    }

    v13 = v12 + v8;
    v14 = *(v13 + 40);
    v15 = *(v13 + 48);
    v16 = *(v13 + 56);
    v17 = *(v13 + 64);
    v18 = *(v13 + 72);
    v19 = *(v13 + 80);
    *&v27 = *(v13 + 32);
    *(&v27 + 1) = v14;
    v28 = v15;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;

    LOBYTE(v16) = (*(a2 + 16))(a2, v9, &v27);
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    result = HTTPFields.subscript.setter(&v21, v9);
    v8 += 64;
    ++v9;
    if ((v16 & 1) == 0)
    {
      v20 = 0;
      goto LABEL_7;
    }
  }

  v20 = 1;
LABEL_7:
  *a3 = v20;
  return result;
}

uint64_t _nw_http_fields_enumerateTm(uint64_t a1, void *aBlock, uint64_t a3)
{
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  v8[2] = v6;
  (*(*a1 + 80))(&v9, a3, v8, MEMORY[0x1E69E6370]);
  _Block_release(v5);

  _Block_release(v6);
  return v9;
}

uint64_t sub_1822460EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;

  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (v9 >= v7)
      {
        __break(1u);
      }

      v10 = v6 + v8;
      v11 = *(v10 + 72);
      v12 = *(v10 + 80);
      v13 = *(v10 + 64);
      v14 = *(v10 + 48);
      v15 = *(v10 + 56);
      v16 = *(v10 + 40);
      v18[0] = *(v10 + 32);
      v18[1] = v16;
      v18[2] = v14;
      v18[3] = v15;
      v19 = v13;
      v20 = v11;
      v21 = v12;

      LOBYTE(v12) = (*(a2 + 16))(a2, v9, v18);

      if ((v12 & 1) == 0)
      {
        break;
      }

      ++v9;
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      v8 += 64;
      if (v9 == v7)
      {
        goto LABEL_6;
      }
    }

    *a3 = 0;
  }

  else
  {
LABEL_6:

    *a3 = 1;
  }

  return result;
}

uint64_t sub_182246254(uint64_t a1)
{
  if (*a1 == _TtC7NetworkP33_CFBD4EB2ABB20EFC96032331681B9C8315__NWHTTPRequest)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    swift_beginAccess();
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    swift_retain_n();

    swift_retain_n();

    v7 = sub_1822CC234(v4, v5);

    if (v7)
    {

      v8 = sub_18208BC10(v3, v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1822463A8@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ("GET" == result)
  {
    goto LABEL_17;
  }

  if ("HEAD" == result)
  {
    v6 = 0xE400000000000000;
    v5 = 1145128264;
    goto LABEL_28;
  }

  if ("POST" == result)
  {
    v6 = 0xE400000000000000;
    v5 = 1414745936;
    goto LABEL_28;
  }

  if ("PUT" == result)
  {
    v6 = 0xE300000000000000;
    v5 = 5526864;
    goto LABEL_28;
  }

  if ("DELETE" == result)
  {
    v6 = 0xE600000000000000;
    v5 = 0x4554454C4544;
    goto LABEL_28;
  }

  if ("CONNECT" == result)
  {
    v6 = 0xE700000000000000;
    v5 = 0x5443454E4E4F43;
    goto LABEL_28;
  }

  if ("OPTIONS" == result)
  {
    v6 = 0xE700000000000000;
    v5 = 0x534E4F4954504FLL;
    goto LABEL_28;
  }

  if ("TRACE" == result)
  {
    v6 = 0xE500000000000000;
    v5 = 0x4543415254;
    goto LABEL_28;
  }

  if ("PATCH" == result)
  {
    v6 = 0xE500000000000000;
    v5 = 0x4843544150;
    goto LABEL_28;
  }

  if ("QUERY" == result)
  {
    v6 = 0xE500000000000000;
    v5 = 0x5952455551;
    goto LABEL_28;
  }

  if ("CONNECT-UDP" == result)
  {
    v6 = 0xEB00000000504455;
    v5 = 0x2D5443454E4E4F43;
    goto LABEL_28;
  }

  v2 = a2;
  result = sub_182AD3158();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = result;
    v6 = v3;
    result = sub_181CA3274(result, v3);
    a2 = v2;
    if (result)
    {
LABEL_28:
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    __break(1u);
LABEL_17:
    v6 = 0xE300000000000000;
    v5 = 5522759;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1822465D0(uint64_t a1)
{

  v2 = sub_182AD3158();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (v5 = v2, v6 = v3, (sub_181CA3274(v2, v3) & 1) != 0))
  {
    swift_beginAccess();
    v7 = *(a1 + 16);
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    v11 = *(v7 + 32);
    v10 = *(v7 + 40);
    v12 = *(v7 + 48);

    v14[0] = v9;
    v14[1] = v8;
    v14[2] = v11;
    v14[3] = v10;
    v15 = v12;
    v16 = v5;
    v17 = v6;
    HTTPRequest.PseudoHeaderFields.method.setter(v14);
    swift_endAccess();
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_182246710(uint64_t a1, const char *a2)
{

  if (!a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1822C9498();

      *(a1 + 16) = v10;
    }

    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0;
    swift_endAccess();
    sub_181D04D28(v11, v12);
  }

  v4 = strlen(a2);
  if (v4)
  {
    v5 = 0;
    while ((a2[v5] & 0x80000000) == 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    v6 = sub_182AD30B8();
    v8 = v7;
  }

  if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v6, v8))
  {
    swift_beginAccess();
    sub_182246948(a1 + 16, v6, v8);
    swift_endAccess();
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182246948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 104);
  if (v6)
  {
    sub_181F887D0(v5, v6);
    sub_181D04D28(v5, v6);
    v8 = v7;
  }

  else
  {
    sub_181F887D0(v5, 0);
    sub_181D04D28(v5, 0);
    v8 = 1;
  }

  v10[0] = xmmword_182AE94B0;
  v10[1] = xmmword_182AE94B0;
  v11 = v8;
  v12 = a2;
  v13 = a3;

  return HTTPRequest.PseudoHeaderFields.scheme.setter(v10);
}

uint64_t sub_182246A60(uint64_t a1, const char *a2)
{

  if (!a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1822C9498();

      *(a1 + 16) = v10;
    }

    v11 = *(v10 + 128);
    v12 = *(v10 + 136);
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0;
    swift_endAccess();
    sub_181D04D28(v11, v12);
  }

  v4 = strlen(a2);
  if (v4)
  {
    v5 = 0;
    while ((a2[v5] & 0x80000000) == 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    v6 = sub_182AD30B8();
    v8 = v7;
  }

  if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v6, v8))
  {
    swift_beginAccess();
    sub_182246C8C(a1 + 16, v6, v8);
    swift_endAccess();
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182246C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 128);
  v6 = *(*a1 + 136);
  v7 = *(*a1 + 160);
  if (v6)
  {
    sub_181F887D0(v5, v6);
    sub_181D04D28(v5, v6);
    v8 = v7;
  }

  else
  {
    sub_181F887D0(v5, 0);
    sub_181D04D28(v5, 0);
    v8 = 1;
  }

  v10[0] = xmmword_182AE94A0;
  v10[1] = xmmword_182AE94A0;
  v11 = v8;
  v12 = a2;
  v13 = a3;

  return HTTPRequest.PseudoHeaderFields.authority.setter(v10);
}

uint64_t sub_182246DA4(uint64_t a1, const char *a2)
{

  if (!a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1822C9498();

      *(a1 + 16) = v10;
    }

    v11 = *(v10 + 184);
    v12 = *(v10 + 192);
    *(v10 + 184) = 0u;
    *(v10 + 200) = 0u;
    *(v10 + 216) = 0u;
    *(v10 + 232) = 0;
    swift_endAccess();
    sub_181D04D28(v11, v12);
  }

  v4 = strlen(a2);
  if (v4)
  {
    v5 = 0;
    while ((a2[v5] & 0x80000000) == 0)
    {
      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    v6 = sub_182AD30B8();
    v8 = v7;
  }

  if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v6, v8))
  {
    swift_beginAccess();
    sub_182246FD8(a1 + 16, v6, v8);
    swift_endAccess();
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182246FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 128);
  v6 = *(*a1 + 136);
  v7 = *(*a1 + 160);
  if (v6)
  {
    sub_181F887D0(v5, v6);
    sub_181D04D28(v5, v6);
    v8 = v7;
  }

  else
  {
    sub_181F887D0(v5, 0);
    sub_181D04D28(v5, 0);
    v8 = 0;
  }

  v10[0] = xmmword_182AE94C0;
  v10[1] = xmmword_182AE94C0;
  v11 = v8;
  v12 = a2;
  v13 = a3;

  return HTTPRequest.PseudoHeaderFields.path.setter(v10);
}

uint64_t sub_1822470EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 240);
  v6 = *(*a1 + 248);
  v7 = *(*a1 + 272);
  if (v6)
  {
    sub_181F887D0(v5, v6);
    sub_181D04D28(v5, v6);
    v8 = v7;
  }

  else
  {
    sub_181F887D0(v5, 0);
    sub_181D04D28(v5, 0);
    v8 = 1;
  }

  v10[0] = xmmword_182AF58C0;
  v10[1] = xmmword_182AF58C0;
  v11 = v8;
  v12 = a2;
  v13 = a3;

  return HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(v10);
}

uint64_t sub_182247218(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 80))
  {
    v5 = *(v3 + 112);
    v4 = *(v3 + 120);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v6);

    sub_181DE92EC(v5, v4, sub_181DE94B0);
  }

  else
  {
    v8 = *(a2 + 16);

    return v8(a2, 0);
  }
}

uint64_t sub_182247324(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 136))
  {
    v5 = *(v3 + 168);
    v4 = *(v3 + 176);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v6);

    sub_181DE92EC(v5, v4, sub_181DE94B0);
  }

  else
  {
    v8 = *(a2 + 16);

    return v8(a2, 0);
  }
}

uint64_t sub_182247430(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 192))
  {
    v5 = *(v3 + 224);
    v4 = *(v3 + 232);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v6);

    sub_181DE92EC(v5, v4, sub_181DE94B0);
  }

  else
  {
    v8 = *(a2 + 16);

    return v8(a2, 0);
  }
}

void _nw_http_response_access_status_fieldTm(uint64_t a1, void *aBlock, void (*a3)(__int128 *))
{
  v5 = _Block_copy(aBlock);
  sub_182249088(a1, v5, a3);

  _Block_release(v5);
}

BOOL sub_1822475B0(uint64_t a1, void *aBlock)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = v4[10];
  if (v5)
  {
    v6 = v4[14];
    v7 = v4[15];
    v9 = v4[12];
    v8 = v4[13];
    v10 = v4[11];
    *&v13 = v4[9];
    *(&v13 + 1) = v5;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v11 = v3[2];

    v11(v3, &v13);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    HTTPRequest.PseudoHeaderFields.scheme.setter(&v19);
  }

  swift_endAccess();
  _Block_release(v3);

  return v5 != 0;
}

BOOL sub_182247704(uint64_t a1, void *aBlock)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = v4[17];
  if (v5)
  {
    v6 = v4[21];
    v7 = v4[22];
    v9 = v4[19];
    v8 = v4[20];
    v10 = v4[18];
    *&v13 = v4[16];
    *(&v13 + 1) = v5;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v11 = v3[2];

    v11(v3, &v13);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    HTTPRequest.PseudoHeaderFields.authority.setter(&v19);
  }

  swift_endAccess();
  _Block_release(v3);

  return v5 != 0;
}

BOOL sub_182247858(uint64_t a1, void *aBlock)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = v4[24];
  if (v5)
  {
    v6 = v4[28];
    v7 = v4[29];
    v9 = v4[26];
    v8 = v4[27];
    v10 = v4[25];
    *&v13 = v4[23];
    *(&v13 + 1) = v5;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v11 = v3[2];

    v11(v3, &v13);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    HTTPRequest.PseudoHeaderFields.path.setter(&v19);
  }

  swift_endAccess();
  _Block_release(v3);

  return v5 != 0;
}

uint64_t _nw_http_request_access_scheme_fieldTm(uint64_t a1, void *aBlock, uint64_t (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  LOBYTE(a3) = a3(a1, v5);
  _Block_release(v5);
  return a3 & 1;
}

BOOL sub_182247A04(uint64_t a1, void *aBlock)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = v4[31];
  if (v5)
  {
    v6 = v4[35];
    v7 = v4[36];
    v9 = v4[33];
    v8 = v4[34];
    v10 = v4[32];
    *&v13 = v4[30];
    *(&v13 + 1) = v5;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v11 = v3[2];

    v11(v3, &v13);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(&v19);
  }

  swift_endAccess();
  _Block_release(v3);

  return v5 != 0;
}

uint64_t sub_182247B44(uint64_t a1, const char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = sub_182AD2058();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_181CA3044(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &unk_1EA838BB0);
    result = sub_182AD3EA8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_beginAccess();
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    HTTPRequest.url.setter(v5);
    swift_endAccess();

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

UInt8 *sub_182247DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;

  swift_beginAccess();
  v5 = *(a1 + 24);
  v13[1] = *(a1 + 16);
  v13[2] = v5;

  HTTPRequest.url.getter(v4);
  v6 = sub_182AD2058();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {

    sub_181F49A88(v4, &unk_1EA838BB0);
    return 0;
  }

  v9 = sub_182AD1F98();
  result = CFURLGetBytes(v9, 0, 0);
  v11 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    result = malloc((result + 1));
    if (result)
    {
      v8 = result;
      CFURLGetBytes(v9, result, v11);
      v12[v8] = 0;

      (*(v7 + 8))(v4, v6);
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _nw_http_request_is_safe()
{

  swift_beginAccess();
  v0 = sub_1822C8708();

  return v0 & 1;
}

uint64_t sub_1822480B8()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return v3;
}

uint64_t sub_182248150(uint64_t a1)
{
  if (*a1 == _TtC7NetworkP33_CFBD4EB2ABB20EFC96032331681B9C8316__NWHTTPResponse)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    v10[0] = v4;
    v10[1] = v3;
    swift_beginAccess();
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v9[0] = v6;
    v9[1] = v5;

    v7 = _s7Network12HTTPResponseV2eeoiySbAC_ACtFZ_0(v10, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_182248248()
{
}

uint64_t sub_182248280@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = xmmword_182AFFA10;
  v3 = 0xE800000000000000;
  switch(result)
  {
    case 100:
      goto LABEL_53;
    case 101:
      v3 = 0x8000000182BE0D30;
      v2 = xmmword_182AFFA20;
      goto LABEL_53;
    case 103:
      v2 = xmmword_182AFFA30;
      v3 = 0xEB0000000073746ELL;
      goto LABEL_53;
    case 200:
      v2 = xmmword_182AFFA40;
      v3 = 0xE200000000000000;
      goto LABEL_53;
    case 201:
      v2 = xmmword_182AFFA50;
      v3 = 0xE700000000000000;
      goto LABEL_53;
    case 202:
      v2 = xmmword_182AFFA60;
      v3 = 0xE800000000000000;
      goto LABEL_53;
    case 203:
      v3 = 0x8000000182BE0D50;
      v2 = xmmword_182AFFA70;
      goto LABEL_53;
    case 204:
      v2 = xmmword_182AFFA80;
      v3 = 0xEA0000000000746ELL;
      goto LABEL_53;
    case 205:
      v2 = xmmword_182AFFA90;
      v3 = 0xED0000746E65746ELL;
      goto LABEL_53;
    case 206:
      v2 = xmmword_182AFFAA0;
      v5 = 0x6E65746E6F43;
      goto LABEL_52;
    case 300:
      v3 = 0x8000000182BE0D70;
      v2 = xmmword_182AFFAB0;
      goto LABEL_53;
    case 301:
      v3 = 0x8000000182BE0D90;
      v2 = xmmword_182AFFAC0;
      goto LABEL_53;
    case 302:
      v2 = xmmword_182AFFAD0;
      v3 = 0xE500000000000000;
      goto LABEL_53;
    case 303:
      v3 = 0xE900000000000072;
      v2 = xmmword_182AFFAE0;
      goto LABEL_53;
    case 304:
      v2 = xmmword_182AFFAF0;
      v4 = 26982;
      goto LABEL_40;
    case 307:
      v3 = 0x8000000182BE0DB0;
      v2 = xmmword_182AFFB00;
      goto LABEL_53;
    case 308:
      v3 = 0x8000000182BE0DD0;
      v2 = xmmword_182AFFB10;
      goto LABEL_53;
    case 400:
      v2 = xmmword_182AFFB20;
      v3 = 0xEB00000000747365;
      goto LABEL_53;
    case 401:
      v2 = xmmword_182AFFB30;
      v4 = 31337;
LABEL_40:
      v3 = v4 & 0xFFFF0000FFFFLL | 0xEC00000064650000;
      goto LABEL_53;
    case 403:
      v3 = 0xE90000000000006ELL;
      v2 = xmmword_182AFFB40;
      goto LABEL_53;
    case 404:
      v2 = xmmword_182AFFB50;
      v3 = 0xE900000000000064;
      goto LABEL_53;
    case 405:
      v3 = 0x8000000182BE0DF0;
      v2 = xmmword_182AFFB60;
      goto LABEL_53;
    case 406:
      v2 = xmmword_182AFFB70;
      v3 = 0xEE00656C62617470;
      goto LABEL_53;
    case 407:
      v3 = 0x8000000182BE0E10;
      v2 = xmmword_182AFFB80;
      goto LABEL_53;
    case 408:
      v2 = xmmword_182AFFB90;
      goto LABEL_51;
    case 409:
      v2 = xmmword_182AFFBA0;
      v3 = 0xE800000000000000;
      goto LABEL_53;
    case 410:
      v2 = xmmword_182AFFBB0;
      v3 = 0xE400000000000000;
      goto LABEL_53;
    case 411:
      v2 = xmmword_182AFFBC0;
      v3 = 0xEF64657269757165;
      goto LABEL_53;
    case 412:
      v3 = 0x8000000182BE0E30;
      v2 = xmmword_182AFFBD0;
      goto LABEL_53;
    case 413:
      v3 = 0x8000000182BE0E50;
      v2 = xmmword_182AFFBE0;
      goto LABEL_53;
    case 414:
      v2 = xmmword_182AFFBF0;
      v3 = 0xEC000000676E6F4CLL;
      goto LABEL_53;
    case 415:
      v3 = 0x8000000182BE0E70;
      v2 = xmmword_182AFFC00;
      goto LABEL_53;
    case 416:
      v3 = 0x8000000182BE0E90;
      v2 = xmmword_182AFFC10;
      goto LABEL_53;
    case 417:
      v3 = 0x8000000182BE0EB0;
      v2 = xmmword_182AFFC20;
      goto LABEL_53;
    case 421:
      v3 = 0x8000000182BE0ED0;
      v2 = xmmword_182AFFC30;
      goto LABEL_53;
    case 422:
      v3 = 0x8000000182BE0EF0;
      v2 = xmmword_182AFFC40;
      goto LABEL_53;
    case 425:
      v3 = 0xE900000000000079;
      v2 = xmmword_182AFFC50;
      goto LABEL_53;
    case 426:
      v3 = 0x8000000182BE0F10;
      v2 = xmmword_182AFFC60;
      goto LABEL_53;
    case 428:
      v3 = 0x8000000182BE0F30;
      v2 = xmmword_182AFFC70;
      goto LABEL_53;
    case 429:
      v3 = 0x8000000182BE0F50;
      v2 = xmmword_182AFFC80;
      goto LABEL_53;
    case 431:
      v3 = 0x8000000182BE0F70;
      v2 = xmmword_182AFFC90;
      goto LABEL_53;
    case 451:
      v3 = 0x8000000182BE0F90;
      v2 = xmmword_182AFFCA0;
      goto LABEL_53;
    case 500:
      v3 = 0x8000000182BE0FB0;
      v2 = xmmword_182AFFCB0;
      goto LABEL_53;
    case 501:
      v2 = xmmword_182AFFCC0;
      v3 = 0xEF6465746E656D65;
      goto LABEL_53;
    case 502:
      v2 = xmmword_182AFFCD0;
      v3 = 0xEB00000000796177;
      goto LABEL_53;
    case 503:
      v3 = 0x8000000182BE0FD0;
      v2 = xmmword_182AFFCE0;
      goto LABEL_53;
    case 504:
      v2 = xmmword_182AFFCF0;
LABEL_51:
      v5 = 0x756F656D6954;
LABEL_52:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
      goto LABEL_53;
    case 505:
      v3 = 0x8000000182BE0FF0;
      v2 = xmmword_182AFFD00;
      goto LABEL_53;
    case 511:
      v3 = 0x8000000182BE1010;
      v2 = xmmword_182AFFD10;
LABEL_53:
      *a2 = v2;
      *(a2 + 16) = v3;
      break;
    default:
      result = sub_182AD3EA8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1822487BC(uint64_t result, char *__s)
{
  v2 = __s;
  v3 = result;
  if (__s)
  {
    v4 = strlen(__s);
    if (v4)
    {
      v5 = 0;
      while ((v2[v5] & 0x80000000) == 0)
      {
        if (v4 == ++v5)
        {
          goto LABEL_6;
        }
      }

      v14 = v2;
      v15 = v4;
      v16 = sub_1822876F4;
      v17 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      result = sub_182AD30A8();
      v2 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      result = sub_182AD30B8();
      v2 = result;
      v7 = v6;
    }
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v3 > 0x3E7u)
  {
    __break(1u);
  }

  else
  {
    if ((sub_181DE107C(v2, v7) & 1) == 0)
    {
      v14 = v2;
      v15 = v7;
      v16 = sub_1822261F0;
      v17 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A420);
      sub_181AB3DCC(&qword_1EA83A428, &qword_1EA83A420);
      sub_182AD30A8();

      v2 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = HTTPFields.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v14);
    v9 = v14;
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_182AD30D8();
    v12 = v11;
    type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
    v13 = swift_allocObject();
    *(v13 + 16) = 0x7375746174733ALL;
    *(v13 + 24) = 0xE700000000000000;
    *(v13 + 32) = 0x7375746174733ALL;
    *(v13 + 40) = 0xE700000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = v10;
    *(v13 + 64) = v12;
    *(v13 + 72) = v2;
    *(v13 + 80) = v7;
    type metadata accessor for __NWHTTPResponse();
    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 24) = v9;
  }

  return result;
}

uint64_t sub_182248A34(uint64_t a1)
{
  sub_182248280(a1, v10);
  v1 = v10[1];
  v2 = v10[2];
  HTTPFields.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v9);
  v3 = v9;
  v4 = sub_182AD30D8();
  v6 = v5;
  type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x7375746174733ALL;
  *(v7 + 24) = 0xE700000000000000;
  *(v7 + 32) = 0x7375746174733ALL;
  *(v7 + 40) = 0xE700000000000000;
  *(v7 + 48) = 0;
  *(v7 + 56) = v4;
  *(v7 + 64) = v6;
  *(v7 + 72) = v1;
  *(v7 + 80) = v2;
  type metadata accessor for __NWHTTPResponse();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_182248B1C(uint64_t a1, unsigned __int16 a2)
{
  v3 = a2;

  result = swift_beginAccess();
  if (v3 > 0x3E7)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_181DE107C(0, 0xE000000000000000);
    if ((v5 & 1) == 0)
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      v17 = sub_1822261F0;
      v18 = 0;
      v22 = 0;
      v23 = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A420);
      sub_181AB3DCC(&qword_1EA83A428, &qword_1EA83A420);
      v5 = sub_182AD30A8();
    }

    MEMORY[0x1EEE9AC00](v5);
    v6 = sub_182AD30D8();
    v8 = v7;
    v9 = *(a1 + 16);
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    v13 = *(v9 + 32);
    v12 = *(v9 + 40);
    v14 = *(v9 + 48);

    v15 = v11;
    v16 = v10;
    v17 = v13;
    v18 = v12;
    v19 = v14;
    v20 = v6;
    v21 = v8;
    HTTPResponse.PseudoHeaderFields.status.setter(&v15);
    sub_182226660(0, 0xE000000000000000);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_182248CE4(uint64_t a1, const char *a2)
{

  if (a2)
  {
    v4 = strlen(a2);
    if (v4)
    {
      v5 = 0;
      while ((a2[v5] & 0x80000000) == 0)
      {
        if (v4 == ++v5)
        {
          goto LABEL_6;
        }
      }

      v21 = a2;
      v22 = v4;
      v23 = sub_1822876F4;
      v24 = 0;
      v30[3] = 0;
      v30[4] = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
LABEL_6:
      v6 = sub_182AD30B8();
      v8 = v7;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  swift_beginAccess();
  HTTPResponse.status.getter(v30);
  v9 = v30[0];

  if (v9 > 0x3E7)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_181DE107C(v6, v8);
    if ((v11 & 1) == 0)
    {
      v21 = v6;
      v22 = v8;
      v23 = sub_1822261F0;
      v24 = 0;
      v28 = 0;
      v29 = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A420);
      sub_181AB3DCC(&qword_1EA83A428, &qword_1EA83A420);
      sub_182AD30A8();

      v6 = 0;
      v8 = 0xE000000000000000;
    }

    MEMORY[0x1EEE9AC00](v11);
    v12 = sub_182AD30D8();
    v14 = v13;
    v15 = *(a1 + 16);
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v19 = *(v15 + 32);
    v18 = *(v15 + 40);
    v20 = *(v15 + 48);

    v21 = v17;
    v22 = v16;
    v23 = v19;
    v24 = v18;
    v25 = v20;
    v26 = v12;
    v27 = v14;
    HTTPResponse.PseudoHeaderFields.status.setter(&v21);
    sub_182226660(v6, v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_182248F9C(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 24);
  v8[3] = *(a1 + 16);
  v8[4] = v4;
  HTTPResponse.status.getter(v8);
  v5 = v8[1];
  v6 = v8[2];

  _Block_copy(v3);
  sub_182243B18(v5, v6, v3);

  _Block_release(v3);
}

void sub_182249088(uint64_t a1, void *aBlock, void (*a3)(__int128 *))
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = _Block_copy(aBlock);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);
  v11 = *(v6 + 56);
  v12 = *(v6 + 64);
  *&v20 = *(v6 + 16);
  *(&v20 + 1) = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v13 = v5[2];

  v13(v5, &v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  a3(&v14);
  swift_endAccess();

  _Block_release(v5);
}

uint64_t _nw_http_request_serialize_for_xpcTm(uint64_t a1, void *aBlock, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);

  swift_beginAccess();
  v11 = *(a1 + 24);
  *&v13 = *(a1 + 16);
  *(&v13 + 1) = v11;

  sub_1822492E0(&v13, v10, a3, a4, a5);
  _Block_release(v9);
  _Block_release(v10);
}

uint64_t sub_1822492E0(__int128 *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_182AD1E58();
  swift_allocObject();
  sub_182AD1E48();
  v15 = *a1;
  a3();
  v9 = sub_182AD1E38();
  v11 = v10;

  MEMORY[0x1EEE9AC00](v12);
  v14[2] = a2;
  sub_1820E375C(a5, v14, v9, v11);
  return sub_181C1F2E4(v9, v11);
}

__n128 sub_182249558(_BYTE *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_182AD1E28();
  swift_allocObject();
  sub_182AD1E18();
  v9 = sub_181E63D00(a1, a2);
  v11 = v10;
  a3();
  sub_182AD1E08();
  sub_181C1F2E4(v9, v11);

  a5(0);
  v12 = swift_allocObject();
  result = v14;
  *(v12 + 16) = v14;
  return result;
}

uint64_t sub_1822497AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_182249830(uint64_t a1)
{

  swift_beginAccess();

  HTTPFields.init(parsedTrailerFields:)(v2, &v5);
  v3 = v5;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];

  type metadata accessor for __NWHTTPFields();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t sub_182249A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = sub_182AD30F8();
  v13 = sub_182AD30F8();
  v14 = (a8 - 1);
  if (v14 < 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  return (*(a2 + 16))(a2, a3, v12, a1, v13, v15);
}

uint64_t sub_182249AEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a4))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = (a5 - 1);
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  return (*(a3 + 16))(a3, result, a4, a2 - a4, v6);
}

void *sub_182249B58(uint64_t a1, size_t *a2)
{

  (*(*v3 + 96))(v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v6 = (*(v5 + 24))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = *(v6 + 16);
  result = malloc(v7);
  if (result)
  {
    v9 = result;
    if (v7)
    {
      memcpy(result, (v6 + 32), v7);
    }

    *a2 = v7;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 _nw_http_request_create_from_url_request(void *a1)
{
  sub_182124640(a1, &v4);
  type metadata accessor for __NWHTTPRequest();
  v3 = v4;
  v1 = swift_allocObject();
  result = v3;
  *(v1 + 16) = v3;
  return result;
}

uint64_t _nw_http_request_copy_url_request(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_182249CEC(a1, v5, a3);

  return v7;
}

uint64_t sub_182249CEC(uint64_t a1, uint64_t a2, const __CFURL *a3)
{

  swift_beginAccess();
  v4 = sub_182AD2F88();
  v6 = v5;

  sub_182125D8C(v4, v6, a3);
  v8 = v7;

  return v8;
}

uint64_t _nw_http_response_copy_url_response(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  v10 = sub_182249E20(a1, a2, a3);

  return v10;
}

uint64_t sub_182249E20(uint64_t a1, uint64_t a2, void *a3)
{

  if (a2)
  {

    swift_beginAccess();
    a3 = *(a2 + 16);
    v6 = *(a2 + 24);

LABEL_5:
    swift_beginAccess();
    v8 = *(a1 + 24);
    v11[2] = *(a1 + 16);
    v11[3] = v8;
    v11[0] = a3;
    v11[1] = v6;
    v9 = sub_182AD2F88();

    sub_1821267F8(v11, v9);

    sub_18224A9A8(a3, v6);

    type metadata accessor for CFURLResponse(0);
    return swift_dynamicCastUnknownClassUnconditional();
  }

  if (a3)
  {
    v7 = a3;
    v6 = 0x8000000000000000;
    goto LABEL_5;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182249F9C()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843130);
  __swift_project_value_buffer(v0, qword_1EA843130);
  return sub_182AD2688();
}

uint64_t sub_18224A00C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v9 | (v8 << 16), a3, a4);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v11 = isStackAllocationSafe;
  if (isStackAllocationSafe < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = v18 - v12;
    v18[0] = a3;
    v18[1] = a4;
    v18[2] = 0;
    v18[3] = v8;
    v18[4] = 0;
    while (1)
    {
      v14 = sub_182286F6C();
      if ((v15 & 0x100000000) != 0)
      {
        break;
      }

      v13[v14] = v15;
    }

    result = a1(v13, v11);
    if (v4)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v17 = swift_slowAlloc();
    sub_182288EEC(v17, v11, a3, a4, a1);
    return MEMORY[0x1865DF520](v17, -1, -1);
  }

  return result;
}

unint64_t sub_18224A1CC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_18224A264(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_18224A2D8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_18224A264(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_18208A330(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18224A2D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_182AD3CF8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_18224A3EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_18224A1CC(a1, a3, a4);
  v8 = sub_18224A1CC(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_182AD3088();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_182AD3CF8();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_182AD3098();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_182AD3CF8();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_18224A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v18 = a7;
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);

  sub_181F88CC0(a2, v17);
  v15 = sub_18224ACA0(v14, v13, a3, a4, a1, a5, a6, a2);
  sub_181CA27BC(a2);

  *v18 = v15 & 1;
  return result;
}

uint64_t sub_18224A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X6>, _BYTE *a7@<X8>, uint64_t a8, uint64_t a9)
{
  sub_182243F74(a1, a2, a3, a4);
  v13 = sub_182AD30F8();
  v14 = sub_182AD30F8();
  a5(&v16, a6, v13, a1, v14);
  *a7 = v16;

  return sub_181CA27BC(a9);
}

uint64_t sub_18224A804@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v11 = *a1;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result = HTTPFields.contains(_:)(&v8);
  *a2 = result & 1;
  return result;
}

unint64_t sub_18224A890()
{
  result = qword_1EA83B510;
  if (!qword_1EA83B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B510);
  }

  return result;
}

unint64_t sub_18224A8E4()
{
  result = qword_1EA83B518;
  if (!qword_1EA83B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B518);
  }

  return result;
}

uint64_t sub_18224A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *(v5 + 16);
  v7 = *a5;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v6;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v7;
  return sub_1822435C0(sub_18224AA38, v9, a1, a2);
}

void sub_18224A9A8(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_18224AA38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8[2] = *(v1 + 32);
  v8[3] = a1;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v2;
  v8[7] = v3;
  v9 = v6;
  return sub_182243CF4(sub_18224AA90, v8, v2, v3);
}

unint64_t sub_18224AAB8()
{
  result = qword_1EA83B520;
  if (!qword_1EA83B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B520);
  }

  return result;
}

unint64_t sub_18224AB34()
{
  result = qword_1EA83B528;
  if (!qword_1EA83B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B528);
  }

  return result;
}

uint64_t sub_18224ABA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*(v2 + 16) + 16))(*(v2 + 16), result, a2 - result);
  }

  return result;
}

uint64_t sub_18224AC54@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18224ACA0(unint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39[7] = *MEMORY[0x1E69E9840];
  v35 = v8;
  if ((sub_181CA4798(a1, a2) & 1) == 0)
  {
    v34[1] = a6;
    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v19 = a1;
    }

    v20 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    v21 = sub_18224A3EC(0xFuLL, v20 | (v19 << 16), a1, a2);
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      if (v23 < 0)
      {
        __break(1u);
        goto LABEL_25;
      }

      v22 = v39;
      v21 = a8;
      if (v23 < 1025)
      {
        sub_181F88CC0(a8, v39);

        isStackAllocationSafe = sub_181F88CC0(a8, v39);
LABEL_14:
        v34[0] = v34;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v26 = v34 - v25;
        sub_182243F74(v34 - v25, v23, a1, a2);
        v27 = sub_182AD30F8();
        v28 = sub_182AD30F8();
        a3(v39, a5, v27, v26, v28);
        v18 = v39[0];

        sub_181CA27BC(a8);

        goto LABEL_16;
      }
    }

    sub_181F88CC0(v21, v22);

    sub_181F88CC0(a8, v39);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_14;
    }

    v33 = swift_slowAlloc();

    sub_181F88CC0(a8, v39);
    sub_18224A6C0(v33, v23, a1, a2, a3, a5, &v38, a7, a8);
    v18 = v35;
    MEMORY[0x1865DF520](v33, -1, -1);

    sub_181CA27BC(a8);

    if (v35)
    {
      goto LABEL_16;
    }

LABEL_25:
    v18 = v38;
    goto LABEL_16;
  }

  MEMORY[0x1EEE9AC00](v34);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v36[0] = a1;
    v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;

    sub_181F88CC0(a8, v39);
    v29 = sub_182AD30F8();
    v30 = sub_182AD30F8();
    a3(v39, a5, v29, v36, v30);
    v18 = v39[0];

    goto LABEL_16;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_17:

    sub_181F88CC0(a8, v39);
    v32 = v35;
    sub_182AD3B78();
    v18 = v32;

    v35 = v32;
    if (!v32)
    {
      v18 = v37;
    }
  }

  else
  {

    sub_181F88CC0(a8, v39);
    v16 = sub_182AD30F8();
    v17 = sub_182AD30F8();
    a3(v39, a5, v16, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, v17);
    v18 = v39[0];
  }

LABEL_16:
  sub_181CA27BC(a8);
  return v18 & 1;
}

void *sub_18224B0C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = sub_182AD30F8();
  v8 = sub_182AD30F8();
  result = v5(&v10, v6, v7, a1, v8);
  *a2 = v10;
  return result;
}

uint64_t sub_18224B1E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = sub_182AD30F8();
  v6 = sub_182AD30F8();
  return v3(v4, v5, a1, v6);
}

uint64_t sub_18224B2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_182AD3AD8();
  v9 = 1 << *(a2 + 32);
  if (v9 < result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = *(a2 + 36);
  sub_18225BB64(result, v11, 0);
  sub_18225BB64(v9, v11, 0);
  sub_18225BB58(v9, v11, 0);
  result = sub_18225BB58(v10, v11, 0);
  if (*(a1 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 8) != v11)
  {
    goto LABEL_10;
  }

  v12 = *a1;
  if (*a1 < v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  if ((v13 & 1) == 0)
  {
    if (v11 == *(a1 + 32))
    {
      v14 = *(a1 + 24);
      if (v9 >= v14)
      {
        v17 = *(a1 + 12);
        v18 = *(a1 + 36);
        v15 = v10;
        v16 = *(a1 + 16);
        sub_18225BB58(v15, v11, 0);
        sub_18225BB58(v9, v11, 0);
        *(a4 + 48) = a2;
        *(a4 + 56) = a3;
        *a4 = v12;
        *(a4 + 8) = v11;
        *(a4 + 12) = v17;
        *(a4 + 16) = v16;
        *(a4 + 24) = v14;
        *(a4 + 32) = v11;
        *(a4 + 36) = v18;
        *(a4 + 40) = v13;

        swift_unknownObjectRetain();
        return sub_181AB5D28(a1, v19, &qword_1EA83B5D0);
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t NWTXTRecord.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v87 = sub_18225A7D4(MEMORY[0x1E69E7CC0]);
  dictionary = nw_txt_record_create_dictionary();
  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v89 = a1;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = (v3 << 10) | (16 * v14);
    v16 = (*(a1 + 48) + v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == 0xE000000000000000;
      }

      v88 = v20;
      if (v23 || (sub_182AD4268() & 1) != 0)
      {
        v24 = sub_182AD3048();

        swift_unknownObjectRetain();

        v25 = v18;
        v26 = v17;
        v27 = nw_txt_record_set_key(dictionary, (v24 + 32), "", 0);
        swift_unknownObjectRelease();

        if (!v27)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

      v25 = v18;
      swift_bridgeObjectRetain_n();
      v26 = v17;

      v28 = v20;
      v29 = v21;
      if ((v21 & 0x1000000000000000) != 0)
      {
        v28 = sub_18224FE14();
        v29 = v54;

        if ((v29 & 0x2000000000000000) != 0)
        {
LABEL_37:
          *value = v28;
          v92 = v29 & 0xFFFFFFFFFFFFFFLL;
          v55 = sub_182AD3048();
          v56 = swift_unknownObjectRetain();
          value_lena = nw_txt_record_set_key(v56, (v55 + 32), value, HIBYTE(v29) & 0xF);

          swift_unknownObjectRelease();
          goto LABEL_38;
        }
      }

      else if ((v21 & 0x2000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if ((v28 & 0x1000000000000000) != 0)
      {
        v82 = v28 & 0xFFFFFFFFFFFFLL;
        value_len = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v77 = sub_182AD3CF8();
        v82 = v78;
        value_len = v77;
      }

      v30 = sub_182AD3048();
      v31 = swift_unknownObjectRetain();
      value_lena = nw_txt_record_set_key(v31, (v30 + 32), value_len, v82);

      swift_unknownObjectRelease();
LABEL_38:

      if (!value_lena)
      {
LABEL_20:

        a1 = v89;
        goto LABEL_5;
      }

LABEL_39:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *value = v87;
      v58 = v25;
      value_lenb = v26;
      v59 = sub_181E68520(v25, v26);
      v61 = *(v87 + 16);
      v62 = (v60 & 1) == 0;
      v41 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v41)
      {
        goto LABEL_53;
      }

      v64 = v60;
      if (*(v87 + 24) >= v63)
      {
        a1 = v89;
        v65 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = v59;
          sub_182254FA0();
          a1 = v89;
          v59 = v79;
        }

        v66 = value_lenb;
      }

      else
      {
        sub_181E686CC(v63, isUniquelyReferenced_nonNull_native);
        v65 = v58;
        v66 = value_lenb;
        v59 = sub_181E68520(v58, value_lenb);
        if ((v64 & 1) != (v67 & 1))
        {
          goto LABEL_57;
        }

        a1 = v89;
      }

      v68 = *value;
      v87 = *value;
      if (v64)
      {
        v69 = *(*value + 56) + 24 * v59;
        v70 = *v69;
        v71 = *(v69 + 8);
        *v69 = v88;
        *(v69 + 8) = v21;
        v72 = *(v69 + 16);
        *(v69 + 16) = 0;
        sub_1820F5168(v70, v71, v72);

LABEL_5:
      }

      else
      {
        *(*value + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v73 = (*(v68 + 48) + 16 * v59);
        *v73 = v65;
        v73[1] = v66;
        v74 = *(v68 + 56) + 24 * v59;
        *v74 = v88;
        *(v74 + 8) = v21;
        *(v74 + 16) = 0;

        v75 = *(v87 + 16);
        v41 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v41)
        {
          goto LABEL_55;
        }

        *(v87 + 16) = v76;
      }
    }

    else
    {
      v9 = sub_182AD3048();

      v10 = swift_unknownObjectRetain();
      v11 = v17;
      v12 = nw_txt_record_set_key(v10, (v9 + 32), "", 0);
      swift_unknownObjectRelease();

      if (!v12)
      {
        goto LABEL_5;
      }

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v18;
      v34 = v32;
      *value = v87;
      v35 = v33;
      v36 = v11;
      v37 = sub_181E68520(v33, v11);
      v39 = *(v87 + 16);
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_54;
      }

      v43 = v38;
      if (*(v87 + 24) >= v42)
      {
        if ((v34 & 1) == 0)
        {
          v80 = v37;
          sub_182254FA0();
          v37 = v80;
        }
      }

      else
      {
        sub_181E686CC(v42, v34);
        v37 = sub_181E68520(v35, v36);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_57;
        }
      }

      v45 = *value;
      v87 = *value;
      if (v43)
      {
        v46 = *(*value + 56) + 24 * v37;
        v47 = *v46;
        v48 = *(v46 + 8);
        *v46 = xmmword_182AE69F0;
        v49 = *(v46 + 16);
        *(v46 + 16) = 2;
        sub_1820F5168(v47, v48, v49);
      }

      else
      {
        *(*value + 8 * (v37 >> 6) + 64) |= 1 << v37;
        v50 = (v45[6] + 16 * v37);
        *v50 = v35;
        v50[1] = v36;
        v51 = v45[7] + 24 * v37;
        *v51 = xmmword_182AE69F0;
        *(v51 + 16) = 2;
        v52 = v45[2];
        v41 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v41)
        {
          goto LABEL_56;
        }

        v45[2] = v53;
      }
    }
  }

  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      *a2 = v87;
      a2[1] = dictionary;
      return result;
    }

    v7 = *(v4 + 8 * v13);
    ++v3;
    if (v7)
    {
      v3 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t NWTXTRecord.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v18 = a1;
      v19 = a2;
      v20 = 0;
      NWTXTRecord.setEntry(_:for:)(&v18, a3, a4);

      return sub_1820F5168(a1, a2, 0);
    }

    v14 = sub_182AD3048();
    v15 = swift_unknownObjectRetain();
    v16 = nw_txt_record_set_key(v15, (v14 + 32), "", 0);
    swift_unknownObjectRelease();

    if (v16)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      sub_181E63F28(1, 0, 2, a3, a4, isUniquelyReferenced_nonNull_native);
      result = swift_bridgeObjectRelease_n();
      *v4 = v18;
      return result;
    }
  }

  else
  {
    v11 = sub_182AD3048();
    v12 = swift_unknownObjectRetain();
    v13 = nw_txt_record_remove_key(v12, (v11 + 32));
    swift_unknownObjectRelease();

    if (v13)
    {
      sub_182250074(a3, a4, &v18);

      return sub_1820F5188(v18, v19, v20);
    }
  }
}

uint64_t sub_18224BC18(uint64_t a1, uint64_t *a2)
{
  v4 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v100 = a2;
  v102 = v11;
  v97 = v6;
  v98 = a1;
  v96 = a1 + 64;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 56);
    v17 = (*(a1 + 48) + 16 * v15);
    v18 = v17[1];
    v103 = *v17;
    v19 = v16 + 24 * v15;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      if (v22 == 1)
      {
        swift_bridgeObjectRetain_n();
        sub_1820F5148(v21, v20, 1);
        sub_182AD2FD8();
        v101 = v20;
        v23 = sub_182AD2FA8();
        if (v24)
        {
          v94 = v23;
          v95 = v24;
          v99 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = *a2;
          v26 = v104;
          v28 = sub_181CBDA14(v103, v18, sub_181D04C70);
          v29 = v26[2];
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            goto LABEL_57;
          }

          v32 = v27;
          if (v26[3] >= v31)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_182257CF0();
            }
          }

          else
          {
            sub_182254A1C(v31, isUniquelyReferenced_nonNull_native);
            v33 = sub_181CBDA14(v103, v18, sub_181D04C70);
            if ((v32 & 1) != (v34 & 1))
            {
              goto LABEL_61;
            }

            v28 = v33;
          }

          v73 = v104;
          if (v32)
          {
            v74 = (v104[7] + 16 * v28);
            v75 = v95;
            *v74 = v94;
            v74[1] = v75;
          }

          else
          {
            v104[(v28 >> 6) + 8] |= 1 << v28;
            v76 = (v73[6] + 16 * v28);
            *v76 = v103;
            v76[1] = v18;
            v77 = (v73[7] + 16 * v28);
            v78 = v95;
            *v77 = v94;
            v77[1] = v78;
            v79 = v73[2];
            v46 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v46)
            {
              goto LABEL_60;
            }

            v73[2] = v80;
          }

          a2 = v100;
          *v100 = v73;

          sub_1820F5168(v99, v101, 1);
          a1 = v98;
          v11 = v102;
        }

        else
        {
          v103 = sub_181CBDA14(v103, v18, sub_181D04C70);
          v69 = v68;

          if ((v69 & 1) == 0)
          {

            v87 = v21;
            v88 = v101;
            v89 = 1;
            goto LABEL_52;
          }

          v99 = v21;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v71 = *a2;
          v104 = *a2;
          if ((v70 & 1) == 0)
          {
            sub_182257CF0();
            v71 = v104;
          }

          v72 = v103;

          sub_181FAC934(v72, v71);
          *a2 = v71;

          sub_1820F5168(v99, v101, 1);
          v11 = v102;
        }
      }

      else if (v21 | v20)
      {
        swift_bridgeObjectRetain_n();
        v99 = v21;
        v101 = v20;
        sub_1820F5148(v21, v20, 2);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v51 = a2;
        v52 = v50;
        v104 = *v51;
        v53 = v104;
        *v51 = 0x8000000000000000;
        v54 = sub_181CBDA14(v103, v18, sub_181D04C70);
        v56 = v53[2];
        v57 = (v55 & 1) == 0;
        v46 = __OFADD__(v56, v57);
        v58 = v56 + v57;
        if (v46)
        {
          goto LABEL_56;
        }

        v59 = v55;
        if (v53[3] >= v58)
        {
          if ((v52 & 1) == 0)
          {
            v91 = v54;
            sub_182257CF0();
            v54 = v91;
          }
        }

        else
        {
          sub_182254A1C(v58, v52);
          v54 = sub_181CBDA14(v103, v18, sub_181D04C70);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_61;
          }
        }

        a2 = v100;
        v81 = v104;
        if (v59)
        {
          v82 = (v104[7] + 16 * v54);
          *v82 = 0;
          v82[1] = 0xE000000000000000;
        }

        else
        {
          v104[(v54 >> 6) + 8] |= 1 << v54;
          v83 = (v81[6] + 16 * v54);
          *v83 = v103;
          v83[1] = v18;
          v84 = (v81[7] + 16 * v54);
          *v84 = 0;
          v84[1] = 0xE000000000000000;
          v85 = v81[2];
          v46 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v46)
          {
            goto LABEL_59;
          }

          v81[2] = v86;
        }

        *a2 = v81;

        v87 = v99;
        v88 = v101;
        v89 = 2;
LABEL_52:
        sub_1820F5168(v87, v88, v89);
        v11 = v102;
      }

      else
      {
        sub_1820F5168(v21, v20, 2);
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1820F5148(v21, v20, 0);
      v35 = v21;
      v36 = v21;
      v37 = v20;
      sub_1820F5148(v36, v20, 0);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = a2;
      v40 = v38;
      v104 = *v39;
      v41 = v104;
      *v39 = 0x8000000000000000;
      v42 = sub_181CBDA14(v103, v18, sub_181D04C70);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_55;
      }

      v48 = v43;
      if (v41[3] >= v47)
      {
        if ((v40 & 1) == 0)
        {
          v90 = v42;
          sub_182257CF0();
          v42 = v90;
        }
      }

      else
      {
        sub_182254A1C(v47, v40);
        v42 = sub_181CBDA14(v103, v18, sub_181D04C70);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_61;
        }
      }

      a2 = v100;
      v61 = v104;
      if (v48)
      {
        v62 = (v104[7] + 16 * v42);
        *v62 = v35;
        v62[1] = v37;

        v63 = v37;
      }

      else
      {
        v104[(v42 >> 6) + 8] |= 1 << v42;
        v64 = (v61[6] + 16 * v42);
        *v64 = v103;
        v64[1] = v18;
        v65 = (v61[7] + 16 * v42);
        *v65 = v35;
        v65[1] = v37;
        v66 = v61[2];
        v46 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v46)
        {
          goto LABEL_58;
        }

        v63 = v37;
        v61[2] = v67;
      }

      *a2 = v61;

      sub_1820F5168(v35, v63, 0);
      a1 = v98;
      v7 = v96;
      v11 = v102;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t NWTXTRecord.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *v2;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_181E68520(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v6 + 56) + 24 * v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_181F49B58(v10, v11);
      sub_182AD2FD8();
      sub_181E692AC();
      v13 = sub_182AD2FB8();
      sub_1820F5168(v10, v11, 1);
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return v10;
  }
}

{
  v4 = sub_18224DB54(v9, *a2, *(a2 + 8), *(a2 + 16), *v2);
  v5 = v9[0];
  v6 = v9[1];
  v7 = v10;

  sub_1820F5148(v5, v6, v7);
  sub_1820F5168(v5, v6, v7);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return v4;
}

uint64_t NWTXTRecord.init(nw:)@<X0>(NSObject *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = (v4 + 16);
  v9[4] = sub_181E63B60;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_181E63AEC;
  v9[3] = &block_descriptor_32;
  v6 = _Block_copy(v9);

  nw_txt_record_apply(a1, v6);
  _Block_release(v6);
  a2[1] = a1;
  swift_beginAccess();
  v7 = *v5;

  *a2 = v7;
  return result;
}

uint64_t NWTXTRecord.debugDescription.getter()
{
  sub_181F9A944();

  return sub_182AD2E88();
}

uint64_t NWTXTRecord.data.getter()
{
  v1 = *(v0 + 8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_182AE7580;
  v6[4] = sub_181FB0158;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18224CA7C;
  v6[3] = &block_descriptor_6_2;
  v3 = _Block_copy(v6);
  swift_unknownObjectRetain();

  nw_txt_record_access_bytes(v1, v3);
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v2 + 16);
  sub_181F49B58(v4, *(v2 + 24));

  return v4;
}

uint64_t NWTXTRecord.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      aBlock = a1;
      LOWORD(v26) = a2;
      BYTE2(v26) = BYTE2(a2);
      BYTE3(v26) = BYTE3(a2);
      BYTE4(v26) = BYTE4(a2);
      v7 = BYTE6(a2);
      BYTE5(v26) = BYTE5(a2);
      p_aBlock = &aBlock;
LABEL_24:
      v17 = nw_txt_record_create_with_bytes(p_aBlock, v7);
      v22 = swift_allocObject();
      *(v22 + 16) = MEMORY[0x1E69E7CC8];
      v23 = (v22 + 16);
      v29 = sub_18225BD58;
      v30 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_181E63AEC;
      v28 = &block_descriptor_11_0;
      v24 = _Block_copy(&aBlock);

      nw_txt_record_apply(v17, v24);
      sub_181C1F2E4(a1, a2);
      _Block_release(v24);
      swift_beginAccess();
      v18 = *v23;

      goto LABEL_25;
    }

LABEL_15:
    v16 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
    NWTXTRecord.init(_:)(v16, &aBlock);
    result = sub_181C1F2E4(a1, a2);
    v18 = aBlock;
    v17 = v26;
LABEL_25:
    *a3 = v18;
    a3[1] = v17;
    return result;
  }

  while (1)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_15;
    }

LABEL_7:
    if (v6 != 2)
    {
      break;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_182AD1D58();
    if (v11)
    {
      v12 = sub_182AD1D88();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_29;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_27;
    }

    result = sub_182AD1D78();
    if (v11)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v14 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = sub_182AD1D58();
  if (!v19)
  {
    result = sub_182AD1D78();
    goto LABEL_31;
  }

  v20 = v19;
  v21 = sub_182AD1D88();
  if (__OFSUB__(a1, v21))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v11 = a1 - v21 + v20;
  result = sub_182AD1D78();
  if (v11)
  {
LABEL_20:
    if (result >= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = result;
    }

    p_aBlock = v11;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18224CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_18224CAD8(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_181DE0DB0(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_182AD1D58();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_182AD1D88();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_182AD1D58();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_182AD1D88();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_182AE9730;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_182AD2FC8();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_181DE0DB0((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}