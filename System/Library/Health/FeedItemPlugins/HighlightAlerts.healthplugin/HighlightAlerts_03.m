unint64_t sub_29DA08A88(uint64_t a1, void *a2)
{
  v4 = sub_29DA33594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29DA34644();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v35);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29DA33584();
  if (v13)
  {
    v14 = v13;
    v36 = 0xD000000000000023;
    v37 = 0x800000029DA38030;
    sub_29DA34D84();
    if (*(v14 + 16) && (v15 = sub_29DA1EE9C(v38), (v16 & 1) != 0))
    {
      sub_29D9C790C(*(v14 + 56) + 32 * v15, v39);
      sub_29D9F3314(v38);

      if (swift_dynamicCast())
      {
        return v36;
      }
    }

    else
    {

      sub_29D9F3314(v38);
    }
  }

  sub_29DA34614();
  (*(v5 + 16))(v8, a1, v4);
  v18 = a2;
  v19 = sub_29DA34634();
  v20 = sub_29DA34B84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v9;
    v38[0] = v33;
    *v21 = 136446466;
    v22 = [v18 description];
    v23 = sub_29DA34854();
    v25 = v24;

    v26 = sub_29D9EBB44(v23, v25, v38);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = sub_29DA33574();
    v28 = sub_29DA34854();
    v30 = v29;

    (*(v5 + 8))(v8, v4);
    v31 = sub_29D9EBB44(v28, v30, v38);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_29D9BB000, v19, v20, "%{public}s: received notification %{public}s missing expected user info.", v21, 0x16u);
    v32 = v33;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v32, -1, -1);
    MEMORY[0x29ED6E4C0](v21, -1, -1);

    (*(v34 + 8))(v12, v35);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v9 + 8))(v12, v35);
  }

  return 0;
}

uint64_t sub_29DA08E6C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v116 = a3;
  v127 = a1;
  v117 = sub_29DA336F4();
  v115 = *(v117 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v117);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29DA33754();
  v112 = *(v114 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v114);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29DA33864();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v121 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v120 = &v105 - v14;
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v126 = &v105 - v17;
  sub_29DA24324(0, &qword_2A1A2D300, MEMORY[0x29EDC3840], type metadata accessor for HighlightAlert);
  v119 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v118 = &v105 - v20;
  v108 = type metadata accessor for HighlightAlert(0);
  v21 = *(*(v108 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v108);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29DA33964();
  v130 = *(v24 - 8);
  v25 = *(v130 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v124 = &v105 - v29;
  v30 = sub_29DA34644();
  v129 = *(v30 - 8);
  v31 = *(v129 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v34 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v36 = &v105 - v35;
  sub_29DA34614();
  v37 = v4;

  v38 = sub_29DA34634();
  v39 = sub_29DA34BA4();
  v128 = a2;

  v40 = os_log_type_enabled(v38, v39);
  v125 = v23;
  v110 = v34;
  v109 = v28;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v107 = v24;
    v42 = v41;
    v106 = swift_slowAlloc();
    v131[0] = v106;
    *v42 = 136446467;
    v43 = [v37 description];
    v44 = v37;
    v45 = sub_29DA34854();
    v46 = v30;
    v48 = v47;

    v49 = sub_29D9EBB44(v45, v48, v131);
    v30 = v46;
    v50 = v129;

    *(v42 + 4) = v49;
    v37 = v44;
    *(v42 + 12) = 2081;
    v52 = v127;
    v51 = v128;
    *(v42 + 14) = sub_29D9EBB44(v127, v128, v131);
    _os_log_impl(&dword_29D9BB000, v38, v39, "%{public}s: handling acknowledge alert for %{private}s", v42, 0x16u);
    v53 = v106;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v53, -1, -1);
    v54 = v42;
    v24 = v107;
    MEMORY[0x29ED6E4C0](v54, -1, -1);

    v55 = *(v50 + 8);
    v55(v36, v30);
    v56 = v51;
    v57 = v52;
  }

  else
  {

    v55 = *(v129 + 8);
    v55(v36, v30);
    v57 = v127;
    v56 = v128;
  }

  v58 = v126;
  sub_29DA1A1D4(v57, v56, v126);
  sub_29DA22118();
  v60 = v59;
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    return sub_29DA243E8(v58, &qword_2A1A2D308, sub_29DA22118);
  }

  v127 = v30;
  v128 = v37;
  v62 = *(v60 + 48);
  v64 = v118;
  v63 = v119;
  v65 = *(v119 + 48);
  v66 = *(v130 + 32);
  v66(v118, v58, v24);
  sub_29DA23828(v58 + v62, &v64[v65], type metadata accessor for HighlightAlert);
  v67 = *(v63 + 48);
  v68 = v124;
  v66(v124, v64, v24);
  v69 = &v64[v67];
  v70 = v125;
  sub_29DA23828(v69, v125, type metadata accessor for HighlightAlert);
  v71 = v120;
  sub_29DA338E4();
  v73 = v121;
  v72 = v122;
  v74 = v123;
  (*(v122 + 104))(v121, *MEMORY[0x29EDC3720], v123);
  sub_29DA243A0(&qword_2A1A2DFE0, MEMORY[0x29EDC3798]);
  LOBYTE(v67) = sub_29DA34814();
  v75 = *(v72 + 8);
  v75(v73, v74);
  v75(v71, v74);
  if (v67)
  {
    v76 = v70;
    v77 = v110;
    sub_29DA34614();
    v78 = v130;
    v79 = v109;
    (*(v130 + 16))(v109, v68, v24);
    v80 = v128;
    v81 = sub_29DA34634();
    v82 = sub_29DA34BA4();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v131[0] = v84;
      *v83 = 136446467;
      v85 = [v80 description];
      LODWORD(v126) = v82;
      v86 = v85;
      v87 = sub_29DA34854();
      v128 = v55;
      v89 = v88;

      v90 = sub_29D9EBB44(v87, v89, v131);

      *(v83 + 4) = v90;
      *(v83 + 12) = 2081;
      v91 = sub_29DA33924();
      v93 = v92;
      v94 = *(v78 + 8);
      v94(v79, v24);
      v95 = sub_29D9EBB44(v91, v93, v131);

      *(v83 + 14) = v95;
      _os_log_impl(&dword_29D9BB000, v81, v126, "%{public}s: skipping processing for previously acknowledged feed item with identifier %{private}s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v84, -1, -1);
      MEMORY[0x29ED6E4C0](v83, -1, -1);

      v128(v77, v127);
      sub_29DA23BC0(v125, type metadata accessor for HighlightAlert);
      return (v94)(v124, v24);
    }

    else
    {

      v104 = *(v78 + 8);
      v104(v79, v24);
      v55(v77, v127);
      sub_29DA23BC0(v76, type metadata accessor for HighlightAlert);
      return (v104)(v68, v24);
    }
  }

  else
  {
    v96 = *(v108 + 20);
    sub_29D9CC410();
    v97 = sub_29DA34774();
    v98 = v68;
    v99 = [v97 UUID];

    v100 = v111;
    sub_29DA33744();

    v101 = sub_29DA34774();
    v102 = [v101 endDate];

    v103 = v113;
    sub_29DA336C4();

    sub_29DA1066C(v98, v100, v103, v116);
    (*(v115 + 8))(v103, v117);
    (*(v112 + 8))(v100, v114);
    sub_29DA23BC0(v70, type metadata accessor for HighlightAlert);
    return (*(v130 + 8))(v98, v24);
  }
}

void sub_29DA099F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    a5(a2, a3, a4);
  }
}

uint64_t sub_29DA09A78(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v7 = sub_29DA336F4();
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29DA33754();
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v77);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v63 - v14;
  sub_29DA24324(0, &qword_2A1A2D300, MEMORY[0x29EDC3840], type metadata accessor for HighlightAlert);
  v68 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v67 = &v63 - v18;
  v66 = type metadata accessor for HighlightAlert(0);
  v19 = *(*(v66 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v66);
  v72 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29DA33964();
  v71 = *(v73 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v73);
  v69 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29DA34644();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v28 = v4;

  v29 = sub_29DA34634();
  v30 = sub_29DA34BA4();

  v31 = os_log_type_enabled(v29, v30);
  v80 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v65 = v23;
    v33 = v32;
    v64 = swift_slowAlloc();
    v81[0] = v64;
    *v33 = 136446467;
    v34 = [v28 description];
    v35 = a1;
    v36 = sub_29DA34854();
    v63 = v24;
    v37 = v15;
    v39 = v38;

    v40 = v36;
    a1 = v35;
    v41 = sub_29D9EBB44(v40, v39, v81);
    v15 = v37;

    *(v33 + 4) = v41;
    *(v33 + 12) = 2081;
    *(v33 + 14) = sub_29D9EBB44(v35, a2, v81);
    _os_log_impl(&dword_29D9BB000, v29, v30, "%{public}s: handling dismiss alert for %{private}s", v33, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v42, -1, -1);
    MEMORY[0x29ED6E4C0](v33, -1, -1);

    (*(v63 + 8))(v27, v65);
  }

  else
  {

    (*(v24 + 8))(v27, v23);
  }

  sub_29DA1A1D4(a1, a2, v15);
  sub_29DA22118();
  v44 = v43;
  if ((*(*(v43 - 8) + 48))(v15, 1, v43) == 1)
  {
    return sub_29DA243E8(v15, &qword_2A1A2D308, sub_29DA22118);
  }

  v46 = *(v44 + 48);
  v48 = v67;
  v47 = v68;
  v49 = *(v68 + 48);
  v50 = v71;
  v51 = *(v71 + 32);
  v52 = v73;
  v51(v67, v15, v73);
  sub_29DA23828(&v15[v46], &v48[v49], type metadata accessor for HighlightAlert);
  v53 = *(v47 + 48);
  v54 = v69;
  v51(v69, v48, v52);
  v55 = v72;
  sub_29DA23828(&v48[v53], v72, type metadata accessor for HighlightAlert);
  v56 = *(v66 + 20);
  sub_29D9CC410();
  v57 = sub_29DA34774();
  v58 = [v57 UUID];

  v59 = v74;
  sub_29DA33744();

  v60 = sub_29DA34774();
  v61 = [v60 endDate];

  v62 = v76;
  sub_29DA336C4();

  sub_29DA10E4C(v54, v59, v62, v70);
  (*(v78 + 8))(v62, v79);
  (*(v75 + 8))(v59, v77);
  sub_29DA23BC0(v55, type metadata accessor for HighlightAlert);
  return (*(v50 + 8))(v54, v52);
}

void sub_29DA0A1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29DA19C04(a2, a3);
  }
}

uint64_t sub_29DA0A21C(void *a1)
{
  v2 = sub_29DA33594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33564();
  v7 = a1;
  sub_29DA07ABC(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29DA0A304()
{
  v32 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_29DA336F4();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29DA34604();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v35);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v30 - v12;
  sub_29DA34034();
  swift_unknownObjectRetain();
  sub_29DA345E4();
  sub_29DA34C64();
  v14 = sub_29DA34034();
  sub_29DA23E28();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29DA3AB40;
  *(v15 + 56) = MEMORY[0x29EDC99B0];
  *(v15 + 64) = sub_29DA23E90();
  *(v15 + 32) = 0x6867696C68676948;
  *(v15 + 40) = 0xEF737472656C4174;
  sub_29DA345C4();

  v16 = sub_29D9FB6FC();
  v33 = v0;
  v17 = v0 + qword_2A1A312F0;
  v18 = v31;
  sub_29DA22690(v17, v4, &qword_2A1A2E148, v32);
  v19 = *(v18 + 48);
  v20 = v19(v4, 1, v5);
  v30 = v5;
  if (v20 == 1)
  {
    sub_29DA336E4();
    v21 = v19(v4, 1, v5);
    v22 = v18;
    if (v21 != 1)
    {
      sub_29DA243E8(v4, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    (*(v18 + 32))(v8, v4, v5);
    v22 = v18;
  }

  v23 = v34;
  v24 = v35;
  (*(v9 + 16))(v34, v13, v35);
  v25 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v33;
  (*(v9 + 32))(v26 + v25, v23, v24);
  v28 = v27;
  sub_29DA0CC00(v16, v8, 0, sub_29DA24118, v26);

  (*(v22 + 8))(v8, v30);
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_29DA0A764()
{
  sub_29DA34C54();
  v0 = sub_29DA34034();
  sub_29DA345D4();

  return sub_29DA34B14();
}

void sub_29DA0A7D8()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for HighlightAlertPluginData();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HighlightAlertConfiguration(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_2A1A2D568))
  {
    sub_29DA34614();
    v19 = sub_29DA34634();
    v20 = sub_29DA34B84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_29D9BB000, v19, v20, "HighlightAlertsFeedItemGenerator already has detector running.", v21, 2u);
      MEMORY[0x29ED6E4C0](v21, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return;
  }

  v57 = v13;
  sub_29DA074E4();
  v22 = sub_29D9FB6FC();
  v23 = MEMORY[0x29EDCA190];
  v60 = v0;
  v61[0] = MEMORY[0x29EDCA190];
  v24 = v22[2];
  v25 = 0x29EDBA000uLL;
  v58 = v9;
  if (v24)
  {
    v26 = *(v15 + 80);
    v59 = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v28 = *(v15 + 72);
    v29 = MEMORY[0x29EDCA190];
    do
    {
      sub_29DA23890(v27, v18, type metadata accessor for HighlightAlertConfiguration);
      sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration);
      v30 = sub_29DA34454();
      sub_29DA23BC0(v18, type metadata accessor for HighlightAlertConfiguration);
      if (v30)
      {
        v31 = *(v25 + 3448);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x29ED6D4A0]();
          if (*((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_29DA34974();
            v25 = 0x29EDBA000;
          }

          sub_29DA34994();
          v29 = v61[0];
        }

        else
        {
        }
      }

      v27 += v28;
      --v24;
    }

    while (v24);

    v33 = v29;
    v23 = MEMORY[0x29EDCA190];
  }

  else
  {

    v33 = MEMORY[0x29EDCA190];
  }

  v62 = v23;
  if (v33 >> 62)
  {
LABEL_38:
    v59 = v33 & 0xFFFFFFFFFFFFFF8;
    v34 = sub_29DA34D34();
    if (v34)
    {
      goto LABEL_18;
    }

LABEL_39:
    v37 = MEMORY[0x29EDCA190];
    goto LABEL_40;
  }

  v59 = v33 & 0xFFFFFFFFFFFFFF8;
  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_39;
  }

LABEL_18:
  v35 = 0;
  v36 = qword_2A1A2D580;
  v37 = MEMORY[0x29EDCA190];
  do
  {
    v56 = v37;
    v38 = v35;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x29ED6D970](v38, v33);
      }

      else
      {
        if (v38 >= *(v59 + 16))
        {
          goto LABEL_37;
        }

        v39 = *(v33 + 8 * v38 + 32);
      }

      v40 = v39;
      v35 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v41 = *(v60 + v36);

      sub_29DA33B44();

      sub_29D9C706C(v61, v61[3]);
      v42 = sub_29DA33984();
      v43 = [v40 hk:v42 metadataValueDisplayTypeInStore:?];

      sub_29D9C7968(v61);
      if (v43)
      {
        v44 = [v43 objectType];

        if (!v44)
        {
          goto LABEL_21;
        }

        objc_opt_self();
        v40 = v44;
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

LABEL_21:
      ++v38;
      if (v35 == v34)
      {
        v37 = v56;
        goto LABEL_40;
      }
    }

    MEMORY[0x29ED6D4A0]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29DA34974();
    }

    sub_29DA34994();
    v37 = v62;
  }

  while (v35 != v34);
LABEL_40:
  v46 = sub_29D9FA398(v37);

  v47 = sub_29DA1F9C0(v46);

  v61[0] = v33;
  sub_29DA2BA8C(v47);
  v48 = v61[0];
  v49 = v57;
  sub_29DA0AF34(v57);
  v50 = v58;
  sub_29DA22690(v49, v58, &qword_2A1A2CBF0, sub_29D9C8864);
  sub_29D9C8864(0);
  v52 = v51;
  v53 = *(v51 - 8);
  if ((*(v53 + 48))(v50, 1, v51) == 1)
  {
    sub_29DA23BC0(v49, type metadata accessor for HighlightAlertPluginData);
    sub_29DA243E8(v50, &qword_2A1A2CBF0, sub_29D9C8864);
    v54 = 0;
  }

  else
  {
    v54 = sub_29DA34774();
    sub_29DA23BC0(v49, type metadata accessor for HighlightAlertPluginData);
    (*(v53 + 8))(v50, v52);
  }

  sub_29DA0B7DC(v48, v54);
}

uint64_t sub_29DA0AF34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_29DA34644();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v53 = &v53 - v7;
  v8 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2DF88, type metadata accessor for HighlightAlertPluginData, MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v54 = &v53 - v11;
  v12 = sub_29DA33754();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2DFD8, MEMORY[0x29EDC37D8], v8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v53 - v19;
  v21 = qword_2A1A2D580;
  v22 = *&v1[qword_2A1A2D580];

  sub_29DA33B44();

  sub_29D9C706C(v61, v61[3]);
  v56 = v2;
  v23 = *&v2[v21];

  sub_29DA33B44();

  sub_29D9C706C(v60, v60[3]);
  v24 = sub_29DA33984();
  v25 = [v24 profileIdentifier];

  v26 = [v25 identifier];
  sub_29DA33744();

  sub_29DA33714();
  (*(v13 + 8))(v16, v12);
  sub_29DA33994();

  sub_29D9C7968(v60);
  v27 = sub_29DA33894();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v20, 1, v27) == 1)
  {
    sub_29D9C7968(v61);
    sub_29DA243E8(v20, &qword_2A1A2DFD8, MEMORY[0x29EDC37D8]);
  }

  else
  {
    v29 = sub_29DA33884();
    v31 = v30;
    (*(v28 + 8))(v20, v27);
    sub_29D9C7968(v61);
    if (v31 >> 60 != 15)
    {
      v48 = sub_29DA33474();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_29DA33464();
      v51 = type metadata accessor for HighlightAlertPluginData();
      sub_29DA243A0(&qword_2A1A2DFA0, type metadata accessor for HighlightAlertPluginData);
      v52 = v54;
      sub_29DA33454();
      sub_29D9CFBBC(v29, v31);

      (*(*(v51 - 8) + 56))(v52, 0, 1, v51);
      return sub_29DA23828(v52, v59, type metadata accessor for HighlightAlertPluginData);
    }
  }

  v32 = v55;
  sub_29DA34614();
  v33 = v56;
  v34 = sub_29DA34634();
  v35 = sub_29DA34BA4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v61[0] = v37;
    *v36 = 136446210;
    v38 = [v33 description];
    v39 = sub_29DA34854();
    v41 = v40;

    v42 = sub_29D9EBB44(v39, v41, v61);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_29D9BB000, v34, v35, "%{public}s: feed item context did not have plugin data; creating new plugin data", v36, 0xCu);
    sub_29D9C7968(v37);
    MEMORY[0x29ED6E4C0](v37, -1, -1);
    MEMORY[0x29ED6E4C0](v36, -1, -1);
  }

  (*(v57 + 8))(v32, v58);
  sub_29D9C8864(0);
  v44 = v43;
  v45 = *(*(v43 - 8) + 56);
  v46 = v59;
  v45(v59, 1, 1, v43);
  sub_29DA243E8(v46, &qword_2A1A2CBF0, sub_29D9C8864);
  return (v45)(v46, 1, 1, v44);
}

void sub_29DA0B7DC(uint64_t a1, void *a2)
{
  v4 = sub_29DA1019C();
  sub_29DA34DF4();

  sub_29DA23540();
  v5 = a2;
  v6 = sub_29DA34894();
  MEMORY[0x29ED6D450](v6);

  sub_29DA34B34();

  AggregateChangeDetector.start()();
  if (v7 || (AggregateChangeDetector.dispatchChanges()(), v7))
  {
    sub_29DA1DF6C(v7);
  }

  else
  {
    v8 = *(v2 + qword_2A1A2D568);
    *(v2 + qword_2A1A2D568) = v4;
  }
}

void sub_29DA0B8F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v82 - v10;
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v90 = &v82 - v14;
  v15 = sub_29DA336F4();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v93 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29DA34604();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v88 = v21;
  v89 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v96 = &v82 - v22;
  v23 = sub_29DA33A94();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v97 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA234BC(0, &qword_2A1A2D3E0, MEMORY[0x29EDC38C0]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = (&v82 - v29);
  if ([v2 isCancelled] & 1) != 0 || (objc_msgSend(v2, sel_isFinished))
  {
    sub_29DA34614();
    v31 = sub_29DA34634();
    v32 = sub_29DA34BA4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_29D9BB000, v31, v32, "HighlightAlertsFeedItemGenerator received callback from dispatchResults in AggregateChangeDetector after finishing. No-op", v33, 2u);
      MEMORY[0x29ED6E4C0](v33, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return;
  }

  sub_29DA23D6C(a1, v30, &qword_2A1A2D3E0, MEMORY[0x29EDC38C0]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v35 = *v30;
    MEMORY[0x2A1C7C4A8](EnumCaseMultiPayload);
    sub_29DA33BF4();

    return;
  }

  v36 = *(v24 + 32);
  v37 = v97;
  v87 = v23;
  v36(v97, v30, v23);
  v38 = sub_29DA33A74();
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = sub_29DA34D34();

    if (v39)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v55 = *(v38 + 16);

    if (v55)
    {
LABEL_10:
      v40 = sub_29DA33A74();
      v41 = 0;
      v42 = sub_29DA060C0(v40);

      v85 = sub_29DA0C778(v42);
      sub_29DA34B34();
      sub_29DA34034();
      sub_29DA345F4();
      if (v42 >> 62)
      {
        v43 = sub_29DA34D34();
        v86 = v24;
        if (v43)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v86 = v24;
        if (v43)
        {
LABEL_12:
          v83 = 0;
          v84 = v2;
          v98 = MEMORY[0x29EDCA190];
          sub_29DA1FAD0(0, v43 & ~(v43 >> 63), 0);
          if (v43 < 0)
          {
            __break(1u);
            goto LABEL_34;
          }

          v44 = 0;
          v45 = v98;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v46 = MEMORY[0x29ED6D970](v44, v42);
            }

            else
            {
              v46 = *(v42 + 8 * v44 + 32);
            }

            v47 = v46;
            v48 = [v46 identifier];
            v49 = sub_29DA34854();
            v51 = v50;

            v98 = v45;
            v53 = *(v45 + 2);
            v52 = *(v45 + 3);
            if (v53 >= v52 >> 1)
            {
              sub_29DA1FAD0((v52 > 1), v53 + 1, 1);
              v45 = v98;
            }

            ++v44;
            *(v45 + 2) = v53 + 1;
            v54 = &v45[16 * v53];
            *(v54 + 4) = v49;
            *(v54 + 5) = v51;
          }

          while (v43 != v44);

          v41 = v83;
          v2 = v84;
LABEL_27:
          v98 = v45;

          sub_29DA20054(&v98);
          v60 = v93;
          if (!v41)
          {

            v61 = MEMORY[0x29EDC99B0];
            sub_29DA23DD8(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
            sub_29D9D5E10();
            v62 = sub_29DA347E4();
            v83 = v63;
            v84 = v62;

            sub_29DA34C64();
            v64 = sub_29DA34034();
            sub_29DA23E28();
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_29DA3AB40;
            *(v65 + 56) = v61;
            *(v65 + 64) = sub_29DA23E90();
            *(v65 + 32) = 0x6867696C68676948;
            *(v65 + 40) = 0xEF737472656C4174;
            sub_29DA345C4();

            v66 = v90;
            sub_29DA22690(v2 + qword_2A1A312F0, v90, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
            v68 = v94;
            v67 = v95;
            v69 = *(v94 + 48);
            if (v69(v66, 1, v95) == 1)
            {
              sub_29DA336E4();
              if (v69(v66, 1, v67) != 1)
              {
                sub_29DA243E8(v66, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
              }
            }

            else
            {
              (*(v68 + 32))(v60, v66, v67);
            }

            v70 = sub_29DA33A84();
            v71 = v91;
            v72 = v92;
            v73 = v89;
            v74 = v96;
            (*(v91 + 16))(v89, v96, v92);
            v75 = (*(v71 + 80) + 16) & ~*(v71 + 80);
            v76 = (v88 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
            v77 = swift_allocObject();
            (*(v71 + 32))(v77 + v75, v73, v72);
            v78 = (v77 + v76);
            v79 = v83;
            *v78 = v84;
            v78[1] = v79;
            *(v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8)) = v2;
            v80 = v2;
            v81 = v93;
            sub_29DA0CC00(v85, v93, v70, sub_29DA23EE4, v77);

            (*(v94 + 8))(v81, v95);
            (*(v71 + 8))(v74, v72);
            (*(v86 + 8))(v97, v87);
            return;
          }

LABEL_34:

          __break(1u);
          return;
        }
      }

      v45 = MEMORY[0x29EDCA190];
      goto LABEL_27;
    }
  }

  sub_29DA34614();
  v56 = sub_29DA34634();
  v57 = sub_29DA34B84();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_29D9BB000, v56, v57, "HighlightAlertsFeedItemGenerator change detector detected changes but none trigger run of highlight alerts pipeline.", v58, 2u);
    MEMORY[0x29ED6E4C0](v58, -1, -1);
  }

  v59 = (*(v5 + 8))(v11, v4);
  MEMORY[0x2A1C7C4A8](v59);
  sub_29DA33BF4();
  (*(v24 + 8))(v37, v87);
}

uint64_t sub_29DA0C3E4(void *a1)
{
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v7 = a1;
  v8 = sub_29DA34634();
  v9 = sub_29DA34B84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    ErrorValue = swift_getErrorValue();
    v13 = *(*(v20[2] - 8) + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue);
    (*(v15 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = sub_29DA34894();
    v18 = sub_29D9EBB44(v16, v17, &v21);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_29D9BB000, v8, v9, "HighlightAlertsFeedItemGenerator change detector encountered error: %{public}s", v10, 0xCu);
    sub_29D9C7968(v11);
    MEMORY[0x29ED6E4C0](v11, -1, -1);
    MEMORY[0x29ED6E4C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29DA0C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DA34C54();
  v5 = sub_29DA34034();
  sub_29DA23E28();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29DA3AB40;
  *(v6 + 56) = MEMORY[0x29EDC99B0];
  *(v6 + 64) = sub_29DA23E90();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  sub_29DA345C4();

  sub_29DA34B34();
  return sub_29DA33BF4();
}

void *sub_29DA0C778(unint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26 - v6;
  v8 = sub_29D9FB6FC();
  v9 = v8[2];
  if (!v9)
  {

    return MEMORY[0x29EDCA190];
  }

  v28 = qword_2A1A2D580;
  v10 = *(v2 + 80);
  v11 = MEMORY[0x29EDCA190];
  v26 = v8;
  v27 = (v10 + 32) & ~v10;
  v12 = v8 + v27;
  v33 = *(v2 + 72);
  v29 = v1;
  do
  {
    sub_29DA23890(v12, v7, type metadata accessor for HighlightAlertConfiguration);
    sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration);
    v13 = sub_29DA34454();
    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {

LABEL_4:
      sub_29DA23BC0(v7, type metadata accessor for HighlightAlertConfiguration);
      goto LABEL_5;
    }

    v16 = v15;
    v17 = *(v31 + v28);

    sub_29DA33B44();

    sub_29D9C706C(v34, v34[3]);
    v18 = sub_29DA33984();
    v19 = [v16 hk:v18 metadataValueDisplayTypeInStore:v26];

    v20 = sub_29D9C7968(v34);
    if (v19)
    {
      v21 = [v19 objectType];

      if (v21)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v34[0] = v22;
          MEMORY[0x2A1C7C4A8](v22);
          *(&v26 - 2) = v34;
          LOBYTE(v19) = sub_29DA25144(sub_29DA24568, (&v26 - 4), v32);

          goto LABEL_15;
        }
      }

      LOBYTE(v19) = 0;
    }

LABEL_15:
    v34[0] = v16;
    MEMORY[0x2A1C7C4A8](v20);
    *(&v26 - 2) = v34;
    if (sub_29DA25144(sub_29DA23CE8, (&v26 - 4), v32) & 1) != 0 || (v19)
    {
      sub_29DA23890(v7, v30, type metadata accessor for HighlightAlertConfiguration);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_29D9D5360(0, v11[2] + 1, 1, v11);
      }

      v24 = v11[2];
      v23 = v11[3];
      if (v24 >= v23 >> 1)
      {
        v11 = sub_29D9D5360(v23 > 1, v24 + 1, 1, v11);
      }

      sub_29DA23BC0(v7, type metadata accessor for HighlightAlertConfiguration);
      v11[2] = v24 + 1;
      sub_29DA23828(v30, v11 + v27 + v24 * v33, type metadata accessor for HighlightAlertConfiguration);
    }

    else
    {
      sub_29DA23BC0(v7, type metadata accessor for HighlightAlertConfiguration);
    }

LABEL_5:
    v12 += v33;
    --v9;
  }

  while (v9);

  return v11;
}

void sub_29DA0CC00(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v52 = a4;
  v53 = a5;
  v7 = type metadata accessor for HighlightAlertConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  aBlock = 0;
  v57 = 0xE000000000000000;
  sub_29DA34DF4();
  MEMORY[0x29ED6D450](0xD000000000000010, 0x800000029DA37E80);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x29EDCA190];
  if (v12)
  {
    v51 = a3;
    v62 = MEMORY[0x29EDCA190];
    sub_29DA1FAD0(0, v12, 0);
    v13 = v62;
    v14 = a1;
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    do
    {
      sub_29DA23890(v15, v11, type metadata accessor for HighlightAlertConfiguration);
      v17 = *v11;
      v18 = v11[1];

      sub_29DA23BC0(v11, type metadata accessor for HighlightAlertConfiguration);
      v62 = v13;
      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_29DA1FAD0((v19 > 1), v20 + 1, 1);
        v13 = v62;
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v15 += v16;
      --v12;
    }

    while (v12);
    a1 = v14;
    a3 = v51;
  }

  v22 = MEMORY[0x29ED6D4D0](v13, MEMORY[0x29EDC99B0]);
  v24 = v23;

  MEMORY[0x29ED6D450](v22, v24);

  MEMORY[0x29ED6D450](0x746567726174202CLL, 0xEE00203A65746144);
  sub_29DA336F4();
  sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
  v25 = v54;
  v26 = sub_29DA350F4();
  MEMORY[0x29ED6D450](v26);

  MEMORY[0x29ED6D450](10272, 0xE200000000000000);
  sub_29DA33644();
  sub_29DA34A54();
  MEMORY[0x29ED6D450](0x6F68636E61202C29, 0xEB00000000203A72);
  v62 = a3;
  sub_29DA23540();
  v27 = a3;
  v28 = sub_29DA34894();
  MEMORY[0x29ED6D450](v28);

  v29 = v55;
  sub_29DA34B34();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = a3;
  v60 = sub_29DA244E4;
  v61 = v31;
  aBlock = MEMORY[0x29EDCA5F8];
  v57 = 1107296256;
  v58 = sub_29DA05EEC;
  v59 = &unk_2A24625A0;
  v32 = _Block_copy(&aBlock);
  v33 = objc_opt_self();
  v34 = v27;

  v35 = [v33 blockOperationWithBlock_];
  _Block_release(v32);

  v36 = swift_allocObject();
  v38 = v52;
  v37 = v53;
  *(v36 + 16) = v52;
  *(v36 + 24) = v37;
  v60 = sub_29DA235E8;
  v61 = v36;
  aBlock = MEMORY[0x29EDCA5F8];
  v57 = 1107296256;
  v58 = sub_29DA05EEC;
  v59 = &unk_2A24625F0;
  v39 = _Block_copy(&aBlock);
  sub_29D9C1D2C(v38);

  [v35 setCompletionBlock_];
  _Block_release(v39);
  MEMORY[0x2A1C7C4A8](v40);
  *(&v50 - 2) = v29;
  *(&v50 - 1) = v25;
  v41 = sub_29DA05F30(sub_29DA23618, (&v50 - 4), a1);
  v42 = sub_29DA057BC(v41);

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_9;
    }

LABEL_16:

    sub_29DA1E70C();
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v55;
    v48 = v55;
    sub_29DA33B84();

    v49 = aBlock;
    [aBlock addOperation_];

    return;
  }

  v43 = sub_29DA34D34();
  if (!v43)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = *&v55[qword_2A1A2D560];
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x29ED6D970](v44, v42);
      }

      else
      {
        v46 = *(v42 + 8 * v44 + 32);
      }

      v47 = v46;
      ++v44;
      [v35 addDependency_];
      [v45 addOperation_];
    }

    while (v43 != v44);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_29DA0D2A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v183 = a3;
  v182 = a2;
  v180 = sub_29DA34644();
  v179 = *(v180 - 8);
  v7 = *(v179 + 8);
  MEMORY[0x2A1C7C4A8](v180);
  v184 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
  v166 = *(v9 - 8);
  v10 = *(v166 + 8);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v168 = (&v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v174 = (&v155 - v13);
  v14 = type metadata accessor for HighlightAlertConfiguration(0);
  v175 = *(v14 - 1);
  v15 = *(v175 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v155 - v18;
  v20 = type metadata accessor for HighlightAlertDistributionConfiguration();
  v165 = *(v20 - 8);
  v21 = v165[8];
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v173 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v23;
  MEMORY[0x2A1C7C4A8](v22);
  v176 = (&v155 - v24);
  v171 = type metadata accessor for HighlightAlertKind(0);
  v25 = *(*(v171 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v171);
  v172 = (&v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_29DA336F4();
  v186 = *(v27 - 8);
  v28 = *(v186 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v177 = v29;
  v185 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration);
  v181 = v14;
  v30 = sub_29DA34454();
  if (v30)
  {
    v31 = v30;
    v169 = v15;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v163 = v19;
      v158 = a4;
      v159 = v4;
      v35 = *a1;
      v34 = *(a1 + 8);
      v178 = v27;
      v36 = *(a1 + 16) == 0;
      v37 = *(a1 + 16);
      LODWORD(v180) = v37;
      if (v36)
      {
        v38 = 0x7961446E65766553;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v39 = 0xE800000000000000;
      }

      else
      {
        v39 = 0;
      }

      sub_29D9D5C44(v35, v34, v38, v39, &v197);
      v161 = v198[0];
      v184 = v198[1];

      sub_29D9D6630(&v197);
      v162 = (v37 & 1) == 0;
      v157 = qword_2A1A2D580;
      v40 = *(v182 + qword_2A1A2D580);

      sub_29DA33B44();

      sub_29D9C706C(&aBlock, v190);
      v160 = sub_29DA33984();
      v42 = v186 + 16;
      v41 = *(v186 + 16);
      v179 = v41;
      v164 = a1;
      v43 = v185;
      v41(v185, v183, v178);
      Operation = type metadata accessor for HighlightAlertEventQueryOperation();
      v45 = objc_allocWithZone(Operation);
      v46 = qword_2A1A2D708;
      sub_29D9FF514();
      v47 = swift_allocError();
      *v48 = 0;
      v193 = v47;
      v194 = 1;
      sub_29DA23634();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = v31;
      *&v45[v46] = sub_29DA33B74();
      *&v45[qword_2A1A2D728] = 0;
      *&v45[qword_2A1A2D710] = v33;
      v53 = &v45[qword_2A1A2D700];
      *v53 = v162;
      v53[8] = v180;
      v54 = v178;
      v55 = v160;
      *&v45[qword_2A1A2D718] = v160;
      v180 = v42;
      v41(&v45[qword_2A1A2D720], v43, v54);
      v196.receiver = v45;
      v196.super_class = Operation;
      v56 = v54;
      v57 = v52;
      v58 = v55;
      v59 = objc_msgSendSuper2(&v196, sel_init);
      v60 = v161;
      v61 = sub_29DA34824();
      [v59 setName_];
      v160 = v57;

      v62 = v164;
      (*(v186 + 8))(v43, v56);
      sub_29D9C7968(&aBlock);
      v63 = v172;
      sub_29DA23890(v62 + *(v181 + 7), v172, type metadata accessor for HighlightAlertKind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v162 = v59;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v135 = v182;
          v136 = v157;
          v137 = *&v157[v182];

          sub_29DA33B44();

          sub_29D9C706C(&aBlock, v190);
          sub_29DA33984();
          v138 = *&v136[v135];

          sub_29DA33B44();

          sub_29D9C706C(&v193, v195);
          sub_29DA33974();
          v139 = objc_allocWithZone(sub_29DA34444());
          v140 = sub_29DA34414();
          sub_29D9C7968(&v193);
          sub_29D9C7968(&aBlock);
          v181 = v140;
          v184 = sub_29D9E6094(v59, v140, v62);
          v176 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v182 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v174 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v141 = v163;
          sub_29DA23890(v62, v163, type metadata accessor for HighlightAlertConfiguration);
          v142 = v185;
          v179(v185, v183, v56);
          v143 = (*(v175 + 80) + 24) & ~*(v175 + 80);
          v144 = (v169 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
          v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
          v146 = v186;
          v147 = (*(v186 + 80) + v145 + 8) & ~*(v186 + 80);
          v148 = swift_allocObject();
          *(v148 + 16) = v176;
          sub_29DA23828(v141, v148 + v143, type metadata accessor for HighlightAlertConfiguration);
          *(v148 + v144) = v182;
          *(v148 + v145) = v174;
          (*(v146 + 32))(v148 + v147, v142, v178);
          v191 = sub_29DA2373C;
          v192 = v148;
          aBlock = MEMORY[0x29EDCA5F8];
          v188 = 1107296256;
          v189 = sub_29DA05EEC;
          v190 = &unk_2A2462708;
          v149 = _Block_copy(&aBlock);
          v150 = objc_opt_self();

          v151 = [v150 blockOperationWithBlock_];
          _Block_release(v149);

          v152 = v151;
          v153 = v162;
          [v152 addDependency_];
          v154 = v181;
          [v152 addDependency_];

          sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_29DA3B880;
          *(v87 + 32) = v153;
          *(v87 + 40) = v154;
          *(v87 + 48) = v184;
          *(v87 + 56) = v152;

          goto LABEL_20;
        }

        v176 = type metadata accessor for HighlightAlertDailyAveragesConfiguration;
        sub_29DA23828(v63, v174, type metadata accessor for HighlightAlertDailyAveragesConfiguration);
        v65 = v182;
        v66 = v157;
        v67 = *&v157[v182];

        sub_29DA33B44();

        sub_29D9C706C(&aBlock, v190);
        v68 = sub_29DA33984();
        v69 = *&v66[v65];

        sub_29DA33B44();

        sub_29D9C706C(&v193, v195);
        LOBYTE(v69) = sub_29DA33974();
        v70 = objc_allocWithZone(type metadata accessor for HighlightAlertDailyAveragesOperation(0));
        v71 = HighlightAlertDailyAveragesOperation.init(healthStore:name:environment:)(v68, v60, v184, v69 & 1);
        sub_29D9C7968(&v193);
        sub_29D9C7968(&aBlock);
        v173 = v71;
        v181 = sub_29D9F35A4(v59, v71, v62);
        v184 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v182 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v172 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v72 = v163;
        sub_29DA23890(v62, v163, type metadata accessor for HighlightAlertConfiguration);
        v73 = v168;
        sub_29DA23890(v174, v168, type metadata accessor for HighlightAlertDailyAveragesConfiguration);
        v179(v185, v183, v56);
        v74 = (*(v175 + 80) + 24) & ~*(v175 + 80);
        v75 = (v169 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
        v77 = (*(v166 + 80) + v76 + 8) & ~*(v166 + 80);
        v78 = v186;
        v79 = (v167 + *(v186 + 80) + v77) & ~*(v186 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v184;
        sub_29DA23828(v72, v80 + v74, type metadata accessor for HighlightAlertConfiguration);
        *(v80 + v75) = v182;
        *(v80 + v76) = v172;
        sub_29DA23828(v73, v80 + v77, v176);
        (*(v78 + 32))(v80 + v79, v185, v178);
        v191 = sub_29DA23710;
        v192 = v80;
        aBlock = MEMORY[0x29EDCA5F8];
        v188 = 1107296256;
        v189 = sub_29DA05EEC;
        v190 = &unk_2A2462690;
        v81 = _Block_copy(&aBlock);
        v82 = objc_opt_self();

        v83 = [v82 blockOperationWithBlock_];
        _Block_release(v81);

        v84 = v83;
        v85 = v162;
        [v84 addDependency_];
        v86 = v173;
        [v84 addDependency_];

        sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_29DA3B880;
        *(v87 + 32) = v85;
        *(v87 + 40) = v86;
        *(v87 + 48) = v181;
        *(v87 + 56) = v84;

        v88 = type metadata accessor for HighlightAlertDailyAveragesConfiguration;
        v89 = v198;
      }

      else
      {
        v181 = type metadata accessor for HighlightAlertDistributionConfiguration;
        v99 = v176;
        sub_29DA23828(v63, v176, type metadata accessor for HighlightAlertDistributionConfiguration);
        v100 = *&v157[v182];

        sub_29DA33B44();

        sub_29D9C706C(&aBlock, v190);
        v101 = sub_29DA33984();
        v102 = objc_allocWithZone(type metadata accessor for HighlightAlertQuantityDistributionOperation(0));
        v156 = sub_29D9E3D08(v101, v60, v184);
        sub_29D9C7968(&aBlock);
        v155 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v184 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v103 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v174 = type metadata accessor for HighlightAlertConfiguration;
        v104 = v163;
        sub_29DA23890(v62, v163, type metadata accessor for HighlightAlertConfiguration);
        v179(v185, v183, v56);
        v168 = type metadata accessor for HighlightAlertDistributionConfiguration;
        sub_29DA23890(v99, v173, type metadata accessor for HighlightAlertDistributionConfiguration);
        v161 = *(v175 + 80);
        v105 = v56;
        v106 = (v161 + 40) & ~v161;
        v107 = v186;
        v175 = *(v186 + 80);
        v108 = (v169 + v175 + v106) & ~v175;
        v167 = *(v165 + 80);
        v109 = (v177 + v167 + v108) & ~v167;
        v171 = v161 | v175 | v167;
        v110 = swift_allocObject();
        v111 = v184;
        v110[2] = v155;
        v110[3] = v111;
        v110[4] = v103;
        v166 = type metadata accessor for HighlightAlertConfiguration;
        sub_29DA23828(v104, v110 + v106, type metadata accessor for HighlightAlertConfiguration);
        v112 = *(v107 + 32);
        v186 = v107 + 32;
        v172 = v112;
        v113 = v110 + v108;
        v114 = v185;
        (v112)(v113, v185, v105);
        v115 = v110 + v109;
        v116 = v173;
        sub_29DA23828(v173, v115, v181);
        v191 = sub_29DA238F8;
        v192 = v110;
        aBlock = MEMORY[0x29EDCA5F8];
        v188 = 1107296256;
        v165 = &v189;
        v189 = sub_29DA05EEC;
        v190 = &unk_2A2462780;
        v117 = _Block_copy(&aBlock);
        v118 = objc_opt_self();
        v157 = v118;

        v119 = [v118 blockOperationWithBlock_];
        _Block_release(v117);

        v120 = v119;
        v184 = v120;
        [v120 addDependency_];
        v156 = v156;
        [v156 &selRef_decibelAWeightedSoundPressureLevelUnit + 3];

        v121 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v182 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v122 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v123 = v163;
        sub_29DA23890(v164, v163, v174);
        sub_29DA23890(v176, v116, v168);
        v179(v114, v183, v105);
        v124 = (v161 + 24) & ~v161;
        v125 = (v169 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
        v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
        v127 = (v167 + v126 + 8) & ~v167;
        v128 = (v170 + v175 + v127) & ~v175;
        v129 = swift_allocObject();
        *(v129 + 16) = v121;
        sub_29DA23828(v123, v129 + v124, v166);
        *(v129 + v125) = v182;
        *(v129 + v126) = v122;
        sub_29DA23828(v173, v129 + v127, v181);
        (v172)(v129 + v128, v185, v178);
        v191 = sub_29DA23A28;
        v192 = v129;
        aBlock = MEMORY[0x29EDCA5F8];
        v188 = 1107296256;
        v189 = sub_29DA05EEC;
        v190 = &unk_2A24627D0;
        v130 = _Block_copy(&aBlock);

        v131 = [v157 blockOperationWithBlock_];
        _Block_release(v130);

        v132 = v131;
        v133 = v162;
        [v132 addDependency_];
        v134 = v156;
        [v132 addDependency_];

        sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_29DA3B880;
        *(v87 + 32) = v133;
        *(v87 + 40) = v134;
        *(v87 + 48) = v184;
        *(v87 + 56) = v132;

        v88 = type metadata accessor for HighlightAlertDistributionConfiguration;
        v89 = &v199;
      }

      sub_29DA23BC0(*(v89 - 32), v88);
LABEL_20:
      a4 = v158;
      goto LABEL_21;
    }
  }

  v90 = v184;
  sub_29DA34614();
  sub_29DA23890(a1, v17, type metadata accessor for HighlightAlertConfiguration);
  v91 = sub_29DA34634();
  v92 = sub_29DA34B84();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v197 = v94;
    *v93 = 136380675;
    sub_29DA23890(v17, v19, type metadata accessor for HighlightAlertConfiguration);
    v95 = sub_29DA34894();
    v97 = v96;
    sub_29DA23BC0(v17, type metadata accessor for HighlightAlertConfiguration);
    v98 = sub_29D9EBB44(v95, v97, &v197);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_29D9BB000, v91, v92, "Unsupported configuration provided to HighlightAlert generator. %{private}s", v93, 0xCu);
    sub_29D9C7968(v94);
    MEMORY[0x29ED6E4C0](v94, -1, -1);
    MEMORY[0x29ED6E4C0](v93, -1, -1);

    (*(v179 + 1))(v184, v180);
  }

  else
  {

    sub_29DA23BC0(v17, type metadata accessor for HighlightAlertConfiguration);
    (*(v179 + 1))(v90, v180);
  }

  v87 = 0;
LABEL_21:
  *a4 = v87;
}

void sub_29DA0EC94(uint64_t a1, void *a2)
{
  v124 = a2;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v108 - v8;
  v118 = sub_29DA33754();
  v117 = *(v118 - 8);
  v10 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v118);
  v116 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29DA33894();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v119 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v122 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v115 = &v108 - v20;
  v123 = type metadata accessor for HighlightAlertPluginData();
  v21 = *(*(v123 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v123);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_29DA33964();
  v24 = *(v130 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v130);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();
    v68 = sub_29DA34634();
    v69 = sub_29DA34B84();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v132[0] = v71;
      *v70 = 136446210;
      v131[0] = type metadata accessor for HighlightAlertsFeedItemGenerator();
      sub_29D9F79EC();
      v72 = sub_29DA34894();
      v74 = sub_29D9EBB44(v72, v73, v132);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_29D9BB000, v68, v69, "%{public}s went away unexpectedly before a submission operation could execute.", v70, 0xCu);
      sub_29D9C7968(v71);
      MEMORY[0x29ED6E4C0](v71, -1, -1);
      MEMORY[0x29ED6E4C0](v70, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return;
  }

  v29 = Strong;
  v113 = v13;
  v109 = v12;
  v120 = v23;
  v114 = v7;
  v112 = v3;
  v121 = v2;
  sub_29DA34B34();
  v110 = qword_2A1A2D5A0;
  v30 = *(v29 + qword_2A1A2D5A0);
  v131[0] = MEMORY[0x29EDCA190];

  sub_29DA33B34();

  v31 = v132[0];
  v111 = qword_2A1A2D578;
  v32 = *(v29 + qword_2A1A2D578);
  v131[0] = MEMORY[0x29EDCA1A0];

  sub_29DA33B34();

  v126 = v31;
  v127 = v132[0];
  v125 = *(v31 + 16);
  v33 = v29;
  v34 = v130;
  if (v125)
  {
    v35 = v24 + 16;
    v128 = *(v24 + 16);
    v129 = qword_2A1A2D5A8;
    v36 = v125;
    v37 = v126 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v38 = *(v24 + 72);
    do
    {
      v39 = v128(v27, v37, v34);
      v40 = v33;
      v41 = *&v33[v129];
      MEMORY[0x2A1C7C4A8](v39);
      *(&v108 - 2) = v27;

      v34 = v130;
      sub_29DA33B54();
      v33 = v40;

      (*(v35 - 8))(v27, v34);
      v37 += v38;
      --v36;
    }

    while (v36);
  }

  v42 = (v127 + 56);
  v43 = 1 << *(v127 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v127 + 56);
  v46 = qword_2A1A2D5A8;
  v47 = (v43 + 63) >> 6;

  v49 = 0;
  for (i = v33; v45; v48 = )
  {
    v51 = v49;
LABEL_14:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = (*(v127 + 48) + ((v51 << 10) | (16 * v53)));
    v55 = *v54;
    v56 = v54[1];
    v57 = *&i[v46];
    MEMORY[0x2A1C7C4A8](v48);
    *(&v108 - 2) = v58;
    *(&v108 - 1) = v56;

    sub_29DA33B54();
  }

  v52 = v127;
  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v51 >= v47)
    {
      break;
    }

    v45 = v42[v51];
    ++v49;
    if (v45)
    {
      v49 = v51;
      goto LABEL_14;
    }
  }

  v59 = *(v52 + 16);
  if (!v59)
  {
    v49 = MEMORY[0x29EDCA190];
    v46 = v120;
    v42 = v124;
    if (v125)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  v60 = sub_29D9D595C(*(v52 + 16), 0);
  v61 = sub_29DA20E40(v132, v60 + 4, v59, v52);
  v46 = v132[0];
  v49 = v132[1];
  v42 = v134;

  sub_29D9FA76C();
  if (v61 != v59)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v49 = sub_29D9D5614(0, 1, 1, MEMORY[0x29EDCA190]);
  v63 = *(v49 + 2);
  v62 = *(v49 + 3);
  if (v63 >= v62 >> 1)
  {
    v49 = sub_29D9D5614((v62 > 1), v63 + 1, 1, v49);
  }

  v46 = v120;
  v42 = v124;
  *(v49 + 2) = v63 + 1;
  v64 = &v49[40 * v63];
  *(v64 + 4) = v60;
  *(v64 + 5) = 0;
  *(v64 + 6) = 0;
  *(v64 + 7) = 0;
  v64[64] = 32;
  if (v125)
  {
LABEL_21:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_22:
      v66 = *(v49 + 2);
      v65 = *(v49 + 3);
      if (v66 >= v65 >> 1)
      {
        v49 = sub_29D9D5614((v65 > 1), v66 + 1, 1, v49);
      }

      *(v49 + 2) = v66 + 1;
      v67 = &v49[40 * v66];
      *(v67 + 4) = v126;
      *(v67 + 5) = 0;
      *(v67 + 6) = 0;
      *(v67 + 7) = 0;
      v67[64] = 0;
      goto LABEL_30;
    }

LABEL_46:
    v49 = sub_29D9D5614(0, *(v49 + 2) + 1, 1, v49);
    goto LABEL_22;
  }

LABEL_29:
  if (!*(v49 + 2))
  {

    goto LABEL_42;
  }

LABEL_30:
  sub_29DA0AF34(v46);
  if (v42)
  {
LABEL_31:
    sub_29D9C79FC(0, &qword_2A1A2DB00, 0x29EDBAD38);
    v75 = v42;
    v76 = v122;
    sub_29DA34794();
    sub_29D9C8864(0);
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  }

  else
  {
    v78 = v115;
    sub_29DA22690(v46, v115, &qword_2A1A2CBF0, sub_29D9C8864);
    sub_29D9C8864(0);
    v80 = v79;
    v81 = *(v79 - 8);
    if ((*(v81 + 48))(v78, 1, v79) == 1)
    {
      sub_29DA243E8(v78, &qword_2A1A2CBF0, sub_29D9C8864);
    }

    else
    {
      v82 = sub_29DA34774();
      (*(v81 + 8))(v78, v80);
      if (v82)
      {
        goto LABEL_31;
      }
    }

    v76 = v122;
    (*(v81 + 56))(v122, 1, 1, v80);
  }

  sub_29D9C911C(v76, v46);
  v83 = sub_29DA334A4();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  sub_29DA33494();
  sub_29DA243A0(qword_2A1A2D8A8, type metadata accessor for HighlightAlertPluginData);
  v86 = sub_29DA33484();
  v88 = v87;

  v89 = qword_2A1A2D580;
  v90 = *&i[qword_2A1A2D580];

  sub_29DA33B44();

  sub_29D9C706C(v132, v133);
  v91 = sub_29DA33984();
  v92 = [v91 profileIdentifier];

  v93 = [v92 identifier];
  v94 = v116;
  sub_29DA33744();

  sub_29DA33714();
  (*(v117 + 8))(v94, v118);
  v95 = *&i[v89];

  sub_29DA33B44();

  sub_29D9C706C(v131, v131[3]);
  sub_29DA339E4();
  sub_29D9E2040(v86, v88);
  v96 = v119;
  sub_29DA33874();
  sub_29D9C7968(v131);
  sub_29D9C7968(v132);
  sub_29DA1BF9C(0, &qword_2A1A2D418, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
  v97 = v113;
  v98 = *(v113 + 72);
  v99 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_29DA3AB40;
  v101 = v96;
  v102 = v109;
  (*(v97 + 16))(v100 + v99, v101, v109);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_29D9D5614(0, *(v49 + 2) + 1, 1, v49);
  }

  v104 = *(v49 + 2);
  v103 = *(v49 + 3);
  if (v104 >= v103 >> 1)
  {
    v49 = sub_29D9D5614((v103 > 1), v104 + 1, 1, v49);
  }

  sub_29D9CFBD0(v86, v88);
  (*(v113 + 8))(v119, v102);
  *(v49 + 2) = v104 + 1;
  v105 = &v49[40 * v104];
  *(v105 + 4) = v100;
  *(v105 + 5) = 0;
  *(v105 + 6) = 0;
  *(v105 + 7) = 0;
  v105[64] = 64;
  v106 = v120;
  v107 = *&i[qword_2A1A2D580];

  sub_29DA33B44();

  sub_29D9C706C(v132, v133);
  sub_29DA339A4();
  sub_29DA23BC0(v106, type metadata accessor for HighlightAlertPluginData);

  sub_29D9C7968(v132);
LABEL_42:
  sub_29DA34B34();
}

uint64_t sub_29DA0FD44(uint64_t a1, uint64_t a2)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_29DA33924();
  v9 = v8;
  v10 = sub_29DA33964();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a2, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  return sub_29DA05CE4(v6, v7, v9);
}

uint64_t sub_29DA0FE88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v23 - v8;
  v10 = *a1;
  v11 = sub_29DA1EDE0(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    v24 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29DA2B318();
      v16 = v24;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    v18 = *(v16 + 56);
    v19 = sub_29DA33964();
    v20 = *(v19 - 8);
    (*(v20 + 32))(v9, v18 + *(v20 + 72) * v13, v19);
    sub_29DA1F7D4(v13, v16);
    *a1 = v16;
    (*(v20 + 56))(v9, 0, 1, v19);
  }

  else
  {
    v21 = sub_29DA33964();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  }

  return sub_29DA243E8(v9, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
}

uint64_t sub_29DA10098(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_29D9F8C54(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_29DA1019C()
{
  v1 = v0;
  v2 = *&v0[qword_2A1A2D580];

  sub_29DA33B44();

  sub_29D9C706C(v48, v48[3]);
  v42 = sub_29DA33984();
  v43 = *&v1[qword_2A1A2E140];
  sub_29DA1BF9C(0, &qword_2A1A2CA18, sub_29DA00120, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29DA3AB40;
  sub_29DA1E934(0, &qword_2A1A2CCF0, type metadata accessor for HighlightAlertStateChanges);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v1;
  v4 = v1;
  sub_29DA33B84();

  v5 = sub_29D9CC6C0();

  *(v3 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = type metadata accessor for AggregateChangeDetector();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v10 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v11 = MEMORY[0x29EDCA190];
  v45 = MEMORY[0x29EDCA190];
  v12 = MEMORY[0x29EDC3C80];
  sub_29DA1BF9C(0, &qword_2A1A2D2B8, sub_29DA2344C, MEMORY[0x29EDC3C80]);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v4;
  *&v8[v10] = sub_29DA33B74();
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v45 = v11;
  sub_29DA1BF9C(0, &qword_2A1A2D2C0, sub_29D9C6624, v12);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v8[v17] = sub_29DA33B74();
  v21 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  v22 = sub_29DA33854();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v8[v21] = sub_29DA33844();
  v25 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v26 = sub_29DA33A94();
  (*(*(v26 - 8) + 56))(&v8[v25], 1, 1, v26);
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = v42;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = 0;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name] = xmmword_29DA3B890;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_29DA23428;
  *(v27 + 24) = v6;
  v45 = sub_29DA234B4;
  v46 = v27;
  sub_29DA1BF9C(0, &qword_2A1A2D2A8, sub_29DA0001C, v12);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v42;

  v32 = sub_29DA33B74();
  v33 = *&v8[v9];
  *&v8[v9] = v32;

  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = v43;
  v45 = v3;
  sub_29DA1BF9C(0, &qword_2A1A2D2C8, sub_29DA000EC, v12);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v43;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v44.receiver = v8;
  v44.super_class = v7;
  v38 = objc_msgSendSuper2(&v44, sel_init);
  v39 = *&v38[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries];
  v40 = v38;

  sub_29DA33B54();

  sub_29D9C7968(v48);
  return v40;
}

void sub_29DA1066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v72 = a3;
  v71 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v82 = &v68 - v8;
  v9 = sub_29DA336F4();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v92 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v91 = &v68 - v13;
  v90 = sub_29DA33964();
  v78 = *(v90 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v90);
  v75 = v15;
  v89 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29DA33754();
  v76 = *(v87 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v87);
  v73 = v17;
  v86 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29DA34644();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29DA33904();
  v23 = sub_29DA33924();
  v25 = v24;
  v88 = dispatch_group_create();
  dispatch_group_enter(v88);
  sub_29DA34614();
  v26 = v4;

  v27 = sub_29DA34634();
  v28 = sub_29DA34BA4();

  v29 = os_log_type_enabled(v27, v28);
  v84 = v23;
  v85 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v83 = a1;
    v31 = v30;
    v68 = swift_slowAlloc();
    v94[0] = v68;
    *v31 = 136446467;
    v32 = [v26 description];
    v69 = v18;
    v33 = v25;
    v34 = v32;
    v35 = sub_29DA34854();
    v70 = v26;
    v36 = v19;
    v37 = v35;
    v39 = v38;

    v40 = sub_29D9EBB44(v37, v39, v94);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_29D9EBB44(v23, v33, v94);
    _os_log_impl(&dword_29D9BB000, v27, v28, "%{public}s: processing alert state for %{private}s", v31, 0x16u);
    v41 = v68;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v41, -1, -1);
    v42 = v31;
    a1 = v83;
    MEMORY[0x29ED6E4C0](v42, -1, -1);

    (*(v36 + 8))(v22, v69);
    v26 = v70;
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v26;
  v43 = v26;
  sub_29DA33B84();

  v70 = v94[0];
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v76;
  (*(v76 + 16))(v86, v71, v87);
  v45 = v78;
  (*(v78 + 16))(v89, a1, v90);
  v46 = v80;
  v47 = v81;
  v48 = *(v80 + 16);
  v48(v91, v72, v81);
  v48(v92, v77, v47);
  v49 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v50 = (v73 + *(v45 + 80) + v49) & ~*(v45 + 80);
  v51 = *(v46 + 80);
  v52 = (v75 + v51 + v50) & ~v51;
  v77 = v52 + v79;
  v53 = (v52 + v79) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v51 + v53 + 24) & ~v51;
  v55 = swift_allocObject();
  v56 = v87;
  v57 = v83;
  v58 = v84;
  *(v55 + 2) = v88;
  *(v55 + 3) = v57;
  v60 = v85;
  v59 = v86;
  *(v55 + 4) = v58;
  *(v55 + 5) = v60;
  (*(v44 + 32))(&v55[v49], v59, v56);
  (*(v45 + 32))(&v55[v50], v89, v90);
  v61 = *(v46 + 32);
  v61(&v55[v52], v91, v47);
  v55[v77] = v74;
  v62 = &v55[v53];
  *(v62 + 1) = 0;
  *(v62 + 2) = 0;
  v61(&v55[v54], v92, v47);
  v63 = sub_29DA34A34();
  v64 = v82;
  (*(*(v63 - 8) + 56))(v82, 1, 1, v63);
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v66 = v84;
  v65[4] = v70;
  v65[5] = v66;
  v65[6] = v85;
  v65[7] = sub_29DA24560;
  v65[8] = v55;

  v67 = v88;

  sub_29D9ED414(0, 0, v64, &unk_29DA3BA68, v65);

  sub_29DA34C04();
}

void sub_29DA10E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v74 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v83 = &v69 - v9;
  v10 = sub_29DA336F4();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v93 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v92 = &v69 - v14;
  v91 = sub_29DA33964();
  v79 = *(v91 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v91);
  v76 = v16;
  v90 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29DA33754();
  v77 = *(v88 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v88);
  v75 = v18;
  v87 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29DA34644();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29DA33924();
  v26 = v25;
  v89 = dispatch_group_create();
  dispatch_group_enter(v89);
  sub_29DA34614();
  v27 = v4;

  v28 = sub_29DA34634();
  v29 = sub_29DA34BA4();

  v30 = os_log_type_enabled(v28, v29);
  v85 = v24;
  v86 = v26;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v84 = a4;
    v32 = v31;
    v71 = swift_slowAlloc();
    v95[0] = v71;
    *v32 = 136446467;
    v33 = [v27 description];
    v72 = v19;
    v34 = v26;
    v35 = v33;
    v36 = sub_29DA34854();
    v70 = v20;
    v37 = v36;
    v73 = v27;
    v38 = v24;
    v40 = v39;

    v41 = sub_29D9EBB44(v37, v40, v95);

    *(v32 + 4) = v41;
    *(v32 + 12) = 2081;
    v42 = v38;
    v27 = v73;
    *(v32 + 14) = sub_29D9EBB44(v42, v34, v95);
    _os_log_impl(&dword_29D9BB000, v28, v29, "%{public}s: processing alert state for %{private}s", v32, 0x16u);
    v43 = v71;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v43, -1, -1);
    v44 = v32;
    a4 = v84;
    MEMORY[0x29ED6E4C0](v44, -1, -1);

    (*(v70 + 8))(v23, v72);
  }

  else
  {

    (*(v20 + 8))(v23, v19);
  }

  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v94 = v27;
  v45 = v27;
  sub_29DA33B84();

  v73 = v95[0];
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v77;
  (*(v77 + 16))(v87, v74, v88);
  v47 = v79;
  (*(v79 + 16))(v90, a1, v91);
  v48 = v81;
  v49 = v82;
  v50 = *(v81 + 16);
  v50(v92, v78, v82);
  v50(v93, a4, v49);
  v51 = (*(v46 + 80) + 48) & ~*(v46 + 80);
  v52 = (v75 + *(v47 + 80) + v51) & ~*(v47 + 80);
  v53 = *(v48 + 80);
  v54 = (v76 + v53 + v52) & ~v53;
  v78 = v54 + v80;
  v55 = (v54 + v80) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v53 + v55 + 24) & ~v53;
  v57 = swift_allocObject();
  v58 = v88;
  v59 = v84;
  v60 = v85;
  *(v57 + 2) = v89;
  *(v57 + 3) = v59;
  v62 = v86;
  v61 = v87;
  *(v57 + 4) = v60;
  *(v57 + 5) = v62;
  (*(v46 + 32))(&v57[v51], v61, v58);
  (*(v47 + 32))(&v57[v52], v90, v91);
  v63 = *(v48 + 32);
  v63(&v57[v54], v92, v49);
  v57[v78] = 1;
  *&v57[v55 + 8] = xmmword_29DA3B8A0;
  v63(&v57[v56], v93, v49);
  v64 = sub_29DA34A34();
  v65 = v83;
  (*(*(v64 - 8) + 56))(v83, 1, 1, v64);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v67 = v85;
  v66[4] = v73;
  v66[5] = v67;
  v66[6] = v86;
  v66[7] = sub_29DA225F4;
  v66[8] = v57;

  v68 = v89;

  sub_29D9ED414(0, 0, v65, &unk_29DA3BA58, v66);

  sub_29DA34C04();
}

void sub_29DA1162C(uint64_t a1, NSObject *a2, uint64_t a3, NSObject *a4, unint64_t a5, void *a6, uint64_t a7, void *a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v517 = a8;
  v498 = a7;
  v522 = a6;
  v513 = a4;
  v518 = a2;
  v514 = a1;
  v520 = sub_29DA336F4();
  isa = v520[-1].isa;
  v12 = *(isa + 8);
  v13 = MEMORY[0x2A1C7C4A8](v520);
  v489 = &v474[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v494 = &v474[-v16];
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v482 = &v474[-v18];
  v503 = v19;
  MEMORY[0x2A1C7C4A8](v17);
  v511 = &v474[-v20];
  v510 = sub_29DA33964();
  v504 = *(v510 - 8);
  v21 = *(v504 + 64);
  MEMORY[0x2A1C7C4A8](v510);
  v502 = v22;
  v509 = &v474[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v500 = *(v24 - 8);
  v25 = *(v500 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v508 = &v474[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v501 = v27;
  MEMORY[0x2A1C7C4A8](v26);
  v512 = &v474[-v28];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], v23);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v506 = &v474[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v495 = &v474[-v34];
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v485 = &v474[-v36];
  MEMORY[0x2A1C7C4A8](v35);
  v486 = &v474[-v37];
  v521 = sub_29DA33754();
  v519 = *(v521 - 8);
  v38 = *(v519 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v521);
  v41 = &v474[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x2A1C7C4A8](v39);
  v493 = &v474[-v43];
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v490 = &v474[-v45];
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v481 = &v474[-v47];
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v507 = &v474[-v49];
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v480 = &v474[-v51];
  v499 = v52;
  MEMORY[0x2A1C7C4A8](v50);
  v487 = &v474[-v53];
  v54 = sub_29DA34644();
  v523 = *(v54 - 8);
  v524 = v54;
  v55 = *(v523 + 8);
  v56 = MEMORY[0x2A1C7C4A8](v54);
  v58 = &v474[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = MEMORY[0x2A1C7C4A8](v56);
  v497 = &v474[-v60];
  v61 = MEMORY[0x2A1C7C4A8](v59);
  v63 = &v474[-v62];
  v64 = MEMORY[0x2A1C7C4A8](v61);
  v488 = &v474[-v65];
  v66 = MEMORY[0x2A1C7C4A8](v64);
  v483 = &v474[-v67];
  v68 = MEMORY[0x2A1C7C4A8](v66);
  v496 = &v474[-v69];
  v70 = MEMORY[0x2A1C7C4A8](v68);
  v479 = &v474[-v71];
  v72 = MEMORY[0x2A1C7C4A8](v70);
  v492 = &v474[-v73];
  v74 = MEMORY[0x2A1C7C4A8](v72);
  v478 = &v474[-v75];
  v76 = MEMORY[0x2A1C7C4A8](v74);
  v491 = &v474[-v77];
  MEMORY[0x2A1C7C4A8](v76);
  v484 = &v474[-v78];
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v79);
  v82 = &v474[-v81];
  v83 = type metadata accessor for HighlightAlertState();
  v84 = *(*(v83 - 1) + 64);
  v85 = MEMORY[0x2A1C7C4A8](v83);
  v87 = &v474[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = MEMORY[0x2A1C7C4A8](v85);
  v90 = &v474[-v89];
  MEMORY[0x2A1C7C4A8](v88);
  v516 = &v474[-v91];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v93 = Strong;
    v505 = a5;
    v477 = a11;
    v476 = a10;
    v475 = a9;
    sub_29DA23D6C(v514, v82, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29DA225F8(v82);
      sub_29DA34614();
      v94 = v519;
      v95 = *(v519 + 16);
      v96 = v521;
      v514 = (v519 + 16);
      v496 = v95;
      (v95)(v41, v522, v521);
      v97 = v93;
      v98 = v505;

      v99 = v97;
      v100 = sub_29DA34634();
      v101 = sub_29DA34BA4();

      v102 = os_log_type_enabled(v100, v101);
      v516 = v99;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v495 = swift_slowAlloc();
        aBlock = v495;
        *v103 = 136446723;
        v104 = [v99 description];
        v105 = sub_29DA34854();
        v107 = v106;

        v108 = sub_29D9EBB44(v105, v107, &aBlock);
        v109 = v519;

        *(v103 + 4) = v108;
        *(v103 + 12) = 2081;
        *(v103 + 14) = sub_29D9EBB44(v513, v98, &aBlock);
        *(v103 + 22) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
        v110 = sub_29DA350F4();
        v112 = v111;
        (*(v109 + 8))(v41, v96);
        v113 = sub_29D9EBB44(v110, v112, &aBlock);

        *(v103 + 24) = v113;
        v99 = v516;
        _os_log_impl(&dword_29D9BB000, v100, v101, "%{public}s: couldn't fetch alert state for %{private}s. Submitting updated feed item and alert state for sample (%{private}s)", v103, 0x20u);
        v114 = v495;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v114, -1, -1);
        MEMORY[0x29ED6E4C0](v103, -1, -1);
      }

      else
      {

        (*(v94 + 8))(v41, v96);
      }

      v161 = *(v523 + 1);
      v161(v63, v524);
      v162 = v520;
      v163 = isa;
      v164 = v506;
      (*(isa + 7))(v506, 1, 1, v520);
      if ([v99 isFinished])
      {
        v165 = v497;
        sub_29DA34614();
        v166 = v99;
        v167 = sub_29DA34634();
        v168 = sub_29DA34B84();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          aBlock = v170;
          *v169 = 136446210;
          v171 = [v166 description];
          v172 = sub_29DA34854();
          v174 = v173;

          v175 = sub_29D9EBB44(v172, v174, &aBlock);

          *(v169 + 4) = v175;
          _os_log_impl(&dword_29D9BB000, v167, v168, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v169, 0xCu);
          sub_29D9C7968(v170);
          MEMORY[0x29ED6E4C0](v170, -1, -1);
          MEMORY[0x29ED6E4C0](v169, -1, -1);

          v176 = v497;
        }

        else
        {

          v176 = v165;
        }

        v161(v176, v524);
        sub_29DA243E8(v164, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
      }

      else
      {
        v513 = dispatch_group_create();
        dispatch_group_enter(v513);
        v213 = v498;
        v497 = sub_29DA33924();
        v505 = v214;
        MEMORY[0x2A1C7C4A8](v497);
        v215 = v517;
        *&v474[-16] = v517;
        v216 = v512;
        sub_29DA05A90(sub_29DA22670, &v474[-32], v512);
        sub_29DA34B34();
        v524 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v217 = v504;
        (*(v504 + 16))(v509, v213, v510);
        v523 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v216, v508, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (*(v163 + 2))(v511, v215, v162);
        (v496)(v507, v522, v521);
        v218 = (*(v217 + 80) + 40) & ~*(v217 + 80);
        v219 = (v502 + *(v500 + 80) + v218) & ~*(v500 + 80);
        v220 = (v501 + *(v163 + 80) + v219) & ~*(v163 + 80);
        v221 = v220 + v503;
        v222 = v519;
        v223 = (*(v519 + 80) + v220 + v503 + 1) & ~*(v519 + 80);
        v224 = (v499 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
        v225 = swift_allocObject();
        v226 = v497;
        *(v225 + 2) = v524;
        *(v225 + 3) = v226;
        *(v225 + 4) = v505;
        (*(v217 + 32))(&v225[v218], v509, v510);
        sub_29DA22710(v508, &v225[v219]);
        (*(v163 + 4))(&v225[v220], v511, v520);
        v225[v221] = v475;
        (*(v222 + 32))(&v225[v223], v507, v521);
        v227 = &v225[v224];
        v228 = v477;
        *v227 = v476;
        *(v227 + 1) = v228;
        v530 = sub_29DA227A4;
        v531 = v225;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A24620C8;
        v229 = _Block_copy(&aBlock);
        v230 = objc_opt_self();

        v231 = [v230 blockOperationWithBlock_];
        _Block_release(v229);

        v232 = swift_allocObject();
        v233 = v516;
        swift_unknownObjectWeakInit();
        v234 = swift_allocObject();
        *(v234 + 16) = v232;
        *(v234 + 24) = 0;
        v530 = sub_29DA244E4;
        v531 = v234;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462118;
        v235 = _Block_copy(&aBlock);

        v236 = [v230 blockOperationWithBlock_];
        _Block_release(v235);

        [v236 addDependency_];
        v237 = swift_allocObject();
        v238 = v513;
        *(v237 + 16) = v513;
        v530 = sub_29DA227A8;
        v531 = v237;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462168;
        v239 = _Block_copy(&aBlock);
        v240 = v238;

        [v236 setCompletionBlock_];
        _Block_release(v239);
        [*&v233[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C();
        swift_getKeyPath();
        swift_getKeyPath();
        v532 = v233;
        v241 = v233;
        sub_29DA33B84();

        v242 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v512, qword_2A1A2E100, v523);
        sub_29DA243E8(v506, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
      }

      goto LABEL_54;
    }

    v123 = v516;
    sub_29DA23828(v82, v516, type metadata accessor for HighlightAlertState);
    v124 = sub_29DA33734();
    v125 = v83[6];
    v126 = sub_29DA336D4();
    v127 = v123[v83[7]];
    v128 = &v123[v83[5]];
    v129 = sub_29DA336D4();
    if (v124)
    {
      if (v126 == -1)
      {
        v243 = v484;
        sub_29DA34614();
        v244 = v519;
        v245 = v487;
        v246 = v521;
        (*(v519 + 16))(v487, v522, v521);
        sub_29DA23890(v516, v90, type metadata accessor for HighlightAlertState);
        v247 = v93;
        v248 = v505;

        v249 = sub_29DA34634();
        v250 = sub_29DA34BA4();

        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          v522 = swift_slowAlloc();
          aBlock = v522;
          *v251 = 136446979;
          v252 = [v247 description];
          v520 = v249;
          v253 = v252;
          v254 = v246;
          v255 = v244;
          v256 = sub_29DA34854();
          LODWORD(v517) = v250;
          v258 = v257;

          v259 = sub_29D9EBB44(v256, v258, &aBlock);

          *(v251 + 4) = v259;
          *(v251 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v260 = v487;
          v261 = sub_29DA350F4();
          v263 = v262;
          (*(v255 + 8))(v260, v254);
          v264 = sub_29D9EBB44(v261, v263, &aBlock);

          *(v251 + 14) = v264;
          *(v251 + 22) = 2081;
          v248 = v505;
          v265 = v243;
          v266 = v513;
          *(v251 + 24) = sub_29D9EBB44(v513, v505, &aBlock);
          *(v251 + 32) = 2082;
          v267 = &v90[v83[6]];
          v268 = sub_29DA33654();
          v270 = v269;
          sub_29DA23BC0(v90, type metadata accessor for HighlightAlertState);
          v271 = sub_29D9EBB44(v268, v270, &aBlock);

          *(v251 + 34) = v271;
          v272 = v520;
          _os_log_impl(&dword_29D9BB000, v520, v517, "%{public}s: found matching sample (%{private}s) that is expired for %{private}s with alert state expiration date: %{public}s. Deleting feed item.", v251, 0x2Au);
          v273 = v522;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v273, -1, -1);
          MEMORY[0x29ED6E4C0](v251, -1, -1);

          (*(v523 + 1))(v265, v524);
        }

        else
        {

          sub_29DA23BC0(v90, type metadata accessor for HighlightAlertState);
          (*(v244 + 8))(v245, v246);
          (*(v523 + 1))(v243, v524);
          v266 = v513;
        }

        sub_29DA19C04(v266, v248);

        goto LABEL_52;
      }

      v130 = v519;
      v131 = (v519 + 16);
      v514 = (v519 + 16);
      if (v127)
      {
        v497 = v125;
        sub_29DA34614();
        v132 = v480;
        v133 = v521;
        v496 = *v131;
        (v496)(v480, v522, v521);
        sub_29DA23890(v516, v87, type metadata accessor for HighlightAlertState);
        v134 = v93;

        v135 = v134;
        v136 = sub_29DA34634();
        LODWORD(v134) = sub_29DA34BA4();

        LODWORD(v495) = v134;
        v137 = v134;
        v138 = v136;
        v139 = os_log_type_enabled(v136, v137);
        v506 = v135;
        if (v139)
        {
          v140 = swift_slowAlloc();
          v494 = swift_slowAlloc();
          aBlock = v494;
          *v140 = 136446979;
          v141 = [v135 description];
          v142 = sub_29DA34854();
          v143 = v132;
          v145 = v144;

          v146 = sub_29D9EBB44(v142, v145, &aBlock);

          *(v140 + 4) = v146;
          *(v140 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v147 = sub_29DA350F4();
          v149 = v148;
          (*(v130 + 8))(v143, v133);
          v150 = sub_29D9EBB44(v147, v149, &aBlock);

          *(v140 + 14) = v150;
          *(v140 + 22) = 2081;
          *(v140 + 24) = sub_29D9EBB44(v513, v505, &aBlock);
          *(v140 + 32) = 2082;
          v151 = v83[6];
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
          v152 = v520;
          v153 = sub_29DA350F4();
          v155 = v154;
          sub_29DA23BC0(v87, type metadata accessor for HighlightAlertState);
          v156 = sub_29D9EBB44(v153, v155, &aBlock);

          *(v140 + 34) = v156;
          v135 = v506;
          _os_log_impl(&dword_29D9BB000, v138, v495, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s but previously acknowledged. Updating feed item with alert state expiration date: %{public}s", v140, 0x2Au);
          v157 = v494;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v157, -1, -1);
          v158 = v140;
          v159 = v516;
          MEMORY[0x29ED6E4C0](v158, -1, -1);

          v160 = *(v523 + 1);
          v160(v491, v524);
        }

        else
        {

          sub_29DA23BC0(v87, type metadata accessor for HighlightAlertState);
          (*(v130 + 8))(v132, v133);
          v160 = *(v523 + 1);
          v160(v491, v524);
          v152 = v520;
          v159 = v516;
        }

        v385 = isa;
        v386 = *(isa + 2);
        v387 = v486;
        (v386)(v486, &v497[v159], v152);
        (*(v385 + 7))(v387, 0, 1, v152);
        if ([v135 isFinished])
        {
          v388 = v478;
          sub_29DA34614();
          v389 = v135;
          v390 = sub_29DA34634();
          v391 = sub_29DA34B84();

          if (!os_log_type_enabled(v390, v391))
          {

            v160(v388, v524);
            sub_29DA243E8(v387, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
            v384 = v159;
            goto LABEL_53;
          }

          v392 = swift_slowAlloc();
          v393 = swift_slowAlloc();
          aBlock = v393;
          *v392 = 136446210;
          v394 = [v389 description];
          v395 = sub_29DA34854();
          v396 = v387;
          v398 = v397;

          v399 = sub_29D9EBB44(v395, v398, &aBlock);

          *(v392 + 4) = v399;
          _os_log_impl(&dword_29D9BB000, v390, v391, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v392, 0xCu);
          sub_29D9C7968(v393);
          MEMORY[0x29ED6E4C0](v393, -1, -1);
          MEMORY[0x29ED6E4C0](v392, -1, -1);

          v160(v478, v524);
          v382 = MEMORY[0x29EDB9BC8];
          v400 = v396;
          goto LABEL_51;
        }

        v513 = dispatch_group_create();
        dispatch_group_enter(v513);
        v415 = v498;
        v497 = sub_29DA33924();
        v505 = v416;
        MEMORY[0x2A1C7C4A8](v497);
        *&v474[-16] = v517;
        v417 = v512;
        v495 = v386;
        sub_29DA05A90(sub_29DA24544, &v474[-32], v512);
        sub_29DA34B34();
        v524 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v418 = v504;
        (*(v504 + 16))(v509, v415, v510);
        v523 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v417, v508, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v495)(v511, v517, v520);
        (v496)(v507, v522, v521);
        v419 = (*(v418 + 80) + 40) & ~*(v418 + 80);
        v420 = (v502 + *(v500 + 80) + v419) & ~*(v500 + 80);
        v421 = (v501 + *(v385 + 80) + v420) & ~*(v385 + 80);
        v422 = v421 + v503;
        v423 = v519;
        v424 = (*(v519 + 80) + v421 + v503 + 1) & ~*(v519 + 80);
        v425 = (v499 + v424 + 7) & 0xFFFFFFFFFFFFFFF8;
        v426 = swift_allocObject();
        v427 = v497;
        *(v426 + 2) = v524;
        *(v426 + 3) = v427;
        *(v426 + 4) = v505;
        (*(v418 + 32))(&v426[v419], v509, v510);
        sub_29DA22710(v508, &v426[v420]);
        (*(v385 + 4))(&v426[v421], v511, v520);
        v426[v422] = v475;
        (*(v423 + 32))(&v426[v424], v507, v521);
        v428 = &v426[v425];
        v429 = v477;
        *v428 = v476;
        *(v428 + 1) = v429;
        v530 = sub_29DA244E0;
        v531 = v426;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462398;
        v430 = _Block_copy(&aBlock);
        v431 = objc_opt_self();

        v432 = [v431 blockOperationWithBlock_];
        _Block_release(v430);

        v433 = swift_allocObject();
        v434 = v506;
        swift_unknownObjectWeakInit();
        v435 = swift_allocObject();
        *(v435 + 16) = v433;
        *(v435 + 24) = 0;
        v530 = sub_29DA244E4;
        v531 = v435;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A24623E8;
        v436 = _Block_copy(&aBlock);

        v437 = [v431 blockOperationWithBlock_];
        _Block_release(v436);

        [v437 addDependency_];
        v438 = swift_allocObject();
        v439 = v513;
        *(v438 + 16) = v513;
        v530 = sub_29DA244FC;
        v531 = v438;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462438;
        v440 = _Block_copy(&aBlock);
        v441 = v439;

        [v437 setCompletionBlock_];
        _Block_release(v440);
        [*&v434[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C();
        swift_getKeyPath();
        swift_getKeyPath();
        v532 = v434;
        v442 = v434;
        sub_29DA33B84();

        v443 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v512, qword_2A1A2E100, v523);
        v382 = MEMORY[0x29EDB9BC8];
        v383 = &v518;
      }

      else
      {
        sub_29DA34614();
        v309 = v481;
        v310 = v521;
        v497 = *v131;
        (v497)(v481, v522, v521);
        v311 = isa;
        v312 = *(isa + 2);
        v313 = v482;
        v314 = v520;
        v496 = isa + 16;
        v495 = v312;
        (v312)(v482, v517);
        v315 = v93;
        v316 = v505;

        v317 = sub_29DA34634();
        v318 = sub_29DA34BA4();

        v319 = os_log_type_enabled(v317, v318);
        v506 = v315;
        if (v319)
        {
          v320 = swift_slowAlloc();
          v493 = swift_slowAlloc();
          aBlock = v493;
          *v320 = 136446979;
          v321 = [v315 description];
          LODWORD(v494) = v318;
          v322 = v321;
          v323 = v313;
          v324 = sub_29DA34854();
          v326 = v325;

          v327 = sub_29D9EBB44(v324, v326, &aBlock);

          *(v320 + 4) = v327;
          *(v320 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v328 = sub_29DA350F4();
          v330 = v329;
          (*(v130 + 8))(v309, v310);
          v331 = sub_29D9EBB44(v328, v330, &aBlock);

          *(v320 + 14) = v331;
          *(v320 + 22) = 2081;
          v315 = v506;
          *(v320 + 24) = sub_29D9EBB44(v513, v316, &aBlock);
          *(v320 + 32) = 2082;
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
          v332 = sub_29DA350F4();
          v334 = v333;
          (*(isa + 1))(v323, v520);
          v335 = sub_29D9EBB44(v332, v334, &aBlock);

          *(v320 + 34) = v335;
          _os_log_impl(&dword_29D9BB000, v317, v494, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s but not acknowledged. Acknowledging feed item and computing expiration date from event date: %{public}s", v320, 0x2Au);
          v336 = v493;
          swift_arrayDestroy();
          v337 = v336;
          v314 = v520;
          MEMORY[0x29ED6E4C0](v337, -1, -1);
          v338 = v320;
          v311 = isa;
          MEMORY[0x29ED6E4C0](v338, -1, -1);
        }

        else
        {

          (*(v311 + 1))(v313, v314);
          (*(v130 + 8))(v309, v310);
        }

        v401 = *(v523 + 1);
        v401(v492, v524);
        v402 = v485;
        (*(v311 + 7))(v485, 1, 1, v314);
        if ([v315 isFinished])
        {
          v403 = v479;
          sub_29DA34614();
          v404 = v315;
          v405 = sub_29DA34634();
          v406 = sub_29DA34B84();

          if (os_log_type_enabled(v405, v406))
          {
            v407 = swift_slowAlloc();
            v408 = swift_slowAlloc();
            aBlock = v408;
            *v407 = 136446210;
            v409 = [v404 description];
            v410 = sub_29DA34854();
            v412 = v411;

            v413 = sub_29D9EBB44(v410, v412, &aBlock);

            *(v407 + 4) = v413;
            _os_log_impl(&dword_29D9BB000, v405, v406, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v407, 0xCu);
            sub_29D9C7968(v408);
            MEMORY[0x29ED6E4C0](v408, -1, -1);
            MEMORY[0x29ED6E4C0](v407, -1, -1);

            v414 = v479;
          }

          else
          {

            v414 = v403;
          }

          v401(v414, v524);
          v382 = MEMORY[0x29EDB9BC8];
          v400 = v402;
          goto LABEL_51;
        }

        v513 = dispatch_group_create();
        dispatch_group_enter(v513);
        v444 = v498;
        v505 = sub_29DA33924();
        v494 = v445;
        MEMORY[0x2A1C7C4A8](v505);
        v446 = v517;
        *&v474[-16] = v517;
        v447 = v512;
        sub_29DA05A90(sub_29DA24544, &v474[-32], v512);
        sub_29DA34B34();
        v524 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v448 = v504;
        (*(v504 + 16))(v509, v444, v510);
        v523 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v447, v508, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v495)(v511, v446, v520);
        (v497)(v507, v522, v521);
        v449 = (*(v448 + 80) + 40) & ~*(v448 + 80);
        v450 = (v502 + *(v500 + 80) + v449) & ~*(v500 + 80);
        v451 = (v501 + *(v311 + 80) + v450) & ~*(v311 + 80);
        v452 = v451 + v503;
        v453 = v519;
        v454 = (*(v519 + 80) + v451 + v503 + 1) & ~*(v519 + 80);
        v455 = (v499 + v454 + 7) & 0xFFFFFFFFFFFFFFF8;
        v456 = swift_allocObject();
        v457 = v505;
        *(v456 + 2) = v524;
        *(v456 + 3) = v457;
        *(v456 + 4) = v494;
        (*(v448 + 32))(&v456[v449], v509, v510);
        sub_29DA22710(v508, &v456[v450]);
        (*(v311 + 4))(&v456[v451], v511, v520);
        v456[v452] = v475;
        (*(v453 + 32))(&v456[v454], v507, v521);
        v458 = &v456[v455];
        v459 = v477;
        *v458 = v476;
        *(v458 + 1) = v459;
        v530 = sub_29DA244E0;
        v531 = v456;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A24622A8;
        v460 = _Block_copy(&aBlock);
        v461 = objc_opt_self();

        v462 = [v461 blockOperationWithBlock_];
        _Block_release(v460);

        v463 = swift_allocObject();
        v464 = v506;
        swift_unknownObjectWeakInit();
        v465 = swift_allocObject();
        *(v465 + 16) = v463;
        *(v465 + 24) = 0;
        v530 = sub_29DA244E4;
        v531 = v465;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A24622F8;
        v466 = _Block_copy(&aBlock);

        v467 = [v461 blockOperationWithBlock_];
        _Block_release(v466);

        [v467 addDependency_];
        v468 = swift_allocObject();
        v469 = v513;
        *(v468 + 16) = v513;
        v530 = sub_29DA244FC;
        v531 = v468;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462348;
        v470 = _Block_copy(&aBlock);
        v471 = v469;

        [v467 setCompletionBlock_];
        _Block_release(v470);
        [*&v464[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C();
        swift_getKeyPath();
        swift_getKeyPath();
        v532 = v464;
        v472 = v464;
        sub_29DA33B84();

        v473 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v512, qword_2A1A2E100, v523);
        v382 = MEMORY[0x29EDB9BC8];
        v383 = &v517;
      }
    }

    else
    {
      v177 = v519;
      v178 = (v519 + 16);
      v179 = isa;
      v180 = isa + 16;
      if (v129 == -1)
      {
        v274 = v488;
        sub_29DA34614();
        v275 = v521;
        (*v178)(v493, v522, v521);
        v276 = *v180;
        v277 = v489;
        v278 = v520;
        (v276)(v489, v517, v520);
        v279 = v93;
        v280 = v505;

        v281 = v279;
        v282 = sub_29DA34634();
        LODWORD(v279) = sub_29DA34BA4();

        LODWORD(v522) = v279;
        v283 = v279;
        v284 = v282;
        if (os_log_type_enabled(v282, v283))
        {
          v285 = v179;
          v286 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          aBlock = v287;
          *v286 = 136446979;
          v288 = [v281 description];
          v517 = v281;
          v289 = v288;
          v290 = v275;
          v291 = sub_29DA34854();
          v293 = v292;

          v294 = sub_29D9EBB44(v291, v293, &aBlock);

          *(v286 + 4) = v294;
          *(v286 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v295 = v493;
          v296 = sub_29DA350F4();
          v298 = v297;
          v299 = v290;
          v280 = v505;
          (*(v177 + 8))(v295, v299);
          v300 = sub_29D9EBB44(v296, v298, &aBlock);

          *(v286 + 14) = v300;
          *(v286 + 22) = 2081;
          v301 = v513;
          *(v286 + 24) = sub_29D9EBB44(v513, v280, &aBlock);
          *(v286 + 32) = 2082;
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
          v302 = v489;
          v303 = v520;
          v304 = sub_29DA350F4();
          v306 = v305;
          (*(v285 + 1))(v302, v303);
          v307 = sub_29D9EBB44(v304, v306, &aBlock);

          *(v286 + 34) = v307;
          v281 = v517;
          _os_log_impl(&dword_29D9BB000, v284, v522, "%{public}s: found newer sample (%{private}s) in alert state for %{private}s with event date: %{public}s. Deleting feed item.", v286, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v287, -1, -1);
          MEMORY[0x29ED6E4C0](v286, -1, -1);

          (*(v523 + 1))(v488, v524);
          v308 = v516;
        }

        else
        {

          (*(v179 + 1))(v277, v278);
          (*(v177 + 8))(v493, v275);
          (*(v523 + 1))(v274, v524);
          v308 = v516;
          v301 = v513;
        }

        sub_29DA19C04(v301, v280);

        v384 = v308;
        goto LABEL_53;
      }

      sub_29DA34614();
      v181 = *v178;
      v182 = v490;
      v183 = v521;
      v506 = v178;
      v493 = v181;
      (v181)(v490, v522, v521);
      v184 = *v180;
      v185 = v494;
      v186 = v520;
      v497 = v180;
      v492 = v184;
      (v184)(v494, v517, v520);
      v187 = v93;
      v188 = v505;

      v189 = sub_29DA34634();
      v190 = sub_29DA34BA4();

      v191 = os_log_type_enabled(v189, v190);
      v514 = v187;
      if (v191)
      {
        v192 = swift_slowAlloc();
        v193 = v183;
        v491 = swift_slowAlloc();
        aBlock = v491;
        *v192 = 136446979;
        v194 = [v187 description];
        v195 = sub_29DA34854();
        v197 = v196;

        v198 = sub_29D9EBB44(v195, v197, &aBlock);

        *(v192 + 4) = v198;
        *(v192 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
        v199 = sub_29DA350F4();
        v201 = v200;
        (*(v177 + 8))(v182, v193);
        v202 = sub_29D9EBB44(v199, v201, &aBlock);

        *(v192 + 14) = v202;
        *(v192 + 22) = 2081;
        v187 = v514;
        *(v192 + 24) = sub_29D9EBB44(v513, v188, &aBlock);
        *(v192 + 32) = 2082;
        sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
        v203 = v494;
        v204 = sub_29DA350F4();
        v206 = v205;
        v207 = isa;
        (*(isa + 1))(v203, v520);
        v208 = sub_29D9EBB44(v204, v206, &aBlock);

        *(v192 + 34) = v208;
        v209 = v190;
        v210 = v207;
        _os_log_impl(&dword_29D9BB000, v189, v209, "%{public}s: found older sample (%{private}s) in alert state for %{private}s. Acknowledging feed item and computing expiration date from event date: %{public}s", v192, 0x2Au);
        v211 = v491;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v211, -1, -1);
        v212 = v192;
        v186 = v520;
        MEMORY[0x29ED6E4C0](v212, -1, -1);
      }

      else
      {

        v210 = isa;
        (*(isa + 1))(v185, v186);
        (*(v177 + 8))(v182, v183);
      }

      v339 = *(v523 + 1);
      v339(v496, v524);
      v340 = v495;
      (*(v210 + 7))(v495, 1, 1, v186);
      if ([v187 isFinished])
      {
        v341 = v483;
        sub_29DA34614();
        v342 = v187;
        v343 = sub_29DA34634();
        v344 = sub_29DA34B84();

        if (!os_log_type_enabled(v343, v344))
        {

          v339(v341, v524);
          v382 = MEMORY[0x29EDB9BC8];
          v400 = v340;
LABEL_51:
          sub_29DA243E8(v400, &qword_2A1A2E148, v382);
LABEL_52:
          v384 = v516;
LABEL_53:
          sub_29DA23BC0(v384, type metadata accessor for HighlightAlertState);
          goto LABEL_54;
        }

        v345 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        aBlock = v346;
        *v345 = 136446210;
        v347 = [v342 description];
        v348 = sub_29DA34854();
        v350 = v349;

        v351 = sub_29D9EBB44(v348, v350, &aBlock);

        *(v345 + 4) = v351;
        _os_log_impl(&dword_29D9BB000, v343, v344, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v345, 0xCu);
        sub_29D9C7968(v346);
        MEMORY[0x29ED6E4C0](v346, -1, -1);
        MEMORY[0x29ED6E4C0](v345, -1, -1);

        v339(v341, v524);
      }

      else
      {
        v513 = dispatch_group_create();
        dispatch_group_enter(v513);
        v352 = v498;
        v505 = sub_29DA33924();
        v496 = v353;
        MEMORY[0x2A1C7C4A8](v505);
        *&v474[-16] = v517;
        v354 = v512;
        sub_29DA05A90(sub_29DA24544, &v474[-32], v512);
        sub_29DA34B34();
        v524 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v355 = v504;
        (*(v504 + 16))(v509, v352, v510);
        v523 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v354, v508, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v492)(v511, v517, v186);
        (v493)(v507, v522, v521);
        v356 = (*(v355 + 80) + 40) & ~*(v355 + 80);
        v357 = (v502 + *(v500 + 80) + v356) & ~*(v500 + 80);
        v358 = isa;
        v359 = (v501 + *(isa + 80) + v357) & ~*(isa + 80);
        v360 = v359 + v503;
        v361 = v519;
        v362 = (*(v519 + 80) + v359 + v503 + 1) & ~*(v519 + 80);
        v363 = (v499 + v362 + 7) & 0xFFFFFFFFFFFFFFF8;
        v364 = swift_allocObject();
        v365 = v505;
        *(v364 + 2) = v524;
        *(v364 + 3) = v365;
        *(v364 + 4) = v496;
        (*(v355 + 32))(&v364[v356], v509, v510);
        sub_29DA22710(v508, &v364[v357]);
        (*(v358 + 4))(&v364[v359], v511, v520);
        v364[v360] = v475;
        (*(v361 + 32))(&v364[v362], v507, v521);
        v366 = &v364[v363];
        v367 = v477;
        *v366 = v476;
        *(v366 + 1) = v367;
        v530 = sub_29DA244E0;
        v531 = v364;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A24621B8;
        v368 = _Block_copy(&aBlock);
        v369 = objc_opt_self();

        v370 = [v369 blockOperationWithBlock_];
        _Block_release(v368);

        v371 = swift_allocObject();
        v372 = v514;
        swift_unknownObjectWeakInit();
        v373 = swift_allocObject();
        *(v373 + 16) = v371;
        *(v373 + 24) = 0;
        v530 = sub_29DA244E4;
        v531 = v373;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462208;
        v374 = _Block_copy(&aBlock);

        v375 = [v369 blockOperationWithBlock_];
        _Block_release(v374);

        [v375 addDependency_];
        v376 = swift_allocObject();
        v377 = v513;
        *(v376 + 16) = v513;
        v530 = sub_29DA244FC;
        v531 = v376;
        aBlock = MEMORY[0x29EDCA5F8];
        v527 = 1107296256;
        v528 = sub_29DA05EEC;
        v529 = &unk_2A2462258;
        v378 = _Block_copy(&aBlock);
        v379 = v377;

        [v375 setCompletionBlock_];
        _Block_release(v378);
        [*&v372[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C();
        swift_getKeyPath();
        swift_getKeyPath();
        v532 = v372;
        v380 = v372;
        sub_29DA33B84();

        v381 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v512, qword_2A1A2E100, v523);
      }

      v382 = MEMORY[0x29EDB9BC8];
      v383 = &v525;
    }

    v400 = *(v383 - 32);
    goto LABEL_51;
  }

  sub_29DA34614();

  v115 = sub_29DA34634();
  v116 = sub_29DA34B84();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = a5;
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    aBlock = v119;
    *v118 = 136446467;
    v532 = type metadata accessor for HighlightAlertsFeedItemGenerator();
    sub_29D9F79EC();
    v120 = sub_29DA34894();
    v122 = sub_29D9EBB44(v120, v121, &aBlock);

    *(v118 + 4) = v122;
    *(v118 + 12) = 2081;
    *(v118 + 14) = sub_29D9EBB44(v513, v117, &aBlock);
    _os_log_impl(&dword_29D9BB000, v115, v116, "%{public}s went away unexpectedly before fetchAlertState callback for %{private}s", v118, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v119, -1, -1);
    MEMORY[0x29ED6E4C0](v118, -1, -1);
  }

  (*(v523 + 1))(v58, v524);
LABEL_54:
  dispatch_group_leave(v518);
}

uint64_t sub_29DA15594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v105 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v97 = &v76 - v8;
  v9 = sub_29DA336F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v109 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v108 = &v76 - v14;
  v15 = sub_29DA33754();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v86 = v18;
  v104 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29DA33964();
  v87 = *(v103 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v103);
  v85 = v20;
  v102 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29DA34644();
  v78 = *(v98 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v98);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HighlightAlertState();
  v25 = (v24 - 8);
  v83 = *(v24 - 8);
  v26 = *(v83 + 64);
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v101 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v28;
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v76 - v29;
  v94 = sub_29DA33554();
  v91 = *(v94 - 8);
  v31 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v94);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  v110 = sub_29DA33924();
  v35 = v34;
  sub_29DA15FCC(a3, v33);
  v93 = v16;
  v36 = *(v16 + 16);
  v107 = v15;
  v80 = v16 + 16;
  v79 = v36;
  v36(v30, v105, v15);
  v37 = v25[7];
  v95 = v10;
  v38 = v10;
  v39 = v35;
  v40 = *(v38 + 16);
  v76 = a3;
  v96 = v9;
  v82 = v38 + 16;
  v81 = v40;
  v40(&v30[v37], a3, v9);
  v41 = &v30[v25[8]];
  v89 = v33;
  sub_29DA334F4();
  v30[v25[9]] = 0;
  v42 = v25[10];
  v106 = v30;
  v30[v42] = 0;
  v100 = dispatch_group_create();
  dispatch_group_enter(v100);
  sub_29DA34614();
  v43 = v77;

  v77 = v23;
  v44 = sub_29DA34634();
  v45 = sub_29DA34BA4();

  v46 = os_log_type_enabled(v44, v45);
  v99 = v39;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v112 = v48;
    *v47 = 136446467;
    v49 = [v43 description];
    v50 = sub_29DA34854();
    v52 = v51;

    v53 = sub_29D9EBB44(v50, v52, &v112);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2081;
    *(v47 + 14) = sub_29D9EBB44(v110, v39, &v112);
    _os_log_impl(&dword_29D9BB000, v44, v45, "%{public}s: processing generation alert state for %{private}s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v48, -1, -1);
    MEMORY[0x29ED6E4C0](v47, -1, -1);
  }

  (*(v78 + 8))(v77, v98);
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = v43;
  v54 = v43;
  sub_29DA33B84();

  v78 = v112;
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29DA23890(v106, v101, type metadata accessor for HighlightAlertState);
  v55 = v87;
  (*(v87 + 16))(v102, v90, v103);
  v79(v104, v105, v107);
  v56 = v96;
  v57 = v81;
  v81(v108, v88, v96);
  v57(v109, v76, v56);
  v58 = (*(v83 + 80) + 48) & ~*(v83 + 80);
  v59 = (v84 + *(v55 + 80) + v58) & ~*(v55 + 80);
  v60 = v93;
  v61 = (v85 + *(v93 + 80) + v59) & ~*(v93 + 80);
  v62 = v95;
  v63 = *(v95 + 80);
  v64 = (v86 + v63 + v61) & ~v63;
  v65 = (v92 + v63 + v64) & ~v63;
  v66 = swift_allocObject();
  v67 = v98;
  *(v66 + 2) = v100;
  *(v66 + 3) = v67;
  v68 = v99;
  *(v66 + 4) = v110;
  *(v66 + 5) = v68;
  sub_29DA23828(v101, &v66[v58], type metadata accessor for HighlightAlertState);
  (*(v55 + 32))(&v66[v59], v102, v103);
  (*(v60 + 32))(&v66[v61], v104, v107);
  v69 = *(v62 + 32);
  v69(&v66[v64], v108, v56);
  v69(&v66[v65], v109, v56);
  v70 = sub_29DA34A34();
  v71 = v97;
  (*(*(v70 - 8) + 56))(v97, 1, 1, v70);
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v73 = v110;
  v72[4] = v78;
  v72[5] = v73;
  v72[6] = v99;
  v72[7] = sub_29DA22238;
  v72[8] = v66;

  v74 = v100;

  sub_29D9ED414(0, 0, v71, &unk_29DA3BA30, v72);

  sub_29DA34C04();

  sub_29DA23BC0(v106, type metadata accessor for HighlightAlertState);
  return (*(v91 + 8))(v89, v94);
}

uint64_t sub_29DA15FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v28 = a2;
  v2 = sub_29DA33794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA337A4();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v28 - v13;
  v15 = sub_29DA336F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v28 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v28 - v24;
  sub_29DA33784();
  (*(v3 + 104))(v6, *MEMORY[0x29EDB9CB8], v2);
  sub_29DA33774();
  (*(v3 + 8))(v6, v2);
  (*(v29 + 8))(v10, v30);
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v25, v14, v15);
    v27 = *(v16 + 16);
    v27(v23, v31, v15);
    v27(v20, v25, v15);
    sub_29DA33504();
    return (*(v16 + 8))(v25, v15);
  }

  return result;
}

void sub_29DA16350(char *a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v455 = a8;
  v447 = a7;
  v451 = a6;
  v463 = a5;
  v457 = a1;
  v458 = a4;
  v460 = a2;
  v8 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v433 = &v408 - v11;
  v432 = sub_29DA33864();
  v431 = *(v432 - 8);
  v12 = *(v431 + 64);
  MEMORY[0x2A1C7C4A8](v432);
  v430 = &v408 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_29DA33964();
  v445 = *(v446 - 8);
  v14 = *(v445 + 64);
  MEMORY[0x2A1C7C4A8](v446);
  v434 = &v408 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HighlightAlertSampleInfo(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v410 = &v408 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2D330, MEMORY[0x29EDB9C08], v8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v426 = &v408 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v435 = &v408 - v23;
  sub_29DA1BF9C(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState, v8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v428 = &v408 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v438 = &v408 - v28;
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, v8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v425 = &v408 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v424 = &v408 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v449 = &v408 - v35;
  v441 = sub_29DA33AB4();
  v429 = *(v441 - 8);
  v36 = *(v429 + 64);
  MEMORY[0x2A1C7C4A8](v441);
  v417 = &v408 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_29DA33754();
  v454 = *(v452 - 8);
  v38 = *(v454 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v452);
  v411 = &v408 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x2A1C7C4A8](v39);
  v427 = &v408 - v42;
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v423 = &v408 - v44;
  MEMORY[0x2A1C7C4A8](v43);
  v414 = &v408 - v45;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], v8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v46 - 8);
  v453 = &v408 - v48;
  v459 = type metadata accessor for HighlightAlertState();
  v450 = *(v459 - 1);
  v49 = *(v450 + 64);
  v50 = MEMORY[0x2A1C7C4A8](v459);
  v419 = &v408 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v50);
  v413 = &v408 - v52;
  v53 = MEMORY[0x2A1C7C4A8](v51);
  v421 = (&v408 - v54);
  v55 = MEMORY[0x2A1C7C4A8](v53);
  v420 = (&v408 - v56);
  v57 = MEMORY[0x2A1C7C4A8](v55);
  v416 = &v408 - v58;
  v59 = MEMORY[0x2A1C7C4A8](v57);
  v415 = &v408 - v60;
  v61 = MEMORY[0x2A1C7C4A8](v59);
  v439 = &v408 - v62;
  v63 = MEMORY[0x2A1C7C4A8](v61);
  v408 = &v408 - v64;
  v65 = MEMORY[0x2A1C7C4A8](v63);
  v437 = &v408 - v66;
  v67 = MEMORY[0x2A1C7C4A8](v65);
  v444 = &v408 - v68;
  v69 = MEMORY[0x2A1C7C4A8](v67);
  v422 = &v408 - v70;
  v71 = MEMORY[0x2A1C7C4A8](v69);
  v443 = (&v408 - v72);
  v73 = MEMORY[0x2A1C7C4A8](v71);
  v442 = &v408 - v74;
  v75 = MEMORY[0x2A1C7C4A8](v73);
  v412 = &v408 - v76;
  v77 = MEMORY[0x2A1C7C4A8](v75);
  v456 = &v408 - v78;
  v79 = MEMORY[0x2A1C7C4A8](v77);
  v448 = &v408 - v80;
  MEMORY[0x2A1C7C4A8](v79);
  v82 = &v408 - v81;
  v83 = sub_29DA34644();
  v84 = *(v83 - 8);
  v461 = v83;
  v462 = v84;
  v85 = *(v84 + 8);
  v86 = MEMORY[0x2A1C7C4A8](v83);
  v88 = &v408 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x2A1C7C4A8](v86);
  v418 = &v408 - v90;
  v91 = MEMORY[0x2A1C7C4A8](v89);
  v436 = &v408 - v92;
  v93 = MEMORY[0x2A1C7C4A8](v91);
  v440 = &v408 - v94;
  v95 = MEMORY[0x2A1C7C4A8](v93);
  v409 = &v408 - v96;
  v97 = MEMORY[0x2A1C7C4A8](v95);
  v99 = &v408 - v98;
  v100 = MEMORY[0x2A1C7C4A8](v97);
  v102 = &v408 - v101;
  v103 = MEMORY[0x2A1C7C4A8](v100);
  v105 = &v408 - v104;
  MEMORY[0x2A1C7C4A8](v103);
  v107 = &v408 - v106;
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v108);
  v111 = (&v408 - v110);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();
    v134 = v463;

    v135 = sub_29DA34634();
    v136 = sub_29DA34B84();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v465 = v138;
      *v137 = 136446467;
      v464 = type metadata accessor for HighlightAlertsFeedItemGenerator();
      sub_29D9F79EC();
      v139 = sub_29DA34894();
      v141 = sub_29D9EBB44(v139, v140, &v465);

      *(v137 + 4) = v141;
      *(v137 + 12) = 2081;
      *(v137 + 14) = sub_29D9EBB44(v458, v134, &v465);
      _os_log_impl(&dword_29D9BB000, v135, v136, "%{public}s went away unexpectedly before fetchAlertState callback for %{private}s", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v138, -1, -1);
      MEMORY[0x29ED6E4C0](v137, -1, -1);
    }

    (*(v462 + 1))(v88, v461);
    goto LABEL_72;
  }

  v113 = Strong;
  sub_29DA23D6C(v457, v111, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v142 = v456;
    sub_29DA23828(v111, v456, type metadata accessor for HighlightAlertState);
    v143 = sub_29DA33734();
    v144 = v459;
    v145 = &v142[v459[6]];
    v146 = sub_29DA336D4();
    v147 = v144[5];
    v148 = sub_29DA336D4();
    if (v143)
    {
      v149 = (v454 + 16);
      v150 = v463;
      if (v146 != -1)
      {
        v151 = v99;
        sub_29DA34614();
        v152 = *v149;
        v153 = v423;
        v154 = v452;
        v421 = v149;
        v420 = v152;
        v152(v423, v455, v452);
        sub_29DA23890(v142, v442, type metadata accessor for HighlightAlertState);
        sub_29DA23890(v142, v443, type metadata accessor for HighlightAlertState);
        v155 = v422;
        sub_29DA23890(v142, v422, type metadata accessor for HighlightAlertState);
        v156 = v113;

        v157 = sub_29DA34634();
        v158 = sub_29DA34BA4();

        v159 = os_log_type_enabled(v157, v158);
        v457 = v156;
        if (v159)
        {
          v160 = v153;
          v161 = swift_slowAlloc();
          v419 = swift_slowAlloc();
          v465 = v419;
          *v161 = 136447491;
          v162 = [v156 description];
          LODWORD(v418) = v158;
          v163 = v162;
          v164 = sub_29DA34854();
          v451 = v151;
          v165 = v164;
          v167 = v166;

          v168 = sub_29D9EBB44(v165, v167, &v465);

          *(v161 + 4) = v168;
          *(v161 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v169 = sub_29DA350F4();
          v171 = v170;
          v436 = *(v454 + 8);
          (v436)(v160, v154);
          v172 = sub_29D9EBB44(v169, v171, &v465);

          *(v161 + 14) = v172;
          *(v161 + 22) = 2081;
          v173 = v458;
          *(v161 + 24) = sub_29D9EBB44(v458, v150, &v465);
          *(v161 + 32) = 2082;
          v174 = v459;
          if (*(v442 + v459[7]))
          {
            v175 = 1702195828;
          }

          else
          {
            v175 = 0x65736C6166;
          }

          if (*(v442 + v459[7]))
          {
            v176 = 0xE400000000000000;
          }

          else
          {
            v176 = 0xE500000000000000;
          }

          sub_29DA23BC0(v442, type metadata accessor for HighlightAlertState);
          v177 = sub_29D9EBB44(v175, v176, &v465);

          *(v161 + 34) = v177;
          *(v161 + 42) = 2082;
          v178 = v443;
          LOBYTE(v464) = *(v443 + v174[8]);
          sub_29DA23DD8(0, &qword_2A1A2CB78, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
          v179 = sub_29DA34894();
          v181 = v180;
          sub_29DA23BC0(v178, type metadata accessor for HighlightAlertState);
          v182 = sub_29D9EBB44(v179, v181, &v465);

          *(v161 + 44) = v182;
          *(v161 + 52) = 2082;
          v150 = v463;
          sub_29DA31E50(v155 + v174[5], v155 + v174[6], v417);
          v183 = sub_29DA34894();
          v185 = v184;
          sub_29DA23BC0(v155, type metadata accessor for HighlightAlertState);
          v186 = sub_29D9EBB44(v183, v185, &v465);

          *(v161 + 54) = v186;
          _os_log_impl(&dword_29D9BB000, v157, v418, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s. Updating feed item properties to alert state values for acknowledged: %{public}s, dismissed: %{public}s, date interval: %{public}s", v161, 0x3Eu);
          v187 = v419;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v187, -1, -1);
          MEMORY[0x29ED6E4C0](v161, -1, -1);

          v443 = *(v462 + 1);
          (v443)(v451, v461);
        }

        else
        {

          sub_29DA23BC0(v155, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v443, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v442, type metadata accessor for HighlightAlertState);
          v436 = *(v454 + 8);
          (v436)(v153, v154);
          v443 = *(v462 + 1);
          (v443)(v151, v461);
          v173 = v458;
        }

        v274 = v426;
        v275 = v449;
        sub_29DA1A1D4(v173, v150, v449);
        v276 = v424;
        sub_29DA22690(v275, v424, &qword_2A1A2D308, sub_29DA22118);
        sub_29DA22118();
        v278 = v277;
        v279 = *(*(v277 - 8) + 48);
        if (v279(v276, 1, v277) == 1)
        {
          sub_29DA243E8(v276, &qword_2A1A2D308, sub_29DA22118);
          v280 = 2;
        }

        else
        {
          v296 = *(v278 + 48);
          v280 = sub_29DA33904();
          (*(v445 + 8))(v276, v446);
          sub_29DA23BC0(v276 + v296, type metadata accessor for HighlightAlert);
        }

        v297 = v456;
        v298 = v452;
        v299 = v427;
        v300 = v425;
        sub_29DA22690(v449, v425, &qword_2A1A2D308, sub_29DA22118);
        if (v279(v300, 1, v278) == 1)
        {
          sub_29DA243E8(v300, &qword_2A1A2D308, sub_29DA22118);
          v301 = v454;
          v302 = v435;
          (*(v454 + 56))(v435, 1, 1, v298);
        }

        else
        {
          v303 = v300;
          v304 = v300 + *(v278 + 48);
          v305 = type metadata accessor for HighlightAlert(0);
          v306 = v410;
          sub_29DA23890(v304 + *(v305 + 20), v410, type metadata accessor for HighlightAlertSampleInfo);
          sub_29DA23BC0(v304, type metadata accessor for HighlightAlert);
          sub_29D9CC410();
          v307 = sub_29DA34774();
          sub_29DA23BC0(v306, type metadata accessor for HighlightAlertSampleInfo);
          v308 = [v307 UUID];

          v302 = v435;
          sub_29DA33744();

          v301 = v454;
          (*(v454 + 56))(v302, 0, 1, v298);
          (*(v445 + 8))(v303, v446);
        }

        v309 = v439;
        LODWORD(v451) = v297[v459[8]];
        if (v280 != 2)
        {
          sub_29DA22690(v302, v274, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
          if ((*(v301 + 48))(v274, 1, v298) == 1)
          {
            sub_29DA243E8(v274, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
          }

          else
          {
            (*(v301 + 32))(v299, v274, v298);
            if (sub_29DA33734() & 1) != 0 && (v280)
            {
              if (v451 == 2 || (v451 & 1) == 0)
              {
                sub_29DA34614();
                v388 = v408;
                sub_29DA23890(v297, v408, type metadata accessor for HighlightAlertState);
                v389 = v457;
                v390 = v463;

                v391 = sub_29DA34634();
                v392 = sub_29DA34B94();

                if (os_log_type_enabled(v391, v392))
                {
                  v393 = swift_slowAlloc();
                  v451 = swift_slowAlloc();
                  v465 = v451;
                  *v393 = 136446723;
                  v394 = [v389 description];
                  LODWORD(v442) = v392;
                  v395 = v394;
                  v396 = sub_29DA34854();
                  v398 = v397;

                  v399 = sub_29D9EBB44(v396, v398, &v465);

                  *(v393 + 4) = v399;
                  *(v393 + 12) = 2081;
                  sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
                  v298 = v452;
                  v400 = sub_29DA350F4();
                  v402 = v401;
                  sub_29DA23BC0(v388, type metadata accessor for HighlightAlertState);
                  v403 = sub_29D9EBB44(v400, v402, &v465);
                  v309 = v439;

                  *(v393 + 14) = v403;
                  *(v393 + 22) = 2081;
                  *(v393 + 24) = sub_29D9EBB44(v458, v390, &v465);
                  _os_log_impl(&dword_29D9BB000, v391, v442, "%{public}s: existing feed item with sample (%{private}s) for %{private}s is marked as hideInDiscover but corresponding alert state is not dismissed!", v393, 0x20u);
                  v404 = v451;
                  swift_arrayDestroy();
                  MEMORY[0x29ED6E4C0](v404, -1, -1);
                  MEMORY[0x29ED6E4C0](v393, -1, -1);

                  (v443)(v409, v461);
                  v405 = v299;
                }

                else
                {

                  sub_29DA23BC0(v388, type metadata accessor for HighlightAlertState);
                  (v443)(v409, v461);
                  v405 = v299;
                  v298 = v452;
                }

                (v436)(v405, v298);
                v406 = v448;
                v302 = v435;
                sub_29DA23890(v297, v448, type metadata accessor for HighlightAlertState);
                v407 = v459[8];
                LODWORD(v451) = 1;
                *(v406 + v407) = 1;
                v324 = v438;
                sub_29DA23828(v406, v438, type metadata accessor for HighlightAlertState);
                v323 = 0;
                goto LABEL_56;
              }

              (v436)(v299, v298);
              v323 = 1;
              LODWORD(v451) = 1;
LABEL_55:
              v324 = v438;
LABEL_56:
              v325 = v450;
              v326 = v459;
              (*(v450 + 56))(v324, v323, 1, v459);
              sub_29DA243E8(v302, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
              sub_29DA23890(v297, v444, type metadata accessor for HighlightAlertState);
              v327 = v428;
              sub_29DA22690(v324, v428, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
              if ((*(v325 + 48))(v327, 1, v326) == 1)
              {
                sub_29DA243E8(v327, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
                v328 = v444;
              }

              else
              {
                v329 = v327;
                v330 = v437;
                sub_29DA23828(v329, v437, type metadata accessor for HighlightAlertState);
                sub_29DA34614();
                v331 = v411;
                v420(v411, v455, v298);
                sub_29DA23890(v330, v309, type metadata accessor for HighlightAlertState);
                v332 = v415;
                sub_29DA23890(v330, v415, type metadata accessor for HighlightAlertState);
                v333 = v416;
                sub_29DA23890(v330, v416, type metadata accessor for HighlightAlertState);
                v334 = v457;

                v335 = sub_29DA34634();
                v336 = sub_29DA34BA4();

                if (os_log_type_enabled(v335, v336))
                {
                  v337 = swift_slowAlloc();
                  v455 = swift_slowAlloc();
                  v465 = v455;
                  *v337 = 136447491;
                  v338 = [v334 description];
                  LODWORD(v454) = v336;
                  v339 = v338;
                  v340 = v331;
                  v341 = sub_29DA34854();
                  v343 = v342;

                  v344 = sub_29D9EBB44(v341, v343, &v465);

                  *(v337 + 4) = v344;
                  *(v337 + 12) = 2081;
                  sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
                  v345 = sub_29DA350F4();
                  v347 = v346;
                  (v436)(v340, v298);
                  v348 = sub_29D9EBB44(v345, v347, &v465);

                  *(v337 + 14) = v348;
                  *(v337 + 22) = 2081;
                  *(v337 + 24) = sub_29D9EBB44(v458, v463, &v465);
                  *(v337 + 32) = 2082;
                  v349 = v459;
                  if (*(v439 + v459[7]))
                  {
                    v350 = 1702195828;
                  }

                  else
                  {
                    v350 = 0x65736C6166;
                  }

                  if (*(v439 + v459[7]))
                  {
                    v351 = 0xE400000000000000;
                  }

                  else
                  {
                    v351 = 0xE500000000000000;
                  }

                  sub_29DA23BC0(v439, type metadata accessor for HighlightAlertState);
                  v352 = sub_29D9EBB44(v350, v351, &v465);

                  *(v337 + 34) = v352;
                  *(v337 + 42) = 2082;
                  v353 = v415;
                  LOBYTE(v464) = *(v415 + v349[8]);
                  sub_29DA23DD8(0, &qword_2A1A2CB78, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
                  v354 = sub_29DA34894();
                  v356 = v355;
                  sub_29DA23BC0(v353, type metadata accessor for HighlightAlertState);
                  v357 = sub_29D9EBB44(v354, v356, &v465);

                  *(v337 + 44) = v357;
                  *(v337 + 52) = 2082;
                  v358 = v416;
                  sub_29DA31E50(v416 + v349[5], v416 + v349[6], v417);
                  v359 = sub_29DA34894();
                  v361 = v360;
                  sub_29DA23BC0(v358, type metadata accessor for HighlightAlertState);
                  v362 = sub_29D9EBB44(v359, v361, &v465);
                  v363 = v463;

                  *(v337 + 54) = v362;
                  _os_log_impl(&dword_29D9BB000, v335, v454, "%{public}s: modified alert state for existing feed item with sample (%{private}s). Updating feed item %{private}s properties to modified alert state values for acknowledged: %{public}s, dismissed: %{public}s, date interval: %{public}s", v337, 0x3Eu);
                  v364 = v455;
                  swift_arrayDestroy();
                  MEMORY[0x29ED6E4C0](v364, -1, -1);
                  MEMORY[0x29ED6E4C0](v337, -1, -1);

                  (*(v462 + 1))(v440, v461);
                }

                else
                {

                  sub_29DA23BC0(v333, type metadata accessor for HighlightAlertState);
                  sub_29DA23BC0(v332, type metadata accessor for HighlightAlertState);
                  sub_29DA23BC0(v439, type metadata accessor for HighlightAlertState);
                  (v436)(v331, v298);
                  (v443)(v440, v461);
                  v363 = v463;
                }

                sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
                swift_getKeyPath();
                swift_getKeyPath();
                v464 = v334;
                v365 = v334;
                sub_29DA33B84();

                v366 = v465;
                v367 = swift_allocObject();
                v462 = v367;
                swift_unknownObjectWeakInit();
                v368 = swift_allocObject();
                v368[2] = v367;
                v369 = v458;
                v368[3] = v458;
                v368[4] = v363;
                v368[5] = 0;
                v368[6] = 0;
                v368[7] = 0xD000000000000019;
                v368[8] = 0x800000029DA37D70;
                v370 = sub_29DA34A34();
                (*(*(v370 - 8) + 56))(v453, 1, 1, v370);
                v371 = v448;
                sub_29DA23890(v437, v448, type metadata accessor for HighlightAlertState);
                v372 = (*(v450 + 80) + 40) & ~*(v450 + 80);
                v373 = (v49 + v372 + 7) & 0xFFFFFFFFFFFFFFF8;
                v374 = swift_allocObject();
                v374[2] = 0;
                v374[3] = 0;
                v374[4] = v366;
                sub_29DA23828(v371, v374 + v372, type metadata accessor for HighlightAlertState);
                v375 = (v374 + v373);
                *v375 = v369;
                v375[1] = v363;
                v376 = (v374 + ((v373 + 23) & 0xFFFFFFFFFFFFFFF8));
                *v376 = sub_29DA24564;
                v376[1] = v368;
                swift_bridgeObjectRetain_n();

                sub_29D9ED414(0, 0, v453, &unk_29DA3BA40, v374);

                v328 = v444;
                sub_29DA23BC0(v444, type metadata accessor for HighlightAlertState);

                sub_29DA23828(v437, v328, type metadata accessor for HighlightAlertState);
                v297 = v456;
                v324 = v438;
              }

              v377 = v445;
              v378 = v434;
              v379 = v446;
              (*(v445 + 16))(v434, v447, v446);
              v380 = v459;
              if (*(v328 + v459[7]))
              {
                v381 = MEMORY[0x29EDC3720];
              }

              else
              {
                v381 = MEMORY[0x29EDC3738];
              }

              (*(v431 + 104))(v430, *v381, v432);
              sub_29DA338F4();
              v382 = v328 + v380[5];
              v383 = v328 + v380[6];
              v384 = v433;
              sub_29DA31E50(v382, v383, v433);
              (*(v429 + 56))(v384, 0, 1, v441);
              sub_29DA33944();
              v385 = sub_29DA33914();
              v386 = v457;
              v387 = *&v457[qword_2A1A2D5A0];
              MEMORY[0x2A1C7C4A8](v385);
              *(&v408 - 2) = v378;

              sub_29DA33B54();

              sub_29DA23BC0(v328, type metadata accessor for HighlightAlertState);
              sub_29DA243E8(v324, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
              sub_29DA243E8(v449, &qword_2A1A2D308, sub_29DA22118);
              sub_29DA23BC0(v297, type metadata accessor for HighlightAlertState);
              (*(v377 + 8))(v378, v379);
              goto LABEL_72;
            }

            (v436)(v299, v298);
          }
        }

        v323 = 1;
        goto LABEL_55;
      }

      v225 = v102;
      sub_29DA34614();
      v226 = v414;
      v227 = v452;
      (*v149)(v414, v455, v452);
      v228 = v412;
      sub_29DA23890(v142, v412, type metadata accessor for HighlightAlertState);
      v229 = v113;

      v230 = sub_29DA34634();
      v231 = sub_29DA34BA4();

      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v457 = v225;
        v233 = v232;
        v234 = swift_slowAlloc();
        v465 = v234;
        *v233 = 136446979;
        v235 = [v229 description];
        LODWORD(v455) = v231;
        v236 = v235;
        v237 = sub_29DA34854();
        v239 = v238;

        v240 = sub_29D9EBB44(v237, v239, &v465);

        *(v233 + 4) = v240;
        *(v233 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
        v241 = sub_29DA350F4();
        v243 = v242;
        (*(v454 + 8))(v226, v227);
        v244 = sub_29D9EBB44(v241, v243, &v465);

        *(v233 + 14) = v244;
        *(v233 + 22) = 2081;
        v150 = v463;
        v245 = v458;
        *(v233 + 24) = sub_29D9EBB44(v458, v463, &v465);
        *(v233 + 32) = 2082;
        v246 = v228 + v459[6];
        v247 = sub_29DA33654();
        v249 = v248;
        sub_29DA23BC0(v228, type metadata accessor for HighlightAlertState);
        v250 = sub_29D9EBB44(v247, v249, &v465);
        v142 = v456;

        *(v233 + 34) = v250;
        _os_log_impl(&dword_29D9BB000, v230, v455, "%{public}s: found matching sample (%{private}s) that is expired for %{private}s with alert state expiration date: %{public}s. Marking feed item for deletion.", v233, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v234, -1, -1);
        MEMORY[0x29ED6E4C0](v233, -1, -1);

        v251 = (*(v462 + 1))(v457, v461);
      }

      else
      {

        sub_29DA23BC0(v228, type metadata accessor for HighlightAlertState);
        (*(v454 + 8))(v226, v227);
        v251 = (*(v462 + 1))(v225, v461);
        v245 = v458;
      }
    }

    else
    {
      v150 = v463;
      if (v148 != -1)
      {
        v202 = v436;
        sub_29DA34614();
        v203 = v420;
        sub_29DA23890(v142, v420, type metadata accessor for HighlightAlertState);
        v204 = v421;
        sub_29DA23890(v451, v421, type metadata accessor for HighlightAlertState);
        v205 = v113;

        v206 = sub_29DA34634();
        v207 = sub_29DA34BA4();

        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          v457 = swift_slowAlloc();
          v465 = v457;
          *v208 = 136446979;
          v209 = [v205 description];
          v210 = sub_29DA34854();
          v212 = v211;

          v213 = sub_29D9EBB44(v210, v212, &v465);

          *(v208 + 4) = v213;
          *(v208 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
          v214 = sub_29DA350F4();
          v216 = v215;
          sub_29DA23BC0(v203, type metadata accessor for HighlightAlertState);
          v217 = sub_29D9EBB44(v214, v216, &v465);

          *(v208 + 14) = v217;
          *(v208 + 22) = 2081;
          v218 = v458;
          *(v208 + 24) = sub_29D9EBB44(v458, v463, &v465);
          *(v208 + 32) = 2081;
          sub_29DA23890(v204, v448, type metadata accessor for HighlightAlertState);
          v219 = sub_29DA34894();
          v221 = v220;
          v150 = v463;
          sub_29DA23BC0(v204, type metadata accessor for HighlightAlertState);
          v222 = sub_29D9EBB44(v219, v221, &v465);

          *(v208 + 34) = v222;
          _os_log_impl(&dword_29D9BB000, v206, v207, "%{public}s: found older sample (%{private}s) in alert state for %{private}s. Creating new feed item and persisting new alert state values: %{private}s", v208, 0x2Au);
          v223 = v457;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v223, -1, -1);
          MEMORY[0x29ED6E4C0](v208, -1, -1);

          v224 = (*(v462 + 1))(v436, v461);
        }

        else
        {

          sub_29DA23BC0(v204, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v203, type metadata accessor for HighlightAlertState);
          v224 = (*(v462 + 1))(v202, v461);
          v218 = v458;
        }

        v281 = *&v205[qword_2A1A2D5A0];
        MEMORY[0x2A1C7C4A8](v224);
        *(&v408 - 2) = v447;

        sub_29DA33B54();

        sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
        swift_getKeyPath();
        swift_getKeyPath();
        v464 = v205;
        v282 = v205;
        sub_29DA33B84();

        v462 = v282;

        v283 = v465;
        v284 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v285 = swift_allocObject();
        *(v285 + 16) = v284;
        *(v285 + 24) = v218;
        *(v285 + 32) = v150;
        v286 = sub_29DA34A34();
        *(v285 + 40) = 0u;
        *(v285 + 56) = 0u;
        (*(*(v286 - 8) + 56))(v453, 1, 1, v286);
        v287 = v448;
        sub_29DA23890(v451, v448, type metadata accessor for HighlightAlertState);
        v288 = (*(v450 + 80) + 40) & ~*(v450 + 80);
        v289 = v49 + v288 + 7;
        v290 = v218;
        v291 = v289 & 0xFFFFFFFFFFFFFFF8;
        v292 = ((v289 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v293 = swift_allocObject();
        v293[2] = 0;
        v293[3] = 0;
        v293[4] = v283;
        sub_29DA23828(v287, v293 + v288, type metadata accessor for HighlightAlertState);
        v294 = (v293 + v291);
        *v294 = v290;
        v294[1] = v150;
        v295 = (v293 + v292);
        *v295 = sub_29DA224F8;
        v295[1] = v285;
        swift_bridgeObjectRetain_n();

        sub_29D9ED414(0, 0, v453, &unk_29DA3AE38, v293);

        sub_29DA23BC0(v456, type metadata accessor for HighlightAlertState);

        goto LABEL_72;
      }

      v252 = v418;
      sub_29DA34614();
      v253 = v413;
      sub_29DA23890(v142, v413, type metadata accessor for HighlightAlertState);
      v254 = v419;
      sub_29DA23890(v142, v419, type metadata accessor for HighlightAlertState);
      v229 = v113;

      v255 = sub_29DA34634();
      v256 = sub_29DA34BA4();

      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        v457 = swift_slowAlloc();
        v465 = v457;
        *v257 = 136446979;
        v258 = [v229 description];
        v259 = sub_29DA34854();
        v261 = v260;

        v262 = sub_29D9EBB44(v259, v261, &v465);

        *(v257 + 4) = v262;
        *(v257 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08]);
        v263 = sub_29DA350F4();
        v265 = v264;
        sub_29DA23BC0(v253, type metadata accessor for HighlightAlertState);
        v266 = sub_29D9EBB44(v263, v265, &v465);

        *(v257 + 14) = v266;
        *(v257 + 22) = 2081;
        v150 = v463;
        v245 = v458;
        *(v257 + 24) = sub_29D9EBB44(v458, v463, &v465);
        *(v257 + 32) = 2082;
        v267 = v419;
        v268 = &v419[v459[5]];
        v269 = sub_29DA33654();
        v271 = v270;
        v142 = v456;
        sub_29DA23BC0(v267, type metadata accessor for HighlightAlertState);
        v272 = sub_29D9EBB44(v269, v271, &v465);

        *(v257 + 34) = v272;
        _os_log_impl(&dword_29D9BB000, v255, v256, "%{public}s: found newer sample (%{private}s) in alert state for %{private}s with event date: %{public}s. Marking feed item for deletion.", v257, 0x2Au);
        v273 = v457;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v273, -1, -1);
        MEMORY[0x29ED6E4C0](v257, -1, -1);

        v251 = (*(v462 + 1))(v418, v461);
      }

      else
      {

        sub_29DA23BC0(v254, type metadata accessor for HighlightAlertState);
        sub_29DA23BC0(v253, type metadata accessor for HighlightAlertState);
        v251 = (*(v462 + 1))(v252, v461);
        v245 = v458;
      }
    }

    v322 = *&v229[qword_2A1A2D578];
    MEMORY[0x2A1C7C4A8](v251);
    *(&v408 - 2) = v245;
    *(&v408 - 1) = v150;

    sub_29DA33B54();

    sub_29DA23BC0(v142, type metadata accessor for HighlightAlertState);
    goto LABEL_72;
  }

  v465 = *v111;
  v114 = v465;
  v115 = v465;
  sub_29D9FA590(0, &qword_2A1A2D3E8);
  if (swift_dynamicCast())
  {
    v116 = v463;
    if (!v464)
    {
      sub_29DA34614();
      sub_29DA23890(v451, v82, type metadata accessor for HighlightAlertState);
      v117 = v113;

      v118 = sub_29DA34634();
      v119 = sub_29DA34BA4();

      v120 = os_log_type_enabled(v118, v119);
      v457 = v114;
      if (v120)
      {
        v121 = swift_slowAlloc();
        v456 = swift_slowAlloc();
        v465 = v456;
        *v121 = 136446723;
        v122 = [v117 description];
        v123 = sub_29DA34854();
        LODWORD(v455) = v119;
        v125 = v124;

        v116 = v463;
        v126 = sub_29D9EBB44(v123, v125, &v465);

        *(v121 + 4) = v126;
        *(v121 + 12) = 2081;
        v127 = v458;
        *(v121 + 14) = sub_29D9EBB44(v458, v116, &v465);
        *(v121 + 22) = 2081;
        sub_29DA23890(v82, v448, type metadata accessor for HighlightAlertState);
        v128 = sub_29DA34894();
        v130 = v129;
        sub_29DA23BC0(v82, type metadata accessor for HighlightAlertState);
        v131 = sub_29D9EBB44(v128, v130, &v465);

        *(v121 + 24) = v131;
        _os_log_impl(&dword_29D9BB000, v118, v455, "%{public}s: did not find alert state for %{private}s. Submitting feed item and persisting new alert state: %{private}s", v121, 0x20u);
        v132 = v456;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v132, -1, -1);
        MEMORY[0x29ED6E4C0](v121, -1, -1);

        v133 = (*(v462 + 1))(v107, v461);
      }

      else
      {

        sub_29DA23BC0(v82, type metadata accessor for HighlightAlertState);
        v133 = (*(v462 + 1))(v107, v461);
        v127 = v458;
      }

      v310 = *&v117[qword_2A1A2D5A0];
      MEMORY[0x2A1C7C4A8](v133);
      *(&v408 - 2) = v447;

      sub_29DA33B54();

      sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
      swift_getKeyPath();
      swift_getKeyPath();
      v464 = v117;
      v311 = v117;
      sub_29DA33B84();
      v462 = v311;

      v461 = v465;
      v312 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v313 = swift_allocObject();
      *(v313 + 16) = v312;
      *(v313 + 24) = v127;
      *(v313 + 32) = v116;
      v314 = sub_29DA34A34();
      *(v313 + 40) = 0u;
      *(v313 + 56) = 0u;
      v315 = v453;
      (*(*(v314 - 8) + 56))(v453, 1, 1, v314);
      v316 = v448;
      sub_29DA23890(v451, v448, type metadata accessor for HighlightAlertState);
      v317 = (*(v450 + 80) + 40) & ~*(v450 + 80);
      v318 = (v49 + v317 + 7) & 0xFFFFFFFFFFFFFFF8;
      v319 = swift_allocObject();
      v319[2] = 0;
      v319[3] = 0;
      v319[4] = v461;
      sub_29DA23828(v316, v319 + v317, type metadata accessor for HighlightAlertState);
      v320 = (v319 + v318);
      *v320 = v458;
      v320[1] = v116;
      v321 = (v319 + ((v318 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v321 = sub_29DA24564;
      v321[1] = v313;
      swift_bridgeObjectRetain_n();

      sub_29D9ED414(0, 0, v315, &unk_29DA3BA48, v319);

      goto LABEL_72;
    }
  }

  else
  {
    v116 = v463;
  }

  sub_29DA34614();
  v188 = v113;

  v189 = sub_29DA34634();
  v190 = sub_29DA34B84();

  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v465 = v192;
    *v191 = 136446467;
    v193 = [v188 description];
    v194 = sub_29DA34854();
    v457 = v114;
    v195 = v116;
    v196 = v194;
    v198 = v197;

    v199 = sub_29D9EBB44(v196, v198, &v465);

    *(v191 + 4) = v199;
    *(v191 + 12) = 2081;
    v200 = v195;
    v114 = v457;
    *(v191 + 14) = sub_29D9EBB44(v458, v200, &v465);
    _os_log_impl(&dword_29D9BB000, v189, v190, "%{public}s: error while fetching alert state for %{private}s. Ignoring result and relying on the next generation pass.", v191, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v192, -1, -1);
    MEMORY[0x29ED6E4C0](v191, -1, -1);
  }

  (*(v462 + 1))(v105, v461);
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v464 = v188;
  v201 = v188;
  sub_29DA33B84();

LABEL_72:
  dispatch_group_leave(v460);
}

uint64_t sub_29DA19A94(void **a1, uint64_t a2)
{
  v4 = sub_29DA33964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_29D9D5748(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_29D9D5748(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}

void sub_29DA19C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29DA34644();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isFinished])
  {
    sub_29DA34614();
    v11 = v3;
    v12 = sub_29DA34634();
    v13 = sub_29DA34B84();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446466;
      v16 = [v11 description];
      v17 = sub_29DA34854();
      v19 = v18;

      v20 = sub_29D9EBB44(v17, v19, aBlock);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D9EBB44(0xD00000000000001CLL, 0x800000029DA37CC0, aBlock);
      _os_log_impl(&dword_29D9BB000, v12, v13, "%{public}s: operation is marked finished; aborting call to %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v15, -1, -1);
      MEMORY[0x29ED6E4C0](v14, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v21 = sub_29DA34B34();
    v22 = *&v3[qword_2A1A2D578];
    MEMORY[0x2A1C7C4A8](v21);
    v30[-2] = a1;
    v30[-1] = a2;

    sub_29DA33B54();

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = 0;
    aBlock[4] = sub_29DA221A8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DA05EEC;
    aBlock[3] = &unk_2A2461E98;
    v25 = _Block_copy(aBlock);
    v26 = objc_opt_self();

    v27 = [v26 blockOperationWithBlock_];
    _Block_release(v25);

    sub_29DA1E70C();
    swift_getKeyPath();
    swift_getKeyPath();
    v30[1] = v3;
    v28 = v3;
    sub_29DA33B84();

    v29 = aBlock[0];
    [aBlock[0] addOperation_];
  }
}

uint64_t sub_29DA1A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_29D9F8C54(&v6, a2, a3);
}

uint64_t sub_29DA1A0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29DA336F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = *(v5 + 16);
  v10(v13 - v11, a2, v4);
  v10(v9, a1, v4);
  return sub_29DA33504();
}

uint64_t sub_29DA1A1D4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v136 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v133 = &v125 - v8;
  v132 = type metadata accessor for HighlightAlert(0);
  v130 = *(v132 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v132);
  v129 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], v5);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v125 - v13;
  v15 = sub_29DA34644();
  v138 = *(v15 - 8);
  v139 = v15;
  v16 = *(v138 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v125 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v125 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v125 - v26;
  v140 = sub_29DA33964();
  v28 = *(v140 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v140);
  v134 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v34 = &v125 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32);
  v37 = &v125 - v36;
  MEMORY[0x2A1C7C4A8](v35);
  v135 = &v125 - v38;
  v137 = v3;
  v39 = *&v3[qword_2A1A2D5A8];

  sub_29DA33B44();

  v40 = v142[0];
  v41 = *(v142[0] + 16);
  v131 = a1;
  if (v41 && (v42 = sub_29DA1EDE0(a1, v141), (v43 & 1) != 0))
  {
    (*(v28 + 16))(v37, *(v40 + 56) + *(v28 + 72) * v42, v140);

    sub_29DA34614();
    v44 = v137;

    v45 = sub_29DA34634();
    v46 = sub_29DA34BA4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v142[0] = v128;
      *v47 = 136446467;
      v48 = [v44 description];
      v49 = sub_29DA34854();
      LODWORD(v127) = v46;
      v50 = v49;
      v52 = v51;

      v53 = sub_29D9EBB44(v50, v52, v142);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_29D9EBB44(v131, v141, v142);
      _os_log_impl(&dword_29D9BB000, v45, v127, "%{public}s: found cached alert feed item for identifier %{private}s", v47, 0x16u);
      v54 = v128;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v54, -1, -1);
      MEMORY[0x29ED6E4C0](v47, -1, -1);
    }

    v141 = *(v138 + 8);
    v141(v27, v139);
    v56 = v133;
    v55 = v134;
    v57 = v135;
    v58 = v140;
    v128 = *(v28 + 32);
    v128(v135, v37);
    v59 = v132;
  }

  else
  {

    v60 = v137;
    v61 = *&v137[qword_2A1A2D580];

    sub_29DA33B44();

    sub_29D9C706C(v142, v142[3]);
    sub_29DA339B4();
    v62 = v140;
    if ((*(v28 + 48))(v14, 1, v140) == 1)
    {
      v63 = v60;
      v64 = v139;
      sub_29DA243E8(v14, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      sub_29D9C7968(v142);
      sub_29DA34614();
      v65 = v63;

      v66 = sub_29DA34634();
      v67 = sub_29DA34B84();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v142[0] = v69;
        *v68 = 136446467;
        v70 = [v65 description];
        v71 = sub_29DA34854();
        v73 = v72;

        v74 = sub_29D9EBB44(v71, v73, v142);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2081;
        *(v68 + 14) = sub_29D9EBB44(v131, v141, v142);
        _os_log_impl(&dword_29D9BB000, v66, v67, "%{public}s: requested to acknowledge non-existent feed item with identifier %{private}s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v69, -1, -1);
        MEMORY[0x29ED6E4C0](v68, -1, -1);
      }

      (*(v138 + 8))(v25, v64);
      goto LABEL_19;
    }

    v127 = v28;
    v128 = *(v28 + 32);
    (v128)(v34, v14, v62);
    sub_29D9C7968(v142);
    sub_29DA34614();
    v75 = v60;

    v76 = sub_29DA34634();
    v77 = sub_29DA34BA4();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v139;
    if (v78)
    {
      v80 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v142[0] = v126;
      *v80 = 136446467;
      v81 = [v75 description];
      v82 = sub_29DA34854();
      v83 = v19;
      v85 = v84;

      v86 = sub_29D9EBB44(v82, v85, v142);
      v19 = v83;

      *(v80 + 4) = v86;
      *(v80 + 12) = 2081;
      *(v80 + 14) = sub_29D9EBB44(v131, v141, v142);
      _os_log_impl(&dword_29D9BB000, v76, v77, "%{public}s: found previous alert feed item for identifier %{private}s", v80, 0x16u);
      v87 = v126;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v87, -1, -1);
      MEMORY[0x29ED6E4C0](v80, -1, -1);

      v88 = v139;
      v89 = *(v138 + 8);
      v90 = v22;
    }

    else
    {

      v89 = *(v138 + 8);
      v90 = v22;
      v88 = v79;
    }

    v141 = v89;
    v89(v90, v88);
    v59 = v132;
    v56 = v133;
    v57 = v135;
    v58 = v140;
    v128(v135, v34);
    v28 = v127;
    v55 = v134;
  }

  v91 = sub_29DA33954();
  if (v92 >> 60 != 15)
  {
    v93 = v91;
    v94 = v92;
    v95 = sub_29DA33474();
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();
    sub_29DA33464();
    sub_29DA243A0(&qword_2A1A2DC88, type metadata accessor for HighlightAlert);
    sub_29DA33454();
    sub_29D9CFBBC(v93, v94);

    (*(v130 + 56))(v56, 0, 1, v59);
    v119 = v129;
    sub_29DA23828(v56, v129, type metadata accessor for HighlightAlert);
    sub_29DA22118();
    v121 = v120;
    v122 = *(v120 + 48);
    v123 = v136;
    (v128)(v136, v57, v58);
    sub_29DA23828(v119, v123 + v122, type metadata accessor for HighlightAlert);
    return (*(*(v121 - 8) + 56))(v123, 0, 1, v121);
  }

  sub_29DA34614();
  (*(v28 + 16))(v55, v57, v58);
  v98 = v137;
  v99 = sub_29DA34634();
  v100 = sub_29DA34B84();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = v28;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v142[0] = v103;
    *v102 = 136446467;
    v104 = [v98 description];
    v105 = v19;
    v106 = sub_29DA34854();
    v108 = v107;

    v109 = sub_29D9EBB44(v106, v108, v142);

    *(v102 + 4) = v109;
    *(v102 + 12) = 2081;
    v110 = sub_29DA33924();
    v112 = v111;
    v113 = *(v101 + 8);
    v114 = v55;
    v115 = v140;
    v113(v114, v140);
    v116 = sub_29D9EBB44(v110, v112, v142);

    *(v102 + 14) = v116;
    _os_log_impl(&dword_29D9BB000, v99, v100, "%{public}s: unable to decode user data for feed item with identifier %{private}s", v102, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v103, -1, -1);
    MEMORY[0x29ED6E4C0](v102, -1, -1);

    v141(v105, v139);
    v113(v135, v115);
  }

  else
  {

    v117 = *(v28 + 8);
    v117(v55, v58);
    v141(v19, v139);
    v117(v57, v58);
  }

LABEL_19:
  sub_29DA22118();
  return (*(*(v118 - 8) + 56))(v136, 1, 1, v118);
}

uint64_t sub_29DA1AF88@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v109 = a2;
  v112 = a4;
  v105 = sub_29DA34644();
  v104 = *(v105 - 8);
  v6 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v105);
  v103 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v97 = v88 - v11;
  v92 = sub_29DA33AB4();
  v96 = *(v92 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v92);
  v101 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29DA33554();
  v100 = *(v102 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v102);
  v108 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29DA336F4();
  v99 = *(v107 - 8);
  v16 = *(v99 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v107);
  v98 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v106 = v88 - v19;
  sub_29DA1BF9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v94 = v88 - v22;
  v90 = sub_29DA33864();
  v89 = *(v90 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v90);
  v91 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29DA33964();
  v110 = *(v111 - 8);
  v25 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v111);
  v113 = v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HighlightAlertSampleInfo(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v30 = v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for HighlightAlert(0);
  v32 = *(*(v31 - 1) + 64);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  MEMORY[0x2A1C7C4A8](v33);
  v35 = v88 - v34;
  v95 = a1;
  sub_29DA23890(a1, v30, type metadata accessor for HighlightAlertSampleInfo);
  v36 = *a3;
  v37 = *(a3 + 8);
  if (*(a3 + 16))
  {
    v38 = 0;
  }

  else
  {
    v38 = 0x7961446E65766553;
  }

  if (*(a3 + 16))
  {
    v39 = 0;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  v40 = *(a3 + 8);

  sub_29D9D5C44(v36, v37, v38, v39, v115);
  v41 = v115[4];
  v42 = v115[5];

  sub_29D9D6630(v115);
  v43 = v109;
  sub_29DA22690(v109, &v35[v31[8]], &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
  v44 = (a3 + *(type metadata accessor for HighlightAlertConfiguration(0) + 76));
  v46 = *v44;
  v45 = v44[1];

  sub_29DA336E4();
  v47 = v31[5];
  sub_29DA23828(v30, &v35[v47], type metadata accessor for HighlightAlertSampleInfo);
  v48 = &v35[v31[6]];
  *v48 = v41;
  v48[1] = v42;
  v49 = &v35[v31[7]];
  *v49 = v46;
  *(v49 + 1) = v45;
  v50 = sub_29DA334A4();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_29DA33494();
  sub_29DA243A0(&qword_2A1A2CD60, type metadata accessor for HighlightAlert);
  v53 = sub_29DA33484();
  v88[1] = v47;
  v54 = v53;
  v56 = v55;

  type metadata accessor for HighlightAlertsTileViewController();
  (*(v89 + 104))(v91, *MEMORY[0x29EDC3738], v90);

  sub_29D9E2040(v54, v56);
  sub_29DA338B4();
  v104 = v54;
  v103 = v56;
  sub_29DA338C4();
  sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DA3B8B0;
  sub_29D9CC410();
  v105 = v58;
  v59 = sub_29DA34774();
  v60 = [v59 sampleType];

  *(inited + 32) = v60;
  v61 = sub_29D9FA374(inited);
  swift_setDeallocating();
  v62 = *(inited + 16);
  swift_arrayDestroy();
  v114[10] = v61;
  v63 = v94;
  sub_29DA22690(v43, v94, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
  v64 = type metadata accessor for HighlightAlertDiagramInfo(0);
  if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
  {
    sub_29DA243E8(v63, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    v65 = v101;
    v66 = v108;
    v67 = v99;
    v68 = v106;
  }

  else
  {
    sub_29DA243A0(&qword_2A1A2D198, type metadata accessor for HighlightAlertDiagramInfo);
    v69 = sub_29DA34454();
    sub_29DA23BC0(v63, type metadata accessor for HighlightAlertDiagramInfo);
    v65 = v101;
    v66 = v108;
    v67 = v99;
    v68 = v106;
    if (v69)
    {
      sub_29D9F8C30(v114, v69);
    }
  }

  sub_29DA33934();
  v70 = sub_29DA34774();
  v71 = [v70 endDate];

  sub_29DA336C4();
  sub_29DA15FCC(v68, v66);
  v72 = v98;
  sub_29DA334F4();
  sub_29DA31E50(v68, v72, v65);
  v109 = *(v67 + 8);
  v109(v72, v107);
  v73 = v96;
  v74 = v97;
  v75 = v92;
  (*(v96 + 16))(v97, v65, v92);
  (*(v73 + 56))(v74, 0, 1, v75);
  sub_29DA33944();
  sub_29DA33914();
  sub_29DA33E94();
  v76 = sub_29DA34774();
  v77 = [v76 _creationDate];

  sub_29DA336C4();
  v78 = *(v93 + qword_2A1A2D580);

  sub_29DA33B44();

  sub_29D9C706C(v114, v114[3]);
  v79 = sub_29DA33984();
  sub_29DA33E84();

  v80 = v107;
  v81 = v109;
  v109(v72, v107);
  sub_29D9C7968(v114);
  v82 = v113;
  sub_29DA338D4();
  sub_29D9CFBD0(v104, v103);
  (*(v73 + 8))(v65, v75);
  (*(v100 + 8))(v108, v102);
  v81(v106, v80);
  sub_29DA23BC0(v35, type metadata accessor for HighlightAlert);
  v83 = v110;
  v84 = v112;
  v85 = v82;
  v86 = v111;
  (*(v110 + 32))(v112, v85, v111);
  return (*(v83 + 56))(v84, 0, 1, v86);
}

uint64_t sub_29DA1BE28()
{
  v1 = *(*v0 + qword_2A1A2D580);

  sub_29DA33B44();
}

uint64_t sub_29DA1BE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v13[-v6 - 8];
  sub_29D9FA5EC(a1, v13);
  v8 = sub_29DA336F4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_allocWithZone(type metadata accessor for HighlightAlertsFeedItemGenerator());
  v10 = sub_29DA064F8(v13, v7);
  result = sub_29D9C7968(a1);
  *a2 = v10;
  return result;
}

void sub_29DA1BF9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29DA1C000()
{
  result = qword_2A1A2DB30;
  if (!qword_2A1A2DB30)
  {
    sub_29DA1BF9C(255, &qword_2A1A2DB38, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB30);
  }

  return result;
}

uint64_t sub_29DA1C088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v29 = a1;
  v30 = a3;
  v3 = sub_29DA33794();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA337A4();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_29DA336F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v28 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v28 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v28 - v24;
  sub_29DA33784();
  (*(v4 + 104))(v7, *MEMORY[0x29EDB9CB8], v3);
  sub_29DA33774();
  (*(v4 + 8))(v7, v3);
  (*(v31 + 8))(v11, v32);
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v25, v15, v16);
    v27 = *(v17 + 16);
    v27(v23, v29, v16);
    v27(v28, v25, v16);
    sub_29DA33504();
    return (*(v17 + 8))(v25, v16);
  }

  return result;
}

uint64_t sub_29DA1C418(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char *a9, uint64_t a10)
{
  v125 = a8;
  v126 = a7;
  v141 = a6;
  v123 = a5;
  v120 = a4;
  v149 = a3;
  v11 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v133 = &v115 - v14;
  v130 = type metadata accessor for HighlightAlertState();
  v131 = *(v130 - 8);
  v15 = *(v131 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v130);
  v142 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v129 = &v115 - v19;
  v132 = v20;
  MEMORY[0x2A1C7C4A8](v18);
  v150 = &v115 - v21;
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], v11);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v134 = &v115 - v24;
  v124 = sub_29DA33864();
  v122 = *(v124 - 8);
  v25 = *(v122 + 64);
  MEMORY[0x2A1C7C4A8](v124);
  v121 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29DA33AB4();
  v147 = *(v27 - 8);
  v148 = v27;
  v28 = *(v147 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v146 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29DA336F4();
  v138 = *(v30 - 8);
  v139 = v30;
  v31 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], v11);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v37 = &v115 - v36;
  v38 = sub_29DA33554();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v145 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29DA33964();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42);
  v128 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v46;
  MEMORY[0x2A1C7C4A8](v45);
  v48 = &v115 - v47;
  v49 = sub_29DA34644();
  v143 = *(v49 - 8);
  v144 = v49;
  v50 = v143[8];
  v51 = MEMORY[0x2A1C7C4A8](v49);
  v140 = &v115 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v51);
  v54 = &v115 - v53;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v137 = a2;
    v115 = Strong;
    sub_29DA34B34();
    v135 = v43;
    v56 = *(v43 + 16);
    v136 = v42;
    v117 = v43 + 16;
    v116 = v56;
    v56(v48, v120, v42);
    sub_29DA22690(v123, v37, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
    v57 = *(v39 + 48);
    v58 = v57(v37, 1, v38);
    v119 = v38;
    v118 = v39;
    if (v58 == 1)
    {
      sub_29DA336E4();
      sub_29DA1C088(v141, v33, v145);
      (*(v138 + 8))(v33, v139);
      if (v57(v37, 1, v38) != 1)
      {
        sub_29DA243E8(v37, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
      }
    }

    else
    {
      (*(v39 + 32))(v145, v37, v38);
    }

    v123 = a10;
    v120 = a9;
    sub_29DA334F4();
    v63 = v146;
    v64 = v141;
    sub_29DA31E50(v141, v33, v146);
    v65 = v138;
    v66 = v33;
    v67 = v139;
    (*(v138 + 8))(v66, v139);
    (*(v122 + 104))(v121, *MEMORY[0x29EDC3720], v124);
    sub_29DA338F4();
    v68 = v147;
    v69 = v148;
    v70 = v134;
    (*(v147 + 16))(v134, v63, v148);
    (*(v68 + 56))(v70, 0, 1, v69);
    sub_29DA33944();
    v71 = v126;
    v134 = v48;
    sub_29DA33914();
    v72 = sub_29DA33754();
    v73 = v150;
    (*(*(v72 - 8) + 16))(v150, v125, v72);
    v74 = v130;
    (*(v65 + 16))(v73 + *(v130 + 20), v64, v67);
    v75 = v73 + v74[6];
    sub_29DA334F4();
    *(v73 + v74[7]) = 1;
    *(v73 + v74[8]) = v71;
    v76 = dispatch_group_create();
    dispatch_group_enter(v76);
    v77 = v140;
    sub_29DA34614();
    v78 = v129;
    sub_29DA23890(v73, v129, type metadata accessor for HighlightAlertState);
    v79 = v115;
    v80 = v149;

    v81 = sub_29DA34634();
    v82 = sub_29DA34BA4();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v152 = v139;
      *v83 = 136446723;
      v84 = [v79 description];
      v85 = sub_29DA34854();
      v141 = v76;
      v86 = v85;
      v88 = v87;

      v89 = sub_29D9EBB44(v86, v88, &v152);

      *(v83 + 4) = v89;
      *(v83 + 12) = 2081;
      v90 = v137;
      *(v83 + 14) = sub_29D9EBB44(v137, v80, &v152);
      *(v83 + 22) = 2081;
      sub_29DA23890(v78, v142, type metadata accessor for HighlightAlertState);
      v91 = sub_29DA34894();
      v93 = v92;
      sub_29DA23BC0(v78, type metadata accessor for HighlightAlertState);
      v94 = sub_29D9EBB44(v91, v93, &v152);
      v76 = v141;

      *(v83 + 24) = v94;
      _os_log_impl(&dword_29D9BB000, v81, v82, "%{public}s: persisting updated alert state for %{private}s: %{private}s", v83, 0x20u);
      v95 = v139;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v95, -1, -1);
      MEMORY[0x29ED6E4C0](v83, -1, -1);

      (v143[1])(v140, v144);
    }

    else
    {

      sub_29DA23BC0(v78, type metadata accessor for HighlightAlertState);
      (v143[1])(v77, v144);
      v90 = v137;
    }

    v96 = v135;
    v97 = v136;
    v98 = v128;
    v116(v128, v134, v136);
    v99 = (*(v96 + 80) + 48) & ~*(v96 + 80);
    v100 = swift_allocObject();
    *(v100 + 2) = v76;
    *(v100 + 3) = v79;
    *(v100 + 4) = v90;
    *(v100 + 5) = v80;
    (*(v96 + 32))(&v100[v99], v98, v97);
    sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
    swift_getKeyPath();
    swift_getKeyPath();
    v151 = v79;
    v101 = v79;

    v144 = v76;
    sub_29DA33B84();

    v143 = v101;

    v141 = v152;
    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v103 = swift_allocObject();
    v103[2] = v102;
    v103[3] = v90;
    v103[4] = v80;
    v103[5] = sub_29DA22CBC;
    v104 = v120;
    v103[6] = v100;
    v103[7] = v104;
    v103[8] = v123;
    v105 = sub_29DA34A34();
    v106 = v133;
    (*(*(v105 - 8) + 56))(v133, 1, 1, v105);
    v107 = v142;
    sub_29DA23890(v150, v142, type metadata accessor for HighlightAlertState);
    v108 = (*(v131 + 80) + 40) & ~*(v131 + 80);
    v109 = (v132 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    v110[2] = 0;
    v110[3] = 0;
    v110[4] = v141;
    sub_29DA23828(v107, v110 + v108, type metadata accessor for HighlightAlertState);
    v111 = (v110 + v109);
    *v111 = v137;
    v111[1] = v80;
    v112 = (v110 + ((v109 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v112 = sub_29DA24564;
    v112[1] = v103;

    swift_bridgeObjectRetain_n();

    sub_29D9ED414(0, 0, v106, &unk_29DA3BA60, v110);

    v113 = v144;
    sub_29DA34C04();
    v114 = v143;
    sub_29DA34B34();

    sub_29DA23BC0(v150, type metadata accessor for HighlightAlertState);
    (*(v147 + 8))(v146, v148);
    (*(v118 + 8))(v145, v119);
    return (*(v135 + 8))(v134, v136);
  }

  else
  {
    sub_29DA34614();
    v59 = sub_29DA34634();
    v60 = sub_29DA34B84();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_29D9BB000, v59, v60, "HighlightAlertFeedItemGenerator unexpectedly went away while alert state modification operation was in-flight", v61, 2u);
      MEMORY[0x29ED6E4C0](v61, -1, -1);
    }

    return (v143[1])(v54, v144);
  }
}

void sub_29DA1D3B0(char a1, NSObject *a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_29DA34644();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = *&a3[qword_2A1A2D5A0];
    MEMORY[0x2A1C7C4A8](v15);
    *(&v31 - 2) = a6;

    sub_29DA33B54();
  }

  else
  {
    sub_29DA34614();
    v19 = a3;

    v20 = sub_29DA34634();
    v21 = sub_29DA34B84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v22 = 136446467;
      v23 = [v19 description];
      v24 = sub_29DA34854();
      v32 = v21;
      v25 = a2;
      v26 = v24;
      v31 = a4;
      v28 = v27;

      v29 = sub_29D9EBB44(v26, v28, &v34);

      *(v22 + 4) = v29;
      a2 = v25;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_29D9EBB44(v31, a5, &v34);
      _os_log_impl(&dword_29D9BB000, v20, v32, "%{public}s: persisting alert state failed for %{private}s. Not submitting modified feed item to cache.", v22, 0x16u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v30, -1, -1);
      MEMORY[0x29ED6E4C0](v22, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
  }

  dispatch_group_leave(a2);
}

void sub_29DA1D660(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a4;
  v14 = sub_29DA34644();
  v60 = *(v14 - 1);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v55[-v19];
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = &v55[-v23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();

    v40 = sub_29DA34634();
    v41 = sub_29DA34B84();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136446467;
      v61 = type metadata accessor for HighlightAlertsFeedItemGenerator();
      sub_29D9F79EC();
      v44 = sub_29DA34894();
      v58 = v14;
      v46 = a6;
      v47 = sub_29D9EBB44(v44, v45, &v62);

      *(v42 + 4) = v47;
      a6 = v46;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_29D9EBB44(v59, a5, &v62);
      _os_log_impl(&dword_29D9BB000, v40, v41, "%{public}s went away unexpectedly before alert state manager persist callback for %{private}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v43, -1, -1);
      MEMORY[0x29ED6E4C0](v42, -1, -1);

      (*(v60 + 8))(v18, v58);
      if (!v46)
      {
        return;
      }
    }

    else
    {

      (*(v60 + 8))(v18, v14);
      if (!a6)
      {
        return;
      }
    }

    a6(0);
    return;
  }

  v26 = Strong;
  if (a2)
  {
    sub_29DA34614();
    v27 = v26;

    v28 = sub_29DA34634();
    v29 = sub_29DA34B84();

    v30 = os_log_type_enabled(v28, v29);
    v58 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v31 = 136446467;
      v32 = [v27 description];
      v33 = a6;
      v34 = v32;
      v35 = sub_29DA34854();
      v56 = v29;
      v37 = v36;

      a6 = v33;
      v38 = sub_29D9EBB44(v35, v37, &v62);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2081;
      *(v31 + 14) = sub_29D9EBB44(v59, a5, &v62);
      _os_log_impl(&dword_29D9BB000, v28, v56, "%{public}s: persisting modified alert state failed for %{private}s", v31, 0x16u);
      v39 = v57;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v39, -1, -1);
      MEMORY[0x29ED6E4C0](v31, -1, -1);
    }

    (*(v60 + 8))(v20, v14);
    if (a6)
    {
      a6(0);
    }
  }

  else if (a9)
  {
    sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v26;
    v48 = v26;
    sub_29DA33B84();

    v49 = a5;
    v50 = v62;
    v51 = swift_allocObject();
    v52 = v59;
    v51[2] = v48;
    v51[3] = v52;
    v51[4] = v49;
    v51[5] = a8;
    v51[6] = a9;
    v51[7] = a6;
    v51[8] = a7;
    v53 = sub_29DA34A34();
    (*(*(v53 - 8) + 56))(v24, 1, 1, v53);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v50;
    v54[5] = a8;
    v54[6] = a9;
    v54[7] = sub_29DA22504;
    v54[8] = v51;
    swift_bridgeObjectRetain_n();

    sub_29D9C1D2C(a6);
    sub_29D9ED414(0, 0, v24, &unk_29DA3BA50, v54);
  }

  else
  {
    if (a6)
    {
      a6(1);
    }
  }
}

uint64_t sub_29DA1DCB8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t))
{
  v34 = a2;
  v35 = a4;
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v15 = a1;

  v16 = sub_29DA34634();
  v17 = sub_29DA34BA4();

  if (!os_log_type_enabled(v16, v17))
  {

    result = (*(v11 + 8))(v14, v10);
    if (!a6)
    {
      return result;
    }

    return a6(1);
  }

  v18 = swift_slowAlloc();
  v30 = v17;
  v19 = v18;
  v32 = swift_slowAlloc();
  v36 = v32;
  *v19 = 136446723;
  v20 = [v15 description];
  v21 = sub_29DA34854();
  v33 = v10;
  v22 = a6;
  v23 = v21;
  v31 = v11;
  v25 = v24;

  v26 = sub_29D9EBB44(v23, v25, &v36);

  *(v19 + 4) = v26;
  a6 = v22;
  *(v19 + 12) = 2081;
  *(v19 + 14) = sub_29D9EBB44(v34, a3, &v36);
  *(v19 + 22) = 2082;
  *(v19 + 24) = sub_29D9EBB44(v35, a5, &v36);
  _os_log_impl(&dword_29D9BB000, v16, v30, "%{public}s: requested alert state cloud sync for %{private}s with reason: %{public}s", v19, 0x20u);
  v27 = v32;
  swift_arrayDestroy();
  MEMORY[0x29ED6E4C0](v27, -1, -1);
  MEMORY[0x29ED6E4C0](v19, -1, -1);

  result = (*(v31 + 8))(v14, v33);
  if (v22)
  {
    return a6(1);
  }

  return result;
}

uint64_t sub_29DA1DF6C(void *a1)
{
  v3 = sub_29DA34644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v48[-v9];
  v53 = a1;
  v11 = a1;
  sub_29D9FA590(0, &qword_2A1A2D3E8);
  if (swift_dynamicCast())
  {
    v12 = v52;
    sub_29DA34614();
    v13 = v1;
    v14 = sub_29DA34634();
    v15 = sub_29DA34B94();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v49 = v12;
      v17 = v16;
      v18 = swift_slowAlloc();
      v50 = v3;
      v19 = v18;
      v53 = v18;
      *v17 = 136446466;
      v20 = [v13 description];
      v21 = sub_29DA34854();
      v23 = v22;

      v24 = sub_29D9EBB44(v21, v23, &v53);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2082;
      v52 = v49;
      v25 = sub_29DA34894();
      v27 = sub_29D9EBB44(v25, v26, &v53);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_29D9BB000, v14, v15, "%{public}s: shutting down due to fatal error from AggregateChangeDetector: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v19, -1, -1);
      MEMORY[0x29ED6E4C0](v17, -1, -1);

      (*(v4 + 8))(v10, v50);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    sub_29DA070F8();
    sub_29DA33C04();
    return sub_29DA34B14();
  }

  else
  {
    sub_29DA34614();
    v28 = a1;
    v29 = v1;
    v30 = sub_29DA34634();
    v31 = sub_29DA34B94();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v3;
      v34 = v33;
      v53 = v33;
      *v32 = 136446466;
      v35 = [v29 description];
      v36 = sub_29DA34854();
      v38 = v37;

      v39 = sub_29D9EBB44(v36, v38, &v53);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v41 = *(*(v51 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v43 + 16))(&v48[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v44 = sub_29DA34894();
      v46 = sub_29D9EBB44(v44, v45, &v53);

      *(v32 + 14) = v46;
      _os_log_impl(&dword_29D9BB000, v30, v31, "%{public}s: handling an unknown throw from the AggregateChangeDetector: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v34, -1, -1);
      MEMORY[0x29ED6E4C0](v32, -1, -1);

      return (*(v4 + 8))(v8, v50);
    }

    else
    {

      return (*(v4 + 8))(v8, v3);
    }
  }
}

void sub_29DA1E468(char *a1)
{
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[qword_2A1A2D568];
  if (v7)
  {
    v21 = v7;
    sub_29DA34B34();
    AggregateChangeDetector.dispatchChanges()();
    if (v8)
    {
      sub_29DA1DF6C(v8);

      v9 = v8;
    }

    else
    {
      v9 = v21;
    }
  }

  else
  {
    sub_29DA34614();
    v10 = a1;
    v11 = sub_29DA34634();
    v12 = sub_29DA34B84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v15 = [v10 description];
      v16 = sub_29DA34854();
      v18 = v17;

      v19 = sub_29D9EBB44(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_29D9BB000, v11, v12, "%{public}s: lost reference to the changeDetector without being cancelled. We will idle indefinitely until cancelled.", v13, 0xCu);
      sub_29D9C7968(v14);
      MEMORY[0x29ED6E4C0](v14, -1, -1);
      MEMORY[0x29ED6E4C0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_29DA1E70C()
{
  if (!qword_2A1A2CCE0)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator();
    sub_29D9C79FC(255, &qword_2A1A2D478, 0x29EDBA088);
    v0 = sub_29DA33BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CCE0);
    }
  }
}

id sub_29DA1E784@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA088]) init];
  result = [v2 setMaxConcurrentOperationCount_];
  *a1 = v2;
  return result;
}

uint64_t sub_29DA1E7D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + qword_2A1A2D580);

  sub_29DA33B44();

  sub_29D9C706C(v14, v14[3]);
  v4 = sub_29DA33984();
  type metadata accessor for HighlightAlertStateManager();
  v5 = swift_allocObject();
  v5[2] = v4;
  v6 = objc_allocWithZone(MEMORY[0x29EDC42D8]);
  v7 = v4;
  v5[3] = [v6 initWithHealthStore_];
  v8 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v9 = v7;
  v10 = sub_29DA34824();
  v11 = [v8 initWithCategory:1 domainName:v10 healthStore:v9];

  v5[4] = v11;
  v12 = objc_allocWithZone(type metadata accessor for HighlightAlertStateSyncManager());
  v5[5] = sub_29D9E1EAC(v9);

  result = sub_29D9C7968(v14);
  *a2 = v5;
  return result;
}

void sub_29DA1E934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator();
    a3(255);
    v5 = sub_29DA33BA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29DA1E9A4(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_29DA33B84();

  v5 = *(v12 + 40);

  v6 = type metadata accessor for HighlightAlertStateChanges();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v4;
  v11 = sub_29DA21C4C(v10, v5, v9);

  *a2 = v11;
}

void sub_29DA1EAE0()
{
  if (!qword_2A1A2DFC0)
  {
    sub_29DA24014(255, &qword_2A1A2DB18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9B90]);
    v0 = sub_29DA33B64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2DFC0);
    }
  }
}

uint64_t sub_29DA1EB64@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_29DA1E70C();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_29DA33B84();

  *a2 = v6;
  return result;
}

uint64_t sub_29DA1EC0C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_29DA1E70C();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_29DA33B94();
}

uint64_t sub_29DA1EC98@<X0>(void **a1@<X0>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v5 = *a1;
  sub_29DA1E934(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_29DA33B84();

  *a4 = v8;
  return result;
}

uint64_t sub_29DA1ED48(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  sub_29DA1E934(0, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;

  return sub_29DA33B94();
}

unint64_t sub_29DA1EDE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29DA351B4();
  sub_29DA348D4();
  v6 = sub_29DA351E4();

  return sub_29DA1EF78(a1, a2, v6);
}

unint64_t sub_29DA1EE58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29DA34CA4();

  return sub_29DA1F030(a1, v5);
}

unint64_t sub_29DA1EE9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29DA34D64();

  return sub_29DA1F104(a1, v5);
}

unint64_t sub_29DA1EEE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_29DA340E4();
  sub_29DA243A0(&qword_2A1A2D4F0, MEMORY[0x29EDC4928]);
  v5 = sub_29DA347D4();

  return sub_29DA1F1CC(a1, v5);
}

unint64_t sub_29DA1EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29DA35114())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29DA1F030(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29DA34CB4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29DA1F104(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29DA21EEC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED6D8E0](v9, a1);
      sub_29D9F3314(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29DA1F1CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_29DA340E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_29DA243A0(&qword_2A1A2D4E8, MEMORY[0x29EDC4928]);
      v16 = sub_29DA34814();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_29DA1F38C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_29DA1EE58(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_29DA1F648(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_29DA2AE60();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_29DA34F34();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_29DA34D34();
  v8 = sub_29DA04F48(v4, v7);

  v9 = sub_29DA1EE58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_29DA1F648(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_29DA1F4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_29DA1EDE0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29DA2B318();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_29DA33964();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_29DA1F7D4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_29DA33964();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_29DA1F648(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29DA34CF4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_29DA34CA4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_29DA1F7D4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29DA34CF4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_29DA351B4();

      sub_29DA348D4();
      v13 = sub_29DA351E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_29DA33964() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_29DA1F9C0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29DA34D34();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D9D59F8(v2, 0);

    v1 = sub_29DA20C24(&v5, v3 + 4, v2, v1);
    sub_29D9FA76C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

char *sub_29DA1FA70(char *a1, int64_t a2, char a3)
{
  result = sub_29DA1FAF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29DA1FA90(void *a1, int64_t a2, char a3)
{
  result = sub_29DA1FBE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29DA1FAB0(size_t a1, int64_t a2, char a3)
{
  result = sub_29DA1FD34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29DA1FAD0(char *a1, int64_t a2, char a3)
{
  result = sub_29DA1FF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29DA1FAF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23C20();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_29DA1FBE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_29DA1BF9C(0, &qword_2A1A2CA10, sub_29DA24458, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DA24458(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29DA1FD34(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29DA1BF9C(0, &qword_2A1A2CA08, sub_29D9D5FF4, MEMORY[0x29EDC9E90]);
  sub_29D9D5FF4();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_29D9D5FF4();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29DA1FF30(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23DD8(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29DA20054(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29DA20F98(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29DA200C0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29DA200C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29DA350E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        v5 = sub_29DA34984();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29DA20288(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_29DA201B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29DA201B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_29DA35114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29DA20288(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_29DA20B18(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_29DA20864((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_29DA35114();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_29DA35114();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D9D5500(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_29D9D5500((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_29DA20864((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_29DA20B18(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_29DA20A8C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_29DA35114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_29DA20864(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_29DA35114() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_29DA35114() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_29DA20A8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29DA20B18(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_29DA20B2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23F90();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_29DA20C24(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_29DA34D24();
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  sub_29D9D0160();
  result = sub_29DA34AD4();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29DA34D54())
      {
        goto LABEL_30;
      }

      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_29DA20E40(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_29DA20FAC(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_29DA34EF4() == *(a4 + 36))
    {
      sub_29DA34F04();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      sub_29DA1EE58(v8);
      v6 = v5;

      if (v6)
      {
        sub_29DA34ED4();
        sub_29DA34F24();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_29DA34D04();
  v7 = *(a4 + 36);
}

void sub_29DA21110(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_29DA34EC4();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_29DA34EF4() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_29DA34F04();
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  swift_dynamicCast();
  v5 = sub_29DA1EE58(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

unint64_t sub_29DA212A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DA21FF4(0, &qword_2A1A2DAC8);
    v3 = sub_29DA34FB4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_29DA1EDE0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA213C4(uint64_t a1)
{
  sub_29DA24324(0, &qword_2A1A2D4E0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4948]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29DA21F48();
    v9 = sub_29DA34FB4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29DA21E68(v11, v7, &qword_2A1A2D4E0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4948], sub_29DA24324);
      result = sub_29DA1EEE0(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_29DA340E4();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_29DA34154();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA21630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DA24068(0, &qword_2A1A2CA70, MEMORY[0x29EDC9E70]);
    v3 = sub_29DA34FB4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29DA1EE58(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA21738(uint64_t a1)
{
  sub_29DA21A0C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29DA21A74(0, &qword_2A1A2CA78, MEMORY[0x29EDC9E70]);
    v9 = sub_29DA34FB4();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29DA23890(v11, v7, sub_29DA21A0C);
      v13 = *v7;
      v14 = v7[1];
      result = sub_29DA1EDE0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_29DA33964();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29DA21930()
{
  if (!qword_2A1A2D2D0)
  {
    sub_29DA21A74(255, &qword_2A1A2CBE0, MEMORY[0x29EDC98E0]);
    v0 = sub_29DA33B64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D2D0);
    }
  }
}

void sub_29DA219A4()
{
  if (!qword_2A1A2D2D8)
  {
    sub_29D9FA590(255, &qword_2A1A2DFD0);
    v0 = sub_29DA33B64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D2D8);
    }
  }
}

void sub_29DA21A0C()
{
  if (!qword_2A1A2CBD0)
  {
    sub_29DA33964();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CBD0);
    }
  }
}

void sub_29DA21A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29DA33964();
    v7 = a3(a1, MEMORY[0x29EDC99B0], v6, MEMORY[0x29EDC99C0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29DA21AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDCA178];
    v4 = MEMORY[0x29EDC9D48];
    sub_29DA21FF4(0, &qword_2A1A2D428);
    v5 = sub_29DA34FB4();
    v6 = a1 + 32;

    while (1)
    {
      sub_29DA21E68(v6, v15, &qword_2A1A2CA98, v4, v3 + 8, sub_29DA23C90);
      result = sub_29DA1EE9C(v15);
      if (v8)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v5[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_29DA21EDC(&v17, (v5[7] + 32 * result));
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      v6 += 72;
      if (!--v1)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

char *sub_29DA21C4C(uint64_t a1, void *a2, char *a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2CC18, sub_29DA21E00, MEMORY[0x29EDB8B00]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = v13 - v9;
  *(a3 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 6) = 0;
  v11 = OBJC_IVAR____TtC15HighlightAlerts26HighlightAlertStateChanges__changedSampleTypes;
  v13[1] = MEMORY[0x29EDCA190];
  sub_29DA21E00();
  sub_29DA346C4();
  (*(v7 + 32))(&a3[v11], v10, v6);
  *(a3 + 3) = &off_2A2461DE8;
  swift_unknownObjectWeakAssign();
  *(a3 + 5) = &off_2A2461DD8;
  swift_unknownObjectWeakAssign();

  sub_29D9CE8BC(0, 1, a3, a3);

  return a3;
}

void sub_29DA21E00()
{
  if (!qword_2A1A2CBA8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    v0 = sub_29DA349A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CBA8);
    }
  }
}

uint64_t sub_29DA21E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

_OWORD *sub_29DA21EDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29DA21F48()
{
  if (!qword_2A1A2D430)
  {
    sub_29DA340E4();
    sub_29DA34154();
    sub_29DA243A0(&qword_2A1A2D4F0, MEMORY[0x29EDC4928]);
    v0 = sub_29DA34FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D430);
    }
  }
}

void sub_29DA21FF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29DA34FC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29DA22050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D9D02DC;

  return sub_29D9EF4A8(a1, v4, v5, v6, v7, v8);
}

void sub_29DA22118()
{
  if (!qword_2A1A2D310)
  {
    sub_29DA33964();
    type metadata accessor for HighlightAlert(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2D310);
    }
  }
}

uint64_t sub_29DA221B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DA221D8()
{
  v1 = *(v0 + 16);

  return sub_29DA2BAA4(v2);
}

uint64_t sub_29DA22208()
{
  v1 = *(v0 + 16);

  return sub_29DA10098(v2);
}

void sub_29DA22238(char *a1)
{
  v3 = *(type metadata accessor for HighlightAlertState() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_29DA33964() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_29DA33754() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_29DA336F4() - 8);
  v13 = v1 + ((*(v12 + 64) + *(v12 + 80) + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80))) & ~*(v12 + 80));
  sub_29DA16350(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, v1 + v7, (v1 + v10));
}

uint64_t sub_29DA22400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D9D02DC;

  return sub_29D9ED89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29DA22518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D9D02DC;

  return sub_29D9EEB74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29DA225F8(uint64_t a1)
{
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DA22690(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DA1BF9C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DA22710(uint64_t a1, uint64_t a2)
{
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA227B0()
{
  v1 = sub_29DA33964();
  v2 = *(v1 - 8);
  v27 = *(v2 + 80);
  v3 = (v27 + 40) & ~v27;
  v4 = v3 + *(v2 + 64);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v25 = *(*(v5 - 8) + 64);
  v26 = sub_29DA336F4();
  v8 = *(v26 - 8);
  v9 = *(v8 + 80);
  v23 = *(v8 + 64);
  v24 = sub_29DA33754();
  v10 = *(v24 - 8);
  v11 = *(v10 + 80);
  v22 = *(v10 + 64);
  v12 = *(v0 + 16);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v14 = sub_29DA33554();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = v27 | v6 | v9 | v11;
  v17 = (v7 + v25 + v9) & ~v9;
  v18 = (v23 + v11 + v17 + 1) & ~v11;
  v19 = (v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v0 + v17, v26);
  (*(v10 + 8))(v0 + v18, v24);
  v20 = *(v0 + v19 + 8);

  return MEMORY[0x2A1C733A0](v0, v19 + 16, v16 | 7);
}

uint64_t sub_29DA22AC0()
{
  v1 = *(sub_29DA33964() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v5 = (v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *(sub_29DA336F4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_29DA33754() - 8);
  v11 = (v9 + *(v10 + 80) + 1) & ~*(v10 + 80);
  v12 = v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_29DA1C418(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + v2), v0 + v5, v0 + v8, *(v0 + v9), v0 + v11, *v12, *(v12 + 8));
}

void sub_29DA22CBC(char a1)
{
  v3 = *(sub_29DA33964() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_29DA1D3B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29DA22D34()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  v4 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DA22DC4()
{
  v1 = (type metadata accessor for HighlightAlertState() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = v0 + v3;
  v9 = sub_29DA33754();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[7];
  v11 = sub_29DA336F4();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  v12(v8 + v1[8], v11);
  v13 = *(v0 + v4 + 8);

  if (*(v0 + v5))
  {
    v14 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_29DA22F4C()
{
  v23 = sub_29DA33754();
  v1 = *(v23 - 8);
  v2 = *(v1 + 80);
  v20 = (v2 + 48) & ~v2;
  v3 = *(v1 + 64);
  v22 = sub_29DA33964();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = (v20 + v3 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_29DA336F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v21 = v2 | v5 | v10;
  v13 = (v11 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v10 + v13 + 24) & ~v10;

  v15 = *(v0 + 24);

  v16 = *(v0 + 40);

  (*(v1 + 8))(v0 + v20, v23);
  (*(v4 + 8))(v0 + v6, v22);
  v17 = *(v9 + 8);
  v17(v0 + v11, v8);
  v18 = *(v0 + v13 + 16);

  v17(v0 + v14, v8);

  return MEMORY[0x2A1C733A0](v0, v14 + v12, v21 | 7);
}

void sub_29DA23174(uint64_t a1)
{
  v3 = *(sub_29DA33754() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_29DA33964() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_29DA336F4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  sub_29DA1162C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), v1 + v7, (v1 + v10), *(v1 + v10 + *(v9 + 64)), *(v1 + ((v10 + *(v9 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v10 + *(v9 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}