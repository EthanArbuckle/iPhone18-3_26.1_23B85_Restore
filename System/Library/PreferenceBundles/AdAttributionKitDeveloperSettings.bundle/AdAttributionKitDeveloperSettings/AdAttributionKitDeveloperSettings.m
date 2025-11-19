uint64_t variable initialization expression of DevelopmentPostbacksDetail._state()
{
  v0 = type metadata accessor for ConfigurePostbacksState();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_12D98();
}

BOOL sub_15F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

__n128 sub_1668(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_16C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t property wrapper backing initializer of DevelopmentPostbacksDetail.state(uint64_t *a1)
{
  v1 = *a1;
  sub_244E8();
  return v3;
}

uint64_t DevelopmentPostbacksDetail.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v49 = sub_240C8();
  v48 = *(v49 - 8);
  v2 = *(v48 + 64);
  __chkstk_darwin(v49);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_242C8();
  v45 = *(v46 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1F7C(&qword_34408, &qword_24FD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = sub_1F7C(&qword_34410, &qword_24FD8);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v53 = sub_1F7C(&qword_34418, &qword_24FE0);
  v44 = *(v53 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v53);
  v17 = &v41 - v16;
  v50 = sub_1F7C(&qword_34420, &qword_24FE8);
  v51 = *(v50 - 8);
  v18 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = &v41 - v19;
  v55 = v1;
  sub_1F7C(&qword_34428, &qword_24FF0);
  sub_4274(&qword_34430, &qword_34428, &qword_24FF0);
  sub_24318();
  v20 = sub_4274(&qword_34438, &qword_34408, &qword_24FD0);
  sub_24368();
  (*(v7 + 8))(v10, v6);
  v21 = v43;
  sub_242B8();
  v56 = v6;
  v57 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24418();
  (*(v45 + 8))(v21, v46);
  (*(v42 + 8))(v14, v11);
  v23 = v47;
  sub_240B8();
  v56 = v11;
  v57 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v53;
  sub_243B8();
  (*(v48 + 8))(v23, v49);
  (*(v44 + 8))(v17, v25);
  v26 = v41;
  v27 = v41[1];
  v60 = *v41;
  v61 = v27;
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_24518();
  v28 = v56;
  v29 = v57;
  v30 = v58;
  swift_getKeyPath();
  v60 = v28;
  v61 = v29;
  v62 = v30;
  sub_1F7C(&qword_34448, &qword_25028);
  sub_24588();

  v65 = v27;
  v63 = *(v26 + 1);
  v64 = *(v26 + 32);
  v31 = swift_allocObject();
  v32 = *(v26 + 1);
  *(v31 + 16) = *v26;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v26 + 32);

  sub_465C(&v65, &v56, &qword_34450, &qword_25030);
  sub_465C(&v63, &v56, &qword_34458, &qword_25038);
  sub_1F7C(&qword_34460, &qword_25040);
  v56 = v53;
  v57 = v24;
  swift_getOpaqueTypeConformance2();
  v33 = sub_26B8(&qword_34468, &qword_25048);
  v34 = type metadata accessor for ConfigurePostbacksState();
  v35 = sub_3DA8();
  v56 = &type metadata for ConfigureDevelopmentPostbacks;
  v57 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_3DFC();
  v56 = v33;
  v57 = v34;
  v58 = v36;
  v59 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v54;
  sub_24468();

  return (*(v51 + 8))(v39, v38);
}

uint64_t sub_1F7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1FC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v49 = sub_1F7C(&qword_34488, ",7");
  v52 = *(v49 - 8);
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v49);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v57 = &v47 - v7;
  v8 = __chkstk_darwin(v6);
  v56 = &v47 - v9;
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v50 = sub_1F7C(&qword_34490, &qword_25138);
  v48 = *(v50 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v50);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v59 = a1;
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v60 = sub_24348();
  v61 = v18;
  v62 = v19 & 1;
  v63 = v20;
  sub_1F7C(&qword_344A0, &qword_25140);
  sub_4274(&qword_344A8, &qword_344A0, &qword_25140);
  v54 = v16;
  v21 = sub_24638();
  __chkstk_darwin(v21);
  sub_24208();
  if (!sub_24808())
  {
    v22 = [objc_opt_self() mainBundle];
  }

  v60 = sub_24348();
  v61 = v23;
  v62 = v24 & 1;
  v63 = v25;
  sub_1F7C(&qword_344B0, &qword_25148);
  sub_4274(&qword_344B8, &qword_344B0, &qword_25148);
  v26 = sub_24638();
  v53 = v11;
  __chkstk_darwin(v26);
  sub_24208();
  if (!sub_24808())
  {
    v27 = [objc_opt_self() mainBundle];
  }

  v60 = sub_24348();
  v61 = v28;
  v62 = v29 & 1;
  v63 = v30;
  v31 = v56;
  sub_24638();
  v32 = v48;
  v33 = *(v48 + 16);
  v34 = v55;
  v35 = v50;
  v33(v55, v54, v50);
  v36 = v52;
  v37 = *(v52 + 16);
  v38 = v49;
  v37(v57, v53, v49);
  v37(v58, v31, v38);
  v39 = v51;
  v33(v51, v34, v35);
  v40 = sub_1F7C(&qword_344C0, &qword_25150);
  v41 = v57;
  v37(&v39[*(v40 + 48)], v57, v38);
  v42 = &v39[*(v40 + 64)];
  v43 = v58;
  v37(v42, v58, v38);
  v44 = *(v36 + 8);
  v44(v56, v38);
  v44(v53, v38);
  v45 = *(v32 + 8);
  v45(v54, v35);
  v44(v43, v38);
  v44(v41, v38);
  return (v45)(v55, v35);
}

uint64_t sub_26B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = sub_1F7C(&qword_344C8, &qword_25178);
  v4 = *(v3 - 8);
  v77 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v63 - v8;
  v9 = sub_1F7C(&qword_344D0, &unk_25180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_1F7C(&qword_344D8, &unk_257A0);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = sub_1F7C(&qword_344E0, &qword_25190);
  v19 = *(v18 - 8);
  v68 = v18;
  v69 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v63 - v21;
  v23 = sub_1F7C(&qword_344E8, &qword_25198);
  v24 = *(v23 - 8);
  v71 = v23;
  v72 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v64 = &v63 - v26;
  v27 = sub_1F7C(&qword_344F0, &qword_251A0);
  v75 = *(v27 - 8);
  v76 = v27;
  v28 = *(v75 + 64);
  v29 = __chkstk_darwin(v27);
  v74 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v80 = &v63 - v31;
  v32 = a1[1];
  v70 = *a1;
  v67 = v32;
  *&v84 = v70;
  *(&v84 + 1) = v32;
  v73 = sub_1F7C(&qword_34440, &qword_24FF8);
  sub_24518();
  v33 = v92;
  v34 = v93;
  swift_getKeyPath();
  v90 = v33;
  v91 = v34;
  sub_1F7C(&qword_34448, &qword_25028);
  sub_24588();

  v63 = v84;
  v35 = v85;

  v92 = xmmword_24FB0;
  v93 = xmmword_24FC0;
  v94 = v63;
  v95 = v35;
  *&v96 = 0xD000000000000011;
  *(&v96 + 1) = 0x800000000002B920;
  v97 = xmmword_24FC0;
  v86 = v63;
  v87 = v35;
  v88 = v96;
  v89 = xmmword_24FC0;
  v84 = xmmword_24FB0;
  v85 = xmmword_24FC0;
  v36 = sub_453C();
  sub_24408();
  sub_4590(&v92);
  sub_242E8();
  v37 = sub_242F8();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  *&v84 = &type metadata for LabeledTextField;
  *(&v84 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v65;
  sub_24438();
  sub_46C4(v12, &qword_344D0, &unk_25180);
  (*(v66 + 8))(v17, v39);
  *&v84 = v39;
  *(&v84 + 1) = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v64;
  v42 = v68;
  sub_243C8();
  (*(v69 + 8))(v22, v42);
  v84 = *(a1 + 1);
  LOBYTE(v85) = *(a1 + 32);
  v90 = *(a1 + 1);
  LOBYTE(v91) = *(a1 + 32);
  sub_1F7C(&qword_34458, &qword_25038);
  sub_24078();
  *&v90 = v42;
  *(&v90 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v80;
  v44 = v71;
  sub_24488();

  (*(v72 + 8))(v41, v44);
  v45 = v67;
  v83[0] = v67;
  v46 = swift_allocObject();
  v47 = *(a1 + 1);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v47;
  *(v46 + 48) = *(a1 + 32);
  v48 = v70;

  sub_465C(v83, &v90, &qword_34450, &qword_25030);
  sub_465C(&v84, &v90, &qword_34458, &qword_25038);
  v49 = v81;
  sub_24528();
  *&v90 = v48;
  *(&v90 + 1) = v45;
  sub_244F8();
  v50 = v82;
  swift_getKeyPath();
  *&v90 = v50;
  sub_3DFC();
  sub_23F28();

  LOBYTE(v42) = *(v50 + 32);

  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v42;
  v53 = v76;
  v54 = (v49 + *(v77 + 44));
  *v54 = KeyPath;
  v54[1] = sub_4654;
  v54[2] = v52;
  v56 = v74;
  v55 = v75;
  v57 = *(v75 + 16);
  v57(v74, v43, v53);
  v58 = v78;
  sub_465C(v49, v78, &qword_344C8, &qword_25178);
  v59 = v79;
  v57(v79, v56, v53);
  v60 = sub_1F7C(&qword_34500, qword_25228);
  sub_465C(v58, &v59[*(v60 + 48)], &qword_344C8, &qword_25178);
  sub_46C4(v81, &qword_344C8, &qword_25178);
  v61 = *(v55 + 8);
  v61(v80, v53);
  sub_46C4(v58, &qword_344C8, &qword_25178);
  return (v61)(v56, v53);
}

uint64_t sub_2F9C(__int128 *a1)
{
  v4 = *a1;
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  if (*(v7 + 33) == 1)
  {
    *(v7 + 33) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  v5 = a1[1];
  v6 = *(a1 + 32);
  sub_1F7C(&qword_34458, &qword_25038);
  return sub_24068();
}

uint64_t sub_30F4@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_31D8(uint64_t a1)
{
  v1[5] = a1;
  sub_247B8();
  v1[6] = sub_247A8();
  v3 = sub_24798();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3270, v3, v2);
}

uint64_t sub_3270()
{
  *(v0 + 16) = **(v0 + 40);
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_3344;

  return sub_1900C();
}

uint64_t sub_3344()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_3488, v5, v4);
}

uint64_t sub_3488()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_34E8@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_35CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v19 = a1[1];
  v17 = *(a1 + 1);
  v18 = *(a1 + 32);
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  v16 = 0;

  sub_465C(&v19, v14, &qword_34450, &qword_25030);
  sub_465C(&v17, v14, &qword_34458, &qword_25038);
  result = sub_244E8();
  v12 = v14[0];
  v13 = v15;
  *a4 = a2;
  *(a4 + 8) = v9;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  return result;
}

uint64_t sub_36BC(uint64_t a1)
{
  v1[5] = a1;
  sub_247B8();
  v1[6] = sub_247A8();
  v3 = sub_24798();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3754, v3, v2);
}

uint64_t sub_3754()
{
  *(v0 + 16) = **(v0 + 40);
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_3828;

  return sub_19374();
}

uint64_t sub_3828()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_4754, v5, v4);
}

uint64_t sub_396C@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_24348();
  v5 = v4;
  v7 = v6;
  sub_244C8();
  v8 = sub_24338();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_439C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_3AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_3BA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1F7C(&qword_34468, &qword_25048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  type metadata accessor for ConfigurePostbacksState();
  sub_3DFC();
  v8 = sub_240A8();
  v10 = v9;
  sub_4180();
  sub_24098();
  v11 = v17;
  v12 = *(&v17 + 1);
  v13 = v18;
  *&v17 = v8;
  BYTE8(v17) = v10 & 1;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v14 = sub_3DA8();
  sub_24428();

  v17 = *a1;
  sub_1F7C(&qword_34440, &qword_24FF8);
  sub_244F8();
  *&v17 = &type metadata for ConfigureDevelopmentPostbacks;
  *(&v17 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_24398();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_3DA8()
{
  result = qword_34470;
  if (!qword_34470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34470);
  }

  return result;
}

unint64_t sub_3DFC()
{
  result = qword_34478;
  if (!qword_34478)
  {
    type metadata accessor for ConfigurePostbacksState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34478);
  }

  return result;
}

uint64_t sub_3E94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return DevelopmentPostbacksDetail.body.getter(a1);
}

__n128 sub_3ED0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3EE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_3F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3F80()
{
  sub_26B8(&qword_34420, &qword_24FE8);
  sub_26B8(&qword_34460, &qword_25040);
  sub_26B8(&qword_34418, &qword_24FE0);
  sub_26B8(&qword_34410, &qword_24FD8);
  sub_26B8(&qword_34408, &qword_24FD0);
  sub_4274(&qword_34438, &qword_34408, &qword_24FD0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26B8(&qword_34468, &qword_25048);
  type metadata accessor for ConfigurePostbacksState();
  sub_3DA8();
  swift_getOpaqueTypeConformance2();
  sub_3DFC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4180()
{
  result = qword_34480;
  if (!qword_34480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34480);
  }

  return result;
}

unint64_t sub_41DC()
{
  result = qword_34498;
  if (!qword_34498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34498);
  }

  return result;
}

uint64_t sub_4274(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4308()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4750;

  return sub_36BC(v0 + 16);
}

uint64_t sub_439C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_43AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4440;

  return sub_31D8(v0 + 16);
}

uint64_t sub_4440()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_453C()
{
  result = qword_344F8;
  if (!qword_344F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_344F8);
  }

  return result;
}

uint64_t sub_45E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_465C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1F7C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_46C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1F7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_4758(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_476C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_47B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4824()
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v0 = [objc_opt_self() mainBundle];
  }

  sub_24348();
  sub_1F7C(&qword_34520, &qword_25320);
  sub_4274(&qword_34518, &qword_34520, &qword_25320);
  return sub_24618();
}

uint64_t sub_49B4@<X0>(uint64_t a1@<X0>, unsigned __int8 *(*a2)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = (a3 >> 8);
  v49 = sub_1F7C(&qword_34528, &qword_25328);
  v62 = *(v49 - 8);
  v8 = v62[8];
  v9 = __chkstk_darwin(v49);
  v58 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v43 - v12;
  v13 = __chkstk_darwin(v11);
  v47 = &v43 - v14;
  v15 = __chkstk_darwin(v13);
  v53 = &v43 - v16;
  v17 = __chkstk_darwin(v15);
  v52 = &v43 - v18;
  __chkstk_darwin(v17);
  v64 = &v43 - v19;
  v63 = 0x800000000002B960;
  swift_getKeyPath();
  v91 = a1;
  v92 = a2;
  LOBYTE(v93) = a3;
  BYTE1(v93) = v7;
  v45 = v7;
  LODWORD(v50) = WORD1(a3) & 1;
  BYTE2(v93) = BYTE2(a3) & 1;
  BYTE3(v93) = BYTE3(a3) & 1;
  BYTE4(v93) = BYTE4(a3) & 1;
  sub_1F7C(&qword_34530, &qword_25350);
  sub_24588();

  v60 = v80;
  v61 = v79;
  v59 = v81;
  v57 = 0x800000000002B980;
  swift_getKeyPath();
  *&v51 = a1;
  v91 = a1;
  v92 = a2;
  LOBYTE(v93) = a3;
  BYTE1(v93) = v7;
  LOBYTE(v7) = v50;
  BYTE2(v93) = v50;
  BYTE3(v93) = BYTE3(a3) & 1;
  BYTE4(v93) = BYTE4(a3) & 1;
  sub_24588();

  v55 = v80;
  v56 = v79;
  v54 = v81;
  swift_getKeyPath();
  v91 = a1;
  v92 = a2;
  v20 = a2;
  v46 = a2;
  LOBYTE(v93) = a3;
  LOBYTE(a2) = v45;
  BYTE1(v93) = v45;
  BYTE2(v93) = v7;
  BYTE3(v93) = BYTE3(a3) & 1;
  BYTE4(v93) = BYTE4(a3) & 1;
  sub_24588();

  sub_24568();
  swift_getKeyPath();
  v91 = v51;
  v92 = v20;
  LOBYTE(v93) = a3;
  BYTE1(v93) = a2;
  v21 = a2;
  LOBYTE(v20) = v50;
  BYTE2(v93) = v50;
  BYTE3(v93) = BYTE3(a3) & 1;
  BYTE4(v93) = BYTE4(a3) & 1;
  sub_24588();

  v22 = v52;
  sub_24568();
  swift_getKeyPath();
  v91 = v51;
  v92 = v46;
  LOBYTE(v93) = a3;
  BYTE1(v93) = v21;
  BYTE2(v93) = v20;
  BYTE3(v93) = BYTE3(a3) & 1;
  BYTE4(v93) = BYTE4(a3) & 1;
  sub_24588();

  v23 = v53;
  sub_24568();
  v24 = v62[2];
  v25 = v47;
  v26 = v49;
  v24(v47, v64, v49);
  v27 = v48;
  v24(v48, v22, v26);
  v24(v58, v23, v26);
  v50 = 0xD000000000000018;
  *&v65 = 0xD000000000000018;
  *(&v65 + 1) = v63;
  v66 = xmmword_24FC0;
  v51 = xmmword_24FC0;
  *&v67 = v61;
  *(&v67 + 1) = v60;
  LOBYTE(v68) = v59;
  v46 = sub_5138;
  *(&v68 + 1) = sub_5138;
  *&v69 = 0;
  v45 = sub_515C;
  *(&v69 + 1) = sub_515C;
  v70 = 0uLL;
  v71 = 0;
  v28 = v43;
  *(v43 + 96) = 0;
  v29 = v70;
  *(v28 + 64) = v69;
  *(v28 + 80) = v29;
  v30 = v66;
  *v28 = v65;
  *(v28 + 16) = v30;
  v31 = v68;
  *(v28 + 32) = v67;
  *(v28 + 48) = v31;
  *&v72 = 0xD000000000000015;
  *(&v72 + 1) = v57;
  v73 = xmmword_24FC0;
  *&v74 = v56;
  *(&v74 + 1) = v55;
  LOBYTE(v75) = v54;
  v44 = sub_5240;
  *(&v75 + 1) = sub_5240;
  *&v76 = 0;
  *(&v76 + 1) = sub_5274;
  v77 = 0uLL;
  v78 = 0;
  v32 = v75;
  *(v28 + 136) = v74;
  v33 = v72;
  *(v28 + 120) = v73;
  *(v28 + 104) = v33;
  v34 = v76;
  v35 = v77;
  *(v28 + 200) = 0;
  *(v28 + 184) = v35;
  *(v28 + 168) = v34;
  *(v28 + 152) = v32;
  v36 = v28;
  v37 = sub_1F7C(&qword_34538, &qword_253D8);
  v38 = v25;
  v24((v36 + v37[16]), v25, v26);
  v39 = v27;
  v24((v36 + v37[20]), v27, v26);
  v40 = v58;
  v24((v36 + v37[24]), v58, v26);
  sub_465C(&v65, &v91, &qword_34540, &qword_253E0);
  sub_465C(&v72, &v91, &qword_34548, &qword_253E8);
  v41 = v62[1];
  v41(v53, v26);
  v41(v52, v26);
  v41(v64, v26);
  v41(v40, v26);
  v41(v39, v26);
  v41(v38, v26);
  v79 = 0xD000000000000015;
  v80 = v57;
  v81 = v51;
  v82 = v56;
  v83 = v55;
  v84 = v54;
  v85 = v44;
  v86 = 0;
  v87 = sub_5274;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  sub_46C4(&v79, &qword_34548, &qword_253E8);
  v91 = v50;
  v92 = v63;
  v93 = v51;
  v94 = v61;
  v95 = v60;
  v96 = v59;
  v97 = v46;
  v98 = 0;
  v99 = v45;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  return sub_46C4(&v91, &qword_34540, &qword_253E0);
}

unsigned __int8 *sub_5138@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result + 50;
  *(a2 + 8) = 0xE100000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_515C@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

char *sub_5240@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aNone_0[8 * v2];
  v4 = qword_25418[v2];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_5274@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_5358(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000000002B9C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

void sub_5388(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000000002B9A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

double sub_53B8@<D0>(uint64_t a1@<X8>)
{
  result = 3.03668898e-152;
  *a1 = xmmword_25240;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_53D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = *(v0 + 18);
  v6 = *(v0 + 19);
  v7 = *(v0 + 20);
  sub_1F7C(&qword_34508, &qword_25318);
  sub_5484();
  return sub_24318();
}

unint64_t sub_5484()
{
  result = qword_34510;
  if (!qword_34510)
  {
    sub_26B8(&qword_34508, &qword_25318);
    sub_4274(&qword_34518, &qword_34520, &qword_25320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34510);
  }

  return result;
}

uint64_t sub_5560(uint64_t (*a1)(void, void, unint64_t))
{
  v2 = 0x10000;
  if (!*(v1 + 34))
  {
    v2 = 0;
  }

  v3 = *(v1 + 32) | v2;
  v4 = 0x1000000;
  if (!*(v1 + 35))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v3 | v4 | v5);
}

uint64_t sub_5600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_565C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_56E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v110 = a3;
  v109 = sub_1F7C(&qword_34560, &qword_255C0);
  v108 = *(v109 - 8);
  v4 = *(v108 + 64);
  v5 = __chkstk_darwin(v109);
  v107 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v84 - v7;
  v102 = sub_241A8();
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_240C8();
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_242C8();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1F7C(&qword_345B0, &qword_25610);
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  __chkstk_darwin(v14);
  v17 = &v84 - v16;
  v18 = sub_1F7C(&qword_345A8, &qword_25608);
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  __chkstk_darwin(v18);
  v21 = &v84 - v20;
  v22 = sub_1F7C(&qword_345A0, &qword_25600);
  v87 = *(v22 - 8);
  v23 = *(v87 + 64);
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v96 = sub_1F7C(&qword_34598, &qword_255F8);
  v93 = *(v96 - 8);
  v26 = *(v93 + 64);
  __chkstk_darwin(v96);
  v28 = &v84 - v27;
  v98 = sub_1F7C(&qword_34590, &qword_255F0);
  v95 = *(v98 - 8);
  v29 = *(v95 + 64);
  __chkstk_darwin(v98);
  v94 = &v84 - v30;
  v111 = sub_1F7C(&qword_34580, &qword_255E0);
  v99 = *(v111 - 8);
  v31 = *(v99 + 64);
  __chkstk_darwin(v111);
  v97 = &v84 - v32;
  v105 = sub_1F7C(&qword_34570, &qword_255D0);
  v104 = *(v105 - 8);
  v33 = *(v104 + 64);
  __chkstk_darwin(v105);
  v112 = &v84 - v34;
  v103 = a1;
  v114 = a1;
  sub_1F7C(&qword_345D0, &qword_25618);
  v35 = v22;
  sub_4274(&qword_345D8, &qword_345D0, &qword_25618);
  sub_24318();
  v36 = sub_4274(&qword_345B8, &qword_345B0, &qword_25610);
  sub_24368();
  (*(v84 + 8))(v17, v14);
  v37 = v86;
  sub_242B8();
  v119 = v14;
  v120 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24418();
  (*(v88 + 8))(v37, v89);
  (*(v85 + 8))(v21, v18);
  v39 = v90;
  sub_240B8();
  v119 = v18;
  v120 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v28;
  sub_243B8();
  (*(v91 + 8))(v39, v92);
  (*(v87 + 8))(v25, v35);
  sub_24208();
  v92 = sub_41DC();
  if (!sub_24808())
  {
    v42 = [objc_opt_self() mainBundle];
  }

  v43 = sub_24348();
  v45 = v44;
  v47 = v46;
  v119 = v35;
  v120 = v40;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v94;
  v50 = v96;
  sub_243F8();
  sub_439C(v43, v45, v47 & 1);

  (*(v93 + 8))(v41, v50);
  v51 = v101;
  v52 = v100;
  v53 = v102;
  (*(v101 + 104))(v100, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
  v119 = v50;
  v120 = v48;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v97;
  v56 = v98;
  sub_24448();
  (*(v51 + 8))(v52, v53);
  v57 = (*(v95 + 8))(v49, v56);
  __chkstk_darwin(v57);
  v58 = sub_1F7C(&qword_34588, &qword_255E8);
  v119 = v56;
  v120 = v54;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_4274(&qword_345C0, &qword_34588, &qword_255E8);
  v61 = v111;
  v103 = v58;
  v102 = v59;
  v101 = v60;
  sub_24498();
  (*(v99 + 8))(v55, v61);
  sub_24208();
  if (!sub_24808())
  {
    v62 = [objc_opt_self() mainBundle];
  }

  v100 = sub_24348();
  v99 = v63;
  LODWORD(v97) = v64;
  v98 = v65;
  v66 = swift_projectBox();
  v67 = v108;
  v68 = *(v108 + 16);
  v69 = v107;
  v70 = v109;
  v68(v107, v66, v109);
  v71 = v106;
  sub_24668();
  v72 = *(v67 + 8);
  v72(v69, v70);
  swift_getKeyPath();
  sub_24688();

  v72(v71, v70);
  v106 = v123;
  LODWORD(v108) = v124;
  v68(v69, v66, v70);
  sub_24658();
  v72(v69, v70);
  v73 = v119;
  swift_getKeyPath();
  v119 = v73;
  sub_3DFC();
  sub_23F28();

  v74 = v73[19];
  v76 = v73[21];
  v75 = v73[22];
  v77 = v73[20];
  v109 = v77;
  v78 = v75;
  v107 = v75;
  sub_D784(v74, v77);

  v119 = v74;
  v120 = v77;
  v121 = v76;
  v122 = v78;
  sub_1F7C(&qword_34578, &qword_255D8);
  v115 = v111;
  v116 = v103;
  v117 = v102;
  v118 = v101;
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8);
  v79 = v105;
  LOBYTE(v71) = v97;
  v80 = v100;
  v81 = v99;
  v82 = v112;
  sub_24458();

  sub_439C(v80, v81, v71 & 1);

  sub_D844(v74, v109);
  return (*(v104 + 8))(v82, v79);
}

uint64_t sub_6664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v113 = sub_1F7C(&qword_34488, ",7");
  v92 = *(v113 - 8);
  v3 = *(v92 + 64);
  v4 = __chkstk_darwin(v113);
  v112 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v88 - v6;
  v111 = sub_1F7C(&qword_34680, &qword_25750);
  v117 = *(v111 - 8);
  v7 = v117[8];
  v8 = __chkstk_darwin(v111);
  v110 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v88 - v10;
  v103 = sub_1F7C(&qword_34688, &qword_25758);
  v116 = *(v103 - 8);
  v12 = v116[8];
  v13 = __chkstk_darwin(v103);
  v109 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v108 = sub_1F7C(&qword_34690, &qword_25760);
  v115 = *(v108 - 8);
  v17 = v115[8];
  v18 = __chkstk_darwin(v108);
  v107 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = &v88 - v20;
  v21 = sub_24178();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1F7C(&qword_34698, &qword_25768);
  v98 = *(v99 - 8);
  v26 = v98[8];
  v27 = __chkstk_darwin(v99);
  v97 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v105 = &v88 - v29;
  v130 = *(a1 + 8);
  v114 = a1;
  v30 = *a1;
  v129 = v30;
  LODWORD(v96) = v130;
  v101 = v11;
  v100 = v16;
  v90 = v21;
  v89 = v22;
  if (v130 == 1)
  {
    v125 = v30;
  }

  else
  {

    sub_247F8();
    v31 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v129, &qword_34668, &qword_256D8);
    (*(v22 + 8))(v25, v21);
  }

  v95 = sub_1F7C(&qword_34560, &qword_255C0);
  swift_allocBox();
  v32 = type metadata accessor for ConfigurePostbacksState();
  v33 = sub_3DFC();
  v94 = v32;
  v93 = v33;
  v34 = sub_24678();
  __chkstk_darwin(v34);
  sub_24208();
  v104 = sub_41DC();
  if (!sub_24808())
  {
    v35 = [objc_opt_self() mainBundle];
  }

  v125 = sub_24348();
  v126 = v36;
  v127 = v37 & 1;
  v128 = v38;
  sub_9B74(v122);
  sub_1F7C(&qword_346A0, &qword_25770);
  sub_4274(&qword_346A8, &qword_346A0, &qword_25770);
  sub_24628();

  if (v96)
  {
    v125 = v30;
  }

  else
  {

    sub_247F8();
    v39 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v129, &qword_34668, &qword_256D8);
    (*(v89 + 8))(v25, v90);
  }

  swift_allocBox();
  v40 = sub_24678();
  __chkstk_darwin(v40);
  sub_24208();
  if (!sub_24808())
  {
    v41 = [objc_opt_self() mainBundle];
  }

  v125 = sub_24348();
  v126 = v42;
  v127 = v43 & 1;
  v128 = v44;
  sub_1F7C(&qword_346B0, &qword_25778);
  sub_4274(&qword_346B8, &qword_346B0, &qword_25778);
  sub_24618();

  if (v96)
  {
    v125 = v30;
  }

  else
  {

    sub_247F8();
    v45 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v129, &qword_34668, &qword_256D8);
    (*(v89 + 8))(v25, v90);
  }

  swift_allocBox();
  v46 = sub_24678();
  v96 = &v88;
  __chkstk_darwin(v46);
  sub_24208();
  if (!sub_24808())
  {
    v47 = [objc_opt_self() mainBundle];
  }

  v125 = sub_24348();
  v126 = v48;
  v127 = v49 & 1;
  v128 = v50;
  sub_24208();
  if (!sub_24808())
  {
    v51 = [objc_opt_self() mainBundle];
  }

  v122[0] = sub_24348();
  v122[1] = v52;
  v123 = v53 & 1;
  v124 = v54;
  sub_1F7C(&qword_346C0, &unk_25780);
  v55 = sub_26B8(&qword_344E8, &qword_25198);
  v56 = sub_26B8(&qword_346C8, &unk_25790);
  v57 = sub_26B8(&qword_344E0, &qword_25190);
  v58 = sub_26B8(&qword_344D8, &unk_257A0);
  v59 = sub_453C();
  v118 = &type metadata for LabeledTextField;
  v119 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v118 = v58;
  v119 = OpaqueTypeConformance2;
  v61 = swift_getOpaqueTypeConformance2();
  v118 = v57;
  v119 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_DCF0();
  v118 = v55;
  v119 = v56;
  v120 = v62;
  v121 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v100;
  sub_24628();

  v65 = v101;
  v66 = sub_78B4(v101);
  __chkstk_darwin(v66);
  sub_24208();
  if (!sub_24808())
  {
    v67 = [objc_opt_self() mainBundle];
  }

  v125 = sub_24348();
  v126 = v68;
  v127 = v69 & 1;
  v128 = v70;
  sub_1F7C(&qword_344B0, &qword_25148);
  sub_4274(&qword_344B8, &qword_344B0, &qword_25148);
  v71 = v102;
  sub_24638();
  v94 = v98[2];
  v72 = v97;
  v73 = v99;
  v94(v97, v105, v99);
  v114 = v115[2];
  v114(v107, v106, v108);
  v104 = v116[2];
  v104(v109, v64, v103);
  v96 = v117[2];
  (v96)(v110, v65, v111);
  v74 = v92;
  v95 = *(v92 + 16);
  v95(v112, v71, v113);
  v75 = v91;
  v94(v91, v72, v73);
  v76 = sub_1F7C(&qword_346D8, &qword_257B0);
  v114(&v75[v76[12]], v107, v108);
  v77 = v103;
  v104(&v75[v76[16]], v109, v103);
  v78 = v111;
  (v96)(&v75[v76[20]], v110, v111);
  v79 = v113;
  v95(&v75[v76[24]], v112, v113);
  v80 = *(v74 + 8);
  v80(v102, v79);
  v81 = v117[1];
  ++v117;
  v81(v101, v78);
  v82 = v116[1];
  ++v116;
  v82(v100, v77);
  v83 = v115[1];
  ++v115;
  v84 = v108;
  v83(v106, v108);
  v85 = v98[1];
  v86 = v99;
  v85(v105, v99);
  v80(v112, v113);
  v81(v110, v111);
  v82(v109, v77);
  v83(v107, v84);
  return (v85)(v97, v86);
}

uint64_t sub_78B4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_24178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1F7C(&qword_34560, &qword_255C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v31 = &v28 - v15;
  v42 = *(v1 + 8);
  v41 = *v1;
  v16 = v42;

  if ((v16 & 1) == 0)
  {
    sub_247F8();
    v17 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v41, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for ConfigurePostbacksState();
  sub_3DFC();
  sub_24678();
  sub_24668();
  swift_getKeyPath();
  sub_24688();

  v18 = *(v8 + 8);
  v18(v14, v7);
  v32 = v43;
  v33 = v44;
  v34 = v45;
  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8);
  sub_245A8();
  v20 = v39;
  v19 = v40;

  v21 = v29;
  sub_24668();
  swift_getKeyPath();
  sub_24688();

  v28 = v8 + 8;
  v29 = v18;
  v18(v21, v7);
  v43 = v20;
  v44 = v19;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  sub_DE58(&v43);

  __chkstk_darwin(v22);
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v32 = sub_24348();
  v33 = v24;
  LOBYTE(v34) = v25 & 1;
  v35 = v26;
  sub_1F7C(&qword_346F8, &qword_25800);
  sub_E3E8();
  sub_24618();

  return (v29)(v31, v7);
}

uint64_t sub_7DD0()
{
  v0 = sub_1F7C(&qword_345E0, &qword_25670);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  v4 = sub_1F7C(&qword_345E8, &qword_25678);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_1F7C(&qword_345F0, &qword_25680);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_8000(&v16 - v12);
  sub_82BC(v8);
  v14 = *(v0 + 48);
  (*(v10 + 16))(v3, v13, v9);
  (*(v5 + 16))(&v3[v14], v8, v4);
  sub_24238();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_8000@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = sub_1F7C(&qword_34678, &qword_25718);
  v2 = *(*(v19[0] - 8) + 64);
  __chkstk_darwin(v19[0]);
  v4 = v19 - v3;
  v5 = sub_24288();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1F7C(&qword_34608, &qword_25698);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  sub_24268();
  v21 = v1;
  sub_1F7C(&qword_34578, &qword_255D8);
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8);
  sub_240D8();
  sub_24258();
  v20 = v1;
  sub_240D8();
  v15 = *(v19[0] + 48);
  v16 = v8[2];
  v16(v4, v14, v7);
  v16(&v4[v15], v12, v7);
  sub_24238();
  v17 = v8[1];
  v17(v12, v7);
  return (v17)(v14, v7);
}

uint64_t sub_82BC@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v63 = sub_1F7C(&qword_345F8, &qword_25688);
  v2 = *(*(v63 - 1) + 64);
  __chkstk_darwin(v63);
  v62 = v57 - v3;
  v70 = sub_1F7C(&qword_34600, &qword_25690);
  v64 = *(v70 - 8);
  v4 = *(v64 + 64);
  __chkstk_darwin(v70);
  v60 = v57 - v5;
  v66 = sub_1F7C(&qword_34608, &qword_25698);
  v59 = *(v66 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v66);
  v58 = v57 - v7;
  v8 = sub_1F7C(&qword_34610, &qword_256A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = v57 - v13;
  v14 = sub_1F7C(&qword_34618, &qword_256A8);
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  __chkstk_darwin(v14);
  v17 = v57 - v16;
  v18 = sub_24288();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v61 = sub_1F7C(&qword_34620, &qword_256B0);
  v20 = *(v61 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v61);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v57 - v25;
  sub_24278();
  v73 = v1;
  sub_1F7C(&qword_34628, &qword_256B8);
  sub_D8B8();
  v27 = v26;
  sub_240D8();
  sub_24278();
  v72 = v1;
  v28 = v24;
  sub_240D8();
  sub_24278();
  v65 = v17;
  sub_240D8();
  v75 = *(v1 + 16);
  v76 = *(v1 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v29 = 2;
  v30 = &byte_31060;
  do
  {
    v32 = *v30++;
    v31 = v32;
    if (v32 == 5)
    {
      if (v74 == 5)
      {
LABEL_6:
        v33 = sub_24278();
        v57[1] = v57;
        __chkstk_darwin(v33);
        v57[-2] = v1;
        sub_1F7C(&qword_34578, &qword_255D8);
        v34 = v66;
        sub_4274(&qword_345C8, &qword_34578, &qword_255D8);
        v35 = v58;
        sub_240D8();
        v36 = sub_4274(&qword_34660, &qword_34608, &qword_25698);
        v37 = v60;
        v38 = v34;
        sub_24298();
        v39 = v64;
        v40 = v70;
        (*(v64 + 16))(v12, v37, v70);
        (*(v39 + 56))(v12, 0, 1, v40);
        *&v75 = v38;
        *(&v75 + 1) = v36;
        swift_getOpaqueTypeConformance2();
        sub_242A8();
        sub_D9A4(v12);
        (*(v39 + 8))(v37, v40);
        (*(v59 + 8))(v35, v38);
        goto LABEL_8;
      }
    }

    else if (v31 == v74)
    {
      goto LABEL_6;
    }

    --v29;
  }

  while (v29);
  (*(v64 + 56))(v12, 1, 1, v70);
  v41 = sub_4274(&qword_34660, &qword_34608, &qword_25698);
  *&v75 = v66;
  *(&v75 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  sub_242A8();
  sub_D9A4(v12);
LABEL_8:
  v42 = v63[12];
  v43 = v63[16];
  v70 = v63[20];
  v44 = v20;
  v45 = *(v20 + 16);
  v46 = v62;
  v47 = v27;
  v48 = v27;
  v49 = v61;
  v45(v62, v48, v61);
  v45(&v46[v42], v28, v49);
  v51 = v67;
  v50 = v68;
  v52 = &v46[v43];
  v53 = v65;
  (*(v67 + 16))(v52, v65, v68);
  v54 = v71;
  sub_DA0C(v71, &v46[v70]);
  sub_24238();
  sub_D9A4(v54);
  (*(v51 + 8))(v53, v50);
  v55 = *(v44 + 8);
  v55(v28, v49);
  return (v55)(v47, v49);
}

uint64_t sub_8B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_8BA8()
{
  v0 = sub_1F7C(&qword_34560, &qword_255C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_24658();
  (*(v1 + 8))(v4, v0);
  v6 = v10;
  if (*(v10 + 144) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v9 - 2) = v6;
    *(&v9 - 8) = 0;
    v10 = v6;
    sub_3DFC();
    sub_23F18();
  }

  else
  {
    *(v10 + 144) = 0;
  }

  sub_12B44(0, 0, 0, 0);
}

uint64_t sub_8D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  sub_41DC();

  if (!sub_24808())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_8E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a2;
  v54 = a1;
  v61 = a3;
  v3 = sub_1F7C(&qword_344D0, &unk_25180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v48 - v5;
  v7 = sub_1F7C(&qword_34560, &qword_255C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v49 = sub_1F7C(&qword_344D8, &unk_257A0);
  v50 = *(v49 - 8);
  v15 = *(v50 + 64);
  __chkstk_darwin(v49);
  v17 = &v48 - v16;
  v52 = sub_1F7C(&qword_344E0, &qword_25190);
  v53 = *(v52 - 8);
  v18 = *(v53 + 64);
  __chkstk_darwin(v52);
  v20 = &v48 - v19;
  v56 = sub_1F7C(&qword_344E8, &qword_25198);
  v58 = *(v56 - 8);
  v21 = *(v58 + 64);
  __chkstk_darwin(v56);
  v48 = &v48 - v22;
  v59 = sub_1F7C(&qword_346C0, &unk_25780);
  v57 = *(v59 - 8);
  v23 = *(v57 + 64);
  v24 = __chkstk_darwin(v59);
  v55 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v51 = &v48 - v26;
  v27 = swift_projectBox();
  (*(v8 + 16))(v12, v27, v7);
  sub_24668();
  v28 = *(v8 + 8);
  v28(v12, v7);
  swift_getKeyPath();
  sub_24688();

  v28(v14, v7);
  v71[1] = xmmword_24FC0;
  v71[2] = v65;
  v71[3] = v66;
  *&v72 = 0xD000000000000013;
  *(&v72 + 1) = 0x800000000002BD90;
  v73 = xmmword_24FC0;
  v67 = v65;
  v68 = v66;
  v69 = v72;
  v70 = xmmword_24FC0;
  v71[0] = xmmword_25430;
  v65 = xmmword_25430;
  v66 = xmmword_24FC0;
  v29 = sub_453C();
  sub_24408();
  sub_4590(v71);
  sub_242E8();
  v30 = sub_242F8();
  (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
  *&v65 = &type metadata for LabeledTextField;
  *(&v65 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v49;
  sub_24438();
  sub_46C4(v6, &qword_344D0, &unk_25180);
  (*(v50 + 8))(v17, v32);
  *&v65 = v32;
  *(&v65 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v52;
  sub_243C8();
  (*(v53 + 8))(v20, v35);
  v65 = *(v60 + 16);
  LOBYTE(v66) = *(v60 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v65 = v63;
  LOBYTE(v66) = v64;
  v62 = 0;
  sub_1F7C(&qword_346C8, &unk_25790);
  *&v63 = v35;
  *(&v63 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  sub_DCF0();
  v36 = v51;
  v37 = v56;
  sub_24478();

  (*(v58 + 8))(v34, v37);
  LOBYTE(v63) = 0;
  v38 = v54;

  sub_244E8();
  LOBYTE(v12) = v65;
  v39 = *(&v65 + 1);
  v40 = v57;
  v41 = *(v57 + 16);
  v42 = v55;
  v43 = v59;
  v41(v55, v36, v59);
  v44 = v61;
  v41(v61, v42, v43);
  v45 = &v44[*(sub_1F7C(&qword_34768, &unk_259F0) + 48)];
  *v45 = &unk_259E8;
  *(v45 + 1) = v38;
  *(v45 + 2) = sub_9A90;
  *(v45 + 3) = 0;
  v45[32] = v12;
  *(v45 + 5) = v39;
  v46 = *(v40 + 8);

  v46(v36, v43);

  return (v46)(v42, v43);
}

uint64_t sub_96F8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1F7C(&qword_34560, &qword_255C0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_247B8();
  v1[7] = sub_247A8();
  v6 = sub_24798();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_97F8, v6, v5);
}

uint64_t sub_97F8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_projectBox();
  (*(v2 + 16))(v1, v5, v4);
  sub_24658();
  (*(v2 + 8))(v1, v4);
  v0[10] = v0[2];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_98E4;

  return sub_F988();
}

uint64_t sub_98E4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_9A28, v5, v4);
}

uint64_t sub_9A28()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_9A90@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_9B74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1F7C(&qword_34560, &qword_255C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = sub_241F8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_241E8();
  v20._countAndFlagsBits = 0x100000000000003BLL;
  v20._object = 0x800000000002BD30;
  sub_241D8(v20);
  v9 = swift_projectBox();
  (*(v3 + 16))(v6, v9, v2);
  sub_24658();
  (*(v3 + 8))(v6, v2);
  v10 = v19;
  swift_getKeyPath();
  v19 = v10;
  sub_3DFC();
  sub_23F28();

  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  v21._countAndFlagsBits = v11;
  v21._object = v12;
  sub_241C8(v21);

  v22._object = 0x800000000002BD70;
  v22._countAndFlagsBits = 0x1000000000000010;
  sub_241D8(v22);
  sub_24218();
  sub_41DC();
  if (!sub_24808())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_9E2C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v135 = a1;
  v124 = a2;
  v2 = sub_1F7C(&qword_34738, &qword_25870);
  v3 = *(v2 - 8);
  v120 = v2;
  v121 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v119 = &v104 - v5;
  v123 = sub_1F7C(&qword_34740, &qword_25878);
  v140 = *(v123 - 8);
  v6 = v140[8];
  v7 = __chkstk_darwin(v123);
  v138 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v149 = &v104 - v9;
  v10 = sub_1F7C(&qword_344D0, &unk_25180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v133 = &v104 - v12;
  v13 = sub_1F7C(&qword_34560, &qword_255C0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v104 - v19;
  v21 = sub_1F7C(&qword_344D8, &unk_257A0);
  v145 = *(v21 - 8);
  v22 = *(v145 + 64);
  __chkstk_darwin(v21);
  v24 = &v104 - v23;
  v127 = sub_1F7C(&qword_344E0, &qword_25190);
  v144 = *(v127 - 8);
  v25 = *(v144 + 64);
  __chkstk_darwin(v127);
  v131 = &v104 - v26;
  *&v128 = sub_1F7C(&qword_344E8, &qword_25198);
  v143 = *(v128 - 8);
  v27 = *(v143 + 64);
  __chkstk_darwin(v128);
  v126 = (&v104 - v28);
  v122 = sub_1F7C(&qword_346C0, &unk_25780);
  v139 = *(v122 - 8);
  v29 = v139[8];
  v30 = __chkstk_darwin(v122);
  v137 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v136 = &v104 - v33;
  v34 = __chkstk_darwin(v32);
  v147 = &v104 - v35;
  __chkstk_darwin(v34);
  v148 = &v104 - v36;
  v150 = swift_projectBox();
  v37 = v14[2];
  v134 = (v14 + 2);
  v146 = v37;
  v37(v18, v150, v13);
  sub_24668();
  v38 = v14[1];
  v38(v18, v13);
  v141 = (v14 + 1);
  v142 = v38;
  swift_getKeyPath();
  v125 = v20;
  sub_24688();

  v38(v20, v13);
  v151 = xmmword_24FC0;
  v154[0] = xmmword_25440;
  v154[1] = xmmword_24FC0;
  v154[2] = v204;
  v154[3] = v205;
  *&v155 = 0xD000000000000012;
  *(&v155 + 1) = 0x800000000002BC00;
  v156 = xmmword_24FC0;
  v206 = v204;
  v207 = v205;
  v208 = v155;
  v209 = xmmword_24FC0;
  v204 = xmmword_25440;
  v205 = xmmword_24FC0;
  v39 = sub_453C();
  v107 = v39;
  sub_24408();
  sub_4590(v154);
  v40 = v133;
  sub_242E8();
  v117 = sub_242F8();
  v41 = *(v117 - 8);
  v116 = *(v41 + 56);
  v118 = v41 + 56;
  v116(v40, 0, 1, v117);
  *&v204 = &type metadata for LabeledTextField;
  *(&v204 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v131;
  v44 = OpaqueTypeConformance2;
  v113 = OpaqueTypeConformance2;
  v111 = v24;
  sub_24438();
  sub_46C4(v40, &qword_344D0, &unk_25180);
  v45 = *(v145 + 8);
  v145 += 8;
  v115 = v45;
  v112 = v21;
  v45(v24, v21);
  *&v204 = v21;
  *(&v204 + 1) = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v48 = v126;
  v47 = v127;
  v49 = v46;
  v108 = v46;
  sub_243C8();
  v50 = *(v144 + 8);
  v144 += 8;
  v114 = v50;
  v50(v43, v47);
  v152 = *(v135 + 16);
  v153 = *(v135 + 32);
  v204 = *(v135 + 16);
  LOBYTE(v205) = *(v135 + 32);
  v132 = sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v204 = v192;
  LOBYTE(v205) = v193;
  LOBYTE(v180[0]) = 1;
  v129 = sub_1F7C(&qword_346C8, &unk_25790);
  *&v192 = v47;
  *(&v192 + 1) = v49;
  v106 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v110 = swift_getOpaqueTypeConformance2();
  v130 = sub_DCF0();
  v51 = v128;
  sub_24478();

  v52 = *(v143 + 8);
  v143 += 8;
  v109 = v52;
  v52(v48, v51);
  v53 = v18;
  v105 = v18;
  v54 = v150;
  v146(v18, v150, v13);
  v55 = v125;
  sub_24668();
  v56 = v142;
  v142(v53, v13);
  swift_getKeyPath();
  sub_24688();

  v56(v55, v13);
  v57 = v204;
  v58 = v205;
  *&v204 = 0xD000000000000011;
  *(&v204 + 1) = 0x800000000002BC20;
  v205 = v151;
  v206 = v57;
  v207 = v58;
  v208 = xmmword_25450;
  v209 = v151;
  v59 = v119;
  v60 = v107;
  sub_243C8();
  v157[2] = v206;
  v157[3] = v207;
  v157[4] = v208;
  v157[5] = v209;
  v157[0] = v204;
  v157[1] = v205;
  sub_4590(v157);
  v204 = *(v135 + 16);
  LOBYTE(v205) = *(v135 + 32);
  sub_24078();
  v204 = v192;
  LOBYTE(v205) = v193;
  LOBYTE(v180[0]) = 2;
  *&v192 = &type metadata for LabeledTextField;
  *(&v192 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v61 = v120;
  sub_24478();

  (*(v121 + 8))(v59, v61);
  v62 = v105;
  v146(v105, v54, v13);
  sub_24668();
  v63 = v142;
  v142(v62, v13);
  swift_getKeyPath();
  sub_24688();

  v63(v55, v13);
  v158[0] = xmmword_25240;
  v158[1] = v151;
  v158[2] = v204;
  v158[3] = v205;
  v158[4] = xmmword_25460;
  v158[5] = v151;
  v206 = v204;
  v207 = v205;
  v208 = xmmword_25460;
  v209 = v151;
  v204 = xmmword_25240;
  v205 = v151;
  v64 = v111;
  sub_24408();
  sub_4590(v158);
  v65 = v133;
  sub_242D8();
  v116(v65, 0, 1, v117);
  v66 = v131;
  v67 = v112;
  sub_24438();
  sub_46C4(v65, &qword_344D0, &unk_25180);
  v115(v64, v67);
  v69 = v126;
  v68 = v127;
  sub_243C8();
  v114(v66, v68);
  v204 = v152;
  LOBYTE(v205) = v153;
  sub_24078();
  v204 = v192;
  LOBYTE(v205) = v193;
  LOBYTE(v192) = 3;
  v70 = v128;
  sub_24478();

  v109(v69, v70);
  v145 = 0x800000000002BC40;
  v71 = v146;
  v146(v62, v150, v13);
  v72 = v125;
  sub_24668();
  v73 = v142;
  v142(v62, v13);
  swift_getKeyPath();
  sub_24688();

  v73(v72, v13);
  v143 = *(&v204 + 1);
  v144 = v204;
  LODWORD(v135) = v205;
  v71(v62, v150, v13);
  sub_24668();
  v73(v62, v13);
  swift_getKeyPath();
  sub_24688();

  v73(v72, v13);
  v132 = *(&v204 + 1);
  v133 = v204;
  LODWORD(v131) = v205;
  v130 = 0x800000000002BC60;
  v71(v62, v150, v13);
  sub_24668();
  v73(v62, v13);
  swift_getKeyPath();
  sub_24688();

  v73(v72, v13);
  v146 = *(&v204 + 1);
  v150 = v204;
  LODWORD(v142) = v205;
  v74 = v139[2];
  v75 = v136;
  v76 = v122;
  v74(v136, v148, v122);
  v141 = v140[2];
  v77 = v138;
  v78 = v123;
  v141(v138, v149, v123);
  v79 = v137;
  v74(v137, v147, v76);
  v80 = v124;
  v81 = v75;
  v82 = v76;
  v74(v124, v81, v76);
  v83 = sub_1F7C(&qword_34748, &qword_25970);
  v141(&v80[v83[12]], v77, v78);
  v74(&v80[v83[16]], v79, v82);
  v84 = &v80[v83[20]];
  v141 = 0xD000000000000010;
  *&v162[0] = 0xD000000000000010;
  *(&v162[0] + 1) = v145;
  v85 = v151;
  v162[1] = v151;
  *&v163 = v144;
  *(&v163 + 1) = v143;
  LOBYTE(v164) = v135;
  *(&v164 + 1) = *v159;
  DWORD1(v164) = *&v159[3];
  v134 = sub_B1A4;
  *(&v164 + 1) = sub_B1A4;
  *&v165 = 0;
  v129 = sub_B1E8;
  *(&v165 + 1) = sub_B1E8;
  v166 = 0uLL;
  v167 = 0;
  v86 = v151;
  v87 = v163;
  *v84 = v162[0];
  *(v84 + 1) = v86;
  v88 = v164;
  v89 = v165;
  v90 = v166;
  *(v84 + 12) = 0;
  *(v84 + 4) = v89;
  *(v84 + 5) = v90;
  *(v84 + 2) = v87;
  *(v84 + 3) = v88;
  v91 = &v80[v83[24]];
  v128 = xmmword_25470;
  v168[0] = xmmword_25470;
  v168[1] = v85;
  *&v169 = v133;
  *(&v169 + 1) = v132;
  LOBYTE(v170) = v131;
  DWORD1(v170) = *&v160[3];
  *(&v170 + 1) = *v160;
  v127 = sub_B2CC;
  *(&v170 + 1) = sub_B2CC;
  *&v171 = 0;
  v126 = sub_B300;
  v173 = 0;
  *(&v171 + 1) = sub_B300;
  v172 = 0uLL;
  *v91 = xmmword_25470;
  *(v91 + 1) = v85;
  v92 = v169;
  v93 = v170;
  v94 = v171;
  v95 = v172;
  *(v91 + 12) = 0;
  *(v91 + 4) = v94;
  *(v91 + 5) = v95;
  *(v91 + 2) = v92;
  *(v91 + 3) = v93;
  v96 = &v80[v83[28]];
  *&v174[0] = 0xD000000000000012;
  *(&v174[0] + 1) = v130;
  v174[1] = v85;
  *&v175 = v150;
  *(&v175 + 1) = v146;
  LOBYTE(v176) = v142;
  DWORD1(v176) = *&v161[3];
  *(&v176 + 1) = *v161;
  *(&v176 + 1) = sub_B3E4;
  *&v177 = 0;
  *(&v177 + 1) = sub_B414;
  v178 = 0uLL;
  v179 = 0;
  *v96 = v174[0];
  *(v96 + 1) = v85;
  v97 = v175;
  v98 = v176;
  v99 = v177;
  v100 = v178;
  *(v96 + 12) = 0;
  *(v96 + 4) = v99;
  *(v96 + 5) = v100;
  *(v96 + 2) = v97;
  *(v96 + 3) = v98;
  sub_465C(v162, &v204, &qword_34750, &qword_25978);
  sub_465C(v168, &v204, &qword_34758, &qword_25980);
  sub_465C(v174, &v204, &qword_34760, &qword_25988);
  v101 = v139[1];
  v101(v147, v82);
  v102 = v140[1];
  v102(v149, v78);
  v101(v148, v82);
  v180[0] = 0xD000000000000012;
  v180[1] = v130;
  v181 = v151;
  v182 = v150;
  v183 = v146;
  v184 = v142;
  *v185 = *v161;
  *&v185[3] = *&v161[3];
  v186 = sub_B3E4;
  v187 = 0;
  v188 = sub_B414;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  sub_46C4(v180, &qword_34760, &qword_25988);
  v192 = v128;
  v193 = v151;
  v194 = v133;
  v195 = v132;
  v196 = v131;
  *v197 = *v160;
  *&v197[3] = *&v160[3];
  v198 = v127;
  v199 = 0;
  v200 = v126;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  sub_46C4(&v192, &qword_34758, &qword_25980);
  *&v204 = v141;
  *(&v204 + 1) = v145;
  v205 = v151;
  *&v206 = v144;
  *(&v206 + 1) = v143;
  LOBYTE(v207) = v135;
  *(&v207 + 1) = *v159;
  DWORD1(v207) = *&v159[3];
  *(&v207 + 1) = v134;
  *&v208 = 0;
  *(&v208 + 1) = v129;
  v209 = 0uLL;
  v210 = 0;
  sub_46C4(&v204, &qword_34750, &qword_25978);
  v101(v137, v82);
  v102(v138, v78);
  return (v101)(v136, v82);
}

_BYTE *sub_B1A4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2003134806;
  if (*result)
  {
    v2 = 0x6B63696C43;
  }

  v3 = 0xE400000000000000;
  if (*result)
  {
    v3 = 0xE500000000000000;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B1E8@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

char *sub_B2CC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *&aDownloadredown[8 * v2];
  v4 = *&aDownloadredown[8 * v2 + 24];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B300@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

_BYTE *sub_B3E4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 49;
  if (*result)
  {
    v2 = 51;
  }

  *a2 = v2;
  *(a2 + 8) = 0xE100000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_B414@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_B4F8()
{
  swift_getKeyPath();

  sub_1F7C(&qword_34718, &qword_25830);
  sub_1F7C(&qword_34710, &qword_25808);
  sub_4274(&qword_34720, &qword_34718, &qword_25830);
  sub_4274(&qword_34708, &qword_34710, &qword_25808);
  return sub_245F8();
}

uint64_t sub_B62C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v3._countAndFlagsBits = sub_24948();
    sub_246F8(v3);

    *a2 = 0x6B63616274736F50;
    *(a2 + 8) = 0xE900000000000020;
    *(a2 + 16) = 0;
    *(a2 + 24) = &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_B6CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 12);
  v6 = *(a1 + 26);
  v7 = *(a1 + 27);
  v8 = *(a1 + 28);
  sub_E4A0();

  return sub_24108();
}

uint64_t sub_B784@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_1F7C(&qword_344D0, &unk_25180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_1F7C(&qword_34560, &qword_255C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v35 = sub_1F7C(&qword_344D8, &unk_257A0);
  v36 = *(v35 - 8);
  v14 = *(v36 + 64);
  __chkstk_darwin(v35);
  v16 = &v33 - v15;
  v37 = sub_1F7C(&qword_344E0, &qword_25190);
  v38 = *(v37 - 8);
  v17 = *(v38 + 64);
  __chkstk_darwin(v37);
  v19 = &v33 - v18;
  v39 = sub_1F7C(&qword_344E8, &qword_25198);
  v40 = *(v39 - 8);
  v20 = *(v40 + 64);
  __chkstk_darwin(v39);
  v34 = &v33 - v21;
  v22 = swift_projectBox();
  (*(v7 + 16))(v11, v22, v6);
  sub_24668();
  v23 = *(v7 + 8);
  v23(v11, v6);
  swift_getKeyPath();
  sub_24688();

  v23(v13, v6);
  v52[1] = xmmword_24FC0;
  v52[2] = v46;
  v52[3] = v47;
  v52[4] = xmmword_25490;
  v52[5] = xmmword_24FC0;
  v48 = v46;
  v49 = v47;
  v50 = xmmword_25490;
  v51 = xmmword_24FC0;
  v52[0] = xmmword_25480;
  v46 = xmmword_25480;
  v47 = xmmword_24FC0;
  v24 = sub_453C();
  sub_24408();
  sub_4590(v52);
  sub_242E8();
  v25 = sub_242F8();
  (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
  *&v46 = &type metadata for LabeledTextField;
  *(&v46 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_24438();
  sub_46C4(v5, &qword_344D0, &unk_25180);
  (*(v36 + 8))(v16, v27);
  *&v46 = v27;
  *(&v46 + 1) = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v34;
  v30 = v37;
  sub_243C8();
  (*(v38 + 8))(v19, v30);
  v46 = *(v41 + 16);
  LOBYTE(v47) = *(v41 + 32);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24078();
  v46 = v44;
  LOBYTE(v47) = v45;
  v43 = 4;
  sub_1F7C(&qword_346C8, &unk_25790);
  *&v44 = v30;
  *(&v44 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_DCF0();
  v31 = v39;
  sub_24478();

  return (*(v40 + 8))(v29, v31);
}

uint64_t sub_BE10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v12 = *(a1 + 1);
  v13 = *(a1 + 32);
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v11 = 0;
  sub_465C(&v14, v9, &qword_34668, &qword_256D8);
  sub_465C(&v12, v9, &qword_34658, &qword_256D0);
  result = sub_244E8();
  v7 = v9[0];
  v8 = v10;
  *a2 = &unk_257C0;
  *(a2 + 8) = v4;
  *(a2 + 16) = sub_C318;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_BF14(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_24178();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_247B8();
  v1[9] = sub_247A8();
  v6 = sub_24798();
  v1[10] = v6;
  v1[11] = v5;

  return _swift_task_switch(sub_C008, v6, v5);
}

uint64_t sub_C008()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 8);
  v3 = *v1;
  *(v0 + 16) = *v1;
  *(v0 + 24) = v2;
  v4 = v2;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    sub_247F8();
    v8 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(v0 + 16, &qword_34668, &qword_256D8);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 32);
  }

  *(v0 + 96) = v3;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_C16C;

  return sub_113E8();
}

uint64_t sub_C16C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_C2B0, v5, v4);
}

uint64_t sub_C2B0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_C318@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_C3FC(uint64_t *a1)
{
  v2 = sub_24178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v7 = *a1;
  v14 = v7;
  v8 = v15;

  if ((v8 & 1) == 0)
  {
    sub_247F8();
    v9 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v14, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v6, v2);
    v7 = v13;
  }

  if (*(v7 + 33))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v12 - 2) = v7;
    *(&v12 - 8) = 0;
    v13 = v7;
    sub_3DFC();
    sub_23F18();
  }

  else
  {
    *(v7 + 33) = 0;
  }
}

uint64_t sub_C620(uint64_t *a1)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = *(a1 + 1);
  v7 = *(a1 + 32);
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_465C(&v8, v5, &qword_34668, &qword_256D8);
  sub_465C(&v6, v5, &qword_34658, &qword_256D0);
  return sub_24528();
}

uint64_t sub_C708(uint64_t *a1)
{
  v2 = sub_24178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v13 = *a1;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_247F8();
    v8 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();
    sub_46C4(&v13, &qword_34668, &qword_256D8);
    (*(v3 + 8))(v6, v2);
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_246A8();
  [v9 removeObjectForKey:v10];

  sub_12E10(1);
}

uint64_t sub_C8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1F7C(&qword_34640, &qword_256C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  v21 = *a1;
  v22 = *(a1 + 8);
  v19 = *(a1 + 1);
  v20 = *(a1 + 32);
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  sub_465C(&v21, &v17, &qword_34668, &qword_256D8);
  sub_465C(&v19, &v17, &qword_34658, &qword_256D0);
  sub_24528();
  v17 = v19;
  v18 = v20;
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v11 = 0x21u >> v16[15];
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11 & 1;
  (*(v5 + 32))(a2, v8, v4);
  result = sub_1F7C(&qword_34628, &qword_256B8);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_E934;
  v15[2] = v13;
  return result;
}

uint64_t sub_CB30(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(&v5 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_465C(&v7, v2, &qword_34670, &qword_25710);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v3 = v5;
  v4 = v6;
  v2[0] = 0x50302010005uLL >> (8 * v2[0]);
  sub_24068();
  return sub_46C4(&v5, &qword_34658, &qword_256D0);
}

uint64_t sub_CC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_244D8();
  *a1 = result;
  return result;
}

uint64_t sub_CC58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1F7C(&qword_34640, &qword_256C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  v21 = *a1;
  v22 = *(a1 + 8);
  v19 = *(a1 + 1);
  v20 = *(a1 + 32);
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  sub_465C(&v21, &v17, &qword_34668, &qword_256D8);
  sub_465C(&v19, &v17, &qword_34658, &qword_256D0);
  sub_24528();
  v17 = v19;
  v18 = v20;
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v11 = 0x30u >> v16[15];
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11 & 1;
  (*(v5 + 32))(a2, v8, v4);
  result = sub_1F7C(&qword_34628, &qword_256B8);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_DC08;
  v15[2] = v13;
  return result;
}

uint64_t sub_CEA0(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(&v5 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_465C(&v7, v2, &qword_34670, &qword_25710);
  sub_1F7C(&qword_34658, &qword_256D0);
  sub_24058();
  v3 = v5;
  v4 = v6;
  v2[0] = 0x50504030201uLL >> (8 * v2[0]);
  sub_24068();
  return sub_46C4(&v5, &qword_34658, &qword_256D0);
}

uint64_t sub_CF88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_244D8();
  *a1 = result;
  return result;
}

uint64_t sub_CFEC@<X0>(uint64_t a1@<X8>)
{
  sub_24208();
  sub_41DC();
  if (!sub_24808())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_24348();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

Swift::Int sub_D0B8()
{
  v1 = *v0;
  sub_249A8();
  sub_249B8(v1);
  return sub_249D8();
}

Swift::Int sub_D12C()
{
  v1 = *v0;
  sub_249A8();
  sub_249B8(v1);
  return sub_249D8();
}

uint64_t sub_D184()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1F7C(&qword_34560, &qword_255C0);
  swift_allocBox();
  sub_D5F8(v2, SBYTE8(v2));
  type metadata accessor for ConfigurePostbacksState();
  sub_3DFC();
  sub_24678();
  sub_1F7C(&qword_34568, &qword_255C8);
  sub_26B8(&qword_34570, &qword_255D0);
  sub_26B8(&qword_34578, &qword_255D8);
  sub_26B8(&qword_34580, &qword_255E0);
  sub_26B8(&qword_34588, &qword_255E8);
  sub_26B8(&qword_34590, &qword_255F0);
  sub_26B8(&qword_34598, &qword_255F8);
  sub_26B8(&qword_345A0, &qword_25600);
  sub_26B8(&qword_345A8, &qword_25608);
  sub_26B8(&qword_345B0, &qword_25610);
  sub_4274(&qword_345B8, &qword_345B0, &qword_25610);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C0, &qword_34588, &qword_255E8);
  swift_getOpaqueTypeConformance2();
  sub_4274(&qword_345C8, &qword_34578, &qword_255D8);
  swift_getOpaqueTypeConformance2();
  sub_24138();
}

uint64_t sub_D514@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = v3[19];
  v5 = v3[20];
  v6 = v3[21];
  v7 = v3[22];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_D784(v4, v5);
}

uint64_t sub_D598(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  sub_D784(*a1, v3);
  return sub_12B44(v2, v3, v4, v5);
}

uint64_t sub_D5F8(uint64_t a1, char a2)
{
  v4 = sub_24178();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_247F8();
    v9 = sub_24308();
    sub_24018();

    sub_24168();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_D784(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_D7C8()
{

  return sub_24528();
}

uint64_t sub_D844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_D8B8()
{
  result = qword_34630;
  if (!qword_34630)
  {
    sub_26B8(&qword_34628, &qword_256B8);
    sub_4274(&qword_34638, &qword_34640, &qword_256C0);
    sub_4274(&qword_34648, &qword_34650, &qword_256C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34630);
  }

  return result;
}

uint64_t sub_D9A4(uint64_t a1)
{
  v2 = sub_1F7C(&qword_34610, &qword_256A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1F7C(&qword_34610, &qword_256A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DACC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_1F7C(&qword_34658, &qword_256D0);
  return sub_24068();
}

uint64_t sub_DB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24148();
  *a1 = result & 1;
  return result;
}

uint64_t sub_DB64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24148();
  *a1 = result & 1;
  return result;
}

unint64_t sub_DCF0()
{
  result = qword_346D0;
  if (!qword_346D0)
  {
    sub_26B8(&qword_346C8, &unk_25790);
    sub_4180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_346D0);
  }

  return result;
}

uint64_t sub_DD7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_DDBC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4440;

  return sub_BF14(v0 + 16);
}

void *sub_DE58(void *result)
{
  v1 = result[1];
  v17 = *result;
  v2 = v1 - *result;
  if (__OFSUB__(v1, *result))
  {
    goto LABEL_31;
  }

  v4 = result[2];
  v3 = result[3];
  v5 = result[4];
  v6 = sub_E4F4();
  if (v6 >= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = &_swiftEmptyArrayStorage;
    }

    else
    {
      sub_1F7C(&qword_34730, &unk_25838);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  v11 = v8[3];

  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8);
  result = sub_24598();
  if (v7 < 0)
  {
    goto LABEL_32;
  }

  v12 = v11 >> 1;
  if (v7)
  {
    if (v1 < v17)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v1 == v17)
    {
      __break(1u);
    }

    else if (v17 < v1)
    {
      result = sub_245B8();
LABEL_29:
      __break(1u);
      __break(1u);
LABEL_30:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v17 != v1)
  {
    if (v1 < v17)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v1 == v17)
    {
      goto LABEL_30;
    }

    sub_245B8();
  }

  result = v8;
  v13 = v8[3];
  if (v13 >= 2)
  {
    v14 = v13 >> 1;
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (v15)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v8[2] = v16;
  }

  return result;
}

unint64_t sub_E3E8()
{
  result = qword_34700;
  if (!qword_34700)
  {
    sub_26B8(&qword_346F8, &qword_25800);
    sub_4274(&qword_34708, &qword_34710, &qword_25808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34700);
  }

  return result;
}

unint64_t sub_E4A0()
{
  result = qword_34728;
  if (!qword_34728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34728);
  }

  return result;
}

uint64_t sub_E4F4()
{
  sub_1F7C(&qword_346E0, &qword_257F0);
  sub_4274(&qword_346E8, &qword_346F0, &qword_257F8);
  sub_24598();
  sub_245B8();
  return 0;
}

uint64_t sub_E67C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_4750;

  return sub_96F8(v0);
}

uint64_t getEnumTagSinglePayload for ConfigureDevelopmentPostbacks.FocusedTextField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigureDevelopmentPostbacks.FocusedTextField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E8C8()
{
  result = qword_34780;
  if (!qword_34780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34780);
  }

  return result;
}

uint64_t sub_E938(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_E950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_E96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_E9BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EA48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v39 = sub_1F7C(&qword_34790, &qword_25C70);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  v4 = __chkstk_darwin(v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = *a1;
  v9 = a1[1];
  if (a1[2] < 0)
  {
    v15 = a1[1];

    v34 = 0;
    v35 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v10 = a1[3];
    sub_41DC();

    if (!sub_24808())
    {
      v11 = [objc_opt_self() mainBundle];
    }

    LOWORD(v32) = 256;
    v31 = 0;
    v8 = sub_24348();
    v9 = v12;
    v34 = v13;
    v35 = v14;
  }

  v33 = v9;
  v17 = a1[4];
  v16 = a1[5];
  v19 = a1[6];
  v18 = a1[7];

  v20 = sub_ED90();
  __chkstk_darwin(v20);
  v32 = &protocol witness table for Text;
  v30[1] = v30;
  v31 = &type metadata for Text;
  v30[0] = sub_F094;
  sub_24698();
  v22 = v37;
  v21 = v38;
  v23 = *(v37 + 16);
  v24 = v39;
  v23(v38, v7, v39);
  v25 = v36;
  *v36 = v8;
  v25[1] = v9;
  LOBYTE(v18) = v34 & 1;
  *(v25 + 16) = v34 & 1;
  v25[3] = v35;
  v26 = sub_1F7C(&qword_34798, &qword_25C78);
  v23(v25 + *(v26 + 48), v21, v24);
  v27 = v33;
  sub_F09C(v8, v33, v18);
  v28 = *(v22 + 8);

  v28(v7, v24);
  v28(v21, v24);
  sub_439C(v8, v27, v18);
}

uint64_t sub_ED90()
{
  v1 = v0[10];
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v2 = *v0;
    v3 = v0[1];
    if (v0[2] < 0)
    {
      v9 = v0[1];

      return v2;
    }

    v4 = v0[3];
    sub_41DC();

    if (!sub_24808())
    {
      v5 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    v2 = v0[8];
    v6 = v0[9];
    v7 = v0[11];
    if ((v1 & 0x8000000000000000) != 0)
    {
      v10 = v0[11];
      sub_F0AC(v0[8], v0[9], v0[10]);
      return v2;
    }

    sub_41DC();

    if (!sub_24808())
    {
      v8 = [objc_opt_self() mainBundle];
    }
  }

  return sub_24348();
}

uint64_t sub_EF28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (a1[2] < 0)
  {
    v11 = a1[1];

    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v5 = a1[3];
    sub_41DC();

    if (!sub_24808())
    {
      v6 = [objc_opt_self() mainBundle];
    }

    result = sub_24348();
    v3 = result;
    v4 = v10;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_F020@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v4 = v1[5];
  v8[4] = v1[4];
  v8[5] = v4;
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  *a1 = sub_241B8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_1F7C(&qword_34788, &qword_25C68);
  return sub_EA48(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_F09C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v3 = vars8;
  }
}

unint64_t sub_F0F0()
{
  result = qword_347A0;
  if (!qword_347A0)
  {
    sub_26B8(&qword_347A8, &qword_25C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_347A0);
  }

  return result;
}

uint64_t sub_F154()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_F1D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_F268(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_24958() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_127DC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_F39C(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_F47C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 32);
}

uint64_t sub_F4EC()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 33);
}

uint64_t sub_F55C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 144);
}

uint64_t sub_F5CC(uint64_t result)
{
  if (*(v1 + 144) == (result & 1))
  {
    *(v1 + 144) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_F6AC()
{
  swift_getKeyPath();
  v5 = v0;
  sub_3DFC();
  sub_23F28();

  v1 = v0[19];
  v3 = v5[21];
  v2 = v5[22];
  sub_D784(v1, v5[20]);
  return v1;
}

uint64_t sub_F744()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_F7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_F858(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (sub_24958() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_F988()
{
  v1[3] = v0;
  v2 = sub_23EE8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(sub_1F7C(&qword_34958, &qword_264E8) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_FA8C, 0, 0);
}

uint64_t sub_FA8C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_3DFC();
  sub_23F28();

  v2 = *(v1 + 16);
  v0[9] = v2;
  v3 = *(v1 + 24);
  v0[10] = v3;
  v4 = async function pointer to static DeveloperMode.retrieveDeveloperPostbackURL(forBundleID:)[1];

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_FB94;
  v6 = v0[8];

  return static DeveloperMode.retrieveDeveloperPostbackURL(forBundleID:)(v6, v2, v3);
}

uint64_t sub_FB94()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_FFF0;
  }

  else
  {
    v3 = sub_FCA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FCA8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_18F9C(v0[8], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_46C4(v0[7], &qword_34958, &qword_264E8);
    sub_18E44();
    v5 = swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_46C4(v4, &qword_34958, &qword_264E8);
    if (qword_34400 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = sub_24048();
    sub_17824(v8, qword_38D60);

    swift_errorRetain();
    v9 = sub_24028();
    v10 = sub_247E8();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[10];
    if (v11)
    {
      v13 = v0[9];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v14 = 136315394;
      v17 = sub_178B0(v13, v12, &v35);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_0, v9, v10, "Failed to retrieve developer postback url for bundle id: %s with error: %@", v14, 0x16u);
      sub_46C4(v15, &qword_34950, &qword_26370);

      sub_1B870(v16);
    }

    else
    {
      v28 = v0[10];
    }

    v29 = v0[3];
    sub_13814(v5);
  }

  else
  {
    v19 = v0[10];
    v21 = v0[7];
    v20 = v0[8];
    v23 = v0[5];
    v22 = v0[6];
    v25 = v0[3];
    v24 = v0[4];

    (*(v23 + 32))(v22, v21, v24);
    v26 = sub_23EB8();
    sub_F858(v26, v27);
    (*(v23 + 8))(v22, v24);
    sub_46C4(v20, &qword_34958, &qword_264E8);
  }

  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];

  v33 = v0[1];

  return v33();
}

uint64_t sub_FFF0()
{
  v22 = v0;
  v1 = v0[12];
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = sub_24048();
  sub_17824(v3, qword_38D60);

  swift_errorRetain();
  v4 = sub_24028();
  v5 = sub_247E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_178B0(v8, v7, &v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_0, v4, v5, "Failed to retrieve developer postback url for bundle id: %s with error: %@", v9, 0x16u);
    sub_46C4(v10, &qword_34950, &qword_26370);

    sub_1B870(v11);
  }

  else
  {
    v14 = v0[10];
  }

  v15 = v0[3];
  sub_13814(v1);

  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10234()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_102B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_10348(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (v6 = *(v2 + 64), (sub_24958() & 1) != 0))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10478()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 72);
  v1 = *(v4 + 80);

  return v2;
}

uint64_t sub_104F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1058C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (v6 = *(v2 + 80), (sub_24958() & 1) != 0))
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_106BC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 96);
  v1 = *(v4 + 104);

  return v2;
}

uint64_t sub_1073C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_107D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (v6 = *(v2 + 104), (sub_24958() & 1) != 0))
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10900()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 88);
}

uint64_t sub_10970@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_10A10(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_10AF0()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 89);
}

uint64_t sub_10B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_10C00(uint64_t result)
{
  if (*(v1 + 89) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_10CD8()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  return *(v0 + 112);
}

uint64_t sub_10D48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_10DE8(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    *(v1 + 112) = a1 & 1;
    swift_getKeyPath();
    sub_3DFC();
    sub_23F28();

    if (*(v1 + 112))
    {
      v4 = &off_31010;
    }

    else
    {
      v4 = &off_30FE8;
    }

    return sub_11048(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_10F2C()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v1 = *(v0 + 136);
}

uint64_t sub_10FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 136);
}

uint64_t sub_1101C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_11048(v4);
}

uint64_t sub_11048(uint64_t a1)
{
  if (sub_18A48(*(v1 + 136), a1))
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_1115C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 120);
  v1 = *(v4 + 128);

  return v2;
}

uint64_t sub_111DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_11270(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_112B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120) == a1 && *(v2 + 128) == a2;
  if (v5 || (v6 = *(v2 + 128), (sub_24958() & 1) != 0))
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }
}

uint64_t sub_113E8()
{
  v1[13] = v0;
  v2 = sub_23FD8();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_23FE8();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v8 = sub_23FC8();
  v1[22] = v8;
  v9 = *(v8 - 8);
  v1[23] = v9;
  v10 = *(v9 + 64) + 15;
  v1[24] = swift_task_alloc();
  v11 = sub_24008();
  v1[25] = v11;
  v12 = *(v11 - 8);
  v1[26] = v12;
  v13 = *(v12 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v14 = sub_23FA8();
  v1[29] = v14;
  v15 = *(v14 - 8);
  v1[30] = v15;
  v16 = *(v15 + 64) + 15;
  v1[31] = swift_task_alloc();
  v17 = *(*(sub_1F7C(&qword_34958, &qword_264E8) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v18 = sub_23EE8();
  v1[33] = v18;
  v19 = *(v18 - 8);
  v1[34] = v19;
  v20 = *(v19 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_116DC, 0, 0);
}

uint64_t sub_116DC()
{
  v112 = v0;
  v1 = v0[34];
  v108 = v0[33];
  v2 = v0[32];
  v3 = v0[13];
  swift_getKeyPath();
  v0[37] = OBJC_IVAR____TtC33AdAttributionKitDeveloperSettings23ConfigurePostbacksState___observationRegistrar;
  v0[2] = v3;
  v0[38] = sub_3DFC();
  sub_23F28();

  v0[39] = v3[2];
  v0[40] = v3[3];
  swift_getKeyPath();
  v0[3] = v3;

  sub_23F28();

  v4 = v3[5];
  v5 = v3[6];

  sub_23ED8();

  if ((*(v1 + 48))(v2, 1, v108) == 1)
  {
    sub_46C4(v0[32], &qword_34958, &qword_264E8);
LABEL_29:
    sub_18E44();
    v23 = swift_allocError();
    *v50 = 1;
    swift_willThrow();
LABEL_32:
    if (qword_34400 != -1)
    {
      swift_once();
    }

    v51 = v0[40];
    v52 = sub_24048();
    sub_17824(v52, qword_38D60);

    swift_errorRetain();
    v53 = sub_24028();
    v54 = sub_247E8();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[40];
    if (v55)
    {
      v57 = v0[39];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v111 = v60;
      *v58 = 136315394;
      v61 = sub_178B0(v57, v56, &v111);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2112;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v62;
      *v59 = v62;
      _os_log_impl(&dword_0, v53, v54, "Failed to create development postbacks for bundle id: %s with error: %@", v58, 0x16u);
      sub_46C4(v59, &qword_34950, &qword_26370);

      sub_1B870(v60);
    }

    else
    {
      v63 = v0[40];
    }

    v64 = v0[13];
    sub_13814(v23);

    v66 = v0[35];
    v65 = v0[36];
    v68 = v0[31];
    v67 = v0[32];
    v70 = v0[27];
    v69 = v0[28];
    v71 = v0[24];
    v73 = v0[20];
    v72 = v0[21];
    v74 = v0[17];
    v110 = v0[16];

    v75 = v0[1];

    return v75();
  }

  (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
  v6 = sub_23EC8();
  if (v7)
  {
    if (v6 == 1886680168 && v7 == 0xE400000000000000)
    {
      goto LABEL_10;
    }

    v8 = sub_24958();

    if (v8)
    {
      goto LABEL_11;
    }
  }

  v9 = v0[36];
  v10 = sub_23EC8();
  if (!v11)
  {
    goto LABEL_28;
  }

  if (v10 == 0x7370747468 && v11 == 0xE500000000000000)
  {
LABEL_10:

    goto LABEL_11;
  }

  v49 = sub_24958();

  if ((v49 & 1) == 0)
  {
LABEL_28:
    (*(v0[34] + 8))(v0[36], v0[33]);
    goto LABEL_29;
  }

LABEL_11:
  v12 = v0[13];
  swift_getKeyPath();
  v0[4] = v12;
  sub_23F28();

  v13 = *(v12 + 64);
  v14 = *(v12 + 56) & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  if (!v14)
  {
    v19 = v0[36];
    v20 = v0[33];
    v21 = v0[34];
    sub_18E44();
    v23 = swift_allocError();
    v24 = 2;
    goto LABEL_31;
  }

  v15 = v0[13];
  swift_getKeyPath();
  v0[5] = v15;
  sub_23F28();

  v16 = *(v15 + 72);
  v17 = *(v15 + 80);

  sub_13F90(v16, v17);
  if (v18)
  {
    v19 = v0[36];
    v20 = v0[33];
    v21 = v0[34];
    sub_18E44();
    v23 = swift_allocError();
    v24 = 3;
LABEL_31:
    *v22 = v24;
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    goto LABEL_32;
  }

  v25 = v0[13];
  swift_getKeyPath();
  v0[6] = v25;
  sub_23F28();

  v26 = *(v25 + 96);
  v27 = *(v25 + 104);

  v28 = sub_246E8();

  if (v28 != 2)
  {
    v19 = v0[36];
    v20 = v0[33];
    v21 = v0[34];
    sub_18E44();
    v23 = swift_allocError();
    v24 = 4;
    goto LABEL_31;
  }

  v93 = v25;
  v94 = v12;
  v29 = v0[13];
  swift_getKeyPath();
  v0[7] = v29;
  sub_23F28();

  v30 = *(v29 + 136);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v0[30];
    v33 = v0[26];
    v111 = &_swiftEmptyArrayStorage;

    sub_18850(0, v31, 0);
    v34 = &_swiftEmptyArrayStorage;
    v95 = enum case for ConversionValueTier.fine(_:);
    v103 = *(v33 + 104);
    v96 = enum case for ConversionValueTier.coarse(_:);
    v101 = enum case for ConversionValueTier.none(_:);
    v106 = v32;
    v99 = (v33 + 32);
    v35 = (v30 + 36);
    do
    {
      v107 = v31;
      v109 = v34;
      v36 = v101;
      if (*(v35 - 3))
      {
        v36 = v96;
        if (*(v35 - 3) != 1)
        {
          v36 = v95;
        }
      }

      v37 = *(v35 - 4);
      v38 = *(v35 - 2);
      v39 = *(v35 - 1);
      v40 = *v35;
      v41 = v0[31];
      v43 = v0[27];
      v42 = v0[28];
      v44 = v0[25];
      v103(v43, v36, v44);
      (*v99)(v42, v43, v44);
      sub_23F98();
      v34 = v109;
      v111 = v109;
      v46 = v109[2];
      v45 = v109[3];
      if (v46 >= v45 >> 1)
      {
        sub_18850(v45 > 1, v46 + 1, 1);
        v34 = v111;
      }

      v47 = v0[31];
      v48 = v0[29];
      v34[2] = v46 + 1;
      (*(v106 + 32))(v34 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v46, v47, v48);
      v35 += 5;
      v31 = v107 - 1;
    }

    while (v107 != 1);
  }

  v77 = v0[13];
  sub_14290();
  v98 = v0[20];
  v100 = v0[21];
  v78 = v0[19];
  v97 = v0[18];
  v79 = v0[13];
  (*(v0[34] + 16))(v0[35], v0[36], v0[33]);
  swift_getKeyPath();
  v0[8] = v79;
  sub_23F28();

  v104 = *(v94 + 64);
  v105 = *(v94 + 56);
  swift_getKeyPath();
  v0[9] = v79;

  sub_23F28();

  v80 = *(v93 + 104);
  v102 = *(v93 + 96);
  swift_getKeyPath();
  v0[10] = v79;

  sub_23F28();

  v81 = &enum case for InteractionType.click(_:);
  if (!*(v79 + 88))
  {
    v81 = &enum case for InteractionType.view(_:);
  }

  (*(v78 + 104))(v98, *v81, v97);
  (*(v78 + 32))(v100, v98, v97);
  swift_getKeyPath();
  v0[11] = v79;
  sub_23F28();

  v82 = *(&off_31F78 + *(v79 + 89));
  v83 = v0[35];
  v84 = v0[24];
  v85 = v0[21];
  v87 = v0[16];
  v86 = v0[17];
  v89 = v0[14];
  v88 = v0[15];
  (*(v88 + 104))(v87, *v82, v89);
  (*(v88 + 32))(v86, v87, v89);

  sub_23FB8();
  v90 = async function pointer to static DeveloperMode.createDevelopmentPostbacks(with:)[1];
  v91 = swift_task_alloc();
  v0[41] = v91;
  *v91 = v0;
  v91[1] = sub_12234;
  v92 = v0[24];

  return static DeveloperMode.createDevelopmentPostbacks(with:)(v92);
}

uint64_t sub_12234()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_1250C;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_12350;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_12350()
{
  v1 = v0[13];
  if (*(v1 + 33))
  {
    v2 = v0[42];
    v4 = v0[37];
    v3 = v0[38];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = 0;
    v0[12] = v1;
    sub_23F18();
  }

  else
  {
    *(v1 + 33) = 0;
  }

  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v12 = v0[13];
  sub_1466C();
  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  v14 = v0[35];
  v13 = v0[36];
  v16 = v0[31];
  v15 = v0[32];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[24];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[17];
  v25 = v0[16];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1250C()
{
  v33 = v0;
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[42];
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v5 = v0[40];
  v6 = sub_24048();
  sub_17824(v6, qword_38D60);

  swift_errorRetain();
  v7 = sub_24028();
  v8 = sub_247E8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[40];
  if (v9)
  {
    v11 = v0[39];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v12 = 136315394;
    v15 = sub_178B0(v11, v10, &v32);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_0, v7, v8, "Failed to create development postbacks for bundle id: %s with error: %@", v12, 0x16u);
    sub_46C4(v13, &qword_34950, &qword_26370);

    sub_1B870(v14);
  }

  else
  {
    v17 = v0[40];
  }

  v18 = v0[13];
  sub_13814(v4);

  v20 = v0[35];
  v19 = v0[36];
  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[27];
  v23 = v0[28];
  v25 = v0[24];
  v27 = v0[20];
  v26 = v0[21];
  v28 = v0[17];
  v31 = v0[16];

  v29 = v0[1];

  return v29();
}

uint64_t sub_127DC()
{
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 24);
  v3 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if ((*(v0 + 32) ^ (v3 == 0)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23F18();
  }

  else
  {
    *(v0 + 32) = v3 == 0;
  }

  return result;
}

uint64_t sub_12914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_129B4(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
  }

  return result;
}

uint64_t sub_12A9C(uint64_t a1, char a2)
{
  *(a1 + 112) = a2 & 1;
  swift_getKeyPath();
  sub_3DFC();
  sub_23F28();

  if (*(a1 + 112))
  {
    v3 = &off_31010;
  }

  else
  {
    v3 = &off_30FE8;
  }

  return sub_11048(v3);
}

uint64_t sub_12B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[19];
  v9 = v4[20];
  v12 = v4[21];
  v11 = v4[22];
  if (!v9)
  {
    if (!a2)
    {
      v16 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v19 = v4[21];
    v20 = v4[22];
    sub_D784(v4[19], v4[20]);
    sub_D784(a1, a2);
    sub_D844(v10, v9);
    sub_D844(a1, a2);
    goto LABEL_7;
  }

  v13 = v4[21];
  v14 = v4[22];
  sub_D784(v4[19], v4[20]);
  sub_D784(v10, v9);
  sub_D784(a1, a2);
  v15 = sub_24228();

  sub_D844(v10, v9);

  if ((v15 & 1) == 0)
  {
LABEL_7:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DFC();
    sub_23F18();
    sub_D844(a1, a2);
  }

  v10 = v4[19];
  v16 = v4[20];
  v18 = v4[21];
  v17 = v4[22];
LABEL_9:
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;

  return sub_D844(v10, v16);
}

uint64_t sub_12D98()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = &_swiftEmptyArrayStorage;
  *(v0 + 144) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  sub_23F38();
  sub_12E10(0);
  return v0;
}

uint64_t sub_12E10(char a1)
{
  v2 = v1;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_246A8();
  v5 = [v3 dataForKey:v4];

  if (v5)
  {
    v6 = sub_23F08();
    v8 = v7;

    v9 = sub_23E68();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_23E58();
    sub_177D0();
    sub_23E48();
    sub_1785C(v6, v8);

    v12 = v62;
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v16 = v66;
    v17 = v67;
    v18 = v68;
    v60 = v69;
    v54 = v70;
    v59 = v71;
    v57 = v72;
    v56 = v73;
    v48 = v74;
    v47 = v75 | (v76 << 32);
    v53 = v77;
    v58 = v78;
    v55 = v79;
    v61[0] = xmmword_25CA0;
    memset(&v61[1], 0, 96);
    sub_46C4(v61, &qword_34940, &qword_26368);
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v60 = 0;
    v54 = 0;
    v59 = 0;
    v57 = 0;
    v56 = 0;
    v48 = 0;
    v53 = 0;
    v58 = 0;
    v55 = 0;
    v47 = 0;
    v13 = 1;
  }

  if ((a1 & 1) == 0)
  {
    if (v13 >= 2)
    {

      v19 = v12;
      v20 = v13;
    }

    else
    {

      v19 = 0;
      v20 = 0xE000000000000000;
    }

    sub_F268(v19, v20);
  }

  if (v13 == 1 || !v15)
  {

    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {

    v21 = v14;
    v22 = v15;
  }

  sub_F858(v21, v22);
  if (v13 == 1 || !v17)
  {

    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {

    v23 = v16;
    v24 = v17;
  }

  sub_10348(v23, v24);
  if (v13 == 1 || !v60)
  {

    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {

    v25 = v18;
    v26 = v60;
  }

  sub_1058C(v25, v26);
  v50 = v17;
  if (v13 == 1 || !v59)
  {

    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {

    v27 = v54;
    v28 = v59;
  }

  v49 = v18;
  v52 = v16;
  v29 = v13 != 1;
  sub_107D0(v27, v28);
  v46 = v15;
  if ((v29 & v57) == v2[88])
  {
    v2[88] = v29 & v57;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v62 = v2;
    sub_3DFC();
    sub_23F18();
  }

  if (v56 == 3 || v13 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v56;
  }

  if (v2[89] != v32)
  {
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    v62 = v2;
    sub_3DFC();
    sub_23F18();
  }

  if (v13 == 1 || !v58)
  {

    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {

    v34 = v53;
    v35 = v58;
  }

  sub_112B8(v34, v35);
  if ((v29 & v48) == v2[112])
  {
    v2[112] = v29 & v48;
    swift_getKeyPath();
    v62 = v2;
    sub_3DFC();
    sub_23F28();

    v39 = v50;
    if (v2[112])
    {
      v40 = &off_31010;
    }

    else
    {
      v40 = &off_30FE8;
    }

    sub_11048(v40);
    v37 = v14;
    v38 = v46;
  }

  else
  {
    v36 = swift_getKeyPath();
    __chkstk_darwin(v36);
    v62 = v2;
    sub_3DFC();
    sub_23F18();

    v37 = v14;
    v38 = v15;
    v39 = v50;
  }

  v41 = v55;
  if (v13 == 1 || !v55)
  {
    goto LABEL_53;
  }

  swift_getKeyPath();
  v62 = v2;
  sub_3DFC();

  sub_23F28();

  v42 = *(v55 + 16);
  if (!v42)
  {
    goto LABEL_52;
  }

  v43 = 3;
  if (!v2[112])
  {
    v43 = 1;
  }

  v44 = v55;
  if (v42 != v43)
  {
LABEL_52:

LABEL_53:
    swift_getKeyPath();
    v62 = v2;
    sub_3DFC();
    sub_23F28();

    if (v2[112])
    {
      v44 = &off_31010;
    }

    else
    {
      v44 = &off_30FE8;
    }

    v41 = v55;
  }

  sub_11048(v44);
  v62 = v12;
  v63 = v13;
  v64 = v37;
  v65 = v38;
  v66 = v52;
  v67 = v39;
  v68 = v49;
  v69 = v60;
  v70 = v54;
  v71 = v59;
  v72 = v57;
  v73 = v56;
  v74 = v48;
  v76 = BYTE4(v47);
  v75 = v47;
  v77 = v53;
  v78 = v58;
  v79 = v41;
  return sub_46C4(&v62, &qword_34940, &qword_26368);
}

uint64_t sub_13814(uint64_t a1)
{
  v56 = a1;
  v2 = sub_1F7C(&qword_34980, &qword_26500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v51 - v4;
  v6 = sub_23FF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v51 - v12;
  v14 = sub_241F8();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_24208();
  v18 = v17;
  v53 = v19;
  v54 = v16;
  v21 = v20;
  v22 = *(v1 + 144);
  v55 = v5;
  if (v22 == 1)
  {
    *(v1 + 144) = 1;
  }

  else
  {
    v51[0] = swift_getKeyPath();
    v51[1] = v51;
    v52 = v18;
    __chkstk_darwin(v51[0]);
    v51[-2] = v1;
    LOBYTE(v51[-1]) = 1;
    v58 = v1;
    sub_3DFC();
    sub_23F18();
    v18 = v52;
  }

  v23 = v56;
  v58 = v56;
  swift_errorRetain();
  sub_1F7C(&qword_34988, &qword_26508);
  if (swift_dynamicCast())
  {

    if (v57 > 2u || v57)
    {
      v32 = sub_24208();
      v33 = v45 & 1;
    }

    else
    {
      sub_241E8();
      v61._object = 0x800000000002C120;
      v61._countAndFlagsBits = 0x100000000000003FLL;
      v41 = v1;
      sub_241D8(v61);
      swift_getKeyPath();
      v58 = v1;
      sub_3DFC();
      sub_23F28();

      v42 = *(v1 + 16);
      v43 = *(v41 + 24);

      v62._countAndFlagsBits = v42;
      v62._object = v43;
      sub_241C8(v62);

      v63._countAndFlagsBits = 781811938;
      v63._object = 0xA400000000000000;
      sub_241D8(v63);
      v32 = sub_24218();
      v33 = v44 & 1;
    }

    return sub_12B44(v32, v34, v33, v35);
  }

  v58 = v23;
  swift_errorRetain();
  v24 = v55;
  v25 = swift_dynamicCast();
  v26 = *(v7 + 56);
  if (!v25)
  {
    v26(v24, 1, 1, v6);
    sub_46C4(v24, &qword_34980, &qword_26500);
    v32 = v54;
    v33 = v53 & 1;
    v34 = v18;
    v35 = v21;
    return sub_12B44(v32, v34, v33, v35);
  }

  v26(v24, 0, 1, v6);
  (*(v7 + 32))(v13, v24, v6);
  (*(v7 + 16))(v11, v13, v6);
  v27 = (*(v7 + 88))(v11, v6);
  if (v27 == enum case for DeveloperModeError.unknown(_:))
  {
    goto LABEL_10;
  }

  if (v27 == enum case for DeveloperModeError.appNotInstalled(_:))
  {

    sub_241E8();
    v59._object = 0x800000000002BF80;
    v59._countAndFlagsBits = 0xD000000000000014;
    v36 = v1;
    sub_241D8(v59);
    swift_getKeyPath();
    v58 = v1;
    sub_3DFC();
    sub_23F28();

    v37 = *(v1 + 16);
    v38 = *(v36 + 24);

    v60._countAndFlagsBits = v37;
    v60._object = v38;
    sub_241C8(v60);

    v39 = " postback copy URL.";
    v40._countAndFlagsBits = 0xD00000000000003CLL;
LABEL_20:
    v40._object = (v39 | 0x8000000000000000);
    sub_241D8(v40);
    v28 = sub_24218();
    v29 = v50 & 1;
    goto LABEL_21;
  }

  if (v27 == enum case for DeveloperModeError.developerPostbackCopyURLMalformed(_:))
  {

    sub_241E8();
    v64._object = 0x800000000002BF80;
    v64._countAndFlagsBits = 0xD000000000000014;
    v47 = v1;
    sub_241D8(v64);
    swift_getKeyPath();
    v58 = v1;
    sub_3DFC();
    sub_23F28();

    v48 = *(v1 + 16);
    v49 = *(v47 + 24);

    v65._countAndFlagsBits = v48;
    v65._object = v49;
    sub_241C8(v65);

    v39 = "App with bundle id '";
    v40._countAndFlagsBits = 0xD000000000000023;
    goto LABEL_20;
  }

  (*(v7 + 8))(v11, v6);
LABEL_10:
  v28 = v54;
  v29 = v53 & 1;
  v30 = v18;
  v31 = v21;
LABEL_21:
  sub_12B44(v28, v30, v29, v31);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_13F90(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24878();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_17E58(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_14290()
{
  v1 = v0;
  swift_getKeyPath();
  v33[0] = v0;
  sub_3DFC();
  sub_23F28();

  v2 = *(v0 + 128);
  v3 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  swift_getKeyPath();
  v33[0] = v0;
  sub_23F28();

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = HIBYTE(v6) & 0xF;
  v9 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_70;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v27 = *(v1 + 128);

    v28 = sub_17E58(v7, v6, 10);
    v30 = v29;

    if (v30)
    {
      goto LABEL_70;
    }

    return v28;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v33[0] = *(v1 + 120);
    v33[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (!v8)
      {
LABEL_78:
        __break(1u);
        return result;
      }

      if (--v8)
      {
        result = 0;
        v21 = v33 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (!is_mul_ok(result, 0xAuLL))
          {
            break;
          }

          v15 = __CFADD__(10 * result, v22);
          result = 10 * result + v22;
          if (v15)
          {
            break;
          }

          ++v21;
          if (!--v8)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v7 == 45)
    {
      if (!v8)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (--v8)
      {
        result = 0;
        v16 = v33 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (!is_mul_ok(result, 0xAuLL))
          {
            break;
          }

          v15 = 10 * result >= v17;
          result = 10 * result - v17;
          if (!v15)
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v8)
    {
      result = 0;
      v24 = v33;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        if (!is_mul_ok(result, 0xAuLL))
        {
          break;
        }

        v15 = __CFADD__(10 * result, v25);
        result = 10 * result + v25;
        if (v15)
        {
          break;
        }

        ++v24;
        if (!--v8)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v8 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v31 = *(v1 + 120);
      v32 = *(v1 + 128);
      result = sub_24878();
      v8 = result;
    }

    v11 = *v8;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        v18 = v9 - 1;
        if (v9 != 1)
        {
          result = 0;
          if (!v8)
          {
            goto LABEL_69;
          }

          v19 = (v8 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            if (!is_mul_ok(result, 0xAuLL))
            {
              break;
            }

            v15 = __CFADD__(10 * result, v20);
            result = 10 * result + v20;
            if (v15)
            {
              break;
            }

            ++v19;
            if (!--v18)
            {
LABEL_60:
              LOBYTE(v8) = 0;
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    if (v11 == 45)
    {
      if (v9 >= 1)
      {
        v12 = v9 - 1;
        if (v9 != 1)
        {
          result = 0;
          if (!v8)
          {
            goto LABEL_69;
          }

          v13 = (v8 + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            if (!is_mul_ok(result, 0xAuLL))
            {
              break;
            }

            v15 = 10 * result >= v14;
            result = 10 * result - v14;
            if (!v15)
            {
              break;
            }

            ++v13;
            if (!--v12)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v9)
    {
      result = 0;
      if (!v8)
      {
        goto LABEL_69;
      }

      while (1)
      {
        v23 = *v8 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(result, 0xAuLL))
        {
          break;
        }

        v15 = __CFADD__(10 * result, v23);
        result = 10 * result + v23;
        if (v15)
        {
          break;
        }

        ++v8;
        if (!--v9)
        {
          goto LABEL_60;
        }
      }
    }
  }

LABEL_68:
  result = 0;
  LOBYTE(v8) = 1;
LABEL_69:
  v34 = v8;
  if (v8)
  {
LABEL_70:
    sub_18E44();
    swift_allocError();
    *v26 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1466C()
{
  swift_getKeyPath();
  v27[0] = v0;
  sub_3DFC();
  sub_23F28();

  v25 = *(v0 + 24);
  v26 = *(v0 + 16);
  swift_getKeyPath();
  v27[0] = v0;

  sub_23F28();

  v23 = *(v0 + 48);
  v24 = *(v0 + 40);
  swift_getKeyPath();

  sub_23F28();

  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  swift_getKeyPath();
  v27[0] = v0;

  sub_23F28();

  v19 = *(v0 + 80);
  v20 = *(v0 + 72);
  swift_getKeyPath();

  sub_23F28();

  v1 = *(v0 + 104);
  v18 = *(v0 + 96);
  swift_getKeyPath();
  v27[0] = v0;

  sub_23F28();

  v17 = *(v0 + 88);
  swift_getKeyPath();
  sub_23F28();

  v2 = *(v0 + 89);
  swift_getKeyPath();
  v27[0] = v0;
  sub_23F28();

  v3 = *(v0 + 112);
  swift_getKeyPath();
  sub_23F28();

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  swift_getKeyPath();
  v27[0] = v0;

  sub_23F28();

  v6 = *(v0 + 136);
  v27[0] = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v21;
  v27[6] = v20;
  v27[7] = v19;
  v27[8] = v18;
  v27[9] = v1;
  v28 = v17;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v7 = sub_23E98();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  sub_23E88();
  sub_18E98();
  v10 = sub_23E78();
  v12 = v11;

  sub_18EEC(v27);
  v13 = [objc_opt_self() standardUserDefaults];
  isa = sub_23EF8().super.isa;
  v15 = sub_246A8();
  [v13 setObject:isa forKey:v15];

  return sub_1785C(v10, v12);
}

uint64_t sub_14BD0(uint64_t a1)
{
  v2 = sub_1BCAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14C0C(uint64_t a1)
{
  v2 = sub_1BCAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14C48(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_1F7C(&qword_34AA8, &qword_265B8);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_1F7C(&qword_34AB0, &qword_265C0);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_1F7C(&qword_34AB8, &qword_265C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BC58();
  sub_249F8();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1BCAC();
    sub_248F8();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1BD00();
    sub_248F8();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_14F24()
{
  if (*v0)
  {
    result = 0x6B63696C63;
  }

  else
  {
    result = 2003134838;
  }

  *v0;
  return result;
}

uint64_t sub_14F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_24958() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63696C63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24958();

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

uint64_t sub_15038(uint64_t a1)
{
  v2 = sub_1BC58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15074(uint64_t a1)
{
  v2 = sub_1BC58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_150B0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_150EC(uint64_t a1)
{
  v2 = sub_1BD00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15128(uint64_t a1)
{
  v2 = sub_1BD00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19720(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_151CC(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_1F7C(&qword_34A58, &qword_26580);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_1F7C(&qword_34A60, &qword_26588);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1F7C(&qword_34A68, &qword_26590);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_1F7C(&qword_34A70, &qword_26598);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BB08();
  sub_249F8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1BBB0();
      sub_248F8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1BB5C();
      v21 = v27;
      sub_248F8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1BC04();
    sub_248F8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1554C()
{
  v1 = 0x6F6C6E776F646572;
  if (*v0 != 1)
  {
    v1 = 0x656761676E656572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F64;
  }
}

uint64_t sub_155B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_155E8(uint64_t a1)
{
  v2 = sub_1BB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15624(uint64_t a1)
{
  v2 = sub_1BB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15660(uint64_t a1)
{
  v2 = sub_1BC04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1569C(uint64_t a1)
{
  v2 = sub_1BC04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_156D8(uint64_t a1)
{
  v2 = sub_1BBB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15714(uint64_t a1)
{
  v2 = sub_1BBB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15750(uint64_t a1)
{
  v2 = sub_1BB5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1578C(uint64_t a1)
{
  v2 = sub_1BB5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_157D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19C80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_15820(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_1F7C(&qword_34A00, &qword_26548);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_1F7C(&qword_34A08, &qword_26550);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_1F7C(&qword_34A10, &qword_26558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BA0C();
  sub_249F8();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1BA60();
    sub_248F8();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1BAB4();
    sub_248F8();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_15ADC()
{
  if (*v0)
  {
    result = 0x6565726874;
  }

  else
  {
    result = 6647407;
  }

  *v0;
  return result;
}

uint64_t sub_15B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v5 || (sub_24958() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6565726874 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24958();

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

uint64_t sub_15BE4(uint64_t a1)
{
  v2 = sub_1BA0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15C20(uint64_t a1)
{
  v2 = sub_1BA0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15C5C(uint64_t a1)
{
  v2 = sub_1BAB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15C98(uint64_t a1)
{
  v2 = sub_1BAB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15CD4(uint64_t a1)
{
  v2 = sub_1BA60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15D10(uint64_t a1)
{
  v2 = sub_1BA60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A210(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_15DA8(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_1F7C(&qword_34C58, &qword_272A0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_1F7C(&qword_34C60, &qword_272A8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1F7C(&qword_34C68, &qword_272B0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_1F7C(&qword_34C70, &qword_272B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1CC18();
  sub_249F8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1CCC0();
      sub_248F8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1CC6C();
      v21 = v27;
      sub_248F8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1CD14();
    sub_248F8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_16128()
{
  v1 = 0x6565726874;
  if (*v0 != 1)
  {
    v1 = 1920298854;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7305076;
  }
}

uint64_t sub_16170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A64C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16198(uint64_t a1)
{
  v2 = sub_1CC18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_161D4(uint64_t a1)
{
  v2 = sub_1CC18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16210(uint64_t a1)
{
  v2 = sub_1CC6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1624C(uint64_t a1)
{
  v2 = sub_1CC6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16288(uint64_t a1)
{
  v2 = sub_1CCC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_162C4(uint64_t a1)
{
  v2 = sub_1CCC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16300(uint64_t a1)
{
  v2 = sub_1CD14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1633C(uint64_t a1)
{
  v2 = sub_1CD14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A760(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_163D0(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_1F7C(&qword_34C78, &qword_272C0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_1F7C(&qword_34C80, &qword_272C8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1F7C(&qword_34C88, &qword_272D0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_1F7C(&qword_34C90, &qword_272D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1CD68();
  sub_249F8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1CE10();
      sub_248F8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1CDBC();
      v21 = v27;
      sub_248F8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1CE64();
    sub_248F8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_16750(void *a1, __int16 a2)
{
  v5 = sub_1F7C(&qword_349B0, &qword_26520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1B81C();
  sub_249F8();
  v12[15] = a2;
  v12[14] = 0;
  sub_1B964();
  sub_24938();
  if (!v2)
  {
    v12[13] = HIBYTE(a2);
    v12[12] = 1;
    sub_1B9B8();
    sub_24938();
    v12[11] = 2;
    sub_24928();
    v12[10] = 3;
    sub_24928();
    v12[9] = 4;
    sub_24928();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_16958(uint64_t a1)
{
  sub_249A8();
  sub_249B8(a1);
  sub_249B8(BYTE1(a1));
  sub_249C8(BYTE2(a1) & 1);
  sub_249C8(BYTE3(a1) & 1);
  sub_249C8(BYTE4(a1) & 1);
  return sub_249D8();
}

uint64_t sub_169D0(uint64_t a1)
{
  v2 = sub_1CE10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A0C(uint64_t a1)
{
  v2 = sub_1CE10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16A48()
{
  v1 = 1701734758;
  if (*v0 == 1)
  {
    v1 = 0x657372616F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_16A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ACF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16AB8(uint64_t a1)
{
  v2 = sub_1CD68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16AF4(uint64_t a1)
{
  v2 = sub_1CD68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16B30(uint64_t a1)
{
  v2 = sub_1CDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16B6C(uint64_t a1)
{
  v2 = sub_1CDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16BA8(uint64_t a1)
{
  v2 = sub_1CE64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16BE4(uint64_t a1)
{
  v2 = sub_1CE64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16C30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AE08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_16C78()
{
  v1 = *v0;
  v2 = 0x4449656372756F73;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_16D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16D60(uint64_t a1)
{
  v2 = sub_1B81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16D9C(uint64_t a1)
{
  v2 = sub_1B81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_16DD8()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  return sub_16958(v3 | *v0 | (v0[1] << 8) | v2 | v1);
}

void sub_16E24()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_249B8(*v0);
  sub_249B8(v1);
  sub_249C8(v2);
  sub_249C8(v3);
  sub_249C8(v4);
}

Swift::Int sub_16E90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_249A8();
  sub_249B8(v1);
  sub_249B8(v2);
  sub_249C8(v3);
  sub_249C8(v4);
  sub_249C8(v5);
  return sub_249D8();
}

uint64_t sub_16F24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x100000000;
  if (a1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v18 = v17 | v2 | (v3 << 8);
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  return sub_196DC(v18 | v15 | v12, v16 | v6 | (v7 << 8) | v14 | v11);
}

uint64_t sub_16FAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B554(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 3) = BYTE3(result) & 1;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_16FF8(void *a1)
{
  v1[4];
  v1[3];
  v1[2];
  return sub_16750(a1, *v1 | (v1[1] << 8));
}

char *sub_17068()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 6);

  v3 = *(v0 + 8);

  v4 = *(v0 + 10);

  v5 = *(v0 + 13);

  v6 = *(v0 + 16);

  v7 = *(v0 + 17);

  v8 = *(v0 + 21);
  v9 = *(v0 + 22);
  sub_D844(*(v0 + 19), *(v0 + 20));
  v10 = OBJC_IVAR____TtC33AdAttributionKitDeveloperSettings23ConfigurePostbacksState___observationRegistrar;
  v11 = sub_23F48();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  return v0;
}

uint64_t sub_1710C()
{
  sub_17068();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ConfigurePostbacksState()
{
  result = qword_347E0;
  if (!qword_347E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_171B8()
{
  result = sub_23F48();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurePostbacksState.PostbackConfigurationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_17390()
{
  result = qword_348D8;
  if (!qword_348D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348D8);
  }

  return result;
}

unint64_t sub_17418()
{
  result = qword_348F0;
  if (!qword_348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348F0);
  }

  return result;
}

unint64_t sub_17470()
{
  result = qword_348F8;
  if (!qword_348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_348F8);
  }

  return result;
}

unint64_t sub_174F8()
{
  result = qword_34910;
  if (!qword_34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34910);
  }

  return result;
}

unint64_t sub_17550()
{
  result = qword_34918;
  if (!qword_34918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34918);
  }

  return result;
}

unint64_t sub_175D8()
{
  result = qword_34930;
  if (!qword_34930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34930);
  }

  return result;
}

unint64_t sub_17630()
{
  result = qword_34938;
  if (!qword_34938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34938);
  }

  return result;
}

uint64_t sub_1768C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[19];
  v7 = v2[20];
  v8 = v2[21];
  v9 = v2[22];
  v2[19] = v1;
  v2[20] = v3;
  v2[21] = v4;
  v2[22] = v5;
  sub_D784(v1, v3);
  return sub_D844(v6, v7);
}

unint64_t sub_177D0()
{
  result = qword_34948;
  if (!qword_34948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34948);
  }

  return result;
}

uint64_t sub_17824(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1785C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_178B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1797C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_18F40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B870(v11);
  return v7;
}

unint64_t sub_1797C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_17A88(a5, a6);
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
    result = sub_24878();
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

char *sub_17A88(uint64_t a1, unint64_t a2)
{
  v4 = sub_17AD4(a1, a2);
  sub_17C04(&off_31068);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_17AD4(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_17CF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24878();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24708();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17CF0(v10, 0);
        result = sub_24838();
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

uint64_t sub_17C04(uint64_t result)
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

  result = sub_17D64(result, v12, 1, v3);
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

void *sub_17CF0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1F7C(&qword_34970, &qword_264F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17D64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1F7C(&qword_34970, &qword_264F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unsigned __int8 *sub_17E58(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_24758();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_183DC();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24878();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_183DC()
{
  v0 = sub_24768();
  v4 = sub_1845C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1845C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_246D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24828();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_17CF0(v9, 0);
  v12 = sub_185B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_246D8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24878();
LABEL_4:

  return sub_246D8();
}

unint64_t sub_185B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_187D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24738();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24878();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_187D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24718();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_187D4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24748();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_24728();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

size_t sub_18850(size_t a1, int64_t a2, char a3)
{
  result = sub_18870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_18870(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1F7C(&qword_34978, &qword_264F8);
  v10 = *(sub_23FA8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_23FA8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_18A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 36);
  v4 = (a2 + 36);
  do
  {
    v6 = *(v3 - 4) != *(v4 - 4) || *(v3 - 3) != *(v4 - 3);
    v7 = v6 | *(v3 - 2) ^ *(v4 - 2) | *(v3 - 1) ^ *(v4 - 1) | *v3 ^ *v4;
    if (v7)
    {
      break;
    }

    v3 += 5;
    v4 += 5;
    --v2;
  }

  while (v2);
  return (v7 ^ 1) & 1;
}

uint64_t sub_18B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_11048(v4);
}

uint64_t sub_18B34()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 136);
  *(v1 + 136) = *(v0 + 24);
}

uint64_t sub_18B8C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 128);
  *(v1 + 120) = v0[3];
  *(v1 + 128) = v2;
}

uint64_t sub_18BE8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 104);
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_18C44()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 80);
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

uint64_t sub_18CA0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 64);
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_18CFC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_18D58(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_18DA0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;

  return sub_127DC();
}

unint64_t sub_18E44()
{
  result = qword_34960;
  if (!qword_34960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34960);
  }

  return result;
}

unint64_t sub_18E98()
{
  result = qword_34968;
  if (!qword_34968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34968);
  }

  return result;
}

uint64_t sub_18F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1F7C(&qword_34958, &qword_264E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1900C()
{
  v1 = async function pointer to static DeveloperMode.transmitDevelopmentPostbacks()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1909C;

  return static DeveloperMode.transmitDevelopmentPostbacks()();
}

uint64_t sub_1909C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_191D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_191D0()
{
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24048();
  sub_17824(v2, qword_38D60);
  swift_errorRetain();
  v3 = sub_24028();
  v4 = sub_247E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to transmit development postbacks with error: %@", v7, 0xCu);
    sub_46C4(v8, &qword_34950, &qword_26370);
  }

  else
  {
    v10 = *(v0 + 24);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19374()
{
  v1 = async function pointer to static DeveloperMode.clearDevelopmentPostbacks()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_19404;

  return static DeveloperMode.clearDevelopmentPostbacks()();
}

uint64_t sub_19404()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_19538, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_19538()
{
  if (qword_34400 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24048();
  sub_17824(v2, qword_38D60);
  swift_errorRetain();
  v3 = sub_24028();
  v4 = sub_247E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to clear development postbacks with error: %@", v7, 0xCu);
    sub_46C4(v8, &qword_34950, &qword_26370);
  }

  else
  {
    v10 = *(v0 + 24);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19720(uint64_t *a1)
{
  v29 = sub_1F7C(&qword_34A78, &qword_265A0);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_1F7C(&qword_34A80, &qword_265A8);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_1F7C(&qword_34A88, &qword_265B0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BC58();
  v14 = v31;
  sub_249E8();
  if (v14)
  {
    return sub_1B870(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_248E8();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_24868();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_1F7C(&qword_349E8, &qword_26540) + 48);
    *v22 = &type metadata for ConfigurePostbacksState.InteractionType;
    sub_24898();
    sub_24858();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_1B870(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_1BCAC();
    sub_24888();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_1BD00();
    sub_24888();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_1B870(v31);
  return v32;
}