uint64_t sub_29D90A244()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_29D90A2A8()
{
  v0 = *MEMORY[0x29EDBA598];
  v1 = *MEMORY[0x29EDBA598];
  return v0;
}

uint64_t sub_29D90A370@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1888];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D90A408(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FC0](a1, a2, WitnessTable);
}

uint64_t sub_29D90A470()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  *(inited + 32) = [objc_opt_self() electrocardiogramType];
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D90A520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61000](a1, WitnessTable);
}

uint64_t sub_29D90A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, WitnessTable);
}

void sub_29D90A750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D90A7B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for BloodPressurePDFChart()
{
  result = qword_2A17B7D80;
  if (!qword_2A17B7D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D90A870()
{
  sub_29D9339F8();
  if (v0 <= 0x3F)
  {
    sub_29D90A99C(319);
    if (v1 <= 0x3F)
    {
      sub_29D916164(319, &qword_2A17B1680, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        sub_29D916164(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          sub_29D6EA5E0(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D90A9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D90AB0C@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  sub_29D915E28(0, a2, a3, sub_29D6D61A0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v29 - v13;
  v15 = a4(0);
  a5();
  v16 = *a1;
  v17 = a1;
  v29 = v15;
  v18 = *(v15 - 8);
  (*(v18 + 16))(v14, v16, v15);
  sub_29D6D61A0();
  v20 = v19;
  sub_29D916238(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
  sub_29D937F78();
  v21 = *(v10 + 56);
  v22 = a1[1];
  v23 = *(v20 - 8);
  v24 = *(v23 + 16);
  v24(&v14[v21], v22, v20);
  v25 = *(v10 + 72);
  v24(&v14[v25], v17[2], v20);
  v26 = v30;
  (*(v18 + 32))(v30, v14, v29);
  v27 = *(v23 + 32);
  v27(v26 + *(v10 + 56), &v14[v21], v20);
  return (v27)(v26 + *(v10 + 72), &v14[v25], v20);
}

uint64_t sub_29D90AD20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D915E28(0, &qword_2A17B8028, sub_29D912DB8, sub_29D91352C);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - v8;
  sub_29D912DB8();
  v11 = v10;
  sub_29D914244(&qword_2A17B7E38, sub_29D912DB8, sub_29D9137A0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, *a1, v11);
  sub_29D91352C(0);
  sub_29D913AAC();
  v13 = *(v5 + 56);
  sub_29D915D60(a1[1], &v9[v13], sub_29D91352C);
  v14 = *(v5 + 72);
  sub_29D915D60(a1[2], &v9[v14], sub_29D91352C);
  (*(v12 + 32))(a2, v9, v11);
  sub_29D9157C4(&v9[v13], a2 + *(v5 + 56), sub_29D91352C);
  return sub_29D9157C4(&v9[v14], a2 + *(v5 + 72), sub_29D91352C);
}

uint64_t sub_29D90AF18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_29D915F74();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D912F48();
  v10 = v9;
  sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
  sub_29D937F38();
  v11 = *a1;
  v32 = v10;
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  sub_29D913038();
  v14 = v13;
  sub_29D91317C();
  sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0]);
  sub_29D937EA8();
  v15 = v4[14];
  v30 = v14;
  v31 = v15;
  v16 = v14;
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], a1[1], v16);
  sub_29D913274();
  v19 = v18;
  sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708]);
  sub_29D937DF8();
  sub_29D938018();
  sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670]);
  v20 = v4[18];
  v21 = *(v19 - 8);
  (*(v21 + 16))(&v8[v20], a1[2], v19);
  sub_29D9133AC();
  v23 = v22;
  sub_29D9134CC();
  v24 = v4[22];
  v25 = a1[3];
  v26 = *(v23 - 8);
  (*(v26 + 16))(&v8[v24], v25, v23);
  v27 = *(v12 + 32);
  v28 = v33;
  v27(v33, v8, v32);
  (*(v17 + 32))(v28 + v4[14], &v8[v31], v30);
  (*(v21 + 32))(v28 + v4[18], &v8[v20], v19);
  return (*(v26 + 32))(v28 + v4[22], &v8[v24], v23);
}

void sub_29D90B28C(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  sub_29D6D6C48();
  v103 = v3;
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v101 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v99 = &v91 - v9;
  sub_29D6D6634();
  v111 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v106 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F17A0(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D912D24();
  v20 = v19;
  v113 = *(v19 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913C14();
  v114 = *(v25 - 8);
  v115 = v25;
  v26 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913D14();
  v100 = v30;
  v98 = *(v30 - 8);
  v31 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v116 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914678();
  v108 = v34;
  v104 = *(v34 - 8);
  v35 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v102 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914848();
  v110 = v38;
  v109 = *(v38 - 8);
  v39 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v107 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v1;
  sub_29D913E94(0, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
  sub_29D9136A4();
  sub_29D937E58();
  v42 = type metadata accessor for BloodPressurePDFChart();
  sub_29D90E990(*(v1 + *(v42 + 24)));
  v123 = v43;
  v124 = v44;
  v45 = sub_29D938028();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v97 = v45;
  v96 = v47;
  v95 = v46 + 56;
  (v47)(v18, 1, 1);
  sub_29D915EA8(0, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v49 = v48;
  v50 = sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
  v51 = sub_29D6D69EC();
  sub_29D939358();
  v105 = v18;
  sub_29D914FF4(v18, sub_29D6F17A0);
  (*(v113 + 8))(v24, v20);
  v117 = v1;
  sub_29D913E94(0, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
  v53 = v52;
  v119 = v20;
  v120 = v49;
  v121 = v50;
  v122 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_29D914518();
  v56 = v115;
  sub_29D939338();
  (*(v114 + 8))(v29, v56);
  v114 = v42;
  v57 = v1 + *(v42 + 20);
  v58 = sub_29D9339F8();
  sub_29D912AB8(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v59 = v2;
  if (sub_29D939CD8())
  {
    v60 = *(v58 - 8);
    v61 = v60[2];
    v113 = OpaqueTypeConformance2;
    v62 = v99;
    v94 = v59;
    v61(v99, v59, v58);
    v93 = v55;
    v63 = v103;
    v61((v62 + *(v103 + 48)), v57, v58);
    v64 = v101;
    sub_29D91505C(v62, v101, sub_29D6D6C48);
    v65 = *(v63 + 48);
    v66 = v60[4];
    v92 = v53;
    v67 = v106;
    v66(v106, v64, v58);
    v68 = v60[1];
    v68(v64 + v65, v58);
    sub_29D9156C8(v62, v64, sub_29D6D6C48);
    v69 = *(v63 + 48);
    v70 = v111;
    v66((v67 + *(v111 + 36)), v64 + v69, v58);
    v68(v64, v58);
    v71 = v105;
    v96(v105, 1, 1, v97);
    v119 = v115;
    v120 = v92;
    v121 = v113;
    v122 = v93;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = sub_29D6D66C8();
    v74 = v102;
    v75 = v100;
    v76 = v116;
    sub_29D939348();
    sub_29D914FF4(v71, sub_29D6F17A0);
    sub_29D914FF4(v67, sub_29D6D6634);
    v77 = (*(v98 + 8))(v76, v75);
    MEMORY[0x2A1C7C4A8](v77, v78);
    v79 = v94;
    *(&v91 - 2) = v94;
    sub_29D914A98();
    v81 = v80;
    v119 = v75;
    v120 = v70;
    v121 = v72;
    v122 = v73;
    v82 = swift_getOpaqueTypeConformance2();
    v83 = sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98);
    v84 = v107;
    v85 = v108;
    sub_29D939328();
    (*(v104 + 8))(v74, v85);
    sub_29D914C24(0, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    v119 = v85;
    v120 = v81;
    v121 = v82;
    v122 = v83;
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    v86 = v112;
    v87 = v110;
    sub_29D939368();
    (*(v109 + 8))(v84, v87);
    v88 = *(v79 + *(v114 + 40));
    sub_29D915EFC(0, &qword_2A17B7FD8, sub_29D9153E4, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    v90 = (v86 + *(v89 + 36));
    *v90 = v88;
    v90[1] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D90BE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  sub_29D915EA8(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v99 = &v91 - v6;
  v98 = sub_29D937F78();
  v106 = *(v98 - 1);
  v7 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v98, v8);
  v102 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9160EC(0, &qword_2A17B7E28, MEMORY[0x29EDB86E8]);
  v97 = v10;
  v109 = *(v10 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v107 = &v91 - v13;
  sub_29D916008(0, &qword_2A17B7E20, &qword_2A17B7E28);
  v96 = v14;
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v108 = &v91 - v17;
  sub_29D913560();
  v94 = v18;
  v113 = *(v18 - 8);
  v19 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D91352C(0);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v111 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v110 = &v91 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v114 = &v91 - v32;
  MEMORY[0x2A1C7C4A8](v31, v33);
  v115 = &v91 - v34;
  v35 = type metadata accessor for BloodPressurePDFChart();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v35, v38);
  sub_29D912DB8();
  v105 = v39;
  v103 = *(v39 - 8);
  v40 = *(v103 + 64);
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v101 = &v91 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v46 = &v91 - v45;
  v47 = *(v35 + 24);
  v92 = a1;
  v121 = *(a1 + v47);
  sub_29D91505C(a1, &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFChart);
  v48 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v49 = swift_allocObject();
  sub_29D9156C8(&v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for BloodPressurePDFChart);
  sub_29D90A99C(0);
  sub_29D9339F8();
  sub_29D912EBC();
  sub_29D912AB8(&qword_2A17B7E08, sub_29D90A99C);
  sub_29D9137A0();
  sub_29D912AB8(&qword_2A17B8020, type metadata accessor for BloodPressureMinMaxCoordinate);
  sub_29D935E88();
  v100 = v46;
  sub_29D9397B8();
  v93 = v35;
  v50 = v92;
  v51 = v92 + *(v35 + 28);
  v52 = MEMORY[0x29EDBCA98];
  v53 = MEMORY[0x29EDBCA88];
  if (*(v51 + 8))
  {
    v54 = 1;
    v55 = v98;
    v56 = v97;
    v57 = v94;
    v58 = v115;
    v59 = v113;
  }

  else
  {
    v60 = *v51;
    sub_29D938C18();
    v123 = v60;
    sub_29D937D48();

    v61 = v102;
    sub_29D937F58();
    sub_29D9386D8();
    v62 = v107;
    v55 = v98;
    v63 = MEMORY[0x29EDB86E0];
    sub_29D937C98();
    sub_29D6D70B4(v122);
    (*(v106 + 8))(v61, v55);
    v123 = sub_29D939578();
    sub_29D915AC8();
    v116 = sub_29D939608();
    v123 = v55;
    v124 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = v108;
    v56 = v97;
    sub_29D937C48();

    (*(v109 + 8))(v62, v56);
    v123 = v56;
    v124 = v52;
    v125 = OpaqueTypeConformance2;
    v126 = v53;
    swift_getOpaqueTypeConformance2();
    v66 = v104;
    v67 = v96;
    sub_29D937C78();
    (*(v95 + 8))(v65, v67);
    v59 = v113;
    v68 = v115;
    v57 = v94;
    (*(v113 + 32))(v115, v66, v94);
    v54 = 0;
    v58 = v68;
  }

  v69 = 1;
  v98 = *(v59 + 56);
  (v98)(v58, v54, 1, v57);
  v70 = v50 + *(v93 + 32);
  if ((*(v70 + 8) & 1) == 0)
  {
    v71 = *v70;
    sub_29D938C18();
    v123 = v71;
    v72 = v109;
    sub_29D937D48();

    v73 = v102;
    sub_29D937F58();
    sub_29D9386D8();
    v74 = v107;
    v75 = MEMORY[0x29EDB86E0];
    sub_29D937C98();
    sub_29D6D70B4(&v123);
    (*(v106 + 8))(v73, v55);
    v116 = sub_29D939568();
    sub_29D915AC8();
    v76 = MEMORY[0x29EDBCA98];
    v120 = sub_29D939608();
    v116 = v55;
    v117 = v75;
    v77 = swift_getOpaqueTypeConformance2();
    v78 = v108;
    sub_29D937C48();

    (*(v72 + 8))(v74, v56);
    v116 = v56;
    v117 = v76;
    v118 = v77;
    v119 = MEMORY[0x29EDBCA88];
    swift_getOpaqueTypeConformance2();
    v79 = v104;
    v80 = v96;
    sub_29D937C78();
    (*(v95 + 8))(v78, v80);
    (*(v113 + 32))(v114, v79, v57);
    v69 = 0;
  }

  v81 = v114;
  (v98)(v114, v69, 1, v57);
  v82 = v103;
  v83 = v101;
  v84 = v100;
  v85 = v105;
  (*(v103 + 16))(v101, v100, v105);
  v116 = v83;
  v86 = v115;
  v87 = v110;
  sub_29D915D60(v115, v110, sub_29D91352C);
  v117 = v87;
  v88 = v111;
  sub_29D915D60(v81, v111, sub_29D91352C);
  v118 = v88;
  sub_29D90AD20(&v116, v112);
  sub_29D915DC8(v81, sub_29D91352C);
  sub_29D915DC8(v86, sub_29D91352C);
  v89 = *(v82 + 8);
  v89(v84, v85);
  sub_29D915DC8(v88, sub_29D91352C);
  sub_29D915DC8(v87, sub_29D91352C);
  return (v89)(v83, v85);
}

uint64_t sub_29D90CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v210 = a2;
  sub_29D9133AC();
  v213 = v3;
  v212 = *(v3 - 8);
  v4 = *(v212 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v211 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v209 = &v178 - v9;
  v207 = sub_29D938018();
  v244 = *(v207 - 8);
  v10 = *(v244 + 64);
  MEMORY[0x2A1C7C4A8](v207, v11);
  v220 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D916238(0, &qword_2A17B7DE8, MEMORY[0x29EDB8708]);
  v225 = v13;
  v206 = *(v13 - 8);
  v14 = *(v206 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v205 = &v178 - v16;
  sub_29D913274();
  v228 = v17;
  v208 = *(v17 - 8);
  v18 = *(v208 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v227 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v226 = &v178 - v23;
  v192 = sub_29D938C38();
  v190 = *(v192 - 8);
  v24 = *(v190 + 64);
  MEMORY[0x2A1C7C4A8](v192, v25);
  v188 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_29D937EA8();
  v187 = *(v193 - 8);
  v27 = *(v187 + 64);
  MEMORY[0x2A1C7C4A8](v193, v28);
  v186 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9160EC(0, &qword_2A17B7DD8, MEMORY[0x29EDB86A0]);
  v195 = v30;
  v191 = *(v30 - 8);
  v31 = *(v191 + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v189 = &v178 - v33;
  sub_29D91317C();
  v198 = v34;
  v197 = *(v34 - 1);
  v35 = *(v197 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v194 = &v178 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913038();
  v224 = v38;
  v204 = *(v38 - 8);
  v39 = *(v204 + 64);
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v223 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v243 = &v178 - v44;
  v45 = MEMORY[0x29EDB8620];
  sub_29D915EA8(0, &qword_2A17B8030, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v46 - 8, v48);
  v215 = &v178 - v49;
  sub_29D915EA8(0, &qword_2A17B1F90, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v45);
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x2A1C7C4A8](v50 - 8, v52);
  v185 = &v178 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v53, v55);
  v248 = &v178 - v56;
  sub_29D6F18F0(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v57 - 8, v59);
  v247 = &v178 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_29D933CC8();
  v250 = *(v246 - 8);
  v61 = *(v250 + 64);
  MEMORY[0x2A1C7C4A8](v246, v62);
  v241 = &v178 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915EFC(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v64 - 8, v66);
  v245 = &v178 - v67;
  v214 = sub_29D937F38();
  v181 = *(v214 - 8);
  v68 = *(v181 + 64);
  MEMORY[0x2A1C7C4A8](v214, v69);
  v180 = &v178 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D916238(0, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
  v184 = v71;
  v183 = *(v71 - 8);
  v72 = *(v183 + 64);
  MEMORY[0x2A1C7C4A8](v71, v73);
  v182 = &v178 - v74;
  sub_29D912F48();
  v222 = v75;
  v203 = *(v75 - 8);
  v76 = *(v203 + 64);
  v78 = MEMORY[0x2A1C7C4A8](v75, v77);
  v221 = &v178 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v78, v80);
  v242 = &v178 - v81;
  v202 = sub_29D937DD8();
  v201 = *(v202 - 8);
  v82 = *(v201 + 64);
  MEMORY[0x2A1C7C4A8](v202, v83);
  v85 = &v178 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29D937DF8();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  v90 = MEMORY[0x2A1C7C4A8](v86, v89);
  v92 = &v178 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v90, v93);
  v95 = &v178 - v94;
  sub_29D9134CC();
  v216 = v96;
  v200 = *(v96 - 8);
  v97 = *(v200 + 64);
  MEMORY[0x2A1C7C4A8](v96, v98);
  v240 = &v178 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v101 = *(a1 + v100[9]);
  v102 = (v87 + 8);
  v219 = v85;
  v218 = v86;
  v217 = v92;
  v199 = v102;
  if (v101)
  {
    v249 = sub_29D939568();
    sub_29D937D98();
    sub_29D937DE8();
    v103 = *v102;
    v196 = v102 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v103(v95, v86);
    sub_29D937D98();
    sub_29D937DC8();
    v104 = 68;
  }

  else
  {
    v249 = sub_29D939578();
    sub_29D937D88();
    sub_29D937DE8();
    v105 = *v102;
    v196 = v102 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v95, v86);
    sub_29D937D88();
    sub_29D937DB8();
    v104 = 83;
  }

  v232 = v104;
  v106 = *(a1 + v100[8]);
  v231 = a1;
  [v106 _value];
  v108 = v107;
  sub_29D938C18();
  v238 = v100[5];
  v229 = *MEMORY[0x29EDB9CB8];
  v179 = v100;
  v230 = *(v250 + 104);
  v239 = v250 + 104;
  v109 = v241;
  v110 = v246;
  v230(v241);
  v236 = sub_29D933CE8();
  v111 = *(v236 - 8);
  v235 = *(v111 + 56);
  v237 = v111 + 56;
  v112 = v247;
  v235(v247, 1, 1, v236);
  sub_29D937D38();

  v234 = sub_29D6F18F0;
  sub_29D914FF4(v112, sub_29D6F18F0);
  v113 = *(v250 + 8);
  v250 += 8;
  v233 = v113;
  v113(v109, v110);
  sub_29D938C18();
  [v106 _value];
  v256[0] = v114;
  sub_29D937D48();

  sub_29D938C18();
  v256[0] = v232;
  v256[1] = 0xE100000000000000;
  sub_29D937D48();

  v232 = sub_29D9339F8();
  v115 = v180;
  sub_29D937F18();
  v256[0] = v249;
  v215 = sub_29D915AC8();

  v116 = MEMORY[0x29EDBCA98];
  v117 = MEMORY[0x29EDBCA88];
  v256[0] = sub_29D939608();
  v118 = v182;
  v119 = v214;
  v120 = v116;
  v121 = MEMORY[0x29EDB86D0];
  sub_29D937C48();

  (*(v181 + 8))(v115, v119);
  sub_29D9386D8();
  v252 = v119;
  v253 = v120;
  v254 = v121;
  v255 = v117;
  v122 = v231;
  v214 = MEMORY[0x29EDB8598];
  swift_getOpaqueTypeConformance2();
  v123 = v184;
  sub_29D937C98();
  sub_29D6D70B4(v256);
  (*(v183 + 8))(v118, v123);
  sub_29D938C18();
  v124 = v241;
  v125 = v246;
  (v230)(v241, v229, v246);
  v126 = v247;
  v235(v247, 1, 1, v236);
  sub_29D937D38();

  sub_29D914FF4(v126, v234);
  v233(v124, v125);
  sub_29D938C18();
  v127 = v179;
  [*(v122 + v179[6]) _value];
  v252 = v128;
  sub_29D937D48();

  sub_29D938C18();
  [*(v122 + v127[7]) _value];
  v252 = v129;
  sub_29D937D48();

  v130 = v186;
  sub_29D937E88();
  v131 = v190;
  v132 = v188;
  v133 = v192;
  (*(v190 + 104))(v188, *MEMORY[0x29EDBC6F8], v192);
  v134 = v189;
  v135 = v193;
  v136 = MEMORY[0x29EDB8698];
  sub_29D937C38();
  (*(v131 + 8))(v132, v133);
  (*(v187 + 8))(v130, v135);
  v252 = v249;

  v137 = MEMORY[0x29EDBCA98];
  v138 = MEMORY[0x29EDBCA88];
  sub_29D939608();
  v139 = sub_29D9395A8();

  v251 = v139;
  v252 = v135;
  v253 = v136;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v141 = v194;
  v142 = v195;
  sub_29D937C48();

  v143 = (*(v191 + 8))(v134, v142);
  MEMORY[0x2A1C7C4A8](v143, v144);
  sub_29D9398A8();
  v252 = v142;
  v253 = v137;
  v254 = OpaqueTypeConformance2;
  v255 = v138;
  swift_getOpaqueTypeConformance2();
  v145 = v198;
  sub_29D937C18();
  (*(v197 + 8))(v141, v145);
  sub_29D938C18();
  v146 = v241;
  v147 = v246;
  (v230)(v241, v229, v246);
  v148 = v247;
  v235(v247, 1, 1, v236);
  sub_29D937D38();

  sub_29D914FF4(v148, v234);
  v233(v146, v147);
  sub_29D938C18();
  v252 = v108;
  sub_29D937D48();

  v149 = v220;
  sub_29D938008();
  v252 = sub_29D939598();
  v150 = v205;
  v151 = v207;
  v152 = MEMORY[0x29EDBCA98];
  v153 = MEMORY[0x29EDB8700];
  v154 = MEMORY[0x29EDBCA88];
  sub_29D937C48();

  v155 = *(v244 + 8);
  v244 += 8;
  v198 = v155;
  v155(v149, v151);
  v252 = v151;
  v253 = v152;
  v254 = v153;
  v255 = v154;
  v214 = swift_getOpaqueTypeConformance2();
  sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670]);
  v156 = v225;
  sub_29D937C68();
  v206 = *(v206 + 8);
  (v206)(v150, v156);
  sub_29D938C18();
  v157 = v246;
  (v230)(v146, v229, v246);
  v158 = v247;
  v235(v247, 1, 1, v236);
  sub_29D937D38();

  sub_29D914FF4(v158, v234);
  v233(v146, v157);
  sub_29D938C18();
  v252 = v108;
  sub_29D937D48();

  v159 = v220;
  sub_29D938008();
  v252 = v249;

  v252 = sub_29D939608();
  sub_29D937C48();

  v198(v159, v151);
  swift_getOpaqueTypeConformance2();
  v160 = v209;
  v161 = v225;
  sub_29D937C68();
  (v206)(v150, v161);
  v162 = v203;
  v163 = v221;
  (*(v203 + 16))(v221, v242, v222);
  v252 = v163;
  v164 = v204;
  v165 = v223;
  (*(v204 + 16))(v223, v243, v224);
  v253 = v165;
  v166 = v208;
  v167 = v227;
  v168 = v226;
  v169 = v228;
  (*(v208 + 16))(v227, v226, v228);
  v254 = v167;
  v170 = v212;
  v171 = v211;
  v172 = v213;
  (*(v212 + 16))(v211, v160, v213);
  v255 = v171;
  sub_29D90AF18(&v252, v210);

  v250 = *(v170 + 8);
  (v250)(v160, v172);
  v249 = *(v166 + 8);
  v249(v168, v169);
  v173 = *(v164 + 8);
  v174 = v224;
  v173(v243, v224);
  v175 = *(v162 + 8);
  v176 = v222;
  v175(v242, v222);
  (*(v201 + 8))(v219, v202);
  (*v199)(v217, v218);
  (*(v200 + 8))(v240, v216);
  (v250)(v171, v172);
  v249(v227, v228);
  v173(v223, v174);
  return (v175)(v221, v176);
}

uint64_t sub_29D90E7A0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_29D93AD38();
  sub_29D69AB60();
  v2 = sub_29D9392F8();
  v3 = v6;
  v4 = v7;
  if (qword_2A17B0DB0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v8 = sub_29D9392C8();
  v10 = v9;
  v12 = v11;
  sub_29D69ABB4(v2, v3, v4 & 1);

  sub_29D915AC8();

  sub_29D939608();
  v13 = sub_29D9392B8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_29D69ABB4(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

int *sub_29D90E990(uint64_t a1)
{
  v3 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x29EDCA190];
  if (v9)
  {
    v46 = v1;
    v47 = MEMORY[0x29EDCA190];
    sub_29D7EE7F8(0, v9, 0);
    v11 = v47;
    v12 = *(v4 + 80);
    v44 = a1;
    v45 = v4;
    v13 = a1 + ((v12 + 32) & ~v12);
    v14 = *(v4 + 72);
    v15 = v9;
    do
    {
      sub_29D91505C(v13, v8, type metadata accessor for BloodPressureMinMaxCoordinate);
      [*&v8[*(v3 + 24)] _value];
      v17 = v16;
      sub_29D914FF4(v8, type metadata accessor for BloodPressureMinMaxCoordinate);
      v47 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_29D7EE7F8((v18 > 1), v19 + 1, 1);
        v11 = v47;
      }

      *(v11 + 16) = v20;
      *(v11 + 8 * v19 + 32) = v17;
      v13 += v14;
      --v15;
    }

    while (v15);
    a1 = v44;
  }

  else
  {
    v20 = *(MEMORY[0x29EDCA190] + 16);
    if (!v20)
    {
      goto LABEL_33;
    }

    v45 = v4;
    v46 = v1;
    v11 = MEMORY[0x29EDCA190];
  }

  v21 = *(v11 + 32);
  v22 = v20 - 1;
  if (v20 == 1)
  {
    v23 = v45;
  }

  else
  {
    v24 = (v11 + 40);
    v23 = v45;
    do
    {
      v25 = *v24++;
      v26 = v25;
      if (v25 < v21)
      {
        v21 = v26;
      }

      --v22;
    }

    while (v22);
  }

  if (v9)
  {
    v47 = v10;
    sub_29D7EE7F8(0, v9, 0);
    v10 = v47;
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    do
    {
      sub_29D91505C(v27, v8, type metadata accessor for BloodPressureMinMaxCoordinate);
      [*&v8[*(v3 + 28)] _value];
      v30 = v29;
      sub_29D914FF4(v8, type metadata accessor for BloodPressureMinMaxCoordinate);
      v47 = v10;
      v32 = *(v10 + 16);
      v31 = *(v10 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_29D7EE7F8((v31 > 1), v32 + 1, 1);
        v10 = v47;
      }

      *(v10 + 16) = v33;
      *(v10 + 8 * v32 + 32) = v30;
      v27 += v28;
      --v9;
    }

    while (v9);
    v1 = v46;
  }

  else
  {
    v33 = *(v10 + 16);
    v1 = v46;
    if (!v33)
    {
      goto LABEL_33;
    }
  }

  v34 = *(v10 + 32);
  v35 = v33 - 1;
  if (v33 != 1)
  {
    v36 = (v10 + 40);
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

  result = type metadata accessor for BloodPressurePDFChart();
  v41 = *(v1 + result[14]);
  v42 = *(v1 + result[16]);
  if (v21 - v42 < v41)
  {
    v41 = v21 - v42;
  }

  v40 = result[15];
  v43 = v34 + v42;
  if (*(v1 + v40) > v43)
  {
    v43 = *(v1 + v40);
  }

  if (v41 > v43)
  {
    __break(1u);
LABEL_33:

    result = type metadata accessor for BloodPressurePDFChart();
    if (*(v1 + result[14]) > *(v1 + result[15]))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29D90ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v101 = a2;
  sub_29D914364();
  v105 = v3;
  v103 = *(v3 - 8);
  v4 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v95 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914330(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v100 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v99 = v87 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v102 = v87 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v104 = v87 - v19;
  v20 = sub_29D937D68();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v24 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D937CB8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v29 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for BloodPressurePDFChart();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v34 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D937CF8();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v35 - 8, v37);
  sub_29D913F14();
  v97 = *(v38 - 8);
  v98 = v38;
  v39 = *(v97 + 64);
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v96 = v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v45 = v87 - v44;
  v106[0] = 0x4024000000000000;
  sub_29D74D930();
  sub_29D937CC8();
  sub_29D91505C(a1, v34, type metadata accessor for BloodPressurePDFChart);
  v46 = *(v31 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = v47 + v32;
  v49 = swift_allocObject();
  v91 = v47;
  sub_29D9156C8(v34, v49 + v47, type metadata accessor for BloodPressurePDFChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D914CDC(0, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
  sub_29D914144();
  v94 = v45;
  v92 = v24;
  sub_29D937F88();
  v93 = v30;
  v50 = *(v30 + 28);
  v51 = v90;
  v52 = (v90 + v50);
  v53 = *(v52 + 8);
  v88 = v34;
  v89 = v29;
  v87[1] = v46;
  v87[0] = v48;
  if (v53)
  {
    v54 = 1;
    v55 = v91;
  }

  else
  {
    v56 = *v52;
    sub_29D916164(0, &qword_2A17B8000, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_29D93DDB0;
    *(v57 + 32) = v56;
    sub_29D91505C(v51, v34, type metadata accessor for BloodPressurePDFChart);
    v58 = v51;
    v59 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v91;
    sub_29D9156C8(v34, v60 + v91, type metadata accessor for BloodPressurePDFChart);
    *(v60 + v59) = v56;
    v51 = v58;
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D9143F8();
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8);
    v62 = v95;
    sub_29D937FB8();
    (*(v103 + 32))(v104, v62, v105);
    v54 = 0;
    v55 = v61;
  }

  v63 = *(v103 + 56);
  v64 = 1;
  v63(v104, v54, 1, v105);
  v65 = v51 + *(v93 + 8);
  if ((*(v65 + 8) & 1) == 0)
  {
    v66 = v51;
    v67 = *v65;
    sub_29D916164(0, &qword_2A17B8000, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_29D93DDB0;
    *(v68 + 32) = v67;
    v69 = v88;
    sub_29D91505C(v66, v88, type metadata accessor for BloodPressurePDFChart);
    v70 = v95;
    v71 = v103;
    v93 = v63;
    v72 = (v87[0] + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_29D9156C8(v69, v73 + v55, type metadata accessor for BloodPressurePDFChart);
    *(v73 + v72) = v67;
    v74 = v105;
    v75 = v102;
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D9143F8();
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8);
    sub_29D937FB8();
    v76 = v74;
    v63 = v93;
    (*(v71 + 32))(v75, v70, v76);
    v64 = 0;
  }

  v77 = v102;
  v63(v102, v64, 1, v105);
  v79 = v96;
  v78 = v97;
  v80 = v94;
  v81 = v98;
  (*(v97 + 16))(v96, v94, v98);
  v106[0] = v79;
  v82 = v104;
  v83 = v99;
  sub_29D91505C(v104, v99, sub_29D914330);
  v106[1] = v83;
  v84 = v100;
  sub_29D91505C(v77, v100, sub_29D914330);
  v106[2] = v84;
  sub_29D9106FC(v106, v101);
  sub_29D914FF4(v77, sub_29D914330);
  sub_29D914FF4(v82, sub_29D914330);
  v85 = *(v78 + 8);
  v85(v80, v81);
  sub_29D914FF4(v84, sub_29D914330);
  sub_29D914FF4(v83, sub_29D914330);
  return (v85)(v79, v81);
}

uint64_t sub_29D90F64C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v71 = a1;
  v76 = a2;
  sub_29D915748(0, &qword_2A17B8018, MEMORY[0x29EDB8550], sub_29D913FA8);
  v75 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v67 - v5;
  v7 = sub_29D937E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D937E48();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v69 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914010();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913FDC(0);
  v74 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913FA8(0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v67 - v32;
  v34 = sub_29D937BE8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v34, v37);
  v40 = &v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v41);
  v43 = &v67 - v42;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_29D937BD8();
  sub_29D937FD8();
  if (v78)
  {
    v44 = 1;
LABEL_21:
    (*(v20 + 56))(v33, v44, 1, v74);
    v61 = *(v35 + 16);
    v61(v40, v43, v34);
    sub_29D91505C(v33, v30, sub_29D913FA8);
    v61(v6, v40, v34);
    sub_29D914244(&qword_2A17B7EB0, sub_29D913FA8, sub_29D9142B4);
    v62 = v75;
    v63 = *(v75 + 48);
    sub_29D91505C(v30, &v6[v63], sub_29D913FA8);
    v64 = v76;
    (*(v35 + 32))(v76, v6, v34);
    sub_29D9156C8(&v6[v63], v64 + *(v62 + 48), sub_29D913FA8);
    sub_29D914FF4(v33, sub_29D913FA8);
    v65 = *(v35 + 8);
    v65(v43, v34);
    sub_29D914FF4(v30, sub_29D913FA8);
    return (v65)(v40, v34);
  }

  v45 = v77;
  result = type metadata accessor for BloodPressurePDFChart();
  v47 = v71 + *(result + 28);
  v48 = *v47;
  if (v47[8])
  {
    v48 = 0;
  }

  v49 = v48 - 10;
  if (__OFSUB__(v48, 10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v50 = __OFADD__(v48, 10);
  v51 = v48 + 10;
  if (v50)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v51 < v49)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v52 = v71 + *(result + 32);
  if (v52[8])
  {
    v53 = 0;
  }

  else
  {
    v53 = *v52;
  }

  v54 = v53 - 10;
  if (__OFSUB__(v53, 10))
  {
    goto LABEL_25;
  }

  v50 = __OFADD__(v53, 10);
  v55 = v53 + 10;
  if (v50)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v55 >= v54)
  {
    if (v45 < v49 || v51 < v45)
    {
      v56 = 1;
      if (v45 < v54 || v55 < v45)
      {
        v71 = &v67;
        MEMORY[0x2A1C7C4A8](result, 1);
        v67 = v66;
        sub_29D937E38();
        sub_29D937E08();
        sub_29D915EA8(0, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
        v58 = v57;
        v59 = sub_29D9140A0();
        v66[2] = v58;
        v66[3] = v59;
        v66[0] = sub_29D915B24;
        v66[1] = v67;
        v60 = v68;
        sub_29D937D18();
        (*(v72 + 32))(v24, v60, v73);
        v56 = 0;
      }
    }

    else
    {
      v56 = 1;
    }

    (*(v72 + 56))(v24, v56, 1, v73);
    sub_29D9156C8(v24, v33, sub_29D913FDC);
    v44 = 0;
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29D90FD58@<X0>(uint64_t a1@<X8>)
{
  sub_29D93AD38();
  sub_29D69AB60();
  v2 = sub_29D9392F8();
  v4 = v3;
  v6 = v5;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v7 = sub_29D9392C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_29D69ABB4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_29D90FE70()
{
  v0 = sub_29D937E18();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D937E48();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D91448C();
  sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
  return sub_29D937D18();
}

uint64_t sub_29D90FFFC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_29D9101AC(a1 & 1, a2);
  sub_29D69AB60();
  v5 = sub_29D9392F8();
  v7 = v6;
  v9 = v8;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v10 = sub_29D9392C8();
  v12 = v11;
  v14 = v13;
  sub_29D69ABB4(v5, v7, v9 & 1);

  if (a1)
  {
    sub_29D939568();
  }

  else
  {
    sub_29D939578();
  }

  sub_29D915AC8();
  sub_29D939608();
  v15 = sub_29D9392B8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_29D69ABB4(v10, v12, v14 & 1);

  v22 = sub_29D939598();
  result = sub_29D9390D8();
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_29D9101AC(uint64_t a1, uint64_t a2)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D90A9D0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  v4 = MEMORY[0x29EDC9BA8];
  *(v3 + 16) = xmmword_29D93DDB0;
  v5 = MEMORY[0x29EDC9C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a2;
  v6 = sub_29D939D88();

  return v6;
}

uint64_t sub_29D9102E4()
{
  v0 = sub_29D937E18();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D937E48();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D91448C();
  sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
  return sub_29D937D18();
}

uint64_t sub_29D910468@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D90A9D0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x29EDC9BA8];
  *(v4 + 16) = xmmword_29D93DDB0;
  v6 = MEMORY[0x29EDC9C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  sub_29D939D88();

  sub_29D69AB60();
  v7 = sub_29D9392F8();
  v9 = v8;
  v11 = v10;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v12 = sub_29D9392C8();
  v14 = v13;
  v16 = v15;
  sub_29D69ABB4(v7, v9, v11 & 1);

  sub_29D939568();
  sub_29D915AC8();
  sub_29D939608();
  v17 = sub_29D9392B8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29D69ABB4(v12, v14, v16 & 1);

  v24 = sub_29D939598();
  result = sub_29D9390D8();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_29D9106FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D915E28(0, &qword_2A17B8010, sub_29D913F14, sub_29D914330);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - v8;
  sub_29D913F14();
  v11 = v10;
  sub_29D912AB8(&qword_2A17B7F00, sub_29D913F14);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, *a1, v11);
  sub_29D914330(0);
  sub_29D914244(&qword_2A17B7F08, sub_29D914330, sub_29D914644);
  v13 = *(v5 + 56);
  sub_29D91505C(a1[1], &v9[v13], sub_29D914330);
  v14 = *(v5 + 72);
  sub_29D91505C(a1[2], &v9[v14], sub_29D914330);
  (*(v12 + 32))(a2, v9, v11);
  sub_29D9156C8(&v9[v13], a2 + *(v5 + 56), sub_29D914330);
  return sub_29D9156C8(&v9[v14], a2 + *(v5 + 72), sub_29D914330);
}

uint64_t sub_29D910924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v2 = sub_29D937D68();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D937CB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = type metadata accessor for BloodPressurePDFChart();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v11);
  sub_29D6F18F0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933CC8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D937CF8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  (*(v18 + 104))(v22, *MEMORY[0x29EDB9CB8], v17);
  v26 = sub_29D933CE8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_29D937CD8();
  sub_29D914FF4(v16, sub_29D6F18F0);
  (*(v18 + 8))(v22, v17);
  sub_29D91505C(v30[0], v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFChart);
  v27 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v28 = swift_allocObject();
  sub_29D9156C8(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for BloodPressurePDFChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D914B40();
  sub_29D914244(&qword_2A17B7F58, sub_29D914B40, sub_29D914D90);
  return sub_29D937F88();
}

uint64_t sub_29D910D18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v237 = a1;
  v240 = a2;
  sub_29D914BDC(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v229 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915748(0, &qword_2A17B7FE8, MEMORY[0x29EDB8550], sub_29D914D5C);
  v226 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v225 = &v183 - v9;
  sub_29D914CA8(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v227 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915748(0, &qword_2A17B2290, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v211 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v210 = &v183 - v17;
  sub_29D914CDC(0, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v219 = v18;
  v218 = *(v18 - 8);
  v19 = *(v218 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v209 = &v183 - v21;
  v22 = sub_29D937EE8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v206 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_29D937F08();
  v207 = *(v208 - 8);
  v26 = *(v207 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v208, v27);
  v217 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v216 = &v183 - v31;
  v32 = sub_29D937E18();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32 - 8, v34);
  v205 = &v183 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D937E48();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v36 - 8, v38);
  v202 = &v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_29D933828();
  v199 = *(v201 - 8);
  v40 = *(v199 + 64);
  MEMORY[0x2A1C7C4A8](v201, v41);
  v195 = &v183 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_29D9338A8();
  v191 = *(v193 - 8);
  v43 = *(v191 + 64);
  MEMORY[0x2A1C7C4A8](v193, v44);
  v190 = &v183 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_29D9338F8();
  v192 = *(v197 - 8);
  v46 = *(v192 + 64);
  v48 = MEMORY[0x2A1C7C4A8](v197, v47);
  v188 = &v183 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v189 = &v183 - v52;
  MEMORY[0x2A1C7C4A8](v51, v53);
  v194 = &v183 - v54;
  sub_29D915EA8(0, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v200 = v55;
  v198 = *(v55 - 8);
  v56 = *(v198 + 64);
  MEMORY[0x2A1C7C4A8](v55, v57);
  v196 = &v183 - v58;
  sub_29D6F121C();
  v204 = v59;
  v203 = *(v59 - 8);
  v60 = *(v203 + 64);
  v62 = MEMORY[0x2A1C7C4A8](v59, v61);
  v214 = &v183 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v62, v64);
  v213 = &v183 - v65;
  sub_29D6F1114();
  v223 = v66;
  v222 = *(v66 - 8);
  v67 = *(v222 + 64);
  MEMORY[0x2A1C7C4A8](v66, v68);
  v220 = &v183 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914D5C(0);
  v71 = *(*(v70 - 8) + 64);
  v73 = MEMORY[0x2A1C7C4A8](v70 - 8, v72);
  v224 = &v183 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v73, v75);
  v228 = &v183 - v76;
  v77 = sub_29D937BE8();
  v233 = *(v77 - 8);
  v234 = v77;
  v78 = *(v233 + 64);
  v80 = MEMORY[0x2A1C7C4A8](v77, v79);
  v232 = &v183 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v80, v82);
  v236 = &v183 - v83;
  sub_29D914C24(0, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
  v238 = *(v84 - 8);
  v239 = v84;
  v85 = *(v238 + 64);
  MEMORY[0x2A1C7C4A8](v84, v86);
  v235 = &v183 - v87;
  v88 = sub_29D933CC8();
  v89 = *(v88 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v88, v91);
  v93 = &v183 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D933CE8();
  v230 = *(v94 - 8);
  v231 = v94;
  v95 = *(v230 + 64);
  MEMORY[0x2A1C7C4A8](v94, v96);
  v98 = &v183 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8();
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v99 - 8, v101);
  v103 = &v183 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D9339F8();
  v105 = *(v104 - 8);
  v106 = *(v105 + 64);
  v108 = MEMORY[0x2A1C7C4A8](v104, v107);
  v212 = &v183 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x2A1C7C4A8](v108, v110);
  v113 = &v183 - v112;
  MEMORY[0x2A1C7C4A8](v111, v114);
  v116 = &v183 - v115;
  sub_29D937FD8();
  if ((*(v105 + 48))(v103, 1, v104) != 1)
  {
    (*(v105 + 32))(v116, v103, v104);
    sub_29D933C88();
    v221 = v113;
    sub_29D933AD8();
    (*(v89 + 104))(v93, *MEMORY[0x29EDB9CF0], v88);
    v186 = v116;
    v185 = sub_29D933CD8();
    (*(v89 + 8))(v93, v88);
    sub_29D90A9D0(0, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v119 = *(v105 + 72);
    v120 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_29D93F680;
    v215 = v105;
    v122 = *(v105 + 16);
    v123 = v237;
    v122(v121 + v120, v237, v104);
    v124 = type metadata accessor for BloodPressurePDFChart();
    v122(v121 + v120 + v119, v123 + *(v124 + 20), v104);
    v125 = v221;
    v126 = sub_29D719CC4(v221, v121);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v187 = v98;
    if (v185 == sub_29D933AF8())
    {
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v241 = xmmword_2A17D0FF0;
      v242 = xmmword_2A17D1000;
      v243 = qword_2A17D1010;
      sub_29D935E88();
      sub_29D937BD8();
      v127 = *(v237 + *(v124 + 36)) == 1;
      v128 = v228;
      v184 = v104;
      if (v127)
      {
        v129 = v212;
        sub_29D933948();
        v130 = sub_29D933978();
        v131 = (*(v215 + 8))(v129, v104);
        v132 = 1;
        if (v130)
        {
          v133 = v188;
          MEMORY[0x29ED634A0](v131);
          v134 = v190;
          sub_29D933898();
          v135 = v189;
          sub_29D933808();
          (*(v191 + 8))(v134, v193);
          v136 = *(v192 + 8);
          v137 = v197;
          v136(v133, v197);
          v138 = v195;
          sub_29D933818();
          sub_29D9337C8();
          (*(v199 + 8))(v138, v201);
          v136(v135, v137);
          sub_29D937E38();
          sub_29D937E08();
          sub_29D912AB8(&qword_2A17B22A8, MEMORY[0x29EDB9BB0]);
          v139 = v196;
          sub_29D937D08();
          if (qword_2A17B0DA8 != -1)
          {
            swift_once();
          }

          sub_29D6F12CC();
          v140 = v213;
          v141 = v200;
          sub_29D937EC8();
          (*(v198 + 8))(v139, v141);
          sub_29D935E88();
          sub_29D937ED8();
          v142 = v216;
          sub_29D937EF8();
          v143 = v203;
          v144 = *(v203 + 16);
          v145 = v214;
          v146 = v204;
          v144(v214, v140, v204);
          v147 = v207;
          v148 = *(v207 + 16);
          v149 = v208;
          v148(v217, v142, v208);
          v150 = v210;
          v144(v210, v145, v146);
          v151 = v211;
          v152 = *(v211 + 48);
          v153 = v217;
          v148(&v150[v152], v217, v149);
          v154 = v209;
          (*(v143 + 32))(v209, v150, v146);
          (*(v147 + 32))(v154 + *(v151 + 48), &v150[v152], v149);
          v155 = *(v147 + 8);
          v155(v216, v149);
          v156 = *(v143 + 8);
          v156(v213, v146);
          v155(v153, v149);
          v156(v214, v146);
          sub_29D68AB74(v154, v220);
          v132 = 0;
          v128 = v228;
        }

        v157 = v220;
        (*(v218 + 56))(v220, v132, 1, v219);
        sub_29D9157C4(v157, v128, sub_29D6F1114);
        v165 = 0;
      }

      else
      {
        v165 = 1;
      }

      (*(v222 + 56))(v128, v165, 1, v223);
      v167 = v232;
      v166 = v233;
      v168 = v128;
      v169 = *(v233 + 16);
      v170 = v234;
      v169(v232, v236, v234);
      v171 = v224;
      sub_29D915D60(v168, v224, sub_29D914D5C);
      v172 = v225;
      v169(v225, v167, v170);
      sub_29D914244(&qword_2A17B7F78, sub_29D914D5C, sub_29D914FA4);
      v173 = v226;
      v174 = *(v226 + 48);
      sub_29D915D60(v171, &v172[v174], sub_29D914D5C);
      v175 = v227;
      (*(v166 + 32))(v227, v172, v170);
      sub_29D9157C4(&v172[v174], v175 + *(v173 + 48), sub_29D914D5C);
      sub_29D915DC8(v168, sub_29D914D5C);
      v176 = *(v166 + 8);
      v176(v236, v170);
      v177 = *(v215 + 8);
      v178 = v184;
      v177(v221, v184);
      (*(v230 + 8))(v187, v231);
      v177(v186, v178);
      sub_29D915DC8(v171, sub_29D914D5C);
      v176(v167, v170);
      v179 = v229;
      sub_29D9157C4(v175, v229, sub_29D914CA8);
      sub_29D914C24(0, &qword_2A17B7FF8, sub_29D914CA8, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v164 = v179;
      v158 = v235;
    }

    else
    {
      v158 = v235;
      if (!v126)
      {
        v243 = 0;
        v241 = 0u;
        v242 = 0u;
        v180 = v232;
        sub_29D937BD8();
        v181 = *(v215 + 8);
        v181(v125, v104);
        (*(v230 + 8))(v187, v231);
        v181(v186, v104);
        (*(v233 + 32))(v158, v180, v234);
        goto LABEL_20;
      }

      v159 = v187;
      v160 = v186;
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v241 = xmmword_2A17D0FF0;
      v242 = xmmword_2A17D1000;
      v243 = qword_2A17D1010;
      sub_29D935E88();
      v161 = v232;
      sub_29D937BD8();
      v162 = *(v215 + 8);
      v162(v125, v104);
      (*(v230 + 8))(v159, v231);
      v162(v160, v104);
      v163 = v229;
      (*(v233 + 32))(v229, v161, v234);
      sub_29D914C24(0, &qword_2A17B7FF8, sub_29D914CA8, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v164 = v163;
    }

    sub_29D9157C4(v164, v158, sub_29D914BDC);
LABEL_20:
    sub_29D914C24(0, &qword_2A17B7FF0, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    v118 = v240;
    sub_29D68AACC(v158, v240);
    v117 = 0;
    return (*(v238 + 56))(v118, v117, 1, v239);
  }

  sub_29D914FF4(v103, sub_29D6A08F8);
  v117 = 1;
  v118 = v240;
  return (*(v238 + 56))(v118, v117, 1, v239);
}

uint64_t sub_29D912514@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D939518();
  sub_29D912568(v2, a1);
}

uint64_t sub_29D912568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_29D9386D8();
  v6 = v31;
  v7 = v31 * 0.5;
  v8 = v32;
  v9 = DWORD1(v32);
  v10 = *(&v32 + 1);
  v11 = v33;

  v12 = sub_29D9398A8();
  v14 = v13;
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v38 = *v30;
  v39 = *&v30[16];
  v36 = v34[0];
  v37 = v32;
  *&v40 = v12;
  *(&v40 + 1) = v13;
  v15 = sub_29D937D78();
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  sub_29D914C24(0, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
  v17 = (a2 + *(v16 + 36));
  v18 = *&v30[16];
  v17[2] = *v30;
  v17[3] = v18;
  v17[4] = v40;
  v19 = v37;
  *v17 = v36;
  v17[1] = v19;
  v41[2] = *v30;
  v41[3] = *&v30[16];
  v41[0] = v28;
  v41[1] = v29;
  v42 = v12;
  v43 = v14;
  sub_29D91505C(v34, v21, sub_29D915160);
  sub_29D91505C(&v36, v21, sub_29D9150CC);
  sub_29D914FF4(v41, sub_29D9150CC);
  *v21 = v7;
  *&v21[1] = v6;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = a1;
  v27 = 256;
  return sub_29D914FF4(v21, sub_29D915160);
}

uint64_t sub_29D9127EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D912AB8(&qword_2A17B7D98, type metadata accessor for BloodPressurePDFChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D9128A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D912AB8(&qword_2A17B7D98, type metadata accessor for BloodPressurePDFChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D912930(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D912AB8(&qword_2A17B3DB8, type metadata accessor for BloodPressurePDFChart);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D912AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D912B00()
{
  sub_29D6F17D4(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939198();
  v5 = sub_29D939168();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_29D9391A8();
  result = sub_29D914FF4(v4, sub_29D6F17D4);
  qword_2A17D0FE0 = v6;
  return result;
}

uint64_t sub_29D912BE8()
{
  sub_29D6F17D4(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939168();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_29D9391A8();
  result = sub_29D914FF4(v4, sub_29D6F17D4);
  qword_2A17D0FE8 = v6;
  return result;
}

double sub_29D912CC8()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0FF0 = v1;
  *&qword_2A17D1000 = v2;
  qword_2A17D1010 = v3;
  return result;
}

void sub_29D912D24()
{
  if (!qword_2A17B7DA0)
  {
    sub_29D913E94(255, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
    sub_29D9136A4();
    v0 = sub_29D937E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7DA0);
    }
  }
}

void sub_29D912DB8()
{
  if (!qword_2A17B7DB0)
  {
    sub_29D90A99C(255);
    sub_29D9339F8();
    sub_29D912EBC();
    sub_29D912AB8(&qword_2A17B7E08, sub_29D90A99C);
    sub_29D912AB8(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7DB0);
    }
  }
}

void sub_29D912EBC()
{
  if (!qword_2A17B7DB8)
  {
    sub_29D912F48();
    sub_29D913038();
    sub_29D913274();
    sub_29D9133AC();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7DB8);
    }
  }
}

void sub_29D912F48()
{
  if (!qword_2A17B7DC0)
  {
    sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DC0);
    }
  }
}

void sub_29D913038()
{
  if (!qword_2A17B7DC8)
  {
    sub_29D91317C();
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DC8);
    }
  }
}

void sub_29D91317C()
{
  if (!qword_2A17B7DD0)
  {
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DD0);
    }
  }
}

void sub_29D913274()
{
  if (!qword_2A17B7DE0)
  {
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708]);
    sub_29D937DF8();
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DE0);
    }
  }
}

void sub_29D9133AC()
{
  if (!qword_2A17B7DF8)
  {
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708]);
    sub_29D9134CC();
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DF8);
    }
  }
}

void sub_29D9134CC()
{
  if (!qword_2A17B7E00)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E00);
    }
  }
}

void sub_29D913560()
{
  if (!qword_2A17B7E18)
  {
    sub_29D916008(255, &qword_2A17B7E20, &qword_2A17B7E28);
    sub_29D9160EC(255, &qword_2A17B7E28, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E18);
    }
  }
}

unint64_t sub_29D9136A4()
{
  result = qword_2A17B7E30;
  if (!qword_2A17B7E30)
  {
    sub_29D913E94(255, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
    sub_29D914244(&qword_2A17B7E38, sub_29D912DB8, sub_29D9137A0);
    sub_29D913AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E30);
  }

  return result;
}

unint64_t sub_29D9137A0()
{
  result = qword_2A17B7E40;
  if (!qword_2A17B7E40)
  {
    sub_29D912EBC();
    sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D91317C();
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708]);
    sub_29D937DF8();
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670]);
    swift_getOpaqueTypeConformance2();
    sub_29D9134CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E40);
  }

  return result;
}

unint64_t sub_29D913AAC()
{
  result = qword_2A17B7E48;
  if (!qword_2A17B7E48)
  {
    sub_29D91352C(255);
    sub_29D916008(255, &qword_2A17B7E20, &qword_2A17B7E28);
    sub_29D9160EC(255, &qword_2A17B7E28, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E48);
  }

  return result;
}

void sub_29D913C14()
{
  if (!qword_2A17B7E50)
  {
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E50);
    }
  }
}

void sub_29D913D14()
{
  if (!qword_2A17B7E60)
  {
    sub_29D913C14();
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E60);
    }
  }
}

void sub_29D913E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D913F14()
{
  if (!qword_2A17B7E70)
  {
    sub_29D914CDC(255, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
    sub_29D914144();
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7E70);
    }
  }
}

void sub_29D914010()
{
  if (!qword_2A17B7E90)
  {
    sub_29D915EA8(255, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
    sub_29D9140A0();
    v0 = sub_29D937D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7E90);
    }
  }
}

unint64_t sub_29D9140A0()
{
  result = qword_2A17B7EA0;
  if (!qword_2A17B7EA0)
  {
    sub_29D915EA8(255, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EA0);
  }

  return result;
}

unint64_t sub_29D914144()
{
  result = qword_2A17B7EA8;
  if (!qword_2A17B7EA8)
  {
    sub_29D914CDC(255, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
    sub_29D914244(&qword_2A17B7EB0, sub_29D913FA8, sub_29D9142B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EA8);
  }

  return result;
}

uint64_t sub_29D914244(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D914364()
{
  if (!qword_2A17B7ED0)
  {
    sub_29D9143F8();
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8);
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7ED0);
    }
  }
}

void sub_29D9143F8()
{
  if (!qword_2A17B7ED8)
  {
    sub_29D91448C();
    sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
    v0 = sub_29D937D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7ED8);
    }
  }
}

void sub_29D91448C()
{
  if (!qword_2A17B7EE0)
  {
    sub_29D915EA8(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7EE0);
    }
  }
}

unint64_t sub_29D914518()
{
  result = qword_2A17B7EF8;
  if (!qword_2A17B7EF8)
  {
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912AB8(&qword_2A17B7F00, sub_29D913F14);
    sub_29D914244(&qword_2A17B7F08, sub_29D914330, sub_29D914644);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EF8);
  }

  return result;
}

void sub_29D914678()
{
  if (!qword_2A17B7F18)
  {
    sub_29D913D14();
    sub_29D6D6634();
    sub_29D913C14();
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7F18);
    }
  }
}

void sub_29D914848()
{
  if (!qword_2A17B7F20)
  {
    sub_29D914678();
    sub_29D914A98();
    sub_29D913D14();
    sub_29D6D6634();
    sub_29D913C14();
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7F20);
    }
  }
}

void sub_29D914A98()
{
  if (!qword_2A17B7F28)
  {
    sub_29D914B40();
    sub_29D914244(&qword_2A17B7F58, sub_29D914B40, sub_29D914D90);
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7F28);
    }
  }
}

void sub_29D914B40()
{
  if (!qword_2A17B7F30)
  {
    sub_29D914C24(255, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7F30);
    }
  }
}

void sub_29D914C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D914CDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D914D90()
{
  result = qword_2A17B7F60;
  if (!qword_2A17B7F60)
  {
    sub_29D914C24(255, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
    sub_29D914E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F60);
  }

  return result;
}

unint64_t sub_29D914E54()
{
  result = qword_2A17B7F68;
  if (!qword_2A17B7F68)
  {
    sub_29D914BDC(255);
    sub_29D914ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F68);
  }

  return result;
}

unint64_t sub_29D914ED4()
{
  result = qword_2A17B7F70;
  if (!qword_2A17B7F70)
  {
    sub_29D914CA8(255);
    sub_29D914244(&qword_2A17B7F78, sub_29D914D5C, sub_29D914FA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F70);
  }

  return result;
}

uint64_t sub_29D914FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D91505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D9150CC()
{
  if (!qword_2A17B7F90)
  {
    sub_29D915160();
    sub_29D912AB8(&qword_2A17B7FB8, sub_29D915160);
    v0 = sub_29D9388F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7F90);
    }
  }
}

void sub_29D915160()
{
  if (!qword_2A17B7F98)
  {
    sub_29D915210();
    sub_29D912AB8(&qword_2A17B7FB0, sub_29D915210);
    v0 = sub_29D938698();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7F98);
    }
  }
}

void sub_29D915210()
{
  if (!qword_2A17B7FA0)
  {
    sub_29D91526C();
    v0 = sub_29D938768();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7FA0);
    }
  }
}

unint64_t sub_29D91526C()
{
  result = qword_2A17B7FA8;
  if (!qword_2A17B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7FA8);
  }

  return result;
}

unint64_t sub_29D9152C0()
{
  result = qword_2A17B7FC0;
  if (!qword_2A17B7FC0)
  {
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D912AB8(&qword_2A17B7FC8, MEMORY[0x29EDB8630]);
    sub_29D912AB8(&qword_2A17B7FD0, sub_29D9150CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7FC0);
  }

  return result;
}

void sub_29D9153E4()
{
  if (!qword_2A17B7FE0)
  {
    sub_29D914848();
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D914678();
    sub_29D914A98();
    sub_29D913D14();
    sub_29D6D6634();
    sub_29D913C14();
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98);
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7FE0);
    }
  }
}

uint64_t sub_29D9156C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D915748(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D9157C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D91585C()
{
  v1 = (type metadata accessor for BloodPressurePDFChart() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9339F8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = *(v0 + v3 + v1[8]);

  v8 = v1[15];
  v9 = sub_29D9356C8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D915A08(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for BloodPressurePDFChart() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_29D915AC8()
{
  result = qword_2A17B8008;
  if (!qword_2A17B8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8008);
  }

  return result;
}

uint64_t sub_29D915B2C()
{
  v1 = (type metadata accessor for BloodPressurePDFChart() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9339F8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = *(v0 + v3 + v1[8]);

  v8 = v1[15];
  v9 = sub_29D9356C8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D915CCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BloodPressurePDFChart() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_29D915D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D915DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D915E28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29D915EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D915EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D915F74()
{
  if (!qword_2A17B8038)
  {
    sub_29D912F48();
    sub_29D913038();
    sub_29D913274();
    sub_29D9133AC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B8038);
    }
  }
}

void sub_29D916008(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D9160EC(255, a3, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D9160EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D916164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D9161B4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D916238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D9162D0()
{
  result = qword_2A17B8058;
  if (!qword_2A17B8058)
  {
    sub_29D915EFC(255, &qword_2A17B7FD8, sub_29D9153E4, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    sub_29D914848();
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D914678();
    sub_29D914A98();
    sub_29D913D14();
    sub_29D6D6634();
    sub_29D913C14();
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24();
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98);
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8058);
  }

  return result;
}

uint64_t sub_29D916614()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  qword_2A17D1018 = result;
  return result;
}

id sub_29D916668()
{
  result = [objc_opt_self() percentUnit];
  qword_2A17D1020 = result;
  return result;
}

uint64_t sub_29D9166A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v52 = sub_29D935378();
  v49 = *(v52 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v52, v5);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D9375E8();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v57, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v47 - v14;
  v16 = sub_29D937548();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v22(v21, a1, v16);
  v56 = sub_29D937598();
  if (qword_2A17B0DC0 != -1)
  {
    swift_once();
  }

  v48 = v2;
  sub_29D9375F8();
  v22(v21, a1, v16);
  (*(v7 + 16))(v12, v15, v57);
  v53 = v7;
  v54 = v15;
  v51 = a1;
  if (v56)
  {
    v63 = sub_29D937588();
    v64 = sub_29D91735C(&qword_2A17B8098, MEMORY[0x29EDC4E80]);
    sub_29D693F78(v62);
    sub_29D937578();
  }

  else
  {
    v63 = sub_29D937568();
    v64 = sub_29D91735C(&qword_2A17B80A0, MEMORY[0x29EDC4E70]);
    sub_29D693F78(v62);
    sub_29D937558();
  }

  v23 = sub_29D934F58();
  v24 = *MEMORY[0x29EDC7638];
  v25 = [objc_opt_self() systemFontOfSize_];
  v61 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  *&v60 = v25;
  sub_29D6940E0(&v60, v59);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v23;
  sub_29D6922EC(v59, v24, isUniquelyReferenced_nonNull_native);
  v47 = v58;
  sub_29D7FF6FC();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D944EA0;
  v28 = *(v48 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_generalTextSupport);
  v29 = sub_29D9174AC();
  v31 = v30;
  v32 = *MEMORY[0x29EDC1F60];
  v33 = *(v49 + 104);
  v34 = v50;
  v35 = v52;
  v33(v50, v32, v52);
  v36 = sub_29D934FC8();
  v37 = sub_29D9352A8();
  v38 = MEMORY[0x29EDC1EE0];
  *(v27 + 56) = v37;
  *(v27 + 64) = v38;
  sub_29D693F78((v27 + 32));
  MEMORY[0x29ED656B0](v29, v31, v34, v36);
  v39 = sub_29D935488();
  v40 = MEMORY[0x29EDC1FC0];
  *(v27 + 96) = v39;
  *(v27 + 104) = v40;
  sub_29D693F78((v27 + 72));
  sub_29D935498();
  sub_29D9175A8();
  v33(v34, v32, v35);
  v41 = sub_29D936F78();
  v42 = MEMORY[0x29EDC2BE0];
  *(v27 + 136) = v41;
  *(v27 + 144) = v42;
  sub_29D693F78((v27 + 112));
  sub_29D936F68();
  *(v27 + 176) = v39;
  *(v27 + 184) = v40;
  sub_29D693F78((v27 + 152));
  sub_29D935498();
  sub_29D6945AC(v62, v27 + 192);
  v43 = sub_29D9370F8();
  v44 = MEMORY[0x29EDC2C70];
  v45 = v55;
  v55[3] = v43;
  v45[4] = v44;
  sub_29D693F78(v45);
  sub_29D9370D8();
  (*(v53 + 8))(v54, v57);
  return sub_29D69417C(v62);
}

uint64_t sub_29D916CA8()
{
  v1 = OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartModelFactory;
  v2 = sub_29D937628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartTextSupport));
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartConfiguration));
  v3 = *(v0 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_generalTextSupport);

  v4 = OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_logger;
  v5 = sub_29D937898();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramRenderableFactory()
{
  result = qword_2A17B8088;
  if (!qword_2A17B8088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D916E08()
{
  result = sub_29D937628();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29D937898();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D916EEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_29D9339F8();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D937898();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v53, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D937628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  sub_29D937618();
  v21 = *(v15 + 16);
  v51 = v14;
  v21(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartModelFactory, v19, v14);
  v22 = qword_2A17B0DC0;
  v23 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_2A17B0DC8;
  v25 = qword_2A17D1018;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_2A17D1020;
  v27 = sub_29D937648();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v26;
  v31 = sub_29D937638();
  v32 = MEMORY[0x29EDC4FC0];
  v33 = (v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartTextSupport);
  v33[3] = v27;
  v33[4] = v32;
  *v33 = v31;
  sub_29D937608();
  sub_29D6945AC(v60, v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartConfiguration);
  v34 = v61;
  v35 = v62;
  v36 = sub_29D693E2C(v60, v61);
  v58 = v34;
  v59 = *(v35 + 8);
  v37 = sub_29D693F78(&v57);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  v38 = v56;
  v39 = v53;
  (*(v9 + 16))(v13, v56, v53);
  v40 = sub_29D937698();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_29D937688();
  v44 = v52;
  sub_29D9339E8();
  v45 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  (*(v15 + 8))(v19, v51);
  v58 = v40;
  v59 = MEMORY[0x29EDC4FC8];
  *&v57 = v43;
  v46 = type metadata accessor for AFibBurdenPDFHistogramTextSupport();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  sub_29D679D3C(&v57, v49 + 16);
  (*(v54 + 32))(v49 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now, v44, v55);
  *(v49 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_calendarCache) = v45;
  *(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_generalTextSupport) = v49;
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_logger, v38, v39);
  sub_29D69417C(v60);
  return v3;
}

uint64_t sub_29D91735C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D9173A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_29D69257C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_29D6907F0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_29D69395C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_29D918844(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_29D9174AC()
{
  v1 = *v0;
  sub_29D937518();
  v4[3] = v1;
  v4[0] = v0;

  v2 = sub_29D937508();
  sub_29D9189F4(v4, sub_29D70C44C);
  return v2;
}

uint64_t sub_29D9175A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29D937678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[6];
  sub_29D693E2C(v1 + 2, v1[5]);
  sub_29D9376A8();
  sub_29D918A5C(0, &qword_2A17B80C8, sub_29D91847C, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000029D96F280;
  *(inited + 48) = sub_29D91792C();
  *(inited + 56) = v11;
  v12 = sub_29D73FD5C(inited);
  swift_setDeallocating();
  sub_29D9189F4(inited + 32, sub_29D91847C);
  v18[12] = v12;
  v13 = sub_29D937658();
  if (v14)
  {
    sub_29D9173A4(v13, v14, 0x4B4355425F58414DLL, 0xEF5453494C5F5445);
  }

  sub_29D937668();
  sub_29D937518();
  v18[3] = v2;
  v18[0] = v1;

  v15 = sub_29D937508();

  (*(v4 + 8))(v8, v3);
  sub_29D9189F4(v18, sub_29D70C44C);
  return v15;
}

void sub_29D9178BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  v1 = sub_29D939D28();
  [v0 setDateTemplate_];

  qword_2A17D1028 = v0;
}

uint64_t sub_29D91792C()
{
  v1 = *v0;
  v2 = sub_29D9331D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D917B58(v7);
  if (qword_2A17B0DD0 != -1)
  {
    swift_once();
  }

  v8 = qword_2A17D1028;
  v9 = sub_29D933148();
  v10 = [v8 stringFromDateInterval_];

  if (v10)
  {
    v11 = sub_29D939D68();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v12, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v1;
    v14[1] = 0;
    sub_29D9371F8();

    v11 = 0;
  }

  (*(v3 + 8))(v7, v2);
  return v11;
}

uint64_t sub_29D917B58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v62 = *v1;
  v3 = sub_29D933CC8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D918A5C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v53 - v15;
  v64 = sub_29D9339F8();
  v70 = *(v64 - 8);
  v17 = *(v70 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v64, v18);
  v55 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v67 = &v53 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v54 = &v53 - v26;
  MEMORY[0x2A1C7C4A8](v25, v27);
  v65 = &v53 - v28;
  v68 = sub_29D933CE8();
  v66 = *(v68 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v68, v30);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [*(v1 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_calendarCache) currentCalendar];
  sub_29D933C08();

  v34 = *MEMORY[0x29EDB9CB8];
  v35 = v4[13];
  v35(v8, v34, v3);
  v63 = v2;
  v61 = OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now;
  sub_29D933C38();
  v36 = v70;
  v37 = v4[1];
  v38 = v3;
  v39 = v16;
  v57 = v8;
  v58 = v38;
  v60 = v4 + 1;
  v56 = v37;
  (v37)(v8);
  v40 = *(v36 + 48);
  v41 = v64;
  if ((v40)(v16, 1) != 1)
  {
    v53 = *(v36 + 32);
    v53(v65, v16, v41);
    v42 = v57;
    v43 = v34;
    v44 = v58;
    v35(v57, v43, v58);
    v45 = v59;
    sub_29D933C38();
    v56(v42, v44);
    v39 = v45;
    if (v40(v45, 1, v41) != 1)
    {
      v47 = v54;
      v53(v54, v45, v41);
      v48 = v70;
      v49 = *(v70 + 16);
      v49(v67, v47, v41);
      v50 = v65;
      v49(v55, v65, v41);
      sub_29D933188();
      v51 = *(v48 + 8);
      v51(v47, v41);
      v51(v50, v41);
      return (*(v66 + 8))(v32, v68);
    }

    v36 = v70;
    (*(v70 + 8))(v65, v41);
  }

  sub_29D6A0D34(v39);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v46, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v62;
  v71 = 0;
  sub_29D9371F8();

  (*(v36 + 16))(v67, v63 + v61, v41);
  sub_29D933198();
  return (*(v66 + 8))(v32, v68);
}

uint64_t sub_29D918184()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96F3C0);
  return 0;
}

uint64_t sub_29D918228()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D96F380);
  return 0;
}

uint64_t sub_29D9182CC()
{
  sub_29D69417C(v0 + 2);
  v1 = OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now;
  v2 = sub_29D9339F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramTextSupport()
{
  result = qword_2A17B80B8;
  if (!qword_2A17B80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9183D4()
{
  result = sub_29D9339F8();
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

void sub_29D91847C()
{
  if (!qword_2A17B80D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B80D0);
    }
  }
}

uint64_t sub_29D9184D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v15 = sub_29D93AE98();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29D918694(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v14 = sub_29D93AE98();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29D918844(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v13 = sub_29D93AE98();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

  return result;
}

uint64_t sub_29D9189F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D918A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D918ACC(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v2[36] = *v1;
  sub_29D91AE18(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v5 = sub_29D937548();
  v2[38] = v5;
  v6 = *(v5 - 8);
  v2[39] = v6;
  v7 = *(v6 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_29D91AE18(0, &qword_2A17B8100, MEMORY[0x29EDC4E18]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v10 = sub_29D9375D8();
  v2[46] = v10;
  v11 = *(v10 - 8);
  v2[47] = v11;
  v12 = *(v11 + 64) + 15;
  v2[48] = swift_task_alloc();
  v13 = sub_29D9371A8();
  v2[49] = v13;
  v14 = *(v13 - 8);
  v2[50] = v14;
  v15 = *(v14 + 64) + 15;
  v2[51] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D918D2C, 0, 0);
}

uint64_t sub_29D918D2C()
{
  v36 = v0;
  v1 = v0[51];
  v2 = *MEMORY[0x29EDBA6B0];
  v3 = *(v0[35] + 32);
  v0[52] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v2 healthStore:v3];
  v0[53] = v4;
  sub_29D6B8230();
  sub_29D937278();
  v5 = v0[51];
  v6 = *MEMORY[0x29EDBA558];
  v7 = sub_29D9371B8();
  LODWORD(v3) = [v7 areAllRequirementsSatisfied];

  if (v3)
  {
    (*(v0[50] + 8))(v0[51], v0[49]);
    v0[54] = OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger;

    return MEMORY[0x2A1C73D48](sub_29D9191F0, 0, 0);
  }

  else
  {
    v8 = v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger;
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[50];
    v13 = v0[51];
    v14 = v0[49];
    if (v11)
    {
      v15 = v0[36];
      v34 = v0[51];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136446210;
      v35[2] = v15;
      swift_getMetatypeMetadata();
      v18 = sub_29D939DA8();
      v20 = sub_29D6C2364(v18, v19, v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Not all requirements satisfied for highlight generation, not including in PDF", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);

      (*(v12 + 8))(v34, v14);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v21 = v0[34];
    v22 = sub_29D934E78();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = v0[51];
    v24 = v0[48];
    v26 = v0[44];
    v25 = v0[45];
    v28 = v0[42];
    v27 = v0[43];
    v30 = v0[40];
    v29 = v0[41];
    v31 = v0[37];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_29D9191F0()
{
  v1 = v0[54];
  v2 = v0[52];
  v4 = v0[35];
  v3 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_29D9192B0;
  v5 = swift_continuation_init();
  sub_29D91A748(v5, v4 + v1, v2, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9192B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 440) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_29D91975C;
  }

  else
  {
    *(v1 + 448) = *(v1 + 264);
    v4 = sub_29D9193D4;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D9193D4()
{
  v45 = v0;
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_analysisBlock;
  v6 = *(v5 + 8);
  (*v5)(v0[56]);
  sub_29D9375C8();
  v7 = *(v4 + 48);
  v0[57] = v7;
  v0[58] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v6) = v7(v2, 1, v3);
  sub_29D91AE6C(v2);
  if (v6 == 1 && (v8 = v0[48], v9 = v0[44], v10 = v0[38], sub_29D9375B8(), LODWORD(v8) = v7(v9, 1, v10), sub_29D91AE6C(v9), v8 == 1))
  {
    v11 = v0[35] + v0[54];
    v12 = sub_29D937878();
    v13 = sub_29D93A2A8();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[56];
    v16 = v0[53];
    v18 = v0[47];
    v17 = v0[48];
    v19 = v0[46];
    if (v14)
    {
      v43 = v0[46];
      v20 = v0[36];
      v42 = v0[48];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      v44[1] = v20;
      *v21 = 136446210;
      swift_getMetatypeMetadata();
      v23 = sub_29D939DA8();
      v25 = sub_29D6C2364(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] No histograms present after analysis, omitting section", v21, 0xCu);
      sub_29D69417C(v22);
      MEMORY[0x29ED6BE30](v22, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);

      (*(v18 + 8))(v42, v43);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v29 = v0[34];
    v30 = sub_29D934E78();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = v0[51];
    v32 = v0[48];
    v34 = v0[44];
    v33 = v0[45];
    v36 = v0[42];
    v35 = v0[43];
    v38 = v0[40];
    v37 = v0[41];
    v39 = v0[37];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v26 = *(v0[35] + 16);
    v27 = *(MEMORY[0x29EDC2CC8] + 4);
    v28 = swift_task_alloc();
    v0[59] = v28;
    *v28 = v0;
    v28[1] = sub_29D91983C;

    return MEMORY[0x2A1C63768](v26);
  }
}

uint64_t sub_29D91975C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_29D91983C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v7 = sub_29D91A538;
  }

  else
  {
    *(v4 + 488) = a1;
    v7 = sub_29D919964;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D919964()
{
  v1 = *(*(v0 + 280) + 24);
  v2 = *(MEMORY[0x29EDC2CC8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 496) = v3;
  *v3 = v0;
  v3[1] = sub_29D919A00;

  return MEMORY[0x2A1C63768](v1);
}

uint64_t sub_29D919A00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    if (*(v4 + 488))
    {
      v7 = *(v4 + 488);
    }

    v8 = sub_29D91A640;
  }

  else
  {
    *(v4 + 512) = a1;
    v8 = sub_29D919B40;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29D919B40()
{
  v113 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[48];
  v4 = v0[43];
  v5 = v0[38];
  if (v0[64])
  {
    v6 = v0[64];
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
  }

  v7 = v0[43];
  sub_29D9375C8();
  if (v2(v4, 1, v5) == 1)
  {
    sub_29D91AE6C(v0[43]);
  }

  else
  {
    (*(v0[39] + 32))(v0[41], v0[43], v0[38]);
    if (sub_29D937538())
    {
      v8 = v0[41];
      v9 = *sub_29D693E2C((v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory), *(v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory + 24));
      sub_29D9166A4(v8, v0 + 25);
      v10 = sub_29D68F5B0(0, 1, 1, MEMORY[0x29EDCA190]);
      v110 = v10;
      v12 = v10[2];
      v11 = v10[3];
      if (v12 >= v11 >> 1)
      {
        goto LABEL_47;
      }

      goto LABEL_8;
    }

    v19 = v0[35] + v0[54];
    v20 = sub_29D937878();
    v21 = sub_29D93A2A8();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[41];
    v25 = v0[38];
    v24 = v0[39];
    if (v22)
    {
      v26 = v0[36];
      v27 = swift_slowAlloc();
      v107 = v6;
      v28 = swift_slowAlloc();
      v112 = v28;
      *v27 = 136446210;
      v0[31] = v26;
      swift_getMetatypeMetadata();
      v29 = sub_29D939DA8();
      v31 = sub_29D6C2364(v29, v30, &v112);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] Not including time of day histogram as it does not contain enough information", v27, 0xCu);
      sub_29D69417C(v28);
      v32 = v28;
      v6 = v107;
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v27, -1, -1);

      (*(v24 + 8))(v23, v25);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }
  }

  v10 = MEMORY[0x29EDCA190];
  while (1)
  {
    v34 = v0[57];
    v33 = v0[58];
    v12 = v0[48];
    v35 = v0[42];
    v36 = v0[38];
    sub_29D9375B8();
    if (v34(v35, 1, v36) == 1)
    {
      sub_29D91AE6C(v0[42]);
      v37 = v10[2];
      if (!v37)
      {
        goto LABEL_38;
      }
    }

    else
    {
      (*(v0[39] + 32))(v0[40], v0[42], v0[38]);
      if (sub_29D937538())
      {
        v38 = v0[40];
        v39 = *sub_29D693E2C((v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory), *(v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory + 24));
        sub_29D9166A4(v38, v0 + 20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_29D68F5B0(0, v10[2] + 1, 1, v10);
          v110 = v10;
        }

        v12 = v10[2];
        v41 = v10[3];
        if (v12 >= v41 >> 1)
        {
          v10 = sub_29D68F5B0((v41 > 1), &v12->isa + 1, 1, v10);
          v110 = v10;
        }

        (*(v0[39] + 8))(v0[40], v0[38]);
        v42 = v0[23];
        v43 = v0[24];
        v44 = sub_29D693DDC((v0 + 20), v42);
        v45 = *(v42 - 8);
        v46 = *(v45 + 64) + 15;
        v47 = swift_task_alloc();
        (*(v45 + 16))(v47, v44, v42);
        sub_29D693D44(v12, v47, &v110, v42, v43);
        sub_29D69417C(v0 + 20);

        v37 = v10[2];
        if (!v37)
        {
LABEL_38:
          v75 = v0[61];
          v76 = v0[54];
          v77 = v0[35];

          v78 = sub_29D937878();
          v79 = sub_29D93A2A8();
          v80 = os_log_type_enabled(v78, v79);
          v81 = v0[56];
          v82 = v0[53];
          v84 = v0[47];
          v83 = v0[48];
          v85 = v0[46];
          if (v80)
          {
            v109 = v0[46];
            v86 = v0[36];
            v106 = v0[48];
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v111 = v88;
            v112 = v86;
            *v87 = 136446210;
            swift_getMetatypeMetadata();
            v89 = sub_29D939DA8();
            v91 = sub_29D6C2364(v89, v90, &v111);

            *(v87 + 4) = v91;
            _os_log_impl(&dword_29D677000, v78, v79, "[%{public}s] Both histograms excluded, excluding entire page", v87, 0xCu);
            sub_29D69417C(v88);
            MEMORY[0x29ED6BE30](v88, -1, -1);
            MEMORY[0x29ED6BE30](v87, -1, -1);

            (*(v84 + 8))(v106, v109);
          }

          else
          {

            (*(v84 + 8))(v83, v85);
          }

          v92 = v0[34];
          v93 = sub_29D934E78();
          (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
          goto LABEL_42;
        }
      }

      else
      {
        v51 = v0[35] + v0[54];
        v12 = sub_29D937878();
        v52 = sub_29D93A2A8();
        v53 = os_log_type_enabled(v12, v52);
        v55 = v0[39];
        v54 = v0[40];
        v56 = v0[38];
        if (v53)
        {
          v108 = v10;
          v57 = v6;
          v58 = v0[36];
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v112 = v60;
          *v59 = 136446210;
          v0[30] = v58;
          swift_getMetatypeMetadata();
          v61 = sub_29D939DA8();
          v105 = v54;
          v63 = sub_29D6C2364(v61, v62, &v112);
          v6 = v57;
          v10 = v108;

          *(v59 + 4) = v63;
          _os_log_impl(&dword_29D677000, v12, v52, "[%{public}s] Not including day of week histogram as it does not contain enough information", v59, 0xCu);
          sub_29D69417C(v60);
          MEMORY[0x29ED6BE30](v60, -1, -1);
          MEMORY[0x29ED6BE30](v59, -1, -1);

          (*(v55 + 8))(v105, v56);
        }

        else
        {

          (*(v55 + 8))(v54, v56);
        }

        v37 = v10[2];
        if (!v37)
        {
          goto LABEL_38;
        }
      }
    }

    if (v37 != 2)
    {
      goto LABEL_33;
    }

    v48 = sub_29D9351A8();
    v49 = MEMORY[0x29EDC1E40];
    v0[13] = v48;
    v0[14] = v49;
    sub_29D693F78(v0 + 10);
    sub_29D935198();
    v11 = v10[2];
    if (v11)
    {
      break;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v10 = sub_29D68F5B0((v11 > 1), &v12->isa + 1, 1, v10);
    v110 = v10;
LABEL_8:
    (*(v0[39] + 8))(v0[41], v0[38]);
    v13 = v0[28];
    v14 = v0[29];
    v15 = sub_29D693DDC((v0 + 25), v13);
    v16 = *(v13 - 8);
    v17 = *(v16 + 64) + 15;
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v13);
    sub_29D693D44(v12, v18, &v110, v13, v14);
    sub_29D69417C(v0 + 25);
  }

  sub_29D6959E8(v0 + 5, (v0 + 15));
  v12 = v10[2];
  if (!v12)
  {
    goto LABEL_46;
  }

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v110 = v10;
  if (!v50 || v12 >= v10[3] >> 1)
  {
    v110 = sub_29D68F5B0(v50, &v12->isa + 1, 1, v10);
  }

  sub_29D91AEE4(1uLL, 1, 1, (v0 + 15));
LABEL_33:
  v64 = v0[56];
  v65 = v0[53];
  v67 = v0[47];
  v66 = v0[48];
  v68 = v0[46];
  v69 = v0[37];
  v70 = v0[34];
  if (v0[61])
  {
    v71 = v0[61];
  }

  v72 = v0[37];
  sub_29D934DE8();
  v73 = sub_29D934DF8();
  (*(*(v73 - 8) + 56))(v69, 0, 1, v73);
  sub_29D934E68();

  (*(v67 + 8))(v66, v68);
  v74 = sub_29D934E78();
  (*(*(v74 - 8) + 56))(v70, 0, 1, v74);
LABEL_42:
  v94 = v0[51];
  v95 = v0[48];
  v97 = v0[44];
  v96 = v0[45];
  v99 = v0[42];
  v98 = v0[43];
  v101 = v0[40];
  v100 = v0[41];
  v102 = v0[37];

  v103 = v0[1];

  return v103();
}

uint64_t sub_29D91A538()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 480);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v14 = *(v0 + 296);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_29D91A640()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 504);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v14 = *(v0 + 296);

  v15 = *(v0 + 8);

  return v15();
}

void sub_29D91A748(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_29D937898();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v9 + 32))(v13 + v12, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v14 = objc_allocWithZone(MEMORY[0x29EDC51E8]);
  aBlock[4] = sub_29D91B0C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D7A09D0;
  aBlock[3] = &unk_2A244E820;
  v15 = _Block_copy(aBlock);
  v16 = [v14 initWithResultsHandler_];
  _Block_release(v15);

  [a3 executeQuery_];
}

uint64_t sub_29D91A93C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(a4 + 64) + 40) = a2;
    v10 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = sub_29D937878();
    v13 = sub_29D93A298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      v22[1] = a6;
      *v14 = 136446210;
      swift_getMetatypeMetadata();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] No error but did not receive results as expected", v14, 0xCu);
      sub_29D69417C(v15);
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    sub_29D91B194();
    v19 = swift_allocError();
    *v20 = 1;
    sub_29D6B7370(0, &qword_2A1A24850);
    swift_allocError();
    *v21 = v19;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29D91AB88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger;
  v4 = sub_29D937898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_analysisBlock + 8);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramSectionProvider()
{
  result = qword_2A17B80F0;
  if (!qword_2A17B80F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91ACB4()
{
  result = sub_29D937898();
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

uint64_t sub_29D91AD7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D6AC948;

  return sub_29D918ACC(a1);
}

void sub_29D91AE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D91AE6C(uint64_t a1)
{
  sub_29D91AE18(0, &qword_2A17B8100, MEMORY[0x29EDC4E18]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D91AEE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_29D6B7370(0, &qword_2A17B1010);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (a3 >= 1)
  {
    result = sub_29D6945AC(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return sub_29D91B000(a4);
}

uint64_t sub_29D91B000(uint64_t a1)
{
  sub_29D91B05C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D91B05C()
{
  if (!qword_2A17B8108)
  {
    sub_29D6B7370(255, &qword_2A17B1010);
    v0 = sub_29D93AAA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8108);
    }
  }
}

uint64_t sub_29D91B0C4(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_29D937898() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D91A93C(a1, a2, a3, v9, v3 + v8, v10);
}

uint64_t sub_29D91B17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D91B194()
{
  result = qword_2A17B8110;
  if (!qword_2A17B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8110);
  }

  return result;
}

unint64_t sub_29D91B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_29D935DA8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_29D91B344()
{
  result = qword_2A17B8118;
  if (!qword_2A17B8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8118);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFChartSleepQuery()
{
  result = qword_2A17B8120;
  if (!qword_2A17B8120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91B40C()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D91B4A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a4 + *(type metadata accessor for AFibBurdenPDFChartSleepQuery() + 20)) stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    sub_29D935E88();

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D7A0EEC();
      sub_29D933578();
      v9 = v12;
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29D91B5E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return (sub_29D91B744)(a1);
}

uint64_t sub_29D91B68C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_29D69567C(0, &unk_2A17B8130, 0x29EDBADD0);
    v5 = sub_29D939F38();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_29D91B744(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for AFibBurdenPDFChartPoint();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for AFibBurdenPDFChartSleepQuery();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v2[27] = *(v7 + 64);
  v2[28] = swift_task_alloc();
  v8 = sub_29D9339F8();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D91B8F4, 0, 0);
}

uint64_t sub_29D91B8F4()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[19];
  v4 = v0[20];
  sub_29D9331A8();
  v6 = sub_29D933958();
  v7 = *(v3 + 8);
  v0[35] = v7;
  v0[36] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = sub_29D933BB8();
  v9 = [v6 hk:v8 morningIndexWithCalendar:?];

  sub_29D933178();
  v10 = sub_29D933958();
  v7(v1, v2);
  v11 = sub_29D933BB8();
  v12 = [v10 hk:v11 morningIndexWithCalendar:?];

  v16 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = __OFSUB__(v16, v9);
  v18 = v16 - v9;
  if (v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v17)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2A1C73D48](v13, v14, v15);
  }

  v0[16] = v9;
  v0[17] = v19;
  v13 = sub_29D91BA68;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x2A1C73D48](v13, v14, v15);
}

uint64_t sub_29D91BA68()
{
  v1 = v0[17];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v19 = v0[16];
  v20 = v0[25];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D91BCE4;
  v6 = swift_continuation_init();
  sub_29D91C248(v5, v2);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_29D91C378(v2, v9 + v7, type metadata accessor for AFibBurdenPDFChartSleepQuery);
  *(v9 + v8) = v6;
  v10 = objc_allocWithZone(MEMORY[0x29EDBADE0]);
  v0[14] = sub_29D91C2AC;
  v0[15] = v9;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D91B68C;
  v0[13] = &unk_2A244E910;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithMorningIndexRange:v19 ascending:v1 limit:1 options:0 resultsHandler:{10, v11}];
  _Block_release(v11);
  v13 = v0[15];

  v14 = objc_allocWithZone(MEMORY[0x29EDBADD8]);
  v15 = sub_29D939D28();
  v16 = [v14 initWithIdentifier:v15 mode:1];

  [v12 setCacheSettings_];
  v17 = sub_29D933BB8();
  [v12 setCalendarOverrides_];

  [*(v5 + *(v20 + 20)) executeQuery_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D91BCE4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  if (*(*v0 + 48))
  {
    v5 = v2[33];
    v4 = v2[34];
    v7 = v2[31];
    v6 = v2[32];
    v8 = v2[28];
    v10 = v2[23];
    v9 = v2[24];
    v11 = v1[6];
    swift_willThrow();

    v12 = v3[1];

    return v12();
  }

  else
  {
    v2[37] = v2[18];

    return MEMORY[0x2A1C73D48](sub_29D91BE9C, 0, 0);
  }
}

uint64_t sub_29D91BE9C()
{
  v1 = v0[37];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[37]; v2; i = v0[37])
  {
    v4 = 0;
    v41 = v0[21];
    v42 = v0[22];
    v5 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v6 = i + 32;
    v37 = (v0[30] + 16);
    v7 = MEMORY[0x29EDCA190];
    v8 = &selRef_initWithResultsHandler_;
    v39 = v1;
    v40 = v5;
    v38 = i + 32;
    while (1)
    {
      if (v5)
      {
        v9 = MEMORY[0x29ED6AE30](v4, v0[37]);
      }

      else
      {
        if (v4 >= *(v1 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v4);
      }

      v10 = v9;
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v9 v8[280]];
      if (v12 <= 2.22044605e-16)
      {
      }

      else
      {
        v47 = v0[36];
        v46 = v0[35];
        v13 = v8;
        v15 = v0[33];
        v14 = v0[34];
        v16 = v0[31];
        v45 = v0[32];
        v49 = v7;
        v17 = v0[29];
        v18 = v0[23];
        v48 = v0[24];
        v19 = [objc_opt_self() noonAlignedXValueForChartPointInfoProvider_];
        sub_29D933998();

        v20 = *v37;
        (*v37)(v15, v14, v17);
        [v10 v13 + 3487];
        v22 = v21;
        v20(v45, v15, v17);
        v20(v16, v15, v17);
        sub_29D933188();

        v46(v15, v17);
        v23 = v17;
        v7 = v49;
        v46(v14, v23);
        *(v18 + *(v41 + 20)) = v22;
        *(v18 + *(v41 + 24)) = MEMORY[0x29EDCA1A0];
        sub_29D91C378(v18, v48, type metadata accessor for AFibBurdenPDFChartPoint);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_29D68FC3C(0, v49[2] + 1, 1, v49);
        }

        v25 = v7[2];
        v24 = v7[3];
        v2 = v43;
        v0 = v44;
        v5 = v40;
        v6 = v38;
        v8 = &selRef_initWithResultsHandler_;
        v11 = v4 + 1;
        if (v25 >= v24 >> 1)
        {
          v7 = sub_29D68FC3C(v24 > 1, v25 + 1, 1, v7);
        }

        v26 = v44[24];
        v7[2] = v25 + 1;
        sub_29D91C378(v26, v7 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, type metadata accessor for AFibBurdenPDFChartPoint);
        v1 = v39;
      }

      ++v4;
      if (v11 == v2)
      {
        v27 = v0[37];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v2 = sub_29D93A928();
  }

  v7 = MEMORY[0x29EDCA190];
LABEL_22:
  v28 = v0[33];
  v29 = v0[34];
  v31 = v0[31];
  v30 = v0[32];
  v32 = v0[28];
  v34 = v0[23];
  v33 = v0[24];

  v35 = v0[1];

  return v35(v7);
}

uint64_t sub_29D91C248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartSleepQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D91C2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for AFibBurdenPDFChartSleepQuery() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D91B4A0(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_29D91C360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D91C378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_29D91C3E0(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingFactorsViewController());
      return sub_29D77BD18();
    }

    else
    {
      v14 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController());
      return sub_29D88848C();
    }
  }

  else if (a1)
  {
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = sub_29D936878();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    v10 = v6;
    v11 = sub_29D936868();
    v12 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingConfirmDetailsViewController());
    v13 = sub_29D91C54C(v5, v11, v12);

    return v13;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingStartViewController());
    return sub_29D69F538();
  }
}

uint64_t sub_29D91C4E0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29D91C54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[3] = sub_29D936878();
  v25[4] = MEMORY[0x29EDC28E8];
  v25[0] = a2;
  *(a3 + qword_2A17B3478 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + qword_2A17B3480) = 0;
  sub_29D6945AC(v25, v24);
  v6 = type metadata accessor for ConfirmDetailsModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  v11 = sub_29D935AB8();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *(v9 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker) = 4;
  sub_29D679D3C(v24, v9 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter);
  v12 = type metadata accessor for ConfirmDetailsDataSource();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v15 = sub_29D82396C(a1, v9);
  v16 = qword_2A17B3488;
  *(a3 + qword_2A17B3488) = v15;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_29D9334A8();

  v20 = [v18 bundleForClass_];
  sub_29D9334A8();

  v21 = *(a3 + v16);

  v22 = sub_29D9365F8();

  sub_29D69417C(v25);
  *(*(v22 + qword_2A17B3488) + qword_2A17B5CF0 + 8) = &off_2A2442E00;
  swift_unknownObjectWeakAssign();
  return v22;
}

id sub_29D91C85C()
{
  v1 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ElectrocardiogramUpdateTileView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*sub_29D91C8F4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29D91C85C();
  return sub_29D91C93C;
}

void sub_29D91C93C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  *(v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView) = v2;
}

uint64_t sub_29D91C954()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29D677000, v8, v9, "ElectrocardiogramUpdateViewController loaded", v10, 2u);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  updated = type metadata accessor for ElectrocardiogramUpdateViewController();
  v15.receiver = v1;
  v15.super_class = updated;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  sub_29D91CBC4();
  v12 = sub_29D91C85C();
  v13 = sub_29D934B88();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D935E58();
}

void sub_29D91CB28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D91CF84();
  }
}

void sub_29D91CBC4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_29D91C85C();
  [v2 addSubview_];

  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [*&v0[v5] bottomAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [*&v0[v5] leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [*&v0[v5] trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_29D6D37A4();
  v27 = sub_29D939F18();

  [v24 activateConstraints_];
}

void sub_29D91CF84()
{
  v1 = v0;
  v2 = sub_29D933CE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 parentViewController];
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
    swift_beginAccess();
    sub_29D718208(&v1[v10], v36);
    v11 = v37;
    if (v37)
    {
      v12 = sub_29D693E2C(v36, v37);
      v13 = *(v11 - 8);
      v14 = *(v13 + 64);
      MEMORY[0x2A1C7C4A8](v12, v12);
      v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16);
      v17 = sub_29D936588();
      (*(v13 + 8))(v16, v11);
      sub_29D933C88();
      v18 = objc_allocWithZone(MEMORY[0x29EDC4658]);
      v19 = sub_29D933BB8();
      v20 = [v18 initWithCalendar_];

      (*(v3 + 8))(v7, v2);
      LOBYTE(v34) = 1;
      v21 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:1 isFirstTimeOnboarding:0 healthStore:v17 dateCache:v20 provenance:3 delegate:v1 isSampleInteractive:v34];

      sub_29D69417C(v36);
      v22 = *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager];
      *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = v21;
      v23 = v21;

      if (v23 && (v24 = [v23 onboardingNavigationController], v23, v24))
      {
        [v24 setModalInPresentation_];
        [v9 presentViewController:v24 animated:1 completion:0];
      }

      else
      {
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v25 = sub_29D937898();
        sub_29D69C6C0(v25, qword_2A1A2C008);
        v26 = v1;
        v27 = sub_29D937878();
        v28 = sub_29D93A298();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36[0] = v30;
          *v29 = 136446466;
          v35[1] = swift_getObjectType();
          sub_29D91E98C();
          v31 = sub_29D939DA8();
          v33 = sub_29D6C2364(v31, v32, v36);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2082;
          *(v29 + 14) = sub_29D6C2364(0xD000000000000021, 0x800000029D96F660, v36);
          _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v30, -1, -1);
          MEMORY[0x29ED6BE30](v29, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29D91D3FC()
{
  v1 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v0 + v1, v12);
  if (v13)
  {
    v3 = objc_opt_self();
    v4 = v13;
    v5 = sub_29D693E2C(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9);
    v10 = sub_29D936588();
    (*(v6 + 8))(v9, v4);
    [v3 markElectrocardiogramUpdateAsViewed_];

    return sub_29D69417C(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D91D560()
{
  v1 = v0;
  v43[1] = swift_getObjectType();
  sub_29D697F20(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D936378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v47 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D935DD8();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935DC8();
  v46 = [objc_opt_self() electrocardiogramType];
  sub_29D93A388();
  v17 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v0 + v17, v54);
  v19 = v55;
  if (!v55)
  {
    __break(1u);
    goto LABEL_6;
  }

  v49 = v12;
  v44 = v8;
  v45 = v7;
  v20 = sub_29D693E2C(v54, v55);
  v43[2] = v43;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v20);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24);
  sub_29D936588();
  (*(v21 + 8))(v24, v19);
  result = sub_29D718208(v1 + v17, v52);
  v25 = v53;
  if (!v53)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = sub_29D693E2C(v52, v53);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26, v26);
  v30 = v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30);
  v31 = sub_29D936588();
  (*(v27 + 8))(v30, v25);
  v32 = [v31 profileIdentifier];

  v33 = sub_29D9350C8();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
  MEMORY[0x29ED658D0](v32, v6);

  sub_29D91E9DC(v6, sub_29D697F20);
  sub_29D69417C(v52);
  result = sub_29D718208(v1 + v17, v50);
  v34 = v51;
  if (v51)
  {
    v35 = sub_29D693E2C(v50, v51);
    v36 = *(v34 - 8);
    v37 = *(v36 + 64);
    MEMORY[0x2A1C7C4A8](v35, v35);
    v39 = v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39);
    sub_29D9365A8();
    (*(v36 + 8))(v39, v34);
    v40 = v47;
    sub_29D936328();
    sub_29D69417C(v50);
    sub_29D69417C(v54);
    v41 = v46;
    v42 = sub_29D935DB8();

    (*(v44 + 8))(v40, v45);
    (*(v48 + 8))(v16, v49);
    return v42;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D91DDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = 0;
  *&v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] = 0;
  v7 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v8 = *MEMORY[0x29EDC2198];
  v9 = sub_29D935878();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  if (a2)
  {
    v10 = sub_29D939D28();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for ElectrocardiogramUpdateViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_29D91DF3C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] = 0;
  v4 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v5 = *MEMORY[0x29EDC2198];
  v6 = sub_29D935878();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ElectrocardiogramUpdateViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D91E050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramUpdateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ElectrocardiogramUpdateViewController()
{
  result = qword_2A17B8160;
  if (!qword_2A17B8160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91E18C()
{
  result = sub_29D935878();
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

uint64_t sub_29D91E234@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D91E28C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  sub_29D91E8C0(a1, v1 + v3);
  return swift_endAccess();
}

id sub_29D91E380@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_29D91C85C();
  *a1 = result;
  return result;
}

void sub_29D91E3AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  *(*v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView) = v2;
}

void (*sub_29D91E3C8(uint64_t *a1))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_29D91C8F4(v3);
  return sub_29D91EA3C;
}

uint64_t sub_29D91E43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29D91E4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D91E520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63350](a1, WitnessTable);
}

uint64_t sub_29D91E574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63358](a1, a2, a3, WitnessTable);
}

void (*sub_29D91E5E0(uint64_t *a1))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_29D936D08();
  return sub_29D91E67C;
}

uint64_t sub_29D91E680()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29D936D38();
}

uint64_t sub_29D91E87C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectrocardiogramUpdateViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D91E8C0(uint64_t a1, uint64_t a2)
{
  sub_29D91E924();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D91E924()
{
  if (!qword_2A17B8190)
  {
    sub_29D6B7370(255, &qword_2A17B2D88);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8190);
    }
  }
}

unint64_t sub_29D91E98C()
{
  result = qword_2A17B81A0;
  if (!qword_2A17B81A0)
  {
    type metadata accessor for ElectrocardiogramUpdateViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B81A0);
  }

  return result;
}

uint64_t sub_29D91E9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BloodPressureClassificationGuidelinesViewController()
{
  result = qword_2A17B81E0;
  if (!qword_2A17B81E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D91EAF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D933AA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v33[1] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939D18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v33 - v18;
  *(v3 + qword_2A17B81C0) = a1;
  *(v3 + qword_2A17B81C8) = a2;
  v20 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v34 = a2;
  v21 = [v20 initWithHealthStore_];
  *(v3 + qword_2A17B81D0) = v21;
  v22 = v21;
  v23 = sub_29D9205E0(a1, v22);

  *(v3 + qword_2A17B81D8) = v23;
  sub_29D9368A8();

  v24 = sub_29D935588();

  sub_29D935F88();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D93DDB0;
  v26 = sub_29D920A70(&qword_2A17B81F8, sub_29D920AB8);
  *(v25 + 32) = v24;
  *(v25 + 40) = v26;
  v33[0] = v24;

  sub_29D935FA8();

  v27 = sub_29D936D88();
  sub_29D939D08();
  if (qword_2A17B0D88 != -1)
  {
    swift_once();
  }

  v28 = qword_2A17D0F70;
  (*(v11 + 16))(v16, v19, v10);
  sub_29D935E88();
  v29 = v28;
  sub_29D933A98();
  sub_29D939D98();
  (*(v11 + 8))(v19, v10);
  v30 = sub_29D939D28();

  [v27 setTitle_];

  v31 = *&v27[qword_2A17B81D0];
  [v31 startObserving_];

  return v27;
}

uint64_t sub_29D91EF04()
{
  sub_29D936DB8();
  sub_29D93A348();
  sub_29D936748();
  return sub_29D93A348();
}

uint64_t sub_29D91EFB0()
{
  v1 = *(v0 + qword_2A17B81D8);
}

id sub_29D91F000()
{
  [*&v0[qword_2A17B81D0] stopObserving_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureClassificationGuidelinesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29D91F054(char *a1)
{
  v1 = *&a1[qword_2A17B81D0];
  v2 = a1;
  [v1 stopObserving_];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BloodPressureClassificationGuidelinesViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D91F0BC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B81D8);
}

uint64_t sub_29D91F118(uint64_t a1)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D935CC8();
  sub_29D935CD8();
  if (!a1)
  {
    sub_29D939A88();
    v9 = v8;
    v10 = sub_29D935CE8();
    *v11 = v9;
    v10(v16, 0);
    v12 = sub_29D935CE8();
    *(v13 + 16) = 0;
    v12(v16, 0);
  }

  v14 = sub_29D935CF8();
  (*(v3 + 8))(v7, v2);
  return v14;
}

uint64_t sub_29D91F2CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_29D939968();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D939998();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v23, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v18 = sub_29D93A468();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a1;
  v19[4] = a3;
  v19[5] = a4;
  aBlock[4] = sub_29D91FB1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244EA00;
  v20 = _Block_copy(aBlock);

  v21 = a3;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D920A70(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D920568(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v12, v20);
  _Block_release(v20);

  (*(v24 + 8))(v12, v8);
  return (*(v13 + 8))(v17, v23);
}

void sub_29D91F5D0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*&Strong[qword_2A17B81C0] == a2)
    {
    }

    else
    {
      *&Strong[qword_2A17B81C0] = a2;
      v7 = sub_29D91FB28(a2, a3);
      v8 = qword_2A17B81D8;
      v9 = *&v6[qword_2A17B81D8];

      sub_29D775BD0(v7);

      sub_29D935B48();

      v10 = *&v6[v8];
      v11 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesPreference_];
      if (v11)
      {
        v12 = v11;
        sub_29D939D68();
      }

      v19 = sub_29D936768();
      v20 = sub_29D920A70(&qword_2A17B81F0, MEMORY[0x29EDC28B0]);
      sub_29D693F78(v18);
      sub_29D936758();
      v13 = v19;
      v14 = v20;
      v15 = sub_29D693E2C(v18, v19);
      v17[3] = v13;
      v17[4] = *(v14 + 8);
      v16 = sub_29D693F78(v17);
      (*(*(v13 - 8) + 16))(v16, v15, v13);
      sub_29D935B78();

      sub_29D69417C(v17);
      sub_29D69417C(v18);
    }
  }
}

void sub_29D91F7EC(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a3;
  v7[4] = ObjectType;
  v11[4] = sub_29D91FAF8;
  v11[5] = v7;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D83C0B4;
  v11[3] = &unk_2A244E9B0;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a1;

  [v9 preferredClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v8);
}

void sub_29D91F910()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D91FA44(void *a1)
{
  v1 = a1;
  sub_29D91F910();
}

void sub_29D91FA8C(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

uint64_t sub_29D91FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D91FB28(uint64_t a1, void *a2)
{
  v94 = a1;
  v95 = a2;
  v93 = sub_29D936BE8();
  v2 = *(v93 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v93, v4);
  v92 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D920568(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v91 = &v68 - v10;
  v90 = sub_29D935C78();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v90, v13);
  v89 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D920568(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v77 = &v68 - v18;
  v76 = sub_29D9378F8();
  v19 = *(v76 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v76, v21);
  v75 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29D9378C8();
  v23 = *(v74 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v74, v25);
  v73 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D937B88();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29D93A638();
  v34 = *(v33 + 16);
  if (v34)
  {
    v86 = 0x800000029D96F730;
    v85 = (v28 + 16);
    v72 = *MEMORY[0x29EDC7768];
    v71 = (v23 + 104);
    v70 = (v19 + 8);
    v69 = (v23 + 8);
    v84 = *MEMORY[0x29EDC22C0];
    v83 = (v11 + 104);
    v82 = *MEMORY[0x29EDC2A38];
    v81 = (v2 + 104);
    v80 = (v28 + 8);
    v35 = MEMORY[0x29EDCA190];
    v36 = 32;
    v68 = xmmword_29D93DDB0;
    v88 = v32;
    v87 = v33;
    v79 = v27;
    do
    {
      v44 = *(v33 + v36);
      if (v44 != 2)
      {
        v100 = sub_29D935DA8();
        v101 = sub_29D920A70(&qword_2A17B54E8, MEMORY[0x29EDC23F8]);
        v96 = sub_29D693F78(&v99);
        sub_29D937B38();
        v45 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v44 abbreviated:0];
        v97 = v35;
        if (v45)
        {
          v46 = v45;
          sub_29D939D68();
        }

        sub_29D937B48();
        v102 = 0xD000000000000026;
        v103 = v86;
        v98 = v44;
        v47 = sub_29D93AD38();
        MEMORY[0x29ED6A240](v47);

        v48 = v103;
        v104 = v27;
        v105 = MEMORY[0x29EDC7800];
        v49 = sub_29D693F78(&v102);
        (*v85)(v49, v32, v27);
        if (v44 == v94)
        {
          sub_29D920568(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
          v50 = *(sub_29D937948() - 8);
          v51 = *(v50 + 72);
          v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          *(swift_allocObject() + 16) = v68;
          v53 = *v71;
          v78 = v48;
          v54 = v73;
          v55 = v74;
          v53(v73, v72, v74);
          v56 = sub_29D9378D8();
          (*(*(v56 - 8) + 56))(v77, 1, 1, v56);
          v57 = v75;
          sub_29D9378E8();
          sub_29D937938();
          (*v70)(v57, v76);
          (*v69)(v54, v55);
        }

        v58 = swift_allocObject();
        v59 = v95;
        *(v58 + 16) = v95;
        *(v58 + 24) = v44;
        v61 = v89;
        v60 = v90;
        *v89 = 1;
        (*v83)(v61, v84, v60);
        v62 = sub_29D9379E8();
        (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
        (*v81)(v92, v82, v93);
        v63 = v59;
        sub_29D935D98();
        v32 = v88;
        v27 = v79;
        (*v80)(v88, v79);
        sub_29D679D3C(&v99, &v102);
        v35 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_29D68FAC0(0, v35[2] + 1, 1, v35);
          v106 = v35;
        }

        v66 = v35[2];
        v65 = v35[3];
        if (v66 >= v65 >> 1)
        {
          v35 = sub_29D68FAC0((v65 > 1), v66 + 1, 1, v35);
          v106 = v35;
        }

        v37 = v104;
        v38 = v105;
        v39 = sub_29D693DDC(&v102, v104);
        v40 = *(*(v37 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v39, v39);
        v42 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v43 + 16))(v42);
        sub_29D693D44(v66, v42, &v106, v37, v38);
        sub_29D69417C(&v102);
        v33 = v87;
      }

      v36 += 8;
      --v34;
    }

    while (v34);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v35;
}

void sub_29D920568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9205E0(uint64_t a1, void *a2)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9359D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v42 - v17;
  v19 = sub_29D91FB28(a1, a2);
  sub_29D775BD0(v19);

  sub_29D933A48();
  sub_29D933A18();
  v20 = *(v5 + 8);
  v44 = v4;
  v21 = v4;
  v22 = v20;
  v20(v9, v21);
  sub_29D9359C8();
  sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesPreference_];
  if (v24)
  {
    v25 = v24;
    sub_29D939D68();
  }

  v46 = sub_29D936768();
  v47 = sub_29D920A70(&qword_2A17B81F0, MEMORY[0x29EDC28B0]);
  sub_29D693F78(v45);
  sub_29D936758();
  v26 = v46;
  v27 = v47;
  v28 = sub_29D693E2C(v45, v46);
  *(v23 + 56) = v26;
  *(v23 + 64) = *(v27 + 8);
  v29 = sub_29D693F78((v23 + 32));
  (*(*(v26 - 8) + 16))(v29, v28, v26);
  sub_29D69417C(v45);
  sub_29D933A48();
  sub_29D933A18();
  v22(v9, v44);
  v30 = v43;
  sub_29D9359C8();
  sub_29D920568(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v31 = *(v11 + 72);
  v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D93F680;
  v34 = v33 + v32;
  v35 = *(v11 + 16);
  v35(v34, v18, v10);
  v35(v34 + v31, v30, v10);
  v36 = sub_29D9368A8();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_29D936888();
  v40 = *(v11 + 8);
  v40(v30, v10);
  v40(v18, v10);
  return v39;
}

uint64_t sub_29D920A70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D920AB8()
{
  if (!qword_2A17B8200)
  {
    sub_29D9368A8();
    v0 = sub_29D935208();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8200);
    }
  }
}

uint64_t type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController()
{
  result = qword_2A17B8210;
  if (!qword_2A17B8210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D920BB8(uint64_t *a1, uint64_t *a2)
{
  *(v2 + qword_2A17B8208 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v4 = qword_2A1A2C038;
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:{v4, 0xE000000000000000}];

  sub_29D6945AC(a1, v16);
  sub_29D6945AC(a2, v15);
  sub_29D6AA400();
  v7 = *MEMORY[0x29EDBA870];
  MEMORY[0x29ED6A6C0]();
  v8 = sub_29D936C38();
  v9 = MEMORY[0x29ED6A6C0](v7);
  v10 = a2[4];
  sub_29D693E2C(a2, a2[3]);
  sub_29D93A1F8();
  v11 = sub_29D934318();

  if (v11 == 2 || (v11 & 1) != 0)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v12 = a2[4];
    sub_29D693E2C(a2, a2[3]);
    sub_29D934328();

    sub_29D69417C(a1);
  }

  sub_29D69417C(a2);
  return v8;
}

void sub_29D920EAC()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_29D921094();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243FBD0);
  v3 = sub_29D939F18();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    sub_29D6AA360(aDonebutton);

    v5 = [v1 navigationItem];
    [v5 setHidesBackButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D92104C(void *a1)
{
  v1 = a1;
  sub_29D920EAC();
}

void sub_29D921094()
{
  v1 = v0;
  v2 = [v0 headerView];
  sub_29D88BBC8(&unk_2A243FAF0);
  v3 = sub_29D939F18();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_29D6AA360(aTitle_14);
  [v2 setTitleAccessibilityIdentifier_];

  v5 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243FB60);
  v6 = sub_29D939F18();

  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_3);
  [v5 setDetailTextAccessibilityIdentifier_];
}

void sub_29D92121C(char *a1)
{
  v2 = &a1[qword_2A17B8208];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D9212DC(char *a1)
{
  v2 = &a1[qword_2A17B8208];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D9213DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D921434()
{
  v1 = v0 + qword_2A17B8208;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D921468(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B8208 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t type metadata accessor for AFibFeaturesOnboardingViewController()
{
  result = qword_2A17B8228;
  if (!qword_2A17B8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D92154C()
{
  *(v0 + qword_2A17B8220 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  v2 = sub_29D939D28();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:{v1, 0xE000000000000000}];

  if (!v3)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  sub_29D9334A8();
  return sub_29D936CD8();
}

id sub_29D92178C()
{
  ObjectType = swift_getObjectType();
  v24.receiver = v0;
  v24.super_class = type metadata accessor for AFibFeaturesOnboardingViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_29D939D28();
  [v3 setAccessibilityIdentifier_];

  v5 = [v0 headerView];
  v6 = sub_29D939D28();
  [v5 setTitleAccessibilityIdentifier_];

  v7 = [v0 headerView];
  v8 = sub_29D939D28();
  [v7 setDetailTextAccessibilityIdentifier_];

  if (qword_2A17B0D48 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    sub_29D9334A8();
    v9 = sub_29D939D28();

    v10 = sub_29D939D28();
    v11 = [v0 hxui:v9 addPrimaryFooterButtonWithTitle:0 bold:v10 accessibilityIdentifier:0xE000000000000000];

    sub_29D9334A8();
    v12 = sub_29D939D28();

    v13 = sub_29D939D28();
    v14 = [v0 hxui:v12 addSecondaryFooterButtonWithTitle:0 bold:v13 accessibilityIdentifier:0xE000000000000000];

    sub_29D6A0C58();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    *(inited + 32) = v11;
    v0 = (inited + 32);
    *(inited + 40) = v14;
    v16 = v11;
    v17 = v14;
    if ((inited & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v18 = v16;
    }

    v19 = v18;
    v23 = v18;
    sub_29D921B78(&v23, ObjectType);

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v20 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
  }

  v20 = MEMORY[0x29ED6AE30](1, inited);
LABEL_9:
  v21 = v20;
  v23 = v20;
  sub_29D921B78(&v23, ObjectType);

  swift_setDeallocating();
  v22 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_29D921B78(uint64_t *a1, uint64_t a2)
{
  sub_29D9221AC();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v23 - v11;
  v13 = sub_29D93A788();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_29D93A7A8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D922204(v12);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v20, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    v23[1] = 0;
    sub_29D9371E8();
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = [objc_opt_self() tintColor];
    sub_29D93A758();
    (*(v14 + 16))(v9, v18, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_29D93A7B8();
    return (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_29D921E34()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x4C64694477656976, 0xED0000292864616FLL);
  MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D96FAD0);
  return 0;
}

void sub_29D921F04(void *a1)
{
  v1 = a1;
  sub_29D92178C();
}

void sub_29D921F4C(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = off_2A244BA68[0];
    type metadata accessor for AFibFeaturesPromotionTileActionHandler();
    v3 = a1;
    v2();
    sub_29D936978();
  }
}

void sub_29D922018(void *a1, uint64_t a2, char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_29D89BF48(a3);
    sub_29D936978();
  }
}

void sub_29D9220A4(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_29D89CD58();
    sub_29D936978();
  }
}

id sub_29D92215C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibFeaturesOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9221AC()
{
  if (!qword_2A17B8238)
  {
    sub_29D93A788();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8238);
    }
  }
}

uint64_t sub_29D922204(uint64_t a1)
{
  sub_29D9221AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D92228C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeartAdvertisableFeatureSourceProvider();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

char *sub_29D9222C4(void *a1, void *a2, uint64_t a3, char *a4)
{
  v16[3] = type metadata accessor for AdvertisableFeatureHeartSettingsProvider();
  v16[4] = &off_2A24444F8;
  v16[0] = a3;
  v8 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_identifier;
  v9 = *MEMORY[0x29EDC1798];
  v10 = sub_29D934718();
  (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_healthStore] = a1;
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue] = a2;
  sub_29D6945AC(v16, &a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]);
  v15.receiver = a4;
  v15.super_class = type metadata accessor for BradycardiaAdvertisableFeatureSource();
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [*(*sub_29D693E2C(&v13[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v13[OBJC:sel_addHeartRhythmAvailabilityObserver_ IVAR:v13 :? :? :? TtC5Heart36BradycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  sub_29D69417C(v16);
  return v13;
}

char *sub_29D922428(void *a1, void *a2, uint64_t a3, char *a4)
{
  v16[3] = type metadata accessor for AdvertisableFeatureHeartSettingsProvider();
  v16[4] = &off_2A24444F8;
  v16[0] = a3;
  v8 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_identifier;
  v9 = *MEMORY[0x29EDC17A0];
  v10 = sub_29D934718();
  (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_healthStore] = a1;
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue] = a2;
  sub_29D6945AC(v16, &a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]);
  v15.receiver = a4;
  v15.super_class = type metadata accessor for TachycardiaAdvertisableFeatureSource();
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [*(*sub_29D693E2C(&v13[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v13[OBJC:sel_addHeartRhythmAvailabilityObserver_ IVAR:v13 :? :? :? TtC5Heart36TachycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  sub_29D69417C(v16);
  return v13;
}

uint64_t sub_29D92258C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void *, void *, void, id))
{
  v29 = a2;
  v30 = a3;
  v4 = sub_29D934A68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934A78();
  v11 = sub_29D934AB8();
  v12 = sub_29D934A78();
  sub_29D934A58();
  v13 = type metadata accessor for AdvertisableFeatureHeartSettingsProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];

  *(v16 + 16) = v17;
  (*(v5 + 32))(v16 + OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource, v9, v4);
  v32 = v13;
  v33 = &off_2A24444F8;
  v31[0] = v16;
  v18 = objc_allocWithZone(v29(0));
  v19 = v32;
  v20 = sub_29D693DDC(v31, v32);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20, v20);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v30(v10, v11, *v23, v18);

  v26 = sub_29D934AC8();
  (*(*(v26 - 8) + 8))(a1, v26);
  sub_29D69417C(v31);
  return v25;
}

uint64_t sub_29D922808(uint64_t a1)
{
  v33 = a1;
  v35 = sub_29D934738();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934AC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v13 + 16);
  v34(v17, a1, v12);
  sub_29D934A88();
  sub_29D693E2C(v36, v37);
  sub_29D934AD8();
  v18 = sub_29D934AA8();
  sub_29D934A98();
  (*(v13 + 8))(v17, v12);
  v19 = type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  sub_29D73B8E4(v11, v22 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_currentCountry);
  *(v22 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_includeFeaturesMadeAvailableByBuddy) = v18 & 1;
  (*(v2 + 32))(v22 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_presentationLocation, v6, v35);
  sub_29D69417C(v36);
  sub_29D922C3C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D943EA0;
  sub_29D934638();
  v24 = v33;
  v25 = v34;
  v34(v17, v33, v12);
  v37 = v19;
  v38 = sub_29D922CF4(&qword_2A17B8250, type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider);
  v36[0] = v22;

  v26 = sub_29D934628();
  v27 = MEMORY[0x29EDC16C8];
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  v25(v17, v24, v12);
  v28 = sub_29D92258C(v17, type metadata accessor for BradycardiaAdvertisableFeatureSource, sub_29D9222C4);
  v29 = sub_29D922CF4(&qword_2A17B3A98, type metadata accessor for BradycardiaAdvertisableFeatureSource);
  *(v23 + 48) = v28;
  *(v23 + 56) = v29;
  v25(v17, v24, v12);
  v30 = sub_29D92258C(v17, type metadata accessor for TachycardiaAdvertisableFeatureSource, sub_29D922428);
  v31 = sub_29D922CF4(&qword_2A17B4228, type metadata accessor for TachycardiaAdvertisableFeatureSource);
  *(v23 + 64) = v30;
  *(v23 + 72) = v31;

  return v23;
}

void sub_29D922C3C()
{
  if (!qword_2A17B8240)
  {
    sub_29D922C94();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8240);
    }
  }
}

unint64_t sub_29D922C94()
{
  result = qword_2A17B8248;
  if (!qword_2A17B8248)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B8248);
  }

  return result;
}

uint64_t sub_29D922CF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D922D3C(id *a1)
{
  v1 = [*a1 startDate];
  sub_29D933998();
}

id sub_29D922D9C(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x29ED6AE30](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_29D93A928();
  }

  return result;
}

uint64_t sub_29D922EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  sub_29D929118(0, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v43 = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93DDB0;
  v5 = sub_29D935488();
  v6 = MEMORY[0x29EDC1FC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  sub_29D693F78((v4 + 32));
  sub_29D935498();
  v55 = v4;
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v46 = *(v2 + 56);
  v14 = *(v2 + 64);
  v15 = *(v2 + 72);
  v16 = *(v2 + 88);
  v45 = *(v2 + 80);
  v44 = v16;
  v17 = *(v2 + 96);
  v56 = v17;
  v18 = sub_29D9288B0(v7, v8);
  if (*(v18 + 16))
  {
    v42 = v15;
    v41 = v13;
    v20 = MEMORY[0x2A1C7C4A8](v18, v19);
    v53 = sub_29D9370F8();
    v21 = MEMORY[0x29EDC2C70];
    v54 = MEMORY[0x29EDC2C70];
    sub_29D693F78(&v52);
    sub_29D9370E8();
    sub_29D923400(v20, v17 & 1, &v52, v51);

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93F680;
    sub_29D6945AC(v51, inited + 32);
    *(inited + 96) = v5;
    *(inited + 104) = MEMORY[0x29EDC1FC0];
    sub_29D693F78((inited + 72));
    sub_29D935498();
    sub_29D88C0D8(inited);
    v13 = v41;
    sub_29D69417C(v51);
    sub_29D69417C(&v52);
    v23 = v21;
  }

  else
  {

    v23 = MEMORY[0x29EDC2C70];
  }

  v24 = sub_29D9288B0(v13, v46);
  if (*(v24 + 16))
  {
    v26 = MEMORY[0x2A1C7C4A8](v24, v25);
    v53 = sub_29D9370F8();
    v54 = v23;
    sub_29D693F78(&v52);
    sub_29D9370E8();
    sub_29D923400(v26, v56, &v52, v51);

    sub_29D6945AC(v51, v48);
    v27 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_29D68F5B0(0, v27[2] + 1, 1, v27);
      v55 = v27;
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_29D68F5B0((v28 > 1), v29 + 1, 1, v27);
      v55 = v27;
    }

    sub_29D69417C(v51);
    v30 = v49;
    v31 = v50;
    v32 = sub_29D693DDC(v48, v49);
    v33 = *(*(v30 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v32, v32);
    v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35);
    sub_29D693D44(v29, v35, &v55, v30, v31);
    sub_29D69417C(v48);
    v55 = v27;
    sub_29D69417C(&v52);
  }

  else
  {
  }

  v37 = sub_29D9370F8();
  v38 = v47;
  v47[3] = v37;
  v38[4] = v23;
  sub_29D693F78(v38);
  return sub_29D9370B8();
}

uint64_t sub_29D923358(void **a1)
{
  v2 = *(sub_29D9339F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29D8DF6F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_29D925058(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_29D923400@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v128 = a3;
  v133 = a4;
  v159[5] = *MEMORY[0x29EDCA608];
  v7 = sub_29D934FF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v129 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v138 = &v123 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v137 = &v123 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v123 - v19;
  v146 = a2;
  v131 = v4;
  sub_29D9243CC(a2);
  sub_29D929288(0, &qword_2A17B1350, MEMORY[0x29EDC1CC8], MEMORY[0x29EDC9E90]);
  v21 = *(v8 + 80);
  v22 = (v21 + 32) & ~v21;
  v145 = *(v8 + 72);
  v126 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = *(v8 + 16);
  v144 = v22;
  v130 = v20;
  v124 = v24;
  v24((v23 + v22), v20, v7);
  v25 = *(a1 + 16);
  v132 = v8;
  v127 = v9;
  v125 = v8 + 16;
  if (v25)
  {
    v140 = (v8 + 32);
    v26 = (a1 + 48);
    v143 = *MEMORY[0x29EDC7638];
    v142 = *MEMORY[0x29EDC7640];
    v141 = *MEMORY[0x29EDC7650];
    v136 = xmmword_29D946CA0;
    v135 = xmmword_29D943EA0;
    v134 = v7;
    do
    {
      v147 = v26;
      v148 = v25;
      v30 = *(v26 - 2);
      v29 = *(v26 - 1);
      v31 = *v26;
      v32 = v26[1];
      v34 = v26[2];
      v33 = v26[3];
      if (v146)
      {
        v139 = v23;
        v35 = v26[4];
        v36 = v26[5];
        sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        v37 = swift_allocObject();
        *(v37 + 16) = v136;
        *(v37 + 32) = v30;
        *(v37 + 40) = v29;
        *(v37 + 48) = v31;
        *(v37 + 56) = v32;
        *(v37 + 64) = v34;
        *(v37 + 72) = v33;
        *(v37 + 80) = v35;
        *(v37 + 88) = v36;
        v23 = v139;
        v38 = v143;
        v149[0] = v143;
        v39 = objc_opt_self();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        v40 = v38;
        v41 = [v39 systemFontOfSize_];
        v42 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
        v149[1] = v41;
        v43 = v142;
        v149[4] = v42;
        v150[0] = v142;
        v44 = objc_opt_self();
        v45 = v43;
        v46 = [v44 darkTextColor];
        v47 = sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
        v150[1] = v46;
        v48 = v141;
        v150[4] = v47;
        v151[0] = v141;
        v49 = sub_29D69567C(0, &qword_2A17B1038, 0x29EDC7688);
        v50 = v48;
        v51 = sub_29D93A5B8();
        v151[4] = v49;
        v151[1] = v51;
        sub_29D6941F0();
        v52 = sub_29D93ABA8();

        sub_29D929478(v149, &v152, sub_29D929034);
        v53 = v152;
        v54 = sub_29D6959E0(v152);
        if (v55)
        {
          goto LABEL_24;
        }

        v56 = v52 + 8;
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v54;
        *(v52[6] + 8 * v54) = v53;
        sub_29D6940E0(v153, (v52[7] + 32 * v54));
        v57 = v52[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v59;
        sub_29D929478(v150, &v152, sub_29D929034);
        v60 = v152;
        v61 = sub_29D6959E0(v152);
        if (v62)
        {
          goto LABEL_24;
        }

        *(v56 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        *(v52[6] + 8 * v61) = v60;
        sub_29D6940E0(v153, (v52[7] + 32 * v61));
        v63 = v52[2];
        v58 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v64;
        sub_29D929478(v151, &v152, sub_29D929034);
        v65 = v152;
        v66 = sub_29D6959E0(v152);
        if (v67)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

        *(v56 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        *(v52[6] + 8 * v66) = v65;
        sub_29D6940E0(v153, (v52[7] + 32 * v66));
        v68 = v52[2];
        v58 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v69;

        sub_29D929034();
        swift_arrayDestroy();
        v70 = v137;
        sub_29D935008();
        v72 = *(v23 + 16);
        v71 = *(v23 + 24);
        v73 = v72 + 1;
        if (v72 < v71 >> 1)
        {
          v28 = v70;
          v7 = v134;
          v27 = v148;
          goto LABEL_5;
        }

        v7 = v134;
      }

      else
      {
        sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        v74 = swift_allocObject();
        *(v74 + 16) = v135;
        *(v74 + 32) = v30;
        *(v74 + 40) = v29;
        *(v74 + 48) = v31;
        *(v74 + 56) = v32;
        *(v74 + 64) = v34;
        *(v74 + 72) = v33;
        v75 = v143;
        v157[0] = v143;
        v76 = objc_opt_self();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        v77 = v75;
        v78 = [v76 systemFontOfSize_];
        v79 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
        v157[1] = v78;
        v80 = v142;
        v157[4] = v79;
        v158[0] = v142;
        v81 = objc_opt_self();
        v82 = v80;
        v83 = [v81 darkTextColor];
        v84 = sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
        v158[1] = v83;
        v85 = v141;
        v158[4] = v84;
        v159[0] = v141;
        v86 = sub_29D69567C(0, &qword_2A17B1038, 0x29EDC7688);
        v87 = v85;
        v88 = sub_29D93A5B8();
        v159[4] = v86;
        v159[1] = v88;
        sub_29D6941F0();
        v89 = sub_29D93ABA8();

        sub_29D929478(v157, &v152, sub_29D929034);
        v90 = v152;
        v91 = sub_29D6959E0(v152);
        if (v92)
        {
          goto LABEL_25;
        }

        v93 = v89 + 8;
        *(v89 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v91;
        *(v89[6] + 8 * v91) = v90;
        sub_29D6940E0(v153, (v89[7] + 32 * v91));
        v94 = v89[2];
        v58 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v95;
        sub_29D929478(v158, &v152, sub_29D929034);
        v96 = v152;
        v97 = sub_29D6959E0(v152);
        if (v98)
        {
          goto LABEL_25;
        }

        *(v93 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
        *(v89[6] + 8 * v97) = v96;
        sub_29D6940E0(v153, (v89[7] + 32 * v97));
        v99 = v89[2];
        v58 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v100;
        sub_29D929478(v159, &v152, sub_29D929034);
        v101 = v152;
        v102 = sub_29D6959E0(v152);
        if (v103)
        {
          goto LABEL_25;
        }

        *(v93 + ((v102 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v102;
        *(v89[6] + 8 * v102) = v101;
        sub_29D6940E0(v153, (v89[7] + 32 * v102));
        v104 = v89[2];
        v58 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v105;

        sub_29D929034();
        swift_arrayDestroy();
        v70 = v138;
        sub_29D935008();
        v72 = *(v23 + 16);
        v71 = *(v23 + 24);
        v73 = v72 + 1;
        if (v72 < v71 >> 1)
        {
          v28 = v70;
          v27 = v148;
          goto LABEL_5;
        }
      }

      v27 = v148;
      v23 = sub_29D690304(v71 > 1, v73, 1, v23);
      v28 = v70;
LABEL_5:
      *(v23 + 16) = v73;
      (*v140)(v23 + v144 + v72 * v145, v28, v7);
      v26 = v147 + 8;
      v25 = v27 - 1;
    }

    while (v25);
  }

  v106 = v126;
  v107 = sub_29D77648C(v23);

  v108 = v128;
  sub_29D6945AC(v128, v156);
  sub_29D6945AC(v108, v155);
  v109 = v129;
  v110 = v130;
  v124(v129, v130, v7);
  v111 = (v106 + 168) & ~v106;
  v112 = swift_allocObject();
  v113 = v131;
  v114 = v131[5];
  *(v112 + 5) = v131[4];
  *(v112 + 6) = v114;
  *(v112 + 7) = v113[6];
  v115 = v113[1];
  *(v112 + 1) = *v113;
  *(v112 + 2) = v115;
  v116 = v113[3];
  *(v112 + 3) = v113[2];
  *(v112 + 4) = v116;
  sub_29D6959E8(v155, (v112 + 128));
  v117 = v132;
  (*(v132 + 32))(&v112[v111], v109, v7);
  sub_29D693FE0(v156, v154);
  v118 = type metadata accessor for BloodPressurePDFHistoryTable();
  swift_allocObject();
  sub_29D929180(v113, &v152);
  v119 = sub_29D68BD88(v107, v154, sub_29D9290A0, v112, 5.0, 10.0);
  sub_29D9291B8(v156);
  v120 = v133;
  v133[3] = v118;
  v120[4] = sub_29D929240(&qword_2A17B1050, type metadata accessor for BloodPressurePDFHistoryTable);
  *v120 = v119;
  result = (*(v117 + 8))(v110, v7);
  v122 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D923F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v3 = sub_29D935378();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D929288(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v26 - v12;
  v14 = sub_29D933AA8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D929118(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v15 = swift_allocObject();
  v16 = MEMORY[0x29EDC9BA8];
  *(v15 + 16) = xmmword_29D93DDB0;
  v17 = MEMORY[0x29EDC9C10];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = a1;
  v18 = sub_29D9334A8();
  v20 = v19;
  if (*(v15 + 16))
  {
    v21 = sub_29D939D78();
    v23 = v22;

    v20 = v23;
  }

  else
  {
    v21 = v18;
  }

  sub_29D9293B8(v13, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
  v24 = sub_29D934F68();
  (*(v4 + 104))(v8, *MEMORY[0x29EDC1F60], v3);
  return MEMORY[0x29ED67390](v21, v20, v8, v24);
}

uint64_t sub_29D92423C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v4 = sub_29D934FF8();
  v12[3] = v4;
  v12[4] = MEMORY[0x29EDC1CC0];
  v5 = sub_29D693F78(v12);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  v6 = sub_29D936418();
  sub_29D69417C(v12);
  sub_29D9292EC(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93DDB0;
  *(v7 + 32) = v6;
  v8 = MEMORY[0x29ED66800]();

  sub_29D693FE0(v13, v12);
  v9 = type metadata accessor for BloodPressurePDFHistoryTable();
  swift_allocObject();
  v10 = sub_29D68BD88(v8, v12, 0, 0, 5.0, 10.0);
  sub_29D9291B8(v13);
  a2[3] = v9;
  result = sub_29D929240(&qword_2A17B1050, type metadata accessor for BloodPressurePDFHistoryTable);
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_29D9243CC(char a1)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v15 = sub_29D939DC8();
  v16 = v1;

  sub_29D9334A8();
  v2 = sub_29D939DC8();
  v4 = v3;

  sub_29D9334A8();
  v5 = sub_29D939DC8();
  v7 = v6;

  sub_29D9334A8();
  v8 = sub_29D939DC8();
  v10 = v9;

  if (a1)
  {
    sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D946CA0;
    *(v11 + 32) = v15;
    *(v11 + 40) = v16;
    *(v11 + 48) = v2;
    *(v11 + 56) = v4;
    *(v11 + 64) = v5;
    *(v11 + 72) = v7;
    *(v11 + 80) = v8;
    *(v11 + 88) = v10;
  }

  else
  {

    sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D943EA0;
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 48) = v2;
    *(v12 + 56) = v4;
    *(v12 + 64) = v5;
    *(v12 + 72) = v7;
  }

  sub_29D934FD8();

  return sub_29D935008();
}

uint64_t sub_29D924680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29D934DA8();
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29D929118(0, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29D944710;
    v9 = sub_29D935488();
    v10 = MEMORY[0x29EDC1FC0];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    sub_29D693F78((v8 + 32));
    sub_29D935498();
    v11 = sub_29D936F88();
    v12 = MEMORY[0x29EDC2C00];
    *(v8 + 96) = v11;
    *(v8 + 104) = v12;
    v13 = sub_29D693F78((v8 + 72));
    sub_29D923F30(v7, v13);
    *(v8 + 136) = v9;
    *(v8 + 144) = v10;
    sub_29D693F78((v8 + 112));
    sub_29D935498();
    sub_29D6945AC(a3, v8 + 152);
    sub_29D92423C(a4, (v8 + 192));
    *(v8 + 256) = v9;
    *(v8 + 264) = v10;
    sub_29D693F78((v8 + 232));
    sub_29D935498();
    return v8;
  }

  return result;
}

uint64_t sub_29D9247C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_29D935378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v13 = sub_29D934FC8();
  v14 = *MEMORY[0x29EDC1F60];
  v15 = *(v8 + 104);
  v15(v12, v14, v7);
  v16 = sub_29D936FD8();
  v26 = v16;
  v27 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v25);
  MEMORY[0x29ED673E0](a1, a2, v12, v13);
  v17 = sub_29D935808();
  sub_29D69417C(v25);
  sub_29D935E88();
  v18 = sub_29D934F68();
  v15(v12, v14, v7);
  v26 = v16;
  v27 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v25);
  MEMORY[0x29ED673E0](v24, a4, v12, v18);
  v19 = sub_29D935808();
  sub_29D69417C(v25);
  v26 = sub_29D935488();
  v27 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v25);
  sub_29D935498();
  v20 = sub_29D935808();
  sub_29D69417C(v25);
  sub_29D9292EC(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D943EA0;
  *(v21 + 32) = v17;
  *(v21 + 40) = v19;
  *(v21 + 48) = v20;
  v22 = MEMORY[0x29ED65BE0]();

  return v22;
}

uint64_t sub_29D924A20(uint64_t *a1, void **a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v32 - v12;
  v14 = *a2;
  v15 = [v14 startDate];
  sub_29D933998();

  sub_29D933AD8();
  v16 = *(v5 + 8);
  v16(v10, v4);
  v17 = *a1;
  if (*(*a1 + 16) && (v18 = sub_29D690A14(v13), (v19 & 1) != 0))
  {
    v34 = *(*(v17 + 56) + 8 * v18);
    v20 = v14;
    v21 = sub_29D935E88();
    MEMORY[0x29ED6A300](v21);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();
    v22 = v34;
    v23 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a1;
    sub_29D692704(v22, v13, isUniquelyReferenced_nonNull_native);
    v25 = v33;
  }

  else
  {
    sub_29D929540(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29D940030;
    *(v26 + 32) = v14;
    v27 = v14;
    v28 = *a1;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a1;
    sub_29D692704(v26, v13, v29);
    v25 = v34;
  }

  *a1 = v25;
  return (v16)(v13, v4);
}

BOOL sub_29D924CA0(void **a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933CC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  (*(v9 + 104))(v13, *MEMORY[0x29EDB9CC8], v8);
  v15 = [v14 startDate];
  sub_29D933998();

  v16 = sub_29D933CD8();
  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
  return v16 < 12;
}

BOOL sub_29D924E7C(void **a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933CC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  (*(v9 + 104))(v13, *MEMORY[0x29EDB9CC8], v8);
  v15 = [v14 startDate];
  sub_29D933998();

  v16 = sub_29D933CD8();
  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
  return v16 > 11;
}

uint64_t sub_29D925058(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29D93AD28();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29D9339F8();
        v6 = sub_29D939F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_29D9339F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_29D925408(v8, v9, a1, v4);
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
    return sub_29D925184(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29D925184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29D9339F8();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v48 = &v34 - v15;
  result = MEMORY[0x2A1C7C4A8](v14, v16);
  v47 = &v34 - v19;
  v36 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v45 = *(v18 + 16);
    v46 = v18 + 16;
    v21 = *(v18 + 72);
    v22 = (v18 + 8);
    v23 = v20 + v21 * (a3 - 1);
    v41 = -v21;
    v42 = (v18 + 32);
    v24 = a1 - a3;
    v43 = v20;
    v35 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v39 = v23;
    v40 = a3;
    v37 = v25;
    v38 = v24;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      v45(v47, v25, v8);
      v28 = v48;
      v27(v48, v23, v8);
      v29 = sub_29D933968();
      v30 = *v22;
      (*v22)(v28, v8);
      result = v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v23 = v39 + v35;
        v24 = v38 - 1;
        v25 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v25 += v41;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D925408(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v129 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v137 = &v122 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v143 = &v122 - v20;
  result = MEMORY[0x2A1C7C4A8](v19, v21);
  v142 = &v122 - v23;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x29EDCA190];
LABEL_95:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_136;
    }

    a4 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_29D8DF4A0(a4);
    }

    v117 = v6;
    v145 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v118 = v10;
      v10 = a3;
      a3 = v118;
      while (*v10)
      {
        v119 = *(result + 16 * a4);
        v120 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_29D925DF4(*v10 + a3[9] * v119, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v117)
        {
        }

        if (v6 < v119)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_29D8DF4A0(v120);
        }

        if (a4 - 2 >= *(v120 + 2))
        {
          goto LABEL_124;
        }

        v121 = &v120[16 * a4];
        *v121 = v119;
        *(v121 + 1) = v6;
        v145 = v120;
        sub_29D8DF414(a4 - 1);
        result = v145;
        a4 = *(v145 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v25 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v26 = MEMORY[0x29EDCA190];
  v127 = a3;
  v125 = a4;
  v144 = v9;
  while (1)
  {
    v27 = v25;
    v130 = v26;
    if (v25 + 1 >= v24)
    {
      v38 = v25 + 1;
    }

    else
    {
      v135 = v24;
      v124 = v6;
      v132 = *a3;
      v28 = v132;
      v29 = v10[9];
      v5 = v132 + v29 * (v25 + 1);
      v30 = v10[2];
      v31 = v142;
      v30(v142, v5, v9);
      v32 = v28 + v29 * v27;
      v33 = v143;
      v134 = v30;
      v30(v143, v32, v9);
      LODWORD(v136) = sub_29D933968();
      v34 = v9;
      v35 = v10[1];
      v35(v33, v34);
      v133 = v35;
      result = (v35)(v31, v34);
      v123 = v27;
      v36 = v27 + 2;
      v138 = v29;
      v37 = v132 + v29 * (v27 + 2);
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        v39 = v10;
        v40 = v142;
        v41 = v144;
        v42 = v134;
        (v134)(v142, v37, v144);
        v43 = v143;
        v42(v143, v5, v41);
        v44 = sub_29D933968() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v40;
        v10 = v39;
        result = v45(v46, v41);
        ++v36;
        v37 += v138;
        v5 += v138;
        if ((v136 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      a3 = v127;
      v26 = v130;
      v6 = v124;
      a4 = v125;
      v9 = v144;
      v27 = v123;
      if (v136)
      {
        if (v38 < v123)
        {
          goto LABEL_127;
        }

        if (v123 < v38)
        {
          v122 = v10;
          v47 = v138 * (v38 - 1);
          v48 = v38 * v138;
          v49 = v38;
          v50 = v123;
          v51 = v123 * v138;
          do
          {
            if (v50 != --v49)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v54 = v38;
              v5 = v53 + v51;
              v136 = *v139;
              (v136)(v129, v53 + v51, v144, v26);
              if (v51 < v47 || v5 >= v53 + v48)
              {
                v52 = v144;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v144;
                if (v51 != v47)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v136)(v53 + v47, v129, v52);
              a3 = v127;
              v26 = v130;
              v38 = v54;
            }

            ++v50;
            v47 -= v138;
            v48 -= v138;
            v51 += v138;
          }

          while (v50 < v49);
          v6 = v124;
          a4 = v125;
          v10 = v122;
          v9 = v144;
          v27 = v123;
        }
      }
    }

    v55 = a3[1];
    if (v38 < v55)
    {
      if (__OFSUB__(v38, v27))
      {
        goto LABEL_126;
      }

      if (v38 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_128;
        }

        if ((v27 + a4) >= v55)
        {
          v56 = a3[1];
        }

        else
        {
          v56 = v27 + a4;
        }

        if (v56 < v27)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v38 != v56)
        {
          break;
        }
      }
    }

    v57 = v38;
    if (v38 < v27)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = v130;
    }

    else
    {
      result = sub_29D68FFE8(0, *(v130 + 2) + 1, 1, v130);
      v26 = result;
    }

    a4 = *(v26 + 2);
    v58 = *(v26 + 3);
    v5 = a4 + 1;
    if (a4 >= v58 >> 1)
    {
      result = sub_29D68FFE8((v58 > 1), a4 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v5;
    v59 = &v26[16 * a4];
    *(v59 + 4) = v27;
    *(v59 + 5) = v57;
    v60 = *v126;
    if (!*v126)
    {
      goto LABEL_135;
    }

    v131 = v57;
    if (a4)
    {
      while (1)
      {
        v61 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v62 = *(v26 + 4);
          v63 = *(v26 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_114;
          }

          v78 = &v26[16 * v5];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_117;
          }

          v84 = &v26[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_121;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v26[16 * v5];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_116;
        }

        v91 = &v26[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v61 - 1;
        if (v61 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v99 = v26;
        v100 = *&v26[16 * a4 + 32];
        v5 = *&v26[16 * v61 + 40];
        sub_29D925DF4(*a3 + v10[9] * v100, *a3 + v10[9] * *&v26[16 * v61 + 32], *a3 + v10[9] * v5, v60);
        if (v6)
        {
        }

        if (v5 < v100)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_29D8DF4A0(v99);
        }

        if (a4 >= *(v99 + 2))
        {
          goto LABEL_111;
        }

        v101 = &v99[16 * a4];
        *(v101 + 4) = v100;
        *(v101 + 5) = v5;
        v145 = v99;
        result = sub_29D8DF414(v61);
        v26 = v145;
        v5 = *(v145 + 16);
        v9 = v144;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v26[16 * v5 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_112;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_113;
      }

      v73 = &v26[16 * v5];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_115;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_118;
      }

      if (v77 >= v69)
      {
        v95 = &v26[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_122;
        }

        if (v64 < v98)
        {
          v61 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = a3[1];
    v25 = v131;
    a4 = v125;
    if (v131 >= v24)
    {
      goto LABEL_95;
    }
  }

  v124 = v6;
  v102 = *a3;
  v103 = v10[9];
  v122 = v10;
  v138 = v10[2];
  v104 = v102 + v103 * (v38 - 1);
  v105 = -v103;
  v123 = v27;
  v106 = (v27 - v38);
  v136 = v102;
  v128 = v103;
  v5 = v102 + v38 * v103;
  v131 = v56;
LABEL_85:
  v134 = v104;
  v135 = v38;
  v132 = v5;
  v133 = v106;
  v107 = v104;
  while (1)
  {
    v108 = v142;
    v109 = v138;
    (v138)(v142, v5, v9, v26);
    v110 = v143;
    v109(v143, v107, v144);
    v111 = sub_29D933968();
    a4 = v140;
    v112 = *v140;
    v113 = v110;
    v9 = v144;
    (*v140)(v113, v144);
    result = v112(v108, v9);
    if ((v111 & 1) == 0)
    {
LABEL_84:
      v38 = v135 + 1;
      v104 = &v134[v128];
      v106 = v133 - 1;
      v5 = v132 + v128;
      v57 = v131;
      if (v135 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v124;
      a3 = v127;
      v10 = v122;
      v27 = v123;
      if (v131 < v123)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    a4 = v139;
    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v107, v115, v9);
    v107 += v105;
    v5 += v105;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_29D925DF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = sub_29D9339F8();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v60, v10);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v11, v13);
  v57 = &v48 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v59 = a3;
  v19 = (a2 - a1) / v17;
  v63 = a1;
  v62 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v21;
    if (v21 < 1)
    {
      v36 = a4 + v21;
    }

    else
    {
      v33 = -v17;
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v34 = a4 + v21;
      v35 = v59;
      v36 = v32;
      v50 = a1;
      v51 = a4;
      v54 = -v17;
      do
      {
        v48 = v36;
        v37 = a2;
        v38 = a2 + v33;
        v55 = v37;
        v56 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v63 = v37;
            v61 = v48;
            goto LABEL_59;
          }

          v40 = v35;
          v49 = v36;
          v59 = v35 + v33;
          v41 = v34 + v33;
          v42 = *v53;
          v43 = v57;
          v44 = v60;
          v45 = v34;
          (*v53)(v57, v41, v60);
          v46 = v58;
          (v42)(v58, v38, v44);
          LOBYTE(v42) = sub_29D933968();
          v47 = *v52;
          (*v52)(v46, v44);
          v47(v43, v44);
          if (v42)
          {
            break;
          }

          v36 = v41;
          v35 = v59;
          if (v40 < v45 || v59 >= v45)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v56;
            a1 = v50;
          }

          else
          {
            v38 = v56;
            a1 = v50;
            if (v40 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v41;
          v39 = v41 > v51;
          v33 = v54;
          v37 = v55;
          if (!v39)
          {
            a2 = v55;
            goto LABEL_58;
          }
        }

        v48 = v45;
        v35 = v59;
        if (v40 < v55 || v59 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v49;
          a1 = v50;
          v33 = v54;
        }

        else
        {
          a2 = v56;
          v36 = v49;
          a1 = v50;
          v33 = v54;
          if (v40 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v34 = v48;
      }

      while (v48 > v51);
    }

LABEL_58:
    v63 = a2;
    v61 = v36;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v20;
    v61 = a4 + v20;
    if (v20 >= 1 && a2 < v59)
    {
      v54 = *(v8 + 16);
      v55 = v8 + 16;
      v52 = v17;
      v53 = (v8 + 8);
      do
      {
        v23 = v57;
        v24 = v60;
        v25 = v54;
        (v54)(v57, a2, v60);
        v26 = a2;
        v27 = v58;
        v25(v58, a4, v24);
        v28 = sub_29D933968();
        v29 = *v53;
        (*v53)(v27, v24);
        v29(v23, v24);
        if (v28)
        {
          v30 = v52;
          a2 = v52 + v26;
          if (a1 < v26 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v30 = v52;
          v31 = v52 + a4;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v62 = v31;
          a4 += v30;
        }

        a1 += v30;
        v63 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_59:
  sub_29D8DF4B4(&v63, &v62, &v61);
  return 1;
}

uint64_t sub_29D926384@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v139 = a2;
  v3 = type metadata accessor for BloodPressurePDFSampleInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v174 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v177 = &v137 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v176 = &v137 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v137 - v16;
  sub_29D929288(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v160 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v163 = &v137 - v24;
  v175 = sub_29D933788();
  v173 = *(v175 - 8);
  v25 = *(v173 + 64);
  MEMORY[0x2A1C7C4A8](v175, v26);
  v165 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_29D9337B8();
  v172 = *(v169 - 8);
  v28 = *(v172 + 64);
  MEMORY[0x2A1C7C4A8](v169, v29);
  v164 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D9339F8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v170 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v166 = &v137 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v161 = &v137 - v42;
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v168 = &v137 - v45;
  MEMORY[0x2A1C7C4A8](v44, v46);
  v48 = &v137 - v47;
  v49 = type metadata accessor for BloodPressurePDFViewModel(0);
  v50 = *(a1 + v49[16]);
  v178 = *(a1 + v49[15]);
  v51 = a1 + v49[17];
  v171 = v32;
  v52 = *(v32 + 16);
  v152 = v32 + 16;
  v153 = v51;
  v52(v48);
  v155 = v49;
  v53 = a1 + v49[14];
  v167 = v31;
  v156 = v52;
  (v52)(v168, v53, v31);
  v162 = a1;
  v145 = *a1;
  v138 = v50;
  sub_29D935E88();
  sub_29D935E88();
  v54 = v164;
  sub_29D933798();
  v55 = v165;
  sub_29D933768();
  v154 = v48;
  v157 = sub_29D9339C8();
  v146 = v56;
  v57 = *(v173 + 8);
  v173 += 8;
  v57(v55, v175);
  v58 = v172 + 8;
  v59 = *(v172 + 8);
  v60 = v169;
  v59(v54, v169);
  sub_29D933798();
  sub_29D933768();
  v141 = sub_29D9339C8();
  v140 = v61;
  v159 = v57;
  v57(v55, v175);
  v172 = v58;
  v158 = v59;
  v59(v54, v60);
  v62 = "PDF_TITLE_DESCRIPTION";
  v63 = sub_29D933AA8();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v151 = v63;
  v150 = v65;
  v149 = v64 + 56;
  (v65)(v163, 1, 1);
  if (qword_2A1A242C0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v67 = qword_2A1A2BE98;
    v66 = unk_2A1A2BEA0;
    v68 = qword_2A1A2BEA8;
    sub_29D929118(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v148 = v69;
    v70 = swift_allocObject();
    v147 = xmmword_29D93F680;
    *(v70 + 16) = xmmword_29D93F680;
    v71 = MEMORY[0x29EDC99B0];
    *(v70 + 56) = MEMORY[0x29EDC99B0];
    v72 = sub_29D69AD24();
    v73 = v146;
    *(v70 + 32) = v157;
    *(v70 + 40) = v73;
    *(v70 + 96) = v71;
    *(v70 + 104) = v72;
    v146 = v72;
    v74 = v141;
    *(v70 + 64) = v72;
    *(v70 + 72) = v74;
    *(v70 + 80) = v140;
    v157 = v62;
    v75 = v68;
    v76 = sub_29D9334A8();
    v78 = v77;
    if (*(v70 + 16))
    {
      v79 = v163;
      v141 = sub_29D939D78();
      v78 = v80;
    }

    else
    {
      v141 = v76;

      v79 = v163;
    }

    sub_29D9293B8(v79, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v81 = v66;
    v82 = sub_29D9334A8();
    v84 = v83;
    v140 = v78;
    v144 = v81;
    v143 = v75;
    v142 = v67;
    if (v145 && [v145 journalType] < 2)
    {

      v137 = sub_29D9334A8();
      v145 = v85;
    }

    else
    {
      v137 = v82;
      v145 = v84;
    }

    v86 = v167;
    v88 = v171 + 8;
    v87 = *(v171 + 8);
    v87(v168, v167);
    v171 = v88;
    v168 = v87;
    v87(v154, v86);
    v89 = v161;
    sub_29D933948();
    v90 = v162[1];
    v91 = v162[2];
    v92 = v156;
    (v156)(v166, v162 + *(v155 + 28), v86);
    v92(v170, v89, v86);
    v153 = v91;
    sub_29D935E88();
    sub_29D935E88();
    v93 = v164;
    sub_29D933798();
    v94 = v165;
    sub_29D933768();
    v163 = sub_29D9339C8();
    v156 = v95;
    v96 = v159;
    v159(v94, v175);
    v97 = v158;
    v158(v93, v169);
    sub_29D933798();
    sub_29D933768();
    v155 = sub_29D9339C8();
    v154 = v98;
    v96(v94, v175);
    v97(v93, v169);
    v99 = v160;
    v150(v160, 1, 1, v151);
    v100 = swift_allocObject();
    *(v100 + 16) = v147;
    v101 = MEMORY[0x29EDC99B0];
    v102 = v146;
    *(v100 + 56) = MEMORY[0x29EDC99B0];
    *(v100 + 64) = v102;
    v103 = v156;
    *(v100 + 32) = v163;
    *(v100 + 40) = v103;
    *(v100 + 96) = v101;
    *(v100 + 104) = v102;
    v104 = v154;
    *(v100 + 72) = v155;
    *(v100 + 80) = v104;
    v105 = sub_29D9334A8();
    if (*(v100 + 16))
    {
      v173 = sub_29D939D78();
      v175 = v107;

      v172 = v175;
    }

    else
    {
      v172 = v106;
      v173 = v105;
    }

    v108 = v177;
    sub_29D9293B8(v99, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v169 = sub_29D9334A8();
    v165 = v109;
    v62 = v171;
    v110 = v167;
    v111 = v168;
    (v168)(v170, v167);
    v111(v166, v110);
    v112 = v178;
    v113 = *(v178 + 16);
    v175 = v3;
    if (v113)
    {
      v114 = 0;
      v115 = MEMORY[0x29EDCA190];
      while (v114 < *(v112 + 16))
      {
        v62 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v116 = *(v4 + 72);
        sub_29D929478(&v62[v112 + v116 * v114], v17, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v17[*(v3 + 24)] - 1 > 1)
        {
          sub_29D9294E0(v17, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D75E928(v17, v176);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179 = v115;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29D7EE660(0, *(v115 + 16) + 1, 1);
            v115 = v179;
          }

          v119 = *(v115 + 16);
          v118 = *(v115 + 24);
          if (v119 >= v118 >> 1)
          {
            sub_29D7EE660(v118 > 1, v119 + 1, 1);
            v115 = v179;
          }

          *(v115 + 16) = v119 + 1;
          sub_29D75E928(v176, &v62[v115 + v119 * v116]);
          v3 = v175;
          v108 = v177;
        }

        ++v114;
        v112 = v178;
        if (v113 == v114)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v115 = MEMORY[0x29EDCA190];
LABEL_24:
    v17 = *(v115 + 16);

    v120 = *(v90 + 2);
    if (!v120)
    {
      break;
    }

    v121 = 0;
    v122 = MEMORY[0x29EDCA190];
    while (v121 < *(v90 + 2))
    {
      v62 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v123 = *(v4 + 72);
      sub_29D929478(&v62[v90 + v123 * v121], v108, type metadata accessor for BloodPressurePDFSampleInterval);
      if (*(v108 + *(v3 + 24)) - 1 > 1)
      {
        sub_29D9294E0(v108, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      else
      {
        sub_29D75E928(v108, v174);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v179 = v122;
        if ((v124 & 1) == 0)
        {
          sub_29D7EE660(0, *(v122 + 16) + 1, 1);
          v122 = v179;
        }

        v126 = *(v122 + 16);
        v125 = *(v122 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_29D7EE660(v125 > 1, v126 + 1, 1);
          v122 = v179;
        }

        *(v122 + 16) = v126 + 1;
        sub_29D75E928(v174, &v62[v122 + v126 * v123]);
        v3 = v175;
        v108 = v177;
      }

      if (v120 == ++v121)
      {
        goto LABEL_36;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v122 = MEMORY[0x29EDCA190];
LABEL_36:
  (v168)(v161, v167);
  sub_29D9294E0(v162, type metadata accessor for BloodPressurePDFViewModel);
  v127 = *(v122 + 16);

  if (v17)
  {
    v129 = 0;
  }

  else
  {
    v129 = v127 <= 0;
  }

  v130 = !v129;
  v131 = v139;
  v132 = v178;
  *v139 = v138;
  v131[1] = v132;
  v133 = v145;
  v131[2] = v137;
  v131[3] = v133;
  v134 = v140;
  v131[4] = v141;
  v131[5] = v134;
  v131[6] = v153;
  v131[7] = v90;
  v135 = v165;
  v131[8] = v169;
  v131[9] = v135;
  v136 = v172;
  v131[10] = v173;
  v131[11] = v136;
  *(v131 + 96) = v130;
  return result;
}

void sub_29D9272A4(void *a1)
{
  v2 = sub_29D933A58();
  v66 = *(v2 - 1);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933788();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9337B8();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9339F8();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v21 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v22 = [a1 objectsForType_];

  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v23 = sub_29D93A0D8();

  v24 = sub_29D701128(v23);

  if (v24)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
      v28 = [a1 objectsForType_];

      v29 = sub_29D93A0D8();
      v30 = sub_29D701128(v29);

      if (v30)
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v67 = v31;
          v32 = [a1 startDate];
          sub_29D933998();

          sub_29D933768();
          sub_29D933778();
          v33 = sub_29D9339C8();
          v35 = v34;
          (*(v63 + 8))(v10, v64);
          (*(v61 + 8))(v15, v62);
          (*(v59 + 8))(v20, v60);
          v36 = [v26 quantity];
          [v36 _value];
          v38 = v37;
          v39 = v37;

          if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v38 > -9.22337204e18)
          {
            if (v38 < 9.22337204e18)
            {
              v40 = [v67 quantity];
              [v40 _value];
              v42 = v41;
              v43 = v41;

              if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v42 > -9.22337204e18)
                {
                  if (v42 < 9.22337204e18)
                  {
                    v68 = v38;
                    v69[0] = sub_29D93AD38();
                    v69[1] = v44;
                    MEMORY[0x29ED6A240](47, 0xE100000000000000);
                    v68 = v42;
                    v45 = sub_29D93AD38();
                    MEMORY[0x29ED6A240](v45);

                    MEMORY[0x29ED6A240](8236, 0xE200000000000000);
                    MEMORY[0x29ED6A240](v33, v35);

                    return;
                  }

                  goto LABEL_24;
                }

LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
                return;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_21;
        }

        v24 = v30;
      }
    }
  }

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v46 = sub_29D937898();
  sub_29D69C6C0(v46, qword_2A1A2BF10);
  v47 = a1;
  v48 = sub_29D937878();
  v49 = sub_29D93A288();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69[0] = v51;
    *v50 = 136446466;
    *(v50 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D955ED0, v69);
    *(v50 + 12) = 2080;
    v52 = [v47 UUID];
    v53 = v65;
    sub_29D933A38();

    sub_29D929240(&qword_2A17B3C50, MEMORY[0x29EDB9C08]);
    v54 = v67;
    v55 = sub_29D93AD38();
    v57 = v56;
    (*(v66 + 8))(v53, v54);
    v58 = sub_29D6C2364(v55, v57, v69);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_29D677000, v48, v49, "[%{public}s] Could not parse blood pressure sample with UUID: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v51, -1, -1);
    MEMORY[0x29ED6BE30](v50, -1, -1);
  }
}

uint64_t sub_29D927A28()
{
  swift_getKeyPath();
  sub_29D695614();
  sub_29D929240(&qword_2A17B2930, sub_29D695614);
  sub_29D929240(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v0 = sub_29D939E98();

  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    sub_29D929540(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D738398();
    v14 = sub_29D939CA8();

    return v14;
  }

  result = sub_29D93A928();
  v2 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x29EDCA190];
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED6AE30](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      sub_29D9272A4(v5);
      v8 = v7;
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_29D68F740(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_29D68F740((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v3);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D927C8C(void *a1, uint64_t a2)
{
  v106 = a2;
  v115 = a1;
  v102 = sub_29D933A58();
  v101 = *(v102 - 8);
  v3 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v102, v4);
  v100 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for BloodPressurePDFSampleInterval();
  v116 = *(v120 - 8);
  v6 = *(v116 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v120, v7);
  v118 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v117 = &v100 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v119 = &v100 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v100 - v17;
  v19 = sub_29D9331D8();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v107 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D929288(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v113 = &v100 - v26;
  v112 = sub_29D933CE8();
  v27 = *(v112 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v112, v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D9339F8();
  v111 = *(v32 - 8);
  v33 = v111;
  v34 = *(v111 + 64);
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v105 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v108 = &v100 - v40;
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v44 = &v100 - v43;
  MEMORY[0x2A1C7C4A8](v42, v45);
  v47 = &v100 - v46;
  sub_29D933C88();
  v48 = [a1 startDate];
  sub_29D933998();

  v114 = v47;
  sub_29D933AD8();
  v50 = v33 + 8;
  v49 = *(v33 + 8);
  v49(v44, v32);
  v51 = (v27 + 8);
  v52 = *(v27 + 8);
  v53 = v112;
  v52(v31, v112);
  sub_29D933C88();
  v54 = [v115 startDate];
  sub_29D933998();

  v55 = v113;
  sub_29D933B98();
  v109 = v49;
  v110 = v50;
  v49(v44, v32);
  v56 = v53;
  v57 = v111;
  v52(v31, v56);
  if ((*(v57 + 48))(v55, 1, v32) == 1)
  {
    v51 = v114;
    sub_29D9293B8(v55, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A24658 == -1)
    {
LABEL_3:
      v58 = sub_29D937898();
      sub_29D69C6C0(v58, qword_2A1A2BF10);
      v59 = v115;
      v60 = sub_29D937878();
      v61 = sub_29D93A288();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v121[0] = v63;
        *v62 = 136446466;
        *(v62 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D955ED0, v121);
        *(v62 + 12) = 2080;
        v64 = [v59 UUID];
        v65 = v100;
        sub_29D933A38();

        sub_29D929240(&qword_2A17B3C50, MEMORY[0x29EDB9C08]);
        v66 = v102;
        v67 = sub_29D93AD38();
        v69 = v68;
        (*(v101 + 8))(v65, v66);
        v70 = sub_29D6C2364(v67, v69, v121);

        *(v62 + 14) = v70;
        _os_log_impl(&dword_29D677000, v60, v61, "[%{public}s] Could not determine end of day from sample start date. Sample UUID: %s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v63, -1, -1);
        MEMORY[0x29ED6BE30](v62, -1, -1);
      }

      v109(v51, v32);
      return 0;
    }

LABEL_42:
    swift_once();
    goto LABEL_3;
  }

  v72 = v108;
  (*(v57 + 32))(v108, v55, v32);
  v73 = *(v57 + 16);
  v73(v44, v114, v32);
  v73(v105, v72, v32);
  v74 = v107;
  v75 = sub_29D933188();
  MEMORY[0x2A1C7C4A8](v75, v76);
  v99 = v74;
  v77 = v106;
  sub_29D935E88();
  v78 = sub_29D92976C(sub_29D929428, (&v100 - 4), v77);
  v79 = *(v78 + 16);
  if (v79)
  {
    v115 = v32;
    v80 = 0;
    v81 = MEMORY[0x29EDCA190];
    v82 = v116;
    do
    {
      if (v80 >= *(v78 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v32 = *(v82 + 72);
      sub_29D929478(v78 + v83 + v32 * v80, v18, type metadata accessor for BloodPressurePDFSampleInterval);
      if (v18[*(v120 + 24)] == 1)
      {
        sub_29D75E928(v18, v119);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE660(0, *(v81 + 16) + 1, 1);
          v82 = v116;
          v81 = v121[0];
        }

        v86 = *(v81 + 16);
        v85 = *(v81 + 24);
        v51 = (v86 + 1);
        if (v86 >= v85 >> 1)
        {
          sub_29D7EE660(v85 > 1, v86 + 1, 1);
          v82 = v116;
          v81 = v121[0];
        }

        *(v81 + 16) = v51;
        sub_29D75E928(v119, v81 + v83 + v86 * v32);
      }

      else
      {
        sub_29D9294E0(v18, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      ++v80;
    }

    while (v79 != v80);
    v87 = *(v81 + 16);

    v51 = 0;
    v88 = v78 + v83;
    v89 = MEMORY[0x29EDCA190];
    v90 = v117;
    while (v51 < *(v78 + 16))
    {
      sub_29D929478(v88, v90, type metadata accessor for BloodPressurePDFSampleInterval);
      if (*(v90 + *(v120 + 24)) == 2)
      {
        sub_29D75E928(v90, v118);
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v89;
        if ((v91 & 1) == 0)
        {
          sub_29D7EE660(0, *(v89 + 16) + 1, 1);
          v89 = v121[0];
        }

        v93 = *(v89 + 16);
        v92 = *(v89 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_29D7EE660(v92 > 1, v93 + 1, 1);
          v89 = v121[0];
        }

        *(v89 + 16) = v93 + 1;
        sub_29D75E928(v118, v89 + v83 + v93 * v32);
        v90 = v117;
      }

      else
      {
        sub_29D9294E0(v90, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      ++v51;
      v88 += v32;
      if (v79 == v51)
      {
        v32 = v115;
        v74 = v107;
        goto LABEL_30;
      }
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v89 = MEMORY[0x29EDCA190];
  v87 = *(MEMORY[0x29EDCA190] + 16);

LABEL_30:

  v94 = *(v89 + 16);

  if (v87)
  {
    v95 = v108;
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v99 = 0xE000000000000000;
  }

  else
  {
    v95 = v108;
    if (!v94)
    {
      v98 = v109;
      v109(v108, v32);
      v98(v114, v32);
      (*(v103 + 8))(v74, v104);
      return 0;
    }

    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v99 = 0xE000000000000000;
  }

  v96 = sub_29D9334A8();
  v97 = v109;
  v109(v95, v32);
  v97(v114, v32);
  (*(v103 + 8))(v74, v104);
  return v96;
}

uint64_t sub_29D9288B0(unint64_t a1, uint64_t a2)
{
  v79 = a2;
  v78 = sub_29D933788();
  v92 = *(v78 - 8);
  v3 = *(v92 + 8);
  MEMORY[0x2A1C7C4A8](v78, v4);
  v77 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D9337B8();
  v6 = *(v76 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v76, v8);
  v75 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D933CE8();
  v68 = *(v69 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v69, v17);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  v81 = v19;
  v95 = v19;
  v20 = 0;
  v21 = sub_29D922D9C(MEMORY[0x29EDCA198], sub_29D92935C, v94, a1);
  v22 = v21[2];
  if (v22)
  {
    v90 = 0;
    v91 = v6;
    v23 = sub_29D702AC8(v22, 0);
    v80 = v11;
    v93 = sub_29D7AECB0(v96, &v23[(*(v11 + 80) + 32) & ~*(v11 + 80)], v22, v21);
    v20 = v96[4];
    swift_bridgeObjectRetain_n();
    sub_29D7AF2E8();
    if (v93 != v22)
    {
      goto LABEL_33;
    }

    v11 = v80;
    v20 = v90;
    v6 = v91;
  }

  else
  {
    sub_29D935E88();
    v23 = MEMORY[0x29EDCA190];
  }

  v96[0] = v23;
  sub_29D923358(v96);
  if (v20)
  {
LABEL_34:

    __break(1u);
  }

  else
  {

    v24 = v96[0][2];
    if (v24)
    {
      v93 = 0;
      v26 = *(v11 + 16);
      v25 = v11 + 16;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v67[1] = v96[0];
      v28 = v96[0] + v27;
      v29 = v26;
      v30 = *(v25 + 56);
      v71 = (v92 + 8);
      v70 = (v6 + 8);
      v31 = (v25 - 8);
      v20 = MEMORY[0x29EDCA190];
      v74 = v10;
      v80 = v25;
      v73 = v21;
      v72 = v26;
      v82 = v30;
      v26(v15, v96[0] + v27, v10);
      while (1)
      {
        if (!v21[2] || (v32 = sub_29D690A14(v15), (v33 & 1) == 0))
        {
          (*v31)(v15, v10);
          goto LABEL_9;
        }

        v34 = *(v21[7] + 8 * v32);
        if (v34 >> 62)
        {
          if (v34 < 0)
          {
            v65 = *(v21[7] + 8 * v32);
          }

          if (sub_29D93A928())
          {
LABEL_15:
            v92 = v20;
            if ((v34 & 0xC000000000000001) != 0)
            {
              sub_29D935E88();
              v36 = MEMORY[0x29ED6AE30](0, v34);
            }

            else
            {
              if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              v35 = *(v34 + 32);
              sub_29D935E88();
              v36 = v35;
            }

            v89 = v36;
            v37 = v75;
            sub_29D933798();
            v38 = v77;
            sub_29D933768();
            v39 = sub_29D9339C8();
            v90 = v40;
            v91 = v39;
            (*v71)(v38, v78);
            v41 = (*v70)(v37, v76);
            MEMORY[0x2A1C7C4A8](v41, v42);
            v43 = v81;
            v67[-2] = v81;
            sub_29D935E88();
            v44 = v93;
            v45 = sub_29D9297D4(sub_29D929378, &v67[-4], v34);
            MEMORY[0x2A1C7C4A8](v45, v46);
            v67[-2] = v43;
            sub_29D9297D4(sub_29D929398, &v67[-4], v34);
            v47 = sub_29D927A28();
            v49 = v48;

            v50 = sub_29D927A28();
            v85 = v51;
            v86 = v50;

            v52 = v89;
            v53 = sub_29D927C8C(v89, v79);
            v83 = v54;
            v84 = v53;
            v55 = v92;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v93 = v44;
            v87 = v49;
            v88 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v55 = sub_29D6901E0(0, *(v55 + 2) + 1, 1, v55);
            }

            v10 = v74;
            v58 = *(v55 + 2);
            v57 = *(v55 + 3);
            v59 = v55;
            v21 = v73;
            if (v58 >= v57 >> 1)
            {
              v59 = sub_29D6901E0((v57 > 1), v58 + 1, 1, v59);
            }

            (*v31)(v15, v10);
            *(v59 + 2) = v58 + 1;
            v20 = v59;
            v60 = &v59[64 * v58];
            v61 = v90;
            *(v60 + 4) = v91;
            *(v60 + 5) = v61;
            v62 = v87;
            *(v60 + 6) = v88;
            *(v60 + 7) = v62;
            v63 = v85;
            *(v60 + 8) = v86;
            *(v60 + 9) = v63;
            v64 = v83;
            *(v60 + 10) = v84;
            *(v60 + 11) = v64;
            v29 = v72;
            goto LABEL_27;
          }
        }

        else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        (*v31)(v15, v10);
LABEL_27:
        v30 = v82;
LABEL_9:
        v28 += v30;
        if (!--v24)
        {

          goto LABEL_31;
        }

        v29(v15, v28, v10);
      }
    }

    v20 = MEMORY[0x29EDCA190];
LABEL_31:
    (*(v68 + 8))(v81, v69);
    return v20;
  }

  return result;
}

void sub_29D929034()
{
  if (!qword_2A17B8258)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B8258);
    }
  }
}

uint64_t sub_29D9290A0(uint64_t a1)
{
  v3 = *(sub_29D934FF8() - 8);
  v4 = v1 + ((*(v3 + 80) + 168) & ~*(v3 + 80));

  return sub_29D924680(a1, v1 + 16, v1 + 128, v4);
}

void sub_29D929118(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9291B8(uint64_t a1)
{
  sub_29D929118(0, &qword_2A17B1020, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D929240(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D929288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D9292EC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D929118(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D9293B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D929288(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D929428(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = a1 + *(type metadata accessor for BloodPressurePDFSampleInterval() + 20);
  return sub_29D933138() & 1;
}

uint64_t sub_29D929478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9294E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D929540(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D9295A0(uint64_t a1, __int128 *a2)
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

uint64_t sub_29D9295C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_29D92960C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_29D929678(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29D9296A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_29D9296EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D9297D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x29ED6AE30](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_29D93AAB8();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_29D93AAE8();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_29D93AAF8();
        sub_29D93AAC8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_20:

  return v12;
}

uint64_t sub_29D929980(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v29 = a7;
  v32 = a6;
  v36 = a1;
  v37 = a2;
  v10 = a4(0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v34 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v28 - v17;
  v33 = *(a3 + 16);
  if (v33)
  {
    v19 = 0;
    v20 = MEMORY[0x29EDCA190];
    v30 = a5;
    v31 = a3;
    while (v19 < *(a3 + 16))
    {
      v21 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v22 = *(v35 + 72);
      sub_29D92B304(a3 + v21 + v22 * v19, v18, a5);
      v23 = v36(v18);
      if (v7)
      {
        sub_29D92B36C(v18, v32);

        goto LABEL_15;
      }

      if (v23)
      {
        sub_29D92B3CC(v18, v34, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v20 + 16) + 1, 1);
          v20 = v38;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v29(v25 > 1, v26 + 1, 1);
          v20 = v38;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + v21 + v26 * v22;
        a5 = v30;
        result = sub_29D92B3CC(v34, v27, v30);
        a3 = v31;
      }

      else
      {
        result = sub_29D92B36C(v18, v32);
      }

      if (v33 == ++v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x29EDCA190];
LABEL_15:

    return v20;
  }

  return result;
}

uint64_t sub_29D929BD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_29D9331D8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for PregnancyModel();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_29D6A08F8();
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_29D92B210(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = sub_29D9339F8();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D929E60, 0, 0);
}

uint64_t sub_29D929E60()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[3];
  v36 = v0[17];
  v37 = v0[4];
  v6 = v0[2];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v0[23] = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4B8]);
  sub_29D933938();
  v7 = objc_opt_self();
  v8 = sub_29D933958();
  v9 = sub_29D933958();
  v10 = [v7 predicateForSamplesWithStartDate:v8 endDate:v9 options:0];
  v0[24] = v10;

  sub_29D9339E8();
  v11 = sub_29D933958();
  v12 = *(v3 + 8);
  v0[25] = v12;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  sub_29D933928();
  v13 = sub_29D933958();
  v12(v1, v4);
  v14 = [v7 predicateForSamplesWithStartDate:v11 endDate:v13 options:0];
  v0[27] = v14;

  sub_29D6A0C58();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D941B10;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  v16 = v10;
  v17 = v14;
  v18 = sub_29D939F18();

  v19 = [objc_opt_self() orPredicateWithSubpredicates_];
  v0[28] = v19;

  v20 = MEMORY[0x29EDBA210];
  sub_29D92B278(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D92B210(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v20);
  v22 = *(*(v21 - 8) + 72);
  v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  v24 = v19;
  sub_29D939AB8();

  v25 = MEMORY[0x29EDB9980];
  sub_29D92B278(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
  sub_29D92B210(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v25);
  v27 = *(*(v26 - 8) + 72);
  v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  v30 = *(v37 + 16);
  v31 = *(MEMORY[0x29EDBA230] + 4);
  v32 = swift_task_alloc();
  v0[29] = v32;
  *v32 = v0;
  v32[1] = sub_29D92A304;
  v33 = v0[17];
  v34 = v0[15];

  return MEMORY[0x2A1C5B578](v30, v34);
}

uint64_t sub_29D92A304(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v5 = sub_29D92AC28;
  }

  else
  {
    v5 = sub_29D92A420;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D92A420()
{
  v108 = v0;
  v1 = v0[30];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[30];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_28:
    v100 = MEMORY[0x29EDCA190];
LABEL_29:
    v79 = v0[28];
    v81 = v0[27];
    v103 = v0[25];
    v106 = v0[26];
    v77 = v0[31];
    v78 = v0[23];
    v55 = v0[21];
    v56 = v0[19];
    v57 = v0[20];
    v58 = v0[18];
    v88 = v0[17];
    v91 = v0[22];
    v59 = v0[16];
    v83 = v0[24];
    v85 = v0[15];
    v60 = v0[8];
    v94 = v0[7];
    v97 = v0[6];
    v62 = v0[2];
    v61 = v0[3];

    v63 = *(v56 + 16);
    v63(v55, v62, v58);
    v63(v57, v61, v58);
    sub_29D933188();
    v64 = swift_task_alloc();
    *(v64 + 16) = v60;
    v65 = v60;
    sub_29D935E88();
    v54 = sub_29D929980(sub_29D92B2E4, v64, v100, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel, sub_29D7EE6E8);

    (*(v59 + 8))(v88, v85);
    v103(v91, v58);

    (*(v94 + 8))(v65, v97);
    goto LABEL_30;
  }

LABEL_27:
  v2 = sub_29D93A928();
  v3 = v0[30];
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v98 = v1 & 0xFFFFFFFFFFFFFF8;
  v101 = v1 & 0xC000000000000001;
  v95 = v3 + 32;
  v89 = (v0[19] + 56);
  v5 = MEMORY[0x29EDCA190];
  v84 = v0[9];
  v86 = v0[10];
  v92 = v2;
  while (1)
  {
    if (v101)
    {
      v6 = v104;
      v7 = MEMORY[0x29ED6AE30](v4, v104[30]);
    }

    else
    {
      v6 = v104;
      if (v4 >= *(v98 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v95 + 8 * v4);
    }

    v8 = v7;
    v1 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = objc_opt_self();
    v12 = v8;
    v13 = [v11 calculatePhysiologicalWashoutFromPregnancySample_];
    if (v13)
    {
      v14 = v6[13];
      v15 = v13;
      sub_29D933998();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v6[18];
    v18 = v6[13];
    v19 = v6[14];
    v22 = v6 + 11;
    v21 = v6[11];
    v20 = v22[1];
    (*v89)(v18, v16, 1, v17);
    sub_29D92B3CC(v18, v19, sub_29D6A08F8);
    v23 = v12;
    v24 = [v10 startDate];
    sub_29D933998();

    v25 = [v10 endDate];
    v26 = v20 + *(v84 + 20);
    sub_29D933998();

    sub_29D92B304(v19, v20 + *(v84 + 24), sub_29D6A08F8);
    sub_29D92B304(v20, v21, type metadata accessor for PregnancyModel);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_29D68FFB4(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    v0 = v104;
    if (v28 >= v27 >> 1)
    {
      v5 = sub_29D68FFB4(v27 > 1, v28 + 1, 1, v5);
    }

    v29 = v104[14];
    v31 = v104[11];
    v30 = v104[12];

    sub_29D92B36C(v30, type metadata accessor for PregnancyModel);
    sub_29D92B36C(v29, sub_29D6A08F8);
    v5[2] = v28 + 1;
    sub_29D92B3CC(v31, v5 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v28, type metadata accessor for PregnancyModel);
    ++v4;
    if (v1 == v92)
    {
      v0 = v104;
      v53 = v104[30];
      v100 = v5;
      goto LABEL_29;
    }
  }

  v32 = v6[30];

  v0 = v6;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v33 = sub_29D937898();
  sub_29D69C6C0(v33, qword_2A1A2BF10);
  v34 = v8;
  v35 = sub_29D937878();
  v36 = sub_29D93A288();

  v37 = os_log_type_enabled(v35, v36);
  v96 = v0[28];
  v99 = v0[27];
  v38 = v0[25];
  v39 = v0[26];
  v93 = v0[23];
  v40 = v0[22];
  v42 = v0[17];
  v41 = v0[18];
  v43 = v0[15];
  v44 = v0[16];
  v102 = v43;
  v105 = v0[24];
  if (v37)
  {
    v90 = v0[25];
    v45 = v0[5];
    v87 = v0[18];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v82 = v42;
    v48 = swift_slowAlloc();
    v107 = v48;
    *v46 = 136446466;
    v49 = sub_29D93AF08();
    v80 = v40;
    v51 = sub_29D6C2364(v49, v50, &v107);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2112;
    v52 = [v34 sampleType];
    *(v46 + 14) = v52;
    *v47 = v52;
    _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] Found unexpected sample of type: %@", v46, 0x16u);
    sub_29D6ACA3C(v47);
    MEMORY[0x29ED6BE30](v47, -1, -1);
    sub_29D69417C(v48);
    MEMORY[0x29ED6BE30](v48, -1, -1);
    MEMORY[0x29ED6BE30](v46, -1, -1);

    (*(v44 + 8))(v82, v102);
    v90(v80, v87);
  }

  else
  {

    (*(v44 + 8))(v42, v102);
    v38(v40, v41);
  }

  v54 = 0;
LABEL_30:
  v67 = v0[21];
  v66 = v0[22];
  v68 = v0[20];
  v69 = v0[17];
  v71 = v0[13];
  v70 = v0[14];
  v73 = v0[11];
  v72 = v0[12];
  v74 = v0[8];

  v75 = v0[1];

  return v75(v54);
}

uint64_t sub_29D92AC28()
{
  v38 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v11 = v0[18];
  v35 = v8;
  v36 = v0[17];
  v12 = v0[16];
  v33 = v0[27];
  v34 = v0[15];
  if (v4)
  {
    v32 = v0[22];
    v13 = v0[5];
    v31 = v0[25];
    v14 = swift_slowAlloc();
    v30 = v11;
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136446210;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v37);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Failed to execute pregnancy sample query", v14, 0xCu);
    sub_29D69417C(v15);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);

    (*(v12 + 8))(v36, v34);
    v31(v32, v30);
  }

  else
  {

    (*(v12 + 8))(v36, v34);
    v7(v10, v11);
  }

  v20 = v0[21];
  v19 = v0[22];
  v21 = v0[20];
  v22 = v0[17];
  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[8];

  v28 = v0[1];

  return v28(0);
}

uint64_t sub_29D92AEC8(uint64_t a1)
{
  sub_29D6A08F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v24[-v15];
  v26 = type metadata accessor for PregnancyModel();
  sub_29D92B304(a1 + *(v26 + 24), v6, sub_29D6A08F8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29D92B36C(v6, sub_29D6A08F8);
    v25 = 0;
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    v25 = sub_29D9331B8();
    (*(v8 + 8))(v16, v7);
  }

  sub_29D9331A8();
  sub_29D702F18();
  v17 = sub_29D939CB8();
  v18 = *(v8 + 8);
  v18(v13, v7);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v26 + 20);
    sub_29D933178();
    v21 = sub_29D939CB8();
    v18(v13, v7);
    v19 = v21 ^ 1;
  }

  if (sub_29D9331B8() & 1) != 0 || (v22 = *(v26 + 20), ((sub_29D9331B8() | v25)))
  {
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t type metadata accessor for PregnancyModel()
{
  result = qword_2A17B8260;
  if (!qword_2A17B8260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D92B210(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D92B278(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D92B210(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D92B304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D92B36C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D92B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D92B45C()
{
  sub_29D9339F8();
  if (v0 <= 0x3F)
  {
    sub_29D6A08F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D92B4E0()
{
  v0 = *MEMORY[0x29EDBA3E0];
  v1 = sub_29D939D68();
  v3 = v2;
  if (v1 == sub_29D939D68() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_29D93AD78();

  if (v6)
  {
    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDBA400];
  v8 = sub_29D939D68();
  v10 = v9;
  if (v8 == sub_29D939D68() && v10 == v11)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = sub_29D93AD78();

  if ((v13 & 1) == 0)
  {
    v14 = *MEMORY[0x29EDBA410];
    v15 = sub_29D939D68();
    v17 = v16;
    if (v15 != sub_29D939D68() || v17 != v18)
    {
      v21 = sub_29D93AD78();

      if (v21)
      {
        goto LABEL_14;
      }

      v22 = *MEMORY[0x29EDBA420];
      v23 = sub_29D939D68();
      v25 = v24;
      if (v23 != sub_29D939D68() || v25 != v26)
      {
        v27 = sub_29D93AD78();

        v19 = v27 ^ 1;
        return v19 & 1;
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_29D92B6BC()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v20[-v11];
  v14 = sub_29D92BB4C();
  if (v13)
  {
    v15 = v13;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A2BE98;
    (*(v4 + 16))(v9, v12, v3);
    sub_29D935E88();
    v17 = v16;
    sub_29D933A98();
    sub_29D939D98();
    (*(v4 + 8))(v12, v3);
    sub_29D6CC0B8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29D93DDB0;
    *(v18 + 56) = MEMORY[0x29EDC99B0];
    *(v18 + 64) = sub_29D69AD24();
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v14 = sub_29D939D38();
  }

  return v14;
}

uint64_t sub_29D92B940()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE98;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D92BB4C()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v91[-v11];
  v13 = *MEMORY[0x29EDBA3E0];
  v14 = sub_29D939D68();
  v16 = v15;
  if (v14 == sub_29D939D68() && v16 == v17)
  {
    goto LABEL_13;
  }

  v19 = sub_29D93AD78();

  if (v19)
  {
    goto LABEL_14;
  }

  v20 = *MEMORY[0x29EDBA410];
  v21 = sub_29D939D68();
  v23 = v22;
  if (v21 == sub_29D939D68() && v23 == v24)
  {
    goto LABEL_13;
  }

  v26 = sub_29D93AD78();

  if (v26)
  {
    goto LABEL_14;
  }

  v27 = *MEMORY[0x29EDBA400];
  v28 = sub_29D939D68();
  v30 = v29;
  if (v28 == sub_29D939D68() && v30 == v31)
  {
    goto LABEL_13;
  }

  v36 = sub_29D93AD78();

  if (v36)
  {
    goto LABEL_14;
  }

  v37 = *MEMORY[0x29EDBA3C0];
  v38 = sub_29D939D68();
  v40 = v39;
  if (v38 == sub_29D939D68() && v40 == v41)
  {
    goto LABEL_13;
  }

  v42 = sub_29D93AD78();

  if (v42)
  {
    goto LABEL_14;
  }

  v43 = *MEMORY[0x29EDBA3E8];
  v44 = sub_29D939D68();
  v46 = v45;
  if (v44 == sub_29D939D68() && v46 == v47)
  {
    goto LABEL_13;
  }

  v48 = sub_29D93AD78();

  if (v48)
  {
    goto LABEL_14;
  }

  v49 = *MEMORY[0x29EDBA3C8];
  v50 = sub_29D939D68();
  v52 = v51;
  if (v50 == sub_29D939D68() && v52 == v53)
  {
    goto LABEL_13;
  }

  v54 = sub_29D93AD78();

  if (v54)
  {
    goto LABEL_14;
  }

  v55 = *MEMORY[0x29EDBA3D0];
  v56 = sub_29D939D68();
  v58 = v57;
  if (v56 == sub_29D939D68() && v58 == v59)
  {
    goto LABEL_13;
  }

  v60 = sub_29D93AD78();

  if (v60)
  {
    goto LABEL_14;
  }

  v61 = *MEMORY[0x29EDBA3D8];
  v62 = sub_29D939D68();
  v64 = v63;
  if (v62 == sub_29D939D68() && v64 == v65)
  {
    goto LABEL_13;
  }

  v66 = sub_29D93AD78();

  if (v66)
  {
    goto LABEL_14;
  }

  v67 = *MEMORY[0x29EDBA3F8];
  v68 = sub_29D939D68();
  v70 = v69;
  if (v68 == sub_29D939D68() && v70 == v71)
  {
    goto LABEL_13;
  }

  v72 = sub_29D93AD78();

  if (v72)
  {
    goto LABEL_14;
  }

  v73 = *MEMORY[0x29EDBA3F0];
  v74 = sub_29D939D68();
  v76 = v75;
  if (v74 == sub_29D939D68() && v76 == v77)
  {
    goto LABEL_13;
  }

  v78 = sub_29D93AD78();

  if (v78)
  {
    goto LABEL_14;
  }

  v79 = *MEMORY[0x29EDBA408];
  v80 = sub_29D939D68();
  v82 = v81;
  if (v80 == sub_29D939D68() && v82 == v83)
  {
    goto LABEL_13;
  }

  v84 = sub_29D93AD78();

  if (v84)
  {
    goto LABEL_14;
  }

  v85 = *MEMORY[0x29EDBA418];
  v86 = sub_29D939D68();
  v88 = v87;
  if (v86 == sub_29D939D68() && v88 == v89)
  {
LABEL_13:

    goto LABEL_14;
  }

  v90 = sub_29D93AD78();

  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A2BE98;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v33 = v32;
  sub_29D933A98();
  v34 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v34;
}

uint64_t sub_29D92C444()
{
  v1 = *(v0 + *(*v0 + qword_2A17D1068 + 24));

  v2 = v0 + *(*v0 + qword_2A17D1068 + 32);

  return sub_29D7C06BC(v2);
}

void *sub_29D92C4E0()
{
  v0 = sub_29D935568();
  v1 = *(v0 + *(*v0 + qword_2A17D1068 + 24));

  sub_29D7C06BC(v0 + *(*v0 + qword_2A17D1068 + 32));
  return v0;
}

uint64_t sub_29D92C57C()
{
  sub_29D92C4E0();

  return swift_deallocClassInstance();
}

void sub_29D92C5D8()
{
  if (!qword_2A17B3DD0)
  {
    sub_29D9361F8();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3DD0);
    }
  }
}

uint64_t type metadata accessor for BloodPressureJournalHighlightsComponent()
{
  result = qword_2A17B82F0;
  if (!qword_2A17B82F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D92C690()
{
  sub_29D92C5D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_29D92C728(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v33 = a1;
  sub_29D92D1AC(0, &qword_2A17B8320, MEMORY[0x29EDC2008]);
  v34 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v33 - v11;
  *(v3 + *(*v3 + qword_2A17D0998 + 24)) = 0;
  sub_29D934528();
  v36 = a3;
  v13 = sub_29D9344F8();
  sub_29D6A0C58();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D940030;
  sub_29D8EFD98();
  swift_getKeyPath();
  *(v14 + 32) = sub_29D93A338();
  v15 = sub_29D939F18();

  [v13 setSortDescriptors_];

  [v13 setFetchLimit_];
  v16 = objc_allocWithZone(MEMORY[0x29EDB8C58]);
  v35 = a2;
  v17 = [v16 initWithFetchRequest:v13 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_29D75A420();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  v21 = sub_29D936A38();
  *(v4 + *(*v4 + qword_2A17D0998 + 16)) = v21;
  v22 = v21;
  v23 = sub_29D9369F8();
  v24 = [v23 fetchedObjects];

  if (v24)
  {
    v25 = sub_29D939F38();

    if (v25 >> 62)
    {
      v26 = sub_29D93A928();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x29EDC2000];
    if (v26 > 0)
    {
      v27 = MEMORY[0x29EDC1FF8];
    }
  }

  else
  {

    v27 = MEMORY[0x29EDC2000];
  }

  (*(v8 + 104))(v12, *v27, v34);
  swift_unknownObjectRetain();
  v28 = sub_29D935538();
  v29 = *(v28 + *(*v28 + qword_2A17D0998 + 16));

  v30 = v29;
  v31 = sub_29D936A18();

  [v31 registerObserver_];

  sub_29D936978();

  return v28;
}

void sub_29D92CAE4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = sub_29D939D68();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_29D92CB3C()
{
  sub_29D92C5D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BloodPressureJournalHighlightsComponent();
  sub_29D7603C4(v0 + *(v6 + 20), v5);
  v7 = sub_29D9361F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_29D92CF58(v5);
    v9 = sub_29D935248();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    sub_29D92CFB4();
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4);

    sub_29D935418();
  }

  else
  {
    v12 = sub_29D9361E8();
    (*(v8 + 8))(v5, v7);
    swift_unknownObjectRetain();
    sub_29D936318();
    sub_29D693E2C(v26, v26[3]);
    v13 = sub_29D933EC8();
    sub_29D934528();
    v14 = sub_29D9344D8();
    sub_29D92D1AC(0, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_29D92C728(v12, v13, v14);
    sub_29D69417C(v26);

    v19 = sub_29D936338();
    sub_29D92CFB4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_29D88D194(v18, v19, 0);
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4);
    sub_29D935438();

    sub_29D9353F8();

    sub_29D935248();

    sub_29D935408();

    sub_29D936978();
  }

  sub_29D92D0F0();
  sub_29D92D0A8(&qword_2A17B8318, sub_29D92D0F0);

  v23 = sub_29D9353F8();

  return v23;
}

uint64_t sub_29D92CF58(uint64_t a1)
{
  sub_29D92C5D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D92CFB4()
{
  if (!qword_2A17B8300)
  {
    sub_29D92D1AC(255, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    sub_29D92D034();
    v0 = type metadata accessor for BloodPressureJournalHideableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8300);
    }
  }
}

unint64_t sub_29D92D034()
{
  result = qword_2A17B70D0;
  if (!qword_2A17B70D0)
  {
    sub_29D92D1AC(255, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B70D0);
  }

  return result;
}

uint64_t sub_29D92D0A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D92D0F0()
{
  if (!qword_2A17B8310)
  {
    sub_29D92CFB4();
    sub_29D935248();
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4);
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8310);
    }
  }
}

void sub_29D92D1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D897F30();
    v7 = v6;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v9 = a3(a1, v7, OpaqueTypeConformance2);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D92D23C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  sub_29D69F108(&v1[v2], v42);
  if (v43)
  {
    sub_29D6B7370(0, &qword_2A17B1080);
    sub_29D6B7370(0, &qword_2A17B8340);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        sub_29D679D3C(&v44, v47);
        v3 = sub_29D92D708();
        v4 = sub_29D693E2C(v47, v48);
        v5 = OBJC_IVAR____TtC5Heart16NumberedTextView_number;
        *&v3[OBJC_IVAR____TtC5Heart16NumberedTextView_number] = *v4;
        v6 = sub_29D8EB8B8();
        if (qword_2A17B0D28 != -1)
        {
          swift_once();
        }

        sub_29D7513E4(*&v3[v5]);
        v7 = sub_29D939D28();

        [v6 setText_];

        v8 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView;
        v9 = *&v1[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView];
        v10 = sub_29D693E2C(v47, v48);
        v11 = v10[2];
        v12 = &v9[OBJC_IVAR____TtC5Heart16NumberedTextView_title];
        v13 = *&v9[OBJC_IVAR____TtC5Heart16NumberedTextView_title + 8];
        *v12 = v10[1];
        *(v12 + 1) = v11;
        v14 = v9;
        sub_29D935E88();

        v15 = sub_29D8EBA80();
        if (*(v12 + 1))
        {
          v16 = *v12;
          v17 = *(v12 + 1);
          sub_29D935E88();
          v18 = sub_29D939D28();
        }

        else
        {
          v18 = 0;
        }

        [v15 setText_];

        v32 = *&v1[v8];
        v33 = sub_29D693E2C(v47, v48);
        v34 = v33[4];
        v35 = &v32[OBJC_IVAR____TtC5Heart16NumberedTextView_details];
        v36 = *&v32[OBJC_IVAR____TtC5Heart16NumberedTextView_details + 8];
        *v35 = v33[3];
        *(v35 + 1) = v34;
        v37 = v32;
        sub_29D935E88();

        v38 = sub_29D8EBBB8();
        v39 = *v35;
        v40 = *(v35 + 1);
        sub_29D935E88();
        v41 = sub_29D939D28();

        [v38 setText_];

        sub_29D69417C(v47);
        return;
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    sub_29D6B72BC(v42, &qword_2A17B1830, &qword_2A17B1080);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_29D6B72BC(&v44, &qword_2A17B8338, &qword_2A17B8340);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v19 = sub_29D937898();
  sub_29D69C6C0(v19, qword_2A1A2C008);
  v20 = v1;
  v21 = sub_29D937878();
  v22 = sub_29D93A288();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 136446722;
    v25 = sub_29D93AF08();
    v27 = sub_29D6C2364(v25, v26, v47);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_29D6C2364(1835365481, 0xE400000000000000, v47);
    *(v23 + 22) = 2082;
    sub_29D6B7318(0, &qword_2A17B1830, &qword_2A17B1080);
    *&v44 = v28;
    sub_29D92DAD8();
    v29 = sub_29D939DA8();
    v31 = sub_29D6C2364(v29, v30, v47);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to NumberedTextProviding", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }
}

id sub_29D92D708()
{
  v1 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for NumberedTextView());
    v6 = sub_29D8EBCE0(0, 0, 0xE000000000000000, 0, 0xE000000000000000);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_29D92D8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberedTextTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D92D964@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D92D9BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D92D23C();
  return sub_29D6B72BC(a1, &qword_2A17B1830, &qword_2A17B1080);
}

void (*sub_29D92DA40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D92DAA4;
}

void sub_29D92DAA4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_29D92D23C();
  }
}

unint64_t sub_29D92DAD8()
{
  result = qword_2A17B8348;
  if (!qword_2A17B8348)
  {
    sub_29D6B7318(255, &qword_2A17B1830, &qword_2A17B1080);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B8348);
  }

  return result;
}

char *sub_29D92DB38(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView] = 0;
  if (a2)
  {
    v4 = sub_29D939D28();
  }

  else
  {
    v4 = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for NumberedTextTableViewCell();
  v5 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, 1, v4);

  v6 = v5;
  [v6 setUserInteractionEnabled_];
  v7 = [v6 contentView];
  v8 = sub_29D92D708();
  [v7 addSubview_];

  v9 = *&v6[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView];
  v10 = [v6 contentView];
  [v9 hk:v10 alignConstraintsWithView:10.0 insets:{0.0, 10.0, 0.0}];

  return v6;
}

uint64_t type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery()
{
  result = qword_2A17B8350;
  if (!qword_2A17B8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D92DD00()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      result = sub_29D69567C(319, &qword_2A1A24910, 0x29EDBAD20);
      if (v3 <= 0x3F)
      {
        result = sub_29D934948();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29D92DDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_29D8D5A00(0, &qword_2A17B8360, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA238]);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_29D933CE8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_29D9339F8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v13 = sub_29D939BD8();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D92DFF0, 0, 0);
}

uint64_t sub_29D92DFF0()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v37 = v0[14];
  v38 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v42 = v0[7];
  v8 = v0[4];
  v36 = v0[2];
  sub_29D9331A8();
  v35 = *(v5 + 16);
  v40 = v8;
  v35(v6, v8, v7);
  sub_29D939BB8();
  v39 = sub_29D939BC8();
  v9 = *(v1 + 8);
  v9(v2, v3);
  sub_29D933178();
  v35(v6, v8, v7);
  sub_29D939BB8();
  v10 = sub_29D939BC8();
  v9(v2, v3);
  v11 = objc_opt_self();
  v12 = [v11 hk:v39 earliestPossibleDateWithDayIndex:?];
  sub_29D933998();

  v13 = [v11 hk:v10 latestPossibleDateWithDayIndex:?];
  sub_29D933998();

  v14 = MEMORY[0x29EDBA210];
  sub_29D92F52C(0, &qword_2A17B8368, &qword_2A17B3430, MEMORY[0x29EDBA210]);
  sub_29D8D5A00(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, v14);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v18 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
  v19 = *(v40 + *(v18 + 24));
  v20 = objc_opt_self();
  v21 = sub_29D933958();
  v22 = sub_29D933958();
  v23 = [v20 predicateForSamplesWithStartDate:v21 endDate:v22 options:3];

  sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  sub_29D939AB8();

  v24 = MEMORY[0x29EDB9980];
  sub_29D92F52C(0, &qword_2A17B8370, &qword_2A17B8378, MEMORY[0x29EDB9980]);
  sub_29D8D5A00(0, &qword_2A17B8378, &qword_2A17B18A8, 0x29EDBAD10, v24);
  v26 = *(*(v25 - 8) + 72);
  v27 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  v29 = *(v40 + *(v18 + 20));
  v30 = *(MEMORY[0x29EDBA230] + 4);
  v31 = swift_task_alloc();
  v41[19] = v31;
  *v31 = v41;
  v31[1] = sub_29D92E460;
  v32 = v41[7];
  v33 = v41[5];

  return MEMORY[0x2A1C5B578](v29, v33);
}

uint64_t sub_29D92E460(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_29D92E6F0;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_29D92E588;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D92E588()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v4 = *(v0 + 96);
  v14 = *(v0 + 104);
  v5 = *(v0 + 88);
  v17 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v9 + 16) = *(v0 + 24);
  v10 = sub_29D79E174(sub_29D92F598, v9, v2);

  (*(v6 + 8))(v7, v8);
  v11 = *(v4 + 8);
  v11(v14, v5);
  v11(v3, v5);

  v12 = *(v0 + 8);

  return v12(v10);
}

uint64_t sub_29D92E6F0()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v8 = *(v5 + 8);
  v8(v4, v6);
  v8(v3, v6);

  v9 = v0[1];
  v10 = v0[20];

  return v9();
}

uint64_t sub_29D92E7F4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v82 = a3;
  v5 = sub_29D9331D8();
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v74 - v11;
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v74 - v21;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v79 = &v74 - v24;
  v25 = sub_29D933CE8();
  v80 = *(v25 - 8);
  v81 = v25;
  v26 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v31 = [v30 quantity];
  [v31 doubleValueForUnit_];
  v33 = v32;

  sub_29D92EF7C(v30, v29);
  v34 = objc_opt_self();
  v76 = v30;
  sub_29D93A6B8();
  v35 = sub_29D933148();
  v36 = *(v83 + 8);
  v77 = v5;
  v36(v12, v5);
  v78 = v29;
  v37 = sub_29D933BB8();
  v38 = sub_29D933BB8();
  v39 = [v34 hk:v35 julianDayDateIntervalFromOpenUpperBoundDateInterval:v37 sourceCalendar:v38 localCalendar:?];

  if (v39)
  {
    sub_29D933168();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v83;
  v42 = v77;
  (*(v83 + 56))(v22, v40, 1, v77);
  v43 = v79;
  sub_29D92F608(v22, v79);
  sub_29D92F688(v43, v18);
  if ((*(v41 + 48))(v18, 1, v42) != 1)
  {
    v58 = *(v41 + 32);
    v59 = v75;
    v58(v75, v18, v42);
    v60 = [v76 metadata];
    if (!v60)
    {
      goto LABEL_20;
    }

    v61 = v60;
    v62 = sub_29D939C68();

    v63 = *MEMORY[0x29EDBA7F0];
    v64 = sub_29D939D68();
    if (!*(v62 + 16))
    {

      goto LABEL_20;
    }

    v66 = sub_29D6907F0(v64, v65);
    v68 = v67;

    if (v68)
    {
      sub_29D694294(*(v62 + 56) + 32 * v66, v84);

      if (swift_dynamicCast())
      {
        v59 = v75;
        if (v85)
        {
          v69 = sub_29D6E6050(&unk_2A243FC70);
LABEL_21:
          sub_29D92F750(v43, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          (*(v80 + 8))(v78, v81);
          v72 = v82;
          v58(v82, v59, v42);
          v73 = type metadata accessor for AFibBurdenPDFChartPoint();
          *&v72[*(v73 + 20)] = v33;
          *&v72[*(v73 + 24)] = v69;
          return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
        }

LABEL_20:
        v69 = MEMORY[0x29EDCA1A0];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v59 = v75;
    goto LABEL_20;
  }

  sub_29D92F750(v18, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v44 = sub_29D937898();
  sub_29D69C6C0(v44, qword_2A1A2BF28);
  v45 = v76;
  v46 = sub_29D937878();
  v47 = sub_29D93A298();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v43;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v84[0] = v51;
    *v48 = 136446467;
    v85 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
    sub_29D92F708();
    v52 = sub_29D939DA8();
    v54 = sub_29D6C2364(v52, v53, v84);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2117;
    *(v48 + 14) = v45;
    *v50 = v45;
    v55 = v45;
    _os_log_impl(&dword_29D677000, v46, v47, "[%{public}s] Invalid date interval for AFibBurden sample: %{sensitive}@", v48, 0x16u);
    sub_29D6ACA3C(v50);
    MEMORY[0x29ED6BE30](v50, -1, -1);
    sub_29D69417C(v51);
    MEMORY[0x29ED6BE30](v51, -1, -1);
    MEMORY[0x29ED6BE30](v48, -1, -1);

    v56 = MEMORY[0x29EDB98E8];
    v57 = v49;
  }

  else
  {

    v56 = MEMORY[0x29EDB98E8];
    v57 = v43;
  }

  sub_29D92F750(v57, &qword_2A17B3A18, v56);
  (*(v80 + 8))(v78, v81);
  v70 = type metadata accessor for AFibBurdenPDFChartPoint();
  return (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
}

uint64_t sub_29D92EF7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_29D92F5B4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v42 - v9;
  v11 = sub_29D933D38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 _timeZoneName];
  if (!v17)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2BF28);
    v32 = a1;
    v21 = sub_29D937878();
    v22 = sub_29D93A298();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_12;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v23 = 136446467;
    v42 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
    sub_29D92F708();
    v33 = sub_29D939DA8();
    v35 = sub_29D6C2364(v33, v34, &v43);

    *(v23 + 4) = v35;
    *(v23 + 12) = 2117;
    *(v23 + 14) = v32;
    *v24 = v32;
    v36 = v32;
    v30 = "[%{public}s] AFibBurden sample with missing timezone: %{sensitive}@";
    goto LABEL_11;
  }

  v18 = v17;
  sub_29D939D68();

  sub_29D933CF8();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D92F750(v10, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2BF28);
    v20 = a1;
    v21 = sub_29D937878();
    v22 = sub_29D93A298();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_12;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v23 = 136446467;
    v42 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
    sub_29D92F708();
    v26 = sub_29D939DA8();
    v28 = sub_29D6C2364(v26, v27, &v43);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2117;
    *(v23 + 14) = v20;
    *v24 = v20;
    v29 = v20;
    v30 = "[%{public}s] AFibBurden sample with non-existing timezone: %{sensitive}@";
LABEL_11:
    _os_log_impl(&dword_29D677000, v21, v22, v30, v23, 0x16u);
    sub_29D6ACA3C(v24);
    MEMORY[0x29ED6BE30](v24, -1, -1);
    sub_29D69417C(v25);
    MEMORY[0x29ED6BE30](v25, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
LABEL_12:

    v37 = sub_29D933CE8();
    return (*(*(v37 - 8) + 16))(a2, v3, v37);
  }

  (*(v12 + 32))(v16, v10, v11);
  v39 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery() + 28));
  v40 = sub_29D933D08();
  v41 = [v39 calendarForTimeZone_];

  sub_29D933C08();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_29D92F488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D68E20C;

  return sub_29D92DDD4(a1, a2);
}

void sub_29D92F52C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8D5A00(255, a3, &qword_2A17B18A8, 0x29EDBAD10, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D92F5B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D92F608(uint64_t a1, uint64_t a2)
{
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D92F688(uint64_t a1, uint64_t a2)
{
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D92F708()
{
  result = qword_2A17B8380;
  if (!qword_2A17B8380)
  {
    type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B8380);
  }

  return result;
}

uint64_t sub_29D92F750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D92F5B4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D92F7E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D92F894@<X0>(uint64_t a1@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93F680;
    v18[1] = v1;
    swift_getMetatypeMetadata();
    v13 = sub_29D939DA8();
    v15 = v14;
    v16 = MEMORY[0x29EDC99B0];
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    v17 = sub_29D69AD24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0xD00000000000001DLL;
    *(v12 + 80) = 0x800000029D970320;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a1, v7, v9);
  }

  return result;
}

void sub_29D92FB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D92FB90@<X0>(uint64_t a1@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = *MEMORY[0x29EDBA530];
  sub_29D939D68();
  sub_29D9336E8();
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93F680;
    v18[1] = v1;
    swift_getMetatypeMetadata();
    v13 = sub_29D939DA8();
    v15 = v14;
    v16 = MEMORY[0x29EDC99B0];
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    v17 = sub_29D69AD24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0xD000000000000020;
    *(v12 + 80) = 0x800000029D970340;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a1, v7, v9);
  }

  return result;
}

uint64_t sub_29D92FE00@<X0>(uint64_t a1@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() electrocardiogramLearnMoreURL];
  sub_29D939D68();

  sub_29D9336E8();
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93F680;
    v18[1] = v1;
    swift_getMetatypeMetadata();
    v13 = sub_29D939DA8();
    v15 = v14;
    v16 = MEMORY[0x29EDC99B0];
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    v17 = sub_29D69AD24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0xD00000000000001BLL;
    *(v12 + 80) = 0x800000029D970370;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a1, v7, v9);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenFeatureRegulatoryInfoTransformProvider()
{
  result = qword_2A17B8388;
  if (!qword_2A17B8388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D930124()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D9301D0()
{
  v0 = [objc_opt_self() aFibBurdenAppleSupportURL];
  sub_29D939D68();

  sub_29D9336E8();
}

id sub_29D930258(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_displayType);
  v4 = [v3 presentation];
  v5 = type metadata accessor for AFibBurdenPDFChartPoint();
  v6 = *(a1 + *(v5 + 20));
  v7 = sub_29D93A048();
  v8 = [v4 adjustedValueForDaemonValue_];

  if (sub_29D6AA2D8(*(a1 + *(v5 + 24))))
  {
    v9 = HKAFibBurdenClampedLowerBoundLocalizedString();
    sub_29D939D68();

    sub_29D930454();
  }

  else
  {
    v10 = [*(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unitController) localizedDisplayNameForDisplayType:v3 value:v8];
    v11 = sub_29D939D68();
    v13 = v12;

    v14 = [v3 hk:*(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unit) numberFormatterForUnit:?];
    result = HKFormattedStringFromValue();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    sub_29D939D68();

    sub_29D935E88();
    MEMORY[0x29ED6A240](v11, v13);

    sub_29D930454();

    sub_29D936978();
  }
}

uint64_t sub_29D930454()
{
  v0 = sub_29D9334C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D935E88();
  sub_29D9334B8();
  sub_29D933478();
  if (qword_2A17B0CB0 != -1)
  {
    swift_once();
  }

  sub_29D69ADE0();

  sub_29D933488();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  sub_29D930744();

  return sub_29D933488();
}

uint64_t sub_29D9305BC()
{
  sub_29D930798(v0 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_viewModel);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFAFibAnnotationFormatter()
{
  result = qword_2A17B83B8;
  if (!qword_2A17B83B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9306A4()
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
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

unint64_t sub_29D930744()
{
  result = qword_2A17B83C8;
  if (!qword_2A17B83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83C8);
  }

  return result;
}

uint64_t sub_29D930798(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D930804(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  return a3(v3);
}

uint64_t sub_29D930838(uint64_t a1, uint64_t (*a2)(void))
{
  if (a1 == 2)
  {
    v2 = 5;
  }

  else if (a1 == 1)
  {
    v2 = 6;
  }

  else
  {
    v4 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = sub_29D937878();
    v7 = sub_29D93A298();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      _os_log_impl(&dword_29D677000, v6, v7, "[%s] User encountered notification authorization status other than authorized or denied (%ld), proceeding", v8, 0x16u);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    v2 = 5;
    a2 = v4;
  }

  return a2(v2);
}

id sub_29D930A10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsOnboardingModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D930ABC()
{
  result = qword_2A17B83F0;
  if (!qword_2A17B83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83F0);
  }

  return result;
}

unint64_t sub_29D930B24()
{
  result = qword_2A17B83F8;
  if (!qword_2A17B83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83F8);
  }

  return result;
}

uint64_t sub_29D930B7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  if (!v7)
  {

    return MEMORY[0x29EDCA190];
  }

  v8 = v7;
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D941B10;
  v10 = *MEMORY[0x29EDBAFB8];
  sub_29D939D68();
  v11 = sub_29D9348D8();
  objc_allocWithZone(v11);
  v12 = v6;
  *(v9 + 32) = sub_29D9348B8();
  v13 = *MEMORY[0x29EDBB070];
  sub_29D939D68();
  objc_allocWithZone(v11);
  v14 = v8;
  *(v9 + 40) = sub_29D9348B8();
  if (a1 && a3)
  {
    v15 = objc_allocWithZone(v11);
    v16 = a1;
    sub_29D935E88();
    sub_29D9348B8();
    MEMORY[0x29ED6A300]();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();

    return v9;
  }

  else
  {

    return v9;
  }
}

uint64_t sub_29D930DB8(unint64_t a1)
{
  sub_29D931E40();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D931F70();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_29D93A928();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x29EDCA190];
  if (!v16)
  {
LABEL_11:
    v32 = v17;
    sub_29D700D5C();
    sub_29D932004(0);
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C);
    sub_29D93209C(&qword_2A1A24998, sub_29D932004);
    sub_29D9381D8();
    sub_29D93209C(&qword_2A1A24AF0, sub_29D931F70);
    v26 = sub_29D938418();
    (*(v11 + 8))(v15, v10);
    return v26;
  }

  v32 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v29 = v10;
    v30 = v16;
    v27 = v15;
    v28 = v11;
    v19 = 0;
    v20 = a1;
    v21 = a1 & 0xC000000000000001;
    v22 = (v4 + 8);
    do
    {
      if (v21)
      {
        v23 = MEMORY[0x29ED6AE30](v19, v20);
      }

      else
      {
        v23 = *(v20 + 8 * v19 + 32);
      }

      v24 = v23;
      ++v19;
      v31 = sub_29D9348C8();
      sub_29D931EE0();
      sub_29D93209C(&qword_2A1A24A80, sub_29D931EE0);
      sub_29D938468();

      sub_29D93209C(&qword_2A1A24B80, sub_29D931E40);
      sub_29D938418();

      (*v22)(v8, v3);
      sub_29D93AAB8();
      v25 = *(v32 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v30 != v19);
    v17 = v32;
    v11 = v28;
    v10 = v29;
    v15 = v27;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9311E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

char *sub_29D93125C()
{
  v1 = *(v0 + 6);
  [v1 removeHeartRhythmAvailabilityObserver_];
  v2 = *(v0 + 7);
  [v2 unregisterObserver_];
  v3 = *(v0 + 3);

  v4 = *(v0 + 5);

  v5 = *(v0 + 8);

  v6 = *(v0 + 9);

  v7 = OBJC_IVAR____TtC5Heart36BradycardiaFeatureStatusAvailability__featureStatus;
  sub_29D932038(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t sub_29D931350()
{
  sub_29D93125C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BradycardiaFeatureStatusAvailability()
{
  result = qword_2A1A25030;
  if (!qword_2A1A25030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9313FC()
{
  sub_29D932038(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D9314F0@<X0>(uint64_t a1@<X8>)
{
  if (sub_29D9347C8())
  {
    if (sub_29D9316CC())
    {
      v2 = objc_opt_self();
      if ([v2 isBackgroundHeartRateEnabled])
      {
        v3 = [v2 isBradycardiaDetectionEnabled];
        v4 = sub_29D9346E8();
        v5 = *(v4 - 8);
        v16 = (v5 + 56);
        if (v3)
        {
          v6 = MEMORY[0x29EDC1760];
        }

        else
        {
          v6 = MEMORY[0x29EDC1768];
        }

        (*(v5 + 104))(a1, *v6, v4);
        v8 = *v16;
        v10 = a1;
        v11 = 0;
        v9 = v4;
        goto LABEL_12;
      }

      v12 = MEMORY[0x29EDC1758];
    }

    else
    {
      v12 = MEMORY[0x29EDC1750];
    }

    v13 = *v12;
    v14 = sub_29D9346E8();
    v17 = *(v14 - 8);
    (*(v17 + 104))(a1, v13, v14);
    v8 = *(v17 + 56);
    v10 = a1;
    v11 = 0;
    v9 = v14;
  }

  else
  {
    v7 = sub_29D9346E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 1;
  }

LABEL_12:

  return v8(v10, v11, 1, v9);
}

id sub_29D9316CC()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() activePairedWatchSupportsHeartRateMotionContexts];
  if (result)
  {
    result = [objc_opt_self() isBradycardiaDetectionSupportedOnActiveWatch];
    if (result)
    {
      v8 = *(v0 + 48);
      sub_29D9339E8();
      v9 = sub_29D933958();
      (*(v2 + 8))(v6, v1);
      v10 = [v8 isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate_];

      return (v10 ^ 1);
    }
  }

  return result;
}

void sub_29D9317FC()
{
  v1 = v0;
  [*(v0 + 48) addHeartRhythmAvailabilityObserver_];
  [*(v0 + 56) registerObserver_];
  v2 = *(v0 + 16);
  v3 = v1[3];
  v4 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v5 = sub_29D939D28();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v1[4];
    v8 = v1[5];
    v9 = v6;
    v10 = sub_29D930B7C(v6, v7, v8);

    v11 = v1[8];
    v1[8] = v10;

    v12 = v1[8];
    v13 = sub_29D935E88();
    sub_29D930DB8(v13);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_29D931E38;
    *(v15 + 24) = v14;
    sub_29D700D5C();
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C);
    v16 = sub_29D938588();

    v17 = v1[9];
    v1[9] = v16;
  }
}

uint64_t sub_29D9319D0()
{
  sub_29D6D278C(0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D9314F0(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D700C8C(v8, v5);
    sub_29D9383D8();
    return sub_29D700CF0(v8);
  }

  return result;
}

uint64_t sub_29D931CC0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D931D3C(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15 - v11;
  sub_29D700C8C(a1, &v15 - v11);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v12, v9);

  sub_29D9383D8();
  return sub_29D700CF0(v12);
}

void sub_29D931E40()
{
  if (!qword_2A1A24B78)
  {
    sub_29D931EE0();
    sub_29D93209C(&qword_2A1A24A80, sub_29D931EE0);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B78);
    }
  }
}

void sub_29D931EE0()
{
  if (!qword_2A1A24A78)
  {
    sub_29D6C5040(255, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
    v0 = sub_29D9382A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A78);
    }
  }
}

void sub_29D931F70()
{
  if (!qword_2A1A24AE8)
  {
    sub_29D700D5C();
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C);
    v0 = sub_29D9381C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24AE8);
    }
  }
}

void sub_29D932038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D93209C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29D9320E4(void *a1)
{
  sub_29D932038(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v29 - v8;
  sub_29D6D278C(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - v17;
  v19 = *MEMORY[0x29EDBB050];
  *(v1 + 2) = sub_29D939D68();
  *(v1 + 3) = v20;
  v21 = *MEMORY[0x29EDBB038];
  *(v1 + 4) = sub_29D939D68();
  *(v1 + 5) = v22;
  v23 = [objc_allocWithZone(MEMORY[0x29EDBAEB8]) init];
  v24 = MEMORY[0x29EDCA190];
  *(v1 + 7) = v23;
  *(v1 + 8) = v24;
  *(v1 + 9) = 0;
  v25 = OBJC_IVAR____TtC5Heart36BradycardiaFeatureStatusAvailability__featureStatus;
  v26 = sub_29D9346E8();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_29D700C8C(v18, v15);
  sub_29D938398();
  sub_29D700CF0(v18);
  (*(v5 + 32))(&v1[v25], v9, v4);
  *(v1 + 6) = a1;
  v27 = a1;
  sub_29D9314F0(v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v18, v15);

  sub_29D9383D8();
  sub_29D700CF0(v18);
  sub_29D9317FC();
  return v1;
}

uint64_t sub_29D932378@<X0>(uint64_t a1@<X8>)
{
  sub_29D938C18();
  result = sub_29D9392D8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29D9323F8()
{
  type metadata accessor for ViewSandboxCollectionViewCell();
  sub_29D9329F0();
  return sub_29D9350D8();
}

uint64_t sub_29D932448(uint64_t a1)
{
  v2 = sub_29D93299C();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29D9325C0()
{
  v1 = v0;
  sub_29D9328D8();
  v3 = objc_allocWithZone(v2);
  v4 = sub_29D938CF8();
  v5 = [v4 view];
  if (v5)
  {
    v6 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView;
    v7 = *&v0[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView];
    *&v0[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView] = v5;
    v8 = v5;

    v9 = [v1 contentView];
    if (!*&v1[v6])
    {
LABEL_9:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 addSubview_];
  }

  v11 = *&v1[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v1 contentView];
  [v12 hk:v13 alignConstraintsWithView:?];
}

id sub_29D9326E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewSandboxCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D9327B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D932810(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  return sub_29D69F230(a1);
}

void sub_29D9328D8()
{
  if (!qword_2A17B8410)
  {
    sub_29D932934();
    v0 = sub_29D938D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B8410);
    }
  }
}

unint64_t sub_29D932934()
{
  result = qword_2A17B8418;
  if (!qword_2A17B8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8418);
  }

  return result;
}

unint64_t sub_29D93299C()
{
  result = qword_2A17B8420;
  if (!qword_2A17B8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8420);
  }

  return result;
}

unint64_t sub_29D9329F0()
{
  result = qword_2A17B5548;
  if (!qword_2A17B5548)
  {
    type metadata accessor for ViewSandboxCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5548);
  }

  return result;
}

id sub_29D932A68()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A17B8428 = result;
  return result;
}

uint64_t sub_29D932AC0()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1090);
  sub_29D69C6C0(v0, qword_2A17D1090);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932B68()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10A8);
  sub_29D69C6C0(v0, qword_2A17D10A8);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932C10()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10C0);
  sub_29D69C6C0(v0, qword_2A17D10C0);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932CB8()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10D8);
  sub_29D69C6C0(v0, qword_2A17D10D8);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932D60()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10F0);
  sub_29D69C6C0(v0, qword_2A17D10F0);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932E08()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1108);
  sub_29D69C6C0(v0, qword_2A17D1108);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932EB0()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1120);
  sub_29D69C6C0(v0, qword_2A17D1120);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932F58()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1138);
  sub_29D69C6C0(v0, qword_2A17D1138);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D933000()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1150);
  sub_29D69C6C0(v0, qword_2A17D1150);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}