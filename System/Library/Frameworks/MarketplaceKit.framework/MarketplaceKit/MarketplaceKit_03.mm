__n128 FetchDataResponse.init(response:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1D962E29C(uint64_t a1)
{
  v2 = sub_1D9634E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E2D8(uint64_t a1)
{
  v2 = sub_1D9634E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchDataResponse.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22010, &qword_1D9676A20);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96181D8(v7, v8, v10);
  sub_1D9634E04();
  sub_1D966F118();
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_1D9634E58();
  v11 = v13;
  sub_1D966EF68();
  sub_1D95FD1C4(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

uint64_t FetchDataResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22018, &qword_1D9676A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634E04();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9634EAC();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D962E64C(uint64_t a1)
{
  v2 = sub_1D9634F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E688(uint64_t a1)
{
  v2 = sub_1D9634F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D962E6C4()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6554686372616573;
  }

  *v0;
  return result;
}

uint64_t sub_1D962E710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D962E7FC(uint64_t a1)
{
  v2 = sub_1D9634F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E838(uint64_t a1)
{
  v2 = sub_1D9634F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962E874(uint64_t a1)
{
  v2 = sub_1D9634FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E8B0(uint64_t a1)
{
  v2 = sub_1D9634FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPublicDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22020, &qword_1D9676A30);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22028, &qword_1D9676A38);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22030, &qword_1D9676A40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634F00();
  sub_1D966F118();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D9634F54();
    v18 = v22;
    sub_1D966EED8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D9634FA8();
    sub_1D966EED8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t FetchPublicDataRequest.Request.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t FetchPublicDataRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22050, &qword_1D9676A48);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22058, &qword_1D9676A50);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22060, &qword_1D9676A58);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634F00();
  v16 = v36;
  sub_1D966F0F8();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D966EEB8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D9605E20();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D966ED58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v26 = &type metadata for FetchPublicDataRequest.Request;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D9634F54();
        sub_1D966EDE8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D9634FA8();
        sub_1D966EDE8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t FetchPublicDataRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D962F13C, 0, 0);
}

uint64_t sub_1D962F13C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D9611BC8;
  v3 = *(v0 + 16);

  return (sub_1D95F1B00)(v3, v1, sub_1D962F240, 0);
}

uint64_t sub_1D962F254(uint64_t a1)
{
  v2 = sub_1D9634FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F290(uint64_t a1)
{
  v2 = sub_1D9634FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPublicDataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22068, &qword_1D9676A68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634FFC();
  sub_1D966F118();
  v12 = v8;
  sub_1D9635050();
  sub_1D966EF68();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FetchPublicDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22080, &qword_1D9676A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634FFC();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D96350A4();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D962F5B4(uint64_t a1)
{
  v2 = sub_1D96352F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F5F0(uint64_t a1)
{
  v2 = sub_1D96352F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D962F62C()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 == 4)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v2 == 3)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = v3;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v5;
  }

  *v0;
  return result;
}

uint64_t sub_1D962F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9639300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D962F6F4(uint64_t a1)
{
  v2 = sub_1D96350F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F730(uint64_t a1)
{
  v2 = sub_1D96350F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F76C(uint64_t a1)
{
  v2 = sub_1D963529C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F7A8(uint64_t a1)
{
  v2 = sub_1D963529C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F7E4(uint64_t a1)
{
  v2 = sub_1D9635248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F820(uint64_t a1)
{
  v2 = sub_1D9635248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F85C(uint64_t a1)
{
  v2 = sub_1D96351F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F898(uint64_t a1)
{
  v2 = sub_1D96351F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F8D4(uint64_t a1)
{
  v2 = sub_1D963514C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F910(uint64_t a1)
{
  v2 = sub_1D963514C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D962FA18(uint64_t a1)
{
  v2 = sub_1D96351A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962FA54(uint64_t a1)
{
  v2 = sub_1D96351A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22090, &qword_1D9676A78);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22098, &qword_1D9676A80);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220A0, &qword_1D9676A88);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220A8, &qword_1D9676A90);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220B0, &qword_1D9676A98);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220B8, &qword_1D9676AA0);
  v48 = *(v19 - 8);
  v49 = v19;
  v20 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220C0, &qword_1D9676AA8);
  v66 = *(v23 - 8);
  v24 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = *v1;
  v63 = v1[1];
  v64 = v25;
  v26 = v1[3];
  v62 = v1[2];
  v46[2] = v26;
  v27 = v1[5];
  v46[1] = v1[4];
  v46[0] = v27;
  v28 = *(v1 + 48);
  v30 = a1[3];
  v29 = a1[4];
  v31 = a1;
  v33 = v46 - v32;
  __swift_project_boxed_opaque_existential_1(v31, v30);
  sub_1D96350F8();
  sub_1D966F118();
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v67) = 3;
      sub_1D96351F4();
      v36 = v53;
      sub_1D966EED8();
      LOBYTE(v67) = 0;
      v15 = v55;
      v43 = v65;
      sub_1D966EF38();
      if (!v43)
      {
        LOBYTE(v67) = 1;
        sub_1D966EF48();
        v44 = v54;
        goto LABEL_22;
      }

      v38 = v54;
    }

    else if (v28 == 4)
    {
      LOBYTE(v67) = 4;
      sub_1D96351A0();
      v36 = v56;
      sub_1D966EED8();
      LOBYTE(v67) = 0;
      v15 = v58;
      v37 = v65;
      sub_1D966EF38();
      if (!v37)
      {
        LOBYTE(v67) = 1;
        sub_1D966EF48();
        v44 = v57;
        goto LABEL_22;
      }

      v38 = v57;
    }

    else
    {
      LOBYTE(v67) = 5;
      sub_1D963514C();
      v36 = v59;
      sub_1D966EED8();
      LOBYTE(v67) = 0;
      v15 = v61;
      v45 = v65;
      sub_1D966EEE8();
      if (!v45)
      {
        LOBYTE(v67) = 1;
        sub_1D966EF38();
        v44 = v60;
        goto LABEL_22;
      }

      v38 = v60;
    }

    (*(v38 + 8))(v36, v15);
    return (*(v66 + 8))(v33, v23);
  }

  if (v28)
  {
    if (v28 == 1)
    {
      LOBYTE(v67) = 1;
      sub_1D963529C();
      sub_1D966EED8();
      sub_1D966EF38();
      v34 = *(v47 + 8);
      v35 = v18;
LABEL_23:
      v34(v35, v15);
      return (*(v66 + 8))(v33, v23);
    }

    LOBYTE(v67) = 2;
    sub_1D9635248();
    v36 = v50;
    sub_1D966EED8();
    v67 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D96125F8(&qword_1EDCF6200);
    v15 = v52;
    sub_1D966EF68();
    v44 = v51;
LABEL_22:
    v34 = *(v44 + 8);
    v35 = v36;
    goto LABEL_23;
  }

  LOBYTE(v67) = 0;
  sub_1D96352F0();
  v39 = v23;
  sub_1D966EED8();
  LOBYTE(v67) = 0;
  v40 = v49;
  v41 = v65;
  sub_1D966EF38();
  if (v41)
  {
    (*(v48 + 8))(v22, v40);
  }

  else
  {
    LOBYTE(v67) = 1;
    sub_1D966EF38();
    LOBYTE(v67) = 2;
    sub_1D966EEE8();
    (*(v48 + 8))(v22, v40);
  }

  return (*(v66 + 8))(v33, v39);
}

uint64_t SetPrivateDataRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22100, &qword_1D9676AB0);
  v102 = *(v98 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v107 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22108, &qword_1D9676AB8);
  v6 = *(v5 - 8);
  v100 = v5;
  v101 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v88 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22110, &qword_1D9676AC0);
  v99 = *(v95 - 8);
  v9 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v105 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22118, &qword_1D9676AC8);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v88 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22120, &qword_1D9676AD0);
  v93 = *(v94 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v16 = &v88 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22128, &qword_1D9676AD8);
  v103 = *(v17 - 8);
  v18 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22130, &qword_1D9676AE0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v88 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D96350F8();
  v28 = v109;
  sub_1D966F0F8();
  v29 = v28;
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v92 = v16;
  v30 = v20;
  v91 = v17;
  v31 = v105;
  v32 = v106;
  v109 = v22;
  v33 = v107;
  v34 = v108;
  v35 = sub_1D966EEB8();
  v36 = (2 * *(v35 + 16)) | 1;
  v111 = v35;
  v112 = v35 + 32;
  v113 = 0;
  v114 = v36;
  v37 = sub_1D9605E28();
  if (v37 == 6 || v113 != v114 >> 1)
  {
    v42 = sub_1D966ED58();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v44 = &type metadata for SetPrivateDataRequest.Request;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v109 + 8))(v25, v21);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v90 = v37;
  if (v37 > 2u)
  {
    if (v37 == 3)
    {
      LOBYTE(v115) = 3;
      sub_1D96351F4();
      sub_1D966EDE8();
      v54 = v109;
      LOBYTE(v115) = 0;
      v55 = v95;
      v56 = sub_1D966EE58();
      v72 = v69;
      v70 = v31;
      v107 = v56;
      LOBYTE(v115) = 1;
      v29 = 0;
      v82 = sub_1D966EE68();
      v89 = 0;
      (*(v99 + 8))(v70, v55);
      (*(v54 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v76 = 0;
      v77 = 0;
      v75 = (v82 & 1);
      v74 = v107;
    }

    else
    {
      v105 = v21;
      v47 = v109;
      if (v37 == 4)
      {
        LOBYTE(v115) = 4;
        sub_1D96351A0();
        sub_1D966EDE8();
        LOBYTE(v115) = 0;
        v48 = v100;
        v49 = v32;
        v50 = sub_1D966EE58();
        v72 = v78;
        v79 = v50;
        LOBYTE(v115) = 1;
        v29 = 0;
        v86 = sub_1D966EE68();
        v89 = 0;
        (*(v101 + 8))(v49, v48);
        (*(v47 + 8))(v25, v105);
        swift_unknownObjectRelease();
        v76 = 0;
        v77 = 0;
        v75 = (v86 & 1);
        v74 = v79;
        v34 = v108;
      }

      else
      {
        v60 = v34;
        LOBYTE(v115) = 5;
        sub_1D963514C();
        v61 = v33;
        sub_1D966EDE8();
        LOBYTE(v115) = 0;
        v62 = v98;
        v63 = sub_1D966EE08();
        v65 = v64;
        v74 = v63;
        LOBYTE(v115) = 1;
        v66 = sub_1D966EE58();
        v89 = 0;
        v83 = v66;
        v85 = v84;
        (*(v102 + 8))(v61, v62);
        (*(v47 + 8))(v25, v105);
        swift_unknownObjectRelease();
        v76 = v85;
        v75 = v83;
        v77 = 0;
        v29 = 0;
        v34 = v60;
        v72 = v65;
      }
    }
  }

  else if (v37)
  {
    if (v37 == 1)
    {
      LOBYTE(v115) = 1;
      sub_1D963529C();
      v38 = v92;
      sub_1D966EDE8();
      v39 = v109;
      v40 = v94;
      v41 = sub_1D966EE58();
      v29 = 0;
      v72 = v71;
      v89 = 0;
      v73 = v38;
      v74 = v41;
      (*(v93 + 8))(v73, v40);
      (*(v39 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v75 = 0;
      v76 = 0;
      v77 = 0;
    }

    else
    {
      LOBYTE(v115) = 2;
      sub_1D9635248();
      v57 = v104;
      sub_1D966EDE8();
      v58 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6670);
      v59 = v97;
      sub_1D966EE88();
      v89 = 0;
      (*(v96 + 8))(v57, v59);
      (*(v58 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v72 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v74 = v115;
    }
  }

  else
  {
    LOBYTE(v115) = 0;
    sub_1D96352F0();
    v51 = v30;
    sub_1D966EDE8();
    LOBYTE(v115) = 0;
    v52 = v91;
    v53 = sub_1D966EE58();
    v72 = v67;
    v68 = v53;
    LOBYTE(v115) = 1;
    v106 = sub_1D966EE58();
    v107 = v80;
    LOBYTE(v115) = 2;
    v81 = sub_1D966EE08();
    v89 = 0;
    v77 = v81;
    v29 = v87;
    (*(v103 + 8))(v51, v52);
    (*(v109 + 8))(v25, v21);
    swift_unknownObjectRelease();
    v75 = v106;
    v76 = v107;
    v74 = v68;
  }

  *v34 = v74;
  *(v34 + 8) = v72;
  *(v34 + 16) = v75;
  *(v34 + 24) = v76;
  *(v34 + 32) = v77;
  *(v34 + 40) = v29;
  *(v34 + 48) = v90;
  return __swift_destroy_boxed_opaque_existential_1(v110);
}

uint64_t SetPrivateDataRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_1D9635344(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t SetPrivateDataRequest.stringValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v16 = 0;

      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000001ALL, 0x80000001D9680ED0);
      MEMORY[0x1DA7338E0](v2, v1);
      sub_1D96353E8(v2, v1, v3, v4, v6, v5, 3u);
      v8 = 0xD000000000000016;
      v9 = 0x80000001D9680EF0;
    }

    else
    {
      if (v7 != 4)
      {

        sub_1D966ED28();

        v16 = 0xD000000000000019;
        MEMORY[0x1DA7338E0](v3, v4);

        MEMORY[0x1DA7338E0](8250, 0xE200000000000000);
        if (v1)
        {
          v11 = v2;
        }

        else
        {
          v11 = 7104878;
        }

        if (!v1)
        {
          v1 = 0xE300000000000000;
        }

        goto LABEL_22;
      }

      sub_1D966ED28();

      v16 = 0xD00000000000001BLL;
      MEMORY[0x1DA7338E0](v2, v1);
      sub_1D96353E8(v2, v1, v3, v4, v6, v5, 4u);
      v8 = 8250;
      v9 = 0xE200000000000000;
    }

    MEMORY[0x1DA7338E0](v8, v9);
    if (v3)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v3)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }

LABEL_22:
    MEMORY[0x1DA7338E0](v11, v1);
    goto LABEL_23;
  }

  if (!*(v0 + 48))
  {
    v10 = *(v0 + 8);

    sub_1D966ED28();

    v16 = 0xD000000000000012;
    MEMORY[0x1DA7338E0](v3, v4);

    MEMORY[0x1DA7338E0](10272, 0xE200000000000000);
    MEMORY[0x1DA7338E0](v2, v1);

    MEMORY[0x1DA7338E0](41, 0xE100000000000000);
    return v16;
  }

  if (v7 != 1)
  {

    sub_1D966ED28();

    v16 = 0xD00000000000001FLL;
    v12 = MEMORY[0x1DA733940](v2, MEMORY[0x1E69E6158]);
    v14 = v13;
    sub_1D96353E8(v2, v1, v3, v4, v6, v5, 2u);
    MEMORY[0x1DA7338E0](v12, v14);
LABEL_23:

    return v16;
  }

  sub_1D966ED28();

  v16 = 0xD000000000000021;
  MEMORY[0x1DA7338E0](v2, v1);
  sub_1D96353E8(v2, v1, v3, v4, v6, v5, 1u);
  return v16;
}

uint64_t sub_1D9631474(uint64_t a1)
{
  v2 = sub_1D963548C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96314B0(uint64_t a1)
{
  v2 = sub_1D963548C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPrivateDataRequest.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22138, &qword_1D9676AE8);
  v28 = *(v20 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v19 = v16 - v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = a1[3];
  v18 = a1[4];
  v12 = *(v1 + 48);
  v17 = v12;
  v16[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D9635344(v5, v6, v8, v7, v10, v9, v12);
  sub_1D963548C();
  v13 = v19;
  sub_1D966F118();
  v21 = v5;
  v22 = v6;
  v23 = v8;
  v24 = v7;
  v25 = v10;
  v26 = v9;
  v27 = v17;
  sub_1D96354E0();
  v14 = v20;
  sub_1D966EF68();
  sub_1D96353E8(v21, v22, v23, v24, v25, v26, v27);
  return (*(v28 + 8))(v13, v14);
}

uint64_t SetPrivateDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22150, &qword_1D9676AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963548C();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9635534();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v15[1];
    v13 = v15[2];
    *a2 = v15[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9631868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496863746162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D96318F0(uint64_t a1)
{
  v2 = sub_1D9635724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963192C(uint64_t a1)
{
  v2 = sub_1D9635724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C6C6174736E69 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9631A14(uint64_t a1)
{
  v2 = sub_1D96357CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631A50(uint64_t a1)
{
  v2 = sub_1D96357CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9631A8C()
{
  v1 = *v0;
  v2 = 0x6554686372616573;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1D9631B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9639510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9631B68(uint64_t a1)
{
  v2 = sub_1D96355A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631BA4(uint64_t a1)
{
  v2 = sub_1D96355A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631BE0(uint64_t a1)
{
  v2 = sub_1D9635660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631C1C(uint64_t a1)
{
  v2 = sub_1D9635660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631C58(uint64_t a1)
{
  v2 = sub_1D9635778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631C94(uint64_t a1)
{
  v2 = sub_1D9635778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631CD0(uint64_t a1)
{
  v2 = sub_1D9635820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631D0C(uint64_t a1)
{
  v2 = sub_1D9635820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPublicDataRequest.Request.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22160, &qword_1D9676AF8);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v87 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22168, &qword_1D9676B00);
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22170, &qword_1D9676B08);
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v87 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22178, &qword_1D9676B10);
  v87 = *(v102 - 8);
  v10 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v87 - v11;
  v12 = sub_1D966E618();
  v13 = *(v12 - 8);
  v103 = v12;
  v104 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v99 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v87 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v98 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22180, &qword_1D9676B18);
  v100 = *(v23 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - v25;
  v27 = type metadata accessor for SetPublicDataRequest.Request(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22188, &qword_1D9676B20);
  v108 = *(v31 - 8);
  v109 = v31;
  v32 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v87 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96355A8();
  v105 = v34;
  sub_1D966F118();
  sub_1D96355FC(v106, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v46 = v100;
    v45 = v101;
    v47 = v102;
    if (EnumCaseMultiPayload)
    {
      v75 = v22;
      v77 = v103;
      v76 = v104;
      (*(v104 + 32))(v75, v30, v103);
      LOBYTE(v110) = 1;
      sub_1D96357CC();
      v78 = v105;
      sub_1D966EED8();
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
      sub_1D966EF68();
      (*(v87 + 8))(v45, v47);
      (*(v76 + 8))(v75, v77);
      return (*(v108 + 8))(v78, v109);
    }

    else
    {
      v49 = *v30;
      v48 = v30[1];
      LOBYTE(v110) = 0;
      sub_1D9635820();
      v50 = v109;
      v51 = v105;
      sub_1D966EED8();
      sub_1D966EEE8();

      (*(v46 + 8))(v26, v23);
      return (*(v108 + 8))(v51, v50);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221C8, &qword_1D9676B38);
      v53 = (v30 + *(v52 + 48));
      v54 = *v53;
      v106 = v53[1];
      v55 = (v30 + *(v52 + 64));
      v57 = *v55;
      v56 = v55[1];
      v102 = v57;
      v100 = v54;
      v101 = v56;
      v58 = v103;
      v59 = v104;
      v60 = v98;
      (*(v104 + 32))(v98, v30, v103);
      LOBYTE(v110) = 2;
      sub_1D9635778();
      v61 = v92;
      v62 = v109;
      v63 = v105;
      sub_1D966EED8();
      LOBYTE(v110) = 0;
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
      v64 = v94;
      v65 = v107;
      sub_1D966EF68();
      if (v65)
      {

        sub_1D9621CEC(v102, v101);
        (*(v93 + 8))(v61, v64);
        (*(v59 + 8))(v60, v58);
        return (*(v108 + 8))(v63, v62);
      }

      v80 = v101;
      v79 = v102;
      LOBYTE(v110) = 1;
      v81 = v61;
      sub_1D966EF38();

      v110 = v79;
      v111 = v80;
      v112 = 2;
      sub_1D9621C98();
      sub_1D966EF18();
      v84 = v98;
      (*(v93 + 8))(v81, v64);
      (*(v104 + 8))(v84, v103);
      (*(v108 + 8))(v63, v62);
      v85 = v79;
      v86 = v80;
    }

    else
    {
      v37 = v109;
      v38 = v105;
      if (EnumCaseMultiPayload == 3)
      {
        v40 = v103;
        v39 = v104;
        v41 = v88;
        (*(v104 + 32))(v88, v30, v103);
        LOBYTE(v110) = 3;
        sub_1D9635724();
        v42 = v89;
        sub_1D966EED8();
        sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
        v43 = v91;
        sub_1D966EF68();
        (*(v90 + 8))(v42, v43);
        (*(v39 + 8))(v41, v40);
        return (*(v108 + 8))(v38, v37);
      }

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22198, &qword_1D9676B28);
      v106 = *(v30 + *(v66 + 48));
      v67 = (v30 + *(v66 + 64));
      v68 = *v67;
      v101 = v67[1];
      v102 = v68;
      v69 = v103;
      v70 = v104;
      v71 = v99;
      (*(v104 + 32))(v99, v30, v103);
      LOBYTE(v110) = 4;
      sub_1D9635660();
      v72 = v95;
      sub_1D966EED8();
      LOBYTE(v110) = 0;
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
      v73 = v97;
      v74 = v107;
      sub_1D966EF68();
      if (v74)
      {

        sub_1D9621CEC(v102, v101);
        (*(v96 + 8))(v72, v73);
        (*(v70 + 8))(v71, v69);
        return (*(v108 + 8))(v38, v37);
      }

      v83 = v101;
      v82 = v102;
      v110 = v106;
      v112 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221B0, &qword_1D9676B30);
      sub_1D96356B4(&qword_1ECB221B8);
      sub_1D966EF68();

      v110 = v82;
      v111 = v83;
      v112 = 2;
      sub_1D9621C98();
      sub_1D966EF18();
      (*(v96 + 8))(v72, v73);
      (*(v70 + 8))(v99, v69);
      (*(v108 + 8))(v38, v109);
      v85 = v102;
      v86 = v83;
    }

    return sub_1D9621CEC(v85, v86);
  }
}

uint64_t SetPublicDataRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221E8, &qword_1D9676B40);
  v4 = *(v3 - 8);
  v98 = v3;
  v99 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221F0, &qword_1D9676B48);
  v8 = *(v7 - 8);
  v95 = v7;
  v96 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v85 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221F8, &qword_1D9676B50);
  v100 = *(v90 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v108 = &v85 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22200, &qword_1D9676B58);
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v107 = &v85 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22208, &qword_1D9676B60);
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v85 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22210, &qword_1D9676B68);
  v104 = *(v106 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v19 = &v85 - v18;
  v103 = type metadata accessor for SetPublicDataRequest.Request(0);
  v20 = *(*(v103 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v103);
  v97 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v85 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v85 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v85 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v85 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v85 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1D96355A8();
  v39 = v111;
  sub_1D966F0F8();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v86 = v34;
  v87 = v25;
  v88 = v31;
  v40 = v105;
  v42 = v107;
  v41 = v108;
  v111 = v28;
  v43 = v109;
  v89 = v36;
  v44 = v106;
  v45 = sub_1D966EEB8();
  v46 = (2 * *(v45 + 16)) | 1;
  v112 = v45;
  v113 = v45 + 32;
  v114 = 0;
  v115 = v46;
  v47 = sub_1D9602058();
  if (v47 == 5 || v114 != v115 >> 1)
  {
    v52 = sub_1D966ED58();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v54 = v103;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    (*(v104 + 8))(v19, v44);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  if (v47 > 1u)
  {
    if (v47 == 2)
    {
      v116 = 2;
      sub_1D9635778();
      v58 = v44;
      sub_1D966EDE8();
      sub_1D966E618();
      v116 = 0;
      sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8]);
      v59 = v90;
      sub_1D966EE88();
      v116 = 1;
      v77 = sub_1D966EE58();
      v79 = v78;
      v107 = v19;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221C8, &qword_1D9676B38);
      v81 = v111;
      v82 = &v111[*(v80 + 48)];
      v83 = *(v80 + 64);
      *v82 = v77;
      v82[1] = v79;
      v116 = 2;
      sub_1D9621D48();
      sub_1D966EE38();
      (*(v100 + 8))(v41, v59);
      (*(v104 + 8))(v107, v58);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v68 = v81;
    }

    else
    {
      v48 = v44;
      if (v47 == 3)
      {
        v116 = 3;
        sub_1D9635724();
        v49 = v101;
        sub_1D966EDE8();
        sub_1D966E618();
        sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8]);
        v50 = v87;
        v51 = v95;
        sub_1D966EE88();
        (*(v96 + 8))(v49, v51);
        (*(v104 + 8))(v19, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v68 = v50;
      }

      else
      {
        v116 = 4;
        sub_1D9635660();
        v60 = v43;
        sub_1D966EDE8();
        sub_1D966E618();
        v116 = 0;
        sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8]);
        v61 = v97;
        v62 = v98;
        sub_1D966EE88();
        v107 = v19;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22198, &qword_1D9676B28);
        v70 = *(v69 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221B0, &qword_1D9676B30);
        v116 = 1;
        sub_1D96356B4(&qword_1ECB22220);
        sub_1D966EE88();
        v84 = *(v69 + 64);
        v116 = 2;
        sub_1D9621D48();
        sub_1D966EE38();
        (*(v99 + 8))(v60, v62);
        (*(v104 + 8))(v107, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v68 = v61;
      }
    }

    v75 = v110;
    v76 = v102;
    goto LABEL_16;
  }

  v57 = v89;
  if (v47)
  {
    v116 = 1;
    sub_1D96357CC();
    v63 = v44;
    sub_1D966EDE8();
    v76 = v102;
    sub_1D966E618();
    sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8]);
    v65 = v88;
    v66 = v94;
    sub_1D966EE88();
    v67 = v104;
    (*(v93 + 8))(v42, v66);
    (*(v67 + 8))(v19, v63);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v75 = v110;
    v68 = v65;
LABEL_16:
    v57 = v89;
    goto LABEL_17;
  }

  v116 = 0;
  sub_1D9635820();
  sub_1D966EDE8();
  v64 = v92;
  v71 = sub_1D966EE08();
  v73 = v72;
  (*(v91 + 8))(v40, v64);
  (*(v104 + 8))(v19, v44);
  swift_unknownObjectRelease();
  v74 = v86;
  *v86 = v71;
  v74[1] = v73;
  swift_storeEnumTagMultiPayload();
  v68 = v74;
  v75 = v110;
  v76 = v102;
LABEL_17:
  sub_1D96358E8(v68, v57, type metadata accessor for SetPublicDataRequest.Request);
  sub_1D96358E8(v57, v76, type metadata accessor for SetPublicDataRequest.Request);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_1D9633AD4()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F1E84(v2, sub_1D9633BCC, 0);
}

uint64_t sub_1D9633BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9633C68(uint64_t a1)
{
  v2 = sub_1D9635874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9633CA4(uint64_t a1)
{
  v2 = sub_1D9635874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPublicDataRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22228, &qword_1D9676B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F118();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_1D9634D68(&qword_1ECB22238, type metadata accessor for SetPublicDataRequest.Request);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SetPublicDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22240, &qword_1D9676B80);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SetPublicDataRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F0F8();
  if (!v2)
  {
    v16 = v19;
    sub_1D9634D68(&qword_1ECB22248, type metadata accessor for SetPublicDataRequest.Request);
    v17 = v21;
    sub_1D966EE88();
    (*(v20 + 8))(v10, v7);
    sub_1D96358E8(v17, v14, type metadata accessor for SetPublicDataRequest.Request);
    sub_1D96358E8(v14, v16, type metadata accessor for SetPublicDataRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D96340E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22228, &qword_1D9676B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F118();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_1D9634D68(&qword_1ECB22238, type metadata accessor for SetPublicDataRequest.Request);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D963425C()
{
  result = qword_1EDCF67B8[0];
  if (!qword_1EDCF67B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF67B8);
  }

  return result;
}

unint64_t sub_1D96342B0()
{
  result = qword_1ECB21E18;
  if (!qword_1ECB21E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E18);
  }

  return result;
}

unint64_t sub_1D9634304()
{
  result = qword_1ECB21E20;
  if (!qword_1ECB21E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E20);
  }

  return result;
}

unint64_t sub_1D9634358()
{
  result = qword_1ECB21E28;
  if (!qword_1ECB21E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E28);
  }

  return result;
}

unint64_t sub_1D96343AC()
{
  result = qword_1EDCF6678;
  if (!qword_1EDCF6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6678);
  }

  return result;
}

unint64_t sub_1D9634400()
{
  result = qword_1ECB21E30;
  if (!qword_1ECB21E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E30);
  }

  return result;
}

unint64_t sub_1D9634454()
{
  result = qword_1ECB21E38;
  if (!qword_1ECB21E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E38);
  }

  return result;
}

unint64_t sub_1D96344A8()
{
  result = qword_1ECB21E40;
  if (!qword_1ECB21E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E40);
  }

  return result;
}

unint64_t sub_1D96344FC()
{
  result = qword_1EDCF66D8;
  if (!qword_1EDCF66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66D8);
  }

  return result;
}

unint64_t sub_1D9634550()
{
  result = qword_1ECB21E48;
  if (!qword_1ECB21E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E48);
  }

  return result;
}

unint64_t sub_1D96345A4()
{
  result = qword_1ECB21E50;
  if (!qword_1ECB21E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E50);
  }

  return result;
}

unint64_t sub_1D96345F8()
{
  result = qword_1ECB21E58;
  if (!qword_1ECB21E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E58);
  }

  return result;
}

unint64_t sub_1D963464C()
{
  result = qword_1ECB21EB8;
  if (!qword_1ECB21EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21EB8);
  }

  return result;
}

uint64_t sub_1D96346A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        return sub_1D95EA68C(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return result;
    }
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
  }

  return result;
}

unint64_t sub_1D9634704()
{
  result = qword_1EDCF6710;
  if (!qword_1EDCF6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6710);
  }

  return result;
}

unint64_t sub_1D9634758()
{
  result = qword_1EDCF66D0;
  if (!qword_1EDCF66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66D0);
  }

  return result;
}

uint64_t sub_1D96347AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        return sub_1D95EA55C(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return result;
    }
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
  }

  return result;
}

unint64_t sub_1D9634810()
{
  result = qword_1EDCF6300[0];
  if (!qword_1EDCF6300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF6300);
  }

  return result;
}

unint64_t sub_1D9634864()
{
  result = qword_1EDCF6920;
  if (!qword_1EDCF6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6920);
  }

  return result;
}

unint64_t sub_1D96348B8()
{
  result = qword_1ECB21F28;
  if (!qword_1ECB21F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F28);
  }

  return result;
}

unint64_t sub_1D963490C()
{
  result = qword_1ECB21F48;
  if (!qword_1ECB21F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F48);
  }

  return result;
}

unint64_t sub_1D9634960()
{
  result = qword_1ECB21F50;
  if (!qword_1ECB21F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F50);
  }

  return result;
}

unint64_t sub_1D96349B4()
{
  result = qword_1EDCF6698;
  if (!qword_1EDCF6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6698);
  }

  return result;
}

unint64_t sub_1D9634A08()
{
  result = qword_1ECB21F58;
  if (!qword_1ECB21F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F58);
  }

  return result;
}

unint64_t sub_1D9634A5C()
{
  result = qword_1ECB21F60;
  if (!qword_1ECB21F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F60);
  }

  return result;
}

unint64_t sub_1D9634AB0()
{
  result = qword_1EDCF66E8;
  if (!qword_1EDCF66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66E8);
  }

  return result;
}

unint64_t sub_1D9634B04()
{
  result = qword_1ECB21F68;
  if (!qword_1ECB21F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F68);
  }

  return result;
}

unint64_t sub_1D9634B58()
{
  result = qword_1ECB21F70;
  if (!qword_1ECB21F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F70);
  }

  return result;
}

unint64_t sub_1D9634BAC()
{
  result = qword_1ECB21F78;
  if (!qword_1ECB21F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F78);
  }

  return result;
}

uint64_t sub_1D9634C00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21F80, &qword_1D96769C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9634C78()
{
  result = qword_1ECB21F90;
  if (!qword_1ECB21F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F90);
  }

  return result;
}

uint64_t sub_1D9634CCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21F30, &qword_1D96769B8);
    sub_1D9634D68(a2, type metadata accessor for AppLibrary.ExceptionRequest);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9634D68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9634DB0()
{
  result = qword_1ECB22008;
  if (!qword_1ECB22008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22008);
  }

  return result;
}

unint64_t sub_1D9634E04()
{
  result = qword_1EDCF6878;
  if (!qword_1EDCF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6878);
  }

  return result;
}

unint64_t sub_1D9634E58()
{
  result = qword_1EDCF6648;
  if (!qword_1EDCF6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6648);
  }

  return result;
}

unint64_t sub_1D9634EAC()
{
  result = qword_1EDCF66E0;
  if (!qword_1EDCF66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66E0);
  }

  return result;
}

unint64_t sub_1D9634F00()
{
  result = qword_1ECB22038;
  if (!qword_1ECB22038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22038);
  }

  return result;
}

unint64_t sub_1D9634F54()
{
  result = qword_1ECB22040;
  if (!qword_1ECB22040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22040);
  }

  return result;
}

unint64_t sub_1D9634FA8()
{
  result = qword_1ECB22048;
  if (!qword_1ECB22048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22048);
  }

  return result;
}

unint64_t sub_1D9634FFC()
{
  result = qword_1ECB22070;
  if (!qword_1ECB22070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22070);
  }

  return result;
}

unint64_t sub_1D9635050()
{
  result = qword_1ECB22078;
  if (!qword_1ECB22078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22078);
  }

  return result;
}

unint64_t sub_1D96350A4()
{
  result = qword_1ECB22088;
  if (!qword_1ECB22088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22088);
  }

  return result;
}

unint64_t sub_1D96350F8()
{
  result = qword_1ECB220C8;
  if (!qword_1ECB220C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220C8);
  }

  return result;
}

unint64_t sub_1D963514C()
{
  result = qword_1ECB220D0;
  if (!qword_1ECB220D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220D0);
  }

  return result;
}

unint64_t sub_1D96351A0()
{
  result = qword_1ECB220D8;
  if (!qword_1ECB220D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220D8);
  }

  return result;
}

unint64_t sub_1D96351F4()
{
  result = qword_1ECB220E0;
  if (!qword_1ECB220E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220E0);
  }

  return result;
}

unint64_t sub_1D9635248()
{
  result = qword_1ECB220E8;
  if (!qword_1ECB220E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220E8);
  }

  return result;
}

unint64_t sub_1D963529C()
{
  result = qword_1ECB220F0;
  if (!qword_1ECB220F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220F0);
  }

  return result;
}

unint64_t sub_1D96352F0()
{
  result = qword_1ECB220F8;
  if (!qword_1ECB220F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220F8);
  }

  return result;
}

uint64_t sub_1D9635344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return result;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1D96353E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return result;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

unint64_t sub_1D963548C()
{
  result = qword_1ECB22140;
  if (!qword_1ECB22140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22140);
  }

  return result;
}

unint64_t sub_1D96354E0()
{
  result = qword_1ECB22148;
  if (!qword_1ECB22148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22148);
  }

  return result;
}

unint64_t sub_1D9635534()
{
  result = qword_1ECB22158;
  if (!qword_1ECB22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22158);
  }

  return result;
}

unint64_t sub_1D96355A8()
{
  result = qword_1ECB22190;
  if (!qword_1ECB22190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22190);
  }

  return result;
}

uint64_t sub_1D96355FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9635660()
{
  result = qword_1ECB221A0;
  if (!qword_1ECB221A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221A0);
  }

  return result;
}

uint64_t sub_1D96356B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB221B0, &qword_1D9676B30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9635724()
{
  result = qword_1ECB221C0;
  if (!qword_1ECB221C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221C0);
  }

  return result;
}

unint64_t sub_1D9635778()
{
  result = qword_1ECB221D0;
  if (!qword_1ECB221D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221D0);
  }

  return result;
}

unint64_t sub_1D96357CC()
{
  result = qword_1ECB221D8;
  if (!qword_1ECB221D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221D8);
  }

  return result;
}

unint64_t sub_1D9635820()
{
  result = qword_1ECB221E0;
  if (!qword_1ECB221E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221E0);
  }

  return result;
}

unint64_t sub_1D9635874()
{
  result = qword_1ECB22230;
  if (!qword_1ECB22230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22230);
  }

  return result;
}

uint64_t sub_1D96358E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9635954()
{
  result = qword_1ECB22250;
  if (!qword_1ECB22250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22250);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit23FetchPrivateDataRequestV0F0O(uint64_t a1)
{
  v1 = (*(a1 + 40) >> 60) & 3 | (4 * (*(a1 + 48) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D96359F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 49))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9635A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = (-a2 & 3) << 60;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1D9635AC4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 48) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
    *(result + 48) = 1;
  }

  return result;
}

uint64_t sub_1D9635B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9635B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9635C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9635C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9635CF4()
{
  result = type metadata accessor for SetPublicDataRequest.Request(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9635D60()
{
  sub_1D96127EC();
  if (v0 <= 0x3F)
  {
    sub_1D9635EA4(319, &qword_1ECB22278);
    if (v1 <= 0x3F)
    {
      sub_1D9635E20();
      if (v2 <= 0x3F)
      {
        sub_1D9635EA4(319, &qword_1ECB22290);
        if (v3 <= 0x3F)
        {
          sub_1D9635EEC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9635E20()
{
  if (!qword_1ECB22280)
  {
    sub_1D966E618();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB22288, &qword_1D96777A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB22280);
    }
  }
}

void sub_1D9635EA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D966E618();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D9635EEC()
{
  if (!qword_1ECB22298)
  {
    sub_1D966E618();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB221B0, &qword_1D9676B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB22288, &qword_1D96777A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB22298);
    }
  }
}

unint64_t sub_1D9636240()
{
  result = qword_1ECB222A0;
  if (!qword_1ECB222A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222A0);
  }

  return result;
}

unint64_t sub_1D9636298()
{
  result = qword_1ECB222A8;
  if (!qword_1ECB222A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222A8);
  }

  return result;
}

unint64_t sub_1D96362F0()
{
  result = qword_1ECB222B0;
  if (!qword_1ECB222B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222B0);
  }

  return result;
}

unint64_t sub_1D9636348()
{
  result = qword_1ECB222B8;
  if (!qword_1ECB222B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222B8);
  }

  return result;
}

unint64_t sub_1D96363A0()
{
  result = qword_1ECB222C0;
  if (!qword_1ECB222C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222C0);
  }

  return result;
}

unint64_t sub_1D96363F8()
{
  result = qword_1ECB222C8;
  if (!qword_1ECB222C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222C8);
  }

  return result;
}

unint64_t sub_1D9636450()
{
  result = qword_1ECB222D0;
  if (!qword_1ECB222D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222D0);
  }

  return result;
}

unint64_t sub_1D96364A8()
{
  result = qword_1ECB222D8;
  if (!qword_1ECB222D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222D8);
  }

  return result;
}

unint64_t sub_1D9636500()
{
  result = qword_1ECB222E0;
  if (!qword_1ECB222E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222E0);
  }

  return result;
}

unint64_t sub_1D9636558()
{
  result = qword_1ECB222E8;
  if (!qword_1ECB222E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222E8);
  }

  return result;
}

unint64_t sub_1D96365B0()
{
  result = qword_1ECB222F0;
  if (!qword_1ECB222F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222F0);
  }

  return result;
}

unint64_t sub_1D9636608()
{
  result = qword_1ECB222F8;
  if (!qword_1ECB222F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222F8);
  }

  return result;
}

unint64_t sub_1D9636660()
{
  result = qword_1ECB22300;
  if (!qword_1ECB22300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22300);
  }

  return result;
}

unint64_t sub_1D96366B8()
{
  result = qword_1ECB22308;
  if (!qword_1ECB22308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22308);
  }

  return result;
}

unint64_t sub_1D9636710()
{
  result = qword_1ECB22310;
  if (!qword_1ECB22310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22310);
  }

  return result;
}

unint64_t sub_1D9636768()
{
  result = qword_1ECB22318;
  if (!qword_1ECB22318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22318);
  }

  return result;
}

unint64_t sub_1D96367C0()
{
  result = qword_1ECB22320;
  if (!qword_1ECB22320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22320);
  }

  return result;
}

unint64_t sub_1D9636818()
{
  result = qword_1ECB22328;
  if (!qword_1ECB22328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22328);
  }

  return result;
}

unint64_t sub_1D9636870()
{
  result = qword_1ECB22330;
  if (!qword_1ECB22330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22330);
  }

  return result;
}

unint64_t sub_1D96368C8()
{
  result = qword_1ECB22338;
  if (!qword_1ECB22338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22338);
  }

  return result;
}

unint64_t sub_1D9636920()
{
  result = qword_1ECB22340;
  if (!qword_1ECB22340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22340);
  }

  return result;
}

unint64_t sub_1D9636978()
{
  result = qword_1ECB22348;
  if (!qword_1ECB22348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22348);
  }

  return result;
}

unint64_t sub_1D96369D0()
{
  result = qword_1ECB22350;
  if (!qword_1ECB22350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22350);
  }

  return result;
}

unint64_t sub_1D9636A28()
{
  result = qword_1ECB22358;
  if (!qword_1ECB22358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22358);
  }

  return result;
}

unint64_t sub_1D9636A80()
{
  result = qword_1ECB22360;
  if (!qword_1ECB22360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22360);
  }

  return result;
}

unint64_t sub_1D9636AD8()
{
  result = qword_1ECB22368;
  if (!qword_1ECB22368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22368);
  }

  return result;
}

unint64_t sub_1D9636B30()
{
  result = qword_1ECB22370;
  if (!qword_1ECB22370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22370);
  }

  return result;
}

unint64_t sub_1D9636B88()
{
  result = qword_1ECB22378;
  if (!qword_1ECB22378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22378);
  }

  return result;
}

unint64_t sub_1D9636BE0()
{
  result = qword_1ECB22380;
  if (!qword_1ECB22380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22380);
  }

  return result;
}

unint64_t sub_1D9636C38()
{
  result = qword_1ECB22388;
  if (!qword_1ECB22388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22388);
  }

  return result;
}

unint64_t sub_1D9636C90()
{
  result = qword_1ECB22390;
  if (!qword_1ECB22390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22390);
  }

  return result;
}

unint64_t sub_1D9636CE8()
{
  result = qword_1ECB22398;
  if (!qword_1ECB22398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22398);
  }

  return result;
}

unint64_t sub_1D9636D40()
{
  result = qword_1ECB223A0;
  if (!qword_1ECB223A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223A0);
  }

  return result;
}

unint64_t sub_1D9636D98()
{
  result = qword_1ECB223A8;
  if (!qword_1ECB223A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223A8);
  }

  return result;
}

unint64_t sub_1D9636DF0()
{
  result = qword_1ECB223B0;
  if (!qword_1ECB223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223B0);
  }

  return result;
}

unint64_t sub_1D9636E48()
{
  result = qword_1ECB223B8;
  if (!qword_1ECB223B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223B8);
  }

  return result;
}

unint64_t sub_1D9636EA0()
{
  result = qword_1ECB223C0;
  if (!qword_1ECB223C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223C0);
  }

  return result;
}

unint64_t sub_1D9636EF8()
{
  result = qword_1ECB223C8;
  if (!qword_1ECB223C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223C8);
  }

  return result;
}

unint64_t sub_1D9636F50()
{
  result = qword_1ECB223D0;
  if (!qword_1ECB223D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223D0);
  }

  return result;
}

unint64_t sub_1D9636FA8()
{
  result = qword_1ECB223D8;
  if (!qword_1ECB223D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223D8);
  }

  return result;
}

unint64_t sub_1D9637000()
{
  result = qword_1ECB223E0;
  if (!qword_1ECB223E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223E0);
  }

  return result;
}

unint64_t sub_1D9637058()
{
  result = qword_1ECB223E8;
  if (!qword_1ECB223E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223E8);
  }

  return result;
}

unint64_t sub_1D96370B0()
{
  result = qword_1ECB223F0;
  if (!qword_1ECB223F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223F0);
  }

  return result;
}

unint64_t sub_1D9637108()
{
  result = qword_1ECB223F8;
  if (!qword_1ECB223F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223F8);
  }

  return result;
}

unint64_t sub_1D9637160()
{
  result = qword_1ECB22400;
  if (!qword_1ECB22400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22400);
  }

  return result;
}

unint64_t sub_1D96371B8()
{
  result = qword_1ECB22408;
  if (!qword_1ECB22408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22408);
  }

  return result;
}

unint64_t sub_1D9637210()
{
  result = qword_1ECB22410;
  if (!qword_1ECB22410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22410);
  }

  return result;
}

unint64_t sub_1D9637268()
{
  result = qword_1ECB22418;
  if (!qword_1ECB22418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22418);
  }

  return result;
}

unint64_t sub_1D96372C0()
{
  result = qword_1ECB22420;
  if (!qword_1ECB22420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22420);
  }

  return result;
}

unint64_t sub_1D9637318()
{
  result = qword_1ECB22428;
  if (!qword_1ECB22428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22428);
  }

  return result;
}

unint64_t sub_1D9637370()
{
  result = qword_1ECB22430;
  if (!qword_1ECB22430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22430);
  }

  return result;
}

unint64_t sub_1D96373C8()
{
  result = qword_1ECB22438;
  if (!qword_1ECB22438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22438);
  }

  return result;
}

unint64_t sub_1D9637420()
{
  result = qword_1ECB22440;
  if (!qword_1ECB22440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22440);
  }

  return result;
}

unint64_t sub_1D9637478()
{
  result = qword_1ECB22448;
  if (!qword_1ECB22448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22448);
  }

  return result;
}

unint64_t sub_1D96374D0()
{
  result = qword_1ECB22450;
  if (!qword_1ECB22450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22450);
  }

  return result;
}

unint64_t sub_1D9637528()
{
  result = qword_1ECB22458;
  if (!qword_1ECB22458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22458);
  }

  return result;
}

unint64_t sub_1D9637580()
{
  result = qword_1ECB22460;
  if (!qword_1ECB22460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22460);
  }

  return result;
}

unint64_t sub_1D96375D8()
{
  result = qword_1ECB22468;
  if (!qword_1ECB22468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22468);
  }

  return result;
}

unint64_t sub_1D9637630()
{
  result = qword_1ECB22470;
  if (!qword_1ECB22470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22470);
  }

  return result;
}

unint64_t sub_1D9637688()
{
  result = qword_1ECB22478;
  if (!qword_1ECB22478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22478);
  }

  return result;
}

unint64_t sub_1D96376E0()
{
  result = qword_1ECB22480;
  if (!qword_1ECB22480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22480);
  }

  return result;
}

unint64_t sub_1D9637738()
{
  result = qword_1ECB22488;
  if (!qword_1ECB22488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22488);
  }

  return result;
}

unint64_t sub_1D9637790()
{
  result = qword_1ECB22490;
  if (!qword_1ECB22490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22490);
  }

  return result;
}

unint64_t sub_1D96377E8()
{
  result = qword_1ECB22498;
  if (!qword_1ECB22498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22498);
  }

  return result;
}

unint64_t sub_1D9637840()
{
  result = qword_1ECB224A0;
  if (!qword_1ECB224A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224A0);
  }

  return result;
}

unint64_t sub_1D9637898()
{
  result = qword_1ECB224A8;
  if (!qword_1ECB224A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224A8);
  }

  return result;
}

unint64_t sub_1D96378F0()
{
  result = qword_1ECB224B0;
  if (!qword_1ECB224B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224B0);
  }

  return result;
}

unint64_t sub_1D9637948()
{
  result = qword_1ECB224B8;
  if (!qword_1ECB224B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224B8);
  }

  return result;
}

unint64_t sub_1D96379A0()
{
  result = qword_1ECB224C0;
  if (!qword_1ECB224C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224C0);
  }

  return result;
}

unint64_t sub_1D96379F8()
{
  result = qword_1ECB224C8;
  if (!qword_1ECB224C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224C8);
  }

  return result;
}

unint64_t sub_1D9637A50()
{
  result = qword_1ECB224D0;
  if (!qword_1ECB224D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224D0);
  }

  return result;
}

unint64_t sub_1D9637AA8()
{
  result = qword_1ECB224D8;
  if (!qword_1ECB224D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224D8);
  }

  return result;
}

unint64_t sub_1D9637B00()
{
  result = qword_1ECB224E0;
  if (!qword_1ECB224E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224E0);
  }

  return result;
}

unint64_t sub_1D9637B58()
{
  result = qword_1ECB224E8;
  if (!qword_1ECB224E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224E8);
  }

  return result;
}

unint64_t sub_1D9637BB0()
{
  result = qword_1ECB224F0;
  if (!qword_1ECB224F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224F0);
  }

  return result;
}

unint64_t sub_1D9637C08()
{
  result = qword_1EDCF6868;
  if (!qword_1EDCF6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6868);
  }

  return result;
}

unint64_t sub_1D9637C60()
{
  result = qword_1EDCF6870;
  if (!qword_1EDCF6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6870);
  }

  return result;
}

unint64_t sub_1D9637CB8()
{
  result = qword_1EDCF68A0;
  if (!qword_1EDCF68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68A0);
  }

  return result;
}

unint64_t sub_1D9637D10()
{
  result = qword_1EDCF68A8;
  if (!qword_1EDCF68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68A8);
  }

  return result;
}

unint64_t sub_1D9637D68()
{
  result = qword_1EDCF68C0;
  if (!qword_1EDCF68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68C0);
  }

  return result;
}

unint64_t sub_1D9637DC0()
{
  result = qword_1EDCF68C8;
  if (!qword_1EDCF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68C8);
  }

  return result;
}

unint64_t sub_1D9637E18()
{
  result = qword_1EDCF6900;
  if (!qword_1EDCF6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6900);
  }

  return result;
}

unint64_t sub_1D9637E70()
{
  result = qword_1EDCF6908;
  if (!qword_1EDCF6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6908);
  }

  return result;
}

unint64_t sub_1D9637EC8()
{
  result = qword_1EDCF6890;
  if (!qword_1EDCF6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6890);
  }

  return result;
}

unint64_t sub_1D9637F20()
{
  result = qword_1EDCF6898;
  if (!qword_1EDCF6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6898);
  }

  return result;
}

unint64_t sub_1D9637F78()
{
  result = qword_1EDCF68B0;
  if (!qword_1EDCF68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68B0);
  }

  return result;
}

unint64_t sub_1D9637FD0()
{
  result = qword_1EDCF68B8;
  if (!qword_1EDCF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68B8);
  }

  return result;
}

unint64_t sub_1D9638028()
{
  result = qword_1EDCF68D0;
  if (!qword_1EDCF68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68D0);
  }

  return result;
}

unint64_t sub_1D9638080()
{
  result = qword_1EDCF68D8;
  if (!qword_1EDCF68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68D8);
  }

  return result;
}

unint64_t sub_1D96380D8()
{
  result = qword_1EDCF6880;
  if (!qword_1EDCF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6880);
  }

  return result;
}

unint64_t sub_1D9638130()
{
  result = qword_1EDCF6888;
  if (!qword_1EDCF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6888);
  }

  return result;
}

unint64_t sub_1D9638188()
{
  result = qword_1EDCF68F0;
  if (!qword_1EDCF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68F0);
  }

  return result;
}

unint64_t sub_1D96381E0()
{
  result = qword_1EDCF68F8;
  if (!qword_1EDCF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68F8);
  }

  return result;
}

unint64_t sub_1D9638238()
{
  result = qword_1EDCF68E0;
  if (!qword_1EDCF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68E0);
  }

  return result;
}

unint64_t sub_1D9638290()
{
  result = qword_1EDCF68E8;
  if (!qword_1EDCF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68E8);
  }

  return result;
}

unint64_t sub_1D96382E8()
{
  result = qword_1ECB224F8;
  if (!qword_1ECB224F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224F8);
  }

  return result;
}

unint64_t sub_1D9638340()
{
  result = qword_1ECB22500;
  if (!qword_1ECB22500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22500);
  }

  return result;
}

unint64_t sub_1D9638398()
{
  result = qword_1EDCF6910;
  if (!qword_1EDCF6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6910);
  }

  return result;
}

unint64_t sub_1D96383F0()
{
  result = qword_1EDCF6918;
  if (!qword_1EDCF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6918);
  }

  return result;
}

unint64_t sub_1D9638448()
{
  result = qword_1EDCF6700;
  if (!qword_1EDCF6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6700);
  }

  return result;
}

unint64_t sub_1D96384A0()
{
  result = qword_1EDCF6708;
  if (!qword_1EDCF6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6708);
  }

  return result;
}

unint64_t sub_1D96384F8()
{
  result = qword_1EDCF6748;
  if (!qword_1EDCF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6748);
  }

  return result;
}

unint64_t sub_1D9638550()
{
  result = qword_1EDCF6750;
  if (!qword_1EDCF6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6750);
  }

  return result;
}

unint64_t sub_1D96385A8()
{
  result = qword_1EDCF6768;
  if (!qword_1EDCF6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6768);
  }

  return result;
}

unint64_t sub_1D9638600()
{
  result = qword_1EDCF6770;
  if (!qword_1EDCF6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6770);
  }

  return result;
}

unint64_t sub_1D9638658()
{
  result = qword_1EDCF6798;
  if (!qword_1EDCF6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6798);
  }

  return result;
}

unint64_t sub_1D96386B0()
{
  result = qword_1EDCF67A0;
  if (!qword_1EDCF67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67A0);
  }

  return result;
}

unint64_t sub_1D9638708()
{
  result = qword_1EDCF6738;
  if (!qword_1EDCF6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6738);
  }

  return result;
}

unint64_t sub_1D9638760()
{
  result = qword_1EDCF6740;
  if (!qword_1EDCF6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6740);
  }

  return result;
}

unint64_t sub_1D96387B8()
{
  result = qword_1EDCF6758;
  if (!qword_1EDCF6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6758);
  }

  return result;
}

unint64_t sub_1D9638810()
{
  result = qword_1EDCF6760;
  if (!qword_1EDCF6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6760);
  }

  return result;
}

unint64_t sub_1D9638868()
{
  result = qword_1EDCF6778;
  if (!qword_1EDCF6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6778);
  }

  return result;
}

unint64_t sub_1D96388C0()
{
  result = qword_1EDCF6780;
  if (!qword_1EDCF6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6780);
  }

  return result;
}

unint64_t sub_1D9638918()
{
  result = qword_1EDCF6728;
  if (!qword_1EDCF6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6728);
  }

  return result;
}

unint64_t sub_1D9638970()
{
  result = qword_1EDCF6730;
  if (!qword_1EDCF6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6730);
  }

  return result;
}

unint64_t sub_1D96389C8()
{
  result = qword_1EDCF6718;
  if (!qword_1EDCF6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6718);
  }

  return result;
}

unint64_t sub_1D9638A20()
{
  result = qword_1EDCF6720;
  if (!qword_1EDCF6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6720);
  }

  return result;
}

unint64_t sub_1D9638A78()
{
  result = qword_1EDCF6788;
  if (!qword_1EDCF6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6788);
  }

  return result;
}

unint64_t sub_1D9638AD0()
{
  result = qword_1EDCF6790;
  if (!qword_1EDCF6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6790);
  }

  return result;
}

unint64_t sub_1D9638B28()
{
  result = qword_1ECB22508;
  if (!qword_1ECB22508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22508);
  }

  return result;
}

unint64_t sub_1D9638B80()
{
  result = qword_1ECB22510;
  if (!qword_1ECB22510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22510);
  }

  return result;
}

unint64_t sub_1D9638BD8()
{
  result = qword_1EDCF67A8;
  if (!qword_1EDCF67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67A8);
  }

  return result;
}

unint64_t sub_1D9638C30()
{
  result = qword_1EDCF67B0;
  if (!qword_1EDCF67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67B0);
  }

  return result;
}

uint64_t sub_1D9638C84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D9680F80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680FA0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9680FE0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9681020 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D9681040 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680740 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D9638FBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D9680F80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680FA0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9680FE0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9681020 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680740 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D9639300(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9681080 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D96810A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D96810C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D9681040 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D9639510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D96810E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681100 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9681120 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9681140 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D96396CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CodableAuditToken.auditToken.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

void __swiftcall CodableAuditToken.init(auditToken:)(MarketplaceKit::CodableAuditToken *__return_ptr retstr, audit_token_t *auditToken)
{
  *retstr->field1D9689DA0.val = auditToken;
  *&retstr->field1D9689DA0.val[2] = v2;
  *&retstr->field1D9689DA0.val[4] = v3;
  *&retstr->field1D9689DA0.val[6] = v4;
}

uint64_t CodableAuditToken.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966F0E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D9621D48();
    sub_1D966EFC8();
    v6 = v16;
    v7 = v17;
    v12 = 0u;
    v13 = 0u;
    v8 = sub_1D966E5D8();
    [v8 getBytes:&v12 length:32];
    sub_1D95EA55C(v6, v7);

    v14 = v12;
    v15 = v13;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v9 = v15;
    *a2 = v14;
    a2[1] = v9;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CodableAuditToken.encode(to:)(void *a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966F108();
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v4 = sub_1D9639D80(v9, 32);
  v6 = v5;
  v10 = v4;
  v11 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1D9621C98();
  sub_1D966EFD8();
  sub_1D95EA55C(v4, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D9639BB8;

  return (sub_1D9639E80)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D9639BB8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1D9639CC8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9639D80(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D9639CC8(a1, &a1[a2]);
  }

  v3 = sub_1D966E548();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D966E508();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D966E5C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D9639E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9639EA8, 0, 0);
}

uint64_t sub_1D9639EA8()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(v0 + 64) = 0;
  sub_1D95EA68C(v1, v2);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1D9639FD4;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D9639FD4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D963A220;
  }

  else
  {
    v3 = sub_1D963A0E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D963A0E8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (v3 == 4)
  {
    sub_1D95EA55C(*(v0 + 128), *(v0 + 136));
    v6 = *(v0 + 8);

    return v6(v2, v1);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_1D9614CB8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v2, v1, v3);
    sub_1D95EA55C(v5, v4);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D963A220()
{
  sub_1D95EA55C(v0[16], v0[17]);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D963A2A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x6B6F54687475416FLL;
    v14 = 0xEA00000000006E65;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x80000001D96802C0;
    }

    if (a1)
    {
      v12 = 7365733;
      v11 = 0xE300000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001D96802F0;
    v5 = 0xE800000000000000;
    v6 = 0x7265727265666572;
    if (a1 != 7)
    {
      v6 = 0x6572616853707061;
      v5 = 0xEB000000004C5255;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x49746E756F636361;
    v8 = 0xE900000000000044;
    if (a1 != 4)
    {
      v7 = 1701869940;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE300000000000000;
        if (v9 != 7365733)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        if (v9 != 25705)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v15 = 0xEA00000000006E65;
      if (v9 != 0x6B6F54687475416FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = "proofOfDownloadToken";
    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x7265727265666572)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xEB000000004C5255;
        if (v9 != 0x6572616853707061)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    v16 = "isMarketplaceInstall";
LABEL_44:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xE900000000000044;
    if (v9 != 0x49746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
    if (v9 != 1701869940)
    {
LABEL_51:
      v17 = sub_1D966EFB8();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v17 = 1;
LABEL_52:

  return v17 & 1;
}

uint64_t sub_1D963A55C()
{
  sub_1D966E9D8();
}

uint64_t AppInstallRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D966E618();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppInstallRequest.adp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest() + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppInstallRequest()
{
  result = qword_1ECB22540;
  if (!qword_1ECB22540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppInstallRequest.oAuthToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallRequest.installVerificationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallRequest() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallRequest.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallRequest() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest() + 36);
  v4 = sub_1D966E6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppInstallRequest.referrer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppInstallRequest() + 44);

  return sub_1D95E5820(v3, a1);
}

uint64_t AppInstallRequest.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppInstallRequest() + 48);

  return sub_1D95E5820(v3, a1);
}

unint64_t sub_1D963A9C0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6B6F54687475416FLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 7365733;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x7265727265666572;
    if (a1 != 7)
    {
      v2 = 0x6572616853707061;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x49746E756F636361;
    if (a1 != 4)
    {
      v3 = 1701869940;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D963AAE4()
{
  v1 = *v0;
  sub_1D966F078();
  sub_1D963A55C();
  return sub_1D966F0C8();
}

uint64_t sub_1D963AB34()
{
  v1 = *v0;
  sub_1D966F078();
  sub_1D963A55C();
  return sub_1D966F0C8();
}

uint64_t sub_1D963AB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D963C5F8();
  *a2 = result;
  return result;
}

unint64_t sub_1D963ABA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D963A9C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D963ABF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D963C5F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D963AC24(uint64_t a1)
{
  v2 = sub_1D963C194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963AC60(uint64_t a1)
{
  v2 = sub_1D963C194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1D966E608();
  sub_1D963AE44(a10);
  v17 = type metadata accessor for AppInstallRequest();
  v18 = v17[5];
  v19 = sub_1D966E5B8();
  v30 = *(v19 - 8);
  (*(v30 + 32))(a9 + v18, a1, v19);
  v20 = (a9 + v17[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v17[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a9 + v17[8]);
  *v22 = a7;
  v22[1] = a8;
  v23 = v17[9];
  v24 = sub_1D966E6B8();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  *(a9 + v17[10]) = 0;
  v29 = *(v30 + 56);
  v29(a9 + v17[11], 1, 1, v19);
  v25 = a9 + v17[12];

  return (v29)(v25, 1, 1, v19);
}

uint64_t sub_1D963AE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D963AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_1D966E5B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppInstallRequest();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LinkMetadata();
  sub_1D95E5820(a1 + v18[10], v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D963C644(a1, type metadata accessor for LinkMetadata);
    sub_1D963AE44(v7);
    v19 = 1;
  }

  else
  {
    v46 = v14;
    (*(v9 + 32))(v12, v7, v8);
    sub_1D966E608();
    v20 = &v17[v13[5]];
    v44 = *(v9 + 16);
    v45 = v9 + 16;
    v44(v20, v12, v8);
    v21 = (a1 + v18[7]);
    v23 = *v21;
    v22 = v21[1];
    v24 = &v17[v13[6]];
    *v24 = v23;
    *(v24 + 1) = v22;
    v25 = (a1 + v18[8]);
    v26 = *v25;
    v27 = v25[1];
    v28 = &v17[v13[7]];
    *v28 = v26;
    *(v28 + 1) = v27;
    v29 = (a1 + v18[9]);
    v30 = v29[1];
    v47 = a1;
    v48 = a2;
    if (v30)
    {
      v31 = *v29;
      v42 = v30;
      v43 = v31;
    }

    else
    {
      v42 = 0xE900000000000073;
      v43 = 0x756F6D796E6F6E41;
    }

    v32 = *(v9 + 8);

    v32(v12, v8);
    v33 = &v17[v13[8]];
    v34 = v42;
    *v33 = v43;
    v33[1] = v34;
    v35 = v13[9];
    v36 = *MEMORY[0x1E696EFC8];
    v37 = sub_1D966E6B8();
    (*(*(v37 - 8) + 104))(&v17[v35], v36, v37);
    v17[v13[10]] = 1;
    v38 = v13[11];
    v39 = v47;
    v44(&v17[v38], (v47 + v18[5]), v8);
    (*(v9 + 56))(&v17[v38], 0, 1, v8);
    sub_1D95E5820(v39 + v18[11], &v17[v13[12]]);
    sub_1D963C644(v39, type metadata accessor for LinkMetadata);
    a2 = v48;
    sub_1D963C6A4(v17, v48);
    v19 = 0;
    v14 = v46;
  }

  return (*(v14 + 56))(a2, v19, 1, v13);
}

uint64_t sub_1D963B2CC()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F20E8(v2, sub_1D963B3C4, 0);
}

void sub_1D963B3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 requestEDPInstallation:v8 reply:v9];
  _Block_release(v9);
}

uint64_t AppInstallRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22518, &qword_1D967A540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963C194();
  sub_1D966F118();
  v35 = 0;
  sub_1D966E618();
  sub_1D963C1E8(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
  sub_1D966EF68();
  if (!v2)
  {
    v11 = type metadata accessor for AppInstallRequest();
    v12 = v11[5];
    v34 = 1;
    sub_1D966E5B8();
    sub_1D963C1E8(&qword_1ECB20860, MEMORY[0x1E6968FB0]);
    sub_1D966EF68();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v33 = 2;
    sub_1D966EEE8();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v32 = 3;
    sub_1D966EEE8();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    v31 = 4;
    sub_1D966EF38();
    v26 = v11[9];
    v30 = 5;
    sub_1D966E6B8();
    sub_1D963C1E8(&qword_1ECB22528, MEMORY[0x1E696EFD0]);
    sub_1D966EF68();
    v22 = *(v3 + v11[10]);
    v29 = 6;
    sub_1D966EF48();
    v23 = v11[11];
    v28 = 7;
    sub_1D966EF18();
    v24 = v11[12];
    v27 = 8;
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AppInstallRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v51 - v7;
  v8 = sub_1D966E6B8();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D966E5B8();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D966E618();
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22530, &qword_1D967A548);
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v51 - v20;
  v22 = type metadata accessor for AppInstallRequest();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963C194();
  v65 = v21;
  v27 = v66;
  sub_1D966F0F8();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v14;
  v52 = v22;
  v66 = v25;
  v75 = 0;
  sub_1D963C1E8(&qword_1ECB22218, MEMORY[0x1E69695A8]);
  v29 = v62;
  sub_1D966EE88();
  v30 = v15;
  v31 = *(v61 + 32);
  v32 = v66;
  v62 = v30;
  v31(v66, v29);
  v74 = 1;
  v33 = sub_1D963C1E8(&qword_1ECB20870, MEMORY[0x1E6968FB0]);
  v34 = v60;
  sub_1D966EE88();
  v51[1] = v33;
  v35 = v52;
  (*(v59 + 32))(&v32[v52[5]], v28, v34);
  v73 = 2;
  v36 = sub_1D966EE08();
  v37 = &v32[v35[6]];
  *v37 = v36;
  v37[1] = v38;
  v72 = 3;
  v39 = sub_1D966EE08();
  v40 = &v32[v35[7]];
  *v40 = v39;
  v40[1] = v41;
  v71 = 4;
  v42 = sub_1D966EE58();
  v43 = &v32[v35[8]];
  *v43 = v42;
  v43[1] = v44;
  v70 = 5;
  sub_1D963C1E8(&qword_1ECB22538, MEMORY[0x1E696EFD0]);
  v45 = v56;
  v46 = v58;
  sub_1D966EE88();
  (*(v57 + 32))(&v32[v35[9]], v45, v46);
  v69 = 6;
  v32[v35[10]] = sub_1D966EE68() & 1;
  v68 = 7;
  v47 = v55;
  sub_1D966EE38();
  sub_1D961B690(v47, &v66[v52[11]]);
  v67 = 8;
  v48 = v54;
  sub_1D966EE38();
  (*(v63 + 8))(v65, v64);
  v49 = v66;
  sub_1D961B690(v48, &v66[v52[12]]);
  sub_1D963C230(v49, v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D963C644(v49, type metadata accessor for AppInstallRequest);
}

unint64_t sub_1D963C194()
{
  result = qword_1ECB22520;
  if (!qword_1ECB22520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22520);
  }

  return result;
}

uint64_t sub_1D963C1E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D963C230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D963C2BC()
{
  sub_1D966E618();
  if (v0 <= 0x3F)
  {
    sub_1D966E5B8();
    if (v1 <= 0x3F)
    {
      sub_1D96127EC();
      if (v2 <= 0x3F)
      {
        sub_1D966E6B8();
        if (v3 <= 0x3F)
        {
          sub_1D95E9634();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppInstallRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D963C4F4()
{
  result = qword_1ECB22550;
  if (!qword_1ECB22550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22550);
  }

  return result;
}

unint64_t sub_1D963C54C()
{
  result = qword_1ECB22558;
  if (!qword_1ECB22558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22558);
  }

  return result;
}

unint64_t sub_1D963C5A4()
{
  result = qword_1ECB22560;
  if (!qword_1ECB22560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22560);
  }

  return result;
}

uint64_t sub_1D963C5F8()
{
  v0 = sub_1D966EDD8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D963C644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D963C6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeveloperApprovalSheetContext.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeveloperApprovalSheetContext.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletBody.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletTitle.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletBody.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletTitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletBody.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.allowButtonText.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.ignoreButtonText.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerName.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.supportURL.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeTitle.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeReason.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDTitle.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDReason.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

void __swiftcall DeveloperApprovalSheetContext.init(title:body:firstBulletTitle:firstBulletBody:secondBulletTitle:secondBulletBody:thirdBulletTitle:thirdBulletBody:allowButtonText:ignoreButtonText:developerID:developerName:supportURL:passcodeTitle:passcodeReason:touchIDTitle:touchIDReason:)(MarketplaceKit::DeveloperApprovalSheetContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String firstBulletTitle, Swift::String firstBulletBody, Swift::String secondBulletTitle, Swift::String secondBulletBody, Swift::String thirdBulletTitle, Swift::String thirdBulletBody, Swift::String allowButtonText, Swift::String ignoreButtonText, Swift::String developerID, Swift::String developerName, Swift::String_optional supportURL, Swift::String passcodeTitle, Swift::String passcodeReason, Swift::String touchIDTitle, Swift::String touchIDReason)
{
  retstr->field1D9689EC4 = title;
  retstr->field1D9689ED0 = body;
  retstr->field1D9689EDC = firstBulletTitle;
  retstr->field1D9689EE8 = firstBulletBody;
  retstr->field1D9689EF4 = secondBulletTitle;
  retstr->field1D9689F00 = secondBulletBody;
  retstr->field1D9689F0C = thirdBulletTitle;
  retstr->field1D9689F18 = thirdBulletBody;
  retstr->field1D9689F24 = allowButtonText;
  retstr->field1D9689F30 = ignoreButtonText;
  retstr->field1D9689F3C = developerID;
  retstr->field1D9689F48 = developerName;
  retstr->field1D9689F54 = supportURL;
  retstr->field1D9689F60 = passcodeTitle;
  retstr->field1D9689F6C = passcodeReason;
  retstr->field1D9689F78 = touchIDTitle;
  retstr->field1D9689F84 = touchIDReason;
}

uint64_t sub_1D963CA9C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x427473726966;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x426472696874;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C75000000000000;
      break;
    case 8:
      result = 0x747542776F6C6C61;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0x65706F6C65766564;
      break;
    case 12:
      result = 0x5574726F70707573;
      break;
    case 13:
    case 14:
      result = 0x65646F6373736170;
      break;
    case 15:
      result = 0x5444496863756F74;
      break;
    case 16:
      result = 0x5244496863756F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D963CC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D963E1F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D963CCBC(uint64_t a1)
{
  v2 = sub_1D963D238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963CCF8(uint64_t a1)
{
  v2 = sub_1D963D238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeveloperApprovalSheetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22568, &qword_1D967A750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v33[30] = v1[3];
  v33[31] = v10;
  v11 = v1[4];
  v33[28] = v1[5];
  v33[29] = v11;
  v12 = v1[6];
  v33[26] = v1[7];
  v33[27] = v12;
  v13 = v1[9];
  v33[24] = v1[8];
  v33[25] = v13;
  v14 = v1[11];
  v33[22] = v1[10];
  v33[23] = v14;
  v15 = v1[13];
  v33[20] = v1[12];
  v33[21] = v15;
  v16 = v1[15];
  v33[18] = v1[14];
  v33[19] = v16;
  v17 = v1[17];
  v33[16] = v1[16];
  v33[17] = v17;
  v18 = v1[19];
  v33[14] = v1[18];
  v33[15] = v18;
  v19 = v1[21];
  v33[12] = v1[20];
  v33[13] = v19;
  v20 = v1[23];
  v33[10] = v1[22];
  v33[11] = v20;
  v21 = v1[25];
  v33[8] = v1[24];
  v33[9] = v21;
  v22 = v1[27];
  v33[6] = v1[26];
  v33[7] = v22;
  v23 = v1[29];
  v33[4] = v1[28];
  v33[5] = v23;
  v24 = v1[31];
  v33[2] = v1[30];
  v33[3] = v24;
  v25 = v1[33];
  v33[1] = v1[32];
  v27 = a1[3];
  v26 = a1[4];
  v28 = a1;
  v30 = v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_1D963D238();
  sub_1D966F118();
  v35 = 0;
  v31 = v34;
  sub_1D966EF38();
  if (!v31)
  {
    v34 = v25;
    v35 = 1;
    sub_1D966EF38();
    v35 = 2;
    sub_1D966EF38();
    v35 = 3;
    sub_1D966EF38();
    v35 = 4;
    sub_1D966EF38();
    v35 = 5;
    sub_1D966EF38();
    v35 = 6;
    sub_1D966EF38();
    v35 = 7;
    sub_1D966EF38();
    v35 = 8;
    sub_1D966EF38();
    v35 = 9;
    sub_1D966EF38();
    v35 = 10;
    sub_1D966EF38();
    v35 = 11;
    sub_1D966EF38();
    v35 = 12;
    sub_1D966EEE8();
    v35 = 13;
    sub_1D966EF38();
    v35 = 14;
    sub_1D966EF38();
    v35 = 15;
    sub_1D966EF38();
    v35 = 16;
    sub_1D966EF38();
  }

  return (*(v4 + 8))(v7, v30);
}

unint64_t sub_1D963D238()
{
  result = qword_1ECB22570;
  if (!qword_1ECB22570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22570);
  }

  return result;
}

uint64_t DeveloperApprovalSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22578, &qword_1D967A758);
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v43 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963D238();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = a2;
  v76 = a1;
  v10 = v5;
  LOBYTE(v79[0]) = 0;
  v11 = sub_1D966EE58();
  v74 = v12;
  LOBYTE(v79[0]) = 1;
  v13 = sub_1D966EE58();
  v71 = v14;
  v73 = v13;
  LOBYTE(v79[0]) = 2;
  v70 = 0;
  v72 = sub_1D966EE58();
  v69 = v15;
  LOBYTE(v79[0]) = 3;
  v59 = sub_1D966EE58();
  v68 = v16;
  LOBYTE(v79[0]) = 4;
  v58 = sub_1D966EE58();
  v67 = v17;
  LOBYTE(v79[0]) = 5;
  v57 = sub_1D966EE58();
  v66 = v18;
  LOBYTE(v79[0]) = 6;
  v56 = sub_1D966EE58();
  v65 = v19;
  LOBYTE(v79[0]) = 7;
  v55 = sub_1D966EE58();
  v64 = v20;
  LOBYTE(v79[0]) = 8;
  v54 = sub_1D966EE58();
  v63 = v21;
  LOBYTE(v79[0]) = 9;
  v22 = sub_1D966EE58();
  v62 = v23;
  v24 = v22;
  LOBYTE(v79[0]) = 10;
  v25 = sub_1D966EE58();
  v61 = v26;
  v27 = v25;
  LOBYTE(v79[0]) = 11;
  v28 = sub_1D966EE58();
  v60 = v29;
  v30 = v28;
  LOBYTE(v79[0]) = 12;
  v52 = sub_1D966EE08();
  v53 = v31;
  LOBYTE(v79[0]) = 13;
  v50 = sub_1D966EE58();
  v51 = v32;
  v70 = 0;
  LOBYTE(v79[0]) = 14;
  v47 = sub_1D966EE58();
  v49 = v33;
  LOBYTE(v79[0]) = 15;
  v46 = sub_1D966EE58();
  v48 = v34;
  v80 = 16;
  v35 = sub_1D966EE58();
  v45 = v36;
  v37 = v35;
  (*(v10 + 8))(v8, v77);
  v38 = v73;
  v78[0] = v11;
  v78[1] = v74;
  v39 = v71;
  v78[2] = v73;
  v78[3] = v71;
  v78[4] = v72;
  v78[5] = v69;
  v78[6] = v59;
  v78[7] = v68;
  v78[8] = v58;
  v78[9] = v67;
  v78[10] = v57;
  v78[11] = v66;
  v78[12] = v56;
  v78[13] = v65;
  v78[14] = v55;
  v78[15] = v64;
  v78[16] = v54;
  v78[17] = v63;
  v43 = v27;
  v44 = v24;
  v78[18] = v24;
  v78[19] = v62;
  v78[20] = v27;
  v78[21] = v61;
  v78[22] = v30;
  v78[23] = v60;
  v40 = v53;
  v78[24] = v52;
  v78[25] = v53;
  v41 = v51;
  v78[26] = v50;
  v78[27] = v51;
  v78[28] = v47;
  v78[29] = v49;
  v78[30] = v46;
  v78[31] = v48;
  v78[32] = v37;
  v78[33] = v45;
  memcpy(v75, v78, 0x110uLL);
  sub_1D963DE24(v78, v79);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v79[0] = v11;
  v79[1] = v74;
  v79[2] = v38;
  v79[3] = v39;
  v79[4] = v72;
  v79[5] = v69;
  v79[6] = v59;
  v79[7] = v68;
  v79[8] = v58;
  v79[9] = v67;
  v79[10] = v57;
  v79[11] = v66;
  v79[12] = v56;
  v79[13] = v65;
  v79[14] = v55;
  v79[15] = v64;
  v79[16] = v54;
  v79[17] = v63;
  v79[18] = v44;
  v79[19] = v62;
  v79[20] = v43;
  v79[21] = v61;
  v79[22] = v30;
  v79[23] = v60;
  v79[24] = v52;
  v79[25] = v40;
  v79[26] = v50;
  v79[27] = v41;
  v79[28] = v47;
  v79[29] = v49;
  v79[30] = v46;
  v79[31] = v48;
  v79[32] = v37;
  v79[33] = v45;
  return sub_1D963DE5C(v79);
}

uint64_t sub_1D963DEC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1D963DF0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D963E0F4()
{
  result = qword_1ECB22580;
  if (!qword_1ECB22580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22580);
  }

  return result;
}

unint64_t sub_1D963E14C()
{
  result = qword_1ECB22588;
  if (!qword_1ECB22588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22588);
  }

  return result;
}

unint64_t sub_1D963E1A4()
{
  result = qword_1ECB22590;
  if (!qword_1ECB22590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22590);
  }

  return result;
}

uint64_t sub_1D963E1F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681160 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75427473726966 && a2 == 0xEF79646F4274656CLL || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9681180 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75426472696874 && a2 == 0xEF79646F4274656CLL || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747542776F6C6C61 && a2 == 0xEF747865546E6F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_1D966EFB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_1D966EFB8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52 || (sub_1D966EFB8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_1D966EFB8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552 || (sub_1D966EFB8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_1D966EFB8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165)
  {

    return 16;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1D963E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock)
{
  v6[2] = _Block_copy(aBlock);
  v12 = a5;
  v13 = sub_1D966E5E8();
  v15 = v14;

  v6[3] = v13;
  v6[4] = v15;
  v16 = swift_task_alloc();
  v6[5] = v16;
  *v16 = v6;
  v16[1] = sub_1D963EA2C;

  return sub_1D9639E80(a1, a2, a3, a4, v13, v15);
}

uint64_t sub_1D963EA2C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  sub_1D95EA55C(v10, v9);
  if (v4)
  {
    if (v11)
    {
      v13 = *(v7 + 16);
      v14 = sub_1D966E588();

      (v13)[2](v13, 0, v14);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v11)
  {
    v15 = *(v7 + 16);
    v16 = sub_1D966E5D8();
    sub_1D95EA55C(a1, a2);
    (v15)[2](v15, v16, 0);
    _Block_release(v15);
  }

  else
  {
    sub_1D95EA55C(a1, a2);
  }

  v17 = *(v12 + 8);

  return v17();
}

FairPlayPassbookProvisioningObjC __swiftcall FairPlayPassbookProvisioningObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FairPlayPassbookProvisioningObjC()
{
  result = qword_1ECB22598;
  if (!qword_1ECB22598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB22598);
  }

  return result;
}

uint64_t sub_1D963ED2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D95EB350;

  return sub_1D963E91C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D963EE08(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D95EB350;

  return v7();
}

uint64_t sub_1D963EEF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D95EB350;

  return sub_1D963EE08(v2, v3, v5);
}

uint64_t sub_1D963EFB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D95EAF50;

  return v8();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D963F0D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D95EAF50;

  return sub_1D963EFB0(a1, v4, v5, v7);
}

uint64_t sub_1D963F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D963F460(a3, v25 - v11);
  v13 = sub_1D966EAE8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D963F4D0(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D966EAD8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1D966EA78();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1D966E9C8() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1D963F4D0(a3);

    return v23;
  }

LABEL_8:
  sub_1D963F4D0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D963F460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D963F4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D963F538(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D963F630;

  return v7(a1);
}

uint64_t sub_1D963F630()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D963F728(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D95EB350;

  return sub_1D963F538(a1, v5);
}

uint64_t sub_1D963F7E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D95EAF50;

  return sub_1D963F538(a1, v5);
}

uint64_t UpdateMetadata.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpdateMetadata.bundleVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpdateMetadata.itemID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UpdateMetadata.shortVersionString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)(MarketplaceKit::UpdateMetadata *__return_ptr retstr, Swift::String bundleID, Swift::String bundleVersion, Swift::String itemID, Swift::String shortVersionString)
{
  retstr->field1D968A07C = bundleID;
  retstr->field1D968A088 = bundleVersion;
  retstr->field1D968A094 = itemID;
  retstr->field1D968A0A0 = shortVersionString;
}

unint64_t sub_1D963F96C()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x44496D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6556656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D963F9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D964023C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D963FA1C(uint64_t a1)
{
  v2 = sub_1D963FC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963FA58(uint64_t a1)
{
  v2 = sub_1D963FC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225A0, &qword_1D967AA20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963FC88();
  sub_1D966F118();
  v20 = 0;
  v14 = v16[7];
  sub_1D966EF38();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1D966EF38();
  v18 = 2;
  sub_1D966EF38();
  v17 = 3;
  sub_1D966EF38();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D963FC88()
{
  result = qword_1ECB225A8;
  if (!qword_1ECB225A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225A8);
  }

  return result;
}

uint64_t UpdateMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225B0, &qword_1D967AA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963FC88();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1D966EE58();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1D966EE58();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1D966EE58();
  v27 = v15;
  v35 = 3;
  v16 = sub_1D966EE58();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1D963FFD0(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1D9640008(v34);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D964007C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D96400C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9640138()
{
  result = qword_1ECB225B8;
  if (!qword_1ECB225B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225B8);
  }

  return result;
}

unint64_t sub_1D9640190()
{
  result = qword_1ECB225C0;
  if (!qword_1ECB225C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225C0);
  }

  return result;
}

unint64_t sub_1D96401E8()
{
  result = qword_1ECB225C8;
  if (!qword_1ECB225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225C8);
  }

  return result;
}

uint64_t sub_1D964023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t MarketplaceKitError.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - v5;
  v7 = type metadata accessor for MarketplaceKitError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D96409A0(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E55;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v17 = *v10;
      v18 = v10[1];
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000003DLL, 0x80000001D9681670);
      MEMORY[0x1DA7338E0](v17, v18);

      MEMORY[0x1DA7338E0](0xD000000000000021, 0x80000001D96816B0);
      goto LABEL_8;
    case 2:
      (*(v3 + 32))(v6, v10, v2);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000002ALL, 0x80000001D9681550);
      v19 = objc_opt_self();
      v20 = sub_1D966E468();
      v21 = [v19 stringFromMeasurement:v20 countStyle:0];

      v22 = sub_1D966E9A8();
      v24 = v23;

      MEMORY[0x1DA7338E0](v22, v24);

      MEMORY[0x1DA7338E0](0xD00000000000001ELL, 0x80000001D9681580);
      v25 = v27;
      (*(v3 + 8))(v6, v2);
      result = v25;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0xD00000000000004CLL;
      break;
    case 7:
      result = 0xD00000000000004ALL;
      break;
    case 8:
    case 13:
      result = 0xD00000000000003ELL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD00000000000002ALL;
      break;
    case 12:
      result = 0xD000000000000043;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 20:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD000000000000028;
      break;
    default:
      v13 = *v10;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000004ALL, 0x80000001D9681720);
      v26[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225D0, &unk_1D967AC08);
      sub_1D9640A04();
      v14 = sub_1D966E968();
      v16 = v15;

      MEMORY[0x1DA7338E0](v14, v16);

LABEL_8:
      result = v27;
      break;
  }

  return result;
}

uint64_t type metadata accessor for MarketplaceKitError()
{
  result = qword_1EDCF69D0;
  if (!qword_1EDCF69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96409A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9640A04()
{
  result = qword_1ECB225D8;
  if (!qword_1ECB225D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB225D0, &unk_1D967AC08);
    sub_1D95FF23C(&qword_1ECB225E0, &qword_1ECB21720, &qword_1D9673F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225D8);
  }

  return result;
}

unint64_t sub_1D9640AB4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 20:
      v3 = 13;
      goto LABEL_15;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E49746F4E707061;
      break;
    case 10:
      result = 0x4D64696C61766E69;
      break;
    case 11:
      result = 0x456B726F7774656ELL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD00000000000002ELL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x6B6F54687475616FLL;
      break;
    case 18:
      result = 0x4C64696C61766E69;
      break;
    case 19:
      result = 0x5564696C61766E69;
      break;
    case 21:
      v3 = 9;
LABEL_15:
      result = v3 | 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9640D7C(uint64_t a1)
{
  v2 = sub_1D9643100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640DB8(uint64_t a1)
{
  v2 = sub_1D9643100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640DF4(uint64_t a1)
{
  v2 = sub_1D96434F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640E30(uint64_t a1)
{
  v2 = sub_1D96434F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640E6C(uint64_t a1)
{
  v2 = sub_1D96432F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640EA8(uint64_t a1)
{
  v2 = sub_1D96432F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9647010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9640F20(uint64_t a1)
{
  v2 = sub_1D9643058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640F5C(uint64_t a1)
{
  v2 = sub_1D9643058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640F98(uint64_t a1)
{
  v2 = sub_1D964334C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640FD4(uint64_t a1)
{
  v2 = sub_1D964334C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641010(uint64_t a1)
{
  v2 = sub_1D9643640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964104C(uint64_t a1)
{
  v2 = sub_1D9643640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641088(uint64_t a1)
{
  v2 = sub_1D9643694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96410C4(uint64_t a1)
{
  v2 = sub_1D9643694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641100(uint64_t a1)
{
  v2 = sub_1D9643598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964113C(uint64_t a1)
{
  v2 = sub_1D9643598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641178(uint64_t a1)
{
  v2 = sub_1D96433A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96411B4(uint64_t a1)
{
  v2 = sub_1D96433A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96411F0(uint64_t a1)
{
  v2 = sub_1D96433F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964122C(uint64_t a1)
{
  v2 = sub_1D96433F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641268(uint64_t a1)
{
  v2 = sub_1D96431FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96412A4(uint64_t a1)
{
  v2 = sub_1D96431FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96412E0(uint64_t a1)
{
  v2 = sub_1D964349C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964131C(uint64_t a1)
{
  v2 = sub_1D964349C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641358(uint64_t a1)
{
  v2 = sub_1D96431A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641394(uint64_t a1)
{
  v2 = sub_1D96431A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96413D0(uint64_t a1)
{
  v2 = sub_1D96436E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964140C(uint64_t a1)
{
  v2 = sub_1D96436E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641448(uint64_t a1)
{
  v2 = sub_1D96432A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641484(uint64_t a1)
{
  v2 = sub_1D96432A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96414C0(uint64_t a1)
{
  v2 = sub_1D96430AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96414FC(uint64_t a1)
{
  v2 = sub_1D96430AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641538(uint64_t a1)
{
  v2 = sub_1D9643790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641574(uint64_t a1)
{
  v2 = sub_1D9643790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96415B0(uint64_t a1)
{
  v2 = sub_1D9643154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96415EC(uint64_t a1)
{
  v2 = sub_1D9643154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641628(uint64_t a1)
{
  v2 = sub_1D9643448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641664(uint64_t a1)
{
  v2 = sub_1D9643448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96416A0(uint64_t a1)
{
  v2 = sub_1D9643544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96416DC(uint64_t a1)
{
  v2 = sub_1D9643544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641718(uint64_t a1)
{
  v2 = sub_1D9643250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641754(uint64_t a1)
{
  v2 = sub_1D9643250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641790(uint64_t a1)
{
  v2 = sub_1D96435EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96417CC(uint64_t a1)
{
  v2 = sub_1D96435EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641808(uint64_t a1)
{
  v2 = sub_1D96437E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641844(uint64_t a1)
{
  v2 = sub_1D96437E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641880(uint64_t a1)
{
  v2 = sub_1D964373C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96418BC(uint64_t a1)
{
  v2 = sub_1D964373C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MarketplaceKitError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225E8, &qword_1D967AC18);
  v176 = *(v2 - 8);
  v177 = v2;
  v3 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v175 = &v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225F0, &qword_1D967AC20);
  v173 = *(v5 - 8);
  v174 = v5;
  v6 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v172 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225F8, &qword_1D967AC28);
  v170 = *(v8 - 8);
  v171 = v8;
  v9 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22600, &qword_1D967AC30);
  v167 = *(v11 - 8);
  v168 = v11;
  v12 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v166 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22608, &qword_1D967AC38);
  v164 = *(v14 - 8);
  v165 = v14;
  v15 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v108 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22610, &qword_1D967AC40);
  v161 = *(v162 - 8);
  v17 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v108 - v18;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22618, &qword_1D967AC48);
  v158 = *(v159 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v108 - v20;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22620, &qword_1D967AC50);
  v155 = *(v156 - 8);
  v21 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v108 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22628, &qword_1D967AC58);
  v152 = *(v153 - 8);
  v23 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v108 - v24;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22630, &qword_1D967AC60);
  v149 = *(v150 - 8);
  v25 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v108 - v26;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22638, &qword_1D967AC68);
  v146 = *(v147 - 8);
  v27 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v108 - v28;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22640, &qword_1D967AC70);
  v143 = *(v144 - 8);
  v29 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v108 - v30;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22648, &qword_1D967AC78);
  v140 = *(v141 - 8);
  v31 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v108 - v32;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22650, &qword_1D967AC80);
  v137 = *(v138 - 8);
  v33 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v108 - v34;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22658, &qword_1D967AC88);
  v129 = *(v133 - 8);
  v35 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v128 = &v108 - v36;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22660, &qword_1D967AC90);
  v134 = *(v136 - 8);
  v37 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v108 - v38;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
  v130 = *(v132 - 8);
  v39 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v108 - v40;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22668, &qword_1D967AC98);
  v125 = *(v126 - 8);
  v41 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v108 - v42;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22670, &qword_1D967ACA0);
  v122 = *(v123 - 8);
  v43 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v108 - v44;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22678, &qword_1D967ACA8);
  v119 = *(v120 - 8);
  v45 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v108 - v46;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22680, &qword_1D967ACB0);
  v117 = *(v118 - 8);
  v47 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v108 - v48;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22688, &qword_1D967ACB8);
  v111 = *(v113 - 8);
  v49 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v51 = &v108 - v50;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22690, &qword_1D967ACC0);
  v112 = *(v114 - 8);
  v52 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v108 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22698, &qword_1D967ACC8);
  v109 = *(v54 - 8);
  v55 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v108 - v56;
  v58 = type metadata accessor for MarketplaceKitError();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = (&v108 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB226A0, &qword_1D967ACD0);
  v63 = *(v62 - 8);
  v179 = v62;
  v180 = v63;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v108 - v65;
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9643058();
  v178 = v66;
  sub_1D966F118();
  sub_1D96409A0(v181, v61);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = *v61;
      v94 = v61[1];
      LOBYTE(v182) = 3;
      sub_1D96436E8();
      v95 = v115;
      v97 = v178;
      v96 = v179;
      sub_1D966EED8();
      v98 = v118;
      sub_1D966EF38();

      (*(v117 + 8))(v95, v98);
      return (*(v180 + 8))(v97, v96);
    case 2u:
      v84 = v130;
      v85 = v127;
      v86 = v132;
      (*(v130 + 32))(v127, v61, v132);
      LOBYTE(v182) = 7;
      sub_1D9643598();
      v87 = v131;
      v89 = v178;
      v88 = v179;
      sub_1D966EED8();
      sub_1D95FF23C(&qword_1ECB22730, &qword_1ECB21708, &qword_1D967AC00);
      v90 = v136;
      sub_1D966EF68();
      (*(v134 + 8))(v87, v90);
      (*(v84 + 8))(v85, v86);
      return (*(v180 + 8))(v89, v88);
    case 3u:
      LOBYTE(v182) = 0;
      sub_1D96437E4();
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      (*(v109 + 8))(v57, v54);
      goto LABEL_29;
    case 4u:
      LOBYTE(v182) = 2;
      sub_1D964373C();
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v111 + 8);
      v78 = v51;
      v79 = &v145;
      goto LABEL_24;
    case 5u:
      LOBYTE(v182) = 4;
      sub_1D9643694();
      v103 = v116;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v119 + 8);
      v78 = v103;
      v79 = &v152;
      goto LABEL_24;
    case 6u:
      LOBYTE(v182) = 5;
      sub_1D9643640();
      v105 = v121;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v122 + 8);
      v78 = v105;
      v79 = &v155;
      goto LABEL_24;
    case 7u:
      LOBYTE(v182) = 6;
      sub_1D96435EC();
      v92 = v124;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v125 + 8);
      v78 = v92;
      v79 = &v158;
      goto LABEL_24;
    case 8u:
      LOBYTE(v182) = 8;
      sub_1D9643544();
      v107 = v128;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v129 + 8);
      v78 = v107;
      v79 = &v165;
      goto LABEL_24;
    case 9u:
      LOBYTE(v182) = 9;
      sub_1D96434F0();
      v83 = v135;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v137 + 8);
      v78 = v83;
      v79 = &v170;
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v182) = 10;
      sub_1D964349C();
      v106 = v139;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v140 + 8);
      v78 = v106;
      v79 = &v173;
      goto LABEL_24;
    case 0xBu:
      LOBYTE(v182) = 11;
      sub_1D9643448();
      v81 = v142;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v143 + 8);
      v78 = v81;
      v79 = &v176;
      goto LABEL_24;
    case 0xCu:
      LOBYTE(v182) = 12;
      sub_1D96433F4();
      v82 = v145;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v146 + 8);
      v78 = v82;
      v79 = &v179;
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v182) = 13;
      sub_1D96433A0();
      v104 = v148;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v149 + 8);
      v78 = v104;
      v79 = &v181;
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v182) = 14;
      sub_1D964334C();
      v80 = v151;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v152 + 8);
      v78 = v80;
      v79 = &v182;
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v182) = 15;
      sub_1D96432F8();
      v91 = v154;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v155 + 8);
      v78 = v91;
      v79 = &v183;
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v182) = 16;
      sub_1D96432A4();
      v74 = v157;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v77 = *(v158 + 8);
      v78 = v74;
      v79 = &v184;
LABEL_24:
      v101 = *(v79 - 32);
      goto LABEL_28;
    case 0x11u:
      LOBYTE(v182) = 17;
      sub_1D9643250();
      v99 = v160;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      (*(v161 + 8))(v99, v162);
      goto LABEL_29;
    case 0x12u:
      LOBYTE(v182) = 18;
      sub_1D96431FC();
      v100 = v163;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v102 = v164;
      v101 = v165;
      goto LABEL_27;
    case 0x13u:
      LOBYTE(v182) = 19;
      sub_1D96431A8();
      v100 = v166;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v102 = v167;
      v101 = v168;
      goto LABEL_27;
    case 0x14u:
      LOBYTE(v182) = 20;
      sub_1D9643154();
      v100 = v169;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v102 = v170;
      v101 = v171;
      goto LABEL_27;
    case 0x15u:
      LOBYTE(v182) = 21;
      sub_1D9643100();
      v100 = v172;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v102 = v173;
      v101 = v174;
      goto LABEL_27;
    case 0x16u:
      LOBYTE(v182) = 22;
      sub_1D96430AC();
      v100 = v175;
      v76 = v178;
      v75 = v179;
      sub_1D966EED8();
      v102 = v176;
      v101 = v177;
LABEL_27:
      v77 = *(v102 + 8);
      v78 = v100;
LABEL_28:
      v77(v78, v101);
LABEL_29:
      result = (*(v180 + 8))(v76, v75);
      break;
    default:
      v68 = *v61;
      LOBYTE(v182) = 1;
      sub_1D9643790();
      v69 = v110;
      v70 = v178;
      v71 = v179;
      sub_1D966EED8();
      v182 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200);
      v72 = v114;
      sub_1D966EF68();
      (*(v112 + 8))(v69, v72);
      (*(v180 + 8))(v70, v71);

      break;
  }

  return result;
}

unint64_t sub_1D9643058()
{
  result = qword_1ECB226A8;
  if (!qword_1ECB226A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226A8);
  }

  return result;
}

unint64_t sub_1D96430AC()
{
  result = qword_1ECB226B0;
  if (!qword_1ECB226B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226B0);
  }

  return result;
}

unint64_t sub_1D9643100()
{
  result = qword_1ECB226B8;
  if (!qword_1ECB226B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226B8);
  }

  return result;
}

unint64_t sub_1D9643154()
{
  result = qword_1ECB226C0;
  if (!qword_1ECB226C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226C0);
  }

  return result;
}

unint64_t sub_1D96431A8()
{
  result = qword_1ECB226C8;
  if (!qword_1ECB226C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226C8);
  }

  return result;
}

unint64_t sub_1D96431FC()
{
  result = qword_1ECB226D0;
  if (!qword_1ECB226D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226D0);
  }

  return result;
}

unint64_t sub_1D9643250()
{
  result = qword_1ECB226D8;
  if (!qword_1ECB226D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226D8);
  }

  return result;
}

unint64_t sub_1D96432A4()
{
  result = qword_1ECB226E0;
  if (!qword_1ECB226E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226E0);
  }

  return result;
}

unint64_t sub_1D96432F8()
{
  result = qword_1ECB226E8;
  if (!qword_1ECB226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226E8);
  }

  return result;
}

unint64_t sub_1D964334C()
{
  result = qword_1ECB226F0;
  if (!qword_1ECB226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226F0);
  }

  return result;
}

unint64_t sub_1D96433A0()
{
  result = qword_1ECB226F8;
  if (!qword_1ECB226F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226F8);
  }

  return result;
}

unint64_t sub_1D96433F4()
{
  result = qword_1ECB22700;
  if (!qword_1ECB22700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22700);
  }

  return result;
}

unint64_t sub_1D9643448()
{
  result = qword_1ECB22708;
  if (!qword_1ECB22708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22708);
  }

  return result;
}

unint64_t sub_1D964349C()
{
  result = qword_1ECB22710;
  if (!qword_1ECB22710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22710);
  }

  return result;
}

unint64_t sub_1D96434F0()
{
  result = qword_1ECB22718;
  if (!qword_1ECB22718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22718);
  }

  return result;
}

unint64_t sub_1D9643544()
{
  result = qword_1ECB22720;
  if (!qword_1ECB22720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22720);
  }

  return result;
}

unint64_t sub_1D9643598()
{
  result = qword_1ECB22728;
  if (!qword_1ECB22728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22728);
  }

  return result;
}

unint64_t sub_1D96435EC()
{
  result = qword_1ECB22738;
  if (!qword_1ECB22738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22738);
  }

  return result;
}

unint64_t sub_1D9643640()
{
  result = qword_1ECB22740;
  if (!qword_1ECB22740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22740);
  }

  return result;
}

unint64_t sub_1D9643694()
{
  result = qword_1ECB22748;
  if (!qword_1ECB22748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22748);
  }

  return result;
}

unint64_t sub_1D96436E8()
{
  result = qword_1ECB22750;
  if (!qword_1ECB22750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22750);
  }

  return result;
}

unint64_t sub_1D964373C()
{
  result = qword_1ECB22758;
  if (!qword_1ECB22758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22758);
  }

  return result;
}

unint64_t sub_1D9643790()
{
  result = qword_1ECB22760;
  if (!qword_1ECB22760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22760);
  }

  return result;
}

unint64_t sub_1D96437E4()
{
  result = qword_1ECB22768;
  if (!qword_1ECB22768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22768);
  }

  return result;
}

uint64_t MarketplaceKitError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22770, &qword_1D967ACD8);
  v213 = *(v217 - 8);
  v3 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v142 - v4;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22778, &qword_1D967ACE0);
  v189 = *(v190 - 8);
  v5 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v211 = &v142 - v6;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22780, &qword_1D967ACE8);
  v187 = *(v188 - 8);
  v7 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v210 = &v142 - v8;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22788, &qword_1D967ACF0);
  v185 = *(v186 - 8);
  v9 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v209 = &v142 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22790, &qword_1D967ACF8);
  v183 = *(v184 - 8);
  v11 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v208 = &v142 - v12;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22798, &qword_1D967AD00);
  v181 = *(v182 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v207 = &v142 - v14;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227A0, &qword_1D967AD08);
  v179 = *(v180 - 8);
  v15 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v206 = &v142 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227A8, &qword_1D967AD10);
  v177 = *(v178 - 8);
  v17 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v205 = &v142 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227B0, &qword_1D967AD18);
  v175 = *(v176 - 8);
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v204 = &v142 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227B8, &qword_1D967AD20);
  v173 = *(v174 - 8);
  v21 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v203 = &v142 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227C0, &qword_1D967AD28);
  v171 = *(v172 - 8);
  v23 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v202 = &v142 - v24;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227C8, &qword_1D967AD30);
  v169 = *(v170 - 8);
  v25 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v201 = &v142 - v26;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227D0, &qword_1D967AD38);
  v167 = *(v168 - 8);
  v27 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v200 = &v142 - v28;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227D8, &qword_1D967AD40);
  v165 = *(v166 - 8);
  v29 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v199 = &v142 - v30;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227E0, &qword_1D967AD48);
  v161 = *(v162 - 8);
  v31 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v198 = &v142 - v32;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227E8, &qword_1D967AD50);
  v163 = *(v164 - 8);
  v33 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v216 = &v142 - v34;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227F0, &qword_1D967AD58);
  v159 = *(v160 - 8);
  v35 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v197 = &v142 - v36;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227F8, &qword_1D967AD60);
  v157 = *(v158 - 8);
  v37 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v196 = &v142 - v38;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22800, &qword_1D967AD68);
  v154 = *(v156 - 8);
  v39 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v195 = &v142 - v40;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22808, &qword_1D967AD70);
  v153 = *(v155 - 8);
  v41 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v194 = &v142 - v42;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22810, &qword_1D967AD78);
  v149 = *(v150 - 8);
  v43 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v192 = &v142 - v44;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22818, &qword_1D967AD80);
  v151 = *(v152 - 8);
  v45 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v193 = &v142 - v46;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22820, &qword_1D967AD88);
  v147 = *(v148 - 8);
  v47 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v191 = &v142 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22828, &unk_1D967AD90);
  v214 = *(v49 - 8);
  v215 = v49;
  v50 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v142 - v51;
  v53 = type metadata accessor for MarketplaceKitError();
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v142 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = (&v142 - v59);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v142 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v142 - v64;
  v66 = a1[3];
  v67 = a1[4];
  v219 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v66);
  sub_1D9643058();
  v68 = v220;
  sub_1D966F0F8();
  if (v68)
  {
    return __swift_destroy_boxed_opaque_existential_1(v219);
  }

  v142 = v60;
  v143 = v63;
  v144 = v57;
  v69 = v216;
  v146 = 0;
  v70 = v217;
  v220 = v53;
  v145 = v65;
  v71 = v218;
  v72 = v215;
  v73 = sub_1D966EEB8();
  v74 = (2 * *(v73 + 16)) | 1;
  v221 = v73;
  v222 = v73 + 32;
  v223 = 0;
  v224 = v74;
  v75 = sub_1D960208C();
  if (v223 != v224 >> 1)
  {
LABEL_6:
    v80 = sub_1D966ED58();
    swift_allocError();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v82 = v220;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x1E69E6AF8], v80);
    swift_willThrow();
LABEL_7:
    (*(v214 + 8))(v52, v72);
LABEL_8:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v219);
  }

  v76 = v213;
  switch(v75)
  {
    case 0:
      LOBYTE(v225) = 0;
      sub_1D96437E4();
      v77 = v191;
      v78 = v146;
      sub_1D966EDE8();
      if (v78)
      {
        goto LABEL_7;
      }

      (*(v147 + 8))(v77, v148);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 1:
      LOBYTE(v225) = 1;
      sub_1D9643790();
      v109 = v193;
      v110 = v146;
      sub_1D966EDE8();
      if (v110)
      {
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6670);
      v111 = v152;
      sub_1D966EE88();
      v112 = v214;
      (*(v151 + 8))(v109, v111);
      (*(v112 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v141 = v143;
      *v143 = v225;
      goto LABEL_58;
    case 2:
      LOBYTE(v225) = 2;
      sub_1D964373C();
      v97 = v192;
      v98 = v146;
      sub_1D966EDE8();
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v149 + 8))(v97, v150);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 3:
      LOBYTE(v225) = 3;
      sub_1D96436E8();
      v101 = v194;
      v102 = v146;
      sub_1D966EDE8();
      if (v102)
      {
        goto LABEL_7;
      }

      v103 = v155;
      v136 = sub_1D966EE58();
      v138 = v137;
      (*(v153 + 8))(v101, v103);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v139 = v142;
      *v142 = v136;
      v139[1] = v138;
      swift_storeEnumTagMultiPayload();
      v140 = v139;
      goto LABEL_59;
    case 4:
      LOBYTE(v225) = 4;
      sub_1D9643694();
      v91 = v195;
      v92 = v146;
      sub_1D966EDE8();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v91, v156);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 5:
      LOBYTE(v225) = 5;
      sub_1D9643640();
      v117 = v196;
      v118 = v146;
      sub_1D966EDE8();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v117, v158);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 6:
      LOBYTE(v225) = 6;
      sub_1D96435EC();
      v123 = v197;
      v124 = v146;
      sub_1D966EDE8();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v123, v160);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 7:
      LOBYTE(v225) = 7;
      sub_1D9643598();
      v104 = v69;
      v105 = v146;
      sub_1D966EDE8();
      if (v105)
      {
        goto LABEL_7;
      }

      v146 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
      sub_1D95FF23C(&qword_1ECB22830, &qword_1ECB21708, &qword_1D967AC00);
      v106 = v164;
      v107 = v146;
      sub_1D966EE88();
      v108 = v214;
      if (v107)
      {
        (*(v163 + 8))(v104, v106);
        (*(v108 + 8))(v52, v72);
        goto LABEL_8;
      }

      (*(v163 + 8))(v104, v106);
      (*(v108 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v141 = v144;
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v140 = v141;
LABEL_59:
      v79 = v145;
      sub_1D95EA8F8(v140, v145);
LABEL_56:
      v135 = v219;
      sub_1D95EA8F8(v79, v71);
      result = __swift_destroy_boxed_opaque_existential_1(v135);
      break;
    case 8:
      LOBYTE(v225) = 8;
      sub_1D9643544();
      v129 = v198;
      v130 = v146;
      sub_1D966EDE8();
      if (v130)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v129, v162);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 9:
      LOBYTE(v225) = 9;
      sub_1D96434F0();
      v95 = v199;
      v96 = v146;
      sub_1D966EDE8();
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v165 + 8))(v95, v166);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 10:
      LOBYTE(v225) = 10;
      sub_1D964349C();
      v127 = v200;
      v128 = v146;
      sub_1D966EDE8();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v167 + 8))(v127, v168);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 11:
      LOBYTE(v225) = 11;
      sub_1D9643448();
      v89 = v201;
      v90 = v146;
      sub_1D966EDE8();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v169 + 8))(v89, v170);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 12:
      LOBYTE(v225) = 12;
      sub_1D96433F4();
      v93 = v202;
      v94 = v146;
      sub_1D966EDE8();
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v171 + 8))(v93, v172);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 13:
      LOBYTE(v225) = 13;
      sub_1D96433A0();
      v121 = v203;
      v122 = v146;
      sub_1D966EDE8();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v173 + 8))(v121, v174);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 14:
      LOBYTE(v225) = 14;
      sub_1D964334C();
      v87 = v204;
      v88 = v146;
      sub_1D966EDE8();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v175 + 8))(v87, v176);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 15:
      LOBYTE(v225) = 15;
      sub_1D96432F8();
      v99 = v205;
      v100 = v146;
      sub_1D966EDE8();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v177 + 8))(v99, v178);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 16:
      LOBYTE(v225) = 16;
      sub_1D96432A4();
      v85 = v206;
      v86 = v146;
      sub_1D966EDE8();
      if (v86)
      {
        goto LABEL_7;
      }

      (*(v179 + 8))(v85, v180);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 17:
      LOBYTE(v225) = 17;
      sub_1D9643250();
      v113 = v207;
      v114 = v146;
      sub_1D966EDE8();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v113, v182);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 18:
      LOBYTE(v225) = 18;
      sub_1D96431FC();
      v125 = v208;
      v126 = v146;
      sub_1D966EDE8();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v183 + 8))(v125, v184);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 19:
      LOBYTE(v225) = 19;
      sub_1D96431A8();
      v133 = v209;
      v134 = v146;
      sub_1D966EDE8();
      if (v134)
      {
        goto LABEL_7;
      }

      (*(v185 + 8))(v133, v186);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 20:
      LOBYTE(v225) = 20;
      sub_1D9643154();
      v115 = v210;
      v116 = v146;
      sub_1D966EDE8();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v187 + 8))(v115, v188);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 21:
      LOBYTE(v225) = 21;
      sub_1D9643100();
      v119 = v211;
      v120 = v146;
      sub_1D966EDE8();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v189 + 8))(v119, v190);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
      goto LABEL_55;
    case 22:
      LOBYTE(v225) = 22;
      sub_1D96430AC();
      v131 = v212;
      v132 = v146;
      sub_1D966EDE8();
      if (v132)
      {
        goto LABEL_7;
      }

      (*(v76 + 8))(v131, v70);
      (*(v214 + 8))(v52, v72);
      swift_unknownObjectRelease();
      v79 = v145;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      goto LABEL_56;
    default:
      goto LABEL_6;
  }

  return result;
}

void sub_1D9645A00()
{
  sub_1D9645A7C();
  if (v0 <= 0x3F)
  {
    sub_1D9645ACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D9645A7C()
{
  if (!qword_1EDCF6930[0])
  {
    v0 = sub_1D966EA68();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCF6930);
    }
  }
}

void sub_1D9645ACC()
{
  if (!qword_1EDCF6BE0)
  {
    sub_1D9645B24();
    v0 = sub_1D966E478();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCF6BE0);
    }
  }
}

unint64_t sub_1D9645B24()
{
  result = qword_1EDCF6928;
  if (!qword_1EDCF6928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF6928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceKitError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceKitError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9645E34()
{
  result = qword_1ECB22838;
  if (!qword_1ECB22838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22838);
  }

  return result;
}

unint64_t sub_1D9645E8C()
{
  result = qword_1ECB22840;
  if (!qword_1ECB22840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22840);
  }

  return result;
}

unint64_t sub_1D9645EE4()
{
  result = qword_1ECB22848;
  if (!qword_1ECB22848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22848);
  }

  return result;
}

unint64_t sub_1D9645F3C()
{
  result = qword_1ECB22850;
  if (!qword_1ECB22850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22850);
  }

  return result;
}

unint64_t sub_1D9645F94()
{
  result = qword_1ECB22858;
  if (!qword_1ECB22858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22858);
  }

  return result;
}

unint64_t sub_1D9645FEC()
{
  result = qword_1ECB22860;
  if (!qword_1ECB22860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22860);
  }

  return result;
}