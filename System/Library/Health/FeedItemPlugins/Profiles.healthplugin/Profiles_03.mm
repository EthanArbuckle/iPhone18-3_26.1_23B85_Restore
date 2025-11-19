uint64_t sub_29E4E1D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E4A25CC(a1, a2);

  return sub_29E4AD310(a1 + 40, a2 + 40);
}

_OWORD *sub_29E4E1DD0@<X0>(uint64_t a1@<X8>)
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
    sub_29E4A25CC(*(v3 + 48) + 40 * v13, &v18);
    sub_29E4AD310(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_29E4A2C58(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_29E4E5514(&v18, sub_29E4E5574);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
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
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
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

uint64_t sub_29E4E1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v136 = a5;
  v137 = a4;
  v145 = a3;
  v119 = a2;
  sub_29E4E5128(0, &qword_2A184B988, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8AB0]);
  v122 = v6;
  v121 = *(v6 - 8);
  v7 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v120 = &v112 - v8;
  sub_29E4E322C(0, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
  v125 = v9;
  v124 = *(v9 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v123 = &v112 - v11;
  sub_29E4E3000();
  v13 = *(v12 - 8);
  v128 = v12;
  v129 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E3468(0);
  v130 = *(v16 - 8);
  v131 = v16;
  v17 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v144 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E354C(0);
  v138 = *(v19 - 8);
  v139 = v19;
  v20 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v133 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E35B4(0, &qword_2A184BA10, sub_29E4E354C, sub_29E4E36A0);
  v134 = *(v22 - 8);
  v135 = v22;
  v23 = *(v134 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v132 = &v112 - v24;
  sub_29E4E36D4(0, &qword_2A184BA20, MEMORY[0x29EDB8AC0]);
  v118 = v25;
  v117 = *(v25 - 8);
  v26 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v116 = &v112 - v27;
  v28 = sub_29E4FBAA0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v146 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v32;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v112 - v33;
  v35 = sub_29E4FC3C0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v115 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v114 = &v112 - v41;
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v140 = &v112 - v43;
  MEMORY[0x2A1C7C4A8](v42);
  v45 = &v112 - v44;
  sub_29E4FC3A0();
  v46 = *(v29 + 16);
  v147 = a1;
  v141 = v46;
  v142 = v29 + 16;
  v46(v34, a1, v28);
  v47 = sub_29E4FC3B0();
  v48 = sub_29E4FC940();
  v49 = os_log_type_enabled(v47, v48);
  v127 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v112 = v36;
    v52 = v51;
    v148 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v148);
    *(v50 + 12) = 2080;
    v53 = sub_29E4FB9B0();
    v54 = v28;
    v56 = v55;
    v57 = v34;
    v58 = v54;
    (*(v29 + 8))(v57, v54);
    v59 = sub_29E4F68F4(v53, v56, &v148);

    *(v50 + 14) = v59;
    _os_log_impl(&dword_29E494000, v47, v48, "[%s] Creating notification publisher for sharing entry: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v52, -1, -1);
    MEMORY[0x29ED8BDB0](v50, -1, -1);

    v36 = v112;
  }

  else
  {

    v60 = v34;
    v58 = v28;
    (*(v29 + 8))(v60, v28);
  }

  v61 = *(v36 + 8);
  v61(v45, v35);
  v62 = sub_29E4FB9D0();
  v63 = v140;
  if ((v62 & 1) == 0 && (sub_29E4FBA20() & 1) == 0)
  {
    v72 = v115;
    sub_29E4FC3A0();
    v73 = sub_29E4FC3B0();
    v74 = sub_29E4FC940();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v148 = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v148);
      v77 = "[%s] Terminating early: sharing entry is not incoming invite or outgoing accepted";
      goto LABEL_20;
    }

LABEL_21:

    v61(v72, v35);
    sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    v109 = v116;
    sub_29E4FC4C0();
    sub_29E4E50E4(&qword_2A184BA28, &qword_2A184BA20, MEMORY[0x29EDB8AC0]);
    v110 = v118;
    v108 = sub_29E4FC4E0();
    (*(v117 + 8))(v109, v110);
    return v108;
  }

  if (sub_29E4FB9D0())
  {
    v64 = sub_29E4FBA30();
    if ((v65 & 1) == 0 && v64 == 1)
    {
      sub_29E4FC3A0();
      v66 = sub_29E4FC3B0();
      v67 = sub_29E4FC940();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v148 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v148);
        _os_log_impl(&dword_29E494000, v66, v67, "[%s] Creating notification: The notification has been acknowledged, but the invitation is still pending", v68, 0xCu);
        sub_29E4A1754(v69);
        MEMORY[0x29ED8BDB0](v69, -1, -1);
        MEMORY[0x29ED8BDB0](v68, -1, -1);
      }

      v61(v63, v35);
    }
  }

  if (sub_29E4FBA20())
  {
    v70 = sub_29E4FBA30();
    if ((v71 & 1) == 0 && v70 == 2)
    {
      v72 = v114;
      sub_29E4FC3A0();
      v73 = sub_29E4FC3B0();
      v74 = sub_29E4FC940();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v148 = v76;
        *v75 = 136315138;
        *(v75 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v148);
        v77 = "[%s] Terminating early: We have already acknowledged the notification";
LABEL_20:
        _os_log_impl(&dword_29E494000, v73, v74, v77, v75, 0xCu);
        sub_29E4A1754(v76);
        MEMORY[0x29ED8BDB0](v76, -1, -1);
        MEMORY[0x29ED8BDB0](v75, -1, -1);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  sub_29E4A2AD8(0, &unk_2A184B580, 0x29EDBACA8);
  sub_29E4FCAF0();
  v78 = objc_allocWithZone(MEMORY[0x29EDBACA8]);
  v79 = sub_29E4FC6B0();

  v80 = [v78 initWithClientIdentifier:v79 healthStore:v119];

  v81 = v147;
  v82 = v141;
  v141(v146, v147, v58);
  v83 = v120;
  sub_29E4FC4B0();
  sub_29E4A2CE8(0, &qword_2A1A70BC8);
  v84 = v123;
  v85 = v122;
  sub_29E4FC4A0();
  (*(v121 + 8))(v83, v85);
  *(swift_allocObject() + 16) = v80;
  v140 = v80;
  sub_29E4FC410();
  sub_29E4E30EC();
  sub_29E4E33E0();
  sub_29E4E3398(&qword_2A184B9D0, sub_29E4E30EC);
  v86 = v126;
  v87 = v125;
  sub_29E4FC520();

  (*(v124 + 8))(v84, v87);

  sub_29E4FC410();
  sub_29E4E39EC(0, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29E4E3518();
  sub_29E4E349C();
  v88 = v128;
  sub_29E4FC520();

  (*(v129 + 8))(v86, v88);
  v89 = v146;
  v113 = v58;
  v82(v146, v81, v58);
  v90 = v127;
  v91 = *(v127 + 80);
  v92 = (v91 + 16) & ~v91;
  v93 = (v143 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v129 = *(v90 + 32);
  (v129)(v94 + v92, v89, v58);
  v95 = (v94 + v93);
  v96 = v136;
  *v95 = v137;
  v95[1] = v96;
  swift_unknownObjectRetain();
  sub_29E4FC410();
  v137 = sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  v97 = MEMORY[0x29EDB89F8];
  sub_29E4E36D4(0, &qword_2A184B9F8, MEMORY[0x29EDB89F8]);
  v136 = v98;
  sub_29E4E3580();
  sub_29E4E50E4(&qword_2A184BA00, &qword_2A184B9F8, v97);
  v99 = v133;
  v100 = v131;
  v101 = v144;
  sub_29E4FC520();

  (*(v130 + 8))(v101, v100);
  v102 = v146;
  v103 = v113;
  v141(v146, v147, v113);
  v104 = swift_allocObject();
  *(v104 + 16) = v145;
  (v129)(v104 + ((v91 + 24) & ~v91), v102, v103);

  sub_29E4FC410();
  sub_29E4E36A0();
  v105 = v132;
  v106 = v139;
  sub_29E4FC520();

  (*(v138 + 8))(v99, v106);
  sub_29E4E38B0();
  v107 = v135;
  v108 = sub_29E4FC4E0();

  (*(v134 + 8))(v105, v107);
  return v108;
}

void sub_29E4E3000()
{
  if (!qword_2A184B998)
  {
    sub_29E4E30EC();
    sub_29E4E322C(255, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
    sub_29E4E3398(&qword_2A184B9D0, sub_29E4E30EC);
    sub_29E4E33E0();
    v0 = sub_29E4FC3F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B998);
    }
  }
}

void sub_29E4E30EC()
{
  if (!qword_2A184B9A0)
  {
    sub_29E4E3198();
    sub_29E4FBAA0();
    sub_29E4E3398(&qword_2A184B9C8, sub_29E4E3198);
    v0 = sub_29E4FC3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B9A0);
    }
  }
}

void sub_29E4E3198()
{
  if (!qword_2A184B9A8)
  {
    sub_29E4E322C(255, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
    sub_29E4E3310();
    v0 = sub_29E4FC3E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B9A8);
    }
  }
}

void sub_29E4E322C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E4E32B8()
{
  if (!qword_2A184B9B8)
  {
    v0 = sub_29E4FC8E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B9B8);
    }
  }
}

unint64_t sub_29E4E3310()
{
  result = qword_2A184B9C0;
  if (!qword_2A184B9C0)
  {
    sub_29E4E322C(255, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B9C0);
  }

  return result;
}

uint64_t sub_29E4E3398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E4E33E0()
{
  result = qword_2A184B9D8;
  if (!qword_2A184B9D8)
  {
    sub_29E4E322C(255, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B9D8);
  }

  return result;
}

unint64_t sub_29E4E349C()
{
  result = qword_2A184B578;
  if (!qword_2A184B578)
  {
    sub_29E4E39EC(255, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B578);
  }

  return result;
}

void sub_29E4E35B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x29EDB89F8];
    sub_29E4E36D4(255, &qword_2A184B9F8, MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29E4E50E4(&qword_2A184BA00, &qword_2A184B9F8, v7);
    a4();
    v8 = sub_29E4FC3F0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4E36D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E4A2AD8(255, &qword_2A1A6F188, 0x29EDBCCD8);
    v7 = sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v8 = a3(a1, v6, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4E377C(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_29E4E1418(v1 + v4, v6, v7, a1);
}

uint64_t sub_29E4E382C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_29E4FBAA0() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_29E4E1B68(a1, a2);
}

unint64_t sub_29E4E38B0()
{
  result = qword_2A184BA30;
  if (!qword_2A184BA30)
  {
    sub_29E4E35B4(255, &qword_2A184BA10, sub_29E4E354C, sub_29E4E36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA30);
  }

  return result;
}

void sub_29E4E3938()
{
  if (!qword_2A184BA38)
  {
    sub_29E4E39EC(255, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
    sub_29E4A2AD8(255, &qword_2A1A6F188, 0x29EDBCCD8);
    sub_29E4E3A6C();
    v0 = sub_29E4FC3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BA38);
    }
  }
}

void sub_29E4E39EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v9 = a4(a1, a3, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E4E3A6C()
{
  result = qword_2A184BA48;
  if (!qword_2A184BA48)
  {
    sub_29E4E39EC(255, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA48);
  }

  return result;
}

id sub_29E4E3AEC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_29E4E3AF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_29E4E1DD0(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_29E4C4CA8();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_29E4A2C58(&v41, v34);
    v15 = *a5;
    v16 = sub_29E49EE90(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_29E4C13F0(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_29E49EE90(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_29E4C337C();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_29E4AD310(*(*a5 + 56) + 32 * v16, v33);
      sub_29E4A1754(v34);
      sub_29E4A2628(&v35);
      v14 = *(v12 + 56);
      sub_29E4A1754((v14 + v13));
      sub_29E4A2C58(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_29E4A2C58(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_29E4E1DD0(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_29E4FCFB0();
  __break(1u);
  return result;
}

uint64_t sub_29E4E3D3C()
{
  sub_29E4E5490();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v18[4] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E4FBAA0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = sub_29E4FC3C0();
  v19 = *(v5 - 8);
  v20 = v5;
  v6 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = sub_29E4FB240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  sub_29E4FBA80();
  v13 = sub_29E4FB210();
  (*(v8 + 8))(v11, v7);
  v14 = [v12 _profileWithUUID_type_];

  sub_29E4E5248();
  v15 = v14;
  v16 = sub_29E4FBCF0();

  return v16;
}

id sub_29E4E431C(uint64_t a1)
{
  v81 = sub_29E4FC3C0();
  v80 = *(v81 - 8);
  v2 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v81);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC9C68];
  sub_29E4E5128(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v85 = &v77 - v7;
  sub_29E4E5128(0, &qword_2A184B558, MEMORY[0x29EDB9B18], v4);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v84 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v86 = &v77 - v12;
  v83 = sub_29E4FB020();
  v82 = *(v83 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v83);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FBAA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v77 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v77 - v21;
  v23 = sub_29E4FB570();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29E4FBA40();
  v88 = v27;
  v89 = [objc_allocWithZone(MEMORY[0x29EDBCCC0]) init];
  sub_29E4A2AD8(0, &qword_2A1A6F1D8, 0x29EDB8BB0);
  v28 = sub_29E4FC980();
  v94[3] = v16;
  v94[4] = MEMORY[0x29EDC1A28];
  v29 = sub_29E4A197C(v94);
  v78 = v17;
  v30 = *(v17 + 16);
  v30(v29, a1, v16);
  sub_29E4FC960();
  v31 = sub_29E4FC950();

  sub_29E4A1754(v94);
  v30(v22, a1, v16);
  v32 = v31;
  v92 = v26;
  sub_29E4FB550();
  if (sub_29E4FB9D0())
  {
    v81 = v32;
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    v80 = a1;
    v79 = sub_29E4FB050();
    sub_29E4FB050();
    v33 = "ITE_RECEIVED_SUBTITLE";
  }

  else
  {
    if ((sub_29E4FBA20() & 1) == 0)
    {

      v63 = v79;
      sub_29E4FC3A0();
      v64 = v77;
      v30(v77, a1, v16);
      v65 = sub_29E4FC3B0();
      v66 = sub_29E4FC920();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v94[0] = v68;
        *v67 = 136315394;
        *(v67 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, v94);
        *(v67 + 12) = 2080;
        sub_29E4E3398(&unk_2A184B678, MEMORY[0x29EDC1A38]);
        v69 = sub_29E4FCF60();
        v70 = v64;
        v71 = v69;
        v73 = v72;
        (*(v78 + 8))(v70, v16);
        v74 = sub_29E4F68F4(v71, v73, v94);

        *(v67 + 14) = v74;
        _os_log_impl(&dword_29E494000, v65, v66, "[%s] Received a SharingEntryProfileInformation we were not supposed to create a notification for: %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v68, -1, -1);
        MEMORY[0x29ED8BDB0](v67, -1, -1);
      }

      else
      {

        (*(v78 + 8))(v64, v16);
      }

      (*(v80 + 8))(v63, v81);
      (*(v90 + 8))(v92, v91);
      return 0;
    }

    v81 = v32;
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    v80 = a1;
    v79 = sub_29E4FB050();
    sub_29E4FB050();
    v33 = "ITE_ACCEPTED_SUBTITLE";
  }

  sub_29E4FB560();
  sub_29E4B1068(0xD000000000000034, v33 | 0x8000000000000000, "", 0, 2, v15);
  (*(v82 + 8))(v15, v83);
  sub_29E4E518C();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29E4FDE40;
  v35 = sub_29E4FB540();
  v37 = v36;
  *(v34 + 56) = MEMORY[0x29EDC99B0];
  *(v34 + 64) = sub_29E4E51F4();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  sub_29E4FC6C0();

  v38 = sub_29E4FC6B0();

  v39 = v89;
  [v89 setTitle_];

  v40 = sub_29E4FC6B0();

  [v39 setSubtitle_];

  v41 = sub_29E4FC6B0();

  [v39 setCategoryIdentifier_];

  v42 = sub_29E4FC6B0();

  [v39 setBody_];

  sub_29E4E5248();
  v43 = sub_29E4FBD10();
  [v39 setSound_];

  v44 = [objc_allocWithZone(MEMORY[0x29EDC1570]) init];
  v45 = [v44 URLForSharingOverview];
  if (v45)
  {
    v46 = v84;
    v47 = v45;
    sub_29E4FB110();

    v48 = 0;
    v44 = v47;
    v49 = v81;
    v50 = v86;
  }

  else
  {
    v48 = 1;
    v49 = v81;
    v50 = v86;
    v46 = v84;
  }

  v51 = sub_29E4FB130();
  (*(*(v51 - 8) + 56))(v46, v48, 1, v51);
  sub_29E4E529C(v46, v50);
  v52 = sub_29E4FB240();
  v53 = v85;
  (*(*(v52 - 8) + 56))(v85, 1, 1, v52);
  v54 = sub_29E4FBD00();
  sub_29E4E5330(v53, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
  v55 = sub_29E4F2F0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94[0] = v54;
  sub_29E4E3AF8(v55, sub_29E4E1D8C, 0, isUniquelyReferenced_nonNull_native, v94);

  sub_29E4E5330(v50, &qword_2A184B558, MEMORY[0x29EDB9B18]);
  v57 = sub_29E4FC620();

  [v39 setUserInfo_];

  v58 = sub_29E4E3D3C();
  v93 = v58;
  v94[0] = MEMORY[0x29EDCA190];
  if (v58)
  {
    v59 = v58;
    MEMORY[0x29ED8ADD0]();
    if (*((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29E4FC7E0();
    }

    sub_29E4FC7F0();
  }

  sub_29E4E53A0(&v93);
  sub_29E4A2AD8(0, &qword_2A184BA78, 0x29EDBCCC8);
  v60 = sub_29E4FC7B0();

  [v39 setAttachments_];

  v61 = sub_29E4FC6B0();

  v62 = [objc_opt_self() requestWithIdentifier:v61 content:v39 trigger:0];

  (*(v90 + 8))(v92, v91);
  return v62;
}

uint64_t sub_29E4E50E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29E4E36D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4E5128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E4E518C()
{
  if (!qword_2A1A70898)
  {
    sub_29E4A2CE8(255, &qword_2A1A70890);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70898);
    }
  }
}

unint64_t sub_29E4E51F4()
{
  result = qword_2A1A70910;
  if (!qword_2A1A70910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70910);
  }

  return result;
}

unint64_t sub_29E4E5248()
{
  result = qword_2A184BA68;
  if (!qword_2A184BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA68);
  }

  return result;
}

uint64_t sub_29E4E529C(uint64_t a1, uint64_t a2)
{
  sub_29E4E5128(0, &qword_2A184B558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E5330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4E5128(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4E53A0(uint64_t a1)
{
  sub_29E4E5428(0, &qword_2A184BA70, &qword_2A184BA78, 0x29EDBCCC8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4E5428(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4A2AD8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E4E5490()
{
  if (!qword_2A184BA80)
  {
    sub_29E4E5428(255, &qword_2A1A6F2F8, &qword_2A1A708D0, 0x29EDBACE0, MEMORY[0x29EDBA1D0]);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BA80);
    }
  }
}

uint64_t sub_29E4E5514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4E5574()
{
  if (!qword_2A184BA88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184BA88);
    }
  }
}

void sub_29E4E55DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    sub_29E4E39EC(255, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29E4E349C();
    a4();
    v7 = sub_29E4FC3F0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4E569C()
{
  if (!qword_2A1A70430)
  {
    sub_29E4E5874(255, &qword_2A1A6F208, MEMORY[0x29EDC9C68]);
    sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v0 = sub_29E4FC4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70430);
    }
  }
}

uint64_t sub_29E4E576C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E4FBAA0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E4E0CBC(a1, v6, a2);
}

unint64_t sub_29E4E57EC()
{
  result = qword_2A184BA98;
  if (!qword_2A184BA98)
  {
    sub_29E4E55DC(255, &qword_2A184BA90, sub_29E4E569C, sub_29E4E5738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA98);
  }

  return result;
}

void sub_29E4E5874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E4E58C8()
{
  result = qword_2A184BAB8;
  if (!qword_2A184BAB8)
  {
    sub_29E4E39EC(255, &qword_2A184BAB0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BAB8);
  }

  return result;
}

unint64_t sub_29E4E5944()
{
  result = qword_2A184BAC0;
  if (!qword_2A184BAC0)
  {
    sub_29E4E39EC(255, &qword_2A184BAA0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BAC0);
  }

  return result;
}

BOOL sub_29E4E59C0(uint64_t *a1)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E4E02C0(a1, v4);
}

uint64_t sub_29E4E5A30()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4E5AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void *sub_29E4E5B40(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E4FCCB0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED8B3B0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_29E4E5C54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
    v4 = sub_29E4FC7C0();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_29E4E5D70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfilesAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E4E5E34()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29E4E5E68(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E4FC3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_29E4FC9A0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_29E4FBDA0();
    sub_29E4FBD90();
    sub_29E4FCA00();
    sub_29E4A1710(v34, v34[3]);
    v11 = sub_29E4FB2F0();
    v12 = sub_29E4FBDE0();

    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      [v13 setProfileIdentifier_];
      [v13 resume];
      sub_29E4FBE30();
      v14 = v13;
      sub_29E4FCA00();
      sub_29E4A76F0(v35, v33);
      v15 = sub_29E4FBE20();
      v16 = [v10 navigationController];
      if (v16)
      {
        v17 = v16;
        [v16 pushViewController:v15 animated:0];
      }

      [v15 restoreUserActivityState_];
    }

    else
    {
      v15 = v10;
    }

    sub_29E4A1754(v35);
    return sub_29E4A1754(v34);
  }

  else
  {
    sub_29E4FC370();
    v18 = a1;
    v19 = sub_29E4FC3B0();
    v20 = sub_29E4FC920();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446466;
      v35[0] = ObjectType;
      swift_getMetatypeMetadata();
      v23 = sub_29E4FC700();
      v25 = sub_29E4F68F4(v23, v24, v34);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = [v18 activityType];
      v27 = sub_29E4FC6F0();
      v29 = v28;

      v30 = sub_29E4F68F4(v27, v29, v34);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_29E494000, v19, v20, "[%{public}s]: Unable to fetch ProfileIdentifier from UserActivty %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v22, -1, -1);
      MEMORY[0x29ED8BDB0](v21, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_29E4E6208(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v41 = sub_29E4FB130();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC3C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FB100();
  v13 = [v12 _hk_extractEncodedHKProfileIdentifier];

  if (v13)
  {
    v14 = sub_29E4FBDA0();
    sub_29E4FBD90();
    sub_29E4FCA00();
    sub_29E4A1710(v44, v44[3]);
    v15 = sub_29E4FB2F0();
    v16 = sub_29E4FBDE0();

    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      [v17 setProfileIdentifier_];
      [v17 resume];
      sub_29E4FBE30();
      sub_29E4A76F0(v44, v43);
      sub_29E4A76F0(v45, v42);
      v18 = v17;
      v19 = sub_29E4FBE20();
      v20 = [v14 navigationController];
      if (v20)
      {
        v21 = v20;
        [v20 pushViewController:v19 animated:0];
      }

      else
      {
        v21 = v13;
        v13 = v18;
      }

      v14 = v21;
    }

    sub_29E4A1754(v45);
    return sub_29E4A1754(v44);
  }

  else
  {
    v39 = v7;
    v40 = v8;
    sub_29E4FC370();
    v22 = v3;
    v23 = *(v3 + 16);
    v24 = v41;
    v23(v6, a1, v41);
    v25 = sub_29E4FC3B0();
    v26 = sub_29E4FC920();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v27 = 136446466;
      v45[0] = ObjectType;
      swift_getMetatypeMetadata();
      v28 = sub_29E4FC700();
      v30 = sub_29E4F68F4(v28, v29, v44);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      v31 = sub_29E4FB0F0();
      v33 = v32;
      (*(v22 + 8))(v6, v24);
      v34 = sub_29E4F68F4(v31, v33, v44);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_29E494000, v25, v26, "[%{public}s]: Unable to fetch ProfileIdentifier from URL %{public}s", v27, 0x16u);
      v35 = v38;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v35, -1, -1);
      MEMORY[0x29ED8BDB0](v27, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v6, v24);
    }

    return (*(v40 + 8))(v11, v39);
  }
}

id sub_29E4E668C(uint64_t a1, void *a2)
{
  v4 = sub_29E4FBB20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_29E4FBB30();
    sub_29E4FBB10();
    result = [a2 collectionView];
    if (result)
    {
      v10 = result;
      v11 = objc_allocWithZone(MEMORY[0x29EDC64A8]);
      v12 = sub_29E4FC6B0();

      v13 = [v11 initWithTestName:v12 scrollView:v10 completionHandler:0];

      [objc_opt_self() runTestWithParameters_];
      return (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4E68D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E4FCCB0())
    {
      v7 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED8B3B0](v7, a1);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_14;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 type] == 3)
        {
          goto LABEL_17;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }
  }

LABEL_16:
  v9 = 0;
LABEL_17:
  swift_beginAccess();
  v11 = *(a3 + 16);
  *(a3 + 16) = v9;

  return sub_29E4FCAE0();
}

uint64_t sub_29E4E69E8()
{
  v35 = sub_29E4FC550();
  v32 = *(v35 - 8);
  v0 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v35);
  v2 = (&v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_29E4FC5A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v31 - v8;
  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v13 = objc_allocWithZone(MEMORY[0x29EDBACE8]);
  v33 = v12;
  v14 = [v13 initWithHealthStore_];
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;
  aBlock[4] = sub_29E4E7648;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4E5C54;
  aBlock[3] = &unk_2A24E9120;
  v16 = _Block_copy(aBlock);

  v17 = v10;
  v18 = v14;

  [v14 fetchAllProfilesWithCompletion_];
  _Block_release(v16);
  sub_29E4FC590();
  *v2 = 5;
  v19 = v32;
  v20 = v35;
  (*(v32 + 104))(v2, *MEMORY[0x29EDCA238], v35);
  MEMORY[0x29ED8ABE0](v7, v2);
  (*(v19 + 8))(v2, v20);
  v21 = *(v3 + 8);
  v22 = v34;
  v21(v7, v34);
  v23 = sub_29E4FCAD0();
  v21(v9, v22);
  swift_beginAccess();
  v24 = *(v11 + 16);
  if ((v23 & 1) != 0 || !v24)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    v27 = v24;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000046, 0x800000029E502D30);
    LOBYTE(v36) = v23 & 1;
    v28 = sub_29E4FC700();
    MEMORY[0x29ED8AD70](v28);

    MEMORY[0x29ED8AD70](0xD000000000000015, 0x800000029E502D80);
    v36 = v24;
    sub_29E4E7650();
    v29 = v27;
    v30 = sub_29E4FC700();
    MEMORY[0x29ED8AD70](v30);

    result = sub_29E4FCDE0();
    __break(1u);
  }

  else
  {
    v25 = v24;

    return v25;
  }

  return result;
}

uint64_t sub_29E4E6E4C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_29E4FC560();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FC580();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v56 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FC550();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_29E4FC5A0();
  v54 = *(v55 - 8);
  v17 = *(v54 + 64);
  v18 = MEMORY[0x2A1C7C4A8](a1);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v52 = &v42 - v22;
  if (v21)
  {
    v47 = v9;
    v48 = v7;
    v49 = v8;
    v50 = v4;
    v51 = v3;
    v23 = sub_29E4FBB40();
    v24 = sub_29E4E69E8();
    v25 = v23;
    sub_29E4FCA00();

    sub_29E4A1710(v61, v61[3]);
    v26 = sub_29E4FB2F0();
    if (sub_29E4FBDE0())
    {

      v27 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      v28 = sub_29E4FB590();
      v29 = v27;
      v30 = sub_29E4FB580();
      v46 = v30;
      [v29 setProfileIdentifier_];
      [v29 resume];
      sub_29E4FBE30();
      sub_29E4A76F0(v61, aBlock);
      v59 = v28;
      v60 = MEMORY[0x29EDC3970];
      v58 = v30;
      v45 = v29;

      v31 = sub_29E4FBE20();
      [v25 pushViewController:v31 animated:0];
      sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
      v44 = sub_29E4FCA70();
      sub_29E4FC590();
      *v16 = 4;
      (*(v13 + 104))(v16, *MEMORY[0x29EDCA238], v12);
      v42 = v25;
      v32 = v52;
      MEMORY[0x29ED8ABE0](v20, v16);
      (*(v13 + 8))(v16, v12);
      v43 = v24;
      v33 = v55;
      v54 = *(v54 + 8);
      (v54)(v20, v55);
      v34 = swift_allocObject();
      *(v34 + 16) = v53;
      *(v34 + 24) = v31;
      aBlock[4] = sub_29E4E7540;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29E4BB1B0;
      aBlock[3] = &unk_2A24E90A8;
      v35 = _Block_copy(aBlock);

      v36 = v31;
      v37 = v56;
      sub_29E4FC570();
      v58 = MEMORY[0x29EDCA190];
      sub_29E4E7560(&qword_2A1A70428, 255, MEMORY[0x29EDCA248]);
      sub_29E4E75A8();
      sub_29E4E7560(&qword_2A1A6F238, 255, sub_29E4E75A8);
      v38 = v48;
      v39 = v51;
      sub_29E4FCC70();
      v40 = v44;
      MEMORY[0x29ED8B070](v32, v37, v38, v35);
      _Block_release(v35);

      (*(v50 + 8))(v38, v39);
      (*(v47 + 8))(v37, v49);
      (v54)(v32, v33);

      sub_29E4A1754(v61);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_29E4FCDE0();
  __break(1u);
  return result;
}

uint64_t sub_29E4E7548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4E7560(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4E75A8()
{
  if (!qword_2A1A6F240)
  {
    sub_29E4FC560();
    v0 = sub_29E4FC800();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F240);
    }
  }
}

uint64_t sub_29E4E7600(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2A1C733A0](v1, 32, 7);
}

void sub_29E4E7650()
{
  if (!qword_2A184BB60)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BB60);
    }
  }
}

uint64_t sub_29E4E76C4@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E82C8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_29E4FB1E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v18 = [a1 identifier];
  sub_29E4FB230();

  v19 = sub_29E4FB200();
  v21 = v20;
  v22 = *(v6 + 8);
  v40 = v5;
  v38 = v22;
  v22(v9, v5);
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_29E4FCD70();
  MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
  MEMORY[0x29ED8AD70](v19, v21);

  MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
  v23 = sub_29E4FC6B0();

  v42 = a2;
  v24 = [a2 objectForKey_];

  if (v24)
  {
    sub_29E4FCC50();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (*(&v45 + 1))
  {
    v25 = swift_dynamicCast();
    (*(v15 + 56))(v13, v25 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v26 = *(v15 + 32);
      v27 = v41;
      v26(v41, v13, v14);
      v28 = [v39 identifier];
      sub_29E4FB230();

      v29 = sub_29E4FB200();
      v31 = v30;
      v38(v9, v40);
      *&v46[0] = 0;
      *(&v46[0] + 1) = 0xE000000000000000;
      sub_29E4FCD70();

      *&v46[0] = 0xD000000000000024;
      *(&v46[0] + 1) = 0x800000029E502DA0;
      MEMORY[0x29ED8AD70](v29, v31);

      MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
      v32 = sub_29E4FC6B0();

      v33 = [v42 integerForKey_];

      v34 = v43;
      v26(v43, v27, v14);
      v35 = type metadata accessor for CloudSyncFeedItemDismissInfo();
      *&v34[*(v35 + 20)] = v33;
      return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    }
  }

  else
  {
    sub_29E4E8400(v46, sub_29E4AD258);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_29E4E7C00(v13, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v37 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  return (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
}

uint64_t sub_29E4E7C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E4E82C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for CloudSyncFeedItemDismissInfo()
{
  result = qword_2A1A70A38;
  if (!qword_2A1A70A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4E7CD0()
{
  result = sub_29E4FB1E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E4E7D44(uint64_t *a1, int a2)
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

uint64_t sub_29E4E7D8C(uint64_t result, int a2, int a3)
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

uint64_t sub_29E4E7DD8(uint64_t a1)
{
  v2 = v1;
  sub_29E4E82C8(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E4FB240();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*v2 identifier];
  sub_29E4FB230();

  v32 = sub_29E4FB200();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  v33 = a1;
  sub_29E4E831C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29E4E7C00(v7, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
    v21 = *(v2 + 8);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
    v22 = v32;
    MEMORY[0x29ED8AD70](v32, v20);
    MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
    v23 = sub_29E4FC6B0();

    [v21 removeObjectForKey_];

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_29E4FCD70();

    v34 = 0xD000000000000024;
    v35 = 0x800000029E502DA0;
    MEMORY[0x29ED8AD70](v22, v20);

    MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
    v24 = sub_29E4FC6B0();

    [v21 removeObjectForKey_];

    return sub_29E4E7C00(v33, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  }

  else
  {
    sub_29E4E839C(v7, v12);
    v26 = *(v2 + 8);
    v27 = sub_29E4FB1A0();
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
    v28 = v32;
    MEMORY[0x29ED8AD70](v32, v20);
    MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
    v29 = sub_29E4FC6B0();

    [v26 setObject:v27 forKey:v29];

    v30 = *&v12[*(v8 + 20)];
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_29E4FCD70();

    v34 = 0xD000000000000024;
    v35 = 0x800000029E502DA0;
    MEMORY[0x29ED8AD70](v28, v20);

    MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
    v31 = sub_29E4FC6B0();

    [v26 setInteger:v30 forKey:v31];

    sub_29E4E7C00(v33, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
    return sub_29E4E8400(v12, type metadata accessor for CloudSyncFeedItemDismissInfo);
  }
}

void sub_29E4E82C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4E831C(uint64_t a1, uint64_t a2)
{
  sub_29E4E82C8(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E8400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4E8460(uint64_t a1)
{
  v3 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v22[-1] - v13;
  sub_29E4A76F0(v1, v22);
  v15 = sub_29E4A1710(v22, v22[3]);
  sub_29E4E76C4(*v15, v15[1], v14);
  v16 = 0;
  if (!(*(v4 + 48))(v14, 1, v3))
  {
    v16 = *&v14[*(v3 + 20)];
  }

  sub_29E4E956C(v14);
  sub_29E4A1754(v22);
  v17 = sub_29E4FB1E0();
  result = (*(*(v17 - 8) + 16))(v7, a1, v17);
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *&v7[*(v3 + 20)] = v16 + 1;
    sub_29E4E95F8(v7, v12);
    (*(v4 + 56))(v12, 0, 1, v3);
    v19 = *(v1 + 24);
    v20 = *(v1 + 32);
    sub_29E4A9F54(v1, v19);
    (*(v20 + 16))(v12, v19, v20);
    return sub_29E4E965C(v7);
  }

  return result;
}

uint64_t sub_29E4E86CC()
{
  v1 = sub_29E4FB1E0();
  v127 = *(v1 - 8);
  v128 = v1;
  v2 = *(v127 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v123 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FAFF0();
  v124 = *(v4 - 8);
  v125 = v4;
  v5 = *(v124 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v122 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC3C0();
  v8 = *(v7 - 8);
  v130 = v7;
  v131 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v120 = &v115 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v115 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v121 = &v115 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v115 - v20;
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v115 - v24;
  v26 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v118 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v119 = &v115 - v32;
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v117 = &v115 - v34;
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v37 = &v115 - v36;
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v40 = &v115 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v42 = &v115 - v41;
  v43 = v0[3];
  v126 = v0;
  v44 = sub_29E4A1710(v0, v43);
  sub_29E4E76C4(*v44, v44[1], v25);
  v45 = *(v27 + 48);
  v129 = v26;
  if (v45(v25, 1, v26) == 1)
  {
    sub_29E4E956C(v25);
    sub_29E4FC390();
    v46 = sub_29E4FC3B0();
    v47 = sub_29E4FC940();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_29E494000, v46, v47, "No dismiss info yet, show in summaryFeed", v48, 2u);
      MEMORY[0x29ED8BDB0](v48, -1, -1);
    }

    (*(v131 + 8))(v12, v130);
    return 1;
  }

  sub_29E4E839C(v25, v42);
  sub_29E4FC390();
  sub_29E4E95F8(v42, v40);
  v49 = sub_29E4FC3B0();
  v50 = sub_29E4FC940();
  v51 = os_log_type_enabled(v49, v50);
  v115 = v17;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v116 = v42;
    v54 = v53;
    v133[0] = v53;
    *v52 = 136446210;
    sub_29E4E95F8(v40, v37);
    v55 = sub_29E4FC700();
    v57 = v56;
    sub_29E4E965C(v40);
    v58 = sub_29E4F68F4(v55, v57, v133);
    v59 = v130;

    *(v52 + 4) = v58;
    _os_log_impl(&dword_29E494000, v49, v50, "Evaluate override hideInDiscover for dismiss info %{public}s", v52, 0xCu);
    sub_29E4A1754(v54);
    MEMORY[0x29ED8BDB0](v54, -1, -1);
    MEMORY[0x29ED8BDB0](v52, -1, -1);

    v42 = v116;
    v60 = *(v131 + 8);
    v60(v21, v59);
  }

  else
  {

    sub_29E4E965C(v40);
    v60 = *(v131 + 8);
    v60(v21, v130);
  }

  v61 = *(type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm() + 20);
  sub_29E4E9704(0, &qword_2A184BBD0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v62 = sub_29E4FB290();
  v63 = *(v62 - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_29E4FDE40;
  (*(v63 + 104))(v66 + v65, *MEMORY[0x29EDB9CB8], v62);
  sub_29E4E9768(v66);
  swift_setDeallocating();
  (*(v63 + 8))(v66 + v65, v62);
  swift_deallocClassInstance();
  v67 = v123;
  sub_29E4FB1D0();
  v68 = v122;
  sub_29E4FB260();

  (*(v127 + 8))(v67, v128);
  v69 = sub_29E4FAFE0();
  LOBYTE(v66) = v70;
  (*(v124 + 8))(v68, v125);
  if (v66)
  {
    v71 = v120;
    sub_29E4FC390();
    v72 = v118;
    sub_29E4E95F8(v42, v118);
    v73 = sub_29E4FC3B0();
    v74 = v42;
    v75 = sub_29E4FC920();
    if (os_log_type_enabled(v73, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v133[0] = v77;
      *v76 = 136446210;
      sub_29E4E9B10(&qword_2A184B7E8, MEMORY[0x29EDB9BC8]);
      v78 = sub_29E4FCF60();
      v80 = v79;
      sub_29E4E965C(v72);
      v81 = sub_29E4F68F4(v78, v80, v133);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_29E494000, v73, v75, "Failed to compute days from last dismissal date %{public}s to current date, show in discover", v76, 0xCu);
      sub_29E4A1754(v77);
      MEMORY[0x29ED8BDB0](v77, -1, -1);
      MEMORY[0x29ED8BDB0](v76, -1, -1);
    }

    else
    {

      sub_29E4E965C(v72);
    }

    v60(v71, v130);
    v85 = v74;
    goto LABEL_17;
  }

  v82 = *&v42[*(v129 + 20)];
  if (v82 == 2)
  {
    v83 = v121;
    v84 = v119;
    if (v69 < 30)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v83 = v121;
  v84 = v119;
  if (v82 == 1)
  {
    if (v69 < 7)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_29E4FC390();
    v87 = v117;
    sub_29E4E95F8(v42, v117);
    v88 = v42;
    v89 = sub_29E4FC3B0();
    v90 = sub_29E4FC940();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v116 = v88;
      v92 = v91;
      v93 = swift_slowAlloc();
      *v92 = 136446466;
      v132 = *(v87 + *(v129 + 20));
      v133[0] = v93;
      v94 = sub_29E4FCF60();
      v96 = v95;
      sub_29E4E965C(v87);
      v97 = sub_29E4F68F4(v94, v96, v133);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2082;
      v132 = v69;
      v98 = sub_29E4FCF60();
      v100 = sub_29E4F68F4(v98, v99, v133);

      *(v92 + 14) = v100;
      _os_log_impl(&dword_29E494000, v89, v90, "Dismissed %{public}s times and %{public}s days passed, show in discover", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v93, -1, -1);
      MEMORY[0x29ED8BDB0](v92, -1, -1);

      v60(v121, v130);
      v85 = v116;
    }

    else
    {

      sub_29E4E965C(v87);
      v60(v83, v130);
      v85 = v88;
    }

LABEL_17:
    sub_29E4E965C(v85);
    return 1;
  }

  if (v82 >= 3 && v69 >= 90)
  {
    goto LABEL_24;
  }

LABEL_26:
  v101 = v115;
  sub_29E4FC390();
  sub_29E4E95F8(v42, v84);
  v102 = v42;
  v103 = sub_29E4FC3B0();
  v104 = sub_29E4FC940();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 136446466;
    v132 = *(v84 + *(v129 + 20));
    v133[0] = v106;
    v116 = v102;
    v107 = sub_29E4FCF60();
    v109 = v108;
    sub_29E4E965C(v84);
    v110 = sub_29E4F68F4(v107, v109, v133);

    *(v105 + 4) = v110;
    *(v105 + 12) = 2082;
    v132 = v69;
    v111 = sub_29E4FCF60();
    v113 = sub_29E4F68F4(v111, v112, v133);

    *(v105 + 14) = v113;
    _os_log_impl(&dword_29E494000, v103, v104, "Dismissed %{public}s times but only %{public}s days passed, keep current hideInDiscover state", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v106, -1, -1);
    MEMORY[0x29ED8BDB0](v105, -1, -1);

    v60(v101, v130);
    v114 = v116;
  }

  else
  {

    sub_29E4E965C(v84);
    v60(v101, v130);
    v114 = v102;
  }

  sub_29E4E965C(v114);
  return 0;
}

uint64_t sub_29E4E9398()
{
  v0 = sub_29E4FB1E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB1D0();
  sub_29E4E8460(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29E4E9460()
{
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_29E4A9F54(v0, v6);
  return (*(v7 + 16))(v4, v6, v7);
}

uint64_t sub_29E4E956C(uint64_t a1)
{
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4E95F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E965C(uint64_t a1)
{
  v2 = type metadata accessor for CloudSyncFeedItemDismissInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm()
{
  result = qword_2A1A70978;
  if (!qword_2A1A70978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4E9704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4E9768(uint64_t a1)
{
  v2 = sub_29E4FB290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29E4E9A7C();
    v10 = sub_29E4FCD40();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_29E4E9B10(&qword_2A184BBE0, MEMORY[0x29EDB9D00]);
      v18 = sub_29E4FC650();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_29E4E9B10(&qword_2A184BBE8, MEMORY[0x29EDB9D00]);
          v25 = sub_29E4FC680();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29E4E9A7C()
{
  if (!qword_2A184BBD8)
  {
    sub_29E4FB290();
    sub_29E4E9B10(&qword_2A184BBE0, MEMORY[0x29EDB9D00]);
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BBD8);
    }
  }
}

uint64_t sub_29E4E9B10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E4E9B80()
{
  result = sub_29E4E9C04();
  if (v1 <= 0x3F)
  {
    result = sub_29E4FB2A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E4E9C04()
{
  result = qword_2A1A70988;
  if (!qword_2A1A70988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70988);
  }

  return result;
}

uint64_t sub_29E4E9C68(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  sub_29E4EBF84(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = sub_29E4FB460();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v8 = sub_29E4FBAA0();
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();
  v11 = sub_29E4FC3C0();
  v2[21] = v11;
  v12 = *(v11 - 8);
  v2[22] = v12;
  v13 = *(v12 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4E9E7C, 0, 0);
}

uint64_t sub_29E4E9E7C()
{
  v103 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29E4EBFE8(&qword_2A1A6FEF8, v4, type metadata accessor for SharingEntriesExecutor);
  sub_29E4FB310();
  v5 = v0[24];
  v6 = v0[10];
  sub_29E4EB12C();
  sub_29E4FC2A0();
  v7 = v0[8];
  sub_29E4FC350();

  v8 = sub_29E4FC3B0();
  v9 = sub_29E4FC940();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v12 = v0[22];
  v97 = v0[21];
  v86 = v7;
  if (v10)
  {
    v87 = v0[18];
    v90 = v9;
    v13 = v0[12];
    v92 = v0[24];
    v14 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v101 = v88;
    *v14 = 136446467;
    v0[7] = v13;
    swift_getMetatypeMetadata();
    v15 = sub_29E4FC700();
    v94 = v3;
    v17 = sub_29E4F68F4(v15, v16, &v101);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2081;
    v18 = MEMORY[0x29ED8AE00](v7, v87);
    v20 = sub_29E4F68F4(v18, v19, &v101);

    *(v14 + 14) = v20;
    v3 = v94;
    _os_log_impl(&dword_29E494000, v8, v90, "[%{public}s]: Running work plan with entries %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v88, -1, -1);
    MEMORY[0x29ED8BDB0](v14, -1, -1);

    v21 = *(v12 + 8);
    v21(v92, v97);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v97);
  }

  v22 = v0[11];
  v23 = sub_29E4FB300();
  v0[25] = v23;
  v25 = v24;
  v85 = v23;
  v83 = v21;
  v26 = v0[11];
  sub_29E4FB940();
  v27 = *(v3 + 16);
  sub_29E4FB2B0();
  v28 = sub_29E4FB5F0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v98 = sub_29E4FB5C0();
  v0[26] = v98;
  v93 = *(v26 + 32);
  v31 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];
  v95 = v31;
  v0[27] = v31;
  v34 = v7;
  v91 = *(v7 + 16);
  if (v91)
  {
    v35 = 0;
    v36 = v0[19];
    v37 = v0[15];
    v89 = v25;
    v38 = (v37 + 48);
    v84 = v37;
    v39 = (v37 + 32);
    v40 = MEMORY[0x29EDCA190];
    v41 = v85;
    while (v35 < *(v34 + 16))
    {
      v42 = v0[20];
      v43 = v0[13];
      (*(v36 + 16))(v42, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v0[18]);
      sub_29E4B7568(v42, v93, v95, v98, v41, v89, 0, 0xE000000000000000, v43);
      v45 = v0[13];
      v44 = v0[14];
      (*(v36 + 8))(v0[20], v0[18]);
      if ((*v38)(v45, 1, v44) == 1)
      {
        v31 = sub_29E4DE950(v0[13]);
      }

      else
      {
        v47 = v0[16];
        v46 = v0[17];
        v48 = v0[14];
        v49 = *v39;
        (*v39)(v46, v0[13], v48);
        v49(v47, v46, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_29E4A7D34(0, v40[2] + 1, 1, v40);
        }

        v51 = v40[2];
        v50 = v40[3];
        if (v51 >= v50 >> 1)
        {
          v40 = sub_29E4A7D34(v50 > 1, v51 + 1, 1, v40);
        }

        v52 = v0[16];
        v53 = v0[14];
        v40[2] = v51 + 1;
        v31 = (v49)(v40 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v51, v52, v53);
        v41 = v85;
        v34 = v86;
      }

      if (v91 == ++v35)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x29EDCA190];
LABEL_16:
    v54 = v0[23];
    v55 = v0[15];

    sub_29E4EBF84(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v56 = *(v55 + 72);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_29E4FDE40;
    sub_29E4B6FEC(v58 + v57);
    v101 = v40;

    sub_29E4A86D0(v58);
    v59 = v101;
    v0[28] = v101;
    sub_29E4FC350();

    v60 = sub_29E4FC3B0();
    v61 = sub_29E4FC940();

    v62 = os_log_type_enabled(v60, v61);
    v64 = v0[22];
    v63 = v0[23];
    v65 = v0[21];
    if (v62)
    {
      v99 = v0[23];
      v66 = v0[12];
      v67 = swift_slowAlloc();
      v96 = v65;
      v68 = v40;
      v69 = swift_slowAlloc();
      v100 = v69;
      v101 = v66;
      *v67 = 136446467;
      swift_getMetatypeMetadata();
      v70 = sub_29E4FC700();
      v72 = sub_29E4F68F4(v70, v71, &v100);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2081;
      v73 = v68[2];

      v0[9] = v73;
      v101 = sub_29E4FCF60();
      v102 = v74;
      MEMORY[0x29ED8AD70](0x656C69666F727020, 0xE900000000000073);
      v75 = sub_29E4F68F4(v101, v102, &v100);

      *(v67 + 14) = v75;
      _os_log_impl(&dword_29E494000, v60, v61, "[%{public}s]: Submitting profile entries feed items: %{private}s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v69, -1, -1);
      MEMORY[0x29ED8BDB0](v67, -1, -1);

      v77 = v96;
      v76 = v99;
    }

    else
    {

      v76 = v63;
      v77 = v65;
    }

    v83(v76, v77);
    v78 = v0[5];
    v79 = v0[6];
    sub_29E4A1710(v0 + 2, v78);
    v80 = *(MEMORY[0x29EDC3888] + 4);
    v81 = swift_task_alloc();
    v0[29] = v81;
    *v81 = v0;
    v81[1] = sub_29E4EA73C;
    v31 = v59;
    v32 = v78;
    v33 = v79;
  }

  return MEMORY[0x2A1C64D80](v31, v32, v33);
}

uint64_t sub_29E4EA73C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_29E4EA934;
  }

  else
  {
    v3 = sub_29E4EA850;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4EA850()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];

  swift_unknownObjectRelease();
  sub_29E4A1754(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_29E4EA934()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];

  swift_unknownObjectRelease();
  sub_29E4A1754(v0 + 2);
  v5 = v0[30];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29E4EAA04()
{
  v1 = *v0;
  v2 = sub_29E4FC300();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29E4FC110();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E4D0254();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E4FDE50;
  sub_29E4FC0F0();
  sub_29E4EBF84(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E4FDE40;
  *(v7 + 56) = sub_29E4FC2E0();
  *(v7 + 64) = sub_29E4EBFE8(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  sub_29E4A197C((v7 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  v8 = sub_29E4FC140();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v6 + 32) = sub_29E4FC120();
  v12 = v0[2];
  v11 = v0[3];
  v15[3] = swift_getObjectType();
  v15[4] = *(v11 + 8);
  v15[0] = v12;
  v13 = *(*(v11 + 16) + 8);
  sub_29E4EBFE8(&qword_2A1A6FFC8, 255, type metadata accessor for SharingEntriesExecutor.Planner);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v15);
}

uint64_t sub_29E4EACEC()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals;
  v3 = sub_29E4FC190();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4EADA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4EAE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4EBFE8(qword_2A1A6FFD0, 255, type metadata accessor for SharingEntriesExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4EAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4EBFE8(qword_2A1A6FFD0, 255, type metadata accessor for SharingEntriesExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t type metadata accessor for SharingEntriesExecutor.Planner()
{
  result = qword_2A1A6FFB8;
  if (!qword_2A1A6FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4EB038()
{
  result = sub_29E4FC190();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29E4EB12C()
{
  if (!qword_2A1A70490)
  {
    sub_29E4EBF84(255, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EB244(&qword_2A1A6F248, &unk_2A1A70588);
    sub_29E4EB244(&qword_2A1A6F250, &qword_2A1A70598);
    v0 = sub_29E4FC2B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70490);
    }
  }
}

uint64_t sub_29E4EB244(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E4EBF84(255, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EBFE8(a2, 255, MEMORY[0x29EDC1A38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4EB308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4E9C68(a1);
}

uint64_t sub_29E4EB39C(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v15 = *(v1 + 16);
  swift_unknownObjectRetain();
  v9 = [v8 profileIdentifier];
  (*(v4 + 16))(v7, a1, v3);
  v10 = type metadata accessor for SharingEntriesExecutor.Planner();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  *(v13 + OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_profileIdentifier) = v9;
  (*(v4 + 32))(v13 + OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals, v7, v3);
  return v13;
}

uint64_t sub_29E4EB4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4EBFE8(qword_2A1A6FF00, a2, type metadata accessor for SharingEntriesExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4EB5F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_29E4FBAA0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_29E4EB894()
{
  v0 = sub_29E4FC3C0();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E4FC1C0();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC1E0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = sub_29E4FC230();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = sub_29E4FC300();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  sub_29E4EBF84(0, &qword_2A1A704D8, type metadata accessor for SharingEntryProfileInformationInputSignal, MEMORY[0x29EDC34D8]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v18 = &v37 - v17;
  sub_29E4FC2F0();
  type metadata accessor for SharingEntryProfileInformationInputSignal();
  sub_29E4FC180();
  sub_29E4EBFE8(&unk_2A1A6F630, 255, type metadata accessor for SharingEntryProfileInformationInputSignal);
  sub_29E4FC2C0();
  (*(v15 + 8))(v18, v14);
  v19 = v42;
  if (!v42)
  {
    goto LABEL_5;
  }

  sub_29E4EBF84(0, &qword_2A1A6F0C8, sub_29E4EB12C, MEMORY[0x29EDC9E90]);
  sub_29E4EB12C();
  v21 = *(*(v20 - 8) + 72);
  v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v24 = v41;
  (*(v3 + 104))(v6, *MEMORY[0x29EDC3500], v41);
  sub_29E4FC1D0();
  (*(v3 + 8))(v6, v24);
  v25 = *(v19 + 16);
  if (!v25)
  {

    v26 = MEMORY[0x29EDCA190];
    goto LABEL_9;
  }

  v26 = sub_29E4A8490(*(v19 + 16), 0);
  v27 = *(sub_29E4FBAA0() - 8);
  v28 = sub_29E4EB5F0(&v42, (v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80))), v25, v19);
  sub_29E4C4CA8();
  if (v28 == v25)
  {
LABEL_9:
    v42 = v26;
    sub_29E4EBF84(0, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EB244(&qword_2A1A6F248, &unk_2A1A70588);
    sub_29E4EB244(&qword_2A1A6F250, &qword_2A1A70598);
    sub_29E4FC290();
    return v23;
  }

  __break(1u);
LABEL_5:
  v30 = v38;
  v29 = v39;
  v31 = v40;
  sub_29E4FC350();
  v32 = sub_29E4FC3B0();
  v33 = sub_29E4FC940();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_29E4F68F4(0xD00000000000001ELL, 0x800000029E502E80, &v42);
    _os_log_impl(&dword_29E494000, v32, v33, "[%{public}s]: No sharing entry information anchor", v34, 0xCu);
    sub_29E4A1754(v35);
    MEMORY[0x29ED8BDB0](v35, -1, -1);
    MEMORY[0x29ED8BDB0](v34, -1, -1);
  }

  (*(v30 + 8))(v31, v29);
  return MEMORY[0x29EDCA190];
}

void sub_29E4EBF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4EBFE8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SummarySharingInformationTileViewController.baseIdentifier.getter()
{
  v1 = (v0 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummarySharingInformationTileViewController.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SummarySharingInformationTileViewController.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2A58];
  v3 = sub_29E4FBF70();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SummarySharingInformationTileViewController.syncObserver.getter()
{
  v1 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SummarySharingInformationTileViewController.syncObserver.setter(uint64_t a1)
{
  v3 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_29E4EC358(uint64_t *a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  v9 = v4;
  sub_29E4EF438(0, &qword_2A1A70568, MEMORY[0x29EDC29C0]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *(v4 + *a1);
  if (v15)
  {
    v16 = *(v4 + *a1);
  }

  else
  {
    sub_29E4FC010();
    a2();
    a3();
    a4();
    v17 = sub_29E4FBEF0();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = objc_allocWithZone(sub_29E4FBF10());
    v19 = sub_29E4FBF00();
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = *(v9 + v14);
    *(v9 + v14) = v19;
    v16 = v19;

    v15 = 0;
  }

  v21 = v15;
  return v16;
}

void *_s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0()
{
  v0 = sub_29E4FCBC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FCBF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v27 - v16;
  sub_29E4FCBE0();
  v18 = _UISolariumEnabled();
  v19 = MEMORY[0x29EDC78A0];
  if (!v18)
  {
    v19 = MEMORY[0x29EDC7898];
  }

  (*(v6 + 104))(v9, *v19, v5);
  sub_29E4FCB80();
  v20 = _UISolariumEnabled();
  v21 = MEMORY[0x29EDC78C8];
  if (!v20)
  {
    v21 = MEMORY[0x29EDC78B8];
  }

  (*(v1 + 104))(v4, *v21, v0);
  sub_29E4FCB60();
  v22 = objc_opt_self();
  v23 = [v22 systemBlueColor];
  sub_29E4FCB90();
  v24 = [v22 systemWhiteColor];
  sub_29E4FCBA0();
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  sub_29E4FCBD0();
  sub_29E4A2AD8(0, &unk_2A1A6F160, 0x29EDC7958);
  (*(v11 + 16))(v15, v17, v10);
  v25 = sub_29E4FCC00();
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v25 setRole_];
  }

  (*(v11 + 8))(v17, v10);
  return v25;
}

void *_s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0()
{
  v0 = sub_29E4FCBC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FCBF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v27 - v16;
  sub_29E4FCBE0();
  v18 = _UISolariumEnabled();
  v19 = MEMORY[0x29EDC78A0];
  if (!v18)
  {
    v19 = MEMORY[0x29EDC7898];
  }

  (*(v6 + 104))(v9, *v19, v5);
  sub_29E4FCB80();
  v20 = _UISolariumEnabled();
  v21 = MEMORY[0x29EDC78C8];
  if (!v20)
  {
    v21 = MEMORY[0x29EDC78B8];
  }

  (*(v1 + 104))(v4, *v21, v0);
  sub_29E4FCB60();
  v22 = objc_opt_self();
  v23 = [v22 tertiarySystemFillColor];
  sub_29E4FCB90();
  v24 = [v22 systemBlueColor];
  sub_29E4FCBA0();
  sub_29E4FBE90();
  sub_29E4FBE80();
  sub_29E4FCBD0();
  sub_29E4A2AD8(0, &unk_2A1A6F160, 0x29EDC7958);
  (*(v11 + 16))(v15, v17, v10);
  v25 = sub_29E4FCC00();
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v25 setRole_];
  }

  (*(v11 + 8))(v17, v10);
  return v25;
}

id sub_29E4ECC88(uint64_t *a1, SEL *a2, void (*a3)(id))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = *(v3 + qword_2A1A70800);
    v9 = [v8 *a2];
    a3([v8 frame]);
    v10 = [v9 constraintEqualToConstant_];

    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

UIImage_optional __swiftcall SummarySharingInformationTileViewController.makeHeaderImage()()
{
  sub_29E4FC010();
  v0 = sub_29E4FBFF0();
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t SummarySharingInformationTileViewController.makeBullets()()
{
  sub_29E4EF3E8(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E500FC0;
  *(v0 + 32) = sub_29E4EC2C8();
  *(v0 + 40) = sub_29E4EC310();
  *(v0 + 48) = sub_29E4EC4F0();
  return v0;
}

uint64_t SummarySharingInformationTileViewController.makeButtons()()
{
  v1 = *(v0 + qword_2A1A70800);
  [v1 addTarget:v0 action:sel_presentNextViewController forControlEvents:64];
  v2 = *(v0 + qword_2A1A707E8);
  [v2 addTarget:v0 action:sel_presentShareSheet_ forControlEvents:64];
  sub_29E4EF3E8(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E4FFE90;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = v1;
  v5 = v2;
  return v3;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E4EF438(0, &qword_2A1A707A0, MEMORY[0x29EDCA298]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v34 - v4;
  sub_29E4ED3FC();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SummarySharingInformationTileViewController();
  v41.receiver = v0;
  v41.super_class = v11;
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v12 = sub_29E4FBF30();
  sub_29E4FC010();
  sub_29E4FC000();
  v13 = sub_29E4FC6B0();

  [v12 setText_];

  v14 = sub_29E4FBF20();
  v15 = sub_29E4FBFF0();
  [v14 setImage_];

  sub_29E4FBF40();
  v16 = v40;
  if (v40)
  {
    sub_29E4A2AD8(0, &unk_2A1A6F1B0, 0x29EDBAA98);
    v17 = sub_29E4A1710(v39, v16);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x2A1C7C4A8](v17);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_29E4FBE00();
    (*(v18 + 8))(v21, v16);
    v23 = sub_29E4FCAC0();

    sub_29E4A1754(v39);
    v39[0] = v23;
    sub_29E4ED4C8();
    sub_29E4EE454(&qword_2A1A70450, sub_29E4ED4C8);
    v24 = sub_29E4FC4E0();

    v25 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
    swift_beginAccess();
    v26 = *&v1[v25];
    *&v1[v25] = v24;

    sub_29E4EDE68();
    if (*&v1[v25])
    {
      v38 = *&v1[v25];
      sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);

      v27 = sub_29E4FCA70();
      v37 = v27;
      v28 = sub_29E4FCA50();
      (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      sub_29E4ED5B0();
      sub_29E4FC530();
      sub_29E4EEE0C(v5, &qword_2A1A707A0, MEMORY[0x29EDCA298]);

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v31 = ObjectType;
      *(v30 + 16) = v29;
      *(v30 + 24) = v31;
      sub_29E4EE454(&qword_2A1A70460, sub_29E4ED3FC);
      v32 = sub_29E4FC540();

      (*(v35 + 8))(v10, v7);
    }

    else
    {
      v32 = 0;
    }

    v33 = *&v1[qword_2A1A707E0];
    *&v1[qword_2A1A707E0] = v32;
  }

  else
  {
    __break(1u);
  }
}

void sub_29E4ED3FC()
{
  if (!qword_2A1A70458)
  {
    sub_29E4ED4C8();
    sub_29E4A2AD8(255, &qword_2A1A70790, 0x29EDCA548);
    sub_29E4EE454(&qword_2A1A70450, sub_29E4ED4C8);
    sub_29E4ED5B0();
    v0 = sub_29E4FC400();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70458);
    }
  }
}

void sub_29E4ED4C8()
{
  if (!qword_2A1A70448)
  {
    sub_29E4ED530();
    v0 = sub_29E4FC430();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70448);
    }
  }
}

void sub_29E4ED530()
{
  if (!qword_2A1A6F0A8)
  {
    sub_29E4A2AD8(255, &qword_2A1A70788, 0x29EDBAAA0);
    sub_29E4AD188();
    v0 = sub_29E4FD060();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0A8);
    }
  }
}

unint64_t sub_29E4ED5B0()
{
  result = qword_2A1A70798;
  if (!qword_2A1A70798)
  {
    sub_29E4A2AD8(255, &qword_2A1A70790, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70798);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingInformationTileViewController()
{
  result = qword_2A1A707A8;
  if (!qword_2A1A707A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4ED664(uint64_t a1)
{
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4EF438(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v35[-v9];
  v11 = *a1;
  v12 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12)
    {
LABEL_9:
      [*&v14[qword_2A1A70800] setEnabled_];
      [*&v14[qword_2A1A707E8] setEnabled_];

      return;
    }

    v15 = v11;
    v16 = [v15 restoreCompletionDate];
    if (v16)
    {
      v17 = v16;
      sub_29E4FB1C0();
      sub_29E4EF3DC(v11);

      v18 = sub_29E4FB1E0();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
      sub_29E4EEE0C(v10, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      goto LABEL_9;
    }

    v19 = sub_29E4FB1E0();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_29E4EEE0C(v10, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    if (![v15 syncEnabled])
    {
LABEL_8:
      sub_29E4EF3DC(v11);
      goto LABEL_9;
    }

    v20 = [v15 errorRequiringUserAction];
    if (v20)
    {

      goto LABEL_8;
    }

    sub_29E4FC360();
    v21 = v15;
    v22 = sub_29E4FC3B0();
    v23 = sub_29E4FC910();
    sub_29E4EF3DC(v11);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v23;
      v25 = v24;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v25 = 136315394;
      v26 = sub_29E4FD0B0();
      v28 = sub_29E4F68F4(v26, v27, &v38);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = [v21 description];
      v30 = sub_29E4FC6F0();
      v32 = v31;

      v33 = sub_29E4F68F4(v30, v32, &v38);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_29E494000, v22, v36, "[%s]: First restore in progress disabling sharing setup buttons %s", v25, 0x16u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v34, -1, -1);
      MEMORY[0x29ED8BDB0](v25, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    [*&v14[qword_2A1A70800] setEnabled_];
    [*&v14[qword_2A1A707E8] setEnabled_];

    sub_29E4EF3DC(v11);
  }
}

void sub_29E4EDAE4(void *a1)
{
  v1 = a1;
  SummarySharingInformationTileViewController.viewDidLoad()();
}

uint64_t sub_29E4EDB2C()
{
  result = sub_29E4FBF40();
  v1 = v11;
  if (v11)
  {
    v2 = sub_29E4A1710(v10, v11);
    v3 = *(v1 - 8);
    v4 = *(v3 + 64);
    MEMORY[0x2A1C7C4A8](v2);
    v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v6);
    v7 = sub_29E4FBE00();
    (*(v3 + 8))(v6, v1);
    sub_29E4FCA00();
    type metadata accessor for SummarySharingInformationTileViewController();
    sub_29E4EE454(&qword_2A184BC10, type metadata accessor for SummarySharingInformationTileViewController);
    sub_29E4FBEA0();

    sub_29E4A1754(v9);
    return sub_29E4A1754(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E4EDCD0(void *a1)
{
  v1 = a1;
  sub_29E4EDB2C();
}

uint64_t sub_29E4EDD18(void *a1)
{
  v2 = MEMORY[0x29EDC1550];
  sub_29E4EF438(0, &qword_2A184BC08, MEMORY[0x29EDC1550]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v10[-v5];
  swift_unknownObjectRetain();
  v7 = a1;
  sub_29E4FCC50();
  swift_unknownObjectRelease();
  sub_29E4FBF60();
  v8 = sub_29E4FBAD0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_29E4AD310(v11, v10);
  MEMORY[0x29ED8A580](v7, v6, v10);

  sub_29E4AD1FC(v10);
  sub_29E4EEE0C(v6, &qword_2A184BC08, v2);
  return sub_29E4A1754(v11);
}

void sub_29E4EDE68()
{
  v1 = v0;
  v2 = *MEMORY[0x29EDC43E0];
  v37 = sub_29E4FC6F0();
  v38 = v3;

  MEMORY[0x29ED8AD70](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x29ED8AD70](0x6472616F626E4F2ELL, 0xEF656C6954676E69);

  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;

    MEMORY[0x29ED8AD70](0x776569562ELL, 0xE500000000000000);
    v6 = sub_29E4FC6B0();

    [v5 setAccessibilityIdentifier_];

    v7 = &v0[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
    swift_beginAccess();
    v8 = v7[1];
    *v7 = v37;
    v7[1] = v38;

    v9 = sub_29E4FBF20();
    sub_29E4EF3E8(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29E4FEDE0;
    *(v10 + 32) = v37;
    *(v10 + 40) = v38;
    *(v10 + 48) = 0x6D49726564616548;
    *(v10 + 56) = 0xEB00000000656761;

    v11 = sub_29E4FC7B0();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
    v13 = sub_29E4FBF30();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29E4FEDE0;
    *(v14 + 32) = v37;
    *(v14 + 40) = v38;
    *(v14 + 48) = 0x6954726564616548;
    *(v14 + 56) = 0xEB00000000656C74;

    v15 = sub_29E4FC7B0();

    v16 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier_];
    v17 = sub_29E4EC2C8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29E4FEDE0;
    *(v18 + 32) = v37;
    *(v18 + 40) = v38;
    *(v18 + 48) = 0x6E4F74656C6C7542;
    *(v18 + 56) = 0xE900000000000065;

    v19 = sub_29E4FC7B0();

    v20 = HKUIJoinStringsForAutomationIdentifier();

    [v17 setAccessibilityIdentifier_];
    v21 = sub_29E4EC310();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29E4FEDE0;
    *(v22 + 32) = v37;
    *(v22 + 40) = v38;
    *(v22 + 48) = 0x775474656C6C7542;
    *(v22 + 56) = 0xE90000000000006FLL;

    v23 = sub_29E4FC7B0();

    v24 = HKUIJoinStringsForAutomationIdentifier();

    [v21 setAccessibilityIdentifier_];
    v25 = sub_29E4EC4F0();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29E4FEDE0;
    *(v26 + 32) = v37;
    *(v26 + 40) = v38;
    *(v26 + 48) = 0x685474656C6C7542;
    *(v26 + 56) = 0xEB00000000656572;

    v27 = sub_29E4FC7B0();

    v28 = HKUIJoinStringsForAutomationIdentifier();

    [v25 setAccessibilityIdentifier_];
    v29 = *&v1[qword_2A1A70800];
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_29E4FEDE0;
    *(v30 + 32) = v37;
    *(v30 + 40) = v38;
    *(v30 + 48) = 0x7475426572616853;
    *(v30 + 56) = 0xEB000000006E6F74;

    v31 = sub_29E4FC7B0();

    v32 = HKUIJoinStringsForAutomationIdentifier();

    [v29 setAccessibilityIdentifier_];
    v33 = *&v1[qword_2A1A707E8];
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_29E4FEDE0;
    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 48) = 0xD000000000000014;
    *(v34 + 56) = 0x800000029E503040;
    v35 = sub_29E4FC7B0();

    v36 = HKUIJoinStringsForAutomationIdentifier();

    [v33 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E4EE44C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_29E4ED664(a1);
}

uint64_t sub_29E4EE454(unint64_t *a1, void (*a2)(uint64_t))
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

id SummarySharingInformationTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29E4FC6B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SummarySharingInformationTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[direct field offset for SummarySharingInformationTileViewController.syncObserver] = 0;
  *&v3[qword_2A1A707E0] = 0;
  *&v3[qword_2A1A707D8] = 0;
  *&v3[qword_2A1A707D0] = 0;
  *&v3[qword_2A1A707C8] = 0;
  v7 = qword_2A1A70800;
  *&v3[v7] = _s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  v8 = qword_2A1A707E8;
  *&v3[v8] = _s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  *&v3[qword_2A1A707C0] = 0;
  *&v3[qword_2A1A707B8] = 0;
  if (a2)
  {
    v9 = sub_29E4FC6B0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SummarySharingInformationTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29E4EE630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29E4FC6F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SummarySharingInformationTileViewController.init(nibName:bundle:)(v5, v7, a4);
}

id SummarySharingInformationTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingInformationTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[direct field offset for SummarySharingInformationTileViewController.syncObserver] = 0;
  *&v1[qword_2A1A707E0] = 0;
  *&v1[qword_2A1A707D8] = 0;
  *&v1[qword_2A1A707D0] = 0;
  *&v1[qword_2A1A707C8] = 0;
  v4 = qword_2A1A70800;
  *&v1[v4] = _s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  v5 = qword_2A1A707E8;
  *&v1[v5] = _s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  *&v1[qword_2A1A707C0] = 0;
  *&v1[qword_2A1A707B8] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SummarySharingInformationTileViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_29E4EE7EC()
{
  v1 = *(v0 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier + 8);

  v2 = *(v0 + direct field offset for SummarySharingInformationTileViewController.syncObserver);

  v3 = *(v0 + qword_2A1A707E0);

  v4 = *(v0 + qword_2A1A707B8);
}

id SummarySharingInformationTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingInformationTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E4EE8E8(uint64_t a1)
{
  v2 = *(a1 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier + 8);

  v3 = *(a1 + direct field offset for SummarySharingInformationTileViewController.syncObserver);

  v4 = *(a1 + qword_2A1A707E0);

  v5 = *(a1 + qword_2A1A707B8);
}

uint64_t sub_29E4EE9B8()
{
  v1 = (*v0 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_29E4EEA14(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_29E4EEA78())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.displayLoadingState()()
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v16 - v7;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v16 - v9;
  v11 = sub_29E4ECC38();
  v12 = *(v0 + qword_2A1A70800);
  [v12 frame];
  [v11 setConstant_];

  v13 = sub_29E4ECC60();
  [v12 frame];
  [v13 setConstant_];

  [*(v0 + qword_2A1A707C0) setActive_];
  [*(v0 + qword_2A1A707B8) setActive_];
  sub_29E4FCC10();
  v14 = sub_29E4FCBF0();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v10, 1, v14))
  {
    sub_29E4EED8C(v10, v5);
    sub_29E4FCC20();
    sub_29E4EEE0C(v10, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBD0();
    sub_29E4FCC20();
  }

  sub_29E4FCC10();
  if (v15(v8, 1, v14))
  {
    sub_29E4EED8C(v8, v5);
    sub_29E4FCC20();
    sub_29E4EEE0C(v8, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBB0();
    sub_29E4FCC20();
  }

  [v12 setEnabled_];
}

uint64_t sub_29E4EED8C(uint64_t a1, uint64_t a2)
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4EEE0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E4EF438(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.hideLoadingState()()
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v16 - v7;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v16 - v9;
  v11 = sub_29E4ECC38();
  [v11 setActive_];

  v12 = sub_29E4ECC60();
  [v12 setActive_];

  v13 = *(v0 + qword_2A1A70800);
  sub_29E4FCC10();
  v14 = sub_29E4FCBF0();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v10, 1, v14))
  {
    sub_29E4EED8C(v10, v5);
    sub_29E4FCC20();
    sub_29E4EEE0C(v10, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    sub_29E4FB050();
    sub_29E4FCBD0();
    sub_29E4FCC20();
  }

  sub_29E4FCC10();
  if (v15(v8, 1, v14))
  {
    sub_29E4EED8C(v8, v5);
    sub_29E4FCC20();
    sub_29E4EEE0C(v8, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBB0();
    sub_29E4FCC20();
  }

  [v13 setEnabled_];
}

uint64_t sub_29E4EF18C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2A58];
  v3 = sub_29E4FBF70();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E4EF200()
{
  v1 = *v0;
  v2 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_29E4EF24C(uint64_t a1)
{
  v3 = *v1;
  v4 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_29E4EF2A8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_29E4EF3E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E4EF438(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4EF508()
{
  result = sub_29E4FC6B0();
  qword_2A1A70D08 = result;
  return result;
}

uint64_t sub_29E4EF540()
{
  result = sub_29E4FC6B0();
  qword_2A1A70D00 = result;
  return result;
}

uint64_t sub_29E4EF578@<X0>(_BYTE *a1@<X8>)
{
  v26 = sub_29E4FC3C0();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v26);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v25 - v6;
  v8 = qword_2A1A70828;
  swift_beginAccess();
  result = sub_29E4F1B98(v1 + v8, v27);
  v10 = v28;
  if (v28)
  {
    v11 = sub_29E4A1710(v27, v28);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x2A1C7C4A8](v11);
    v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_29E4FBE10();
    v18 = v17;
    (*(v12 + 8))(v15, v10);
    sub_29E4A1754(v27);
    if (v18 >> 60 == 15)
    {
      sub_29E4FC390();
      v19 = sub_29E4FC3B0();
      v20 = sub_29E4FC930();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_29E494000, v19, v20, "No user data in context found in CloudSyncTileViewController", v21, 2u);
        MEMORY[0x29ED8BDB0](v21, -1, -1);
      }

      (*(v3 + 8))(v7, v26);
      *a1 = 5;
      sub_29E4FB7F0();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v22 = sub_29E4FAF40();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_29E4FAF30();
      sub_29E4FB7F0();
      sub_29E4F1AD4(&qword_2A1A705E8, MEMORY[0x29EDC16F8]);
      sub_29E4FAF20();

      return sub_29E4A1B80(v16, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4EFA38@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_29E4FB1E0();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FBB50();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v40 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v40 - v13;
  v15 = sub_29E4FB7F0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v40 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v40 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v40 - v26;
  sub_29E4EF578(&v40 - v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_29E4FBC60();
      }

      else
      {
        sub_29E4FBC20();
      }

      return sub_29E4F2478(v27, MEMORY[0x29EDC16F8]);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_29E4F24D8(v27, v19);
        v29 = *v19;
        if (v29 == 2)
        {
          goto LABEL_20;
        }

        if (v29 == 1)
        {
          sub_29E4FCA10();
          v39 = v43;
          v38 = v44;
          if ((*(v43 + 88))(v9, v44) == *MEMORY[0x29EDC1D40])
          {
            sub_29E4FBC00();
          }

          else
          {
            sub_29E4FBBB0();
            (*(v39 + 8))(v9, v38);
          }

          return sub_29E4F2478(v27, MEMORY[0x29EDC16F8]);
        }

        if (*v19)
        {
LABEL_20:
          sub_29E4FBBA0();
        }

        else
        {
          sub_29E4FBB90();
        }
      }

      else
      {
        sub_29E4F24D8(v27, v22);
        v35 = v41;
        v36 = v22;
        v37 = v42;
        (*(v41 + 32))(v4, v36, v42);
        sub_29E4FBC50();
        (*(v35 + 8))(v4, v37);
      }

      return sub_29E4F2478(v27, MEMORY[0x29EDC16F8]);
    }

    sub_29E4F24D8(v27, v25);
    if (*v25)
    {
      sub_29E4FCA10();
      v31 = v43;
      v30 = v44;
      if ((*(v43 + 88))(v12, v44) == *MEMORY[0x29EDC1D40])
      {
        sub_29E4FBC10();
      }

      else
      {
        sub_29E4FBBD0();
        (*(v31 + 8))(v12, v30);
      }

      return sub_29E4F2478(v27, MEMORY[0x29EDC16F8]);
    }
  }

  sub_29E4F2478(v27, MEMORY[0x29EDC16F8]);
  sub_29E4FCA10();
  v33 = v43;
  v32 = v44;
  if ((*(v43 + 88))(v14, v44) == *MEMORY[0x29EDC1D40])
  {
    return sub_29E4FBBF0();
  }

  sub_29E4FBBC0();
  return (*(v33 + 8))(v14, v32);
}

uint64_t sub_29E4EFEA8()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC360();
  v7 = sub_29E4FC3B0();
  v8 = sub_29E4FC900();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29E494000, v7, v8, "CloudSyncTileViewController loaded", v9, 2u);
    MEMORY[0x29ED8BDB0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for CloudSyncTileViewController(0);
  v13.receiver = v1;
  v13.super_class = v10;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  v11 = sub_29E4FC6B0();

  [v1 setTitle_];

  return (*((*MEMORY[0x29EDCA1E8] & *v1) + qword_2A1A70CF0 + 64))();
}

void sub_29E4F013C(void *a1)
{
  v1 = a1;
  sub_29E4EFEA8();
}

uint64_t sub_29E4F0190()
{
  v1 = v0;
  v2 = sub_29E4FBAE0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FB7F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB240();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CloudSyncResolutionInfo();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4EF578(v15);
  v16 = &v15[*(v12 + 20)];
  sub_29E4FB1D0();
  v17 = sub_29E4FAF70();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4F1AD4(&qword_2A184BC28, type metadata accessor for CloudSyncResolutionInfo);
  v49 = v15;
  v20 = sub_29E4FAF50();
  v22 = v21;

  v23 = qword_2A1A70828;
  swift_beginAccess();
  result = sub_29E4F1B98(v1 + v23, &v54);
  v25 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v26 = sub_29E4A1710(&v54, *(&v55 + 1));
    v27 = *(v25 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x2A1C7C4A8](v26);
    v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30);
    v31 = sub_29E4FBE00();
    (*(v27 + 8))(v30, v25);
    v32 = [v31 profileIdentifier];

    sub_29E4A1754(&v54);
    v33 = [objc_opt_self() standardUserDefaults];
    if (v22 >> 60 == 15)
    {
      v34 = 0;
      v35 = v20;
    }

    else
    {
      v35 = v20;
      sub_29E4C7648(v20, v22);
      v34 = sub_29E4FB150();
      sub_29E4A1B80(v20, v22);
    }

    v36 = v32;
    v37 = [v32 identifier];
    sub_29E4FB230();

    v38 = sub_29E4FB200();
    v40 = v39;
    (*(v47 + 8))(v11, v48);
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD00000000000001DLL, 0x800000029E5028B0);
    MEMORY[0x29ED8AD70](v38, v40);

    MEMORY[0x29ED8AD70](0xD00000000000001CLL, 0x800000029E5028D0);
    v41 = sub_29E4FC6B0();

    [v33 setObject:v34 forKey:v41];

    swift_unknownObjectRelease();
    v42 = *(v1 + qword_2A1A70830);
    sub_29E4F1AD4(&qword_2A184BC30, type metadata accessor for CloudSyncTileViewController);
    swift_unknownObjectRetain();
    sub_29E4FBB70();
    v43 = v50;
    sub_29E4EF578(v50);
    sub_29E4FBB60();
    sub_29E4F2478(v43, MEMORY[0x29EDC16F8]);
    sub_29E4FBB00();
    v45 = v51;
    v44 = v52;
    v46 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x29EDC1B98], v53);
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_29E4FBAF0();

    sub_29E4A1B80(v35, v22);
    sub_29E4A7694(&v54, &qword_2A184BC38, &qword_2A184BC40);
    (*(v44 + 8))(v45, v46);
    return sub_29E4F2478(v49, type metadata accessor for CloudSyncResolutionInfo);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E4F0808(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = &a1[qword_2A1A70828];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = qword_2A1A70830;
  v10 = objc_allocWithZone(sub_29E4FBB80());
  v11 = a4;
  *&a1[v9] = [v10 init];
  if (v7)
  {
    v12 = sub_29E4FC6B0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = a1;
  v15.super_class = type metadata accessor for CloudSyncTileViewController(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, v11);

  return v13;
}

id sub_29E4F0908(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A1A70828];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A1A70830;
  v7 = objc_allocWithZone(sub_29E4FBB80());
  v8 = a3;
  *&a1[v6] = [v7 init];
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CloudSyncTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

void sub_29E4F09CC()
{
  sub_29E4A7694(v0 + qword_2A1A70828, &qword_2A1A70570, &qword_2A1A70578);
  v1 = *(v0 + qword_2A1A70830);
}

void sub_29E4F0A3C(uint64_t a1)
{
  sub_29E4A7694(a1 + qword_2A1A70828, &qword_2A1A70570, &qword_2A1A70578);
  v2 = *(a1 + qword_2A1A70830);
}

uint64_t sub_29E4F0B08@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A70828;
  swift_beginAccess();
  return sub_29E4F1B98(v1 + v3, a1);
}

uint64_t sub_29E4F0B60(uint64_t a1)
{
  v3 = qword_2A1A70828;
  swift_beginAccess();
  sub_29E4F1B1C(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x29EDCA1E8] & *v1) + qword_2A1A70CF0 + 64))();
  }

  return sub_29E4A7694(a1, &qword_2A1A70570, &qword_2A1A70578);
}

uint64_t (*sub_29E4F0C44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E4F0CA8;
}

uint64_t sub_29E4F0CA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x29EDCA1E8] & **(a1 + 24)) + qword_2A1A70CF0 + 64))();
    }
  }

  return result;
}

uint64_t sub_29E4F0D4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29E4C5574();
    v2 = sub_29E4FCE20();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_29E4A2C58(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_29E4A2C58(v32, v33);
    v17 = *(v2 + 40);
    result = sub_29E4FCCE0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_29E4A2C58(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

void sub_29E4F1018()
{
  v1 = *v0;
  v2 = sub_29E4FBDB0();
  sub_29E4FBDD0();
}

void sub_29E4F10AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  v1 = sub_29E4FC6B0();

  [v0 setTitle_];
}

void sub_29E4F11D0(void *a1)
{
  v1 = a1;
  sub_29E4F10AC();
}

uint64_t sub_29E4F1224(SEL *a1)
{
  v16 = a1;
  v1 = sub_29E4FBC70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v15 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v15 - v10;
  sub_29E4EFA38(&v15 - v10);
  v15 = sub_29E4FBC30();
  v12 = *(v2 + 8);
  v12(v11, v1);
  sub_29E4EFA38(v9);
  sub_29E4FBBE0();
  v12(v9, v1);
  sub_29E4EFA38(v6);
  sub_29E4FBC40();
  v12(v6, v1);
  v13 = [objc_opt_self() *v16];
  sub_29E4FBDC0();
}

id sub_29E4F1444(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v6 = a4;
    v7 = sub_29E4FC6B0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29E4F14E8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E4F157C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E4F15C4()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  sub_29E4FC390();
  v7 = sub_29E4FC3B0();
  v8 = sub_29E4FC940();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29E494000, v7, v8, "Did dismiss cloud sync alert", v9, 2u);
    MEMORY[0x29ED8BDB0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_29E4A2AD8(0, &qword_2A184B470, 0x29EDBA088);
  v10 = sub_29E4FC9F0();
  if (qword_2A1A708E0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A70D08;
  v12 = qword_2A1A70828;
  swift_beginAccess();
  sub_29E4F1B98(v1 + v12, v28);
  v13 = v29;
  if (v29)
  {
    v14 = sub_29E4A1710(v28, v29);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x2A1C7C4A8](v14);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
    (*(v15 + 16))(v18);
    v19 = v11;
    v20 = sub_29E4FBE00();
    (*(v15 + 8))(v18, v13);
    v21 = [v20 profileIdentifier];

    sub_29E4F2260();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FDE40;
    *(inited + 32) = 0xD000000000000011;
    v23 = inited + 32;
    *(inited + 40) = 0x800000029E5030F0;
    *(inited + 48) = v21;
    v24 = sub_29E4A2968(inited);
    swift_setDeallocating();
    sub_29E4F2478(v23, sub_29E4F22B8);
    sub_29E4A1754(v28);
    sub_29E4F0D4C(v24);

    v25 = objc_allocWithZone(sub_29E4FBAC0());
    v26 = sub_29E4FBAB0();
    [v10 addOperation_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E4F1968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29E4F19D4()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29E4FC6F0();

  return v3;
}

uint64_t sub_29E4F1AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4F1B1C(uint64_t a1, uint64_t a2)
{
  sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4F1B98(uint64_t a1, uint64_t a2)
{
  sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E4F1C14()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v43 - v8 + 72;
  v10 = sub_29E4FB7F0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v43 - v15 + 72;
  sub_29E4EF578(v43 - v15 + 72);
  *v14 = 0;
  swift_storeEnumTagMultiPayload();
  v17 = MEMORY[0x29ED89DF0](v16, v14);
  v18 = MEMORY[0x29EDC16F8];
  sub_29E4F2478(v14, MEMORY[0x29EDC16F8]);
  sub_29E4F2478(v16, v18);
  if (v17)
  {
    sub_29E4FC390();
    v19 = sub_29E4FC3B0();
    v20 = sub_29E4FC940();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_29E494000, v19, v20, "Cloud sync flow for iCloud storage full cancelled", v21, 2u);
      MEMORY[0x29ED8BDB0](v21, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    sub_29E4A2AD8(0, &qword_2A184B470, 0x29EDBA088);
    v22 = sub_29E4FC9F0();
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    v23 = qword_2A1A70D00;
    v24 = qword_2A1A70828;
    swift_beginAccess();
    sub_29E4F1B98(v1 + v24, v43);
    v25 = v44;
    if (v44)
    {
      v26 = sub_29E4A1710(v43, v44);
      v27 = *(v25 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x2A1C7C4A8](v26);
      v30 = v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
      (*(v27 + 16))(v30);
      v31 = v23;
      v32 = sub_29E4FBE00();
      (*(v27 + 8))(v30, v25);
      v33 = [v32 profileIdentifier];

      sub_29E4F2260();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E4FDE40;
      *(inited + 32) = 0xD000000000000011;
      v35 = inited + 32;
      *(inited + 40) = 0x800000029E5030F0;
      *(inited + 48) = v33;
      v36 = sub_29E4A2968(inited);
      swift_setDeallocating();
      sub_29E4F2478(v35, sub_29E4F22B8);
      sub_29E4A1754(v43);
      sub_29E4F0D4C(v36);

      v37 = objc_allocWithZone(sub_29E4FBAC0());
      v38 = sub_29E4FBAB0();
      [v22 addOperation_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E4FC390();
    v39 = sub_29E4FC3B0();
    v40 = sub_29E4FC940();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_29E494000, v39, v40, "Cloud sync flow cancelled", v41, 2u);
      MEMORY[0x29ED8BDB0](v41, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_29E4F212C()
{
  v0 = sub_29E4FC3C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC390();
  v5 = sub_29E4FC3B0();
  v6 = sub_29E4FC940();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29E494000, v5, v6, "Cloud sync flow completed", v7, 2u);
    MEMORY[0x29ED8BDB0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_29E4F2260()
{
  if (!qword_2A184BC18)
  {
    sub_29E4F22B8();
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BC18);
    }
  }
}

void sub_29E4F22B8()
{
  if (!qword_2A184BC20)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184BC20);
    }
  }
}

uint64_t sub_29E4F2330(const char *a1)
{
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC360();
  v7 = sub_29E4FC3B0();
  v8 = sub_29E4FC900();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29E494000, v7, v8, a1, v9, 2u);
    MEMORY[0x29ED8BDB0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_29E4F0190();
}

uint64_t sub_29E4F2478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4F24D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB7F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4F253C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E4F3260();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E4D6980(&unk_2A24E7930);
  v14 = 0x800000029E5031A0;
  v34[0] = 0xD000000000000017;
  v34[1] = 0x800000029E5031A0;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v15 = sub_29E49EE90(v35), (v16 & 1) == 0))
  {

    sub_29E4A2628(v35);
LABEL_17:
    v28 = 0xD000000000000017;
LABEL_18:
    sub_29E4F32B8();
    swift_allocError();
    *v29 = v28;
    v29[1] = v14;
    return swift_willThrow();
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v15, v36);
  sub_29E4A2628(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v33 = v9;
  v37 = a2;
  v17 = v34[0];
  v18 = sub_29E4E5B3C(v34[0], v13);

  if ((v18 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v14 = 0xED00007375746174;
  *v37 = v17;
  v19 = sub_29E4D6A30(&unk_2A24E7960);
  strcpy(v34, "SharingStatus");
  HIWORD(v34[1]) = -4864;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v20 = sub_29E49EE90(v35), (v21 & 1) == 0))
  {

    sub_29E4A2628(v35);
LABEL_22:
    v28 = 0x53676E6972616853;
    goto LABEL_18;
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v20, v36);
  sub_29E4A2628(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = v34[0];
  v23 = sub_29E4E5B3C(v34[0], v19);

  if ((v23 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v14 = 0xEA0000000000676ELL;
  v24 = v37;
  v37[1] = v22;
  strcpy(v34, "UUIDString");
  BYTE3(v34[1]) = 0;
  HIDWORD(v34[1]) = -369098752;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v25 = sub_29E49EE90(v35), (v26 & 1) == 0))
  {

    sub_29E4A2628(v35);
    goto LABEL_24;
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v25, v36);
  sub_29E4A2628(v35);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v28 = 0x6972745344495555;
    goto LABEL_18;
  }

  sub_29E4FB1F0();

  v27 = v33;
  if ((*(v33 + 48))(v7, 1, v8) == 1)
  {
    sub_29E4F330C(v7, sub_29E4F3260);
    goto LABEL_24;
  }

  v31 = *(v27 + 32);
  v31(v12, v7, v8);
  v32 = type metadata accessor for ProfileSharingUserInfo();
  return (v31)(v24 + *(v32 + 24), v12, v8);
}

uint64_t sub_29E4F29F4()
{
  v1 = v0;
  sub_29E4FCD70();

  v2 = v0 + *(type metadata accessor for ProfileSharingUserInfo() + 24);
  v3 = sub_29E4FB200();
  MEMORY[0x29ED8AD70](v3);

  MEMORY[0x29ED8AD70](0x6974636572694420, 0xEC000000203A6E6FLL);
  v7 = *v1;
  v4 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v4);

  MEMORY[0x29ED8AD70](0x676E697261685320, 0xEA0000000000203ALL);
  v8 = v1[1];
  v5 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v5);

  return 0x203A44495555;
}

double sub_29E4F2B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_29E49ED7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C2E18();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_29E4FB240();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_29E498334((*(v11 + 56) + 40 * v8), a2);
    sub_29E4C16B4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_29E4F2CA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_29E49ED7C(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_29E4FB240();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    a3(v20, v17);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

double sub_29E4F2E68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_29E49EE90(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C337C();
      v11 = v13;
    }

    sub_29E4A2628(*(v11 + 48) + 40 * v8);
    sub_29E4A2C58((*(v11 + 56) + 32 * v8), a2);
    sub_29E4C2070(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_29E4F2F0C()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDCA198];
  v26 = MEMORY[0x29EDCA198];
  *&v23 = 0xD000000000000017;
  *(&v23 + 1) = 0x800000029E5031A0;
  sub_29E4FCD00();
  v6 = sub_29E4FBA50();
  if (v7)
  {
    sub_29E4F2E68(v25, &v23);
    sub_29E4F330C(&v23, sub_29E4AD258);
    sub_29E4A2628(v25);
  }

  else
  {
    v24 = MEMORY[0x29EDC9CA8];
    *&v23 = v6;
    sub_29E4A2C58(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    sub_29E4C26D8(v22, v25, isUniquelyReferenced_nonNull_native);
    sub_29E4A2628(v25);
    v26 = v21;
  }

  strcpy(&v23, "SharingStatus");
  HIWORD(v23) = -4864;
  v9 = MEMORY[0x29EDC99B0];
  sub_29E4FCD00();
  v10 = sub_29E4FB9C0();
  if (v11)
  {
    sub_29E4F2E68(v25, &v23);
    sub_29E4F330C(&v23, sub_29E4AD258);
    sub_29E4A2628(v25);
  }

  else
  {
    v24 = MEMORY[0x29EDC9BA8];
    *&v23 = v10;
    sub_29E4A2C58(&v23, v22);
    v12 = v26;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v12;
    sub_29E4C26D8(v22, v25, v13);
    sub_29E4A2628(v25);
    v26 = v21;
  }

  strcpy(&v23, "UUIDString");
  BYTE11(v23) = 0;
  HIDWORD(v23) = -369098752;
  sub_29E4FCD00();
  sub_29E4FBA80();
  v14 = sub_29E4FB200();
  v16 = v15;
  (*(v1 + 8))(v4, v0);
  v24 = v9;
  *&v23 = v14;
  *(&v23 + 1) = v16;
  sub_29E4A2C58(&v23, v22);
  v17 = v26;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v17;
  sub_29E4C26D8(v22, v25, v18);
  sub_29E4A2628(v25);
  return v21;
}

uint64_t type metadata accessor for ProfileSharingUserInfo()
{
  result = qword_2A184BC50;
  if (!qword_2A184BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4F3260()
{
  if (!qword_2A1A70698)
  {
    sub_29E4FB240();
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70698);
    }
  }
}

unint64_t sub_29E4F32B8()
{
  result = qword_2A184BC48;
  if (!qword_2A184BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BC48);
  }

  return result;
}

uint64_t sub_29E4F330C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4F33A4()
{
  type metadata accessor for HKSharingMessageDirection(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKSharingStatus(319);
    if (v1 <= 0x3F)
    {
      sub_29E4FB240();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E4F3440(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v16 = a6 & 1;
  sub_29E4F4DEC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E4FEDE0;
  *(inited + 32) = a5;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2 & 1;
  if (a6)
  {
    v18 = MEMORY[0x29EDCA190];

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_29E4A8388(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    if (v30 >= v29 >> 1)
    {
      v18 = sub_29E4A8388((v29 > 1), v30 + 1, 1, v18);
    }

    *(v18 + 2) = v30 + 1;
    *&v18[8 * v30 + 32] = a1;
    v19 = *(v18 + 2);
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_18:
    v25 = 0.0;
    goto LABEL_19;
  }

  v26 = a7;
  v18 = sub_29E4A8388(0, 1, 1, MEMORY[0x29EDCA190]);
  v28 = *(v18 + 2);
  v27 = *(v18 + 3);
  if (v28 >= v27 >> 1)
  {
    v18 = sub_29E4A8388((v27 > 1), v28 + 1, 1, v18);
  }

  *(v18 + 2) = v28 + 1;
  *&v18[8 * v28 + 32] = a5;
  a7 = v26;

  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = *(v18 + 2);
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_4:
  v20 = *(v18 + 4);
  v21 = v19 - 1;
  if (v19 != 1)
  {
    v22 = (v18 + 40);
    do
    {
      v23 = *v22++;
      v24 = v23;
      if (v20 < v23)
      {
        v20 = v24;
      }

      --v21;
    }

    while (v21);
  }

  v25 = v20;
LABEL_19:

  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_29E4FEDE0;
  *(v31 + 32) = a7;
  *(v31 + 40) = a8 & 1;
  *(v31 + 48) = a3;
  *(v31 + 56) = a4 & 1;
  if (a8)
  {
    v32 = MEMORY[0x29EDCA190];

    if (a4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v39 = a7;
    v32 = sub_29E4A8388(0, 1, 1, MEMORY[0x29EDCA190]);
    v41 = *(v32 + 2);
    v40 = *(v32 + 3);
    if (v41 >= v40 >> 1)
    {
      v32 = sub_29E4A8388((v40 > 1), v41 + 1, 1, v32);
    }

    *(v32 + 2) = v41 + 1;
    *&v32[8 * v41 + 32] = v39;

    if (a4)
    {
LABEL_21:
      v33 = *(v32 + 2);
      if (!v33)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_29E4A8388(0, *(v32 + 2) + 1, 1, v32);
  }

  v43 = *(v32 + 2);
  v42 = *(v32 + 3);
  if (v43 >= v42 >> 1)
  {
    v32 = sub_29E4A8388((v42 > 1), v43 + 1, 1, v32);
  }

  *(v32 + 2) = v43 + 1;
  *&v32[8 * v43 + 32] = a3;
  v33 = *(v32 + 2);
  if (v33)
  {
LABEL_22:
    v34 = *(v32 + 4);
    v35 = v33 - 1;
    if (v33 != 1)
    {
      v36 = (v32 + 40);
      do
      {
        v37 = *v36++;
        v38 = v37;
        if (v34 < v37)
        {
          v34 = v38;
        }

        --v35;
      }

      while (v35);
    }
  }

LABEL_36:

  return *&v25;
}

uint64_t sub_29E4F37B8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v9 = a2 | ((a4 & 0x100) >> 8);
  if (a7)
  {
    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v9 & 1 | (*&a1 != *&a6))
  {
    return 1;
  }

  v11 = a4 | ((a4 & 0x100) >> 8);
  v12 = (a9 & v11);
  if (v11)
  {
    v13 = (a9 & v11);
  }

  else
  {
    v13 = *&a3 == *&a8;
  }

  if (a9)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (v14 ^ 1) & 1;
}

uint64_t sub_29E4F3828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5;
  v15[1] = a4;
  sub_29E4F4D88(0, &qword_2A1A6F0F8, MEMORY[0x29EDC9E88]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4F4D34();
  sub_29E4FD080();
  v18 = 0;
  sub_29E4FCF10();
  if (!v5)
  {
    v17 = 1;
    sub_29E4FCF10();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_29E4F39B4()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_29E4F39EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000015 && 0x800000029E503220 == a2;
  if (v5 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029E503240 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E4F3AD0(uint64_t a1)
{
  v2 = sub_29E4F4D34();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4F3B0C(uint64_t a1)
{
  v2 = sub_29E4F4D34();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4F3B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29E4F3440(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

uint64_t sub_29E4F3C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29E4F4B5C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_29E4F3CB0()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 11);
  sub_29E4F51E8(&v1[4]);
  os_unfair_lock_unlock(v1 + 11);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_29E4F3D24()
{
  sub_29E4F3CB0();

  return swift_deallocClassInstance();
}

__n128 sub_29E4F3D7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_29E4F3D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29E4F3DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_29E4F3E3C()
{
  v1 = v0;
  v2 = sub_29E4FAF90();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_29E4FCD00();
  if (!*(v3 + 16) || (v4 = sub_29E49EE90(v10), (v5 & 1) == 0))
  {

    sub_29E4A2628(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  sub_29E4AD310(*(v3 + 56) + 32 * v4, &v11);
  sub_29E4A2628(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    sub_29E4AD1FC(&v11);
    goto LABEL_10;
  }

  sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    return v8 & 1;
  }

  v6 = v10[0];
  sub_29E4A2AD8(0, &qword_2A1A708C8, 0x29EDC9738);
  v7 = *(v1 + 32);
  v8 = sub_29E4FCB40();

  return v8 & 1;
}

void sub_29E4F3F8C(uint64_t *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, __int16 a5@<W5>, uint64_t a6@<X8>)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    v21 = a3;
    v22 = a4;
    *(a1 + 25) = 1;
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    if (qword_2A1A708E0 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A70D08;
    v13 = swift_allocObject();
    swift_weakInit();
    v27 = sub_29E4F5028;
    v28 = v13;
    aBlock = MEMORY[0x29EDCA5F8];
    v24 = 1107296256;
    v25 = sub_29E4F43C8;
    v26 = &unk_2A24E93A8;
    v14 = _Block_copy(&aBlock);

    v15 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();

    v16 = [v10 defaultCenter];
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A70D00;
    v18 = swift_allocObject();
    swift_weakInit();
    v27 = sub_29E4F5048;
    v28 = v18;
    aBlock = MEMORY[0x29EDCA5F8];
    v24 = 1107296256;
    v25 = sub_29E4F43C8;
    v26 = &unk_2A24E93D0;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();

    a4 = v22;
    a3 = v21;
  }

  if ((a5 & 0x100) != 0)
  {
    a2 = *a1;
    a3 = *(a1 + 8);
    a4 = a1[2];
    LOBYTE(a5) = *(a1 + 24);
  }

  else
  {
    *a1 = a2;
    *(a1 + 8) = a3 & 1;
    a1[2] = a4;
    *(a1 + 24) = a5 & 1;
  }

  *a6 = a2;
  *(a6 + 8) = a3 & 1;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5 & 1;
}

uint64_t sub_29E4F42A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_29E4F3E3C())
    {
      v2 = v1[7];
      os_unfair_lock_lock((v2 + 44));
      *(v2 + 16) = CFAbsoluteTimeGetCurrent();
      *(v2 + 24) = 0;
      v3 = *(v2 + 32);
      v4 = *(v2 + 40);
      os_unfair_lock_unlock((v2 + 44));
      v5 = v1[2];
      v6 = v1[3];
      swift_getObjectType();
      type metadata accessor for CloudSyncNotificationInputSignal();
      sub_29E4F4FE0(&qword_2A1A6FD00, v7, type metadata accessor for CloudSyncNotificationInputSignal);
      sub_29E4FC280();
    }
  }

  return result;
}

uint64_t sub_29E4F43C8(uint64_t a1)
{
  v2 = sub_29E4FAFA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_29E4FAF80();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29E4F44BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    v2 = result;
    os_unfair_lock_lock((v1 + 44));
    *(v1 + 32) = CFAbsoluteTimeGetCurrent();
    *(v1 + 40) = 0;
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    os_unfair_lock_unlock((v1 + 44));
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    swift_getObjectType();
    type metadata accessor for CloudSyncNotificationInputSignal();
    sub_29E4F4FE0(&qword_2A1A6FD00, v7, type metadata accessor for CloudSyncNotificationInputSignal);
    sub_29E4FC280();
  }

  return result;
}

void sub_29E4F45CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25) == 1)
  {
    v14 = v5;
    v15 = v4;
    v16 = v3;
    *(a1 + 25) = 0;
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    if (qword_2A1A708E0 != -1)
    {
      swift_once();
    }

    [v12 removeObserver:a2 name:qword_2A1A70D08 object:{0, v7, v6, v14, v15, v16, v2, v8, v9}];

    v13 = [v11 defaultCenter];
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    [v13 removeObserver:a2 name:qword_2A1A70D00 object:0];
  }
}

uint64_t sub_29E4F46FC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;
  v6 = *(a1 + 24) | (*(a1 + 25) << 8);
  return sub_29E4F4E70();
}

void sub_29E4F4740()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock(v1 + 11);
  sub_29E4F4E54(&v1[4]);

  os_unfair_lock_unlock(v1 + 11);
}

uint64_t sub_29E4F479C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4F4FE0(&qword_2A1A6FD00, a2, type metadata accessor for CloudSyncNotificationInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

unint64_t sub_29E4F4854()
{
  result = qword_2A1A6FD20;
  if (!qword_2A1A6FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD20);
  }

  return result;
}

unint64_t sub_29E4F48AC()
{
  result = qword_2A1A6FD08;
  if (!qword_2A1A6FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD08);
  }

  return result;
}

unint64_t sub_29E4F4904()
{
  result = qword_2A1A6FD18;
  if (!qword_2A1A6FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD18);
  }

  return result;
}

unint64_t sub_29E4F495C()
{
  result = qword_2A1A6FD10;
  if (!qword_2A1A6FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD10);
  }

  return result;
}

void *sub_29E4F49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_29E4F4A7C(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_29E4F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_29E4F4AFC();
  v13 = swift_allocObject();
  *(v13 + 44) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = a7;
  a5[7] = v13;
  a5[2] = a3;
  a5[3] = a4;
  return a5;
}

void sub_29E4F4AFC()
{
  if (!qword_2A1A6F148)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E4FCDC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F148);
    }
  }
}

uint64_t sub_29E4F4B5C(uint64_t *a1)
{
  sub_29E4F4D88(0, &qword_2A1A6F110, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v15[-v7];
  v9 = a1[3];
  sub_29E4A1710(a1, v9);
  sub_29E4F4D34();
  sub_29E4FD070();
  if (v1)
  {
    sub_29E4A1754(a1);
  }

  else
  {
    v15[31] = 0;
    v9 = sub_29E4FCE90();
    v11 = v10;
    v15[30] = 1;
    sub_29E4FCE90();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    sub_29E4A1754(a1);
    v15[24] = v11 & 1;
    v15[8] = v14 & 1;
  }

  return v9;
}

unint64_t sub_29E4F4D34()
{
  result = qword_2A1A6FD38;
  if (!qword_2A1A6FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD38);
  }

  return result;
}

void sub_29E4F4D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4F4D34();
    v7 = a3(a1, &type metadata for CloudSyncNotificationInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4F4DEC()
{
  if (!qword_2A184BC60)
  {
    sub_29E4F5050(255, &qword_2A184BC68);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BC60);
    }
  }
}

uint64_t sub_29E4F4E70()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[7];
  os_unfair_lock_lock((v3 + 44));
  sub_29E4F4FAC((v3 + 16), &v12);
  os_unfair_lock_unlock((v3 + 44));
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v0[2];
  v9 = v1[3];
  swift_getObjectType();
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_29E4F4FE0(&qword_2A1A6FD00, v10, type metadata accessor for CloudSyncNotificationInputSignal);
  return sub_29E4FC280();
}

uint64_t sub_29E4F4FE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4F5030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4F5050(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E4FCC30();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E4F50AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29E4F50E0()
{
  result = qword_2A184BC70;
  if (!qword_2A184BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BC70);
  }

  return result;
}

unint64_t sub_29E4F5138()
{
  result = qword_2A1A6FD28;
  if (!qword_2A1A6FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD28);
  }

  return result;
}

unint64_t sub_29E4F5190()
{
  result = qword_2A1A6FD30;
  if (!qword_2A1A6FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD30);
  }

  return result;
}

id sub_29E4F5204(void *a1)
{
  v2 = v1;
  v4 = sub_29E4FB7F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4F6328(0, &qword_2A1A70670, MEMORY[0x29EDC9A98], MEMORY[0x29EDC37D0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v13 = &v29[-v12];
  if (qword_2A1A705F8 != -1)
  {
    swift_once();
  }

  v14 = sub_29E4A18DC(v9, qword_2A1A70600);
  (*(v10 + 16))(v13, v14, v9);
  sub_29E4FB330();
  (*(v10 + 8))(v13, v9);
  if (v29[15])
  {
    return 0;
  }

  v16 = objc_opt_self();
  result = [v16 sharedBehavior];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v17 = result;
  v18 = [result isiPad];

  if (!v18 || (result = [v16 hasCompletedBuddyWithVersion_], result))
  {
    sub_29E4F24D8(v2, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v20 = *v7;
        if (v20 - 3 >= 3)
        {
          if (v20 >= 2)
          {
            v21 = [a1 profileIdentifier];
            v22 = [v21 type];

            return (v22 == 3);
          }

LABEL_18:
          v26 = [a1 profileIdentifier];
          v27 = [v26 type];

          return (v27 == 1);
        }
      }

      else
      {
        v28 = sub_29E4FB1E0();
        (*(*(v28 - 8) + 8))(v7, v28);
      }

      return 0;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return 0;
    }

    result = [v16 sharedBehavior];
    if (result)
    {
      v24 = result;
      v25 = [result isiPad];

      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }

      return 0;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4F557C()
{
  v1 = sub_29E4FB7F0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4F24D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result != 3 && result == 4)
    {
      return result;
    }

LABEL_10:
    sub_29E4F6328(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FDE40;
    *(inited + 32) = sub_29E4FB4F0();
    *(inited + 40) = v8;
    v9 = sub_29E4FB410();
    sub_29E4F611C(inited);
    swift_setDeallocating();
    sub_29E4F618C(inited + 32);
    return v9(v11, 0);
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result != 1)
  {
    v10 = sub_29E4FB1E0();
    return (*(*(v10 - 8) + 8))(v4, v10);
  }

  if (*v4 == 1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_29E4F571C()
{
  sub_29E4F6328(0, &qword_2A1A70670, MEMORY[0x29EDC9A98], MEMORY[0x29EDC37D0]);
  v1 = v0;
  sub_29E4A19E0(v0, qword_2A1A70600);
  sub_29E4A18DC(v1, qword_2A1A70600);
  v2 = *MEMORY[0x29EDBB020];
  sub_29E4FC6F0();
  sub_29E4A9C80();
  sub_29E4FC9B0();
  return sub_29E4FB340();
}

uint64_t sub_29E4F57F0(void *a1, void *a2)
{
  v4 = sub_29E4FB2A0();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FAFF0();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29E4FC3C0();
  v10 = *(v90 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v90);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v81 = &v76 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v82 = &v76 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v76 - v19;
  sub_29E4F626C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = &v76 - v23;
  v25 = sub_29E4FB1E0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v83 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v76 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v76 - v33;
  if ([a1 type] == 3)
  {
    return 1;
  }

  v80 = v10;
  v36 = a2[3];
  v37 = a2[4];
  sub_29E4A1710(a2, v36);
  (*(v37 + 8))(v36, v37);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_29E4F61E0(v24);
    sub_29E4FC390();
    v38 = sub_29E4FC3B0();
    v39 = sub_29E4FC940();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_29E494000, v38, v39, "App has not launched yet, skip show error alert", v40, 2u);
      MEMORY[0x29ED8BDB0](v40, -1, -1);
    }

    (*(v80 + 8))(v14, v90);
    return 0;
  }

  v41 = v25;
  v42 = v34;
  (*(v26 + 32))(v34, v24, v41);
  sub_29E4FC390();
  (*(v26 + 16))(v32, v34, v41);
  v43 = sub_29E4FC3B0();
  v44 = sub_29E4FC940();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v79 = v41;
    v47 = v46;
    v91 = v46;
    *v45 = 136315138;
    sub_29E4F62D0();
    v48 = sub_29E4FCF60();
    v50 = v49;
    v51 = *(v26 + 8);
    v78 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v32;
    v53 = v51;
    v51(v52, v79);
    v54 = sub_29E4F68F4(v48, v50, &v91);
    v42 = v34;

    *(v45 + 4) = v54;
    _os_log_impl(&dword_29E494000, v43, v44, "App first launch is %s", v45, 0xCu);
    sub_29E4A1754(v47);
    v55 = v47;
    v41 = v79;
    MEMORY[0x29ED8BDB0](v55, -1, -1);
    MEMORY[0x29ED8BDB0](v45, -1, -1);
  }

  else
  {

    v56 = *(v26 + 8);
    v78 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57 = v32;
    v53 = v56;
    v56(v57, v41);
  }

  v77 = *(v80 + 8);
  v77(v20, v90);
  v58 = v85;
  sub_29E4FB280();
  sub_29E4F626C(0, &qword_2A184BBD0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v59 = sub_29E4FB290();
  v60 = *(v59 - 8);
  v61 = *(v60 + 72);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_29E4FDE40;
  (*(v60 + 104))(v63 + v62, *MEMORY[0x29EDB9CB8], v59);
  sub_29E4E9768(v63);
  swift_setDeallocating();
  (*(v60 + 8))(v63 + v62, v59);
  swift_deallocClassInstance();
  v64 = v83;
  sub_29E4FB1D0();
  v65 = v84;
  sub_29E4FB260();

  v53(v64, v41);
  (*(v88 + 8))(v58, v89);
  v66 = sub_29E4FAFE0();
  LOBYTE(v63) = v67;
  (*(v86 + 8))(v65, v87);
  if (v63)
  {
LABEL_18:
    v53(v42, v41);
    return 0;
  }

  if (v66 < 1)
  {
    v72 = v81;
    sub_29E4FC390();
    v73 = sub_29E4FC3B0();
    v74 = sub_29E4FC940();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_29E494000, v73, v74, "Less than a day since app first launch, skip show error alert", v75, 2u);
      MEMORY[0x29ED8BDB0](v75, -1, -1);
    }

    v77(v72, v90);
    goto LABEL_18;
  }

  v68 = v82;
  sub_29E4FC390();
  v69 = sub_29E4FC3B0();
  v70 = sub_29E4FC940();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_29E494000, v69, v70, "More than a day since app first launch, show error alert", v71, 2u);
    MEMORY[0x29ED8BDB0](v71, -1, -1);
  }

  v77(v68, v90);
  v53(v42, v41);
  return 1;
}

uint64_t sub_29E4F611C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_29E4F70DC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29E4F61E0(uint64_t a1)
{
  sub_29E4F626C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4F626C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E4F62D0()
{
  result = qword_2A184B7E8;
  if (!qword_2A184B7E8)
  {
    sub_29E4FB1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7E8);
  }

  return result;
}

void sub_29E4F6328(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t HealthKitProfileInformation.makePluginFeedItem()@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v38 = sub_29E4FC3C0();
  v1 = *(*(v38 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v2 = sub_29E4FB390();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FB320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FB460();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29E4FB790();
  v34 = v15;
  v16 = sub_29E4FB720();
  v38 = sub_29E4FB760();
  v35 = v17;

  type metadata accessor for ProfileItemTileViewController();
  sub_29E4FB360();
  (*(v7 + 104))(v10, *MEMORY[0x29EDC3768], v6);
  v18 = v33;
  v19 = v34;
  sub_29E4C7648(v33, v34);
  sub_29E4FB720();
  v20 = v18;
  sub_29E4FB3E0();
  sub_29E4FB7B0();
  sub_29E4FB840();
  sub_29E4FB3D0();
  sub_29E4FB3C0();
  (*(v36 + 104))(v5, *MEMORY[0x29EDC3808], v37);
  sub_29E4FB3A0();
  v21 = sub_29E4FB720();
  v22 = [v21 type];

  v23 = v20;
  if (v22 == 2)
  {
    v24 = sub_29E4FB4E0();
    goto LABEL_5;
  }

  if (v22 == 3)
  {
    v24 = sub_29E4FB4D0();
LABEL_5:
    v26 = v24;
    v27 = v25;
    v28 = sub_29E4FB410();
    sub_29E4F70DC(&v43, v26, v27);

    v28(v42, 0);
  }

  sub_29E4A1B94(v23, v19);
  v30 = v40;
  v29 = v41;
  v31 = v39;
  (*(v39 + 32))(v41, v14, v40);
  return (*(v31 + 56))(v29, 0, 1, v30);
}

uint64_t sub_29E4F68F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29E4F69C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29E4AD310(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29E4A1754(v11);
  return v7;
}

unint64_t sub_29E4F69C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29E4F6ACC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29E4FCDD0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_29E4F6ACC(uint64_t a1, unint64_t a2)
{
  v4 = sub_29E4F6B18(a1, a2);
  sub_29E4F6C48(&unk_2A24E7878);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29E4F6B18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29E4F6D34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29E4FCDD0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29E4FC750();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29E4F6D34(v10, 0);
        result = sub_29E4FCD60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29E4F6C48(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29E4F6D9C(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29E4F6D34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29E4F9CC0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29E4F6D9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4F9CC0();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_29E4F6E84(void *a1, void *a2)
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

    v9 = sub_29E4FCCC0();

    if (v9)
    {

      sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_29E4FCCB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_29E4F7674(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_29E4F7D64(v22 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
    }

    v20 = v8;
    sub_29E4F82D0(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  v11 = *(v6 + 40);
  v12 = sub_29E4FCB30();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_29E4F8354(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_29E4FCB40();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_29E4F70DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_29E4FD030();
  sub_29E4FC730();
  v9 = sub_29E4FD050();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_29E4FCF80() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_29E4F84E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29E4F7284(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_29E4FD030();
  MEMORY[0x29ED8B670](a2);
  v11 = sub_29E4FD050();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_29E4F8664(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_29E4F7394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08]);
  v36 = a2;
  v13 = sub_29E4FC650();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_29E4F9664(&qword_2A184B2D0, MEMORY[0x29EDB9C08]);
      v23 = sub_29E4FC680();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_29E4F87E0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_29E4F7674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
    v2 = sub_29E4FCD30();
    v16 = v2;
    sub_29E4FCCA0();
    if (sub_29E4FCCD0())
    {
      sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_29E4F7D64(v10 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_29E4FCB30();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_29E4FCCD0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v2;
}

uint64_t sub_29E4F78A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29E4F9C68();
  result = sub_29E4FCD20();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_29E4FD030();
      sub_29E4FC730();
      result = sub_29E4FD050();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_29E4F7AF8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  a2(0);
  result = sub_29E4FCD20();
  v7 = result;
  if (*(v4 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v4 + 56);
    v10 = 1 << *(v4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v4 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = *(v7 + 40);
      sub_29E4FD030();
      MEMORY[0x29ED8B670](v19);
      result = sub_29E4FD050();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v4 + 32);
    if (v28 >= 64)
    {
      bzero((v4 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v3 = v29;
    *(v4 + 16) = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_29E4F7D64(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29E4F92C8(0, a2, a3, a4, a5);
  result = sub_29E4FCD20();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_29E4FCB30();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_29E4F7F80(uint64_t a1)
{
  v2 = v1;
  v41 = sub_29E4FB240();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_29E4C5A30();
  result = sub_29E4FCD20();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08]);
      result = sub_29E4FC650();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_29E4F82D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_29E4FCB30();
  v5 = -1 << *(a2 + 32);
  result = sub_29E4FCC90();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_29E4F8354(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E4F7D64(v6 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_29E4F8A84();
      goto LABEL_12;
    }

    sub_29E4F90A0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_29E4FCB30();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_29E4FCB40();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29E4FCFA0();
  __break(1u);
}

uint64_t sub_29E4F84E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29E4F78A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29E4F8BEC();
      goto LABEL_16;
    }

    sub_29E4F93A4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_29E4FD030();
  sub_29E4FC730();
  result = sub_29E4FD050();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29E4FCF80();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29E4FCFA0();
  __break(1u);
  return result;
}

uint64_t sub_29E4F8664(uint64_t result, unint64_t a2, char a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = a5;
    sub_29E4F7AF8(v7 + 1, a4);
  }

  else
  {
    if (v8 > v7)
    {
      v10 = a2;
      result = sub_29E4F8D3C(a4);
      a2 = v10;
      goto LABEL_12;
    }

    v9 = a5;
    sub_29E4F96AC(v7 + 1, a4);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v6);
  result = sub_29E4FD050();
  v13 = -1 << *(v11 + 32);
  a2 = result & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    v15 = result & ~v13;
    result = v9(0);
    a2 = v15;
    while (*(*(v11 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E4FCFA0();
  __break(1u);
  return result;
}

uint64_t sub_29E4F87E0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E4F7F80(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29E4F8E78();
      goto LABEL_12;
    }

    sub_29E4F9958(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08]);
  v15 = sub_29E4FC650();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_29E4F9664(&qword_2A184B2D0, MEMORY[0x29EDB9C08]);
      v23 = sub_29E4FC680();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E4FCFA0();
  __break(1u);
  return result;
}

id sub_29E4F8A84()
{
  v1 = v0;
  sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  v2 = *v0;
  v3 = sub_29E4FCD10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = v2 + 56;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 56), 8 * v7);
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
LABEL_14:
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void *sub_29E4F8BEC()
{
  v1 = v0;
  sub_29E4F9C68();
  v2 = *v0;
  v3 = sub_29E4FCD10();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_29E4F8D3C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_29E4FCD10();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_29E4F8E78()
{
  v1 = v0;
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5A30();
  v7 = *v0;
  v8 = sub_29E4FCD10();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_29E4F90A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  result = sub_29E4FCD20();
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
      result = sub_29E4FCB30();
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

void sub_29E4F92C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29E4A2AD8(255, a3, a4);
    sub_29E4F9354(a5, a3, a4);
    v9 = sub_29E4FCD50();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E4F9354(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4F93A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29E4F9C68();
  result = sub_29E4FCD20();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_29E4FD030();

      sub_29E4FC730();
      result = sub_29E4FD050();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

void sub_29E4F95D0()
{
  if (!qword_2A184BC80)
  {
    type metadata accessor for HKSharingStatus(255);
    sub_29E4F9664(&qword_2A184B8D0, type metadata accessor for HKSharingStatus);
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BC80);
    }
  }
}

uint64_t sub_29E4F9664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4F96AC(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  a2(0);
  result = sub_29E4FCD20();
  v7 = result;
  if (*(v4 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = *(v7 + 40);
      sub_29E4FD030();
      MEMORY[0x29ED8B670](v18);
      result = sub_29E4FD050();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v3 = v27;
        goto LABEL_28;
      }

      v17 = *(v4 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v3 = v7;
  }

  return result;
}

void sub_29E4F98C4()
{
  if (!qword_2A184BC88)
  {
    type metadata accessor for HKSharingMessageDirection(255);
    sub_29E4F9664(&qword_2A184B8D8, type metadata accessor for HKSharingMessageDirection);
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184BC88);
    }
  }
}

uint64_t sub_29E4F9958(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29E4FB240();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_29E4C5A30();
  v10 = sub_29E4FCD20();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08]);
      result = sub_29E4FC650();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

void sub_29E4F9C68()
{
  if (!qword_2A1A6F158)
  {
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F158);
    }
  }
}

void sub_29E4F9CC0()
{
  if (!qword_2A1A708A0)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A708A0);
    }
  }
}

void sub_29E4F9D10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_29E4F9D88(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E4FC300();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E4FC3C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v56 - v24;
  if (a2)
  {
    v58 = v23;
    v59 = v13;
    v60 = v12;
    v57 = a3;
    v26 = a2;
    sub_29E4FC350();
    v27 = a2;
    v28 = sub_29E4FC3B0();
    v29 = sub_29E4FC920();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v62 = v31;
      *v30 = 136315394;
      v32 = sub_29E4FD0B0();
      v34 = sub_29E4F68F4(v32, v33, &v62);
      v56 = a4;
      v35 = v34;

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v36 = sub_29E4FCFE0();
      v38 = sub_29E4F68F4(v36, v37, &v62);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_29E494000, v28, v29, "[%s]: Couldn't obtain contact store access for contacts with error: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v31, -1, -1);
      MEMORY[0x29ED8BDB0](v30, -1, -1);
    }

    (*(v18 + 8))(v25, v58);
    v41 = v57;
    v43 = *(v57 + 16);
    v42 = *(v57 + 24);
    swift_getObjectType();
    sub_29E4FC2F0();
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v62 = 0u;
    v63 = 0u;
    sub_29E4FC0B0();
    *&v62 = v41;
    sub_29E4FAE8C(qword_2A1A6F908, v44, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);
    sub_29E4FC280();
  }

  else
  {
    if (a1)
    {
      v39 = [objc_opt_self() defaultCenter];
      [v39 addObserver:a3 selector:sel_fetchContactName name:*MEMORY[0x29EDB8B88] object:0];

      return sub_29E4FA3F8();
    }

    v58 = v23;
    v59 = v13;
    v60 = v12;
    v45 = a4;
    sub_29E4FC350();
    v46 = sub_29E4FC3B0();
    v47 = sub_29E4FC920();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v62 = v49;
      *v48 = 136315138;
      v56 = v45;
      v50 = sub_29E4FD0B0();
      v52 = sub_29E4F68F4(v50, v51, &v62);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_29E494000, v46, v47, "[%s]: Denied contact store access", v48, 0xCu);
      sub_29E4A1754(v49);
      MEMORY[0x29ED8BDB0](v49, -1, -1);
      MEMORY[0x29ED8BDB0](v48, -1, -1);
    }

    (*(v18 + 8))(v22, v58);
    v54 = *(a3 + 16);
    v53 = *(a3 + 24);
    swift_getObjectType();
    sub_29E4FC2F0();
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v62 = 0u;
    v63 = 0u;
    sub_29E4FC0B0();
    *&v62 = a3;
    sub_29E4FAE8C(qword_2A1A6F908, v55, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);
    sub_29E4FC280();
  }

  return (*(v59 + 8))(v16, v60);
}

uint64_t sub_29E4FA3F8()
{
  v1 = *v0;
  v2 = sub_29E4FC300();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v40 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34();
  v44 = v5;
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FC3C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v38 - v12;
  sub_29E4FC350();
  v14 = sub_29E4FC3B0();
  v15 = sub_29E4FC940();
  v16 = os_log_type_enabled(v14, v15);
  v43 = v1;
  v38[1] = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45[0] = v18;
    *v17 = 136315138;
    v19 = sub_29E4FD0B0();
    v21 = sub_29E4F68F4(v19, v20, v45);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_29E494000, v14, v15, "[%s]: Fetching me contact card name info", v17, 0xCu);
    sub_29E4A1754(v18);
    MEMORY[0x29ED8BDB0](v18, -1, -1);
    MEMORY[0x29ED8BDB0](v17, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  sub_29E4FAED4();
  v22 = sub_29E4FC980();
  sub_29E4FC970();
  v23 = sub_29E4FC990();

  v24 = [v23 givenName];
  v25 = sub_29E4FC6F0();
  v27 = v26;

  v28 = [v23 familyName];
  v29 = sub_29E4FC6F0();
  v31 = v30;

  v32 = v39;
  v34 = *(v39 + 16);
  v33 = *(v39 + 24);
  swift_getObjectType();
  sub_29E4FC2F0();
  v45[0] = v25;
  v45[1] = v27;
  v45[2] = v29;
  v45[3] = v31;
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v35 = v41;
  sub_29E4FC0B0();
  v45[0] = v32;
  sub_29E4FAE8C(qword_2A1A6F908, v36, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);
  sub_29E4FC280();

  return (*(v42 + 8))(v35, v44);
}

uint64_t sub_29E4FAAE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29E4FAB80()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x29EDB8B88] object:0];
}

uint64_t sub_29E4FAC00(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FAE8C(qword_2A1A6F908, a2, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4FAD00()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x29EDB8B88] object:0];

  v3 = [objc_allocWithZone(MEMORY[0x29EDB8BB0]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v6[4] = sub_29E4FAE6C;
  v6[5] = v4;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1107296256;
  v6[2] = sub_29E4F9D10;
  v6[3] = &unk_2A24E9530;
  v5 = _Block_copy(v6);

  [v3 requestAccessForEntityType:0 completionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_29E4FAE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4FAE8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E4FAED4()
{
  result = qword_2A1A6F1D8;
  if (!qword_2A1A6F1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A6F1D8);
  }

  return result;
}