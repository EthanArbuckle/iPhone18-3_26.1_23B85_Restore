uint64_t ProductMedia.__allocating_init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v28 = a7;
  v29 = a8;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a9;
  sub_1E134FD1C(a1, &v35, &unk_1ECEB5670);
  if (*(&v36 + 1))
  {
    v18 = v36;
    *(v16 + 80) = v35;
    *(v16 + 96) = v18;
    *(v16 + 112) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v33 = v19;
    v34 = v21;
    a5 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v22 = v31;
  *(v16 + 16) = v30;
  *(v16 + 24) = v22;
  *(v16 + 32) = v32;
  *(v16 + 40) = a5;
  v24 = v28;
  v23 = v29;
  *(v16 + 48) = a6;
  *(v16 + 56) = v24;
  *(v16 + 64) = v23;
  *(v16 + 72) = v17;
  return v16;
}

uint64_t ProductMedia.init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v10 = v9;
  v29 = a7;
  v30 = a8;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a9;
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v28 = a5;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v34 = v19;
    v35 = v21;
    a5 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v22 = v40;
  *(v10 + 80) = v39;
  *(v10 + 96) = v22;
  *(v10 + 112) = v41;
  v23 = v32;
  *(v10 + 16) = v31;
  *(v10 + 24) = v23;
  *(v10 + 32) = v33;
  *(v10 + 40) = a5;
  v25 = v29;
  v24 = v30;
  *(v10 + 48) = a6;
  *(v10 + 56) = v25;
  *(v10 + 64) = v24;
  *(v10 + 72) = v18;
  return v10;
}

void (*ProductMedia.__allocating_init(deserializing:using:)(uint64_t a1, char *a2))(char *, char *, uint64_t)
{
  v105 = a2;
  v90 = sub_1E1AEFEAC();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = (&v85 - v5);
  v97 = sub_1E1AF5A6C();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v104 = sub_1E1AF380C();
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v89 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  type metadata accessor for MediaPlatform();
  v102 = a1;
  sub_1E1AF381C();
  v100 = v8;
  v27 = *(v8 + 16);
  v103 = v7;
  v27(v12, v105, v7);
  v28 = v99;
  v29 = MediaPlatform.__allocating_init(deserializing:using:)(v26, v12);
  if (v28)
  {
    (*(v101 + 8))(v102, v104);
LABEL_9:
    v40 = v105;
LABEL_10:
    (*(v100 + 8))(v40, v103);
    return v27;
  }

  v86 = v18;
  v99 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB348);
  v30 = v102;
  sub_1E1AF381C();
  v27(v94, v105, v103);
  sub_1E1929E74();
  v85 = v23;
  sub_1E1AF464C();
  if (v111[0])
  {
    v31 = v111[0];
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v93;
  sub_1E1AF381C();
  v27 = v98;
  sub_1E1AF374C();
  v33 = v101 + 8;
  v34 = *(v101 + 8);
  v35 = v104;
  (v34)(v32, v104);
  if ((*(v96 + 6))(v27, 1, v97) == 1)
  {

    sub_1E1308058(v98, &qword_1ECEB1F90);
    v36 = sub_1E1AF5A7C();
    sub_1E196FD2C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v37 = 0x736D657469;
    v37[1] = 0xE500000000000000;
    v37[2] = v95;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();

    v38 = v30;
    v39 = v35;
LABEL_8:
    (v34)(v38, v39);
    goto LABEL_9;
  }

  v94 = v31;
  v42 = v96;
  v43 = v92;
  v44 = v97;
  v45 = (*(v96 + 4))(v92, v98, v97);
  v98 = v34;
  MEMORY[0x1EEE9AC00](v45);
  v46 = v105;
  *(&v85 - 2) = v105;
  type metadata accessor for ProductMediaItem();
  v93 = sub_1E1AF59FC();
  v47 = v98;
  v42[1](v43, v44);
  v48 = v86;
  sub_1E1AF381C();
  v97 = sub_1E1AF37CC();
  v27 = v49;
  v50 = v48;
  v51 = v47;
  (v47)(v50, v104);
  if (!v27)
  {

    v65 = sub_1E1AF5A7C();
    sub_1E196FD2C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v66 = 0xD000000000000013;
    v66[1] = 0x80000001E1B7EDF0;
    v66[2] = v95;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x1E69AB690], v65);
    swift_willThrow();

    (v51)(v102, v104);
    v40 = v46;
    goto LABEL_10;
  }

  v96 = v27;
  v34 = v47;
  v52 = v104;
  v27 = 0x80000001E1B7EE10;
  v53 = v91;
  v54 = v102;
  sub_1E1AF381C();
  v92 = sub_1E1AF37CC();
  v55 = v54;
  v57 = v56;
  (v34)(v53, v52);
  if (!v57)
  {

    v67 = sub_1E1AF5A7C();
    sub_1E196FD2C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x80000001E1B7EE10;
    v68[2] = v95;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x1E69AB690], v67);
    swift_willThrow();

    v38 = v55;
    v39 = v52;
    goto LABEL_8;
  }

  v101 = v33;
  v58 = v89;
  sub_1E1AF381C();
  v59 = sub_1E1AF37CC();
  if (v60)
  {
    *&v108 = v59;
    *(&v108 + 1) = v60;
    sub_1E1AF6F6C();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
    v64 = v90;
  }

  else
  {
    v69 = v87;
    sub_1E1AEFE9C();
    v70 = sub_1E1AEFE7C();
    v72 = v71;
    v64 = v90;
    (*(v88 + 8))(v69, v90);
    *&v108 = v70;
    *(&v108 + 1) = v72;
    sub_1E1AF6F6C();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
  }

  v73 = v85;
  sub_1E1AF381C();
  sub_1E192A33C();
  sub_1E1AF369C();
  (v62)(v73, v61);
  v74 = v112;
  v27 = swift_allocObject();
  sub_1E134FD1C(v111, &v108, &unk_1ECEB5670);
  if (*(&v109 + 1))
  {
    v75 = v109;
    *(v27 + 5) = v108;
    *(v27 + 6) = v75;
    *(v27 + 14) = v110;
  }

  else
  {
    v76 = v87;
    sub_1E1AEFE9C();
    v77 = sub_1E1AEFE7C();
    v79 = v78;
    (*(v88 + 8))(v76, v64);
    v106 = v77;
    v107 = v79;
    v63 = v103;
    sub_1E1AF6F6C();
    sub_1E1308058(&v108, &unk_1ECEB5670);
  }

  v80 = v93;
  (v98)(v102, v104);
  sub_1E1308058(v111, &unk_1ECEB5670);
  v81 = v99;
  v82 = v100;
  *(v27 + 2) = v80;
  *(v27 + 3) = v81;
  v83 = v97;
  *(v27 + 4) = v94;
  *(v27 + 5) = v83;
  v84 = v92;
  *(v27 + 6) = v96;
  *(v27 + 7) = v84;
  *(v27 + 8) = v57;
  *(v27 + 72) = v74;
  (*(v82 + 8))(v105, v63);
  return v27;
}

uint64_t sub_1E196F61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v32 = a1;
  v35 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v31 = sub_1E1AF5A7C();
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductMediaItem();
  v16 = v12;
  v17 = v33;
  (*(v13 + 16))(v15, v32, v16);
  (*(v9 + 16))(v11, v17, v8);
  v18 = v34;
  result = ProductMediaItem.__allocating_init(deserializing:using:)(v15, v11);
  if (v18)
  {
    v20 = type metadata accessor for ProductMedia();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E1B02CC0;
    *(v21 + 32) = v18;
    *v7 = 0x736D657469;
    v7[1] = 0xE500000000000000;
    v7[2] = v20;
    v7[3] = v21;
    v22 = v31;
    (*(v39 + 104))(v7, *MEMORY[0x1E69AB6A0], v31);
    v23 = v18;
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
    sub_1E1AF39FC();
    (*(v29 + 8))(v5, v30);
    sub_1E134FD1C(v38, v36, &qword_1ECEB43C8);
    if (v37)
    {
      __swift_project_boxed_opaque_existential_1Tm(v36, v37);
      sub_1E196FD2C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      v24 = v22;
      v25 = swift_allocError();
      v26 = v39;
      (*(v39 + 16))(v27, v7, v24);
      sub_1E1AF4EBC();

      sub_1E1308058(v38, &qword_1ECEB43C8);
      (*(v26 + 8))(v7, v24);

      result = __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {

      sub_1E1308058(v38, &qword_1ECEB43C8);
      (*(v39 + 8))(v7, v22);
      result = sub_1E1308058(v36, &qword_1ECEB43C8);
    }

    *v35 = 0;
  }

  else
  {
    *v35 = result;
  }

  return result;
}

uint64_t ProductMedia.deinit()
{

  sub_1E134B88C(v0 + 80);
  return v0;
}

uint64_t ProductMedia.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);

  return swift_deallocClassInstance();
}

void (*sub_1E196FBC0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X8>))(char *, char *, uint64_t)
{
  result = ProductMedia.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s11AppStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((sub_1E145C05C(*(v4 + 16), *(v5 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 56);
  if (*(v4 + 56))
  {
    if (!*(v5 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 48) != *(v5 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);

  return sub_1E156F9F4(v8, v9);
}

unint64_t sub_1E196FC90()
{
  result = qword_1ECEBB828;
  if (!qword_1ECEBB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB828);
  }

  return result;
}

uint64_t sub_1E196FD2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t JSNativeIntentDispatcher.objectGraph.setter(uint64_t a1)
{
  v3 = qword_1ECEF4CB0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id JSNativeIntentDispatcher.init(dispatcher:logger:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[qword_1ECEF4CB0] = 0;
  v7 = qword_1ECEBB830;
  v8 = sub_1E1AF4D9C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = qword_1ECEBB838;
  v11 = sub_1E1AF101C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[v10], a2, v11);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a2, v11);
  (*(v9 + 8))(a1, v8);
  return v13;
}

uint64_t sub_1E19700BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF101C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v8 = sub_1E1AF6D4C();
  (*(v5 + 16))(v7, v2 + qword_1ECEBB838, v4);
  v12 = a1;
  v13 = v2;
  v14 = v7;
  v9 = sub_1E1AF6D5C();

  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_1E1970204(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v119 = a4;
  v116 = a1;
  v118 = a3;
  v127 = (*MEMORY[0x1E69E7D40] & *a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v117 = &v100 - v5;
  v122 = sub_1E1AF101C();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v115 = v6;
  v120 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v123 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF485C();
  v125 = *(v9 - 8);
  v126 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF0F7C();
  v124 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v18 = sub_1E1AF380C();
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - v25;
  v27 = v135;
  sub_1E1AF6C0C();
  if (!v27)
  {
    v108 = v20;
    v109 = v14;
    v110 = v17;
    v111 = v11;
    v113 = v12;
    v135 = 0;
    sub_1E1AF381C();
    v28 = sub_1E1AF37CC();
    v30 = v29;
    v31 = v128 + 8;
    v32 = *(v128 + 8);
    v32(v23, v18);
    v33 = v18;
    if (v30)
    {
      v34 = v31;
      v112 = v32;
      v114 = v26;
      sub_1E1AF490C();
      v35 = MEMORY[0x1E68FD610]();
      if (v35)
      {
        v36 = v35;
        v37 = *(v127 + 10);
        v38 = *(v127 + 11);
        v39 = sub_1E1AF425C();
        v40 = v34;
        if (*(v39 + 16) && (v41 = sub_1E13018F8(v28, v30), (v42 & 1) != 0))
        {
          v106 = v38;
          v127 = v37;
          v102 = v28;
          v105 = v36;
          v104 = *(*(v39 + 56) + 16 * v41);

          if (qword_1EE1F7BE0 != -1)
          {
            swift_once();
          }

          v43 = sub_1E1AF0FAC();
          __swift_project_value_buffer(v43, qword_1EE1F7BE8);
          sub_1E1AF0F8C();
          v44 = v110;
          sub_1E1AF0F4C();

          v45 = sub_1E1AF0F8C();
          v46 = sub_1E1AF6A1C();

          v47 = sub_1E1AF6D6C();
          v48 = v113;
          v49 = v111;
          v50 = v109;
          v103 = v40;
          v107 = v30;
          if (v47)
          {
            v51 = swift_slowAlloc();
            v52 = v46;
            v101 = v33;
            v53 = v51;
            v54 = swift_slowAlloc();
            *&aBlock = v54;
            *v53 = 136446210;
            *(v53 + 4) = sub_1E1972EA0(v102, v30, &aBlock);
            v55 = sub_1E1AF0F5C();
            _os_signpost_emit_with_name_impl(&dword_1E12FC000, v45, v52, v55, "JSNtvIntentDispatcher", "%{public}s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x1E6901640](v54, -1, -1);
            v56 = v53;
            v33 = v101;
            MEMORY[0x1E6901640](v56, -1, -1);
          }

          v57 = v114;
          v58 = v124;
          (*(v124 + 16))(v50, v44, v48);
          sub_1E1AF0FEC();
          swift_allocObject();
          v59 = sub_1E1AF0FDC();
          (*(v128 + 16))(v108, v57, v33);
          v60 = v123;
          sub_1E1AF39CC();
          MEMORY[0x1E68FE9D0](v60);
          sub_1E1AF484C();
          v61 = v126;
          v131 = v126;
          v132 = sub_1E197475C(&qword_1ECEBB8C0, MEMORY[0x1E69AB268]);
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
          v63 = v44;
          v64 = v125;
          (*(v125 + 16))(boxed_opaque_existential_0, v49, v61);
          v65 = v135;
          sub_1E1AF441C();
          v135 = v65;
          if (v65)
          {

            (*(v64 + 8))(v49, v61);
            (*(v58 + 8))(v63, v113);
            v112(v57, v33);
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
          }

          else
          {
            v66 = v57;
            v67 = v113;
            v123 = v59;
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v68 = qword_1ECEF4CB0;
            v69 = v118;
            swift_beginAccess();
            v128 = *&v69[v68];
            if (v128)
            {
              v101 = v33;
              v70 = v121;
              v71 = *(v121 + 16);
              v108 = (v121 + 16);
              v109 = v71;
              v71(v120, v119, v122);
              sub_1E1300B24(v134, &aBlock);
              v72 = v69;
              v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
              v104 = *(v70 + 80);
              v115 += 7;
              v74 = (v115 + v73) & 0xFFFFFFFFFFFFFFF8;
              v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
              v76 = (v75 + 47) & 0xFFFFFFFFFFFFFFF8;
              v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
              v78 = swift_allocObject();
              v79 = v106;
              *(v78 + 16) = v127;
              *(v78 + 24) = v79;
              v80 = *(v70 + 32);
              v121 = v70 + 32;
              v127 = v80;
              v80(v78 + v73, v120, v122);
              v81 = (v78 + v74);
              v82 = v107;
              *v81 = v102;
              v81[1] = v82;
              sub_1E1308EC0(&aBlock, v78 + v75);
              *(v78 + v76) = v72;
              *(v78 + v77) = v128;
              v83 = v116;
              *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95B0);
              swift_retain_n();

              v84 = v72;
              v85 = v83;
              v118 = v85;
              v86 = sub_1E1AF588C();
              v87 = sub_1E1AF649C();
              v88 = v117;
              (*(*(v87 - 8) + 56))(v117, 1, 1, v87);
              v89 = swift_allocObject();
              v89[2] = 0;
              v89[3] = 0;
              v89[4] = &unk_1E1B46C88;
              v89[5] = v78;
              v89[6] = v86;

              sub_1E1974308(0, 0, v88, &unk_1E1B46CA0, v89);

              v90 = v120;
              v91 = v122;
              v109(v120, v119, v122);
              v92 = (v104 + 64) & ~v104;
              v93 = (v115 + v92) & 0xFFFFFFFFFFFFFFF8;
              v94 = swift_allocObject();
              *(v94 + 16) = v86;
              *(v94 + 24) = "JSNtvIntentDispatcher";
              *(v94 + 32) = 21;
              *(v94 + 40) = 2;
              *(v94 + 48) = v123;
              *(v94 + 56) = v85;
              v127(v94 + v92, v90, v91);
              v95 = v107;
              v96 = (v94 + v93);
              *v96 = v102;
              v96[1] = v95;
              *(v94 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) = v105;
              v132 = sub_1E19749EC;
              v133 = v94;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v130 = sub_1E1972B8C;
              v131 = &block_descriptor_88;
              v97 = _Block_copy(&aBlock);

              v98 = v118;

              v99 = [objc_opt_self() valueWithNewPromiseInContext:v98 fromExecutor:v97];
              _Block_release(v97);
              if (v99)
              {

                __swift_destroy_boxed_opaque_existential_1(v134);
                (*(v125 + 8))(v111, v126);
                (*(v124 + 8))(v110, v113);
                v112(v114, v101);
              }

              else
              {
                __break(1u);
              }
            }

            else
            {

              sub_1E1AF56FC();
              sub_1E197475C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
              swift_allocError();
              sub_1E1AF569C();
              swift_willThrow();

              __swift_destroy_boxed_opaque_existential_1(v134);
              (*(v64 + 8))(v111, v61);
              (*(v58 + 8))(v110, v67);
              v112(v66, v33);
            }
          }
        }

        else
        {

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1E1AF6FEC();

          *&aBlock = 0xD00000000000002ELL;
          *(&aBlock + 1) = 0x80000001E1B809E0;
          MEMORY[0x1E68FECA0](v28, v30);

          sub_1E1AF56FC();
          sub_1E197475C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
          swift_allocError();
          sub_1E1AF569C();
          swift_willThrow();

          v112(v114, v33);
        }
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E1AF6FEC();
        MEMORY[0x1E68FECA0](0x6863746170736964, 0xEF3C20726F662820);
        MEMORY[0x1E68FECA0](v28, v30);

        MEMORY[0x1E68FECA0](0xD000000000000029, 0x80000001E1B809B0);
        sub_1E1AF56FC();
        sub_1E197475C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
        swift_allocError();
        sub_1E1AF569C();
        swift_willThrow();
        v112(v114, v33);
      }
    }

    else
    {
      sub_1E1AF56FC();
      sub_1E197475C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
      swift_allocError();
      sub_1E1AF569C();
      swift_willThrow();
      v32(v26, v18);
    }
  }
}

uint64_t sub_1E197132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v9 = sub_1E1AF4D9C();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E19713F8, 0, 0);
}

uint64_t sub_1E19713F8()
{
  v20 = v0;

  v1 = sub_1E1AF100C();
  v2 = sub_1E1AF680C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1E1972EA0(v4, v3, &v19);
    _os_log_impl(&dword_1E12FC000, v1, v2, "Dispatching intent %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6901640](v6, -1, -1);
    MEMORY[0x1E6901640](v5, -1, -1);
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[25];
  v13 = v10[3];
  v12 = v10[4];
  v14 = __swift_project_boxed_opaque_existential_1Tm(v10, v13);
  (*(v7 + 16))(v8, v11 + qword_1ECEBB830, v9);
  v0[15] = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_1E19715FC;
  v17 = v0[26];

  return MEMORY[0x1EEE17100](boxed_opaque_existential_0, v14, v17, v13, v12);
}

uint64_t sub_1E19715FC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  (*(v2[29] + 8))(v2[30], v2[28]);
  if (v0)
  {
    v3 = sub_1E1971ADC;
  }

  else
  {
    v3 = sub_1E1971764;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1971764()
{
  v13 = v0;

  v1 = sub_1E1AF100C();
  v2 = sub_1E1AF680C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1E1972EA0(v4, v3, v12);
    _os_log_impl(&dword_1E12FC000, v1, v2, "Received result for intent %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6901640](v6, -1, -1);
    MEMORY[0x1E6901640](v5, -1, -1);
  }

  sub_1E137A5C4(v0 + 96, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1E1308058(v0 + 56, &qword_1ECEBB288);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001CLL, 0x80000001E1B80A70);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
    swift_getDynamicType();
    v9 = sub_1E1AF772C();
    MEMORY[0x1E68FECA0](v9);

    MEMORY[0x1E68FECA0](0xD000000000000041, 0x80000001E1B80A90);
    sub_1E1AF56FC();
    sub_1E197475C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    goto LABEL_7;
  }

  v7 = *(v0 + 256);
  sub_1E1308EC0((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  v8 = sub_1E1AF4FCC();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);

    v10 = *(v0 + 8);
    goto LABEL_8;
  }

  **(v0 + 160) = v8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  v10 = *(v0 + 8);
LABEL_8:

  return v10();
}

uint64_t sub_1E1971ADC()
{
  __swift_deallocate_boxed_opaque_existential_1(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1971B48(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a2;
  v37 = a8;
  v34 = a6;
  v13 = a5;
  v32 = a5;
  v35 = a1;
  v40 = a12;
  v41 = a3;
  v38 = a10;
  v39 = a11;
  v16 = sub_1E1AF101C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = v13;
  LOBYTE(v13) = v34;
  *(v19 + 32) = v34;
  *(v19 + 40) = a7;
  *(v19 + 48) = a1;
  v33 = a7;
  (*(v17 + 16))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v16);
  v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = a4;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = a7;
  v24 = v36;
  v23 = v37;
  *(v21 + 48) = v36;
  *(v21 + 56) = v23;
  (*(v17 + 32))(v21 + v20, &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v25 = (v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;
  v42[3] = sub_1E1AF490C();
  v42[4] = MEMORY[0x1E69AB298];
  v42[0] = v40;
  v27 = v24;
  v28 = v23;

  swift_retain_n();
  v29 = v35;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_1E1971D8C(void **a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v29 = a6;
  v30 = a2;
  v27 = a4;
  v7 = sub_1E1AF0FBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *a1;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v15, qword_1EE1F7BE8);
  v16 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v17 = sub_1E1AF6A0C();
  if ((sub_1E1AF6D6C() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v27)
  {
LABEL_7:
    if (v30 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v30 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v30 >> 16 <= 0x10)
      {
        v30 = &v31;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_1E1AF0FFC();

  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69E93E8])
  {
    v18 = "[Error] Interval already ended";
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v18 = "completed";
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_1E1AF0F5C();
  _os_signpost_emit_with_name_impl(&dword_1E12FC000, v16, v17, v20, v30, v18, v19, 2u);
  MEMORY[0x1E6901640](v19, -1, -1);
LABEL_15:

  (*(v12 + 8))(v14, v11);
  v21 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E1B02CC0;
    *(v22 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    v23 = v28;
    *(v22 + 32) = v28;
    v24 = v23;
    v25 = sub_1E1AF620C();
  }
}

uint64_t sub_1E1972120(void *a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v32[1] = a8;
  v36 = a7;
  v38 = a6;
  v39 = a2;
  v35 = a4;
  v9 = sub_1E1AF0FBC();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF0F7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E1AF56FC();
  v16 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  sub_1E19726F4(a1);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v20 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v20, qword_1EE1F7BE8);
  v21 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v33 = sub_1E1AF6A0C();
  result = sub_1E1AF6D6C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v35)
  {
LABEL_7:
    if (v39 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v39 >> 16 <= 0x10)
      {
        v39 = &v40;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v39)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_1E1AF0FFC();

  v23 = v34;
  if ((*(v34 + 88))(v11, v9) == *MEMORY[0x1E69E93E8])
  {
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v23 + 8))(v11, v9);
    v24 = "failed";
  }

  v25 = swift_slowAlloc();
  *v25 = 0;
  v26 = sub_1E1AF0F5C();
  _os_signpost_emit_with_name_impl(&dword_1E12FC000, v21, v33, v26, v39, v24, v25, 2u);
  MEMORY[0x1E6901640](v25, -1, -1);
LABEL_15:

  (*(v13 + 8))(v15, v12);
  v28 = v37;
  v27 = v38;
  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E1B02CC0;
    v30 = sub_1E1AF4FEC();
    *(v29 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v29 + 32) = v30;
    v31 = sub_1E1AF620C();
  }

  return (*(v16 + 8))(v18, v28);
}

uint64_t sub_1E19726F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB59B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = v26 - v3;
  v4 = sub_1E1AF45FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB8D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v11 = sub_1E1AF56FC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    v18 = _s9JetEngine7JSErrorV11AppStoreKitE23metricsErrorDescriptionSSvg_0();
    v30 = v19;
    v31 = v18;
    v28 = sub_1E1AF566C();
    v26[1] = v20;
    v27 = sub_1E1AF567C();
    v29 = a1;
    sub_1E1AF56EC();
    sub_1E1AF562C();
    sub_1E1AF56CC();
    sub_1E1AF568C();

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17(v10, 1, 1, v11);
    sub_1E1308058(v10, &qword_1ECEBB8D8);
    sub_1E1AF45EC();
    sub_1E1AF565C();
    v22 = sub_1E1AEFB1C();
    v23 = [v22 domain];

    sub_1E1AF5DFC();
    sub_1E1AF45DC();
    sub_1E1AF563C();
    v24 = sub_1E1AEFB1C();
    [v24 code];

    sub_1E1AF45AC();
    swift_getErrorValue();
    sub_1E1AF75AC();
    v25 = v32;
    (*(v5 + 16))(v32, v7, v4);
    (*(v5 + 56))(v25, 0, 1, v4);
    sub_1E1AF568C();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1E1972B8C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1E1972C18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1E19700BC(v4);

  return v6;
}

id JSNativeIntentDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSNativeIntentDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1972D60(uint64_t a1)
{
  v2 = qword_1ECEBB830;
  v3 = sub_1E1AF4D9C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1ECEBB838;
  v5 = sub_1E1AF101C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t sub_1E1972E44(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1E1972EA0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1E1972EA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E1972F6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E137A5C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E1972F6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E1973078(a5, a6);
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
    result = sub_1E1AF709C();
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

uint64_t sub_1E1973078(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E19730C4(a1, a2);
  sub_1E19731F4(&unk_1F5C20C80);
  return v3;
}

uint64_t sub_1E19730C4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E19732E0(v5, 0);
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

  result = sub_1E1AF709C();
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
        v10 = sub_1E1AF5FAC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E19732E0(v10, 0);
        result = sub_1E1AF6FAC();
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

uint64_t sub_1E19731F4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E1973354(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E19732E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB8C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E1973354(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB8C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1E1973448(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1E1973458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_1E197354C;

  return v9(v6 + 16);
}

uint64_t sub_1E197354C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E19736CC;
  }

  else
  {
    v2 = sub_1E1973660;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1973660()
{
  sub_1E1AF586C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E19736CC()
{
  v1 = *(v0 + 72);
  sub_1E1AF584C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E197373C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_1E1973830;

  return v9(v6 + 16);
}

uint64_t sub_1E1973830()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E19739B0;
  }

  else
  {
    v2 = sub_1E1973944;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1973944()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E19739B0()
{
  v1 = *(v0 + 48);
  sub_1E1AF584C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1973A20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1E1973B14;

  return v9(v6 + 16);
}

uint64_t sub_1E1973B14()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E1974B7C;
  }

  else
  {
    v2 = sub_1E1973C28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1973C28()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1973C94()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E1973E14;
  }

  else
  {
    v2 = sub_1E1973DA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1973DA8()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1973E14()
{
  v1 = *(v0 + 40);
  sub_1E1AF584C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1973E84()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E197401C;
  }

  else
  {
    v2 = sub_1E1973F98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1973F98()
{
  v1 = *(v0 + 24);
  sub_1E1AF586C();
  sub_1E1308058(v1, &qword_1ECEBB648);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E197401C()
{
  v1 = *(v0 + 40);
  sub_1E1AF584C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1974094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1E1974188;

  return v9(v6 + 16);
}

uint64_t sub_1E1974188()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E1974B7C;
  }

  else
  {
    v2 = sub_1E197429C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E197429C()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1974308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1E1795B30(a3, v23 - v10);
  v12 = sub_1E1AF649C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2D20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E1AF648C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1E1AF63CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1E1AF5EBC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1E1308058(a3, &qword_1ECEB2D20);

    return v21;
  }

LABEL_8:
  sub_1E1308058(a3, &qword_1ECEB2D20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1E1974624()
{
  result = sub_1E1AF4D9C();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF101C();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E197475C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E19747A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E1AF101C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E130B5DC;

  return sub_1E197132C(a1, v1 + v6, v12, v13, v1 + v8, v14, v15, v16);
}

uint64_t sub_1E1974910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E1974094(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E19749EC(void *a1, void *a2)
{
  v5 = *(sub_1E1AF101C() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E1971B48(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t StatePath<A>.init(_:)(uint64_t a1)
{
  v2 = sub_1E1AF01FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1E16D348C();
  v6 = sub_1E1AF60CC();
  v7 = sub_1E14D70F4(v6);

  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
  sub_1E1974CCC();
  sub_1E1AF5B9C();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_1E1974CCC()
{
  result = qword_1ECEB7BC0;
  if (!qword_1ECEB7BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7BC0);
  }

  return result;
}

double PageGrid.componentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[36];
}

uint64_t PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, float64_t a14@<D7>, uint64_t a15, double a16)
{
  v24 = *a3;
  v154 = a5;

  sub_1E197587C(&v154);
  v137 = a13;

  v25 = v154;
  v26 = *(v154 + 2);
  if (!v26)
  {
    goto LABEL_148;
  }

  v27 = 0;
  v28 = a7 - a14 - a16;
  v29 = *(v154 + 2);
  v135 = a9;
  v136 = a11;
  do
  {
    v30 = &v154[v27];
    v31 = *&v154[v27 + 32];
    v32 = *&v154[v27 + 40];
    if (v31 <= v28 && v28 < v32)
    {
      v38 = v30[64];
      v37 = v30[65];
      v138 = *(v30 + 72);
      v142 = *(v30 + 88);
      v143 = *(v30 + 3);
      v36 = *(v30 + 104);
      v144 = *(v30 + 120);
      v35 = *(v30 + 136);
      v34 = v30[152];
      v40 = *(v30 + 10);
      v39 = *(v30 + 11);
      v152 = *(v30 + 66);
      v153 = *(v30 + 35);
      v41 = *(v30 + 153);
      v42 = *(v30 + 39);
      goto LABEL_11;
    }

    v27 += 160;
    --v29;
  }

  while (v29);
  v31 = *(v154 + 4);
  if (v28 < v31)
  {
    v34 = v154[152];
    v35 = *(v154 + 136);
    v36 = *(v154 + 104);
    v142 = *(v154 + 88);
    v138 = *(v154 + 72);
    v37 = v154[65];
    v38 = v154[64];
    v143 = *(v154 + 3);
    v144 = *(v154 + 120);
    v32 = *(v154 + 5);
    v40 = *(v154 + 10);
    v39 = *(v154 + 11);
    v152 = *(v154 + 66);
    v153 = *(v154 + 35);
    v41 = *(v154 + 153);
    v42 = *(v154 + 39);
LABEL_11:
    *&v151[3] = v42;
    *v151 = v41;
    goto LABEL_13;
  }

  v43 = &v154[160 * v26];
  v31 = *(v43 - 16);
  v32 = *(v43 - 15);
  v38 = *(v43 - 96);
  v37 = *(v43 - 95);
  v152 = *(v43 - 94);
  v153 = *(v43 - 45);
  v138 = *(v43 - 88);
  v142 = *(v43 - 72);
  v143 = *(v43 - 7);
  v36 = *(v43 - 56);
  v144 = *(v43 - 40);
  v35 = *(v43 - 24);
  v34 = *(v43 - 8);
  *&v151[3] = *(v43 - 1);
  *v151 = *(v43 - 7);
  v40 = *v43;
  v39 = *(v43 + 1);
LABEL_13:
  v141 = v36;
  if (v24)
  {
    v44 = *&v36.i64[1];
  }

  else
  {
    v44 = *v36.i64;
  }

  v45 = MEMORY[0x1E69DDCE0];
  v139 = v40;
  v140 = v39;
  v146 = v35;
  v133 = v35.f64[1];
  v145 = a7;

  sub_1E1AF6B5C();
  v47 = *(&v142 + 1);
  if (*&v142 == -12345.0 && *(&v142 + 1) == -12345.0)
  {
    if (v24)
    {
      v48 = *(&v143 + 1);
    }

    else
    {
      v48 = *&v143;
    }

    v49 = 0.0;
    for (i = v141; v46 > 0.0; v46 = v46 - v51)
    {
      if (v49 == 0.0)
      {
        v51 = v48;
      }

      else
      {
        v51 = v44 + v48;
      }

      if (v51 > v46)
      {
        break;
      }

      v49 = v49 + 1.0;
    }
  }

  else
  {
    v52 = *&v138;
    if (v24)
    {
      v52 = *(&v138 + 1);
    }

    if (v52 <= 0.0)
    {
      if (v24)
      {
        v57 = v37;
      }

      else
      {
        v57 = v38;
      }

      v49 = 1.0;
      i = v141;
      if ((v57 & 1) == 0)
      {
        v49 = *(&v142 + 1);
        if (!v24)
        {
          v58 = vzip1q_s64(v141, v144);
          v49 = *&v142;
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }

    else
    {
      for (j = 0.0; v46 > 0.0; v46 = v46 - v55)
      {
        if (j == 0.0)
        {
          v54 = -0.0;
        }

        else
        {
          v54 = v44;
        }

        v55 = v52 + v54;
        if (v55 > v46)
        {
          break;
        }

        j = j + 1.0;
      }

      if (v24)
      {
        v56 = *(&v142 + 1);
        i = v141;
      }

      else
      {
        i = v141;
        j = j + (v46 - *v141.i64) / *&v138;
        v56 = *&v142;
      }

      if (v56 >= j)
      {
        v49 = j;
      }

      else
      {
        v49 = v56;
      }
    }
  }

  if (v24)
  {
LABEL_50:
    v58 = vzip2q_s64(i, v144);
    goto LABEL_52;
  }

  v58 = vzip1q_s64(i, v144);
LABEL_52:
  if (*&v143 != -12345.0 || *(&v143 + 1) != -12345.0)
  {
    if (v24)
    {
      v60 = *(&v143 + 1);
    }

    else
    {
      v60 = *&v143;
    }

LABEL_96:
    v73 = v60;
    goto LABEL_97;
  }

  v61 = *(v45 + 8);
  v62 = *(v45 + 24);
  if (a4)
  {
    v61 = *(&v139 + 1);
    v62 = *(&v140 + 1);
  }

  v63 = v146.f64[0];
  v64 = v133;
  if (v34 >= 2)
  {
    v65 = a7 >= 461.0 || a7 < 375.0;
    v64 = 34.0;
    if (!v65)
    {
      v64 = 20.0;
    }

    if (a7 < 375.0)
    {
      v64 = 16.0;
    }

    v63 = a10;
    if (v64 > a10)
    {
      v63 = v64;
    }

    if (v64 <= a12)
    {
      v64 = a12;
    }
  }

  v66 = v61 + v63 + v62 + v64;
  v67 = v44 * ceil(v49 + -1.0);
  if (v28 >= v32)
  {
    v68 = v32;
  }

  else
  {
    v68 = a7 - a14 - a16;
  }

  v60 = (v68 - v67 - v66) / v49;
  if (v24)
  {
    v69 = v37;
  }

  else
  {
    v69 = v38;
  }

  if ((v69 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (!v24)
  {
    v47 = *&v142;
  }

  v70 = v146.f64[0];
  if (v34 >= 2)
  {
    v71 = a7 >= 461.0 || a7 < 375.0;
    v72 = 34.0;
    if (!v71)
    {
      v72 = 20.0;
    }

    if (a7 < 375.0)
    {
      v72 = 16.0;
    }

    v70 = a10;
    if (v72 > a10)
    {
      v70 = v72;
    }

    if (v72 <= a12)
    {
      v72 = a12;
    }

    v133 = v72;
  }

  v73 = (v68 - v44 * ceil(v47 + -1.0) - (v61 + v70 + v62 + v133)) / v47;
LABEL_97:
  v74 = *(v25 + 2);
  if (!v74)
  {
    __break(1u);
LABEL_148:
    __break(1u);

    __break(1u);
    return result;
  }

  v129 = v73;
  v130 = v60;
  v131 = v58;
  v132 = v34;
  v134 = v37;
  v75 = v38;
  v76 = a1;
  v77 = a2;
  v78 = &v25[160 * v74];
  v79 = *(v78 - 14);
  v80 = *(v78 - 13);
  v81 = *(v78 - 6);
  v127 = *(v78 - 7);
  v128 = *(v78 - 15);
  v82 = *(v78 - 3);
  v83 = *(v78 - 2);
  v84 = *(v78 - 8);
  v85 = *(v78 + 1);
  v126 = *(v78 + 3);

  if (v79 == -12345.0 && v80 == -12345.0)
  {
    v97 = v127;
    if (v24)
    {
      v97 = v81;
    }

    v98 = *(MEMORY[0x1E69DDCE0] + 8);
    v99 = *(MEMORY[0x1E69DDCE0] + 24);
    if (a4)
    {
      v98 = v85;
      v99 = v126;
    }

    v100 = v82;
    v101 = v83;
    v92 = v145;
    v102 = v145 >= 461.0 || v145 < 375.0;
    v103 = 34.0;
    if (!v102)
    {
      v103 = 20.0;
    }

    v104 = 16.0;
    if (v145 >= 375.0)
    {
      v104 = v103;
    }

    v105 = a10;
    if (v104 > a10)
    {
      v105 = v104;
    }

    if (v104 <= a12)
    {
      v104 = a12;
    }

    if (v84 == 1)
    {
      v105 = v82;
      v104 = v83;
    }

    if (v84)
    {
      v100 = v105;
      v101 = v104;
    }

    v95 = v146;
    v96 = v139;
    v106 = v98 + v100 + v99 + v101;
    v107 = ceil(v49 + -1.0) * v97;
    v108 = v128;
    if (v28 < v128)
    {
      v108 = v28;
    }

    v88 = (v108 - v107 - v106) / v49;
    v89 = a14;
    v90 = v137;
    v91 = v77;
    v93 = a15;
    v94 = v75;
  }

  else
  {
    if (v24)
    {
      v88 = v80;
    }

    else
    {
      v88 = v79;
    }

    v89 = a14;
    v90 = v137;
    v91 = v77;
    v92 = v145;
    v93 = a15;
    v94 = v75;
    v95 = v146;
    v96 = v139;
  }

  v109 = a16;
  if (v132)
  {
    if (v132 == 1)
    {
      v110.f64[0] = v89;
      v110.f64[1] = a16;
      v111 = vaddq_f64(v95, v110);
    }

    else
    {
      v121 = v92 >= 461.0 || v92 < 375.0;
      v122 = 20.0;
      if (v121)
      {
        v122 = 34.0;
      }

      v123 = 16.0;
      if (v92 >= 375.0)
      {
        v123 = v122;
      }

      v124 = vdupq_lane_s64(*&v123, 0);
      v125.f64[0] = a10;
      v125.f64[1] = a12;
      v111 = vbslq_s8(vcgeq_f64(v125, v124), v125, v124);
    }

    v119 = v142;
    v118 = v143;
    v120 = v141;
    v115 = v131;
    v113 = v130;
  }

  else
  {
    sub_1E1AF6B5C();
    result = sub_1E1AF6B5C();
    v96 = v139;
    v95 = v146;
    v89 = a14;
    v113 = v130;
    v114 = v49 + -1.0;
    if (v49 + -1.0 < 0.0)
    {
      v114 = 0.0;
    }

    v115 = v131;
    v109 = a16;
    v116 = (v112 - ceil(v114 * *v131.i64 + v49 * v130)) * 0.5;
    if (v116 < 0.0)
    {
      v116 = 0.0;
    }

    v117 = vdupq_lane_s64(*&v116, 0);
    v111 = vbslq_s8(vcgeq_f64(v117, v146), v117, v146);
    v119 = v142;
    v118 = v143;
    v120 = v141;
  }

  *a6 = v76;
  *(a6 + 8) = v91;
  *(a6 + 16) = v24;
  *(a6 + 24) = v92;
  *(a6 + 32) = a8;
  *(a6 + 40) = v135;
  *(a6 + 48) = a10;
  *(a6 + 56) = v136;
  *(a6 + 64) = a12;
  *(a6 + 72) = v90;
  *(a6 + 80) = v89;
  *(a6 + 88) = v93;
  *(a6 + 96) = v109;
  *(a6 + 104) = v31;
  *(a6 + 112) = v32;
  *(a6 + 120) = v118;
  *(a6 + 136) = v94;
  *(a6 + 137) = v134;
  *(a6 + 142) = v153;
  *(a6 + 138) = v152;
  *(a6 + 144) = v138;
  *(a6 + 160) = v119;
  *(a6 + 176) = v120;
  *(a6 + 192) = v144;
  *(a6 + 208) = v95;
  *(a6 + 224) = v132;
  *(a6 + 228) = *&v151[3];
  *(a6 + 225) = *v151;
  *(a6 + 232) = v96;
  *(a6 + 248) = v140;
  *(a6 + 264) = v25;
  *(a6 + 272) = a4 & 1;
  *(a6 + 280) = v49;
  *(a6 + 288) = v113;
  *(a6 + 296) = v129;
  *(a6 + 304) = v88;
  *(a6 + 312) = v115;
  *(a6 + 328) = 0;
  *(a6 + 336) = v111.f64[0];
  *(a6 + 344) = 0;
  *(a6 + 352) = v111.f64[1];
  *(a6 + 360) = 0;
  *(a6 + 368) = v111.f64[0];
  *(a6 + 376) = 0;
  *(a6 + 384) = v111.f64[1];
  return result;
}

uint64_t PageGrid.DirectionalValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = *(v6 + 32);
  v10(a3, v9, a2);
  v11 = type metadata accessor for PageGrid.DirectionalValue();
  return (v10)(a3 + *(v11 + 36), a1, a2);
}

__n128 PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = a6[1].n128_u8[0];
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = vdupq_n_s64(0xC0C81C8000000000);
  *(a7 + 32) = v13;
  *(a7 + 33) = v14;
  *(a7 + 40) = *a3;
  *(a7 + 56) = *a1;
  *(a7 + 72) = *a4;
  *(a7 + 88) = *a5;
  result = *a6;
  *(a7 + 104) = *a6;
  *(a7 + 120) = v15;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  *(a7 + 144) = a12;
  *(a7 + 152) = a13;
  return result;
}

uint64_t sub_1E197587C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E196907C(v2);
  }

  v3 = *(v2 + 2);
  v45[0] = (v2 + 32);
  v45[1] = v3;
  result = sub_1E1AF741C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 192;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 160;
          if (*v12 >= *(v12 - 20))
          {
            break;
          }

          v14 = *(v12 + 1);
          v35 = *v12;
          v36 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v39 = *(v12 + 4);
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 9);
          v43 = *(v12 + 8);
          v44 = v20;
          v41 = v18;
          v42 = v19;
          v21 = *(v12 - 5);
          *(v12 + 4) = *(v12 - 6);
          *(v12 + 5) = v21;
          v22 = *(v12 - 7);
          *(v12 + 2) = *(v12 - 8);
          *(v12 + 3) = v22;
          v23 = *(v12 - 1);
          *(v12 + 8) = *(v12 - 2);
          *(v12 + 9) = v23;
          v24 = *(v12 - 3);
          *(v12 + 6) = *(v12 - 4);
          *(v12 + 7) = v24;
          v25 = *(v12 - 9);
          *v12 = *v13;
          *(v12 + 1) = v25;
          v12 -= 160;
          v26 = v36;
          *v13 = v35;
          *(v13 + 1) = v26;
          v27 = v37;
          v28 = v38;
          v29 = v40;
          *(v13 + 4) = v39;
          *(v13 + 5) = v29;
          *(v13 + 2) = v27;
          *(v13 + 3) = v28;
          v30 = v41;
          v31 = v42;
          v32 = v44;
          *(v13 + 8) = v43;
          *(v13 + 9) = v32;
          *(v13 + 6) = v30;
          *(v13 + 7) = v31;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 160;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E1AF628C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v35 = v7 + 32;
    *(&v35 + 1) = v6;
    sub_1E19770E4(&v35, v34, v45, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t PageGrid.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

int64x2_t static PageGrid.DirectionalValue.dynamicValue.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xC0C81C8000000000);
  *a1 = result;
  return result;
}

uint64_t PageGrid.DirectionalValue.init(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for PageGrid.DirectionalValue() + 36);

  return v9(v7, a2, a3);
}

uint64_t PageGrid.DirectionalValue.debugDescription.getter()
{
  sub_1E1AF746C();
  MEMORY[0x1E68FECA0](0x202C29482820, 0xE600000000000000);
  sub_1E1AF746C();
  MEMORY[0x1E68FECA0](693512224, 0xE400000000000000);
  return 0;
}

uint64_t static PageGrid.DirectionalValue.== infix(_:_:)()
{
  if ((sub_1E1AF5DAC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PageGrid.DirectionalValue();
  return sub_1E1AF5DAC() & 1;
}

uint64_t PageGrid.DirectionalValue.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5D1C();
  sub_1E1AF5D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1975D7C()
{
  sub_1E1AF762C();
  PageGrid.DirectionalValue.hash(into:)();
  return sub_1E1AF767C();
}

void static PageGrid.HorizontalMargins.zero.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t PageGrid.HorizontalMargins.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x1E6900360](2);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E6900360](v3);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E6900390](v4);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1E6900390](v5);
}

uint64_t PageGrid.HorizontalMargins.hashValue.getter()
{
  sub_1E1AF762C();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1975EAC()
{
  sub_1E1AF762C();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1975F04()
{
  sub_1E1AF762C();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_1E1AF767C();
}

__n128 PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  *(a5 + 40) = v12;
  *(a5 + 56) = v12;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

__n128 PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  if (v11 == 1)
  {
    LOBYTE(v11) = 0;
  }

  *(a5 + 40) = v12;
  __asm { FMOV            V0.2D, #1.0 }

  *(a5 + 56) = _Q0;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

void PageGrid.HorizontalMargins.centered.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t PageGrid.Breakpoint.debugDescription.getter()
{
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000017, 0x80000001E1B80B70);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](3943982, 0xE300000000000000);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0, 0xE000000000000000);

  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B80B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB8E8);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000019, 0x80000001E1B80BB0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B80BD0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000017, 0x80000001E1B80BF0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B80C10);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000018, 0x80000001E1B80C30);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD00000000000002ALL, 0x80000001E1B80C50);
  type metadata accessor for UIEdgeInsets(0);
  sub_1E1AF714C();
  return 0;
}

uint64_t PageGrid.Breakpoint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v7 = v0[8];
  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v27 = v0[17];
  v28 = v0[16];
  v25 = v0[19];
  v26 = v0[18];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6900390](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1E6900390](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1E6900390](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1E6900390](*&v11);
  sub_1E1AF764C();
  sub_1E1AF764C();
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E6900390](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E6900390](*&v13);
  if (v8 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x1E6900390](*&v14);
  if (v7 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v7;
  }

  MEMORY[0x1E6900390](*&v15);
  v16 = v21;
  if (v21 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1E6900390](*&v16);
  v17 = v22;
  if (v22 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1E6900390](*&v17);
  v18 = v23;
  if (v23 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1E6900390](*&v18);
  v19 = v24;
  if (v24 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E6900390](*&v19);
  PageGrid.HorizontalMargins.hash(into:)();

  return UIEdgeInsets.hash(into:)(v28, v27, v26, v25);
}

uint64_t PageGrid.Breakpoint.hashValue.getter()
{
  sub_1E1AF762C();
  PageGrid.Breakpoint.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E197654C()
{
  sub_1E1AF762C();
  PageGrid.Breakpoint.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1976590()
{
  sub_1E1AF762C();
  PageGrid.Breakpoint.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t PageGrid.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PageGrid.activeBreakPoint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *(a1 + 96) = *(v1 + 200);
  *(a1 + 112) = v2;
  v3 = *(v1 + 248);
  *(a1 + 128) = *(v1 + 232);
  *(a1 + 144) = v3;
  v4 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v4;
  v5 = *(v1 + 184);
  *(a1 + 64) = *(v1 + 168);
  *(a1 + 80) = v5;
  result = *(v1 + 104);
  v7 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v7;
  return result;
}

double PageGrid.largestPossibleComponentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[38];
}

uint64_t PageGrid.debugDescription.getter()
{
  v13 = *(v0 + 264);
  v1 = *(v0 + 272);
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B80C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000010, 0x80000001E1B80CA0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000015, 0x80000001E1B80CC0);
  v2 = sub_1E1AF654C();
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v2);

  MEMORY[0x1E68FECA0](0xD000000000000016, 0x80000001E1B80CE0);
  v5 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v5);

  MEMORY[0x1E68FECA0](0xD000000000000015, 0x80000001E1B80D00);
  type metadata accessor for UIEdgeInsets(0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000028, 0x80000001E1B80D20);
  MEMORY[0x1E68FECA0](v3, v4);

  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B80BD0);
  v6 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v6);

  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B80B90);
  v7 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v7);

  MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B80D50);
  v8 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v8);

  MEMORY[0x1E68FECA0](0xD000000000000017, 0x80000001E1B80BF0);
  v9 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v9);

  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B80C10);
  v10 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v10);

  MEMORY[0x1E68FECA0](0xD000000000000018, 0x80000001E1B80C30);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000017, 0x80000001E1B80D80);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B80DA0);
  v11 = MEMORY[0x1E68FEF50](v13, &type metadata for PageGrid.Breakpoint);
  MEMORY[0x1E68FECA0](v11);

  return 0;
}

__n128 PageGrid.Breakpoint.centered.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(v1 + 56);
  *(a1 + 72) = *(v1 + 72);
  *(a1 + 88) = *(v1 + 88);
  *(a1 + 104) = *(v1 + 104);
  *(a1 + 120) = v2;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *(a1 + 128) = result;
  *(a1 + 144) = v5;
  return result;
}

uint64_t PageGrid.centered.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v42 = *(v1 + 32);
  v43 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 264);
  v14 = *(v1 + 272);
  v49[0] = *(v1 + 16);
  v15 = *(v13 + 16);
  if (v15)
  {
    v41 = v3;
    v47 = MEMORY[0x1E69E7CC0];

    sub_1E135CC44(0, v15, 0);
    v16 = 0;
    v17 = v47;
    v18 = *(v47 + 16);
    v19 = 160 * v18;
    do
    {
      v20 = *(v13 + v16 + 32);
      v21 = *(v13 + v16 + 48);
      v22 = *(v13 + v16 + 88);
      v23 = *(v13 + v16 + 104);
      v24 = *(v13 + v16 + 120);
      v25 = *(v13 + v16 + 136);
      v26 = *(v13 + v16 + 160);
      v27 = *(v13 + v16 + 176);
      if (*(v13 + v16 + 152) == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v13 + v16 + 152);
      }

      v48 = v17;
      v29 = *(v17 + 24);
      v30 = v18 + 1;
      if (v18 >= v29 >> 1)
      {
        v39 = *(v13 + v16 + 176);
        v40 = *(v13 + v16 + 160);
        v37 = *(v13 + v16 + 104);
        v38 = *(v13 + v16 + 88);
        v35 = *(v13 + v16 + 136);
        v36 = *(v13 + v16 + 120);
        v33 = *(v13 + v16 + 48);
        v34 = *(v13 + v16 + 32);
        sub_1E135CC44((v29 > 1), v18 + 1, 1);
        v21 = v33;
        v20 = v34;
        v25 = v35;
        v24 = v36;
        v23 = v37;
        v22 = v38;
        v27 = v39;
        v26 = v40;
        v17 = v48;
      }

      *(v17 + 16) = v30;
      v31 = v17 + v19 + v16;
      *(v31 + 32) = v20;
      *(v31 + 48) = v21;
      *(v31 + 64) = 0;
      *(v31 + 66) = v45;
      *(v31 + 70) = v46;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 88) = v22;
      *(v31 + 104) = v23;
      *(v31 + 120) = v24;
      *(v31 + 136) = v25;
      *(v31 + 152) = v28;
      *(v31 + 156) = *&v44[3];
      *(v31 + 153) = *v44;
      *(v31 + 160) = v26;
      *(v31 + 176) = v27;
      v16 += 160;
      v18 = v30;
      --v15;
    }

    while (v15);
    v3 = v41;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  return PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v3, v4, v49, v14, v17, a1, v43, v42, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t UIEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E6900390](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1E6900390](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x1E6900390](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x1E6900390](*&v9);
}

uint64_t UIEdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_1E1AF762C();
  UIEdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_1E1AF767C();
}

uint64_t sub_1E1976F94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E1AF762C();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_1E1AF767C();
}

uint64_t sub_1E1977008()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E1AF762C();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_1E1AF767C();
}

double static PageGrid.DirectionalValue<>.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EE1E4578 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EE1D2F08;
  *a1 = xmmword_1EE1D2F08;
  return result;
}

uint64_t sub_1E19770E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E1968F00(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1E197773C((*a3 + 160 * *v85), (*a3 + 160 * *v87), (*a3 + 160 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 160 * v6);
      v10 = 160 * v8;
      v11 = (*a3 + 160 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 40;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 20;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 160 * v6 - 160;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v105 = *(v22 + v10 + 96);
            v107 = *(v22 + v10 + 112);
            v109 = *(v22 + v10 + 128);
            v111 = *(v22 + v10 + 144);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0xA0uLL);
            v21[6] = v105;
            v21[7] = v107;
            v21[8] = v109;
            v21[9] = v111;
            v21[2] = v97;
            v21[3] = v99;
            v21[4] = v101;
            v21[5] = v103;
            *v21 = v93;
            v21[1] = v95;
          }

          ++v20;
          v18 -= 160;
          v10 += 160;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_1E172D878((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_1E197773C((*a3 + 160 * *v78), (*a3 + 160 * *v80), (*a3 + 160 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 160 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 160);
    if (*v27 >= *(v27 - 160))
    {
LABEL_29:
      ++v6;
      v24 += 160;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v106 = *(v27 + 96);
    v108 = *(v27 + 112);
    v110 = *(v27 + 128);
    v112 = *(v27 + 144);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v94 = *v27;
    v96 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 96) = *(v27 - 64);
    *(v27 + 112) = v29;
    v30 = *(v27 - 16);
    *(v27 + 128) = *(v27 - 32);
    *(v27 + 144) = v30;
    v31 = *(v27 - 112);
    *(v27 + 32) = *(v27 - 128);
    *(v27 + 48) = v31;
    v32 = *(v27 - 80);
    *(v27 + 64) = *(v27 - 96);
    *(v27 + 80) = v32;
    v33 = *(v27 - 144);
    *v27 = *v28;
    *(v27 + 16) = v33;
    v27 -= 160;
    v28[6] = v106;
    v28[7] = v108;
    v28[8] = v110;
    v28[9] = v112;
    v28[2] = v98;
    v28[3] = v100;
    v28[4] = v102;
    v28[5] = v104;
    *v28 = v94;
    v28[1] = v96;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E197773C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 160;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 160;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[20 * v9] <= a4)
    {
      memmove(a4, __dst, 160 * v9);
    }

    v12 = &v4[20 * v9];
    if (v8 < 160)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 20;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 20;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 20;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xA0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[20 * v11] <= a4)
  {
    memmove(a4, __src, 160 * v11);
  }

  v12 = &v4[20 * v11];
  if (v10 >= 160 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 20;
    v5 -= 20;
    v16 = v12;
    do
    {
      v17 = v5 + 20;
      v18 = *(v16 - 20);
      v16 -= 20;
      if (v18 < *v15)
      {
        if (v17 != v6)
        {
          memmove(v5, v6 - 20, 0xA0uLL);
        }

        if (v12 <= v4 || (v6 -= 20, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        memmove(v5, v16, 0xA0uLL);
      }

      v5 -= 20;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v19 = (v12 - v4) / 160;
  if (v6 != v4 || v6 >= &v4[20 * v19])
  {
    memmove(v6, v4, 160 * v19);
  }

  return 1;
}

uint64_t _s11AppStoreKit8PageGridV10BreakpointV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 32) == *(a2 + 32))
  {
    v3 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 88), *(a2 + 88))), xmmword_1E1B264B0)) & 0xF;
    v4 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56)))), xmmword_1E1B43CB0)) == 255 && v3 == 0;
    if (v4 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0)
    {
      v6 = *(a2 + 104);
      v5 = *(a2 + 112);
      v7 = *(a2 + 120);
      if (!*(a1 + 120))
      {
        v2 = 0;
        if (*(a2 + 120))
        {
          return v2 & 1;
        }

LABEL_13:
        if (*(a1 + 104) != v6 || *(a1 + 112) != v5)
        {
          return v2 & 1;
        }

LABEL_18:
        v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144)))));
        return v2 & 1;
      }

      if (*(a1 + 120) == 1)
      {
        if (v7 != 1)
        {
          v2 = 0;
          return v2 & 1;
        }

        v2 = 0;
        goto LABEL_13;
      }

      v2 = 0;
      if (v7 == 2 && !(*&v5 | *&v6))
      {
        goto LABEL_18;
      }
    }
  }

  return v2 & 1;
}

BOOL _s11AppStoreKit8PageGridV17HorizontalMarginsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_6:
    if (*a1 == v3)
    {
      return *(a1 + 8) == v2;
    }

    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return v4 == 2 && (*&v2 | *&v3) == 0;
}

unint64_t sub_1E1977B44()
{
  result = qword_1ECEBB8F0;
  if (!qword_1ECEBB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB8F0);
  }

  return result;
}

unint64_t sub_1E1977BB8()
{
  result = qword_1ECEBB8F8;
  if (!qword_1ECEBB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB8F8);
  }

  return result;
}

unint64_t sub_1E1977C0C()
{
  result = qword_1EE1D2F18;
  if (!qword_1EE1D2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F18);
  }

  return result;
}

unint64_t sub_1E1977C64()
{
  result = qword_1ECEBB900;
  if (!qword_1ECEBB900)
  {
    type metadata accessor for UIEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB900);
  }

  return result;
}

uint64_t sub_1E1977CC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 264);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1977D0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 264) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1977DD0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1977E40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1E1977F90(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1E19781A8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1E19781D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E1978224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E19782A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001E1B56C80;
  if (v2 == 1)
  {
    v5 = 0x80000001E1B56C80;
  }

  else
  {
    v3 = 0x6C7070416E65706FLL;
    v5 = 0xEF6E6F6974616369;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7107189;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6C7070416E65706FLL;
    v4 = 0xEF6E6F6974616369;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E19783B0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E197845C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E19784F4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E197859C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E19796B0();
  *a1 = result;
  return result;
}

void sub_1E19785CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x80000001E1B56C80;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6C7070416E65706FLL;
    v4 = 0xEF6E6F6974616369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7107189;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TopShelfAction.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfAction.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t *TopShelfAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v97 = a2;
  v98 = v2;
  v6 = *v4;
  v94 = v3;
  v95 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v87 - v12;
  v13 = sub_1E1AEFCCC();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v87 - v28;
  v30 = 0xEA0000000000656DLL;
  v96 = 0x614E746567726174;
  v31 = a1;
  sub_1E1AF381C();
  sub_1E197905C();
  sub_1E1AF36DC();
  v33 = *(v16 + 8);
  v32 = (v16 + 8);
  v99 = v15;
  v100 = v33;
  v33(v29, v15);
  if (v101 > 1u)
  {
    if (v101 != 2)
    {
      v39 = v98;
      v34 = a1;
      goto LABEL_11;
    }

    v30 = 0x80000001E1B5AAA0;
    v34 = a1;
    sub_1E1AF381C();
    v40 = sub_1E1AF37CC();
    v42 = v41;
    v43 = v99;
    v100(v20, v99);
    if (!v42)
    {
      v96 = 0xD000000000000010;
      v39 = v98;
      goto LABEL_12;
    }

    v39 = v98;
    v44 = v32;
    v45 = (v98 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_target);
    *v45 = v40;
    v45[1] = v42;
    type metadata accessor for TopShelfAction.Target(0);
    v32 = v44;
    swift_storeEnumTagMultiPayload();
  }

  else if (v101)
  {
    v30 = 0x80000001E1B5AAA0;
    sub_1E1AF381C();
    v46 = sub_1E1AF37CC();
    v48 = v47;
    v43 = v99;
    v100(v23, v99);
    v39 = v98;
    if (!v48)
    {
      v96 = 0xD000000000000010;
      v34 = v31;
      goto LABEL_12;
    }

    v49 = v32;
    v50 = (v98 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_target);
    *v50 = v46;
    v50[1] = v48;
    type metadata accessor for TopShelfAction.Target(0);
    v32 = v49;
    swift_storeEnumTagMultiPayload();
    v34 = v31;
  }

  else
  {
    v34 = a1;
    sub_1E1AF381C();
    v35 = v90;
    sub_1E1AF36FC();
    v100(v26, v99);
    v37 = v88;
    v36 = v89;
    v38 = (*(v88 + 48))(v35, 1, v89);
    v39 = v98;
    if (v38 == 1)
    {
      v96 = 7107189;
      sub_1E1308058(v35, &unk_1ECEB4B60);
      v30 = 0xE300000000000000;
LABEL_11:
      v43 = v99;
LABEL_12:
      v51 = sub_1E1AF5A7C();
      sub_1E1380704();
      swift_allocError();
      v52 = v95;
      *v53 = v96;
      v53[1] = v30;
      v53[2] = v52;
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69AB690], v51);
      swift_willThrow();
      v54 = sub_1E1AF39DC();
      (*(*(v54 - 8) + 8))(v97, v54);
      v100(v34, v43);
      type metadata accessor for TopShelfAction(0);
      swift_deallocPartialClassInstance();
      return v39;
    }

    v55 = *(v37 + 32);
    v56 = v87;
    v55(v87, v35, v36);
    v55(v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_target, v56, v36);
    type metadata accessor for TopShelfAction.Target(0);
    swift_storeEnumTagMultiPayload();
    v43 = v99;
  }

  sub_1E1AF381C();
  v57 = sub_1E1AF37CC();
  v59 = v58;
  v60 = v100;
  v100(v29, v43);
  v61 = (v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_title);
  *v61 = v57;
  v61[1] = v59;
  sub_1E1AF381C();
  v62 = sub_1E1AF37CC();
  v64 = v63;
  v60(v29, v43);
  v65 = (v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_subtitle);
  *v65 = v62;
  v65[1] = v64;
  sub_1E1AF381C();
  v66 = sub_1E1AF37CC();
  v68 = v67;
  v60(v29, v43);
  v69 = (v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_imageName);
  *v69 = v66;
  v69[1] = v68;
  v70 = v91;
  sub_1E1AF381C();
  v71 = v92;
  sub_1E1AF368C();
  v98 = v32;
  v60(v70, v43);
  v72 = v93;
  sub_1E19790F0(v71, v93);
  v73 = sub_1E1AF40DC();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_1E1308058(v71, &qword_1ECEB2B28);
    sub_1E1308058(v72, &qword_1ECEB2B28);
    v75 = 0;
  }

  else
  {
    v76 = v34;
    v77 = v71;
    v78 = v72;
    v75 = sub_1E1AF40AC();
    v79 = v77;
    v34 = v76;
    v43 = v99;
    sub_1E1308058(v79, &qword_1ECEB2B28);
    (*(v74 + 8))(v78, v73);
  }

  *(v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_userInfo) = v75;
  sub_1E1AF381C();
  v80 = sub_1E1AF37CC();
  v82 = v81;
  v83 = sub_1E1AF39DC();
  (*(*(v83 - 8) + 8))(v97, v83);
  v84 = v100;
  v100(v34, v43);
  v84(v29, v43);
  v85 = (v39 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_accessibilityLabel);
  *v85 = v80;
  v85[1] = v82;
  return v39;
}

unint64_t sub_1E197905C()
{
  result = qword_1ECEBB908;
  if (!qword_1ECEBB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB908);
  }

  return result;
}

uint64_t sub_1E19790F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1979174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopShelfAction.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TopShelfAction.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_title);

  return v1;
}

uint64_t TopShelfAction.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_subtitle);

  return v1;
}

uint64_t TopShelfAction.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_imageName);

  return v1;
}

uint64_t TopShelfAction.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_accessibilityLabel);

  return v1;
}

uint64_t TopShelfAction.deinit()
{
  sub_1E1979360(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_target);

  return v0;
}

uint64_t sub_1E1979360(uint64_t a1)
{
  v2 = type metadata accessor for TopShelfAction.Target(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TopShelfAction.__deallocating_deinit()
{
  sub_1E1979360(v0 + OBJC_IVAR____TtC11AppStoreKit14TopShelfAction_target);

  return swift_deallocClassInstance();
}

unint64_t *sub_1E1979480@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelfAction(0);
  v7 = swift_allocObject();
  result = TopShelfAction.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E19794F4()
{
  result = type metadata accessor for TopShelfAction.Target(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E19795DC()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E197965C()
{
  result = qword_1ECEBB930[0];
  if (!qword_1ECEBB930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBB930);
  }

  return result;
}

uint64_t sub_1E19796B0()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E1979708(char *a1)
{
  v2 = sub_1E1AF3E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v11 = &type metadata for PreorderStatus;
  v10[0] = v7;
  sub_1E1AF385C();
  sub_1E13E44F8(v10);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  (*(v3 + 104))(v5, *MEMORY[0x1E69AB010], v2);
  sub_1E1AF586C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E19799BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  __swift_project_value_buffer(v7, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v13[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF385C();
  sub_1E13E44F8(v13);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v9.underlyingAdamID._object = swift_getObjectType();
  v13[0] = a4;
  v13[1] = a5;
  v9.underlyingAdamID._countAndFlagsBits = v13;
  AppStateController.clearWaiting(for:)(v9);
  return sub_1E1AF584C();
}

uint64_t sub_1E1979C2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v2 = sub_1E1AF588C();
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId);
  v3 = *(a1 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId + 8);
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_isArcade);
  type metadata accessor for Commerce();

  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF55EC();
  v10 = *v11;
  v11[0] = v4;
  v11[1] = v3;
  sub_1E1618440(v11, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = v10;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = sub_1E1361A80();
  swift_retain_n();
  swift_unknownObjectRetain();
  v8 = sub_1E1AF68EC();
  v12 = v7;
  v13 = MEMORY[0x1E69AB720];
  v11[0] = v8;
  sub_1E1AF57FC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v2;
}

unint64_t sub_1E1979E08()
{
  result = qword_1ECEBA350;
  if (!qword_1ECEBA350)
  {
    type metadata accessor for CancelPreorderAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA350);
  }

  return result;
}

uint64_t PosterLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v46 = sub_1E1AF380C();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v50 = v5;
  v51 = *(v5 + 16);
  v40 = v4;
  v51(v9, a2, v4);
  v17 = sub_1E197A3F0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v42 = v16;
  v43 = v17;
  sub_1E1AF464C();
  v18 = v52;
  *(v52 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterArtwork) = v53;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v19 = v4;
  v44 = v5 + 16;
  v20 = v51;
  v51(v9, a2, v19);
  sub_1E197A3F0(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  v21 = v18;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterVideo) = v53;
  sub_1E1AF381C();
  v41 = a2;
  v22 = v40;
  v20(v9, a2, v40);
  sub_1E1AF464C();
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_epicHeading) = v53;
  v23 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v27 = v48;
  v28 = *(v48 + 8);
  v29 = v46;
  v28(v15, v46);
  v30 = v52;
  v31 = (v52 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_footerText);
  *v31 = v24;
  v31[1] = v26;
  v32 = v45;
  sub_1E1AF381C();
  LOBYTE(v24) = sub_1E1AF370C();
  v45 = v28;
  v28(v32, v29);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_isDark) = v24 & 1;
  v33 = v29;
  v34 = *(v27 + 16);
  v35 = v47;
  v48 = v23;
  v34(v47, v23, v33);
  v36 = v49;
  v37 = v41;
  (v51)(v49);
  v38 = Lockup.init(deserializing:using:)(v35, v36);
  (*(v50 + 8))(v37, v22);
  (v45)(v48, v33);
  return v38;
}

uint64_t sub_1E197A3F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PosterLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:posterArtwork:posterVideo:epicHeading:footerText:isDark:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned __int8 a34)
{
  v87 = a8;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v82 = a4;
  v80 = a3;
  v78 = a2;
  v67 = a28;
  v94 = a25;
  v95 = a26;
  v93 = a24;
  v91 = a27;
  v92 = a23;
  v90 = a22;
  v88 = a21;
  v73 = a20;
  v72 = a19;
  v89 = a18;
  v81 = a17;
  v79 = a16;
  v77 = a15;
  v76 = a14;
  v85 = a13;
  v75 = a12;
  v74 = a11;
  v71 = a10;
  v70 = a9;
  v66 = a34;
  v65 = sub_1E1AEFEAC();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v63 - v38;
  v40 = swift_allocObject();
  *(v40 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterArtwork) = a29;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterVideo) = a30;
  v41 = a1[1];
  v69 = *a1;
  v68 = v41;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_epicHeading) = a31;
  v42 = (v40 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_footerText);
  *v42 = a32;
  v42[1] = a33;
  v43 = v67;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_isDark) = v66;
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  sub_1E134FD1C(v43, v39, &unk_1ECEB1770);
  *(v40 + 424) = 4;
  sub_1E134FD1C(v101, &v98, &unk_1ECEB5670);
  if (*(&v99 + 1))
  {
    v44 = v99;
    *(v40 + 448) = v98;
    *(v40 + 464) = v44;
    *(v40 + 480) = v100;
  }

  else
  {

    sub_1E1AEFE9C();
    v45 = sub_1E1AEFE7C();
    v47 = v46;
    (*(v64 + 8))(v36, v65);
    v96 = v45;
    v97 = v47;
    sub_1E1AF6F6C();
    sub_1E1308058(&v98, &unk_1ECEB5670);
  }

  sub_1E134FD1C(v39, v40 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);

  v48 = v68;
  *(v40 + 16) = v69;
  *(v40 + 24) = v48;
  v49 = v80;
  *(v40 + 32) = v78;
  *(v40 + 40) = v49;
  *(v40 + 48) = v82;
  *(v40 + 56) = 0;
  v50 = v73;
  *(v40 + 64) = v72;
  *(v40 + 72) = v50;
  v51 = v84;
  *(v40 + 80) = v83;
  *(v40 + 88) = v51;
  v52 = v87;
  *(v40 + 96) = v86;
  *(v40 + 104) = v52;
  v53 = v71;
  *(v40 + 112) = v70;
  *(v40 + 120) = v53;
  *(v40 + 128) = 0;
  *(v40 + 136) = 2;
  v54 = v75;
  *(v40 + 144) = v74;
  *(v40 + 152) = v54;
  v55 = v77;
  *(v40 + 192) = v76;
  *(v40 + 200) = v55;
  v56 = v81;
  *(v40 + 208) = v79;
  *(v40 + 216) = v56;
  *(v40 + 376) = 0u;
  *(v40 + 392) = 0u;
  *(v40 + 408) = 0x8000;
  *(v40 + 360) = v91;
  *(v40 + 416) = 0;
  *(v40 + 432) = MEMORY[0x1E69E7CD0];
  v57 = v90;
  *(v40 + 160) = v88;
  *(v40 + 168) = v57;
  v58 = v85;
  *(v40 + 176) = v92;
  *(v40 + 184) = v58;
  v60 = v93;
  v59 = v94;
  *(v40 + 224) = v89;
  *(v40 + 232) = v60;
  *(v40 + 240) = v59;
  *(v40 + 248) = 0;
  v61 = v95;
  *(v40 + 256) = 0;
  *(v40 + 264) = v61;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0u;
  *(v40 + 304) = 0u;
  *(v40 + 320) = 0u;
  *(v40 + 336) = 0;
  sub_1E1308058(v43, &unk_1ECEB1770);
  sub_1E1308058(v39, &unk_1ECEB1770);
  sub_1E1308058(v101, &unk_1ECEB5670);
  *(v40 + 344) = MEMORY[0x1E69E7CC0];
  *(v40 + 352) = 0;
  *(v40 + 440) = 0;
  *(v40 + 368) = 0;
  return v40;
}

uint64_t PosterLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:posterArtwork:posterVideo:epicHeading:footerText:isDark:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v35 = v34;
  v87 = a8;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v82 = a4;
  v80 = a3;
  v78 = a2;
  v67 = a28;
  v91 = a27;
  v94 = a25;
  v95 = a26;
  v93 = a24;
  v92 = a23;
  v90 = a22;
  v88 = a21;
  v73 = a20;
  v72 = a19;
  v89 = a18;
  v81 = a17;
  v79 = a16;
  v77 = a15;
  v76 = a14;
  v85 = a13;
  v75 = a12;
  v74 = a11;
  v71 = a10;
  v70 = a9;
  v66 = sub_1E1AEFEAC();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v65 - v40;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterArtwork) = a29;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_posterVideo) = a30;
  v42 = a1[1];
  v69 = *a1;
  v68 = v42;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_epicHeading) = a31;
  v43 = (v35 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_footerText);
  *v43 = a32;
  v43[1] = a33;
  v44 = v67;
  v45 = v41;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_isDark) = a34;
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  sub_1E134FD1C(v44, v41, &unk_1ECEB1770);
  *(v35 + 424) = 4;
  sub_1E134FD1C(v104, &v98, &unk_1ECEB5670);
  if (*(&v99 + 1))
  {
    v101 = v98;
    v102 = v99;
    v103 = v100;
  }

  else
  {

    sub_1E1AEFE9C();
    v46 = sub_1E1AEFE7C();
    v48 = v47;
    (*(v65 + 8))(v38, v66);
    v96 = v46;
    v97 = v48;
    sub_1E1AF6F6C();
    sub_1E1308058(&v98, &unk_1ECEB5670);
  }

  v49 = v102;
  *(v35 + 448) = v101;
  *(v35 + 464) = v49;
  *(v35 + 480) = v103;
  sub_1E134FD1C(v45, v35 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v50 = v68;
  *(v35 + 16) = v69;
  *(v35 + 24) = v50;
  v51 = v80;
  *(v35 + 32) = v78;
  *(v35 + 40) = v51;
  *(v35 + 48) = v82;
  *(v35 + 56) = 0;
  v52 = v73;
  *(v35 + 64) = v72;
  *(v35 + 72) = v52;
  v53 = v84;
  *(v35 + 80) = v83;
  *(v35 + 88) = v53;
  v54 = v87;
  *(v35 + 96) = v86;
  *(v35 + 104) = v54;
  v55 = v71;
  *(v35 + 112) = v70;
  *(v35 + 120) = v55;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  v56 = v75;
  *(v35 + 144) = v74;
  *(v35 + 152) = v56;
  v57 = v77;
  *(v35 + 192) = v76;
  *(v35 + 200) = v57;
  v58 = v81;
  *(v35 + 208) = v79;
  *(v35 + 216) = v58;
  *(v35 + 376) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0x8000;
  *(v35 + 360) = v91;
  *(v35 + 416) = 0;
  *(v35 + 432) = MEMORY[0x1E69E7CD0];
  v59 = v90;
  *(v35 + 160) = v88;
  *(v35 + 168) = v59;
  v60 = v85;
  *(v35 + 176) = v92;
  *(v35 + 184) = v60;
  v62 = v93;
  v61 = v94;
  *(v35 + 224) = v89;
  *(v35 + 232) = v62;
  *(v35 + 240) = v61;
  *(v35 + 248) = 0;
  v63 = v95;
  *(v35 + 256) = 0;
  *(v35 + 264) = v63;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0u;
  *(v35 + 320) = 0u;
  *(v35 + 336) = 0;

  sub_1E1308058(v44, &unk_1ECEB1770);
  sub_1E1308058(v45, &unk_1ECEB1770);
  sub_1E1308058(v104, &unk_1ECEB5670);
  *(v35 + 344) = MEMORY[0x1E69E7CC0];
  *(v35 + 352) = 0;
  *(v35 + 440) = 0;
  *(v35 + 368) = 0;
  return v35;
}

uint64_t PosterLockup.footerText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12PosterLockup_footerText);

  return v1;
}

uint64_t sub_1E197B014()
{
}

uint64_t PosterLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t PosterLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PosterLockup()
{
  result = qword_1EE1F5E10;
  if (!qword_1EE1F5E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HttpAction.start(urlSession:bag:process:bagContract:mediaTokenService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1E1AEF3AC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    swift_unknownObjectRetain_n();
    v14 = [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:a5 bag:sub_1E1AF527C()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v14 setClientInfo_];
    v15 = [objc_opt_self() ams_sharedAccountStore];
    v16 = [v15 ams_activeiTunesAccount];

    [v14 setAccount_];
    [v14 setDisableResponseDecoding_];
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    swift_unknownObjectRelease();
    [v14 setIncludeClientVersions_];
    v17 = [objc_opt_self() ams_sharedAccountStore];
    v18 = [v17 ams_activeiTunesAccount];

    [v14 setAccount_];
    [v14 setClientInfo_];
    v19 = [objc_allocWithZone(MEMORY[0x1E698CB90]) init];
    [v14 setResponseDecoder_];

    v20 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
    swift_beginAccess();
    if (*(v6 + v20))
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    [v14 setAnisetteType_];
    [v14 setMescalType_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A00);
  sub_1E197B7E8();
  v22 = sub_1E1AEF31C();
  (*(v11 + 8))(v13, v10);
  v23 = [v14 requestByEncodingRequest:v22 parameters:0];

  sub_1E1AF587C();
  v24 = sub_1E1AF470C();
  v25 = MEMORY[0x1E69AB218];
  v30 = v24;
  v31 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v29);
  sub_1E1AF46FC();
  sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v29);
  *(swift_allocObject() + 16) = a1;
  v30 = v24;
  v31 = v25;
  __swift_allocate_boxed_opaque_existential_0(v29);
  v26 = a1;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08);
  sub_1E142ACD0();
  v27 = sub_1E1AF585C();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v27;
}

uint64_t sub_1E197B7E8()
{
  v1 = sub_1E1AF5E5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1E1AEFCCC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v0 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_url, v6);
  sub_1E1AEF34C();
  swift_beginAccess();
  sub_1E1AEF2EC();
  swift_beginAccess();

  sub_1E1AEF32C();
  v9 = v0 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body;
  swift_beginAccess();
  if (*(v9 + 8))
  {

    sub_1E1AF5E4C();
    sub_1E1AF5E0C();

    (*(v2 + 8))(v4, v1);
  }

  sub_1E1AEF38C();
  swift_beginAccess();
  return sub_1E1AEF2FC();
}

__n128 PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)@<Q0>(void *__src@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  memcpy((a5 + 96), __src, 0x118uLL);
  *(a5 + 80) = v8;
  *(a5 + 88) = v9;
  *(a5 + 89) = v10;
  sub_1E1308EC0(a3, a5);
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 40) = *a4;
  *(a5 + 56) = v12;
  *(a5 + 72) = *(a4 + 32);
  return result;
}

void PlatformSelectorViewLayout.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PlatformSelectorViewLayout.Metrics.AccessoryAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenInline.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeSpaceExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t PlatformSelectorViewLayout.Metrics.accessoryHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

void PlatformSelectorViewLayout.Metrics.accessoryContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

uint64_t PlatformSelectorViewLayout.Metrics.bottomSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t PlatformSelectorViewLayout.Metrics.init(badgeHorizontalPadding:textSpaceWhenInline:textSpaceWhenExclusiveLine:badgeSpaceExclusiveLine:accessoryHorizontalPadding:accessoryContentInsets:accessoryAlignment:bottomSpacer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v31 = *a6;
  sub_1E1300B24(a1, a8);
  v21 = sub_1E1AF166C();
  v22 = MEMORY[0x1E69AB980];
  *(a8 + 64) = v21;
  *(a8 + 72) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a8 + 40));
  v24 = *(v21 - 8);
  v25 = *(v24 + 16);
  v25(boxed_opaque_existential_0, a2, v21);
  *(a8 + 104) = v21;
  *(a8 + 112) = v22;
  v26 = __swift_allocate_boxed_opaque_existential_0((a8 + 80));
  v25(v26, a3, v21);
  *(a8 + 144) = v21;
  *(a8 + 152) = v22;
  v27 = __swift_allocate_boxed_opaque_existential_0((a8 + 120));
  (*(v24 + 32))(v27, a4, v21);
  v28 = *(v24 + 8);
  v28(a3, v21);
  v28(a2, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1E1308EC0(a5, a8 + 160);
  *(a8 + 200) = a9;
  *(a8 + 208) = a10;
  *(a8 + 216) = a11;
  *(a8 + 224) = a12;
  *(a8 + 232) = v31;

  return sub_1E1308EC0(a7, a8 + 240);
}

id static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v21 = sub_1E1AF5DBC();
    v18 = [v22 initWithString_];
    goto LABEL_6;
  }

  v43[0] = v12;
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *(a5 + 9);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (v17 != 1)
  {
    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v24 = sub_1E1AF5DBC();

    v25 = [v23 initWithString_];

    [v18 appendAttributedString_];
    if (v16)
    {
      return v18;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v26 setHeadIndent_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v28 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    v29 = inited + 32;
    *(inited + 64) = sub_1E18E1908();
    *(inited + 40) = v26;
    v30 = v28;
    v31 = v26;
LABEL_10:
    v40 = v31;
    sub_1E159D27C(inited);
    swift_setDeallocating();
    sub_1E1308058(v29, &unk_1ECEBB9D0);
    type metadata accessor for Key(0);
    sub_1E16FAC84();
    v41 = sub_1E1AF5C6C();

    [v18 addAttributes:v41 range:{0, objc_msgSend(v18, sel_length)}];

    return v18;
  }

  if (!(*&v15 | v16))
  {
    v43[10] = 10;
    v43[11] = 0xE100000000000000;
    MEMORY[0x1E68FECA0](a1, a2);
    v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v33 = sub_1E1AF5DBC();

    v34 = [v32 initWithString_];

    [v18 appendAttributedString_];
    v35 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    __swift_project_boxed_opaque_existential_1Tm((a4 + 120), *(a4 + 144));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v37 = v36;
    (*(v11 + 8))(v14, v43[0]);
    [v35 setParagraphSpacing_];
    [v35 setLineBreakMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v38 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    v29 = inited + 32;
    *(inited + 64) = sub_1E18E1908();
    *(inited + 40) = v35;
    v39 = v38;
    v31 = v35;
    goto LABEL_10;
  }

  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v20 = sub_1E1AF5DBC();

  v21 = [v19 initWithString_];

  [v18 appendAttributedString_];
LABEL_6:

  return v18;
}

double PlatformSelectorViewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8((v2 + 5), v20);
  if (!v21)
  {
    sub_1E1308058(v20, &qword_1ECEB4E00);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  sub_1E1AF11DC();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v11 <= 0.0)
  {
LABEL_5:
    v12 = MEMORY[0x1E69E63B0];
    v21 = MEMORY[0x1E69E63B0];
    v22 = MEMORY[0x1E69ABBA8];
    v20[0] = 0;
    goto LABEL_6;
  }

  sub_1E1300B24((v2 + 32), v20);
  v12 = v21;
LABEL_6:
  __swift_project_boxed_opaque_existential_1Tm(v20, v12);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v13 = *(v7 + 8);
  v17[2] = v7 + 8;
  v19 = v13;
  v13(v9, v6);
  v14 = v3[3];
  v17[1] = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v14);
  v18 = v6;
  v15 = [a1 traitCollection];
  sub_1E1AF698C();

  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 17, v3[20]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 42, v3[45]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19(v9, v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return ceil(a2);
}

uint64_t BadgeDisplayStyle.numberOfLines(for:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = [a1 traitCollection];
  v6 = sub_1E1AF698C();

  v7 = 2;
  if (v6)
  {
    v7 = 3;
  }

  if (v2 | v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v4 == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t PlatformSelectorViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v70 = a2;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8(v6 + 40, v77);
  if (v78)
  {
    __swift_project_boxed_opaque_existential_1Tm(v77, v78);
    sub_1E1AF11DC();
    v18 = v17;
    v65 = v19;
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (v18 > 0.0)
    {
      sub_1E1300B24(v6 + 256, v77);
      v20 = v78;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E1308058(v77, &qword_1ECEB4E00);
    v65 = 0;
    v18 = 0.0;
  }

  v20 = MEMORY[0x1E69E63B0];
  v78 = MEMORY[0x1E69E63B0];
  v79 = MEMORY[0x1E69ABBA8];
  v77[0] = 0;
LABEL_6:
  __swift_project_boxed_opaque_existential_1Tm(v77, v20);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v22 = v21;
  v23 = *(v14 + 8);
  v66 = v16;
  v68 = v13;
  v67 = v14 + 8;
  v63 = v23;
  v23(v16, v13);
  v64 = v18;
  v72 = a5 - (v18 + v22);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  v24 = [a1 traitCollection];
  sub_1E1AF698C();

  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF11CC();
  v26 = v25;
  v28 = v27;
  v71 = v29;
  v69 = v30;
  v80.origin.x = a3;
  v80.origin.y = a4;
  v80.size.width = a5;
  v80.size.height = a6;
  v31 = floor(CGRectGetMinX(v80));
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  v32 = a3;
  v33 = a4;
  MinY = CGRectGetMinY(v81);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 136), *(v7 + 160));
  sub_1E1AF12FC();
  v36 = MinY + v35;
  v37 = v33;
  v38 = v32;
  v39 = floor(v36);
  v40 = v72;
  if (v26 < v72)
  {
    v40 = v26;
  }

  v41 = a5;
  v42 = ceil(v40);
  v43 = ceil(v28);
  v44 = a6;
  v45 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  v72 = v31;
  v71 = v43;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E14F59A8(v7 + 40, &v73);
  if (v74)
  {
    sub_1E1308EC0(&v73, v75);
    v46 = *(v7 + 328);
    v69 = v39;
    v62 = v42;
    if (v46)
    {
      v82.origin.x = v38;
      v82.origin.y = v45;
      v82.size.width = v41;
      v82.size.height = v44;
      CGRectGetMaxX(v82);
      v47 = v38;
      v48 = v45;
      v49 = v41;
      v50 = v44;
      v51 = v68;
      v52 = v66;
      v53 = v63;
    }

    else
    {
      v54 = [a1 traitCollection];
      v55 = sub_1E1AF696C();

      v51 = v68;
      v52 = v66;
      v53 = v63;
      if ((v55 & 1) != 0 && (v56 = [a1 traitCollection], v57 = sub_1E1AF698C(), v56, (v57 & 1) == 0))
      {
        v84.origin.x = v72;
        v84.origin.y = v39;
        v84.size.width = v42;
        v84.size.height = v71;
        CGRectGetMaxX(v84);
        __swift_project_boxed_opaque_existential_1Tm(v77, v78);
        sub_1E13BC274();
        sub_1E1AF12DC();
        v50 = v44;
        v53(v52, v51);
        v47 = v38;
        v48 = v45;
        v49 = v41;
      }

      else
      {
        v83.origin.x = v38;
        v83.origin.y = v45;
        v83.size.width = v41;
        v83.size.height = v44;
        CGRectGetMaxX(v83);
        v47 = v38;
        v48 = v45;
        v49 = v41;
        v50 = v44;
      }
    }

    v85.origin.x = v47;
    v85.origin.y = v48;
    v85.size.width = v49;
    v85.size.height = v50;
    CGRectGetMinY(v85);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 136), *(v7 + 160));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v53(v52, v51);
    __swift_project_boxed_opaque_existential_1Tm(v75, v76);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v75);
    v39 = v69;
    v42 = v62;
  }

  else
  {
    sub_1E1308058(&v73, &qword_1ECEB4E00);
  }

  v58 = v72;
  v86.origin.x = v72;
  v86.origin.y = v39;
  v86.size.width = v42;
  v59 = v71;
  v86.size.height = v71;
  CGRectGetMinX(v86);
  v87.origin.x = v58;
  v87.origin.y = v39;
  v87.size.width = v42;
  v87.size.height = v59;
  CGRectGetMinY(v87);
  sub_1E14F59A8(v7 + 40, v75);
  if (v76)
  {
    __swift_project_boxed_opaque_existential_1Tm(v75, v76);
    sub_1E1AF115C();
    CGRectGetMaxX(v88);
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_1E1308058(v75, &qword_1ECEB4E00);
    v89.origin.x = v58;
    v89.origin.y = v39;
    v89.size.width = v42;
    v89.size.height = v59;
    CGRectGetMaxX(v89);
  }

  v90.origin.x = v58;
  v90.origin.y = v39;
  v90.size.width = v42;
  v90.size.height = v59;
  CGRectGetHeight(v90);
  sub_1E1AF106C();
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

double sub_1E197D1C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9F0);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  *&result = 1;
  *(v1 + 24) = xmmword_1E1B06D70;
  off_1EE1F1740 = v1;
  return result;
}

uint64_t static BadgeDisplayStyle.numberOfBadgesAllowedInline.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE1F1730 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1EE1F1740;
}

void static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_1EE1F1730 != -1)
  {
    swift_once();
  }

  v14 = a2;
  (*(*off_1EE1F1740 + 104))(&v15, &v14);
  if (v15 >= a1)
  {
    v12 = [a2 traitCollection];
    v13 = sub_1E1AF698C();

    if (v13)
    {
      v10 = 0;
      a3 = 1;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = a4 & 1;
    }
  }

  else
  {
    a3 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a5 = a3;
  *(a5 + 8) = v10;
  *(a5 + 9) = v11;
}

BOOL static BadgeDisplayStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1E197D46C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E197D4F4()
{
  result = qword_1ECEBB9E0;
  if (!qword_1ECEBB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB9E0);
  }

  return result;
}

uint64_t sub_1E197D560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_1E197D5A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeDisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BadgeDisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1E197D6A0(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E197D6BC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t ContingentOffer.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_subtitle);

  return v1;
}

uint64_t ContingentOffer.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_badge);

  return v1;
}

uint64_t ContingentOffer.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_label);

  return v1;
}

uint64_t ContingentOffer.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_description);

  return v1;
}

uint64_t ContingentOffer.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_learnMoreTitle);

  return v1;
}

uint64_t ContingentOffer.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_offerLockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_1E197F6C4(qword_1EE1E4F68, type metadata accessor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t ContingentOffer.__allocating_init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v51 = a8;
  v48 = a7;
  v47 = a6;
  v52 = a21;
  v53 = a1;
  v58 = a19;
  v59 = a20;
  v57 = a18;
  v56 = a17;
  v54 = a16;
  v55 = a15;
  v50 = a14;
  v49 = a13;
  v46 = sub_1E1AEFEAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a4;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_title) = a5;
  v29 = (v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_subtitle);
  v30 = v48;
  *v29 = v47;
  v29[1] = v30;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_additionalInfo) = v51;
  v31 = (v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_description);
  *v31 = a9;
  v31[1] = a10;
  v32 = (v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_label);
  *v32 = a11;
  v32[1] = a12;
  v34 = v52;
  v33 = v53;
  v35 = (v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_badge);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  v37 = v55;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_trunkAppIcon) = v54;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_offerLockup) = v37;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_supportsStreamlinedBuy) = v56;
  v38 = (v27 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_learnMoreTitle);
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  sub_1E134FD1C(v33, v65, &unk_1ECEB5670);
  sub_1E134FD1C(v34, v27 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v65, &v62, &unk_1ECEB5670);
  if (*(&v63 + 1))
  {
    v40 = v63;
    *(v27 + 24) = v62;
    *(v27 + 40) = v40;
    *(v27 + 56) = v64;
  }

  else
  {
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v45 + 8))(v26, v46);
    v60 = v41;
    v61 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v62, &unk_1ECEB5670);
  }

  sub_1E1308058(v34, &unk_1ECEB1770);
  sub_1E1308058(v33, &unk_1ECEB5670);
  sub_1E1308058(v65, &unk_1ECEB5670);
  *(v27 + 16) = 1;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v59;
  return v27;
}

uint64_t ContingentOffer.init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v58 = a8;
  v54 = a7;
  v53 = a6;
  v55 = a21;
  v63 = a19;
  v64 = a20;
  v62 = a18;
  v61 = a17;
  v60 = a15;
  v59 = a16;
  v57 = a14;
  v56 = a13;
  v52 = a12;
  v51 = a11;
  v50 = sub_1E1AEFEAC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v48 - v31;
  LOBYTE(v31) = *a4;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_mediaOverlayStyle) = v31;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_title) = a5;
  v33 = (v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_subtitle);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_additionalInfo) = v58;
  v35 = (v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_description);
  *v35 = a9;
  v35[1] = a10;
  v36 = v55;
  v37 = (v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_label);
  v38 = v52;
  *v37 = v51;
  v37[1] = v38;
  v39 = (v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_badge);
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_trunkAppIcon) = v59;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_offerLockup) = v60;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_supportsStreamlinedBuy) = v61;
  v41 = (v22 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_learnMoreTitle);
  v42 = v63;
  *v41 = v62;
  v41[1] = v42;
  sub_1E134FD1C(a1, v73, &unk_1ECEB5670);
  sub_1E134FD1C(v36, v32, &unk_1ECEB1770);
  sub_1E134FD1C(v73, &v67, &unk_1ECEB5670);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    (*(v49 + 8))(v29, v50);
    v65 = v43;
    v66 = v45;
    sub_1E1AF6F6C();
    sub_1E1308058(&v67, &unk_1ECEB5670);
  }

  sub_1E1308058(v36, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v73, &unk_1ECEB5670);
  v46 = v71;
  *(v22 + 24) = v70;
  *(v22 + 40) = v46;
  *(v22 + 56) = v72;
  *(v22 + 16) = 1;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v64;
  sub_1E134B7C8(v32, v22 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics);
  return v22;
}

void (*ContingentOffer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v3 = v2;
  v142 = a2;
  v137 = v3;
  v136 = *v3;
  v5 = sub_1E1AF39DC();
  v140 = *(v5 - 8);
  v141 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v126 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v108 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v108 - v12;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v108 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v108 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v108 - v34;
  v36 = a1;
  sub_1E1AF381C();
  v123 = sub_1E1AF37CC();
  v124 = v14;
  v38 = v37;
  v39 = *(v14 + 8);
  v39(v35, v13);
  v135 = v38;
  v138 = v13;
  if (!v38)
  {
    v58 = sub_1E1AF5A7C();
    sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6567646162;
LABEL_9:
    v61 = v136;
    v59[1] = 0xE500000000000000;
    v59[2] = v61;
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69AB690], v58);
    swift_willThrow();
    v53 = v36;
    v62 = v142;
    goto LABEL_10;
  }

  v139 = v39;
  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v39 = v139;
  v120 = v40;
  v42 = v41;
  v139(v32, v13);
  if (!v42)
  {

    v58 = sub_1E1AF5A7C();
    sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6C6562616CLL;
    goto LABEL_9;
  }

  v122 = v42;
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  v39 = v139;
  v119 = v43;
  v45 = v44;
  v139(v29, v13);
  v121 = v45;
  if (v45)
  {
    sub_1E1AF381C();
    v46 = sub_1E1AF37CC();
    v39 = v139;
    v117 = v46;
    v48 = v47;
    v139(v26, v13);
    v118 = v48;
    if (v48)
    {
      v49 = v132;
      v50 = v39;
      sub_1E1AF381C();
      v51 = sub_1E1AF370C();
      v132 = (v14 + 8);
      v50(v49, v13);
      v52 = (v140 + 16);
      v53 = v36;
      v114 = v51;
      if (v51)
      {
        type metadata accessor for InAppPurchaseLockup();
        sub_1E1AF381C();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_1EE1FAB00;
        v57 = type metadata accessor for InAppPurchaseLockup;
      }

      else
      {
        type metadata accessor for Lockup();
        sub_1E1AF381C();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_1EE1E4F60;
        v57 = type metadata accessor for Lockup;
      }

      sub_1E197F6C4(v56, v57);
      sub_1E1AF464C();
      if (v143)
      {
        v68 = v54;
        v116 = v143;

        v69 = type metadata accessor for Artwork();
        sub_1E1AF381C();
        v70 = v142;
        (v54)(v134, v142, v55);
        v71 = sub_1E197F6C4(&qword_1EE1E4BB8, type metadata accessor for Artwork);
        v112 = v69;
        sub_1E1AF464C();
        v72 = v143;
        v73 = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v74 = v129;
        v115 = v53;
        sub_1E1AF381C();
        v75 = v130;
        v113 = v73;
        (v68)(v130, v70, v55);
        v76 = v131;
        v77 = sub_1E165AA74(v74, v75);
        if (v76)
        {

          v62 = v142;
          v39 = v139;
          v53 = v115;
          goto LABEL_10;
        }

        v80 = v55;
        v130 = v71;
        v131 = v77;
        v111 = v72;
        v81 = v127;
        v82 = v115;
        sub_1E1AF381C();
        v83 = v128;
        v84 = v142;
        (v68)(v128, v142, v80);
        v53 = v82;
        v128 = sub_1E165AA74(v81, v83);
        v129 = v68;
        v85 = v133;
        sub_1E1AF381C();
        sub_1E14056C8();
        sub_1E1AF369C();
        v87 = v138;
        v86 = v139;
        v139(v85, v138);
        v110 = v143;
        sub_1E1AF381C();
        v109 = sub_1E1AF37CC();
        v127 = v88;
        v86(v85, v87);
        sub_1E1AF381C();
        v89 = v134;
        v90 = v141;
        (v129)(v134, v84, v141);
        sub_1E1AF464C();
        v130 = v143;
        type metadata accessor for Video();
        sub_1E1AF381C();
        (v129)(v89, v84, v90);
        sub_1E197F6C4(&qword_1EE1E52D0, type metadata accessor for Video);
        sub_1E1AF464C();
        v91 = v143;
        if (v130 | v143)
        {
          v95 = v137;
          *(v137 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundArtwork) = v130;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_backgroundVideo) = v91;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_mediaOverlayStyle) = v110;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_title) = v128;
          v96 = (v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_subtitle);
          v97 = v127;
          *v96 = v109;
          v96[1] = v97;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_additionalInfo) = v131;
          v98 = (v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_description);
          v99 = v118;
          *v98 = v117;
          v98[1] = v99;
          v100 = (v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_label);
          v102 = v122;
          v101 = v123;
          *v100 = v120;
          v100[1] = v102;
          v103 = (v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_badge);
          *v103 = v101;
          v103[1] = v135;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_trunkAppIcon) = v111;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_offerLockup) = v116;
          *(v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_supportsStreamlinedBuy) = v114 & 1;
          v104 = (v95 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_learnMoreTitle);
          v105 = v121;
          *v104 = v119;
          v104[1] = v105;
          v106 = v125;
          (*(v124 + 16))(v125, v53, v138);
          v107 = v126;
          (v129)(v126, v142, v141);

          v39 = AppPromotion.init(deserializing:using:)(v106, v107);

          (*(v140 + 8))(v142, v141);
          v139(v53, v138);
          return v39;
        }

        v92 = sub_1E1AF5A7C();
        sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        v93 = MEMORY[0x1E69E7CC0];
        *v94 = v136;
        v94[1] = v93;
        (*(*(v92 - 8) + 104))(v94, *MEMORY[0x1E69AB698], v92);
        swift_willThrow();
      }

      else
      {

        v78 = sub_1E1AF5A7C();
        sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v79 = 0x636F4C726566666FLL;
        v79[1] = 0xEB0000000070756BLL;
        v79[2] = v136;
        (*(*(v78 - 8) + 104))(v79, *MEMORY[0x1E69AB690], v78);
        swift_willThrow();
      }

      v62 = v142;
      v39 = v139;
      goto LABEL_10;
    }

    v66 = sub_1E1AF5A7C();
    sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v67 = 0x7470697263736564;
    v67[1] = 0xEB000000006E6F69;
    v67[2] = v136;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x1E69AB690], v66);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

  else
  {

    v64 = sub_1E1AF5A7C();
    sub_1E197F6C4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v65, "learnMoreTitle");
    v65[15] = -18;
    *(v65 + 2) = v136;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x1E69AB690], v64);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

LABEL_10:
  (*(v140 + 8))(v62, v141);
  v39(v53, v138);
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t sub_1E197F364()
{
}

uint64_t ContingentOffer.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t ContingentOffer.__deallocating_deinit()
{
  ContingentOffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E197F5BC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15ContingentOffer_offerLockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_1E197F6C4(qword_1EE1E4F68, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1E197F66C(uint64_t a1)
{
  result = sub_1E197F6C4(&qword_1ECEBBA00, type metadata accessor for ContingentOffer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E197F6C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ContingentOffer()
{
  result = qword_1ECEBBA08;
  if (!qword_1ECEBBA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E197F860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B070F0;
  v1 = *MEMORY[0x1E69CDA78];
  *(inited + 32) = *MEMORY[0x1E69CDA78];
  v2 = *MEMORY[0x1E69CDA90];
  v3 = *MEMORY[0x1E69CDAB0];
  *(inited + 40) = *MEMORY[0x1E69CDA90];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69CDAC0];
  v5 = *MEMORY[0x1E69CDAD8];
  *(inited + 56) = *MEMORY[0x1E69CDAC0];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x1E69CDAE8];
  *(inited + 72) = *MEMORY[0x1E69CDAE8];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_1E1497E68(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1ECEBBA18 = v13;
  return result;
}

id sub_1E197FBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MultilineTextLayout.Metrics.init(headingSpace:titleSpace:subtitleSpace:tertiarySpace:offerSpace:maxIndividualLines:maxTotalLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1E1308058(a5, &unk_1ECEB47F0);
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0u;
  *(a8 + 168) = 0u;
  *(a8 + 184) = 0u;
  *(a8 + 120) = 0u;
  v15 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v15;
  *(a8 + 32) = *(a1 + 32);
  sub_1E1308EC0(a2, a8 + 40);
  sub_1E1308EC0(a3, a8 + 80);
  result = sub_1E13BC4E4(a4, a8 + 120);
  *(a8 + 200) = a6;
  *(a8 + 208) = a7;
  return result;
}

__n128 MultilineTextLayout.init(headingText:titleText:subtitleText:tertiaryText:offerText:metrics:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = *(a1 + 32);
  sub_1E1308EC0(a2, a7 + 40);
  sub_1E1308EC0(a3, a7 + 80);
  v13 = a6[12];
  *(a7 + 376) = a6[11];
  *(a7 + 392) = v13;
  v14 = a6[10];
  *(a7 + 344) = a6[9];
  *(a7 + 360) = v14;
  v15 = a6[8];
  *(a7 + 312) = a6[7];
  *(a7 + 328) = v15;
  v16 = a6[6];
  *(a7 + 280) = a6[5];
  *(a7 + 296) = v16;
  *(a7 + 264) = a6[4];
  v17 = *(a4 + 16);
  *(a7 + 120) = *a4;
  *(a7 + 136) = v17;
  v18 = *(a5 + 16);
  *(a7 + 160) = *a5;
  *(a7 + 176) = v18;
  v19 = a6[2];
  *(a7 + 248) = a6[3];
  *(a7 + 232) = v19;
  v21 = *a6;
  result = a6[1];
  *(a7 + 216) = result;
  *(a7 + 152) = *(a4 + 32);
  *(a7 + 192) = *(a5 + 32);
  *(a7 + 408) = *(a6 + 26);
  *(a7 + 200) = v21;
  return result;
}

uint64_t MultilineTextLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t MultilineTextLayout.measurements(fitting:in:)()
{
  sub_1E134FD1C(v0, v6, &qword_1ECEB2AD0);
  sub_1E1308058(v6, &qword_1ECEB2AD0);
  sub_1E134FD1C(v0, &v4, &qword_1ECEB2AD0);
  if (v5)
  {
    sub_1E1308EC0(&v4, v6);
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    sub_1E1AF11CC();
    sub_1E134FD1C((v0 + 25), &v4, &unk_1ECEB47F0);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v4, v5);
      sub_1E1AF12FC();
      __swift_destroy_boxed_opaque_existential_1(&v4);
    }

    else
    {
      sub_1E1308058(&v4, &unk_1ECEB47F0);
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1E1308058(&v4, &qword_1ECEB2AD0);
  }

  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  v1 = sub_1E1AF14AC();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v0[13]);
  v2 = v0[51];
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    sub_1E1AF146C();
    __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v0[13]);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v0 + 30, v0[33]);
    sub_1E1AF12FC();
    __swift_project_boxed_opaque_existential_1Tm(v0 + 35, v0[38]);
    sub_1E1AF12FC();
    sub_1E134FD1C((v0 + 15), v6, &qword_1ECEB2AD0);
    sub_1E1308058(v6, &qword_1ECEB2AD0);
    sub_1E134FD1C((v0 + 15), &v4, &qword_1ECEB2AD0);
    if (v5)
    {
      sub_1E1308EC0(&v4, v6);
      __swift_project_boxed_opaque_existential_1Tm(v6, v7);
      sub_1E1AF11CC();
      sub_1E134FD1C((v0 + 40), &v4, &unk_1ECEB47F0);
      if (v5)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v4, v5);
        sub_1E1AF12FC();
        __swift_destroy_boxed_opaque_existential_1(&v4);
      }

      else
      {
        sub_1E1308058(&v4, &unk_1ECEB47F0);
      }

      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      sub_1E1308058(&v4, &qword_1ECEB2AD0);
    }

    sub_1E134FD1C((v0 + 20), v6, &qword_1ECEB2AD0);
    sub_1E1308058(v6, &qword_1ECEB2AD0);
    sub_1E134FD1C((v0 + 20), &v4, &qword_1ECEB2AD0);
    if (v5)
    {
      sub_1E1308EC0(&v4, v6);
      __swift_project_boxed_opaque_existential_1Tm(v6, v7);
      sub_1E1AF11CC();
      sub_1E134FD1C((v0 + 45), &v4, &unk_1ECEB47F0);
      if (v5)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v4, v5);
        sub_1E1AF12FC();
        __swift_destroy_boxed_opaque_existential_1(&v4);
      }

      else
      {
        sub_1E1308058(&v4, &unk_1ECEB47F0);
      }

      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      return sub_1E1308058(&v4, &qword_1ECEB2AD0);
    }
  }

  return result;
}

uint64_t MultilineTextLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinY = CGRectGetMinY(*&a1);
  sub_1E134FD1C(v4, &v85, &qword_1ECEB2AD0);
  v77 = a1;
  if (v86)
  {
    v82 = MinY;
    sub_1E1308EC0(&v85, v87);
    __swift_project_boxed_opaque_existential_1Tm(v87, v88);
    sub_1E1AF11CC();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_1E134FD1C((v4 + 25), &v85, &unk_1ECEB47F0);
    v79 = v15;
    if (v86)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v85, v86);
      sub_1E1AF12FC();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(&v85);
    }

    else
    {
      sub_1E1308058(&v85, &unk_1ECEB47F0);
      v17 = 0.0;
    }

    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = a3;
    v89.size.height = a4;
    MinX = CGRectGetMinX(v89);
    v90.origin.x = a1;
    v90.origin.y = a2;
    v90.size.width = a3;
    v90.size.height = a4;
    Width = CGRectGetWidth(v90);
    if (Width < v11)
    {
      v11 = Width;
    }

    __swift_project_boxed_opaque_existential_1Tm(v87, v88);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    v91.origin.x = MinX;
    v91.origin.y = v82 + v17;
    v91.size.width = v11;
    v91.size.height = v13;
    MinY = CGRectGetMaxY(v91) - v79;
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    sub_1E1308058(&v85, &qword_1ECEB2AD0);
  }

  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  sub_1E1AF11CC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  v26 = sub_1E1AF14AC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  v27 = v4[51];
  result = v27 - v26;
  if (__OFSUB__(v27, v26))
  {
    __break(1u);
  }

  else
  {
    sub_1E1AF146C();
    __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
    sub_1E1AF11CC();
    v70 = v29;
    v78 = v30;
    v83 = v31;
    v92.origin.x = v77;
    v92.origin.y = a2;
    v92.size.width = a3;
    v92.size.height = a4;
    rect = a3;
    v32 = a4;
    v33 = a2;
    v34 = CGRectGetMinX(v92);
    __swift_project_boxed_opaque_existential_1Tm(v4 + 30, v4[33]);
    sub_1E1AF12FC();
    v36 = v35;
    v93.origin.x = v77;
    v93.origin.y = v33;
    v93.size.width = rect;
    v93.size.height = v32;
    v37 = CGRectGetWidth(v93);
    if (v37 < v21)
    {
      v21 = v37;
    }

    __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
    v74 = v21;
    v75 = v34;
    v73 = MinY + v36;
    v76 = v23;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
    sub_1E1AF115C();
    v38 = v32;
    v39 = rect;
    v80 = CGRectGetMaxY(v94) - v25;
    v95.origin.x = v77;
    v95.origin.y = v33;
    v95.size.width = rect;
    v95.size.height = v38;
    v40 = CGRectGetMinX(v95);
    __swift_project_boxed_opaque_existential_1Tm(v4 + 35, v4[38]);
    v41 = v70;
    sub_1E1AF12FC();
    v43 = v42;
    v96.origin.x = v77;
    v96.origin.y = v33;
    v96.size.width = rect;
    v96.size.height = v38;
    v44 = CGRectGetWidth(v96);
    if (v44 < v70)
    {
      v41 = v44;
    }

    v45 = v80 + v43;
    __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
    v81 = v33;
    v71 = v41;
    v72 = v40;
    v69 = v45;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
    sub_1E1AF115C();
    v46 = CGRectGetMaxY(v97) - v83;
    sub_1E134FD1C((v4 + 15), &v85, &qword_1ECEB2AD0);
    if (v86)
    {
      sub_1E1308EC0(&v85, v87);
      __swift_project_boxed_opaque_existential_1Tm(v87, v88);
      sub_1E1AF11CC();
      v48 = v47;
      v50 = v49;
      v51 = v38;
      v53 = v52;
      sub_1E134FD1C((v4 + 40), &v85, &unk_1ECEB47F0);
      v66 = v53;
      v67 = v46;
      if (v86)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v85, v86);
        sub_1E1AF12FC();
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1(&v85);
      }

      else
      {
        sub_1E1308058(&v85, &unk_1ECEB47F0);
        v55 = 0.0;
      }

      v98.origin.x = v77;
      v98.origin.y = v81;
      v39 = rect;
      v98.size.width = rect;
      v98.size.height = v38;
      v56 = CGRectGetMinX(v98);
      v99.origin.x = v77;
      v99.origin.y = v81;
      v99.size.width = rect;
      v99.size.height = v51;
      v57 = CGRectGetWidth(v99);
      if (v57 < v48)
      {
        v48 = v57;
      }

      __swift_project_boxed_opaque_existential_1Tm(v87, v88);
      sub_1E1AF6B1C();
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v100.origin.x = v56;
      v100.origin.y = v67 + v55;
      v100.size.width = v48;
      v100.size.height = v50;
      v46 = CGRectGetMaxY(v100) - v66;
      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {
      sub_1E1308058(&v85, &qword_1ECEB2AD0);
      v51 = v38;
    }

    sub_1E134FD1C((v4 + 20), &v85, &qword_1ECEB2AD0);
    if (v86)
    {
      sub_1E1308EC0(&v85, v87);
      __swift_project_boxed_opaque_existential_1Tm(v87, v88);
      sub_1E1AF11CC();
      v59 = v58;
      v68 = v60;
      sub_1E134FD1C((v4 + 45), &v85, &unk_1ECEB47F0);
      if (v86)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v85, v86);
        sub_1E1AF12FC();
        v62 = v61;
        __swift_destroy_boxed_opaque_existential_1(&v85);
      }

      else
      {
        sub_1E1308058(&v85, &unk_1ECEB47F0);
        v62 = 0.0;
      }

      v101.origin.x = v77;
      v63 = v81;
      v101.origin.y = v81;
      v101.size.width = v39;
      v101.size.height = v51;
      v64 = CGRectGetMinX(v101);
      v102.origin.x = v77;
      v102.origin.y = v81;
      v102.size.width = v39;
      v102.size.height = v51;
      v65 = CGRectGetWidth(v102);
      if (v65 < v59)
      {
        v59 = v65;
      }

      __swift_project_boxed_opaque_existential_1Tm(v87, v88);
      sub_1E1AF6B1C();
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v103.origin.x = v64;
      v103.origin.y = v46 + v62;
      v103.size.width = v59;
      v103.size.height = v68;
      CGRectGetMaxY(v103);
      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {
      sub_1E1308058(&v85, &qword_1ECEB2AD0);
      v63 = v81;
    }

    v104.size.width = v74;
    v104.origin.x = v75;
    v104.origin.y = v73;
    v104.size.height = v76;
    CGRectGetMinY(v104);
    v105.origin.x = v77;
    v105.origin.y = v63;
    v105.size.width = v39;
    v105.size.height = v51;
    CGRectGetMinY(v105);
    v106.origin.x = v77;
    v106.origin.y = v63;
    v106.size.width = v39;
    v106.size.height = v51;
    CGRectGetMinX(v106);
    v107.origin.x = v77;
    v107.origin.y = v63;
    v107.size.width = v39;
    v107.size.height = v51;
    CGRectGetMinY(v107);
    v108.origin.x = v77;
    v108.origin.y = v63;
    v108.size.width = v39;
    v108.size.height = v51;
    CGRectGetWidth(v108);
    v109.size.width = v71;
    v109.origin.x = v72;
    v109.origin.y = v69;
    v109.size.height = v78;
    CGRectGetMaxY(v109);
    v110.origin.y = v63;
    v110.origin.x = v77;
    v110.size.width = v39;
    v110.size.height = v51;
    CGRectGetMinY(v110);
    return sub_1E1AF107C();
  }

  return result;
}

uint64_t _s11AppStoreKit19MultilineTextLayoutV23estimatedAXMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1 + 5, a1[8]);
  result = sub_1E1AF12EC();
  if (__OFSUB__(a1[26], 1))
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 10, a1[13]);
    sub_1E1AF12EC();
    sub_1E134FD1C((a1 + 20), v3, &unk_1ECEB47F0);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3, v4);
      sub_1E1AF12EC();
      return __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      return sub_1E1308058(v3, &unk_1ECEB47F0);
    }
  }

  return result;
}

uint64_t sub_1E1981370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19813B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1981474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19814BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 FlowPreviewDestination.init(flowAction:sender:contentType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  return result;
}

uint64_t sub_1E1981564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, a3);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = sub_1E1AF01FC();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a3 + 56);
  if ((v41(a1, a2, a3, v9) & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_13;
  }

  (*(a3 + 64))(&v47, a1, a2, a3);
  if (!*(&v48 + 1))
  {
LABEL_13:
    v23 = &qword_1ECEB4CE0;
    v24 = &v47;
LABEL_14:
    sub_1E1308058(v24, v23);
    goto LABEL_15;
  }

  sub_1E1308EC0(&v47, v50);
  sub_1E1300B24(v50, v45);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    memset(v44, 0, 40);
    v23 = &qword_1ECEB50D0;
    v24 = v44;
    goto LABEL_14;
  }

  v39[1] = v12;
  sub_1E1308EC0(v44, &v47);
  v13 = *(&v48 + 1);
  v40 = a4;
  v14 = v49;
  __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
  v15 = *(v14 + 8);
  v16 = v14;
  a4 = v40;
  if (v15(v13, v16))
  {
    type metadata accessor for FlowAction();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
      v20 = v19 > 0x2F;
      v21 = (1 << v19) & 0xE00000802010;
      if (v20 || v21 == 0)
      {
        sub_1E1300B24(v50, v45);
        type metadata accessor for TodayCard();
        if ((swift_dynamicCast() & 1) == 0)
        {
          v36 = *(&v48 + 1);
          v37 = v49;
          __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
          v38 = *(v37 + 16);

          v38(v36, v37);
          sub_1E1982610(v50, v45);

          __swift_destroy_boxed_opaque_existential_1(v50);
          v35 = v45[0];
          *a4 = v18;
          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      goto LABEL_36;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(&v47);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B02CD0;
  *(v25 + 32) = sub_1E1AF019C();
  *(v25 + 40) = 0;
  MEMORY[0x1E68F8E70](v25);
  if ((v41)(v11, a2, a3))
  {
    (*(a3 + 64))(&v47, v11, a2, a3);
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  (*(v8 + 8))(v11, v42);
  if (*(&v48 + 1))
  {
    sub_1E1308EC0(&v47, v50);
    sub_1E1300B24(v50, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B8);
    if (swift_dynamicCast())
    {
      sub_1E1308EC0(v44, &v47);
      v26 = *(&v48 + 1);
      v27 = v49;
      __swift_project_boxed_opaque_existential_1Tm(&v47, *(&v48 + 1));
      v28 = sub_1E1AF018C();
      (*(v27 + 8))(v44, v28, v26, v27);
      if (*&v44[0])
      {
        v45[0] = v44[0];
        v45[1] = v44[1];
        v46 = *&v44[2];
        sub_1E134FD1C(v45, v44, &qword_1ECEB24C8);
        type metadata accessor for FlowAction();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = v29;
          sub_1E1308058(v44 + 8, &qword_1ECEB2DF0);
          v31 = *(v30 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
          if (v31 <= 0x2F && ((1 << v31) & 0xE00000802010) != 0)
          {

            sub_1E1308058(v45, &qword_1ECEB24C8);
            __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_31:
            result = __swift_destroy_boxed_opaque_existential_1(&v47);
            goto LABEL_32;
          }

          sub_1E134FD1C(v45, v44, &qword_1ECEB24C8);

          sub_1E1982610(v50, &v43);

          sub_1E1308058(v45, &qword_1ECEB24C8);
          __swift_destroy_boxed_opaque_existential_1(v50);
          v35 = v43;
          *a4 = v30;
          *(a4 + 8) = *(v44 + 8);
          *(a4 + 24) = *(&v44[1] + 8);
LABEL_41:
          *(a4 + 40) = v35;
          return __swift_destroy_boxed_opaque_existential_1(&v47);
        }

        sub_1E1308058(v45, &qword_1ECEB24C8);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v33 = &qword_1ECEB2DF0;
        v34 = (v44 + 8);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v50);
        v33 = &qword_1ECEB24D0;
        v34 = v44;
      }

      sub_1E1308058(v34, v33);
      goto LABEL_31;
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    memset(v44, 0, 40);
    result = sub_1E1308058(v44, &qword_1ECEB8E40);
  }

  else
  {
    result = sub_1E1308058(&v47, &qword_1ECEB4CE0);
  }

LABEL_32:
  *a4 = 1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_1E1981D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v5, a3, v6, WitnessTable);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E1AF01FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 56);
  if ((v13(a1, a3, a5, v10) & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_7;
  }

  (*(a5 + 64))(&v31, a1, a3, a5);
  if (!*(&v32 + 1))
  {
LABEL_7:
    sub_1E1308058(&v31, &qword_1ECEB4CE0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA38);
  if (swift_dynamicCast())
  {
    if (*(&v35 + 1))
    {
      sub_1E1308EC0(&v34, v37);
      v14 = v38;
      v15 = v39;
      __swift_project_boxed_opaque_existential_1Tm(v37, v38);
      v16 = (*(v15 + 8))(v14, v15);
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v16;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

LABEL_8:
  v28 = v8;
  sub_1E1308058(&v34, &qword_1ECEBBA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CD0;
  *(v17 + 32) = sub_1E1AF019C();
  *(v17 + 40) = 0;
  MEMORY[0x1E68F8E70](v17);
  if ((v13)(v12, a3, a5))
  {
    (*(a5 + 64))(&v31, v12, a3, a5);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  (*(v9 + 8))(v12, v28);
  if (!*(&v32 + 1))
  {
    sub_1E1308058(&v31, &qword_1ECEB4CE0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7BA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_20;
  }

  if (!*(&v35 + 1))
  {
LABEL_20:
    sub_1E1308058(&v34, &qword_1ECEB7BB0);
    return 0;
  }

  sub_1E1308EC0(&v34, v37);
  v18 = sub_1E1AF018C();
  v19 = v38;
  v20 = v39;
  __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  if (v18 < (*(v20 + 32))(v19, v20))
  {
    v21 = v38;
    v22 = v39;
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    v23 = sub_1E1AF018C();
    (*(v22 + 16))(&v31, v23, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA38);
    if (swift_dynamicCast())
    {
      sub_1E1308EC0(v29, &v34);
      v24 = *(&v35 + 1);
      v25 = v36;
      __swift_project_boxed_opaque_existential_1Tm(&v34, *(&v35 + 1));
      v16 = (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      goto LABEL_17;
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_1E1308058(v29, &qword_1ECEBBA30);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return 0;
}

uint64_t sub_1E19822C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, a3);
}

uint64_t sub_1E1982338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v5, a3, v6, WitnessTable);
}

double FlowPreview.init(destination:actions:)@<D0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E134FD1C(a1, v12, &qword_1ECEBBA40);
  v6 = v12[0];
  if (v12[0] == 1)
  {
    sub_1E1308058(v12, &qword_1ECEBBA40);
    goto LABEL_7;
  }

  sub_1E19826C0(v12);
  if (!v6)
  {
    goto LABEL_7;
  }

  sub_1E134FD1C(a1, v12, &qword_1ECEBBA40);
  if (v12[0] != 1)
  {
    v7 = v13;
    sub_1E19826C0(v12);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a2 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_9;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    sub_1E1308058(a1, &qword_1ECEBBA40);

    *(a3 + 48) = 0;
    *&v9 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return *&v9;
  }

  sub_1E1308058(v12, &qword_1ECEBBA40);
LABEL_9:
  *&v14[9] = *(a1 + 25);
  v8 = *a1;
  *v14 = a1[1];
  v9 = *v14;
  v10 = *&v14[16];
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = a2;
  return *&v9;
}

uint64_t FlowPreviewDestination.ContentType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E1982610@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1E1300B24(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  type metadata accessor for Review(0);
  if (swift_dynamicCast() || (type metadata accessor for ReviewsContainer(), swift_dynamicCast()))
  {

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v5);
  *a2 = v3;
  return result;
}

unint64_t sub_1E19826F4()
{
  result = qword_1ECEBBA48;
  if (!qword_1ECEBBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBA48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit22FlowPreviewDestinationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E198276C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19827B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1982810(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1E198286C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1E1982950(void *a1, uint64_t a2)
{
  v27 = a2;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v26 = sub_1E1AF68DC();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25 = OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_queue;
  v10 = sub_1E13006E4(0, &qword_1EE1E3430);
  v24[1] = "idChangeNotification";
  v24[2] = v10;
  sub_1E1AF322C();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  v11 = v27;
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  v12 = v28;
  sub_1E1AF6EEC();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v26);
  *&v12[v25] = sub_1E1AF692C();
  v13 = v29;
  *&v12[OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_tokenService] = v29;
  v14 = v13;
  MEMORY[0x1E68FE6D0]();
  v15 = sub_1E1AF594C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_1E15887EC(v4);
    v17 = 0;
  }

  else
  {
    v17 = sub_1E1AF593C();
    (*(v16 + 8))(v4, v15);
  }

  [v14 setAccount_];

  *&v12[OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_accounts] = v11;
  v31.receiver = v12;
  v31.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  sub_1E1AF59DC();
  v22 = sub_1E1AF59BC();
  [v21 addObserver:v20 selector:sel_accountsDidChange name:v22 object:v11];

  return v20;
}

uint64_t sub_1E1982DB8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v0[OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_queue];
  v9 = *&v0[OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_accounts];
  v10 = *&v0[OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_tokenService];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v0;
  v11[5] = ObjectType;
  aBlock[4] = sub_1E1983558;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_89;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  v14 = v0;
  sub_1E1AF322C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v17);
}

void sub_1E19830A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = [a1 account];
  MEMORY[0x1E68FE6D0]();
  v10 = sub_1E1AF594C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1E15887EC(v8);
    v12 = 0;
  }

  else
  {
    v12 = sub_1E1AF593C();
    (*(v11 + 8))(v8, v10);
  }

  v13 = [v12 ams_DSID];
  v14 = [v9 ams_DSID];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      sub_1E13006E4(0, &qword_1EE1E31F0);
      v16 = sub_1E1AF6D0C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v17 = v12;
      goto LABEL_15;
    }

    v15 = v13;
  }

  else if (!v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  [a1 setAccount_];
  [a1 invalidateMediaToken];
  v17 = [objc_opt_self() defaultCenter];
  if (qword_1EE1D6330 != -1)
  {
    swift_once();
  }

  [v17 postNotificationName:qword_1EE1D6340 object:a3];

  v9 = v12;
LABEL_15:
}

id PersonalizedMediaTokenService.fetchMediaToken()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return v1;
}

id PersonalizedMediaTokenService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonalizedMediaTokenService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PurchaseHistory.init(isAppleSiliconSupportEnabled:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v12 = a2;
  v11 = sub_1E1AF68DC();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v6);
  v10[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v14 = v7;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v11);
  result = sub_1E1AF692C();
  v9 = v12;
  *(v12 + 8) = result;
  *v9 = v13;
  return result;
}

uint64_t sub_1E1983864()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215CE8);
  __swift_project_value_buffer(v4, qword_1EE215CE8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id PurchaseHistory.defaultPurchaseQuery.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698B530]) init];
  [v0 setAccountID_];
  [v0 setIsHidden_];
  [v0 setIsFirstParty_];
  [v0 setIsPreorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B06D70;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E698B538]) initWithName:*MEMORY[0x1E698B580] ascending:0];
  sub_1E13006E4(0, &qword_1EE1E32F8);
  v2 = sub_1E1AF620C();

  [v0 setSortOptions_];

  return v0;
}

id PurchaseHistory.makeQuery(for:)(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1E13006E4(0, &qword_1EE1E31F0);
  v4 = sub_1E1AF620C();

  [v2 setStoreIDs_];

  return v2;
}

void *PurchaseHistory.makeQuery(isVisible:excludePreorders:searchTerm:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = PurchaseHistory.defaultPurchaseQuery.getter();
  v8 = v7;
  if (a1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setIsHidden_];
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v8 setIsPreorder_];
  if (a4 && sub_1E1AF5F1C() >= 1)
  {
    v11 = sub_1E13B8AA4();
    v12 = MEMORY[0x1E69E6158];
    sub_1E1AF6E2C();
    sub_1E1AF6E2C();

    v20 = v11;
    v21 = v11;
    v18 = v12;
    v19 = v11;
    v13 = sub_1E1AF6E2C();
    v15 = v14;

    MEMORY[0x1E68FECA0](v13, v15);

    MEMORY[0x1E68FECA0](37, 0xE100000000000000);
    v16 = sub_1E1AF5DBC();

    [v8 setSearchTerm_];
  }

  return v8;
}

void PurchaseHistory.execute(_:familyMemberIDs:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = *(v4 + 8);
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v13 = sub_1E1AF594C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEBBA70);
LABEL_12:
    sub_1E159E56C(MEMORY[0x1E69E7CC0]);
    a3();

    return;
  }

  v15 = sub_1E1AF593C();
  (*(v14 + 8))(v11, v13);
  v16 = [v15 ams_DSID];

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [v16 longLongValue];

  if (![a1 accountID])
  {
    v18 = sub_1E1984524(v17);
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_15:
    v43 = [objc_opt_self() sharedInstance];
    v44 = swift_allocObject();
    v44[2] = v12;
    v44[3] = a3;
    v44[4] = a4;
    v44[5] = v17;
    v57 = sub_1E19868AC;
    v58 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1E1984B7C;
    v56 = &block_descriptor_90;
    v45 = _Block_copy(&aBlock);

    v46 = v12;

    [v43 executeQuery:v18 withResultHandler:v45];
    _Block_release(v45);

    return;
  }

  v18 = a1;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_6:
  v50 = a4;
  v51 = a1;
  v48 = a3;
  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1B06D70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA78);
  v20 = sub_1E1AF588C();
  v21 = objc_opt_self();
  v22 = a2;
  v23 = [v21 sharedInstance];
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v18;
  v57 = sub_1E19868B8;
  v58 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1E1984B7C;
  v56 = &block_descriptor_6_6;
  v25 = _Block_copy(&aBlock);

  v26 = v18;

  v47 = v26;
  [v23 executeQuery:v26 withResultHandler:v25];
  _Block_release(v25);

  v27 = v22;
  *(v19 + 32) = v20;
  v52 = v19;
  v28 = *(v22 + 16);
  if (v28)
  {
    v29 = (v27 + 32);
    do
    {
      v30 = *v29++;
      v31 = sub_1E1984524(v30);
      v32 = sub_1E1AF588C();
      v33 = [v21 sharedInstance];
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v31;
      v57 = sub_1E1986BC8;
      v58 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1E1984B7C;
      v56 = &block_descriptor_13_1;
      v35 = _Block_copy(&aBlock);

      v36 = v31;

      [v33 executeQuery:v36 withResultHandler:v35];
      _Block_release(v35);

      MEMORY[0x1E68FEF20]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      --v28;
    }

    while (v28);
    v19 = v52;
  }

  aBlock = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA88);
  sub_1E1302CD4(&qword_1ECEBBA90, &qword_1ECEBBA80);
  sub_1E1302CD4(&qword_1ECEBBA98, &qword_1ECEBBA78);
  sub_1E1AF53CC();

  v37 = swift_allocObject();
  v38 = v48;
  v39 = v50;
  *(v37 + 16) = v48;
  *(v37 + 24) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v56 = sub_1E13006E4(0, &qword_1EE1E3430);
  v57 = MEMORY[0x1E69AB720];
  v41 = v49;
  aBlock = v49;
  swift_retain_n();
  v42 = v41;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

id sub_1E1984524(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E698B530]) init];
  [v3 setAccountID_];
  [v3 setIsFirstParty_];
  [v3 setIsHidden_];
  [v3 setIsPreorder_];
  v4 = [v1 searchTerm];
  [v3 setSearchTerm_];

  v5 = [v1 sortOptions];
  [v3 setSortOptions_];

  v6 = [v1 storeIDs];
  [v3 setStoreIDs_];

  v7 = [v1 bundleIDs];
  [v3 setBundleIDs_];

  [v3 setIsIOSBinaryMacOSCompatible_];
  [v3 setCurrentlyOptedInForMacOSEligibility_];
  [v3 setCurrentlyOptedInForXROSEligibility_];
  [v3 setOptedInForMacOSEligibility_];
  [v3 setOptedInForXROSEligibility_];
  [v3 setSupportsRealityDevice_];
  return v3;
}

uint64_t sub_1E1984790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v10 = sub_1E1AF320C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF324C();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  aBlock[4] = sub_1E1986B78;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_101_1;
  v18 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_1E1984A74(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBAA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = a4;
    v8 = inited + 32;
    *(inited + 40) = a1;
    v9 = sub_1E159E56C(inited);
    swift_setDeallocating();

    sub_1E1308058(v8, &qword_1ECEBBAB0);
    (a2)(v9);
  }

  else
  {
    sub_1E159E56C(MEMORY[0x1E69E7CC0]);
    a2();
  }
}

uint64_t sub_1E1984B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E13006E4(0, &qword_1EE1E33D8);
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);
}

void PurchaseHistory.setHidden(_:forStoreItemID:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_1E1986940;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E1306F24;
  v15[3] = &block_descriptor_25_3;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.showAll(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_1E1986984;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1306F24;
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_1E1984E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v12 = sub_1E1AF320C();
  v23 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF324C();
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_1E1AF322C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

void PurchaseHistory.update(for:in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_1E19869C8;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E1306F24;
  v15[3] = &block_descriptor_37_1;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.update(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_1E1986A0C;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1306F24;
  v13[3] = &block_descriptor_43_2;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1E19853C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v27 = a2;
  v12 = sub_1E1AF320C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF324C();
  v16 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_1E1AF322C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v18, v15, v20);
  _Block_release(v20);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v26);
}

uint64_t sub_1E198569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    if (qword_1ECEB1608 != -1)
    {
      swift_once();
    }

    v6 = 0xD000000000000010;
    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1EE215CE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    if (a2 <= 1)
    {
      if (!a2)
      {
        v8 = a3;
        v9 = 0xE700000000000000;
        v6 = 0x746C7561666564;
        goto LABEL_16;
      }

      if (a2 == 1)
      {
        v8 = a3;
        v9 = 0xED00006567615073;
        v6 = 0x6573616863727570;
        goto LABEL_16;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v8 = a3;
          v9 = 0x80000001E1B810B0;
          goto LABEL_16;
        case 3:
          v8 = a3;
          v9 = 0xEE006465676E6168;
          v6 = 0x43746E756F636361;
          goto LABEL_16;
        case 2:
          v8 = a3;
          v9 = 0xE800000000000000;
          v6 = 0x776F685365646968;
LABEL_16:
          v10 = MEMORY[0x1E69E6158];
          v16 = MEMORY[0x1E69E6158];
          v14 = v6;
          v15 = v9;
          sub_1E1AF38BC();
          sub_1E1308058(&v14, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBAA0);
          v11 = sub_1E1AF6D8C();
          v16 = v10;
          v14 = v11;
          v15 = v12;
          sub_1E1AF38BC();
          sub_1E1308058(&v14, &qword_1ECEB2DF0);
          sub_1E1AF548C();

          a3 = v8;
          return a3(a1 == 0);
      }
    }

    v8 = a3;
    v9 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  return a3(a1 == 0);
}

void sub_1E19859BC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E159E56C(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v4;
      sub_1E1986498(v7, sub_1E19868A0, 0, isUniquelyReferenced_nonNull_native, &v9);
      v4 = v9;
      --v5;
    }

    while (v5);
  }

  *a2 = v4;
}

uint64_t sub_1E1985A74@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v33)
  {
    v38 = v4;
    v7 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v39 = MEMORY[0x1E69E7CC0];
      result = sub_1E135CC64(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v3;
      v10 = 0;
      v11 = v39;
      v12 = v5;
      v13 = v5 & 0xC000000000000001;
      do
      {
        if (v13)
        {
          v14 = MEMORY[0x1E68FFD80](v10, v12);
        }

        else
        {
          v14 = *(v12 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = [v14 storeItemID];

        v18 = *(v39 + 16);
        v17 = *(v39 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1E135CC64((v17 > 1), v18 + 1, 1);
        }

        ++v10;
        *(v39 + 16) = v18 + 1;
        *(v39 + 8 * v18 + 32) = v16;
        v12 = v38;
      }

      while (i != v10);
      v3 = v9;
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v19 = sub_1E13C4F70(v11);

    v40 = v7;
    if (v3 >> 62)
    {
      break;
    }

    v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_36;
    }

LABEL_16:
    v35 = v3;
    v21 = 0;
    v37 = v3 & 0xC000000000000001;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    v3 += 32;
    v22 = v19 + 56;
    while (1)
    {
      if (v37)
      {
        v23 = MEMORY[0x1E68FFD80](v21, v35);
      }

      else
      {
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v3 + 8 * v21);
      }

      v24 = v23;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      v26 = [v23 storeItemID];
      if (*(v19 + 16) && (v27 = v26, v28 = sub_1E1AF761C(), v29 = -1 << *(v19 + 32), v30 = v28 & ~v29, ((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (*(*(v19 + 48) + 8 * v30) != v27)
        {
          v30 = (v30 + 1) & v31;
          if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      if (v21 == v20)
      {
        v32 = v40;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v33 = sub_1E1AF71CC();
    v4 = v5;
  }

  v20 = sub_1E1AF71CC();
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_36:
  v32 = MEMORY[0x1E69E7CC0];
LABEL_37:

  result = sub_1E1728BE0(v34);
  *a3 = v32;
  return result;
}